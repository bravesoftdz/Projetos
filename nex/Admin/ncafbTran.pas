{$I NEX.INC}

unit ncafbTran;
{
    ResourceString: Dario 10/03/13
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmFormBase, dxBar, ExtCtrls, cxStyles, cxCustomData, ncClassesBase,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxMaskEdit, cxTextEdit, cxTimeEdit, cxCalendar, cxImageComboBox,
  cxDBLookupComboBox, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, nxdb, cxCheckBox, dxBarExtItems, cxContainer,
  cxLabel, cxGridCustomPopupMenu, cxGridPopupMenu, cxSplitter, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, cxMemo, 
  ncErros,
  ncDebito,
  ncMovEst,
  ncLancExtra, 
  dxPScxCommon, ImgList, 
  LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxPC, dxNavBarStyles, dxNavBarCollns,
  dxNavBarBase, dxNavBar, cxSpinEdit, cxLookAndFeels, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk, 
  cxNavigator, dxPScxPivotGridLnk, uNexTransResourceStrings_PT, dxBarBuiltInMenu,
  System.ImageList;

type
  TfbTran = class(TFrmBase)
    Timer2: TTimer;
    Timer1: TTimer;
    dsTab: TDataSource;
    cmMostrar: TdxBarCombo;
    cmCaixa: TdxBarLargeButton;
    cmFechar: TdxBarLargeButton;
    cmSuprimento: TdxBarLargeButton;
    cmSangria: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    im16: TcxImageList;
    pmObs: TdxBarPopupMenu;
    BarMgrBar2: TdxBar;
    cmCancelar: TdxBarButton;
    cmEditarTran: TdxBarButton;
    cmRecibo: TdxBarButton;
    cmObs: TdxBarButton;
    cmFiltroTipo: TdxBarButton;
    cmTotalizar: TdxBarLargeButton;
    cmTran: TdxBarStatic;
    cxStyle3: TcxStyle;
    cmCorrigeDataCaixa: TdxBarButton;
    cxStyle4: TcxStyle;
    panTran: TLMDSimplePanel;
    Paginas: TcxPageControl;
    tsTran: TcxTabSheet;
    pantsTran: TLMDSimplePanel;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVID: TcxGridDBColumn;
    TVData: TcxGridDBColumn;
    TVInicio: TcxGridDBColumn;
    TVTipo: TcxGridDBColumn;
    TVDescr: TcxGridDBColumn;
    TVNome: TcxGridDBColumn;
    TVTotal: TcxGridDBColumn;
    TVDesconto: TcxGridDBColumn;
    TVTotalFinal: TcxGridDBColumn;
    TVPago: TcxGridDBColumn;
    TVDebito: TcxGridDBColumn;
    TVNomeFuncI: TcxGridDBColumn;
    TVCancelado: TcxGridDBColumn;
    TVCanceladoPor: TcxGridDBColumn;
    TVCanceladoEm: TcxGridDBColumn;
    TVObs: TcxGridDBColumn;
    GL: TcxGridLevel;
    dxBarDockControl2: TdxBarDockControl;
    tsCedula: TcxTabSheet;
    gridCedula: TcxGrid;
    tvCedula: TcxGridTableView;
    tvCedulaDescr: TcxGridColumn;
    tvCedulaQuant: TcxGridColumn;
    tvCedulaTotal: TcxGridColumn;
    tvCedulaValor: TcxGridColumn;
    glCedula: TcxGridLevel;
    dxBarSubItem1: TdxBarSubItem;
    cmVerAnt: TdxBarButton;
    btnZerar: TcxButton;
    panNB: TLMDSimplePanel;
    NB: TdxNavBar;
    NBGroup1: TdxNavBarGroup;
    nbiTran: TdxNavBarItem;
    nbiCedulas: TdxNavBarItem;
    NBStyleItem1: TdxNavBarStyleItem;
    cxStyle5: TcxStyle;
    cmAbrir: TdxBarLargeButton;
    cmSubTran: TdxBarSubItem;
    tCai: TnxTable;
    tCaiID: TAutoIncField;
    tCaiAberto: TBooleanField;
    tCaiUsuario: TStringField;
    tCaiAbertura: TDateTimeField;
    tCaiFechamento: TDateTimeField;
    tCaiTotalFinal: TCurrencyField;
    tCaiDescontos: TCurrencyField;
    tCaiCancelamentos: TCurrencyField;
    tCaiSaldoAnt: TCurrencyField;
    tCaiObs: TMemoField;
    tCaiSangria: TCurrencyField;
    tCaiSupr: TCurrencyField;
    tCaiReproc: TDateTimeField;
    tCaiEstSessoesQtd: TIntegerField;
    tCaiEstSessoesTempo: TFloatField;
    tCaiEstUrls: TIntegerField;
    tCaiEstSyncOk: TBooleanField;
    tCaiEstBuscasEng: TnxMemoField;
    tCaiEstRes: TnxMemoField;
    tCaiSaldoF: TCurrencyField;
    tCaiQuebra: TCurrencyField;
    tCaiIDLivre: TStringField;
    cmEmailCaixa: TdxBarLargeButton;
    TVMeioPagto: TcxGridDBColumn;
    cmPagamento: TdxBarButton;
    Q: TnxQuery;
    QUID: TGuidField;
    QDataHora: TDateTimeField;
    QCliente: TLongWordField;
    QTipo: TByteField;
    QFunc: TStringField;
    QTotal: TCurrencyField;
    QDesconto: TCurrencyField;
    QDescPerc: TFloatField;
    QDescPorPerc: TBooleanField;
    QTotLiq: TCurrencyField;
    QPagEsp: TWordField;
    QPago: TCurrencyField;
    QDebitoAnt: TCurrencyField;
    QDebito: TCurrencyField;
    QDebitoPago: TCurrencyField;
    QCreditoAnt: TCurrencyField;
    QCredito: TCurrencyField;
    QCreditoUsado: TCurrencyField;
    QTroco: TCurrencyField;
    QObs: TnxMemoField;
    QCancelado: TBooleanField;
    QCanceladoPor: TStringField;
    QCanceladoEm: TDateTimeField;
    QCaixa: TLongWordField;
    QCaixaPag: TLongWordField;
    QMaq: TWordField;
    QSessao: TLongWordField;
    QQtdTempo: TFloatField;
    QCredValor: TBooleanField;
    QFidResgate: TBooleanField;
    QPagFunc: TStringField;
    QPagPend: TBooleanField;
    QNomePagEsp: TStringField;
    QImg: TSmallintField;
    QRecVer: TLongWordField;
    QID: TAutoIncField;
    TVCaixa: TcxGridDBColumn;
    TVCaixaPag: TcxGridDBColumn;
    QUID_ref: TGuidField;
    QOpDevValor: TByteField;
    QStatusNFE: TByteField;
    QChaveNFE: TStringField;
    QTipoNFE: TByteField;
    QIncluidoEm: TDateTimeField;
    QExtra: TnxMemoField;
    QAmbNFe: TByteField;
    QStatusCanc: TByteField;
    cmTraduzir: TdxBarLargeButton;
    Qtax_incluido: TCurrencyField;
    Qtax_incluir: TCurrencyField;
    QTotalFinal: TCurrencyField;
    Qids_pagto: TStringField;
    QDescricao: TWideMemoField;
    QVendedor: TStringField;
    QComissao: TCurrencyField;
    QNomeVendedor: TStringField;
    TVVendedor: TcxGridDBColumn;
    QNomeCliente: TWideStringField;
    QEntregar: TBooleanField;
    Qendereco_entrega: TGuidField;
    Qtranest: TBooleanField;
    Qtrancx: TBooleanField;
    QNomeTipo: TStringField;
    QVenDev: TBooleanField;
    QHora: TByteField;
    QFrete: TCurrencyField;
    QTranspEnt: TLongWordField;
    TVFrete: TcxGridDBColumn;
    QTranspVol: TWordField;
    QTranspPesoB: TFloatField;
    QTranspPesoL: TFloatField;
    QTranspPesoVol: TByteField;
    QUpdID: TGuidField;
    procedure FrmBasePaiCreate(Sender: TObject);
    procedure cmFiltroTipoClick(Sender: TObject);
    procedure TVTotalGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure cmMostrarChange(Sender: TObject);
    procedure cmAguardaPagtoClick(Sender: TObject);
    procedure cmVerFecharClick(Sender: TObject);
    procedure cmSuprimentoClick(Sender: TObject);
    procedure cmEditarClick(Sender: TObject);
    procedure cmCancelarClick(Sender: TObject);
    procedure TVStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure TVTipoStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure TVDebitoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cmFecharClick(Sender: TObject);
    procedure cmReciboClick(Sender: TObject);
    procedure cmCorrigeDataCaixaClick(Sender: TObject);
    procedure cmExportarClick(Sender: TObject); override;
    procedure cmObsClick(Sender: TObject);
    procedure tvCedulaTotalGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure NBLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure cmVerAntClick(Sender: TObject);
    procedure tvCedulaQuantPropertiesEditValueChanged(Sender: TObject);
    procedure btnZerarClick(Sender: TObject);
    procedure tvCedulaFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cmAbrirClick(Sender: TObject);
    procedure TVDescrStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cmEmailCaixaClick(Sender: TObject);
    procedure cmCfgClick(Sender: TObject);
    procedure cmPagamentoClick(Sender: TObject);
    procedure tvCedulaCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure tvCedulaDataControllerAfterPost(
      ADataController: TcxCustomDataController);
    procedure QCalcFields(DataSet: TDataSet);
    procedure TVTipoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cmTraduzirClick(Sender: TObject);
    procedure FrmBasePaiDestroy(Sender: TObject);
  private
    slFiltroTipos: TStrings;
    NAAoFiltrar: Integer;
    PrimeiroFiltro: Boolean;
    LastFiltro : String;
    
    { Private declarations }

  public
    FiltroF : Variant;
    FiltroCaixas : String;
    procedure AtualizaDireitos; override;
    procedure AjustaLayoutLargeButton(B : TdxBarLargeButton); override;

    function GetGrid: TcxGrid; override;

    procedure AddCedula(aDescr: String; aValor: Currency);
    
    procedure NenhumTipo;
    procedure FiltraDados; override;
    procedure Refresh;
    procedure AjustaVisBotoes;
    procedure SalvarContador;
    procedure LerContador;
    class function Descricao: String; override;
    { Public declarations }
  end;

const
  ftran_Nenhum   = 0;
  ftran_Cliente  = 1;
  ftran_Caixa    = 2;
  ftran_entrega  = 3;

var
  fbTran: TfbTran;

implementation

uses
  ncaFrmTipos, 
  ncaDM, 
  ncaFrmPri, 
  ncaFrmCaixa, 
  ncafbCaixa,
  ncaFrmLancExtra, 
  ncIDRecursos, ncDMServ, ncaFrmDebito, ncDMCaixa,
  ncaDMComp, ncaFrmCorrigeDataCaixa, ncaFrmObs,
  ncaFrmFechar, ncaFrmCorrigeData, ncaFrmConfigEmailCaixa, ncaFrmOpcoes,
  ncaFrmConfigCaixaAbertura, ncaFrmConfigCaixaFechamento, ufmImagens,
  ncaFrmNFCeCancelarHomo;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

{ TfbTran }

resourcestring
  rsNaoPodeCancelarZerarEstoque = 'Não é possível cancelar esse tipo de transação';
  rsImpRecibo = 'Imprimir Recibo';
  rsImpNFCe = 'Imprimir NFC-e';
  rsImpCFe = 'Imprimir CF-e';
  rsImpNFe = 'Imprimir NF-e';
  rsTipo = 'Tipo';
  rsDesconto = 'Desconto';
  rsCancelado = 'Cancelado';

class function TfbTran.Descricao: String;
begin
  Result := SncafbTran_Transações;
end;

procedure TfbTran.cmReciboClick(Sender: TObject);
begin
  inherited;
  if QStatusNFE.Value=nfetran_naoemitir then
    dmComp.Imprime(QUID.AsGuid) else 
    Dados.ImprimeDanfe(qUID.Value);
end;

procedure TfbTran.cmFecharClick(Sender: TObject);
var 
  NC: Integer;
  aSaldo: Currency;
  aObs,
  aIDLoja: String;
begin
  NC := NumAberto;
  aSaldo := 0;
  aObs := '';

  if TFrmNFCeCancelarHomo.ExisteVendaHomo('Cancele a venda realizada para poder fechar o Caixa.') then Exit;
  
  if gConfig.PedirSaldoF then begin
    if not TFrmFecharCaixa.Create(Self).Fechar(aSaldo, aObs, aIDLoja) then Exit;
  end else
    if not SimNao(SncafbTran_DesejaRealmenteFecharOCaixaAtual) then Exit;

  Dados.CM.FecharCaixa(NC, aSaldo);

  tCai.Active := True;
  
  if ((aObs>'') or (aIDLoja<>'')) and tCai.FindKey([NC]) then begin
    tCai.Edit;
    tCaiIDLivre.Value := aIDLoja;
    tCaiObs.Value := aObs;
    tCai.Post;
  end;
  
  if gConfig.RelCaixaAuto then begin
    if tCai.FindKey([NC]) and (not tCaiAberto.Value) then begin
      CreateDMCaixa;
      TFrmCaixa.Create(nil).Editar(tCai, True);
    end;
  end;
end;

procedure TfbTran.FiltraDados;
var
  S, sOperacao: String;
  I: Integer;
  C: Cardinal;
  Filtrar : Boolean;
begin
  LockWindowUpdate(panPri.Parent.Handle);
  try
    Q.DisableControls;
    try      
      NAAoFiltrar := NumAberto;
      S := '';
      sOperacao := '';
  
      case Operacao of
        ftran_Cliente : begin
          panNB.Visible := False;
          dxBarDockControl1.Visible := False;
          cmTran.Visible := ivNever;
          sOperacao := '(cliente='+IntToStr(Filtro)+')';
          TVNome.Visible := False;
          TVNome.Hidden := True;
          cmPeriodo.Visible := ivAlways;
          cmFiltroTipo.Visible := ivAlways;
          cmCaixa.Visible := ivNever;
          cmCorrigeDataCaixa.Visible := ivNever;
          cmSuprimento.Visible := ivNever;
          cmFechar.Visible := ivNever;
          cmSangria.Visible := ivNever;
          TV.OptionsView.NoDataToDisplayInfoText := SncafbTran_NãoExistemTransaçõesParaEsseClie;
        end;

        ftran_Caixa : begin
          panNB.Visible := False;
          dxBarDockControl1.Visible := False;
          cmTran.Visible := ivAlways;
          sOperacao := '((caixa='+IntToStr(Filtro)+') or (caixapag='+IntToStr(Filtro)+'))';
          if FiltroCaixas>'' then sOperacao := '';
          cmPeriodo.Visible := ivNever;
          cmLayout.Visible := ivNever;
          cmExportar.PaintStyle := psCaptionGlyph;
          cmAtualizar.Visible := ivNever;
          cmCaixa.Visible := ivNever;
          cmSuprimento.Visible := ivNever;
          cmCorrigeDataCaixa.Visible := ivNever;
          cmFechar.Visible := ivNever;
          cmSangria.Visible := ivNever;
          cmFiltroTipo.Visible := ivAlways;
          TV.OptionsView.NoDataToDisplayInfoText := SncafbTran_NãoFoiRealizadaNenhumaOperaçãoNe;
        end;

        ftran_entrega : begin       
          panNB.Visible := False;
          dxBarDockControl1.Visible := False;
          cmTran.Visible := ivAlways;
          sOperacao := '(TranspEnt='+IntToStr(Filtro)+')';
          if FiltroCaixas>'' then sOperacao := '';
          cmPeriodo.Visible := ivNever;
          cmLayout.Visible := ivNever;
          cmExportar.PaintStyle := psCaptionGlyph;
          cmAtualizar.Visible := ivNever;
          cmCaixa.Visible := ivNever;
          cmSuprimento.Visible := ivNever;
          cmCorrigeDataCaixa.Visible := ivNever;
          cmFechar.Visible := ivNever;
          cmSangria.Visible := ivNever;
          cmFiltroTipo.Visible := ivAlways;
          TVTipo.Visible := False;
          TVTipo.Hidden := True;
          TV.OptionsView.NoDataToDisplayInfoText := SncafbTran_NãoFoiRealizadaNenhumaOperaçãoNe;
        end        
      else
        begin
          cmPeriodo.Visible := ivNever;
          cmLayout.Visible := ivAlways;
          cmTran.Visible := ivAlways;
          if NumAberto>0 then begin
            sOperacao := '((caixa='+IntToStr(NumAberto)+') or (caixapag='+IntToStr(NumAberto)+'))';
            TV.OptionsView.NoDataToDisplayInfoText := SncafbTran_AindaNãoFoiRealizadaNenhumaTrans;
            cmAbrir.Visible := ivNever;
            cmFechar.Visible := ivAlways;
            cmTotalizar.Enabled := True;
            cmSuprimento.Enabled := Permitido(daCaiSuprimento);
            cmSangria.Enabled := Permitido(daCaiSangria);
          end else begin
            sOperacao := '(caixa='+IntToStr(High(Integer))+')';
            TV.OptionsView.NoDataToDisplayInfoText := SncafbTran_OCaixaEstáFechado;
            cmAbrir.Visible := ivAlways;
            cmFechar.Visible := ivNever;
            cmTotalizar.Enabled := False;
            cmSangria.Enabled := False;
            cmSuprimento.Enabled := False;
          end;
          
        end;  
      end;
  
      Filtrar := (slFiltroTipos.Text>'');
  
      S := '';
      if Filtrar then begin
        for I := 0 to slFiltroTipos.Count-1 do
        if slFiltroTipos.ValueFromIndex[I]='1' then
          if S>'' then
            S := S + ' OR (Tipo=' + slFiltroTipos.Names[I] + ') ' // do not localize
          else
            S := ' (Tipo=' + slFiltroTipos.Names[I] + ') '; // do not localize
        if S>'' then S := '('+S+')'; // do not localize
      end;

      if FiltroCaixas>'' then begin
        if S>'' then
          S := S + ' AND ' + FiltroCaixas else
          S := FiltroCaixas;
      end;

      if (S>'') then begin
        if TV.DataController.Filter.FilterText>'' then begin
          if S>'' then S := '('+S+') AND '; // do not localize
          S := S+' AND ('+TV.DataController.Filter.FilterText+')';
        end;
      end else
        S := TV.DataController.Filter.FilterText;

      if sOperacao > '' then 
        if S>'' then  
          S := S + ' AND ' + sOperacao else
          S := sOperacao;

      if S>'' then
        S := 'select * from Tran where '+S+' order by ID' else
        S := 'select * from Tran order by ID';

      if Q.Active then begin
        if not SameText(Q.SQL.Text, S) then begin 
          C := QID.Value;
          Q.Active := False;
          Q.SQL.Text := S;
          Q.Open;
          Q.Locate('ID', C, []);
        end else
          Q.Refresh;
      end else begin
        Q.SQL.Text := S;
        Q.Open;
      end;
      AjustaVisBotoes;
    finally
      Q.EnableControls;
    end;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfbTran.NBLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
begin
  inherited;
  Paginas.ActivePageIndex := ALink.Index;
end;

procedure TfbTran.NenhumTipo;
begin
  slFiltroTipos.Clear;
end;

procedure TfbTran.QCalcFields(DataSet: TDataSet);
begin
  inherited;
  if QFidResgate.Value then
    QImg.Value := 0;
end;

procedure TfbTran.FrmBasePaiCreate(Sender: TObject);
begin
  TVTipo.Caption := rsTipo;
  TVDesconto.Caption := rsDesconto;
  TVCancelado.Caption := rsCancelado;
  TVCaixa.Caption := rsCaixa;

  slFiltroTipos := TStringList.Create;
  FiltroCaixas := '';
  LastFiltro := '';
  Paginas.ActivePageIndex := 0;
  Paginas.HideTabs := True;
  AddCedula(SncafbTran_1Centavo, 0.01);
  AddCedula(SncafbTran_5Centavos, 0.05);
  AddCedula(SncafbTran_10Centavos, 0.10);
  AddCedula(SncafbTran_25Centavos, 0.25);
  AddCedula(SncafbTran_50Centavos, 0.50);
  AddCedula(SncafbTran_1Moeda, 1);
  AddCedula(SncafbTran_1Cédula, 1);
  AddCedula('2', 2);
  AddCedula('5', 5);
  AddCedula(SncafbTran_10, 10);
  AddCedula(SncafbTran_20, 20);
  AddCedula(SncafbTran_50, 50);
  AddCedula(SncafbTran_100, 100);
  LerContador;  
  PrimeiroFiltro := True;
  FiltroF := Null;
  inherited;
  NenhumTipo;
end;

procedure TfbTran.FrmBasePaiDestroy(Sender: TObject);
begin
  inherited;
  slFiltroTipos.Free;
end;

function TfbTran.GetGrid: TcxGrid;
begin
  if Paginas.ActivePageIndex=0 then
    Result := Grid else
    Result := gridCedula;
end;

procedure TfbTran.LerContador;
var i: integer;
begin
  with tvCedula.DataController do 
  for I := 0 to RecordCount-1 do begin
    try Values[I, tvCedulaQuant.Index] := StrToIntDef(slConfig.Values['contador_'+IntToStr(i)], 0); except end;
    try Values[I, tvCedulaTotal.Index] := Values[I, tvCedulaValor.Index] * Values[I, tvCedulaQuant.Index]; except end;
  end;
end;

procedure TfbTran.cmFiltroTipoClick(Sender: TObject);
begin
  inherited;
  if TFrmTipos.Create(Self).Selecionar(slFiltroTipos) then
    FiltraDados;
end;

procedure TfbTran.TVDebitoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  with AViewInfo do 
  if (VarIsFloat(Value)) and (Value>0.009) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfbTran.TVDescrStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVCancelado.Index];
  if (V<>null) and (V=True) then 
    AStyle := cxStyle2;
