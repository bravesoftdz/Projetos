unit ncsNFUrls;

interface

uses Sysutils, Classes, idHttp, md5, SyncObjs, ExtCtrls, Windows;

type

  TnexNFUrlsRefresh = class ( TThread )
  protected
    procedure Execute; override;

    procedure Get;
  public
    ResOk : Boolean;
    ResString : String;
    constructor Create;
  end;
  
  TnexNFUrls = class ( TStringList )
  private
    FDef : TStrings;
    FCS : TCriticalSection;
    FTimer : TTimer;
    FOnRefresh: TNotifyEvent;
    FRefreshTh : TnexNFUrlsRefresh;
    FKeepRefreshing : Boolean;
    function GetOnRefresh: TNotifyEvent;
    procedure SetOnRefresh(const Value: TNotifyEvent);

    function _Values(aName: String): String;
    function GetTextStr: String;
    procedure SetTextStr(const Value: String);

    procedure OnTimer(Sender: TObject);
    procedure OnRefreshTerminate(Sender: TObject);
  public
    function Url(aNome: String; const aParams: String = ''): String;
    procedure Refresh;
    constructor Create;
    destructor Destroy; override;

    procedure SetString(aValue: String);

    procedure KeepRefreshing;

    function SkyWidth(aScreenWidth: Integer): Integer;

    function AppTimeMS: Cardinal;
    function AppRetryMS: Cardinal;

    function TTLms: Cardinal;

    function AsString: String;

    property Text: String
      read GetTextStr write SetTextStr;

    property OnRefresh: TNotifyEvent
      read GetOnRefresh write SetOnRefresh;
  end;

  function AddParamUrl(aUrl, aParams: String): String;

var
  gNFUrls : TnexNFUrls;  

implementation

uses
  ncDebug;

  threadvar 
    gUrlUsada : String;

{ TnexNFUrls }


const
  salt = '>LKHASDIUywefd7kdsf_)(*!@Tkjhasfdkxzxxx7777!38213zxc%nbv';

  maxnexttry = 30 * 60 * 1000;

  incnexttry = 5000;

function TnexNFUrls.AppRetryMS: Cardinal;
const 
  minuto = 60 * 1000;
  hora = 60 * minuto;
begin
  Result := StrToIntDef(_Values('app_time'), 5) * minuto;
  if (Result < (5*minuto)) or (Result > (24*hora)) then
    Result := 5*minuto;
end;

function TnexNFUrls.AppTimeMS: Cardinal;
const 
  minuto = 60 * 1000;
  hora = 60 * minuto;
begin
  Result := StrToIntDef(_Values('app_time'), 60) * minuto;
  if (Result < (5*minuto)) or (Result > (24*hora)) then
    Result := hora;
end;

function TnexNFUrls.AsString: String;
begin
  FCS.Enter;
  try
    Result := Text;
  finally
    FCS.Leave;
  end;
end;

