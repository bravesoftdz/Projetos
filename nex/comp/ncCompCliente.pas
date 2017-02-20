unit ncCompCliente;
{
    ResourceString: Dario 12/03/13
}

interface

uses
  Classes,
  WinProcs,
  Messages,
  Windows,
  ncErros,                                  
  ncMsgCom,
  ncTran,
  ncEspecie,
  ClasseCS,
  SysUtils,
  ExtCtrls,
  kbmMemTable,
  ncDebug,
  ncDebito,
//  ncNetMsg, 
  ncMovEst,
  ncTipoTran,
  ncLancExtra,
  ncSalvaCredito,
  ncClassesBase;

type
  TMudouFundoEv = procedure (Desktop: Boolean) of object;

  THackTMClasse = class ( TncClasse );
  TClienteNexCafe = class;
  TEventoDespachoMC = procedure (var Msg: TMessage) of object;
  TEventoShutdown = procedure (Sender: TObject; Operacao: Byte) of object;
  TEventoSuporteRem = procedure (Sender: TObject; Maq, Tec: Word) of object;

  TncProgressoDependEv = procedure (aEtapa, aProgresso : Byte; aErro : Integer; aErroStr: String) of object;  
  
  TEventoTransfArq = procedure (Sender: Tobject; 
                                Etapa: Byte; 
                                MsgID, TamArq, Posicao: Integer;
                                NomeArq: String; 
                                Enviando: Boolean) of object;

  TEventoNFeUpdated = procedure (Sender: TObject; Tran: TGUID) of object;                                

  TEventoChat = procedure (Sender: TObject;
                           MsgID, De, Para: Integer;
                           DataHora: TDateTime;
                           Texto: String) of object;

  TEventoSiteBloqueado =
    procedure (Sender: TObject; Adicionou: Boolean; URL: String) of object;  

  TEventoPedeTela = procedure (Sender: TObject; SessionID: Integer) of object;  

  TEventoTableUpdated = procedure (Sender: TObject; aIDTab: Byte) of object;

  TClienteNexCafe = class ( TComponent )
  private
    FHandle            : Integer;
    FWndHandle         : HWND;
    FServidor          : TncServidorBase;
    FAtivo             : Boolean;
    
    FUsuarios          : TncListaUsuarios;
    
    FCacheConexao      : Boolean;
    
    FUsername          : String;
    FSenha             : String;
    FFuncAtual         : Boolean;

    FMesmoCompServ     : Boolean;

    FUsuarioAtual      : TncUsuario;
    
    FAoAtivar          : TNotifyEvent;
    FAoDesativar       : TNotifyEvent;
    
    FAoAtualizarEspecie : TNotifyEvent;
    FAoDestruirEspecie : TNotifyEvent;

    FAoAtualizarTipoTran : TNotifyEvent;
    FAoDestruirTipoTran  : TNotifyEvent;

    FAoDestruirUsuario : TNotifyEvent;
    FAoAtualizarUsuario: TNotifyEvent;

    FAoAtualizarConfig : TNotifyEvent;

    FAoAbrirFecharCx   : TNotifyEvent;

    FAoChecaLic        : TNotifyEvent;

    FAoAtualizarTabela : TEventoTableUpdated;

    FAoDespacharMC     : TEventoDespachoMC;
    FAoTransferirArq   : TEventoTransfArq;

    FAoAtualizarNFe    : TEventoNFeUpdated;

    FAoAtualizarNFConfig : TNotifyEvent;

    FOnProgressoDepend : TncProgressoDependEv;

    FSuporteRem        : TEventoSuporteRem;
    FNumMaq            : Integer;
    FAutoAtualizar     : Boolean;
    FAtualizouAgora    : Boolean;
    FTransferindoArq   : Byte; // 0=nenhum, 1=atualizacao, 2=desktop, 3=login
    FPrograma          : String;
    FArqDestino        : String;
    FVersao            : String;
    FPastaServ         : String;
    FArqEnviando       : String;
    
    FLastExe           : String;
    FLastTit           : String;
    FLastUrl           : String;
    FAtivando          : Boolean;

    procedure SetAtivo(Valor: Boolean);
    procedure CriaWndHandle;
    procedure Notificacao(Obj: TncClasse; TipoNot: TTipoNotificacao);
    procedure SetServidor(Valor: TncServidorBase);
    function GetConfig: TncConfig;

    procedure ChecaErro(Erro: Integer);

    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
  protected
    procedure Desativou; virtual;
    procedure Ativou; virtual;

    function Lista(TipoClasse: Integer): TListaClasseCS;

    function AchaObj(TipoClasse: Integer; Chave: Variant): TncClasse;
  
    procedure DespachaMC(var Msg: TMessage); virtual;
    
    procedure tcAtualizaObj(var Msg: TMessage);
              message ncmc_AtualizaObj;
              
    procedure tcNovoObj(var Msg: TMessage);
              message ncmc_NovoObj;
              
    procedure tcDestroiObj(var Msg: TMessage);
              message ncmc_DestroiObj;

    procedure tcServidorDesativado(var Msg: TMessage);
              message ncmc_ServidorDesativado;

    procedure tcSuporteRemEv(var Msg: TMessage);
              message ncmc_SuporteRemEv;

    procedure tcAbriuFechouCaixaEv(var Msg: TMessage);
              message ncmc_AbriuFechouCaixa;

    procedure tcChecaLicEv(var Msg: TMessage);
              message ncmc_ChecaLicEv;

    procedure tcNFEUpdatedEv(var Msg: TMessage);
             message ncmc_NFEUpdatedEv;              

    procedure tcRefreshNFConfigEv(var Msg: TMessage);
              message ncmc_RefreshNFConfigEv;

    procedure tcInstalaDependEv(var Msg: TMessage);
              message ncmc_InstalaDependEv; 

    procedure tcTableUpdated(var Msg: TMessage);
              message ncmc_TableUpdatedEv; 

    procedure SetEventsNil;                
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure ProcessaMensagens;

    function Permitido(Usuario: TncUsuario; TipoAcesso: Integer): Boolean;
    
    procedure SalvaAlteracoesObj(Obj: TncClasse; Novo: Boolean);
    procedure ApagaObj(Obj: TncClasse);

    procedure BaixaAtualizacao(Programa, Versao, ArqDestino: String);

    function AbrirCaixa(aSaldo: Currency): Integer;
    procedure FecharCaixa(aID: Integer; aSaldo: Currency);
    procedure CorrigeDataCaixa(aID: Integer; aNovaAbertura, aNovoFechamento: TDateTime);
    procedure AjustaPontosFid(aCliente: Integer; aFator: Smallint; aPontos: Double; aObs: String);

    procedure SalvaMovEst(aMovEst: TncMovEst);
    procedure SalvaDebito(aDebito: TncDebito);
    procedure SalvaLancExtra(aLE: TncLancExtra);
    procedure SalvaCredito(aSalvaCredito: TncSalvaCredito);
    procedure SalvaLic(aConta, aChaves: String; const aDVA: String = '');

    procedure SalvaApp(aApp: String);

    procedure CancelaTran(aID: Integer; aFunc: String);
    procedure ZerarEstoque;

    function CriaClasseCS(TipoClasse: Integer): TClasseCS;
    
    function CriaUsuario(InsereLista: Boolean): TncUsuario; virtual;
    function CriaEspecie(InsereLista: Boolean): TncEspecie; virtual;
    function CriaTipoTran(InsereLista: Boolean): TncTipoTran; virtual;

    function ConsultarSAT: String;
    function InutilizarNFCE(aNFe: Boolean; aAno: Word; aInicio, aFim: Cardinal; aJust: String): String;

    procedure ReemitirNFCe(aTran: TGuid);

    procedure GeraXMLProt(aChave: String);

    procedure InstalaNFCeDepend;

    procedure InstalaNFeDepend;

    procedure TableUpdated(aIDTab: Byte);

    procedure ObtemCertificados(sl: TStrings);

    property MesmoCompServ: Boolean
      read FmesmoCompServ;

    property AtualizouAgora: Boolean read FAtualizouAgora;

    property UA: TncUsuario
      read FUsuarioAtual;

    property WndHandle: HWND 
      read FWndHandle;

    property Usuarios: TncListaUsuarios
      read FUsuarios;

    property Handle: Integer
      read FHandle;  

    property AoDespacharMC: TEventoDespachoMC
      read FAoDespacharMC write FAoDespacharMC;

    property Config: TncConfig
      read GetConfig;  

    property NumMaq: Integer
      read FNumMaq;  

    property TransferindoArq: Byte
      read FTransferindoArq;

  published
    property Servidor: TncServidorBase
      read FServidor write SetServidor;

    property Ativo: Boolean
      read FAtivo write SetAtivo;  

    property Username: String
      read FUsername write FUsername;

    property Senha: String
      read FSenha write FSenha;    

    property FuncAtual: Boolean
      read FFuncAtual write FFuncAtual; 

    property AutoAtualizar: Boolean
      read FAutoAtualizar write FAutoAtualizar;   

    property Programa: String
      read FPrograma write FPrograma;

    property Versao: String
      read FVersao write FVersao;

    property ArqDestino: String
      read FArqDestino write FArqDestino;

    property CacheConexao: Boolean
      read FCacheConexao write FCacheConexao;

    property AoAtivar: TNotifyEvent
      read FAoAtivar write FAoAtivar;

    property AoDesativar: TNotifyEvent
      read FAoDesativar write FAoDesativar;    

    property AoDestruirEspecie: TNotifyEvent
       read FAoDestruirEspecie write FAoDestruirEspecie;

    property AoAtualizarEspecie: TNotifyEvent
       read FAoAtualizarEspecie write FAoAtualizarEspecie; 

    property AoDestruirTipoTran: TNotifyEvent
       read FAoDestruirTipoTran write FAoDestruirTipoTran;

    property AoAtualizarTipoTran: TNotifyEvent
       read FAoAtualizarTipoTran write FAoAtualizarTipoTran; 
       
        

    property AoAbrirFecharCx: TNotifyEvent
      read FAoAbrirFecharCx write FAoAbrirFecharCx;   

    property AoAtualizarConfig : TNotifyEvent
      read FAoAtualizarConfig write FAoAtualizarConfig;  

    property AoAtualizarTabela : TEventoTableUpdated
      read FAoAtualizarTabela write FAoAtualizarTabela;
      
    property AoDestruirUsuario: TNotifyEvent
      read FAoDestruirUsuario write FAoDestruirUsuario;
        
    property AoAtualizarUsuario: TNotifyEvent
      read FAoAtualizarUsuario write FAoAtualizarUsuario;

    property AoTransferirArq: TEventoTransfArq
      read FAoTransferirArq write FAoTransferirArq;
      
    property AoSuporteRem: TEventoSuporteRem
      read FSuporteRem write FSuporteRem;

    property AoChecaLic: TNotifyEvent
      read FAoChecaLic write FAoChecaLic;   

    property AoAtualizarNFe : TEventoNFeUpdated
      read FAoAtualizarNFe write FAoAtualizarNFe;  

    property AoAtualizaNFConfig  : TNotifyEvent
      read FAoAtualizarNFConfig write FAoAtualizarNFConfig;  

    property OnProgressoDepend : TncProgressoDependEv
      read FOnProgressoDepend write FOnProgressoDepend;  
  end;

  function ClienteCMWndFunc(hWindow : Hwnd; Msg : UINT;
                            wParam : WPARAM;
                            lParam : LPARAM) : LRESULT; stdcall export;
  
