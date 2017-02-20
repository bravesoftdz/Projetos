{$I NEX.INC}

unit ncafbTran_old;
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
  ncSessao, 
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
  cxNavigator, dxPScxPivotGridLnk, uNexTransResourceStrings_PT, dxBarBuiltInMenu;

type
  TfbTran_old = class(TFrmBase)
    Timer2: TTimer;
    Timer1: TTimer;
    Tab: TnxTable;
    dsTab: TDataSource;
    cmMostrar: TdxBarCombo;
    cmCaixa: TdxBarLargeButton;
    splitAP: TcxSplitter;
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
    TabTotalFinal: TCurrencyField;
    TabNomeCliente: TStringField;
    cmFechar: TdxBarLargeButton;
    cmSuprimento: TdxBarLargeButton;
    cmSangria: TdxBarLargeButton;
    TabDescr: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    TabDebito: TCurrencyField;
    TabQtdTempo: TFloatField;
    TabCredValor: TBooleanField;
    TabFidResgate: TBooleanField;
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
    TabImg: TSmallintField;
    TabTotLiq: TCurrencyField;
    TabplusID: TGuidField;
    TabplusTran: TBooleanField;
    cmEmailCaixa: TdxBarLargeButton;
    TabDescPerc: TFloatField;
    TabDescPorPerc: TBooleanField;
    TabDebitoAnt: TCurrencyField;
    TabDebitoPago: TCurrencyField;
    TabCreditoAnt: TCurrencyField;
    TabCredito: TCurrencyField;
    TabCreditoUsado: TCurrencyField;
    TabTroco: TCurrencyField;
    TabPagFunc: TStringField;
    TabPagPend: TBooleanField;
    TabPagEsp: TWordField;
    TVMeioPagto: TcxGridDBColumn;
    TabNomePagEsp: TStringField;
    cmPagamento: TdxBarButton;
    TabUID: TGuidField;
    TabCliente: TLongWordField;
    TabTipo: TByteField;
    TabCaixa: TLongWordField;
    TabCaixaPag: TLongWordField;
    TabMaq: TWordField;
    TabSessao: TLongWordField;
    procedure FrmBasePaiCreate(Sender: TObject);
    procedure cmFiltroTipoClick(Sender: TObject);
    procedure TabCalcFields(DataSet: TDataSet);
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
  private
    Tipos : TArrayTipoTran;
    NAAoFiltrar: Integer;
    PrimeiroFiltro: Boolean;
    { Private declarations }
  public
    FiltroF : Variant;
    FiltroCaixas : String;
    procedure AtualizaDireitos; override;
    procedure AjustaLayoutLargeButton(B : TdxBarLargeButton); override;

    function GetGrid: TcxGrid; override;

    procedure AddCedula(aDescr: String; aValor: Currency);
    
    procedure EditaTran(ATab: TnxTable);
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
  ftran_Nenhum    = 0;
  ftran_Cliente   = 1;
  ftran_Caixa     = 2;

var
  fbTran_old: TfbTran_old;

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
  ncaFrmConfigCaixaAbertura, ncaFrmConfigCaixaFechamento, ufmImagens;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

{ TfbTran }

class function TfbTran_old.Descricao: String;
begin
  Result := SncafbTran_Transações;
end;

procedure TfbTran_old.cmReciboClick(Sender: TObject);
begin
  inherited;
  dmComp.Imprime(TabUID.AsGuid);
end;

procedure TfbTran_old.cmFecharClick(Sender: TObject);
var 
  NC: Integer;
  aSaldo: Currency;
  aObs,
  aIDLoja: String;
begin
  NC := NumAberto;
  aSaldo := 0;
  aObs := '';
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
      Application.CreateForm(TdmCaixa, dmCaixa);
      try
        TFrmCaixa.Create(nil).Editar(tCai, True);
      finally
        dmCaixa.Free;  
      end;
    end;
  end;
end;

procedure TfbTran_old.FiltraDados;
var
  S: String;
  I: Integer;
  Filtrar : Boolean;
