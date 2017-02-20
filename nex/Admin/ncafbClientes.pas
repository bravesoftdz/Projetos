unit ncafbClientes;
{
    ResourceString: Dario 10/03/13
}

interface

{$I NEX.inc}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmFormBase, dxBar, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxMaskEdit, cxCurrencyEdit, cxTextEdit, cxCalendar, cxMemo, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, 
  nxdb, 
  dxBarExtItems, 
  cxGridCustomPopupMenu, cxGridPopupMenu, cxInplaceContainer,
  cxVGrid, cxDBVGrid, cxImageComboBox, cxTimeEdit, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, cxDropDownEdit,
  cxContainer, cxLabel, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  frxClass, frxDBSet, frxDesgn, kbmMemTable, frxExportPDF,
  frxExportRTF, frxDCtrl, frxCross, frxChBox, frxBarcode, frxRich,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  cxProgressBar, cxRadioGroup, Buttons, LMDControl, 
  cxGroupBox, cxBarEditItem,
  cxDBLookupComboBox, cxLookAndFeels, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, cxNavigator,
  dxPScxPivotGridLnk, ncEspecie, dxGDIPlusClasses;

type
  TfbClientes = class(TFrmBase)
    Tab: TnxTable;
    dsCli: TDataSource;
    cmTempo: TdxBarSubItem;
    cmPagarDebito: TdxBarLargeButton;
    pmCredito: TdxBarPopupMenu;
    cmCorrigirCred: TdxBarLargeButton;
    cmSubCredito: TdxBarLargeButton;
    rpDesigner: TfrxDesigner;
    dbClientes: TfrxDBDataset;
    cmEtq: TdxBarLargeButton;
    mtEtq: TkbmMemTable;
    frxRichObject1: TfrxRichObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxDialogControls1: TfrxDialogControls;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frEtq: TfrxReport;
    cmListaEmail: TdxBarLargeButton;
    PB: TcxProgressBar;
    cmResgProduto: TdxBarButton;
    cmCorrigirFid: TdxBarButton;
    Timer1: TTimer;
    Timer2: TTimer;
    cmZerarTudo: TdxBarButton;
    cmExibir: TdxBarLargeButton;
    pmExibir: TdxBarPopupMenu;
    cmFiltroCli: TdxBarListItem;
    cmObs: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    LMDSimplePanel1: TLMDSimplePanel;
    dxBarSubItem2: TdxBarSubItem;
    cmSubExibir: TdxBarSubItem;
    cmTodos: TdxBarButton;
    cmComDebito: TdxBarButton;
    cmComCredito: TdxBarButton;
    cmSubAniver: TdxBarSubItem;
    cmAniverHoje: TdxBarButton;
    cmAniverSemana: TdxBarButton;
    cmAniverProxSemana: TdxBarButton;
    cmAniverMes: TdxBarButton;
    cmAniverProxMes: TdxBarButton;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVNome: TcxGridDBColumn;
    TVInativo: TcxGridDBColumn;
    TVDebito: TcxGridDBColumn;
    TVValorCred: TcxGridDBColumn;
    TVDataNasc: TcxGridDBColumn;
    TVRg: TcxGridDBColumn;
    TVEndereco: TcxGridDBColumn;
    TVBairro: TcxGridDBColumn;
    TVCidade: TcxGridDBColumn;
    TVUVisita: TcxGridDBColumn;
    TVUF: TcxGridDBColumn;
    TVCEP: TcxGridDBColumn;
    TVSexo: TcxGridDBColumn;
    TVObs: TcxGridDBColumn;
    TVemail: TcxGridDBColumn;
    TVTelefone: TcxGridDBColumn;
    TVCodigo: TcxGridDBColumn;
    TVCelular: TcxGridDBColumn;
    TVTemDebito: TcxGridDBColumn;
    TVIncluidoEm: TcxGridDBColumn;
    TVLimDebito: TcxGridDBColumn;
    TVIncluidoPor: TcxGridDBColumn;
    TVAlteradoEm: TcxGridDBColumn;
    TVAlteradoPor: TcxGridDBColumn;
    TVPai: TcxGridDBColumn;
    TVFidPontos: TcxGridDBColumn;
    TVFidTotal: TcxGridDBColumn;
    TVFidResg: TcxGridDBColumn;
    TVMae: TcxGridDBColumn;
    GL: TcxGridLevel;
    cmPorNome: TdxBarButton;
    cmPorUsername: TdxBarButton;
    cmPorCodigo: TdxBarButton;
    cmAniverAmanha: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cmAtivo: TdxBarButton;
    cmInativo: TdxBarButton;
    TVCPF: TcxGridDBColumn;
    TVFornecedor: TcxGridDBColumn;
    cxStyle2: TcxStyle;
    pmBusca: TdxBarPopupMenu;
    TimerSelBusca: TTimer;
    dxBarButton1: TdxBarButton;
    mtEtqStringField: TStringField;
    mtEtqStringField2: TStringField;
    mtEtqStringField3: TStringField;
    mtEtqStringField4: TStringField;
    mtEtqStringField5: TStringField;
    mtEtqStringField6: TStringField;
    mtEtqStringField7: TStringField;
    mtEtqStringField8: TStringField;
    mtEtqStringField9: TStringField;
    mtEtqStringField10: TStringField;
    mtEtqFloatField: TFloatField;
    mtEtqStringField11: TStringField;
    mtEtqStringField12: TStringField;
    mtEtqStringField13: TStringField;
    mtEtqDateTimeField: TDateTimeField;
    mtEtqCurrencyField: TCurrencyField;
    mtEtqStringField14: TStringField;
    mtEtqStringField15: TStringField;
    mtEtqDateTimeField2: TDateTimeField;
    mtEtqStringField16: TStringField;
    mtEtqBooleanField: TBooleanField;
    mtEtqCurrencyField2: TCurrencyField;
    mtEtqGraphicField: TGraphicField;
    mtEtqDateTimeField3: TDateTimeField;
    mtEtqDateTimeField4: TDateTimeField;
    mtEtqStringField17: TStringField;
    mtEtqStringField18: TStringField;
    mtEtqStringField19: TStringField;
    mtEtqFloatField2: TFloatField;
    mtEtqFloatField3: TFloatField;
    mtEtqFloatField4: TFloatField;
    mtEtqStringField20: TStringField;
    mtEtqBooleanField2: TBooleanField;
    mtEtqBooleanField3: TBooleanField;
    mtEtqBooleanField4: TBooleanField;
    mtEtqBooleanField5: TBooleanField;
    mtEtqBooleanField6: TBooleanField;
    mtEtqCurrencyField3: TCurrencyField;
    mtEtqID: TIntegerField;
    mtEtqCodigo: TStringField;
    mtEtqEmail: TMemoField;
    mtEtqObs: TMemoField;
    LMDSimplePanel2: TLMDSimplePanel;
    LMDSimplePanel3: TLMDSimplePanel;
    Image2: TImage;
    edBusca: TcxMaskEdit;
    lbLocalizar: TcxLabel;
    tAux: TnxTable;
    tAuxID: TAutoIncField;
    tAuxCodigo: TStringField;
    tAuxCodigoKey: TStringField;
    tAuxFornecedor: TBooleanField;
    cbSuperBusca: TcxCheckBox;
    TVID: TcxGridDBColumn;
    TVCod: TcxGridDBColumn;
    pmDebito: TdxBarPopupMenu;
    cmPagarDeb: TdxBarButton;
    cmDemonstrativo: TdxBarButton;
    cmSubFid: TdxBarSubItem;
    TabID: TUnsignedAutoIncField;
    TabCodigo: TStringField;
    TabCodigoKey: TStringField;
    TabNome: TWideStringField;
    TabEndereco: TWideStringField;
    TabEndereco2: TWideStringField;
    TabEnd_Numero: TWideStringField;
    TabEnd_CodMun: TWideStringField;
    TabEnd_Dest: TWideStringField;
    TabEnd_Obs: TWideStringField;
    Tabendereco_id: TGuidField;
    TabPais: TWideStringField;
    TabBairro: TWideStringField;
    TabCidade: TWideStringField;
    TabUF: TWideStringField;
    TabCEP: TWideStringField;
    TabNFE_CredIcms: TBooleanField;
    TabSexo: TStringField;
    TabObs: TWideMemoField;
    TabCpf: TWideStringField;
    TabRg: TWideStringField;
    TabTelefone: TWideStringField;
    TabEmail: TWideMemoField;
    TabPassaportes: TFloatField;
    TabPai: TWideStringField;
    TabMae: TWideStringField;
    TabUltVisita: TDateTimeField;
    TabDebito: TCurrencyField;
    TabDataNasc: TDateTimeField;
    TabCelular: TWideStringField;
    TabTemDebito: TBooleanField;
    TabLimiteDebito: TCurrencyField;
    TabFoto: TGraphicField;
    TabIncluidoEm: TDateTimeField;
    TabAlteradoEm: TDateTimeField;
    TabIncluidoPor: TStringField;
    TabAlteradoPor: TStringField;
    TabFidPontos: TFloatField;
    TabFidTotal: TFloatField;
    TabFidResg: TFloatField;
    TabAniversario: TStringField;
    TabSemFidelidade: TBooleanField;
    TabTemCredito: TBooleanField;
    TabPJuridica: TBooleanField;
    TabInativo: TBooleanField;
    TabFornecedor: TBooleanField;
    TabValorCred: TCurrencyField;
    TabRecVer: TLongWordField;
    tAuxNome: TWideStringField;
    tAuxCpf: TWideStringField;
    tAuxRg: TWideStringField;
    TabIdade: TByteField;
    TVTranspEntPadrao: TcxGridDBColumn;
    TabNaoContribICMS: TBooleanField;
    TabIsentoIE: TBooleanField;
    TabConsumidor: TBooleanField;
    cmTraduzir: TdxBarLargeButton;
    TabInfoExtra: TWideStringField;
    TabTranspEntPadrao: TLongWordField;
    TabTranspEnt: TBooleanField;
    TabTipoFor: TByteField;
    TabNomeTransp: TStringField;
    TVInfoExtra: TcxGridDBColumn;
    procedure TVDebitoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVIsentoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVInativoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cmSubCreditoClick(Sender: TObject);
    procedure cmCorrigirCredClick(Sender: TObject);
    procedure FrmBasePaiCreate(Sender: TObject);
    procedure cmNovoClick(Sender: TObject);
    procedure cmEditarClick(Sender: TObject);
    procedure cmApagarClick(Sender: TObject);
    procedure cmPagarDebitoClick(Sender: TObject);
    procedure lbDebTotalDblClick(Sender: TObject);
    procedure btnRecriaDebitosClick(Sender: TObject);
    procedure cmEtqClick(Sender: TObject);
    procedure mtEtqCalcFields(DataSet: TDataSet);
    procedure TVTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure TVTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure TVTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cmListaEmailClick(Sender: TObject);
    procedure cmResgProdutoClick(Sender: TObject);
    procedure cmCorrigirFidClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cbObsClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure edBuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmZerarTudoClick(Sender: TObject);
    procedure cmExibirClick(Sender: TObject);
    procedure edBuscaPropertiesChange(Sender: TObject);
    procedure cmPorNomeClick(Sender: TObject);
    procedure cmAniverHojeClick(Sender: TObject);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cmAtivoClick(Sender: TObject);
    procedure cmInativoClick(Sender: TObject);
    procedure TabFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure TVDataControllerFilterRecord(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var Accept: Boolean);
    procedure TVDataControllerFilterChanged(Sender: TObject);
    procedure TVColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure TVCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure TVCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure Image1Click(Sender: TObject);
    procedure edBuscaEnter(Sender: TObject);
    procedure TimerSelBuscaTimer(Sender: TObject);
    procedure edBuscaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cmCfgClick(Sender: TObject);
    procedure cbSuperBuscaClick(Sender: TObject);
    procedure TVCodigoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cmPagarDebClick(Sender: TObject);
    procedure pmDebitoPopup(Sender: TObject);
    procedure cmDemonstrativoClick(Sender: TObject);
    procedure cmTraduzirClick(Sender: TObject);
  private
    { Private declarations }
    STotDeb,
    STotValor,
    SQuant : String;
    FTipoFiltro : Byte;
    FTipoBusca  : Byte;
    FDataFiltro : TDateTime;
    FAtualizando : Boolean;

    function TextoBusca: String;
    procedure SetTipoFiltro(aTipo: Byte);
    procedure SetTipoBusca(aTipo: Byte);

    procedure ApplyRangeCodigo;

    procedure _Buscar;

  public
    function ToolbarIsRibbonGroup(aBar: TdxBar): Boolean; override;

    procedure CalcTotais;

    procedure RefreshBotoes;
  
    procedure FiltraDados; override;
    class function Descricao: String; override;
    procedure AtualizaDireitos; override;

    procedure processKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); override;

    procedure SetFocusBusca;

    procedure AjustaBusca;

    procedure CopiarEndereco;

    procedure CampoBusca(S: String);
    
    { Public declarations }
  end;


