unit ncafbVendas2;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmFormBase, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, LMDGraph,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxBar, dxPSCore, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxClasses, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, cxMaskEdit,
  cxCalendar, cxTimeEdit, cxTextEdit, cxCurrencyEdit, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, nxdb, cxNavigator, Menus, dxBarExtItems, StdCtrls, cxButtons, OoMisc,
  AdPort, cxPropertiesStore, dxBarApplicationMenu, dxRibbon, cxCheckBox,
  cxBarEditItem, LMDControl, LMDCustomControl, LMDCustomPanel, ncMovEst, ncEspecie,
  LMDCustomBevelPanel, LMDSimplePanel, dxPScxPivotGridLnk, ncaFrmPagEspecie,
  cxPC, dxDockControl, dxDockPanel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxSpinEdit, ncaFramePagamento, LMDCustomScrollBox,
  LMDScrollBox, LMDSplt, cxContainer, cxLabel, cxPCdxBarPopupMenu,
  cxDBLookupComboBox, dxBarBuiltInMenu, Vcl.Buttons, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, LMDCustomButton, LMDButton, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, cxRichEdit, System.ImageList, Vcl.ImgList,
  dxScreenTip, dxCustomHint, cxHint;

type
  TfbVendas2 = class(TFrmBase)
    cmCancelar: TdxBarLargeButton;
    dsTab: TDataSource;
    Tab: TnxTable;
    TabID: TAutoIncField;
    TabDataHora: TDateTimeField;
    TabFunc: TStringField;
    TabTotal: TCurrencyField;
    TabDesconto: TCurrencyField;
    TabPago: TCurrencyField;
    TabObs: TMemoField;
    TabCancelado: TBooleanField;
    TabCanceladoPor: TStringField;
    TabCanceladoEm: TDateTimeField;
    TabMaq: TWordField;
    TabNomeCliente: TWideStringField;
    TabDebito: TCurrencyField;
    TabQtdTempo: TFloatField;
    TabCredValor: TBooleanField;
    TabFidResgate: TBooleanField;
    TabImg: TSmallintField;
    TabTotLiq: TCurrencyField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cmImpRecibo: TdxBarLargeButton;
    dxBarButton3: TdxBarButton;
    cmVendaCaixa: TdxBarLargeButton;
    cmFiltro: TdxBarSubItem;
    cmSoCaixaAtual: TdxBarButton;
    cmTodosCaixas: TdxBarButton;
    TabDebitoAnt: TCurrencyField;
    TabDebitoPago: TCurrencyField;
    TabCreditoAnt: TCurrencyField;
    TabCredito: TCurrencyField;
    TabCreditoUsado: TCurrencyField;
    TabTroco: TCurrencyField;
    tbME: TnxTable;
    tbMEID: TAutoIncField;
    tbMEQuant: TFloatField;
    tbMEUnitario: TCurrencyField;
    tbMETotal: TCurrencyField;
    tbMECustoU: TCurrencyField;
    tbMEDesconto: TCurrencyField;
    tbMEPago: TCurrencyField;
    tbMEPagoPost: TCurrencyField;
    tbMEDescPost: TCurrencyField;
    tbMEDataHora: TDateTimeField;
    tbMEEntrada: TBooleanField;
    tbMECancelado: TBooleanField;
    tbMEEstoqueAnt: TFloatField;
    tbMECategoria: TStringField;
    tbMENaoControlaEstoque: TBooleanField;
    tbMEITran: TIntegerField;
    tbMEPermSemEstoque: TBooleanField;
    tbMEFidResgate: TBooleanField;
    tbMEFidPontos: TFloatField;
    cxStyle6: TcxStyle;
    dckMgr: TdxDockingManager;
    cxStyle7: TcxStyle;
    dxBarStatic1: TdxBarStatic;
    cxStyle8: TcxStyle;
    tPend: TnxTable;
    dsPend: TDataSource;
    tPendID: TAutoIncField;
    tPendDataHora: TDateTimeField;
    tPendFunc: TStringField;
    tPendTotal: TCurrencyField;
    tPendDesconto: TCurrencyField;
    tPendTotLiq: TCurrencyField;
    tPendPago: TCurrencyField;
    tPendDebitoAnt: TCurrencyField;
    tPendDebito: TCurrencyField;
    tPendDebitoPago: TCurrencyField;
    tPendCreditoAnt: TCurrencyField;
    tPendCredito: TCurrencyField;
    tPendCreditoUsado: TCurrencyField;
    tPendTroco: TCurrencyField;
    tPendObs: TnxMemoField;
    tPendCancelado: TBooleanField;
    tPendCanceladoPor: TStringField;
    tPendCanceladoEm: TDateTimeField;
    tPendMaq: TWordField;
    tPendNomeCliente: TWideStringField;
    tPendQtdTempo: TFloatField;
    tPendCredValor: TBooleanField;
    tPendFidResgate: TBooleanField;
    tPendPagFunc: TStringField;
    tPendPagPend: TBooleanField;
    tPendTotalFinal: TCurrencyField;
    tPendNomeFunc: TStringField;
    Paginas: TcxPageControl;
    tsVendas: TcxTabSheet;
    tsPend: TcxTabSheet;
    gridPend: TcxGrid;
    tvPend: TcxGridDBTableView;
    tvPendID: TcxGridDBColumn;
    tvPendDataHora: TcxGridDBColumn;
    tvPendDescr: TcxGridDBColumn;
    tvPendNomeCliente: TcxGridDBColumn;
    tvPendTotal: TcxGridDBColumn;
    tvPendDesconto: TcxGridDBColumn;
    tvPendTotalFinal: TcxGridDBColumn;
    tvPendFunc: TcxGridDBColumn;
    tvPendObs: TcxGridDBColumn;
    glPend: TcxGridLevel;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVImg: TcxGridDBColumn;
    TVID: TcxGridDBColumn;
    TVMaquina: TcxGridDBColumn;
    TVData: TcxGridDBColumn;
    TVInicio: TcxGridDBColumn;
    TVTipo: TcxGridDBColumn;
    TVDescr: TcxGridDBColumn;
    TVNome: TcxGridDBColumn;
    TVTotal: TcxGridDBColumn;
    TVDesconto: TcxGridDBColumn;
    TVTotalFinal: TcxGridDBColumn;
    TVPago: TcxGridDBColumn;
    TVCredUsado: TcxGridDBColumn;
    TVDebito: TcxGridDBColumn;
    TVTroco: TcxGridDBColumn;
    TVNomeFunc: TcxGridDBColumn;
    TVSessao: TcxGridDBColumn;
    TVCancelado: TcxGridDBColumn;
    TVCanceladoPor: TcxGridDBColumn;
    TVCanceladoEm: TcxGridDBColumn;
    TVObs: TcxGridDBColumn;
    TVCredito: TcxGridDBColumn;
    GL: TcxGridLevel;
    dsPag: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dpPag: TdxDockPanel;
    BarMgrBar2: TdxBar;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cmPagamento: TdxBarLargeButton;
    TVPagPend: TcxGridDBColumn;
    TabPagFunc: TStringField;
    TabPagPend: TBooleanField;
    LMDSimplePanel1: TLMDSimplePanel;
    LMDSimplePanel2: TLMDSimplePanel;
    dxBarDockControl2: TdxBarDockControl;
    cbFecharAuto: TcxCheckBox;
    tPendDescPerc: TFloatField;
    tPendDescPorPerc: TBooleanField;
    TabDescPerc: TFloatField;
    TabDescPorPerc: TBooleanField;
    TabPagEsp: TWordField;
    TabNomePagEsp: TStringField;
    TVMeioPagto: TcxGridDBColumn;
    cmSoPendente: TdxBarButton;
    tPendUID: TGuidField;
    tPendPagEsp: TWordField;
    tbMEComissao: TCurrencyField;
    tbMEComissaoPerc: TFloatField;
    tbMEComissaoLucro: TBooleanField;
    TabUID: TGuidField;
    cmCancelados: TdxBarButton;
    tPendCliente: TLongWordField;
    tPendTipo: TByteField;
    tPendCaixa: TLongWordField;
    tPendSessao: TLongWordField;
    tPendCaixaPag: TLongWordField;
    TabCliente: TLongWordField;
    TabTipo: TByteField;
    TabCaixa: TLongWordField;
    TabCaixaPag: TLongWordField;
    TabSessao: TLongWordField;
    tbMETran: TLongWordField;
    tbMEAjustaCusto: TBooleanField;
    tbMECliente: TLongWordField;
    tbMECaixa: TIntegerField;
    tbMETipoTran: TByteField;
    tbMESessao: TIntegerField;
    tbMEProduto: TLongWordField;
    tbMEItem: TByteField;
    cmDevolucao: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    btnExibir: TcxButton;
    pmExibir: TdxBarPopupMenu;
    TabUID_ref: TGuidField;
    TabIncluidoEm: TDateTimeField;
    TabOpDevValor: TByteField;
    tPendUID_ref: TGuidField;
    tPendIncluidoEm: TDateTimeField;
    tPendOpDevValor: TByteField;
    tbMEID_ref: TLongWordField;
    tbMEIncluidoEm: TDateTimeField;
    TabStatusNFE: TByteField;
    TabChaveNFE: TStringField;
    TabTipoNFE: TByteField;
    cmDanfe: TdxBarLargeButton;
    tsRej: TcxTabSheet;
    tsCont: TcxTabSheet;
    tRej: TnxTable;
    tCont: TnxTable;
    tRejID: TUnsignedAutoIncField;
    tRejUID: TGuidField;
    tRejUID_ref: TGuidField;
    tRejStatusNFE: TByteField;
    tRejChaveNFE: TStringField;
    tRejTipoNFE: TByteField;
    tRejDataHora: TDateTimeField;
    tRejIncluidoEm: TDateTimeField;
    tRejCliente: TLongWordField;
    tRejTipo: TByteField;
    tRejOpDevValor: TByteField;
    tRejFunc: TStringField;
    tRejTotal: TCurrencyField;
    tRejDesconto: TCurrencyField;
    tRejDescPerc: TFloatField;
    tRejDescPorPerc: TBooleanField;
    tRejTotLiq: TCurrencyField;
    tRejPagEsp: TWordField;
    tRejPago: TCurrencyField;
    tRejDebitoAnt: TCurrencyField;
    tRejDebito: TCurrencyField;
    tRejDebitoPago: TCurrencyField;
    tRejCreditoAnt: TCurrencyField;
    tRejCredito: TCurrencyField;
    tRejCreditoUsado: TCurrencyField;
    tRejTroco: TCurrencyField;
    tRejObs: TnxMemoField;
    tRejCancelado: TBooleanField;
    tRejCanceladoPor: TStringField;
    tRejCanceladoEm: TDateTimeField;
    tRejCaixa: TLongWordField;
    tRejCaixaPag: TLongWordField;
    tRejMaq: TWordField;
    tRejNomeCliente: TWideStringField;
    tRejSessao: TLongWordField;
    tRejQtdTempo: TFloatField;
    tRejCredValor: TBooleanField;
    tRejFidResgate: TBooleanField;
    tRejExtra: TnxMemoField;
    tRejPagFunc: TStringField;
    tRejPagPend: TBooleanField;
    tRejRecVer: TLongWordField;
    BarMgrBar3: TdxBar;
    bdcRej: TdxBarDockControl;
    cmReenviaRej: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    gridRej: TcxGrid;
    tvRej: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    tvRejCliente: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    glRej: TcxGridLevel;
    dsCont: TDataSource;
    tvRejxMotivo: TcxGridDBColumn;
    dsRej: TDataSource;
    tRejMsgRej: TStringField;
    tvRejColumn1: TcxGridDBColumn;
    gridCont: TcxGrid;
    tvCont: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    glCont: TcxGridLevel;                                                                              
    cxStyle11: TcxStyle;
    tRejDadosCli: TStringField;
    tRejNomeFunc: TStringField;
    tContID: TUnsignedAutoIncField;
    tContUID: TGuidField;
    tContUID_ref: TGuidField;
    tContStatusNFE: TByteField;
    tContChaveNFE: TStringField;
    tContTipoNFE: TByteField;
    tContDataHora: TDateTimeField;
    tContIncluidoEm: TDateTimeField;
    tContCliente: TLongWordField;
    tContTipo: TByteField;
    tContOpDevValor: TByteField;
    tContFunc: TStringField;
    tContTotal: TCurrencyField;
    tContDesconto: TCurrencyField;
    tContDescPerc: TFloatField;
    tContDescPorPerc: TBooleanField;
    tContTotLiq: TCurrencyField;
    tContPagEsp: TWordField;
    tContPago: TCurrencyField;
    tContDebitoAnt: TCurrencyField;
    tContDebito: TCurrencyField;
    tContDebitoPago: TCurrencyField;
    tContCreditoAnt: TCurrencyField;
    tContCredito: TCurrencyField;
    tContCreditoUsado: TCurrencyField;
    tContTroco: TCurrencyField;
    tContObs: TnxMemoField;
    tContCancelado: TBooleanField;
    tContCanceladoPor: TStringField;
    tContCanceladoEm: TDateTimeField;
    tContCaixa: TLongWordField;
    tContCaixaPag: TLongWordField;
    tContMaq: TWordField;
    tContNomeCliente: TWideStringField;
    tContSessao: TLongWordField;
    tContQtdTempo: TFloatField;
    tContCredValor: TBooleanField;
    tContFidResgate: TBooleanField;
    tContExtra: TnxMemoField;
    tContPagFunc: TStringField;
    tContPagPend: TBooleanField;
    tContRecVer: TLongWordField;
    tContNomeFunc: TStringField;
    tRejAmbNFe: TByteField;
    tContAmbNFe: TByteField;
    TabAmbNFe: TByteField;
    TabStatusCanc: TByteField;
    TabExtra: TnxMemoField;
    TabRecVer: TLongWordField;
    tPendStatusNFE: TByteField;
    tPendChaveNFE: TStringField;
    tPendTipoNFE: TByteField;
    tPendAmbNFe: TByteField;
    tPendStatusCanc: TByteField;
    tPendExtra: TnxMemoField;
    tPendRecVer: TLongWordField;
    tRejStatusCanc: TByteField;
    tContStatusCanc: TByteField;
    TVStatusNF: TcxGridDBColumn;
    tvContAmbiente: TcxGridDBColumn;
    tvRejAmb: TcxGridDBColumn;
    cmPagtoRej: TdxBarLargeButton;
    Tabtax_incluido: TCurrencyField;
    Tabtax_incluir: TCurrencyField;
    TabTotalFinal: TCurrencyField;
    TVSubTotal: TcxGridDBColumn;
    TVtax_total: TcxGridDBColumn;
    Tabtax_total: TCurrencyField;
    cxStyle12: TcxStyle;
    img3p: TcxImageList;
    tPendtax_incluido: TCurrencyField;
    tPendtax_incluir: TCurrencyField;
    tbMEtax_id: TLongWordField;
    tbMEtax_incluido: TCurrencyField;
    tbMEtax_incluir: TCurrencyField;
    tbMEDescr: TWideStringField;
    tbMETotalFinal: TCurrencyField;
    tbMEPend: TBooleanField;
    tRejtax_incluido: TCurrencyField;
    tRejtax_incluir: TCurrencyField;
    tRejTotalFinal: TCurrencyField;
    tConttax_incluido: TCurrencyField;
    tConttax_incluir: TCurrencyField;
    tContTotalFinal: TCurrencyField;
    cxStyle13: TcxStyle;
    Shape1: TShape;
    Shape2: TShape;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    TabNomeFunc: TStringField;
    TabImgMeioPag: TStringField;
    cxStyle17: TcxStyle;
    imgMais: TcxImageList;
    cxStyle18: TcxStyle;
    Tabids_pagto: TStringField;
    TVids_pagto: TcxGridDBColumn;
    cmMaxItens: TcxBarEditItem;
    cmObs: TdxBarButton;
    cmDescTot: TdxBarButton;
    cmMeioPagTot: TdxBarButton;
    TabDescricao: TWideMemoField;
    tPendids_pagto: TStringField;
    tPendDescricao: TWideMemoField;
    tRejids_pagto: TStringField;
    tRejDescricao: TWideMemoField;
    tContids_pagto: TStringField;
    tContDescricao: TWideMemoField;
    TabPedido: TBooleanField;
    TabImpRec: TBooleanField;
    TabImpNF: TBooleanField;
    cmImpPedido: TdxBarLargeButton;
    TabVendedor: TStringField;
    TabComissao: TCurrencyField;
    tPendVendedor: TStringField;
    tPendComissao: TCurrencyField;
    tPendNomeVendedor: TStringField;
    TVVendedor: TcxGridDBColumn;
    TabNomeVendedor: TStringField;
    procedure cmNovoClick(Sender: TObject);
    procedure cmCancelarClick(Sender: TObject);
    procedure TVTotalGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVDebitoStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cmImpReciboClick(Sender: TObject);
    procedure cmVendaCaixaClick(Sender: TObject);
    procedure cmCfgClick(Sender: TObject);
    procedure cmSoCaixaAtualChange(Sender: TObject);
    procedure cmSoCaixaAtualClick(Sender: TObject);
    procedure FrmBasePaiCreate(Sender: TObject);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TVBPagamentoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tPendCalcFields(DataSet: TDataSet);
    procedure tvPendTotalFinalCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure PaginasDrawTabEx(AControl: TcxCustomTabControl;
      ATab: TcxTab; Font: TFont);
    procedure cmEditarClick(Sender: TObject);
    procedure PaginasChange(Sender: TObject);
    procedure TVPagoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure tvPendCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure TVPagoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cmPagamentoClick(Sender: TObject);
    procedure cbFecharAutoClick(Sender: TObject);
    procedure cmCanceladosClick(Sender: TObject);
    procedure TabFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure GridResize(Sender: TObject);
    procedure cmDevolucaoClick(Sender: TObject);
    procedure cmDanfeClick(Sender: TObject);
    procedure tRejCalcFields(DataSet: TDataSet);
    procedure cmReenviaRejClick(Sender: TObject);
    procedure cmPagtoRejClick(Sender: TObject);
    procedure TabCalcFields(DataSet: TDataSet);
    procedure TVDescrCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVDescontoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVTotalFinalGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVTotalFinalCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FrmBasePaiDestroy(Sender: TObject);
    procedure TVDescrGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure TVMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TVDescrGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cmMaxItensPropertiesEditValueChanged(Sender: TObject);
    procedure cmObsClick(Sender: TObject);
    procedure cmMeioPagTotClick(Sender: TObject);
    procedure cmDescTotClick(Sender: TObject);
    procedure cmImpPedidoClick(Sender: TObject);
  private
    FFrmPag : TFramePagamento;
    FPagEsp : TncPagEspecies;
    FLastCxFiltro : Integer;
    FBool : Boolean;
    { Private declarations }

    FHotID : Cardinal;

    FMaxLines : Integer;

    FExpanded : TStrings;

    function  GetGrid: TcxGrid; override;

    function IsExpanded(C: Cardinal): Boolean;
    procedure ToogleExpanded(C: Cardinal);

    procedure RefreshPagEsp;
    procedure RefreshCancelados;

    procedure AjustaTela;

    procedure AjustaBtnDanfe(aSat: Boolean);

    function _PodeVender: Boolean;

    function GetTab: TnxTable;
    procedure SetHotID(const Value: Cardinal);
    procedure SetMaxLines(const Value: Integer);
  public
    procedure SalvaFiltro;
    procedure RefreshPend;
    
    procedure AtualizaPanPag(aLeft: Integer);
    procedure OnClicouPagamento(Sender: TObject);

    procedure processKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); override;

    procedure FiltraDados; override;
    procedure AtualizaDireitos; override;
    class function Descricao: String; override;

    property HotID: Cardinal
      read FHotID write SetHotID;

    property MaxLines: Integer
      read FMaxLines write SetMaxLines;  
    
    { Public declarations }
  end;

