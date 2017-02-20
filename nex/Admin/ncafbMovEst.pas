unit ncafbMovEst;
{
    ResourceString: Dario 10/03/13
}

interface

uses
  Windows, ncErros, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmFormBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCalendar, cxImageComboBox,
  cxMaskEdit, cxCurrencyEdit, cxDBLookupComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, nxdb, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxBar, dxBarExtItems, ExtCtrls, cxTextEdit, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, cxSpinEdit, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, dxPScxPivotGridLnk,
  cxContainer, cxLabel;

type
  TfbMovEst = class(TFrmBase)
    Tab: TnxTable;
    dsTab: TDataSource;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVDataMov: TcxGridDBColumn;
    TVNomeTipoTran: TcxGridDBColumn;
    TVUnitarioFinal: TcxGridDBColumn;
    TVTotal: TcxGridDBColumn;
    TVQuantFator: TcxGridDBColumn;
    TVEstoquePost: TcxGridDBColumn;
    GL: TcxGridLevel;
    TabID: TAutoIncField;
    TabQuant: TFloatField;
    TabUnitario: TCurrencyField;
    TabTotal: TCurrencyField;
    TabCustoU: TCurrencyField;
    TabDesconto: TCurrencyField;
    TabPago: TCurrencyField;
    TabDataHora: TDateTimeField;
    TabEntrada: TBooleanField;
    TabCancelado: TBooleanField;
    TabEstoqueAnt: TFloatField;
    TabCategoria: TStringField;
    TabNaoControlaEstoque: TBooleanField;
    TabITran: TIntegerField;
    TabSessao: TIntegerField;
    TabEstoquePost: TFloatField;
    TVCaixa: TcxGridDBColumn;
    TVTran: TcxGridDBColumn;
    TabPagoPost: TCurrencyField;
    TabDescPost: TCurrencyField;
    TabFidResgate: TBooleanField;
    TVFidResgate: TcxGridDBColumn;
    TabTran: TLongWordField;
    TabAjustaCusto: TBooleanField;
    TabCliente: TLongWordField;
    TabCaixa: TIntegerField;
    TabTipoTran: TByteField;
    TabPermSemEstoque: TBooleanField;
    TabFidPontos: TFloatField;
    TabProduto: TLongWordField;
    TabItem: TByteField;
    TabQuantFator: TFloatField;
    TVCanc: TcxGridDBColumn;
    TabID_ref: TLongWordField;
    TabComissao: TCurrencyField;
    TabComissaoPerc: TFloatField;
    TabComissaoLucro: TBooleanField;
    TabNomeCliente: TWideStringField;
    TVCliente: TcxGridDBColumn;
    cmExportar2: TdxBarButton;
    TVFunc: TcxGridDBColumn;
    TabFunc: TStringField;
    TabNomeFunc: TStringField;
    TVComissaoPerc: TcxGridDBColumn;
    TVComissaoLucro: TcxGridDBColumn;
    TVValorComissao: TcxGridDBColumn;
    TabNomeTipoTran: TStringField;
    Tabtax_id: TLongWordField;
    Tabtax_incluido: TCurrencyField;
    Tabtax_incluir: TCurrencyField;
    TabTotLiq: TCurrencyField;
    TabCustoT: TCurrencyField;
    TabLucro: TCurrencyField;
    TabDescr: TWideStringField;
    TabTotalFinal: TCurrencyField;
    TabPend: TBooleanField;
    TabIncluidoEm: TDateTimeField;
    TabDebDev: TCurrencyField;
    TabVenDev: TBooleanField;
    TVTipo: TcxGridDBColumn;
    procedure TabCalcFields(DataSet: TDataSet);
    procedure TVDblClick(Sender: TObject);
    procedure cmImprimirGridClick(Sender: TObject);
    procedure TVCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure TVQuantFatorGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVEstoquePostGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVTotalGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVDataMovGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cmEditarClick(Sender: TObject);
    procedure cmExportar2Click(Sender: TObject);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    class function Descricao: String; override;

    procedure FiltraDados; override;
    procedure AtualizaDireitos; override;

    procedure EnableDisable;
  
    { Public declarations }
  end;

var
  fbMovEst: TfbMovEst;

implementation

uses 
  ncaDM, 
  ncaFrmPri, 
  ufmImagens, 
  ncClassesBase, 
  ncMovEst, ncDMServ, ncIDRecursos;

