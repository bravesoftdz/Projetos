unit ncafbEst;
{
    ResourceString: Dario 10/03/13
}

interface

{$I NEX.INC}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmFormBase, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, dxBar, dxPSCore,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxControls, cxGridCustomView, cxGrid, kbmMemTable, dxBarExtItems,
  cxMaskEdit, cxTextEdit, cxDBLookupComboBox, cxLabel, cxContainer, cxSpinEdit,
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseGraphicButton,
  LMDCustomSpeedButton, LMDSpeedButton, cxGridChartView, cxGridDBChartView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxPC, ComCtrls, nxdb,
  LMDPNGImage, GIFImg, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, cxPCdxBarPopupMenu, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomPivotGrid, cxDBPivotGrid, dxPScxPivotGridLnk,
  dxPScxCommon, cxNavigator, cxCurrencyEdit, cxImageComboBox, ncCaixas,
  dxBarBuiltInMenu, cxCheckBox;

type
  TfbEst = class(TFrmBase)
    MT: TkbmMemTable;
    MTID: TIntegerField;
    MTNome: TStringField;
    DS: TDataSource;
    MTTipo: TStringField;
    MTDescr: TMemoField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    edDataI: TdxBarDateCombo;
    cmGerar: TdxBarLargeButton;
    edDataF: TdxBarDateCombo;
    cmVoltar: TdxBarLargeButton;
    Paginas: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    gridTempoCli: TcxGrid;
    tvTempoCli: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    tvTempoCliSessoes: TcxGridDBBandedColumn;
    tvTempoCilValor: TcxGridDBBandedColumn;
    glTempoCli: TcxGridLevel;
    tsPar: TcxTabSheet;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVID: TcxGridDBColumn;
    TVTipo: TcxGridDBColumn;
    TVNome: TcxGridDBColumn;
    TVDescr: TcxGridDBColumn;
    GL: TcxGridLevel;
    Timer1: TTimer;
    cxStyle4: TcxStyle;
    tsAguarde: TcxTabSheet;
    cxLabel4: TcxLabel;
    Animate1: TAnimate;
    cmVerGraf: TdxBarLargeButton;
    mtTotCli: TkbmMemTable;
    mtTotCliCliente: TIntegerField;
    mtTotCliQuant: TFloatField;
    mtTotCliNomeCli: TWideStringField;
    mtTotCliValor: TCurrencyField;
    dsTotCli: TDataSource;
    qCliValor: TnxQuery;
    qCliValorvalor: TCurrencyField;
    tCli: TnxTable;
    tCliID: TAutoIncField;
    LMDSimplePanel1: TLMDSimplePanel;
    Image1: TImage;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    panAguarde: TLMDSimplePanel;
    cxLabel6: TcxLabel;
    tsVendas: TcxTabSheet;
    tME: TnxTable;
    tMEID: TAutoIncField;
    tMETotal: TCurrencyField;
    tMEDesconto: TCurrencyField;
    tMEPago: TCurrencyField;
    tMEDataHora: TDateTimeField;
    tMECancelado: TBooleanField;
    tMENomeProduto: TStringField;
    tMETotalF: TCurrencyField;
    tMEFunc: TStringField;
    pgVendas: TcxDBPivotGrid;
    dsME: TDataSource;
    pgVendasQuant: TcxDBPivotGridField;
    pgVendasNomeProduto: TcxDBPivotGridField;
    pgVendasTotalF: TcxDBPivotGridField;
    pgVendasCategoria: TcxDBPivotGridField;
    pgVendasFunc: TcxDBPivotGridField;
    tMECateg: TStringField;
    cplVendas: TcxPivotGridReportLink;
    tMENomeFunc: TStringField;
    tMEComissao: TCurrencyField;
    pgVendasComissao: TcxDBPivotGridField;
    tProd: TnxTable;
    tProdID: TAutoIncField;
    tProdNomeFornecedor: TStringField;
    tMEFornecedor: TStringField;
    pgVendasField1: TcxDBPivotGridField;
    tsVendasEstoque: TcxTabSheet;
    qVendas: TnxQuery;
    qVendastotal: TCurrencyField;
    qVendasdesconto: TCurrencyField;
    qVendasPago: TCurrencyField;
    tProdPreco: TCurrencyField;
    tProdPrecoAuto: TBooleanField;
    tProdMargem: TFloatField;
    tProdImagem: TGraphicField;
    tProdCustoUnitario: TCurrencyField;
    tProdAbaixoMin: TBooleanField;
    tProdAbaixoMinDesde: TDateTimeField;
    tProdComissaoPerc: TFloatField;
    tProdComissaoLucro: TBooleanField;
    tProdVendas_Quant: TFloatField;
    tProdVendas_Pago: TCurrencyField;
    tProdVendas_Desconto: TCurrencyField;
    qVendasTotalF: TCurrencyField;
    tProdVendas_TotalF: TCurrencyField;
    tProdPrecoTotal: TCurrencyField;
    tProdCustoTotal: TCurrencyField;
    tProdNaoControlaEstoque: TBooleanField;
    dsProd: TDataSource;
    gridProd: TcxGrid;
    TVprod: TcxGridDBTableView;
    TVprodID: TcxGridDBColumn;
    TVprodCodigo: TcxGridDBColumn;
    TVprodEstoqueAtual: TcxGridDBColumn;
    TVprodPreco: TcxGridDBColumn;
    TVprodCustoUnitario: TcxGridDBColumn;
    TVprodCustoTotal: TcxGridDBColumn;
    TVprodPrecoTotal: TcxGridDBColumn;
    TVprodCategoria: TcxGridDBColumn;
    TVprodUnid: TcxGridDBColumn;
    TVprodFornecedor: TcxGridDBColumn;
    TVprodEstoqueMin: TcxGridDBColumn;
    TVprodEstoqueMax: TcxGridDBColumn;
    TVprodAbaixoMin: TcxGridDBColumn;
    TVprodRepor: TcxGridDBColumn;
    glProd: TcxGridLevel;
    tvProdVendas: TcxGridDBColumn;
    tvProdDesc: TcxGridDBColumn;
    tvProdPago: TcxGridDBColumn;
    TVprodTotalF: TcxGridDBColumn;
    tvProdDescricao: TcxGridDBColumn;
    cplVendas2: TdxGridReportLink;
    qVendasComissao: TCurrencyField;
    tProdVendas_Comissao: TCurrencyField;
    TVprodComissao: TcxGridDBColumn;
    qCliValorcliente: TLongWordField;
    qCliValorquant: TLargeintField;
    qVendasproduto: TLongWordField;
    qVendasQuant: TFloatField;
    tProdFornecedor: TLongWordField;
    tProdEstoqueAtual: TFloatField;
    tProdPodeAlterarPreco: TBooleanField;
    tProdPermiteVendaFracionada: TBooleanField;
    tProdEstoqueMin: TFloatField;
    tProdEstoqueMax: TFloatField;
    tProdEstoqueRepor: TFloatField;
    tMETran: TLongWordField;
    tMEProduto: TLongWordField;
    tMEQuant: TFloatField;
    tMEUnitario: TCurrencyField;
    tMECustoU: TCurrencyField;
    tMEItem: TByteField;
    tMECliente: TLongWordField;
    tMECaixa: TIntegerField;
    tMETipoTran: TByteField;
    tCaixa: TnxTable;
    tCaixaID: TUnsignedAutoIncField;
    tCaixaAbertura: TDateTimeField;
    qME: TnxQuery;
    qMEID: TLongWordField;
    qMETran: TLongWordField;
    qMEProduto: TLongWordField;
    qMEQuant: TFloatField;
    qMEUnitario: TCurrencyField;
    qMETotal: TCurrencyField;
    qMECustoU: TCurrencyField;
    qMEItem: TByteField;
    qMEDesconto: TCurrencyField;
    qMEPago: TCurrencyField;
    qMEDataHora: TDateTimeField;
    qMEEntrada: TBooleanField;
    qMECancelado: TBooleanField;
    qMEAjustaCusto: TBooleanField;
    qMEEstoqueAnt: TFloatField;
    qMECliente: TLongWordField;
    qMECaixa: TIntegerField;
    qMECategoria: TStringField;
    qMEITran: TIntegerField;
    qMETipoTran: TByteField;
    qMEComissao: TCurrencyField;
    qMEComissaoPerc: TFloatField;
    qMEComissaoLucro: TBooleanField;
    qMENomeProduto: TStringField;
    qMENomeFunc: TStringField;
    qMEFunc: TStringField;
    qMETotalF: TCurrencyField;
    qMECateg: TStringField;
    qMEFornecedor: TStringField;
    qCliValortipo: TByteField;
    qCliValortroco: TCurrencyField;
    tProdEstoquePend: TFloatField;
    tProdEstoqueTot: TFloatField;
    tProdNCM: TStringField;
    tsComissao: TcxTabSheet;
    mtComissao: TkbmMemTable;
    mtComissaoUsername: TStringField;
    mtComissaoNome: TStringField;
    mtComissaoqtd_vendas: TLongWordField;
    mtComissaototal_vendas: TCurrencyField;
    mtComissaoqtd_dev: TLongWordField;
    mtComissaototal_dev: TCurrencyField;
    mtComissaocomissao_vendas: TCurrencyField;
    mtComissaocomissao_dev: TCurrencyField;
    mtComissaocomissao_final: TCurrencyField;
    dsComissao: TDataSource;
    qCom1: TnxQuery;
    qCom1qtd: TLargeintField;
    qCom1Total: TCurrencyField;
    qCom1Comissao: TCurrencyField;
    qCom2: TnxQuery;
    qCom2qtd: TLargeintField;
    qCom2Total: TCurrencyField;
    qCom2Comissao: TCurrencyField;
    cxStyle5: TcxStyle;
    LMDSimplePanel2: TLMDSimplePanel;
    grid_comissao: TcxGrid;
    TVcomissao: TcxGridDBTableView;
    TVcomissaoNome: TcxGridDBColumn;
    TVcomissaoqtd_vendas: TcxGridDBColumn;
    TVcomissaototal_vendas: TcxGridDBColumn;
    TVcomissaocomissao_vendas: TcxGridDBColumn;
    TVcomissaoqtd_dev: TcxGridDBColumn;
    TVcomissaototal_dev: TcxGridDBColumn;
    TVcomissaocomissao_dev: TcxGridDBColumn;
    TVcomissaocomissao_final: TcxGridDBColumn;
    glComissao: TcxGridLevel;
    LMDSimplePanel3: TLMDSimplePanel;
    cbDev: TcxCheckBox;
    qCom1vendedor: TStringField;
    qCom2vendedor: TStringField;
    tCliNome: TWideStringField;
    qHora: TnxQuery;
    qHoraHora: TByteField;
    qHoraQtd: TLargeintField;
    qHoraValor: TCurrencyField;
    dsHora: TDataSource;
    tsHora: TcxTabSheet;
    tvHora: TcxGridDBTableView;
    glHora: TcxGridLevel;
    gridHora: TcxGrid;
    tvHoraHora: TcxGridDBColumn;
    tvHoraQtd: TcxGridDBColumn;
    tvHoraValor: TcxGridDBColumn;
    tProdUID: TGuidField;
    tProdMarca: TGuidField;
    tProdCodigo: TWideStringField;
    tProdDescricao: TWideStringField;
    tProdUnid: TWideStringField;
    tProdObs: TWideMemoField;
    tProdCategoria: TWideStringField;
    procedure FrmBasePaiCreate(Sender: TObject);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cmGerarClick(Sender: TObject);
    procedure cmVoltarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cmVerGrafClick(Sender: TObject);
    procedure TVTempoCliTempoCustomDrawFooterCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure GridResize(Sender: TObject);
    procedure tMECalcFields(DataSet: TDataSet);
    procedure tMEFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cmImprimirClick(Sender: TObject);
    procedure cmExportarClick(Sender: TObject);
    procedure tProdCalcFields(DataSet: TDataSet);
    procedure FrmBasePaiDestroy(Sender: TObject);
    procedure qMECalcFields(DataSet: TDataSet);
    procedure qVendasCalcFields(DataSet: TDataSet);
    procedure cbDevClick(Sender: TObject);
  private
    { Private declarations }
    FDataI, FDataF : TDateTime;

    FCXRange : TncCaixas;
    
    function CalcCaixas: Boolean;

    procedure ProcessaRankingClientes;
    procedure ProcessaVendas;
    procedure ProcessaVendas2;
    procedure ProcessaComissao;
    procedure ProcessaHora;

    procedure UpdateVisComissao;
    

  public
    class function Descricao: String; override;

    function GetGrid: TcxGrid; override;

    procedure AjustaLayoutLargeButton(B : TdxBarLargeButton); override;
    
    { Public declarations }
  end;

