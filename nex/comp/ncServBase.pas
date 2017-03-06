unit ncServBase;

interface

{$I Nex.Inc}

uses
  kbmMemtable,
  ncServBD,
  WinSock,
  WinProcs,
  DateUtils,
  ncServAtualizaLic_Indy,
  Classes,
  SysUtils,
  ExtCtrls,
  Windows,
  Messages,
  IniFiles,
  Variants,
  Db,
  nxdb,
  nxsdTypes,
  nxdbBase,
  FileCtrl,
  SyncObjs,
  Forms,
  ClasseCS,
  ncErros,
  ScktComp,
  uLicEXECryptor,
  ncMsgCom,
  ncEspecie,
  ncMovEst,
  ncDebito,
  ncSalvaCredito,
  ncClassesBase,
  ncTran,
  ncListaID,
  ncIDRecursos,
  ncVersionInfo,
  ncKiteApi_SyncNexWeb,
  ActiveX,
  ncTipoTran,
  ncDMDependNFCE;
  
type  
  THackTMClasse = class ( TncClasse );

  TncServidor = class ( TncServidorBase )
  private
    FAtualizaLic  : TThreadAtualizaLic;
    FFuncAtual    : String;
    FServErro     : String;
    FServAtivo    : Boolean;

//    FSyncThread   : TncKiteApi_SyncNexWeb;
    FSyncTimer    : TTimer;
    FLastSync     : Cardinal;
    
    FUsuarios     : TncListaUsuarios;
    FTimerOrc     : TTimer;
    FTimerNexApp  : TTimer;
    FTimerBK      : TTimer;
    FNotifyHWND   : HWND;
    FErroNLS      : Boolean;
    
    procedure EnviaEventoStreamObj(Mensagem: Integer; Obj: TncClasse);
    function EnviarEventos: Boolean; override;

    procedure OnSyncTimer(Sender: TObject);
    procedure OnSyncThreadTerminate(Sender: TObject);

    procedure OnRefreshUrls(Sender: TObject);

    function AtualizaUsuarioBD(Usuario: TncUsuario): Integer;
    function AtualizaEspecieBD(E: TncEspecie): Integer;
    function AtualizaTipoTranBD(T: TncTipoTran): Integer;
    function AtualizaConfigBD: Integer;

    procedure OnTimerOrc(Sender: TObject);
    procedure OnTimerNexApp(Sender: TObject);
    procedure OnTimerBK(Sender: TObject);

  protected  
    procedure AoCriarObj(Obj: TncClasse); virtual; 
    procedure AoAlterarObj(Obj: TncClasse); virtual; 
    procedure AoDestruirObj(Obj: TncClasse); virtual; 
    
    function ObtemLista(aTipoClasse: Integer): TListaClasseCS; override;
  
    procedure SetAtivo(Valor: Boolean); override;

    procedure CriaServidorBD;
    procedure DestroiServidorBD;     

    procedure Notificacao(Obj: TncClasse; TipoNot: TTipoNotificacao);

    function InstalaNFCeDepend : Integer; override;

    function InstalaNFeDepend : Integer; override;

    procedure OnProgressoDepend(aNFE: Boolean; aEtapa, aProgresso : Byte; aErro : Integer; aErroStr: String);

    procedure AoRemoverCliente(Cliente: TncCliente); override;
    procedure CorrigeAutoInc;
    procedure StartRecVer;

    procedure wmSiteBloqueado(var Msg: TMessage); message ncmc_SiteBloqueado;
    procedure wmAbreServ(var Msg: TMessage); message wm_abreserv;
    procedure wmRemoveSession(var Msg: TMessage); message wm_removesession;
    procedure wmRefreshUrls(var Msg: TMessage); message wm_refreshurls;
    procedure wmRefreshNFConfig(var Msg: TMessage); message wm_refreshnfconfig;
    procedure wmUpdateNFConfig(var Msg: TMessage); message wm_updatenfconfig;
    procedure wmNFeUpdated(var Msg: TMessage); message wm_nfeupdated;
    procedure wmNewCanc(var Msg: TMessage); message wm_newcanc;
    procedure wmNewTrans(var Msg: TMessage); message wm_newtrans;
    procedure wmNewConsulta(var Msg: TMessage); message wm_newconsulta;
    procedure wmNewGerar(var Msg: TMessage); message wm_newgerar;
    procedure wmNewPostMS(var Msg: TMessage); message wm_newpostms;
    procedure wmInstalaDepend(var Msg: TMessage); message wm_instaladepend;
    procedure wmSinalizaNexApp(var Msg: TMessage); message wm_sinaliza_nexapp;
    procedure wmSinalizaBK(var Msg: TMessage); message wm_sinaliza_bk;
    procedure wmNewCCE(var Msg: TMessage); message wm_newcce;

    procedure LoadUrlsNFConfig;

    procedure CriaNotifyWindow;
  public  
    FResyncNexApp : Boolean;
  
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure OnBuildEvolveDB(Sender: TObject);

    function CriaClasseCS(TipoClasse: Integer): TClasseCS;
    function CriaUsuario(InsereLista: Boolean): TncUsuario; virtual;
    function CriaEspecie(InsereLista: Boolean): TncEspecie; virtual;
    function CriaTipoTran(InsereLista: Boolean): TncTipoTran; virtual;
    function BDAtivo : Boolean;

    function TableUpdated(aIDTab : Byte): integer; override;

    function AbreCaixa(aFunc: String; aSaldo: Currency; var NovoCx: Integer): Integer; override;
    function FechaCaixa(aFunc: String; aSaldo: Currency; aID: Integer): Integer; override;
    function CorrigeDataCaixa(aFunc: String; aID: Integer; aNovaAbertura, aNovoFechamento: TDateTime): integer; override;
    function AjustaPontosFid(aFunc: String; aCliente: Integer; aFator: Smallint; aPontos: Double; aObs: String): Integer; override;
    function ZerarEstoque(aFunc: String): integer; override;

    function SalvaApp(aApp: String): Integer; override;
    

    function ReemitirNFCe(aTran: TGuid): integer; override;
    function GeraXMLProt(aChave: String): integer; override;

    function InutilizarNFCE(aNFe: Boolean; aAno: Word; aInicio, aFim: Cardinal; aJust: String; aResposta: TStrings): integer; override;
    function ConsultarSAT(aResposta: TStrings): integer; override;

    function SalvaStreamObj(Novo: Boolean; S: TStream): Integer; override;
    function ObtemStreamConfig(S: TStream): Integer; override;
    function ApagaObj(Cliente: Integer; TipoClasse: Integer; Chave: String): Integer; override;

    procedure OnGetDM(var aDM: TObject); 

    function EnviarMsg(const aDe, aPara: Integer; const aTexto: String): Integer; override;
    
    function ObtemStreamListaObj(Cliente: Integer; TipoClasse: Integer; S: TStream): Integer; override;

    function CancelaTran(aID: Integer; aFunc: String): Integer; override;
    function SalvaCredito(aObj: TObject): Integer; override;
    function SalvaMovEst(aObj: TObject): Integer; override;
    function SalvaDebito(aObj: TObject): Integer; override;
    function SalvaLancExtra(aObj: TObject): Integer; override;

    function Permitido(U: TncUsuario; TipoAcesso: Integer): Boolean;
    function TodosPerm(TipoAcesso: Integer): Boolean;

    function SalvaLic(aLic: String): Integer; override;

    function Login(aUsername, 
                   aSenha: String; 
                   aFuncAtual: Boolean;
                   aRemoto: Boolean; 
                   aWndHandle: HWND; 
                   aProxyHandle: Integer; 
                   aSocket: Integer;
                   aSessionID: Integer;
                   aIP: String;
                   var Handle: Integer): Integer; override;
    
    procedure ChecaNumMaq(QtdL: Integer; aConta, aCodEquip: String; aSC: TStatusConta);

    procedure AtualizaPubPar(P : TmsgPubPar);

    property ErroBD: String
      read FServErro;

    property Usuarios: TncListaUsuarios
      read FUsuarios;  

    property ErroNLS: Boolean read FErroNLS;
  end;

  TThreadUpdTabledEvolved = class ( TThread )
  protected
    FTables : TStrings;
    procedure Execute; override;
  public
    constructor Create(aTables: TStrings);
    destructor Destroy; override;
  end;

const
  WndClassName = 'TncServBaseClassName_Nex';  

var
  CCP_Off : Boolean = False; // CCP = Cadastro Colaborativo de Produtos ... 


resourcestring
  rsDinheiro = 'Dinheiro';
  rsCartaoCred = 'Cartão de Crédito';
  rsCartaoDeb = 'Cartão de Débito';
  rsCheque = 'Cheque';
  rsNomeAdmin = 'Administrador';

implementation

uses
  nxllStreams,
  WinSpool,
  ncFrmProgress,
  ncTableDefs,
//  kbmUtils,
  ncDMServ, 
  ncDMCaixa, 
  ncLancExtra, 
  ncVersoes, 
  ncDebug, 
  ncSyncLic,
  udmPostMS,
  nxsrServerEngine, nexUrls, udmNFCe_trans, udmNFCe_gerar, udmNFe_trans, ncDMDependSAT,
  udmSAT_gerar, ncDMSyncCest, ncDM_nexapp, ncDM_post_nexapp, ncDMDependNFE,
  ncDM_bk_process;


{ TncServidor }
procedure TncServidor.Notificacao(Obj: TncClasse; TipoNot: TTipoNotificacao);
begin
//  DebugMsg('TncServidor.Notificacao 1');
  case TipoNot of
    tnCriacao   : AoCriarObj(Obj);
    tnAlteracao : AoAlterarObj(Obj);
    tnDestruicao: AoDestruirObj(Obj);
  end;
//  DebugMsg('TncServidor.Notificacao 2');
end;

constructor TncServidor.Create(AOwner: TComponent);
var S : String;
begin
  inherited;
  DebugMsg('TncSevidor.Create - 1');

  gUrls.OnRefresh := OnRefreshUrls;
  gUrls.KeepRefreshing;
  
//  FSyncThread   := nil;
  FSyncTimer    := TTimer.Create(nil);
  FSyncTimer.OnTimer := OnSyncTimer;
  FSyncTimer.Interval := 1000;
