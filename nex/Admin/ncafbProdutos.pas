unit ncafbProdutos;
{
    ResourceString: Dario 10/03/13
}

interface

{$I NEX.inc}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmFormBase, cxGridCustomPopupMenu, cxGridPopupMenu, dxBar,
  dxBarExtItems, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxMaskEdit, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, nxdb, cxTextEdit,
  cxDBLookupComboBox, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, cxContainer, cxProgressBar, cxCheckBox, cxBarEditItem,
  cxImageComboBox, cxSpinEdit, cxLabel, StdCtrls, cxRadioGroup, Buttons,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, LMDControl, Menus, cxLookAndFeelPainters, cxButtons,
  cxLookAndFeels, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, cxNavigator, dxPScxPivotGridLnk, dxGDIPlusClasses,
  frxClass, frxDBSet, frxBarcode, LMDCustomScrollBox, LMDScrollBox, LMDSplt,
  kbmMemTable, PngImage, frxDesgn, dxBarBuiltInMenu, cxPC, cxCalendar;

type
  TfbProdutos = class(TFrmBase)
    Tab: TnxTable;
    TabPreco: TCurrencyField;
    TabImagem: TGraphicField;
    TabCustoUnitario: TCurrencyField;
    TabEstoqueFinal: TFloatField;
    dsTab: TDataSource;
    cmReprocessar: TdxBarButton;
    pmEstoque: TdxBarPopupMenu;
    TabPodeAlterarPreco: TBooleanField;
    TabNaoControlaEstoque: TBooleanField;
    PB: TcxProgressBar;
    TabID: TAutoIncField;
    TabPrecoTotal: TCurrencyField;
    TabCustoTotal: TCurrencyField;
    TabFidelidade: TBooleanField;
    TabFidPontos: TIntegerField;
    Timer2: TTimer;
    cmVendaAvulsa: TdxBarLargeButton;
    cmCompra: TdxBarLargeButton;
    TabAbaixoMin: TBooleanField;
    TabAbaixoMinDesde: TDateTimeField;
    TabNomeFor: TStringField;
    TabAtivo: TBooleanField;
    TabCadastroRapido: TBooleanField;
    TabPermiteVendaFracionada: TBooleanField;
    TabIncluidoEm: TDateTimeField;
    pmFerramentas: TPopupMenu;
    ReprocessarEstoque1: TMenuItem;
    TabPrecoAuto: TBooleanField;
    TabMargem: TFloatField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    BarMgrBar2: TdxBar;
    cmFerramentas: TdxBarSubItem;
    cmBusca: TdxBarControlContainerItem;
    cmObs: TdxBarButton;
    cmExibir: TdxBarSubItem;
    rgTodos: TdxBarButton;
    cmAbaixoMin: TdxBarButton;
    cmMostrarFin: TdxBarButton;
    cxStyle2: TcxStyle;
    tAux: TnxTable;
    cxStyle3: TcxStyle;
    TimerSelBusca: TTimer;
    TabComissaoPerc: TFloatField;
    TabComissaoLucro: TBooleanField;
    repEtq: TfrxReport;
    dbProd: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    cxStyle4: TcxStyle;
    cmEstoque: TdxBarLargeButton;
    cxStyle5: TcxStyle;
    mtEtq: TkbmMemTable;
    mtEtqID: TIntegerField;
    mtEtqProduto: TStringField;
    mtEtqQuant: TIntegerField;
    dsEtq: TDataSource;
    cmEtiqueta: TdxBarLargeButton;
    cxStyle6: TcxStyle;
    dbRef: TfrxDBDataset;
    repDesign: TfrxDesigner;
    repEtqCriar: TfrxReport;
    repEditar: TfrxReport;
    tEtqProd: TnxTable;
    mtImprimir: TkbmMemTable;
    mtImprimirID: TIntegerField;
    dsImprimir: TDataSource;
    cxStyle7: TcxStyle;
    cmEntrada: TdxBarButton;
    cmSaida: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    TabFornecedor: TLongWordField;
    TabEstoqueAtual: TFloatField;
    TabEstoqueMin: TFloatField;
    TabEstoqueMax: TFloatField;
    TabEstoqueRepor: TFloatField;
    cmZerarEstoque: TdxBarButton;
    dbConfig: TfrxDBDataset;
    TabEstoquePend: TFloatField;
    TabEstoqueTot: TFloatField;
    TabNCM: TStringField;
    TabNCMDescr: TStringField;
    TabNCM_Ex: TStringField;
    Tabbrtrib: TWordField;
    Paginas: TcxPageControl;
    tsProd: TcxTabSheet;
    panGrid: TLMDSplitterPanel;
    LMDSplitterPane1: TLMDSplitterPane;
    Grid: TcxGrid;
    TVprod: TcxGridDBTableView;
    TVDescr: TcxGridDBColumn;
    TVprodDescr: TcxGridDBColumn;
    TVprodCodigo: TcxGridDBColumn;
    tvProdEstoqueTot: TcxGridDBColumn;
    tvProdEstoquePend: TcxGridDBColumn;
    TVprodEstoqueAtual: TcxGridDBColumn;
    TVprodPreco: TcxGridDBColumn;
    TVprodMargemLucro: TcxGridDBColumn;
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
    TVprodFidelidade: TcxGridDBColumn;
    TVprodFidPontos: TcxGridDBColumn;
    TVprodObs: TcxGridDBColumn;
    TVprodNCM: TcxGridDBColumn;
    TVPrecoAuto: TcxGridDBColumn;
    GL: TcxGridLevel;
    LMDSimplePanel2: TLMDSimplePanel;
    panBusca2: TLMDSimplePanel;
    Image1: TImage;
    edBusca: TcxMaskEdit;
    lbLocalizar: TcxLabel;
    cbSuperBusca: TcxCheckBox;
    btnGerarEtiqueta: TcxButton;
    panEtq: TLMDSimplePanel;
    Shape1: TShape;
    lbMensagem: TcxLabel;
    btnFechar: TcxButton;
    spEtq: TLMDSplitterPane;
    LMDSimplePanel3: TLMDSimplePanel;
    gridEtq: TcxGrid;
    tvEtq: TcxGridDBTableView;
    qridEtqImg: TcxGridDBColumn;
    tvEtqProduto: TcxGridDBColumn;
    tvEtqQuant: TcxGridDBColumn;
    glEtq: TcxGridLevel;
    LMDSimplePanel1: TLMDSimplePanel;
    btnImprimirEtq: TcxButton;
    btnLimpaLista: TcxButton;
    bardocProd: TdxBarDockControl;
    Tabcest: TLongWordField;
    cmReajuste: TdxBarButton;
    TabNome_brtrib: TStringField;
    TVprodNomeTrib: TcxGridDBColumn;
    Tabtax_id: TLongWordField;
    TVseq: TcxGridDBColumn;
    cmTipoTran: TdxBarListItem;
    pmTipoTran: TdxBarPopupMenu;
    tEtqProdID: TUnsignedAutoIncField;
    tEtqProdPreco: TCurrencyField;
    tEtqProdPrecoAuto: TBooleanField;
    tEtqProdMargem: TFloatField;
    tEtqProdImagem: TGraphicField;
    tEtqProdFornecedor: TLongWordField;
    tEtqProdEstoqueAtual: TFloatField;
    tEtqProdEstoquePend: TFloatField;
    tEtqProdEstoqueTot: TFloatField;
    tEtqProdbrtrib: TWordField;
    tEtqProdCustoUnitario: TCurrencyField;
    tEtqProdPodeAlterarPreco: TBooleanField;
    tEtqProdPermiteVendaFracionada: TBooleanField;
    tEtqProdNaoControlaEstoque: TBooleanField;
    tEtqProdEstoqueMin: TFloatField;
    tEtqProdEstoqueMax: TFloatField;
    tEtqProdAbaixoMin: TBooleanField;
    tEtqProdAbaixoMinDesde: TDateTimeField;
    tEtqProdEstoqueRepor: TFloatField;
    tEtqProdComissaoPerc: TFloatField;
    tEtqProdComissaoLucro: TBooleanField;
    tEtqProdtax_id: TLongWordField;
    tEtqProdAtivo: TBooleanField;
    tEtqProdFidelidade: TBooleanField;
    tEtqProdFidPontos: TIntegerField;
    tEtqProdNCM: TStringField;
    tEtqProdNCM_Ex: TStringField;
    tEtqProdcest: TLongWordField;
    tEtqProdCadastroRapido: TBooleanField;
    tEtqProdIncluidoEm: TDateTimeField;
    tEtqProdPrecoComTaxa: TCurrencyField;
    TabmodST: TByteField;
    TabMVA: TnxMemoField;
    TabPauta: TnxMemoField;
    TabPesoBruto: TFloatField;
    TabPesoLiq: TFloatField;
    TabUID: TGuidField;
    TabAlteradoEm: TDateTimeField;
    TabAlteradoPor: TStringField;
    TVprodIncluidoEm: TcxGridDBColumn;
    TVprodAlteradoEm: TcxGridDBColumn;
    TVprodAlteradoPor: TcxGridDBColumn;
    TVprodPesoLiq: TcxGridDBColumn;
    TVprodpesoBruto: TcxGridDBColumn;
    TVprodCest: TcxGridDBColumn;
    TabMarca: TGuidField;
    TabCodigo: TWideStringField;
    TabDescricao: TWideStringField;
    TabUnid: TWideStringField;
    TabObs: TWideMemoField;
    TabCategoria: TWideStringField;
    TabRecVer: TLongWordField;
    tAuxCodigo: TWideStringField;
    TabNomeMarca: TWideStringField;
    TVprodMarca: TcxGridDBColumn;
    tEtqProdUID: TGuidField;
    tEtqProdMarca: TGuidField;
    tEtqProdCodigo: TWideStringField;
    tEtqProdDescricao: TWideStringField;
    tEtqProdUnid: TWideStringField;
    tEtqProdObs: TWideMemoField;
    tEtqProdCategoria: TWideStringField;
    tEtqProdPesoBruto: TFloatField;
    tEtqProdPesoLiq: TFloatField;
    tEtqProdmodST: TByteField;
    tEtqProdMVA: TnxMemoField;
    tEtqProdPauta: TnxMemoField;
    tEtqProdAlteradoEm: TDateTimeField;
    tEtqProdAlteradoPor: TStringField;
    tAux3: TnxTable;
    tAux3Codigo: TWideStringField;
    tAux3CodigoNum: TLongWordField;
    tAux2: TnxTable;
    tAux2Codigo2: TWideStringField;
    TabCodigoNum: TLongWordField;
    TabCodigo2: TWideStringField;
    TabCodigo2Num: TLongWordField;
    TVprodCodigo2: TcxGridDBColumn;
    procedure cmReprocessarClick(Sender: TObject);
    procedure cmNovoClick(Sender: TObject);
    procedure cmEditarClick(Sender: TObject);
    procedure cmApagarClick(Sender: TObject);
    procedure cmVendaAvulsaClick(Sender: TObject);
    procedure cmCompraClick(Sender: TObject);
    procedure cmEntradaClick(Sender: TObject);
    procedure cmSaidaClick(Sender: TObject);
    procedure beiMostrarFinClick(Sender: TObject);
    procedure TabCalcFields(DataSet: TDataSet);
    procedure edBuscaPropertiesChange(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure TVprodAbaixoMinCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVprodAbaixoMinGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVDescrGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure edBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ReprocessarEstoque1Click(Sender: TObject);
    procedure cmCfgClick(Sender: TObject);
    procedure TVprodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FrmBasePaiCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure edBuscaEnter(Sender: TObject);
    procedure cmObsClick(Sender: TObject);
    procedure cmAbaixoMinClick(Sender: TObject);
    procedure cmMostrarFinClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure TVprodCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure TVprodCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure TVprodColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure TimerSelBuscaTimer(Sender: TObject);
    procedure edBuscaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rgTodosClick(Sender: TObject);
    procedure cmEstoqueClick(Sender: TObject);
    procedure cmEtiquetaClick(Sender: TObject);
    procedure btnGerarEtiquetaClick(Sender: TObject);
    procedure TVprodDblClick(Sender: TObject);
    procedure btnLimpaListaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure qridEtqImgGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnImprimirEtqClick(Sender: TObject);
    procedure repEditarBeforePrint(Sender: TfrxReportComponent);
    procedure TVprodMargemLucroGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cbSuperBuscaClick(Sender: TObject);
    procedure cmZerarEstoqueClick(Sender: TObject);
    procedure TVprodEstoqueAtualCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cmReajusteClick(Sender: TObject);
    procedure edBuscaFocusChanged(Sender: TObject);
    procedure cmTipoTranClick(Sender: TObject);
    procedure tEtqProdCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    FAtualizando: Boolean;

    procedure processENTER;
    procedure ReprocessarEstoque;
    procedure _Buscar;
  public
    class function Descricao: String; override;
    function ECodigo(S: String): Boolean;
    function ECodigo2(S: String): Boolean;
    function ECodigoNum(S: String): Boolean;
    procedure AjustaLayoutLargeButton(B : TdxBarLargeButton); override;
    procedure AtualizaDireitos; override;
    procedure AjustaFin;

    function CreateReport(aArq: String): TfrxReport;
    
    procedure processKeyDown(Sender: TObject; var aKey: Word; Shift: TShiftState); override;

    procedure RefreshBotoes;

    procedure AddDatasets(R: TfrxReport);

    procedure FiltraDados; override;

    procedure AjustaExibir;

    procedure Personalizar(aArq: String; aBobina: Boolean);
    function ObtemParams(aArq: String): String;    
  
    { Public declarations }
  end;

var
  fbProdutos: TfbProdutos;

implementation

uses
  frxBarcod,
  ncClassesBase, 
  ncaDM, 
  ncaFrmPri,
  ncaFrmProduto, 
  ufmImagens,
  ncIDRecursos, ncDMServ, ncaFrmConfigAutoCad,
  ncaFrmConfigCodProdutoDuplicado, ncaFrmConfigQuickCad, ncaFrmOpcoes,
  ncaFrmConfigVendaProdSemSaldo, ncaFrmConfigCodBarBal, ncaFrmImprimeEtq,
  ncaFrmNovaEtiqueta, ncaFrmQuantEtq, ncaDMComp, ncaConfigRecibo,
  ncaFrmRecursoPRO, ncaFrmConfigPrecoAuto, ncaFrmConfig_Cupom, ncaFrmLeXML,
  ncaFrmReajustePreco, ncaFrmDevolucao, ncafbVendas2, ncaFrmAposVenda,
  ncTipoTran, ncaStrings, ncaFrmConfig_TamCodigoAuto, ncaFrmAjustaTamCod;

// START resource string wizard section
resourcestring
  SProdutos = 'Produtos';
  SSim = 'Sim';
  SSM = 's/m';
  SSemMínimo = 'Sem mínimo';
  SEssaOperaçãoAlteraOEstoqueAtualD = 'Essa operação altera o estoque atual dos produtos para o mesmo ';
  SValorContidoNoHistóricoDeTransaç = 'valor contido no histórico de transações de cada produto. Deseja realmente reprocessar o estoque?';
  SEstoqueReprocessadoComSucesso = 'Estoque reprocessado com sucesso!';
  SDesejaRealmenteApagarOProduto = 'Deseja realmente apagar o produto ';
  SOpçõesParaProdutos = 'Opções para Produtos';

  rsZerarEstoque1 = 'Deseja ZERAR o estoque atual de TODOS produtos?';
  rsZerarEstoque2 = 'Tem certeza? essa operação não tem como ser cancelada depois';

  rsTodosProdutos = 'Todos produtos';
  rsAbaixoMin = 'Estoque abaixo do mínimo';
  rsInfoFin = 'Informações financeiras';
  rsExibir = 'Exibir';
  rsImpProPremium = 'A impressão de etiquetas de produtos é um recurso exclusivo do plano PRO.';
  rsCategoria = 'Categoria';
  rsPrecoReaj = 'Preço reajustado com sucesso em %d produto(s)!';
  
// END resource string wizard section


{$R *.dfm}

{ TfbProdutos }

class function TfbProdutos.Descricao: String;
begin
  Result := SProdutos;
end;

procedure TfbProdutos.cmEstoqueClick(Sender: TObject);
var P: TPoint;
begin
  inherited;
  P := ItemLinkScreenPoint(cmEstoque.ClickItemLink);
  pmTipoTran.Popup(P.X, P.Y);
end;

procedure TfbProdutos.cmEtiquetaClick(Sender: TObject);
begin
  inherited;
  if cmEtiqueta.Down then
    spEtq.Visible := (mtEtq.RecordCount>0) else
    spEtq.Visible := False;
  btnGerarEtiqueta.Visible := cmEtiqueta.Down;
  TVProd.OptionsView.GroupByBox := not cmEtiqueta.Down;
  panEtq.Visible := cmEtiqueta.Down;
  lbMensagem.Width := 2000;
end;

function TfbProdutos.ECodigo(S: String): Boolean;
begin
  tAux.FindNearest([S]);
  Result := (not tAux.IsEmpty) and SameTextSemAcento(Copy(tAuxCodigo.Value, 1, Length(S)), S);

  if Result then begin
    Tab.IndexName := 'ICodigo';
    Tab.SetRange([S], [S+'zzzzzzz']);
  end;
end;

function TfbProdutos.ECodigo2(S: String): Boolean;
begin
  tAux2.FindNearest([S]);
  Result := (not tAux2.IsEmpty) and SameTextSemAcento(Copy(tAux2Codigo2.Value, 1, Length(S)), S);
  if Result then begin
    Tab.IndexName := 'ICodigo2';
    Tab.SetRange([S], [S+'zzzzzzz']);
  end;
end;

function TfbProdutos.ECodigoNum(S: String): Boolean;
var C: Cardinal;
begin
  C := StrToIntDef(S, 0);
  Result := (C>0) and tAux3.FindKey([C]);

  if Result then begin
    Tab.IndexName := 'ICodigoNum';
    Tab.SetRange([C], [C]);
  end;
end;

procedure TfbProdutos.cbSuperBuscaClick(Sender: TObject);
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

procedure TfbProdutos.cmAbaixoMinClick(Sender: TObject);
begin
  inherited;
  FiltraDados;
end;

procedure TfbProdutos.edBuscaEnter(Sender: TObject);
begin
  inherited;
  if not FAtualizando then
    TimerSelBusca.Enabled := True;
end;

procedure TfbProdutos.edBuscaFocusChanged(Sender: TObject);
begin
  inherited;
{  if edBusca.Focused then
    panBusca2.Bevel.BorderColor := clHotLight else
    panBusca2.Bevel.BorderColor := clSilver;}
  
end;

procedure TfbProdutos.edBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  processKeyDown(Sender, Key, Shift);
end;

procedure TfbProdutos.edBuscaMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  TimerSelBusca.Enabled := True;
end;

procedure TfbProdutos.edBuscaPropertiesChange(Sender: TObject);
begin
  inherited;
  if not Tab.Active then Exit;

  lbLocalizar.Visible := (edBusca.Text='');

  _Buscar;
end;

procedure TfbProdutos.Edit1Enter(Sender: TObject);
begin
  inherited;
  cmEntrada.Caption := 'ENTER';
end;

procedure TfbProdutos.Edit1Exit(Sender: TObject);
begin
  inherited;
  cmEntrada.Caption := 'EXIT';

end;

procedure TfbProdutos.FiltraDados;
begin
  inherited;
  AjustaFin;
  AjustaExibir;

  Tab.DisableControls;

  try
  
    if not Tab.Active then
      Tab.Open;

    if rgTodos.Down then begin
        Tab.IndexName := 'IDescricao';
        Tab.IndexName := 'ICodigo'; // do not localize
    
      if Trim(edBusca.Text)='' then begin
        Tab.IndexName := 'IDescricao';      
        Tab.CancelRange;
      end else begin
        if not ECodigo(edBusca.Text) then 
        if not ECodigo2(edBusca.Text) then
        if not ECodigoNum(edBusca.Text) then begin
          if cbSuperBusca.Checked then
            Tab.IndexName := 'ISuperBusca' else
            Tab.IndexName := 'IDescricao';
        
          Tab.SetRange([edBusca.Text], [edBusca.Text+'zzzzzzzzzzzzzzzzzzzzz']); // do not localize
        end;  
      end;        
    end else begin
      Tab.IndexName := 'IAbaixoMin';
      Tab.SetRange([True], [True]);
    end;
   
    TVprod.DataController.DataModeController.GridMode := not cmMostrarFin.Down;
  finally
    Tab.EnableControls;
  end;

  RefreshBotoes;  
end;

procedure TfbProdutos.FrmBasePaiCreate(Sender: TObject);
begin
  inherited;
  cbSuperBusca.Checked := getFormOptionBool(Self, 'superbusca', true);
  cbSuperBuscaClick(nil);
  
  PixelsPerInch := 96;
  cmObs.Down := Boolean(StrToIntDef(slCOnfig.Values['fbProdutos.btnObs.Down'], 1));
  FAtualizando := False;
  TVProd.Preview.Visible := cmObs.Down;

  TcxCurrencyEditProperties(TVProdPreco.Properties).DisplayFormat := gConfig.cxMaskUnitario;
  TcxCurrencyEditProperties(TVProdCustoUnitario.Properties).DisplayFormat := gConfig.cxMaskUnitario;
end;

procedure TfbProdutos.Image1Click(Sender: TObject);
begin
  inherited;
  edBusca.SetFocus;
end;

function TfbProdutos.ObtemParams(aArq: String): String;
begin
  Result := '';
  if not FileExists(aArq) then Exit;
  AddDatasets(repEditar);
  try
    repEditar.LoadFromFile(aArq);
  except
  end;
  repEditar.FileName := aArq;
  Result := ParamsUsedByRep(repEditar);
end;

procedure TfbProdutos.Personalizar(aArq: String; aBobina: Boolean);
var R : TfrxReport;  
begin
  if not FileExists(aArq) then begin
    R := repEtq;
    R.SaveToFile(aArq); 
  end;

  AddDatasets(repEditar);
  try
    repEditar.LoadFromFile(aArq);
  except
  end;
  repEditar.FileName := aArq;
  repEditar.DesignReport;    
end;

procedure TfbProdutos.processENTER;
begin
  if cmEtiqueta.Down then begin
    btnGerarEtiquetaClick(nil);
  end else begin
    cmEditarClick(nil);
  end;
end;

procedure TfbProdutos.processKeyDown(Sender: TObject; var aKey: Word; Shift: TShiftState);
var Msg: TMsg;  
begin
  case aKey of
    VK_INSERT : begin
      PeekKey(aKey);
      cmNovo.Click;
    end;
    VK_F3 : begin
      PeekKey(aKey);
      cmEntrada.Click;
    end;
    VK_F4 : begin
      PeekKey(aKey);
      if cmSaida.Enabled then cmSaida.Click;
    end;
    VK_F5 : begin
      PeekKey(aKey);
      if spEtq.Visible and (not mtEtq.isEmpty) then btnImprimirEtq.Click;
    end;
    VK_Return : begin 
      PeekKey(aKey);
      processENTER;
    end;
    VK_UP : if Sender=edBusca then begin
      PeekKey(aKey);
      if (Sender=edBusca) then Tab.Prior;
    end;
    VK_Down : if Sender=edBusca then begin
      PeekKey(aKey);
      if (Sender=edBusca) then Tab.Next;
    end;
    VK_ESCAPE : if Sender=edBusca then begin
      PeekKey(aKey);
      edBusca.Clear;
      edBuscaPropertiesChange(nil);
    end;
  end;
end;

procedure TfbProdutos.qridEtqImgGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[tvEtqProduto.Index];
  if not VarIsNull(V) then AText := V;
  
end;

procedure TfbProdutos.RefreshBotoes;
var TemDados: Boolean;
begin
  TemDados := not Tab.IsEmpty;
  cmEditar.Enabled := TemDados;
  cmSaida.Enabled := Permitido(daESTSaida) and TemDados;
  cmEntrada.Enabled := Permitido(daEstEntrada);
  cmCompra.Enabled := Permitido(daEstCompras) and TemDados;
  cmNovo.Enabled := Permitido(daProCadastrar);
  cmApagar.Enabled := Permitido(daProApagar) and TemDados;
  cmReprocessar.Enabled := cmSaida.Enabled; 
  cmVendaAvulsa.Enabled := Permitido(daAtenderClientes) and TemDados;
end;

function ContemLetras(S: String): Boolean;
var I: Integer;
begin
  Result := True;
  for i := 1 to Length(S) do 
    if not (S[I] in ['0'..'9']) then Exit;
  Result := False;
end;

procedure TfbProdutos.repEditarBeforePrint(Sender: TfrxReportComponent);
var S: String; L : Integer;
begin
  inherited;
  if not (Sender is TfrxMasterData) then
    Sender.Visible := (mtImprimirID.Value>0);

  if Sender is TfrxBarcodeView then begin
    if Sender.Name = 'BarCodeN' then Exit;
    S := tEtqProd.FieldByName('Codigo').AsString;
    L := Length(S);
    if contemLetras(S) then
      TfrxBarcodeView(Sender).BarType := bcCode39
    else
    if L=13 then
      TfrxBarcodeView(Sender).BarType := bcCodeEAN13
    else
    if (L mod 2) = 0 then
      TfrxBarCodeView(Sender).BarType := bcCode_2_5_interleaved
    else
      TfrxBarcodeView(Sender).BarType := bcCode39;
  end;
end;

procedure TfbProdutos.ReprocessarEstoque;
begin
    dsTab.DataSet := nil;
    PB.Visible := True;
    try
      Tab.First;
      PB.Properties.Max := Tab.RecordCount;
      PB.Position := 0;
      while not Tab.Eof do begin
        Application.ProcessMessages;
        PB.Position := PB.Position + 1;
        DM.AjustaSaldoPost(TabID.Value, 1, 0, 0, False);
        Tab.Next;
      end;
    finally
      PB.Visible := False;
      dsTab.DataSet := Tab;
    end;
end;

procedure TfbProdutos.ReprocessarEstoque1Click(Sender: TObject);
begin
  inherited;
  cmReprocessarClick(nil);
end;

procedure TfbProdutos.rgTodosClick(Sender: TObject);
begin
  inherited;
  FiltraDados;
end;

procedure TfbProdutos.TabCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not TabNaoControlaEstoque.Value then begin
    TabPrecoTotal.Value := TabPreco.Value * TabEstoqueAtual.Value;
    TabCustoTotal.Value := TabCustoUnitario.Value * TabEstoqueAtual.Value;
  end;
end;

procedure TfbProdutos.tEtqProdCalcFields(DataSet: TDataSet);
begin
  inherited;
  if tEtqProdTax_Id.Value>0 then
    tEtqProdPrecoComTaxa.Value := Dados.PrecoComTaxas(tEtqProdtax_Id.Value, tEtqProdPreco.Value) else
    tEtqProdPrecoComTaxa.Value := tEtqProdPreco.Value;
end;

procedure TfbProdutos.Timer2Timer(Sender: TObject);
begin
  inherited;
  Timer2.Enabled := False;
  if (FrmPri.FM.FormAtivo is TfbProdutos) and (Paginas.ActivePageIndex=0) then
    edBusca.SetFocus;
end;

procedure TfbProdutos.TimerSelBuscaTimer(Sender: TObject);
begin
  inherited;
  TimerSelBusca.Enabled := False;
  if edBusca.Focused then
    edBusca.SelectAll;
end;

procedure TfbProdutos.TVprodAbaixoMinCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  if SameText(AViewInfo.Text, SSim) then 
    ACanvas.Font.Style := [fsBold]
  else
  if SameText(AViewInfo.Text, SSM) then
    ACanvas.Font.Color := clSilver;  
end;

procedure TfbProdutos.TVprodAbaixoMinGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if SameText(SSemMínimo, AText) then
    AText := SSM;
end;

procedure TfbProdutos.TVprodColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  inherited;
  TVprod.DataController.DataModeController.GridMode := False;
end;

procedure TfbProdutos.TVprodCustomDrawColumnHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
begin
  FrmPri.CustomDrawGridHeader(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TfbProdutos.TVprodCustomDrawIndicatorCell(Sender: TcxGridTableView;
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

procedure TfbProdutos.TVprodDblClick(Sender: TObject);
begin
  inherited;
  processENTER;
end;

procedure TfbProdutos.TVprodEstoqueAtualCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Font.Style := [fsBold];
end;

procedure TfbProdutos.TVprodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  processKeyDown(Sender, Key, Shift);
end;

procedure TfbProdutos.TVprodMargemLucroGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var 
  P: Integer;  
  V: Variant;
begin
  inherited;
  V := ARecord.Values[TVprodMargemLucro.Index];
  if VarIsNull(V) then begin
    V := ARecord.Values[TVPrecoAuto.Index]; 
    if (not VarIsNull(V)) and (gConfig.Margem>0) then
      AText := '('+PercToStr(gConfig.Margem)+')';
  end else
  if AText='0' then begin
    AText := '';
  end else begin
    P := Pos(',', AText);
    if P=0 then P := Pos('.', AText);
    if P>0 then AText := Copy(AText, 1, P+1);
    if AText>'' then AText := AText + '%';
  end;
end;

procedure TfbProdutos._Buscar;
begin
  Tab.DisableControls;
  try
    if Trim(edBusca.Text)='' then begin
      Tab.IndexName := 'IDescricao';
      Tab.CancelRange;
    end else begin
      if not ECodigo(edBusca.Text) then 
      if not ECodigo2(edBusca.Text) then
      if not ECodigoNum(edBusca.Text) then begin
        if cbSuperBusca.Checked then
          Tab.IndexName := 'ISuperBusca' else
          Tab.IndexName := 'IDescricao';
        
        Tab.SetRange([edBusca.Text], [edBusca.Text+'zzzzzzzzzzzzzzzzzzzzz']); // do not localize
      end;  
      
      FAtualizando := True;
      try
        if not rgTodos.Down then begin
          rgTodos.Down := True;
          edBusca.Properties.AutoSelect := False;
          AjustaExibir;
          edBusca.SetFocus;
          edBusca.Properties.AutoSelect := True;
        end;
      finally
        FAtualizando := False;
      end;
    end;
  finally
    Tab.EnableControls;
  end;
end;

procedure TfbProdutos.TVDescrGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
{  if ARecord.Values[TVProdDescr.Index] <> null then
    AText := ARecord.Values[TVProdDescr.Index] else
    ATExt := '';}
end;

procedure TfbProdutos.cmReajusteClick(Sender: TObject);
var 
  aPerc: Double;
  aQtd : Cardinal;
begin
  aPerc := TFrmReajustePreco.Create(Self).ObtemPerc;
  if aPerc>0 then begin
    PB.Visible := True;
    try
      aQtd := 0;
      aPerc := 1 + (aPerc/100);
      PB.Properties.Max := Tab.RecordCount;
      PB.Position := 0;
      Application.ProcessMessages;
      Tab.First;
      while not Tab.Eof do begin
        if not TabPrecoAuto.Value then
        begin
          Tab.Edit;
          TabPreco.Value := DuasCasas(TabPreco.Value * aPerc); 
          Tab.Post;
          Inc(aQtd);
        end;
        Tab.Next;
        PB.Position := PB.Position + 1;
        Application.ProcessMessages;
      end;
      ShowMessage(Format(rsPrecoReaj, [aQtd]));
    finally
      PB.Visible := False;
    end;
  end;
end;

procedure TfbProdutos.cmReprocessarClick(Sender: TObject);
begin
  with Dados do
  if SimNao(SEssaOperaçãoAlteraOEstoqueAtualD+
            SValorContidoNoHistóricoDeTransaç)
  then begin
    ReprocessarEstoque;
    ShowMessage(SEstoqueReprocessadoComSucesso);
  end;
end;

procedure TfbProdutos.cmNovoClick(Sender: TObject);
begin
  inherited;
  //btnAchar.Down := False;
  //btnAchar.Enabled := False;
  edBusca.Text := '';
  TFrmProduto.Create(Self).Incluir(Tab);
  RefreshBotoes;
end;

procedure TfbProdutos.cmObsClick(Sender: TObject);
begin
  inherited;
  slConfig.Values['fbProdutos.btnObs.Down'] := IntToStr(Integer(cmObs.Down));
  SaveCOnfig;
  TVProd.Preview.Visible := cmObs.Down;
end;

procedure TfbProdutos.cmEditarClick(Sender: TObject);
begin
  inherited;
  if Tab.IsEmpty then Exit;

  TFrmProduto.Create(Self).Editar(Tab);

  if edBusca.Focused then edBusca.SelectAll;
end;

procedure TfbProdutos.beiMostrarFinClick(Sender: TObject);
begin
  inherited;
  FiltraDados;
end;

procedure TfbProdutos.btnGerarEtiquetaClick(Sender: TObject);
var Q: Integer;
begin
  inherited;
  Q := TFrmQuantEtq.Create(Self).ObtemQuant(TabDescricao.Value);
  if Q<1 then Exit;
  
  spEtq.Visible := True;
  mtEtq.Append;
  mtEtqID.Value := TabID.Value;
  mtEtqProduto.Value := TabDescricao.Value;
  mtEtqQuant.Value := Q;
  mtEtq.Post;
  edBusca.SetFocus;
  edBusca.SelectAll;
end;

procedure TfbProdutos.cmApagarClick(Sender: TObject);
begin
  inherited;
  if Tab.IsEmpty then Exit;

  if SimNao(SDesejaRealmenteApagarOProduto + TabDescricao.Value + '? ') then
    Tab.Delete;
end;
                                        
procedure TfbProdutos.cmVendaAvulsaClick(Sender: TObject);
begin
  Dados.NovoMovEst(trEstVenda, 0);
  Tab.Refresh;
end;

procedure TfbProdutos.cmZerarEstoqueClick(Sender: TObject);
begin
  inherited;
  if SimNaoH(rsZerarEstoque1, FrmPri.Handle, True) then
  if SimNaoH(rsZerarEstoque2, FrmPri.Handle, True) then begin
    ReprocessarEstoque;
    Dados.CM.ZerarEstoque;  
    Tab.Refresh;
  end;
end;

function TfbProdutos.CreateReport(aArq: String): TfrxReport;
begin
  Result := TfrxReport.Create(Self);
  try
    AddDatasets(Result);
    Result.LoadFromFile(aArq);
    Result.PrepareReport(True);
  except
    Result.Free;
    raise;
  end;
end;

function PrintFileName: String;
begin
  Result := ExtractFilePath(ParamStr(0))+'labelprint.frx';
end;

procedure TfbProdutos.btnImprimirEtqClick(Sender: TObject);
var 
  I, aPular : Integer;

function ObtemQtd: Integer;
begin
  Result := 0;
  mtEtq.DisableControls;
  try
    mtEtq.First;
    while not mtEtq.Eof do begin
      Result := Result + mtEtqQuant.Value;
      mtEtq.Next;
    end;
    mtEtq.First;
  finally
    mtEtq.EnableControls;
  end;
end;  

begin
  inherited;
  
  if mtEtq.IsEmpty then Exit;

  tEtqProd.Active := False;
  try
    mtImprimir.Active := False;
    mtImprimir.Active := True;
    mtEtq.First;
    while not mtEtq.Eof do begin
      for I := 1 to mtEtqQuant.Value do begin
        mtImprimir.Append;
        mtImprimirID.Value := mtEtqID.Value;
        mtImprimir.Post;
      end;
      mtEtq.Next;
    end;
    mtEtq.First;
  finally
    tEtqProd.Active := True;
  end;  
  
  if not TFrmImprimeEtq.Create(Self).Imprimir(ObtemQtd, aPular) then Exit;

  mtImprimir.First;
  while aPular>0 do begin
    mtImprimir.Insert;
    mtImprimir.Post;
    Dec(aPular);
  end;

  mtImprimir.First;

  if not gConfig.IsPremium then begin
    TFrmRecursoPro.Create(Self).Mostrar(rsImpProPremium, 'Etiquetas');
    Exit;
  end;
  
  mtImprimir.First;
  
  Dados.LoadReportFromDoc(repEditar, gRecibo.Modelo[tipodoc_etiqueta]);

  repEditar.PrintOptions.Printer := gRecibo.Impressora[tipodoc_etiqueta];
  repEditar.PrintOptions.ShowDialog := False;
  
  repEditar.PrepareReport;
  repEditar.Print;

  btnLimpaLista.Click;
end;

procedure TfbProdutos.btnLimpaListaClick(Sender: TObject);
begin
  inherited;
  mtEtq.EmptyTable;
  spEtq.Visible := False;
end;

procedure TfbProdutos.btnFecharClick(Sender: TObject);
begin
  inherited;
  cmEtiqueta.Down :=  False;
  cmEtiquetaClick(nil);
end;

procedure TfbProdutos.cmCfgClick(Sender: TObject);
var T: Byte;
begin
  inherited;
  
  T := gConfig.TamCodigoAuto;
  
  TFrmOpcoes.Create(Self).Editar(SOpçõesParaProdutos, [
    TFrmConfig_TamCodigoAuto,  
    TFrmConfigAutoCad, 
    TFrmConfigQuickCad, 
    TFrmConfigCodProdutoDuplicado, 
    TFrmConfigVendaProdSemSaldo, 
    TFrmConfigPrecoAuto,
    TFrmConfigCodBarBal], True); 

  if T<>gConfig.TamCodigoAuto then begin
    TFrmAjustaTamCod.Create(Self).ShowModal;
    Tab.Refresh;
  end;
end;

procedure TfbProdutos.cmCompraClick(Sender: TObject);
begin
  Dados.NovoMovEst(trEstCompra, 0);
  Tab.Refresh;
end;

procedure TfbProdutos.cmEntradaClick(Sender: TObject);
begin
  Dados.NovoMovEst(trEstEntrada, 0);
  Tab.Refresh;
end;

procedure TfbProdutos.cmMostrarFinClick(Sender: TObject);
begin
  inherited;
  FiltraDados;
end;

procedure TfbProdutos.cmSaidaClick(Sender: TObject);
begin
  Dados.NovoMovEst(trEstSaida, 0);
  Tab.Refresh;
end;

procedure TfbProdutos.cmTipoTranClick(Sender: TObject);
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
      end;
    end;  

    trEstDevolucao : TFrmDev.Create(Self).FazDev(G);
  else
    Dados.NovoMovEst(T, 0);
  end;
  Tab.Refresh;
end;

procedure TfbProdutos.AddDatasets(R: TfrxReport);

procedure AddDS(aDB: TfrxDBDataset);
begin
   if R.DataSets.Find(aDB)=nil then
     R.DataSets.Add(aDB);
end;

begin
  AddDS(dbRef);
  AddDS(dbProd);
  AddDS(dbConfig);
end;

procedure TfbProdutos.AjustaExibir;
begin
  cmExibir.Caption := rsExibir+': ';
  if rgTodos.Down then
    cmExibir.Caption := cmExibir.Caption + rsTodosProdutos else
    cmExibir.Caption := cmExibir.Caption + rsAbaixoMin;
end;

procedure TfbProdutos.AjustaFin;
begin
  TVProd.OptionsView.Footer := cmMostrarFin.Down;
  TVProdCustoUnitario.Visible := TVProd.OptionsView.Footer;
  TVProdCustoTotal.Visible := TVProd.OptionsView.Footer;
  TVProdPrecoTotal.Visible := TVProd.OptionsView.Footer;
  TVProdMargemLucro.Visible := cmMostrarFin.Down;
end;

procedure TfbProdutos.AjustaLayoutLargeButton(B: TdxBarLargeButton);
begin

end;

procedure TfbProdutos.AtualizaDireitos;
var I : Integer;
begin
  inherited;
  
  cmTipoTran.Items.Clear;
  with gListaTipoTran do
  for I := 0 to Count-1 do
    if Itens[I].Estoque and Itens[I].Visivel then 
      cmTipoTran.Items.AddObject(Itens[I].NomeTela, TObject(Itens[I].Tipo));
        
  TVprodCategoria.Caption := rsCategoria;
  if Dados.CM.UA.Admin then 
    cmReprocessar.Visible := ivAlways;
  cmZerarEstoque.Enabled := Dados.CM.UA.Admin;
  //btnReproc.Visible := Dados.CM.UA.Admin;
  RefreshBotoes;
  cmMostrarFin.Enabled := Permitido(daVerLucroProdutos);
  AjustaFin;
  if not cmMostrarFin.Enabled then
    cmMostrarFin.Down := False;

  tvProdEstoqueTot.Visible := TemPend;
  tvProdEstoquePend.Visible := TemPend;  
    
  if Tab.Active then
    Tab.Refresh;
end;
end.
