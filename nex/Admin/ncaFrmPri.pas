unit ncaFrmPri;

interface
                               
{$I nex.inc}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles,
  ExtCtrls, dxCore,   
  kbmMemTable, kbmMemBinaryStreamFormat, DB, 
  cxPC, cxControls, dxBar, 
  cxContainer, cxEdit,
  dxBarExtItems, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxGridCustomTableView, cxGridTableView,
  cxClasses, cxGridCustomView,
  cxGridLevel, cxGrid, cxMaskEdit, 
  ComCtrls, ImgList, 
  cxGroupBox, cxVGrid,
  cxInplaceContainer, 
  cxGridCardView, 
  cxHint,
  cxSplitter, cxGridCommon,
  dxDockPanel, dxDockControl, cxLabel, 
  cxLookAndFeelPainters, cxButtons, 
  cxTextEdit, cxMemo, 
  dxPScxGridLnk, 
  cxRadioGroup, cxDBData, cxGridDBTableView,  
  LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  StdCtrls, 
  LMDControl,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, 
  ufmFormBase, LMDCustomComponent, LMDContainerComponent, 
  pngimage,
  Buttons, 
  LMDBaseDialog, 
  ShellApi,
  AppEvnts, ncClassesBase, dxBarBuiltInMenu, cxLookAndFeels, dxScreenTip,
  dxLayoutLookAndFeels, nxllComponent, nxdb, dxCustomHint,
  dxGDIPlusClasses, LMDSimplePanel, LMDBaseGraphicControl,           
  LMDWaveComp, uMyBrowser,
  cxPCdxBarPopupMenu, 
  Menus, ncThreadedDownload,
  ncafbRevisarProduto, OleCtrls, ncaWebBotao, ncafbProdEst,
  System.ImageList;


const
  wm_alignpanplano   = wm_user + 201;
  wm_atualizalic     = wm_user + 202;
  
  kTimerRevisarCadProdutoInterval = 10000;
  
type
  TFrmPri = class(TForm)
    panPriMaster: TLMDSimplePanel;
    panPri: TLMDSimplePanel;
    BarMgr: TdxBarManager;
    dxBarSubItem1: TdxBarSubItem;
    cmAlterarSenha  : TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    cmSair: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    cmTelefones: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    cxEditStyleController1: TcxEditStyleController;
    FM: TFormManager;
    HC: TcxHintStyleController;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetEggplant: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxVerticalGridStyleSheetEggplant: TcxVerticalGridStyleSheet;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    GridTableViewStyleSheetMaple: TcxGridTableViewStyleSheet;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cmExibir: TdxBarImageCombo;
    cmExportar: TdxBarButton;
    cmImprimir: TdxBarButton;
    dsPri: TdxDockSite;
    dckMgr: TdxDockingManager;
    dpPaginas: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    Paginas: TcxPageControl;
    MT: TkbmMemTable;
    MTDataHora: TDateTimeField;
    MTTexto: TMemoField;
    DataSource1: TDataSource;
    cmSubExibir: TdxBarSubItem;
    cmMostrarTextoBotoes: TdxBarButton;
    btnChat: TLMDSpeedButton;
    cmSuporteRemoto: TdxBarButton;
    cxStyle29: TcxStyle;
    dxBarButton1: TdxBarButton;
    cxStyle30: TcxStyle;
    dxBarDockControl1: TdxBarDockControl;
    cmSubArquivo: TdxBarSubItem;
    cmSubLayout: TdxBarSubItem;
    cmLayoutAddRemCols: TdxBarButton;
    cmLaySalvar: TdxBarButton;
    cmLayRestaurar: TdxBarButton;
    barAtalhos: TdxBar;
    cmClientes: TdxBarLargeButton;
    cmProdutos: TdxBarLargeButton;
    cmCaixa: TdxBarLargeButton;
    cmUsuarios: TdxBarLargeButton;
    cxStyle31: TcxStyle;
    bdcAtalhos: TdxBarDockControl;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cmEstatisticas: TdxBarLargeButton;
    Timer1: TTimer;
    Timer2: TTimer;
    TimerAvisoAss: TTimer;
    TimerHint: TTimer;
    TimerFirewall: TTimer;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    dxBarLargeButton1: TdxBarLargeButton;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cmAbrirServ: TdxBarButton;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    lfPadrao: TdxLayoutStandardLookAndFeel;
    cmLogoff: TdxBarButton;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    dxBarButton7: TdxBarButton;
    cmComprarAss: TdxBarButton;
    cxStyle46: TcxStyle;
    cmVendas: TdxBarLargeButton;
    cxStyle47: TcxStyle;
    cmFornecedores: TdxBarLargeButton;
    cmDebitos: TdxBarLargeButton;
    dpRevisarProduto: TdxDockPanel;
    dxLayoutDockSite4: TdxLayoutDockSite;
    TimerRevisarCadProduto: TTimer;
    cxEditStyleControllerTahoma10: TcxEditStyleController;
    cxStyle48: TcxStyle;
    styleSelecionado: TcxStyle;
    cxStyle49: TcxStyle;
    cxsHeader: TcxStyle;
    cxStyle50: TcxStyle;
    cmTutoriais: TdxBarButton;
    cxStyle51: TcxStyle;
    cmEspaco: TdxBarButton;
    cxStyle52: TcxStyle;
    cmAtualizarNex: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cmNovoReg: TdxBarButton;
    cmOutroReg: TdxBarButton;
    cxStyle53: TcxStyle;
    escFlat: TcxEditStyleController;
    cmOrcamentos: TdxBarLargeButton;
    panPlanos: TLMDSimplePanel;
    lbConta: TcxLabel;
    imgConta: TImage;
    Shape1: TShape;
    nxSession1: TnxSession;
    lbVersao: TcxLabel;
    lbPromptVersao: TcxLabel;
    Shape2: TShape;
    lbPromptPlano: TcxLabel;
    lbPlano: TcxLabel;
    dxBarSubItem6: TdxBarSubItem;
    cmPlano: TdxBarControlContainerItem;
    lbVenc: TcxLabel;
    pmRegistro: TdxBarPopupMenu;
    lbPromptVenc: TcxLabel;
    cmAbreGaveta: TdxBarButton;
    imgsIndicator: TcxImageList;
    cxDefaultEditStyleController1: TcxDefaultEditStyleController;
    cmDocMgr: TdxBarButton;
    cmDEV: TdxBarButton;
    cxStyle54: TcxStyle;
    cmRefreshApp: TdxBarButton;
    cxStyle55: TcxStyle;
    LayoutLF: TdxLayoutLookAndFeelList;
    lfDefault: TdxLayoutCxLookAndFeel;
    lfDestaque: TdxLayoutCxLookAndFeel;
    cmNFe: TdxBarLargeButton;
    cxStyle56: TcxStyle;
    cmReativarNF: TdxBarButton;
    cmMigrar: TdxBarButton;
    cxStyle57: TcxStyle;
    dxBarButton6: TdxBarButton;
    AE: TApplicationEvents;
    btnPais: TcxButton;
    cmAssineAqui: TdxBarButton;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    lfFlat: TdxLayoutCxLookAndFeel;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    styleSel: TcxStyle;
    styleUnsel: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    TimerFimTrial: TTimer;
    cxStyle65: TcxStyle;
    procedure Timer1Timer(Sender: TObject);
    procedure cmSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FMChange(Sender: TObject);
    procedure cmAlterarSenhaClick(Sender: TObject);
    procedure cmTelefonesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmMostrarTextoBotoesClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure AEShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure cmSuporteRemotoClick(Sender: TObject);
    procedure AEException(Sender: TObject; E: Exception);
    procedure FormResize(Sender: TObject);
    procedure cmImprimirClick(Sender: TObject);
    procedure cmExportarClick(Sender: TObject);
    procedure cmLayoutAddRemColsClick(Sender: TObject);
    procedure cmLaySalvarClick(Sender: TObject);
    procedure cmLayRestaurarClick(Sender: TObject);
    procedure cmMaquinasClick(Sender: TObject);
    procedure TimerHintTimer(Sender: TObject);
    procedure dxBarStatic1Click(Sender: TObject);
    procedure dpCHATDock(Sender, Site: TdxCustomDockControl;
      ADockType: TdxDockingType; AIndex: Integer);
    procedure dpImpCloseQuery(Sender: TdxCustomDockControl;
      var CanClose: Boolean);
    procedure cmAbrirServClick(Sender: TObject);
    procedure cmLogoffClick(Sender: TObject);
    procedure TimerFirewallTimer(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cmComprarAssClick(Sender: TObject);
    procedure cmVerCodClick(Sender: TObject);
    procedure TimerRevisarCadProdutoTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);

    function GetShowCaption: Boolean;

    procedure OnClickWebBotao(Sender: TObject);
    procedure cmTutoriaisClick(Sender: TObject);
    procedure cmAtualizarNexClick(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cmNovoRegClick(Sender: TObject);
    procedure cmOutroRegClick(Sender: TObject);
    procedure lbPromptPlanoClick(Sender: TObject);
    procedure lbContaClick(Sender: TObject);
    procedure TimerAvisoAssTimer(Sender: TObject);
    procedure cmAbreGavetaClick(Sender: TObject);
    procedure cmDocMgrClick(Sender: TObject);
    procedure cmDEVClick(Sender: TObject);
    procedure cmRefreshAppClick(Sender: TObject);
    procedure cmReativarNFClick(Sender: TObject);
    procedure cmMigrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cmNFeClick(Sender: TObject);
    procedure btnPaisClick(Sender: TObject);
    procedure TimerFimTrialTimer(Sender: TObject);
  private
    { Private declarations }
    FRevisarProduto : TfbRevisarProduto;
    FInfoServer : String;
    FInfoPlanos : String;

    function VersaoStr: String;

    procedure LoadDckMgr;

    procedure OnAjustaRestSpaceTimer(Sender: TObject);
    procedure NewRestSpaceTimer;

    procedure AjustaBotao(B: TdxBarLargeButton);

    procedure CenterAds;

    procedure RefreshAds;

    procedure AjustaSBCaptions;

    procedure OnTerminateInfoPlanos(Sender: TObject);
    procedure OnTerminateInfoServer(Sender: TObject);
    
    procedure OnDestroyFrmWebTabs(Sender: TObject);

    procedure wmInfoCampanha(var Msg: TMessage);
      message wm_infocampanha;

    procedure wmAlignPanPlano(var Msg: TMessage);
      message wm_alignpanplano;

    procedure wmAtualizaLic(var Msg: TMessage);
      message wm_atualizalic;  

    procedure wmAtualizaDireitosConfig(var Msg: TMessage);
      message wm_atualizadireitosconfig;  

    procedure wmAbreAba(var Msg: TMessage);
      message wm_abreaba;

    procedure wmDownloadIntInfo(var Msg: TMessage);
      message wm_downloadIntInfo;  

    procedure wmStartAdmin(var Msg: TMessage);
      message wm_startadmin;  

    procedure wmStartStep(var Msg: TMessage);
      message wm_startstep;  

    procedure ssAtualizaTela;
    procedure ssDspriVisible;
    procedure ssAdminWebPopup;
    procedure ssLoadWebItens;
    procedure ssChecaSenhaConta;
    procedure ssRevisarProduto;
    procedure ssStartThreads;
    procedure ssLastTimers;
    
  public
    procedure MakeChatVisible(Sender: TObject);
    procedure AjustaVersao;
    procedure RegistraForms;

    procedure MostraHint(X, Y: Integer; aHeader, aStr: String);
    procedure EscondeHint;

    procedure AtualizaConfig;
    
    procedure ChecaRedePremium;

    procedure AjustaRestSpace;

    procedure TentaConectar(Reconexao: Boolean);
    procedure AtualizaDireitos;
    procedure RefreshCaptionsNFCupom;

    procedure RefreshTran;
    procedure MostrarCaixasAnteriores;
    procedure MostrarCaixaAtual;
    procedure RefreshCaixaAberto;

    procedure AjustaVisSenha;

    function MesmoPC(aPC: String): Boolean;

    function IsDocMgr: Boolean;
    
    procedure AddWebTab(S: String);

    function FocusColor: TColor; 

    procedure ChamaSuporteRemoto;

    procedure refreshRevisarCadProduto(const aForce:boolean=false);

    procedure OnCloseConfirmarTrial(Sender: TObject; var Action: TCloseAction);

    property InfoServer: String read FInfoServer;
    property InfoPlanos: String read FInfoPlanos;

   { Public declarations }
  var
    iCod, iCFOP :integer;
    sNatOp : string;
  published      
    procedure CustomDrawGridHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);  

    procedure CustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);        
  end;

  TMYcxGridColumnHeaderFilterButtonViewInfo = class( TcxGridColumnHeaderFilterButtonViewInfo)
  public
    function GetVisible: Boolean;
  end;
  

  function SimNao(S: String): Boolean;
  function SimNaoH(S: String; H : HWND; const aDefNo: Boolean = False): Boolean;
  procedure ShowMsg(S: String; aBeep: Boolean = False);

  function PremiumOk: Boolean;
                                                     