var
  fbVendas2: TfbVendas2;

resourcestring
  rsVendaPendente   = 'Pedido em Aberto';
  rsVendasPendentes = 'Pedidos em Aberto';
  rsSemVendasImpRec = 'Voc� ainda n�o vendeu nenhum produto por isso n�o h� recibos para imprimir.';
  rsPendente = 'Em Aberto';
  rsExibir = 'Exibir';
  rsVendaJaCancelada = 'Essa venda j� est� cancelada';

  rsConfigurarRecAdmin = 'Ainda n�o foi feito a configura��o da emiss�o de recibos. Somente um usu�rio com direitos de administrador � que poder� configurar.';
  rsConfigurarRec = '� necess�rio ajustar os par�metros de impress�o. Deseja fazer isso agora?';
  rsVendaBalcaoPro = 'A Venda Balc�o � um recurso exclusivo para os assinantes do plano PRO ou PREMIUM.';

  rsDesconto = 'Desconto';
  rsTotalFinal = 'Total Final';
  rsTroco = 'Troco';
  rsCancelado = 'Cancelado';
  
implementation

uses ncaFrmPri, ncClassesBase, ncIDRecursos, ncaDM, ncaFrmConfigRec, ncaDMComp,
  ncaFrmConfigQuickCad, ncaFrmConfigCodProdutoDuplicado,
  ncaFrmConfigVendaProdSemSaldo, ncaFrmOpcoes, ufmImagens, 
  ncaFrmConfigEspecies, ncDMServ, cxGridCommon, ncaFrmConfigCodBarBal,
  ncaFrmConfigComissao, ncaFrmPanTopo, ncaConfigRecibo, ncaFrmAposVenda,
  ncGuidUtils, ncaFrmConfigPosVenda, ncaFrmDevolucao, ncaFrmRecursoPRO,
  ncaFrmConfigDanfe_NFCe, ncDMdanfe_NFCE, umsg, ncaFrmJust, ncaFrmNFCeDepend,
  ncaFrmNFCeCancelarHomo, ncaFrmNFCeImpedirDeslig, ncaFrmConfig_Gaveta,
  ncaFrmBaseOpcao, ncDMdanfe_SAT, ncaFrmConfigDanfe_SAT, ncaStrings,
  ncaDMImgEsp;

