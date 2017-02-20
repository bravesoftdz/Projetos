unit ncaDMSyncCest;

interface

uses
  System.SysUtils, System.Classes, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, nxsdServerEngine, nxreRemoteServerEngine, nxdb,
  nxllComponent, Data.DB, Forms, ncDebug, Windows, messages, syncobjs;

type
  TdmCestUpdate = class(TDataModule)
    nxRemDB: TnxDatabase;
    nxRemSession: TnxSession;
    nxRSE: TnxRemoteServerEngine;
    nxTCP: TnxWinsockTransport;
    tR: TnxTable;
    tL: TnxTable;
    nxLocalSession: TnxSession;
    nxLocalDB: TnxDatabase;
  private
    FForce : Boolean;
    { Private declarations }
  public
    { Public declarations }
    procedure Update;

    procedure Create(aOwner: TComponent; aEng: TnxBaseServerEngine);
  end;

  TThreadCestUpdate = class ( TThread )
  private
    FHandle : HWND;
    FForce  : Boolean;
  public
    procedure Execute; override;

    constructor Create(aHandle: HWND; aForce: Boolean); 

    destructor Destroy; override;
  end;

  procedure CestUpdate(H: HWND; aForce: Boolean);
  function IsCestUpdRunning: Boolean;
  

var
  dmCestUpdate: TdmCestUpdate;
  cestupd_cs : TCriticalSection;
  cestupd_running : Boolean = False;
  

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

const
  DefaultCestServer = 'docserver.nextar.com.br';
  DefaultCestPort = 17200;
  DefaultTableName = 'br_cest';

{ TdmCestUpdate }

function IsCestUpdRunning: Boolean;
begin
  cestupd_cs.Enter;
  try
    Result := cestupd_running;
  finally  
    cestupd_cs.Leave;
  end;
end;

procedure CestUpdate(H : HWND; aForce: Boolean);
begin
  cestupd_cs.Enter;
  try
    if cestupd_running then Exit;
    TThreadCestUpdate.Create(H, aForce);
  finally  
    cestupd_cs.Leave;
  end;
end;

procedure TdmCestUpdate.Create(aOwner: TComponent; aEng: TnxBaseServerEngine);
begin
  nxLocalSession.ServerEngine := aEng;
end;

procedure TdmCestUpdate.Update;
var 
  lastUpd : TDateTime;
  lastRV: Cardinal;

  sCestServer: String;
  sCestTable : String;
  iCestPort : Integer;
begin
  if slConfig.Values['cest_sync']='0' then Exit;

  sCestServer := slConfig.Values['cest_server'];
  if sCestServer='' then sCestServer := DefaultCestServer;

  sCestTable := slConfig.Values['cest_table_name'];
  if sCestTable = '' then sCestTable := DefaultTableName;

  iCestPort := StrToIntDef(slConfig.Values['cest_port'], DefaultCestPort);
  
  if (not FForce) and (slConfig.Values['cest_sync_always']<>'1') then begin
    try 
      lastUpd := StrToDateDef(slConfig.Values['cest_sync_date'], 0);
    except
      lastUpd := 0;
    end;
  
    if (Date-lastUpd)=0 then Exit;
  end;

  nxTCP.ServerName := sCestServer;
  nxTCP.Port := iCestPort;
  
  nxTCP.Active := True;
  nxRSE.Active := True;
    
  slConfig.Values['cest_sync_date'] := DateToStr(Date);
  SaveConfig;

  tR.TableName := sCestTable;
  
  tL.Open;
  tR.Open;
  tL.Last;
  if tL.IsEmpty then 
   lastRV := 0 else
   lastRV := tL.FieldByName('SRecVer').AsLongWord;
  tR.SetRange([lastRV+1], [High(Cardinal)]);
  tL.IndexName := 'I_ncm_cest';
  while (not tR.Eof) and (not Application.Terminated) do begin
    if tL.FindKey([tR.FieldByName('ncm').AsInteger, tR.FieldByName('cest').AsInteger]) then
      tL.Edit else
      tL.Insert;
    TransfDadosEsp(tR, tL, '');
    tL.FieldByName('SRecVer').AsLongWord := tR.FieldByName('RecVer').AsLongWord;
    tL.Post;
    tR.Next;
    Sleep(0);
  end;
end;

{ TThreadCestUpdate }

constructor TThreadCestUpdate.Create(aHandle: HWND; aForce: Boolean);
begin
  inherited Create(True);
  FForce := aForce;
  FreeOnTerminate := True;
  FHandle := aHandle;
  cestupd_cs.Enter;
  try
    cestupd_running := True;
  finally
    cestupd_cs.Leave;
  end;  
  PostMessage(aHandle, wm_user+1, 0, 0);
  Resume;
end;

destructor TThreadCestUpdate.Destroy;
begin
  cestupd_cs.Enter;
  try
    cestupd_running := False;
  finally
    cestupd_cs.Leave;
  end;
  PostMessage(FHandle, wm_user+1, 0, 0);
  inherited;
end;

procedure TThreadCestUpdate.Execute;
var DM : TdmCestUpdate;
begin
  try
    DM := TdmCestUpdate.Create(nil);
    try
      DM.FForce := FForce;
      DM.Update;
    except
      on E: Exception do 
        DebugMsg('TThreadCestUpdate - Exception: '+E.Message);
    end;
    DM.Free;
  except
  end;
  PostMessage(FHandle, wm_user, 0, 0);
end;

initialization
  cestupd_cs := TCriticalSection.Create;

finalization
  cestupd_cs.Free;

end.