var
  fbEst: TfbEst;
  FracaoTempoUsado : Integer = 15;
  SessoesTU : Integer = 0;
       
implementation

uses ncaFrmPri, ncClassesBase, ncaDM, cxExportPivotGridLink, ufmImagens,
  ncaStrings;

const
  sqlRankingCli = 
    'select cliente, tipo, sum(pago) as valor, sum(troco) as troco, count(id) as quant from tran '+
    'where %s and ((cancelado <> true) or (cancelado is null)) and ((Tipo=4) or (Tipo=8)) '+
    'group by cliente, tipo';

  sqlVendas = 
    'SELECT produto, SUM(quant) as Quant, Sum(total) as Total, Sum(desconto) as Desconto, Sum(pago) as Pago, Sum(comissao) as Comissao FROM movest '+
    'where %s and (cancelado<>true) and (TipoTran=4) '+
    'group by produto';

  sqlME = 
    'select * from movest where %s and (cancelado <> true) and (TipoTran=4)';

  sqlCom1 = 
    'select vendedor, count(*) as qtd, Sum(totliq) as Total, Sum(comissao) as Comissao from tran '+ 
    'where %s and (cancelado <> true) and (Tipo=4)'+
    'group by vendedor';

  sqlCom2 = 
    'select vendedor, count(*) as qtd, Sum(totliq) as Total, Sum(comissao) as Comissao from tran '+ 
    'where %s and (cancelado <> true) and (Tipo=18)'+
    'group by vendedor';

  sqlHora = 'select Hora, Count(*) as Qtd, Sum(TotLiq) as Valor FROM "Tran" '+
            'where (tipo=4) and (hora is not null) and (not Cancelado) and %s '+
            'group by Hora';
    
     
      
    

