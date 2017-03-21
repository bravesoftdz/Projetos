unit ncaPanVendaProd2;

interface

{$I NEX.INC}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ncaPanVendaProdBase, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, cxPCdxBarPopupMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Menus,
  DB, nxdb, StdCtrls, cxButtons, cxLabel, cxCurrencyEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxPC, cxRadioGroup, LMDPNGImage, ExtCtrls, cxButtonEdit, LMDBaseControl,
  LMDBaseGraphicControl, SpTBXFormPopupMenu, LMDBaseLabel, LMDCustomLabel, 
  ncaFrmProdPesq, 
  LMDLabel, cxSpinEdit, ComCtrls, LMDCustomComponent, ncClassesBase,
  ImgList, ncMyImage, PngImage, cxCheckBox, frxClass, System.ImageList;

type
  TGetFornecedor = function : Cardinal of object;
  TSetFornecedor = procedure (aFornecedor: Cardinal) of object;

  TFrmPanVendaProd2 = class(TFrmPanVendaProdBase)
    panInner: TLMDSimplePanel;
    panBuscaTop: TLMDSimplePanel;
    panProd: TLMDSimplePanel;
    tPro: TnxTable;
    tProID: TAutoIncField;
    tProPreco: TCurrencyField;
    tProPodeAlterarPreco: TBooleanField;
    tProPermiteVendaFracionada: TBooleanField;
    tProCustoUnitario: TCurrencyField;
    tProCadastroRapido: TBooleanField;
    tProImagem: TGraphicField;
    tProNaoControlaEstoque: TBooleanField;
    tProAbaixoMin: TBooleanField;
    tProAbaixoMinDesde: TDateTimeField;
    tProAtivo: TBooleanField;
    tProIncluidoEm: TDateTimeField;
    DataSource1: TDataSource;
    tCodR: TnxTable;
    popFrm: TSpTBXFormPopupMenu;
    TimerPop: TTimer;
    TimerSelectAllProd: TTimer;
    TimerFocoProd: TTimer;
    panInner2: TLMDSimplePanel;
    panQtd: TLMDSimplePanel;
    edQtd: TcxCurrencyEdit;
    btnLancar: TcxButton;
    panValor: TLMDSimplePanel;
    lbTotal: TcxLabel;
    lbSize: TcxLabel;
    TimerClosePesq: TTimer;
    imgsPin: TcxImageList;
    cxLabel1: TcxLabel;
    panEdProd: TLMDSimplePanel;
    cxLabel3: TcxLabel;
    panPreco: TLMDSimplePanel;
    lbPreco: TcxLabel;
    edUnit: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    lbUnidade: TcxLabel;
    TimerAutoPop: TTimer;
    panFundoProd: TLMDSimplePanel;
    edProd: TcxButtonEdit;
    imgBarcodeScan: TImage;
    lbDigiteProduto: TcxLabel;
    panConfig: TLMDSimplePanel;
    imgConfigOrdem: TMyImage;
    ilConfig: TcxImageList;
    tProPrecoAuto: TBooleanField;
    tProMargem: TFloatField;
    tProFornecedor: TLongWordField;
    tProEstoqueAtual: TFloatField;
    tProEstoqueMin: TFloatField;
    tProEstoqueMax: TFloatField;
    tProEstoqueRepor: TFloatField;
    tProComissaoPerc: TFloatField;
    tProComissaoLucro: TBooleanField;
    tProFidelidade: TBooleanField;
    tProFidPontos: TIntegerField;
    tProEstoquePend: TFloatField;
    tProEstoqueTot: TFloatField;
    tProNCM: TStringField;
    tProbrtrib: TWordField;
    tProNCM_Ex: TStringField;
    tProtax_id: TLongWordField;
    tProcest: TLongWordField;
    tProTaxIDNorm: TLongWordField;
    tProUID: TGuidField;
    tProMarca: TGuidField;
    tProCodigo: TWideStringField;
    tProDescricao: TWideStringField;
    tProUnid: TWideStringField;
    tProObs: TWideMemoField;
    tProCategoria: TWideStringField;
    tProPesoBruto: TFloatField;
    tProPesoLiq: TFloatField;
    tPromodST: TByteField;
    tProMVA: TnxMemoField;
    tProPauta: TnxMemoField;
    tProAlteradoEm: TDateTimeField;
    tProAlteradoPor: TStringField;
    tProRecVer: TLongWordField;
    tME: TnxTable;
    tMEID: TUnsignedAutoIncField;
    tMEUID: TGuidField;
    tMEID_ref: TLongWordField;
    tMETran: TLongWordField;
    tMEItem: TByteField;
    tMEtax_id: TLongWordField;
    tMEtax_incluido: TCurrencyField;
    tMEtax_incluir: TCurrencyField;
    tMEProduto: TLongWordField;
    tMEQuant: TFloatField;
    tMEUnitario: TCurrencyField;
    tMETotal: TCurrencyField;
    tMETotLiq: TCurrencyField;
    tMECustoU: TCurrencyField;
    tMECustoT: TCurrencyField;
    tMELucro: TCurrencyField;
    tMEDesconto: TCurrencyField;
    tMEDescr: TWideStringField;
    tMEObs: TWideMemoField;
    tMETotalFinal: TCurrencyField;
    tMEPago: TCurrencyField;
    tMEPagoPost: TCurrencyField;
    tMEDescPost: TCurrencyField;
    tMEDataHora: TDateTimeField;
    tMEPend: TBooleanField;
    tMEIncluidoEm: TDateTimeField;
    tMEEntrada: TBooleanField;
    tMECancelado: TBooleanField;
    tMEAjustaCusto: TBooleanField;
    tMEEstoqueAnt: TFloatField;
    tMECliente: TLongWordField;
    tMECaixa: TIntegerField;
    tMECategoria: TStringField;
    tMENaoControlaEstoque: TBooleanField;
    tMEITran: TIntegerField;
    tMETipoTran: TByteField;
    tMESessao: TIntegerField;
    tMEDebDev: TCurrencyField;
    tMEComissao: TCurrencyField;
    tMEComissaoPerc: TFloatField;
    tMEComissaoLucro: TBooleanField;
    tMEVenDev: TBooleanField;
    tMEPermSemEstoque: TBooleanField;
    tMEFidResgate: TBooleanField;
    tMEFidPontos: TFloatField;
    tMERecVer: TLongWordField;
    tXML: TnxTable;
    tXMLxml: TnxMemoField;
    tXMLtran: TLongWordField;
    tMEDadosFiscais: TnxMemoField;
    procedure FormCreate(Sender: TObject);
    procedure btnLancarClick(Sender: TObject);
    procedure edQtdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edQtdPropertiesChange(Sender: TObject);
    procedure edQtdPropertiesEditValueChanged(Sender: TObject);
    procedure cxLabel1Click(Sender: TObject);
    procedure edCodKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCodEnter(Sender: TObject);
    procedure lbPromptProdClick(Sender: TObject);
    procedure panQtdEnter(Sender: TObject);
    procedure panBuscaTopResize(Sender: TObject);
    procedure TimerPopTimer(Sender: TObject);
    procedure TimerSelectAllProdTimer(Sender: TObject);
    procedure edProdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edProdPropertiesChange(Sender: TObject);
    procedure edProdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure popFrmPopup(Sender: TObject);
    procedure popFrmClosePopup(Sender: TObject; Selected: Boolean);
    procedure lbCifraoUnitClick(Sender: TObject);
    procedure lbUnidadeClick(Sender: TObject);
    procedure popFrmBeforePopup(Sender: TObject; var FormWidth,
      FormHeight: Integer);
    procedure edUnitPropertiesEditValueChanged(Sender: TObject);
    procedure edUnitPropertiesChange(Sender: TObject);
    procedure TimerFocoProdTimer(Sender: TObject);
    procedure lbDigiteProdutoClick(Sender: TObject);
    procedure panVendaProdResize(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure edProdFocusChanged(Sender: TObject);
    procedure edQtdFocusChanged(Sender: TObject);
    procedure edUnitFocusChanged(Sender: TObject);
    procedure TimerClosePesqTimer(Sender: TObject);
    procedure edUnitKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edProdKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxLabel3Click(Sender: TObject);
    procedure lbPrecoClick(Sender: TObject);
    procedure TimerAutoPopTimer(Sender: TObject);
    procedure edProdExit(Sender: TObject);
    procedure imgConfigOrdemClick(Sender: TObject);
    procedure tProCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    FIDProd : Integer;
    FCodStr : String;
    FIDProdPopped  : Integer;
    FPopped : Boolean;
    FCodRepetido : Boolean;
    FPesqProd : TFrmProdPesq;
    FSaveSt : String;
    FIgnoreChange : Boolean;
    FQuant : Double;
    FUnitario : Currency;
    FTotal : Currency;
    FCBBInfo: TncCodBarBalInfo;
    FTicksKey : Cardinal;
    FProdTexto : String;
    FGetFornecedor : TGetFornecedor;
    FSetFornecedor : TSetFornecedor;

    function CorFocus: TColor;

    function BrTribOk: Boolean;
    
    procedure SetIDProd(const Value: Integer);
    procedure SetCodStr(const Value: String);
    procedure SetPopped(const Value: Boolean);
    procedure SetQuant(const Value: Double);
    procedure SetUnitario(const Value: Currency);
    procedure SetTotal(const Value: Currency);

    procedure AlinhaQtd;

    function PassarQtd: Boolean;
    function ComecarPorQtd: Boolean;
    function BuscaAuto: Boolean;
    function GetFornecedor: Cardinal;
    procedure SetFornecedor(const Value: Cardinal);
  protected
    FDadosFiscaisXML : String;
    FQuantCompra : Double;

    procedure SetQuantCustom(const aValue: Double; aUpdateEdit: Boolean = False);
    procedure SetUnitarioCustom(const Value: Currency; UpdateEdit: Boolean);
    procedure CalcTotal;
    procedure OnRollUpFocusChange(Sender: TObject; var RollUp: Boolean);

    function QuantOk(aProduto: Cardinal; aQuant, aEstoque: Double): Boolean;

    function Focado: Boolean;

    function getPrecoCusto (idProd :cardinal): Currency;

    procedure UpdateColor;

    procedure DecodeCodBarBalanca;

    procedure OnConcluirLeXML(Sender: TObject);

    procedure wmPopFrm(var Msg: TMessage);
      message wm_user;
    
  public
    procedure _Lancar;

    procedure EnableTimerFocoProd(aFrom: String);

    procedure AtualizaDetalhes; 

    procedure AjustaPanQtd;

    procedure ClosePops; override;

    procedure UpdateProdEdit(aSelectAll: Boolean);

    function AjustaQuantFromText(S: String): Boolean;

    procedure UpdateQtdWidth;
    procedure UpdateUnitWidth;

    procedure SetGap(aPixels: Integer); override;

    procedure Clear; override;
    procedure FocusProd(aFrom: String); override;
    function CanCloseForm: Boolean; override;

    property OnGetFornecedor: TGetFornecedor
      read FGetFornecedor write FGetFornecedor;

    property OnSetFornecedor: TSetFornecedor
      read FSetFornecedor write FSetFornecedor;

    property Fornecedor: Cardinal
      read GetFornecedor write SetFornecedor;      

    property Quant: Double
      read FQuant write SetQuant;

    property Unitario: Currency
      read FUnitario write SetUnitario; 

    property Total: Currency
      read FTotal write SetTotal;   

    property IgnoreChange: Boolean
      read FIgnoreChange;

    property Popped: Boolean
      read FPopped write SetPopped;

    property IDProd: Integer
      read FIDProd write SetIDProd;
    
    property CodStr: String
      read FCodStr write SetCodStr;

    { Public declarations }
  end;

var
  FrmPanVendaProd2: TFrmPanVendaProd2;

implementation

uses ncaDM, ncaFrmPri, ncErros, ncaFrmEscolhaProdDup, 
  ncaFrmSemEstoque, ncaFrmProdSemFid, ncaFrmConfigTelaVendas, ncDebug,
  ncaFrmNCMEdit, ncaStrings, ncaFrmLeXML, ncaFrmPesqDadosFiscais;

{$R *.dfm}

resourcestring
  SEsteProdutoNãoPermiteASuaVendaFr = 'Este produto não permite a sua venda fracionada!';
  SCustoUnitario = 'Custo Unitário';
  SPreco = 'Preço Unitário';

procedure TFrmPanVendaProd2.AjustaPanQtd;
begin
  panVendaProd.Parent.Height := panProd.Height;
end;

function TFrmPanVendaProd2.AjustaQuantFromText(S: String): Boolean;
var 
  I: Integer;
  D: Double;
begin
  Result := False;
  S := Trim(S);
  if Pos('*', S)<1 then Exit;
  Delete(S, Pos('*', S), 255);
  if S='' then begin
    Result := True;
    edQtd.SetFocus;
    Exit;
  end;

  if Pos(',', S)>0 then
    S[Pos(',', S)] := '.';
    
  Val(S, D, I);
  if I=0 then begin
    edQtd.Value := D;
    Result := True;
  end;

  UpdateQtdWidth;
end;

procedure TFrmPanVendaProd2.AlinhaQtd;
begin
  if ComecarPorQtd then begin
    panQtd.Align := alLeft;
    panConfig.Align := alLeft;
    panConfig.Left := 1000;
    
    panQtd.TabOrder := 0;
    panEdProd.TabOrder := 1;
    panQtd.Left := -100;
  end else begin
    panQtd.Visible := False;
    panConfig.Visible := False;
    panQtd.Align := alRight;
    panEdProd.TabOrder := 0;
    panQtd.TabOrder := 1;
    panConfig.Align := alRight;
    panConfig.Left := 0;
    panQtd.Visible := True;
    Application.ProcessMessages;
    panConfig.Visible := True;
  end;

  panPreco.TabOrder := 2;
  panValor.TabOrder := 4;
  btnLancar.TabOrder := 5;
  btnLancar.Left := 4000;
      
end;

procedure TFrmPanVendaProd2.AtualizaDetalhes;
begin
  btnLancar.Enabled := (FIDProd>0) and(edQtd.EditValue>0);

  if IDProd>0 then begin
    panValor.Enabled := True;
    panPreco.Enabled := True;
    edUnit.Enabled := tProPodeAlterarPreco.Value or (TipoTran = trEstCompra );
    lbTotal.Enabled := True;
{    if TipoTran=trEstCompra then 
      edUnit.Value := tProCustoUnitario.Value;}
    lbUnidade.caption := tProUnid.value;
  end else begin
//    panValor.Visible := False;
//    panPreco.Visible := False;

    panValor.Enabled := False;
    panPreco.Enabled := False;
    edUnit.Enabled := False;
    lbTotal.Enabled := False;

    Unitario := 0;
    Total := 0;

    lbTotal.Caption := '';
    edUnit.Clear;

    lbUnidade.Caption := '';
    btnLancar.Enabled := False;
  end;
  lbUnidade.Visible := (Trim(lbUnidade.Caption)>'');
  UpdateQtdWidth;
end;

function TFrmPanVendaProd2.BrTribOk: Boolean;
begin
  Result := True;
  if (tProbrtrib.Value>0) then Exit;
  if Dados.tBrTrib.RecordCount=1 then Exit;
  Result := False;
end;

procedure TFrmPanVendaProd2.btnLancarClick(Sender: TObject);
var
  PermSemEstoque: Boolean; 
  T, aCustoU: Currency;
  FFor : Cardinal;
begin
  inherited;
  FDadosFiscaisXML := '';
  
  if ResgateFid then
  if not (tProFidelidade.Value and (tProFidPontos.Value>0)) then begin
    TFrmProdSemFid.Create(Self).Mostrar(tPro);
    if not (tProFidelidade.Value and (tProFidPontos.Value>0)) then Exit;
  end;
  
  if not(tProPermiteVendaFracionada.value) and (frac(edQtd.Value)>0) then begin
    edQtd.Value := trunc(edQtd.Value);
    edQtd.SelectAll;
    edQtd.SetFocus;
    Raise ENexCafe.Create(SEsteProdutoNãoPermiteASuaVendaFr);
  end;

  PermSemEstoque := False;

  if (Self.TipoTran in [trEstVenda, trEstSaida]) then
  if (not QuantOk(tProID.Value, edQtd.Value, tProEstoqueAtual.Value)) and gConfig.NaoVenderAlemEstoque and (not tProNaoControlaEstoque.Value) then begin
    PermSemEstoque := TFrmSemEstoque.Create(Self).PodeVender(tProDescricao.Value, tProEstoqueAtual.Value);
    if not PermSemEstoque then Exit;
  end;

  if (TipoTran=trEstDevFor) then begin

    if Dados.NFeAtivo then begin
      //se não achou nenhum movimento de entrada avisa usuario e cancela processo

      FDadosFiscaisXML := '';
      FQuantCompra := 0;
      FFor := Fornecedor;

      if not TFrmPesqDadosFiscais.Create(Self).ObtemDadosFiscais(tProID.Value, FFor, FQuantCompra, aCustoU, FDadosFiscaisXML) then Exit;
      FUnitario := 0;
      Unitario := aCustoU;
      Fornecedor := FFor;
      
{      if (Unitario = 0) or (tMEDadosFiscais.AsString = '')  then begin
        if Unitario=0 then
          ShowMessage('Não há compras desse produto com esse fornecedor.') else
          ShowMessage('Dados fiscais ainda não foram gravados.');

        if SimNao('Desejar ler o XML de compra agora?') then with TFrmLeXML.Create(Self) do
        begin
          IgnoraCompraAnt := true;
          OnConcluir := OnConcluirLeXML;
          ShowModal;
        end;
      end else begin
        FDadosFiscaisXML := tMEDadosFiscais.Value;
        FQuantCompra := tMeQuant.Value;
      end;}

      //se não encontrou o XML de lançamento de entrada cancela operação e avisa o usuário
      if (FDadosFiscaisXML='') then
        raise Exception.Create('Não é possível fazer devolução de compras sem o XML/dados fiscais de compra.');

      //verifica a quantidade informada pelo usuário, se a quantidade informada for maior que a
      //quantidade lançada no documento de entrada avisa o usuario e cancela a operação.
      if edQtd.value > FQuantCompra then
        raise Exception.Create('Quantidade informada para devolver é maior que a quantidade da NF-e de entrada.');
    end else
      if (Fornecedor=0) then raise Exception.Create(rsNecessarioFornecedor);
  end;

  if Dados.NFAtivo and (TipoTran=trEstVenda) then
    if ((Trim(tProNCM.Value)='') or (not BrTribOk) or (Trim(tProUnid.Value)='')) and (not TFrmNCMEdit.Create(Self).ObtemNCM(tProID.Value)) then Exit;

  if FCBBInfo.IsEmpty or (not FCBBInfo.BalValor) then
    T := DuasCasas(FUnitario*edQtd.Value) else
    T := DuasCasas(FCBBInfo.PesoValor);
    
  AddProd(tProID.Value, tProTaxIDNorm.Value, FUnitario, T, edQtd.Value, tProDescricao.Value, PermSemEstoque, tProFidPontos.Value, '', FDadosFiscaisXML);
  
  Clear;

  if ComecarPorQtd then
    edQtd.SetFocus 
  else begin
    DebugMsg('btnLancarClick - SetFocus');
    edProd.SetFocus;
  end;  
end;

function TFrmPanVendaProd2.BuscaAuto: Boolean;
begin
  Result := (slConfig.Values['DesligaBuscaAuto']<>'1');
end;

procedure TFrmPanVendaProd2.CalcTotal;
begin
  Total := DuasCasas(FUnitario * FQuant);
end;

function TFrmPanVendaProd2.CanCloseForm: Boolean;
begin
  Result := not FPopped;
end;

procedure TFrmPanVendaProd2.Clear;
begin
  FIgnoreChange := True;
  try
    FCBBinfo.Clear;
    IDProd := 0;
    FIDProdPopped := 0;
    edProd.Clear;
    Quant := 1;
    Unitario := 0;
    Total := 0;

    edUnit.Clear;
    edUnit.Enabled := False;

    lbTotal.Enabled := False;
    lbTotal.Caption := '';

    AlinhaQtd;
    
    FPesqProd.edBusca.Clear;
    FPesqProd.TimerSync.Enabled := False;
  finally
    FIgnoreChange := False;
  end;
end;

procedure TFrmPanVendaProd2.ClosePops;
begin
  inherited;
  Popped := False;
end;

function TFrmPanVendaProd2.ComecarPorQtd: Boolean;
begin
  Result := (slConfig.Values['ComecarPor']='1');
end;

function TFrmPanVendaProd2.CorFocus: TColor;
begin
  Result := FrmPri.cxEditStyleController1.StyleFocused.Color;
end;

procedure TFrmPanVendaProd2.cxLabel1Click(Sender: TObject);
begin
  inherited;
  edQtd.SetFocus;
end;

procedure TFrmPanVendaProd2.cxLabel3Click(Sender: TObject);
begin
  inherited;
  DebugMsg('cxLabel3Click - SetFocus');
  edProd.SetFocus;
end;

procedure TFrmPanVendaProd2.DecodeCodBarBalanca;
begin
  FCBBInfo.Clear;
  if gConfig.IsPremium then
  if gConfig.DecodeCodBarBalanca(edProd.EditingText, FCBBInfo) then
    edProd.EditingText := FCBBInfo.Codigo;
end;

procedure TFrmPanVendaProd2.edCodEnter(Sender: TObject);
begin
  inherited;
  FProdTexto := edProd.EditingText;
  TimerSelectAllProd.Enabled := True;
  UpdateQtdWidth;
end;

procedure TFrmPanVendaProd2.edCodKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   i : integer;
begin
  if (Key = Key_ENTER) then begin
      if IDProd>0 then begin
          if not FCodRepetido then
            _Lancar
          else begin
             // Achou mais de um produto para este código
//             i := TFrmEscolhaProdDup.Create(self).Mostrar(edCod.EditingText);
             if (i>-1) and (tPro.Locate('ID', i, [])) then begin // do not localize
               IDProd := tProID.Value;
               _Lancar;
             end;
          end;
      end else 
{        Dados.tbProdD.Open};
  end;
end;

procedure TFrmPanVendaProd2.edProdExit(Sender: TObject);
begin
  inherited;
  TimerAutoPop.Enabled := False;
end;

procedure TFrmPanVendaProd2.edProdFocusChanged(Sender: TObject);
begin
  inherited;
  UpdateColor;
end;

function GetCharFromVirtualKey(Key: Word): string;
 var
    keyboardState: TKeyboardState;
    asciiResult: Integer;
 begin
    GetKeyboardState(keyboardState) ;

    SetLength(Result, 2) ;
    asciiResult := ToAscii(key, MapVirtualKey(key, 0), keyboardState, @Result[1], 0) ;
    case asciiResult of
      0: Result := '';
      1: SetLength(Result, 1) ;
      2:;
      else
        Result := '';
    end;
 end; 

procedure TFrmPanVendaProd2.edProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var 
  WasPopped: Boolean;  
  S: String;
begin
  inherited;
  
  if (edProd.CursorPos=0) and ((Key = VK_BACK) or (Key = VK_LEFT)) and ComecarPorQtd then
  begin
    Popped := False;
    edQtd.SetFocus;
    edQtd.SelectAll;
  end;

  FSaveSt := edProd.EditingText;
  WasPopped := Popped;

  if Popped and FPesqProd.InCadRapido then begin
    if (Key = Key_Enter) or (Key = Vk_Down) or (Key = Vk_Tab) then 
      FPesqProd.edCod.SetFocus;
  end else begin
    if Key=Key_Enter then begin
      DecodeCodBarBalanca;
      if not Popped then begin
        FPesqProd.edBusca.EditValue := edProd.EditingText;
        if FCBBInfo.IsEmpty then
        if (FPesqProd.RecCount<>1) or FPesqProd.AchouPorDescr or FPesqProd.AchouParcial then
        if (FIDProd=0) or (FIDProd<>FIDProdPopped) then begin
          Key := 0;
          Popped := True;
          Exit;
        end;
      end;

      if (not FCBBInfo.IsEmpty) and (FIDProd>0) then begin
        if FCBBInfo.BalValor then
          edQtd.Value := gConfig.PrecisaoBalanca(FCBBInfo.PesoValor / FUnitario) else
          edQtd.Value := FCBBInfo.PesoValor;
        UpdateQtdWidth;  
      end;
      
      if (IDProd=0) and (not FPesqProd.Tab.IsEmpty) and WasPopped then IDProd := FPesqProd.TabID.Value;
    
      if (IDProd>0) then begin
        Key := 0;
        Popped := False;
        FIgnoreChange := True;
        try
          edProd.Text := tProDescricao.Value;
          if ComecarPorQtd or (not PassarQtd) then
            _Lancar else
            edQtd.SetFocus;
        finally
          FIgnoreChange := False;
        end;
      end;
    end else
    if Popped then
      FPesqProd.edBuscaKeyUp(Sender, Key, Shift);
  end;
  UpdateColor;
end;

function TemLetras(S: String): Boolean;
var i: integer;
begin
  for I := 1 to Length(S) do  
    if S[i] in ['a'..'z', 'A'..'Z'] then begin
      Result := True;
      Exit;
    end;
  Result := False;
end;

procedure TFrmPanVendaProd2.edProdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (FSaveSt <> edProd.EditingText) then begin
    if (Trim(edProd.EditingText)='') then begin
      IDProd := 0;
//      Exit;
    end else begin
    {$IFDEF LAN}
      Popped := True
    {$ELSE};
      if BuscaAuto then begin
        if TemLetras(edProd.EditingText) then
          Popped := True
        else 
        if (FProdTexto<>edProd.EditingText) and (not Popped) then 
          TimerAutoPop.Enabled := True;
        FProdTexto := edProd.EditingText;
      end;
    {$ENDIF}
    end;
  end;
end;

procedure TFrmPanVendaProd2.edProdPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  Popped := True;
end;

procedure TFrmPanVendaProd2.edProdPropertiesChange(Sender: TObject);

procedure ApagaTexto;
begin
  FIgnoreChange := True;
  try
    edProd.Text := '';
    IDProd := 0;
  finally
    FIgnoreChange := False;
  end;
end;

begin
  inherited;
  lbDigiteProduto.Visible := (edProd.EditingText='') and (slConfig.Values['tutomode']<>'1');
  if edProd.Focused and (not FIgnoreChange) then begin

    if edProd.EditingText='*' then begin
      ApagaTexto;
      edQtd.SetFocus;
    end else begin
      if AjustaQuantFromText(edProd.EditingText) then ApagaTexto;
      if Popped then FPesqProd.edBusca.EditValue := edProd.EditingText
    end;
  end;
end;

procedure TFrmPanVendaProd2.edQtdFocusChanged(Sender: TObject);
begin
  inherited;
  if edQtd.Focused then begin
    DebugMsg('TFrmPanVendaProd2.edQtdFocusChanged');
    lbUnidade.Style.Color := FrmPri.cxEditStyleController1.StyleFocused.Color;
  end else
    lbUnidade.Style.Color := clwhite;
  
  UpdateColor;
  UpdateQtdWidth;
end;

procedure TFrmPanVendaProd2.edQtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if (edProd.CursorPos=0) and ((Key = VK_BACK) or (Key = VK_LEFT)) and (not ComecarPorQtd) then begin
    DebugMsg('edQtdKeyDown - SetFocus 1');
    edProd.SetFocus;
  end;
  
  if (FQuant>0) and (Key = Key_ENTER) then
  if not ComecarPorQtd then begin
    if IDProd=0 then begin
      DebugMsg('edQtdKeyDown 2 - SetFocus');
      edProd.SetFocus;
    end else
    if edUnit.Enabled then
      edUnit.SetFocus
    else
    if btnLancar.Enabled then
      btnLancarClick(nil);
  end else begin
    DebugMsg('edQtdKeyDown 3 - SetFocus');
    edProd.SetFocus;
  end;  
end;

procedure TFrmPanVendaProd2.edQtdPropertiesChange(Sender: TObject);
begin
  inherited;
  edQtd.PostEditValue;
  UpdateQtdWidth;
end;

procedure TFrmPanVendaProd2.edQtdPropertiesEditValueChanged(Sender: TObject);
begin
  lbSize.Caption := edQtd.EditingText;
  if edQtd.EditValue<>null then
    SetQuantCustom(edQtd.EditValue, False) else
    SetQuantCustom(0, False);

  btnLancar.Enabled := (IDProd>0) and (edQtd.EditValue>0);
end;

procedure TFrmPanVendaProd2.edUnitFocusChanged(Sender: TObject);
begin
  inherited;
  UpdateColor;
  UpdateUnitWidth;
end;

procedure TFrmPanVendaProd2.edUnitKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = Key_ENTER) and btnLancar.Enabled then 
    btnLancarClick(nil);
