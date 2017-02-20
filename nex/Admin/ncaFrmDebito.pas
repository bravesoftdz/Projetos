unit ncaFrmDebito;
{
    ResourceString: Dario 11/03/13
}

interface

uses
  Windows, ncErros, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxGraphics, cxEdit, cxDropDownEdit, cxCurrencyEdit,
  cxMaskEdit, cxRadioGroup, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  kbmMemTable, dxBarExtItems, dxBar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxVGrid,
  cxDBVGrid, cxInplaceContainer, LMDCustomControl, LMDCustomPanel, ncDebito,
  LMDCustomBevelPanel, LMDSimplePanel, cxCheckBox, cxContainer, cxLabel,
  cxImageComboBox, Buttons, ncClassesBase, LMDControl,
  cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, ncEspecie, ImgList,
  cxDBExtLookupComboBox, cxCalendar, ExtCtrls, cxTextEdit, ncMyImage, StdCtrls,
  cxMemo, cxDBData, cxGridDBTableView, nxdb, System.ImageList;

type
  TFrmDebito = class(TForm)
    panCab2: TLMDSimplePanel;
    LMDSimplePanel2: TLMDSimplePanel;
    BarMgr: TdxBarManager;
    cmGravar: TdxBarLargeButton;
    cmCancelar: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    lbNomeCli: TcxLabel;
    cxLabel2: TcxLabel;
    cmRecibo: TdxBarControlContainerItem;
    cbRecibo: TcxCheckBox;
    Grid: TcxGrid;
    TV: TcxGridTableView;
    TVPagar: TcxGridColumn;
    TVDescr: TcxGridColumn;
    TVDataHora: TcxGridColumn;
    TVTotal: TcxGridColumn;
    GL: TcxGridLevel;
    cxImageList1: TcxImageList;
    cxStyle5: TcxStyle;
    TimerPagar: TTimer;
    imgsOBS: TcxImageList;
    LMDSimplePanel3: TLMDSimplePanel;
    lbNenhum: TcxLabel;
    lbTodos: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    LMDSimplePanel5: TLMDSimplePanel;
    LMDSimplePanel1: TLMDSimplePanel;
    edTotalGeral: TcxCurrencyEdit;
    cbTotal: TcxRadioButton;
    panTot: TLMDSimplePanel;
    edPagar: TcxCurrencyEdit;
    cbParcial: TcxRadioButton;
    edObs: TcxMemo;
    lbEditObs: TcxLabel;
    lbItens: TcxLabel;
    tHist: TnxTable;
    tHistID: TUnsignedAutoIncField;
    tHistTran: TLongWordField;
    tHistCliente: TLongWordField;
    tHistDataHora: TDateTimeField;
    tHistTipoTran: TByteField;
    tHistTipoItem: TByteField;
    tHistItemID: TLongWordField;
    tHistTotal: TCurrencyField;
    tHistDesconto: TCurrencyField;
    tHistTotLiq: TCurrencyField;
    tHistDebito: TCurrencyField;
    tHistPago: TCurrencyField;
    tHistCancelado: TBooleanField;
    tvHist: TcxGridDBTableView;
    dsHist: TDataSource;
    tvHistID: TcxGridDBColumn;
    tvHistTran: TcxGridDBColumn;
    tvHistDataHora: TcxGridDBColumn;
    tvHistTotal: TcxGridDBColumn;
    tvHistDesconto: TcxGridDBColumn;
    tvHistDebito: TcxGridDBColumn;
    tvHistPago: TcxGridDBColumn;
    tvHistCancelado: TcxGridDBColumn;
    cmDemonstrativo: TdxBarLargeButton;
    tbMovEst: TnxTable;
    tbMovEstID: TAutoIncField;
    tbMovEstQuant: TFloatField;
    tbMovEstUnitario: TCurrencyField;
    tbMovEstTotal: TCurrencyField;
    tbMovEstCustoU: TCurrencyField;
    tbMovEstDesconto: TCurrencyField;
    tbMovEstPago: TCurrencyField;
    tbMovEstDataHora: TDateTimeField;
    tbMovEstEntrada: TBooleanField;
    tbMovEstCancelado: TBooleanField;
    tbMovEstEstoqueAnt: TFloatField;
    tbMovEstCategoria: TStringField;
    tbMovEstNaoControlaEstoque: TBooleanField;
    tbMovEstPagoPost: TCurrencyField;
    tbMovEstDescPost: TCurrencyField;
    tbMovEstITran: TIntegerField;
    tbMovEstSessao: TIntegerField;
    tbMovEstFidResgate: TBooleanField;
    tbMovEstFidPontos: TFloatField;
    tbMovEstPermSemEstoque: TBooleanField;
    tbMovEstTran: TLongWordField;
    tbMovEstAjustaCusto: TBooleanField;
    tbMovEstComissao: TCurrencyField;
    tbMovEstComissaoPerc: TFloatField;
    tbMovEstComissaoLucro: TBooleanField;
    tbMovEstProduto: TLongWordField;
    tbMovEstItem: TByteField;
    tbMovEstCliente: TLongWordField;
    tbMovEstCaixa: TIntegerField;
    tbMovEstTipoTran: TByteField;
    tbMovEstID_ref: TLongWordField;
    tbMovEstRecVer: TLongWordField;
    tbMovEstPend: TBooleanField;
    tbMovEstIncluidoEm: TDateTimeField;
    tbMovEsttax_id: TLongWordField;
    tbMovEsttax_incluido: TCurrencyField;
    tbMovEsttax_incluir: TCurrencyField;
    tbMovEstTotLiq: TCurrencyField;
    tbMovEstCustoT: TCurrencyField;
    tbMovEstLucro: TCurrencyField;
    tbMovEstDescr: TWideStringField;
    tbMovEstTotalFinal: TCurrencyField;
    tbMovEstDebDev: TCurrencyField;
    tbPro: TnxTable;
    tbProID: TUnsignedAutoIncField;
    tbProCodigo: TStringField;
    tbProDescricao: TStringField;
    tbProUnid: TStringField;
    tbProPreco: TCurrencyField;
    tbProPrecoAuto: TBooleanField;
    tbProMargem: TFloatField;
    tbProObs: TnxMemoField;
    tbProImagem: TGraphicField;
    tbProCategoria: TStringField;
    tbProFornecedor: TLongWordField;
    tbProSubCateg: TStringField;
    tbProEstoqueAtual: TFloatField;
    tbProCustoUnitario: TCurrencyField;
    tbProPodeAlterarPreco: TBooleanField;
    tbProPermiteVendaFracionada: TBooleanField;
    tbProNaoControlaEstoque: TBooleanField;
    tbProEstoqueMin: TFloatField;
    tbProEstoqueMax: TFloatField;
    tbProAbaixoMin: TBooleanField;
    tbProAbaixoMinDesde: TDateTimeField;
    tbProEstoqueRepor: TFloatField;
    tbProComissaoPerc: TFloatField;
    tbProComissaoLucro: TBooleanField;
    tbProAtivo: TBooleanField;
    tbProFidelidade: TBooleanField;
    tbProFidPontos: TIntegerField;
    tbProCadastroRapido: TBooleanField;
    tbProIncluidoEm: TDateTimeField;
    tbProRecVer: TLongWordField;
    tbProEstoquePend: TFloatField;
    tbProEstoqueTot: TFloatField;
    tbProNCM: TStringField;
    tbProNCM_Ex: TStringField;
    tbProbrtrib: TWordField;
    tbProcest: TLongWordField;
    tbProtax_id: TLongWordField;
    tbPromodST: TByteField;
    tbProMVA: TnxMemoField;
    tbProPauta: TnxMemoField;
    procedure cmNenhumClick(Sender: TObject);
    procedure cmTodosClick(Sender: TObject);
    procedure TVDblClick(Sender: TObject);
    procedure cmGravarClick(Sender: TObject);
    procedure cmCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure TVPagarCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TVTotalCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TVMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure TVMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TVMouseLeave(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lbPromptPagarClick(Sender: TObject);
    procedure TimerPagarTimer(Sender: TObject);
    procedure edPagarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edPagarPropertiesChange(Sender: TObject);
    procedure imgObsClick(Sender: TObject);
    procedure lbEditObsClick(Sender: TObject);
    procedure cbParcialClick(Sender: TObject);
    procedure cbTotalClick(Sender: TObject);
    procedure TVDataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cmDemonstrativoClick(Sender: TObject);
  private
    { Private declarations }
    FDeb : TncDebito;
    FRes : Boolean;
    FNovo : Boolean;
    FTotDeb : Currency;
    FTotSel : Currency;
    FPagar : Currency;
    FMouseRec : Integer;

    procedure LeItem(aItem: Integer);

    function EditarPagEsp: Boolean;
    procedure SetTotDeb(const Value: Currency);
    procedure SetPagar(const Value: Currency);
    procedure SetTotSel(const Value: Currency);
    function GetObs: String;
    procedure SetObs(const Value: String);

    procedure EditObs;

    property TotDeb : Currency read FTotDeb write SetTotDeb;
    property Pagar: Currency read FPagar write SetPagar;
    property TotSel : Currency read FTotSel write SetTotSel;

    procedure setWidthTotal;

    property Obs: String
      read GetObs write SetObs;
  public
    function Editar(aNovo: Boolean; aDeb: TncDebito; aNomeCli: String): Boolean;
    procedure Totaliza;
    { Public declarations }
  end;

var
  FrmDebito: TFrmDebito;

implementation

uses ncaDM, ncIDRecursos, ncaFrmPri, ufmImagens, ncaFrmPagEspecie,
  ncaFrmEditObs, ncaConfigRecibo, ncaFrmImpDemDeb, ncaDMDemonstrativoDeb,
  uNexTransResourceStrings_PT;

// START resource string wizard section
resourcestring
  SDébitoPago = 'Débito Pago';
  SAcessoMáq = 'Acesso Máq: ';
  SAcesso = 'Acesso';
  SVenda = 'Venda';
  SVenda_1 = 'Venda: ';
  SImpressão = 'Impressão';
  STempo = 'Tempo';
  STempo_1 = 'Tempo: ';
  SDebTotal = 'Total em Débito';
  SPagar = 'Pagar';
  SPagarMaiorSel = 'Valor a pagar não pode ser maior que o total dos itens selecionados (%s)';
  SPagarZero = 'Informe o valor a ser pago';
  SNenhumItemSelecionado = 'Selecione os itens que deseja pagar';
  SPagParcial = 'Pagamento Parcial';
  SPagParcialSel = 'Pagamento Parcial'+sLineBreak+'dos itens selecionados';
  SPagTotal = 'Pagamento Total';
  SPagTotalSel = 'Pagamento Total'+sLineBreak+'dos itens selecionados';

// END resource string wizard section


{$R *.dfm}

{ TFrmDebito }

procedure TFrmDebito.cbTotalClick(Sender: TObject);
begin
  cbParcial.Checked := False;
  cbTotal.Font.Color := clBlue;
  cbParcial.Font.Color := clBlack;
  edPagar.Enabled := False;
  edTotalGeral.StyleDisabled.TextColor := clBlue;
  edTotalGeral.StyleDisabled.BorderColor := clBlue;
  edTotalGeral.StyleDisabled.Color := clWhite;
end;

procedure TFrmDebito.cmCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDebito.cmDemonstrativoClick(Sender: TObject);
begin
  TFrmImpDemDeb.Imprimir(FDeb);
end;

procedure TFrmDebito.cmGravarClick(Sender: TObject);
var I: Integer;
begin

  if FTotSel<0.0001 then begin
    Beep;
    ShowMessage(SNenhumItemSelecionado);
    Grid.SetFocus;
    Exit;
  end;

  if FPagar>FTotSel then begin
    Beep;
    ShowMessage(Format(SPagarMaiorSel, [CurrencyToStr(FTotSel)]));
    edPagar.SetFocus;
    Exit;
  end; 

  if FPagar<0.0001 then begin
    Beep;
    ShowMessage(SPagarZero);
    edPagar.SetFocus;
    Exit;
  end;
  
  if not EditarPagEsp then Exit;
  
  FRes := True;
  Close;

  with TV.DataController do 
  for I := FDeb.Itens.Count-1 downto 0 do
    if Values[I, 0]=False then begin
      FDeb.Itens[I].Free;
      FDeb.Itens.Delete(I);
    end;

  FDeb.Recibo := cbRecibo.Checked;
  FDeb.Obs := Obs;
end;

procedure TFrmDebito.cmNenhumClick(Sender: TObject);
var I: Integer;
begin
  with TV.DataController do 
  for I := 0 to FDeb.Itens.Count - 1 do
    Values[I, 0] := False;
  Totaliza;
end;

procedure TFrmDebito.cmTodosClick(Sender: TObject);
var 
  I: Integer;
begin
  with TV.DataController do
  for I := 0 to FDeb.Itens.Count - 1 do 
    Values[I, 0] := True;
  Totaliza;
end;

procedure TFrmDebito.cbParcialClick(Sender: TObject);
begin
  cbTotal.Font.Color := clBlack;
  cbParcial.Font.Color := clBlue;
  cbTotal.Checked := False;
  edTotalGeral.StyleDisabled.TextColor := clBtnShadow;
  edTotalGeral.StyleDisabled.BorderColor := clBtnShadow;
  edTotalGeral.StyleDisabled.Color := clBtnFace;
  edPagar.Enabled := True;
  if cbParcial.Focused then
    edPagar.SetFocus;
end;

function TFrmDebito.Editar(aNovo: Boolean; aDeb: TncDebito; aNomeCli: String): Boolean;
var 
  I : Integer;
  SIndex : String;
begin
  FDeb := aDeb;
  FRes := False;
  FNovo := aNovo;
  lbNomeCli.Caption := aNomeCli;

  if not aNovo then cmDemonstrativo.Visible := ivNever;
  

  if aNovo and gRecibo.Imprimir[tipodoc_pgdebito] then
    cmRecibo.Visible := ivAlways else
    cmRecibo.Visible := ivNever;

  cbRecibo.Checked := aNovo and gRecibo.ImpAuto[tipodoc_pgdebito];  

  if not aNovo then begin
    TVTotal.Caption := SDébitoPago;
    cmGravar.Enabled := False;
    panTot.Enabled := False;
  end;

  if not Permitido(daReceberPagDebito) then
    cmGravar.Enabled := False;
  
  TV.BeginUpdate;
  Dados.tbMovEst.IndexName := 'IID';
  with TV.DataController do 
  try  
    for I := 0 to FDeb.Itens.Count - 1 do begin
      AppendRecord;
      Values[I, 0] := True;
      LeItem(I);
      Values[I, 3] := FDeb.Itens[I].idTotal;
    end;
  finally
    TV.EndUpdate;
  end;

  Totaliza;
  Obs := FDeb.Obs;
  if (not aNovo) and (FDeb.Total<TotSel) then begin
    cbParcial.Checked := True;
    cbTotal.Checked := False;
    edPagar.Value := FDeb.Total;
  end;

  ShowModal;
  Result := FRes;
end;

function TFrmDebito.EditarPagEsp: Boolean;
var 
  P : TncPagEspecies; 
  aProdutos, 
  aDesc: Currency;
  aDescPerc: Double;
  aDescPorPerc : Boolean;
begin
  P := TncPagEspecies.Create;
  try
    P.Assign(FDeb.PagEsp);
    aDesc := FDeb.Desconto;
    aDescPerc := FDeb.DescPerc;
    aDescPorPerc := FDeb.DescPorPerc;
    P.Obs := Obs;
    Result := TFrmPagEspecie.Create(Self).Editar(FNovo, P, nil, FPagar, 0, 0, aDesc, aDescPerc, aDescPorPerc, True, False, False);
    if Result then begin
      FDeb.Pago := FPagar-aDesc;
      FDeb.Total := FPagar;
      FDeb.Desconto := aDesc;
      FDeb.DescPerc := aDescPerc;
      FDeb.DescPorPerc := aDescPorPerc;
      Obs := P.Obs;
      FDeb.PagEsp.Assign(P);
    end;
  finally
    P.Free;
  end
end;

procedure TFrmDebito.EditObs;
var 
  aObs: String;
  aObsNF: Boolean;
begin
  aObs := Obs;
  aObsNF := False;
  if TFrmEditObs.Create(Self).Editar(aObs, aObsNF) then Obs := aObs;
end;

procedure TFrmDebito.edPagarMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TimerPagar.Enabled := True;
end;

function FiltraCur(S: String): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    if S[I] in ['0'..'9', ',', '.'] then
      Result := Result + S[I];
end;

procedure TFrmDebito.edPagarPropertiesChange(Sender: TObject);
begin
  edPagar.PostEditValue;
  Pagar := edPagar.Value;
end;

procedure TFrmDebito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmDebito.FormCreate(Sender: TObject);
begin
  FPagar := 0;
  FTotDeb := 0;
  FTotSel := 0;
  FMouseRec := -1;
end;

procedure TFrmDebito.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_F2    : if cmGravar.Enabled then cmGravarClick(nil);
    Key_Esc   : Close;
    Key_F4    : EditObs;
  end;
end;

procedure TFrmDebito.FormShow(Sender: TObject);
begin
  Grid.SetFocus;
  if (Screen.Width=640) then
    PostMessage(Handle, WM_SYSCOMMAND, SC_MAXIMIZE, 0);
end;

function TFrmDebito.GetObs: String;
begin
  Result := edObs.Lines.Text;
end;

procedure TFrmDebito.imgObsClick(Sender: TObject);
begin
  EditObs;
end;

procedure TFrmDebito.lbEditObsClick(Sender: TObject);
begin
  EditObs;
end;

procedure TFrmDebito.lbPromptPagarClick(Sender: TObject);
begin
  edPagar.SetFocus;
end;

procedure TFrmDebito.LeItem(aItem: Integer);
begin
  with TV.DataController do
  with FDeb.Itens[aItem] do
  case idTipoItem of
    itMovEst : begin
      Values[aItem, 2] := SVenda;
      if not tbMovEst.FindKey([idItemID]) then Exit; // do not localize
      Values[aItem, 1] := tbMovEstDataHora.Value;
      if not tbPro.FindKey([tbMovEstProduto.Value]) then Exit; // do not localize
      Values[aItem, 2] := tbMovEstQuant.AsString + ' x ' + tbProDescricao.Value;
    end;
    itFrete : begin
      Values[aItem, 2] := rsTaxaEntregaFrete;
      if Dados.tbTran.Locate('ID', idItemID, []) then
        Values[aItem, 1] := Dados.tbTranDataHora.Value;
    end;
  end;
end;

procedure TFrmDebito.SetObs(const Value: String);
begin
  edObs.Lines.Text := Value;
  edObs.Visible := (edObs.Lines.Text>'');
end;

procedure TFrmDebito.SetPagar(const Value: Currency);
begin
  FPagar := Value;
  if not edPagar.Focused then
    edPagar.Value := Value;

  setWidthTotal;
end;

procedure TFrmDebito.SetTotDeb(const Value: Currency);
begin
  FTotDeb := Value;
end;

procedure TFrmDebito.SetTotSel(const Value: Currency);
begin
  if Value=FTotSel then Exit;
  FTotSel := Value;
  if cbTotal.Checked then
    Pagar := Value;
  edTotalGeral.Value := FTotSel;
  setWidthTotal;
end;

procedure TFrmDebito.TimerPagarTimer(Sender: TObject);
begin
  TimerPagar.Enabled := False;
  edPagar.SelectAll;
end;

procedure TFrmDebito.Totaliza;
var
  I: Integer;
  V: Variant; 
  T, S: Currency;
begin
  T := 0;
  S := 0;
  with TV.DataController do
  for I := 0 to RecordCount-1 do begin
    V := Values[I, 0];
    if (V<>null) and (V=True) then
      S := S + FDeb.Itens[I].idTotal;
    T := T + FDeb.Itens[I].idTotal;
  end;
  TotDeb := T;
  TotSel := S;

  lbItens.Left := (Width - lbItens.Width) div 2;

{  if S<T then begin
    cbTotal.Caption := SPagTotalSel;
    cbParcial.Caption := SPagParcialSel;
  end else begin
    cbTotal.Caption := SPagTotal;
    cbParcial.Caption := SPagParcial;
  end;}
end;

procedure TFrmDebito.TVDataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
var I: Integer;   
begin
  I := FDeb.Itens[ARecordIndex].idItemID;
  tHist.SetRange([1, I], [1, I]);
end;

procedure TFrmDebito.TVDblClick(Sender: TObject);
var
  V: Variant;
  I: Integer;
begin
  if not panTot.Enabled then Exit;
  
  with TV.DataController do begin
    I := FocusedRecordIndex;
    V := not Values[I, 0];
    Values[I, 0] := V;
  end;

  Totaliza;
end;

procedure TFrmDebito.TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
//  if APrevFocusedRecord<>nil then
//    APrevFocusedRecord.Collapse(True);}
   if AFocusedRecord<>nil then AFocusedRecord.Expand(True);
   
end;

procedure TFrmDebito.TVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Key_Enter ) or (Key = Key_Espaco) then
    TVDblClick(nil);