// START resource string wizard section
resourcestring
  SVerDados = 'Ver Dados';
  SVerGráfico = 'Ver Gráfico';
  SEstatísticasERelatórios = 'Estatísticas e Relatórios';
  SRankingDeClientesPorValorGastoNa = 'Ranking de clientes por valor gasto na loja';
  SSaibaComoForamAsVendas = 'Saiba como foram as vendas';
  S1Clientes = '1 - Clientes';
  S2ProdutosVendas = '2 - Produtos / Vendas';
  STotalDeVendasPorCategoriaProduto = 'Total de vendas por Categoria/Produto/Vendedor';

  SEstoqueVendas = '3 - Estoque e Vendas';
  SEstoqueVendasDescr = 'Total de vendas e estoque atual de produtos';

  SComissao = '4 - Relatório de Comissão por Vendedor';
  SComissaoDescr = 'Total de vendas e comissão por vendedor';

  SHora = '5 - Horário de Pico';
  SHoraDescr = 'Quantidade e Total de Vendas por Horário';
  
  SOutros = 'Outros';
  SCLIENTESSEMCADASTROAVULSO = '* CLIENTES SEM CADASTRO (AVULSO)';

  rsNaoHaCaixas = 'Não há caixas abertos dentro do período informado';
  rsCategoria = 'Categoria';