var
  fbClientes: TfbClientes;

implementation

uses 
  Clipbrd,
  ncaDM, 
  ufmImagens, 
  ncaFrmPri, 
  ncClassesBase,
  ncIDRecursos, 
  ncaFrmSenha, ncDebito, ncSalvaCredito, ncaFrmDebito, ncDMServ, 
  ncaFrmCorrigeCredito, ncaFrmImpEtqCli, ncaFrmEmails,
  ncVersoes, ncaFrmAjustaFid, ncaFrmCadCli, ncaFrmDataAtivo, ncaFrmConfigFid,
  ncaFrmLimiteDebPadrao, ncaFrmOpcoes, ncaDMComp, ncaFrmImpDemDeb, ncaStrings,
  ncaFrmConfigRec, ncaFrmEnderecos, ncaDMDemonstrativoDeb, ncaFrmFormatoDemDeb,
  ncEndereco;

// START resource string wizard section
resourcestring
  STodosClientes = 'Todos Clientes';
  SClientesComDébito = 'Clientes com Débito';
  SClientesComCrédito = 'Clientes com Crédito';
  SClientesAtivos = 'Clientes Ativos';
  SClientesInativos = 'Clientes Inativos';
  SAniversariantes = 'Aniversariantes';
  SBuscaPorNome = 'Nome';
  SBuscaPorUsername = 'Username';
  SBuscaPorCódigo = 'Código';
  SEXibir = 'E&xibir: ';
  S1Cliente = '1 Cliente';
  SClientes = ' Clientes';
  STempoAcumuladoDeTodosClientesFoi = 'Tempo acumulado de todos clientes foi zerado com sucesso!';
  SDesejaZerarOsPontosFidelidadeDeT = 'Deseja zerar os pontos fidelidade de TODOS os clientes?';
  SEssaOperaçãoVaiZerarOsPontosFide = 'Essa operação vai zerar os pontos fidelidade de TODOS os clientes da loja. Deseja continuar ?';
  SZerouPontosDeTodosClientes = 'Zerou pontos de todos clientes';
  SClientes_1 = 'Clientes';
  SDébitosReprocessados = 'Débitos Reprocessados!';
  SBarMgrBar1 = 'BarMgrBar1';
  SClientesINATIVOS_1 = 'Clientes INATIVOS';
  SQueNãoVieramNaLojaNosUltimos = 'Que não vieram na loja nos ultimos:';
  SDesejaGerarUmaListaDeEMailsDosCl = 'Deseja gerar uma lista de e-mails dos clientes? Você poderá copiar e colar os endereços para enviar e-mail para todos seus clientes usando sua conta de e-mail.';
  SNãoéPossívelApagarUmClienteQueEs = 'Não é possível apagar um cliente que está com acesso em andamento!';
  SEsseClientePossuiItensEmDébitoÉN = 'Esse cliente possui itens em débito. É necessário fazer o pagamento primeiramente, para depois excluir';
  SVocêNãoTemPermissãoParaApagarASe = 'Você não tem permissão para apagar a senha de clientes que tem acesso gratuito';
  SEssaOpçãoDeveSerUtilizadaQuandoO = 'Essa opção deve ser utilizada quando o cliente esquece a senha. ';
  SDessaFormaElePoderáCriarUmaNovaS = 'Dessa forma ele poderá criar uma nova senha. Deseja realmente apagar a senha atual?';
  SClientesATIVOS_1 = 'Clientes ATIVOS';
  SQueVieramNaLojaNosUltimos = 'Que vieram na loja nos ultimos:';
  SFidelidade = 'Fidelidade';
  SÉNecessárioAtivarOSistemaDeFidel = 'É necessário ativar o sistema de fidelização de clientes em "Opções"';
  SCredito = 'Crédito';
  SOpcoesParaClientes = 'Opções para Clientes';

  rsPagarDeb = 'Pagar débito de "%s"'; 
  rsDemonstrativo = 'Imprimir demonstrativo de débitos de "%s"';
  
  
  

