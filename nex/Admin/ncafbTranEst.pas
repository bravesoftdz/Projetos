unit ncafbTranEst;


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
  dxScreenTip, dxCustomHint, cxHint, nxllComponent;

type
  TfbTranEst = class(TFrmBase)
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
    dxBarButton3: TdxBarButton;
    cmFiltro: TdxBarSubItem;
    TabDebitoAnt: TCurrencyField;
    TabDebitoPago: TCurrencyField;
    TabCreditoAnt: TCurrencyField;
    TabCredito: TCurrencyField;
    TabCreditoUsado: TCurrencyField;
    TabTroco: TCurrencyField;
    cxStyle6: TcxStyle;
    dckMgr: TdxDockingManager;
    cxStyle7: TcxStyle;
    dxBarStatic1: TdxBarStatic;
    cxStyle8: TcxStyle;
    BarMgrBar2: TdxBar;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    TabPagFunc: TStringField;
    TabPagPend: TBooleanField;
    TabDescPerc: TFloatField;
    TabDescPorPerc: TBooleanField;
    TabPagEsp: TWordField;
    TabNomePagEsp: TStringField;
    TabUID: TGuidField;
    cmCancelados: TdxBarButton;
    TabCliente: TLongWordField;
    TabTipo: TByteField;
    TabCaixa: TLongWordField;
    TabCaixaPag: TLongWordField;
    TabSessao: TLongWordField;
    dxBarLargeButton2: TdxBarLargeButton;
    pmTipoTran: TdxBarPopupMenu;
    TabUID_ref: TGuidField;
    TabIncluidoEm: TDateTimeField;
    TabOpDevValor: TByteField;
    TabStatusNFE: TByteField;
    TabChaveNFE: TStringField;
    TabTipoNFE: TByteField;
    BarMgrBar3: TdxBar;
    cmReenviaRej: TdxBarLargeButton;                                                                              
    cxStyle11: TcxStyle;
    TabAmbNFe: TByteField;
    TabStatusCanc: TByteField;
    TabExtra: TnxMemoField;
    TabRecVer: TLongWordField;
    cmPagtoRej: TdxBarLargeButton;
    Tabtax_incluido: TCurrencyField;
    Tabtax_incluir: TCurrencyField;
    TabTotalFinal: TCurrencyField;
    Tabtax_total: TCurrencyField;
    cxStyle12: TcxStyle;
    img3p: TcxImageList;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    TabNomeFunc: TStringField;
    TabImgMeioPag: TStringField;
    cxStyle17: TcxStyle;
    imgMais: TcxImageList;
    cxStyle18: TcxStyle;
    Tabids_pagto: TStringField;
    cmMaxItens: TcxBarEditItem;
    cmObs: TdxBarButton;
    cmDescTot: TdxBarButton;
    cmMeioPagTot: TdxBarButton;
    TabDescricao: TWideMemoField;
    TabPedido: TBooleanField;
    TabImpRec: TBooleanField;
    TabImpNF: TBooleanField;
    TabVendedor: TStringField;
    TabComissao: TCurrencyField;
    TabNomeVendedor: TStringField;
    TabEntregar: TBooleanField;
    Tabendereco_entrega: TGuidField;
    TabNomeTipo: TStringField;
    Tabtranest: TBooleanField;
    Tabtrancx: TBooleanField;
    cmResumido: TdxBarButton;
    cmDetalhado: TdxBarButton;
    panGrid: TLMDSimplePanel;
    pgModo: TcxPageControl;
    tsModoResumido: TcxTabSheet;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVStatusNF: TcxGridDBColumn;
    TVImg: TcxGridDBColumn;
    TVEntrega: TcxGridDBColumn;
    TVNomeTipo: TcxGridDBColumn;
    TVID: TcxGridDBColumn;
    TVMaquina: TcxGridDBColumn;
    TVData: TcxGridDBColumn;
    TVInicio: TcxGridDBColumn;
    TVDescr: TcxGridDBColumn;
    TVNome: TcxGridDBColumn;
    TVTotalFinal: TcxGridDBColumn;
    TVObs: TcxGridDBColumn;
    TVNomeFunc: TcxGridDBColumn;
    TVVendedor: TcxGridDBColumn;
    TVTotal: TcxGridDBColumn;
    TVDesconto: TcxGridDBColumn;
    TVSubTotal: TcxGridDBColumn;
    TVtax_total: TcxGridDBColumn;
    TVPago: TcxGridDBColumn;
    TVMeioPagto: TcxGridDBColumn;
    TVCredUsado: TcxGridDBColumn;
    TVDebito: TcxGridDBColumn;
    TVTroco: TcxGridDBColumn;
    TVSessao: TcxGridDBColumn;
    TVCancelado: TcxGridDBColumn;
    TVCanceladoPor: TcxGridDBColumn;
    TVCanceladoEm: TcxGridDBColumn;
    TVCredito: TcxGridDBColumn;
    TVPagPend: TcxGridDBColumn;
    TVids_pagto: TcxGridDBColumn;
    TVTipoTran: TcxGridDBColumn;
    GL: TcxGridLevel;
    tsModoDetalhado: TcxTabSheet;
    dsMovEst: TDataSource;
    tMovEst: TnxTable;
    tMovEstID: TAutoIncField;
    tMovEstQuant: TFloatField;
    tMovEstUnitario: TCurrencyField;
    tMovEstTotal: TCurrencyField;
    tMovEstCustoU: TCurrencyField;
    tMovEstDesconto: TCurrencyField;
    tMovEstPago: TCurrencyField;
    tMovEstDataHora: TDateTimeField;
    tMovEstEntrada: TBooleanField;
    tMovEstCancelado: TBooleanField;
    tMovEstEstoqueAnt: TFloatField;
    tMovEstCategoria: TStringField;
    tMovEstNaoControlaEstoque: TBooleanField;
    tMovEstITran: TIntegerField;
    tMovEstSessao: TIntegerField;
    tMovEstEstoquePost: TFloatField;
    tMovEstPagoPost: TCurrencyField;
    tMovEstDescPost: TCurrencyField;
    tMovEstFidResgate: TBooleanField;
    tMovEstTran: TLongWordField;
    tMovEstAjustaCusto: TBooleanField;
    tMovEstCliente: TLongWordField;
    tMovEstCaixa: TIntegerField;
    tMovEstTipoTran: TByteField;
    tMovEstPermSemEstoque: TBooleanField;
    tMovEstFidPontos: TFloatField;
    tMovEstProduto: TLongWordField;
    tMovEstItem: TByteField;
    tMovEstQuantFator: TFloatField;
    tMovEstID_ref: TLongWordField;
    tMovEstComissao: TCurrencyField;
    tMovEstComissaoPerc: TFloatField;
    tMovEstComissaoLucro: TBooleanField;
    tMovEstNomeCliente: TWideStringField;
    tMovEstFunc: TStringField;
    tMovEstNomeFunc: TStringField;
    tMovEstNomeTipoTran: TStringField;
    gridDet: TcxGrid;
    tvDet: TcxGridDBTableView;
    TVFidResgate: TcxGridDBColumn;
    TVCaixa: TcxGridDBColumn;
    TVTran: TcxGridDBColumn;
    TVDataMov: TcxGridDBColumn;
    tvDetNomeTipoTran: TcxGridDBColumn;
    tvDetUnitario: TcxGridDBColumn;
    tvDetSubTotal: TcxGridDBColumn;
    TVQuantFator: TcxGridDBColumn;
    TVEstoquePost: TcxGridDBColumn;
    TVCanc: TcxGridDBColumn;
    TVCliente: TcxGridDBColumn;
    TVFunc: TcxGridDBColumn;
    TVValorComissao: TcxGridDBColumn;
    TVComissaoPerc: TcxGridDBColumn;
    TVComissaoLucro: TcxGridDBColumn;
    glDet: TcxGridLevel;
    tvDetDescr: TcxGridDBColumn;
    tMovEsttax_id: TLongWordField;
    tMovEsttax_incluido: TCurrencyField;
    tMovEsttax_incluir: TCurrencyField;
    tMovEstDescr: TWideStringField;
    tMovEstTotalFinal: TCurrencyField;
    tMovEstPend: TBooleanField;
    tMovEstIncluidoEm: TDateTimeField;
    tMovEstDebDev: TCurrencyField;
    tvDetDesconto: TcxGridDBColumn;
    tvDetTotalFinal: TcxGridDBColumn;
    tvDetTipoTran: TcxGridDBColumn;
    nxSession1: TnxSession;
    bdcGrid: TdxBarDockControl;
    cmRes: TdxBarButton;
    cmDet: TdxBarButton;
    tvDetHora: TcxGridDBColumn;
    tvDetCancelado: TcxGridDBColumn;
    tMovEstNomeProd: TStringField;
    tvDetDescrOrig: TcxGridDBColumn;
    tMovEstStatusNFE: TByteField;
    tMovEstEntregar: TBooleanField;
    tvDetStatusNFE: TcxGridDBColumn;
    tvDetEntregar: TcxGridDBColumn;
    dxBarStatic2: TdxBarStatic;
    cmTipoTran: TdxBarListItem;
    cmDanfe: TdxBarLargeButton;
    cmImpRecibo: TdxBarLargeButton;
    TVTipoNFE: TcxGridDBColumn;
    procedure cmCancelarClick(Sender: TObject);
    procedure TVTotalGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVDebitoStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cmCfgClick(Sender: TObject);
    procedure FrmBasePaiCreate(Sender: TObject);
    procedure tvPendTotalFinalCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cmEditarClick(Sender: TObject);
    procedure TVPagoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure tvPendCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure TVPagoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cmCanceladosClick(Sender: TObject);
    procedure TabFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure GridResize(Sender: TObject);
    procedure TabCalcFields(DataSet: TDataSet);
    procedure TVDescrCustomDrawCell(Sender: TcxCustomGridTableView;
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
    procedure cmDetalhadoClick(Sender: TObject);
    procedure cmResumidoClick(Sender: TObject);
    procedure tvDetNomeTipoTranCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const [Ref] AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const [Ref] AValue2: Variant; var AAreEqual: Boolean);
    procedure tvDetDescontoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure tMovEstCalcFields(DataSet: TDataSet);
    procedure TVValorComissaoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cmResClick(Sender: TObject);
    procedure cmDetClick(Sender: TObject);
    procedure tvDetDescrStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure tvDetDescrGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVQuantFatorGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure tvDetStatusNFEGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure tvDetStatusNFEGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure cmNovoClick(Sender: TObject);
    procedure cmTipoTranClick(Sender: TObject);
    procedure cmDanfeClick(Sender: TObject);
    procedure tvDetFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cmImpReciboClick(Sender: TObject);
  private
    FLastCxFiltro : Integer;
    FBool : Boolean;
    { Private declarations }

    FHotID : Cardinal;

    FMaxLines : Integer;

    FExpanded : TStrings;

    function  GetGrid: TcxGrid; override;

    function IsExpanded(C: Cardinal): Boolean;
    procedure ToogleExpanded(C: Cardinal);

    procedure RefreshCancelados;

    procedure AjustaTela;

    procedure AjustaBtnDanfe(aTipoNFE: Byte);

    function _PodeVender: Boolean;

    function GetTab: TnxTable;
    procedure SetHotID(const Value: Cardinal);
    procedure SetMaxLines(const Value: Integer);

    procedure FiltrarResumido;
    procedure FiltrarDetalhado;
  public
    
    procedure AtualizaPanPag(aLeft: Integer);
    procedure OnClicouPagamento(Sender: TObject);

    procedure processKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); override;

    procedure Refresh;

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
  fbTranEst: TfbTranEst;