const
  NomeClasseClienteNC = 'TClienteNexCafe';  

  // Transferindo arquivo
  taNenhum      = 0;
  taAtualizacao = 1;
  taDesktop     = 2;
  taLogin       = 3;

var 
  Destruindo : Boolean = False;  
  
implementation

uses
  ncListaID, ncIDRecursos, uLicEXECryptor;

// START resource string wizard section
resourcestring
  SJáExisteUmaTransfênciaDeArquivoE = 'Já existe uma transfência de arquivo em andamento';
  STClienteNexCafeÉPrecisoInformarO = 'TClienteNexCafe: É preciso informar o servidor do NexCafé';

// END resource string wizard section


{ TClienteNexCafe }

constructor TClienteNexCafe.Create(AOwner: TComponent);
begin
  inherited;    
  FAtivando := False;                 
  FAtualizouAgora := False;
  
  Destruindo := False;
  FNumMaq        := 2;
  FCacheConexao  := False;

  FUsuarioAtual  := TncUsuario.Create;

  FUsuarios      := TncListaUsuarios.Create;
  
  if not LadoServidor then begin
    THackTMClasse(gConfig).ProcNotificar := Notificacao;
  end;

  FUsuarios.CriaClasse := CriaClasseCS;
  gEspecies.CriaClasse := CriaClasseCS;
  gListaTipoTran.CriaClasse := CriaClasseCS;
  
  FHandle      := 0;
  
  CriaWndHandle;
  
  FServidor        := nil;
  FAtivo           := False;
  FUsername        := '';
  FFuncAtual       := False;

  FAoAtualizarEspecie := nil;
  FAoDestruirEspecie := nil;

  FAoAtualizarTipoTran := nil;
  FAoDestruirTipoTran := nil;

  FAutoAtualizar   := False;
  FTransferindoArq := taNenhum;
  FPrograma        := '';
  FArqDestino      := '';
  FVersao          := '';
  FPastaServ       := '';

  SetEventsNil;