end;

procedure TFrmPanVendaProd2.edUnitPropertiesChange(Sender: TObject);
begin
  inherited;
  edUnit.PostEditValue;
  UpdateUnitWidth;
end;

procedure TFrmPanVendaProd2.edUnitPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if edUnit.Focused then
    if edUnit.EditValue=null then
      SetUnitarioCustom(0, False) else
      SetUnitarioCustom(edUnit.EditValue, False);
end;

procedure TFrmPanVendaProd2.EnableTimerFocoProd(aFrom: String);
begin
  DebugMsg('TFrmPanVendaProd2.EnableTimerFocoProd - aFrom: ' + aFrom);
  TimerFocoProd.Enabled := True;
end;

function TFrmPanVendaProd2.Focado: Boolean;
begin
  Result := edProd.Focused or edUnit.Focused or edQtd.Focused or FPopped;
end;

procedure TFrmPanVendaProd2.FocusProd(aFrom: String);
begin
  try
    AlinhaQtd;
    if ComecarPorQtd then
      edQtd.SetFocus 
    else begin
      DebugMsg('FocusProd - SetFocus - aFrom: '+aFrom);
      edProd.SetFocus;
    end;
  except
  end;
end;

procedure TFrmPanVendaProd2.FormCreate(Sender: TObject);
begin
  inherited;
  lbDigiteProduto.Visible := (edProd.EditingText='') and (slConfig.Values['tutomode']<>'1');
  FGetFornecedor := nil;
  FSetFornecedor := nil;
  
  FCBBInfo.Clear; 

  lbUnidade.Caption := '';
  FIgnoreChange := False;
  FSaveSt := '';
  FPesqProd := TFrmProdPesq.Create(Self);
  popFrm.PopupForm := FPesqProd;
  popFrm.OnRollUpFocusChange := OnRollUpFocusChange;
  FIDProd := 0;
  FQuant := 1;
  FPopped := False;
  FCodStr := '';
  FIDProdPopped := -1;
  FCodRepetido := False;
  FCodStr := '';
  edUnit.Properties.DisplayFormat := gConfig.cxMaskUnitario;