begin
  LockWindowUpdate(panPri.Parent.Handle);
  try
    Tab.DisableControls;
    try      
      NAAoFiltrar := NumAberto;
      if not Tab.Active then Tab.Open;
      Tab.Filtered := False;
  
      case Operacao of
        ftran_Cliente : begin
          panNB.Visible := False;
          dxBarDockControl1.Visible := False;
          cmTran.Visible := ivNever;

          Tab.IndexName := 'ICliDH'; // do not localize
          Tab.SetRange([Filtro], [Filtro]);
          Tab.Last;
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
          Tab.IndexName := 'ICaixaID'; // do not localize
          if FiltroF<>null then
            Tab.SetRange([FiltroF], [Filtro]) else
            Tab.SetRange([Filtro], [Filtro]);
          Tab.First;
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
        end
      else
        begin
          cmPeriodo.Visible := ivNever;
          cmLayout.Visible := ivAlways;
          cmTran.Visible := ivAlways;
          
          Tab.IndexName := 'ICaixaID'; // do not localize
          if NumAberto>0 then begin
            Tab.SetRange([NumAberto], [NumAberto]);
            TV.OptionsView.NoDataToDisplayInfoText := SncafbTran_AindaNãoFoiRealizadaNenhumaTrans;
            cmAbrir.Visible := ivNever;
            cmFechar.Visible := ivAlways;
            cmTotalizar.Enabled := True;
            cmSuprimento.Enabled := Permitido(daCaiSuprimento);
            cmSangria.Enabled := Permitido(daCaiSangria);
          end else begin
            Tab.SetRange([-2], [-2]);
            TV.OptionsView.NoDataToDisplayInfoText := SncafbTran_OCaixaEstáFechado;
            cmAbrir.Visible := ivAlways;
            cmFechar.Visible := ivNever;
            cmTotalizar.Enabled := False;
            cmSangria.Enabled := False;
            cmSuprimento.Enabled := False;
          end;
          
        end;  
      end;
  
      Filtrar := False;
      for I := 0 to High(Tipos) do 
        if Tipos[I] then 
          Filtrar := True;
  
      S := '';
      if Filtrar then begin
        for I := 0 to High(Tipos) do 
        if Tipos[I] then 
          if S>'' then
            S := S + ' OR (Tipo=' + IntToStr(I) +') ' // do not localize
          else
            S := ' (Tipo=' + IntToStr(I) +') '; // do not localize
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
        Tab.Filter := S;
      end else
        Tab.Filter := TV.DataController.Filter.FilterText;
        
      Tab.Filtered := (Tab.Filter>'');
      AjustaVisBotoes;
    finally
      Tab.EnableControls;
    end;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfbTran_old.NBLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
begin
  inherited;
  Paginas.ActivePageIndex := ALink.Index;
end;

procedure TfbTran_old.NenhumTipo;
var I : Integer;
begin
  for I := 0 to trCaixaSai do 
    Tipos[I] := False;
end;

procedure TfbTran_old.FrmBasePaiCreate(Sender: TObject);
begin
  FiltroCaixas := '';
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
  LerContador;  
  AddCedula(SncafbTran_100, 100);
  PrimeiroFiltro := True;
  FiltroF := Null;
  inherited;
  NenhumTipo;
end;

function TfbTran_old.GetGrid: TcxGrid;
begin
  if Paginas.ActivePageIndex=0 then
    Result := Grid else
    Result := gridCedula;
end;

procedure TfbTran_old.LerContador;
var i: integer;
begin
  with tvCedula.DataController do 
  for I := 0 to RecordCount-1 do begin
    try Values[I, tvCedulaQuant.Index] := StrToIntDef(slConfig.Values['contador_'+IntToStr(i)], 0); except end;
    try Values[I, tvCedulaTotal.Index] := Values[I, tvCedulaValor.Index] * Values[I, tvCedulaQuant.Index]; except end;
  end;
end;

procedure TfbTran_old.cmFiltroTipoClick(Sender: TObject);
begin
  inherited;
  TFrmTipos.Create(Self).Selecionar(@Tipos);
  FiltraDados;
end;

procedure TfbTran_old.TabCalcFields(DataSet: TDataSet);
begin
  TabTotalFinal.Value := TabTotal.Value - TabDesconto.Value;

  if TabFidResgate.Value then
    TabImg.Value := 0 
  else
  if TabplusID.Value>'' then
    TabImg.Value := 1;
end;