end;

procedure TfbTran.TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  AjustaVisBotoes;
end;

procedure TfbTran.TVStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  out AStyle: TcxStyle);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVCancelado.Index];
  if VarIsType(V, varBoolean) and (V=True) then 
  if (AItem=TVTotal) or (AItem=TVDesconto) or (AItem=TVPago) or (AItem=TVTotalFinal) then
    AStyle := cxStyle2 else
    AStyle := cxStyle1;
end;

procedure TfbTran.TVTipoGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var 
  C, CP: Variant;  
begin
  inherited;
  if (Operacao<>ftran_nenhum) then
  if (Operacao<>ftran_caixa) or (Filtro=Null) then Exit;
  if not SameText('Venda', AText) then Exit;
  C := ARecord.Values[TVCaixa.Index];
  CP := ARecord.Values[TVCaixaPag.Index];
  if (CP=null) or (CP=0) then Exit;
  if (CP<>null) and (CP=C) then Exit;
  if (C=Filtro) then
    AText := 'Venda (pendente)' else
    AText := 'Pagto venda outro caixa';
end;

procedure TfbTran.TVTipoStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  out AStyle: TcxStyle);
var V: Variant;  
begin
  V := ARecord.Values[TVTipo.Index];
  if VarIsType(V, varBoolean) and (V=True) then
    AStyle := cxStyle2;
