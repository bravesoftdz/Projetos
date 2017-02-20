unit ncDM_bk_process;

interface

uses
  System.SysUtils, System.Classes, Data.DB, nxdb, nxllTransport, SyncObjs, Windows,
  nxptBasePooledTransport, nxtwWinsockTransport, nxllComponent, idHttp,
  nxsdServerEngine, nxreRemoteServerEngine, json, dialogs, kbmMemTable;

type
  TTerminateEvent = function : Boolean of object;
  
  Tdm_bk_process = class(TDataModule)
    RSE: TnxRemoteServerEngine;
    TCP: TnxWinsockTransport;
    Session: TnxSession;
    DB: TnxDatabase;
    tProc: TnxTable;
    tUpload: TnxTable;
    tUploadID: TUnsignedAutoIncField;
    tUploadContentType: TWideStringField;
    tUploadDados: TBlobField;
    tUploadQtd: TWordField;
    tUploadMethod: TByteField;
    tUploadResp: TWideMemoField;
    tUploadDH: TDateTimeField;
    tProcid: TUnsignedAutoIncField;
    tProcmethod: TByteField;
    tProctable: TByteField;
    tProcstatus: TByteField;
    tProcupdated_on: TDateTimeField;
    tProcnex_id: TLongWordField;
    tProcjson: TWideMemoField;
    tFrom: TnxTable;
    tUploadTable: TByteField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FShopCode : Cardinal;
    FTerm  : TTerminateEvent;
    FPrimeiraCarga : Boolean;
    FID_Name, FUID_Name: String;
    { Private declarations }

    function Create_json: String;
    
    function _Term: Boolean;

    procedure processa_criar_json;
    procedure processa_enviar_json;
  public
    procedure Open;
    { Public declarations }

    procedure PrimeiraCarga;
    procedure Processa;

    property OnTerminateEvent: TTerminateEvent read FTerm write FTerm;
  end;

  TThread_bk_process = class ( TThread )
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

  Tbk_config = class
  private
    FCS        : TCriticalSection;
  public  
    constructor Create;
    destructor Destroy; override;

    procedure Refresh;
  end;

  procedure Sinaliza_bk_process;

var
  dm_bk_process: Tdm_bk_process;
  gThread_bk_process : TThread_bk_process;
  gBK_config: Tbk_config;
  gBK_enviar : Boolean;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDB_json, System.uJson, ncClassesBase, ncServBD, ncDebug, uLicEXECryptor,
  ncDM_bk_upload, ncTableDefs;

{$R *.dfm}

function Tdm_bk_process.Create_json: String;
var 
  J : TJsonObject;
  sl: TStrings;
begin
  sl := TStringList.Create;
  J := TJsonObject.Create;
  try
    sl.Add(FID_Name);
    sl.Add(FUID_Name);
    J.addPair('shopcode', TJsonNumber.Create(RegistroGlobal.IDLoja));
    J.addPair('nex_id', tFrom.FieldByName(FID_Name).AsInteger);
    J.addPair('nex_uid', tFrom.FieldByName(FUID_Name).AsString);
    tFrom.Fields.ToJson(J, sl, True);
    Result := J.ToJSon;
  finally
    sl.Free;
    J.Free;
  end;
end;

procedure Tdm_bk_process.DataModuleCreate(Sender: TObject);
begin
  FTerm := nil;

  FPrimeiraCarga := False;

  Session.ServerEngine := ncServBD.dmServidorBD.ServerEngine;
  TCP.Free;
  RSE.Free;
end;

procedure Tdm_bk_process.Open;
begin
  tProc.Open;
  tUpload.Open;
end;

procedure Tdm_bk_process.PrimeiraCarga;
var T, C, I, Primeiro, Ultimo: Cardinal;

procedure SaveRec(aTable: Byte);
begin
  tProc.Append;
  tProctable.Value := atable;
  tProcupdated_on.Value := now;
  tProcnex_id.Value := tFrom.FieldByName(FID_Name).AsInteger;
  tProcjson.Value := Create_json;
  tProcstatus.Value := bk_status_enviar;
  tProcMethod.Value := http_method_post;
  tProc.Post;
  Inc(T);
end;  

procedure AddRecsAsc(aTable: Byte);
begin
  tFrom.First;
  while not tFrom.Eof do begin
    if _Term then Exit;
    SaveRec(aTable);
    tFrom.Next;
  end;  
end;  

procedure AddRecsDesc(aTable: Byte);
begin
  tFrom.Last;
  while not tFrom.Bof do begin
    if _Term then Exit;
    SaveRec(aTable);
    tFrom.Prior;
  end;  
end;  

