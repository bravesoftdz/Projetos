unit ncaFrmProduto;
{
    ResourceString: Dario 08/03/13
}

interface

{$I NEX.INC}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Variants,
  ExtCtrls, ncafbPesqCli, 
  Db, nxdb, ComCtrls, LMDBevel, LMDGraph,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  LMDFormDisplay, cxPC, cxControls, cxStyles, cxGraphics,
  cxEdit, cxMaskEdit, cxCurrencyEdit, cxDropDownEdit, cxMemo, cxVGrid,
  cxDBVGrid, cxInplaceContainer, dxBar, ufmFormBase, dxBarExtItems,
  kbmMemTable, cxCheckBox, cxImage, cxClasses, cxDBLookupComboBox, cxSpinEdit,
  LMDControl, 
  dxNavBarStyles, dxNavBarCollns, dxNavBarBase, dxNavBar, dxLayoutControl,
  cxDBEdit, cxLabel, LMDPNGImage, cxCalendar, cxImageComboBox, cxContainer,
  cxTextEdit, dxLayoutLookAndFeels, cxLookAndFeels, cxLookAndFeelPainters,
  cxPCdxBarPopupMenu, dxLayoutcxEditAdapters, dxLayoutContainer, cxButtonEdit,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Menus, ncaFrmProduto_Estoque,
  cxLookupEdit, cxDBLookupEdit, cxButtons, dxGDIPlusClasses, ImgList, ncMyImage,
  PngImage, frxClass, dxBarBuiltInMenu, dxBevel, dxLayoutControlAdapters,
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseGraphicButton,
  LMDCustomSpeedButton, 
  LMDSpeedButton, 
  ncaFrmNCMPesq, 
  cxRadioGroup, 
  ncaFrmBRTribPesq, 
  ncaFrmListaFornecedores,
  ncaFrmCESTPesq, 
  ncaFrmTaxPesq,
  ncDMdanfe_NFE, System.ImageList;

const
   kAlturaTotalFrmProduto = 555;