end;

procedure TfbTran.TVTotalGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  inherited;
  if (AText=SncafbTran_R0) or (AText=SncafbTran_R000) then AText := '';
end;

procedure TfbTran.cmMostrarChange(Sender: TObject);
begin
  inherited;
  FiltraDados;
end;

procedure TfbTran.cmObsClick(Sender: TObject);
var Obs: String;
begin
  inherited;
  Obs := QObs.Value;
  if tFrmObs.Create(Self).Editar(Obs, True) then begin
    Q.Edit;
    QObs.Value := Obs;
    Q.Post;
  end;
end;

procedure TfbTran.cmPagamentoClick(Sender: TObject);
begin
  inherited;
  if not Q.IsEmpty then begin
    Dados.EditarPagamento(QID.Value);
    Q.Refresh;
  end;
end;

procedure TfbTran.cmAbrirClick(Sender: TObject);
begin
  inherited;
  Dados.AbreCaixa;
end;

procedure TfbTran.cmAguardaPagtoClick(Sender: TObject);
begin
  FiltraDados;
end;

procedure TfbTran.cmCancelarClick(Sender: TObject);
var aCancelou : Boolean;
begin
  inherited;
  if Q.IsEmpty then Exit;
  if QTipo.Value=trCorrDataCx then Exit;
  if QTipo.Value=trZerarEstoque then raise exception.Create(rsNaoPodeCancelarZerarEstoque);

  aCancelou := False;
  if QTipo.Value=trEstVenda then
    aCancelou := Dados.CancelaVenda(QID.Value)
  else begin
    if SimNao(SncafbTran_DesejaRealmenteCancelarATransaçã) then
    begin
      Dados.CM.CancelaTran(QID.Value, Dados.CM.Username);
      aCancelou := True;
    end;    
  end;

  if aCancelou then begin
    Q.Refresh;
    if gConfig.AutoObsAoCancelar and (QStatusNFE.Value=0) then
      cmObsClick(cmCancelar);
  end;      
  