end;

procedure TFrmPanVendaProd2.FormResize(Sender: TObject);
begin
  inherited;
  AjustaPanQtd;
end;

function TFrmPanVendaProd2.GetFornecedor: Cardinal;
begin
  if Assigned(FGetFornecedor) then 
    Result := FGetFornecedor else
    Result := 0;
end;

function TFrmPanVendaProd2.getPrecoCusto(idProd: cardinal): Currency;
begin
  //Indice de pesquisa no banco de dados. Busca por Cancelado, Contato (cliente), Produto, Tipo da movimentação (compra) e data e hora.
  //sempre que realizar alguma pesquisa desta maneira não pode "pular" os campos a serem pesquisados, somente pode ser ignorado os ultimos campos.
  tME.IndexName := 'ICanceladoContatoProdutoTipoDataHora';
  tME.SetRange([False, Fornecedor, tProID.Value, trEstCompra], [False, Fornecedor, tProID.Value, trEstCompra]);
  tME.Last;
  //se não encontrou registro retorna valor 0. se nao seta no ultimo registro
  //da tabela e retorna o ultimo custo.
  if tMe.IsEmpty then
    Result := 0
  else
    Result := tMECustoU.Value;
end;

procedure TFrmPanVendaProd2.lbCifraoUnitClick(Sender: TObject);
begin
  inherited;
  edUnit.SetFocus;
