unit ncafbMEPend;
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
  TfbMEPend = class(TFrmBase)
    Tab: TnxTable;
    dsTab: TDataSource;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVDataMov: TcxGridDBColumn;
    TVTipoTran: TcxGridDBColumn;
    TVUnitarioFinal: TcxGridDBColumn;
    TVTotal: TcxGridDBColumn;
    TVQuant: TcxGridDBColumn;
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
    TVTran: TcxGridDBColumn;
    TabPagoPost: TCurrencyField;
    TabDescPost: TCurrencyField;
    TabFidResgate: TBooleanField;
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
    TabID_ref: TLongWordField;
    TabComissao: TCurrencyField;
    TabComissaoPerc: TFloatField;
    TabComissaoLucro: TBooleanField;
    TabNomeCliente: TWideStringField;
    TVCliente: TcxGridDBColumn;
    TabIncluidoEm: TDateTimeField;
    TabPend: TBooleanField;
    procedure TabCalcFields(DataSet: TDataSet);
    procedure TVDblClick(Sender: TObject);
    procedure cmImprimirGridClick(Sender: TObject);
    procedure TVCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure TVQuantGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVEstoquePostGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVTotalGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVUnitarioFinalGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVDataMovGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVQuantCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    class function Descricao: String; override;

    procedure FiltraDados; override;
    procedure AtualizaDireitos; override;
  
    { Public declarations }
  end;

var
  fbMEPend: TfbMEPend;

implementation

uses 
  ncaDM, 
  ncaFrmPri, 
  ufmImagens, 
  ncClassesBase, ncMovEst, ncDMServ;

// START resource string wizard section
resourcestring
  SHistóricoDeTransações = 'Histórico de transações';
  STransaçãoNãoEncontrada = 'Transação não encontrada!';

// END resource string wizard section


{$R *.dfm}

{ TfbMovEst }

procedure TfbMEPend.AtualizaDireitos;
begin
  inherited;
  dxBarDockControl1.SunkenBorder := False;
  BarMgr.Bars[0].BorderStyle := bbsNone;
end;

procedure TfbMEPend.cmImprimirGridClick(Sender: TObject);
begin
  inherited;
  cmImprimirClick(nil);
end;

class function TfbMEPend.Descricao: String;
begin
  Result := SHistóricoDeTransações;
end;

procedure TfbMEPend.FiltraDados;
var aDT: TDateTime;
begin
  inherited;
  Tab.DisableControls;
  try
    if not Tab.Active then Tab.Open;
    aDT := 1;
    Tab.IndexName := 'IProdPendCancelado'; // do not localize
    Tab.SetRange([Filtro, True, False], [Filtro, True, False]);
    Tab.Refresh;
  finally
    Tab.EnableControls;
  end;
end;

procedure TfbMEPend.TabCalcFields(DataSet: TDataSet);
begin
  inherited;
  if TabEntrada.Value then
    TabQuantFator.Value := TabQuant.Value else
    TabQuantFator.Value := TabQuant.Value * -1;
    
  if TabCancelado.Value then
    TabEstoquePost.Value := TabEstoqueAnt.Value else
    TabEstoquePost.Value := TabEstoqueAnt.Value + TabQuantFator.Value;
end;

procedure TfbMEPend.TVCustomDrawColumnHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
begin
  inherited;
  FrmPri.CustomDrawGridHeader(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TfbMEPend.TVDataMovGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if AText='' then AText := 'Reservado';
end;

procedure TfbMEPend.TVDblClick(Sender: TObject);
//var ME : TncMovEst;
begin
  inherited;
  Dados.EditarTran(TabTran.Value);
{  ME := TncMovEst.Create;
  try
    if not DM.tTran.Locate('ID', TabTran.Value, []) then // do not localize
      raise ENexCafe.Create(STransaçãoNãoEncontrada);
    ME.LeDataset(DM.tTran);
    DM.LoadIMEs(ME);
    Dados.EditarMovEst(ME);
  finally
    ME.Free;
  end;}
end;

procedure TfbMEPend.TVEstoquePostGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVTipoTran.Index];
  
  if ((not VarIsNull(V)) and (V=trAjustaCusto)) or VarIsNull(ARecord.Values[TVDataMov.Index]) then
    AText := '';
end;

procedure TfbMEPend.TVQuantCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  ACanvas.Font.Style := [fsBold];
end;

procedure TfbMEPend.TVQuantGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVTipoTran.Index];
  
  if (not VarIsNull(V)) and (V=trAjustaCusto) then
    AText := '';
end;

procedure TfbMEPend.TVTotalGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVTipoTran.Index];
  
  if (not VarIsNull(V)) then
  if ((V=trEstEntrada) or (V=trEstSaida) or (V=trAjustaCusto)) then
    AText := '';
end;

procedure TfbMEPend.TVUnitarioFinalGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVTipoTran.Index];
  
  if (not VarIsNull(V)) then
  if ((V=trEstEntrada) or (V=trEstSaida)) then
    AText := '';
end;

end.