// END resource string wizard section


{$R *.dfm}

const
  fltNenhum           = 0;
  fltDebito           = 1;
  fltCredito          = 2;
  fltAniverHoje       = 3;
  fltAniverAmanha     = 4;
  fltAniverSemana     = 5;
  fltAniverProxSemana = 6;
  fltAniverMes        = 7;
  fltAniverProxMes    = 8;
  fltAtivos           = 9;
  fltInativos         = 10;

  busNome   = 0;
  busCodigo = 1;
  busRG     = 2;
  busCPF    = 3;
  busSuper  = 4;

function CaptionFiltro(aTipo: Byte): String;
begin
  case aTipo of
    fltNenhum           : Result := STodosClientes;
    fltDebito           : Result := SClientesComDébito;
    fltCredito          : Result := SClientesComCrédito;
    fltAtivos           : Result := SClientesAtivos;
    fltInativos         : Result := SClientesInativos;
  else
    Result := SAniversariantes;
  end;
end;

function DatePad(W: Word): String;
begin
  if W<10 then
    Result := '0'+IntToStr(W) else
    Result := IntToStr(W);
end;

procedure TfbClientes.FiltraDados;
var 
  FiltroBas, KI, KF : String;
  Ano, Mes, Dia : Word;

begin
  if not Tab.Active then Tab.Active := True;

  //Tab.Filter := 'Fornecedor=False';
  //Tab.Filtered := True;
  Tab.Filtered := False;
  FiltroBas := '';

  CalcTotais;

  cmSubExibir.Caption := SEXibir + CaptionFiltro(FTipoFiltro);

  edBusca.Enabled := (FTipoFiltro in [fltNenhum]);

  case FTipoFiltro of
    
    fltDebito : begin
      Tab.IndexName := 'IDebito'; // do not localize
      Tab.SetRange([True], [True]);
    end;

    fltCredito : begin
      Tab.IndexName := 'ICredito'; // do not localize
      Tab.SetRange([True], [True]);
    end; 

    fltAniverHoje : begin
      Tab.IndexName := 'IFornecedorAniversario'; // do not localize
      Tab.SetRange([False, FormatDateTime('mmdd', Date)], [False, FormatDateTime('mmdd', Date)]); // do not localize
    end;

    fltAniverAmanha : begin
      Tab.IndexName := 'IFornecedorAniversario'; // do not localize
      Tab.SetRange([False, FormatDateTime('mmdd', Date+1)], [False, FormatDateTime('mmdd', Date+1)]); // do not localize
    end;

    fltAniverSemana : begin
      Tab.IndexName := 'IFornecedorAniversario'; // do not localize
      Dia := DayOfWeek(Date);
      KI := FormatDateTime('mmdd', Date-Dia+1); // do not localize
      KF := FormatDateTime('mmdd', Date-Dia+7); // do not localize
      Tab.SetRange([False, KI], [False, KF]);
    end; 

    fltAniverProxSemana : begin
      Tab.IndexName := 'IFornecedorAniversario'; // do not localize
      Dia := DayOfWeek(Date);
      KI := FormatDateTime('mmdd', Date+8-Dia); // do not localize
      KF := FormatDateTime('mmdd', Date+8-Dia+6); // do not localize
      Tab.SetRange([False, KI], [False, KF]);
    end; 

    fltAniverMes : begin
      Tab.IndexName := 'IFornecedorAniversario'; // do not localize
      DecodeDate(Date, Ano, Mes, Dia);
      KI := DatePad(Mes)+'01'; // do not localize
      KF := DatePad(Mes)+'31'; // do not localize
      Tab.SetRange([False, KI], [False, KF]);
    end;

    fltAtivos : begin
      Tab.IndexName := 'IFornecedorUltVisita'; // do not localize
      Tab.SetRange([False, FDataFiltro], [False, Date+30]);
    end;

    fltInativos : begin
      Tab.IndexName := 'IFornecedorUltVisita'; // do not localize
      Tab.SetRange([False], [False, FDataFiltro-1]);
    end;
    
    fltAniverProxMes : begin
      Tab.IndexName := 'IFornecedorAniversario'; // do not localize
      DecodeDate(Date, Ano, Mes, Dia);
      Inc(Mes); if Mes>12 then Mes := 1;
      KI := DatePad(Mes)+'01'; // do not localize
      KF := DatePad(Mes)+'31'; // do not localize
      Tab.SetRange([False, KI], [False, KF]);
    end
  else 
    AjustaBusca;  
  end;

  RefreshBotoes;  
    
  TV.DataController.Summary.Recalculate;
  
  if edBusca.Enabled then
  if TextoBusca>'' then begin
    case FTipoBusca of
      busCodigo : ApplyRangeCodigo;
      busNome : Tab.SetRange([False, TextoBusca], [False, TextoBusca+'zzzzzzzzzzzzzzzzzzzzzzzzzzz']); // do not localize
      busSuper,
      busRG, busCPF : Tab.SetRange([TextoBusca], [TextoBusca+'zzzzzzzzzzzzz']);
    end;
  end else
  if FTipoBusca in [busCodigo, busNome] then
    Tab.SetRange([False], [False])
  else
    Tab.CancelRange;
      
  if Tab.RecordCount = 1  then
    SQuant := S1Cliente else  
    SQuant := IntToStr(Tab.RecordCount) + SClientes;
