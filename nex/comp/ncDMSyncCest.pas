unit ncDMSyncCest;

interface

uses
  Variants, System.SysUtils, System.Classes, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, nxsdServerEngine, nxreRemoteServerEngine, nxdb,
  nxllComponent, Data.DB, Forms, ncDebug, Windows, messages, syncobjs;

type
  TTerminouEv = function : Boolean of object;
  
  TdmCestUpdate = class(TDataModule)
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
    FUpdOk : Boolean;
    FOnTerm : TTerminouEv;
    { Private declarations }

    function Terminated: Boolean;
    procedure UpdateOk;
  public
    { Public declarations }
    procedure Update;

    constructor Create(aOwner: TComponent; aEng: TnxBaseServerEngine);

    property OnTermFunc: TTerminouEv read FOnTerm write FOnTerm;
  end;

  TThreadCestUpdate = class ( TThread )
  private
    FHandle : HWND;
    FForce  : Boolean;
    FEng    : TnxBaseServerEngine;
    FUpdOk  : Boolean;
  private
    function Terminou: Boolean;  
  public
    procedure execute; override;

    constructor Create(aHandle: HWND; aForce: Boolean; aEng: TnxBaseServerEngine); 

    destructor Destroy; override;

    property UpdOk: Boolean read FUpdOk;
  end;

  procedure CestUpdate(H: HWND; aForce: Boolean; aEng: TnxBaseServerEngine; aOnTerm : TNotifyEvent);
  procedure CestUpdateTerm;
  function IsCestUpdRunning: Boolean;

  function LastCestUpd: TDateTime;

var
  dmCestUpdate: TdmCestUpdate;
  cestupd_cs : TCriticalSection;
  cestupd_running : Boolean = False;
  cestUpdTh : TThreadCestUpdate = nil;
  
  

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ncClassesBase;

{$R *.dfm}

const
  DefaultCestServer = 'docserver.nextar.com.br';
  DefaultCestPort = 17200;
  DefaultTableName = 'br_cest';

{ TdmCestUpdate }

function LastCestUpd: TDateTime;
var 
  S: String;
  sl : TStrings;
begin
  Result := 0;
  S := ExtractFilePath(ParamStr(0))+'cest.ini';
  if not FileExists(S) then Exit;

  sl := TStringList.Create;
  try
    sl.LoadFromFile(S);
    Result := StrToDateDef(sl.Values['last_update'], 0);
  finally
    sl.Free;
  end;
end;

function IsCestUpdRunning: Boolean;
begin
  cestupd_cs.Enter;
  try
    Result := cestupd_running;
  finally  
    cestupd_cs.Leave;
  end;
end;

procedure CestUpdateTerm;
begin
  cestupd_cs.Enter;
  try
    try if Assigned(cestupdth) then cestupdth.Terminate; except end;
  finally
    cestupd_cs.Leave;
  end;
end;

procedure CestUpdate(H : HWND; aForce: Boolean; aEng: TnxBaseServerEngine; aOnTerm: TNotifyEvent);
begin
  cestupd_cs.Enter;
  try
    if cestupd_running then Exit;
    if LadoServidor and (not aForce) and ((Date-LastCestUpd)<1) then Exit;
    with TThreadCestUpdate.Create(H, aForce, aEng) do begin
      if Assigned(aOnTerm) then
        OnTerminate := aOnTerm;
      Resume;
    end;
  finally  
    cestupd_cs.Leave;
  end;
end;

constructor TdmCestUpdate.Create(aOwner: TComponent; aEng: TnxBaseServerEngine);
begin
  inherited Create(aOwner);
  nxLocalSession.ServerEngine := aEng;
end;

procedure TransfDados(TF, TD: TDataset);
var 
  I : Integer;
  F : TField;
begin
  with TD do
  for I := 0 to pred(Fields.Count) do with Fields[I] do 
  if (FieldKind=fkData) then begin
    F := TF.FindField(FieldName);
    if (F <> nil) and (F.FieldKind=fkData) then 
    if (TD.State<>dsInsert) or (F.DataType<>ftAutoInc) then
      Value := F.Value;
  end;