resourcestring
  rsVendaPendente   = 'Pedido em Aberto';
  rsSemVendasImpRec = 'Você ainda não vendeu nenhum produto por isso não há recibos para imprimir.';
  rsPendente = 'Em Aberto';
  rsExibir = 'Exibir';
  rsVendaJaCancelada = 'Essa venda já está cancelada';

  rsConfigurarRecAdmin = 'Ainda não foi feito a configuração da emissão de recibos. Somente um usuário com direitos de administrador é que poderá configurar.';
  rsConfigurarRec = 'É necessário ajustar os parâmetros de impressão. Deseja fazer isso agora?';
  rsVendaBalcaoPro = 'A Venda Balcão é um recurso exclusivo para os assinantes do plano PRO ou PREMIUM.';

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
  ncaDMImgEsp, ncaFrmConfig_EndLoja, ncTipoTran, ncafbVendas2;

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

procedure TfbTranEst.AjustaBtnDanfe(aTipoNFE: Byte);
begin
  case aTipoNFE of
    tiponfe_nfe : begin  
      cmDanfe.Caption := 'Imprimir NF-e';
      cmDanfe.LargeImageIndex := 201;
    end;
    tiponfe_sat : begin
      cmDanfe.Caption := 'Imprimir CF-e';
      cmDanfe.LargeImageIndex := 188;
    end;
    tiponfe_nfce : begin
      cmDanfe.Caption := 'Imprimir NFC-e';
      cmDanfe.LargeImageIndex := 168;
    end;
  else
    cmDanfe.Visible := ivNever;
  end;
