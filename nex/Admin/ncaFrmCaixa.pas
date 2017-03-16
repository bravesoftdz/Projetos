unit ncaFrmCaixa;
{
    ResourceString: Dario 10/03/13
}

interface

uses
  Windows, Messages, Variants, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, kbmMemTable, 
  ExtCtrls, 
  dxBar, 
  nxdb, 
  ComCtrls, 
  LMDCustomControl, 
  LMDCustomPanel,
  LMDCustomBevelPanel, 
  LMDSimplePanel, 
  LMDControl, 
  LMDBaseControl, 
  LMDBaseGraphicControl, 
  LMDBaseLabel,
  LMDCustomLabel, 
  LMDLabel, 
  LMDFormDisplay, 
  StdCtrls,
  DBCtrls, 
  LMDBaseGraphicButton,
  LMDCustomSpeedButton, 
  LMDSpeedButton, 
  dxPSCore, 
  dxPSGlbl, 
  dxPSUtl, 
  dxPSEngn, 
  dxPrnPg,
  dxBkgnd, 
  dxWrap, 
  dxPrnDev, 
  dxPSCompsProvider, 
  dxPSFillPatterns,
  dxPSEdgePatterns, 
  dxPgsDlg, 
  cxStyles, 
  cxCustomData, 
  cxGraphics, 
  cxFilter,
  cxData, 
  cxDataStorage, 
  cxEdit, 
  cxDBData, 
  cxMaskEdit, 
  cxCurrencyEdit,
  cxTextEdit, 
  cxGridCustomTableView, 
  cxGridTableView,
  cxGridBandedTableView, 
  cxGridDBBandedTableView, 
  cxClasses, 
  cxControls,
  cxGridCustomView, 
  cxGridLevel, 
  cxGrid, 
  cxPC, 
  cxDBLookupComboBox,
  dxPScxCommon, 
  dxPScxGridLnk, 
  cxContainer, 
  cxMemo, 
  cxDBEdit,
  cxGridExportLink,
  cxGridDBTableView, dxBarExtItems, 
  cxVGrid, cxDBVGrid, cxInplaceContainer, cxCalendar, ufmFormBase,
  cxTimeEdit, cxImageComboBox, cxGridChartView, cxGridDBChartView, cxSpinEdit,
  cxLabel, cxGridCustomPopupMenu, cxGridPopupMenu, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, cxNavigator, dxPScxPivotGridLnk, cxPropertiesStore,
  dxBarBuiltInMenu, ncCaixas;
  