end;

procedure TFrmDebito.TVMouseLeave(Sender: TObject);
var I : Integer;
begin
  if FMouseRec>-1 then begin
    I := FMouseRec;
    FMouseRec := -1;
    TV.ViewData.Records[I].Invalidate(TVPagar);
  end;
end;

procedure TFrmDebito.TVMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
  AGridSite: TcxGridSite;
  RCH : TcxGridRecordCellHitTest;
  lastMR : Integer;  
begin
  LastMR := FMouseRec;
  
  FMouseRec := -1;
  
  AGridSite := Sender as TcxGridSite;
  AHitTest := TV.GetHitTest(X, Y);
  
  if AHitTest<>nil then
    AGridSite.Cursor := AHitTest.Cursor;

  if (AHitTest is TcxGridRecordCellHitTest) then begin
    RCH := TcxGridRecordCellHitTest(AHitTest);
    if RCH.Item.Index=0 then begin
      AGridSite.Cursor := crHandPoint;
      FMouseRec := RCH.GridRecord.Index;
    end;
  end;

  if (LastMR<>FMouseRec) then begin
    if lastMR>-1 then
      TV.ViewData.Records[lastMR].Invalidate(TVPagar);
    if FMouseRec>-1 then
      TV.ViewData.Records[FMouseRec].Invalidate(TVPagar);
  end;