{$R *.dfm}

{ TfbVendas2 }

function getSLQuant(S: String): TStrings;
var 
  i: integer;
  l: String;
begin
  Result := TStringList.Create;
  Result.Text := S;
  with Result do
  for I := 0 to Count-1 do begin
    l := strings[i];
    Strings[I] := Trim(Copy(l, 1, Pos('X', UpperCase(l))-1));
  end;
end;

function getSLDescr(S: String): TStrings;
var 
  i: integer;
  l: String;
begin
  Result := TStringList.Create;
  Result.Text := S;
  with Result do
  for I := 0 to Count-1 do begin
    l := strings[i];
    Strings[I] := Trim(Copy(l, Pos('X', UpperCase(l))+1, 500));
  end;
end;

procedure TfbVendas2.AjustaBtnDanfe(aSat: Boolean);
begin
  if aSat then begin
    cmDanfe.Caption := 'Imprimir CF-e';
    cmDanfe.LargeImageIndex := 188;
  end else begin
    cmDanfe.Caption := 'Imprimir NFC-e';
    cmDanfe.LargeImageIndex := 168;
  end;
end;

procedure TfbVendas2.AjustaTela;
var 
  aEmpty, aImpRecibo : Boolean;
  aStatus : Integer;
begin
  btnExibir.Left := Grid.Left + Grid.Width - btnExibir.Width - 32;
  btnExibir.Height := cxTextHeight(btnExibir.Font) + 6;
  btnExibir.Top := ((44-btnExibir.Height) div 2);
  cmCancelar.Enabled := Permitido(daTraCancelar);
  