end;

procedure TFrmPanVendaProd2.lbDigiteProdutoClick(Sender: TObject);
begin
  inherited;
  DebugMsg('lbDigiteProdutoClick - SetFocus');
  edProd.SetFocus;
end;

procedure TFrmPanVendaProd2.lbPrecoClick(Sender: TObject);
begin
  inherited;
  if edUnit.Enabled then edUnit.SetFocus;

end;

procedure TFrmPanVendaProd2.lbPromptProdClick(Sender: TObject);
begin
  inherited;
  DebugMsg('lbPromptProdClick - SetFocus');
  edProd.SetFocus;
end;

procedure TFrmPanVendaProd2.lbUnidadeClick(Sender: TObject);
begin
  inherited;
  edQtd.SetFocus
end;

procedure TFrmPanVendaProd2.imgConfigOrdemClick(Sender: TObject);
begin
  inherited;
  TFrmConfigTelaVendas.Create(self).ShowModal;
  FocusProd('imgConfigOrdemClick');
end;

procedure TFrmPanVendaProd2.OnConcluirLeXML(Sender: TObject);
begin
  //criar aqui outro igual esse mas sem mov. estoque. xmlOnConcluirDevFor
  with TFrmLeXML(Sender) do begin
    if mt.Locate('produto', tProID.Value, []) then begin
      FDadosFiscaisXML := mtDadosFiscais.Value;
      FQuantCompra := QuantFator;
    end;
  end;
