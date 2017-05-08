unit ncaFrmLeXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, kbmMemTable, cxImageComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxLabel, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, cxCheckBox, cxDBEdit, cxCurrencyEdit,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDHTMLLabel, ncDMdanfe_NFE,
  ncMyImage, Vcl.ImgList, cxGridInplaceEditForm, dxBar, LMDCustomScrollBox,
  LMDScrollBox, LMDSplt, nxdb, cxRadioGroup, LMDCustomButton, LMDButton,
  dxBarBuiltInMenu, cxPC, cxGroupBox, cxSpinEdit, Vcl.ExtCtrls, System.ImageList,
  XMLIntf, XMLDoc;

type

  TItemXML = class
  public
    nItem : Integer;
    sXML : String;
  end;

  TFrmLeXML = class(TForm)
    mt: TkbmMemTable;
    mtDescrXML: TStringField;
    mtUnidXML: TStringField;
    mtProduto: TIntegerField;
    ds: TDataSource;
    mtitem: TWordField;
    mtOK: TBooleanField;
    mtFatorUniv: TBooleanField;
    mtFator: TFloatField;
    mtNomeProd: TStringField;
    mtQuant: TFloatField;
    mtTotal: TCurrencyField;
    mtUnidProd: TStringField;
    mtNCM: TStringField;
    imgs: TcxImageList;
    panPri: TLMDSimplePanel;
    mtCodigo: TStringField;
    tConvUnid: TnxTable;
    tProdFor: TnxTable;
    tProdForUID: TGuidField;
    tProdForProduto: TLongWordField;
    tProdForFornecedor: TLongWordField;
    tProdForRef: TStringField;
    tProdForPos: TWordField;
    tConvUnidUID: TGuidField;
    tConvUnidA: TStringField;
    tConvUnidB: TStringField;
    tConvUnidFator: TFloatField;
    tConvUnidUniversal: TBooleanField;
    tConvUnidProduto: TLongWordField;
    tConvUnidMult: TBooleanField;
    mtProdutoSugerido: TIntegerField;
    mtNomeProdSug: TStringField;
    mtStatus: TByteField;
    pgPri: TcxPageControl;
    tsProd: TcxTabSheet;
    tsArq: TcxTabSheet;
    Splitter: TLMDSplitterPanel;
    spGrid: TLMDSplitterPane;
    lbTitItens: TcxLabel;
    grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVStatus: TcxGridDBColumn;
    TVDescrXML: TcxGridDBColumn;
    TVRootGroup: TcxGridInplaceEditFormGroup;
    GL: TcxGridLevel;
    spLC: TLMDSplitterPane;
    Paginas: TcxPageControl;
    tsSugestao: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    btnPesquisar: TLMDButton;
    btnNovo: TLMDButton;
    cxLabel3: TcxLabel;
    btnAceitarSug: TLMDButton;
    cxLabel2: TcxLabel;
    lbProdutoSugerido: TcxLabel;
    tsSemProd: TcxTabSheet;
    btnNovo2: TLMDButton;
    btnPesquisar2: TLMDButton;
    tsSemUnid: TcxTabSheet;
    LMDHTMLLabel2: TLMDHTMLLabel;
    LMDSimplePanel3: TLMDSimplePanel;
    btnAddUnid: TcxButton;
    tsConvUnid: TcxTabSheet;
    lbUnidProd: TLMDHTMLLabel;
    lbUnidXML: TLMDHTMLLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    panRegra: TLMDSimplePanel;
    LMDSimplePanel5: TLMDSimplePanel;
    tsOk: TcxTabSheet;
    LMDSimplePanel1: TLMDSimplePanel;
    LMDSimplePanel2: TLMDSimplePanel;
    cxLabel1: TcxLabel;
    tsFor: TcxTabSheet;
    lbSelModelo: TcxLabel;
    panBottom: TLMDSimplePanel;
    btnAvancar: TcxButton;
    btnVoltar: TcxButton;
    LMDSimplePanel6: TLMDSimplePanel;
    cxLabel6: TcxLabel;
    edArq: TcxTextEdit;
    LMDSimplePanel7: TLMDSimplePanel;
    btnSelArq: TcxButton;
    cxLabel8: TcxLabel;
    LMDSimplePanel8: TLMDSimplePanel;
    edFor: TcxTextEdit;
    panNewFor: TLMDSimplePanel;
    btnPesqFor: TcxButton;
    btnCadFor: TcxButton;
    OpenXML: TOpenDialog;
    lbErro: TcxLabel;
    TVOk: TcxGridDBColumn;
    lbDe: TcxLabel;
    edPara: TcxDBCurrencyEdit;
    lbPara: TcxLabel;
    lbInverter: TcxLabel;
    panImg: TLMDSimplePanel;
    imgStatus: TMyImage;
    LMDSimplePanel4: TLMDSimplePanel;
    edProduto: TcxDBButtonEdit;
    btnEditar: TcxButton;
    mtNumSeq: TAutoIncField;
    mtNewFator: TFloatField;
    mtNewFatorUniv: TBooleanField;
    lbPend: TcxLabel;
    mtFatorInvertido: TBooleanField;
    mtNewFatorInvertido: TBooleanField;
    cxLabel9: TcxLabel;
    edUniv: TcxDBCheckBox;
    tLinkXML: TnxTable;
    tLinkXMLUID: TGuidField;
    tLinkXMLProduto: TLongWordField;
    tLinkXMLFornecedor: TLongWordField;
    tLinkXMLLink: TStringField;
    tTran: TnxTable;
    tTranChaveNFE: TStringField;
    tTranCancelado: TBooleanField;
    tTranID: TUnsignedAutoIncField;
    tTranDataHora: TDateTimeField;
    tTranCaixa: TLongWordField;
    tsFrete: TcxTabSheet;
    cxLabel7: TcxLabel;
    panFrete: TLMDSimplePanel;
    edFrete: TcxCurrencyEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cbEntrada: TcxCheckBox;
    mtDadosFiscais: TMemoField;
    tDF: TnxTable;
    tDFID: TUnsignedAutoIncField;
    tDFUID: TGuidField;
    tDFChaveNFE: TStringField;
    tDFNomeFor: TStringField;
    tDFnItem: TWordField;
    tDFProduto: TLongWordField;
    tDFDataNF: TDateTimeField;
    tDFCNPJFor: TStringField;
    tDFQuant: TFloatField;
    tDFQuantOrig: TFloatField;
    tDFDadosFiscais: TnxMemoField;
    tDFCustoU: TCurrencyField;
    mtUnitario: TCurrencyField;
    Memo2: TMemo;
    Memo1: TMemo;
    mtnItem: TWordField;
    procedure FormCreate(Sender: TObject);
    procedure edProdutoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnPesquisarClick(Sender: TObject);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure mtCalcFields(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAceitarSugClick(Sender: TObject);
    procedure btnAddUnidClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesqForClick(Sender: TObject);
    procedure pgPriChange(Sender: TObject);
    procedure btnSelArqClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCadForClick(Sender: TObject);
    procedure TVDescrXMLCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnEditarClick(Sender: TObject);
    procedure lbInverterClick(Sender: TObject);

    function TamPara: Integer;
    procedure edParaEnter(Sender: TObject);
    procedure edParaPropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    dmDanfe : TdmDanfe_NFE;
    FFor    : Integer;
    FChave  : String;
    FLoaded : Boolean;
    FPend    : Integer;
    FOnFornecedor : TNotifyEvent;
    FOnConcluir : TNotifyEvent;
    FTotal : Currency;
    FpercFrete : Double;
    FIgnoraCompraAnt : Boolean;
    FXML : String;
    FListaXML : TList;
    { Private declarations }
    procedure LoadProd;
    procedure LoadDadosProd;
    procedure LoadConvUnid;
    procedure Update;
    procedure forceEdit;
    procedure PesquisarProd;
    procedure AlimentaDadosFiscais;

    procedure _SalvaConvUnid;

    procedure SalvaConvUnid;
    procedure SalvaProdFor;

    procedure RefreshPend;

    procedure Concluir;

    function LoadFor: Boolean;

    procedure LoadItens;
    procedure SetFor(const Value: Integer);

    function _GetItemXML(aItem: Integer): TItemXML;

    procedure SetItemXML(aItem: Integer; S: String);
    function GetItemXML(aItem: Integer): String;


  public
    function QuantFator: Double;

    function Frete: Currency;

    property XML: String read FXML;

    property Total: Currency
      read FTotal;

    property percFrete: Double
      read FpercFrete;

    property Chave: String
      read FChave;
    
    property OnFornecedor: TNotifyEvent
      read FOnFornecedor write FOnFornecedor;

    property OnConcluir: TNotifyEvent
      read FOnConcluir write FOnConcluir;
      
    property IDFor: Integer
      read FFor write SetFor;

    property IgnoraCompraAnt : Boolean
      read FIgnoraCompraAnt write FIgnoraCompraAnt;
    { Public declarations }
  end;

var
  FrmLeXML: TFrmLeXML;

implementation

{$R *.dfm}

uses ufmImagens, ncaFrmPri, ncaDM, ncaFrmProdPesq2, ncaFrmPesqFor,
  ncaFrmProduto, ncaFrmCadFornecedor, ncClassesBase;

{ TFrmLeXML }

const
  sLabelUnidXML  = 'Unidade no XML/NFe = <strong><FONT COLOR="#0080FF">%s</strong>';
  sLabelUnidProd = 'Unidade no Cadastro do Produto = <strong><FONT COLOR="#0080FF">%s</strong>';
  sUniv          = 'A conversão de %s para %s é sempre igual, para TODOS produtos.';

  psSugestao = 0;
  psSemProd  = 1;
  psSemUnid  = 2;
  psConvUnid = 3;
  psOk       = 4;

function SoDig(S: String): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    if S[I] in ['0'..'9'] then Result := Result + S[I];
end;
  

procedure TFrmLeXML.AlimentaDadosFiscais;
var 
  sl, xml : TStringList;
  i, p1, p2, p3, p4 :integer;
  sFieldName, sXmlOriginal, tagExtraida : String;

function ConverteUnid(V: Double): String;
begin
  V := V / QuantFator;
  Result := V.ToString;
end;

function ExtraiTagEspecifica (tagIni, tagFim :string; item :integer):string;
begin
  Memo1.Lines.Text := GetItemXML(item);
  sXmlOriginal := memo1.lines.Text;
  sFieldName := sXmlOriginal;

  P1 := Pos(tagIni, sFieldName);
  P2 := Pos(tagFim, sFieldName);
  P3 := Length(tagIni);
  P4 := Length(tagFim);

  if P1 > 0 then
  begin
    memo1.Lines.Clear;
    memo1.Lines.Text := Copy(sFieldName, P1, P2);
    sFieldName := memo1.lines.Text;
    P1 := Pos(tagIni, sFieldName);
    P2 := Pos(tagFim, sFieldName);

    Memo2.Lines.Clear;
    Memo2.Lines.Text := Copy(sFieldName, P3+1, P2-P4);
    tagExtraida := '';
    tagExtraida := Copy(sFieldName, P3+1, P2-P4);
  end;
  Result := tagExtraida;
end;

procedure ExtraiTags;
begin
  with dmDanfe do begin
    //Adiciona Tag Chave Nfe
    if not mtIDEchave_acesso.IsNull then
      sl.Values['ChaveNfe'] := soDig(mtIDEchave_acesso.AsString);

    if not mtDestCNPJ.IsNull then
      sl.Values['CNPJ_Emitente'] := mtDestCNPJ.Value;

    //Tags do cabeçalho do produto
    if not mtItemcProd.IsNull then
      sl.Values['cProd'] := mtItemcProd.AsString;
    if not mtItemcEAN.IsNull then
      sl.Values['cEAN'] := mtItemcEAN.AsString;
    if not mtItemxProd.IsNull then
      sl.Values['xProd'] := mtItemxProd.AsString;
    if not mtItemNCM.IsNull then
      sl.Values['NCM'] := mtItemNCM.AsString;
    if not mtItemCFOP.IsNull then
      sl.Values['CFOP'] := mtItemCFOP.AsString;
    if not mtItemuCom.IsNull then
      sl.Values['uCom'] := mtItemuCom.AsString;

    if edPara.Value <> mtItemqCom.Value then
      sl.Values['qComConv'] := FloatParaStr(mtItemqCom.Value * edPara.Value)
    else
      if not mtItemqCom.IsNull then
        sl.Values['qComConv'] := mtItemqCom.AsString;

    if not mtItemqCom.IsNull then
      sl.Values['qCom'] := mtItemqCom.AsString;

    if not mtItemvUnCom.IsNull then
      sl.Values['vUnCom'] := FloatParaStr(mtItemvUnCom.Value);
    if not mtItemvProd.IsNull then
      sl.Values['vProd'] := FloatParaStr(mtItemvProd.value);
    if not mtItemcEANTrib.IsNull then
      sl.Values['cEANTrib'] := mtItemcEANTrib.AsString;
    if not mtItemuTrib.IsNull then
      sl.Values['uTrib'] := mtItemuTrib.AsString;
    if not mtItemqTrib.IsNull then
      sl.Values['qTrib'] := FloatParaStr(mtItemqTrib.Value);
    if not mtItemvUnTrib.IsNull then
      sl.Values['vUnTrib'] := FloatParaStr(mtItemvUnTrib.Value);
    if not mtItemindTot.IsNull then
      sl.Values['indTot'] := mtItemindTot.asstring;

    //Tags do ICMS
    if not mtItemorig.IsNull then
      sl.Values['orig'] := mtItemorig.AsString;
    if not mtItemmodBC.IsNull then
      sl.Values['modBC'] := mtItemmodBC.AsString;
    if not mtItemICMS_CST.isNull then
      sl.Values['ICMS_CST'] := mtItemICMS_CST.AsString;
    if not mtItemCSOSN.IsNull then
      sl.Values['CSOSN'] := mtItemCSOSN.AsString;
    if not mtItemICMS_vBC.isNull  then
      sl.Values['ICMS_vBC'] := FloatParaStr(mtItemICMS_vBC.value);
    if not mtItempICMS.IsNull then
      sl.Values['pICMS'] := FloatParaStr(mtItempICMS.Value);
    if not mtItemvICMS.IsNull then
      sl.Values['vICMS'] := FloatParaStr(mtItemvICMS.Value);

    //Tags ICMS-ST
    if not mtItemmodBCST.IsNull then
      sl.Values['modBCST'] := mtItemmodBCST.AsString;
    if not mtItempMVAST.IsNull then
      sl.Values['pMVAST'] := FloatParaStr(mtItempMVAST.Value);
    if not mtItemvBCST.IsNull then
      sl.Values['vBCST'] := FloatParaStr(mtItemvBCST.Value);
    if not mtItempICMSST.IsNull then
      sl.Values['pICMSST'] := FloatParaStr(mtItempICMSST.Value);
    if not mtItemvICMSST.IsNull then
      sl.Values['vICMSST'] := FloatParaStr(mtItemvICMSST.Value);
    if not mtItemcEnq.IsNull then
      sl.Values['cEnq'] := mtItemcEnq.AsString;
    if not mtItemIPI_CST.isNull then
      sl.Values['IPI_CST'] := mtItemIPI_CST.AsString;
    if not mtItemvIPI.isNull then
      sl.Values['vIPI'] := FloatParaStr(mtItemvIPI.Value);
    if not mtItempIPI.isNull then
      sl.Values['pIPI'] := FloatParaStr(mtItempIPI.Value);
    if not mtItemIPI_vBC.isNull then
      sl.Values['IPI_vBC'] := FloatParaStr(mtItemIPI_vBC.Value);

    if not mtItemPIS_CST.IsNull then
      sl.Values['PIS_CST'] := mtItemPIS_CST.AsString;
    if not mtItemPIS_vBC.IsNull then
      sl.Values['PIS_vBC'] := FloatParaStr(mtItemPIS_vBC.value);
    if (not mtItemPIS_pPis.isNull) and (mtItemPIS_pPIS.Value > 0) then
      sl.values['pPIS'] := FloatParaStr(mtItemPIS_pPIS.Value);
    if (not mtItemPIS_vPis.isNull) and (mtItemPIS_vPis.Value > 0) then
      sl.values['vPIS'] := FloatParaStr(mtItemPIS_vPIS.Value);

    if not mtItemCOFINS_CST.IsNull then
      sl.Values['COFINS_CST'] := mtItemCOFINS_CST.AsString;
    if not mtItemCOFINS_vBC.IsNull then
      sl.Values['COFINS_vBC'] := FloatParaStr(mtItemCOFINS_vBC.Value);
    if (not mtItemCOFINS_pCofins.isNull) and (mtItemCOFINS_pCofins.Value > 0) then
      sl.values['pCofins'] := FloatParaStr(mtItemCOFINS_pCofins.Value);
    if (not mtItemCOFINS_vCofins.isNull) and (mtItemCOFINS_vCofins.Value > 0) then
      sl.values['vCofins'] := FloatParaStr(mtItemCOFINS_vCofins.Value);

    //Tags Frete e outros
    if not mtItemvFrete.isNull  then
      sl.values['vFrete'] := (mtItemvFrete.Value);
    if not mtItemvOutro.IsNull then
      sl.values['vOutro'] := (mtItemvOutro.value);
  end;
end;

begin
  // ---
  sl := TStringList.Create;
  try
    mt.First;
    dmDanfe.mtItem.First;  
    while not mt.Eof do begin
      sl.Clear;
      mt.Edit;
      ExtraiTags;
      mtDadosFiscais.Value := sl.Text;
      mt.Post;

      if tDF.FindKey([dmDanfe.mtIDEchave_acesso.Value, mtItem.Value]) then
        tDF.Edit else
        tDF.Append;
      tDFChaveNFE.Value := SoDig(dmDanfe.mtIDEchave_acesso.AsString);
      tDFCNPJFor.Value := SoDig(dmDanfe.mtEmitCNPJ.Value);
      tDFNomeFor.Value := dmDanfe.mtEmitxNome.Value;
      if SoDig(dmDanfe.mtIDEdata_emissao.AsString) <> '' then
        tDFDataNF.Value := StrToDateTime(dmDanfe.mtIDEdata_emissao.Value);
      tDFnItem.Value := mtItem.Value;
      tDFProduto.Value := mtProduto.Value;  
      tDFQuant.Value := QuantFator;
      tDFQuantOrig.Value := mtQuant.Value;
      tDFDadosFiscais.Value := mtDadosFiscais.Value;  
      tDFCustoU.Value := (mtTotal.Value / QuantFator);
      tDF.Post;  
      dmDanfe.mtItem.Next;
      mt.Next;
    end;
  finally
    sl.Free;
  end;
end;

procedure TFrmLeXML.btnAceitarSugClick(Sender: TObject);
begin
  forceEdit;
  mtProduto.Value := mtProdutoSugerido.Value;
  LoadDadosProd;
  LoadConvUnid;
  Update;
  while (not mt.Eof) and mtOk.Value do mt.Next;
end;

procedure TFrmLeXML.btnAddUnidClick(Sender: TObject);
begin
  with Dados do
  if tbPro.Locate('ID', mtProduto.Value, []) then begin
    TFrmProduto.Create(Self).Editar(dados.tbPro, True);
    forceEdit;
    LoadDadosProd;
    LoadConvUnid;
    Update;
  end;
end;

procedure TFrmLeXML.btnAvancarClick(Sender: TObject);
begin
  case pgPri.ActivePageIndex of
    0 : pgPri.ActivePage := tsFor;
    1 : pgPri.ActivePage := tsProd;  
    2 : pgPri.ActivePage := tsFrete;
    3 : Concluir;
  end;
end;

procedure TFrmLeXML.btnCadForClick(Sender: TObject);
var aID: Integer;
begin
  aID := TFrmCadFornecedor.Create(Self).Novo(Dados.tbCli, nil, dmDanfe);
  if aID>0 then begin
    IDFor := aID;
    pgPri.ActivePage := tsProd;
  end;  
end;

procedure TFrmLeXML.btnEditarClick(Sender: TObject);
begin
  with Dados do
  if tbPro.Locate('ID', mtProduto.Value, []) then begin
    TFrmProduto.Create(Self).Editar(dados.tbPro);
    forceEdit;
    LoadDadosProd;
    LoadConvUnid;
    Update;
  end;
end;

procedure TFrmLeXML.btnNovoClick(Sender: TObject);
begin
  dmDanfe.mtItem.Locate('nItem', mtnItem.Value, []);
  if TFrmProduto.Create(Self).Incluir(dados.tbPro, self.dmDanfe, FFor) then begin
    forceEdit;
    mtProduto.Value := dados.tbProID.Value;
    LoadDadosProd;
    LoadConvUnid;
    Update;
    while (not mt.Eof) and mtOk.Value do mt.Next;
  end;
end;

procedure TFrmLeXML.btnPesqForClick(Sender: TObject);
var 
  FPesq : TFrmPesqFor;
  FFidPontos : Double;
  S: String;
begin
  S := edFor.text;
  FFidPontos := 0;
  FPesq := gPesqForList.GetFrm;
  try
    if FPesq.Pesquisar(FFor, S, FFidPontos, dmDanfe) then begin
      IDFor := FFor; 
      if IDFor>0 then pgPri.ActivePage := tsProd;
    end;
  finally
    gPesqForList.ReleaseFrm(FPesq);
  end;
end;

procedure TFrmLeXML.btnPesquisarClick(Sender: TObject);
var Antes: Boolean;
begin
  Antes := mtOk.Value;
  PesquisarProd;
  if not Antes then
    while (not mt.Eof) and mtOk.Value do mt.Next;
end;

procedure TFrmLeXML.btnSelArqClick(Sender: TObject);
var sl : TStrings;
  bAchouNF  :boolean;

procedure extraiTag;
var
  i, p1, p2 :integer;
  sFieldName, sXmlOriginal : String;
begin
  sXmlOriginal := memo1.lines.Text;

  for i := 1 to 999 do
  begin
    sFieldName := sXmlOriginal;

    P1 := Pos('<det nItem="'+intToStr(i)+'">', sFieldName);
    P2 := Pos('</det>', sFieldName);
    if P1 > 0 then
    begin
      memo1.Lines.Clear;
      memo1.Lines.Text := Copy(sFieldName, P1, P2);
      sFieldName := memo1.lines.Text;
      P1 := Pos('<imposto>', sFieldName);
      P2 := Pos('</imposto>', sFieldName);

      Memo2.Lines.Clear;
      Memo2.Lines.Text := Copy(sFieldName, P1, P2-1);

      sFieldName := memo2.lines.Text;
      P1 := Pos('<imposto>', sFieldName);
      P2 := Pos('</det>', sFieldName);

      Memo2.Lines.Clear;
      Memo2.Lines.Text := Copy(sFieldName, P1, P2-1);
      //memo2.Lines.SaveToFile('C:\Meus Programas\Nex\Rodrigo\ItemX'+intToStr(i)+'.xml');
      SetItemXML(i, Memo2.Lines.Text);
    end;
  end;
end;


begin
  if not OpenXML.Execute(Handle) then Exit;
  bAchouNF := true;

  FTotal := 0;
  FpercFrete := 0;

  lbErro.Visible := False;

  FLoaded := False;
  btnAvancar.Enabled := False;

  edArq.Text := OpenXML.FileName;

  sl := TStringList.Create;
  try
    sl.LoadFromFile(OpenXML.FileName);

    FXML := sl.Text;
    memo1.Lines.Text := sl.Text;
    dmDanfe.LoadXML(sl.Text, 0, '', '', Dados.tbConfig, False);

    edFrete.Value := dmDanfe.mtTotalvFrete.Value;

    lbErro.Visible := (dmDanfe.mtItem.RecordCount=0) or (dmDanfe.mtItem.RecordCount=0);
    FChave := dmDanfe.mtIDEchNFe.Value;
    tTran.SetRange([FChave], [FChave]);
    tTran.First;
    if not IgnoraCompraAnt then
    while not tTran.Eof do begin
      if (not tTranCancelado.Value)  then
      begin
        raise Exception.Create('Essa NF-e/XML já foi lançada em '+
          FormatDateTime('dd/mm/yyyy hh:mm', tTranDataHora.Value) +
          ' transaçao n.'+tTranID.AsString +
          ' no caixa '+tTranCaixa.AsString+'.');
      end;
      tTran.Next;
    end;
    LoadFor;
    LoadItens;
    btnAvancar.Enabled := not lbErro.Visible;
    extraiTag;
    if btnAvancar.Enabled then pgPri.ActivePage := tsFor;
  finally
    sl.Free;
  end;  
end;

procedure TFrmLeXML.btnVoltarClick(Sender: TObject);
begin
  pgPri.ActivePageIndex := pgPri.ActivePageIndex-1;
end;

procedure TFrmLeXML.Concluir;
begin
  mt.DisableControls;
  try
    SalvaConvUnid;
    SalvaProdFor;

    FTotal := 0;
    FpercFrete := 0;

    mt.First;
    while not mt.Eof do begin
      FTotal := FTotal + mtTotal.Value;
      mt.Next;
    end;

    if Frete<0.01 then
      FpercFrete := 0 else
      FpercFrete := (Frete/FTotal);

    mt.First;  
    AlimentaDadosFiscais;
    mt.First;

    if Assigned(FOnConcluir) then FOnConcluir(Self);
    Close;
  finally
    mt.EnableControls;
  end;
end;

procedure TFrmLeXML.edParaEnter(Sender: TObject);
begin
  edPara.Width := TamPara;
end;

procedure TFrmLeXML.edParaPropertiesChange(Sender: TObject);
var Antes: Boolean;
begin
  edPara.Width := TamPara;
  if edPara.Focused then begin
    Antes := mtOk.Value;
    edPara.PostEditValue;
    if mtOK.Value then
      imgStatus.ImageIndex := 4 else
      imgStatus.ImageIndex := mtStatus.Value;
    if mtOk.Value<>Antes then RefreshPend;
  end;
end;

procedure TFrmLeXML.edProdutoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var Antes: Boolean;  
begin
  Antes := mtOk.Value;
  PesquisarProd;
  if not Antes then
    while (not mt.Eof) and mtOk.Value do mt.Next;
end;

procedure TFrmLeXML.forceEdit;
begin
  if (mt.State<>dsEdit) then mt.Edit;
end;

procedure TFrmLeXML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmLeXML.FormCreate(Sender: TObject);
begin
  FListaXML := TList.Create;
  FChave := '';
  FTotal := 0;
  FpercFrete := 0;
  FOnConcluir := nil;
  FOnFornecedor := nil;
  FIgnoraCompraAnt := False;
  FLoaded := False;
  FPend := 0;
  dmDanfe := TdmDanfe_NFE.Create(self);
  Paginas.Properties.HideTabs := True;
  FFor := 0;
  pgPri.Properties.HideTabs := True;
  pgPri.ActivePageIndex := 0;
  btnAvancar.Enabled := False;
end;                    

procedure TFrmLeXML.FormDestroy(Sender: TObject);
begin
  while FListaXML.Count>0 do begin
    TObject(FListaXML[0]).Free;
    FListaXML.Delete(0);
  end;
  FListaXML.Free;
end;

procedure TFrmLeXML.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_F3 : if Paginas.ActivePageIndex = 0 then btnAceitarSug.Click;
    Key_F4 : if Paginas.ActivePageIndex in [0, 1] then btnNovo.Click;
    Key_F5 : if Paginas.ActivePageIndex in [0, 1] then btnPesquisar.Click;
  end;
end;

procedure TFrmLeXML.FormShow(Sender: TObject);
begin
  Update;
end;

function TFrmLeXML.Frete: Currency;
begin
  Result := edFrete.Value;
end;

function TFrmLeXML._GetItemXML(aItem: Integer): TItemXML;
var I: Integer;
begin
  for I := 0 to FListaXML.Count-1 do
    if TItemXML(FListaXML[I]).nItem=aItem then begin
      Result := TItemXML(FListaXML[i]);
      Exit;
    end;

  Result := TItemXML.Create;
  FListaXML.Add(Result);
  Result.nItem := aItem;
  Result.sXML := '';
end;

function TFrmLeXML.GetItemXML(aItem: Integer): String;
begin
  Result := _GetItemXML(aItem).sXML;
end;

procedure TFrmLeXML.lbInverterClick(Sender: TObject);
begin
  forceEdit;
  mtnewFatorInvertido.Value := not mtNewFatorInvertido.Value;
  if (edPara.Value<>0) and (edPara.Value<>1) then
    edPara.Value := 1 / edPara.Value;
  mt.Post;
  Update;
end;

procedure TFrmLeXML.LoadConvUnid;
begin
  try
    if (mtProduto.Value=0) or (mtUnidXML.Value=mtUnidProd.Value) then Exit;
  
    if tConvUnid.FindKey([mtUnidXMl.Value, mtUnidProd.Value, False, mtProduto.Value]) then begin
      mtFator.Value := tConvUnidFator.Value;
      mtFatorUniv.Value := False;
      mtFatorInvertido.Value := False;
      mtNewFatorInvertido.Value := False;
      mtNewFator.Value := mtFator.Value;
      mtNewFatorUniv.Value := mtFatorUniv.Value;
    end else
    if tConvUnid.FindKey([mtUnidProd.Value, mtUnidXML.Value, False, mtProduto.Value]) then begin
      mtFator.Value := tConvUnidFator.Value;
      mtFatorUniv.Value := False;
      mtFatorInvertido.Value := True;
      mtNewFatorInvertido.Value := True;
      mtNewFator.Value := mtFator.Value;
      mtNewFatorUniv.Value := mtFatorUniv.Value;
    end else 
    if tConvUnid.FindKey([mtUnidXMl.Value, mtUnidProd.Value, True]) then begin
      mtFator.Value := tConvUnidFator.Value;
      mtFatorUniv.Value := True;
      mtFatorInvertido.Value := False;
      mtNewFatorInvertido.Value := False;
      mtNewFator.Value := mtFator.Value;
      mtNewFatorUniv.Value := mtFatorUniv.Value;
    end else
    if tConvUnid.FindKey([mtUnidProd.Value, mtUnidXML.Value, True]) then begin
      mtFator.Value := tConvUnidFator.Value;
      mtFatorUniv.Value := True;
      mtFatorInvertido.Value := True;
      mtNewFatorInvertido.Value := True;
      mtNewFator.Value := mtFator.Value;
      mtNewFatorUniv.Value := mtFatorUniv.Value;
    end else 
    begin
      mtFatorInvertido.Value := False;
      mtNewFatorInvertido.Value := False;
      mtFator.Clear;
      mtFatorUniv.Value := False;
      mtNewFator.Clear;
      mtNewFatorUniv.Value := False;
    end;
  finally
    if FLoaded then 
      RefreshPend;
  end;
end;

procedure TFrmLeXML.LoadDadosProd;
begin
  Dados.tbPro.IndexName := 'IID';
  if Dados.tbPro.FindKey([mtProduto.Value]) then begin
    MTUnidProd.Value := Dados.tbProUnid.Value;
    MTNomeProd.Value := dados.tbProDescricao.Value;
  end;
end;

function TFrmLeXML.LoadFor: Boolean;
begin
  with Dados, dmDanfe do begin
    if tbCli.Locate('cpf', mtEmitCNPJ.Value, []) then 
      IDFor := tbCliID.Value else
      IDFor := 0;
    Result := (IDFor>0);  
  end;
end;

procedure TFrmLeXML.LoadItens;
var I: Integer;
begin
  with dmDanfe, dados do begin
    mt.Active := False;
    mt.Active := True;
    dmDanfe.mtItem.First;
    I := 0;
    while not dmDanfe.mtItem.Eof do begin
      mt.Append;
      Inc(i);
      self.mtitem.Value := I;
      mtDescrXML.Value := mtItemxProd.Value;
      mtCodigo.Value := mtItemCodigo.Value;
      mtNCM.Value := mtItemNCM.Value;
      mtnItem.Value := mtItemnItem.Value;
      mtQuant.Value := mtItemqCom.Value;
      mtUnidXML.Value := mtItemuCom.Value;
      mtOk.Value := False;
      self.mtTotal.Value := mtItemvProd.Value + mtItemvICMSST.Value + mtItemvIPI.Value - mtItemvDesc.Value;
      LoadProd;
      mt.Post;
      dmDanfe.mtItem.Next;
    end;
    mt.First;
  end;
  FLoaded := True;
  RefreshPend;
  Update;
end;

procedure TFrmLeXML.LoadProd;
begin
  Dados.tbPro.IndexName := 'IID';
  with Dados do
  if tLinkXML.FindKey([FFor, mtCodigo.Value]) and tbPro.FindKey([tLinkXMLProduto.Value]) then begin
    MTProduto.Value := Dados.tbProID.Value;
    MTUnidProd.Value := Dados.tbProUnid.Value;
    MTNomeProd.Value := dados.tbProDescricao.Value;
  end else begin
    tProdFor.IndexName := 'IForRef';  
    tbPro.IndexName := 'ICodigo';
    if (tProdFor.FindKey([FFor, mtCodigo.Value]) and tbPro.Locate('ID', tProdForProduto.Value, [])) or 
      tbPro.FindKey([mtCodigo.Value]) then 
    begin
      MTProdutoSugerido.Value := Dados.tbProID.Value;
      MTNomeProdSug.Value := Dados.tbProDescricao.Value;
    end;  
  end;
  LoadConvUnid;
end;

procedure TFrmLeXML.mtCalcFields(DataSet: TDataSet);
begin
  mtOk.Value := (mtProduto.Value>0) and (
                SameText(Trim(mtUnidXML.Value), Trim(mtUnidProd.Value)) or
                (mtNewFator.Value>0));

  if mtProduto.Value>0 then begin
    if Trim(mtUnidProd.Value)='' then
      mtStatus.Value := psSemUnid
    else
    if mtOk.Value then
      mtStatus.Value := psOk
    else
      mtStatus.Value := psConvUnid;
  end else begin
    if mtProdutoSugerido.Value=0 then
      mtStatus.Value := psSemProd else
      mtStatus.Value := psSugestao;
  end;
  mtOk.Value := (mtProduto.Value>0) and (
                SameText(Trim(mtUnidXML.Value), Trim(mtUnidProd.Value)) or
                (mtNewFator.Value>0));
end;

procedure TFrmLeXML.PesquisarProd;
var
 FPesq: TFrmProdPesq2;
 P, PAnt : Cardinal;
 U, UAnt : String;
 Ok : Boolean; 
begin
  FPesq := gProdPesq2List.GetFrm;
  with Dados do
  try
    P := mtProduto.Value;
    PAnt := P;
    UAnt := mtUnidProd.Value;
    U := UAnt;
    Ok := FPesq.Pesquisar(P);
    if Ok then begin
      tbPro.IndexName := 'IID';
      if (P>0) then begin
        tbPro.FindKey([mtProduto.Value]);
        U := tbProUnid.Value;
      end;
      if (P<>PAnt) or (U<>UAnt) then begin
        forceEdit;
        mtProduto.Value := P;
        LoadDadosProd;
        LoadConvUnid;
        Update;
      end;
    end;
  finally
    gProdPesq2List.ReleaseFrm(FPesq);
  end;
end;

procedure TFrmLeXML.pgPriChange(Sender: TObject);
begin
  btnVoltar.Enabled := (pgPri.ActivePageIndex>0);
  case pgPri.ActivePageIndex of
    0 : btnAvancar.Enabled := FLoaded;
    1 : btnAvancar.Enabled := (FFor>0);
    2 : btnAvancar.Enabled := (FPend=0);
    3 : begin
      btnAvancar.Enabled := (FPend=0);
      edFrete.SetFocus;
    end;
  end;

  if pgPri.ActivePageIndex=3 then
    btnAvancar.Caption := 'Concluir!' else
    btnAvancar.Caption := 'Avançar';
end;

function TFrmLeXML.QuantFator: Double;
begin
  if SameText(Trim(mtUnidXML.Value), Trim(mtUnidProd.Value)) then
    Result := mtQuant.Value 
  else
  if mtNewFatorInvertido.Value then
    Result := mtQuant.Value / mtNewFator.Value else
    Result := mtQuant.Value * mtNewFator.Value;
end;

procedure TFrmLeXML.RefreshPend;
var SaveItem: Integer;
begin
  SaveItem := mtItem.Value;
  mt.DisableControls;
  try
    FPend := mt.RecordCount;
    mt.First;
    while not mt.Eof do begin
      if mtOK.Value then FPend := FPend - 1;
      mt.Next;
    end;
  finally
    mt.Locate('item', saveitem, []);
    mt.EnableControls;
  end;

  if FPend>0 then begin
    if FPend>1 then
      lbPend.Caption := IntToStr(FPend) + ' itens pendentes'
    else
    if mt.RecordCount>1 then
      lbPend.Caption := 'Quase lá! Apenas 1 item pendente :-)' else
      lbPend.Caption := '1 item pendente';
      
    lbPend.Style.TextColor := clRed;  
    if pgPri.ActivePage=tsProd then
      btnAvancar.Enabled := False;
  end else begin
    lbPend.Caption := 'Parabéns! Agora só falta clicar em concluir.';
    lbPend.Style.TextColor := clGreen;
    if pgPri.ActivePage=tsProd then
      btnAvancar.Enabled := True;
  end;
end;

procedure TFrmLeXML.SalvaConvUnid;
begin
  mt.First;
  while not mt.Eof do begin
    if not SameText(Trim(mtUnidXML.Value), Trim(mtUnidProd.Value)) then
      _SalvaConvUnid;
    mt.Next;
  end;
end;

procedure TFrmLeXML.SalvaProdFor;
var P : Integer;
begin
  mt.First;
  while not mt.Eof do begin
    if tLinkXML.FindKey([FFor, mtCodigo.Value]) then 
      tLinkXML.Edit else
      tLinkXML.Append;
    tLinkXMLProduto.Value := mtProduto.Value;
    tLinkXMLFornecedor.Value := FFor;
    tLinkXMLLink.Value := mtCodigo.Value;   
    tLinkXML.Post;
    
    tProdFor.IndexName := 'IProdFor';
    if not tProdFor.FindKey([mtProduto.Value, FFor]) then begin
      tProdFor.IndexName := 'IProdPos';
      tProdFor.SetRange([mtProduto.Value], [mtProduto.Value]);
      try
        tProdFor.Last;
        P := tProdForPos.Value + 1;
        tProdFor.Append;
        tProdForProduto.Value := mtProduto.Value;
        tProdForFornecedor.Value := FFor;
        tProdForRef.Value := mtCodigo.Value;
        tProdForPos.Value := P;
        tProdFor.Post;
      finally
        tProdFor.CancelRange;
      end;
    end;
    
    mt.Next;
  end;
end;

procedure TFrmLeXML.SetFor(const Value: Integer);
begin
  FFor := Value;
  with Dados do
  if FFor=0 then begin
    edFor.Text := '';
    panNewFor.Visible := True;
  end else begin
    tbCli.Locate('ID', FFor, []);
    edFor.Text := tbCliNome.Value;
    panNewFor.Visible := False;
  end;
  if pgPri.ActivePage=tsFor then
    btnAvancar.Enabled := (FFor>0);
  if Assigned(FOnFornecedor) then FOnFornecedor(Self);
end;

procedure TFrmLeXML.SetItemXML(aItem: Integer; S: String);
begin
  _GetItemXML(aItem).sXML := S;
end;

function TFrmLeXML.TamPara: Integer;
begin
  Result := cxtextWidth(edPara.Style.Font, edPara.EditingText)+20;
  if Result<50 then Result := 50;
end;

procedure TFrmLeXML.TVDescrXMLCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var V: Variant;  
begin
  V := AViewInfo.GridRecord.Values[TVOK.Index];
  if (not VarIsNull(V)) and (V=True) then begin
    ACanvas.Font.Name := 'Segoe UI';
    ACanvas.Font.Style := [];
    if not AViewInfo.Selected then
      ACanvas.Font.Color := clGray;
  end;
end;

procedure TFrmLeXML.TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  Update;
end;

function UnidIgual(S: String): String;
begin
  S := Trim(S);
  if (S>'') and (S[1] in ['0'..'9']) then
    Result := S + ' = ' else
    Result := '1 '+S+' = ';
end;

procedure TFrmLeXML.Update;
begin
  if not FLoaded then Exit;
  
  if mtOK.Value then
    imgStatus.ImageIndex := 4 else
    imgStatus.ImageIndex := mtStatus.Value;
    
  if mtProduto.Value=0 then begin
    if mtProdutoSugerido.Value>0 then
      Paginas.ActivePage := tsSugestao else
      Paginas.ActivePage := tsSemProd;
  end else
  if Trim(mtUnidProd.Value)='' then
    Paginas.ActivePage := tsSemUnid 
  else
  if not SameText(Trim(mtUnidXML.Value), Trim(mtUnidProd.Value)) then
    Paginas.ActivePage := tsConvUnid
  else
    Paginas.ActivePage := tsOk;
  lbProdutoSugerido.Caption := mtNomeProdSug.Value;  
  lbUnidXML.Caption := Format(sLabelUnidXML, [mtUnidXMl.Value]);
  lbUnidProd.Caption := Format(sLabelUnidProd, [mtUnidProd.Value]);
  edUniv.Caption := Format(sUniv, [mtUnidXML.Value, mtUnidProd.Value]);
  btnEditar.visible := (mtProduto.Value>0);

  if mtNewFatorInvertido.Value then begin
    lbDe.Caption := UnidIgual(mtUnidProd.Value);
    lbPara.Caption := mtUnidXML.Value;
  end else begin
    lbDe.Caption := UnidIgual(mtUnidXML.Value);
    lbPara.Caption := mtUnidProd.Value;
  end;
end;

procedure TFrmLeXML._SalvaConvUnid;
var 
  A, B : String;
  Achou : Boolean;
begin
  if SameText(Trim(mtUnidXML.Value), Trim(mtUnidProd.Value)) then Exit;
  if (mtFator.Value=mtNewFator.Value) and (mtFatorInvertido.Value=mtNewFatorInvertido.Value) and (mtFatorUniv.Value=mtNewFatorUniv.Value) then Exit;
  Achou := False;
  if not mtFator.IsNull then begin
    if mtFatorInvertido.Value then begin
      A := mtUnidProd.Value;
      B := mtUnidXML.Value;
    end else begin
      A := mtUnidXML.Value;
      B := mtUnidProd.Value;
    end;
    if mtFatorUniv.Value then 
      Achou := tConvUnid.FindKey([A, B, True]) else
      Achou := tConvUnid.FindKey([A, B, False, mtProduto.Value]);
  end;
  if Achou then
    tConvUnid.Edit else
    tConvUnid.Append;

  if mtNewFatorInvertido.Value then begin
    A := mtUnidProd.Value;
    B := mtUnidXML.Value;
  end else begin
    A := mtUnidXML.Value;
    B := mtUnidProd.Value;
  end;
        
  tConvUnidA.Value := A;
  tConvUnidB.Value := B;
  tConvUnidUniversal.Value := mtNewFatorUniv.Value;
  if mtNewFatorUniv.Value then
    tConvUnidProduto.Clear else
    tConvUnidProduto.Value := mtProduto.Value;
  tConvUnidFator.Value := mtNewFator.Value;
  tConvUnid.Post;
end;
end.