{  cmDanfe.Enabled := (Paginas.ActivePage=tsVendas) and 
                     (not Tab.IsEmpty) and 
                     (TabStatusNFE.Value in [nfetran_contingencia, nfetran_ok, nfetran_ok_cont]);}

  case Paginas.ActivePageIndex of
    0 : aEmpty := Tab.IsEmpty;
    1 : aEmpty := tPend.IsEmpty;
    2 : aEmpty := tRej.IsEmpty;
    3 : aEmpty := tCont.IsEmpty;
  end;  

  if not aEmpty then
  case Paginas.ActivePageIndex of
    0 : aStatus := TabStatusNFE.Value;
    1 : if Dados.NFCeAtivo then 
       aStatus := nfetran_gerar else
       aStatus := nfetran_naoemitir;
    2 : aStatus := tRejStatusNFE.Value;
    3 : aStatus := tContStatusNFE.Value;
  end;

  aImpRecibo := True;

  with Dados do                        
  if aEmpty then begin
    if NFCeAtivo then begin
      cmDanfe.Enabled := (Paginas.ActivePage=tsVendas) or (Paginas.ActivePage=tsCont);
      cmDanfe.Visible := ivAlways;
      aImpRecibo := False;
      AjustaBtnDanfe((tNFConfigTipo.Value=nfcfg_sat));
    end else begin
      cmImpRecibo.Enabled := (Paginas.ActivePage=tsVendas);
      cmImpRecibo.Visible := ivAlways;
      aImpRecibo := True;
      cmDanfe.Visible := ivNever;
    end;
  end else begin
    if aStatus=nfetran_naoemitir then begin
      aImpRecibo := True;
      cmImpRecibo.Enabled := (Paginas.ActivePage=tsVendas) or (Paginas.ActivePage=tsPend);
      cmDanfe.Visible := ivNever;
    end else begin
      cmDanfe.Visible := ivAlways;
      cmDanfe.Enabled := (Paginas.ActivePage=tsVendas) or (Paginas.ActivePage=tsCont);
      aImpRecibo := False;
      AjustaBtnDanfe((TabTipoNFE.Value=tiponfe_sat));
    end;
  end;

  if Paginas.ActivePageIndex=1 then begin
    cmImpPedido.Visible := ivAlways;
    aImpRecibo := False;
  end else
    cmImpPedido.Visible := ivNever;

  if aImpRecibo then
    cmImpRecibo.Visible := ivAlways else
    cmImpRecibo.Visible := ivNever;

  cmImpPedido.Enabled := (not aEmpty);  
end;

procedure TfbVendas2.AtualizaDireitos;
begin
  inherited;

  TVtax_total.VisibleForCustomization := (gConfig.Pais<>'BR');
  TVsubtotal.VisibleForCustomization := (gConfig.Pais<>'BR');

  TVDesconto.Caption := rsDesconto;
  TVCancelado.Caption := rsCancelado;
  TVTotalFinal.Caption := rsTotalFinal;
  TVTroco.Caption := rsTroco;

  TVObs.Visible := cmObs.Down;
  
  RefreshPend;

  cmDevolucao.Enabled := Permitido(daDevolucao);

  AjustaBtnDanfe((Dados.tNFConfigTipo.Value=nfcfg_sat));

  with Dados do 
  if NFCeAtivo then begin
    TVStatusNF.Visible := True;
    TVStatusNF.VisibleForCustomization := True;
    cmDanfe.Visible := ivAlways;
{    if tNFConfigAmbiente.Value=2 then
      cmImpRecibo.Visible := ivAlways else}
      cmImpRecibo.Visible := ivNever;
  end else begin
    cmDanfe.Visible := ivNever;
    cmImpRecibo.Visible := ivAlways;
  end;

  if (not gConfig.PaisBrasil) and (not Dados.NFCeAtivo) then begin
    TVStatusNF.Visible := False;
    TVStatusNF.VisibleForCustomization := False;
  end;

  cmTodosCaixas.Enabled := Permitido(daVendasVerCxAntes);
  cmSoCaixaAtual.Enabled := Permitido(daVendasVerCxAtual);

  if not cmTodosCaixas.Enabled then
    cmTodosCaixas.Visible := ivNever else
    cmTodosCaixas.Visible := ivAlways;

  if not cmSoCaixaAtual.Enabled then
    cmSoCaixaAtual.Visible := ivNever else
    cmSoCaixaAtual.Visible := ivAlways;

  if (not cmTodosCaixas.Enabled) and (not cmSoCaixaAtual.Enabled) then begin
    tsVendas.TabVisible := False;
    cbFecharAuto.Checked := False;
    cbFecharAuto.Visible := False;
    cmFiltro.Visible := ivNever;
  end else
    cmFiltro.Visible := ivAlways;

  if (not Permitido(daVendasVerCxAntes)) and (not Permitido(daVendasVerCxAtual)) and (not Permitido(daVendasVerPend)) then
    Paginas.Visible := False else
    Paginas.Visible := True;
  
  cmCancelar.Enabled := Permitido(daTraCancelar);
  cmVendaCaixa.Enabled := Permitido(daVendaCaixa);
  cmNovo.Enabled := Permitido(daVendaBalcao);
  
  if cmSoCaixaAtual.Down and (FLastCxFiltro<>NumAberto) then 
    FiltraDados 
  else 
  if Tab.Active then
    Tab.Refresh;
end;

procedure TfbVendas2.AtualizaPanPag(aLeft: Integer);
begin
{  panPag.Left := aLeft;
  panPag.Height := Grid.Height - panPag.Top + Grid.Top - 17;;
  panPag.Width := TVBPagamento.Width;}
end;

procedure TfbVendas2.cbFecharAutoClick(Sender: TObject);
begin
  inherited;
  SalvaFiltro;
  RefreshPend;
end;

procedure TfbVendas2.cmCanceladosClick(Sender: TObject);
begin
  inherited;
  if Tab.Active then begin
    saveFormOptionBool(Self, 'mostrarcancelados', cmCancelados.Down);
    Tab.Refresh;
    RefreshCancelados;
  end;
end;

procedure TfbVendas2.cmCancelarClick(Sender: TObject);
var 
  T: TnxTable;
  aStatus : Byte;

procedure RaiseEx(S: String);
begin  
  if S>'' then raise Exception.Create(S);
end;

begin
  inherited;

  T := GetTab;
  
  if T.IsEmpty then Exit;

  if Dados.CancelaVenda(T.FieldByName('ID').AsLongWord) then begin
    RefreshPend;
    Tab.Refresh;
  end;
end;

procedure TfbVendas2.cmCfgClick(Sender: TObject);
var F: TFrmBaseOpcaoClass;
begin
  inherited;
  with Dados do begin
    if NFCeAtivo then begin
{      if tNFConfigAmbiente.Value=2 then
        TFrmOpcoes.Create(Self).Editar('Op��es para Vendas', [TFrmConfigDanfe_NFCe, TFrmConfigRec, TFrmConfigQuickCad, TFrmConfigCodProdutoDuplicado, TFrmConfigVendaProdSemSaldo, TFrmConfigCodBarBal, TFrmConfigComissao, TFrmConfigPosVenda], True) else}
        if tNFConfigTipo.Value=nfcfg_sat then
          F := TFrmConfigDanfe_SAT else
          F := TFrmConFigDanfe_NFCE;
                
        TFrmOpcoes.Create(Self).Editar('Op��es para Vendas', [TFrmConfigRec_PgDebito, tFrmConfigRec_Pedido, tFrmConfig_Gaveta, F, TFrmConfigQuickCad, TFrmConfigCodProdutoDuplicado, TFrmConfigVendaProdSemSaldo, TFrmConfigCodBarBal, TFrmConfigComissao, TFrmConfigPosVenda], True);
     end else 
       TFrmOpcoes.Create(Self).Editar('Op��es para Vendas', [TFrmConfigRec_Venda, TFrmConfigRec_PgDebito, TFrmConfigRec_Pedido, TFrmConfig_Gaveta, TFrmConfigQuickCad, TFrmConfigCodProdutoDuplicado, TFrmConfigVendaProdSemSaldo, TFrmConfigCodBarBal, TFrmConfigComissao, TFrmConfigPosVenda], True);
    FrmPri.AtualizaDireitos;       
  end;    
end;

procedure TfbVendas2.cmDanfeClick(Sender: TObject);
begin
  inherited;
  case Paginas.ActivePageIndex of
    0 : Dados.ImprimeDanfe(TabUID.Value);
    3 : Dados.ImprimeDanfe(tContUID.Value);
  end;
end;              