procedure TfbTran_old.TVDebitoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  with AViewInfo do 
  if (VarIsFloat(Value)) and (Value>0.009) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfbTran_old.TVDescrStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVCancelado.Index];
  if (V<>null) and (V=True) then 
    AStyle := cxStyle2;
end;

procedure TfbTran_old.TVStylesGetContentStyle(Sender: TcxCustomGridTableView;
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
procedure TfbTran_old.TVTipoStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  out AStyle: TcxStyle);
var V: Variant;  
begin
  V := ARecord.Values[TVTipo.Index];
  if VarIsType(V, varBoolean) and (V=True) then
    AStyle := cxStyle2;
end;

procedure TfbTran_old.TVTotalGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  inherited;
  if (AText=SncafbTran_R0) or (AText=SncafbTran_R000) then AText := '';
end;

procedure TfbTran_old.cmMostrarChange(Sender: TObject);
begin
  inherited;
  FiltraDados;
end;

procedure TfbTran_old.cmObsClick(Sender: TObject);
var Obs: String;
begin
  inherited;
  Obs := TabObs.Value;
  if tFrmObs.Create(Self).Editar(Obs, (TabCaixa.Value=NumAberto)) then begin
    Tab.Edit;
    TabObs.Value := Obs;
    Tab.Post;
  end;
end;

procedure TfbTran_old.cmPagamentoClick(Sender: TObject);
begin
  inherited;
  if not Tab.IsEmpty then begin
    Dados.EditarPagamento(TabID.Value);
    Tab.Refresh;
  end;
end;

procedure TfbTran_old.cmAbrirClick(Sender: TObject);
begin
  inherited;
  Dados.AbreCaixa;
end;

procedure TfbTran_old.cmAguardaPagtoClick(Sender: TObject);
begin
  FiltraDados;
end;

procedure TfbTran_old.cmCancelarClick(Sender: TObject);
begin
  inherited;
  if Tab.IsEmpty then Exit;
  if TabTipo.Value=trCorrDataCx then Exit;
  if TabplusID.Value>'' then 
    raise exception.Create(SncafbTran_NãoéPermitidoCancelarUmaVendaPlu);
  if SimNao(SncafbTran_DesejaRealmenteCancelarATransaçã) then
  begin
    Dados.CM.CancelaTran(TabID.Value, Dados.CM.Username);
    Tab.Refresh;
    if gConfig.AutoObsAoCancelar then
      cmObsClick(cmCancelar);
  end;
end;

procedure TfbTran_old.cmCfgClick(Sender: TObject);
begin
  inherited;
  TFrmOpcoes.Create(Self).Editar(SncafbTran_OpçõesDeCaixa, [TFrmConfigCaixaAbertura, TFrmConfigCaixaFechamento, TFrmConfigEmailCaixa]);
end;

procedure TfbTran_old.cmCorrigeDataCaixaClick(Sender: TObject);
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

procedure TfbTran_old.cmEditarClick(Sender: TObject);
begin
  Dados.EditarTran(TabID.Value);
  Tab.Refresh;
end;

procedure TfbTran_old.cmEmailCaixaClick(Sender: TObject);
begin
  inherited;
  TFrmConfigEmailCaixa.Create(Self).ShowModal;
end;

procedure TfbTran_old.cmExportarClick(Sender: TObject);
begin
  TV.Preview.Column := nil;
  try
    inherited;
  finally
    TV.Preview.Column := TVObs;
  end;
end;

procedure TfbTran_old.EditaTran(ATab: TnxTable);
begin
  if ATab.IsEmpty then Exit;                  
{ case ATab.FieldByName('Tipo').AsInteger of 
     ttAcesso,
    ttManutencao,
    ttAcessoVenda : TFrmAcesso.Create(Self).Editar(ATab, 2);
    ttVendaPacote : TFrmVendaPac.Create(Self).Editar(ATab);
    ttVendaPassaporte : TFrmVendaPass.Create(Self).Editar(Tab); 
    ttCreditoTempo : TFrmCredito.Create(Self).Editar(ATab);    
    ttSangriaCaixa,
    ttSuprimentoCaixa : TFrmLancExtra.Create(Self).Editar(Tab);
    ttEstVenda,
    ttEstCompra,
    ttEstEntrada,
    ttEstSaida    : TFrmME.Create(Self).Editar(Tab);
    ttPagtoDebito : TFrmDeb.Create(Self).Editar(ATab.FieldByName('Numero').AsInteger); 
    ttSinal :
    if Dados.tbAcesso.Locate('Numero', ATab.FieldByName('TransacaoVinculada').AsInteger, []) then
      TFrmAcesso.Create(Self).Editar(Dados.tbAcesso, 0);      
  end;}
  Tab.Refresh;