end;

procedure TfbClientes.cmZerarTudoClick(Sender: TObject);
begin
  inherited;
  if SimNao(SDesejaZerarOsPontosFidelidadeDeT) and
     SimNao(SEssaOperaçãoVaiZerarOsPontosFide)
  then
    Dados.CM.AjustaPontosFid(0, 0, 0, SZerouPontosDeTodosClientes);
end;

procedure TfbClientes.CopiarEndereco;
var E: TncEndereco;
begin
  if Tab.IsEmpty then 
    Clipboard.Clear
  else begin
    E := TncEndereco.Create;
    try
      E.LoadFromDataset(Tab);
      Clipboard.AsText := E.Resumo;
    finally
      E.Free;
    end;
  end;
end;

procedure TfbClientes.btnRecriaDebitosClick(Sender: TObject);
begin
  inherited;
  DM.RecriaDebitos;
end;

procedure TfbClientes.CalcTotais;
begin
  STotDeb := FloatToStrF(Dados.TotalDebitos, ffCurrency, 10, 2);
  STotValor := FloatToStrF(Dados.TotalCredValor, ffCurrency, 10, 2);
end;

function SoDig(S: String): Boolean;
var i: integer;
begin
  Result := False;
  for I := 1 to Length(S) do
    if not (S[I] in ['0'..'9']) then
      Exit;
  Result := True;