procedure TfbVendas2.cmDescTotClick(Sender: TObject);
begin
  inherited;
  saveFormOptionBool(Self, 'cmDescTot', cmDescTot.Down);
  
  TV.DataController.Refresh;
  Grid.Invalidate(True);
end;

procedure TfbVendas2.cmDevolucaoClick(Sender: TObject);
begin
  inherited;
  TFrmDev.Create(Self).ShowModal;
//  Dados.DevolverVenda(TabUID.Value);
end;

procedure TfbVendas2.cmEditarClick(Sender: TObject);
begin
  inherited;
  case Paginas.ActivePageIndex of
    0 : begin
      if Tab.IsEmpty then Exit;
      Dados.EditarTran(TabID.Value);
    end;

    1 : begin
      if tPend.IsEmpty then Exit;
      Dados.EditarTran(tPendID.Value);
    end;

    2 : begin
      if tRej.IsEmpty then Exit;
      Dados.EditarTran(tRejID.Value);
    end;

    3 : begin
      if tCont.IsEmpty then Exit;
      Dados.EditarTran(tContID.Value);
    end;
  end;
  Tab.Refresh;  
  RefreshPend;
  RefreshPagEsp;
end;

procedure TfbVendas2.cmNovoClick(Sender: TObject);
var 
  aUID: TGUID;
  P : Byte;
begin
  inherited;
  
  if not gConfig.IsPremium then begin
    TFrmRecursoPro.Create(Self).Mostrar(rsVendaBalcaoPRO, 'Venda_Balcao');
    Exit;
  end;
  
  if not FrmPanTopo.PodeVender then Exit;
  if not TFrmNFCeDepend.DependOk then Exit;
  if TFrmNFCeCancelarHomo.ExisteVendaHomo('Cancele a venda realizada para poder realizar outra venda.') then Exit;
  if not TFrmNFCeImpedirDeslig.PodeVender then Exit;
  
  
  P := Dados.NovaVenda(aUID, 0, True, False, tamTelaPDV1);
  if P>0 then begin
    RefreshPend;
    Tab.Refresh;
    Tab.Locate('UID', TGuidEx.ToString(aUID), []);
    case P of
      av_res_novavenda : cmNovo.Click;
      av_res_editar    : cmEditar.Click;
    end;
  end;
end;

procedure TfbVendas2.cmObsClick(Sender: TObject);
begin
  inherited;
  TVObs.Visible := cmObs.Down;
  saveFormOptionBool(Self, 'cmObs', cmObs.Down);
end;

procedure TfbVendas2.cmPagamentoClick(Sender: TObject);
begin
  inherited;
  if tPend.IsEmpty then Exit;

  if not _PodeVender then Exit;
  
  Dados.EditarPagamento(tPendID.Value);
  RefreshPend;
end;

procedure TfbVendas2.cmPagtoRejClick(Sender: TObject);
begin
  inherited;
  if not tRej.IsEmpty then begin
    Dados.EditarPagamento(tRejID.Value);
    RefreshPend;
  end;
end;

procedure TfbVendas2.cmReenviaRejClick(Sender: TObject);
begin
  inherited;
  if tRej.IsEmpty then Exit;
  Dados.CM.ReemitirNFCe(tRejUID.AsGuid);
  dados.TranList.add(tRejUID.AsString);
  RefreshPend;
end;

procedure TfbVendas2.cmSoCaixaAtualChange(Sender: TObject);
begin
  inherited;
  FiltraDados;
end;

procedure TfbVendas2.cmSoCaixaAtualClick(Sender: TObject);
begin
  inherited;
  SalvaFiltro;
  FiltraDados;
end;

procedure TfbVendas2.cmVendaCaixaClick(Sender: TObject);
var
  P : Byte;
  G: TGUID;
begin
  inherited;

  if not _PodeVender then Exit;
  
  repeat
    P := Dados.NovaVenda(G, 0, False, False, tamTelaPDV1);
    if P>0 then begin
      if (P=1) and (not gConfig.TelaPosVenda_Mostrar) then
        P := av_res_novavenda;
      Tab.Refresh;
      Tab.Locate('UID', TGuidEx.ToString(G), []);
    end;
    AjustaTela;
  until (P<>av_res_novavenda);
  RefreshPend;

  if P=av_res_editar then cmEditar.Click;
end;

procedure TfbVendas2.PaginasChange(Sender: TObject);
begin
  inherited;
  if not Tab.Active then Exit;

  AjustaTela;

  case paginas.ActivePageIndex of
    0 : begin
      grid.SetFocus;
      Tab.Refresh;
      RefreshPagEsp;
    end;
    1 : gridPend.SetFocus;
    2 : gridRej.SetFocus;
  end;
end;

procedure TfbVendas2.PaginasDrawTabEx(AControl: TcxCustomTabControl;
  ATab: TcxTab; Font: TFont);
begin
  inherited;
  case aTab.Index of
    1 : if not tPend.IsEmpty then begin
      Font.Color := clAzulNEX;
      Font.Name := 'Segoe UI Semibold';
      Font.Style := [];
    end;
    2 : begin
      Font.Color := $334CCC;
      Font.Name := 'Segoe UI';
      Font.Style := [fsBold];
    end;
    3 : begin
      Font.Color := clBlack;
      Font.Name := 'Segoe UI';
      Font.Style := [fsBold];
    end;  
  end;  
end;

procedure TfbVendas2.processKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    Key_F2 : OnClicouPagamento(nil);
    Key_F3 : cmVendaCaixa.Click;
    Key_F4 : cmNovo.Click;
  end;
end;

class function TfbVendas2.Descricao: String;
begin
  Result := 'Vendas';
end;

procedure TfbVendas2.cmImpPedidoClick(Sender: TObject);
begin
  inherited;
  if (not gRecibo.Imprimir[tipodoc_pedido]) or (not gRecibo.DocOk(tipodoc_pedido)) then begin
    if not Dados.CM.UA.Admin then begin
      ShowMessage(rsConfigurarRecAdmin);
      Exit;
    end;
    if SimNao(rsConfigurarRec) then 
      TFrmConfigRec_Pedido.Create(Self).Editar;
  end;

  if tPend.IsEmpty then Exit;

  dmComp.Imprime(tPendUID.AsGuid);
end;

procedure TfbVendas2.cmImpReciboClick(Sender: TObject);
var S: String;
begin
  inherited;

  if (not gRecibo.Imprimir[tipodoc_venda]) or (not gRecibo.DocOk(tipodoc_venda)) then begin
    if not Dados.CM.UA.Admin then begin
      ShowMessage(rsConfigurarRecAdmin);
      Exit;
    end;
    if SimNao(rsConfigurarRec) then 
      TFrmConfigRec_Venda.Create(Self).Editar;
  end;
  
  if (not gRecibo.Imprimir[tipodoc_venda]) or (not gRecibo.DocOk(tipodoc_venda)) then Exit;
  
  if Paginas.ActivePageIndex=0 then begin
    if Tab.IsEmpty then
      ShowMessage(rsSemVendasImpRec) 
    else begin
      dmComp.Imprime(TabUID.AsGuid);
    end;
  end else begin
    if tPend.IsEmpty then
      ShowMessage(rsSemVendasImpRec) else
      dmComp.Imprime(tPendUID.AsGuid);
  end;
end;

procedure TfbVendas2.cmMaxItensPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  MaxLines := cmMaxItens.EditValue;
end;

procedure TfbVendas2.cmMeioPagTotClick(Sender: TObject);
begin
  inherited;
  saveFormOptionBool(Self, 'cmMeioPagTot', cmMeioPagTot.Down);
  TV.DataController.Refresh;
  Grid.Invalidate(True);  
end;