var
  FrmPri       : TFrmPri;
  DckMgrLoaded : Boolean = False;
  ClicouSair   : Boolean = False;
  GShutingdown : Boolean = False;
  LastGetApp   : Cardinal = 0;
  

const
  Key_Tab        = 9;
  Key_Ins        = 45;
  Key_Del        = 46;
  Key_Enter      = 13;
  Key_Up         = 38;
  Key_Down       = 40;
  Key_Esc        = 27;
  Key_Espaco     = 32;
  Key_CtrlN      = $310E;
  Key_E          = $45;
  Key_M          = $4D;
  Key_R          = $52;
  Key_T          = $54;
  Key_F1         = $70;
  Key_F2         = $71;
  Key_F3         = $72;
  Key_F4         = $73;
  Key_F5         = $74;
  Key_F6         = $75;
  Key_F7         = $76;
  Key_F8         = $77;
  Key_F9         = $78;
  Key_F10        = $79;
  Key_F11        = $7A;
  Key_F12        = $7B;


implementation

uses
  clipbrd,
  idHttp,
  uLogs,
  cxEditConsts,
  ncErros,
  ufmImagens, 
  ncaFrmLogin, 
  ncaDM,
  ncafbTran, 
  ncafbClientes, 
  Consts,
  ncafbFornecedores,
  ncafbProdutos, 
  ncafbCaixa, 
  ncIDRecursos,
  cxGridStrs, 
  cxGridPopupMenuConsts,
  cxFilterConsts,
  cxFilterControlStrs,
  ncafbUsuarios,
  ncaFrmSenha, 
  ncaFrmContato,
  ncaFrmHistVer, 
  ncafbPesqCli,
  ncafbAvisos, ncVersoes, ncDMServ, 
  ncaLocalizaCli,
  ncFrmSuporteRem, ncVersionInfo,
  nxptBasePooledTransport, nxllBde, ncaFrmCadCli,
  ncafbEst,ncafbPesqFor,
  ncShellStart, ncaFrmWebPopup, ncaFrmGetWebTabs,
  ncafbCXLetra, ncaFrmSenhaWiz, ncaFrmQtdMaq, ncaPlusAPI, ncaFrmConta,
  ncaK, ncDebug, ncaFrmTotal,
  ncFirewall, 
  ncaFrmCriarConta2, ncaFrmPanTopo, 
  ncafbVendas2, uLicEXECryptor,
  ncKiteApi, ncafbVendasTab, ncaWebBanner, ncaConfigRecibo,
  ncFrmCriarConta, ncaFrmPopupAss, ncaAlertaTrial, ncaDMComp, ncafbOrcamento,
  ncGuidUtils, ncaDocMgr, ncaGM_FrmParam, ncaTermID, nexUrls, ncaFrmDevolucao,
  ncServAtualizaLic_Indy, ncIPAddr, ncafbCupom, ncaFrmRecursoPremium,
  ncaFrmReativarNF, ncaFrmMigrarPremium, ncHttp, ncaFrmPanFor,
  ncaFrmListaFornecedores, ncaFrmSuporteDB, ncaFrmEstado, ncaFrmConfig_Pais,
  ncaFrmTaxPesq, uNexTransResourceStrings_PT, ncaFrmEmailUsuario, ncafbNFCupom,
  ncaFrmTrial_Sombra, ncaGeraSped, ncaFrmConsultaPreco;

{$R *.dfm}

resourcestring
  rsMostrarTextoBotoes = 'Mostrar Texto dos Botões';
  rsOcultarTextoBotoes = 'Ocultar Texto dos Botões';

  rsSemConta = 'Antes de testar o sistema é necessário registrar sua loja.';
  rsAtivar = 'Para usar o NEX é necessário confirmar o registro da sua loja.';
  rsOutroHD = 'O registro da sua loja está ativado para outro computador.';
  rsBloqueada = 'O registro da sua loja está bloqueado. Por favor, entre em contato com a equipe NEX!';

  rsNovoReg1 = '1. Registrar minha loja!';
  rsNovoReg2 = '1. Fazer novo registro com outro e-mail';

  rsOutroReg1 = '2. Já registrei minha loja: informar e-mail de registro';
  rsOutroReg2 = '2. Usar outro registro já existente';
  
  rsRedePremium = 
    'Para usar o NEX em rede é necessário ser um assinante PREMIUM.';

  rsCriarSenha = 'Criar Senha';
  rsAlterarSenha = 'Alterar Senha';

  rsConexaoCaiu = 'Erro de conexão com o servidor NEX. O NexAdmin será fechado.';

  rsEmTesteAte = 'em teste até';
  rsVencimento = 'vencimento';

const
  ss_startthreads     = 1;
  ss_atualizatela     = 2; 
  ss_dspri_visible    = 3;
  ss_loadwebitens     = 4;
  ss_checasenhaconta  = 5;
  ss_checaredepremium = 6;
  ss_revisarproduto   = 7;
  ss_admin_webpopup   = 8;
  ss_lasttimers       = 9;
  

  ss_max              = 9;  
  
type  
  TThread_AbriuAdmin = class ( TThread )
  protected
    constructor Create;
    procedure Execute; override;
  end;
  