type
  TFrmProduto = class(TForm)
    BarMgr: TdxBarManager;
    QCat: TnxQuery;
    dsMT: TDataSource;
    cmKardex: TdxBarButton;
    LMDSimplePanel2: TLMDSimplePanel;
    Paginas: TcxPageControl;
    FMgr: TFormManager;
    cmGravar: TdxBarLargeButton;
    cmCancelar: TdxBarLargeButton;
    MT: TkbmMemTable;
    MTPreco: TCurrencyField;
    MTImagem: TGraphicField;
    MTCustoUnitario: TCurrencyField;
    MTPodeAlterarPreco: TBooleanField;
    MTNaoControlaEstoque: TBooleanField;
    dsCAT: TDataSource;
    MTFidelidade: TBooleanField;
    MTFidPontos: TIntegerField;
    MTEstoqueRepor: TFloatField;
    MTFornecedor: TIntegerField;
    MTEstoqueMin: TFloatField;
    MTEstoqueMax: TFloatField;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    MTNomeFor: TStringField;
    MTID: TIntegerField;
    tsDados: TcxTabSheet;
    panCad: TLMDSimplePanel;
    qUnidade: TnxQuery;
    MTCadastroRapido: TBooleanField;
    MTPermiteVendaFracionada: TBooleanField;
    cmClone: TdxBarButton;
    cmConfig: TdxBarLargeButton;
    Timer1: TTimer;
    MTPrecoAuto: TBooleanField;
    MTMargem: TFloatField;
    tCateg: TnxTable;
    MTLookupCateg: TStringField;
    dsCateg: TDataSource;
    Q: TnxQuery;
    tUnid: TnxTable;
    dsUnid: TDataSource;
    MTLookupUnid: TStringField;
    cxImageList1: TcxImageList;
    MTComissaoPerc: TFloatField;
    MTComissaoLucro: TBooleanField;
    MTNCM: TStringField;
    MTLookupNCM: TStringField;
    LCGroup_Root: TdxLayoutGroup;
    LC: TdxLayoutControl;
    lfProd: TdxLayoutCxLookAndFeel;
    escFlat: TcxEditStyleController;
    imgBarcodeScan: TImage;
    lcgPreco: TdxLayoutGroup;
    edPreco: TcxDBCurrencyEdit;
    lcPreco: TdxLayoutItem;
    lcCusto: TdxLayoutItem;
    edCusto: TcxDBCurrencyEdit;
    lcPrecoAuto: TdxLayoutItem;
    cbPrecoAuto: TcxDBCheckBox;
    LCItem5: TdxLayoutItem;
    cbPodeAlterarPreco: TcxDBCheckBox;
    lcMarkup: TdxLayoutItem;
    edMarkup: TcxCurrencyEdit;
    lcInfoMarkup: TdxLayoutItem;
    lbInfoMarkup: TcxLabel;
    lcMarkupPadrao: TdxLayoutItem;
    cbSeguirMarkupPadrao: TcxDBCheckBox;
    lbMarkup: TcxLabel;
    lcDefinirMarkupPadrao: TdxLayoutItem;
    LCItem1: TdxLayoutItem;
    dxBevel1: TdxBevel;
    lcCodigo: TdxLayoutItem;
    edCodigo: TcxDBMaskEdit;
    LCItem7: TdxLayoutItem;
    edDescr: TcxDBTextEdit;
    lfDestaque: TdxLayoutCxLookAndFeel;
    LMDSimplePanel1: TLMDSimplePanel;
    pagFoto: TcxPageControl;
    tsSemFoto: TcxTabSheet;
    panSemFoto: TLMDSimplePanel;
    Image1: TImage;
    lbSemFoto: TcxLabel;
    tsFoto: TcxTabSheet;
    panFoto: TLMDSimplePanel;
    edFoto: TcxDBImage;
    lcInfoCod: TdxLayoutItem;
    lbInfoCod: TcxLabel;
    lcNCM: TdxLayoutItem;
    edNCM: TcxDBButtonEdit;
    lcCateg: TdxLayoutItem;
    edCateg: TcxDBLookupComboBox;
    lcUnid: TdxLayoutItem;
    edUnid: TcxDBLookupComboBox;
    panLookup: TLMDSimplePanel;
    btnExcluir: TcxButton;
    btnEditar: TcxButton;
    btnAdicionar: TcxButton;
    lcEstoqueAtual: TdxLayoutItem;
    edAtual: TcxCurrencyEdit;
    lcNaoControlaEstoque: TdxLayoutItem;
    cbNaoControlaEstoque: TcxDBCheckBox;
    lcVendaFrac: TdxLayoutItem;
    cbVendaFrac: TcxDBCheckBox;
    edLimites: TcxPopupEdit;
    lcLimites: TdxLayoutItem;
    LCGroup2: TdxLayoutAutoCreatedGroup;
    LCGroup8: TdxLayoutAutoCreatedGroup;
    LCGroup3: TdxLayoutAutoCreatedGroup;
    LCGroup5: TdxLayoutAutoCreatedGroup;
    MTSeguirMargemPadrao: TBooleanField;
    lcInfoNCM: TdxLayoutItem;
    lbInfoNCM: TcxLabel;
    MTNCM_Ex: TStringField;
    MTbrtrib: TWordField;
    lcBRTrib: TdxLayoutItem;
    edBrTrib: TcxDBButtonEdit;
    lcInfoBrTrib: TdxLayoutItem;
    lbInfoBrTrib: TcxLabel;
    lbBrTrib: TcxLabel;
    lcBrTribNome: TdxLayoutItem;
    lbNCM: TcxLabel;
    lcNCMDescr: TdxLayoutItem;
    panFornecedores: TLMDSimplePanel;
    lciFornecedores: TdxLayoutItem;
    tProdFor: TnxTable;
    tProdForUID: TGuidField;
    tProdForProduto: TLongWordField;
    tProdForFornecedor: TLongWordField;
    tProdForRef: TStringField;
    tProdForPos: TWordField;
    lcCEST: TdxLayoutItem;
    edCest: TcxDBButtonEdit;
    lclbInfoCest: TdxLayoutItem;
    lbInfoCest: TcxLabel;
    MTcest: TLongWordField;
    lclbCEST: TdxLayoutItem;
    lbCEST: TcxLabel;
    lgrBR: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    MTtax_id: TLongWordField;
    lgrTax: TdxLayoutGroup;
    edTax: TcxDBButtonEdit;
    lcTAX: TdxLayoutItem;
    MTtax_name: TStringField;
    MTtax_def: TBooleanField;
    edTaxDef: TcxDBCheckBox;
    lcTaxDef: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    lbSetTaxDef: TcxLabel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    MTmodST: TByteField;
    MTMVA: TMemoField;
    MTPauta: TMemoField;
    edICMSST: TcxButtonEdit;
    lcICMSSt: TdxLayoutItem;
    lcInfoSt: TdxLayoutItem;
    lbHintSt: TcxLabel;
    lcDescrSt: TdxLayoutItem;
    lbDescrSt: TcxLabel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    MTPesoBruto: TFloatField;
    MTPesoLiq: TFloatField;
    edPesoLiq: TcxDBCurrencyEdit;
    lcPesoLiq: TdxLayoutItem;
    lcPesoBruto: TdxLayoutItem;
    edPesoBruto: TcxDBCurrencyEdit;
    tPro: TnxTable;
    tProID: TUnsignedAutoIncField;
    tProUID: TGuidField;
    tProPreco: TCurrencyField;
    tProPrecoAuto: TBooleanField;
    tProMargem: TFloatField;
    tProImagem: TGraphicField;
    tProFornecedor: TLongWordField;
    tProEstoqueAtual: TFloatField;
    tProEstoquePend: TFloatField;
    tProEstoqueTot: TFloatField;
    tProbrtrib: TWordField;
    tProCustoUnitario: TCurrencyField;
    tProPodeAlterarPreco: TBooleanField;
    tProPermiteVendaFracionada: TBooleanField;
    tProNaoControlaEstoque: TBooleanField;
    tProEstoqueMin: TFloatField;
    tProEstoqueMax: TFloatField;
    tProAbaixoMin: TBooleanField;
    tProAbaixoMinDesde: TDateTimeField;
    tProEstoqueRepor: TFloatField;
    tProComissaoPerc: TFloatField;
    tProComissaoLucro: TBooleanField;
    tProPesoBruto: TFloatField;
    tProPesoLiq: TFloatField;
    tProtax_id: TLongWordField;
    tProAtivo: TBooleanField;
    tProFidelidade: TBooleanField;
    tProFidPontos: TIntegerField;
    tProNCM: TStringField;
    tProNCM_Ex: TStringField;
    tProcest: TLongWordField;
    tPromodST: TByteField;
    tProMVA: TnxMemoField;
    tProPauta: TnxMemoField;
    tProCadastroRapido: TBooleanField;
    tProIncluidoEm: TDateTimeField;
    tProAlteradoEm: TDateTimeField;
    tProAlteradoPor: TStringField;
    edObs: TcxDBMemo;
    lcObs: TdxLayoutItem;
    grBottom: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    grEstoque: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    grTran: TdxLayoutGroup;
    grComissao: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    panTran: TLMDSimplePanel;
    lcRecursoPro: TdxLayoutItem;
    btnPremium: TcxButton;
    lcComissaoLucro: TdxLayoutItem;
    edComissaoLucro: TcxComboBox;
    lcComissao: TdxLayoutItem;
    edComissaoPerc: TcxCurrencyEdit;
    lcComissaoPadrao: TdxLayoutItem;
    cbComissaoPadrao: TcxCheckBox;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    lcConfigComissao: TdxLayoutItem;
    lbConfigComissao: TcxLabel;
    grPend: TdxLayoutGroup;
    lcPend: TdxLayoutItem;
    panPend: TLMDSimplePanel;
    dxLayoutItem3: TdxLayoutItem;
    img: TImage;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    grFidelidade: TdxLayoutGroup;
    imgFid: TMyImage;
    lcimgFid: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    edFidPontos: TcxDBSpinEdit;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    dxLayoutItem5: TdxLayoutItem;
    edFidelidade: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    lcFidelidade: TdxLayoutItem;
    lbFidelidade: TcxLabel;
    dxLayoutItem7: TdxLayoutItem;
    lbOpcoesFid: TcxLabel;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxBevel2: TdxBevel;
    lcMarca: TdxLayoutItem;
    edMarca: TcxDBLookupComboBox;
    grCategMarca: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    grPeso: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    MTMarca: TGuidField;
    MTCodigo: TWideStringField;
    MTDescricao: TWideStringField;
    MTUnid: TWideStringField;
    MTObs: TWideMemoField;
    MTCategoria: TWideStringField;
    MTNomeMarca: TWideStringField;
    tProMarca: TGuidField;
    tProCodigo: TWideStringField;
    tProDescricao: TWideStringField;
    tProUnid: TWideStringField;
    tProObs: TWideMemoField;
    tProCategoria: TWideStringField;
    QCatCategoria: TWideStringField;
    qUnidadeUnid: TWideStringField;
    tUnidDescricao: TWideStringField;
    tCategDescricao: TWideStringField;
    tMarca: TnxTable;
    tMarcaID: TUnsignedAutoIncField;
    tMarcaUID: TGuidField;
    tMarcaNome: TWideStringField;
    tMarcaRecVer: TLongWordField;
    dsMarca: TDataSource;
    tAux: TnxTable;
    dxLayoutItem6: TdxLayoutItem;
    edCodigo2: TcxDBMaskEdit;
    dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup;
    MTCodigo2: TStringField;
    tProCodigo2: TWideStringField;
    cbCodigoAuto: TcxCheckBox;
    lcCodigoAuto: TdxLayoutItem;
    dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup;
    procedure cmGravarClick(Sender: TObject);
    procedure cmCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure MTAfterInsert(DataSet: TDataSet);
    procedure edNaoControlarEstoquePropertiesCloseUp(Sender: TObject);
    procedure edFidelidadePropertiesChange(Sender: TObject);
    procedure lbSemFotoClick(Sender: TObject);
    procedure edFotoPropertiesEditValueChanged(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure cmCloneClick(Sender: TObject);
    procedure cmConfigClick(Sender: TObject);
    procedure edCategPropertiesInitPopup(Sender: TObject);
    procedure edCategPropertiesChange(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure edUnidPropertiesInitPopup(Sender: TObject);
    procedure edCategKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edUnidKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imgBarcodeScanClick(Sender: TObject);
    procedure cxLabel3Click(Sender: TObject);
    procedure cxLabel6Click(Sender: TObject);
    procedure cxLabel7Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edFidelidadeClick(Sender: TObject);
    procedure lbOpcoesFidClick(Sender: TObject);
    procedure cbComissaoPadraoClick(Sender: TObject);
    procedure lbConfigComissaoClick(Sender: TObject);
    procedure btnPremiumClick(Sender: TObject);
    procedure edCodigoFocusChanged(Sender: TObject);
    procedure edMarkupFocusChanged(Sender: TObject);
    procedure btnManterAbertoClick(Sender: TObject);
    procedure edLimitesEnter(Sender: TObject);
    procedure nbiFichaClick(Sender: TObject);
    procedure edPrecoPropertiesChange(Sender: TObject);
    procedure edPrecoPropertiesEditValueChanged(Sender: TObject);
    procedure edCustoPropertiesChange(Sender: TObject);
    procedure edCustoPropertiesEditValueChanged(Sender: TObject);
    procedure edMarkupPropertiesChange(Sender: TObject);
    procedure edMarkupPropertiesEditValueChanged(Sender: TObject);
    procedure cbPrecoAutoPropertiesEditValueChanged(Sender: TObject);
    procedure lbMarkupClick(Sender: TObject);
    procedure cbSeguirMarkupPadraoPropertiesEditValueChanged(Sender: TObject);
    procedure cbNaoControlaEstoquePropertiesEditValueChanged(Sender: TObject);
    procedure edLimitesPropertiesInitPopup(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edNCMPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edNCMFocusChanged(Sender: TObject);
    procedure edOrigemFocusChanged(Sender: TObject);
    procedure edProdPropriaFocusChanged(Sender: TObject);
    procedure edSTFocusChanged(Sender: TObject);
    procedure edBrTribPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edBrTribFocusChanged(Sender: TObject);
    procedure edBrTribPropertiesChange(Sender: TObject);
    procedure edNCMPropertiesChange(Sender: TObject);
    procedure lciFornecedoresCaptionClick(Sender: TObject);
    procedure edCestFocusChanged(Sender: TObject);
    procedure edCestPropertiesChange(Sender: TObject);
    procedure edCestPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure lbCESTClick(Sender: TObject);
    procedure MTCalcFields(DataSet: TDataSet);
    procedure edTaxPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edTaxDefPropertiesEditValueChanged(Sender: TObject);
    procedure lbSetTaxDefClick(Sender: TObject);
    procedure edICMSSTPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edICMSSTFocusChanged(Sender: TObject);
    procedure grBottomTabChanged(Sender: TObject);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMarcaPropertiesInitPopup(Sender: TObject);
    procedure edICMSSTKeyPress(Sender: TObject; var Key: Char);
    procedure edICMSSTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBrTribKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBrTribKeyPress(Sender: TObject; var Key: Char);
    procedure cbCodigoAutoClick(Sender: TObject);
    
  private
    FrmEstoque : TFrmProd_Estoque;
    FFrmNCM : TFrmNCMPesq;
    FFrmBrTrib : TFrmBRTribPesq;
    FFrmTax  : TFrmTaxPesq;
    FFrmCEST : TFrmCESTPesq;
    FShowed  : Boolean;
    FMarcaAnt : String;

    FNCMOk : Boolean;
    FCESTOk : Boolean;
    FBrTribOk : Boolean;
    FListaFor : TFrmListaFornecedores;
    FObs      : String;

    { Private declarations }
    function CanClose: Boolean;
    procedure EnableDisable;
    procedure ChangeEstoque(Sender: TObject);

    procedure ValidaSAT;

    procedure UpdatePrecoMarkup;

    procedure UpdateNCM;
    procedure UpdateBrTrib;
    procedure UpdateCEST;
    procedure UpdateST;

    function PrecoFocused: Boolean;

    procedure ConfigNFE;

    function EstoqueFocused: Boolean;

    function NFEFocused: Boolean;

    function MinCaptionWidth(Sender: TObject): Integer;

    procedure wmProxControl(var Msg: TMsg); message wm_user;

    procedure FocusNextEstoque(Sender: TObject);
    procedure FocusAfterFornecedor(Sender: TObject);

    procedure FocaFornecedor;
      
    procedure CustomDrawBorder(AViewInfo: TcxContainerViewInfo; ACanvas: TcxCanvas; const R: TRect; var AHandled: Boolean; out ABorderWidth: Integer);

    procedure LoadProdFor;
    procedure SaveProdFor;
    
  public
     Tab : TnxTable;
     CodAnt : String;
     FDadosFor : TDadosCliente;
     FFechando : Boolean;
     FEstoqueAnt : Double;
     FCustoAnt : Currency;
     FNovo : Boolean;
    { Public declarations }
    procedure TentaGravar;
    procedure Editar(aTab: TnxTable; const aFocusUnid: Boolean = False);
    function Incluir(aTab: TnxTable; const aDMDanfe: TdmDanfe_NFE = nil; const aFor: Integer = 0): Boolean;
  end;

var
  FrmProduto: TFrmProduto;
  
implementation

uses
  ncIDRecursos, 
  ncaDM, 
  ufmImagens, 
  ncaFrmPri, 
  ncafbMovEst,
  ncafbMEPend, 
  ncafbPesqFor,
  ncaFrmSaibaMaisClonar,
  ncaFrmConfigAutoCad,
  ncaFrmChecarCodProdutoDuplicado,
  ncClassesBase, ncaFrmOpcoes, ncaFrmConfigCodProdutoDuplicado,
  ncaFrmConfigQuickCad, ncaAlertaClonarProduto, ncaAlertaAutocad,
  ncaFrmConfigPrecoAuto, ncaFrmBasicTextEdit, ncaFrmConfigFid,
  ncaFrmConfigComissao, ncaFrmObs, ncaFrmMVAPauta, ncDebug, ncaStrings,
  ncaFrmConfig_TamCodigoAuto, ncaFrmAjustaTamCod;

// START resource string wizard section
resourcestring
  SOpçõesParaProdutos = 'Opções para Produtos';
  SCampoCódigoNãoPodeSerDeixadoEmBr = 'Você deve preencher o campo código ou marcar a opção "Automático" para que o programa NEX gere o código automaticamente';
  SJáExisteUmProdutoCadastradoComEs = 'Já existe um produto cadastrado com esse código';
  SCampoDescriçãoNãoPodeSerDeixadoE = 'Campo descrição não pode ser deixado em branco!';
  SNaoControlarEstoque = 'Não controlar estoque desse produto';
  SConfirmaExcluir = 'Deseja realmente excluir';
  SCategEmUsoOutrosProdutos = 'Essa categoria é usada por outros produtos. Não é possível excluir';
  SUnidEmUsoOutrosProdutos = 'Essa unidade é usada por outros produtos. Não é possível excluir';
  SMarcaEmUsoOutrosProdutos = 'Essa marca está cadastrada em outros produtos. Não é possível excluir';
  SMin = 'min';
  SMax = 'max';
  SLucro = 'Lucro';
  SCategoria = 'Categoria';
  SUnidadeMed = 'Unidade de Medida';
  SMarca = 'Marca';
  SProdutoExcluido = 'Esse produto foi excluído por outro usuário';
  SOpcoesFid = 'Configurar sistema de fidelização';
  SAtivarFid = 'Ativar sistema de fidelização';
  SNCM = 'NCM';
  SInformarCusto = 'É necessário informar o CUSTO para que o NEX calcule o preço de venda automaticamente';
  SInformarMarkup = 'É necessário informar o percentual de MARKUP para que o NEX calcule o preço de venda automaticamente';
  SUnidObrigatoria = 'É necessário informar a unidade de venda do produto';
  SObservacoes = 'Observações';
  SAddObs = 'Adicionar Observações';

  SKg = 'Kg';
  SPeca = 'Peça';
  SLata = 'Lata';
  SMetro = 'metro';
  

// END resource string wizard section



{$R *.DFM}

type 
  THackTab = class (TcxCustomTabControlProperties);

procedure TFrmProduto.Editar(aTab: TnxTable; const aFocusUnid: Boolean = False);
begin
  Tab := aTab;

  lcCodigoAuto.Visible := False;

  if aFocusUnid then ActiveControl := edUnid;

  with aTab.FieldByName('EstoqueAtual') do
    if IsNull then
       FEstoqueAnt := 0 else
       FEstoqueAnt := Value;

  with aTab.FieldByName('CustoUnitario') do
    if IsNull then
      FCustoAnt := 0 else
      FCustoAnt := Value;    
  
  if not tCateg.FindKey([Tab.FieldByName('Categoria').Value]) then begin
    tCateg.Append;
    tCategDescricao.AsVariant := Tab.FieldByName('Categoria').Value;
    tCateg.Post;
  end;

  if not tUnid.FindKey([Tab.FieldByName('Unid').Value]) then begin
    tUnid.Append;
    tUnidDescricao.AsVariant := Tab.FieldByName('Unid').Value;
    tUnid.Post;
  end;
  
  MT.Insert;
  //Tab.Edit;
  CodAnt := Tab.FieldByName('Codigo').AsString; // do not localize
  TransfDados(Tab, MT);
  edAtual.Value := FEstoqueant;
  //Tab.Post;
  MTSeguirMargemPadrao.Value := MTPrecoAuto.Value and (gConfig.Margem>0) and MTMargem.IsNull;
  if MTPrecoAuto.Value then
  if (not MTMargem.IsNull) then 
    edMarkup.Value := MTMargem.Value  else
    edMarkup.Value := gConfig.Margem;
  MT.Post;
  MT.Edit;

  if MTtax_id.IsNull then MTtax_def.Value := True;

  UpdatePrecoMarkup;

  FrmEstoque.InitData(MTEstoqueMin.Value, MTEstoqueMax.Value);

  Paginas.ActivePageIndex := 0;
    
  cmKardex.Visible := ivAlways;
  cmGravar.Enabled := Permitido(daProCadastrar);
  LoadProdFor;
  
  ShowModal;
end;

procedure TFrmProduto.cmCloneClick(Sender: TObject);
begin
    TpanAlertaClonarProduto.Create(Self).Mostrar(Self);
    cmClone.Enabled := False;
    FNovo := True;
    MTID.clear;
    edAtual.Clear;
    Paginas.ActivePage := tsDados;
    CodAnt := '';
    FEstoqueAnt := 0;
    FCustoAnt := 0;
    with FrmEstoque do
      InitData(MTEstoqueMin.Value, MTEstoqueMax.Value);
   FrmEstoque.OnChange(FrmEstoque);   
end;

procedure TFrmProduto.cmConfigClick(Sender: TObject);
begin
  TFrmOpcoes.Create(Self).Editar(SOpçõesParaProdutos, [TFrmConfigAutoCad, TFrmConfigPrecoAuto, TFrmConfigQuickCad, TFrmConfigComissao, TFrmConfigCodProdutoDuplicado]);
  UpdatePrecoMarkup;  
end;

procedure TFrmProduto.edLimitesEnter(Sender: TObject);
begin
  edLimites.DroppedDown := True;
end;

procedure TFrmProduto.edLimitesPropertiesInitPopup(Sender: TObject);
begin
  edLimites.Style.PopupBorderStyle := epbsFrame3D;
end;

procedure TFrmProduto.edMarcaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key <> KEY_ENTER) and (Key  <> Key_TAB) and (Key <> Key_ESC) and (Key <> Key_F2) then
    edMarca.DroppedDown := True;
end;

procedure TFrmProduto.edMarcaPropertiesInitPopup(Sender: TObject);
begin
  tMarca.Refresh;
  if tMarca.IsEmpty then begin
    tMarca.Append;
    tMarcaUID.Value := incluir_marca;
    tMarcaNome.Value := '';
    tMarca.Post;
  end;

  edMarca.Properties.Grid.Align := alClient;
  panLookup.Parent := edMarca.Properties.Grid.Parent;
  panLookup.Visible := True;
  panLookup.Align := alTop;
end;

procedure TFrmProduto.edMarkupFocusChanged(Sender: TObject);
begin
  lcInfoMarkup.Visible := edMarkup.Focused or cbSeguirMarkupPadrao.Focused or lbMarkup.Focused;
end;

procedure TFrmProduto.edMarkupPropertiesChange(Sender: TObject);
begin
  if edMarkup.Focused then edMarkup.PostEditValue;
end;

procedure TFrmProduto.edMarkupPropertiesEditValueChanged(Sender: TObject);
begin
  if edMarkup.Focused then UpdatePrecoMarkup;
end;

procedure TFrmProduto.edNaoControlarEstoquePropertiesCloseUp(Sender: TObject);
begin
  EnableDisable;
end;

procedure TFrmProduto.edNCMFocusChanged(Sender: TObject);
begin
  EnableDisable;
  lcInfoNCM.Visible := edNCM.Focused;
  if edNCM.Focused then
    lcNCM.CaptionOptions.Text := 'NCM (F5)' else
    lcNCM.CaptionOptions.Text := 'NCM';
end;

procedure TFrmProduto.edNCMPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var aNCM, aNCMEx : String;  
begin
  if not Assigned(FFrmNCM) then
    FFrmNCM := gNCMPesqList.GetFrm;
  aNCM := MTNCM.Value;
  aNCMEx := MTNCM_Ex.Value;
  if FFrmNCM.Pesquisar(aNCM, aNCMEx) then begin
    MTNCM.Value := aNCM;
    MTNCM_Ex.Value := aNCMEx;
  end;  
end;

procedure TFrmProduto.edNCMPropertiesChange(Sender: TObject);
begin
  UpdateNCM;
end;

procedure TFrmProduto.edOrigemFocusChanged(Sender: TObject);
begin
  EnableDisable;
end;

procedure TFrmProduto.edPrecoPropertiesChange(Sender: TObject);
begin
  if edPreco.Focused then edPreco.PostEditValue;
end;

procedure TFrmProduto.edPrecoPropertiesEditValueChanged(Sender: TObject);
begin
  if edPreco.Focused then UpdatePrecoMarkup;
end;

procedure TFrmProduto.edProdPropriaFocusChanged(Sender: TObject);
begin
  EnableDisable;
end;

procedure TFrmProduto.edSTFocusChanged(Sender: TObject);
begin
  EnableDisable;
end;

procedure TFrmProduto.edTaxDefPropertiesEditValueChanged(Sender: TObject);
begin
  EnableDisable;
end;

procedure TFrmProduto.edTaxPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var 
  aCod: Cardinal;
  aOk : Boolean;
begin
  if not Assigned(FFrmTax) then
    FFrmTax := gTaxPesqList.GetFrm;
  aCod := mttax_id.Value;
  aOk := FFrmTax.Pesquisar(aCod);
  Dados.tTax.Refresh;
  if aOk then begin
    MTtax_id.Value := aCod;
    MTtax_def.Value := False;
    edtaxdef.Checked := False;
  end;
end;

procedure TFrmProduto.edUnidKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key <> KEY_ENTER) and (Key  <> Key_TAB) and (Key <> Key_ESC) and (Key <> Key_F2) then
    edUnid.DroppedDown := True;
end;

procedure TFrmProduto.edUnidPropertiesInitPopup(Sender: TObject);
begin
  edUnid.Properties.Grid.Align := alClient;
  panLookup.Parent := edUnid.Properties.Grid.Parent;
  panLookup.Visible := True;
  panLookup.Align := alTop;
end;

function NumStr(D: Double; Casas: Byte = 2): String;
var P: Integer;
begin
  Str(D:10:Casas, Result);
  P := Pos('.', Result);
  with FormatSettings do begin
    if Pos('.', Result)>0 then begin
      Result[P] := DecimalSeparator;
      while Copy(Result, Length(Result), 1)='0' do Delete(Result, Length(Result), 1);
    end;
    if Copy(Result, Length(Result), 1) = DecimalSeparator then 
      Delete(Result, Length(Result), 1);
  end;
  Result := TrimLeft(Result);  
end;

procedure TFrmProduto.EnableDisable;
var S: String;
begin
  ConfigNFE;
  if cbNaoControlaEstoque.Checked then begin
    lcLimites.Enabled := False;
    edLimites.Text := '';
    lcEstoqueAtual.Enabled := False;
  end else begin
    lcEstoqueAtual.Enabled := True;
    lcLimites.Enabled := True;
    S := '';
    if FrmEstoque.Minimo>0.01 then
      S := SMin+'='+NumStr(FrmEstoque.Minimo);
    if FrmEstoque.Maximo>0.01 then begin
      if S>'' then S := S + ', ';
      S := S + SMax +'=' +NumStr(FrmEstoque.Maximo);
    end;
    edLimites.Text := S;
  end;

  lcTax.Enabled := not edTaxDef.Checked;

  lcPreco.Enabled := not cbPrecoAuto.Checked;

  lcLimites.Visible := true; // EstoqueFocused;
  lcUnid.Visible := True; //EstoqueFocused;
  lcVendaFrac.Visible := true; //EstoqueFocused;

  lcLimites.Enabled := not cbNaoControlaEstoque.Checked;

  lcInfoCod.Visible := edCodigo.Focused;

  lcCusto.Visible := Permitido(daVerCusto);
  edCusto.Properties.ReadOnly := not Permitido(daAlterarCusto);
  lcMarkup.Visible := Permitido(daProEditarPreco) and cbPrecoAuto.Checked;
  edMarkup.Properties.ReadOnly := not Permitido(daProEditarPreco);
  edPreco.Properties.ReadOnly := not Permitido(daProEditarPreco);

  edAtual.Properties.ReadOnly := (not Permitido(daEstEntrada)) or (not Permitido(daEstSaida));
  
  lcMarkupPadrao.Visible := lcMarkup.Visible and (gConfig.Margem>0) and (cbPrecoAuto.Checked);
  lcDefinirMarkupPadrao.Visible := lcMarkup.Visible and (gConfig.Margem=0) and (cbPrecoAuto.Checked);
  
  lcInfoMarkup.Visible := edMarkup.Focused;
  edMarkup.Enabled := cbPrecoAuto.Checked and ((not cbSeguirMarkupPadrao.Checked) or (gConfig.Margem=0));

  if gConfig.FidAtivo then
    lbOpcoesFid.Caption := sOpcoesFid else
    lbOpcoesFid.Caption := sAtivarFid;
    
  edFidelidade.Enabled := gConfig.PodeFidelidade;
  edFidPontos.Enabled := edFidelidade.Enabled and edFidelidade.Checked;
  
  if edFidelidade.Enabled then
    imgFid.MouseOffDrawMode := idmNormal else
    imgFid.MouseOffDrawMode := idmDisabled;

  lcFidelidade.Enabled := edFidelidade.Enabled;

  if cbComissaoPadrao.Checked then begin
    edComissaoPerc.Value := gConfig.ComissaoPerc;
    edComissaoLucro.ItemIndex := Byte(gConfig.ComissaoLucro);
  end;

  lcComissao.Enabled := (not cbComissaoPadrao.Checked) and gConfig.IsPremium;
  lcComissaoLucro.Enabled := lcComissao.Enabled and gConfig.IsPremium;
  lcComissaoPadrao.Enabled := gConfig.IsPremium;
  lcConfigComissao.Enabled := gConfig.IsPremium;
end;

function TFrmProduto.EstoqueFocused: Boolean;
begin
  Result := edAtual.Focused or
            cbNaoControlaEstoque.Focused or
            edLimites.Focused or
            edLimites.DroppedDown or
            edUnid.Focused or
            cbVendaFrac.Focused;
end;

function TFrmProduto.Incluir(aTab: TnxTable; const aDMDanfe: TDMdanfe_NFE = nil; const aFor: integer = 0): Boolean;
var S: String;
begin
  FNovo := True;
  lcCodigoAuto.Visible := True;
  cbCodigoAuto.Checked  := getFormOptionBool(Self, 'cbCodigoAuto', False);
  lcCodigo.Enabled := not cbCodigoAuto.Checked;
  cmClone.Enabled := False;
  Tab := aTab;  
  MT.Insert;
  MTPrecoAuto.Value := gConfig.PrecoAuto;
  MTNCM.Value := Dados.tNFConfigNCM_Padrao.Value;
  if gConfig.precoAuto and (gConfig.Margem>0) then begin
    MTSeguirMargemPadrao.Value := True;
    edMarkup.Value := gConfig.Margem;
  end;  

  if aDMDanfe<>nil then with aDMDanfe do begin
{    if Trim(mtItemuCom.Value)>'' then begin
      if not tUnid.FindKey([mtItemuCom.Value]) then begin
        tUnid.Append;
        tUnidDescricao.Value := mtItemuCom.Value;
        tUnid.Post;
      end;

      MTUnid.Value := tUnidDescricao.Value;
    end;}
    
    mtDescricao.Value := mtItemxProd.Value;

    MTCodigo.Value := mtItemCodigo.Value;
    MTCustoUnitario.Value := mtItemvUnCom.Value;
    MTFornecedor.Value := aFor;
    MTNCM.Value := mtItemNCM.Value;
  end;
  MT.Post;
  MT.Edit;
  

  FCustoAnt := 0;

  UpdatePrecoMarkup;

  FrmEstoque.InitData(MTEstoqueMin.Value, MTEstoqueMax.Value);
  
  ShowModal;

  Result := (ModalResult = mrOk);
  CodAnt := '';
end;
    
procedure TFrmProduto.lbSemFotoClick(Sender: TObject);
begin
  edFoto.LoadFromFile;
end;

procedure TFrmProduto.lbSetTaxDefClick(Sender: TObject);
var aCod: Cardinal;
begin
  if not Assigned(FFrmTax) then
    FFrmTax := gTaxPesqList.GetFrm;
  aCod := 0;
  FFrmTax.Pesquisar(aCod);
  Dados.tTax.Refresh;
  if (MT.State in [dsEdit, dsInsert]) then
    MT.Post;
  MT.Refresh;
  MT.Edit;
  MTCalcFields(MT);
end;

procedure TFrmProduto.lciFornecedoresCaptionClick(Sender: TObject);
begin
  FListaFor.lbAddClick(nil);
end;

procedure TFrmProduto.LoadProdFor;
begin
  if FNovo then begin
    FListaFor.Add;
    Exit;
  end;

  tProdFor.IndexName := 'IProdPos';
  tProdFor.SetRange([MTID.Value], [MTID.Value]);
  tProdFor.First;
  while not tProdFor.Eof do begin
    FListaFor.Add.Load(tProdForFornecedor.Value, tProdForRef.Value);
    tProdFor.Next;
  end;

  if MTFornecedor.Value>0 then begin
    tProdFor.CancelRange;
    tProdFor.IndexName := 'IProdFor';
    if not tProdFor.FindKey([MTID.Value, MTFornecedor.Value]) then
      FListaFor.Add.Load(MTFornecedor.Value, '');
    FListaFor.Padrao := MTFornecedor.Value;  
  end;

  if FListaFor.Count=0 then FListaFor.Add;
  FListaFor.Update;
end;

function TFrmProduto.MinCaptionWidth(Sender: TObject): Integer;
begin
  Result := lcLimites.ViewInfo.CaptionViewInfo.CalculateMinWidth;
end;

procedure TFrmProduto.MTAfterInsert(DataSet: TDataSet);
begin
  MTFidelidade.Value := False;
  MTNaoControlaEstoque.Value := False;
  MTPrecoAuto.Value := gConfig.PrecoAuto;
end;

procedure TFrmProduto.MTCalcFields(DataSet: TDataSet);
begin
  if mttax_def.Value then
    mttax_name.Value := Dados.getTaxName(0) 
  else
  if mttax_id.Value>0 then
    mttax_name.Value := Dados.getTaxName(mttax_id.Value)
  else
    mttax_name.Value := '';
end;

procedure TFrmProduto.nbiFichaClick(Sender: TObject);
begin
  paginas.ActivePage := tsDados;
end;

function TFrmProduto.NFEFocused: Boolean;
begin
  Result := True {edNCM.Focused or
            edOrigem.Focused or
            edProdPropria.Focused or
            edST.Focused};
end;

function TFrmProduto.PrecoFocused: Boolean;
begin
  Result := edPreco.Focused or 
            edCusto.Focused or 
            cbPrecoAuto.Focused or 
            edMarkup.Focused or
            cbSeguirMarkupPadrao.Focused or
            lbMarkup.Focused or
            lbInfoMarkup.Focused or
            cbPodeAlterarPreco.Focused;
end;


procedure TFrmProduto.SaveProdFor;
var 
  L : TList;
  I : Integer;
begin
  tProdFor.IndexName := 'IProdFor';
  if not FNovo then begin
    tProdFor.SetRange([tProID.Value], [tProID.Value]);
    L := TList.Create;
    try
      while not tProdFor.Eof do begin
        L.Add(Pointer(tProdForFornecedor.Value));
        tProdFor.Next;
      end;
      for I := 0 to L.Count-1 do
        if not FListaFor.AchaFor(Integer(L[I])) then 
          if tProdFor.FindKey([tProID.Value, Integer(L[I])]) then 
            tProdFor.Delete;
    finally
      L.Free;
    end;
  end;

  for I := 0 to FListaFor.Count-1 do with FListaFor.Fornecedores[I] do 
  if Valido then begin
    if tProdFor.FindKey([tProID.Value, Fornecedor]) then
      tProdFor.Edit else
      tProdFor.Insert;
    tProdForProduto.Value := tProID.Value;
    tProdForFornecedor.Value := Fornecedor;
    tProdForRef.Value := Trim(edRef.Text);
    tProdForPos.Value := I;
    tProdFor.Post;
  end;
end;

procedure TFrmProduto.TentaGravar;
begin
  if cmGravar.Enabled then cmGravarClick(nil);
end;

procedure TFrmProduto.UpdateBrTrib;
begin
  FBrTribOk := True;
  if not lcBrTrib.Visible then Exit;
  with Dados do begin
    lbBrTrib.Style.TextColor := clBlack;
    FBrTribOk := tBrTrib.FindKey([edBrTrib.EditText]);
    if FBrTribOk then
      lbBrTrib.Caption := tBrTribNome.Value
    else begin
      if edBrTrib.EditText='' then
        lbBrTrib.Caption := '' 
      else begin
        lbBrTrib.Caption  := '(Tributação informada não existe)';
        lbBrTrib.Style.TextColor := clRed;
      end;
    end;
  end;
end;

procedure TFrmProduto.UpdateCEST;
var aVazio: Boolean;
begin
  Dados.tbCEST.IndexName := 'I_ncm_cest';
  with Dados do 
  if FNCMOk then begin
    tbCEST.SetRange([edNCM.EditText], [edNCM.EditText]);
    if tbCEST.IsEmpty then begin
      aVazio := True;
      lclbCEST.Visible := True;
      lbCEST.Caption := '(Não é necessário informar o CEST para esse NCM)';
      lcCEST.Enabled := False;
      if not edCEST.Focused then begin
        mtCEST.Clear;
        edCEST.Clear;
      end;
    end else begin
      aVazio := False;
      lclbCEST.Visible := True;
      lbCest.Caption := '';
      lcCEST.Enabled := (tbCEST.RecordCount>1);
    
      if not edCEST.Focused then
      if lcCEST.Enabled then begin
        if not tbCEST.FindKey([edNCM.EditText, edCEST.EditText]) then begin
          mtCEST.Clear;
          edCEST.Clear;
        end;
      end else begin
        mtCEST.Value := tbCESTcest.Value;
        edCEST.EditValue := mtCEST.Value;
        edCEST.Refresh;
      end;
    end;
  end else begin
    aVazio := True;
    lclbCEST.Visible := False;
    lcCEST.Enabled := False;
  end;
    
  FCESTOk := (not lcCEST.Enabled) or aVazio;
  if aVazio then Exit;
  
  with Dados do begin
    lbCEST.Style.TextColor := clBlack;
    if (edNCM.EditText>'') and (edCEST.EditText>'') then
      FCESTOk := tbCEST.FindKey([edNCM.EditText, edCEST.EditText]) else
      FCESTOk := False;
      
    if FCESTOk then
      lbCEST.Caption := tbCESTdescr.Value
    else begin
      if edCEST.EditText='' then
        lbCEST.Caption := '' 
      else begin
        lbCEST.Caption  := '(CEST informado não está correto)';
        lbCEST.Style.TextColor := clRed;
      end;
    end;
  end;
end;

procedure TFrmProduto.UpdateNCM;
begin
  FNCMOk := True;
  if not lcNCM.Visible then Exit;
  with Dados do begin
    lbNCM.Style.TextColor := clBlack;
    FNCMOk := tbNCM.FindKey([edNCM.EditText]) and (Length(edNCM.EditText)=8);
    if FNCMOk then begin
      lbNCM.Caption := tbNCMDescricao.Value
    end else begin
      if edNCM.EditText='' then
        lbNCM.Caption := '' 
      else 
      if Length(edNCM.EditText)=8 then begin
        lbNCM.Caption  := '(NCM informado não existe)';
        lbNCM.Style.TextColor := clRed;
      end else begin  
        lbNCM.Caption  := '(NCM com menos de 8 dígitos não pode ser usado com produtos)';
        lbNCM.Style.TextColor := clRed;
      end;
    end;
    UpdateCEST;
  end;
end;

procedure TFrmProduto.UpdatePrecoMarkup;
var P, C, M: Double;
begin
 
  if VarIsNull(edPreco.EditValue) then
    P := 0 else
    P := edPreco.EditValue;

  if VarIsNull(edCusto.EditValue) then
    C := 0 else
    C := edCusto.EditValue;

  if VarIsNull(edMarkup.EditValue) then
    M := 0 else
    M := edMarkup.EditValue;
    
    
  if cbPrecoAuto.Checked then begin
    if cbSeguirMarkupPadrao.Checked then begin
      edMarkup.Value := gConfig.Margem;
      M := gConfig.Margem;
    end;
    
    if (C>0) and (M>0) then
      edPreco.Value := DuasCasas(C + (C * (M/100))) else
      edPreco.Clear;
  end else 
  begin
    if (P>0) and (C>0) then
      edMarkup.Value := DuasCasas(((P/C)-1) * 100) else
      edMarkup.Clear;
  end;
end;

function FloatStrToCurrencyStr(S: String): String;
var C: Currency;
begin
  C := StrParaFloat(S);
  Result := CurrencyToStr(C);
end;

function FloatStrToPercStr(S: String): String;
var D: Double;
begin
  D := StrParaFloat(S);
  Result := PercToStr(D);
end;

procedure TFrmProduto.UpdateST;
var 
  I: Integer;
  S: String;
  sl: TStrings;
  B: Boolean;
  E: Extended;
begin
  I := StrToIntDef(edBRTrib.EditText, 0);
  lcICMSSt.Visible := (I>0) and Dados.TribTemSt(I);
  lcDescrSt.Visible := lcICMSSt.Visible;

  if not lcICMSSt.Visible then Exit;

  B := False;

  sl := TStringList.Create;
  try
    case MTModSt.Value of
      4 : begin
        edICMSSt.Text := 'por MVA';
        sl.Text := MTMVA.Value;
        B := True;
      end;
      5 : begin
        edICMSSt.Text := 'por Pauta';
        sl.Text := MTPauta.Value;
      end
    else
      edICMSSt.Text := '';
    end;

    S := '';
    for I := 0 to sl.Count-1 do begin
      E := StrParaFloat(sl.ValueFromIndex[I]);
      if E>0.009 then begin
        if S>'' then S := S + '  ';
        S := S + sl.Names[I];
        if B then
          S := S + '=' + PercToStr(E) else
          S := S + '=' + CurrencyToStr(E);
      end;
    end;

    lbDescrSt.Caption := S;
  finally
    sl.Free;
  end;
end;

procedure TFrmProduto.ValidaSAT;
var 
  I : Integer;
  S : String;
begin
  if not Dados.SATAtivo then Exit;
  S := Trim(edCodigo.Text);
  for I := 1 to Length(S) do
    if not (S[I] in ['0'..'9']) then 
      raise Exception.Create('O SAT permite apenas dígitos numéricos no código do produto');
end;

procedure TFrmProduto.wmProxControl(var Msg: TMsg);
begin
  Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmProduto.cmGravarClick(Sender: TObject);
var 
  Cat: String;
  DS : TDataSource;
begin
  Paginas.ActivePage := tsDados;
  edCateg.SetFocus;
  edDescr.SetFocus;
  if cbPrecoAuto.Checked then begin
    if (edCusto.Value<0.001) then begin
      edCusto.SetFocus;
      raise exception.Create(SInformarCusto);
    end;

    if edMarkup.Value<0.001 then begin
      if lcMarkup.Enabled then edMarkup.SetFocus;
      raise exception.Create(SInformarMarkup);
    end;  
  end;

  if Dados.NFAtivo and (Trim(edUnid.Text)='') then begin
    Paginas.ActivePage := tsDados;
    grEstoque.MakeVisible;
    edUnid.SetFocus;
    raise Exception.Create(SUnidObrigatoria);
  end;  
    
  if cbPrecoAuto.Checked and cbSeguirMarkupPadrao.Checked then 
    MTMargem.Clear else
    MTMargem.AsVariant := edMarkup.Value;

  if cbComissaoPadrao.Checked then begin
    MTComissaoPerc.Clear;
    MTComissaoLucro.Clear;
  end else begin
    MTComissaoPerc.Value := edComissaoPerc.Value;
    MTComissaoLucro.Value := (edComissaoLucro.ItemIndex=1);
  end;

  MTFornecedor.Value := FListaFor.Padrao;

  MTEstoqueMin.Value := FrmEstoque.Minimo;
  MTEstoqueMax.Value := FrmEstoque.Maximo;
  
  if FNovo and (not cbCodigoAuto.Checked) then
  if Trim(MTCodigo.Value)='' then begin
    Beep;
    if lcCodigo.Enabled then
      edCodigo.SetFocus;
    ShowMessage(SCampoCódigoNãoPodeSerDeixadoEmBr);
    Exit;
  end; 
   
  if (MTCodigo.Value <> CodAnt) and (MTCodigo.Value>'') then 
  if tPro.Locate('Codigo', MTCodigo.Value, [loCaseInsensitive]) then begin // do not localize
    Beep;
    if not gConfig.CodProdutoDuplicados then TFrmChecarCodProdutoDuplicado.Create(self).ShowModal;
    if not gConfig.CodProdutoDuplicados then begin
      edCodigo.SetFocus;
      Exit;
    end;
  end;
  ValidaSAT;
  if Trim(MTDescricao.Value)='' then begin // do not localize
    Beep;
    edDescr.SetFocus;
    ShowMessage(SCampoDescriçãoNãoPodeSerDeixadoE);
    Exit;
  end; 

  if lgrBr.Visible then begin
    with Dados do
    if (lbNCM.Caption='') then begin 
      if NFAtivo then begin
        lgrBR.MakeVisible;
        edNCM.SetFocus;
        raise exception.Create('É necessário informar o NCM do produto');
      end;
    end else
    if not FNCMOk then begin
      lgrBR.MakeVisible;
      edNCM.SetFocus;
      raise exception.Create(lbNCM.Caption);
    end;
  
    with Dados do 
    if not FCESTOk then begin
      if edCEST.Enabled then begin
        lgrBR.MakeVisible;
        edCEST.SetFocus;
      end;
      if edCEST.EditText='' then
        raise exception.Create('É necessário informar o CEST do produto') else
        raise exception.Create(lbCEST.Caption);
    end;
  
    with Dados do 
    if lbbrtrib.Caption='' then begin
      if NFAtivo then begin
        lgrBR.MakeVisible;
        edBRTrib.SetFocus;
        raise exception.Create('É necessário informar a tributação do produto');
      end;
    end else
    if not FBRTribOk then begin
      lgrBR.MakeVisible;
      edBRTrib.SetFocus;
      raise exception.Create(lbBRtrib.Caption);
    end;                     
  end;
  
  with Dados do begin
    DebugMsg(Self, 'cmGravarClick - 1');
    InitTran(DB, [tPro], True);
    try
      DebugMsg(Self, 'cmGravarClick - 2');
      if FNovo then
        tPro.Insert
      else 
      if tPro.FindKey([MTID.Value]) then 
        tPro.Edit 
      else
        Raise Exception.Create(SProdutoExcluido);

      DebugMsg(Self, 'cmGravarClick - 3');
        
      if MTtax_def.Value then
        MTtax_id.Clear;
          
      TransfDadosEsp(MT, tPro, '|CustoUnitario|ID|');
      DebugMsg(Self, 'cmGravarClick - 4');
      tProCadastroRapido.Value := False;
      if not FNovo then begin
        tProAlteradoEm.Value := Now;
        tProAlteradoPor.Value := Dados.CM.UA.Username;
      end;
      tPro.Post;  
      DebugMsg(Self, 'cmGravarClick - 5');
      SaveProdFor;
      DebugMsg(Self, 'cmGravarClick - 6');
      DB.Commit;
      DebugMsg(Self, 'cmGravarClick - 7');
      if FNovo then
        Tab.Locate('ID', tProID.Value,[]) else
        Tab.Refresh;
      DebugMsg(Self, 'cmGravarClick - 8');
    except
      DB.Rollback;
      Raise;
    end;

    if cbNaoControlaEstoque.Checked then edAtual.Clear;
    if CorrigeEstoque(tProID.Value, FEstoqueAnt, edAtual.Value) then begin
      Tab.Refresh;
      DebugMsg(Self, 'cmGravarClick - 9');
    end;
    if Abs(FCustoAnt - MTCustoUnitario.Value)>0.001 then begin
      CorrigeCusto(tProID.Value, MTCustoUnitario.Value);
      DebugMsg(Self, 'cmGravarClick - 10');
      Tab.Refresh;
    end;
    DebugMsg(Self, 'cmGravarClick - 11');
  end;
  
  FrmPri.refreshRevisarCadProduto;
  FFechando := True;

  DebugMsg(Self, 'cmGravarClick - 12');
  
  ModalResult := mrOk;
end;

procedure TFrmProduto.ConfigNFE;
begin
  with Dados do begin 
    lcNCM.Visible := SameText(gConfig.PaisNorm, 'BR');
    lcNCMDescr.Visible := lcNCM.Visible;
    lcBRTrib.Visible := lcNCM.Visible;
    lcBrTribNome.Visible := lcNCM.Visible;

    lgrTax.Visible := not SameText(gConfig.PaisNorm, 'BR');
    lgrBR.Visible := SameText(gConfig.PaisNorm, 'BR');
  end;
end;

procedure TFrmProduto.CustomDrawBorder(
    AViewInfo: TcxContainerViewInfo; 
    ACanvas: TcxCanvas; const R: TRect; var AHandled: Boolean; out ABorderWidth: Integer);
begin
//  ACanvas.DrawComplexFrame(R, clBlue, clBlue, [bLeft, bRight, bBottom]);
  AHandled := True;
  ABorderWidth := 0;
end;

procedure TFrmProduto.cxLabel3Click(Sender: TObject);
begin
  edDescr.SetFocus;
end;

procedure TFrmProduto.cxLabel6Click(Sender: TObject);
begin
  edCateg.SetFocus;
end;

procedure TFrmProduto.cxLabel7Click(Sender: TObject);
begin
  edUnid.SetFocus;
end;

procedure TFrmProduto.btnExcluirClick(Sender: TObject);
var
  Orig: String;

function PodeApagarMarca: Boolean;
begin 
  Result := True;
  tAux.Refresh;
  tAux.SetRange([tMarcaUID.Value], [tMarcaUID.Value]);
  if tAux.IsEmpty then Exit;
  if not FNovo then 
    if (tAux.RecordCount=1) and (tAux.FieldByName('ID').AsLongWord=MTID.Value) then Exit;
  Result := False;
end;

begin
  if edCateg.Focused then begin
    if SimNao(SConfirmaExcluir+' '+tCategDescricao.Value+'?') then begin
      Orig := tCategDescricao.Value;
      Q.Active := False;
      Q.SQL.Text := 'select count(*) from produto where (Categoria like '+QuotedStr(tCategDescricao.Value)+')';
      if not FNovo then
         Q.SQL.Text := Q.SQL.Text + ' AND (ID <> '+MTID.AsString+')';
      Q.Active := True;
      Caption := Q.Fields[0].AsString;
      if Q.Fields[0].Value>0 then
        ShowMessage(SCategEmUsoOutrosProdutos) 
      else begin
        tCateg.Delete;
        if (edCateg.EditValue<>null) and SameText(edCateg.EditValue, Orig) then
          edCateg.Clear;
      end;
    end;
    edCateg.DroppedDown := True;
  end;

  if edUnid.Focused then begin
    if SimNao(SConfirmaExcluir+' '+tUnidDescricao.Value+'?') then begin
      Orig := tUnidDescricao.Value;
      Q.Active := False;
      Q.SQL.Text := 'select count(*) from produto where (Unid like '+QuotedStr(tUnidDescricao.Value)+')';
      if not FNovo then
         Q.SQL.Text := Q.SQL.Text + ' AND (ID <> '+MTID.AsString+')';
      Q.Active := True;
      Caption := Q.Fields[0].AsString;
      if Q.Fields[0].Value>0 then
        ShowMessage(SUnidEmUsoOutrosProdutos) 
      else begin
        tUnid.Delete;
        if (edUnid.EditValue<>null) and SameText(edUnid.EditValue, Orig) then
          edUnid.Clear;
      end;
    end;
    edUnid.DroppedDown := True;
  end;

  if edMarca.Focused then begin
    if tMarca.IsEmpty then Exit;

    if not PodeApagarMarca then begin
      ShowMessage(SMarcaEmUsoOutrosProdutos);
      Exit;
    end;
    
    if SimNao(SConfirmaExcluir+' '+tMarcaNome.Value+'?') then begin
      if MTMarca.Value=tMarcaUID.Value then begin
        MTMarca.Clear;
        edMarca.Clear;
      end;  
      tMarca.Delete;
    end;  
      
    edMarca.DroppedDown := True;
  end;  
end;

procedure TFrmProduto.btnManterAbertoClick(Sender: TObject);
begin
  EnableDisable;
end;

procedure TFrmProduto.btnPremiumClick(Sender: TObject);
begin
  OpenPremium('comissao');
end;

procedure TFrmProduto.btnEditarClick(Sender: TObject);
var S, Orig: String;
begin
  if edCateg.Focused then begin
    S := tCategDescricao.Value;
    Orig := S;
    if TFrmBasicTextEdit.Create(Self).Editar(SCategoria, SCategoria, 35, S) then begin
      Q.Active := False;
      Q.SQL.Text := 'update produto set categoria = '+QuotedStr(S)+' where categoria = '+QuotedStr(Orig);
      Q.ExecSQL;
      if tCateg.FindKey([S]) then begin
        if tCateg.FindKey([Orig]) then
          tCateg.Delete;
      end else 
      if tCateg.FindKey([Orig]) then begin
        tCateg.Edit;
        tCategDescricao.Value := S;
        tCateg.Post;
      end;
      if (edCateg.EditValue<>null) and SameText(edCateg.EditValue, Orig) then
        edCateg.EditValue := S;
    end;
    edCateg.DroppedDown := True;
  end;

  if edUnid.Focused then begin
    S := tUnidDescricao.Value;
    Orig := S;
    if TFrmBasicTextEdit.Create(Self).Editar(SUnidadeMed, SUnidadeMed, 5, S) then begin
      Q.Active := False;
      Q.SQL.Text := 'update produto set unid = '+QuotedStr(S)+' where Unid = '+QuotedStr(Orig);
      Q.ExecSQL;
      if tUnid.FindKey([S]) then begin
        if tUnid.FindKey([Orig]) then
          tUnid.Delete;
      end else 
      if tUnid.FindKey([Orig]) then begin
        tUnid.Edit;
        tUnidDescricao.Value := S;
        tUnid.Post;
      end;
      if (edUnid.EditValue<>null) and SameText(edUnid.EditValue, Orig) then
        edUnid.EditValue := S;
    end;
    edUnid.DroppedDown := True;
  end;

  if edMarca.Focused then begin
    S := tMarcaNome.Value;
    Orig := S;
    if TFrmBasicTextEdit.Create(Self).Editar(SMarca, SMarca, 40, S) then begin
      tMarca.Edit;
      tMarcaNome.Value := S;
      tMarca.Post;
    end;
    edMarca.DroppedDown := True;
  end;  
  
end;

procedure TFrmProduto.btnAdicionarClick(Sender: TObject);
var 
  S: String;
  G: TGuid;
begin
  if edCateg.Focused then begin
    S := '';
    if TFrmBasicTextEdit.Create(Self).Editar(SCategoria, SCategoria, 35, S) then begin
      if not tCateg.FindKey([S]) then begin
        tCateg.Append;
        tCategDescricao.Value := S;
        tCateg.Post;
        edCateg.EditValue := S;
      end;
      edCateg.EditValue := S;
    end else
      edCateg.DroppedDown := True;
  end;

  if edUnid.Focused then begin
    S := '';
    if TFrmBasicTextEdit.Create(Self).Editar(SUnidadeMed, SUnidadeMed, 5, S) then begin
      if not tUnid.FindKey([S]) then begin
        tUnid.Append;
        tUnidDescricao.Value := S;
        tUnid.Post;
      end;
      edUnid.EditValue := S;
    end else
      edUnid.DroppedDown := True;
  end;

  if edMarca.Focused then begin
    S := '';
    if TFrmBasicTextEdit.Create(Self).Editar(SMarca, SMarca, 40, S) then begin
      if not tMarca.Locate('Nome', S, []) then begin
        G := TGuid.NewGuid;
        tMarca.Append;
        tMarcaUID.AsGuid := G;
        tMarcaNome.Value := S;
        tMarca.Post;
      end else
        G := tMarcaUID.AsGuid;
      MTMarca.AsGuid := G;
      edMarca.Reset;
      Dados.ApagaMarcaVazia;
    end else
      edMarca.DroppedDown := True;
  end;  
end;

procedure TFrmProduto.lbCESTClick(Sender: TObject);
begin
  if not Assigned(FFrmCEST) then
    FFrmCEST := gCESTPesqList.GetFrm;
  FFrmCEST.Run;
  Dados.tbCest.Refresh;
end;

procedure TFrmProduto.lbConfigComissaoClick(Sender: TObject);
begin
  TFrmConfigComissao.Create(Self).ShowModal;
  EnableDisable;
end;

procedure TFrmProduto.lbMarkupClick(Sender: TObject);
begin
  TFrmConfigPrecoAuto.Create(Self).ShowModal;
  UpdatePrecoMarkup;
  EnableDisable;
end;

procedure TFrmProduto.lbOpcoesFidClick(Sender: TObject);
begin
  TFrmConfigFid.Create(Self).ShowModal;
  EnableDisable;
end;

procedure TFrmProduto.edFidelidadePropertiesChange(Sender: TObject);
begin
  EnableDisable;
end;

function IsPictureEmpty(APicture: TPicture): Boolean;
begin
  Result := not Assigned(APicture.Graphic) or APicture.Graphic.Empty;
end;

procedure TFrmProduto.edFotoPropertiesEditValueChanged(Sender: TObject);
begin
  if IsPictureEmpty(edFoto.Picture) then
    pagFoto.ActivePageIndex := 0 else
    pagFoto.ActivePageIndex := 1;
end;

procedure TFrmProduto.edICMSSTFocusChanged(Sender: TObject);
begin
  EnableDisable;
  lcInfoSt.Visible := edICMSST.Focused;
end;

procedure TFrmProduto.edICMSSTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then 
    lciFornecedores.MakeVisible;
end;

procedure TFrmProduto.edICMSSTKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then 
    Key := #0;
end;

procedure TFrmProduto.edICMSSTPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var 
  aMVA, aPauta : String;
  aModo : Variant;
begin
  aMVA := MTMVA.Value;
  aPauta := MTPauta.Value;
  aModo := MTModSt.AsVariant;
  if TFrmMVAPauta.Create(Self).Editar(aMVA, aPauta, aModo) then begin
    if not (MT.State in [dsInsert, dsEdit]) then MT.Edit;
    MTMVA.Value := aMVA;
    MTPauta.Value := aPauta;
    MTModSt.Value := aModo;
    UpdateSt;
  end;
end;

function TFrmProduto.CanClose: Boolean;
begin
  Result := not (
    edCateg.DroppedDown or
    edUnid.DroppedDown);
end;

procedure TFrmProduto.cbCodigoAutoClick(Sender: TObject);
begin
  if not cbCodigoAuto.Focused then Exit;
  
  edCodigo.Enabled := not cbCodigoAuto.Checked;
  if not edCodigo.Enabled then begin
    edCodigo.Clear;
    MTCodigo.Clear;
    edDescr.SetFocus;
  end else
    edCodigo.SetFocus;
  saveFormOptionBool(Self, 'cbCodigoAuto', cbCodigoAuto.Checked);
end;

procedure TFrmProduto.cbComissaoPadraoClick(Sender: TObject);
begin
  EnableDisable;
  if (not cbComissaoPadrao.Checked) and cbComissaoPadrao.Focused then
    edComissaoPerc.SetFocus;
end;

procedure TFrmProduto.cbNaoControlaEstoquePropertiesEditValueChanged(
  Sender: TObject);
begin
  EnableDisable;
end;

procedure TFrmProduto.cbPrecoAutoPropertiesEditValueChanged(Sender: TObject);
begin
  if cbPrecoAuto.Focused then begin
    UpdatePrecoMarkup;
    EnableDisable;
    if cbPrecoAuto.Checked then begin
      if edmarkup.Visible and edMarkup.Enabled and (not VarIsNull(edCusto.EditValue)) and (edCusto.EditValue>0) then
        edMarkup.SetFocus else
        edCusto.SetFocus; 
    end else
      edPreco.SetFocus;
  end;  
end;

procedure TFrmProduto.cbSeguirMarkupPadraoPropertiesEditValueChanged(
  Sender: TObject);
begin
  if not cbSeguirMarkupPadrao.Focused then Exit;
  
  if cbSeguirMarkupPadrao.Checked then 
    edMarkup.Value := gConfig.Margem;
    
  EnableDisable;  
  UpdatePrecoMarkup;

  if edMarkup.Enabled and edMarkup.Visible then
    edMarkup.SetFocus 
  else
  if edCusto.Visible and edCusto.Enabled then
    edCusto.SetFocus;
end;

procedure TFrmProduto.edFidelidadeClick(Sender: TObject);
begin
  EnableDisable;
  if edFidelidade.Focused and edFidPontos.Enabled then
    edFidPontos.SetFocus;
end;

procedure TFrmProduto.ChangeEstoque(Sender: TObject);
begin
  EnableDisable;
end;

procedure TFrmProduto.cmCancelarClick(Sender: TObject);
begin
  FFechando := True;
  Paginas.ActivePage := tsDados;
  edCodigo2.SetFocus;
  edDescr.SetFocus;
  Close;
end;

procedure TFrmProduto.FocaFornecedor;
begin
  lciFornecedores.MakeVisible;
  self.FListaFor.Fornecedores[0].edFor.SetFocus;
end;

procedure TFrmProduto.FocusAfterFornecedor(Sender: TObject);
begin
  lcObs.MakeVisible;
end;

procedure TFrmProduto.FocusNextEstoque(Sender: TObject);
begin
  if lgrBR.Visible then begin 
    lgrBR.MakeVisible;
    edNCM.SetFocus;
  end else
  if lgrTax.Visible then begin
    lgrTax.MakeVisible;
    if lcTax.Enabled then
      edTax.SetFocus else
      edTaxDef.SetFocus;
  end else begin
    lciFornecedores.MakeVisible;
    self.FListaFor.Fornecedores[0].edFor.SetFocus;
  end;
end;

procedure TFrmProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  FVen:= nil;
  FMgr.Clear;
  Action:= CaFree;
end;

procedure TFrmProduto.FormShow(Sender: TObject);
var 
  SaveIndex, i: Integer;
  SIndex : String;
begin
  FMarcaAnt := MTMarca.Value;
  ConfigNFE;
  UpdateNCM;
  UpdateBrTrib;
  UpdateSt;
  cbComissaoPadrao.Width := cxTextWidth(cbComissaoPadrao.Style.Font, cbComissaoPadrao.Caption) + 20;
{  if MTMargem.IsNull and (gConfig.Margem>0) and MTPrecoAuto.Value then 
  begin
    edMarkup.Value := gConfig.Margem;
    cbSeguirMarkupPadrao.Checked := True;                                               
  end else 
  begin
    edMarkup.Value := MTMargem.Value;
    cbSeguirMarkupPadrao.Checked := False;
  end;}
  
  cbComissaoPadrao.Checked := MTComissaoPerc.IsNull;
  EnableDisable;
  UpdatePrecoMarkup;

  if not cbComissaoPadrao.Checked then begin
    edComissaoPerc.Value := MTComissaoPerc.Value;
    edComissaoLucro.ItemIndex := Byte(MTComissaoLucro.Value);
  end;

  Paginas.ActivePage := tsDados;

  cmConfig.Enabled := Dados.CM.UA.Admin;

//  PostMessage(Handle, WM_SYSCOMMAND, SC_MAXIMIZE, 0);
{  qCat.First;
  while not qCat.Eof do
  begin
    if Trim(qCatCategoria.Value)<>'' then
      edCategoria.Properties.Items.Add(qCatCategoria.Value);
    qCat.Next;
  end;

  qUnidade.First;
  while not qUnidade.Eof do
  begin
    if Trim(qUnidadeUnid.Value)<>'' then
      edUnidade.Properties.Items.Add(qUnidadeUnid.Value);
    qUnidade.Next;
  end;}

  pagFoto.ActivePageIndex := 1;

  if mtImagem.IsNull then
    pagFoto.ActivePageIndex := 0 else
    pagFoto.ActivePageIndex := 1;

  SaveIndex := Paginas.ActivePageIndex;

  grTran.Enabled := not FNovo;
    
  if not FNovo then begin
    with TfbMovEst.Create(Self) do begin
      panPri.Parent := panTran;
      AtualizaDireitos;
      ParentChanged;
      Operacao := 0;
      Filtro := MTID.Value;
    end;

    with Dados do begin
      SIndex := tbMovEst.IndexName;
      try
        tbMovEst.IndexName := 'IProdPendCancelado';
        if tbMovEst.FindKey([MTID.Value, True, False]) then begin
          grPend.Visible := True;
          with TfbMEPend.Create(Self) do begin
            panPri.Parent := panPend;
            AtualizaDireitos;
            ParentChanged;
            Operacao := 0;
            Filtro := MTID.Value;
          end;
        end;
      finally
        tbMovEst.IndexName := SIndex;
      end;              
    end;
  end else begin
    grTran.Visible := False;
    grPend.Visible := False;
  end;

  I := getFormOptionInt(Self, 'grBottom.ItemIndex');

  try
    if (grBottom.Items[i].Visible) and grBottom.Items[i].Enabled then
      grBottom.ItemIndex := I;
  except
    grBottom.ItemIndex := 0;
  end;

  FShowed := True;
  
  if (Screen.Width=640) then
    PostMessage(Handle, WM_SYSCOMMAND, SC_MAXIMIZE, 0);

  if lcCodigo.Enabled then
    edCodigo.SetFocus else
    edDescr.SetFocus;    
end;

procedure TFrmProduto.grBottomTabChanged(Sender: TObject);
begin
  if FShowed then begin
    saveFormOptionInt(Self, 'grBottom.ItemIndex', grBottom.ItemIndex);
    case grBottom.ItemIndex of
      0 : begin
        if lcEstoqueAtual.Enabled then
          edAtual.SetFocus else
          edUnid.SetFocus;
      end;
      1 : if lcTax.Enabled then edTax.SetFocus;
      2 : edNCM.SetFocus;
      3 : FListaFor.FocarPrimeiro;
      4 : edObs.SetFocus;
    end;
    
  end;
end;

procedure TFrmProduto.imgBarcodeScanClick(Sender: TObject);
begin
  if lcCodigo.Enabled then
    edCodigo.SetFocus;
end;

procedure TFrmProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_Enter : 
    if not (edBRTrib.Focused or edICMSSt.Focused or edTax.Focused or FListaFor.IsFocused) then
      PostMessage(Handle, wm_user, 0, 0);
      
    Key_F2 : if cmGravar.Enabled then cmGravarClick(nil);

    Key_F9 : edICMSSTPropertiesButtonClick(nil, 0);
    
    Key_F5 : 
    if edNCM.Focused then
      edNCMPropertiesButtonClick(nil, 0)
    else
    if edBrTrib.Focused then
      edBrTribPropertiesButtonClick(nil, 0)
    else
    if FListaFor.IsFocused then
      FListaFor.FocusedFrm.Pesquisar
    else
    if edCEST.Focused then
      edCESTPropertiesButtonClick(nil, 0);

    Key_Esc   : 
      if CanClose then 
        Close; 
  end;
end;

procedure TFrmProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then Key := #0;
  if Key = #27 then Key := #0;
  
end;

procedure TFrmProduto.FormCreate(Sender: TObject);
begin
  FShowed := False;
  THackTab(grBottom.TabbedOptions).Style := Paginas.Style;
  edPreco.Properties.DisplayFormat := gConfig.cxMaskUnitario;
  edCusto.Properties.DisplayFormat := gConfig.cxMaskUnitario;
  
  Paginas.HideTabs := True;
  grComissao.Enabled := Dados.CM.UA.Admin;
  grFidelidade.Enabled := Dados.CM.UA.Admin;
  Paginas.ActivePage := tsDados;

  lgrBR.ShowBorder := False;
  lgrTAX.ShowBorder := False;
  
  ActiveControl := edCodigo;
  if Screen.Width<=1024 then
    lciFornecedores.CaptionOptions.Visible := True;
  FFrmNCM := nil;
  FFrmBrTrib := nil;
  FFrmTax := nil;
  FFrmCEST := nil;
  if tUnid.IsEmpty then begin
    tUnid.Insert;
    tUnidDescricao.Value := SKg;
    tUnid.Post;

    tUnid.Insert;
    tUnidDescricao.Value := SPeca;
    tUnid.Post;

    tUnid.Insert;
    tUnidDescricao.Value := SLata;
    tUnid.Post;

    tUnid.Insert;
    tUnidDescricao.Value := SMetro;
    tUnid.Post;
  end;
  lcRecursoPro.Visible := not gConfig.IsPremium;
  FNovo := False;
  edFidelidade.Enabled := gConfig.IsPremium;
  FEstoqueAnt := 0;
  FFechando := False;
  FrmEstoque := TFrmProd_Estoque.Create(Self);
  FrmEstoque.OnFocusNext := FocusNextEstoque;
  FrmEstoque.OnChange := ChangeEstoque;

  edLimites.Properties.PopupControl := FrmEstoque.panPri;
  
  lbSemFoto.Align := alClient;
  MT.Open;
  pagFoto.ActivePageIndex := 0;
//  edPrecoVenda.Properties.ReadOnly := not Permitido(daProEditarPreco);
//  edPodeAlterarPreco.Properties.ReadOnly := not Permitido(daProEditarPreco);
  CodAnt := '';
  FDadosFor.dcCodigo := 0;
  FListaFor := TFrmListaFornecedores.Create(Self);
  FListaFor.OnFocusNext := FocusAfterFornecedor;
  FListaFor.panPri.Parent := panFornecedores;
  FListaFor.OnGetMinWidth := MinCaptionWidth;
  panFornecedores.AutoSize := True;
end;

procedure TFrmProduto.FormDestroy(Sender: TObject);
begin
  if Assigned(FFrmNCM) then gNCMPesqList.ReleaseFrm(FFrmNCM);
  if Assigned(FFrmBrTrib) then gBRTribPesqList.ReleaseFrm(FFrmBrTrib);
  if Assigned(FFrmCEST) then gCestPesqList.ReleaseFrm(FFrmCest);
  if Assigned(FFrmTax) then gTaxPesqList.ReleaseFrm(FFrmTax);
  
end;

procedure TFrmProduto.edBrTribFocusChanged(Sender: TObject);
begin
  EnableDisable;
  lcInfoBrTrib.Visible := edBrTrib.Focused;
  if edBrTrib.Focused then
    lcBrTrib.CaptionOptions.Text := 'Tributação (F5)' else
    lcBrTrib.CaptionOptions.Text := 'Tributação';
end;

procedure TFrmProduto.edBrTribKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=13) then 
  if lcICMSSt.Visible then 
    edICMSSt.SetFocus else
    lciFornecedores.MakeVisible;