end;

procedure TfbTran.cmCfgClick(Sender: TObject);
begin
  inherited;
  TFrmOpcoes.Create(Self).Editar(SncafbTran_OpçõesDeCaixa, [TFrmConfigCaixaAbertura, TFrmConfigCaixaFechamento, TFrmConfigEmailCaixa]);
end;

procedure TfbTran.cmCorrigeDataCaixaClick(Sender: TObject);
var 
  A: TDateTime; aObs, aIDLoja: String; 
begin
  inherited;
  A := DiaAberto;
  aObs := '';
  aIDLoja := '';
  if TFrmCorrigeData.Create(nil).Editar(A) then begin
    Dados.CM.CorrigeDataCaixa(NumAberto, A, 0);
    DiaAberto := A;
  end;
end;

procedure TfbTran.cmEditarClick(Sender: TObject);
begin
  Dados.EditarTran(QID.Value);
  Q.Refresh;
end;

procedure TfbTran.cmEmailCaixaClick(Sender: TObject);
begin
  inherited;
  TFrmConfigEmailCaixa.Create(Self).ShowModal;
end;

procedure TfbTran.cmExportarClick(Sender: TObject);
begin
  TV.Preview.Column := nil;
  try
    inherited;
  finally
    TV.Preview.Column := TVObs;
  end;