end;

procedure TfbTran_old.tvCedulaCustomDrawColumnHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
begin
  inherited;
  ACanvas.Font.Size := 8;
end;

procedure TfbTran_old.tvCedulaDataControllerAfterPost(
  ADataController: TcxCustomDataController);
begin
  inherited;
  SalvarContador;
end;

procedure TfbTran_old.tvCedulaFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if APrevFocusedRecord<>nil then with APrevFocusedRecord do 
    Values[tvCedulaQuant.Index] := Trunc(Values[tvCedulaTotal.Index] / Values[tvCedulaValor.Index]);
end;

procedure TfbTran_old.tvCedulaQuantPropertiesEditValueChanged(Sender: TObject);
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

procedure TfbTran_old.tvCedulaTotalGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;
begin
  inherited;
  V := ARecord.Values[2];
  if (V=null) or (V=0) then AText := '';
end;

procedure TfbTran_old.AddCedula(aDescr: String; aValor: Currency);
var I: Integer;
begin
  I := tvCedula.DataController.AppendRecord;
  tvCedula.DataController.Values[I, 0] := aDescr;
  tvCedula.DataController.Values[I, 3] := aValor;
  tvCedula.DataController.Values[I, 1] := 0;
  tvCedula.DataController.Values[I, 2] := 0;
end;

procedure TfbTran_old.AjustaLayoutLargeButton(B: TdxBarLargeButton);
begin
//
end;

procedure TfbTran_old.AjustaVisBotoes;
begin
  cmEditarTran.Enabled := not Tab.IsEmpty;
  cmCancelar.Enabled := Permitido(daTraCancelar) and (not Tab.IsEmpty);
  cmRecibo.Enabled := cmEditarTran.Enabled;
  cmObs.Enabled := cmRecibo.Enabled;
end;

procedure TfbTran_old.Refresh;
begin
  if Tab.Active then begin
    Tab.Refresh;
    AjustaVisBotoes;
  end;  
end;

procedure TfbTran_old.SalvarContador;
var I: integer;
begin
  with tvCedula.DataController do 
  for I := 0 to RecordCount-1 do 
    slConfig.Values['contador_'+IntToStr(I)] := Values[I, tvCedulaQuant.Index];
  SaveConfig;  
end;

procedure TfbTran_old.cmVerAntClick(Sender: TObject);
begin
  inherited;
  FrmPri.MostrarCaixasAnteriores;
end;

procedure TfbTran_old.cmVerFecharClick(Sender: TObject);
begin
  Application.CreateForm(TdmCaixa, dmCaixa);
  with Dados do
  try
    if not tbCaixa.Locate('ID', NumAberto, []) then // do not localize
      Raise ENexCafe.Create(SncafbTran_CaixaAtualNãoEncontrado);
    TFrmCaixa.Create(nil).Editar(tbCaixa);
  finally
    dmCaixa.Free;  
  end;    
end;

procedure TfbTran_old.AtualizaDireitos;
var I : Integer;
begin
  inherited;
  TV.DataController.DataModeController.GridMode := not gConfig.AutoSortGridCaixa;
  if Tab.Active then FiltraDados;
  TV.OptionsCustomize.ColumnSorting := gConfig.AutoSortGridCaixa;
  cmFechar.Enabled := Permitido(daCaiAbrirFechar);
  cmTotalizar.Enabled := Permitido(daCaiVerAtual);
  cmEmailCaixa.Enabled := Dados.CM.UA.Admin;
  cmCfg.Enabled := Dados.CM.UA.Admin;
  cmCancelar.Enabled := Permitido(daTraCancelar) and (not Tab.IsEmpty);
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

procedure TfbTran_old.btnZerarClick(Sender: TObject);
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

procedure TfbTran_old.cmSuprimentoClick(Sender: TObject);
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
    Tab.Refresh;  
  finally
    LE.Free;
  end;
end;

end.






               
               
