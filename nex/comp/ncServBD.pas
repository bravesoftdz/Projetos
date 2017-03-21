{$I NEX.INC}
unit ncServBD;

interface

uses
  Windows, FileCtrl, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DateUtils,
  Variants, nxsdDataDictionary, 
  nxllTransport, nxtwWinsockTransport,
  nxsdServerEngine, nxsrSecurityMonitor, nxsrSqlEngineBase, nxsqlEngine,
  nxchCommandHandler, nxllComponent, nxsrServerEngine, nxdb,
  Db, nxsdSimpleMonitor,
  nxllMemoryManager,
  nxsqlProxies,
  nxllTypes, SyncObjs,
  nxsdTypes, nxlgEventLog, uObjPool,
  ExtCtrls, ncnxServerPlugin, nxllPluginBase, 
  LMDCustomComponent, LMDStrList, ncDebCredSaver,
  nxptBasePooledTransport, nxtmSharedMemoryTransport;
  

type
  TAndamentoConversao = procedure (Arquivo: String; Total, Atual : Integer) of Object;

  THackServerEng = class ( TnxServerEngine );

  TSessionArray = Array of TnxSessionID;

  TdmServidorBD = class(TDataModule)
    EventLog: TnxEventLog;
    ServerEngine: TnxServerEngine;
    CommandHandler: TnxServerCommandHandler;
    nxSQLEng: TnxSqlEngine;
    nxTCPIP: TnxWinsockTransport;
    nxSimpleMon: TnxSimpleMonitor;
    SecMon: TnxSecurityMonitor;
    FiltroTCPIP: TnxCustomConnectionFilter;
    strAtivar: TLMDStrList;
    sessao: TnxSession;
    procedure DataModuleDestroy(Sender: TObject);
    procedure nxSimpleMonRecordModify(aExtender: TnxSimpleMonitorExtender;
      aBefore: Boolean; aNewData, aOldData: PnxByteArray;
      aReleaseLock: Boolean);
    procedure nxSimpleMonRecordDelete(aExtender: TnxSimpleMonitorExtender;
      aBefore: Boolean; aOldData: PnxByteArray);
    procedure nxSimpleMonRecordInsert(aExtender: TnxSimpleMonitorExtender;
      aBefore: Boolean; aLockType: TnxLockType; aData: PnxByteArray);
    function nxTCPIPRemoveSession(aSender: TnxBaseTransport;
      aSessionID: TnxSessionID): Cardinal;
    procedure FiltroTCPIPAcceptConnection(
      aSender: TnxCustomConnectionFilter; aTransport: TnxWinsockTransport;
      const aLocalAddr, aRemoteAddr: string; var aAccept: Boolean);
    function nxSMTRemoveSession(aSender: TnxBaseTransport;
      aSessionID: TnxSessionID): Cardinal;
    procedure sessaoLogin(aSender: TnxBaseSession; var aUserName,
      aPassword: string; var aResult: Boolean);
  private
    { Private declarations }
    FOP : TObjectPool; 
    function CreateDMProc: TObject;
    procedure RecalcPrecoAuto(aDB: TnxServerDatabase; aMargem: Variant);
  public
    NexPlugin: TncnxServerPlugin;
    NexCmdHandler: TncnxCmdHandler;
    function  ObtemDescrTran(aDB: TnxServerDatabase; aTran: Integer; aAjustaCusto: Boolean): String;
    function ObtemPagEspTran(aDB: TnxServerDatabase; aTran: Integer): Variant;
    function CodigoLivre(aDB: TnxServerDatabase; aID: Integer): Boolean;
    function ProxCodProd(aDB: TnxServerDatabase): Cardinal;

    procedure AtualizaCusto(aDB: TnxServerDatabase; aProduto: Integer);
    function ObtemCusto(aDB: TnxServerDatabase; aProduto: Integer; aData: Variant): Currency;

    procedure SalvaDebCred(aDB: TnxServerDatabase; aSaver: TncDebCredSaver);
    procedure AddRecDel(aDB: TnxServerDatabase; aTableID: Integer; aKey: String);
    procedure AddCard(aDB: TnxServerDatabase; aType: Byte; aID: Cardinal; const aDelay: Boolean = False);
    procedure AddBkProcess(aDB: TnxServerDatabase; aTableID: Byte; aID: Cardinal);
    
    function ObtemDadosComissao(aDB: TnxServerDatabase; aProduto: Variant; var aPerc: Double; var aLucro: Boolean; var aCustoU: Currency): Boolean;
    
    function GetSessionIP(aSessionID: TnxSessionID): String;
    procedure TerminateSessions;
    procedure Shutdown(ShutdownServerEng: Boolean = True);
    procedure ListenClients;
    procedure GetAllSessions(var A: TSessionArray);   
    procedure Inicializa;
    { Public declarations }
  end;


  TncThreadServBD = class (TThread)
  protected
    procedure Execute; override;
  end;
  
  THackWinsock = class (TnxwinsockTransport);
  
  TThreadPopulateCategUnid = class ( TThread )
  private
    FDB : TnxDatabase;
    FSession : TnxSession;
    FQ : TnxQuery;
    FTable : TnxTable;
    procedure _Exec;
  protected
     procedure Execute; override;
  end;

  TRecVerItem = class
    rvTable: String;
    rvLast: Cardinal;
  end;

  TRecVerManager = class
  private
    FTables: TList;
    FCS : TCriticalSection;

    function Find(aTable: String): TRecVerItem;
  public
    constructor Create;
    destructor Destroy; override;

    procedure Clear;
    
    procedure StartRecVer(aTable: String; aLast: Cardinal);
    function GetRecVer(aTable: String; var aRecVer: Cardinal): Boolean;
    function ControlRecVer(aTable: String): Boolean;
  end;
  

  function CreateSession(aOwner: TComponent = nil): TnxSession;
  function CreateDB(var aSession: TnxSession; aOwner: TComponent = nil): TnxDatabase;
  procedure TableCancel(T: TnxTable);

  procedure TransfDados(F, D: TDataset);
  function GetTableAutoField(aTable: String): String;
  

  function InitTran(aDB: TnxDatabase;
                     const aTables : array of TnxTable;
                     aWith : Boolean): Boolean;
  

  procedure IncPend;
  procedure DecPend;
  function GetPend: Cardinal;

var
  dmServidorBD: TdmServidorBD = nil;
  PendingRequests : Cardinal = 0;
  csPend : TCriticalSection;
  gThreadBD : TncThreadServBD;
  dbStatus : Byte = 0;  
  dbTerm  : Boolean = False;
  dbError : String = '';
  gRecVerManager : TRecVerManager;

threadvar 
  SalvandoConfig : Boolean;

const
  dbst_inactive = 0;
  dbst_ok       = 1;
  dbst_error    = 2;

implementation

uses nxsrSystemStorage, ncClassesBase, ncMsgCom, ncDMDBProc, ncNetMsg, ncDebug,
  uLicEXECryptor, ncServBase, ncIPAddr, uNexusDBUtils, ncTableDefs, ncGuidUtils,
  ncCustoSaver, ncsStrings, ncDM_nexapp;

{$R *.DFM}

  
procedure IncPend;
begin
  csPend.Enter;
  try
    Inc(PendingRequests);
  finally
    csPend.Leave;
  end;
end;

procedure DecPend;
begin
  csPend.Enter;
  try
    Dec(PendingRequests);
  finally
    csPend.Leave;
  end;
end;

function GetPend: Cardinal;
begin
  csPend.Enter;
  try
    Result := PendingRequests;
  finally
    csPend.Leave;
  end;
end;

procedure TableCancel(T: TnxTable);
begin
  if T.State in [dsEdit, dsInsert] then
    T.Cancel;
end;

function GetTableAutoField(aTable: String): String;
begin
  if SameText(aTable, 'Cliente') then
    Result := 'Aniversario'
  else
  if SameText(aTable, 'Tran') then
    Result := 'TotLiq'
  else
  if SameText(aTable, 'ITran') then
    Result := 'TotLiq'
  else
  if SameText(aTable, 'Maquina') then
    Result := 'DisplayWH'
  else
  if SameText(aTable, 'Passaporte') then
    Result := 'Cartao'
  else  
    Result := '';  
end;


function InitTran(aDB: TnxDatabase;
                  const aTables : array of TnxTable;
                  aWith : Boolean): Boolean;
var I : Integer;
begin
  Result := False;
  if aDB.InTransaction then Exit;
  I := 10;
  while I > 0 do begin
    try
      if aWith then
        aDB.StartTransactionWith(aTables)
      else
        aDB.StartTransaction;
      I := 0;
    except
      Dec(I);
      Sleep(100+Random(500));
    end
  end;
  Result := True;
end;