end;

procedure TFrmPanVendaProd2.OnRollUpFocusChange(Sender: TObject;
  var RollUp: Boolean);
begin
  RollUp := not edProd.Focused;
end;

procedure TFrmPanVendaProd2.panQtdEnter(Sender: TObject);
begin
  inherited;
  panQtd.Color := $00B3FFFF;
end;

procedure TFrmPanVendaProd2.panVendaProdResize(Sender: TObject);
begin
  inherited;
  AjustaPanQtd;
end;

function TFrmPanVendaProd2.PassarQtd: Boolean;
begin
  Result := (slConfig.Values['NaoPassarQtd']<>'1');
end;

procedure TFrmPanVendaProd2.popFrmBeforePopup(Sender: TObject; var FormWidth,
  FormHeight: Integer);
begin
  inherited;
  FPesqProd.edBusca.EditValue := edProd.Text;
  FPesqProd.edBuscaPropertiesChange(nil);
  FPesqProd.Tab.Refresh;
end;

procedure TFrmPanVendaProd2.popFrmClosePopup(Sender: TObject;
  Selected: Boolean);
begin
  inherited;
  TimerClosePesq.Enabled := True;
end;

procedure TFrmPanVendaProd2.popFrmPopup(Sender: TObject);
begin
  inherited;
  FPopped := True;
  FPesqProd.AfterPopup;