end;

destructor TClienteNexCafe.Destroy;
var I : Integer;
begin
  Destruindo := True;
  SetEventsNil;
  Destroying;
  SetAtivo(False);
  
  DestroyWindow(FWndHandle);
  
  with FUsuarios do for I := 0 to Count-1 do THackTMClasse(Itens[I]).ProcNotificar := nil;
  with gEspecies do for I := 0 to Count - 1 do THackTMClasse(Itens[I]).ProcNotificar := nil;
  with gListaTipoTran do for I := 0 to Count -1 do ThackTMClasse(Itens[I]).ProcNotificar := nil;

  FUsuarios.Free;
  FUsuarioAtual.Free;
  inherited;
end;

procedure TClienteNexCafe.FecharCaixa(aID: Integer; aSaldo: Currency);
begin
  ChecaErro(Servidor.FechaCaixa(Username, aSaldo, aID));
end;

procedure TClienteNexCafe.GeraXMLProt(aChave: String);
begin
  ChecaErro(Servidor.GeraXMLProt(aChave));
end;

function TClienteNexCafe.GetConfig: TncConfig;
begin
  Result := gConfig;
end;

procedure TClienteNexCafe.InstalaNFCeDepend;
begin
  ChecaErro(Servidor.InstalaNFCeDepend);
end;

procedure TClienteNexCafe.InstalaNFeDepend;
begin
  ChecaErro(Servidor.InstalaNFeDepend);
end;

function TClienteNexCafe.InutilizarNFCE(aNFe: Boolean; aAno: Word; aInicio, aFim: Cardinal;
  aJust: String): String;