procedure TransfDados(F, D: TDataset);
var 
  I : Integer;
  AF : TField;
begin
  D.Append;
  for I := 0 to pred(F.FieldCount) do 
  with F.Fields[I] do
  if (FieldKind = fkData) then begin
    AF := D.FindField(FieldName);
    if AF <> nil then 
      AF.Value := Value;
  end;  
  D.Post;
end;

procedure TdmServidorBD.AddBkProcess(aDB: TnxServerDatabase; aTableID: Byte;
  aID: Cardinal);
var 
  hc : TnxHelpCursor;
  Achou : Boolean;
begin
  hc := TnxHelpCursor.CreateOpen('bk_process', aDB);
  try
    hc.Active := True;
    hc.SelIndex('I_table_nex_id');
    hc.SetKey1('table', aTableID);
    hc.SetKey1('nex_id', aID);
    Achou := hc.FindKey(2);
    if Achou and (hc.newValue('status', 0)=card_status_criar_json) then Exit;
    if not Achou then begin
      hc.SetValue('table', aTableID);
      hc.SetValue('nex_id', aID);
      hc.SetValue('method', http_method_post);
      hc.SetValue('updated_on', now);
    end else
    if (hc.newValue('status', 0)=bk_status_enviado) then begin
      hc.SetValue('method', http_method_put); 
      hc.SetValue('updated_on', now);
    end else
      hc.SetValue('method', http_method_post);
      
    hc.SetValue('status', bk_status_criar_json);
    if Achou then
      hc.ModifyNewData else
      hc.InsertNewData;
    PostMessage(CliNotifyHandle, wm_sinaliza_bk, 0, 0);
  finally
    hc.Free;  
  end;
end;

procedure TdmServidorBD.AddCard(aDB: TnxServerDatabase; aType: Byte;
  aID: Cardinal; const aDelay: Boolean = False);
var 
  hc : TnxHelpCursor;
  Achou : Boolean;
begin
  hc := TnxHelpCursor.CreateOpen('Card', aDB);
  try
    hc.Active := True;
    hc.Active := True;
    hc.SelIndex('I_type_id_ref_status');
    hc.SetKey1('type', aType);
    hc.SetKey1('id_ref', aID);
    Achou := hc.FindKey(2);
    if Achou and (hc.newValue('status', 0)=card_status_criar_json) then Exit;
    if not Achou then begin
      hc.SetValue('type', aType);
      hc.SetValue('id_ref', aID);
      hc.SetValue('method', http_method_post);
    end else
    if (hc.newValue('status', 0)=card_status_json_enviado) then 
      hc.SetValue('method', http_method_put) else
      hc.SetValue('method', http_method_post);
      
    if aType=card_type_produto then
      hc.SetValue('card_array', card_array_produtos) else
      hc.SetValue('card_array', card_array_cards);
      
    hc.SetValue('status', card_status_criar_json);
    if Achou then
      hc.ModifyNewData else
      hc.InsertNewData;
    PostMessage(CliNotifyHandle, wm_sinaliza_nexapp, Integer(aDelay), 0);
  finally
    hc.Free;  
  end;
end;

procedure TdmServidorBD.AddRecDel(aDB: TnxServerDatabase; aTableID: Integer; aKey: String);
var
  hcRecDel : TnxHelpCursor;
begin
  hcRecDel := TnxHelpCursor.CreateOpen('RecDel', aDB);
  try
    hcRecDel.Active := True;
    hcRecDel.SetValue('Tab', aTableID);
    hcRecDel.SetValue('Key', aKey);
    hcRecDel.InsertNewData;
  finally
    hcRecDel.Free;  
  end;
end;

procedure TdmServidorBD.AtualizaCusto(aDB: TnxServerDatabase;
  aProduto: Integer);
var
  hcProd, hcMovEst: TnxHelpCursor;  
begin
  if gEvolvingTables then Exit;
  
  hcProd := TnxHelpCursor.CreateOpen('Produto', aDB);
  try
    hcProd.Active := True;
    hcProd.SelIndex('IID');
    hcProd.Active := True;
    hcProd.SetKey1('ID', aProduto);
    if not hcProd.FindKey(1) then Exit;
    hcMovEst := TnxHelpCursor.CreateOpen('MovEst', aDB);
    try
      hcMovEst.Active := True;
      hcMovEst.SelIndex('IProdAjustaCustoTran');
      hcMovEst.Active := True;
      hcMovEst.SetKey1('Produto', aProduto);
      hcMovEst.SetKey1('AjustaCusto', True);
      hcMovEst.SetKey2('Produto', aProduto);
      hcMovEst.SetKey2('AjustaCusto', True);
      if not hcMovEst.SetRange(2) then Exit;
      
      if hcMovEst.Last then 
        hcProd.SetValue('CustoUnitario', hcMovEst.NewValue('CustoU', null)) else
        hcProd.SetValue('CustoUnitario', null);

      if hcProd.LeBool('PrecoAuto') then 
        hcProd.SetValue('Preco', gConfig.CalcPreco(hcProd.NewValue('Margem', null), hcProd.LeCurrency('CustoUnitario')));
       
      hcProd.ModifyNewData;
    finally
      hcMovEst.Free;
    end;
  finally
    hcProd.Free;
  end;
end;

function TdmServidorBD.CodigoLivre(aDB: TnxServerDatabase;
  aID: Integer): Boolean;
var hcCli : TnxHelpCursor;
begin
  hcCli := TnxHelpCursor.CreateOpen('Cliente', aDB);
  try
    hcCli.Active := True;
    hcCli.SelIndex('ICodigoKey');
    hcCli.Active := True;
    hcCli.SetKey1('CodigoKey', CodigoCliKey(IntToStr(aID)));
    Result := not hcCli.FindKey(1);
  finally
    hcCli.Free;
  end;
end;

function TdmServidorBD.CreateDMProc: TObject;
begin
  Result := TdmDBProc.Create(Self);
end;

procedure ProcesshMessages;
var Msg : TMsg;
begin
  while PeekMessage(Msg, 0, 0, 0, PM_REMOVE) do  begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
  end;
end;

function CreateSession(aOwner: TComponent = nil): TnxSession;
begin
  if dmServidorBD=nil then
    Result := nil
  else begin  
    Result := TnxSession.Create(aOwner);
    Result.ServerEngine := dmServidorBD.ServerEngine;
    Result.Timeout := 60000;
    Result.Username := SessionUser;
    Result.Password := SessionPass;
    Result.Active := True;
  end;  
end;

function CreateDB(var aSession: TnxSession; aOwner: TComponent = nil): TnxDatabase;
begin
  if dmServidorBD=nil then
    Result := nil
  else begin  
    if aSession=nil then 
      aSession := CreateSession(aOwner);
    Result := TnxDatabase.Create(aOwner);
    Result.Session := aSession;
    Result.AliasName := 'NexCafe';
    Result.Active := True;
  end;  
end;


procedure TdmServidorBD.DataModuleDestroy(Sender: TObject);
begin
  FOP.Free;
  dmServidorBD := nil;
end;

type
  THackTransp = class(TnxBasePooledTransport);

procedure TdmServidorBD.GetAllSessions(var A: TSessionArray);
var
  i,j       : Integer;
  H       : THackTransp;
begin
  if not nxTCPIP.Active then Exit;
  
  H := THackTransp(nxTCPIP);
  with H.btRemoteSessions, BeginRead do 
  try
    SetLength(A, Count);
    for i:= 0 to Pred(Count) do
      A[i] := TnxSessionID(Items[i]);
  finally
    EndRead;
  end;

{  H := THackTransp(nxSMT);
  with H.btRemoteSessions, BeginRead do 
  try
    i := Length(A);
    SetLength(A, i+Count);
    for j:= 0 to Pred(Count) do
      A[i+j] := TnxSessionID(Items[j]);
  finally
    EndRead;
  end;  }
end;

function TdmServidorBD.GetSessionIP(aSessionID: TnxSessionID): String;
var 
  HSE : THackServerEng;
  aSession : TnxAbstractSession;
begin
  Result := '';
  HSE := THackServerEng(ServerEngine);
  HSE.bseSessionsPadlock.Lock;
  try
    if HSE.SessionCount>0 then
      if HSE.bseSessionsHead.LookupByID(aSessionID, aSession)=0 then
        Result := aSession.ConnectedFrom;
  finally
    HSE.bseSessionsPadlock.Unlock;
  end;
end;

procedure TdmServidorBD.Inicializa;
var 
  S : String;
  SR : TSearchRec;
  IP : TLocalIPObj;