end;

procedure TFrmProduto.edBrTribKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then Key := #0;
end;

procedure TFrmProduto.edBrTribPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var 
  aCod: Word;  
  aOk : Boolean;
begin
  if not Assigned(FFrmBrTrib) then
    FFrmBrTrib := gBrTribPesqList.GetFrm;
  aCod := StrToIntDef(edBrTrib.EditText, 0);
  aOk := FFrmBrTrib.Pesquisar(aCod);
  Dados.tBrTrib.Refresh;
  if aOk then 
    MTBrTrib.Value := aCod;
  UpdateBrTrib;  
end;

procedure TFrmProduto.edBrTribPropertiesChange(Sender: TObject);
begin
  UpdateBrTrib;
  UpdateSt;
end;

procedure TFrmProduto.edCategKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key <> KEY_ENTER) and (Key  <> Key_TAB) and (Key <> Key_ESC) and (Key <> Key_F2) then
    edCateg.DroppedDown := True;
end;

procedure TFrmProduto.edCategPropertiesChange(Sender: TObject);
begin
  edCateg.PostEditValue;
end;

procedure TFrmProduto.edCategPropertiesInitPopup(Sender: TObject);
begin
  if not tCateg.FindKey([edCateg.EditValue]) then begin
    tCateg.Append;
    tCategDescricao.AsVariant := edCateg.EditValue;
    tCateg.Post;
  end;

  edCateg.Properties.Grid.Align := alClient;
  panLookup.Parent := edCateg.Properties.Grid.Parent;
  panLookup.Visible := True;
  panLookup.Align := alTop;