function PremiumOk: Boolean;
begin
  Result := False;
  case gConfig.StatusConta of
    scSemConta : begin
      ShowMessage(rsSemConta);
      TFrmCriarConta2.CreateParented(Application.ActiveFormHandle).ShowModal;
    end;
    scAtivar   : begin
      ShowMessage(rsAtivar);
      TFrmCriarConta2.CreateParented(FrmPri.Handle).Mostrar(3);
      Exit;
    end;
    scOutroHD  : begin
      ShowMessage(rsOutroHD);
      TFrmCriarConta2.CreateParented(FrmPri.Handle).Mostrar(5);
      Exit;
    end;
    scBloqueada : begin
      ShowMessage(rsBloqueada);
      Exit;
    end;
  else
    Result := True;
  end;
end;

function IndexToFormClass(aIndex: Integer): TFrmBaseClass;
begin
  case aIndex of
    0 : Result := TfbVendas2;
    1 : Result := TfbClientes;
    2 : Result := TfbProdEst;
    3 : Result := TfbFornecedores;
    5 : Result := TfbCaixa;
    6 : Result := TfbUsuarios;
    7 : Result := TfbEst;
    8 : Result := TfbOrcamento;
    9 : Result := TfbNFCupom;
  end;
end;

function SimNao(S: String): Boolean;
begin
  Result := SimNaoH(S, Application.ActiveFormHandle);
end;                

function SimNaoH(S: String; H : HWND; const aDefNo: Boolean = False): Boolean;
var I : Integer;
begin
  if aDefNo then
    I := MB_DEFBUTTON2 else
    I := 0;
  Result := (MessageBox(H, PChar(S), 'Atenção',
             MB_YESNO + MB_ICONQUESTION + MB_APPLMODAL + I) = IDYES)
end; 

procedure ShowMsg(S: String; aBeep: Boolean = False);
begin
  if aBeep then Beep;
  MessageBox(Application.ActiveFormHandle, PChar(S), 'Atenção',
             MB_OK + MB_ICONINFORMATION + MB_APPLMODAL);
end;

procedure TFrmPri.TentaConectar(Reconexao: Boolean);
begin
  DebugMsg('TFrmPri.TentaConectar 1');

  Caption := 'Nex | NexAdmin | '+SLingua;

  with TFrmNexLogin.Create(Self) do
  ShowModal;

  if GShutingdown or (not Dados.CM.Ativo) then begin
    Close;
    Exit;
  end; 

  if not Dados.AbreDB then Exit;

  PostMessage(Handle, WM_SYSCOMMAND, SC_MAXIMIZE, 0);

  PostMessage(Handle, wm_startadmin, 0, 0);
end;

procedure TFrmPri.Timer1Timer(Sender: TObject);
begin
  Close;
end;
       
procedure TFrmPri.Timer2Timer(Sender: TObject);
begin
  if not Permitido(daAtenderClientes) then Exit;

  Timer2.Enabled := False;
end;

procedure TFrmPri.TimerAvisoAssTimer(Sender: TObject);
begin
  TimerAvisoAss.Enabled := False;
  if not TFrmPopupAss.Mostrar then 
    TpanAlertaTrial.Exibir(Self);
end;

procedure TFrmPri.TimerFimTrialTimer(Sender: TObject);
begin
  TimerFimTrial.Enabled := False;
  if gConfig.TrialVencido then 
    with ThttpThreadGet.Create(gUrls.Url('contas_infoplanos'), 'conta='+gConfig.Conta, False, True) do begin
      OnTerminate := OnTerminateInfoPlanos;
      Resume;
    end;  
end;

procedure TFrmPri.TimerFirewallTimer(Sender: TObject);
begin
  TimerFirewall.Enabled := False;
  try
    allowexceptionsonFirewall;
    addApplicationToFirewall('NexAdmin', ParamStr(0));
  finally
    TimerFirewall.Interval := 60000 * 5;
    TimerFirewall.Enabled := True;
  end;
end;

procedure TFrmPri.TimerHintTimer(Sender: TObject);
begin
  TimerHint.Enabled := False;
  HC.HideHint;
end;

function TFrmPri.VersaoStr: String;
begin
  Result := IntToStr(Versoes.Versao);
  Result := Result[1] + '.' + Result[2] + '.' + Result[3] + Copy(SelfVersion, 6, 20);
end;

procedure TFrmPri.wmAtualizaDireitosConfig(var Msg: TMessage);
begin
  AtualizaDireitos;
end;

procedure TFrmPri.wmAtualizaLic(var Msg: TMessage);
begin
  try
    ObtemRegistroNex;
  finally
  end;
end;

procedure TFrmPri.wmDownloadIntInfo(var Msg: TMessage);
var DI : TncThDownloadInfo;
begin
  DI := TncThDownloadInfo(Msg.wParam);
  with DI do 
  try
    DebugMsg('TFrmPri.OnDownloadIntDone - aArq: ' + Arq + ' - aVersaoServ: ' + IntToStr(VersaoServ) +  ' - aErro: ' + IntToStr(Erro));
    if Erro=0 then begin
      slConfig.Values[Arq] := IntToStr(VersaoServ);
      slConfig.SaveToFile(ConfigName);
    end;
    DebugMsg('TFrmPri.OnDownloadIntDone 2');
  finally
    DI.Free;
  end;
end;

procedure TFrmPri.wmInfoCampanha(var Msg: TMessage);
var IC: TInfoCampanha;
begin
  if GShutingdown then exit;

  IC := TinfoCampanha(Msg.WParam);
  try
    DM.SalvaInfoCampanha(IC);
  finally
    IC.Free;
  end;
end;


procedure TFrmPri.wmStartAdmin(var Msg: TMessage);
begin
  gRecibo.Load;
  gRecibo.ImportarModelos;

  FM.Mostrar(TfbVendas2, 0, 0);

  AtualizaDireitos;

  PostMessage(Handle, wm_startstep, 1, 0);
end;

procedure TFrmPri.wmStartStep(var Msg: TMessage);
begin
  DebugMsg(Self, 'wmStartStep '+Msg.WParam.ToString);
  try
    case Msg.WParam of
      ss_atualizatela     : self.ssAtualizaTela;
      ss_dspri_visible    : self.ssDspriVisible;
      ss_admin_webpopup   : self.ssAdminWebPopup;
      ss_loadwebitens     : self.ssLoadWebItens;
      ss_checasenhaconta  : self.ssChecaSenhaConta;
      ss_checaredepremium : self.ChecaRedePremium;
      ss_revisarproduto   : self.ssRevisarProduto;
      ss_startthreads     : self.ssStartThreads;
      ss_lasttimers       : self.ssLastTimers;
    end;
  except
    on E: Exception do 
      DebugEx(Self, 'smStartStep', E);
  end;
  
  if Msg.WParam<ss_Max then 
    PostMessage(Handle, wm_startstep, Msg.WParam+1, 0);
end;

procedure TFrmPri.wmAbreAba(var Msg: TMessage);
//var
//  I : TAbreAba;
//  F : PfmFormInfo;
begin
  {I := TAbreAba(Msg.WParam);
  try
    F := FM.FormByClass(TfbMaq);
    if (F<>nil) and (F^.fiInstance<>nil) then
      TfbMaq(F^.fiInstance).OpenRefreshWebTab(I.Titulo, I.URL);
  finally
    I.Free;
  end;}
end;


procedure TFrmPri.wmAlignPanPlano(var Msg: TMessage);
begin
  lbPromptPlano.Left := 2000;
  lbPromptPlano.Realign;
  lbPlano.Left := 2000;
  lbPlano.Realign;
  lbPromptVenc.Left := 2000;
  lbPromptVenc.Realign;
  lbVenc.Left := 2000;
  lbVenc.Realign;
  shape2.Left := 2000;
  lbPromptVersao.Left := 2000;
  lbPromptVersao.Realign;
  lbVersao.Left := 2000;
  lbVersao.Realign;
  shape1.Left := 2000;
  imgConta.Left := 2000;
  lbConta.Left := 2000;
  lbConta.Realign;
  btnPais.Left := 2000;
  btnPais.Realign;
end;

procedure TFrmPri.cmSairClick(Sender: TObject);
begin
  ClicouSair := True;
  Close;
end;

procedure TFrmPri.cmSuporteRemotoClick(Sender: TObject);
begin
  DebugMsg(Self, 'cmSuporteRemoto');
  ChamaSuporteRemoto;
end;

function StringIsTrue(S: String): Boolean;
begin
  Result := SameText(S, '1') or SameText(S, 'S') or SameText(S, 'Y') or SameText(S, 'T');
end;

procedure TFrmPri.FormShow(Sender: TObject);
begin
  DebugMsg('TFrmPri.FormShow - SLingua = '+SLingua);
  TentaConectar(False);
end;

function TFrmPri.GetShowCaption: Boolean;
begin
  Result := cmClientes.ShowCaption;
end;

function TFrmPri.IsDocMgr: Boolean;
begin
  Result := StringIsTrue(slConfig.Values['docmgr']) or SameText(ParamStr(1), 'docmgr');
end;

procedure TFrmPri.lbContaClick(Sender: TObject);
var P : TPoint;
begin
  P.X := 0;
  P.Y := 0;
  P := lbConta.ClientToScreen(P);
  P.Y := P.Y + lbConta.Height;
  P.X := FrmPri.Left + FrmPri.Width;
  pmRegistro.Popup(P.X, P.Y);