procedure TfbVendas2.FiltraDados;
var S: String;
begin
  LockWindowUpdate(panPri.Parent.Handle);
  try
    RefreshCancelados;
    if (cmSoCaixaAtual.Enabled <> cmTodosCaixas.Enabled) then
    if cmSoCaixaAtual.Enabled then
      cmSoCaixaAtual.Down := True else
      cmTodosCaixas.Down := True;

    if not (cmSoCaixaAtual.Enabled or cmTodosCaixas.Enabled) then
      cmFiltro.Caption := ''
    else
    if cmSoCaixaAtual.Down then
      cmFiltro.Caption := cmSoCaixaAtual.Caption else 
      cmFiltro.Caption := cmTodosCaixas.Caption;
      
    tsVendas.Caption := cmFiltro.Caption;
    cmFiltro.Caption := rsExibir+': '+cmFiltro.Caption;
    btnExibir.Caption := cmFiltro.Caption;
    btnExibir.Width := cxTextWidth(btnExibir.Font, btnExibir.Caption) + 32;
    
    AjustaTela;
    if not tPend.Active then
      tPend.Open;
    tPend.SetRange([True], [True]);

    if not tRej.Active then 
      tRej.Open;

    tRej.SetRange([False, nfetran_erro], [False, nfetran_erro]);

    if not tCont.Active then tCont.Open;
    tCont.SetRange([False, nfestatus_contingencia], [False, nfestatus_contingencia]);
    
    RefreshPend;
    Tab.DisableControls;
    try
      S := '(Tipo=' + IntToStr(trEstVenda) + ') AND (PagPend=False)';
      if TV.DataController.Filter.FilterText>'' then begin
        if S>'' then S := '('+S+') AND ';
        S := S+'('+TV.DataController.Filter.FilterText+')';
      end;  
      Tab.Filter := S;
      Tab.Filtered := True;
      if not Tab.Active then 
        Tab.Active := True;
      if cmSoCaixaAtual.Down then begin
        Tab.IndexName := 'ITipoCaixaID';
        FLastCxFiltro := NumAberto;
        if NumAberto>0 then
           Tab.SetRange([trEstVenda, NumAberto], [trEstVenda, NumAberto]) else
           Tab.SetRange([trEstVenda, High(Cardinal)], [trEstVenda, High(Cardinal)]);
      end else begin
        Tab.IndexName := 'ITipoID';
        Tab.SetRange([trEstVenda], [trEstVenda]);
      end;
      Tab.Refresh;   
    finally
      Tab.EnableControls;
    end;
    AjustaTela;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfbVendas2.FrmBasePaiCreate(Sender: TObject);
begin
  inherited;
  FExpanded := TStringList.Create;
  FMaxLines := getFormOptionInt(Self, 'MaxLines', 3);
  cmMaxItens.EditValue := FMaxLines;
  cmObs.Down := getFormOptionBool(Self, 'cmObs', True);
  cmDescTot.Down := getFormOptionBool(Self, 'cmDescTot', True);
  cmMeioPagTot.Down := getFormOptionBool(Self, 'cmMeioPagTot', True);
  cmCancelados.Down := getFormOptionBool(Self, 'mostrarcancelados');
  FHotID := 0;
  
  FLastCxFiltro := 0;
  Paginas.ActivePageIndex := 0;
  cmTodosCaixas.Down := (slConfig.Values[Self.Name+'.cmTodosCaixas']='1');
  cbFecharAuto.Checked := (slConfig.Values[Self.Name+'.cbFecharAuto']<>'0');
  dsPag.Visible := False;
  dpPag.Visible := False;
  FFrmPag := TFramePagamento.Create(Self);
  FFrmPag.panPri.Parent := dpPag;
  FFrmPag.OnClicouPagamento := OnClicouPagamento;
{  FFrmPag.panPri.AlignWithMargins := False;
  FFrmPag.panPri.Bevel.StandardStyle := lsNone;}
  FPagEsp := TncPagEspecies.Create;
end;

procedure TfbVendas2.FrmBasePaiDestroy(Sender: TObject);
begin
  inherited;
  FExpanded.Free;
end;

function TfbVendas2.GetGrid: TcxGrid;
begin
  case Paginas.ActivePageIndex of
    0: Result := Grid;
    1: Result := GridPend;
    2: Result := gridRej;
    3: Result := gridCont;  
  end;
end;

function TfbVendas2.GetTab: TnxTable;
begin
  case Paginas.ActivePageIndex of
    0 : Result := Tab;
    1 : Result := tPend;
    2 : Result := tRej;
    3 : Result := tCont;  
  end;
end;

procedure TfbVendas2.GridResize(Sender: TObject);
begin
  inherited;
  AjustaTela;
end;

function TfbVendas2.IsExpanded(C: Cardinal): Boolean;
begin
  Result := (FExpanded.IndexOf(IntToStr(C))>=0);
end;

procedure TfbVendas2.OnClicouPagamento(Sender: TObject);
begin
  case Paginas.ActivePageIndex of
    0 : 
    if not Tab.IsEmpty then begin
      Dados.EditarPagamento(TabID.Value);
      Tab.Refresh;
    end;

    1 : if not tPend.IsEmpty then 
      Dados.EditarPagamento(tPendID.Value);

    2 : if not tRej.IsEmpty then
      Dados.EditarPagamento(tRejID.Value);

    3 : if not tCont.IsEmpty then
      Dados.EditarPagamento(tContID.Value);  
  end;
  RefreshPagEsp;
  RefreshPend;
end;

procedure TfbVendas2.RefreshCancelados;
begin
  TVCancelado.Visible := cmCancelados.Down;
  TVCanceladoPor.Visible := cmCancelados.Down;
  TVCanceladoEm.Visible := cmCancelados.Down;
end;

procedure TfbVendas2.RefreshPagEsp;
begin
  AjustaTela;
  if not Tab.IsEmpty then begin
    dpPag.Visible := True;
    dsPag.Visible := True;
    DM.LoadPagEsp(TabID.Value, FPagEsp);
    FFrmPag.Load(FPagEsp, TabTotal.Value, TabDesconto.Value, TabTroco.Value, TabCreditoUsado.Value, TabCredito.Value);
  end else begin
    dpPag.Visible := False;
    dsPag.Visible := False;
  end;
//  FFrmPag.LoadData(FPagEsp, TabTotal.Value, TabCreditoUsado.Value, 0, TabDesconto.Value);
end;

procedure TfbVendas2.RefreshPend;
var I: Integer;
begin
  if tRej.Active then begin
    tRej.Refresh;
    TemRej := not tRej.IsEmpty;
    tsRej.TabVisible := TemRej;
  end;

  if tCont.Active then begin
    tCont.Refresh;
    TemCont := not tCont.isEmpty;
    tsCont.TabVisible := TemCont;
  end;
  
  if not tPend.Active then Exit;
  tPend.Refresh;

  AjustaTela;

  if not Permitido(daVendasVerPend) then begin
    tsPend.TabVisible := False;
    Exit;
  end else
  if tPend.IsEmpty then begin
    TemPend := False;
    tsPend.Caption := rsVendasPendentes;
    tsPend.TabVisible := (not cbFecharAuto.Checked);
  end else begin
    TemPend := True;
    Paginas.HideTabs := False;
    tsPend.TabVisible := True;
    I := tPend.RecordCount;
    if I<2 then
      tsPend.Caption := IntToStr(I) + ' ' + rsVendaPendente else
      tsPend.Caption := IntToStr(I) + ' ' + rsVendasPendentes;
  end;

  Paginas.HideTabs := (not TemRej) and (not TemCont) and ((not TemPend) and cbFecharAuto.Checked);
  if (Paginas.ActivePage=nil) or (not Paginas.ActivePage.TabVisible) then
    Paginas.ActivePageIndex := 0;
    
{  if panPend.Visible then
    Grid.RootLevelOptions.DetailTabsPosition := dtpTop else
    Grid.RootLevelOptions.DetailTabsPosition := dtpNone;}
end;

procedure TfbVendas2.SalvaFiltro;
begin
  inherited;
  if cmTodosCaixas.Down then 
    slConfig.Values[Self.Name+'.cmTodosCaixas']:='1' 
  else
  if cmSoCaixaAtual.Down then
    slConfig.Values[Self.Name+'.cmTodosCaixas']:='0'
  else
    slConfig.Values[Self.Name+'.cmTodosCaixas']:='2';
  slConfig.Values[Self.Name+'.cbFecharAuto'] := IntToStr(Byte(cbFecharAuto.Checked));
  ncaDM.SaveConfig;
end;

procedure TfbVendas2.SetHotID(const Value: Cardinal);
begin
  if Value=FHotID then Exit;

  FHotID := Value;

  Grid.Invalidate(True);