//  FSyncTimer.Enabled := True;
  FSyncTimer.Enabled := False;
  FLastSync := 0;
  
  FServErro := '';
  LadoServidor := True;
  S := ExtractFilePath(ParamStr(0)) + 'Atualiza';
  DebugMsg('TncSevidor.Create - 2 - '+S);
  
  if not DirectoryExists(S) then
    MkDir(S);

  DebugMsg('TncSevidor.Create - 3');
    
  
  FFuncAtual     := '';

  THackTMClasse(gConfig).ProcNotificar := Notificacao;

  DebugMsg('TncSevidor.Create - 4');
  
  FTimerOrc := TTimer.Create(nil);
  FTimerOrc.Interval := 5000;
  FTimerOrc.Enabled := False;
  FTimerOrc.OnTimer := OnTimerOrc;

  FTimerNexApp := TTimer.Create(nil);
  FTimerNexApp.Interval := 200;
  FTimerNexApp.Enabled := False;
  FTimerNexApp.OnTimer := OnTimerNexApp;

  FTimerBK := TTimer.Create(nil);
  FTimerBK.Interval := 200;
  FTimerBK.Enabled := False;
  FTimerBK.OnTimer := OnTimerBK;

  DebugMsg('TncSevidor.Create - 5');
  
  FUsuarios      := TncListaUsuarios.Create;
  FUsuarios.CriaClasse := CriaClasseCS;

  DebugMsg('TncSevidor.Create - 8');
  

  gEspecies.CriaClasse := CriaClasseCS;
  gListaTipoTran.CriaClasse := CriaClasseCS;

  DebugMsg('TncSevidor.Create - 9');
  
  CriaNotifyWindow;

  DebugMsg('TncSevidor.Create - 10');
  
end;

destructor TncServidor.Destroy;
begin
  gUrls.OnRefresh := nil;
  DebugMsg('TncServidor.Destroy - 1');
  Lock;
  try
    FSyncTimer.Free;
{    if Assigned(FSyncThread) then begin
      FSyncThread.OnTerminate := nil;
      FSyncThread.Terminate;
    end;}
    DebugMsg('TncServidor.Destroy - 2');
    DestroyWindow(FNotifyHWND);
    THackTMClasse(gConfig).ProcNotificar := nil;
    DebugMsg('TncServidor.Destroy - 3');
    FUsuarios.Limpa;
    DebugMsg('TncServidor.Destroy - 6');
    FUsuarios.Free;
    DebugMsg('TncServidor.Destroy - 7');
    DebugMsg('TncServidor.Destrou - 8');
    DestroiServidorBD;
    DebugMsg('TncServidor.Destroy - 9');
    FTimerOrc.Free;
    FTimerNexApp.Free;
    FTimerBK.Free;
  finally
    Unlock;
  end;
  inherited;
end;

function TncServidor.ObtemLista(aTipoClasse: Integer): TListaClasseCS;
begin
  case aTipoClasse of
    tcUsuario : Result := Usuarios;
    tcEspecie : Result := gEspecies;
    tcTipoTran : Result := gListaTipoTran;
  else
    Result := nil;
  end;    
end;

function TncServidor.ObtemStreamListaObj(Cliente: Integer; TipoClasse: Integer;
  S: TStream): Integer;
var 
  L : TListaClasseCS;  
  P : String;
begin
  P := '0';
  try
    P := '1';
    L := ObtemLista(TipoClasse);
    P := '2';
    if L = nil then
      Result := ncerrTipoClasseInvalido
    else begin
      P := '3';
      L.SalvaStream(S);
      P := '4';
      Result := 0;
      P := '5';
    end;  
  except
    on e: exception do begin
      DebugMsg('TncServidor.ObtemStreamListaObj - Cliente: ' + IntToStr(Cliente) +
               ' - TipoClasse: ' + IntToStr(TipoClasse) +
               ' - Exception '+P+': ' + E.Message);
       Result := ncerrExcecaoNaoTratada_TncServidor_ObtemStreamListaObj;
    end;
  end;    
end;

procedure TncServidor.OnBuildEvolveDB(Sender: TObject);
begin
  ncTableDefs.BuildAndEvolveDatabase(TDM(Sender).nxDB);
end;

procedure TncServidor.OnGetDM(var aDM: TObject);
begin
  Lock;
  try
    if Ativo then
      aDM := DM else
      aDM := nil;
  finally
    Unlock;
  end;
end;

procedure TncServidor.OnProgressoDepend(aNFE: Boolean; aEtapa, aProgresso: Byte;
  aErro: Integer; aErroStr: String);
var 
  P: PmsgInstalaDependEv;  
begin
  New(P);
  P^.msgEtapa := aEtapa;
  P^.msgProgresso := aProgresso;
  P^.msgErro := aErro;
  P^.msgFim := (aErro>0) or (aEtapa=4);
  P^.msgErroStr := aErroStr;
  EnviaEvento(ncmc_InstalaDependEv, P);

  if (aEtapa=4) then begin
    Lock;
    try
      with DM do 
      if Ativo then begin
        tNFConfig.Edit;
        if aNFE then
          tNFConfigDependNFEOk.Value := True
        else begin
          if tNFConfigTipo.Value=nfcfg_sat then
            tNFConfigDependSATOk.Value := True else
            tNFConfigDependNFCEOk.Value := True;
        end;
        tNFConfig.Post;
      end;
    finally
      Unlock;
    end;
  end;  
end;

procedure TncServidor.OnRefreshUrls(Sender: TObject);
begin
  PostMessage(FNotifyHWND, wm_refreshurls, 0, 0);
end;

procedure TncServidor.OnSyncThreadTerminate(Sender: TObject);
begin
  FLastSync := GetTickCount;
//  FSyncThread := nil;
end;

procedure TncServidor.OnSyncTimer(Sender: TObject);
begin
{  if (FSyncThread=nil) and FServAtivo and syncPars.SyncAgain(FLastSync) then begin
    FSyncThread := TncKiteApi_SyncNexWeb.Create;
    FSyncThread.OnTerminate := OnSyncThreadTerminate;
    FSyncThread.Resume;
  end;}
end;

function Cripta(Entrada: string): string;
var
   aux: string;
   i, j, k: integer;
begin
     aux:= '';
     randomize;
     i:= 1;
     while i<= length(entrada) do
     begin
          j:= 0;
          k:= random(9);
          case k of
          0: j:= 3;
          1: j:= 4;
          2: j:= 5;
          3: j:= 0;
          4: j:= 2;
          5: j:= 1;
          6: j:= 8;
          7: j:= 6;
          8: j:= 9;
          9: j:= 7;
          end;
          aux:= aux+inttostr(j)+chr(ord(entrada[i])+k);
          i:= i+1;
     end;
     cripta:= aux;
end;

procedure TncServidor.OnTimerOrc(Sender: TObject);
begin
  try
    FTimerOrc.Enabled := False;
    Lock;
    try
      FTimerOrc.Interval := 10000;
      if not FServAtivo then Exit;
      try
        DM.ExpiraOrcamentosPendentes;
        FTimerOrc.Interval := 2 * 60 * 1000;
      except
        on E: Exception do 
          DebugMsg('TncServidor.OnTimerOrc - Exception: '+E.Message);
      end;
    finally
      Unlock;
    end;
  finally
    FTimerOrc.Enabled := True;
  end;
end;

procedure TncServidor.OnTimerBK(Sender: TObject);
begin
  DebugMsg(Self, 'OnTimerBK');
  FTimerNexApp.Enabled := False;
  Lock;
  try
    sinaliza_bk_process;
  finally
    Unlock;
  end;
end;

procedure TncServidor.OnTimerNexApp(Sender: TObject);
begin
  DebugMsg(Self, 'OnTimerNexApp');
  FTimerNexApp.Enabled := False;
  Lock;
  try
    sinaliza_nexapp;
  finally
    Unlock;
  end;
end;

procedure TncServidor.AoDestruirObj(Obj: TncClasse);
var 
  Msg : PmsgDestroiObj;
begin
  try DebugMsg('TncServidor.AoDestruirObj - TipoClasse: '+IntToStr(Obj.TipoClasse)); except end;
  
  case Obj.TipoClasse of
    tcUsuario     : FUsuarios.Remove(Obj);
    tcEspecie     : gEspecies.Remove(Obj);
    tcTipoTran    : gListaTipoTran.Remove(Obj);
  end;  
  
  if not Ativo then Exit;

  try DebugMsg('TncServidor.AoDestruirObj - Chave: '+IntToStr(Obj.TipoClasse)); except end;
   
  New(Msg);
  Msg^.msgTipoClasse := Obj.TipoClasse;
  Msg^.msgChave := Obj.Chave;
  EnviaEvento(ncmc_DestroiObj, Msg);
  
  inherited;
end;

procedure TncServidor.EnviaEventoStreamObj(Mensagem: Integer; Obj: TncClasse);
var 
  S : TStream;
  Chave : String;
  T : Byte;
  TipoClasse : Integer;
  W: TWriter;
begin
//  DebugMsg('TncServidor.EnviaEventoStreamObj 1');
  if (not Ativo) or (not EnviarEventos) then Exit;
//  DebugMsg('TncServidor.EnviaEventoStreamObj 2');
  S := TMemoryStream.Create;
//  DebugMsg('TncServidor.EnviaEventoStreamObj 3');
  Chave := Obj.Chave;
//  DebugMsg('TncServidor.EnviaEventoStreamObj 4');
  TipoClasse := Obj.TipoClasse;
//  DebugMsg('TncServidor.EnviaEventoStreamObj 5');
  T := Length(Chave);
//  DebugMsg('TncServidor.EnviaEventoStreamObj 6');
  W := TWriter.Create(S, 4096);
  try
    W.WriteInteger(TipoClasse);
    W.WriteString(Chave);
  finally
    W.Free;
  end;
//  DebugMsg('TncServidor.EnviaEventoStreamObj 9');
  Obj.SalvaStream(S, (Mensagem<>ncmc_NovoObj));
//  DebugMsg('TncServidor.EnviaEventoStreamObj 10');
  Obj.AtualizaCache;
//  DebugMsg('TncServidor.EnviaEventoStreamObj 11');
  EnviaEvento(Mensagem, S);
//  DebugMsg('TncServidor.EnviaEventoStreamObj 12');
end;

function TncServidor.EnviarEventos: Boolean;
begin
  Result := True;
end;

function TncServidor.EnviarMsg(const aDe, aPara: Integer;
  const aTexto: String): Integer;
begin
  Result := 0;
end;

function TncServidor.FechaCaixa(aFunc: String; aSaldo: Currency; aID: Integer): Integer;
var 
  U : TncUsuario;
  DMC : TdmCaixa;