begin
  DebugMsg('TdmServidorBD.Inicializa - 1');
  nxTCPIP.Port := 17200;
  NexCmdHandler := TncnxCmdHandler.Create(Self);
  NexCmdHandler.EventLog := EventLog;
  NexCmdHandler.EventLogEnabled := True;

  DebugMsg('TdmServidorBD.Inicializa - 2');
  
  NexPlugin := TncnxServerPlugin.Create(Self);
  NexPlugin.EventLog := EventLog;
  NexPlugin.EventLogEnabled := True;
  
  DebugMsg('TdmServidorBD.Inicializa - 3');

  NexCmdHandler.CommandHandler := CommandHandler;
  NexCmdHandler.PluginEngine := NexPlugin;

  DebugMsg('TdmServidorBD.Inicializa - 4');
  EventLog.Enabled := DebugAtivo;
  
  IP := TLocalIPObj.Create;
  try
    ServerEngine.ServerName := 'NEXSERV'+IP.HostName;
  finally
    IP.Free;
  end;
  nxTCPIP.ServerName := ServerEngine.ServerName;
//  nxSMT.ServerName := ServerEngine.ServerName;

  DebugMsg('TdmServidorBD.Inicializa - 5');
  
  
  FOP := TObjectPool.Create;
  FOP.CreateNewPoolObj := CreateDMProc;
  dmServidorBD := Self;

  DebugMsg('TdmServidorBD.Inicializa - 6');
  
  
  S := ExtractFilePath(ParamStr(0)) + PastaDados;
  if not DirectoryExists(S) then MkDir(S);

  if FileExists(S+'\Recibo.nx1') then
    DeleteFile(S+'\Recibo.nx1');

  DebugMsg('TdmServidorBD.Inicializa - 7');
    

  nxSetSystemDatabaseFolder(ExtractFileDir(ParamStr(0)));

  DebugMsg('TdmServidorBD.Inicializa - 8');
  

  ServerEngine.AliasHandler.Delete('NexCafe');
  ServerEngine.AliasHandler.Add('NexCafe', S, True);

  DebugMsg('TdmServidorBD.Inicializa - 9');
  
  S := ExtractFilePath(ParamStr(0)) + 'Temp';
  if not DirectoryExists(S) then 
    MkDir(S)
  else 
  if FindFirst(S+'\*.*', faAnyFile, SR)=0 then begin
    repeat
      if (SR.Attr and faDirectory) <> faDirectory then
        DeleteFile(S+'\'+ExtractFileName(SR.Name));
    until (FindNext(SR)<>0);
    FindClose(SR);
  end;  

  DebugMsg('TdmServidorBD.Inicializa - 10');
  
  ServerEngine.TempStorePath := S;
  ServerEngine.TempStoreSize := 200;

  DebugMsg('TdmServidorBD.Inicializa - 11');
  

  S := ExtractFilePath(ParamStr(0)) + PastaCopia;
  if not DirectoryExists(S) then ForceDirectories(S);

  DebugMsg('TdmServidorBD.Inicializa - 12');
  
  S := ExtractFilePath(ParamStr(0)) + 'Email';
  if not DirectoryExists(S) then ForceDirectories(S);
  
  DebugMsg('TdmServidorBD.Inicializa - 13');

  ServerEngine.Active := True;

  DebugMsg('TdmServidorBD.Inicializa - 14');
  SecMon.Active := True;
  DebugMsg('TdmServidorBD.Inicializa - 15');
  
  Sessao.UserName := csAdministrator;
  Sessao.Password := csDefaultAdminPassword;
  try
    Sessao.Active := True;
  except
  end;
  
  if not Sessao.LoggedInAdministrator.UserExists(SessionUser) then
    Sessao.LoggedInAdministrator.AddUser(sessionuser, sessionpass, true, true, true) else
    Sessao.LoggedInAdministrator.SetUserPassword(sessionuser, SessionPass);
    
  DebugMsg('TdmServidorBD.Inicializa - 16');
  
  Sessao.Active := False;

  DebugMsg('TdmServidorBD.Inicializa - 17');
  
{  if SecMon.IsUser(SessionUser, SessionPass) then begin
    SecMon.ChangePassword(SessionUser, SessionPass);
    SecMon.ChangeTokens(SessionUser, [stAdmin, stRead, stWrite]);
  end else 
    SecMon.AddUser(SessionUser, SessionPass, [stAdmin, stRead, stWrite]); }
  CommandHandler.Active := True;
  DebugMsg('TdmServidorBD.Inicializa - 18');
  NexPlugin.Transp := nxTCPIP;
  DebugMsg('TdmServidorBD.Inicializa - 19');
  nxSqlEng.Active := True;
  DebugMsg('TdmServidorBD.Inicializa - 20');
  nxSimpleMon.Active := True;
  DebugMsg('TdmServidorBD.Inicializa - 21');
  nxTCPIP.Active := False;
//  nxSMT.Active := False;
  DebugMsg('TdmServidorBD.Inicializa - 22');
  NexPlugin.Active := False;
  DebugMsg('TdmServidorBD.Inicializa - 23');
  NexCmdHandler.Active := False;
  DebugMsg('TdmServidorBD.Inicializa - 24');
end;

procedure TdmServidorBD.ListenClients;
begin
  DebugMsg('TdmSevidorBD.ListenClientes 1');
  NexCmdHandler.Active := True;
  DebugMsg('TdmSevidorBD.ListenClientes 2');
  NexPlugin.Active := True;
  DebugMsg('TdmSevidorBD.ListenClientes 3');
  nxTCPIP.Mode := nxtmListen;
//  nxSMT.Mode := nxtmListen;
  nxTCPIP.Port := 17200;
  nxTCPIP.ServerName := 'NexCafe';
//  nxSMT.ServerName := 'NEX';
  nxTCPIP.Active := True;
//  nxSMT.Active := True;
  DebugMsg('TdmSevidorBD.ListenClientes 4');
end;

procedure TdmServidorBD.FiltroTCPIPAcceptConnection(
  aSender: TnxCustomConnectionFilter; aTransport: TnxWinsockTransport;
  const aLocalAddr, aRemoteAddr: string; var aAccept: Boolean);
begin
  aAccept := ServidorAtivo;
end;

procedure TdmServidorBD.nxSimpleMonRecordDelete(
  aExtender: TnxSimpleMonitorExtender; aBefore: Boolean;
  aOldData: PnxByteArray);

var
  aBuffer: Array[1..1024] of Byte;
  V: OleVariant;
  aTable: String;
  Key: String;
  T : TncTableInfo;

  CustoSaver : TncCustoSaver;
  
  St : TMemoryStream;
  
  
function LeFld(aFieldName: String): OleVariant;
begin
  with TnxServerBaseCursor(aExtender.ExtendableObject).TableDescriptor, FieldsDescriptor do
    Result := FieldByNameAsVariant[aOldData, aFieldName];
end;

begin
   if (not (aExtender.ExtendableObject is TnxServerBaseCursor)) then Exit;
   aTable := TnxServerBaseCursor(aExtender.ExtendableObject).FullName;

   if not aBefore then begin
     T := gTables[aTable];
     if Assigned(T) then
     if T.Bkp then
       AddRecDel(TnxServerDatabase(TnxServerBaseCursor(aExtender.ExtendableObject).Database), T.TableID, LeFld(T.UID_Name));

     if SameText(aTable, 'MovEst') then begin
       CustoSaver := TncCustoSaver.Create(LeFld('Produto'), LeFld('TipoTran'), LeFld('Cancelado'), LeFld('CustoU'));
       try
         if CustoSaver.FNovo.AlteraCusto then
           AtualizaCusto(TnxServerDatabase(TnxServerBaseCursor(aExtender.ExtendableObject).Database), CustoSaver.FNovo.Produto);
       finally
         CustoSaver.Free;
       end;
     end;

     Exit;
   end;
   
end;

function HoraFromVariant(V: Variant): Variant;
var D: TDateTime;
begin
  try
    if VarIsNull(V) then
      Result := null
    else begin
      D := V;
      if D>0 then
        Result := HourOf(D) else
        Result := null;
    end;
  except
    Result := null;
  end;
end;

procedure TdmServidorBD.nxSimpleMonRecordInsert(
  aExtender: TnxSimpleMonitorExtender; aBefore: Boolean; aLockType: TnxLockType;
  aData: PnxByteArray);
begin
  nxSimpleMonRecordModify(aExtender, aBefore, aData, nil, False);
end;

function CalcMarkup(aCusto, aPreco: Currency): Variant;
begin
  if (aCusto<0.0001) or (aPreco<0.00001) then
    Result := Null else
    Result := ((aPreco/aCusto) - 1) * 100;
end;

procedure TdmServidorBD.nxSimpleMonRecordModify(
  aExtender: TnxSimpleMonitorExtender; aBefore: Boolean; aNewData,
  aOldData: PnxByteArray; aReleaseLock: Boolean);
var
  T : TncTableInfo;
  
  vValue,
  vOldCliente,
  vNewCliente,
  vOldFator,
  vNewFator,
  vOldPontos, 
  vNewPontos,
  vCancelado, 
  vSessao, 
  vUsername, 
  vCliente,
  vID, 
  vTotal, 
  vDesconto, 
  vPago, 
  vDeb,
  vW, vH, 
  vMin, vMax, vAtual, vRepor, vAbaixoMin, vAbaixoMinDesde, vNaoControlaEstoque,
  vCaixa : OleVariant;

  aCustoU, vTroco: Currency;

  aRecVer: Cardinal;

  curSaldoAnt, curSaldoDepois: Boolean;

  aLen, aTipo, aW, aH: Integer;
  aTabTran: Boolean;
  aBuffer: Array[1..310] of Byte;
  S: String;
  St : TMemoryStream;
  aTable: String;
  dmProc : TdmDBProc;

  DCSaver : TncDebCredSaver;

  Ano, Mes, Dia : Word;

  aComissaoPerc : Double;
  aCusto: Currency;
  aComissaoLucro: Boolean;
  aID : Cardinal;
  datahora : TDateTime;

  CustoSaver : TncCustoSaver;


function LeByte(aFieldName: String; aNew: Boolean=True): Byte;
var 
  aField: Integer;
  aData : PnxByteArray;
begin
  if aNew then
    aData := aNewData else
    aData := aOldData;

  with TnxServerBaseCursor(aExtender.ExtendableObject).TableDescriptor, FieldsDescriptor do
  if (aData=nil) or IsRecordFieldNull(GetFieldFromName(aFieldName), aData) then
    Result := 0 else
    Result := Byte(GetRecordFieldForFilter(GetFieldFromName(aFieldName), aData)^);
end;

function LeCurrency(aFieldName: String; aNew: Boolean=True): Currency;
var 
  aField: Integer;
  aData : PnxByteArray;
begin
  if aNew then
    aData := aNewData else
    aData := aOldData;

  with TnxServerBaseCursor(aExtender.ExtendableObject).TableDescriptor, FieldsDescriptor do
  if (aData=nil) or IsRecordFieldNull(GetFieldFromName(aFieldName), aData) then
    Result := 0 else
    Result := Currency(GetRecordFieldForFilter(GetFieldFromName(aFieldName), aData)^);
end;

{function LeDateTime(aFieldName: String; aNew: Boolean=True): TDateTime;
var 
  aField: Integer;
  aData : PnxByteArray;
begin
  if aNew then
    aData := vNewData else
    aData := vOldData;

  with vServerCursor.TableDescriptor, FieldsDescriptor do
  if (aData=nil) or IsRecordFieldNull(GetFieldFromName(aFieldName), aData) then
    Result := 0 else
    Result := TimeStampToDateTime(MSecsToTimeStamp(Comp(GetRecordFieldForFilter(GetFieldFromName(aFieldName), aData)^)));
end;}

function LeDouble(aFieldName: String; aNew: Boolean=True): Double;
var 
  aField: Integer;
  aData : PnxByteArray;
begin
  if aNew then
    aData := aNewData else
    aData := aOldData;

  with TnxServerBaseCursor(aExtender.ExtendableObject).TableDescriptor, FieldsDescriptor do
  if (aData=nil) or IsRecordFieldNull(GetFieldFromName(aFieldName), aData) then
    Result := 0 else
    Result := Double(GetRecordFieldForFilter(GetFieldFromName(aFieldName), aData)^);
end;

function LeInteger(aFieldName: String; aNew: Boolean=True): Integer;
var 
  aField: Integer;
  aData : PnxByteArray;
begin
  if aNew then
    aData := aNewData else
    aData := aOldData;

  with TnxServerBaseCursor(aExtender.ExtendableObject).TableDescriptor, FieldsDescriptor do
  if (aData=nil) or IsRecordFieldNull(GetFieldFromName(aFieldName), aData) then
    Result := 0 else
    Result := Integer(GetRecordFieldForFilter(GetFieldFromName(aFieldName), aData)^);
end;

function LeWord(aFieldName: String; aNew: Boolean=True): Word;
var 
  aField: Integer;
  aData : PnxByteArray;
begin
  if aNew then
    aData := aNewData else
    aData := aOldData;

  with TnxServerBaseCursor(aExtender.ExtendableObject).TableDescriptor, FieldsDescriptor do
  if (aData=nil) or IsRecordFieldNull(GetFieldFromName(aFieldName), aData) then
    Result := 0 else
    Result := Word(GetRecordFieldForFilter(GetFieldFromName(aFieldName), aData)^);
end;

function LeWord32(aFieldName: String; aNew: Boolean=True): Cardinal;
var 
  aField: Integer;
  aData : PnxByteArray;
begin
  if aNew then
    aData := aNewData else
    aData := aOldData;

  with TnxServerBaseCursor(aExtender.ExtendableObject).TableDescriptor, FieldsDescriptor do
  if (aData=nil) or IsRecordFieldNull(GetFieldFromName(aFieldName), aData) then
    Result := 0 else
    Result := Cardinal(GetRecordFieldForFilter(GetFieldFromName(aFieldName), aData)^);
end;

function LeBool(aFieldName: String; aNew: Boolean=True): Boolean;
var 
  aField: Integer;
  aData : PnxByteArray;
begin
  if aNew then
    aData := aNewData else
    aData := aOldData;

  with TnxServerBaseCursor(aExtender.ExtendableObject).TableDescriptor, FieldsDescriptor do
  if (aData=nil) or IsRecordFieldNull(GetFieldFromName(aFieldName), aData) then
    Result := False else
    Result := Boolean(GetRecordFieldForFilter(GetFieldFromName(aFieldName), aData)^);
end;

function LeFld(aFieldName: String; aNew: Boolean=True): OleVariant;
var 
  aField: Integer;
  aData : PnxByteArray;
begin
  if aNew then
    aData := aNewData else
    aData := aOldData;

  with TnxServerBaseCursor(aExtender.ExtendableObject).TableDescriptor, FieldsDescriptor do
    Result := FieldByNameAsVariant[aData, aFieldName];
end;

function CampoNull(aFieldName: String; aNew: Boolean=True): Boolean;
var 
  aField: Integer;
  aData : PnxByteArray;
begin
  if aNew then
    aData := aNewData else
    aData := aOldData;

  with TnxServerBaseCursor(aExtender.ExtendableObject).TableDescriptor, FieldsDescriptor do
  if (aData=nil) then
    Result := False else
    Result := IsRecordFieldNull(GetFieldFromName(aFieldName), aData);
end;

function DatePad(W: Word): String;
begin
  if W<10 then
    Result := '0'+IntToStr(W) else
    Result := IntToStr(W);
end;

procedure SaveFld(aFieldName: String; const Value: OleVariant; aNew: Boolean = True);
var 
  aData: PnxByteArray;
begin
  if aNew then
    aData := aNewData else
    aData := aOldData;
    
  with TnxServerBaseCursor(aExtender.ExtendableObject).TableDescriptor, FieldsDescriptor do
    FieldByNameAsVariant[aData, aFieldName] := Value;
end;

function PodeTodosH(V: Variant): Boolean;
var P, H: Integer;
begin
  Result := False;
  if V=null then Exit;
  P := V;
  for H := 0 to 23 do if not BitIsSet(P, H) then Exit;
  Result := True;
end;

function CalcMov(A, B: Currency; aCancelado: Boolean): Currency;
begin
  if aCancelado then
    result := 0 else
    Result := A - B;
end;

procedure LoadDebCredData(aData: TncDebCredSaverData; aNew: Boolean);
begin
  aData.Cliente := LeInteger('Cliente', aNew);
  aData.Cancelado := LeBool('Cancelado', aNew);
  aData.Debito := LeCurrency('Debito', aNew);
  aData.DebitoPago := LeCurrency('DebitoPago', aNew);
  aData.Credito := LeCurrency('Credito', aNew);
  aData.CreditoUsado := LeCurrency('CreditoUsado', aNew);
end;

function SrvDB: TnxServerDatabase;
begin
  Result := TnxServerDatabase(TnxServerBaseCursor(aExtender.ExtendableObject).Database);
end;

begin
  aTable := TnxServerBaseCursor(aExtender.ExtendableObject).FullName;

  TnxServerBaseCursor(aExtender.ExtendableObject).Database.GetPath(S);
  if not SameText(S, ExtractFilePath(ParamStr(0))+pastaDados+'\') then Exit;

  if (not aBefore) and (not gEvolvingTables) then begin
    T := gTables[aTable];
    if Assigned(T) and T.Bkp then AddBkProcess(SrvDB, T.TableID, LeFld(T.ID_Name));
  end;

  if (not aBefore) and SameText(aTable, 'MovEst') then begin
    CustoSaver := TncCustoSaver.Create(LeWord32('Produto'), LeByte('TipoTran'), LeBool('Cancelado'), LeCurrency('CustoU'));
    try
      if aOldData<>nil then
        CustoSaver.setAntigo(LeWord32('Produto', False), 
                             LeByte('TipoTran', False),
                             LeBool('Cancelado', False),
                             LeCurrency('CustoU', False));
      if CustoSaver.RefreshCustoAntigo then
        Self.AtualizaCusto(SrvDB, CustoSaver.FAntigo.Produto);
      if CustoSaver.RefreshCustoNovo then
        Self.AtualizaCusto(SrvDB, CustoSaver.FNovo.Produto);                     
    finally
      CustoSaver.Free;
    end;
  end;

  if not aBefore then Exit;

  if not gEvolvingTables then
  if gRecVerManager.GetRecVer(aTable, aRecVer) then
    SaveFld('RecVer', aRecVer);

   if SameText(aTable, 'NFConfig') then begin
     if not gEvolvingTables then begin
       if LeBool('EmitirNFCe') and (not LeBool('EmitirNFCe', False)) then begin
         DebugMsg('TdmServidorBD.nxSimpleMonRecordModify - NFConfig - wm_instaladepend');
         PostMessage(CliNotifyHandle, wm_instaladepend, 0, 0);
       end;

       if LeBool('EmitirNFe') and (not LeBool('EmitirNFe', False)) then begin
         DebugMsg('TdmServidorBD.nxSimpleMonRecordModify - NFConfig - wm_instaladepend');
         PostMessage(CliNotifyHandle, wm_instaladepend, 10, 0);
       end;       
     
       PostMessage(CliNotifyHandle, wm_refreshnfconfig, 0, 0);
     end;  
     Exit;  
   end else    
   if SameText(aTable, 'Config') then begin
     vOldCliente := LeFld('Margem', False);
     vNewCliente := LeFld('Margem');
     if not gEvolvingTables then
     if not VarSameValue(vOldCliente, vNewCliente) then
       Self.RecalcPrecoAuto(SrvDB, vNewCliente);
     Exit;  
   end else
   if SameText(aTable, 'NFE') then begin
     if CampoNull('TotalNF') and (not CampoNull('Valor')) then
       SaveFld('TotalNF', LeCurrency('Valor'));
     
     if gEvolvingTables then Exit;
     if (LeByte('statuscanc') <> LeByte('statuscanc', False)) and (LeByte('statuscanc')=statuscanc_nfe_processarnfe) then 
       PostMessage(CliNotifyHandle, wm_newcanc, Byte((LeByte('TipoDoc')=tiponfe_nfe)), 0)
     else
     if (LeByte('status') <> LeByte('status', False)) then begin
       if (LeByte('status')=nfestatus_transmitir) then 
         PostMessage(CliNotifyHandle, wm_newtrans, Byte((LeByte('TipoDoc')=tiponfe_nfe)), 0);
       if (LeByte('status')=nfestatus_consultar) then 
         PostMessage(CliNotifyHandle, wm_newconsulta, Byte((LeByte('TipoDoc')=tiponfe_nfe)), 0);
     end;
     Exit;
   end else
   if SameText(aTable, 'PostMS') then begin
     if (not gEvolvingTables) and (aOldData=nil) then 
       PostMessage(CliNotifyHandle, wm_newpostms, 0, 0);
     Exit;
   end else   
   if SameText(aTable, 'Produto') then begin
     if SalvandoConfig then Exit;

     vValue := LeFld('Codigo');
     if VarIsNull(vValue) then
       S := '' else
       S := vValue;

     if (not gEvolvingTables) and (S='') then begin
       S := ZeroC(Self.ProxCodProd(SrvDB), gConfig.TamCodigoAuto);
       SaveFld('Codigo', S);
     end;
     
     if (S>'') and (Length(S)<8) then
       SaveFld('CodigoNum', StrToIntDef(S, 0)) else
       SaveFld('CodigoNum', 0);
     
     if LeBool('PrecoAuto') then begin
       if (not gEvolvingTables) then begin
         if LeCurrency('CustoUnitario') < 0.0001 then
           SaveFld('Preco', null) else 
           SaveFld('Preco', gConfig.CalcPreco(LeFld('Margem'), LeCurrency('CustoUnitario')));
       end;
     end else
       SaveFld('Margem', CalcMarkup(LeCurrency('CustoUnitario'), LeCurrency('Preco')));

     SaveFld('EstoqueTot', LeDouble('EstoqueAtual')+LeDouble('EstoquePend'));

     vNaoControlaEstoque := LeFld('NaoControlaEstoque');
     if VarIsNull(vNaoControlaEstoque) or (vNaoControlaEstoque=False) then begin                                         
       vMin := LeFld('EstoqueMin');
       if (vMin=null) or (vMin<=0) then begin
         SaveFld('AbaixoMin', null);
         SaveFld('AbaixoMinDesde', null);
       end else begin
         vAtual := LeFld('EstoqueAtual');
         if (vAtual=null) or (vAtual<vMin) then begin
           vAbaixoMin := LeFld('AbaixoMin');
           if (vAbaixoMin=null) or (vAbaixoMin=False) then begin
             SaveFld('AbaixoMin', True);
             SaveFld('AbaixoMinDesde', Now);
           end;
           vMax := LeFld('EstoqueMax');
           if (vMax=null) or (vMax<vMin) then 
             SaveFld('EstoqueRepor', null) 
           else
           if vAtual=null then
             SaveFld('EstoqueRepor', vMax) else
             SaveFld('EstoqueRepor', vMax-vAtual);
         end else begin
           SaveFld('AbaixoMin', False);
           SaveFld('AbaixoMinDesde', null);
           SaveFld('EstoqueRepor', null);
         end;
       end;
     end else begin
       SaveFld('AbaixoMin', null);
       SaveFld('AbaixoMinDesde', null);
       SaveFld('EstoqueRepor', null);
     end;

     if aOldData<>nil then
     if (not gEvolvingTables) and (not LeBool('NaoControlaEstoque')) then begin
       if (LeDouble('EstoqueAtual')<=0) and (LeDouble('EstoqueAtual', False)>0) then
         AddCard(SrvDB, card_type_estoque_fim, LeWord32('ID'), True);

       if (LeDouble('EstoqueAtual')>=0) then
         if LeBool('AbaixoMin') and (not LeBool('AbaixoMin', False)) then
           AddCard(SrvDB, card_type_estoque_min, LeWord32('ID'), True);
     end;

     if not gEvolvingTables then
       AddCard(SrvDB, card_type_produto, LeWord32('ID'), True);
     
     Exit;
   end else
   if SameText(aTable, 'Passaporte') then 
   begin
     vDeb := LeFld('Senha');
     SaveFld('Cartao', (vDeb <> null) and (vDeb>''));
     Exit;
   end else
   if SameText(aTable, 'Orcamento') then 
   begin
     datahora := now;
     if (aOldData=nil) or (LeByte('Status')<>LeByte('Status', False)) then
     begin
       SaveFld('StatusAlteradoEm', datahora);
       case LeByte('Status') of
         orcamento_aprovado : SaveFld('AprovadoEm', datahora);
         orcamento_recusado : SaveFld('RecusadoEm', datahora);
         orcamento_vendido  : SaveFld('VendidoEm', datahora);
         orcamento_expirado : SaveFld('ExpiradoEm', datahora);
       end;
     end;

     if LeByte('ValModo')=0 then
       SaveFld('ValData', null) 
     else
       case LeByte('Status') of
         orcamento_expirado : begin
           vValue := LeFld('ValData');
           if (aOldData<>nil) and (not VarIsNull(vValue)) and (vValue>=Date) then begin
             SaveFld('ExpiradoEm', null);
             SaveFld('Status', orcamento_pendente);
           end;
         end;

         orcamento_pendente : begin
           vValue := LeFld('ValData');
           if (aOldData<>nil) and (not VarIsNull(vValue)) and (vValue<Date) then begin
             SaveFld('ExpiradoEm', datahora);
             SaveFld('Status', orcamento_expirado);
           end;
         end;
       end;
     
     SaveFld('AtualizadoEm', datahora);
     SaveFld('TotalFinal', LeCurrency('Total') - LeCurrency('Desconto')); 

     if not gEvolvingTables then
       AddCard(SrvDB, card_type_orcamento, LeWord32('IDSeq'), True);
   end else   
   if SameText(aTable, 'Cliente') then begin

     vID := LeFld('CPF');
     if VarIsNull(vID) then
       SaveFld('CPF_sodig', null) else
       SaveFld('CPF_sodig', SoDig(vID));
     
     if gEvolvingTables then Exit;
     
     vID := LeFld('Codigo');
     if (vID=null) or (vID='') then begin
       aID := LeWord32('ID');
       if CodigoLivre(SrvDB, aID) then begin
         vID := IntToStr(aID);
         SaveFld('Codigo', vID);
       end;
     end;

     if (vID=null) or (vID='') then
       SaveFld('CodigoKey', null) else
       SaveFld('CodigoKey', CodigoCliKey(vID));
       
     SaveFld('TranspEnt', LeBool('Fornecedor') and (LeByte('TipoFor') in [tipofor_transp, tipofor_entregador]));
     
     SaveFld('TemDebito', (LeCurrency('Debito')>0));
     SaveFld('TemCredito', (LeCurrency('ValorCred')>0));
     vDeb := LeFld('DataNasc');
     if vDeb<>null then begin
       DecodeDate(vDeb, Ano, Mes, Dia);
       SaveFld('Aniversario', DatePad(Mes)+DatePad(Dia));
     end else
       SaveFld('Aniversario', null);
     Exit;
   end else
   if SameText(aTable, 'MovEst') then 
   begin
     SaveFld('TotLiq', LeCurrency('Total')-LeCurrency('Desconto')); 
     SaveFld('TotalFinal', LeCurrency('TotLiq')+LeCurrency('Tax_incluir'));
     SaveFld('VenDev', (LeByte('TipoTran') in [trEstVenda, trEstDevolucao]));
   
     if CampoNull('Cancelado') then SaveFld('Cancelado', False);
     if (not CampoNull('DataHora')) and (LeFld('DataHora')<1) then
       SaveFld('DataHora', null);
     SaveFld('Pend', (CampoNull('DataHora') and (LeByte('TipoTran')=trEstVenda)));

     if CampoNull('IncluidoEm') then 
       SaveFld('IncluidoEm', LeFld('DataHora'));

     if (not gEvolvingTables) and (LeByte('TipoTran')=trEstVenda) and ((aOldData=nil) or CampoNull('CustoU')) then
       SaveFld('CustoU', ObtemCusto(SrvDB, LeWord32('Produto'), LeFld('DataHora')));

     if LeByte('TipoTran')=trAjustaCusto then
       SaveFld('CustoU', LeCurrency('Unitario')); 

     if (LeByte('TipoTran') in [trEstCompra, trAjustaCusto]) then 
     if (LeCurrency('Desconto')>0) and (LeDouble('Quant')>0) then 
       SaveFld('CustoU', DuasCasas(LeCurrency('TotLiq') / LeDouble('Quant'))) else
       SaveFld('CustoU', LeCurrency('Unitario'));
     
     SaveFld('AjustaCusto', (not LeBool('Cancelado')) and (LeByte('TipoTran') in [trEstCompra, trAjustaCusto]) and (LeCurrency('CustoU')>0)); 

     if (LeByte('TipoTran')=trEstVenda) and (not LeBool('FidResgate')) then begin
       if aOldData=nil then begin
         ObtemDadosComissao(SrvDb,
                            LeFld('Produto'), 
                            aComissaoPerc, 
                            aComissaoLucro,
                            aCustoU);
         SaveFld('CustoU', aCustoU);
     
         if VarIsNull(LeFld('ComissaoPerc')) then
         begin
           SaveFld('ComissaoPerc', aComissaoPerc);
           SaveFld('ComissaoLucro', aComissaoLucro);
         end;
       end;

       SaveFld('CustoT', LeCurrency('CustoU') * LeDouble('Quant'));
       SaveFld('Lucro', LeCurrency('TotLiq') - LeCurrency('CustoT'));

       if (aOldData=nil) or (LeCurrency('Total') <> LeCurrency('Total', False)) or (LeCurrency('Desconto') <> LeCurrency('Desconto', False)) then 
       begin
         aComissaoPerc := LeDouble('ComissaoPerc') / 100;
         aComissaoLucro := LeBool('ComissaoLucro');
  
         if aComissaoLucro then begin
           aCusto := LeCurrency('CustoT');
           if aCusto > 0 then begin
             if aCusto > LeCurrency('TotLiq') then
               SaveFld('Comissao', 0) else
               SaveFld('Comissao', LeCurrency('Lucro') * aComissaoPerc);
           end;
         end else
           SaveFld('Comissao', LeCurrency('TotLiq') * aComissaoPerc);
       end;
     end;
     Exit;
   end else
   if SameText(aTable, 'Caixa') then begin
     if (not gEvolvingTables) then begin 
       if VarIsNull(LeFld('Fechamento')) then
         AddCard(SrvDB, card_type_aberturacx, LeWord32('ID')) else
         AddCard(SrvDB, card_type_caixa, LeWord32('ID'));
     end;
     Exit;
   end;
   if SameText(aTable, 'CCe') then begin
     if (not gEvolvingTables) and (LeByte('status')=statuscce_enviar) then 
       PostMessage(CliNotifyHandle, wm_newcce, 0, 0);
     Exit;  
   end;
   if SameText(aTable, 'Tran') then
     aTabTran := True 
   else
   if SameText(aTable, 'ITran') then
     aTabTran := False 
   else
     Exit;

   if aTabTran then
     aTipo := LeByte('Tipo') else
     aTipo := LeByte('TipoTran');

   if aTabTran then begin
     SaveFld('VenDev', (LeByte('Tipo') in [trEstVenda, trEstDevolucao]));

     SaveFld('Hora', HoraFromVariant(LeFld('IncluidoEm')));
       
     if CampoNull('tranest') then
       SaveFld('tranest', TipoTranEstoque(aTipo));
     if CampoNull('trancx') then
       SaveFld('trancx', TipoTranCaixa(aTipo));
   end;

   vCancelado := LeFld('Cancelado');
   
   if (not gEvolvingTables) and aTabTran then begin
     if (aTipo=trEstVenda) then begin
       if (not LeBool('PagPend')) then begin
         Self.AddCard(SrvDB, card_type_venda, LeWord32('ID'));
       end;
     end else
     if (aTipo=trEstDevolucao) then
       AddCard(SrvDB, card_type_devolucao, LeWord32('ID'));
     if (LeByte('statusnfe') <> LeByte('statusnfe', False)) and (LeByte('statusnfe')=nfetran_gerar) then 
       PostMessage(CliNotifyHandle, wm_newgerar, Byte((LeByte('TipoNFE')=tiponfe_nfe)), 0);   
   end;
     
   vTotal := LeFld('Total');
   vDesconto := LeFld('Desconto');
   vPago := LeFld('Pago');
   vSessao := LeFld('Sessao');
   vCaixa := LeFld('Caixa');

   if aTabTran then
     SaveFld('TotalFinal', LeCurrency('Total')-LeCurrency('Desconto')+LeCurrency('Tax_incluir')+LeCurrency('Frete'));
   
   if CampoNull('IncluidoEm') then
     SaveFld('IncluidoEm', LeFld('DataHora'));

   if LeBool('Cancelado') then 
     SaveFld('PagPend', False);
     
   if LeBool('PagPend') then begin
     SaveFld('CaixaPag', 0);
     SaveFld('DataHora', null);
   end else
   if CampoNull('CaixaPag') then 
     SaveFld('CaixaPag', vCaixa);

   if aTipo=trEstDevolucao then 
     SaveFld('CaixaPag', vCaixa);  
     
   if aTabTran then begin
     if CampoNull('UID') then
       SaveFld('UID', TGuidEx.ToString(TGuidEx.NewGuid));
     
{     if (aTipo in [trEstVenda, trEstCompra, trEstDevolucao, trEstEntrada, trEstSaida, trAjustaCusto]) then
       SaveFld('Descr', ObtemDescrTran(SrvDB, LeWord32('ID'), (aTipo=trAjustaCusto)));}
       
     DCSaver := TncDebCredSaver.Create;
     try
       if (aOldData<>nil) then LoadDebCredData(DCSaver.Old, False);
       LoadDebCredData(DCSaver.New, True);
       SalvaDebCred(SrvDB, DCSaver);
     finally
       DCSaver.Free;
     end;

     if LeBool('PagPend') or ((aTipo<>trEstVenda) and (aTipo<>trPagDebito)) then
       SaveFld('PagEsp', null)
     else
     if LeWord('PagEsp')=0 then
       SaveFld('PagEsp', ObtemPagEspTran(SrvDB, LeFld('ID')));
   end;

   if VarIsNull(vCaixa) then vCaixa := 0;
   if VarIsNull(vCancelado) then begin
     vCancelado := False;
     SaveFld('Cancelado', False);
   end;
   if VarIsNull(vTotal) then vTotal := 0;
   if VarIsNull(vDesconto) then vDesconto := 0;
   if VarIsNull(vPago) then vPago := 0;
   if VarIsNull(vCaixa) then vCaixa := 0;

  if (vCancelado=True) or 
    (vCaixa=0) or LeBool('PagPend') or
    (aTipo in [trEstCompra, trEstDevolucao, trEstEntrada, trEstSaida, trPagDebito, trCaixaEnt, trCaixaSai]) 
  then
    vDeb := 0 
  else begin
    if aTabTran then
      vDeb := (vTotal - vDesconto) + LeCurrency('tax_incluir') + LeCurrency('Frete') - vPago - LeCurrency('CreditoUsado') else
      vDeb := vTotal - vDesconto - vPago;
      
    if vDeb<0 then vDeb := 0;
  end;

  if aTabTran then
  if not (aTipo in [trEstCompra, trEstDevolucao, trEstEntrada, trEstSaida, trPagDebito, trCaixaEnt, trCaixaSai]) then begin
    vTroco := (LeCurrency('Pago') + LeCurrency('CreditoUsado')) - LeCurrency('TotalFinal');
    if (vTroco>0) and (LeCurrency('Credito')<0.00001) then
      SaveFld('Troco', vTroco) else
      SaveFld('Troco', 0);
  end;
  
  SaveFld('TotLiq', vTotal-vDesconto);
    
  SaveFld('Debito', vDeb);  
  if aTabTran and ((vCancelado=null) or (vCancelado=False)) then begin
    SaveFld('CanceladoPor', null);
    SaveFld('CanceladoEm', null);
  end;

  if aTabTran and (not LeBool('DescPorPerc')) and (LeCurrency('Desconto')>0) and (LeCurrency('Total')>0) then
    SaveFld('DescPerc', LeCurrency('Desconto') / LeCurrency('Total') * 100);

  if not aTabTran then begin
    vNewFator := LeFld('FidFator');
    vNewPontos := LeFld('FidPontos');

    if (aTipo=0) or (vNewPontos=null) or (vNewPontos=0) or (vNewFator=null) or ((vNewFator<>1) and (vNewFator<>-1)) then
      SaveFld('FidOpe', tofNenhum)
    else
    if aTipo=trAjustaFid then
      SaveFld('FidOpe', tofCorrecao)
    else
    if vNewFator=-1 then
      SaveFld('FidOpe', tofResgate) else
      SaveFld('FidOpe', tofAcumulo);

{    dmProc := TdmDBProc(FOP.GetObjFromPool); 
    try
      dmProc.AjustaPontos(vOldCliente, vNewCliente, vOldFator, vNewFator, vOldPontos, vNewPontos);
    finally
      FOP.ReleaseObj(dmProc);
    end;}
    
  end;
end;

function TdmServidorBD.nxSMTRemoveSession(aSender: TnxBaseTransport;
  aSessionID: TnxSessionID): Cardinal;
begin
  NexPlugin.spRemoveSession(aSessionID);
end;

function TdmServidorBD.nxTCPIPRemoveSession(aSender: TnxBaseTransport;
  aSessionID: TnxSessionID): Cardinal;
begin
  NexPlugin.spRemoveSession(aSessionID);
end;

function TdmServidorBD.ObtemCusto(aDB: TnxServerDatabase; aProduto: Integer;
  aData: Variant): Currency;
var
  hcMovEst: TnxHelpCursor;  
  S : String;
  C : Integer;
begin
  Result := 0;
  hcMovEst := TnxHelpCursor.CreateOpen('MovEst', aDB);
  try
    hcMovEst.Active := True;
    hcMovEst.SelIndex('IProdAjustaCustoData');
    hcMovEst.SetKey1('Produto', aProduto);
    hcMovEst.SetKey1('AjustaCusto', True);
    hcMovEst.SetKey2('Produto', aProduto);
    hcMovEst.SetKey2('AjustaCusto', True);
    if aData<>null then begin
      hcMovEst.SetKey1('DataHora', aData);
      C := 3;
    end else 
      C := 2;

    hcMovEst.SetRange(2);  

    if hcMovEst.FindNearest(C, (C=3)) then begin
      if (aProduto > hcMovEst.LeWord32('Produto')) then 
        Exit;
      if (aProduto < hcMovEst.LeWord32('Produto')) then 
        hcMovEst.Next;
      if aProduto = hcMovEst.LeWord32('Produto') then 
        Result := hcMovEst.LeCurrency('CustoU');
    end;
  finally
    hcMovEst.Free;
  end;
end;

function TdmServidorBD.ObtemDadosComissao(aDB: TnxServerDatabase;
  aProduto: Variant; var aPerc: Double; var aLucro: Boolean; var aCustoU: Currency): Boolean;
var
  hcProd : TnxHelpCursor;  
  V : Variant;
begin
  Result := False;
  if aProduto=null then Exit;
  
  hcProd := TnxHelpCursor.CreateOpen('Produto', aDB);
  try
    hcProd.Active := True;
    hcProd.SelIndex('IID');
    hcProd.SetKey1('ID', aProduto);
    if hcProd.FindKey(1) then
    begin
      Result := True;
      aCustoU := 0;
      aCustoU := hcProd.NewValue('CustoUnitario', aCustoU);
      if VarIsNull(hcProd.NewValue('ComissaoPerc', null)) then begin
        aPerc := gConfig.ComissaoPerc;
        aLucro := gConfig.ComissaoLucro;
      end else begin
        aPerc := hcProd.NewValue('ComissaoPerc', 0);
        aLucro := hcProd.NewValue('ComissaoLucro', False);
      end;
    end;
  finally
    hcProd.Free;
  end;
end;

function TdmServidorBD.ObtemDescrTran(aDB: TnxServerDatabase;
  aTran: Integer; aAjustaCusto: Boolean): String;
var
  hcMovEst : TnxHelpCursor;
  hcProd   : TnxHelpCursor;
  sProd : String;  

procedure getProdDescr;
begin
  hcProd.SetKey1('ID', hcMovEst.NewValue('Produto', 0));
  if hcProd.FindKey(1) then
    sProd := hcProd.NewValue('Descricao', '') else
    sProd := '[NAO ACHOU]';
end;
  
begin
  hcMovEst := TnxHelpCursor.CreateOpen('MovEst', aDB);
  hcProd   := TnxHelpCursor.CreateOpen('Produto', aDB);
  try
    hcProd.Active := True;
    hcProd.SelIndex('IID');
    hcMovEst.Active := True;
    Result := '';
    if not hcMovEst.SelIndex('ITranItem') then Exit;
    hcMovEst.SetKey1('Tran', aTran);
    hcMovEst.SetKey2('Tran', aTran);
    if not hcMovEst.SetRange(1, False) then Exit;
    
    while hcMovEst.GetNext do begin
      GetProdDescr;
      if aAjustaCusto then 
        sProd := sProd + ' = '  + CurrencyToStr(hcMovEst.NewValue('Unitario', 0)) else
        sProd := FloatToStr(hcMovEst.NewValue('Quant', 0))+ ' X ' + sProd;
      if Result>'' then
        Result := Result+', ';
      result := Result + sProd;
    end;
    Result := copy(Result, 1, 100);
  finally
    hcProd.Free;
    hcMovEst.Free;  
  end;
end;

function TdmServidorBD.ObtemPagEspTran(aDB: TnxServerDatabase;
  aTran: Integer): Variant;
var 
  hcPagEsp : TnxHelpCursor;
  T        : Integer;
  V        : Variant;
begin
  Result := null;
  hcPagEsp   := TnxHelpCursor.CreateOpen('PagEspecies', aDB);
  try
    hcPagEsp.Active := True;
    hcPagEsp.SelIndex('ITranID');
    hcPagEsp.SetKey1('Tran', aTran);
    hcPagEsp.SetKey2('Tran', aTran);
    if not hcPagEsp.SetRange(1, False) then Exit;
    T := 0;
    while hcPagEsp.GetNext do begin
      V := hcPagEsp.NewValue('Especie', null);
      if T=0 then
        Result := V
      else
      if V<>Result then begin
        Result := pagesp_Misto;
        Exit;
      end;
    end;
  finally
    hcPagEsp.Free;
  end;
end;

function TdmServidorBD.ProxCodProd(aDB: TnxServerDatabase): Cardinal;
var 
  h : TnxHelpCursor;
  V : Variant;
begin
  h := TnxHelpCursor.CreateOpen('Produto', aDB);
  try
    H.Active := True;
    H.SelIndex('ICodigoNum');
    H.Active := True;
    if H.Last then 
      Result := H.LeWord32('CodigoNum') + 1 else
      Result := 1;
  finally
    h.Free;
  end;
end;

procedure TdmServidorBD.RecalcPrecoAuto(aDB: TnxServerDatabase;
  aMargem: Variant);
var
  hcMovEst : TnxHelpCursor;
  hcProd   : TnxHelpCursor;
  sProd : String;  

  vPreco, nPreco : Variant;
  Custo : Currency;
  M : Double;
  

procedure getProdDescr;
begin
  hcProd.SetKey1('ID', hcMovEst.NewValue('Produto', 0));
  if hcProd.FindKey(1) then
    sProd := hcProd.NewValue('Descricao', '') else
    sProd := '[NAO ACHOU]';
end;
  
begin
  hcProd   := TnxHelpCursor.CreateOpen('Produto', aDB);
  try
    hcProd.Active := True;
    hcProd.SelIndex('IPrecoAutoMargem');
    hcProd.SetKey1('PrecoAuto', True);
    hcProd.SetKey1('Margem', null);
    hcProd.SetKey2('PrecoAuto', True);
    hcProd.SetKey2('Margem', null);
    if not hcProd.SetRange(2, False) then Exit;

    if aMargem=null then
      M := 0 else
      M := aMargem;
    
    SalvandoConfig := True;
    try
      while hcProd.GetNext do begin
        Custo := hcProd.NewValue('CustoUnitario', 0);
        vPreco := hcProd.NewValue('Preco', null);
        if (Custo<0.00001) or (M<0.00001) then
          nPreco := null else
          nPreco := gConfig.CalcPreco(aMargem, Custo);
  
        if not VarSameValue(vPreco, nPreco) then begin
          hcProd.SetValue('Preco', nPreco);
          hcProd.ModifyNewData;
        end;
      end;
    finally
      SalvandoConfig := False;
    end;
  finally
    hcProd.Free;
    hcMovEst.Free;  
  end;
end;

procedure TdmServidorBD.SalvaDebCred(aDB: TnxServerDatabase; aSaver: TncDebCredSaver);
var H : TnxHelpCursor;  

procedure Save(aCli: Integer; aDif: Currency);
begin
  if Abs(aDif)>0 then begin
    H.SetKey1('ID', aCli);
    if H.FindKey(1) then begin
       H.SetValue('ValorCred', H.NewValue('ValorCred', 0) + aDif);
       H.ModifyNewData;
    end;
  end; 
end;  

begin
  if (aSaver.DifCredito_Old=0) and (aSaver.DifCredito_New=0) then exit;

  H := TnxHelpCursor.CreateOpen('Cliente', aDB);
  try
    H.Active := True;
    H.SelIndex('IID');
    Save(aSaver.Old.Cliente, aSaver.DifCredito_Old);
    Save(aSaver.New.Cliente, aSaver.DifCredito_New);
  finally
    H.Free;
  end;
end;

procedure TdmServidorBD.sessaoLogin(aSender: TnxBaseSession; var aUserName,
  aPassword: string; var aResult: Boolean);
begin
  aResult := (aUsername=csAdministrator) and (aPassword=csDefaultAdminPassword);
end;

procedure TdmServidorBD.Shutdown(ShutdownServerEng: Boolean = True);
var T: Cardinal;
begin
  DebugMsg('TdmServidorBD.Shutdown 1');
  NexPLugin.Free;
  NexCmdHandler.Free;
  nxSimpleMon.Free;
  DebugMsg('TdmServidorBD.Shutdown 2');
  if ShutdownServerEng then begin
    DebugMsg('TdmServidorBD.Shutdown 3');
    ServerEngine.Active := False;
    DebugMsg('TdmServidorBD.Shutdown 4');
    nxTCPIP.Free;
  end;
  DebugMsg('TdmServidorBD.Shutdown 5');
end;

procedure TdmServidorBD.TerminateSessions;
var 
  A : TSessionArray;
  I : Integer;
begin
  GetAllSessions(A);
  for I := 0 to High(A) do 
    nxTCPIP.TerminateConnection(0, A[i], 1000);
end;

{ TncThreadServBD }

procedure ProcessMessages;
var Msg : TMsg;
begin
  while PeekMessage(Msg, 0, 0, 0, PM_REMOVE) do  begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
  end;
end;

procedure TncThreadServBD.Execute;
var Dummy : Integer;
begin
  try
    try
      dmServidorBD := TdmServidorBD.Create(nil);
      dbStatus := dbst_ok;
      while (not Terminated) do begin
        MsgWaitForMultipleObjects(0, Dummy, False, 500, QS_ALLINPUT);
        try
          ProcessMessages;
        except
          on E: Exception do 
            DebugMsg('TncThreadServBD - Exception: ' + E.Message);
        end;
      end;
    finally 
      FreeAndNil(dmServidorBD);
      dbStatus := dbst_inactive;
      dmServidorBD := nil;
    end;  
  except
    on e: exception do
      dbError := E.Message;
  end;
  gThreadBD := nil;
end;

{ TThreadPopulateCategUnid }

procedure TThreadPopulateCategUnid.Execute;
begin
  FDB := nil;
  FSession := nil;
  FQ := nil;
  FTable := nil;
  try
    FDB := CreateDB(FSession);
    FQ := TnxQuery.Create(nil);
    FQ.Database := FDB;
    FTable := TnxTable.Create(nil);
    FTable.Database := FDB;
    _Exec;
  except
    if Assigned(FTable) then FTable.Free;
    if Assigned(FQ) then FQ.Free;
    if Assigned(FDB) then FDB.Free;
    if Assigned(FSession) then FSession.Free;
  end;

end;

procedure TThreadPopulateCategUnid._Exec;
begin
  FTable.TableName := 'categoria';
  FTable.IndexName := 'uq_categoria';
  FTable.Active := True;
  FQ.SQL.Text := 'select distinct(categoria) as descr from produto';
  FQ.Active := True;
  FQ.First;
  while not FQ.Eof do begin
    if not FTable.FindKey([FQ.FieldByName('descr').Value]) then
    begin
      FTable.Append;
      FTable.FieldByName('Descricao').Value := FQ.FieldByName('descr').Value;
      FTable.Post;
    end; 
    FQ.Next;
  end;

  FQ.Active := False;
  FTable.Active := False;
  FTable.TableName := 'unidade';
  FTable.IndexName := 'uq_unidade';
  FTable.Active := True;
  FQ.SQL.Text := 'select distinct(unid) as descr from produto';
  FQ.Active := True;
  FQ.First;
  while not FQ.Eof do begin
    if not FTable.FindKey([FQ.FieldByName('descr').Value]) then
    begin
      FTable.Append;
      FTable.FieldByName('Descricao').Value := FQ.FieldByName('descr').Value;
      FTable.Post;
    end; 
    FQ.Next;
  end;
end;

{ TRecVerManager }

procedure TRecVerManager.Clear;
begin
  FCS.Enter;
  try
    while FTables.Count>0 do begin
      TObject(FTables[0]).Free;
      FTables.Delete(0);
    end;
  finally
    FCS.Leave;
  end;
end;

function TRecVerManager.ControlRecVer(aTable: String): Boolean;
begin
  FCS.Enter;
  try
    Result := (Find(aTable)<>nil);
  finally
    FCS.Leave;
  end;
end;

constructor TRecVerManager.Create;
begin
  FCS := TCriticalSection.Create;
  FTables := TList.Create;
end;

destructor TRecVerManager.Destroy;
begin
  Clear;
  FCS.Free;
  inherited;
end;

function TRecVerManager.Find(aTable: String): TRecVerItem;
var I: Integer;
begin
  for I := 0 to FTables.Count - 1 do
    if SameText(aTable, TRecVerItem(FTables[i]).rvTable) then begin
      Result := TRecVerItem(FTables[i]);
      Exit;
    end;
  Result := nil;  
end;

function TRecVerManager.GetRecVer(aTable: String;
  var aRecVer: Cardinal): Boolean;
var I: TRecVerItem;  
begin
  FCS.Enter;
  try
    I := Find(aTable);
    if I<>nil then begin
      Inc(I.rvLast);
      aRecVer := I.rvLast;
      Result := True;
    end else
      Result := False;
  finally
    FCS.Leave;
  end;
end;

procedure TRecVerManager.StartRecVer(aTable: String; aLast: Cardinal);
var I: TRecVerItem;  
begin
  FCS.Enter;
  try
    I := Find(aTable);
    if I=nil then begin
      I := TRecVerItem.Create;
      FTables.Add(I);
    end;
    I.rvTable := aTable;
    I.rvLast := aLast;
  finally
    FCS.Leave;
  end;
end;

initialization
  gRecVerManager := TRecVerManager.Create;
  dmServidorBD := nil;
  csPend := TCriticalSection.Create;
  dmServidorBD := nil;
  dbStatus := dbst_Inactive;

finalization
  gRecVerManager.Free;
  csPend.Free;  

end.