type
  TFrmCaixa = class(TForm)
    BarMgr: TdxBarManager;
    Panel1: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel2: TPanel;
    cmCancela: TdxBarLargeButton;
    cmImprimir: TdxBarLargeButton;
    panAguarde: TLMDSimplePanel;
    LMDLabel5: TLMDLabel;
    Timer1: TTimer;
    CompPrint: TdxComponentPrinter;
    dplComposto: TdxCompositionReportLink;
    dxPrintStyleManager1: TdxPrintStyleManager;
    dxPrintStyleManager1Style1: TdxPSPrintStyle;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyleRepository5: TcxStyleRepository;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyleRepository6: TcxStyleRepository;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyleRepository7: TcxStyleRepository;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyleRepository8: TcxStyleRepository;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    Paginas: TcxPageControl;
    tsResumo: TcxTabSheet;
    gridRes: TcxGrid;
    glResumo: TcxGridLevel;
    tsVendas: TcxTabSheet;
    gridEst: TcxGrid;
    tvEst: TcxGridDBTableView;
    tvEstDescricao1: TcxGridDBColumn;
    tvEstSaldoInicial1: TcxGridDBColumn;
    tvEstEntradas: TcxGridDBColumn;
    tvEstCompras: TcxGridDBColumn;
    tvEstSaidas1: TcxGridDBColumn;
    tvEstVendas: TcxGridDBColumn;
    tvEstValorVendas1: TcxGridDBColumn;
    tvEstSaldoFinal1: TcxGridDBColumn;
    glEst: TcxGridLevel;
    tsVC: TcxTabSheet;
    gridVC: TcxGrid;
    tvVC: TcxGridDBTableView;
    tvVCCategoria: TcxGridDBColumn;
    tvVCQuant1: TcxGridDBColumn;
    tvVCTotFinal1: TcxGridDBColumn;
    glVC: TcxGridLevel;
    dplResFin: TdxGridReportLink;
    dplTempoMaq: TdxGridReportLink;
    dplTempoHora: TdxGridReportLink;
    dplManutencao: TdxGridReportLink;
    dplEstoque: TdxGridReportLink;
    dplVendasCateg: TdxGridReportLink;
    edDataI: TdxBarDateCombo;
    edDataF: TdxBarDateCombo;
    btnTotalizar: TdxBarLargeButton;
    cxStyle41: TcxStyle;
    VG: TcxDBVerticalGrid;
    VGDBEditorRow1: TcxDBEditorRow;
    VGDBEditorRow2: TcxDBEditorRow;
    VGFechamento: TcxDBEditorRow;
    VGDBEditorRow4: TcxDBEditorRow;
    vgObs: TcxDBEditorRow;
    FM: TFormManager;
    dplTran: TdxGridReportLink;
    tvEstLucro: TcxGridDBColumn;
    tvRes: TcxGridDBTableView;
    tvResDescricao: TcxGridDBColumn;
    tvResTotal: TcxGridDBColumn;
    tvResItem: TcxGridDBColumn;
    dsCaixa: TDataSource;
    dplGratis: TdxGridReportLink;
    LMDSimplePanel3: TLMDSimplePanel;
    LMDSimplePanel7: TLMDSimplePanel;
    dplCliente: TdxGridReportLink;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dplSessoes: TdxGridReportLink;
    tvEstPremioFid: TcxGridDBColumn;
    dplPrePos: TdxGridReportLink;
    tvTeste: TcxGridDBTableView;
    cxStyle42: TcxStyle;
    dplImp: TdxGridReportLink;
    tsPagEsp: TcxTabSheet;
    tvPagEsp: TcxGridDBTableView;
    glPagEsp: TcxGridLevel;
    GridPagEsp: TcxGrid;
    tvPagEspTotalF: TcxGridDBColumn;
    tvPagEspNomeEspecie: TcxGridDBColumn;
    tvPagEspObs: TcxGridDBColumn;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    dplPagEsp: TdxGridReportLink;
    propStore: TcxPropertiesStore;
    tvEstDev: TcxGridDBColumn;
    tvPagEspVendas: TcxGridDBColumn;
    tvPagEspDevolucao: TcxGridDBColumn;
    tvPagEspSangria: TcxGridDBColumn;
    tvPagEspSuprimento: TcxGridDBColumn;
    cmExp: TdxBarLargeButton;
    dlgExp: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmCancelaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnTotalizarClick(Sender: TObject);
    procedure cmImprimirClick(Sender: TObject);
    procedure tvResCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure cmExpClick(Sender: TObject);
  private
    FPeriodo : Boolean;
    FCXRange : TncCaixas;
    function GetGrid: TcxGrid;
    { Private declarations }
  public
    FTab : TnxTable;
    FImprimir : Boolean;
    procedure Editar(aTab: TnxTable; aImprimir: Boolean = False);
    procedure CaixaPeriodo;
    { Public declarations }
  end;

var
  FrmCaixa: TFrmCaixa;

implementation

uses 
  ncaFrmPri, 
  ncaDM,
  ncClassesBase,
  ncIDRecursos, 
  ncaFrmOpcaoRelCaixa,
  ncafbTran, ncDMCaixa, ufmImagens, ncaStrings;

// START resource string wizard section
resourcestring
  SCaixaIF = 'Caixa de %s a %s';
  SCaixaDe = 'Caixa de %s';
  STotalFinanceiro = 'Total Financeiro';
  SCaixa = 'Caixa ';
  SAbertura_1 = 'Abertura   : ';
  SFechamento = 'Fechamento : ';
  SFuncionário = 'Funcionário: ';
  rsNaoHaCaixas = 'Não há caixas com data de abertura dentro do período informado';

  rsEntradas = 'Entradas';
  rsCompras = 'Compras';
  rsVendas = 'Vendas';
  rsLucro = 'Lucro';
  rsCategoria = 'Categoria';
  rsSangria = 'Sangria';

// END resource string wizard section


{$R *.DFM}

{ TFrmPacote }

procedure TFrmCaixa.Editar(aTab: TnxTable; aImprimir: Boolean = False);
begin
  FImprimir := aImprimir;
  FPeriodo := False;
  FTab := aTab;
  dsCaixa.Dataset := FTab;
  if aTab.FieldByName('Aberto').AsBoolean then // do not localize
    vgFechamento.Visible := False else
    vgObs.Properties.EditProperties.ReadOnly := True;
//  Paginas.Visible := Permitido(daCaiVerAtual);
  tvEstLucro.Visible := Permitido(daVerLucroProdutos);
  cmImprimir.Enabled := Permitido(daCaiVerAtual);
  ShowModal;
end;

