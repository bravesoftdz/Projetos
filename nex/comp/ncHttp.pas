unit ncHttp;

interface

uses 
  SysUtils, Classes, IdTCPConnection, IdTCPClient, IdHTTP, IdMultipartFormData;

type  
  ThttpThreadGet = class ( TThread )
  protected
    procedure Execute; override;
  public
    FAddChaveSeg: Boolean;
    FUrl,
    FParams,
    FRes        : String;
    FRetryOnErro : Boolean;
    constructor Create(aURL, aParams: String; aAddChaveSeg, aRetryOnErro: Boolean);
    destructor Destroy; override;
    property Res: String read FRes;
  end;

  ThttpThreadPost= class ( TThread )
  private
    FUrl : String;
    FMS  : TIdMultiPartFormDataStream;
    FRes : String;
    FMaxTries: Byte;
  protected
    procedure Execute; override;
    function _Post: Boolean;
  public
    constructor Create(aUrl: String; aMS: TidMultiPartFormDataStream; const aMaxTries: Byte = 1);
    destructor Destroy; override;

    property Res: String read FRes;
  end;

  function httpPost(aURL, aParams: String): String;

  function httpGet(aURL: String; aParams: String = ''; const aAddChaveSeg: Boolean = False): String;

  function threadGetJaExiste(aUrl, aParams: String): Boolean;
  
  function httpThreadGet(aURL: String; aParams: String = ''; aOnTerminate: TNotifyEvent = nil;
                         const aAddChaveSeg: Boolean = False; 
                         const aUnique: Boolean = False;
                         const aRetryOnErro: Boolean = False): Boolean;
  
  function MesmaURL(A, B: String): Boolean;
  function httpGetChaveSeg: String;

var
  gThreadGets : TThreadList;

implementation

uses uNR_chaveseg, ncDebug, ncClassesBase, nexUrls;

function threadGetJaExiste(aUrl, aParams: String): Boolean;
var I : Integer;
begin
  with gThreadGets.LockList do 
  try
    for I := 0 to Count-1 do
      with ThttpThreadGet(Items[I]) do
        if SameText(aUrl, FUrl) and SameText(aParams, FParams) then begin
          Result := True;
          Exit;
        end;
      
    Result := False;  
  finally
    gThreadGets.UnlockList;
  end;
end;

function httpThreadGet(aURL: String; aParams: String = ''; 
                       aOnTerminate: TNotifyEvent = nil;
                       const aAddChaveSeg: Boolean = False;
                       const aUnique: Boolean = False;
                       const aRetryOnErro: Boolean = False): Boolean;
begin
  Result := False;
  if aUnique and threadGetJaExiste(aUrl, aParams) then Exit;
  with ThttpThreadGet.Create(aUrl, aParams, aAddChaveSeg, aRetryOnErro) do begin
    OnTerminate := aOnTerminate;
    Resume;
  end;
  Result := True;
end;
                       


function MesmaURL(A, B: String): Boolean;

function NormURL(S: String): String;
begin
  if pos('http://', S)=1 then
    Delete(S, 1, 7);
  if pos('www.', S)=1 then
    Delete(S, 1, 4);
  if Copy(S, Length(S), 1)='/' then
    Delete(S, Length(S), 1);
end;

begin
  A := LowerCase(A);
  B := LowerCase(B);
  Result := SameText(NormURL(A), NormURL(B));
end;

function httpGetChaveSeg: String;
begin
  Result := httpGet(gUrls.Url('contas_obtemchaveseg'));
end;

function httpPost(aURL, aParams: String): String;
var 
  H : TidHttp;
  sl : TStrings;
  i : integer;
begin
  try
    H := TidHttp.Create(nil);
    sl := TStringList.Create;
    try
      H.HandleRedirects := True;
      sl.Text := aParams;
      for I := 0 to sl.Count - 1 do
        sl.ValueFromIndex[i] := AnsiToUTF8(sl.ValueFromIndex[i]);
      Result := H.Post(aUrl, sl);  
    finally
      H.Free;
      sl.Free;
    end;
  except
  end;
end;

function httpGet(aURL: String; aParams: String = ''; const aAddChaveSeg: Boolean = False): String;
var 
  H : TidHttp;
  S : String;