end;

procedure TFrmPri.lbPromptPlanoClick(Sender: TObject);
begin
  OpenTrack('assinar', 'menupri');
end;

procedure TFrmPri.LoadDckMgr;
var
  S: String;
begin
  if (Versoes.Versao<250) or DckMgrLoaded then Exit;
  DckMgrLoaded := True;
                             
  S := ExtractFilePath(ParamStr(0))+'NexAdmin5.lay';
  if FileExists(S) then 
    dckMgr.LoadLayoutFromIniFile(S);
end;

procedure TFrmPri.MakeChatVisible(Sender: TObject);
begin
end;

function TFrmPri.MesmoPC(aPC: String): Boolean;
var
  IP : TLocalIPObj;
  I : Integer;
begin
  Result := True;
  IP := TLocalIPObj.Create;
  try
    if SameText(aPC, 'localhost') then Exit;
    if SameText(aPC, '127.0.0.1') then Exit;
    if SameText(aPC, GComputerName) then Exit;
    for I := 0 to IP.IPCount-1 do
      if SameText(IP.GetIPFromList(I), aPC) then Exit;
  finally
    IP.Free;
  end;
  Result := False;
end;

procedure TFrmPri.MostraHint(X, Y: Integer; aHeader, aStr: String);
begin
  HC.ShowHint(X, Y, aHeader, aStr);
  TimerHint.Enabled := False;
  TimerHint.Enabled := True;
end;

procedure TFrmPri.MostrarCaixaAtual;
begin
  TfbCaixa(FM.FormAtivo).MostrarAtual;
end;

procedure TFrmPri.MostrarCaixasAnteriores;
begin
  TfbCaixa(FM.FormAtivo).MostrarAnteriores;
end;

procedure TFrmPri.NewRestSpaceTimer;
begin
  with TTimer.Create(Self) do begin
    Interval := 50;
    Enabled := True;
    OnTimer := OnAjustaRestSpaceTimer;
  end;
end;

procedure TFrmPri.OnAjustaRestSpaceTimer(Sender: TObject);
begin
  try
    AjustaRestSpace;
  finally
    Sender.Free;
  end;
end;

procedure TFrmPri.OnClickWebBotao(Sender: TObject);
begin
  with TncaWebBotao(TControl(Sender).Tag) do 
  if Data.Blank then
    ShellStart(Data.Url)
  else begin
    Paginas.ActivePage := Tab;
    if not WebTab.Navegou then WebTab.NavegaURL;
  end;
end;