constructor TnexNFUrls.Create;
begin
  inherited;
  FKeepRefreshing := False;
  
  FTimer := TTimer.Create(nil);
  FTimer.OnTimer := OnTimer;
  FTimer.Enabled := False;

  FRefreshTh := nil;
  FDef := TStringList.Create;
  FDef.Values['contas_app']                := 'http://contas.nextar.com.br/contas/app';
  FDef.Values['contas_app_admin']          := 'http://contas.nextar.com.br/contas/app';
  FDef.Values['contas_app_server']         := 'http://contas.nextar.com.br/contas/app';
  
  FDef.Values['contas_obteminfocampanha']  := 'http://contas.nextar.com.br/contas/obteminfocampanha';
  FDef.Values['contas_obtemchaveseg']      := 'http://contas.nextar.com.br/contas/obtemchaveseg';
  FDef.Values['contas_corrigiremail']      := 'http://contas.nextar.com.br/contas/corrigiremail';
  FDef.Values['contas_criarcontabasica']   := 'http://contas.nextar.com.br/contas/criarcontabasica';
  FDef.Values['contas_ativar']             := 'http://contas.nextar.com.br/contas/ativar';
  FDef.Values['contas_esquecisenha']       := 'http://contas.nextar.com.br/contas/esquecisenha';
  FDef.Values['contas_reenviaconfirmacao'] := 'http://contas.nextar.com.br/contas/reenviaconfirmacao';
  FDef.Values['contas_obtemregistro']      := 'http://contas.nextar.com.br/contas/obtemregistro';
  FDef.Values['contas_transferir']         := 'http://contas.nextar.com.br/contas/transferir';
  FDef.Values['contas_abriuadmin']         := 'http://contas.nextar.com.br/contas/abriuadmin';
  FDef.Values['contas_assinar']            := 'http://contas.nextar.com.br/contas/assinar';
  FDef.Values['contas_confirmartrial']     := 'http://contas.nextar.com.br/contas/confirmartrial';
  FDef.Values['kapi_registro']             := 'http://contas.nextar.com.br/kite/registro';
  FDef.Values['kapi_token']                := 'http://contas.nextar.com.br/kite/token';
  FDef.Values['kapi_consultaip']           := 'http://contas.nextar.com.br/kite/consultaip';
  FDef.Values['kapi_employeepass']         := 'http://contas.nextar.com.br/kite/profile/employeepass';
  FDef.Values['kapi_emailcaixa']           := 'http://contas.nextar.com.br/kite/emailcaixa';
  FDef.Values['track']                     := 'http://contas.nextar.com.br/track';
  FDef.Values['nexmsg']                    := 'http://contas.nextar.com.br/nexmsgs';
  FDef.Values['nextabs']                   := 'http://contas.nextar.com.br/nextabs';
  FDef.Values['autoconninfo']              := 'http://contas.nextar.com.br/autoconninfo';
  FDef.Values['dbapi_setup']               := 'http://contas.nextar.com.br/dbapi/setup';
  FDef.Values['scnt']                      := 'http://contas.nextar.com.br/scnt';
  FDef.Values['mailer']                    := 'http://contas.nextar.com.br/mailer';
  FDef.Values['img_botao']                 := 'http://botao.nextar.com';

  FDef.Values['ad_toolbar']                := 'http://ads.nexcafe.com.br/toolbar';
  FDef.Values['ad_sky']                    := 'http://ads.nexcafe.com.br/sky';
  FDef.Values['ad_home']                   := 'http://ads.nexcafe.com.br/open';

  FDef.Values['ttl']                       := '60';
  FDef.Values['app_time']                  := '60';
  FDef.Values['app_retry']                 := '5';
  
  FCS := TCriticalSection.Create;
  FOnRefresh := nil;
end;

destructor TnexNFUrls.Destroy;
begin
  FTimer.Free;
  FDef.Free;
  FCS.Free;
  inherited;
end;

function TnexNFUrls.GetOnRefresh: TNotifyEvent;
begin
  FCS.Enter;
  try
    Result := FOnRefresh;
  finally
    FCS.Leave;
  end;
end;

function TnexNFUrls.GetTextStr: String;
begin
  Result := inherited Text;
end;

procedure TnexNFUrls.KeepRefreshing;
begin
  FKeepRefreshing := True;
  Refresh;
end;

procedure TnexNFUrls.OnRefreshTerminate(Sender: TObject);
var 
  ResOk: Boolean;
  ResString : String;
begin
  ResOk := FRefreshTh.ResOk;
  ResString := FRefreshTh.ResString;
  FRefreshTh := nil;
  if ResOk then begin
    DebugMsg('TnexNFUrls.OnRefreshTerminate - ResOk');
    SetString(ResString);
    if FKeepRefreshing then begin
      FTimer.Interval := TTLms;
      FTimer.Enabled := True;
    end;  
    if Assigned(FOnRefresh) then FOnRefresh(Self);
  end else 
  begin
    DebugMsg('TnexNFUrls.OnRefreshTerminate - Falhou');
    FTimer.Interval := 5000;
    FTimer.Enabled := True;        
  end;
end;

procedure TnexNFUrls.OnTimer(Sender: TObject);
begin
  FTimer.Enabled := False;
  Refresh;
end;

procedure TnexNFUrls.Refresh;
begin
  if Assigned(FRefreshTh) then Exit;
  FRefreshTh := TnexNFUrlsRefresh.Create;
  FRefreshTh.OnTerminate := OnRefreshTerminate;
  FREfreshTh.Resume;
end;
  
procedure TnexNFUrls.SetOnRefresh(const Value: TNotifyEvent);
begin
  FCS.Enter;
  try
    FOnRefresh := Value;
  finally
    FCS.Leave;
  end;
end;

procedure TnexNFUrls.SetString(aValue: String);
begin
  FCS.Enter;
  try
    Text := aValue;
  finally
    FCS.Leave;
  end;