end;

procedure TfbTranEst.AjustaTela;
var 
  aEmpty, aImpRecibo : Boolean;
  aStatus, aTipoTran, aTipoNFe : Integer;
  T: TnxTable;
begin
  cmCancelar.Enabled := Permitido(daTraCancelar);

  if not Permitido(daVerCusto) then begin
    tvDetUnitario.Visible := False;
    tvDetUnitario.VisibleForCustomization := False;
    tvDetSubTotal.Visible := False;
    tvDetSubtotal.VisibleForCustomization := False;
    tvDetDesconto.Visible := False;
    tvDetDesconto.VisibleForCustomization := False;
    tvDetTotalFinal.Visible := False;
    tvDetTotalFinal.VisibleForCustomization := False;
    TVTotalFinal.Visible := False;
    TVTotalFinal.VisibleForCustomization := False;
  end;

  T := GetTab;
  aEmpty := (not T.Active) or T.IsEmpty;
                       
  if not aEmpty then
  case pgModo.ActivePageIndex of
    0 : begin
      aStatus := TabStatusNFE.Value;
      aTipoTran := TabTipo.Value;
      aTipoNFE := TabTipoNFE.Value;
    end;
    1 : begin
      aStatus := tMovEstStatusNFE.Value;
      aTipoTran := tMovEstTipoTran.Value;
      if Dados.tbTran.Locate('ID', tMovEstTran.Value, []) then
        aTipoNFE := Dados.tbTranTipoNFE.Value else
        aTipoNFE := 0;
    end;
  end;

  aImpRecibo := True;

  with Dados do                        
  if aEmpty then begin
    if NFAtivo then begin
      cmDanfe.Enabled := False;
      cmDanfe.Visible := ivAlways;
      aImpRecibo := False;
      if Dados.NFCeAtivo then begin
        if Dados.tNFConfigESAT.Value then
          AjustaBtnDanfe(tiponfe_sat) else
          AjustaBtnDanfe(tiponfe_nfce);
      end else
        AjustaBtnDanfe(tiponfe_nfe);
    end else begin
      cmImpRecibo.Enabled := True;
      cmImpRecibo.Visible := ivNever;
      aImpRecibo := True;
      cmDanfe.Visible := ivNever;
    end;
  end else begin
    if aStatus=nfetran_naoemitir then begin
      aImpRecibo := (aTipoTran=trEstVenda);
      cmImpRecibo.Enabled := True;
      cmDanfe.Visible := ivNever;
    end else begin
      cmDanfe.Visible := ivAlways;
      cmDanfe.Enabled := True;
      aImpRecibo := False;
      AjustaBtnDanfe(aTipoNFE);
    end;
  end;

  if aImpRecibo then
    cmImpRecibo.Visible := ivAlways else
    cmImpRecibo.Visible := ivNever;

  cmImpRecibo.Enabled := (not aEmpty);  