begin
  try
    U := Usuarios.PorUsername[aFunc];
    if U = nil then begin
      Result := ncerrUsuarioInexistente;
      Exit;
    end;

    if not Permitido(U, daCaiAbrirFechar) then begin
      Result := ncerrAcessoNaoPermitido;
      Exit;
    end;

    DMC := TdmCaixa.Create(nil);
    try
      DMC.nxSession.Active := False;
      DMC.nxSession.ServerEngine := dmServidorBD.ServerEngine;
      DMC.nxDB.AliasName := 'nexcafe';
      DMC.AbreConn;
      Result := DMC.FechaCaixa(aFunc, aSaldo, aID, False);
      if Result=0 then 
        EnviaEvento(ncmc_AbriuFechouCaixa, nil);
    finally
      DMC.Free;
    end;
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_FechaCaixa;
       DebugMsgEsp(Self, E.Message, False, True);
    end;
  end;
end;

function TncServidor.GeraXMLProt(aChave: String): integer;
var dm : TdmNFCE_trans;
begin
  dm := TdmNFCE_trans.Create(Self);
  try
    try
      Result := dm.GeraXMLProt(aChave);
    except
      on E: Exception do begin
        DebugMsgEsp('TncServidor.GeraXMLProt - aChave: '+aChave+' - Exception: '+ E.Message, False, True);
        Result := ncErros.ncerrExcecaoNaoTratada_TdmCaixa_AbreCaixa
      end;
    end;
  finally
    dm.Free;
  end;
end;

function TncServidor.InstalaNFCeDepend: Integer;
begin
  Result := 0;
  PostMessage(CliNotifyHandle, wm_instaladepend, 1, 0);
end;

function TncServidor.InstalaNFeDepend: Integer;
begin
  Result := 0;
  PostMessage(CliNotifyHandle, wm_instaladepend, 11, 0);
end;

function TncServidor.InutilizarNFCE(aNFe: Boolean; aAno: Word; aInicio, aFim: Cardinal;
  aJust: String; aResposta: TStrings): integer;
var 
  dm : TdmNFCe_Trans;  
  dmNFe : TdmNFe_Trans;
begin
  if aNFe then begin
    dmNFe := TdmNFe_trans.Create(nil);
    try
      aResposta.Text := dmNFe.Inutilizar(aAno, aInicio, aFim, aJust);
      Result := 0;
    finally
      dmNFe.Free;
    end;
  end else begin
    dm := TdmNFCe_trans.Create(nil);
    try
      aResposta.Text := dm.Inutilizar(aAno, aInicio, aFim, aJust);
      Result := 0;
    finally
      dm.Free;
    end;
  end;
end;

procedure TncServidor.AoAlterarObj(Obj: TncClasse);
begin
  EnviaEventoStreamObj(ncmc_AtualizaObj, Obj);
end;

procedure TncServidor.AoCriarObj(Obj: TncClasse);
begin
  EnviaEventoStreamObj(ncmc_NovoObj, Obj);
end;

procedure ApagaNXTemp;
var 
  SR: TSearchRec;
  S : String;
begin
  Exit;
  
  S := ExtractFilePath(ParamStr(0))+'Dados\';
  if FindFirst(S+'*.nx$', faAnyFile, SR)=0 then 
  try
    repeat
      DeleteFile(PChar(S+SR.Name));
    until (FindNext(SR)<>0);
  finally
    SysUtils.FindClose(SR);
  end;
end;

function TncServidor.ConsultarSAT(aResposta: TStrings): integer;
var dm : TdmSAT_gerar;
begin
  dm := TdmSAT_gerar.Create(nil);
  try
     aResposta.Text := dm.ConsultarSAT;
     Result := 0;
  finally
    dm.Free;
  end;
end;

procedure TncServidor.CorrigeAutoInc;
var 
  AI, MaxValue: Cardinal;
  Tab : TnxTable;

procedure Ajusta(aName, aIndex, aCampo: String; aAI: Integer = 0);
begin
  Tab.TableName := aName;
  Tab.IndexName := aIndex;
  Tab.Active := True;
  
  Tab.Last;
  if Tab.FieldByName(aCampo).AsInteger>aAI then
    aAI := Tab.FieldByName(aCampo).AsInteger;

  Tab.First;
  if Tab.FieldByName(aCampo).AsInteger>aAI then
    aAI := Tab.FieldByName(aCampo).AsInteger;
    
  Tab.GetAutoIncValue(AI);
  
  if (aAI>AI) then Tab.SetAutoIncValue(aAI);
  
  Tab.Active := False;  
end;

procedure SetMaxValue(aName, aIndex, aCampo: String);
begin
  Tab.TableName := aName;
  Tab.IndexName := aIndex;
  Tab.Active := True;
  Tab.Last;
  with Tab.FieldByName(aCampo) do
  if AsLongWord>MaxValue then
    MaxValue := AsLongWord;
  Tab.Active := False;  
end;
  
begin
  Tab := TnxTable.Create(Self);
  Tab.Session := CreateSession;
  try
    Tab.AliasName := 'NexCafe';
    Ajusta('Orcamento', 'IIDSeq', 'IDSeq');
    
    Ajusta('ITran', 'IID', 'ID');
    Ajusta('MovEst', 'IID', 'ID');

    Ajusta('Credito', 'IID', 'ID');

    Ajusta('Doc', 'IID', 'ID');

    maxValue := 0;
    SetMaxValue('Tran', 'ICliID', 'Cliente');
    SetMaxValue('ITran', 'IClienteID', 'Cliente');
    Ajusta('Cliente', 'IID', 'ID', MaxValue);

    maxValue := 0;
    SetMaxValue('MovEst', 'IProduto', 'Produto');
    Ajusta('Produto', 'IID', 'ID', MaxValue);

    MaxValue := 0;
    SetMaxValue('Tran', 'ICaixaID', 'Caixa');
    SetMaxValue('ITran', 'ICaixaCancelado', 'Caixa');
    SetMaxValue('MovEst', 'ICaixaMov', 'Caixa');
    Ajusta('Caixa', 'IID', 'ID', MaxValue);

    MaxValue := 0;
    SetMaxValue('ITran', 'ITranID', 'Tran');
    SetMaxValue('MovEst', 'ITranItem', 'Tran');
    Ajusta('Tran', 'IID', 'ID', MaxValue);
    MaxValue := 0;
    SetMaxValue('MovEst', 'ISessaoID', 'Sessao');
    SetMaxValue('Tran', 'ISessao', 'Sessao');
  finally
    Tab.Active := False;
    Tab.Session.Free;
    Tab.Free;
  end;
end;


procedure TncServidor.StartRecVer;
var 
  Tab : TnxTable;
  DB : TnxDatabase;
  SS : TnxSession;
  SL, slI : TStrings;
  I, C, T : Integer;
  RV: Cardinal;
  Status: TnxTaskStatus;
  Cancel : Boolean;
begin
  SS := CreateSession;
  DB := CreateDB(SS);
  Tab := TnxTable.Create(Self);
  Tab.Session := SS;
  Tab.Database := DB;
  Cancel := False;
  SL := TStringList.Create;
  slI := TStringList.Create;
  try
    DB.Connected := True;
    DB.GetTableNames(SL);
    I := SL.IndexOf('plusP');
    if I>=0 then SL.Delete(I);
    I := SL.IndexOf('plusT');
    if I>=0 then SL.Delete(I);
    gRecVerManager.Clear;
    for I := SL.Count - 1 downto 0 do begin
      Tab.Active := False;
      Tab.IndexName := '';
      Tab.TableName := SL[I];
      Tab.Active := True;
      slI.Clear;
      tab.GetIndexNames(slI);
      if (Tab.FindField('RecVer')<>nil) and (slI.IndexOf('IRecVer')>-1) then begin
        RV := 0;
        if (not Tab.IsEmpty) then begin
          Tab.IndexName := 'IRecVer';
          Tab.Last;
          with Tab.FieldByName('RecVer') do
            if not IsNull then RV := Value;
        end;
        gRecVerManager.StartRecVer(SL[I], RV)
      end else
        SL.Delete(I);
    end;  

    OpenProgressForm;
    try
      for I := 0 to SL.Count - 1 do begin
        Tab.Active := False;
        Tab.TableName := Sl[I];
        Tab.IndexName := 'IRecVer';
        Tab.Open;
        Tab.SetRange([null], [null]);
        Status.tsStartTime := GetTickCount;
        Status.tsSnapshotTime := 0;
        Status.tsTotalRecs := Tab.RecordCount;
        Status.tsRecsRead := 0;
        Status.tsRecsWritten := 0;
        Status.tsErrorCode := 0;
        Status.tsFinished := False;
        Status.tsErrorMessage := '';
        Cancel := False;
        Tab.First;
        while not (Tab.Eof and Tab.Bof) do begin
          Inc(Status.tsRecsRead);
          Status.tsRecsWritten := Status.tsRecsRead;
          Status.tsFinished := (Status.tsRecsRead>=Status.tsTotalRecs);
          Status.tsPercentDone := Trunc((Status.tsRecsRead / Status.tsTotalRecs)*100);
          FrmProg.OnProgress(Sl[I], Status, Cancel);
          Tab.Edit;
          Tab.FieldByName('RecVer').Value := -1;
          Tab.Post;
        end;
      end;
    finally
      FechaProgressForm;
    end;

  finally
    SL.Free;
    slI.Free;
    Tab.Free;
    DB.Free;
    SS.Free;
  end;
end;

procedure TncServidor.CriaServidorBD;
var 
  I : Integer;
  T : Cardinal;
  aSessao  : TnxSession;
  aDB : TnxDatabase;
  Q : TnxQuery;
  aCE, aSN: String;
  aMin, aMax : Currency;
  sl : TStrings;
  S, SNew: String;
  IsEof : Boolean;
  alastVer: Word;