end;

procedure TfbTran.tvCedulaCustomDrawColumnHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
begin
  inherited;
  ACanvas.Font.Size := 8;
end;

procedure TfbTran.tvCedulaDataControllerAfterPost(
  ADataController: TcxCustomDataController);
begin
  inherited;
  SalvarContador;
end;

procedure TfbTran.tvCedulaFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if APrevFocusedRecord<>nil then with APrevFocusedRecord do 
    Values[tvCedulaQuant.Index] := Trunc(Values[tvCedulaTotal.Index] / Values[tvCedulaValor.Index]);
end;

procedure TfbTran.tvCedulaQuantPropertiesEditValueChanged(Sender: TObject);
var vValor, vQuant : Variant;
begin
  inherited;
  with tvCedula.DataController do begin
    vQuant := TcxSpinEdit(Sender).EditingValue;
    vValor := Values[FocusedRecordIndex, tvCedulaValor.Index];
    if (vQuant=null) or (vQuant=0) or (vValor=null) or (vValor=0) then
      Values[FocusedRecordIndex, tvCedulaTotal.Index] := 0 else
      Values[FocusedRecordIndex, tvCedulaTotal.Index] := vQuant * vValor;
    SalvarContador;  
  end;
end;

procedure TfbTran.tvCedulaTotalGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;
begin
  inherited;
  V := ARecord.Values[2];
  if (V=null) or (V=0) then AText := '';