end;

procedure TdmCestUpdate.DataModuleCreate(Sender: TObject);
begin
  FUpdOk := False;
  FOnTerm := nil;
end;

function TdmCestUpdate.Terminated: Boolean;
begin
  if Assigned(FOnTerm) then
    Result := FOnTerm else
    Result := True;
end;

procedure TdmCestUpdate.Update;
var 
  lastUpd : TDateTime;
  lastRV: Cardinal;
  V: Variant;
begin
  FUpdOk := False;
  nxTCP.Active := True;
  nxRSE.Active := True;
    
  tL.Open;
  tR.Open;
  tL.Last;
  if tL.IsEmpty then 
   lastRV := 0 else
   lastRV := tL.FieldByName('SRecVer').AsLongWord;
  tR.SetRange([lastRV+1], [High(Cardinal)]);
  tL.IndexName := 'I_ncm_cest';
  while (not tR.Eof) and (not Terminated) and (not Application.Terminated) do begin
    V := tR.FieldByName('Apagar').Value;

    if (not VarIsNull(V)) and (V=True) then begin
      if tL.FindKey([tR.FieldByName('ncm').AsInteger, tR.FieldByName('cest').AsInteger]) then 
        tL.Delete;
    end else begin
      if tL.FindKey([tR.FieldByName('ncm').AsInteger, tR.FieldByName('cest').AsInteger]) then
        tL.Edit else
        tL.Insert;
      TransfDados(tR, tL);
      tL.FieldByName('SRecVer').AsLongWord := tR.FieldByName('RecVer').AsLongWord;
      tL.Post;
    end;
    tR.Next;
    Sleep(0);
  end;

  if LadoServidor then UpdateOk;


  FUpdOk := True;
end;

procedure TdmCestUpdate.UpdateOk;
var sl: TStrings;
begin
  sl := TStringList.Create;
  try
    sl.Values['last_update'] := DateToStr(Date);
    sl.SaveToFile(ExtractFilePath(ParamStr(0))+'cest.ini');
  finally
    sl.Free;
  end;
end;

{ TThreadCestUpdate }

constructor TThreadCestUpdate.Create(aHandle: HWND; aForce: Boolean; aEng: TnxBaseServerEngine);
begin
  inherited Create(True);
  cestUpdTh := Self;
  FForce := aForce;
  FreeOnTerminate := True;
  FHandle := aHandle;
  FUpdOk := False;
  FEng  := aEng;
  cestupd_cs.Enter;
  try
    cestupd_running := True;
  finally
    cestupd_cs.Leave;
  end;  
  if aHandle>0 then
    PostMessage(aHandle, wm_user+1, 0, 0);
end;

destructor TThreadCestUpdate.Destroy;
begin
  cestupd_cs.Enter;
  try
    cestupd_running := False;
    cestUpdTh := nil;
  finally
    cestupd_cs.Leave;
  end;
  
  if FHandle>0 then
    PostMessage(FHandle, wm_user+1, 0, 0);

  inherited;
end;

procedure TThreadCestUpdate.Execute;
var DM : TdmCestUpdate;
begin
  try
    DM := TdmCestUpdate.Create(nil, FEng);
    try
      DM.FForce := FForce;
      DM.OnTermFunc := Terminou;
      DM.Update;
      FUpdOk := DM.FUpdOk;
    except
      on E: Exception do 
        DebugMsg('TThreadCestUpdate - Exception: '+E.Message);
    end;
    DM.Free;
  except
  end;
  if FHandle>0 then
    PostMessage(FHandle, wm_user, 0, 0);
end;

function TThreadCestUpdate.Terminou: Boolean;
begin
  Result := Terminated;
end;

initialization
  cestupd_cs := TCriticalSection.Create;

finalization
  cestupdateterm;
  cestupd_cs.Free;

end.