end;

procedure TFrmDebito.TVMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
  AGridSite: TcxGridSite;
begin
  AHitTest := TV.GetHitTest(X, Y);
  if (AHitTest is TcxGridRecordCellHitTest) then
    if TcxGridRecordCellHitTest(AHitTest).Item.Index=0 then 
      TVDblClick(nil);
end;

procedure TFrmDebito.TVPagarCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  with AViewInfo do
  if (Value <>null) and (Value=True) then 
    ACanvas.Font.Style := [fsBold];
    
  if FMouseRec = AViewInfo.GridRecord.Index then
    ACanvas.Font.Style := ACanvas.Font.Style + [fsUnderline];
end;

procedure TFrmDebito.TVTotalCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  with AViewInfo.GridRecord do
  if (Values[0] <>null) and (Values[0]=True) then 
    ACanvas.Font.Style := [fsBold];
end;

procedure TFrmDebito.setWidthTotal;
var I, I2: Integer;
begin
  I := cxTextWidth(edPagar.StyleFocused.Font, CurrencyToStr(FPagar)) + 20;
  I2 := cxTextWidth(edTotalGeral.StyleFocused.Font, CurrencyToStr(edTotalGeral.Value)) + 20;
  if I2>I then I := I2;
  if I<150 then I := 150;
  
  
  edPagar.Width := I;
  edTotalGeral.Width := I;
end;

end.