end;

procedure TfbTranEst.AtualizaDireitos;
var I: Integer;
begin
  inherited;

  TVTipoNFE.Visible := Dados.NFeAtivo and Dados.NFCeAtivo;
  TVTipoNFE.VisibleForCustomization := TVTipoNFE.Visible;

  cmTipoTran.Items.Clear;
  with gListaTipoTran do
  for I := 0 to Count-1 do
    if Itens[I].Estoque and Itens[I].Visivel then 
      cmTipoTran.Items.AddObject(Itens[I].NomeTela, TObject(Itens[I].Tipo));

  TVtax_total.VisibleForCustomization := (gConfig.Pais<>'BR');
  TVsubtotal.VisibleForCustomization := (gConfig.Pais<>'BR');

  TVDesconto.Caption := rsDesconto;
  TVCancelado.Caption := rsCancelado;
  TVTotalFinal.Caption := rsTotalFinal;
  TVTroco.Caption := rsTroco;

  TVObs.Visible := cmObs.Down;
  
  TVStatusNF.Visible := Dados.NFAtivo;
  TVStatusNF.VisibleForCustomization := TVStatusNF.Visible;

  cmCancelar.Enabled := Permitido(daTraCancelar);
  cmNovo.Enabled := Permitido(daVendaBalcao);
  
  if Tab.Active then
    Tab.Refresh;
end;

procedure TfbTranEst.AtualizaPanPag(aLeft: Integer);
begin
{  panPag.Left := aLeft;
  panPag.Height := Grid.Height - panPag.Top + Grid.Top - 17;;
  panPag.Width := TVBPagamento.Width;}
end;

procedure TfbTranEst.cmCanceladosClick(Sender: TObject);
begin
  inherited;
  if not Tab.Active then Exit;
  saveFormOptionBool(Self, 'mostrarcancelados', cmCancelados.Down);

  if pgModo.ActivePageIndex=0 then begin
    Tab.Refresh;
    RefreshCancelados;
  end else 
    FiltrarDetalhado;
end;

procedure TfbTranEst.cmCancelarClick(Sender: TObject);
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

  if Dados.CancelaVenda(T.FieldByName('ID').AsLongWord) then 
    Tab.Refresh;
end;