procedure TFrmCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  propStore.StoreTo;
  FM.Clear;
  Action := caFree;
  dmCaixa.mtPagEsp.Filter := '';
  dmCaixa.mtPagEsp.Filtered := False;
end;

procedure TFrmCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_Esc   : Close;
  end;
end;

procedure TFrmCaixa.FormCreate(Sender: TObject);
begin
  tvPagEspVendas.Caption := rsVendas;
  tvPagEspSangria.Caption := rsSangria;
  FImprimir := False;
  FPeriodo := False;
  FCXRange := TncCaixas.Create;
end;

procedure TFrmCaixa.FormDestroy(Sender: TObject);
begin
  FCXRange.Free;
end;

procedure TFrmCaixa.FormShow(Sender: TObject);
begin
  if not FPeriodo then 
    Timer1.Enabled := True;
  Paginas.ActivePageIndex := 0;

  tvEstEntradas.Caption := rsEntradas;
  tvEstCompras.Caption := rsCompras;
  tvEstVendas.Caption := rsVendas;
  tvEstLucro.Caption := rsLucro;
  tvVCCategoria.Caption := rsCategoria;
end;

function TFrmCaixa.GetGrid: TcxGrid;
begin
  case Paginas.ActivePageIndex of
    0 : Result := gridRes;  
    1 : Result := gridPagEsp;
    2 : Result := gridEst;
    3 : Result := gridVC;
    4 : Result := TfbTran(FM.FormAtivo).Grid;
  end;
end;

procedure TFrmCaixa.cmCancelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCaixa.cmExpClick(Sender: TObject);
const
  Exts: Array[1..3] of String = ('xls', 'htm', 'txt');
begin
  if GetGrid=nil then Exit;
  if Pos('.', dlgExp.FileName)>0 then
    dlgExp.FileName := Copy(dlgExp.FileName, 1, Pos('.', dlgExp.FileName)-1);

  if not (dlgExp.FilterIndex in [1..3]) then
    dlgExp.FilterIndex := 1;
  
  if dlgExp.Execute and (dlgExp.FileName <> '') then begin
    if Pos('.', dlgExp.FileName)=0 then
      dlgExp.FileName := dlgExp.FileName + '.' + Exts[dlgExp.FilterIndex];
    case dlgExp.FilterIndex of
      1: ExportGridToExcel(dlgExp.FileName, GetGrid);
      2: ExportGridToHtml(dlgExp.FileName, GetGrid);
      3: ExportGridToText(dlgExp.FileName, GetGrid);
    end;
  end;
end;

procedure TFrmCaixa.Timer1Timer(Sender: TObject);
var cxi, cxf : Cardinal;
begin
  Timer1.Enabled := False;
  Paginas.Visible := False;
  cmImprimir.Visible := ivNever;
  panAguarde.Visible := True;
  try
    Application.ProcessMessages;
    dmCaixa.nxDB.Active := False;
    dmCaixa.nxDB.Session := Dados.Session;
    dmCaixa.AbreConn;
    FM.RegistraForm(TfbTran);
    FCXRange.Clear;
    if FPeriodo then begin
      if Dados.ObtemCXRange(edDataI.Date, edDataF.Date, FCXRange) then 
        dmCaixa.Processa(0, FCXRange)
      else begin
        Beep;
        ShowMessage(rsNaoHaCaixas);
        Exit;
      end;
    end
    else begin
      dmCaixa.Processa(FTab.FieldByName('ID').AsInteger, nil);
      dsCaixa.Dataset.FieldByName('ID').Alignment := taLeftJustify; // do not localize
    end;
  finally  
    panAguarde.Visible := False;
  end;  
    
  if not FPeriodo then begin
    FM.Mostrar(TfbTran, ftran_Caixa, FTab.FieldByName('ID').AsInteger);
    TfbTran(FM.FormAtivo).FiltroF := FTab.FieldByName('ID').AsInteger;
  end else begin
    cxi := FCXRange.CaixaMin;
    cxf := FCXRange.CaixaMax;
    FM.Mostrar(TfbTran, ftran_Caixa, cxi);
    TfbTran(FM.FormAtivo).FiltroF := cxf;
    TfbTran(FM.FormAtivo).FiltroCaixas := FCXRange.SQL;
  end;
  
  FM.FormAtivo.FiltraDados;
  with TfbTran(FM.FormAtivo) do begin
    TV.OptionsView.Footer := True;
    TV.DataController.DataModeController.GridMode := False;
  end;

  tvRes.ApplyBestFit;
  tvEst.ApplyBestFit;
  
  dplTran.Component := TfbTran(FM.FormAtivo).Grid;
  
  Paginas.ActivePageIndex := 0;

  dmCaixa.mtPagEsp.Filter := 'Especie <> 65535';
  dmCaixa.mtPagEsp.Filtered := True;

  with FormatSettings do
  if FPeriodo then
    Caption := Format(SCaixaIF, 
                      [FormatDateTime(ShortDateFormat, edDataI.Date),
                       FormatDateTime(ShortDateFormat, edDataF.Date)])
  else
    Caption := Format(SCaixaDe, [FormatDateTime(ShortDateFormat, FTab.FieldByName('Abertura').AsDateTime)]);

  cmImprimir.Visible := ivAlways;  
  Paginas.Visible := Permitido(daCaiVerAtual);

  if FImprimir then
  try
    cmImprimirClick(nil);
  finally
    FImprimir := False;  
  end;