end;

function TFrmPanVendaProd2.QuantOk(aProduto: Cardinal; aQuant,
  aEstoque: Double): Boolean;
begin
  Result := OnQuantOk(Self, aProduto, aQuant, aEstoque);
end;

procedure TFrmPanVendaProd2.panBuscaTopResize(Sender: TObject);
begin
  inherited;
  AjustaPanQtd;
end;

procedure TFrmPanVendaProd2.SetCodStr(const Value: String);
begin
  if FCodStr = Value then Exit;
  FCodStr := Value;
  if FCodStr>'' then begin
    tCodR.SetRange([FCodStr], [FCodStr]);
    FCodRepetido := (tCodR.RecordCount>1);
  end;
end;

procedure TFrmPanVendaProd2.SetFornecedor(const Value: Cardinal);
begin
  if Assigned(FSetFornecedor) then
    FSetFornecedor(Value);
end;

procedure TFrmPanVendaProd2.SetGap(aPixels: Integer);
begin
  AjustaPanQtd;
end;

procedure TFrmPanVendaProd2.SetIDProd(const Value: Integer);
begin
  if Value=FIDProd then Exit;
  FIDProd := Value;
  if FIDProd>0 then begin
    if FPopped then 
      FIDProdPopped := FIDProd else
      FIDProdPopped := 0;
    
    tPro.Locate('ID', FIDProd, []);
    CodStr := tProCodigo.Value;
    //MostrarUnit := ((FME.Tipo=trEstVenda) and tProPodeAlterarPreco.Value) or (FME.Tipo=trEstCompra);

    case TipoTran of
      //se a transação for uma venda pega o preço de venda.
      //se nas configurações o usuário marcou o para que possa alterar o preço de vende
      //libera o campo conforme esta configuração.
      trEstVenda : begin
        Unitario := tProPreco.Value;
        edUnit.Enabled := tProPodeAlterarPreco.Value;
        edUnit.Properties.ReadOnly := False;
      end;

      trEstCompra : begin
        Unitario := tProCustoUnitario.Value;
        edUnit.Enabled := True;
        edUnit.Properties.ReadOnly := False;
      end;

      //Pega o ultimo custo conforme pela ID do produto na função getPrecoCusto(ID PROD)
      trEstDevFor : begin   
        Unitario := 0; //getPrecoCusto(tProID.Value);
        edUnit.Enabled := false;
        edUnit.Properties.ReadOnly := False;
      end;
    else
      edUnit.Value := 0;
    end;
  end else
    CodStr := '';
  AtualizaDetalhes;  