var sl : TStrings;  
begin
  sl := TStringList.Create;
  try
    ChecaErro(Servidor.InutilizarNFCE(aNFe, aAno, aInicio, aFim, aJust, sl));
    Result := sl.Text;
  finally
    sl.Free;
  end;
end;

procedure TClienteNexCafe.Desativou;
begin
  FTransferindoArq := taNenhum;
  if not FCacheConexao then begin
    gEspecies.Limpa;
    FUsuarios.Limpa;
    gListaTipoTran.Limpa;
  end;  
  FHandle := 0;
  if FAtivo then begin
    FAtivo := False;
    if Assigned(FAoDesativar) then
      FAoDesativar(Self);
  end;
end;

procedure TClienteNexCafe.SetAtivo(Valor: Boolean);
var 
  S : TMemoryStream;
  U : TncUsuario;
  I : Integer;
  Ver: Integer;
  Str: String;
begin
  if (Valor = FAtivo) or (FServidor=nil) then Exit;

  FTransferindoArq := taNenhum;
  FMesmoCompServ := False;

  if Valor then begin
    FAtivando := True;
    try
      if FServidor=nil then 
        Raise ENexCafe.Create(STClienteNexCafeÉPrecisoInformarO);
        
      DebugMsg('Ativando COMPCLIENT'); // do not localize
      if (not FServidor.Ativo) then begin
        DebugMsg('Servidor inativo ... Ativar'); // do not localize
        FServidor.Ativo := True;
        if not FServidor.Ativo then 
          Raise EErroNexCafe.Create(ncerrConexaoPerdida);
        DebugMsg('Conexão realizada');   // do not localize
      end else
        DebugMsg('Servidor já estava ativo.'); // do not localize
        
  
      DebugMsg('Conectado ao servidor'); // do not localize
      ChecaErro(FServidor.Login(FUsername, FSenha, FFuncAtual, False, FWndHandle, 0, 0, 0, '', FHandle));  
      DebugMsg('Login da máquina OK'); // do not localize

      FMesmoCompServ := (FindWindow('TncServBaseClassName', nil)<>0); // do not localize
        
      try
        S := TMemoryStream.Create;
        try
          if not LadoServidor then begin
            DebugMsg('Obter config...'); // do not localize
            ChecaErro(FServidor.ObtemStreamConfig(S));
            DebugMsg('Config obtido com sucesso'); // do not localize
            gConfig.LeStream(S);
            gConfig.Conta := gConfig.Conta;
            S.Clear;
          end;
          
          S.Clear;
  
          DebugMsg('Usuarios ...'); // do not localize
          ChecaErro(FServidor.ObtemStreamListaObj(FHandle, tcUsuario, S));
          DebugMsg('Usuarios OK'); // do not localize
          S.Position := 0;
          FUsuarios.LeStream(S);
          S.Clear;
  
          DebugMsg('Especies ...'); // do not localize
          ChecaErro(FServidor.ObtemStreamListaObj(FHandle, tcEspecie, S));
          DebugMsg('Especies OK'); // do not localize
          S.Position := 0;
          gEspecies.LeStream(S);
          S.Clear;

          DebugMsg('Tipos de transação ...'); // do not localize
          ChecaErro(FServidor.ObtemStreamListaObj(FHandle, tcTipoTran, S));
          DebugMsg('Tipos de transação OK'); // do not localize
          S.Position := 0;
          gListaTipoTran.LeStream(S);
          S.Clear;          
          
          DebugMsg('Obtem pasta servidor ...'); // do not localize
          ChecaErro(FServidor.ObtemPastaServ(FPastaServ));
          DebugMsg('Pasta servidor OK'); // do not localize
  
{          Str := '';
          DebugMsg('Sites bloqueados ...');
          ChecaErro(FServidor.ObtemSitesBloqueados(Str));
          DebugMsg('Sites bloqueados OK');
          FSitesBloq.Text := Str;}
  
          DebugMsg('COMPCLIENTE ATIVADO com sucesso!'); // do not localize
        finally 
          S.Free;
        end;    
        FAtivo := True;
        Ativou;
      except
        on E: Exception do begin
          if FServidor.Ativo then       
            FServidor.Ativo := False;
          FHandle := 0;  
          Desativou;
          DebugMsg('TClienteNexCafe.SetAtivo(True) - Exception: ' + E.Message); // do not localize
          Raise;
        end;
      end
    finally
      FAtivando := False;
    end;
  end else begin
    if Assigned(FServidor) then 
      FServidor.Logout(FHandle); 
    Desativou;   
  end;
  U := FUsuarios.PorUsername[FUsername];
  
  if U <> nil then begin
    with U do begin
      FUsuarioAtual.Username := Username;
      FUsuarioAtual.Senha    := Senha;
      FUsuarioAtual.Admin    := Admin;
      FUsuarioAtual.Direitos := Direitos;
      FUsuarioAtual.Nome     := Nome;
    end;  
  end else begin
    FUsuarioAtual.Username := '';
    FUsuarioAtual.Senha    := '';
    FUsuarioAtual.Admin    := False;
    FUsuarioAtual.Direitos := '';
    FUsuarioAtual.Nome     := '';
  end;
end;