// END resource string wizard section


{$R *.dfm}

const
  idRankingClientes = 1;
  idVendas   = 2;
  idVendasEstoque = 3;
  idComissao = 4;
  idHora = 5;

procedure TfbEst.AjustaLayoutLargeButton(B: TdxBarLargeButton);
begin

end;

function TfbEst.CalcCaixas: Boolean;
begin
  tCaixa.Open;
  tCaixa.IndexName := 'IAbertura';
  tCaixa.SetRange([FDataI], [FDataF+1]);
  tCaixa.First;
  FCXRange.Clear;
  while not tCaixa.Eof do begin
    if FCXRange.Count=0 then begin
      FCXRange.DataI := FDataI;
      FCXRange.DataF := FDataF;
    end;
    FCXRange.AddCaixa(tCaixaID.Value);
    tCaixa.Next;
  end;
  FCXRange.Merge;
  Result := (FCXRange.Count>0);
end;

procedure TfbEst.cbDevClick(Sender: TObject);
begin
  inherited;
  ncaDM.saveFormOptionBool(Self, 'cbDev', cbDev.Checked);
  UpdateVisComissao;
end;

procedure TfbEst.cmExportarClick(Sender: TObject);
const
  Exts: Array[1..3] of String = ('xls', 'htm', 'txt');