procedure TfbTranEst.cmCfgClick(Sender: TObject);
var F: TFrmBaseOpcaoClass;
begin
  inherited;
  with Dados do begin
    if NFAtivo then begin
{      if tNFConfigAmbiente.Value=2 then
        TFrmOpcoes.Create(Self).Editar('Opções para Vendas', [TFrmConfigDanfe_NFCe, TFrmConfigRec, TFrmConfigQuickCad, TFrmConfigCodProdutoDuplicado, TFrmConfigVendaProdSemSaldo, TFrmConfigCodBarBal, TFrmConfigComissao, TFrmConfigPosVenda], True) else}
        if tNFConfigTipo.Value=nfcfg_sat then
          F := TFrmConfigDanfe_SAT else
          F := TFrmConFigDanfe_NFCE;
                
        TFrmOpcoes.Create(Self).Editar(rsOpcoesTranEst,
           [TFrmConfigRec_PgDebito, tFrmConfigRec_Pedido, tFrmConfig_Gaveta, F, TFrmConfigQuickCad, TFrmConfigCodProdutoDuplicado, TFrmConfigVendaProdSemSaldo, TFrmConfigCodBarBal, TFrmConfigComissao, TFrmConfigPosVenda, TFrmConfig_EndLoja], True);
     end else 
       TFrmOpcoes.Create(Self).Editar(rsOpcoesTranEst, [TFrmConfigRec_Venda, TFrmConfigRec_PgDebito, TFrmConfigRec_Pedido, TFrmConfig_Gaveta, TFrmConfigQuickCad, TFrmConfigCodProdutoDuplicado, TFrmConfigVendaProdSemSaldo, TFrmConfigCodBarBal, TFrmConfigComissao, TFrmConfigPosVenda, TFrmConfig_EndLoja], True);
    FrmPri.AtualizaDireitos;       
  end;    
end;

procedure TfbTranEst.cmDanfeClick(Sender: TObject);
begin
  inherited;
  if pgModo.ActivePageIndex=0 then begin
    if Tab.IsEmpty then Exit;
    Dados.ImprimeDanfe(TabUID.Value);
  end else begin
    if tMovEst.IsEmpty or (not Dados.tbTran.Locate('ID', tMovEstTran.Value, []))then Exit;
    Dados.ImprimeDanfe(Dados.tbTranUID.Value);
  end;
end;

procedure TfbTranEst.cmDescTotClick(Sender: TObject);
begin
  inherited;
  saveFormOptionBool(Self, 'cmDescTot', cmDescTot.Down);
  
  TV.DataController.Refresh;
  Grid.Invalidate(True);
end;

procedure TfbTranEst.cmDetalhadoClick(Sender: TObject);
begin
  inherited;
  saveFormOptionBool(Self, 'modoresumido', false);
  FiltraDados;
end;

procedure TfbTranEst.cmDetClick(Sender: TObject);
begin
  inherited;
  saveFormOptionBool(Self, 'modoresumido', false);
  FiltrarDetalhado;
end;

procedure TfbTranEst.cmEditarClick(Sender: TObject);
begin
  inherited;
  case pgModo.ActivePageIndex of
    0 : begin
     if Tab.IsEmpty then Exit;
     if (not Permitido(daVerCusto)) and (TabTipo.Value=trEstCompra) then 
       raise Exception.Create(rsSemPermissao);
     Dados.EditarTran(TabID.Value);
    end;
    1 : begin
      if tMovEst.IsEmpty then Exit;
      if (not Permitido(daVerCusto)) and (tMovEstTipoTran.Value=trEstCompra) then 
        raise Exception.Create(rsSemPermissao);
      Dados.EditarTran(tMovEstTran.Value);
    end;
  end;
  if tMovEst.Active then tMovEst.refresh;
  if Tab.Active then Tab.Refresh;  
end;

procedure TfbTranEst.cmImpReciboClick(Sender: TObject);
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
  
  if pgModo.ActivePageIndex=0 then begin
    if Tab.IsEmpty then
      ShowMessage(rsSemVendasImpRec) else
      dmComp.Imprime(TabUID.AsGuid);
  end else begin
    if tMovEst.IsEmpty then
      ShowMessage(rsSemVendasImpRec)
    else
    if Dados.tbTran.Locate('ID', tMovEstTran.Value, []) then
      dmComp.Imprime(Dados.tbTranUID.AsGuid);
  end;
end;

procedure TfbTranEst.cmObsClick(Sender: TObject);
begin
  inherited;
  TVObs.Visible := cmObs.Down;
  saveFormOptionBool(Self, 'cmObs', cmObs.Down);
end;

procedure TfbTranEst.cmResClick(Sender: TObject);
begin
  inherited;
  saveFormOptionBool(Self, 'modoresumido', true);
  FiltrarResumido;
end;