end;

procedure TnexNFUrls.SetTextStr(const Value: String);
begin
  inherited Text := Value;
end;

type
  TSkyWidth = record
    swScreen : Integer;
    swWidth : Integer;
  end;

function StrToSkyWidth(S: String; var SW: TSkyWidth): Boolean;  
var P: Integer;
begin
  Result := False;
  P := Pos('=', S);
  if P<2 then Exit;
  sw.swScreen := StrToIntDef(Copy(S, 1, P-1), 0);
  sw.swWidth := StrToIntDef(Copy(S, P+1, 4), 0);
  Result := (sw.swScreen>0) and (sw.swWidth>0) and (sw.swWidth<sw.swScreen);
end;
  
function TnexNFUrls.SkyWidth(aScreenWidth: Integer): Integer;
var 
  S : String;
  P  : Integer;
  sw    : TskyWidth;
begin
  Result := 160;
  S := _Values('skysizemap');
  if S='' then Exit;

  repeat
    P := Pos('(', S);
    if P>0 then begin
      System.Delete(S, 1, P);
      P := Pos(')', S);
      if P>0 then begin
        if StrToSkyWidth(Copy(S, 1, P-1), sw) then
        if aScreenWidth<=sw.swScreen then begin
          Result := sw.swWidth;
          Exit;
        end;
        System.Delete(S, 1, P);
      end;
    end;
  until (P<1);
end;

function TnexNFUrls.TTLms: Cardinal;
const
  minuto = 60 * 1000;
  hora = 60 * minuto;
begin
  Result := StrToIntDef(_Values('ttl'), 60) * minuto;
  if (Result < (5*minuto)) or (Result>(24*hora))then
    Result := hora;
  DebugMsg('TnexNFUrls.TTLms: '+IntToStr(Result));  
end;

function AddParamUrl(aUrl, aParams: String): String;
begin
  Result := aUrl;
  if aParams='' then Exit;

  if Pos('?', Result)<1 then begin
    if Copy(Result, Length(Result), 1)<>'/' then
      Result := Result + '/';
    Result := Result + '?';
  end else
    Result := Result + '&';
    
  Result := Result + aParams;
end;


function TnexNFUrls.Url(aNome: String; const aParams: String = ''): String;
begin
  Result := _Values(aNome);
  if Result='' then begin
    Refresh;
    Result := _Values(aNome);
  end;
  if Result='' then
    Result := FDef.Values[aNome];
    
  Result := AddParamUrl(Result, aParams);

  gUrlUsada := Result;  
end;

function TnexNFUrls._Values(aName: String): String;
begin
  FCS.Enter;
  try
    Result := Values[aName];
  finally
    FCS.Leave;
  end;
end;

{ TnexNFUrlsRefresh }

constructor TnexNFUrlsRefresh.Create;
begin
  inherited Create(True);
  ResOk := False;
  ResString := '';
  FreeOnTerminate := True;
end;

procedure TnexNFUrlsRefresh.Execute;
begin
  repeat
    try
      Get;
    except
      On E: Exception do DebugMsg('TnexNFUrlsRefresh.Execute - '+E.Message);
    end;
  until ResOk or Terminated;
end;

procedure TnexNFUrlsRefresh.Get;
var h: TidHttp; sl: TStrings; S: String;
begin
  H := TidHttp.Create(nil);
  try
    ResOk := False;
    H.HandleRedirects := True;
    sl := TStringList.Create;
    try
      try
        sl.Text := H.Get('http://setup.contas.nextar.com.br');
        DebugMsg('TnexNFUrlsRefresh.Get - ' + sl.Text);
      except
        on E: Exception do begin
          DebugMsg('TnexNFUrlsRefresh.Get - Exception:' + sl.Text);
          Exit;
        end;
      end;
      S := sl.Values['chave'];
      if S='' then Exit;
      sl.Delete(sl.IndexOfName('chave'));
      if not sameText(S, getmd5str(sl.Text+salt)) then 
      begin
        DebugMsg('TnexNFUrlsRefresh.Get - Chave Invalida: '+S+' - Chave servidor: '+getmd5str(sl.Text+salt));
        Exit;
      end;
      ResOk := True;
      ResString := sl.Text;  
    finally
      sl.Free;
    end;
  finally
    H.Free;
  end;
end;

initialization
  gNFUrls := TnexNFUrls.Create;

finalization
  gNFUrls.Free;  

implementation

end.