function TClienteNexCafe.CriaUsuario(InsereLista: Boolean): TncUsuario; 
begin
  Result := TncUsuario.Create;
  THackTMClasse(Result).ProcNotificar := Notificacao;
  if InsereLista then 
    FUsuarios.Add(Result);
end;

function TClienteNexCafe.CriaClasseCS(TipoClasse: Integer): TClasseCS;
begin
  case TipoClasse of
    tcUsuario : Result := CriaUsuario(False);
    tcEspecie : Result := CriaEspecie(False);
    tcTipoTran : Result := CriaTipoTran(False);
  else
    Result := nil;  
  end;
end;

function TClienteNexCafe.CriaEspecie(InsereLista: Boolean): TncEspecie;
begin
  Result := TncEspecie.Create;
  THackTMClasse(Result).ProcNotificar := Notificacao;
  if InsereLista then
    gEspecies.Add(Result);
end;

function TClienteNexCafe.CriaTipoTran(InsereLista: Boolean): TncTipoTran;
begin
  Result := TncTipoTran.Create;
  THackTMClasse(Result).ProcNotificar := Notificacao;
  if InsereLista then
    gListaTipoTran.Add(Result);
end;

procedure TClienteNexCafe.Notificacao(Obj: TncClasse;
  TipoNot: TTipoNotificacao);
begin
  if Destruindo then Exit;
  if csDestroying in ComponentState then Exit;
  case TipoNot of
    tnAlteracao :
    case Obj.TipoClasse of
      tcUsuario : begin
        if UA.Username = TncUsuario(Obj).Username then
          UA.Assign(Obj);
        if Assigned(FAoAtualizarUsuario) then FAoAtualizarUsuario(Obj);
      end;
      tcEspecie :
        if Assigned(FAoAtualizarEspecie) then FAoAtualizarEspecie(Obj);
      tcTipoTran :
        if Assigned(FAoAtualizarTipoTran) then FAoAtualizarTipoTran(Obj);

      tcConfig : 
        if Assigned(FAoAtualizarConfig) then FAoAtualizarConfig(Obj);
    end;
    
    tnDestruicao :
    case Obj.TipoClasse of
      tcEspecie : 
      begin
        gEspecies.Remove(Obj);
        if Assigned(FAoDestruirEspecie) then FAoDestruirEspecie(Obj);
      end;       
      tcTipoTran :
      begin
        gListaTipoTran.Remove(Obj);
        if Assigned(FAoDestruirTipoTran) then FAoDestruirTipoTran(Obj);
      end;
      tcUsuario : begin
        FUsuarios.Remove(Obj);
        if Assigned(FAoDestruirUsuario) then FAoDestruirUsuario(Obj);
      end;
    end;  
  end;
end;

procedure TClienteNexCafe.Notification(AComponent: TComponent;
  Operation: TOperation);
var S: String;  
begin
  inherited;
  S := AComponent.ClassName;
  if S='joao' then AComponent.FreeNotification(nil); // do not localize

  if AComponent=FServidor then begin
    if Operation=opRemove then begin
      FServidor := nil;
      FAtivo := False;
    end;
  end;
end;

procedure TClienteNexCafe.ObtemCertificados(sl: TStrings);
begin
  ChecaErro(Servidor.ObtemCertificados(sl));
end;