procedure TfbTranEst.cmResumidoClick(Sender: TObject);
begin
  inherited;
  saveFormOptionBool(Self, 'modoresumido', true);
  FiltrarDetalhado;
end;

procedure TfbTranEst.cmTipoTranClick(Sender: TObject);
var 
  T: Byte;
  P : Byte;
  G: TGUID;

function PodeOper(aOper: Integer): Boolean;
begin
  Result := Permitido(aOper);
  if not Result then ShowMessage(rsAcessoNaoAutorizado);
end;
  
begin
  inherited;
  
  T := Byte(cmTipoTran.Items.Objects[cmTipoTran.ItemIndex]);

  case T of
    trEstSaida : if not PodeOper(daEstSaida) then Exit;
    trEstEntrada : if not PodeOper(daEstEntrada) then Exit;
    trEstDevolucao : if not PodeOper(daDevolucao) then Exit;
    trEstCompra : if not PodeOper(daEstCompras) then Exit;
  end;
  

  case T of
    trEstVenda : begin  
      if not TfbVendas2._PodeVender then Exit;
      P := Dados.NovaVenda(G, 0, False, False, tamTelaPDV1);
      if P>0 then begin
        if (P=1) and (not gConfig.TelaPosVenda_Mostrar) then
          P := av_res_novavenda;
        if not Tab.Active then Tab.Open;
        if not tMovEst.Active then tMovEst.Open;
        
        if Tab.Locate('UID', TGuidEx.ToString(G), []) then
          tMovEst.Locate('Tran', TabID.Value, []);
      end;
    end;  

    trEstDevolucao : 
    if TFrmDev.Create(Self).FazDev(G) then begin
      if not Tab.Active then Tab.Open;
      if not tMovEst.Active then tMovEst.Open;
      if Tab.Locate('UID', G.ToString, []) then
        tMovEst.Locate('Tran', TabID.Value, []);
    end;
        
  else
    Dados.NovoMovEst(T, 0);
  end;
end;

procedure TfbTranEst.tvDetNomeTipoTranCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const [Ref] AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const [Ref] AValue2: Variant; var AAreEqual: Boolean);
begin
  inherited;
  AAreEqual := (ARow1.Values[TVTran.Index] = ARow2.Values[TVTran.Index]);
end;

procedure TfbTranEst.tvDetStatusNFEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := '';
end;