end;

procedure TFrmProduto.edCestFocusChanged(Sender: TObject);
begin
  EnableDisable;
  lclbInfoCEST.Visible := edCEST.Focused;
  if edCEST.Focused then
    lcCEST.CaptionOptions.Text := 'CEST (F5)' else
    lcCEST.CaptionOptions.Text := 'CEST';
end;

procedure TFrmProduto.edCestPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var 
  aCod: Cardinal;  
  aOk : Boolean;
begin
  if not Assigned(FFrmCEST) then
    FFrmCEST := gCESTPesqList.GetFrm;
  aCod := StrToIntDef(edCEST.EditText, 0);
  aOk := FFrmCEST.Pesquisar(aCod, StrToIntDef(edNCM.EditText, 0));
  Dados.tbCEST.Refresh;
  if aOk then 
    MTCEST.Value := aCod;
  UpdateCESt;
end;

procedure TFrmProduto.edCestPropertiesChange(Sender: TObject);
begin
  UpdateCEST;
end;

procedure TFrmProduto.edCodigoExit(Sender: TObject);
var
  ms : TMemoryStream;
begin
{  Dados.tProdD.Open;
  if gConfig.Autocad and (CodAnt<>edCodigo.Text) then
  if Dados.tbProdD.Locate('codbar', edCodigo.Text, [loCaseInsensitive]) then begin // do not localize
    Beep;
    MTDescricao.Value := Dados.tProdDdescricao.Value;
    MTCategoria.Value := Dados.tProdDcategoria.Value;
    MTUnid.text := Dados.tProdDunid.Value;
    if not Dados.tProdDimagem.IsNull then begin
       pagFoto.ActivePageIndex := 1;
       ms := TMemoryStream.create;
       try
         Dados.tProdDimagem.SaveToStream(ms);
         ms.seek(0,0);
         MTimagem.LoadFromStream(ms);
       finally
         ms.Free;
       end;
    end;
    edPreco.SetFocus;

    TpanAlertaAutocad.Create(Self).Mostrar(Self);
  end;}
end;

procedure TFrmProduto.edCodigoFocusChanged(Sender: TObject);
begin
  lcInfoCod.Visible := edCodigo.Focused or edCodigo2.Focused;
end;

procedure TFrmProduto.edCustoPropertiesChange(Sender: TObject);
begin
  if edCusto.Focused then edCusto.PostEditValue;
end;

procedure TFrmProduto.edCustoPropertiesEditValueChanged(Sender: TObject);
begin
  if edCusto.Focused then UpdatePrecoMarkup;
end;

end.
