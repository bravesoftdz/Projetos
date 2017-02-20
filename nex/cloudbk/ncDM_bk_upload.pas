unit ncDM_bk_upload;

interface

uses
  System.SysUtils, System.Classes, Data.DB, nxdb, nxllTransport, SyncObjs, Windows,
  nxptBasePooledTransport, nxtwWinsockTransport, nxllComponent, idHttp,
  nxsdServerEngine, nxreRemoteServerEngine, json, dialogs, kbmMemTable;

type
  TTerminateEvent = function : Boolean of object;
  
  Tdm_bk_upload = class(TDataModule)
    RSE: TnxRemoteServerEngine;
    TCP: TnxWinsockTransport;
    Session: TnxSession;
    DB: TnxDatabase;
    tPost: TnxTable;
    tPostID: TUnsignedAutoIncField;
    tPostContentType: TWideStringField;
    tPostDados: TBlobField;
    tPostQtd: TWordField;
    tPostMethod: TByteField;
    tPostResp: TWideMemoField;
    tPostDH: TDateTimeField;
    tPostTable: TByteField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FTerm  : TTerminateEvent;
    FHttpError : Integer;
    

    function _Term: Boolean;
  public
    procedure Open;
    { Public declarations }

    procedure Processa;

    property OnTerminateEvent: TTerminateEvent read FTerm write FTerm;
  end;

  TThread_bk_upload = class ( TThread )
  private
    FEvent : TEvent;

    function onterm: Boolean;
  protected
    procedure Execute; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  public
    procedure Terminar;
    procedure Sinaliza;
  end;

  procedure Sinaliza_bk_upload;

var
  dm_bk_upload: Tdm_bk_upload;
  gThread_bk_upload : TThread_bk_upload;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ncClassesBase, ncServBD, ncDebug, nexUrls, ncTableDefs;

{$R *.dfm}

function bk_upload(aURL: String; aMethod: Byte; aDados: TStream; var aRes: String; var aError: Integer): Boolean;
var 
  H: TIdHTTP;
  C: Cardinal;
begin
  aRes := '';
  aError := 0;
  Result := False;
  H := TIdHTTP.Create;
  try
    H.HandleRedirects := True;
    H.Request.Accept := 'application/json';
    H.Request.ContentType := 'application/json';
    try
      DebugMsg('bk_upload 1 - aUrl: '+aUrl+' - aMethod: '+IntToStr(aMethod)+' - Size: '+IntToStr(aDados.Size));
      C := GetTickCount;
      case aMethod of
        http_method_delete     : aRes := H.Delete(aUrl);
        http_method_put        : aRes := H.Put(aUrl, aDados);
        http_method_post       : aRes := H.Post(aUrl, aDados);
      end;
      Result := True; 
      aError := H.ResponseCode;
      DebugMsg('bk_upload 2 - aUrl: '+aUrl+' - aMethod: '+IntToStr(aMethod)+' - Tempo: '+IntToStr(GetTickCount-C)+'ms - Ok: '+aRes);
    except
      on E: EidHttpProtocolException do begin
        aRes := E.Message;
        aError := E.ErrorCode;
        DebugEx(nil, 'bk_upload - aUrl: '+aUrl+' - aMethod: '+IntToStr(aMethod)+' - Tempo: '+IntToStr(GetTickCount-C)+'ms', E);
      end;
      on E: Exception do begin
        aRes := E.Message;
        DebugEx(nil, 'bk_upload - aUrl: '+aUrl+' - aMethod: '+IntToStr(aMethod)+' - Tempo: '+IntToStr(GetTickCount-C)+'ms', E);
      end;
    end;
  finally
    H.Free;
  end;
end;


procedure Tdm_bk_upload.DataModuleCreate(Sender: TObject);
begin
  DebugMsg(Self, 'DataModuleCreate 1');
  FTerm := nil;
  FHttpError := 0;
  Session.ServerEngine := ncServBD.dmServidorBD.ServerEngine;
  TCP.Free;
  RSE.Free;
  DebugMsg(Self, 'DataModuleCreate 2');
end;

procedure Tdm_bk_upload.Open;
begin
  tPost.Open;
  DebugMsg(Self, 'Open');
end;

procedure Tdm_bk_upload.Processa;
const maxRetry = 60 * 60 * 1000;

var m: byte;