begin         
  DebugMsg('CriaServidorBD 1');
  FAtualizaLic := nil;
  EncerrarThreads := False;
  Lock;
  try
    S := ExtractFilePath(ParamStr(0));
    Windows.DeleteFile(PChar(S+nxc_ConfigFile));
    Windows.DeleteFile(PChar(S+'$SERVER$Users.nx1'));
    Windows.DeleteFile(PChar(S+'dados\'+nxc_ConfigFile));
    Windows.DeleteFile(PChar(S+'dados\$SQL$FUNCTIONS.nx1'));
    Windows.DeleteFile(PChar(S+'dados\$SQL$PROCEDURES.nx1'));
    Windows.DeleteFile(PChar(S+'dados\$SQL$TRIGGERS.nx1'));
    Windows.DeleteFile(PChar(S+'dados\$SQL$VIEWS.nx1'));
    
    DebugMsg('CriaServidorBD 2');
    DestroiServidorBD;
    FServAtivo := False;
    DebugMsg('CriaServidorBD 3');

    try
      ApagaNXTemp;
      DebugMsg('CriaServidorBD 4');

      S := ExtractFilePath(ParamStr(0))+'dados\Doc.nx1';
      SNew := ExtractFilePath(ParamStr(0))+'dados\newDoc.nx1';
      if (not FileExists(S)) and FileExists(SNew) then 
        RenameFile(SNew, S);

{      if FileExists(S) then
        TFrmImpNX2.Create(Self).ShowModal;}

      Application.CreateForm(TdmServidorBD, dmServidorBD);  
      DebugMsg('CriaServidorBD 5');

      dmServidorBD.Inicializa;

      DebugMsg('TncServidor.CriaServidorBD - Inicializou');
      
//      IniciaServidorBD;

      CliNotifyHandle := FNotifyHWND;
  
      aSessao := CreateSession;
      DebugMsg('CriaServidorBD 6');
      
      aDB := TnxDatabase.Create(Self);
      aDB.Session  := aSessao;
      aDB.AliasName    := 'NexCafe';
      aDB.Connected := True;
      aDB.Timeout := 30000;
      DebugMsg('CriaServidorBD 7');
      
      try                   
        OpenProgressForm;
        ProgTables.Clear;
        try

          DebugMsg('CriaServidorBD 7.1');
          ncTableDefs.BuildAndEvolveDatabase(aDB, FrmProg.OnProgress, 'toromalbec');
          DebugMsg('CriaServidorBD 7.2');
          
        except
          on E: Exception do begin 
            DebugEx(Self, 'CriaServidorBD - BuildAndEvolve - '+gEvolvingTableName, E);
            Raise;
          end;
        end;
        DebugMsg('CriaServidorBD 7.2');

        sl := TStringList.Create;
        try
          aDB.GetTablesNeedingPack(sl);
          FErroNLS := (sl.Count>0);
        finally
          sl.Free;
        end;

        StartRecVer;

        if ProgTables.Count>0 then 
          ncServBase.TThreadUpdTabledEvolved.Create(ProgTables);

        DebugMsg('CriaServidorBD 7.3');
      finally
        FechaProgressForm;
        aDB.Free;
        aSessao.Free;
      end;

      DebugMsg('CriaServidorBD 7.4');

      CorrigeAutoInc;

      DebugMsg('CriaServidorBD 7.5');

      TThreadPopulateCategUnid.Create(False).FreeOnTerminate := True;
  
      Application.CreateForm(TDM, DM);
      DM.FBuildEvolveDB := OnBuildEvolveDB;

      DebugMsg('CriaServidorBD 7.6');
      
      DM.nxSession.ServerEngine := dmServidorBD.ServerEngine;
      DM.Open;

      DebugMsg('CriaServidorBD 7.7');
             
      with DM do       
      if tUsuario.RecordCount = 0 then begin
        tUsuario.Insert;
        tUsuarioUsername.Value := 'admin';
        tUsuarioNome.Value := rsNomeAdmin;
        tUsuarioAdmin.Value := True;
        tUsuarioSenha.Value := '';
        tUsuario.Post;
      end;

      DebugMsg('CriaServidorBD 7.8');
      
      Usuarios.LeDataset(DM.tUsuario);

      DebugMsg('CriaServidorBD 7.11');
  
      with DM do begin
        if tConfig.RecordCount = 0 then begin
          tConfig.Insert;
          gConfig.SalvaDataset(tConfig);
          tConfig.Post;
        end;  

        gConfig.LeDataset(tConfig);
      end;

      gConfig.ApplyFmtMoeda;

      DebugMsg('CriaServidorBD 7.12');
      aLastVer := DM.sysLog_lastver;

      if FResyncNexApp or (aLastVer<346) then begin 
        DebugMsg(Self, 'CriaServidorBD - Resetar Nex App');
        DM.ResetNexApp;
        FResyncNexApp := False;
      end;

      DebugMsg('TncServBase.CriaServidorBD - LastVer: '+IntToStr(aLastVer));

      if FileExists(SNew) then begin
        OpenProgressForm;
        try                   
          DM.ImportNewDoc(FrmProg.OnProgress2);
        finally
          FechaProgressForm;
        end;      
      end;

      if (aLastver < 350) or (not DM.sysLog_Find('corrige_custot')) then begin
        OpenProgressForm;
        try
          DM.CorrigeCustoT(FrmProg.OnProgress2);
          DM.syslog_add('corrige_custot');
        finally
          FechaProgressForm;
        end;
      end;

      if not DM.sysLog_Find('corrigecusto2') then begin
        OpenProgressForm;
        try                   
          DM.CorrigeCusto(FrmProg.OnProgress2);
        finally
          FechaProgressForm;
        end;      
      end;
      

      DebugMsg('CriaServidorBD 7.12-1');
      

      if not DM.sysLog_Find('corrigeprecoauto2') then begin
        DM.ExecQuery('update produto set precoauto = true where precoauto = true');
        DM.sysLog_Add('corrigeprecoauto2');
      end; 

      DebugMsg('CriaServidorBD 7.12-2');

      if not DM.sysLog_Find('corrigedebito3') then begin
        OpenProgressForm;
        try
          DM.CorrigeDataITran(FrmProg.OnProgress2);
          DM.sysLog_Add('corrigedebito3');
        finally
          FechaProgressForm;
        end;
      end; 

      DebugMsg('CriaServidorBD 7.12-3');
      
      if not DM.sysLog_Find('corrigedebito4') then begin
        OpenProgressForm;
        try
          DM.CorrigePgDebitoDesc(FrmProg.OnProgress2);
          DM.sysLog_Add('corrigedebito4');
        finally
          FechaProgressForm;
        end;      
      end;  

      DebugMsg('CriaServidorBD 7.12-4');
      
      if not DM.sysLog_Find('corrigedebito5') then begin
        OpenProgressForm;
        try
          DM.ResomaITranDebitos(FrmProg.OnProgress2);
          DM.sysLog_Add('corrigedebito5');
        finally
          FechaProgressForm;
        end;      
      end;     

      DebugMsg('CriaServidorBD 7.12-5');

{     if not DM.sysLog_Find('corrigedebito6') then begin
        OpenProgressForm;
        try
          DM.CorrigeErroITranDebCli(FrmProg.OnProgress2);
          DM.sysLog_Add('corrigedebito6');
        finally
          FechaProgressForm;
        end;      
      end;}

      if not DM.sysLog_Find('corrigedebito7') then begin
        OpenProgressForm;
        try
          DM.CorrigeDebPagPend(FrmProg.OnProgress2);       
          DM.sysLog_Add('corrigedebito7');
        finally
          FechaProgressForm;
        end;      
      end;   

      DebugMsg('CriaServidorBD 7.12-6');
      
      if (not DM.sysLog_Find('corrigedebito340')) or (aLastVer<340) then begin
        OpenProgressForm;
        try
          DM.ReprocessaITranDeb(FrmProg.OnProgress2);       
          DM.sysLog_Add('corrigedebito340');
        finally
          FechaProgressForm;
        end;      
      end; 

      DebugMsg('CriaServidorBD 7.12-7');

      if not DM.sysLog_Find('novalogicapend') then begin
        try
          DM.NovaLogicaPendentes;
          DM.sysLog_Add('novalogicapend');
        finally
        end;      
      end;     

      DebugMsg('CriaServidorBD 7.12-8');

      if (not DM.sysLog_Find('corrigecaixapagdev')) and (ProgTables.Count>0) then 
        DM.SetCaixaPagIgualCaixa;

      DebugMsg('CriaServidorBD 7.12-9');
      
      if not DM.sysLog_Find('populateprodfor') then begin
        try
          DM.PopulateProdFor;
          DM.sysLog_Add('populateprodfor');
        finally
        end;      
      end;  

      if (not DM.sysLog_Find('corrige_descontos')) or SameText(paramStr(1), 'corrige_descontos') then begin
        OpenProgressForm;
        try
          DM.CorrigeDescontos(FrmProg.OnProgress2);
          DM.sysLog_Add('corrige_descontos');
        finally
          FechaProgressForm        
        end;      
      end;             

      DebugMsg('CriaServidorBD 7.12-10');
      
      if sameText(ParamStr(1), 'p1') then begin
        OpenProgressForm;
        try
          DM.ReprocessaITranDeb(FrmProg.OnProgress2);
          DM.sysLog_Add('p1');
        finally
          FechaProgressForm;
        end;      
      end;

      DebugMsg('CriaServidorBD 7.13-corrige_tran_descr');      

      if (not DM.sysLog_Find('corrige_tran_descr2')) or (aLastver<324) then begin
        OpenProgressForm;
        try
          DM.AjustaDescr_MovEst_Tran(FrmProg.OnProgress2);
          DM.sysLog_Add('corrige_tran_descr2');
        finally
          FechaProgressForm;
        end;      
      end;  

      if (not DM.sysLog_Find('corrige_totalnf')) or (aLastver<348) then begin
        OpenProgressForm;
        try
          DM.CorrigeTotalNF(FrmProg.OnProgress2);
          DM.sysLog_Add('corrige_totalnf');
        finally
          FechaProgressForm;
        end;      
      end;        

      if not DM.sysLog_Find('corrige_ids_pagto') then begin
        OpenProgressForm;
        try
          DM.Ajusta_ids_pagto(FrmProg.OnProgress2);
          DM.sysLog_Add('corrige_ids_pagto');
        finally
          FechaProgressForm;
        end;      
      end; 

      if (not DM.sysLog_Find('grava_vendedor')) or (aLastver<334) then begin
        OpenProgressForm;
        try
          DM.Ajusta_Vendedor(FrmProg.OnProgress2);
          DM.sysLog_Add('grava_vendedor');
        finally
          FechaProgressForm;
        end;      
      end;   {      if (aLastVer < 341) or (not DM.sysLog_Find('removedebdev')) then begin
        OpenProgressForm;
        try
          DM.RemoveDebitosDevolvidos(FrmProg.OnProgress2);
          DM.sysLog_Add('removedebdev');
        finally
          FechaProgressForm;
        end;      
      end;}
      

      if (aLastVer < 338) then begin
        OpenProgressForm;
        try
          DM.RecalcComissao(FrmProg.OnProgress2);
          DM.sysLog_Add('recalc_comissao');
        finally
          FechaProgressForm;
        end;      
      
        OpenProgressForm;
        try
          DM.AjustaComissao_Devolucoes(FrmProg.OnProgress2);
          DM.sysLog_Add('corrige_comissao_dev');
        finally
          FechaProgressForm;
        end;      
        
        OpenProgressForm;
        try
          DM.AjustaComissao_tran(FrmProg.OnProgress2);
          DM.sysLog_Add('corrige_comissao_tran');
        finally
          FechaProgressForm;
        end;      
      end; 

      with DM do begin   
        if tEspecie.IsEmpty then begin
          tEspecie.Insert;
          tEspecieID.Value := 1;
          tEspecieNome.Value := rsDinheiro;
          tEspeciePermiteTroco.Value := True;
          tEspeciePermiteVarios.Value := False;
          tEspeciePermiteCred.Value := True;
          tEspecieTipo.Value := tipoesp_dinheiro;
          tEspecieTipoPagNFe.Value := 1;
          tEspecieImg.Value := 0;
          tEspecie.Post;
  
          tEspecie.Insert;
          tEspecieID.Value := 2;
          tEspecieNome.Value := rsCartaoCred;
          tEspeciePermiteTroco.Value := False;
          tEspeciePermiteVarios.Value := True;
          tEspeciePermiteCred.Value := True;
          tEspecieTipo.Value := tipoesp_cartao;
          tEspecieTipoPagNFe.Value := 3;
          tEspecieImg.Value := 1;
          tEspecie.Post;
  
          tEspecie.Insert;
          tEspecieID.Value := 3;
          tEspecieNome.Value := rsCartaoDeb;
          tEspeciePermiteTroco.Value := False;
          tEspeciePermiteVarios.Value := True;
          tEspeciePermiteCred.Value := True;
          tEspecieTipo.Value := tipoesp_cartao;
          tEspecieTipoPagNFe.Value := 4;
          tEspecieImg.Value := 2;
          tEspecie.Post;
  
          tEspecie.Insert;
          tEspecieID.Value := 4;
          tEspecieNome.Value := rsCheque;
          tEspeciePermiteTroco.Value := False;
          tEspeciePermiteVarios.Value := True;
          tEspeciePermiteCred.Value := True;
          tEspecieTipo.Value := tipoesp_cheque;
          tEspecieTipoPagNFe.Value := 2;
          tEspecieImg.Value := 3;
          tEspecie.Post;
        end;

        tEspecie.First;
        while not tEspecie.Eof do begin
          if (tEspecieTipoPagNFE.Value=0) or tEspecieTipoPagNFE.IsNull then begin
            tEspecie.Edit;
            
            if tEspecieNome.Value = rsDinheiro   then 
              tEspecieTipoPagNFe.Value := 1;
              
            if tEspecieNome.Value = rsCheque     then 
              tEspecieTipoPagNFe.Value := 2;
              
            if tEspecieNome.Value = rsCartaoCred then 
              tEspecieTipoPagNFe.Value := 3;
              
            if tEspecieNome.Value = rsCartaoDeb  then 
              tEspecieTipoPagNFe.Value := 4;
              
            tEspecie.Post;
          end;
          tEspecie.Next;
        end;
        
        gEspecies.Limpa;
        gEspecies.LeDataset(tEspecie);
      end;   

      if (aLastVer<324) or (not DM.sysLog_Find('Ajusta_pagesp_entrada_saida_caixa')) then begin
        OpenProgressForm;
        try
          DM.Ajusta_pagesp_entrada_saida_caixa(FrmProg.OnProgress2);
          DM.sysLog_Add('Ajusta_pagesp_entrada_saida_caixa');
        finally
          FechaProgressForm;
        end;      
      end;           

      DebugMsg('CriaServidorBD 8');
      with RegistroGlobal do begin
        CodEquipSerial(aCE, aSN);
        DebugMsg('CriaServidorBD 9');
        ChecaNumMaq(LicencasValidas(False, aCE, aSN), Conta, aCE, RegistroGlobal.Status);
        DebugMsg('CriaServidorBD 10');
      end;

      FAtualizaLic := TThreadAtualizaLic.Create;
  
//      IniciaThreadPostMS;
        
      DebugMsg('CriaServidorBD 11');

//      if not CCP_Off then TdmProdClient.Iniciar(registroGlobal.GetCodEquip(registroGlobal.GetSerialHD), registroGlobal.Email, '');

      DebugMsg('CriaServidorBD 12');

      if DM.tNFConfig.IsEmpty then begin
        DM.tNFConfig.Append;
        DM.tNFConfig.Post;
      end;

      DM.tNFConfig.Edit; 
      DM.tNFConfigDependNFCEOk.Value := not TdmDependNFCE.PrecisaInstalar;
      DM.tNFConfigDependNFeOk.Value := not TdmDependNFe.PrecisaInstalar;
      DM.tNFConfig.Post;

      if DM.tNFConfigModeloNFCe_Email.Value='' then begin
        Dm.tNFConfig.Edit;
        DM.tNFConfigModeloNFCe_Email.Value := '{18F4A1C0-A17A-4570-AEE4-919E260B3C04}';
        DM.tNFConfig.Post;
      end;

      if Trim(DM.tNFConfigAssuntoEmail.Value)='' then begin
        DM.tNFConfig.Edit;
        DM.tNFConfigAssuntoEmail.Value := 'Nota fiscal da sua compra';
        DM.tNFConfig.Post;
      end;

      DM.PopulateTipoTran;
      gListaTipoTran.Limpa;
      gListaTipoTran.LeDataset(DM.tTipoTran);
      
      if DM.tNFConfigEmitirNFCe.Value then 
        InitProcessosCupom(OnGetDM, (DM.tNFConfigTipo.Value=nfcfg_sat));

      if DM.tNFConfigEmitirNFe.Value then
        InitProcessosNFE(OnGetDM);

      LoadUrlsNFConfig;

      DM.sysLog_Add('lastver');

      DM.TimerCest.Enabled := True;

      dmServidorBD.NexPlugin.NexServ := Self;
      dmServidorBD.ListenClients;

      DebugMsg('CriaServidorBD 13');

      gNexApp_enviar := StrToBool(slIni.Values['nexapp']);
      gBK_enviar     := StrToBool(slIni.Values['cloudbk']);

      FServAtivo := True;
      FServErro := '';
      FTimerOrc.Interval := 5000;
      FTimerOrc.Enabled := True;
    except 
      on E: Exception do begin
        DebugMsgEsp('TncServidor.CriaServidorBD - ERRO: '+E.Message, False, True);
        FServErro := E.Message;
        DestroiServidorBD;
      end;
    end;

    DebugMsg('CriaServidorBD 14');

  finally
    Unlock;
  end;    
end;

function TncServidor.CriaTipoTran(InsereLista: Boolean): TncTipoTran;
begin
  Result := TncTipoTran.Create;
  THackTMClasse(Result).ProcNotificar := Notificacao;
  if InsereLista then
    gListaTipoTran.Add(Result);
end;

procedure TncServidor.DestroiServidorBD;

begin
{  DebugMsg('TncServidor.DestroiServidorBD - 1');
  Lock;}
  try
//    try TdmProdClient.Finalizar; except end;
    DebugMsg('TncServidor.DestroiServidorBD - 2');
    FTimerOrc.Enabled := False;
    FServAtivo := False;
    
    CestUpdateTerm;
    FinalizaProcessosNFE;
    if dmServidorBD <> nil then begin
      DebugMsg('TncServidor.DestroiServidorBD - 3');
      dmServidorBD.NexPlugin.NexServ := nil;
      DebugMsg('TncServidor.DestroiServidorBD - 4');
      DebugMsg('TncServidor.DestroiServidorBD - 5');
      try
        if FAtualizaLic<>nil then begin
          DebugMsg('TncServidor.DestroiServidorBD - 6');
          FAtualizaLic.Terminate;
          DebugMsg('TncServidor.DestroiServidorBD - 7');
          FAtualizaLic := nil;
        end;
      except
      end;

{      DebugMsg('TncServidor.DestroiServidorBD - 8');
      try FinalizaThreadPostMS except end;
      DebugMsg('TncServidor.DestroiServidorBD - 9');}

      if DM<>nil then begin
        DebugMsg('TncServidor.DestroiServidorBD - 10');
        try DM.Close; except end;
        try FreeAndNil(DM); except end;
      end;

      try
//        FinalizaServidorBD;
        DebugMsg('TncServidor.DestroiServidorBD - 11');
        dmServidorBD.Shutdown;
        DebugMsg('TncServidor.DestroiServidorBD - 12');
        FreeAndNil(dmServidorBD);
        DebugMsg('TncServidor.DestroiServidorBD - 13');
      except
      end;
    end;
    DebugMsg('TncServidor.DestroiServidorBD - 14');

  except
    on E: Exception do
      DebugMsgEsp('DestroiServidorBD Exception: '+E.Message, False, True);
//    Unlock;
  end;
end;

procedure ProcessMessages;
var Msg : TMsg;
begin
  while PeekMessage(Msg, 0, 0, 0, PM_REMOVE) do  begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
  end;
end;

procedure TncServidor.SetAtivo(Valor: Boolean);
var T: Cardinal;
begin
  DebugMsg('TncServidor.SetAtivo - 1');
  if (Valor = FAtivo) or (csLoading in ComponentState) then Exit;
  DebugMsg('TncServidor.SetAtivo - 2');
{  if FAtivo then 
  try
    DebugMsg('TncServidor.SetAtivo - 3');
    DebugMsg('TncServidor.SetAtivo - 4');
  except
    on E: Exception do begin
      DebugMsg('TncServidor.SetAtivo 6 - E.Exception: '+E.Message);
    end;
  end;}
  if not Valor then begin
    ServidorAtivo := False;
    gNexApp_Config.Refresh;
    gBK_config.Refresh;
    TerminarProcNFe := True;
  end else 
    TerminarProcNFE := False;

  DebugMsg('TncServidor.SetAtivo - 7');
  Lock;
  try
    DebugMsg('TncServidor.SetAtivo - 8');
    if Valor then begin
      DebugMsg('TncServidor.SetAtivo - 9');
      try
        CriaServidorBD;
        ServidorAtivo := FServAtivo;
        gNexApp_Config.Refresh;
        gBK_config.Refresh;
      except
        on E: Exception do begin
          DebugMsgEsp('TnxServidor.SetAtivo ERRO: ' + E.Message, False, True);
          DestroiServidorBD;
        end;
      end;
      if FServAtivo then 
        inherited;
        
    end else begin
      FAtivo := False;
//      dmServidorBD.Shutdown(False);
      DebugMsg('TncServidor.SetAtivo - 11');
      EncerrarThreads := True;
      DebugMsg('TncServidor.SetAtivo - 12');
      try
        Usuarios.Limpa;
      except
      end;
      DebugMsg('TncServidor.SetAtivo - 13');
      
      inherited;
    end;
  finally
    Unlock;
    if not Valor then 
      try DestroiServidorBD except end;
  end;
  DebugMsg('TncServidor.SetAtivo - 18');
end;

function TncServidor.AtualizaUsuarioBD(Usuario: TncUsuario): Integer;
begin
  try
    DM.SalvaUsuario(Usuario);
    Result := 0;
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_AtualizaUsuarioBD;
       DebugEx(Self, 'AtualizaUsuarioBD', E);
    end;
  end;
end;

function TncServidor.BDAtivo: Boolean;
begin
  Result := Assigned(dmServidorBD);
end;

procedure TncServidor.AtualizaPubPar(P : TmsgPubPar);
begin
  gConfig.AtualizaCache;
  
  if P.pbDTol<>null then
    gConfig.DTol := P.pbDTol; 

  if P.pbPreLib<>null then
    gConfig.PreLib := P.pbPreLib;

  if P.pbDVA<>null then
    gConfig.DVA := P.pbDVA;

  if P.pbAlertaAss<>null then
    gConfig.AlertaAssinatura := P.pbAlertaAss; 

  try  
    if (P.pbMeioPagto<>null) and (P.pbMeioPagto>=0) then
      gConfig.MeioPagto := P.pbMeioPagto;  
  except
  end;

  if P.pbBotoes <> null then
    gConfig.Botoes := P.pbBotoes;

  if P.pbBanners <> null then
    gConfig.Banners := P.pbBanners;

  if not VarIsNull(P.pbNexApp) then begin
    gNexApp_enviar := P.pbNexApp;
    slIni.Values['nexapp'] := BoolStr[gNexApp_Enviar];
    slIni.SaveToFile(IniFName(true));
    gNexApp_config.Refresh;
  end;

  if not VarIsNull(P.pbCloudBK) then begin
    gBK_enviar := P.pbCloudBK;
    slIni.Values['cloudbk'] := BoolStr[gBK_enviar];
    slIni.SaveToFile(IniFName(true));
    gBK_config.Refresh;
  end;  

  try
    DebugMsg('TncServidor.AtualizaPubBar 1');
    DM.SalvaConfigPB(p);
    DebugMsg('TncServidor.AtualizaPubBar 2');
  finally
    gConfig.Notificar(tnAlteracao);
  end;
end;

function TncServidor.AtualizaTipoTranBD(T: TncTipoTran): Integer;
begin
  try
    DM.SalvaTipoTran(T);
    Result := 0;
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_AtualizaEspecieBD;
       DebugEx(Self, 'AtualizaTipoTranBD', E);
    end;
  end;
end;

function TncServidor.AtualizaConfigBD: Integer;
begin
  try
    DM.SalvaConfig(gConfig);
    gConfig.ApplyFmtMoeda;
    Result := 0;
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_AtualizaConfigBD;
       DebugEx(Self, 'AtualizaConfigBD', E);
    end;
  end;
end;

function TncServidor.AtualizaEspecieBD(E: TncEspecie): Integer;
begin
  try
    DM.SalvaEspecie(E);
    Result := 0;
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_AtualizaEspecieBD;
       DebugEx(Self, 'AtualizaEspecieBD', E);
    end;
  end;
end;

function TncServidor.SalvaApp(aApp: String): Integer;
begin

end;

function TncServidor.SalvaCredito(aObj: TObject): Integer;
var 
  C: TncSalvaCredito;

procedure FinalizaTran;
begin
  with DM do 
  if nxDB.InTransaction then begin
    nxDB.Rollback;
    TableCancel(tCli);
    TableCancel(tCred);
    TableCancel(tTran);
    TableCancel(tITran);
  end;
end;
  
begin
  with DM do
  try
    C := TncSalvaCredito(aObj);
    
    InitTran([tConfig, tCaixa, tCli, tCred, tTran, tITran], False);
    try
      if NumCaixaAberto=0 then begin
        Result := ncerrCaixaFechado;
        Exit;
      end;
      Result := SalvaCredito(C);
      if Result<>0 then Exit;
      
      if not DM.FidControl.CanCommit then begin
        Result := ncerrSaldoFidInsuficiente;
        Exit;
      end;

      nxDB.Commit;
      Result := 0;
    finally
      FinalizaTran;
    end;
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_SalvaCredTempo;
       DebugEx(Self, 'SalvaCredito', E);
    end;
  end;
  if DM.nxDB.InTransaction then
    DM.nxDB.Rollback;
end;

function TncServidor.SalvaDebito(aObj: TObject): Integer;
begin
  try
    TncDebito(aObj).Func := UsernameAtual;
    Result := DM.SalvaPagDebito(TncDebito(aObj));
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_SalvaDebito;
       DebugEx(Self, 'SalvaDebito', E);
    end;
  end;
end;

function TncServidor.SalvaLancExtra(aObj: TObject): Integer;
begin
  try
    Result := DM.SalvaLancExtra(TncLancExtra(aObj));
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_SalvaLancExtra;
       DebugEx(Self, 'SalvaLancExtra', E);
    end;
  end;
end;

function YYYYMMDDToDate(S: String): TDateTime;
var D, M, Y: Word;
begin
  Result := 0;
  Y := StrToIntDef(Copy(S, 1, 4), 0);
  M := StrToIntDef(Copy(S, 6, 2), 0);
  D := StrToIntDef(Copy(S, 9, 2), 0);
  if Y<1 then Exit;
  if (M<1) or (M>12) then Exit;
  if (D<1) or (DaysInAMonth(Y, M)<D) then Exit;
  try
    Result := EncodeDate(Y, M, D);
  except
  end;
end;

function TncServidor.SalvaLic(aLic: String): Integer;
var 
  sl : TStrings;
  s  : String;
  P : TmsgPubPar;
begin
  Result := 0;
  sl := TStringList.Create;
  try
    sl.Text := aLic;
    if sl.IndexOfName('chaves')>=0 then begin
      if (RegistroGlobal.StringChaves=sl.Values['chaves']) and 
         ((sl.IndexOfName('conta')=0) or (RegistroGlobal.Conta=sl.Values['conta'])) then Exit;
      RegistroGlobal.StringChaves := sl.Values['chaves'];
      if sl.IndexOfName('conta')>=0 then 
        RegistroGlobal.Conta := sl.Values['conta'];   
      if sl.IndexOFName('IDLoja')>=0 then begin
        RegistroGlobal.SetIDLoja(sl.Values['IDLoja']);
        RegistroGlobal.SetIDLojaKey(getIDLojaKey(sl.Values['IDLoja'], RegistroGlobal.Conta));
      end;

    end else begin
      if RegistroGlobal.StringChaves=aLic then Exit;
      if not RegistroGlobal.ChavesOk(aLic) then Exit;
      RegistroGlobal.StringChaves := aLic;
    end;
    RegistroGlobal.SalvaArqPadrao;
    
    PostMessage(handleFrmPri, wm_user+1, 0, 0);
    if sl.IndexOfName('dva')>=0 then begin
      P := TmsgPubPar.Create;
      P.pbDVA := yyyymmddtoDate(sl.Values['dva']);
      PostMessage(ncServAtualizaLic_Indy.hndNotify, wm_user+2, Integer(P), 0);
    end;
  except
    sl.free;
  end;
end;

function TncServidor.SalvaMovEst(aObj: TObject): Integer;
var 
  P : PmsgTableUpdated;
begin
  try
    with TncMovEst(aObj) do begin
      if (Operacao=osIncluir) and (Func='') then
        Func := UsernameAtual;
    end;

    Result := DM.SalvaMovEst(TncMovEst(aObj));

    if Result=0 then begin
      New(P);
      P^.msgTableID := idtab_tran;
      EnviaEvento(ncmc_TableUpdatedEv, P);
    end;  
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_SalvaMovEst;
       DebugEx(Self, 'SalvaMovEst', E);
    end;
  end;
end;

function TncServidor.ApagaObj(Cliente: Integer; TipoClasse: Integer; Chave: String): integer;
var
  Lista: TListaClasseCS;
  Obj  : TClasseCS;
begin
  try
    Lista := ObtemLista(TipoClasse);
      
    if Lista=nil then begin
      Result := ncerrTipoClasseInvalido;
      Exit;
    end;
    Obj := Lista.ItemPorChave[Chave];
    if Obj = nil then begin
      Result := ncerrItemInexistente;
      Exit;
    end;

    with DM do 
    case TipoClasse of
      tcUsuario :      
        if tUsuario.FindKey([Chave]) then tUsuario.Delete;
        
      tcEspecie : 
        if tEspecie.FindKey([Chave]) then tEspecie.Delete;  

      tcTipoTran : 
        if tTipoTran.FindKey([Chave]) then tTipoTran.Delete
          
    end;
    Obj.Free;
//    if TipoClasse = tcMaquina then ChecaNumMaq;
    
    Result := 0;
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_ApagaObj;
       DebugEx(Self, 'ApagaObj', E);
    end;
  end;
end;

function TncServidor.ObtemStreamConfig(S: TStream): Integer;
begin
  try
//    gConfig.CodLoja := RegistroGlobal.CodLojaAsString;
    gConfig.VerPri  := Versoes.Versao;
    gConfig.SalvaStream(S, False);
    S.Position := 0;
    Result := 0;
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_ObtemStreamConfig;
       DebugEx(Self, 'ObtemStreamConfig', E);
    end;
  end;
end;


function TncServidor.SalvaStreamObj(Novo: Boolean; S: TStream): Integer;
var 
  R : TReader;
  Lista: TListaClasseCS;
  Obj  : TClasseCS;
  T : Byte;
  Cliente, 
  TipoClasse : Integer;
  Chave: AnsiString;
  V : Variant;

procedure Incluir;
begin
  if Obj <> nil then begin
    Result := ncerrItemJaExiste;
    Exit;
  end else begin
    Obj := CriaClasseCS(TipoClasse);
    Lista.Add(Obj);
    Obj.LeStream(S);
    case TipoClasse of
      tcUsuario    : AtualizaUsuarioBD(TncUsuario(Obj));
      tcEspecie    : AtualizaEspecieBD(TncEspecie(Obj));
      tcTipoTran   : AtualizaTipoTranBD(TncTipoTran(Obj));
    end;  
    TncClasse(Obj).Notificar(tnCriacao);
    Result := 0;
  end;
end;

procedure Alterar;
var 
  Str : String;
begin
  if (Obj = nil) then begin
    Result := ncerrItemInexistente;
    Exit;
  end;
  
  Obj.LeStream(S);
  case TipoClasse of
    tcUsuario : AtualizaUsuarioBD(TncUsuario(Obj));
    tcEspecie : AtualizaEspecieBD(TncEspecie(Obj));
    tcTipoTran : AtualizaTipoTranBD(TncTipoTran(Obj));
  end;  
  TncClasse(Obj).Notificar(tnAlteracao);
  Result := 0;
end;
  
begin
  try
    R := TReader.Create(S, 4096);
    try
      Cliente := R.ReadInteger;
      TipoClasse := R.ReadInteger;
      Chave := R.ReadString;
      V := Chave;
    finally
      R.Free;
    end;
    
    if TipoClasse = tcConfig then begin
      gConfig.LeStream(S);
      AtualizaConfigBD;
      gConfig.Notificar(tnAlteracao);
      Result := 0;
      Exit;
    end;
      
    Lista := ObtemLista(TipoClasse);
    if (Lista=nil) then begin
      Result := ncerrTipoClasseInvalido;
      Exit;
    end;
    Lista.Lock;
    try
      Obj := Lista.ItemPorChave[V];
      if Novo then 
        Incluir else
        Alterar;
    finally
      Lista.Unlock;
    end;
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_SalvaStreamObj;
       DebugEx(Self, 'SalvaStreamObj', E);
    end;
  end;
end;

function GetFileSize(S: String): Int64;
var SR: TSearchRec;
begin
  if FindFirst(S, faAnyFile, SR)=0 then
  begin
    Result := SR.Size;
    SysUtils.FindClose(SR);
  end else
    Result := 0;
end;

function TncServidor.ReemitirNFCe(aTran: TGuid): integer;
begin
  Result := 0;
  try
    if not Ativo then Exit;
    Result := DM.ReemitirNFCe(aTran);
  except
    on e: exception do begin
      Result := ncerrExcecaoNaoTratada_ReemitirNFCe;
      DebugEx(Self, 'ReemitirNFCe', E);
    end;
  end;
end;

function TncServidor.Permitido(U: TncUsuario; TipoAcesso: Integer): Boolean;
begin
  if not U.Admin then 
    Result := ItemTrueStr(U.Direitos, TipoAcesso) else
    Result := True;
end;

function TncServidor.TableUpdated(aIDTab: Byte): integer;
var P: PmsgTableUpdated;
begin
  Result := 0;
  New(P);
  P^.msgTableID := aIDTab;
  EnviaEvento(ncmc_TableUpdatedEv, P);
end;

function TncServidor.TodosPerm(TipoAcesso: Integer): Boolean;
var I : Integer;
begin
  Result := False;
  for I := 0 to Usuarios.Count-1 do
  if not Permitido(Usuarios[I], TipoAcesso) then
    Exit;
  Result := True;
end;

procedure TncServidor.ChecaNumMaq(QtdL: Integer; aConta, aCodEquip: String; aSC: TStatusConta);
begin
{$I crypt_start.inc}
    
  if (gConfig.Conta<>aConta) or 
     (gConfig.QtdLic<>QtdL) or
     (gConfig.StatusConta<>aSC) or
     (gConfig.CodEquip<>aCodEquip) then 
  begin
    gConfig.AtualizaCache;
    gConfig.Conta := aConta;
    gConfig.StatusConta := aSC;
    gConfig.QtdLic := QtdL;
    gConfig.CodEquip := aCodEquip;
    gConfig.Notificar(tnAlteracao);
  end;
  
{$I crypt_end.inc}
end;

function TncServidor.CorrigeDataCaixa(aFunc: String; aID: Integer;
  aNovaAbertura, aNovoFechamento: TDateTime): integer;
var U : TncUsuario;  
begin
  try
    U := Usuarios.PorUsername[aFunc];
    if U = nil then begin
      Result := ncerrUsuarioInexistente;
      Exit;
    end;

    if not U.Admin then begin
      Result := ncerrAcessoNaoPermitido;
      Exit;
    end;
  
    Result := DM.CorrigeDataCaixa(aFunc, aID, aNovaAbertura, aNovoFechamento);
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_CorrigeDataCaixa;
       DebugEx(Self, 'CorrigeDataCaixa', E);
    end;
  end;
end;

{ TncServidor }

function MaxInt(I1, I2: Integer): Integer;
begin
{$I crypt_start.inc}
  if I1>I2 then
    Result := I1
  else
    Result := I2;  
{$I crypt_end.inc}
end;


procedure TncServidor.LoadUrlsNFConfig;
var 
  sl : TStrings;
  ini : TIniFile;
  s : String;
begin
  s := ExtractFilePath(ParamStr(0))+'NFCE\';

  try ForceDirectories(S); except end;

  DM.tNFConfig.Edit;

  sl := TStringList.Create;
  try
    if FileExists(s+'nfceUrlConsulta.ini') then begin
      sl.LoadFromFile(s+'nfceUrlConsulta.ini');
      DM.tNFConfigUrls_Consulta.Value := sl.Text;
    end;  

    if FileExists(s+'nfceServidoresHom.ini') then begin
      ini := TIniFile.Create(s+'nfceServidoresHom.ini');
      try 
        sl.Clear;
        ini.ReadSectionValues('urlqrcode', sl);
        DM.tNFConfigUrls_qrcode_hom.Value := sl.Text;
      finally
        ini.Free;
      end;
    end;

    if FileExists(s+'nfceServidoresProd.ini') then begin
      ini := TIniFile.Create(s+'nfceServidoresProd.ini');
      try 
        sl.Clear;
        ini.ReadSectionValues('urlqrcode', sl);
        DM.tNFConfigUrls_qrcode_prod.Value := sl.Text;
      finally
        ini.Free;
      end;
    end;

    DM.tNFConfig.Post;
  finally  
    sl.Free;
  end;
end;

function TncServidor.Login(aUsername, aSenha: String; aFuncAtual,
  aRemoto: Boolean; aWndHandle: HWND; aProxyHandle, aSocket,
  aSessionID: Integer; aIP: String; var Handle: Integer): Integer;
var 
  Usuario: TncUsuario;  
  Cli    : TncCliente;
  NumC   : Integer;
begin
  try
    if (aUserName = ProxyUsername) then begin
      if aSenha = ProxySenha then begin
        Handle := ProximoHandle;
        Result := inherited Login(aUserName, aSenha, aFuncAtual, aRemoto, aWndHandle, 
                                  aProxyHandle, aSocket, aSessionID, aIP, Handle);
      end else
        Result := ncerrInfoLoginInvalida;
        
      Exit;  
    end;
     
    Usuarios.Lock;
    try
      Usuario := Usuarios.PorUsername[aUsername];
      if (Usuario<>nil) and (Copy(Usuario.Senha, 1, 10)=aSenha) then begin
        Handle := ProximoHandle;
        Result := inherited Login(aUserName, aSenha, aFuncAtual, aRemoto, aWndHandle, 
                                  aProxyHandle, aSocket, aSessionID, aIP, Handle);
        if Result = 0 then begin
          Usuario.NumClientes := Usuario.NumClientes + 1;
          Usuario.Notificar(tnAlteracao);
          if aFuncAtual then FFuncAtual := aUsername;
        end;                            
      end else
        Result := ncerrInfoLoginInvalida;   
    finally
      Usuarios.Unlock;
    end; 
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_Login;
       DebugEx(Self, 'Login', E);
    end;
  end;
end;

function TncServidor.CriaEspecie(InsereLista: Boolean): TncEspecie;
begin
  Result := TncEspecie.Create;
  THackTMClasse(Result).ProcNotificar := Notificacao;
  if InsereLista then
    gEspecies.Add(Result);
end;

function WndMsgFunc(hWindow : Hwnd; Msg : UINT;
                    wParam : WPARAM;
                    lParam : LPARAM) : LRESULT; stdcall export;
var
  Obj : TncServidor;
  M : TMessage;
  
  function DefWndFunc : LongInt;
  begin
    DefWndFunc := DefWindowProc(hWindow, Msg, wParam, lParam);
  end;

begin
  Result := 0;

  case MSG of
    wm_queryendsession : Result := 1;
    wm_endsession : Result := 1;
  else  
    if MSG<>wm_Create then 
      Obj := TncServidor(GetWindowLong(hWindow, 0)) else
      Obj := nil;
      
    if Obj<>nil then begin
      try
        M.Msg := Msg;
        M.WParam := WParam;
        M.LParam := LParam;
        Obj.Dispatch(M);
        Result := M.Result;
      except
      end;
    end else
      Result := DefWndFunc;
  end;
end;

procedure TncServidor.CriaNotifyWindow;
var XClass : TWndClass;
begin
  inherited;
  XClass.hInstance := HInstance;
  with XClass do begin
    Style         := 0;
    lpfnWndProc   := @WndMsgFunc;
    cbClsExtra    := 0;
    cbWndExtra    := SizeOf(Pointer);
    hIcon         := LoadIcon(hInstance, 'DEFICON');
    hCursor       := LoadCursor(0, idc_Arrow);
    hbrBackground := 0;
    lpszMenuName  := nil;
    lpszClassName := WndClassName;
  end;
  WinProcs.RegisterClass(XClass);

  Self.FNotifyHWND :=
    CreateWindow(WndClassName,           {window class name}
                 '',                     {caption}
                 0,                      {window style}
                 0,                      {X}
                 0,                      {Y}
                 1,                      {width}
                 1,                      {height}
                 0,                      {parent}
                 0,                      {menu}
                 HInstance,              {instance}
                 nil);                   {parameter}
                 
  SetWindowLong(FNotifyHWND, 0, Longint(Self));
end;

function TncServidor.CriaUsuario(InsereLista: Boolean): TncUsuario;
begin
  Result := TncUsuario.Create;
  THackTMClasse(Result).ProcNotificar := Notificacao;
  if InsereLista then
    FUsuarios.Add(Result);
end;

function TncServidor.CriaClasseCS(TipoClasse: Integer): TClasseCS;
begin
  case TipoClasse of
    tcUsuario    : Result := CriaUsuario(False);
    tcEspecie    : Result := CriaEspecie(False);
    tcTipoTran   : Result := CriaTipoTran(False);
  else
    Result := nil;  
  end;
end;

procedure TncServidor.AoRemoverCliente(Cliente: TncCliente);
var U : TncUsuario;
begin
  inherited;

  Usuarios.Lock;
  try
    U := Usuarios.PorUsername[Cliente.Username];
    if (U <> nil) and (U.NumClientes > 0) then begin
      U.NumClientes := U.NumClientes - 1;
      U.Notificar(tnAlteracao);
    end;  
  finally
    Usuarios.Unlock;
  end; 
end;

procedure TncServidor.wmAbreServ(var Msg: TMessage);
begin
  debugmsg('wmabreserv');
  PostMessage(handleFrmPri, wm_user +3, Msg.WParam, 0);
end;

procedure TncServidor.wmInstalaDepend(var Msg: TMessage);
begin
  DebugMsg('TncServidor.wmInstalaDepend');
  DM.tNFConfig.Refresh;
  if Msg.WParam>=10 then 
    TdmDependNFe.Instalar((Msg.WParam=11), OnProgressoDepend)
  else
  if DM.tNFConfigTipo.Value=nfcfg_nfce then
    TdmDependNFCE.Instalar((Msg.WParam=1), OnProgressoDepend) else
    TdmDependSAT.Instalar((Msg.WParam=1), OnProgressoDepend);
end;

procedure TncServidor.wmNewCanc(var Msg: TMessage);
begin
  Lock;
  try
    if Msg.WParam=1 then
      IncCanc_NFe else
      IncCancNFCE;
  finally
    UnLock;
  end;
end;

procedure TncServidor.wmNewCCE(var Msg: TMessage);
begin
  Lock;
  try
    IncCCE;
  finally
    UnLock;
  end;
end;

procedure TncServidor.wmNewConsulta(var Msg: TMessage);
begin
  Lock;
  try
    if Msg.WParam=1 then
      IncConsulta_NFe;
  finally
    UnLock;
  end;
end;

procedure TncServidor.wmNewGerar(var Msg: TMessage);
begin
  Lock;
  try
    if Msg.WParam=1 then
      IncGerar_NFe else
      IncGerarNFCE;
  finally
    Unlock;
  end;
end;

procedure TncServidor.wmNewPostMS(var Msg: TMessage);
begin
  Lock;
  try
    IncPostSeq;
  finally
    Unlock;
  end;
end;

procedure TncServidor.wmNewTrans(var Msg: TMessage);
begin
  Lock;
  try
    if Msg.WParam=1 then
      IncTrans_NFe else
      IncTransNFCE;
  finally
    UnLock;
  end;
end;

procedure TncServidor.wmNFeUpdated(var Msg: TMessage);
begin
  EnviaEvento(ncmc_NFEUpdatedEv, Pointer(Msg.WParam));
end;

procedure TncServidor.wmRefreshNFConfig(var Msg: TMessage);
begin
  Lock;
  try
    if not Ativo then Exit;
    DM.tNFConfig.Refresh;
    IncConfig_NFE;
    IncConfigNFCe;

    EnviaEvento(ncmc_RefreshNFConfigEv, nil);
    
    if DM.tNFConfigEmitirNFCe.Value then 
      InitProcessosCupom(OnGetDM, (DM.tNFConfigTipo.Value=nfcfg_sat)) else
      FinalizaProcessosCupom;

    if DM.tNFConfigEmitirNFe.Value then 
      InitProcessosNFE(OnGetDM) else
      FinalizaProcessosNFE;      
  finally
    Unlock;
  end;
end;

procedure TncServidor.wmRefreshUrls(var Msg: TMessage);
begin
  Lock;
  try
    if not Ativo then Exit;
    gConfig.AtualizaCache;
    gConfig.Urls := gUrls.AsString;
    gConfig.Notificar(tnAlteracao);
    if Ativo then DM.SalvaUrls;
  finally
    Unlock;
  end;
end;

procedure TncServidor.wmRemoveSession(var Msg: TMessage);
begin
  Lock;
  try
    if not Ativo then Exit;
    LogoutSession(Msg.WParam);
  finally
    Unlock;
  end;
end;

procedure TncServidor.wmSinalizaBK(var Msg: TMessage);
begin
  DebugMsg(Self, 'wmSinalizaBK 1');
  if Msg.WParam>0 then begin
    DebugMsg(Self, 'wmSinalizaBK 2'); 
    FTimerBk.Enabled := False;
    FTimerBK.Enabled := True;
    Exit;
  end;
  
  Lock;
  try
    DebugMsg(Self, 'wmSinalizaBK 3');
    sinaliza_bk_process;
  finally
    Unlock;
  end;
end;

procedure TncServidor.wmSinalizaNexApp(var Msg: TMessage);
begin
  DebugMsg(Self, 'wmSinalizaNexApp');
  
  if Msg.WParam>0 then begin
    DebugMsg(Self, 'wmSinalizaNexApp 2');
    FTimerNexApp.Enabled := False;
    FTimerNexApp.Enabled := True;
    Exit;
  end;
    
  Lock;
  try
    DebugMsg(Self, 'wmSinalizaNexApp 3');
    sinaliza_nexapp;
  finally
    Unlock;
  end;
end;

procedure TncServidor.wmSiteBloqueado(var Msg: TMessage);
begin
  EnviaEvento(ncmc_SiteBloqueado, Pointer(Msg.LParam));
end;

procedure TncServidor.wmUpdateNFConfig(var Msg: TMessage);
begin
   Lock;
   try
     if not ServidorAtivo then Exit;
     LoadUrlsNFConfig;
   finally  
     Unlock;
   end;
end;

function TncServidor.ZerarEstoque(aFunc: String): integer;
begin
  try
    DM.ZerarEstoque(aFunc);
    Result := 0;
  except
    on E: Exception do begin
      Result := ncerrExcecaoNaoTratada_TncServidor_ZerarEstoque;
      DebugEx(Self, 'ZerarEstoque', E);
    end;
  end;
end;

function TncServidor.AbreCaixa(aFunc: String; aSaldo: Currency; var NovoCx: Integer): Integer;
var
  U : TncUsuario;
  DMC : TdmCaixa;
begin
  try
    U := Usuarios.PorUsername[aFunc];
    if U = nil then begin
      Result := ncerrUsuarioInexistente;
      Exit;
    end;

    if not Permitido(U, daCaiAbrirFechar) then begin
      Result := ncerrAcessoNaoPermitido;
      Exit;
    end;

    DMC := TdmCaixa.Create(nil);
    try
      DMC.nxSession.Active := False;
      DMC.nxSession.ServerEngine := dmServidorBD.ServerEngine;
      DMC.AbreConn;
      Result := DMC.AbreCaixa(aFunc, aSaldo, gConfig.ManterSaldoCaixa, NovoCx);
      if Result=0 then
        EnviaEvento(ncmc_AbriuFechouCaixa, nil);
    finally
      DMC.Free;
    end;
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_AbreCaixa;
       DebugEx(Self, 'AbreCaixa', E);
    end;
  end;
end;

function TncServidor.AjustaPontosFid(aFunc: String; aCliente: Integer;
  aFator: Smallint; aPontos: Double; aObs: String): Integer;
var 
  U : TncUsuario;  
  pAntes : Double;
  I : Integer;
begin
  try
    U := Usuarios.PorUsername[aFunc];
    if U = nil then begin
      Result := ncerrUsuarioInexistente;
      Exit;
    end;

    if not Permitido(U, daCorrigirFidelidade) then begin
      Result := ncerrAcessoNaoPermitido;
      Exit;
    end;

    if (aCliente<>0) then 
      Result := DM.AjustaPontosFid(aFunc, aCliente, aFator, aPontos, aObs) else
      Result := DM.AjustaPontosFid(aFunc, 0, 0, 0, aObs);
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_AjustaPontosFid;
       DebugEx(Self, 'AjustaPontosFid', E);
    end;
  end;
end;

function TncServidor.CancelaTran(aID: Integer; aFunc: String): Integer;
begin
  try
    Result := DM.CancelarTran(aID, aFunc);
  except
    on e: exception do begin
       Result := ncerrExcecaoNaoTratada_TncServidor_CancelaTran;
       DebugEx(Self, 'CancelaTran', E);
    end;
  end;
end;

{ TThreadUpdTabledEvolved }

constructor TThreadUpdTabledEvolved.Create(aTables: TStrings);
begin
  inherited Create(False);
  FTables := TStringList.Create;
  FTables.Assign(aTables);
  FreeOnTerminate := True;
end;

destructor TThreadUpdTabledEvolved.Destroy;
begin
  FTables.Free;
  inherited;
end;

procedure TThreadUpdTabledEvolved.Execute;
var 
  Q: TnxQuery;
  SS: TnxSession;
  D: TnxDatabase;
  I: Integer;
  S: String;
begin
  DebugMsg(Self, 'Execute 1');
  if FTables.Count>0 then 
  try
    Q := nil;
    SS := nil;
    D := nil;
    try
      DebugMsg(Self, 'Execute 2');
      D := CreateDB(SS);
      SS := CreateSession;
      Q := TnxQuery.Create(nil);
      Q.Database := D;
      Q.Timeout := 60000 * 60;
      DebugMsg(Self, 'Execute 3');
      for I := 0 to FTables.Count - 1 do 
      if not SameText(FTables[I], 'doc') then begin
        DebugMsg(Self, 'Execute 4 - '+FTables[I]);
        S := GetTableAutoField(FTables[I]);
        if (S='') and gRecVerManager.ControlRecVer(FTables[I]) then S := 'RECVER';
        if S>'' then begin
          DebugMsg(Self, 'Execute 5 - '+FTables[I]);
          Q.SQL.Text := 'update "'+FTables[I]+'" set ' + S + '=null';
          Q.ExecSQL;
          Q.Active := False;
          DebugMsg(Self, 'Execute 6 - '+FTables[I]);
        end;
      end;
    finally
      if Assigned(Q) then Q.Free;
      if Assigned(D) then D.Free;
      if Assigned(SS) then SS.Free;
    end;
  except
    on E: Exception do DebugEx(Self, 'Execute', E);
  end;
  DebugMsg(Self, 'Execute 7 - '+FTables[I]);
end;

initialization
  Randomize;
  LadoServidor := True;

end.