procedure TfbTranEst.tvDetStatusNFEGetProperties(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
begin
  inherited;
  TcxImageComboBoxProperties(AProperties).ShowDescriptions := False;
end;

procedure TfbTranEst.processKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    Key_F2 : OnClicouPagamento(nil);
    Key_F3 : cmNovo.Click;
  end;
end;

class function TfbTranEst.Descricao: String;
begin
  Result := rsTransacoesEstoque;
end;

procedure TfbTranEst.cmMaxItensPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  MaxLines := cmMaxItens.EditValue;
end;

procedure TfbTranEst.cmMeioPagTotClick(Sender: TObject);
begin
  inherited;
  saveFormOptionBool(Self, 'cmMeioPagTot', cmMeioPagTot.Down);
  TV.DataController.Refresh;
  Grid.Invalidate(True);  
end;

procedure TfbTranEst.cmNovoClick(Sender: TObject);
var P: TPoint;
begin
  P := ItemLinkScreenPoint(cmNovo.ClickItemLink);
  pmTipoTran.Popup(P.X, P.Y);
end;

procedure TfbTranEst.FiltraDados;
begin
  if cmResumido.Down then
    FiltrarResumido else
    FiltrarDetalhado;
end;

procedure TfbTranEst.FiltrarDetalhado;
begin
  cmDescTot.Enabled := False;
  cmMeioPagTot.Enabled := False;
  cmMaxItens.Enabled := False;
  cmObs.Enabled := False;

  pgModo.ActivePageIndex := 1;
  cmDetalhado.Down := True;
//  cmFiltro.Caption := rsExibir+': '+rsModoDetalhado;
  cmRes.Style := FrmPri.styleUnsel;
  cmDet.Style := FrmPri.styleSel;
  
  tMovEst.Active := true;

  if not cmCancelados.Down then begin
    tMovEst.IndexName := 'ICanceladoDataHora';
    tMovEst.SetRange([False], [False]);
  end else 
    tMovEst.IndexName := 'IDataHora';
  tMovEst.Refresh;

  AjustaTela;
end;

procedure TfbTranEst.FiltrarResumido;
var S: String;
begin
  LockWindowUpdate(panPri.Parent.Handle);
  try
    cmObs.Enabled := True;
    cmDescTot.Enabled := True;
    cmMeioPagTot.Enabled := True;
    cmMaxItens.Enabled := true;
    
    pgModo.ActivePageIndex := 0;
//    cmFiltro.Caption := rsExibir+': '+rsModoResumido;
    cmRes.Style := FrmPri.styleSel;
    cmDet.Style := FrmPri.styleUnsel;
    
    AjustaTela;
    Tab.DisableControls;
    try
      S := '(PagPend=False)';
      if TV.DataController.Filter.FilterText>'' then begin
        if S>'' then S := '('+S+') AND ';
        S := S+'('+TV.DataController.Filter.FilterText+')';
      end;  
      Tab.Filter := S;
      Tab.Filtered := True;
      if not Tab.Active then begin
        Tab.Active := True;
        Tab.SetRange([True], [True]);  
      end else
        Tab.Refresh;   
    finally
      Tab.EnableControls;
    end;
    AjustaTela;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfbTranEst.FrmBasePaiCreate(Sender: TObject);
begin
  inherited;
  pgModo.HideTabs := True;
  
  FExpanded := TStringList.Create;
  FMaxLines := getFormOptionInt(Self, 'MaxLines', 3);
  cmMaxItens.EditValue := FMaxLines;
  cmObs.Down := getFormOptionBool(Self, 'cmObs', True);
  cmDescTot.Down := getFormOptionBool(Self, 'cmDescTot', True);
  cmMeioPagTot.Down := getFormOptionBool(Self, 'cmMeioPagTot', True);
  cmCancelados.Down := getFormOptionBool(Self, 'mostrarcancelados');
  if getFormOptionBool(Self, 'modoresumido', True) then
    cmResumido.Down := True else
    cmDetalhado.Down := True;
  FHotID := 0;
  
  FLastCxFiltro := 0;
end;

procedure TfbTranEst.FrmBasePaiDestroy(Sender: TObject);
begin
  inherited;
  FExpanded.Free;
end;

function TfbTranEst.GetGrid: TcxGrid;
begin
  case pgModo.ActivePageIndex of
    0 : Result := Grid;
    1 : Result := gridDet;
  end;
end;

function TfbTranEst.GetTab: TnxTable;
begin
  case pgModo.ActivePageIndex of
    0 : Result := Tab;
    1 : Result := tMovEst;
  end;
end;

procedure TfbTranEst.GridResize(Sender: TObject);
begin
  inherited;
  AjustaTela;
end;

function TfbTranEst.IsExpanded(C: Cardinal): Boolean;
begin
  Result := (FExpanded.IndexOf(IntToStr(C))>=0);
end;

procedure TfbTranEst.OnClicouPagamento(Sender: TObject);
begin
  if not Tab.IsEmpty then begin
    Dados.EditarPagamento(TabID.Value);
    Tab.Refresh;
  end;
end;

procedure TfbTranEst.Refresh;
begin
  if pgModo.ActivePageIndex=0 then 
    Tab.Refresh else
    tMovEst.Refresh;
end;

procedure TfbTranEst.RefreshCancelados;
begin
  TVCancelado.Visible := cmCancelados.Down;
  TVCanceladoPor.Visible := cmCancelados.Down;
  TVCanceladoEm.Visible := cmCancelados.Down;
end;

procedure TfbTranEst.SetHotID(const Value: Cardinal);
begin
  if Value=FHotID then Exit;

  FHotID := Value;

  Grid.Invalidate(True);
end;

procedure TfbTranEst.SetMaxLines(const Value: Integer);
begin
  if FMaxLines=Value then Exit;
  saveFormOptionInt(Self, 'MaxLines', cmMaxItens.EditValue);
  FMaxLines := Value;
  cmMaxItens.EditValue := Value;
  TV.DataController.Refresh;
  Grid.Invalidate(True);  
end;

procedure TfbTranEst.TabCalcFields(DataSet: TDataSet);
var S: String;

begin
  inherited;
  Tabtax_total.Value := Tabtax_incluir.Value + Tabtax_incluido.Value;

  TabPedido.Value := (TabIncluidoEm.Value <> TabDataHora.Value);
  TabImpRec.Value := (TabTipoNFe.Value=0);
  TabImpNF.Value := (TabTipoNFe.Value>0);
end;

procedure TfbTranEst.TabFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept := cmCancelados.Down or (not TabCancelado.Value);
end;

procedure TfbTranEst.tMovEstCalcFields(DataSet: TDataSet);
var B : Boolean;
begin
  inherited;
  B := gListaTipoTran.MovEst(tMovEstTipoTran.Value);
  
  if not tMovEstQuant.IsNull then
  if tMovEstEntrada.Value then
    tMovEstQuantFator.Value := tMovEstQuant.Value else
    tMovEstQuantFator.Value := tMovEstQuant.Value * -1;
    
  if tMovEstCancelado.Value or (not B) then
    tMovEstEstoquePost.Value := tMovEstEstoqueAnt.Value else
    tMovEstEstoquePost.Value := tMovEstEstoqueAnt.Value + tMovEstQuantFator.Value;
end;

procedure TfbTranEst.ToogleExpanded(C: Cardinal);
var I: Integer;
begin
  I := FExpanded.IndexOf(IntToStr(C));
  if I>=0 then
    FExpanded.Delete(I) else
    FExpanded.Add(IntToStr(C));
  TV.DataController.Refresh;
  Grid.Invalidate(True);  
end;

procedure TfbTranEst.TVDebitoStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVCancelado.Index];
  if (V<>null) and (V=True) then
    AStyle := cxStyle2;
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