end;

procedure TFrmPanVendaProd2.SetPopped(const Value: Boolean);
begin
  if Value = FPopped then Exit;
  if Value then begin
    PostMessage(Handle, wm_user, 0, 0);
    edProd.Style.Color := edProd.StyleFocused.Color;
  end else
  begin
    edProd.Style.Color := clWhite;
    popFrm.ClosePopup(False);
  end;  
  if not edProd.Focused then 
    panFundoProd.Color := clWhite else
    panFundoProd.Color := edProd.StyleFocused.Color;
end;

procedure TFrmPanVendaProd2.SetQuant(const Value: Double);
begin
  SetQuantCustom(Value, True);
end;

procedure TFrmPanVendaProd2.SetQuantCustom(const aValue: Double; aUpdateEdit: Boolean);
begin
  if FQuant=aValue then Exit;
  FQuant := aValue;
  if aUpdateEdit then begin
    edQtd.Value := FQuant;
    UpdateQtdWidth;
  end;
  CalcTotal;
end;

procedure TFrmPanVendaProd2.SetTotal(const Value: Currency);
begin
  FTotal := Value;
  lbTotal.Caption := CurrencyToStr(FTotal);
end;

procedure TFrmPanVendaProd2.SetUnitario(const Value: Currency);
begin
  SetUnitarioCustom(Value, True);
end;

procedure TFrmPanVendaProd2.SetUnitarioCustom(const Value: Currency;
  UpdateEdit: Boolean);
begin
  if FUnitario=Value then Exit;
  FUnitario := Value;
  if UpdateEdit then begin
    edUnit.Value := FUnitario;
    UpdateUnitWidth;
  end;
  CalcTotal;