end;

procedure TfbVendas2.SetMaxLines(const Value: Integer);
begin
  if FMaxLines=Value then Exit;
  saveFormOptionInt(Self, 'MaxLines', cmMaxItens.EditValue);
  FMaxLines := Value;
  cmMaxItens.EditValue := Value;
  TV.DataController.Refresh;
  Grid.Invalidate(True);  
end;

procedure TfbVendas2.TabCalcFields(DataSet: TDataSet);
var S: String;

begin
  inherited;
  Tabtax_total.Value := Tabtax_incluir.Value + Tabtax_incluido.Value;

  TabPedido.Value := (TabIncluidoEm.Value <> TabDataHora.Value);
  TabImpRec.Value := (TabTipoNFe.Value=0);
  TabImpNF.Value := (TabTipoNFe.Value>0);
end;

procedure TfbVendas2.TabFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept := cmCancelados.Down or (not TabCancelado.Value);
end;

procedure TfbVendas2.ToogleExpanded(C: Cardinal);
var I: Integer;
begin
  I := FExpanded.IndexOf(IntToStr(C));
  if I>=0 then
    FExpanded.Delete(I) else
    FExpanded.Add(IntToStr(C));
  TV.DataController.Refresh;
  Grid.Invalidate(True);  
end;

procedure TfbVendas2.tPendCalcFields(DataSet: TDataSet);
begin
  inherited;
  tPendTotalFinal.Value := tPendTotal.Value - tPendDesconto.Value;
end;

procedure TfbVendas2.tRejCalcFields(DataSet: TDataSet);
var 
  S: String;
  sl : TStrings;

procedure AddCampoValor(aCampo, aValor: String);
begin
  aValor := Trim(aValor);
  if aValor='' then Exit;
  if S>'' then S := S + sLineBreak;
  S := aCampo+': '+aValor;
end;

begin
  inherited;

  S := '';
  
  if tRejNomeCliente.Value > '' then
    S := tRejNomeCliente.Value
  else 
  if tRejExtra.Value>'' then
  begin
    sl := TStringList.Create;
    try
      sl.Text := tRejExtra.Value;
      AddCampoValor('CPF', sl.Values['cpfnf']);
      AddCampoValor('E-mail', sl.Values['emailnf']);
    finally
      sl.Free;    
    end;
  end;  

  tRejDadosCli.Value := S;
end;

procedure TfbVendas2.TVBPagamentoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  AtualizaPanPag(AViewInfo.Bounds.Left);
end;

procedure TfbVendas2.TVDebitoStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVCancelado.Index];
  if (V<>null) and (V=True) then
    AStyle := cxStyle2;
end;

procedure TfbVendas2.TVDescontoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var R: TRect;  
begin
{  ADone := True;
  with AViewInfo do begin
    ACanvas.FillRect(Bounds);    
    ACanvas.Brush.Color := $3343CC;
    ACanvas.Font.Color := clWhite;
    R.Left := Bounds.Left+2;
    R.Right := Bounds.Right-3;
    R.Top := Bounds.Top+2;
    R.Bottom := Bounds.Top+22;
    if Text>'' then begin
      ACanvas.FillRect(R);
      with EditViewInfo.ClientRect do begin
        R.Left := Left+2;
        R.Right := Right-3;
        R.Top := Top+2;
        R.Bottom := Bottom-2;
      end;
      ACanvas.DrawTexT(Text, R, taRightJustify, vaTop, False, False);
    end;
  end; 
  ADone := True;  }
end;

function VarCardinal(V: Variant): Cardinal;
begin
  if VarIsNull(V) then
    Result := 0 else
    Result := V;
end;

function LineCount(V: Variant): Integer;
var sl: TStrings;
begin
  if VarIsNull(V) then
    Result := 0
  else begin
    sl := TStringList.Create;
    try
      sl.Text := V;
      Result := sl.Count;
    finally
      sl.Free;
    end;
  end;
end;

procedure TfbVendas2.TVDescrCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var 
  L, T, I: Integer;  
  C: Cardinal;
  R : TRect;
  P1, P2 : TPoint;
  slQuant, slDescr: TStrings;
  S : String;
  aExp: Boolean;
  aHot: Boolean;
  V : Variant;

function MaxWidthQuant: Integer;
var w, i: integer;
begin  
  Result := 0;
  for I := 0 to slQuant.Count-1 do begin
    w := cxTextWidth(ACanvas.Font, slQuant[i]) + 8;
    if w>Result then Result := W;
  end;
end;

function _Exp: Boolean;
var C: Cardinal;
begin
  C := VarCardinal(AViewInfo.GridRecord.Values[TVID.Index]);
  Result := (C>0) and IsExpanded(C);
end;

begin
  ADone := True;
  V := AviewInfo.Value;
  if VarIsNull(V) then V := '';
  
  slQuant := getSLQuant(V);
  slDescr := getSLDescr(V);
  
  with AViewInfo do begin
  try
    aExp := _Exp;
    aHot := (FHotID>0) and (FHotID=AViewInfo.GridRecord.Values[TVID.Index]);
    if aHot then begin
      ACanvas.Brush.Color := clHotLight;
      ACanvas.Font.Color := clWhite;
    end;{ else
    if aExp  then begin
      ACanvas.Brush.Color := clBtnFace;
      ACanvas.Font.Color := clBlack;
    end;}

    ACanvas.FillRect(AViewInfo.Bounds);    
    with EditViewInfo.ClientRect do begin
      R.Left := Left;
      R.Top := Top;
      R.Bottom := Bottom;
      R.Right := Left+MaxWidthQuant;
      L := AViewInfo.Bounds.Right+1;
    end;  
//    EditViewInfo.Paint(ACanvas);
    ACanvas.DrawTexT(slQuant.Text, R, taLeftJustify, vaTop, True, False);

    p1.X := L;
    p1.Y := AViewInfo.Bounds.Top;

    p2.X := L;
    p2.y := AViewInfo.Bounds.Bottom;

    with EditViewInfo.ClientRect do begin
      R.Left := R.Right;
      R.Right := Right;
    end;  

    ACanvas.Font.Name := 'Segoe UI Semibold';

    ACanvas.DrawTexT(slDescr.Text, R, cxAlignTop, True);

    T := EditViewInfo.ClientRect.Bottom - 11;
    L := EditViewInfo.ClientRect.Right - 19;
    R.Left := L-4;
    R.Top := T-4;
    R.Bottom := EditViewInfo.ClientRect.Bottom;
    R.Right := EditViewInfo.ClientRect.Right;

    L := LineCount(AViewInfo.Value);
    if (L>MaxLines) then begin
      T := L-MaxLines;

      if _Exp then begin
        if Selected or aHot then
          I := 3 else
          I := 2;
      end else begin
        if Selected or aHot then
          I := 1 else
          I := 0;
      end;
      
      with AViewInfo.EditViewInfo.ClientRect do begin
        R.Left := Right-11;
        R.Top := Bottom-11;
        R.Bottom := Bottom;
        R.Right := Right;
        L := Right-11;
        T := Bottom-11;
      end;  
      ACanvas.FillRect(R);
      imgMais.Draw(ACanvas.Canvas, L, T, I);
    end;  
  finally
    slQuant.Free;
    slDescr.Free;
  end;
  end;
end;

function LineCount2(S: String): Integer;
var sl: TStrings;
begin
    sl := TStringList.Create;
    try
      sl.Text := S;
      Result := sl.Count;
    finally
      sl.Free;
    end;
end;

function LimitLines(S: String; M: Integer): String;
var sl: TStrings;
begin
    sl := TStringList.Create;
    try
      sl.Text := S;
      while sl.Count>M do sl.Delete(sl.Count-1);
      Result := sl.Text;
    finally
      sl.Free;
    end;
end;


procedure TfbVendas2.TVDescrGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var 
  L: Integer;  
  C: Cardinal;
  V: Variant;
  S : String;
begin
  inherited;
  S := AText;
  L := LineCount(AText);
  V := ARecord.Values[TVID.Index];
  if VarIsNull(V) then
    C := 0 else
    C := V;
  if (L>MaxLines) and (not IsExpanded(C)) then 
    AText := LimitLines(AText, MaxLines);