end;

procedure TFrmCaixa.tvResCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var 
  V : Variant;
  I : Integer;
begin
  ACanvas.Font.Style := [];
  V := AViewInfo.GridRecord.Values[tvResItem.Index];
  if VarIsNull(V) then Exit;
  I := V;
  case i of
    irfFaturamento : ACanvas.Font.Style := [fsBold];
    irfDescontos,
    irfCancelamentos  : ACanvas.Font.Color := clRed;
    irfTotalRec       : ACanvas.Font.Style := [fsBold];
    irfSaldoFinal, irfSaldoInformado     : begin
      ACanvas.Font.Color := clBlue;
      ACanvas.Font.Style := [fsBold];
    end;
    irfQuebraCaixa : begin
      ACanvas.Font.Color := clRed;
      ACanvas.Font.Style := [fsBold];
    end;
    99 : ACanvas.Font.Style := [fsUnderline, fsBold];
  end;
end;

procedure TFrmCaixa.CaixaPeriodo;
begin
  edDataI.Visible := ivAlways;
  edDataF.Visible := ivAlways;
  btnTotalizar.Visible := ivAlways;
  Paginas.Visible := False;
  FPeriodo := True;
  VG.Visible := False;
  panAguarde.Visible := False;
  ShowModal;
end;

procedure TFrmCaixa.btnTotalizarClick(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TFrmCaixa.cmImprimirClick(Sender: TObject);
const
  TFSt : Array[Boolean] of Char = ('N', 'S');
  
var
  AT: TArrayTipoTran;
  I : Integer;
  SL : TStrings;
  S : String;
begin
  SL := TStringList.Create;
  FillChar(AT, SizeOf(AT), 0);
  AT[0] := True;
  S := ExtractFilePath(ParamStr(0))+'caixa.ini'; // do not localize
  if FileExists(S) then begin
    SL.LoadFromFile(S);
    for I := 0 to 7 do
      AT[I] := (SL.Values['Rel'+IntToStr(I)]='S'); // do not localize
  end;

  if not FImprimir then begin
    TFrmOpcaoRelCaixa.Create(Self).Selecionar(@AT);

    for I := 0 to 7 do 
      SL.Values['Rel'+IntToStr(I)] := TFSt[AT[I]]; // do not localize
    
    SL.SaveToFile(S);
  end;
  SL.Free;

  dplComposto.Items.Clear;
  if AT[0] then
    dplComposto.Items.AddLink(dplResFin);
  if AT[1] then
    dplComposto.Items.AddLink(dplPagEsp);
  if AT[2] then
    dplComposto.Items.AddLink(dplEstoque);
  if AT[3] then
    dplComposto.Items.AddLink(dplVendasCateg);
  if AT[4] then
    dplComposto.Items.AddLink(dplTran);  

  with FormatSettings do  
  if FPeriodo then
    dplResFin.ReportTitle.Text :=
      Format(SCaixaDe, [FormatDateTime(ShortDateFormat, edDataI.Date), 
                        FormatDateTime(ShortDateFormat, edDataF.Date)]) + sLineBreak + sLineBreak +
      STotalFinanceiro
  else
    dplResFin.ReportTitle.Text :=
      SCaixa + FTab.FieldByName('ID').AsString + #13#10#13#10 + // do not localize
      SAbertura_1 + FormatDateTime(ShortDateFormat, FTab.FieldByName('Abertura').AsDateTime)+ #13#10 + // do not localize
      SFechamento + FormatDateTime(ShortDateFormat, FTab.FieldByName('Fechamento').AsDateTime) + #13#10 + // do not localize
      SFuncionário + FTab.FieldByName('Usuario').AsString + #13#10#13#10 + // do not localize
      STotalFinanceiro;
  CompPrint.Preview;
end;

end.