begin
  if MTID.Value=idVendas then begin
    if Pos('.', dlgExp.FileName)>0 then
      dlgExp.FileName := Copy(dlgExp.FileName, 1, Pos('.', dlgExp.FileName)-1);

    if not (dlgExp.FilterIndex in [1..3]) then
      dlgExp.FilterIndex := 1;
  
    if dlgExp.Execute and (dlgExp.FileName <> '') then begin
      if Pos('.', dlgExp.FileName)=0 then
        dlgExp.FileName := dlgExp.FileName + '.' + Exts[dlgExp.FilterIndex];
      case dlgExp.FilterIndex of
        1: cxExportPivotGridToExcel(dlgExp.FileName, pgVendas);
        2: cxExportPivotGridToHtml(dlgExp.FileName, pgVendas);
        3: cxExportPivotGridToText(dlgExp.FileName, pgVendas);
      end;
    end;
  end else 
    inherited;
end;

procedure TfbEst.cmGerarClick(Sender: TObject);
begin
  inherited;
  FDataI := edDataI.Date;
  FDataF := edDataF.Date;

  if (MTID.Value<>5) and (not CalcCaixas) then begin
    Beep;
    ShowMessage(rsNaoHaCaixas);
    Exit;
  end;
  

  edDataI.Enabled := False;
  edDataF.Enabled := False;
  cmGerar.Enabled := False;
  panAguarde.Visible := True;
  tProd.Active := False;
  qVendas.Active := False;
  
  Timer1.Enabled := True;
end;

procedure TfbEst.cmImprimirClick(Sender: TObject);
begin
  inherited;
  case MTID.Value of
    idVendas : CP.Preview(True, cplVendas);
    idVendasEstoque : CP.Preview(True, cplVendas2)
  end;
end;

procedure TfbEst.cmVerGrafClick(Sender: TObject);
begin
  inherited;
  if cmVerGraf.LargeImageIndex=18 then begin
    cmVerGraf.LargeImageIndex := 19;
    cmVerGraf.Caption := SVerDados;
  end else begin
    cmVerGraf.LargeImageIndex := 18;
    cmVerGraf.Caption := SVerGráfico;
  end;
end;

procedure TfbEst.cmVoltarClick(Sender: TObject);
begin
  inherited;
  Paginas.ActivePageIndex := 0;
  edDataI.Enabled := True;
  edDataF.Enabled := True;
  cmGerar.Enabled := True;
  cmVoltar.Visible := ivNever;
  cmVerGraf.Visible := ivNever;
  cmImprimir.Visible := ivNever;
  cmExportar.Visible := ivNever;
end;

procedure TfbEst.TVTempoCliTempoCustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
var V: Variant;  
begin
  V := tvTempoCli.DataController.Summary.FooterSummaryValues[0];
  if V<>null then
  with AViewInfo do begin
    LookAndFeelPainter.DrawFooterCell(ACanvas, Bounds, AlignmentHorz,
      AlignmentVert, MultiLinePainting, MinutosToHoraStr(V), Params.Font, Params.TextColor, Params.Color,
      nil);
    ADone := True;
  end;
end;

procedure TfbEst.UpdateVisComissao;
begin
  TVcomissaoqtd_dev.visible := cbDev.Checked;
  TVcomissaototal_dev.visible := cbDev.Checked;
  TVcomissaocomissao_dev.visible := cbDev.Checked;
  TVcomissaocomissao_final.visible := cbDev.Checked;
end;

class function TfbEst.Descricao: String;
begin
  Result := SEstatísticasERelatórios;
end;

procedure TfbEst.FrmBasePaiCreate(Sender: TObject);
var 
  S: TStream;

procedure Add(aID: Integer; aTipo, aNome, aDescr: String);
begin
  MT.Append;
  MTTipo.Value := aTipo;
  MTID.Value := aID;
  MTNome.Value := aNome;
  MTDescr.Value := aDescr;
  MT.Post;
end;