// START resource string wizard section
resourcestring
  SHistóricoDeTransações = 'Histórico de transações';
  STransaçãoNãoEncontrada = 'Transação não encontrada!';

// END resource string wizard section


{$R *.dfm}

{ TfbMovEst }

procedure TfbMovEst.AtualizaDireitos;
begin
  inherited;
  TVValorComissao.Visible := Permitido(daVerDadosComissao);
  TVComissaoPerc.Visible := Permitido(daVerDadosComissao);
  TVComissaoLucro.Visible := Permitido(daVerDadosCOmissao);
  dxBarDockControl1.SunkenBorder := False;
  BarMgr.Bars[0].BorderStyle := bbsNone;
  EnableDisable;
end;

procedure TfbMovEst.cmEditarClick(Sender: TObject);
begin
  inherited;
  Dados.EditarTran(TabTran.Value);
end;

procedure TfbMovEst.cmExportar2Click(Sender: TObject);
begin
  inherited;
  cmExportarClick(nil);
end;

procedure TfbMovEst.cmImprimirGridClick(Sender: TObject);
begin
  inherited;
  cmImprimirClick(nil);
end;

class function TfbMovEst.Descricao: String;
begin
  Result := SHistóricoDeTransações;
end;

procedure TfbMovEst.EnableDisable;
var B: Boolean;
begin
  B := (not Tab.IsEmpty);
  if B then
  case tabTipoTran.Value of
    trEstCompra : B := Permitido(daEstCompras);
    trAjustaCusto : B := False;
    trEstEntrada : B := Permitido(daEstEntrada);
    trEstSaida : B := Permitido(daEstSaida);
  end;
  cmEditar.Enabled := B;
end;

procedure TfbMovEst.FiltraDados;
var aDT: TDateTime;
begin
  inherited;
  Tab.DisableControls;
  try
    if not Tab.Active then Tab.Open;
    aDT := 1;
    Tab.IndexName := 'IProduto'; // do not localize
    Tab.SetRange([Filtro, MaxDateTime], [Filtro, aDT]);
    Tab.Refresh;
    EnableDisable;
  finally
    Tab.EnableControls;
  end;
  Caption := 'teste';
end;

procedure TfbMovEst.TabCalcFields(DataSet: TDataSet);
begin
  inherited;
  if TabEntrada.Value then
    TabQuantFator.Value := TabQuant.Value else
    TabQuantFator.Value := TabQuant.Value * -1;
    
  if TabCancelado.Value then
    TabEstoquePost.Value := TabEstoqueAnt.Value else
    TabEstoquePost.Value := TabEstoqueAnt.Value + TabQuantFator.Value;
end;

procedure TfbMovEst.TVCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var V: Variant;  
begin
  inherited;
  V := AViewInfo.GridRecord.Values[TVCanc.Index];
  if (not VarIsNull(V)) and (V=True) then begin
    ACanvas.Font.Style := ACanvas.Font.Style + [fsStrikeout];
    if not AViewInfo.Selected then
      ACanvas.Font.Color := clRed;
  end;  
end;

procedure TfbMovEst.TVCustomDrawColumnHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
begin
  inherited;
  FrmPri.CustomDrawGridHeader(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TfbMovEst.TVDataMovGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if AText='' then AText := 'Reservado';
end;

procedure TfbMovEst.TVDblClick(Sender: TObject);
begin
  inherited;
  if cmEditar.Enabled then cmEditar.Click;
end;

procedure TfbMovEst.TVEstoquePostGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVTipo.Index];
  
  if ((not VarIsNull(V)) and (V=trAjustaCusto)) or VarIsNull(ARecord.Values[TVDataMov.Index]) then
    AText := '';
end;

procedure TfbMovEst.TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  EnableDisable;
end;

procedure TfbMovEst.TVQuantFatorGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVTipo.Index];
  
  if (not VarIsNull(V)) and (V=trAjustaCusto) then
    AText := '';
end;

procedure TfbMovEst.TVTotalGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVTipo.Index];
  
  if (not VarIsNull(V)) then
  if ((V=trEstEntrada) or (V=trEstSaida) or (V=trAjustaCusto) or (V=trEstCompra)) and (not Permitido(daVerCusto)) then
    AText := '';
end;

end.
     