begin
  if aAddChaveSeg then begin
    S := 'chaveseg='+httpGetChaveSeg+'&senhaseg='+geraSenhaSeg(S);
    if aParams>'' then
      aParams := aParams+'&'+S else
      aParams := S;
  end;
  
  try
    H := TidHttp.Create(nil);
    try
      H.HandleRedirects := True;
      if Trim(aParams)>'' then
        aUrl := AddParamUrl(aUrl, aParams);
      Result := H.Get(aUrl);
    finally
      H.Free;
    end;
  except
  end;
end;

{ ThttpThreadGet }

constructor ThttpThreadGet.Create(aURL, aParams: String; aAddChaveSeg, aRetryOnErro: Boolean);
begin
  inherited Create(True);
  FreeOnTerminate := True;
  FUrl := aURL;
  FParams := aParams;
  FAddChaveSeg := aAddChaveSeg;
  FRes := '';
  FRetryOnErro := aRetryOnErro;
  gThreadGets.Add(Self);
end;

destructor ThttpThreadGet.Destroy;
begin
  gThreadGets.Remove(Self);
  inherited;
end;

procedure ThttpThreadGet.Execute;
var 
  OK: Boolean;
  aNext: Cardinal;
  aInc : Cardinal;

procedure _Get;
begin
  FRes := httpGet(FURL, FParams, FAddChaveSeg);
end;

procedure _RaiseOnErro;
var sl : TStrings;
begin
  if not FRetryOnErro then Exit;
  sl := TStringList.Create;
  try
    if (sl.Values['erro']>'') and (sl.Values['erro']<>'0') then
      raise exception.Create('Erro: '+sl.Values['erro']);
  finally
    sl.Free;
  end;
end;

begin
  Ok := False;
  aNext := 0;
  aInc  := 5000;
  repeat
    if GetTickCount>=aNext then begin
      try
        _Get;
        _RaiseOnErro;
        Ok := True;
      except
        on E: Exception do begin
          aInc := aInc * 2;
          aNext := GetTickCount + aInc;
          DebugMsg('ThttpThreadGet.Execute - Exception - '+E.ClassName+': '+E.Message);
        end;
      end;
    end else
      Sleep(100);
  until Ok or Terminated or ncClassesBase.EncerrarThreads;
end;

{ ThttpThreadPost }

constructor ThttpThreadPost.Create(aUrl: String;
  aMS: TidMultiPartFormDataStream; const aMaxTries: Byte = 1);
begin
  inherited Create(True);
  FreeOnTerminate := True;
  FUrl := aURL;
  FRes := '';
  FMS  := aMS;
  FMaxTries := aMaxTries;
end;

destructor ThttpThreadPost.Destroy;
begin
  FMS.Free;
  inherited;
end;

procedure ThttpThreadPost.Execute;
var 
  T: Byte;
  aNext, aInc : Cardinal;
begin
  Sleep(0);
  T := 0;
  aNext := 0;
  aInc := 5000;
  repeat
    if GetTickCount>=aNext then begin
      Inc(T);
      if _Post then 
        T := FMaxTries 
      else 
      if T<FMaxTries then begin
        aInc := aInc * 2;
        aNext := GetTickCount + aInc;
      end;
    end;
    if T<FMaxTries then Sleep(5000);
  until (T>=FMaxTries) or Terminated or EncerrarThreads;
end;

function ThttpThreadPost._Post: Boolean;
var H : TidHttp;
begin
  result := False;
  H := nil;
  try
    H := TidHttp.Create;
    try
      H.HandleRedirects := True;
      FRes := H.Post(FUrl, FMS);
      Result := True;
      DebugMsg('ThttpThreadPost.Execute OK - Url: '+FUrl+' - Resultado: '+FRes);
    finally
      H.Free;
    end;
  except
    on E: Exception do begin
      DebugMsg('ThtttpThreadPost.Execute Exception: - Url: '+FUrl+' - ClassName: '+E.ClassName+' - Erro: '+E.Message);
      FRes := E.Message;
    end;
  end;
end;

initialization
  gThreadGets := TThreadList.Create;

finalization
  gThreadGets.Free;


end.     