end;

procedure TfbClientes.CampoBusca(S: String);

function ECodigo: Boolean;
var SI, SF: String;
begin
  SI := CodigoCliKey(TextoBusca);
  SF := SI;
  if not SoDig(TextoBusca) then SF := SF + 'zzzzzzzzzzzz';
  tAux.IndexName := 'IFornecedorCodigoKey';
  tAux.SetRange([False, SI], [False, SF]);  
  Result := not tAux.IsEmpty;
end;

function ERG: Boolean;
var SI, SF: String;
begin
  SI := TextoBusca;
  SF := SI;
  SF := SF + 'zzzzzzzzzzzz';
  tAux.IndexName := 'IRG';
  tAux.SetRange([SI], [SF]);  
  Result := not tAux.IsEmpty;
end;

function ECPF: Boolean;
var SI, SF: String;
begin
  SI := TextoBusca;
  SF := SI;
  SF := SF + 'zzzzzzzzzzzz';
  tAux.IndexName := 'ICPF';
  tAux.SetRange([SI], [SF]);  
  Result := not tAux.IsEmpty;
end;

begin
  if Trim(S)='' then begin
    FtipoBusca := busNome;
    Exit;
  end;
  tAux.Filter := 'Fornecedor = False';
  tAux.Filtered := True;

  if ECodigo then
    FTipoBusca := busCodigo
  else
  if ERG then
    FTipoBusca := busRG
  else
  if ECPF then
    FTipoBusca := busCPF
  else
  if cbSuperBusca.Checked then
    FTipoBusca := busSuper else
    FTipoBusca := busNome;

  tAux.CancelRange;  
end;

procedure TfbClientes.cmCorrigirCredClick(Sender: TObject);
var 
  C: TncSalvaCredito;
  Obs: String;
  VNovo : Currency;

begin
  Obs := '';
  C := TncSalvaCredito.Create;
  try
    if TFrmCorrigeCredito.Create(nil).Editar(TabNome.Value, TabValorCred.Value, VNovo, Obs) then begin
      if VNovo>TabValorCred.Value then begin
        C.Adicionar := True;
        C.Valor := VNovo - TabValorCred.Value;
      end else begin
        C.Adicionar := False;
        C.Valor := TabValorCred.Value - VNovo;
      end;
      C.Func := Dados.CM.UA.Username;
      C.Cliente := TabID.Value;
      C.Obs := Obs;
      Dados.CM.SalvaCredito(C);
      CalcTotais;
      Tab.Refresh;
    end;
  finally
    C.Free;  
  end;
end;

class function TfbClientes.Descricao: String;
begin
  Result := SClientes_1;
end;

procedure TfbClientes.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  TFrmConfigFid.Create(Self).ShowModal;
end;

procedure TfbClientes.cmExibirClick(Sender: TObject);
var P : TPoint;
begin
  P := ItemLinkScreenPoint(cmExibir.ClickItemLink);
  pmExibir.Popup(P.X, P.Y);
end;

procedure TfbClientes.edBuscaEnter(Sender: TObject);
begin
  inherited;
  TimerSelBusca.Enabled := True;
end;

procedure TfbClientes.edBuscaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_UP : Tab.Prior;
    VK_Down : Tab.Next;
    VK_Return : cmEditarClick(nil);
  end;
end;

procedure TfbClientes.edBuscaMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  TimerSelBusca.Enabled := True;
end;

procedure TfbClientes.edBuscaPropertiesChange(Sender: TObject);
var SI, SF: String;
begin
  inherited;
  lbLocalizar.Visible := (edBusca.Text='');
  _Buscar;
end;

procedure TfbClientes.FrmBasePaiCreate(Sender: TObject);
begin
  inherited;
  cbSuperBusca.Checked := getFormOptionBool(Self, 'superbusca', true);
  cbSuperBuscaClick(nil);
  FAtualizando := False;
  cmObs.Down := Boolean(StrToIntDef(slCOnfig.Values['fbClientes.cmObs.Down'], 1));
  TV.Preview.Visible := cmObs.Down;
  
  cmPorUsername.Visible := ivNever;

  TVValorCred.Caption := SCredito;

  STotDeb := '';
  STotValor := '';
  SQuant := '';
  FTipoFiltro := fltNenhum;
  FTipoBusca := Dados.tbConfigCampoLocalizaCli.Value;
  if FTipoBusca=busNome then
    cmPorNome.Down := True else
    cmPorCodigo.Down := True;  
end;

procedure TfbClientes.Image1Click(Sender: TObject);
begin
  inherited;
  if edBusca.Enabled then
    edBusca.SetFocus;
end;

procedure TfbClientes.lbDebTotalDblClick(Sender: TObject);
begin
  inherited;
  DM.ReprocessaDebitos;
  ShowMessage(SDébitosReprocessados);
end;

procedure TfbClientes.mtEtqCalcFields(DataSet: TDataSet);
var S: String;
begin
  inherited;
  S := IntToStr(mtEtqID.Value);
  while Length(S)<6 do S := '0'+S;
  mtEtqCodigo.Value := S;
end;

procedure TfbClientes.pmDebitoPopup(Sender: TObject);
begin
  inherited;
  cmPagarDeb.Caption := Format(rsPagarDeb, [TabNome.Value]);
  cmDemonstrativo.Caption := Format(rsDemonstrativo, [TabNome.Value]);
end;

procedure TfbClientes.processKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  
  case Key of
    Key_E  : if ssCtrl in Shift then CopiarEndereco;
  end;  
end;