begin
  inherited;
  FCXRange := TncCaixas.Create;
  tvHoraHora.Caption := rsHora;
  tvHoraQtd.Caption := rsQtd;
  tvHoraValor.Caption := rsValor;
  pgVendasComissao.Visible := gConfig.IsPremium;
  Paginas.HideTabs := True;
  Paginas.ActivePageIndex := 0;
  cmVoltar.Visible := ivNever;
  cmVerGraf.Visible := ivNever;
  MT.Open;
  TVprodCategoria.Caption := rsCategoria;
  TVTipo.GroupIndex := -1;
  TVTipo.Visible := False;
  TVTipo.VisibleForCustomization := False;
  tvtempoclisessoes.VisibleForCustomization := False;
  tvtempoclisessoes.Visible := False;
  Add(idRankingClientes, '',  S1Clientes, SRankingDeClientesPorValorGastoNa);
  Add(idVendas,          '',  S2ProdutosVendas, STotalDeVendasPorCategoriaProduto);
  Add(idVendasEstoque,   '',  SEstoqueVendas, SEstoqueVendasDescr);
  Add(idComissao,        '',  SComissao, SComissaoDescr);
  Add(idHora,            '',  SHora, SHoraDescr);
  TV.DataController.Groups.FullExpand;
  MT.First;
end;

procedure TfbEst.FrmBasePaiDestroy(Sender: TObject);
begin
  inherited;
  FCXRange.Free;
end;

function TfbEst.GetGrid: TcxGrid;
begin
  case Paginas.ActivePageIndex of
    idRankingClientes : Result := gridTempoCli;
    idVendasEstoque : Result := gridProd;
    idComissao : Result := grid_comissao;
    idHora : Result := gridHora;
  else
    Result := nil;
  end;
end;

procedure TfbEst.GridResize(Sender: TObject);
begin
  inherited;
  panAguarde.Left := ((Grid.Width-panAguarde.Width) div 2) + Grid.Left;
  panAguarde.Top := ((Grid.Height-panAguarde.Height) div 2) + Grid.Top;
end;

procedure TfbEst.ProcessaComissao;

procedure AchaFunc(aFunc: String);
var U: TncUsuario;
begin
  if mtComissao.Locate('Username', aFunc, []) then
    mtComissao.Edit
  else begin
    mtComissao.Append;
    mtComissaoUsername.Value := aFunc;

    U := Dados.Cm.Usuarios.PorUsername[aFunc];
    if U=nil then
      mtComissaoNome.Value := aFunc else
      mtComissaoNome.Value := U.Nome;
  end;
end;

begin
  dsComissao.Dataset := nil;
  try
    cbDev.Checked := ncaDM.getFormOptionBool(Self, 'cbDev', True);
    UpdateVisComissao;
  
    mtComissao.Active := False;
    mtComissao.Active := True;
    qCom1.Active := False;
    qCom1.SQL.Text := Format(sqlCom1, [FCXRange.SQL('CaixaPag')]);
    qCom1.Active := True;

    qCom2.Active := False;
    qCom2.SQL.Text := Format(sqlCom2, [FCXRange.SQL('CaixaPag')]);
    qCom2.Active := True;

    qCom1.First;
    while not qCom1.Eof do begin
      AchaFunc(qCom1Vendedor.value);
      mtComissaoqtd_vendas.Value := qCom1Qtd.Value;
      mtComissaototal_vendas.Value := qCom1Total.Value;
      mtComissaocomissao_Vendas.Value := qCom1Comissao.Value;
      mtComissaocomissao_final.Value := qCom1Comissao.Value;
      mtComissao.Post;
      qCom1.Next;
    end;

    qCom2.First;
    while not qCom2.Eof do begin
      AchaFunc(qCom2Vendedor.value);
      mtComissaoqtd_dev.Value := qCom2Qtd.Value;
      mtComissaototal_dev.Value := qCom2Total.Value;
      mtComissaocomissao_dev.Value := qCom2Comissao.Value;
      mtComissaocomissao_final.Value := mtComissaocomissao_vendas.Value + mtComissaocomissao_dev.Value;
      mtComissao.Post;
      qCom2.Next;
    end;

    mtComissao.First;
  finally
    dsComissao.Dataset := mtComissao;
  end;
end;

procedure TfbEst.ProcessaHora;
begin
  qHora.Active := False;
  qHora.ParamByName('DataI').Value := FDataI;
  qHora.ParamByName('DataF').Value := FDataF+1;
  qHora.Active := True;
  qHora.First;
end;