function Upload: Boolean;
var 
  S: TStream;
  IncMS, NextTry: Cardinal;
  sRes: String;
begin
  S := TMemoryStream.Create;
  try
    tPostDados.SaveToStream(S);
    IncMS := 5000;
    NextTry := 0;
    Result := False;
    DebugMsg('Tdm_bk_upload.Processa - upload 1');
    repeat
      if GetTickCount>=NextTry then begin
        DebugMsg('Tdm_bk_upload.Processa - upload 2');
        S.Position := 0;
        if tPostMethod.Value=http_method_reset_store then
          Result := bk_upload(gUrls.Url('cloudbk_reset'), http_method_post, S, sRes, FHttpError) else
          Result := bk_upload(gUrls.CustomUrl('cloudbk', gTables[tPostTable.Value].TableName.ToLower, '', True), tPostMethod.Value, S, sRes, FHttpError);
        DebugMsg('Tdm_bk_upload.Processa - Res: '+sRes);
        if not Result then begin
          TMemoryStream(S).SaveToFile(ExtractFilePath(ParamStr(0))+'bk_post_erro.json');
          if (not (tPostMethod.Value in [http_method_reset_store, http_method_post])) and (FHttpError>=400) and (FHttpError<500)  then Exit;
          if IncMS<maxRetry then IncMS := IncMS * 2;
          NextTry := GetTickCount+IncMS;
        end;
      end else
        Sleep(200);
      DebugMsg('Tdm_bk_upload.Processa - upload 3');
    until Result or _Term;
    DebugMsg('Tdm_bk_upload.Processa - upload ok');
  finally
    S.Free;
  end;
end;

begin
  DebugMsg(Self, 'Processa 1');
  try
    tPost.IndexName := 'IMethodID';

    for m := 0 to http_method_delete do begin
      DebugMsg(Self, 'Processa 2 - '+m.ToString);
      tPost.SetRange([m], [m]);
      tPost.Refresh;
      tPost.First;
      while (not _Term) and (not tPost.IsEmpty) do begin
        if not Upload then Exit;
        tPost.Delete;
        Sleep(0);
        DebugMsg(Self, 'Processa 3');
      end;
      DebugMsg(Self, 'Processa 4');
    end;
    DebugMsg(Self, 'Processa 5');
  except
    on E: Exception do 
      DebugEx(Self, 'Processa', E);
  end;
end;

function Tdm_bk_upload._Term: Boolean;
begin
  Result := Assigned(FTerm) and FTerm;
end;

{ TThread_bk_upload }

procedure TThread_bk_upload.AfterConstruction;
begin
  inherited;
  FEvent := TEvent.Create;
  FreeOnTerminate := True;
  gThread_bk_upload := self;
  DebugMsg(Self, 'AfterConstruction');
end;

procedure TThread_bk_upload.BeforeDestruction;
begin
  inherited;
  FEvent.Free;
  if gThread_bk_upload=Self then gThread_bk_upload := nil;
  DebugMsg(Self, 'BeforeConstruction');
end;

procedure TThread_bk_upload.Execute;
var dm : Tdm_bk_upload;
begin
  DebugMsg(Self, 'Execute 1');
  dm := Tdm_bk_upload.Create(nil);
  try
    DebugMsg(Self, 'Execute 2');
    dm.OnTerminateEvent := onterm;
    dm.Open;
    DebugMsg(Self, 'Execute 3');
    while not Terminated do begin
      DebugMsg(Self, 'Execute 4');
      FEvent.ResetEvent;
      dm.Processa;
      FEvent.WaitFor(30000);
    end;
  except
  end;
  dm.Free;
end;

function TThread_bk_upload.onterm: Boolean;
begin
  Result := Terminated;
end;

procedure TThread_bk_upload.Sinaliza;
begin
  DebugMsg(Self, 'Sinaliza');
  FEvent.SetEvent;
end;

procedure TThread_bk_upload.Terminar;
begin
  Sinaliza;
  Terminate;

  if gThread_bk_upload=Self then gThread_bk_upload := nil;
end;

procedure Sinaliza_bk_upload;
begin
  if Assigned(gThread_bk_upload) then 
    gThread_bk_upload.Sinaliza else
    DebugMsg('Sinaliza_bk_upload - NIL');
end;

initialization
  gThread_bk_upload := nil;

finalization
  if Assigned(gThread_bk_upload) then gThread_bk_upload.Terminar;
    
end.