procedure TfbClientes.RefreshBotoes;
begin
  cmSubFid.Enabled := True;
  cmZerarTudo.Enabled := (not Tab.IsEmpty) and gConfig.PodeFidelidade and Dados.CM.UA.Admin;
  cmCorrigirFid.Enabled := (not Tab.IsEmpty) and gConfig.PodeFidelidade and Permitido(daCorrigirFidelidade);
  cmResgProduto.Enabled := gConfig.PodeFidelidade and Permitido(daAtenderClientes) and (not Tab.IsEmpty);

  cmNovo.Enabled := Permitido(daCliCadastrar);
  cmApagar.Enabled := Permitido(daCliApagar);
  
  cmEditar.Enabled := (not Tab.IsEmpty);
  cmApagar.Enabled := cmEditar.Enabled and Permitido(daCliApagar);
  cmPagarDebito.Enabled := cmEditar.Enabled and (TabDebito.Value>0) and Permitido(daAtenderClientes);
end;

procedure TfbClientes.TabFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept := not TabFornecedor.Value;
end;

function TfbClientes.TextoBusca: String;
begin
  Result := Trim(edBusca.Text);
end;

procedure TfbClientes.Timer1Timer(Sender: TObject);
begin
  inherited;
  Timer1.Enabled := False;
  Tab.Refresh;
end;

procedure TfbClientes.Timer2Timer(Sender: TObject);
begin
  inherited;
  Timer2.Enabled := False;
  try
    if (FrmPri.FM.FormAtivo=Self) and edBusca.Enabled then 
      SetFocusBusca;
  except
  end;
end;

procedure TfbClientes.TimerSelBuscaTimer(Sender: TObject);
begin
  inherited;
  TimerSelBusca.Enabled := False;
  if edBusca.Focused then
    edBusca.SelectAll;
end;

function TfbClientes.ToolbarIsRibbonGroup(aBar: TdxBar): Boolean;
begin
  Result := (aBar = BarMgr.BarByComponentName(SBarMgrBar1));
end;

procedure TfbClientes.TVCodigoGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVCod.Index];
  if V<>null then AText := V;
end;

procedure TfbClientes.TVColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  inherited;
  TV.DataController.DataModeController.GridMode := False;
end;