procedure TfbEst.ProcessaRankingClientes;
var s:string;
begin
  tCli.Active := True;
  
  dsTotCli.Dataset := nil;
  try
    mtTotCli.Active := False;
    mtTotCli.Active := True;

    
    qCliValor.Active := False;
    s := Format(sqlRankingCli, [FCXRange.SQL('CaixaPag')]);
    qCliValor.SQL.Text := S;
    
    qCliValor.Active := True;
    
    qCliValor.First;
    while not qCliValor.Eof do begin
      if mtTotCli.FindKey([qCliValorCliente.Value]) then 
        mtTotCli.Edit else
        mtTotCli.Insert;
      mtTotCliCliente.Value := qCliValorCliente.Value;
      mtTotCliValor.Value := mtTotCliValor.Value + qCliValorValor.Value - qCliValorTroco.Value;
      if qCliValorTipo.Value=trEstVenda then 
        mtTotCliQuant.Value := qCliValorQuant.Value;

      if mtTotCliNomeCli.Value='' then
      if mtTotCliCliente.Value=0 then
        mtTotCliNomeCli.Value := SCLIENTESSEMCADASTROAVULSO 
      else
        mtTotCliNomeCli.AsVariant := tCli.Lookup('ID', mtTotCliCliente.Value, 'Nome'); // do not localize
      
      mtTotCli.Post;
      
      qCliValor.Next;
    end;

    mtTotCli.First;
    
    
  finally
    dsTotCli.Dataset := mtTotCli;
  end;

end;

procedure TfbEst.ProcessaVendas;
begin
  dsME.DataSet := nil;
  try
    tProd.Active := True;
    qME.Active := False;
    qME.SQL.Text := Format(sqlME, [FCXRange.SQL]);
    qME.Active := True;
    pgVendasNomeProduto.ExpandAll;
    pgVendasFunc.ExpandAll;
    pgVendasCategoria.ExpandAll;
  finally
    dsME.Dataset := qME;
  end;
end;

procedure TfbEst.ProcessaVendas2;
begin
  dsProd.DataSet := nil;
  try
    tProd.Active := True;
    qVendas.Active := False;
    qVendas.SQL.Text := Format(sqlVendas, [FCXRange.SQL]);
    qVendas.Active := True;
  finally
    dsProd.Dataset := tProd;
  end;
end;

procedure TfbEst.qMECalcFields(DataSet: TDataSet);
begin
  inherited;
  qMETotalF.Value := qMETotal.Value - qMEDesconto.Value;
end;

procedure TfbEst.qVendasCalcFields(DataSet: TDataSet);
begin
  inherited;
  qVendasTotalF.Value := qVendasTotal.Value - qVendasDesconto.Value;
end;

procedure TfbEst.Timer1Timer(Sender: TObject);
begin
  inherited;
  Timer1.Enabled := False;

  try
    try
      case MTID.Value of
        idRankingClientes : ProcessaRankingClientes;
        idVendas : ProcessaVendas;
        idVendasEstoque : ProcessaVendas2;
        idComissao : ProcessaComissao;
        idHora : ProcessaHora;
      end;
      Paginas.ActivePageIndex := MTID.Value;
      cmVoltar.Visible := ivAlways;
      cmImprimir.Visible := ivAlways;
      cmExportar.Visible := ivAlways;
    except
      Paginas.ActivePageIndex := 0;
      Raise;
    end;
  finally
    panAguarde.Visible := False;
  end;
  
end;

procedure TfbEst.tMECalcFields(DataSet: TDataSet);
begin
  inherited;
  tMETotalF.Value := tMETotal.Value - tMEDesconto.Value;
end;

procedure TfbEst.tMEFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept := not tMECancelado.Value;
end;

procedure TfbEst.tProdCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not tProdNaoControlaEstoque.Value then begin
    tProdPrecoTotal.Value := tProdPreco.Value * tProdEstoqueAtual.Value;
    tProdCustoTotal.Value := tProdCustoUnitario.Value * tProdEstoqueAtual.Value;
  end;
  if qVendas.Active and qVendas.Locate('produto', tProdID.Value, []) then begin
    tProdVendas_Comissao.Value := qVendasComissao.Value;
    tProdVendas_Quant.Value := qVendasQuant.Value;
    tProdVendas_TotalF.Value := qVendasTotalF.Value;
    tProdVendas_Pago.Value := qVendasPago.Value;
  end;
end;

procedure TfbEst.TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  cmGerar.Enabled := AFocusedRecord.IsData;
end;

end.