end;

procedure TfbTran.AddCedula(aDescr: String; aValor: Currency);
var I: Integer;
begin
  I := tvCedula.DataController.AppendRecord;
  tvCedula.DataController.Values[I, 0] := aDescr;
  tvCedula.DataController.Values[I, 3] := aValor;
  tvCedula.DataController.Values[I, 1] := 0;
  tvCedula.DataController.Values[I, 2] := 0;
end;

procedure TfbTran.AjustaLayoutLargeButton(B: TdxBarLargeButton);
begin
//
end;

procedure TfbTran.AjustaVisBotoes; 
var T: Byte;
begin
  if Q.IsEmpty then
    T := 255 else
    T := QTipo.Value;
    
  case T of
    trEstSaida, trEstVenda, trEstCompra, trEstEntrada, trCaixaEnt, trCaixaSai : begin
      cmRecibo.Enabled := not Q.IsEmpty;
      if QStatusNFE.Value=nfetran_naoemitir then begin
        cmRecibo.Caption := rsImpRecibo;
        cmRecibo.ImageIndex := 74;
      end else begin
        case QTipoNFE.Value of
          tiponfe_sat : cmRecibo.Caption := rsImpCFe;
          tiponfe_nfce : cmRecibo.Caption := rsImpNFCe;
          tiponfe_nfe : cmRecibo.Caption := rsImpNFe;
        end;
        cmRecibo.ImageIndex := 98;
      end;
    end;

    trPagDebito : begin
      cmRecibo.Enabled := True;
      cmRecibo.Caption := rsImpRecibo;
    end
  else 
    cmRecibo.Enabled := False;
    if Dados.NFCeAtivo then begin
      cmRecibo.Caption := 'Imprimir';
      cmRecibo.ImageIndex := 98;
    end else begin
      cmRecibo.Caption := rsImpRecibo;
      cmRecibo.ImageIndex := 74;
    end;
  end;

  cmEditarTran.Enabled := not Q.IsEmpty;
  cmCancelar.Enabled := Permitido(daTraCancelar) and (not Q.IsEmpty);
  cmObs.Enabled := cmRecibo.Enabled;