procedure TfbTranEst.TVDescrCustomDrawCell(Sender: TcxCustomGridTableView;
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
  V, vTipo : Variant;

function MaxWidthQuant: Integer;
var w, i: integer;
begin  
  Result := 0;
  if Assigned(slQuant) then
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
  
  vTipo := AViewInfo.GridRecord.Values[TVTipoTran.Index];
  if (not VarIsNull(vTipo)) and gListaTipoTran.MovEst(vTipo) then
    slQuant := getSLQuant(V) else
    slQuant := nil;
    
  slDescr := getSLDescr(V);
  
  with AViewInfo do begin
  try
    aExp := _Exp;
    aHot := (FHotID>0) and (FHotID=AViewInfo.GridRecord.Values[TVID.Index]);
    if aHot then begin
      ACanvas.Brush.Color := clHotLight;
      ACanvas.Font.Color := clWhite;
    end;

    ACanvas.FillRect(AViewInfo.Bounds);    
    with EditViewInfo.ClientRect do begin
      R.Left := Left;
      R.Top := Top;
      R.Bottom := Bottom;
      R.Right := Left+MaxWidthQuant;
      L := AViewInfo.Bounds.Right+1;
    end;  
    
    if Assigned(slQuant) then
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
    if Assigned(slQuant) then slQuant.Free;
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


procedure TfbTranEst.TVDescrGetDisplayText(Sender: TcxCustomGridTableItem;
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

procedure TfbTranEst.TVDescrGetProperties(Sender: TcxCustomGridTableItem;
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
end;

procedure TfbTranEst.tvDetDescontoGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[Sender.Index];
  if VarIsNull(V) or (V<0.001) then AText := '';
end;

procedure TfbTranEst.tvDetDescrGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  inherited;
  if AText='' then begin
    V := ARecord.Values[tvDetDescrOrig.Index];
    if not VarIsNull(V) then
      AText := V;
  end;
end;

procedure TfbTranEst.tvDetDescrStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[tvDetCancelado.Index];
  if (V<>null) and (V=True) then
    AStyle := cxStyle2;
end;

procedure TfbTranEst.tvDetFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  AjustaTela;
end;

procedure TfbTranEst.TVMouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure TfbTranEst.TVMouseUp(Sender: TObject; Button: TMouseButton;
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

procedure TfbTranEst.TVPagoCustomDrawCell(Sender: TcxCustomGridTableView;
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

procedure TfbTranEst.TVPagoGetDisplayText(Sender: TcxCustomGridTableItem;
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

procedure TfbTranEst.tvPendCustomDrawColumnHeader(Sender: TcxGridTableView;
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

    ACanvas.FillRect(Rect(Right - 1, Top, Right, Bottom));

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

procedure TfbTranEst.tvPendTotalFinalCustomDrawCell(
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

procedure TfbTranEst.TVQuantFatorGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if AText='0' then AText := '';
end;

procedure TfbTranEst.TVTotalFinalCustomDrawCell(Sender: TcxCustomGridTableView;
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

procedure TfbTranEst.TVTotalFinalGetDisplayText(Sender: TcxCustomGridTableItem;
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

procedure TfbTranEst.TVTotalGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if ValueisZero(ARecord.Values[Sender.Index]) then
    AText := '';
end;



procedure TfbTranEst.TVValorComissaoGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[tvDetTipoTran.Index];
  if VarIsNull(V) or (V<>trEstVenda) then AText := '';
end;

function TfbTranEst._PodeVender: Boolean;
begin
  Result := False;
  if not TFrmNFCeDepend.DependOk then Exit;
  if not FrmPanTopo.PodeVender then Exit;
  if TFrmNFCeCancelarHomo.ExisteVendaHomo('Cancele a venda realizada para poder realizar outra venda.') then Exit;
  if not TFrmNFCeImpedirDeslig.PodeVender then Exit;
  Result := True;
end;

end.