procedure TFrmPri.OnCloseConfirmarTrial(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  PostMessage(handle, wm_atualizalic, 0, 0);
end;

procedure TFrmPri.OnDestroyFrmWebTabs(Sender: TObject);
begin
end;

procedure TFrmPri.OnTerminateInfoPlanos(Sender: TObject);
var S: String;
begin
  S := ThttpThreadGet(Sender).FRes;
  if S>'' then begin
    FInfoPlanos := S;
    with ThttpThreadGet.Create(gUrls.Url('info_server'), '', False, True) do begin
      OnTerminate := OnTerminateInfoServer;
      Resume;
    end;
  end;
end;

procedure TFrmPri.OnTerminateInfoServer(Sender: TObject);
var S: String;
begin
  S := ThttpThreadGet(Sender).FRes;
  if S>'' then begin
    FInfoServer := S;
    TFrmTrial_sombra.Create(self).ShowModal;
  end;
end;

procedure TFrmPri.cmExportarClick(Sender: TObject);
var F: TFrmBase;
begin
  F := FM.FormAtivo;
  if Assigned(F) then F.cmExportarClick(nil);
end;

procedure TFrmPri.cmImprimirClick(Sender: TObject);
var F: TFrmBase;
begin
  F := FM.FormAtivo;
  if Assigned(F) then F.cmImprimirClick(nil);
end;

procedure TFrmPri.cmLayoutAddRemColsClick(Sender: TObject);
var F: TFrmBase;
begin
  F := FM.FormAtivo;
  if Assigned(F) then F.cmLayCustomizeClick(nil);
end;

function TFrmPri.FocusColor: TColor;
begin
  Result := cxEditStyleController1.StyleFocused.Color;
end;

procedure TFrmPri.FormClose(Sender: TObject; var Action: TCloseAction);
var 
  S: String;
  Ini : TIniFile;
begin
  if Timer1.Enabled then begin
    try
      FM.Clear;
    except
    end;
  end else begin
    try
      if Dados.CM.Ativo then begin
        S := ExtractFilePath(ParamStr(0))+'NexAdmin5.lay';
        dckMgr.SaveLayoutToIniFile(S);
    
      end;
    except
    end;

    Action := caNone;
    Timer1.Enabled := True;
  end;
end;

procedure AjustaWebBotao(B: TncaWebBotao);
begin
  if not B.Data.Blank then 
  if B.Btn.Down then begin
    B.Btn.AutoGrayScale := False;
    B.Btn.Style.Font.Style := [fsBold];
  end else begin
    B.Btn.AutoGrayScale := B.Data.Gray;
    if not B.Data.Bold then
      B.Btn.Style.Font.Style := [];
  end;
end;

procedure TFrmPri.AjustaBotao(B: TdxBarLargeButton);
begin
  B.AutoGrayScale := not B.Down;
  if B.Down then
    B.Style := styleSelecionado else
    B.Style := cxStyle1;
end;

procedure TFrmPri.FMChange(Sender: TObject);
var 
  F: TFrmBase;
  I: Integer;
begin
  if FM.FormAtivo is TfbCaixa then begin
    FM.FormAtivo.FiltraDados;
    F := TfbCaixa(FM.FormAtivo).FM.FormAtivo;
    if F is TfbTran then
      TfbTran(F).Refresh;
  end else
  if FM.FormAtivo is TfbClientes then 
    TfbClientes(FM.FormAtivo).Timer2.Enabled := True
  else
  if FM.FormAtivo is TfbProdEst then
    TfbProdEst(FM.FormAtivo).AtivaTimerBusca
  else
  if FM.FormAtivo is TfbFornecedores then
    TfbFornecedores(FM.FormAtivo).Timer2.Enabled := True;

  AjustaBotao(cmVendas);
  AjustaBotao(cmClientes);
  AjustaBotao(cmProdutos);
  AjustaBotao(cmFornecedores);
  AjustaBotao(cmCaixa);
  AjustaBotao(cmEstatisticas);
  AjustaBotao(cmUsuarios); 
  AjustaBotao(cmOrcamentos);
  AjustaBotao(cmNFe);

  cmPlano.Visible := ivNever;
  cmPlano.Visible := ivAlways; 

  if Assigned(gWebBotoes) then
  for I := 0 to gWebBotoes.Count - 1 do
    AjustaWebBotao(gWebBotoes.Botao[I]);
end;

procedure TFrmPri.AddWebTab(S: String);
//var P : PfmFormInfo;
begin
  //P := FM.FormByClass(TfbMaq);
  //if Assigned(P) and (P^.fiInstance<>nil) then
  //  TfbMaq(P^.fiInstance).AddWebTab(S);
end;

procedure TFrmPri.AjustaRestSpace;
var I, LastExp: Integer;
begin
  LastExp := -1;
{  for I := 0 to NavBar.Groups.Count - 1 do with NavBar.Groups[I] do 
    if Expanded and (I>LastExp) then LastExp := I;

  for I := 0 to NavBar.Groups.Count - 1 do with NavBar.Groups[I] do
    UseRestSpace := (I=LastExp);}
end;

procedure TFrmPri.AjustaSBCaptions;
var W: Integer;
begin
  if gConfig.EscondeTextoBotoes then
    W := 0 else
    W := 80;
    
  cmClientes.ShowCaption := not gConfig.EscondeTextoBotoes;
  cmProdutos.ShowCaption := cmClientes.ShowCaption;
  cmCaixa.ShowCaption := cmClientes.ShowCaption;
  cmUsuarios.ShowCaption := cmClientes.ShowCaption;
  cmEstatisticas.ShowCaption := cmClientes.ShowCaption;
  cmVendas.ShowCaption := cmClientes.ShowCaption;
  cmFornecedores.ShowCaption := cmClientes.ShowCaption;
  cmNFe.ShowCaption := cmClientes.ShowCaption;
  cmOrcamentos.ShowCaption := cmClientes.ShowCaption;

  cmClientes.Width := W;
  cmProdutos.Width := W;
  cmCaixa.Width := W;
  cmUsuarios.Width := W;
  cmEstatisticas.Width := W;
  cmVendas.Width := W;
  cmFornecedores.Width := W;
  cmNFe.Width := W;
  cmOrcamentos.Width := W;

  if Assigned(gWebBotoes) then
    gWebBotoes.RefreshShowCaption;
end;

procedure TFrmPri.AjustaVersao;
var S: String;

procedure UpdDataLic(D: TDateTime);
begin
  lbVenc.Caption := FormatDateTime(FormatSettings.ShortDateFormat, D);
  if D<=Date then
    lbVenc.Style.TextColor := clRed else
    lbVenc.Style.TextColor := clBlack;
end;

begin
  DebugMsg(Self, 'AjustaVersao');
  PostMessage(handle, wm_alignpanplano, 0, 0);

  if gConfig.IsPremium then begin
    if gConfig.DVA>0 then 
      UpdDataLic(gConfig.DVA) else
      UpdDataLic(gConfig.DataLic);
    lbVenc.Visible := True;  
  end else
    lbVenc.Visible := False;

  if lbVenc.Visible then begin
    if (not gConfig.OnTrial) then lbVenc.Caption := lbVenc.Caption;

    if gConfig.OnTrial then 
      lbPromptVenc.Caption := rsEmTesteAte else
      lbPromptVenc.Caption := rsVencimento;
    lbPromptVenc.Visible := True;  
  end else
    lbPromptVenc.Visible := False;

  if gConfig.OnTrial or gConfig.IsFree then
    cmAssineAqui.Visible := ivAlways else
    cmAssineAqui.Visible := ivNever;
    

  lbVersao.Caption := prefixo_versao + Copy(SelfVersion, 7, 20);
  if gConfig.FreePremium then begin
    lbPromptPlano.Visible := True;
    lbPlano.Visible := True;
    shape2.Visible := True;
  
    if gConfig.IsPremium then begin
      if gConfig.Pro then 
        lbPlano.Caption := 'PRO' else
        lbPlano.Caption := 'PREMIUM';
    end else 
      lbPlano.Caption := 'FREE';
    
  end else begin
    lbPromptPlano.Visible := False;
    lbPlano.Visible := False;
    lbPromptVenc.Visible := False;
    lbVenc.Visible := False;
    shape2.Visible := False;
  end;
    
  lbConta.Caption := gConfig.Conta;
end;

procedure TFrmPri.AjustaVisSenha;
begin
  if Dados.CM.UA.Senha='' then
    cmAlterarSenha.Caption := rsCriarSenha else
    cmAlterarSenha.Caption := rsAlterarSenha;

  if FM.FormAtivo is TfbUsuarios then
    TfbUsuarios(FM.FormAtivo).AtualizaBotoes;  
end;

procedure TFrmPri.AEException(Sender: TObject; E: Exception);
begin
  if (E is EnxPooledTransportException) and
     (EnxPooledTransportException(E).ErrorCode = DBIERR_SERVERCOMMLOST) then
  begin
    Dados.CM.Ativo := False;
    Dados.ServRem.Ativo := False;
    Dados.nxTCPIP.Active := False;
    Close;   
    ShowMessage(rsConexaoCaiu);
  end else
    Application.ShowException(E);
end;

procedure TFrmPri.AEShortCut(var Msg: TWMKey; var Handled: Boolean);
var CodCli: Integer;
begin
  with Dados do
  if Msg.CharCode=vk_f8 then begin
    DebugMsg(Self, 'AEShortCut - '+Msg.Msg.ToString);
    if not SameText(slConfig.Values['ignoraf8'], 'S') then
      ChamaSuporteRemoto;
  end;
  if Msg.CharCode=vk_f12 then begin
    AbreSuporteDB;
  end;
  if (Msg.CharCode=vk_f11) and (cmAbreGaveta.Visible=ivAlways) then begin
    cmAbreGaveta.Click;
  end;
  
{  else
  if (Msg.CharCode=116) and CM.Ativo then begin
    CodCli := TFrmLocalizaCli.Create(nil).Localizar;
    if CodCli>0 then
    if tbCli.Locate('ID', CodCli, []) then
      TFrmCadCli.Create(nil).Editar(tbCli, nil) else
      Raise ENexCafe.Create('Cliente não encontrado!');
  end;}
end;
  
procedure TFrmPri.AtualizaConfig;
begin
end;

procedure TFrmPri.AtualizaDireitos;

function SBBloqueioSiteExiste: Boolean;
var I : Integer;
begin
  Result := True;
{  for I := 0 to SB.Groups[0].ItemCount-1 do
    if SB.Groups[0].Items[I].Tag = cmBloqueioSite.Tag then
      Exit;
  Result := False;}
end;

begin
  if Trim(Dados.tNFConfigEnd_UF.Value)>'' then begin 
    cmNFe.ButtonStyle := bsChecked ;
    cmNFe.GroupIndex := 1;
  end else begin
    cmNFe.ButtonStyle := bsDefault;
    cmNFe.GroupIndex := 0;
  end;

  btnPais.OptionsImage.ImageIndex := Dados.ImgIndexPais;

  if slConfig.Values['dev']='1' then
    cmDev.Visible := ivAlways;

  cmNovoReg.Enabled := Dados.CM.UA.Admin;
  cmOutroReg.Enabled := Dados.CM.UA.Admin;

  if gRecibo.MostrarGaveta and (gRecibo.StrAbreGaveta>'') then 
    cmAbreGaveta.Visible := ivAlways else
    cmAbreGaveta.Visible := ivNever;

  cmAbreGaveta.Enabled := Permitido(daAbrirGaveta);  

  if gConfig.Conta='' then begin
    cmNovoReg.Caption := rsNovoReg1;
    cmOutroReg.Caption := rsOutroReg1;
  end else begin
    cmNovoReg.Caption := rsNovoReg2;
    cmOutroReg.Caption := rsOutroReg2;
  end;

  if SameText(gConfig.PaisNorm, 'BR') then begin
    if Dados.tNFConfigRemoverNFCe.Value then begin
      cmNFe.Visible := ivNever;
      if FM.FormAtivo is TfbNFCupom then
        FM.Mostrar(TfbVendas2);
      cmReativarNF.Visible := ivAlways;
    end else begin
      cmNFe.Visible := ivAlways;
      cmReativarNF.Visible := ivNever;
    end;
  end else begin
    cmNFe.Visible := ivNever;
    cmReativarNF.Visible := ivNever;
  end;

  if gConfig.Pro and gConfig.IsPremium then
    cmMigrar.Visible := ivAlways else
    cmMigrar.Visible := ivNever;

  
  cmUsuarios.Enabled := Dados.CM.UA.Admin;
  cmEstatisticas.Enabled := Permitido(daEstatisticas);
  cmFornecedores.Enabled := Permitido(daFornecedoresVerLista);
  cmOrcamentos.Enabled := Permitido(daOrcAcessar);

  cmImprimir.Enabled := Permitido(daImpExp);
  cmExportar.Enabled := Permitido(daImpExp);

  if Dados.CM.Config.EscondeTextoBotoes then
    cmMostrarTextoBotoes.Caption := rsMostrarTextoBotoes else
    cmMostrarTextoBotoes.Caption := rsOcultarTextoBotoes;

  AjustaSBCaptions;

  MostrarTextoBotoes := not Dados.CM.Config.EscondeTextoBotoes;    

  AjustaVersao;
end;

procedure TFrmPri.btnPaisClick(Sender: TObject);
begin
  TFrmPais.Create(Self).ShowModal;
end;

procedure TFrmPri.CenterAds;
begin
  if Assigned(gWebBanners) then 
    gWebBanners.Resize;
end;

procedure TFrmPri.ChamaSuporteRemoto;
var S: String;
begin
  DebugMsg(Self, 'ChamaSuporteRemoto');
  with Dados do 
  if TFrmSuporte.Create(nil).ObterSuporte then begin
    if CM.Ativo then 
      S := CM.UA.Nome else
      S := '';
    ChamaSuporte(S, ProgShortVer);
  end;
end;

procedure TFrmPri.ChecaRedePremium;
begin
  if not (gConfig.StatusConta in [scFree, scPremium, scPremiumVenc]) then Exit;  
  if gConfig.IsPremium and (not gConfig.Pro) then Exit;
  if MesmoPC(Dados.nxTCPIP.ServerName) then Exit;
  TFrmRecursoPremium.Create(Self).Mostrar(rsRedePremium, 'rede');
  Close;
end;

procedure TFrmPri.cmVerCodClick(Sender: TObject);
var S: String;
begin
  S := IntToStr(Versoes.Versao);
  S := nomeprog + ' Versão: ' + S[1] + '.' + S[2] + '.' + S[3] + Copy(SelfVersion, 6, 20);
  ShowMessage('          '+s+'          ');
end;

procedure TFrmPri.CustomDrawGridHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
var
  I: Integer;
begin
  AViewInfo.AlignmentVert := cxClasses.vaTop;
  ACanvas.Brush.Color := clWhite;
  ACanvas.FillRect(AViewInfo.Bounds);
  with AViewInfo, Bounds do
  begin
    ACanvas.Brush.Color := $00F4F4F4;

{    if bLeft in ABorders then

      ACanvas.FillRect(Rect(Left, Top, Left + 1, Bottom));

    if bTop in ABorders then

      ACanvas.FillRect(Rect(Left, Top, Right, Top + 1));}

    ACanvas.FillRect(Rect(Right - 1, Top, Right, Bottom));

//    ACanvas.FillRect(Rect(Left, Bottom - 1, Right, Bottom));

    ACanvas.Brush.Color := clWhite;

    ACanvas.DrawTexT(Column.Caption, Rect(Left+2, Top+2, Right-2, Bottom-2), AlignmentHorz, cxClasses.vaTop, True {Multiline}, False);


     for I := 0 to AreaViewInfoCount - 1 do

    begin

      if AreaViewInfos[I] is TcxGridColumnHeaderFilterButtonViewInfo then
      if TMYcxGridColumnHeaderFilterButtonViewInfo(AreaViewInfos[I]).GetVisible then

        LookAndFeelPainter.DrawFilterDropDownButton(ACanvas, AreaViewInfos[I].Bounds,

        GridCellStateToButtonState(AreaViewInfos[I].State), TcxGridColumnHeaderFilterButtonViewInfo(AreaViewInfos[I]).Active);

    end;
  end;
  ADone := True;

end;

procedure TFrmPri.CustomDrawIndicatorCell(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
  var ADone: Boolean);
begin
  ACanvas.Brush.Color := clWhite;
  ACanvas.FillRect(AViewInfo.Bounds);
  ACanvas.DrawImage(imgsIndicator, 0, 12, 0);
  ADone := True;
end;

procedure TFrmPri.cxButton1Click(Sender: TObject);
begin
  TFrmCriarConta2.Create(Self).ShowModal;
end;

procedure TFrmPri.cmAlterarSenhaClick(Sender: TObject);
var S: String;
begin
  with Dados.CM, UA do begin
    AtualizaCache;
    S := TFrmAlteraSenha.Create(nil).Editar(Senha, Nome);
    if S<>Senha then begin
      Senha := S;
      SalvaAlteracoesObj(UA, False);
      TFrmEmailUsuario.ChecaEmailUsuarioAtual;
    end;  
  end; 
end;

procedure TFrmPri.RefreshAds;
begin
  CenterAds;
end;

procedure TFrmPri.RefreshCaixaAberto;
var P : PfmFormInfo;
begin
  P := FM.FormByClass(TfbVendas2);
  if Assigned(P) and Assigned(P^.fiInstance) then 
    P^.fiInstance.FiltraDados;
end;

procedure TFrmPri.RefreshCaptionsNFCupom;
var F : PfmFormInfo;
begin
  F := FM.FormByClass(TfbNFCupom);
  if Assigned(F) and Assigned(F^.fiInstance) then TfbNFCupom(F^.fiInstance).FM.RefreshTabsCaption;
end;

procedure TFrmPri.refreshRevisarCadProduto(const aForce:boolean=false);
begin
    if (screen.ActiveForm=Self) or (aForce) then begin
        LockWindowUpdate(handle);
        try
                FRevisarProduto.refreshRevisarCadProduto(dpRevisarProduto, dsPri, dtRight, 0, aForce);
        finally
            LockWindowUpdate(0);
        end;
    end;
end;

procedure TFrmPri.TimerRevisarCadProdutoTimer(Sender: TObject);
begin
    TimerRevisarCadProduto.interval := kTimerRevisarCadProdutoInterval;
    refreshRevisarCadProduto;
end;

procedure TFrmPri.RefreshTran;
var F: TFrmBase;
begin
  F := FM.FormAtivo;
  if (F is TfbCaixa) then
    TfbCaixa(F).RefreshTran;
end;

procedure TFrmPri.RegistraForms;
begin
  FM.RegistraForm(tfbVendas2);
  FM.RegistraForm(TfbClientes);
  FM.RegistraForm(TfbProdEst);
  FM.RegistraForm(TfbCaixa);
  FM.RegistraForm(TfbUsuarios);
  FM.RegistraForm(TfbAvisos);
  FM.RegistraForm(TfbEst);
  FM.RegistraForm(TfbFornecedores);
  FM.RegistraForm(TfbOrcamento);
  FM.RegistraForm(TfbNFCupom);
end;

procedure TFrmPri.ssAdminWebPopup;
begin
  TAdminFrmWebPopup.Create(Self).Show;
end;

procedure TFrmPri.ssAtualizaTela;
begin
  if gConfig.fmt_moeda then gConfig.ApplyFmtMoeda;
  Caption := 'Nex | NexAdmin | ' + SLingua + ' | ' + Dados.CM.Username + ' | ' + ExtractFileDir(ParamStr(0));
  if not Dados.AbreDB then Exit;
  cmLogoff.Enabled := True;
  cmSubLayout.Enabled := True;
  cmSubExibir.Enabled := True;
  cmImprimir.Enabled := True;
  cmExportar.Enabled := True;
  cmAlterarSenha.Enabled := True;
  if IsDocMgr then cmDocMgr.Visible := ivAlways;
  AjustaVisSenha;
  if FindWindow('TncServBaseClassName_Nex', nil)<>0 then
    cmAbrirServ.Visible := ivAlways else
    cmAbrirServ.Visible := ivNever;
  AjustaVersao;
  LoadDckMgr;  
  FrmPanTopo.Verifica;
end;

procedure TFrmPri.ssChecaSenhaConta;
begin
  if Trim(gConfig.Conta)='' then 
    TFrmCriarConta2.CreateParented(Self.Handle).ShowModal else
    TFrmEmailUsuario.ChecaEmailUsuarioAtual;
end;

procedure TFrmPri.ssDspriVisible;
begin
  LockWindowUpdate(Handle);
  try
    dsPri.Visible := True;
    Application.ProcessMessages;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TFrmPri.ssLastTimers;
begin
  TimerFimTrial.Enabled := True;
  TimerAvisoAss.Enabled := True;
end;

procedure TFrmPri.ssLoadWebItens;
begin
  gWebBanners.LoadBanners(gConfig.Banners);
  gWebBotoes.FromString(gConfig.Botoes);
end;

procedure TFrmPri.ssRevisarProduto;
begin
  FRevisarProduto := TfbRevisarProduto.Create(Self, dpRevisarProduto);
  FRevisarProduto.FiltraDados;
  FRevisarProduto.panPri.Parent := dpRevisarProduto;
  TimerRevisarCadProduto.Interval := 50;
  TimerRevisarCadProduto.Enabled := true;
end;

procedure TFrmPri.ssStartThreads;
begin
  if not SameText(ParamStr(1), 'afterinst') then TThread_AbriuAdmin.Create;
  if gConfig.Conta='' then kapi_DownloadPreReg;
  if Dados.tbIC.IsEmpty then TThreadInfoCampanha.Create(Handle);
end;

procedure TFrmPri.dpCHATDock(Sender, Site: TdxCustomDockControl;
  ADockType: TdxDockingType; AIndex: Integer);
begin
  Sender.CaptionButtons := [cbHide];
  Site.CaptionButtons := [cbHide];
end;

procedure TFrmPri.dpImpCloseQuery(Sender: TdxCustomDockControl;
  var CanClose: Boolean);
begin
  CanClose := False;
end;

procedure TFrmPri.cmLaySalvarClick(Sender: TObject);
var F: TFrmBase;
begin
  F := FM.FormAtivo;
  if Assigned(F) then F.cmLaySalvarClick(nil);
end;

procedure TFrmPri.cmAbrirServClick(Sender: TObject);
var H : HWND;
begin
  H := FindWindow('TncServBaseClassName', nil);
  if H<>0 then 
    PostMessage(H, wm_abreserv, 1, 0);
end;

procedure TFrmPri.cmAtualizarNexClick(Sender: TObject);
begin
  OpenTrack('atualizar', 'menuajuda');
end;

procedure TFrmPri.cmLogoffClick(Sender: TObject);
begin
  Close;
  ShellStart(ParamStr(0), 'afterlogoff');
end;

procedure TFrmPri.dxBarButton5Click(Sender: TObject);
begin
  OpenTrack('termos', 'menuajuda');
end;

procedure TFrmPri.cmDEVClick(Sender: TObject);
begin
  frmConsultaPreco := TfrmConsultaPreco.Create(application);
  frmConsultaPreco.ShowModal;
  frmConsultaPreco.Free;

  {frmGeraSped := TfrmGeraSped.Create(application);
  frmGeraSped.ShowModal;
  frmGeraSped.Free;}
end;

procedure TFrmPri.cmDocMgrClick(Sender: TObject);
var aDoc: String;
begin
  aDoc := '';
  TFrmDocMgr.Create(Self).Run(False, tipodoc_venda, aDoc, True);
end;

procedure TFrmPri.cmAbreGavetaClick(Sender: TObject);
begin
  if Permitido(daAbrirGaveta) then
    dmComp.AbreGaveta;
end;

procedure TFrmPri.cmNFeClick(Sender: TObject);
var aUF: String;
begin
  with Dados do 
  if Trim(tNFConfigEnd_UF.Value)='' then begin
    aUF := TFrmEstado.Create(nil).ObtemEstado('');
    if aUF>'' then begin
      tNFConfig.Edit;
      tNFConfigEnd_UF.Value := aUF;
      tNFConfig.Post;
      cmNFe.ButtonStyle := bsChecked;
      cmNFe.GroupIndex := 1;
      cmNFe.Down := True;
      cmMaquinasClick(cmNFe);
    end;
  end else
    cmMaquinasClick(cmNFe);
end;

procedure TFrmPri.cmNovoRegClick(Sender: TObject);
begin
  TFrmCriarConta2.Create(Self).Mostrar(1);
end;

procedure TFrmPri.cmOutroRegClick(Sender: TObject);
begin
  TFrmCriarConta2.Create(Self).Mostrar(4);
end;

procedure TFrmPri.cmReativarNFClick(Sender: TObject);
begin
  TFrmReativarNF.Create(Self).ShowModal;
end;

procedure TFrmPri.cmRefreshAppClick(Sender: TObject);
var S: String;
begin
  if (GetTickCount-LastGetApp)>10000 then begin
    LastGetApp := GetTickCount;
    S := GetApp;
    if S>'' then 
      Dados.CM.SalvaApp(S);
  end;
end;

procedure TFrmPri.cmTelefonesClick(Sender: TObject);
var S: String;
begin
//  TFrmContato.Create(Self).ShowModal;

  if not gConfig.IsPremium then 
    S := 'pag_suporte_free' 
  else
  if gConfig.Pro then
    S := 'pag_suporte_pro' else
    S := 'pag_suporte_premium';

  ShellStart(gUrls.Url(S, 'conta='+gConfig.Conta+'&prog=1&ver='+SelfShortVer));
end;

procedure TFrmPri.cmTutoriaisClick(Sender: TObject);
begin
  OpenTrack('ajuda', 'menuajuda');
end;

procedure TFrmPri.cmComprarAssClick(Sender: TObject);
begin
  OpenTrack('assinar', 'menupri');
end;

procedure TFrmPri.dxBarStatic1Click(Sender: TObject);
begin
  ShowMessage('Ok');
end;

procedure TFrmPri.cmLayRestaurarClick(Sender: TObject);
var F: TFrmBase;
begin
  F := FM.FormAtivo;
  if Assigned(F) then F.cmLayRestaurarClick(nil);
end;

procedure TFrmPri.FormCreate(Sender: TObject);
begin
  FInfoServer := '';
  FInfoPlanos := '';
  Set8087CW($133f);
  PixelsPerInch := 96;
  VerProg := SelfVersion;
  RegistraForms;
  AjustaVersao;
  gWebBanners := TncWebBanners.Create(Self);
  gWebBotoes := TncaWebBotoes.Create(barAtalhos, Paginas, cmClientes.Style, cmClientes.Width);
  gWebBotoes.ShowCaption := GetShowCaption;
  gWebBotoes.OnClick := OnClickWebBotao;
end;

procedure TFrmPri.FormDestroy(Sender: TObject);
begin
  if Assigned(gWebBanners) then FreeAndNil(gWebBanners);
  if Assigned(gWebBotoes) then gWebBotoes.Free;
end;

procedure TFrmPri.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var msg : tmsg;
begin
  if SameText(slConfig.Values['ignoraf8'], 'S') and (Key=Key_F8) then begin
    DebugMsg(Self, 'FormKeyDown F8');
    ChamaSuporteRemoto;
  end;

  if (Key=Key_F10) then begin
    frmConsultaPreco := TfrmConsultaPreco.Create(application);
    frmConsultaPreco.ShowModal;
    frmConsultaPreco.Free;
  end;
  
  if FM.FormAtivo<>nil then
    FM.FormAtivo.processKeyDown(Sender, Key, Shift);
end;

procedure TFrmPri.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [#27] then Key := #0;
end;

procedure TFrmPri.FormResize(Sender: TObject);
begin
  CenterAds;
  if FM.FormAtivo<>nil then
    FM.FormAtivo.AtualizaDireitos;
end;

procedure TFrmPri.EscondeHint;
begin
  TimerHint.Enabled := False;
  HC.HideHint;
end;

procedure TFrmPri.cmMaquinasClick(Sender: TObject);
var 
  F : TFrmBaseClass;
begin
  F := IndexToFormClass(TControl(Sender).Tag);
//  cmSubExibir.Caption := 'E&xibir: ' + TdxBarItem(Sender).Caption;
  cmSubExibir.Tag := TControl(Sender).Tag;
  if (F<>nil) then
    FM.Mostrar(F, 0, 0);
end;
  
procedure TFrmPri.cmMigrarClick(Sender: TObject);
begin
  TFrmMigrarPremium.Create(Self).Mostrar(httpGet(gUrls.Url('contas_dataupgradeplano', 'conta='+gConfig.Conta)));
end;

procedure TFrmPri.cmMostrarTextoBotoesClick(Sender: TObject);
begin
  MostrarTextoBotoes := not MostrarTextoBotoes;
  if MostrarTextoBotoes then
    cmMostrarTextoBotoes.Caption := 'Ocultar Textos dos Botões' else  
    cmMostrarTextoBotoes.Caption := 'Mostrar Textos dos Botões' ;
  with Dados, CM do begin  
    tbConfig.Edit;
    tbConfigEscondeTextoBotoes.Value := not MostrarTextoBotoes;
    tbConfig.Post;
    Config.AtualizaCache;
    Config.EscondeTextoBotoes := not MostrarTextoBotoes;
    SalvaAlteracoesObj(Config, False);
   
    AjustaSBCaptions;
    
  end;  

  BroadcastAtualizaDireitosConfig;
end;

{ TMYcxGridColumnHeaderFilterButtonViewInfo }

function TMYcxGridColumnHeaderFilterButtonViewInfo.GetVisible: Boolean;
begin
  Result := inherited GetVisible;
end;

{ TThread_AbriuAdmin }


constructor TThread_AbriuAdmin.Create;
begin
  inherited Create(True);
  FreeOnTerminate := True;
  Resume;
end;

procedure TThread_AbriuAdmin.Execute;
var 
  sConta: String;
  lastDate: TDateTime;
  NextTry, MS : Cardinal;
const
  maxms = 1000 * 60 * 10;  

function URL: String;
begin
  Result := gUrls.Url('contas_abriuadmin', 'conta='+
            gConfig.Conta+'&cok='+BoolStr[gConfig.FreePremium or (gConfig.QtdLic>0)]+ // do not localize
            '&ver='+SelfShortVer+ // do not localize
            '&sw='+prefixo_versao+
            '&random='+TGuidEx.ToString(TGuidEx.NewGuid));
end;

function post: Boolean;
var 
  H: TidHttp;
  S: String;
begin
  Result := False;
  try
    H := TidHttp.Create(nil);
    try
      H.HandleRedirects := True;
      S := URL;
      S := H.Get(S);
      Result := True;
    finally
      H.Free;
    end;
  except
    on E: Exception do begin
      DebugMsg('ncaFrmPri.TThread_AbriuAdmin.Execute.Post: ' + S + ' - Exception: '+E.Message); // do not localize
    end;
  end;
end;

begin
  inherited;
  sConta := '';
  NextTry := 0;
  lastDate := 0;
  MS := 0;
  while (not Terminated) {and (not Application.Terminated)} do begin
    if (gConfig.Conta>'') and ((sConta<>gConfig.Conta) or (lastDate<>Date)) then 
    if GetTickCount>NextTry then
      if Post then begin
        sConta := gConfig.Conta;
        MS := 0;
        NextTry := 0;
        lastDate := Date;
      end else begin
        if MS<maxms then MS := MS + 30000;
        NextTry := GetTickCount + MS;
      end;
    Sleep(1000);
  end;
end;

initialization
  Randomize;

  RootLookAndFeel.NativeStyle := False;
  RootLookAndFeel.Kind := lfUltraFlat;

  if (not SameText(SLingua, 'en')) then begin
    cxSetResourceString(@cxSMenuItemCaptionCut, 'Recortar');
    cxSetResourceString(@cxSMenuItemCaptionCopy, '&Copiar');
    cxSetResourceString(@cxSMenuItemCaptionPaste, 'Colar');
    cxSetResourceString(@cxSMenuItemCaptionDelete, 'E&xcluir');
    cxSetResourceString(@cxSMenuItemCaptionLoad, '&Selecionar um arquivo...');
    cxSetResourceString(@cxSMenuItemCaptionSave, 'Salvar C&omo...');

        
    cxSetResourceString(@cxSGridNone, 'Nenhum');
    cxSetResourceString(@cxSGridSortColumnAsc, 'Ordenar Crescente');
    cxSetResourceString(@cxSGridSortColumnDesc, 'Ordenar Decrescente');
    cxSetResourceString(@cxSGridClearSorting, 'Não Ordenar');
    cxSetResourceString(@cxSGridGroupByThisField, 'Agrupar por esta coluna');
    cxSetResourceString(@cxSGridRemoveThisGroupItem, 'Remover do agrupamento');
    cxSetResourceString(@cxSGridGroupByBox, 'Agrupamento') ;
    cxSetResourceString(@cxSGridAlignmentSubMenu, 'Alinhamento');
    cxSetResourceString(@cxSGridAlignLeft, 'à Esquerda');
    cxSetResourceString(@cxSGridAlignRight, 'à Direita');
    cxSetResourceString(@cxSGridAlignCenter, 'ao Centro');        
    cxSetResourceString(@cxSGridRemoveColumn, 'Remover esta coluna');
    cxSetResourceString(@cxSGridFieldChooser, 'Selecionar Colunas');
    cxSetResourceString(@cxSGridBestFit, 'Tamanho ideal');
    cxSetResourceString(@cxSGridBestFitAllColumns, 'Tamanho ideal (Todas colunas)');
    cxSetResourceString(@cxSGridShowFooter, 'Rodapé');
    cxSetResourceString(@cxSGridShowGroupFooter, 'Rodapé em agrupamento');
    cxSetResourceString(@cxSGridSumMenuItem, 'Somar');
    cxSetResourceString(@cxSGridMinMenuItem, 'Min');
    cxSetResourceString(@cxSGridMaxMenuItem, 'Max');
    cxSetResourceString(@cxSGridCountMenuItem, 'Contar');
    cxSetResourceString(@cxSGridAvgMenuItem, 'Média');
    cxSetResourceString(@cxSGridNoneMenuItem, 'Nenhum');
    cxSetResourceString(@scxGridNoDataInfoText, '');
  

    cxSetResourceString(@scxGridRecursiveLevels, 'Você não pode criar niveis recursivos');

//  cxSetResourceString(@scxGridDeletingConfirmationCaption, 'Confirmar');
    cxSetResourceString(@scxGridDeletingFocusedConfirmationText, 'Apagar registro?');
    cxSetResourceString(@scxGridDeletingSelectedConfirmationText, 'Apagar todos registros selecionados?');

    cxSetResourceString(@scxGridNewItemRowInfoText, 'Clique aqui para adicionar um novo registro');

    cxSetResourceString(@scxGridFilterIsEmpty, '<Filtro está vazio>');

    cxSetResourceString(@scxGridCustomizationFormCaption, 'Customização');
    cxSetResourceString(@scxGridCustomizationFormColumnsPageCaption, 'Colunas');
    cxSetResourceString(@scxGridGroupByBoxCaption, 'Arraste aqui o cabeçalho de uma coluna para agrupar por esta coluna');
    cxSetResourceString(@scxGridFilterCustomizeButtonCaption, 'Customizar...');

    cxSetResourceString(@scxGridCustomizationFormBandsPageCaption, 'Bandas');

    cxSetResourceString(@scxGridConverterNotExistGrid, 'cxGrid não existet');
    cxSetResourceString(@scxGridConverterNotExistComponent, 'Componente não existe');
    cxSetResourceString(@scxImportErrorCaption, 'Erro de importação');

    cxSetResourceString(@scxNotExistGridView, 'Grid view não existe');
//  cxSetResourceString(@scxNotExistGridLevel, 'Grid level ativo não existe');
//  cxSetResourceString(@scxCantCreateExportOutputFile, 'Falha na criação do arquivo de exportação');
  
    cxSetResourceString(@cxSFilterRootButtonCaption, 'Filtro');
    cxSetResourceString(@cxSFilterAddCondition, 'Nova &Condição');
    cxSetResourceString(@cxSFilterAddGroup, 'Novo &Grupo');
    cxSetResourceString(@cxSFilterRemoveRow , '&Remover Linha');
    cxSetResourceString(@cxSFilterClearAll, 'Limpar &Tudo');
    cxSetResourceString(@cxSFilterFooterAddCondition, 'pressione o botão para adicionar uma nova condição');
    cxSetResourceString(@cxSFilterGroupCaption, 'se aplica as seguintes condições');
    cxSetResourceString(@cxSFilterRootGroupCaption , '<raiz>');
    cxSetResourceString(@cxSFilterControlNullString , '<vazio>');
    cxSetResourceString(@cxSFilterErrorBuilding, 'Não é possível montar o filtro nessa origem');
    cxSetResourceString(@cxSFilterDialogCaption, 'Filtro Customizado');
    cxSetResourceString(@cxSFilterDialogInvalidValue, 'Valor inválido');
    cxSetResourceString(@cxSFilterDialogUse, 'Usar');
    cxSetResourceString(@cxSFilterDialogSingleCharacter, 'para representar qualquer caracter');
    cxSetResourceString(@cxSFilterDialogCharactersSeries, 'para representar qualquer série de caracteres');
    cxSetResourceString(@cxSFilterDialogOperationAnd, 'E');
    cxSetResourceString(@cxSFilterDialogOperationOr, 'OU');
    cxSetResourceString(@cxSFilterDialogRows, 'Mostrar registros onde:');
    cxSetResourceString(@cxSFilterControlDialogCaption, 'Criador de Filtro');
    cxSetResourceString(@cxSFilterControlDialogNewFile, 'semtitulo.flt');
    cxSetResourceString(@cxSFilterControlDialogOpenDialogCaption, 'Abrir um filtro existente');
    cxSetResourceString(@cxSFilterControlDialogSaveDialogCaption, 'Salvar o filtro ativo para um arquivo');
    cxSetResourceString(@cxSFilterControlDialogActionSaveCaption , '&Salvar como...');
    cxSetResourceString(@cxSFilterControlDialogActionOpenCaption , '&Abrir...');
    cxSetResourceString(@cxSFilterControlDialogActionApplyCaption , 'A&plicar');
    cxSetResourceString(@cxSFilterControlDialogActionOkCaption, 'OK');
    cxSetResourceString(@cxSFilterControlDialogActionCancelCaption, 'Cancelar');
    cxSetResourceString(@cxSFilterControlDialogFileExt, 'flt');
    cxSetResourceString(@cxSFilterControlDialogFileFilter, 'Filttros (*.flt)|*.flt');

    cxSetResourceString(@cxSFilterOperatorEqual, 'seja igual a');
    cxSetResourceString(@cxSFilterOperatorNotEqual, 'seja diferente de');
    cxSetResourceString(@cxSFilterOperatorLess, 'seja menor que');
    cxSetResourceString(@cxSFilterOperatorLessEqual, 'seja menor que ou igual a');
    cxSetResourceString(@cxSFilterOperatorGreater, 'seja maior que');
    cxSetResourceString(@cxSFilterOperatorGreaterEqual, 'seja maior que ou igual a');
    cxSetResourceString(@cxSFilterOperatorLike, 'contenha');
    cxSetResourceString(@cxSFilterOperatorNotLike, 'não contenha');
    cxSetResourceString(@cxSFilterOperatorBetween, 'tenha valor entre');
    cxSetResourceString(@cxSFilterOperatorNotBetween, 'não tenha valor entre');
    cxSetResourceString(@cxSFilterOperatorInList, 'dentro de');
    cxSetResourceString(@cxSFilterOperatorNotInList, 'fora de');
    cxSetResourceString(@cxSFilterOperatorYesterday, 'seja ontem');
    cxSetResourceString(@cxSFilterOperatorToday, 'seja hoje');
    cxSetResourceString(@cxSFilterOperatorTomorrow, 'seja amanhã');
    cxSetResourceString(@cxSFilterOperatorLastWeek, 'seja semana passada');
    cxSetResourceString(@cxSFilterOperatorLastMonth, 'seja mês passado');
    cxSetResourceString(@cxSFilterOperatorLastYear, 'seja ano passado');
    cxSetResourceString(@cxSFilterOperatorThisWeek, 'seja esta semana');
    cxSetResourceString(@cxSFilterOperatorThisMonth, 'seja este mês');
    cxSetResourceString(@cxSFilterOperatorThisYear, 'seja este ano');
    cxSetResourceString(@cxSFilterOperatorNextWeek, 'seja a próxima semana');
    cxSetResourceString(@cxSFilterOperatorNextMonth, 'seja o próximo mês');
    cxSetResourceString(@cxSFilterOperatorNextYear, 'seja o próximo ano');
    cxSetResourceString(@cxSFilterAndCaption, 'e');
    cxSetResourceString(@cxSFilterOrCaption, 'ou');
    cxSetResourceString(@cxSFilterNotCaption, 'não');
    cxSetResourceString(@cxSFilterBlankCaption, 'branco');
    cxSetResourceString(@cxSFilterOperatorIsNull, 'esteja em branco');
    cxSetResourceString(@cxSFilterOperatorIsNotNull, 'nao esteja em branco');
    cxSetResourceString(@cxSFilterOperatorBeginsWith, 'comece com');
    cxSetResourceString(@cxSFilterOperatorDoesNotBeginWith, 'não comece com');
    cxSetResourceString(@cxSFilterOperatorEndsWith, 'termine com');
    cxSetResourceString(@cxSFilterOperatorDoesNotEndWith, 'não termine com');
    cxSetResourceString(@cxSFilterOperatorContains, 'contenha');
    cxSetResourceString(@cxSFilterOperatorDoesNotContain, 'nao contenha');
    cxSetResourceString(@cxSFilterBoxAllCaption , '(Todos)');
    cxSetResourceString(@cxSFilterBoxCustomCaption , '(Customizado...)');
    cxSetResourceString(@cxSFilterBoxBlanksCaption , '(Brancos)');
    cxSetResourceString(@cxSFilterBoxNonBlanksCaption , '(não Brancos)');
  end;

{  cxSetResourceString(@cxSMenuItemCaptionCut, 
      Items[1].Caption := cxGetResourceString(@cxSMenuItemCaptionCopy);
      Items[2].Caption := cxGetResourceString(@cxSMenuItemCaptionPaste);
      Items[3].Caption := cxGetResourceString(@cxSMenuItemCaptionDelete);
      Items[5].Caption := cxGetResourceString(@cxSMenuItemCaptionLoad);
      Items[6].Caption := cxGetResourceString(@cxSMenuItemCaptionSave);}
  
  
  

end.