end;

procedure TfbTran.Refresh;
begin
  if Q.Active then begin
    Q.Refresh;
    AjustaVisBotoes;
  end;  
end;

procedure TfbTran.SalvarContador;
var I: integer;
begin
  with tvCedula.DataController do 
  for I := 0 to RecordCount-1 do 
    slConfig.Values['contador_'+IntToStr(I)] := Values[I, tvCedulaQuant.Index];
  SaveConfig;  
end;

procedure TfbTran.cmVerAntClick(Sender: TObject);
begin
  inherited;
  FrmPri.MostrarCaixasAnteriores;
end;

procedure TfbTran.cmVerFecharClick(Sender: TObject);
begin
  CreateDMCaixa;
  with Dados do begin
    if not tbCaixa.Locate('ID', NumAberto, []) then // do not localize
      Raise ENexCafe.Create(SncafbTran_CaixaAtualNãoEncontrado);
    TFrmCaixa.Create(nil).Editar(tbCaixa);
  end;    
end;

procedure TfbTran.AtualizaDireitos;
var I : Integer;
begin
  inherited;
  AjustaVisBotoes;
  cmTraduzir.Visible := FrmPri.cmDocMgr.Visible;
  TV.DataController.DataModeController.GridMode := not gConfig.AutoSortGridCaixa;
  if Q.Active then Q.Refresh;
  TV.OptionsCustomize.ColumnSorting := gConfig.AutoSortGridCaixa;
  cmFechar.Enabled := Permitido(daCaiAbrirFechar);
  cmTotalizar.Enabled := Permitido(daCaiVerAtual);
  cmEmailCaixa.Enabled := Dados.CM.UA.Admin;
  cmCfg.Enabled := Dados.CM.UA.Admin;
  cmCancelar.Enabled := Permitido(daTraCancelar) and (not Q.IsEmpty);
  cmSuprimento.Enabled := Permitido(daCaiSuprimento);
  if Dados.CM.UA.Admin then 
    cmEmailCaixa.Visible := ivAlways else
    cmEmailCaixa.Visible := ivNever;
  cmSangria.Enabled := Permitido(daCaiSangria);
  cmVerAnt.Enabled := Permitido(daCaiVerAntes) or Permitido(daCaiVerAntesOutros);
  pantsTran.Visible := Permitido(daVerTranCaixa) or (Operacao=ftran_cliente);
  nbiTran.Enabled := pantsTran.Visible;

  if (Operacao <> ftran_cliente) and ((not Permitido(daCaiVerValores)) or (not Permitido(daCaiVerAtual))) then
  begin 
    TVTotalFinal.Summary.FooterKind := skNone;
    TVPago.Summary.FooterKind := skNone;
    TVDebito.Summary.FooterKind := skNone;
  end;
  

  if (Operacao <> ftran_cliente) and (not Permitido(daCaiVerValores)) then begin
    TVTotal.VisibleForCustomization := False;
    TVTotal.Visible := False;

    TVTotalFinal.Summary.FooterKind := skNone;

    TVDesconto.VisibleForCustomization := False;
    TVDesconto.Visible := False;

    TVTotalFinal.VisibleForCustomization := False;
    TVTotalFinal.Visible := False;

    TVDebito.VisibleForCustomization := False;
    TVDebito.Visible := False;

    TVPago.VisibleForCustomization := False;
    TVPago.Visible := False;
  end;

  if not Permitido(daAtenderClientes) then
    for I := 0 to BarMgr.ItemCount - 1 do
      BarMgr.Items[I].Enabled := False;
end;

procedure TfbTran.btnZerarClick(Sender: TObject);
var I: Integer;
begin
  inherited;
  with tvCedula.DataController do 
  for I := 0 to RecordCount-1 do begin
    Values[I, tvCedulaQuant.Index] := 0;
    Values[I, tvCedulaTotal.Index] := 0;
  end;
  SalvarContador;
end;

procedure TfbTran.cmSuprimentoClick(Sender: TObject);
var LE: TncLancExtra;
begin
  LE := TncLancExtra.Create;
  try
    if Sender=cmSuprimento then
      LE.Tipo := trCaixaEnt else
      LE.Tipo := trCaixaSai;
    LE.Func := Dados.CM.Username;
    if TFrmLancExtra.Create(nil).Editar(True, True, LE) then
      Dados.CM.SalvaLancExtra(LE);
    Q.Refresh;  
  finally
    LE.Free;
  end;
end;

procedure TfbTran.cmTraduzirClick(Sender: TObject);
begin
  inherited;
  CreateDMCaixa;
  dmCaixa.repCaixa.DesignReport;
end;

end.






               
               