end;

procedure TfbVendas2.TVDescrGetProperties(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
var 
  L: Integer;  
  C: Cardinal;
  V: Variant;
begin
  inherited;
  if not Assigned(AProperties) then Exit;
  if not Assigned(ARecord) then Exit;
  

  L := LineCount(ARecord.Values[TVDescr.Index]);
  V := ARecord.Values[TVID.Index];
  if VarIsNull(V) then
    C := 0 else
    C := V;
{  if ((L<=MaxLines) or IsExpanded(C)) and (AProperties is TcxCustomMemoProperties) then
    TcxCustomMemoProperties(AProperties).VisibleLineCount := L else
    TcxCustomMemoProperties(AProperties).VisibleLineCount := MaxLines;}
end;

procedure TfbVendas2.TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  RefreshPagEsp;
end;

procedure TfbVendas2.TVMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
  AGridSite: TcxGridSite;
  AView: TcxGridDBTableView;
  RCH : TcxGridRecordCellHitTest;
  hItem : Integer;
  V : Variant;
  sl : TStrings;
  aHot: Boolean;
begin
  AGridSite := Sender as TcxGridSite;
  AView := AGridSite.GridView as TcxGridDBTableView;
  AHitTest := AView.GetHitTest(X, Y);
  RCH := nil;
  aHot := False;
  if (AHitTest is TcxGridRecordCellHitTest) then
  begin
    RCH := TcxGridRecordCellHitTest(AHitTest);
    hItem := RCH.Item.Index;
    if hItem=TVDescr.Index then begin
      sl := TStringList.Create;
      try
        V := RCH.GridRecord.Values[TVDescr.Index];
        if not VarIsNull(V) then 
          sl.Text := V;
        aHot := (sl.Count>MaxLines);
      finally
        sl.Free;
      end;
    end;
  end;
  if aHot then begin
    aGridSite.Cursor := crHandPoint;
    HotID := RCH.GridRecord.Values[TVID.Index];
  end else begin
    aGridSite.Cursor := crDefault;
    HotID := 0;
  end;
end;

procedure TfbVendas2.TVMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if FHotID>0 then
    ToogleExpanded(FHotID);
end;

function ValueIsZero(V: Variant): Boolean;
begin
  Result := VarIsNull(V) or (V=0);
end;

procedure TfbVendas2.TVPagoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var V: Variant;  
begin
  inherited;
  V := AviewInfo.GridRecord.Values[tvPagPend.Index];

  if (not VarIsNull(V)) and (V=True) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfbVendas2.TVPagoGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVPagPend.Index];
  if (not VarIsNull(V)) and (V=True) then 
    AText := rsPendente 
  else
  if ValueisZero(ARecord.Values[Sender.Index]) then
    AText := '';
end;

procedure TfbVendas2.tvPendCustomDrawColumnHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
var
  I: Integer;
begin

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

    ACanvas.DrawTexT(Column.Caption, Rect(Left+2, Top+2, Right-2, Bottom-2), AlignmentHorz, AlignmentVert, Multiline, False);
  

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

procedure TfbVendas2.tvPendTotalFinalCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Font.Style := [fsBold];
end;

function SoValor(S: String): String;
var i : integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    if S[I] in ['0'..'9', ',', '.'] then
      Result := Result + S[I];
end;

function SoDesc(S: String): String;
var P : Integer;
begin
  P := Pos('-', S);
  if P>0 then begin
    Result := S;
    Delete(Result, 1, P-1);
  end else
    Result := '';
end;

function index_meiopag(S: String): Integer;
begin
  if S='d' then
    Result := 5 
  else
  if S='c' then
    Result := 4
  else 
    Result := gEspecies.ImgIndex(StrToIntDef(S, -1));
end;

procedure TfbVendas2.TVTotalFinalCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  sl : TStrings;  
  i, b : integer;
  R : TRect;
  V : Variant;
  aCancelado : Boolean;
begin
  inherited;
  ACanvas.FillRect(AViewInfo.Bounds);
  if AViewInfo.Text='' then Exit;

  V := AViewInfo.GridRecord.Values[TVCancelado.Index];

  if not VarIsNull(V) then
    aCancelado := V else
    aCancelado := False;

  with AViewInfo.ClientBounds do begin
    R.Left := Left;
    R.Top := Top+2;
    R.Right := Right-4;
    R.Bottom := Bottom;
  end;

  sl := TStringList.Create;
  try
    sl.Text := aViewInfo.Text;
    for I := 0 to sl.Count-1 do begin
      if I>0 then begin
        ACanvas.Font.Style := [];
        ACanvas.Font.Size := 7;
        if not AViewInfo.Selected then
          ACanvas.Font.Color := $003343CC;
      end else
      if aCancelado then ACanvas.Font.Style := ACanvas.Font.Style + [fsStrikeout];
      
      ACanvas.DrawTexT(sl[i], R, cxAlignTop+cxAlignRight);
{      if (I>0) and (not AViewInfo.Selected) then begin
        ACanvas.Font.Color := clRed;
        ACanvas.DrawTexT(SoDesc(sl[i]), R, cxAlignTop+cxAlignRight+cxDontClip);
      end;}
      R.Top := R.Top + cxTextHeight(ACanvas.Font, sl[i]);
    end;

    if cmMeioPagTot.Down then
      V := AViewInfo.GridRecord.Values[TVids_pagto.Index] else
      V := null;

    sl.Clear;
    

    if not VarIsNull(V) then begin
      sl.Delimiter := ',';
      sl.DelimitedText := V;

      for I := 0 to sl.Count-1 do begin
        if sl.Count>0 then
          b := Index_MeioPag(sl[I]) else
          b := -1;

        with AViewInfo.ClientBounds do begin
          R.Left := Left+2;
          R.Top := Top + 3 + (I*16);
          R.Right := Right;
          R.Bottom := Bottom;
        end;
    
        if (b>=0) and (b<dmImgEsp.imgs16.Count) then 
          dmImgEsp.imgs16.Draw(ACanvas.Canvas, R.Left, R.Top, b, (b=5));
      end;
    end;
  finally
    sl.Free;
  end;
  ADone := True;
end;

function qtd_meiopag(V: Variant): Integer;
var sl : TStrings;
begin
  if VarIsNull(V) then 
    Result := 0
  else
  try
    sl := TStringList.Create;
    sl.Delimiter := ',';
    sl.DelimitedTExt := V;
    Result := sl.Count;
  finally
    sl.Free;
  end;
end;

procedure TfbVendas2.TVTotalFinalGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var 
  aTemDesc, 
  aTemValor : Boolean;  
  a, b, c : integer;
begin
  inherited;
  aTemValor := not ValueisZero(ARecord.Values[Sender.Index]);
  aTemDesc := (cmDescTot.Down) and (not ValueIsZero(ARecord.Values[TVDesconto.Index]));
  if (not cmMeioPagTot.Down) and (not cmDescTot.Down) then Exit;
  
  a := 1;
  if (not aTemValor) and (not aTemDesc) then 
    AText := ''
  else begin
    if aTemDesc then begin
      a := 2;
      AText := AText + sLineBreak + '(' + 
             SoValor(CurrencyToStr(ARecord.Values[TVTotal.Index])) + ' - ' +
             SoValor(CurrencyToStr(ARecord.Values[TVDesconto.Index])) + ')';
    end;
  end;

  if cmMeioPagTot.Down then begin
    c := qtd_meiopag(ARecord.Values[TVids_pagto.Index]);

    if a<c then 
      for b := a+1 to c do 
        AText := AText + sLineBreak + ' ';
  end;
end;

procedure TfbVendas2.TVTotalGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if ValueisZero(ARecord.Values[Sender.Index]) then
    AText := '';
end;



function TfbVendas2._PodeVender: Boolean;
begin
  Result := False;
  if not TFrmNFCeDepend.DependOk then Exit;
  if not FrmPanTopo.PodeVender then Exit;
  if TFrmNFCeCancelarHomo.ExisteVendaHomo('Cancele a venda realizada para poder realizar outra venda.') then Exit;
  if not TFrmNFCeImpedirDeslig.PodeVender then Exit;
  Result := True;
end;

end.