begin    
  FPrimeiraCarga := True;
  
  DebugMsg('Tdm_bk_process.PrimeiraCarga');
  C := GetTickCount;

  for i := 0 to gTables.Count-1 do 
  with gTables.Items[i] do
  if Bkp then begin
    if _Term then Exit;
    tFrom.Active := False;
    tFrom.TableName := TableName;
    tFrom.IndexName := ID_IxName;
    tFrom.Open;

    DebugMsg(Self, 'PrimeiraCarga - TableName: '+TableName+' - ID_Name: '+ID_Name+' - UID_Name: '+UID_Name);

    FID_Name := ID_Name;
    FUID_Name := UID_Name;

    tProc.IndexName := 'I_table_nex_id';
    tProc.SetRange([TableID], [TableID]);

    T := 0;

    if tProc.IsEmpty then
      AddRecsAsc(TableID)
    else begin
      tProc.First;
      Primeiro := tProcnex_id.Value;
      tProc.Last;
      Ultimo := tProcnex_id.Value;  
      tFrom.SetRange([0], [Primeiro-1]);
      try
        AddRecsAsc(TableID);
        Primeiro := Ultimo+1;
        tFrom.CancelRange;
        tFrom.Last;
        Ultimo := tFrom.FieldByName(FID_Name).AsInteger;
        tFrom.SetRange([Primeiro], [Ultimo]);
        AddRecsAsc(TableID);
      finally
        tFrom.CancelRange;
      end;
    end;
  end;
end;

procedure Tdm_bk_process.Processa;
begin
  DebugMsg(Self, 'Processa');
  try
    processa_criar_json;
    if _Term then Exit;
    processa_enviar_json;
  except
    on E: Exception do 
      DebugEx(Self, 'Processa', E);
  end;
end;

procedure Tdm_bk_process.processa_criar_json;
var 
  i, T, C: Cardinal;
begin
  FShopCode := RegistroGlobal.IDLoja;
  T := 0;
  C := GetTickCount;

  for i := 0 to gTables.Count-1 do with gTables.Items[i] do
  if Bkp then begin
    if _Term then Exit;
    tFrom.Active := False;
    tFrom.TableName := TableName;
    tFrom.IndexName := ID_IxName;
    tFrom.Open;

    DebugMsg(Self, 'Processa_criar_json - TableName: '+TableName+' - ID_Name: '+ID_Name+' - UID_Name: '+UID_Name);

    FID_Name := ID_Name;
    FUID_Name := UID_Name;

    tProc.IndexName := 'I_status_table_update_on';
    tProc.SetRange([bk_status_criar_json, TableID], [bk_status_criar_json, TableID]);
    tProc.First;
    while not (tProc.Eof and tProc.Bof) do begin
      if _Term then Exit;
      if tFrom.FindKey([tProcnex_id.Value]) then begin
        tProc.Edit;
        tProcjson.Value := Create_json;
        tProcStatus.Value := bk_status_enviar;
        tProc.Post;
        Inc(T);
      end else
        tProc.Delete;
    end;
  end;

  DebugMsg(Self, 'processa_criar_json - ' + IntToStr(T) + ' itens - Tempo: '+IntToStr(GetTickCount-C)+'ms');
end;

procedure Tdm_bk_process.processa_enviar_json;
var 
  i, T, C: Cardinal;
  Q : Word;
  Req : TStringStream;
  M, ca : Byte;

procedure AddPost(aTable, aMethod: Byte);
begin
  try
    if Q>0 then begin
      if aMethod<>http_method_reset_store then
        Req.WriteString(']}');
      tUpload.Append;
      tUploadDH.Value := Now;
      tUploadTable.Value := aTable;
      tUploadContentType.Value := 'application/json';
      tUploadMethod.Value := aMethod;
      tUploadQtd.Value := Q;
      Req.Position := 0;
      DebugMsg(Self, 'processa_enviar_json.AddPost - Q: '+IntToStr(Q)+' Size: '+IntToStr(Req.Size)+'bytes - Table: '+gTables[aTable].TableName);
      tUploadDados.LoadFromStream(Req);
      tUpload.Post;
    end;
    DB.Commit;
    Sleep(10);
  finally
    Q := 0;
    Req.Clear;
  end;
end;

procedure Loop(aTable, aMethod: byte);
begin  
  Req.Clear;
  Q := 0;
  try
    tProc.IndexName := 'I_status_table_method_updated_on';
    InitTran(DB, [tProc, tUpload], True);
    while (not _Term) and tProc.FindKey([bk_status_enviar, aTable, aMethod]) do begin
      if not DB.InTransaction then 
        InitTran(DB, [tProc, tUpload], True);
      tProc.Edit;
      tProcstatus.Value := bk_status_enviado;
      tProc.Post;

      if Trim(tProcjson.Value)>'' then begin
        Inc(Q);
        Inc(T);
      
        if aMethod<>http_method_reset_store then begin
          if Q=1 then
            Req.WriteString('{ "data" : [') else
            Req.WriteString(',');
        end;
        
        Req.WriteString(tProcjson.Value);
  
        if Q>=1000 then AddPost(aTable, aMethod);
      end else 
        DebugMsg(Self, 'processa_enviar_json - ERRO JSON BRANCO: '+tProcTable.AsString+' - '+tProcnex_id.AsString);
    end;
    if Q>0 then AddPost(aTable, aMethod);
  finally
    if DB.InTransaction then DB.Rollback;
  end;
