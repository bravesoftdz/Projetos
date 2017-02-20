unit ncaDMSyncDoc;

interface

uses
  System.SysUtils, System.Classes, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, nxsdServerEngine, nxreRemoteServerEngine, nxdb,
  nxllComponent, Data.DB, Forms, ncDebug, Windows, messages, syncobjs;

type
  TdmDocUpdate = class(TDataModule)
    nxRemDB: TnxDatabase;
    nxRemSession: TnxSession;
    nxRSE: TnxRemoteServerEngine;
    nxTCP: TnxWinsockTransport;
    tR: TnxTable;
    tL: TnxTable;
    nxLocalSession: TnxSession;
    nxLocalDB: TnxDatabase;
    procedure DataModuleCreate(Sender: TObject);
  private
    FForce : Boolean;
    { Private declarations }
  public
    { Public declarations }
    procedure Update;
  end;

  TThreadDocUpdate = class ( TThread )
  private
    FHandle : HWND;
    FForce  : Boolean;
  public
    procedure Execute; override;

    constructor Create(aHandle: HWND; aForce: Boolean); 

    destructor Destroy; override;
  end;

  procedure DocUpdate(H: HWND; aForce: Boolean);
  function IsDocUpdRunning: Boolean;
  

var
  dmDocUpdate: TdmDocUpdate;
  docupd_cs : TCriticalSection;
  docupd_running : Boolean = False;
  

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ncaDM;

{$R *.dfm}

const
  DefaultDocServer = 'docserver.nextar.com.br';
  DefaultDocPort = 17200;
  DefaultTableName = 'Doc';

{ TdmDocUpdate }

function IsDocUpdRunning: Boolean;
begin
  docupd_cs.Enter;
  try
    Result := docupd_running;
  finally  
    docupd_cs.Leave;
  end;
end;

procedure DocUpdate(H : HWND; aForce: Boolean);
begin
  docupd_cs.Enter;
  try
    if docupd_running then Exit;
    TThreadDocUpdate.Create(H, aForce);
  finally  
    docupd_cs.Leave;
  end;
end;

procedure TdmDocUpdate.DataModuleCreate(Sender: TObject);
begin
  nxLocalSession.ServerEngine := Dados.RSE;
end;

procedure TdmDocUpdate.Update;
var 
  lastUpd : TDateTime;
  lastRV: Cardinal;

  sDocServer: String;
  sDocTable : String;
  iDocPort : Integer;
begin
  if slConfig.Values['DocSync']='0' then Exit;

  sDocServer := slConfig.Values['DocServer'];
  if sDocServer='' then sDocServer := DefaultDocServer;

  sDocTable := slConfig.Values['doctablename'];
  if sDocTable = '' then sDocTable := DefaultTableName;

  iDocPort := StrToIntDef(slConfig.Values['DocPort'], DefaultDocPort);
  
  if (not FForce) and (slConfig.Values['DocSyncAlways']<>'1') then begin
    try 
      lastUpd := StrToDateDef(slConfig.Values['DocSyncDate'], 0);
    except
      lastUpd := 0;
    end;
  
    if (Date-lastUpd)=0 then Exit;
  end;

  nxTCP.ServerName := sDocServer;
  nxTCP.Port := iDocPort;
  
  nxTCP.Active := True;
  nxRSE.Active := True;
    
  slConfig.Values['DocSyncDate'] := DateToStr(Date);
  SaveConfig;

  tR.TableName := sDocTable;
  
  tL.Open;
  tR.Open;
  tL.Last;
  if tL.IsEmpty then 
   lastRV := 0 else
   lastRV := tL.FieldByName('SRecVer').AsLongWord;
  tR.SetRange([lastRV+1], [High(Cardinal)]);
  while (not tR.Eof) and (not Application.Terminated) do begin
    if tL.Locate('UID', tR.FieldByName('UID').AsString, []) then
      tL.Edit else
      tL.Insert;
    TransfDadosEsp(tR, tL, '|ID|');
    tL.FieldByName('SRecVer').AsLongWord := tR.FieldByName('RecVer').AsLongWord;
    tL.Post;
    tR.Next;
    Sleep(0);
  end;
end;

{ TThreadDocUpdate }

constructor TThreadDocUpdate.Create(aHandle: HWND; aForce: Boolean);
begin
  inherited Create(True);
  FForce := aForce;
  FreeOnTerminate := True;
  FHandle := aHandle;
  docupd_cs.Enter;
  try
    docupd_running := True;
  finally
    docupd_cs.Leave;
  end;  
  PostMessage(aHandle, wm_user+1, 0, 0);
  Resume;
end;

destructor TThreadDocUpdate.Destroy;
begin
  docupd_cs.Enter;
  try
    docupd_running := False;
  finally
    docupd_cs.Leave;
  end;
  PostMessage(FHandle, wm_user+1, 0, 0);
  inherited;
end;

procedure TThreadDocUpdate.Execute;
var DM : TdmDocUpdate;
begin
  try
    DM := TdmDocUpdate.Create(nil);
    try
      DM.FForce := FForce;
      DM.Update;
    except
      on E: Exception do 
        DebugMsg('TThreadDocUpdate - Exception: '+E.Message);
    end;
    DM.Free;
  except
  end;
  PostMessage(FHandle, wm_user, 0, 0);
end;

initialization
  docupd_cs := TCriticalSection.Create;

finalization
  docupd_cs.Free;

end.