procedure TClienteNexCafe.CriaWndHandle;
var XClass : TWndClass;
begin
  XClass.hInstance := HInstance;
  with XClass do begin
    Style         := 0;
    lpfnWndProc   := @ClienteCMWndFunc;
    cbClsExtra    := 0;
    cbWndExtra    := SizeOf(Pointer);
    hIcon         := LoadIcon(hInstance, 'DEFICON'); // do not localize
    hCursor       := LoadCursor(0, idc_Arrow);
    hbrBackground := 0;
    lpszMenuName  := nil;
    lpszClassName := NomeClasseClienteNC;
  end;
  WinProcs.RegisterClass(XClass);

  FWndHandle :=
    CreateWindow(NomeClasseClienteNC,     {window class name}
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
                 
  SetWindowLong(FWndHandle, 0, Longint(Self));
end;

function ClienteCMWndFunc(hWindow : Hwnd; Msg : UINT;
                          wParam : WPARAM;
                          lParam : LPARAM) : LRESULT; stdcall export;
var
  Obj : TClienteNexCafe;
  M   : TMessage;
  
  function DefWndFunc : LongInt;
  begin
    DefWndFunc := DefWindowProc(hWindow, Msg, wParam, lParam);
  end;

begin
  Result := 0;
  Obj := nil;

  DebugMsg('ClienteCMWndFunc - HWND: ' + IntToStr(hWindow) + ' - Msg: ' + IntToStr(Msg) + ' - wParam: ' + IntToStr(wParam) + ' - lParam: ' + IntToStr(lParam)); // do not localize

  if MSG<>wm_Create then begin
    Obj := TClienteNexCafe(GetWindowLong(hWindow, 0));
    if Obj=nil then begin 
      Result := DefWndFunc;
      DebugMsg('ClienteCMWndFunc - Obj = nil'); // do not localize
      Exit;
    end;
  end;

  case Msg of
    ncmc_Primeira..ncmc_Ultima : 
    begin
      M.Msg := Msg;
      M.WParam := WParam;
      M.LParam := LParam;
      DebugMsg('ClienteCMWndFunc - Obj.DespachaMC'); // do not localize
      Obj.DespachaMC(M);
    end;
    
  else 
    DebugMsg('ClienteCMWndFunc - DefWndFunc'); // do not localize
    Result := DefWndFunc;
  end;
end;

function TClienteNexCafe.Lista(TipoClasse: Integer): TListaClasseCS;
begin
  case TipoClasse of
    tcUsuario : Result := FUsuarios;
    tcEspecie : Result := gEspecies;
    tcTipoTran : Result := gListaTipoTran;
  else  
    Result := nil;
  end;
end;  

function TClienteNexCafe.AbrirCaixa(aSaldo: Currency): Integer;
begin
  ChecaErro(Servidor.AbreCaixa(Username, aSaldo, Result));
end;

function TClienteNexCafe.AchaObj(TipoClasse: Integer; Chave: Variant): TncClasse;
var L: TListaClasseCS;
begin
  L := Lista(TipoClasse);
  if L <> nil then
    Result := TncClasse(L.ItemPorChave[Chave])
  else
    Result := nil;  
end;  

procedure TClienteNexCafe.tcAbriuFechouCaixaEv(var Msg: TMessage);
begin
  DebugMsg('TClienteNexCafe.tcAbriuFechouCaixaEv'); // do not localize
  if Assigned(FAoAbrirFecharCx) then
    FAoAbrirFecharCx(Self);
end;

procedure TClienteNexCafe.tcAtualizaObj(var Msg: TMessage);
var 
  S : TStream;
  TipoClasse, I : Integer;
  Chave : String;
  T : Byte;
  Obj : TncClasse;
  L : TListaClasseCS;
  R : TReader;
begin
  S := TStream(Msg.lParam);

  DebugMsg('TClienteNexCafe.tcAtualizaObj - 1'); // do not localize

  S.Position := 0;
  R := TReader.Create(S, 4096);
  try
    TipoClasse := R.ReadInteger;
    Chave := R.ReadString;
  finally
    R.Free;
  end;

  DebugMsg('TClienteNexCafe.tcAtualizaObj - TipoClasse: '+IntToStr(TipoClasse)+' - Chave: ' + Chave); // do not localize

  if TipoClasse=tcConfig then begin
    DebugMsg('TClienteNexCafe.tcAtualizaObj.TipoClasse=tcConfig'); // do not localize
    
    if not LadoServidor then begin
      gConfig.LeStream(S);
      gConfig.Notificar(tnAlteracao);
    end;
  end else begin
    DebugMsg('TClienteNexCafe.tcAtualizaObj - 3'); // do not localize
  
    L := Lista(TipoClasse);
    if L = nil then Exit;
    Obj := TncClasse(L.ItemPorChave[Chave]);

    if Obj = nil then begin
      Obj := TncClasse(CriaClasseCS(TipoClasse));
      L.Add(Obj);
    end;

    if Obj <> nil then begin
      Obj.LeStream(S);
      Obj.Notificar(tnAlteracao);
    end;
  end;  
end;

procedure TClienteNexCafe.tcChecaLicEv(var Msg: TMessage);
begin
  if Assigned(FAoChecaLic) then
    FAoChecaLic(Self);
end;

procedure TClienteNexCafe.tcDestroiObj(var Msg: TMessage);
var 
  TipoClasse : Integer;
  Chave: Variant;
  Obj : TncClasse;
begin
  DebugMsg('TClienteNexCafe.tcDestroiObj - 1'); // do not localize
  TipoClasse := PmsgDestroiObj(Msg.LParam)^.msgTipoClasse;
  Chave      := PmsgDestroiObj(Msg.LParam)^.msgChave;
  Obj := AchaObj(TipoClasse, Chave);
  if Obj <> nil then begin
    DebugMsg('TClienteNexCafe.tcDestroiObj - 2'); // do not localize
    DebugMsg('tcDestrouObj - TipoClasse = ' + IntToStr(TipoClasse) + ' - Chave = ' + Chave); // do not localize
    Obj.Free;
  end;
end;

function IsNT: boolean;
begin
  result:= Win32Platform=VER_PLATFORM_WIN32_NT;
end;

function SetPrivilege(sPrivilegeName: string; bEnabled: boolean): boolean;
var TPPrev, TP: TTokenPrivileges;
    Token: THandle;
    dwRetLen: DWord;
begin
  result:= false;
  OpenProcessToken( GetCurrentProcess,
                    TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, Token);
  TP.PrivilegeCount:= 1;
  if LookupPrivilegeValue(nil, pChar(sPrivilegeName), TP.Privileges[0].LUID) then
  begin
    if bEnabled
      then TP.Privileges[0].Attributes:= SE_PRIVILEGE_ENABLED
      else TP.Privileges[0].Attributes:= 0;
    dwRetLen:= 0;
    result:= AdjustTokenPrivileges(Token, false, TP, 0, TPPrev, dwRetLen);
  end;
  CloseHandle(Token);
end;

procedure EnableAllPrivileges;
type TTokenPrivileges = record
       PrivilegeCount : dword;
       Privileges     : array [0..maxInt shr 4 - 1] of TLUIDAndAttributes;
     end;
var c1 : NativeUINT;
    c2 : Cardinal;
    i1     : integer;
    ptp    : ^TTokenPrivileges;
begin
  if OpenProcessToken(windows.GetCurrentProcess, TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, c1) then
    try
      c2 := 0;
      GetTokenInformation(c1, TokenPrivileges, nil, 0, c2);
      if c2 <> 0 then begin
        ptp := pointer(LocalAlloc(LPTR, c2 * 2));
        if GetTokenInformation(c1, TokenPrivileges, ptp, c2 * 2, c2) then begin
          for i1 := 0 to integer(ptp^.PrivilegeCount) - 1 do
            ptp^.Privileges[i1].Attributes := ptp^.Privileges[i1].Attributes or SE_PRIVILEGE_ENABLED;
          AdjustTokenPrivileges(c1, false, PTokenPrivileges(ptp)^, c2, PTokenPrivileges(nil)^, cardinal(pointer(nil)^));
        end;
        LocalFree(dword(ptp));
      end;
    finally CloseHandle(c1) end;
end;

procedure ChangeSystemTime(NewTime: TSystemTime);
begin
{  if (not IsNT) or SetPrivilege('SeSystemtimePrivilege', true) then
  begin}
    if IsNT then 
      EnableAllPrivileges;
//      SetPrivilege('SeSystemtimePrivilege', true);
  
    SetLocalTime(NewTime); // or SetSystemTime(NewTime);
//    if IsNT then SetPrivilege('SeSystemtimePrivilege', false );
//  end;
end;

procedure TClienteNexCafe.tcInstalaDependEv(var Msg: TMessage);
begin
  DebugMsg('TClienteNexCafe.tcInstalaDependEv');
  with PmsgInstalaDependEv(Msg.lParam)^ do  
  if Assigned(FOnProgressoDepend) then
    FOnProgressoDepend(msgEtapa, msgProgresso, msgErro, msgErroStr);
end;

procedure TClienteNexCafe.tcNFEUpdatedEv(var Msg: TMessage);
begin
  DebugMsg('TClienteNexCafe.tcNFEUpdatedEv');
  with PmsgNFeUpdated(Msg.lParam)^ do  
  if Assigned(FAoAtualizarNFe) then
    FAoAtualizarNFe(Self, msgUID);
end;

procedure TClienteNexCafe.tcNovoObj(var Msg: TMessage);
begin
  DebugMsg('TClienteNexCafe.tcNovoObj - 1'); // do not localize
  tcAtualizaObj(Msg);
end;

procedure TClienteNexCafe.tcRefreshNFConfigEv(var Msg: TMessage);
begin
  if Assigned(FAoAtualizarNFConfig) then FAoAtualizarNFConfig(Self);
end;

procedure TClienteNexCafe.tcSuporteRemEv(var Msg: TMessage);
begin
  with PmsgSuporteRemEv(Msg.lParam)^ do  
  if Assigned(FSuporteRem) then
    FSuporteRem(Self, msgMaq, msgTec);
end;

procedure TClienteNexCafe.tcTableUpdated(var Msg: TMessage);
begin
  if Assigned(FAoAtualizarTabela) then
    FAoAtualizarTabela(Self, PmsgTableUpdated(Msg.lParam)^.msgTableID);
end;

procedure TClienteNexCafe.DespachaMC(var Msg: TMessage);
begin
  try
    DebugMsg('TClienteNexCafe.DespachMC - Msg: ' + GetMsgIDString(Msg.Msg)); // do not localize
    Dispatch(Msg);
    if Assigned(FAoDespacharMC) then
      FAoDespacharMC(Msg);
  finally
    FreeDados(Msg.Msg, Pointer(Msg.LParam));
  end;    
end;

procedure TClienteNexCafe.SetServidor(Valor: TncServidorBase);
begin
  if FServidor <> Valor then begin
{    if FServidor<>nil then 
      FServidor.RemoveComponent(Self);}
    FServidor := nil;
    SetAtivo(False);
    FServidor := Valor;
{    if FServidor<>nil then 
      FServidor.InsertComponent(Self);}
  end;  
end;

procedure TClienteNexCafe.tcServidorDesativado(var Msg: TMessage);
begin
  Desativou;
end;

procedure TClienteNexCafe.Ativou;
begin
  if Assigned(FAoAtivar) then
    FAoAtivar(Self);   
end;

function TClienteNexCafe.Permitido(Usuario: TncUsuario; TipoAcesso: Integer): Boolean;
begin
  if Usuario.Admin then 
    Result := True
  else 
    Result := ItemTrueStr(Usuario.Direitos, TipoAcesso);
end;

procedure TClienteNexCafe.ProcessaMensagens;
var Msg : TMsg;
begin
  while PeekMessage(Msg, FWndHandle, 0, 0, PM_REMOVE) do begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
  end;
end;

procedure TClienteNexCafe.ApagaObj(Obj: TncClasse);
begin
  ChecaErro(Servidor.ApagaObj(Handle, Obj.TipoClasse, Obj.Chave));
end;

procedure TClienteNexCafe.SalvaAlteracoesObj(Obj: TncClasse; Novo: Boolean);
var 
  W : TWriter;
  S : TStream;
  aHandle, 
  aTipoClasse : Integer;
  Chave : String;
  T : Byte;
begin
  S := TMemoryStream.Create;
  try
    aHandle := Handle;
    aTipoClasse := Obj.TipoClasse;
    Chave := Obj.Chave;
    T := Length(Chave);
    W := TWriter.Create(S, 4096);
    try
      W.WriteInteger(aHandle);
      W.WriteInteger(aTipoClasse);
      W.WriteString(Chave);
    finally
      W.Free;
    end;
    Obj.SalvaStream(S, not Novo);
    S.Position := 0;
    with Servidor do
    ChecaErro(SalvaStreamObj(Novo, S));
  finally
    S.Free;
  end;  
end;

procedure TClienteNexCafe.SalvaApp(aApp: String);
begin
  ChecaErro(Servidor.SalvaApp(aApp));
end;

procedure TClienteNexCafe.SalvaDebito(aDebito: TncDebito);
begin
  ChecaErro(Servidor.SalvaDebito(aDebito));
end;

procedure TClienteNexCafe.SalvaCredito(aSalvaCredito: TncSalvaCredito);
begin
  ChecaErro(Servidor.SalvaCredito(aSalvaCredito));
end;

procedure TClienteNexCafe.SalvaLancExtra(aLE: TncLancExtra);
begin
  ChecaErro(Servidor.SalvaLancExtra(aLE));
end;

procedure TClienteNexCafe.SalvaLic(aConta, aChaves: String; const aDVA: String = '');
var s: String;

begin
  S := 'chaves='+aChaves; // do not localize
  if aConta>'' then 
    S := S + sLineBreak + 'conta=' + aConta;

  if aDVA>'' then
    S := S + sLineBreak + aDVA;
  
  ChecaErro(Servidor.SalvaLic(S));
end;

procedure TClienteNexCafe.SalvaMovEst(aMovEst: TncMovEst);
begin
  ChecaErro(Servidor.SalvaMovEst(aMovEst));
end;

procedure TClienteNexCafe.CancelaTran(aID: Integer; aFunc: String);
begin
  ChecaErro(Servidor.CancelaTran(aID, aFunc));
end;

procedure TClienteNexCafe.ZerarEstoque;
begin
  ChecaErro(Servidor.ZerarEstoque(FUsername));
end;

procedure TClienteNexCafe.ChecaErro(Erro: Integer);
begin
  if Erro<>0 then 
  if (Erro=ncerrConexaoPerdida) and (not FAtivando) then begin
    Ativo := False;
    raise EErroNexCafe.Create(Erro);
  end else
    raise EErroNexCafe.Create(Erro);
end;

function TClienteNexCafe.ConsultarSAT: String;
begin

end;

procedure TClienteNexCafe.CorrigeDataCaixa(aID: Integer; aNovaAbertura,
  aNovoFechamento: TDateTime);
begin
  ChecaErro(Servidor.CorrigeDataCaixa(Username, aID, aNovaAbertura, aNovoFechamento));
end;

procedure TClienteNexCafe.ReemitirNFCe(aTran: TGuid);
begin
  ChecaErro(Servidor.ReemitirNFCe(aTran));
end;

procedure TClienteNexCafe.TableUpdated(aIDTab: Byte);
begin
  ChecaErro(Servidor.TableUpdated(aIDTab));
end;

procedure TClienteNexCafe.BaixaAtualizacao(Programa, Versao, ArqDestino: String);
var Erro: Integer;
begin
  Erro := Servidor.BaixaNovaVersao(Programa, Versao, ArqDestino);
  if not (Erro in [0, ncerrSemNovaVersao]) then
    Raise EErroNexCafe.Create(Erro);
  if Erro=0 then
    FTransferindoArq := taAtualizacao;  
end;

procedure TClienteNexCafe.AjustaPontosFid(aCliente: Integer; aFator: Smallint;
  aPontos: Double; aObs: String);
begin
  ChecaErro(Servidor.AjustaPontosFid(UA.Username, aCliente, aFator, aPontos, aObs));
end;

procedure TClienteNexCafe.SetEventsNil;
begin
  FAoAtualizarTabela    := nil;
  FAoAtivar             := nil;
  FAoDesativar          := nil;
  FAoAtualizarConfig    := nil;
  FAoDespacharMC        := nil;
  FSuporteRem           := nil;
  FAoDestruirUsuario    := nil;
  FAoAtualizarUsuario   := nil;
  FAoTransferirArq      := nil;
  FAoAbrirFecharCx      := nil;
  FAoChecaLic           := nil;
  FAoAtualizarNFe       := nil;
  FAoAtualizarNFConfig  := nil;
  FOnProgressoDepend := nil;
end;

initialization
  Randomize;
  
end.