end;

begin
  T := 0;
  C := GetTickCount;
  DebugMsg(Self, 'processa_enviar_json');
  tProc.IndexName := 'I_status_method_updated_on';
  Req := TStringStream.Create('', TEncoding.UTF8);
  try
{    if tProc.FindKey([bk_status_enviar]) and 
       (not tProc.FindKey([bk_status_enviar, http_method_reset_store])) and
       (not tProc.FindKey([bk_status_enviado, http_method_reset_store])) then
    begin
      tProc.Append;
      tProcupdated_on.Value := now;
      tProcTable.Value := 255;
      tProcjson.Value := '{"ShopCode":'+IntToStr(FShopCode)+'}
{      tProcMethod.Value := http_method_reset_store;
      tProcstatus.Value := bk_status_enviar;
      tProc.Post;    
    end;}
    
    for i := 0 to gTables.Count-1 do with gTables.Items[i] do
    if Bkp then
      for m := 0 to http_method_delete do begin
        if _Term then Exit;
        Loop(TableID, m);
      end;  
  finally
    Req.Free;
  end;
  if T>0 then sinaliza_bk_upload;

  DebugMsg(Self, 'processa_enviar_json - ' + IntToStr(T) + ' itens - Tempo: '+IntToStr(GetTickCount-C)+'ms');
end;

function Tdm_bk_process._Term: Boolean;
begin
  Result := Assigned(FTerm) and FTerm;
end;

{ TThread_bk_process }

procedure TThread_bk_process.AfterConstruction;
begin
  inherited;
  FEvent := TEvent.Create;
  FreeOnTerminate := True;
  gThread_bk_process := self;
end;

procedure TThread_bk_process.BeforeDestruction;
begin
  inherited;
  FEvent.Free;
  if gThread_bk_process=Self then gThread_bk_process := nil;
end;

procedure TThread_bk_process.Execute;
var dm : Tdm_bk_process;
begin
  dm := Tdm_bk_process.Create(nil);
  try
    dm.OnTerminateEvent := onterm;
    dm.Open;
    dm.PrimeiraCarga;
    while not Terminated do begin
      FEvent.ResetEvent;
      dm.Processa;
      FEvent.WaitFor(60000);
    end;
  except
    on E: Exception do 
      DebugMsg('TThread_bk_process.Execute - Exception: '+E.Message);
  end;
  dm.Free;
end;

function TThread_bk_process.onterm: Boolean;
begin
  Result := Terminated;
end;

procedure TThread_bk_process.Sinaliza;
begin
  DebugMsg(Self, 'Sinaliza');
  FEvent.SetEvent;
end;

procedure TThread_bk_process.Terminar;
begin
  Sinaliza;
  Terminate;
  if gThread_bk_process=Self then gThread_bk_process := nil;
end;

procedure Sinaliza_bk_process;
begin
  if Assigned(gThread_bk_process) then 
    gThread_bk_process.Sinaliza;
end;

{ TThread_bk_process_upload }

{ Tbk_config }

constructor Tbk_config.Create;
begin
  inherited;
  FCS := TCriticalSection.Create;
end;

destructor Tbk_config.Destroy;
begin
  if Assigned(gThread_bk_process) then gThread_bk_process.Terminar;
  if Assigned(gThread_bk_upload) then gThread_bk_upload.Terminar;

  FCS.Free;
  inherited;
end;

procedure Tbk_config.Refresh;
var B: Boolean;
begin
  FCS.Enter;
  try
    DebugMsg(Self, 'Refresh: gBK_enviar: '+gBK_Enviar.ToString+' - ServidorAtivo: '+ServidorAtivo.ToString+' - IDLoja: '+RegistroGlobal.IDLoja.ToString+' - Tipo Licença: '+Byte(RegistroGlobal.Tipo).ToString);
    B := gBK_enviar and (RegistroGlobal.IDLoja>0) and ServidorAtivo and (RegistroGlobal.Tipo in [tcFreePremium, tcFreePro]);
    if B then begin
      if (not Assigned(gThread_bk_upload)) then 
         gThread_bk_process := TThread_bk_process.Create;

      if (not Assigned(gThread_bk_upload)) then 
        gThread_bk_upload := TThread_bk_upload.Create;
    end else begin
      if Assigned(gThread_bk_process) then gThread_bk_process.Terminar;
      if Assigned(gThread_bk_upload) then gThread_bk_upload.Terminar;
    end;
  finally
    FCS.Leave;
  end;
end;

initialization
  gbk_enviar := False;
  gThread_bk_process := nil;
  gbk_Config := Tbk_config.Create;

finalization
  
  if Assigned(gThread_bk_process) then 
    gThread_bk_process.Terminar;
    
  gbk_Config.Free;
    

  
end.