end;

procedure TFrmPanVendaProd2.TimerAutoPopTimer(Sender: TObject);
begin
  inherited;
  TimerAutoPop.Enabled := False;
  if (not Popped) and edProd.Focused then
    Popped := True;
end;

procedure TFrmPanVendaProd2.TimerClosePesqTimer(Sender: TObject);
begin
  inherited;
  TimerClosePesq.Enabled := False;
  FPopped := False;
  if not edProd.Focused then 
    panFundoProd.Color := clWhite else
    panFundoProd.Color := edProd.StyleFocused.Color;
end;

procedure TFrmPanVendaProd2.TimerFocoProdTimer(Sender: TObject);
begin
  try
    TimerFocoProd.Enabled := False;
    DebugMsg('TimerFocusProdTimer - SetFocus');
    edProd.SetFocus;
  except
    on E: Exception do DebugMsg('TFrmPanVendaProd2.TimerFocusProdTimer - Exception: ' + E.Message);
  end;
end;

procedure TFrmPanVendaProd2.TimerPopTimer(Sender: TObject);
var P : TPoint;
begin
  TimerPop.Enabled := False;
  P.X := 0;
  P.Y := 0;
  P := edProd.ClientToScreen(P);
  P.X := P.X - (imgBarcodeScan.Width +imgBarcodeScan.Margins.left+imgBarcodeScan.Margins.Right);
  popFrm.Popup(P.X, P.Y);
end;

procedure TFrmPanVendaProd2.TimerSelectAllProdTimer(Sender: TObject);
begin
  inherited;
  DebugMsg('TFrmPanVendaProd2.TimerSelectAllProdTimer');
  TimerSelectAllProd.Enabled := False;
  if edProd.Focused then
    edProd.SelectAll;
end;

procedure TFrmPanVendaProd2.tProCalcFields(DataSet: TDataSet);
begin
  inherited;
  if tProTax_id.IsNull then
    tProTaxIDNorm.Value := gConfig.tax_id_def else
    tProTaxIDNorm.Value := tProTax_id.Value;
end;

procedure TFrmPanVendaProd2.UpdateColor;
begin
  if edProd.Focused or Popped then
    panFundoProd.Color := FrmPri.cxEditStyleController1.StyleFocused.Color else
    panFundoProd.Color := clwhite;

{  if Focado then 
    panProd.Color := CorFocus else
    panProd.Color := clBtnFace;}
end;

procedure TFrmPanVendaProd2.UpdateProdEdit(aSelectAll: Boolean);
begin
  FIgnoreChange := True;
  try
    edProd.Text := FPesqProd.TabDescricao.Value;
  
    if aSelectAll then TimerSelectAllProd.Enabled := True;
  finally
    FIgnoreChange := False;
  end;
end;

procedure TFrmPanVendaProd2.UpdateQtdWidth;
var w: integer;
begin
  w := cxTextWidth(edQtd.Style.Font, edQtd.EditingText)+15;

  if lbUnidade.Visible then W := W + lbUnidade.Width + lbUnidade.Margins.Right + lbUnidade.Margins.Left;
  
  if w<80 then w := 80;

  panQtd.Width := W;

  lbUnidade.Left := edQtd.Left + edQtd.Width - lbUnidade.Width - 3;
  UpdateUnitWidth;
end;

procedure TFrmPanVendaProd2.UpdateUnitWidth;
var W: Integer;
begin
  W := cxTextWidth(lbTotal.Style.Font, lbTotal.Caption);
  if W <100 then W := 100;
  W := W + lbTotal.Margins.Left + lbTotal.Margins.Right + 20;
  panValor.Width := W;

  W := cxTextWidth(edUnit.Style.Font, edUnit.EditingText);
  if W <100 then W := 100;
  W := W + edUnit.Margins.Left + edUnit.Margins.Right + 20;
  panPreco.Width := W;
  
{  if edUnit.Focused then
    lbSize.Caption := edUnit.EditingText else
    lbSize.Caption := CurrencyToStr(FUnitario);

  if edUnit.Focused and (lbSize.Width<138) then
    edUnit.Width := 148 else
    edUnit.Width := lbSize.Width + 10;}

{  lbX2.Left := 0;
  edUnit.Left := lbX2.Width;
  lbIgual.Left := edUnit.Left + edUnit.Width;
  lbTotal.Left := lbIgual.Left + lbIgual.Width;}

end;

procedure TFrmPanVendaProd2.wmPopFrm(var Msg: TMessage);
var P : TPoint;
begin
  TimerPop.Enabled := False;
  P.X := 0;
  P.Y := 0;
  P := edProd.ClientToScreen(P);
  P.X := P.X - (imgBarcodeScan.Width +imgBarcodeScan.Margins.left+imgBarcodeScan.Margins.Right) - 1;
//  popFrm.Popup(P.X, P.Y+edProd.Height-1);
  popFrm.Popup(p.x, P.Y+edProd.Height+5);
end;

procedure TFrmPanVendaProd2._Lancar;
begin
  if btnLancar.Enabled then begin
    case TipoTran of
      trEstCompra : if (not edUnit.Focused) then begin
        edUnit.SetFocus;
        Exit;
      end;
      trEstVenda  : if (not edUnit.Focused) and tProPodeAlterarPreco.Value then begin
        edUnit.SetFocus;
        Exit;
      end;
    end;
    btnLancarClick(nil);
  end else begin
    if IDProd=0 then begin
      DebugMsg('_Lancar - SetFocus');
      edProd.SetFocus;
    end else
    if edQtd.EditValue<0.001 then
      edQtd.SetFocus;
  end;
end;

initialization
  DefPanVendaProdClass := TFrmPanVendaProd2;

end.