procedure TfbClientes.TVCustomDrawColumnHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
begin
  inherited;
  FrmPri.CustomDrawGridHeader(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TfbClientes.TVCustomDrawIndicatorCell(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
  var ADone: Boolean);
var
  APainter: TcxCustomLookAndFeelPainter;
begin
  if AViewInfo is TcxGridIndicatorHeaderItemViewInfo then begin
    with TcxGridIndicatorHeaderItemViewInfo(AViewInfo) do
    begin
      AViewInfo.LookAndFeelPainter.DrawHeader(ACanvas, Bounds, TextAreaBounds,
        [nRight], cxBordersAll, ButtonState,  AlignmentHorz, AlignmentVert, false,
        false, '', Params.Font, Params.TextColor, Params.Color);
      Bounds.Bottom := Bounds.Top + 18;
      if cxLookAndFeelPaintersManager.GetPainter(lfsFlat, APainter) then
        APainter.DrawIndicatorCustomizationMark(ACanvas, Bounds, Params.TextColor);
      ADone := true;
    end;
  end else begin
    ACanvas.Brush.Color := clWhite;
    ACanvas.FillRect(AViewInfo.Bounds);
    ADone := True;
  end;
end;

procedure TfbClientes.TVDataControllerFilterChanged(Sender: TObject);
begin
  inherited;
  if not Tab.Filtered then FiltraDados;
end;

procedure TfbClientes.TVDataControllerFilterRecord(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var Accept: Boolean);
var V: Variant;  
begin
  inherited;
  V := ADataController.Values[ARecordIndex, TvFornecedor.Index];
  Accept := (V=null) or (V=False);
end;

procedure TfbClientes.TVDebitoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  with aviewinfo do
  if (Value<>Null) and (Value>0.009) then begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Canvas.Font.Color := clWhite;
  end;
end;

procedure TfbClientes.TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  RefreshBotoes;
end;

procedure TfbClientes.TVInativoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  with aviewinfo do 
  if (Value<>Null) and (Value=True) then begin
    ACanvas.Canvas.Brush.Color := clGray;
    ACanvas.Canvas.Font.Color := clWhite;
  end;
end;

procedure TfbClientes.TVIsentoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  with aviewinfo do 
  if (Value<>Null) and (Value=True) then begin
    ACanvas.Canvas.Brush.Color := clGreen;
    ACanvas.Canvas.Font.Color := clWhite;
  end;
end;

procedure TfbClientes.TVTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  inherited;
  AText := STotDeb;
end;

procedure TfbClientes.TVTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  inherited;
  AText := SQuant;
end;

procedure TfbClientes.TVTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  inherited;
  AText := STotValor;
end;

procedure TfbClientes._Buscar;
begin
  CampoBusca(TextoBusca);
  AjustaBusca;
  
  if TextoBusca>'' then begin
    case FTipoBusca of
      busCodigo: ApplyRangeCodigo;
      busNome: Tab.SetRange([False, TextoBusca], [False, TextoBusca+'zzzzzzzzzzzzzzzzzzzzzzzzzzz']); // do not localize
      busSuper,
      busRG, busCPF : Tab.SetRange([TextoBusca], [TextoBusca+'zzzzzz']);
    end;
  end else begin
    FTipoBusca := busNome;
    Tab.IndexName := 'IFornecedorNome';
    Tab.SetRange([False], [False]);
  end;
end;

procedure TfbClientes.cmNovoClick(Sender: TObject);
var SIndex: String;
begin
  edBusca.EditValue := '';
  Tab.SetRange([False], [False]);

  TFrmCadCli.Create(Self).Novo(Tab, nil);
  SIndex := Dados.tbCli.IndexName;
  try
    Dados.tbCli.IndexName := 'IID'; // do not localize
    Dados.tbCli.FindKey([TabID.Value]);
  finally
    Dados.tbCli.IndexName := SIndex;
  end;
end;

procedure TfbClientes.cmEditarClick(Sender: TObject);
var SIndex : String;
begin
  inherited;
  if Tab.IsEmpty then Exit;
  
  TFrmCadCli.Create(Self).Editar(Tab, nil);
  
  SIndex := Dados.tbCli.IndexName;
  try
    Dados.tbCli.IndexName := 'IID'; // do not localize
    Dados.tbCli.FindKey([TabID.Value]);
  finally
    Dados.tbCli.IndexName := SIndex;
  end;
end;

procedure TfbClientes.cmEtqClick(Sender: TObject);
var 
  AInicio : Integer;
  ATodos : Boolean;
  ARes : Integer;  
  S: String;
begin
  inherited;
  mtEtq.Active := False;
  AInicio := 1;
  ATodos := False;
  S := ExtractFilePath(ParamStr(0))+'EtiquetaCliente.fr3'; // do not localize
  
  repeat
    ARes := TFrmImpEtqCli.Create(Self).Editar(TabNome.Value, AInicio, ATodos);
    frEtq.FileName := S;
    rpDesigner.OpenDir := ExtractFilePath(ParamStr(0));
    rpDesigner.SaveDir := rpDesigner.OpenDir;
    if ARes=2 then begin
      if not FileExists(S) then 
        frEtq.SaveToFile(S);
      frEtq.DesignReport;
    end;
  until (ARes in [0..1]);

  if (Tab.RecordCount>0) and (ARes=1) then begin
    try
      mtEtq.Open;
      while AInicio>1 do begin
        mtEtq.Append;
        mtEtq.Post;
        Dec(AInicio);
      end;
      if ATodos then begin
        Tab.First;
        while not Tab.Eof do begin
          mtEtq.Append;
          TransfDados(Tab, mtEtq);
          mtEtq.Post;
          Tab.Next;
        end;
        mtEtq.First;
      end else begin
        mtEtq.Append;
        TransfDados(Tab, mtEtq);
        mtEtq.Post;
      end;
      if FileExists(S) then
        frEtq.LoadFromFile(S);
      frEtq.ShowReport;  
    finally
      mtEtq.Active := False;
    end;

  end;

end;

procedure TfbClientes.cmInativoClick(Sender: TObject);
begin
  inherited;
  if TFrmDataAtivo.ObtemData(FDataFiltro, SClientesINATIVOS_1, SQueNãoVieramNaLojaNosUltimos, 1) then
    SetTipoFiltro(fltInativos);
end;

procedure TfbClientes.cmListaEmailClick(Sender: TObject);
var 
  SL: TStrings;
  Emails : String;
  I : Integer;

procedure AddEmail(S: String);
begin
  S := Trim(S);
  if S>'' then

  while (S>'') and (S[Length(S)] in [';', ',']) do Delete(S, Length(S), 1);
  if Emails>'' then Emails := Emails + '; ';
  Emails := Emails + S;
end;  

begin
  inherited;
  if not SimNao(SDesejaGerarUmaListaDeEMailsDosCl) then Exit;

  SL := TStringList.Create;
  Emails := '';
  PB.Properties.Max := Tab.RecordCount;
  PB.Position := 0;
  PB.Visible := True;
  Tab.DisableControls;
  try
    Tab.First;
    while not Tab.Eof do begin
      Pb.Position := PB.Position + 1;
      Application.ProcessMessages;
      SL.Text := Trim(TabEmail.Value);
      for I := 0 to SL.Count - 1 do AddEmail(SL[i]);
      Tab.Next;
    end;
  finally
    Tab.EnableControls;
    PB.Visible := False;
    SL.Free;
  end;
  TFrmEmails.Create(nil).Mostrar(Emails);
end;

procedure TfbClientes.cbObsClick(Sender: TObject);
begin
  inherited;
  slConfig.Values['fbClientes.cmObs.Down'] := IntToStr(Integer(cmObs.Down));
  SaveConfig;
  TV.Preview.Visible := cmObs.Down;
end;

procedure TfbClientes.cbSuperBuscaClick(Sender: TObject);
begin
  inherited;
  if cbSuperBusca.Checked then begin
    cbSuperBusca.Style.BorderColor := clBlack;
    cbSuperBusca.Style.TextColor := clBlack;
  end else begin
    cbSuperBusca.Style.BorderColor := clGray;
    cbSuperBusca.Style.TextColor := clGray;
  end;
  if cbSuperBusca.Focused then begin
    saveFormOptionBool(Self, 'superbusca', cbSuperBusca.Checked);
    edBusca.SetFocus;
    _Buscar;
  end;
end;

procedure TfbClientes.cmAniverHojeClick(Sender: TObject);
begin
  inherited;
  SetTipoFiltro(TdxBarButton(Sender).Tag);
end;

procedure TfbClientes.cmApagarClick(Sender: TObject);
begin
  inherited;
  if TabDebito.Value > 0.009 then begin
    Beep;
    ShowMessage(SEsseClientePossuiItensEmDébitoÉN);
    Exit;
  end;
  
  if SimNao(rsConfirmaExclusao+' '+TabNome.Value+' ?') then Tab.Delete;
end;

procedure TfbClientes.cmAtivoClick(Sender: TObject);
begin
  inherited;
  if TFrmDataAtivo.ObtemData(FDataFiltro, SClientesATIVOS_1, SQueVieramNaLojaNosUltimos, 2) then
    SetTipoFiltro(fltAtivos);
end;

procedure TfbClientes.cmCfgClick(Sender: TObject);
begin
  inherited;
//  TFrmOpcoes.Create(Self).Editar(SOpcoesParaClientes, [TFrmLimiteDeb, TFrmConfigRec_PgDebito]);
  TFrmLimiteDeb.Create(Self).ShowModal;
end;

procedure TfbClientes.cmCorrigirFidClick(Sender: TObject);
var
  Pontos: Double;
  Obs: String;
  Fator: Smallint;
begin
  inherited;
  if Tab.IsEmpty then Exit;

  Pontos := 0;
  Obs := '';
  Fator := 1;

  if TFrmAjustaFid.Create(Self).Editar(True, True, TabNome.Value, Pontos, Obs, Fator, TabFidPontos.Value) then
  begin
    Dados.CM.AjustaPontosFid(TabID.Value, Fator, Pontos, Obs);
    Tab.Refresh;
    Timer1.Enabled := True;
  end;
end;

procedure TfbClientes.cmDemonstrativoClick(Sender: TObject);
var Deb: TncDebito;
begin
  Deb := TncDebito.Create;
  try
    Deb.Cliente := TabID.Value;
    Deb.Operacao := osIncluir;
    DM.LoadIDeb(Deb);
    TFrmImpDemDeb.Imprimir(Deb);
  finally
    Deb.Free;
  end;
end;

procedure TfbClientes.cmPagarDebClick(Sender: TObject);
var Deb: TncDebito;
begin
  Deb := TncDebito.Create;
  try
    Deb.Cliente := TabID.Value;
    Deb.Operacao := osIncluir;
    DM.LoadIDeb(Deb);
    if TFrmDebito.Create(nil).Editar(True, Deb, TabNome.Value) then
    begin
      Deb.CreateGuid;
      Dados.CM.SalvaDebito(Deb);
      if Deb.Recibo then dmComp.Imprime(Deb.NativeGuid);
      Tab.Refresh;
    end;
  finally
    Deb.Free;
  end;
end;

procedure TfbClientes.cmPagarDebitoClick(Sender: TObject);
var P : TPoint;
begin
  P := ItemLinkScreenPoint(cmPagarDebito.ClickItemLink);
  pmDebito.Popup(P.X, P.Y);
end;

procedure TfbClientes.cmPorNomeClick(Sender: TObject);
begin
  inherited;
  SetTipoBusca(TdxBarButton(Sender).Tag);
end;

procedure TfbClientes.cmResgProdutoClick(Sender: TObject);
begin
  inherited;
  Dados.NovoMovEst(trEstVenda, TabID.Value, False, True);
  Tab.Refresh;
end;

procedure TfbClientes.cmSubCreditoClick(Sender: TObject);
var P : TPoint;
begin
  P := ItemLinkScreenPoint(cmSubCredito.ClickItemLink);
  pmCredito.Popup(P.X, P.Y);
end;

procedure TfbClientes.cmTraduzirClick(Sender: TObject);
begin
  inherited;
  
  if not Assigned(dmDemonstrativoDeb) then 
    Application.CreateForm(TdmDemonstrativoDeb, dmDemonstrativoDeb);
    
  case TFrmFormatoDemDeb.Create(Self).ObtemFormato of
    1 : dmDemonstrativoDeb.repFolha.DesignReport;
    2 : dmDemonstrativoDeb.repBob.DesignReport;
  end;
end;

procedure TfbClientes.AjustaBusca;
begin
  case FTipoBusca of
    busNome : Tab.IndexName := 'IFornecedorNome'; // do not localize
    busCodigo : Tab.IndexName := 'IFornecedorCodigoKey'; // do not localize
    busSuper : begin
      Tab.IndexName := 'ISuperBusca';
      Tab.Filter := 'Fornecedor = False';
      Tab.Filtered := True;
    end;  
    busRG : begin
      Tab.IndexName := 'IRG';
      Tab.Filter := 'Fornecedor = False';
      Tab.Filtered := True;
    end;
    busCPF : begin
      Tab.IndexName := 'ICPF';
      Tab.Filter := 'Fornecedor = False';
      Tab.Filtered := True;
    end;
  end;
end;

procedure TfbClientes.ApplyRangeCodigo;
var SI, SF: String;
begin
  inherited;
  SI := CodigoCliKey(TextoBusca);
  SF := SI;
  if not SoDig(TextoBusca) then SF := SF + 'zzzzzzzzzzzz';
  Tab.SetRange([False, SI], [False, SF]);
end;

procedure TfbClientes.AtualizaDireitos;
begin
  inherited;

  cmTraduzir.Visible := FrmPri.cmDocMgr.Visible;

  if gConfig.PaisBrasil then begin
    TVCPF.Caption := rsCPF_CNPJ;
    TVCPF.VisibleForCustomization := True;
    TVRG.Caption := rsRG_IE;
  end else begin
    TVCPF.Visible := False;
    TVCPF.VisibleForCustomization := False;
    TVRG.Caption := rsDocID;
  end;
  
  TVNome.Caption := rsNome;
  TVBairro.Caption := rsBairro;
  TVCidade.Caption := rsCidade;
  TVCEP.Caption := rsCEP;
  TVSexo.Caption := rsSexo;
  TVTelefone.Caption := rsTel;
  TVCelular.Caption := rsCelular;
  TVPai.Caption := rsPai;
  TVEndereco.Caption := rsEndereco;
  
  cmCorrigirCred.Enabled := Permitido(daCliCorrigirCredito);

  cmZerarTudo.Enabled := Dados.CM.UA.Admin;
  if Tab.Active then Tab.Refresh;

  if gConfig.FidAtivo then
    cmSubFid.Hint := SFidelidade else
    cmSubFid.Hint := SÉNecessárioAtivarOSistemaDeFidel;
//  btnRecriaDebitos.Visible := SameText(ParamStr(1), 'imp');
  RefreshBotoes;
end;

type
  TdxBarControlAccess = class(TdxBarControl);
  
procedure TfbClientes.SetFocusBusca;
begin
  edBusca.SetFocus;
{  with cmBusca.Links[0] do
  begin
    TdxBarControlAccess(BarControl).FocusItemControl(Control);
  end;
  edBusca.SetFocus;}
end;

procedure TfbClientes.SetTipoBusca(aTipo: Byte);
begin
  if aTipo=FTipoBusca then Exit;
  FTipoBusca := aTipo;
  if (FrmPri.FM.FormAtivo=Self) and edBusca.Enabled then
    SetFocusBusca;
  FiltraDados;
end;

procedure TfbClientes.SetTipoFiltro(aTipo: Byte);
begin
  if aTipo=FTipoFiltro then Exit;
  FTipoFiltro := aTipo;
  FiltraDados;
end;

end.

