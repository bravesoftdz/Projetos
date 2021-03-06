unit ncaFrmPagEspecie_Old;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxTextEdit, cxCurrencyEdit, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, StdCtrls, cxButtons, LMDBaseEdit,
  LMDCustomEdit, LMDEdit, LMDCustomMaskEdit, LMDMaskEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxLabel, cxGridCustomTableView, cxGridTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxImageComboBox, ImgList,
  cxCheckBox, LMDButtonControl, LMDCustomCheckBox, LMDCheckBox, cxButtonEdit,
  dxScreenTip, dxCustomHint, cxHint, cxMemo, LMDPNGImage, ExtCtrls,
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseGraphicButton, ncEspecie,
  LMDCustomSpeedButton, LMDSpeedButton, cxControls, cxEdit, cxContainer,
  cxPCdxBarPopupMenu, cxPC, ncDebCredValidator, ncMyImage, dxBarBuiltInMenu,
  dxLayoutContainer, cxGridInplaceEditForm, System.ImageList;

type
  TFrmPagEspecie = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    ValorStyle: TcxStyle;
    cxStyle2: TcxStyle;
    cxImageList1: TcxImageList;
    EspStyle: TcxStyle;
    cxStyle4: TcxStyle;
    panPri: TLMDSimplePanel;
    gridEsp: TcxGrid;
    tvEsp: TcxGridTableView;
    tvEspImg: TcxGridColumn;
    tvEspValor: TcxGridColumn;
    glEsp: TcxGridLevel;
    LMDSimplePanel3: TLMDSimplePanel;
    EspStyle_Focus: TcxStyle;
    ValorStyle_Focus: TcxStyle;
    LMDSimplePanel2: TLMDSimplePanel;
    btnSalvar: TcxButton;
    cxButton3: TcxButton;
    cxHintStyleController1: TcxHintStyleController;
    LMDSimplePanel5: TLMDSimplePanel;
    cxLabel1: TcxLabel;
    meObs: TcxMemo;
    btnCancelar: TcxButton;
    cxImageList2: TcxImageList;
    LMDSimplePanel7: TLMDSimplePanel;
    lbTotalPagar: TcxLabel;
    cxLabel6: TcxLabel;
    panDesconto: TLMDSimplePanel;
    lbDesc: TcxLabel;
    TimerDesc: TTimer;
    TimerDesc2: TTimer;
    pgTrocoCred: TcxPageControl;
    tsFalta: TcxTabSheet;
    tsTroco: TcxTabSheet;
    cbDebitar: TcxCheckBox;
    TimerCred: TTimer;
    cbCreditar: TcxCheckBox;
    lbTroco: TcxLabel;
    lbValorTroco: TcxLabel;
    tsOk: TcxTabSheet;
    imgOk: TImage;
    tsErro: TcxTabSheet;
    imgWarning: TImage;
    lbErro: TcxLabel;
    lbValorFalta: TcxLabel;
    lbFalta: TcxLabel;
    tsPassou: TcxTabSheet;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Timer1: TTimer;
    tvEspDescr: TcxGridColumn;
    btnPROTroco: TcxButton;
    cxImageList3: TcxImageList;
    btnConfigDeb: TMyImage;
    lbDesconto: TcxLabel;
    lbPercDesc: TcxLabel;
    btnPRODebito: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure tvEspCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvEspFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvEspCanSelectRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure tvEspImgStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure tvEspValorStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvEspValorPropertiesChange(Sender: TObject);
    procedure cbDebitarClick(Sender: TObject);
    procedure tvEspDataControllerAfterPost(
      ADataController: TcxCustomDataController);
    procedure tvEspDataControllerDataChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvEspValorGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cbCredChange(Sender: TObject);
    procedure gridEspEnter(Sender: TObject);
    procedure gridEspExit(Sender: TObject);
    procedure lbDescClick(Sender: TObject);
    procedure panDescontoClick(Sender: TObject);
    procedure edDescontoPropertiesChange(Sender: TObject);
    procedure TimerCredTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure tvEspDescrCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure cbDebAntClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure cbDebitarChange(Sender: TObject);
    procedure tvEspCanFocusRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure btnPROTrocoClick(Sender: TObject);
    procedure btnConfigDebClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tvEspEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure btnPRODebitoClick(Sender: TObject);
  private
    { Private declarations }
    FTotalDig : Currency;
    FShowed   : Boolean;
    FDentroGrid: Boolean;
    FAlterouDesc: Boolean;
    FProdutos : Currency;
    FTaxIncluir : Currency;
    FSaveDesc : Currency;
    FDesconto : Currency;
    FDescPerc : Double;
    FDescPorPerc : Boolean;
    
    FDebito   : Currency;
    FCredUsado : Currency;
    FAutomatico : Boolean;
    FPremium : Boolean;
    FPagEsp : TncPagEspecies;
    FNovo : Boolean;
    FValores : Array of Currency;
    FFontSize : Integer;
    FValidator : TncDebCredValidator;
    FPodeDebito : Boolean;
    FPodeCredito : Boolean;
    
    procedure AtualizaTotais;
    procedure Load;
    procedure TotalizaDig;

    procedure AjustaVisualDeb;

    procedure ValorAutomatico(const aResetarCred: Boolean = False);
    procedure CorrigeValorAutomatico;

    function IFrom: Integer;

    function Falta: Currency;

    function Troco: Boolean;

    function CalcTroco: Currency;

    function CredDisp: Currency;
    
    function TrocoOk: Boolean;

    function TrocoCredOk: Boolean;

    function TotalPagar: Currency;

    function TotalFinal: Currency;

    procedure SetDesconto(const Value: Currency);
    function MaxCred: Currency;

    procedure AplicaConfigDebito;

    procedure EditDesc;

    procedure AddMaisEsp;
    procedure SetDescPerc(const Value: Double);
    procedure SetDescPorPerc(const Value: Boolean);

    property Desconto: Currency
      read FDesconto write SetDesconto;

    property DescPerc: Double
      read FDescPerc write SetDescPerc;

    property DescPorPerc: Boolean
      read FDescPorPerc write SetDescPorPerc;  
    
  public
    procedure LoadData(aPagEsp: TncPagEspecies; aProdutos, aTaxIncluir, aDesconto: Currency; aDescPerc: Double; aDescPorPerc: Boolean); 
  
    function Editar(aNovo: Boolean; aPagEsp: TncPagEspecies; aValidator: TncDebCredValidator; aProdutos, aTaxIncluir: Currency; var aDesconto: Currency; var aDescPerc: Double; var aDescPorPerc: Boolean; const aPodeSalvar: Boolean = True; const aPodeDebito: Boolean = True; const aPodeCredito: Boolean = True): Boolean;

    property FontSize: Integer
      read FFontSize write FFontSize;    

    { Public declarations }
  end;

var
  FrmPagEspecie: TFrmPagEspecie;

resourcestring
  rsDesconto   = 'Desconto';  
  rsCredito    = 'Cr�dito em Conta';
  rsTotalFinal = 'Total Final';
  rsFalta      = 'Falta';
  rsDebitar    = 'Deixar em d�bito';
  rsRecursoPro = 'Recurso PRO';

  rsErroDesc   = 'Desconto n�o pode ser maior que o total a pagar';
  rsErroPagouMais = 'Valor pago n�o pode ser maior que o valor a pagar';
  rsErroCredMais = 'O valor pago com cr�dito n�o pode ser maior que o cr�dito disponivel do cliente';
  rsOpcoesTelaPag = 'Op��es de Pagamento';

implementation

uses ncaDM, ncIDRecursos, ncaFrmConfigEspecies, ncaFrmPri,
  ncaFrmEditContatoValidar, ncClassesBase, ufmImagens, ncaFrmConfigConfirmaDeb,
  ncaFrmOpcoes, ncaFrmEditDesc, ncaFrmRecursoPRO, ncaFrmTrocoMax, ncaDMImgEsp;


{$R *.dfm}

resourcestring
  rsRecursoProDeb = 'O controle de d�bitos � um recurso exclusivo para assinantes do plano PRO';
  rsRecursoProTroco = 'A op��o de creditar o troco na conta do cliente � um recurso exclusivo para assinantes do plano PRO';

const
  IndValor = 2;


function FiltraCur(S: String): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    if (S[I] in ['0'..'9', ',', '.']) and (S[I]<>FormatSettings.ThousandSeparator) then
      Result := Result + S[I];
end;


procedure TFrmPagEspecie.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  CorrigeValorAutomatico;
end;

procedure TFrmPagEspecie.TimerCredTimer(Sender: TObject);
begin
  TimerCred.Enabled := False;
  Exit;
  
  with tvEsp.DataController do begin 
    Values[0, IndValor] := MaxCred;
    FValores[0] := MaxCred;
  end;
  TotalizaDig;
end;

function TFrmPagEspecie.TotalFinal: Currency;
begin
  lbTotalPagar.Caption := CurrencyToStr(TotalPagar);
  Result := FProdutos - FDesconto + FTaxIncluir;
end;

procedure TFrmPagEspecie.TotalizaDig;
var 
  I : Integer;
begin
  FTotalDig := 0;
  for I := 0 to High(FValores) do
    FTotalDig := FTotalDig + FValores[I];
  AtualizaTotais;
end;

function TFrmPagEspecie.TotalPagar: Currency;
begin
  if FTaxIncluir>0 then
    Result := FProdutos - FDesconto + FTaxIncluir else
    Result := FProdutos;
end;

function TFrmPagEspecie.Troco: Boolean;
begin
  Result := (FTotalDig > TotalFinal);
end;

function TFrmPagEspecie.TrocoCredOk: Boolean;
var 
  I: Integer;
  T: Currency;
  E : TncEspecie;
begin
  Result := False;
  if (not Troco) {or (not gEspecies.AlgumPermiteCred)} then begin
    Result := True;
    Exit;
  end;

  T := 0;

  with tvEsp.DataController do 
  for I := IFrom to RecordCount - 1 do 
  if (Values[I, 0]>0) then begin
    E := gEspecies.PorID[Values[I, 0]];
    if (E=nil) or (not E.PermiteCred) then
      T := T + FValores[I];
  end;

  if T>(TotalFinal-FCredUsado) then begin
    cbCreditar.Visible := False;
    Exit;
  end;

  cbCreditar.Visible := FPodeCredito;

  Result := True;
end;

function TFrmPagEspecie.TrocoOk: Boolean;
var 
  I: Integer;
  T: Currency;
  E : TncEspecie;
begin
  Result := False;
  if not Troco then begin
    Result := True;
    Exit;
  end;

  T := 0;
    
  with tvEsp.DataController do 
  for I := IFrom to RecordCount - 1 do 
  if (Values[I, 0]>0) then begin
    E := gEspecies.PorID[Values[I, 0]];
    if (E=nil) or (not E.PermiteTroco) then
      T := T + FValores[I];
  end;

  if T>(TotalFinal-FCredUsado) then Exit;

  Result := True;
end;

procedure TFrmPagEspecie.AddMaisEsp;
var I, C : Integer;
begin
  with tvEsp.DataController do begin
    if (FocusedRecordIndex=0) and (CredDisp>0) then Exit;
    
    I := FocusedRecordIndex;
    C := Length(FValores);
    SetLength(FValores, C+1);
    if I<(C-1) then
      for I := C downto FocusedRecordIndex+2 do
        FValores[I] := FValores[I-1];
    FValores[FocusedRecordIndex+1] := 0;
    if FocusedRecordIndex=(RecordCount-1) then 
      AppendRecord else
      InsertRecord(FocusedRecordIndex+1);
    FocusedRecordIndex := FocusedRecordIndex + 1;
    Values[FocusedRecordIndex, IndValor] := 0;
    Values[FocusedRecordIndex, 0] := Values[FocusedRecordIndex-1, 0];
    Values[FocusedRecordIndex, 1] := Values[FocusedRecordIndex-1, 1];
  end;
end;

procedure TFrmPagEspecie.AjustaVisualDeb;
var F: TFontStyles;
begin
  F := cbDebitar.Style.Font.Style;
  try
    cbDebitar.Style.Font.Style := [fsBold];
    cbDebitar.Width := cxTextWidth(cbDebitar.Style.Font, cbDebitar.Caption) + 25;
  finally
    cbDebitar.Style.Font.Style := F;
  end;
//  btnConfigDeb.Left := cbDebitar.Left + cbDebitar.Width;
  cbDebitar.Caption := cbDebitar.Caption + ' ';
  cbDebitar.Caption := Copy(cbDebitar.Caption, 1, Length(cbDebitar.Caption)-1);
end;

procedure TFrmPagEspecie.AplicaConfigDebito;
begin
  btnConfigDeb.Visible := FPremium;
  cbDebitar.Enabled := gConfig.ConfirmarDebito and FPremium;
  if not cbDebitar.Enabled then begin
    cbDebitar.Checked := FPremium;
    cbDebitar.Style.TextStyle := [fsBold];
  end;
end;

procedure TFrmPagEspecie.AtualizaTotais;
var T: Currency;
begin
  if FTotalDig>=TotalFinal then
    cbDebitar.Checked := False
  else
  if (not gConfig.ConfirmarDebito) and cbDebitar.Visible then
    cbDebitar.Checked := True;

  if cbDebitar.Checked then begin
    cbDebitar.Style.TextStyle := [fsBold];
    cbDebitar.Style.TextColor := clRed;
  end else begin
    cbDebitar.Style.TextStyle := [];
    cbDebitar.Style.TextColor := clBlack;
  end;

  if FDesconto>0 then begin
    lbPercDesc.Caption := '('+PercToStr(FDescPerc)+')';
    lbDesconto.Caption := CurrencyToStr(FDesconto);
  end else begin
    lbPercDesc.Caption := '';
    lbDesconto.Caption := '';
  end; 

  AjustaVisualDeb;

  if (FTotalDig-TotalFinal)> 0.009 then begin
    lbValorTroco.Caption := CurrencyToStr(CalcTroco);
    pgTrocoCred.ActivePage := tsTroco;
    cbCreditar.Visible := gEspecies.AlgumPermiteCred and FPodeCredito;
  end else
  if FTotalDig<TotalFinal then begin
    T := TotalFinal - FTotalDig;
    lbValorFalta.Caption := CurrencyToStr(T);
    pgTrocoCred.ActivePage := tsFalta;
  end else 
    pgTrocoCred.ActivePage := tsOk;

  if not (TrocoOk or TrocoCredOk) then begin
    pgTrocoCred.ActivePage := tsErro;
    lbErro.Caption := rsErroPagouMais;
  end else
  if FCredUsado>CredDisp then begin
    pgTrocoCred.ActivePage := tsErro;
    lbErro.Caption := rsErroCredMais;
  end;
end;

procedure TFrmPagEspecie.cbCredChange(Sender: TObject);
begin
  AtualizaTotais;
  gridEsp.SetFocus;
end;

procedure TFrmPagEspecie.cbDebAntClick(Sender: TObject);
begin
  ValorAutomatico;
  AtualizaTOtais;
end;

procedure TFrmPagEspecie.cbDebitarChange(Sender: TObject);
begin
  if cbDebitar.Checked then begin
    lbFalta.Caption := rsDebitar;
    lbFalta.Visible := False;
  end else begin
    lbFalta.Caption := rsFalta;
    lbFalta.Visible := True;
  end;
end;

procedure TFrmPagEspecie.cbDebitarClick(Sender: TObject);
var 
  I : Integer;
begin
  if (FTotalDig>=TotalFinal) and cbDebitar.Checked then begin
    FTotalDig := 0;
    FAutomatico := False;
    with tvEsp.DataController do 
    for I := 0 to RecordCount - 1 do begin
      Values[I, IndValor] := null;
      FValores[I] := 0;
    end;
  end;
  AtualizaTotais;
  if cbDebitar.Focused and FShowed then
    gridEsp.SetFocus;
end;

procedure TFrmPagEspecie.CorrigeValorAutomatico;
var I: Integer;
begin
  if (not FAutomatico) or (not FNovo) then Exit;
  with tvEsp.DataController do 
  for I := IFrom to RecordCount - 1 do
    if (Values[I, IndValor]<>null) and (Values[I, IndValor]>0) then begin
      Values[I, IndValor] := TotalFinal - FCredUsado;
      FValores[I] := TotalFinal - FCredUsado;
      Exit;
    end;
end;

procedure TFrmPagEspecie.cxButton3Click(Sender: TObject);
begin
  TFrmOpcoes.Create(Self).Editar(rsOpcoesTelaPag, [TFrmConfigEspecies, TFrmConfigConfirmaDeb], True);
end;

procedure TFrmPagEspecie.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPagEspecie.btnConfigDebClick(Sender: TObject);
var B: Boolean;
begin
  B := gConfig.ConfirmarDebito;
  TFrmConfigConfirmaDeb.Create(Self).ShowModal;
  if B <> gConfig.ConfirmarDebito then
    AplicaConfigDebito;
end;

procedure TFrmPagEspecie.btnPRODebitoClick(Sender: TObject);
begin
  TFrmRecursoPro.Create(Self).Mostrar(rsRecursoProDeb, 'telapag_debito');
end;

procedure TFrmPagEspecie.btnPROTrocoClick(Sender: TObject);
begin
  TFrmRecursoPro.Create(Self).Mostrar(rsRecursoProTroco, 'telapag_creditartroco');
end;

procedure TFrmPagEspecie.btnSalvarClick(Sender: TObject);
var 
  i : Integer;
  aux : Tlist;
  VTroco: Currency;

procedure SavePag(aEspecie: Word; aValor: Currency);
var 
  j: integer;
  p: TncPagEspecie;
  e: TncEspecie;
begin
  p := nil;
  j := 0;
  while (p=nil) and (j<FPagEsp.Count) do 
    if (FPagEsp[j].peEspecie = aEspecie) and (Aux.IndexOf(FPagEsp[j])=-1) then
      p := FPagEsp[j] else
      Inc(j);
      
  if p=nil then begin
    p:= FPagEsp.NewItem;
    P.peEspecie := aEspecie;
  end;
  
  e := gEspecies.PorID[aEspecie];
  p.peTipo  := e.Tipo;
  p.peValor := aValor;

  if (VTroco>0) and (e.PermiteTroco) then begin
    if p.peValor>VTroco then begin
      p.peTroco := VTroco;
      VTroco := 0;
    end else begin
      p.peTroco := p.peValor;
      VTroco := VTroco - p.peValor;
    end;
  end else
    p.peTroco := 0;
  
  Aux.Add(p);
end;

begin
  AtualizaTotais;
  
  if pgTrocoCred.ActivePage=tsErro then begin
    Beep;
    ModalResult := mrNone;
    ShowMessage(lbErro.Caption);
    Exit;
  end;

  if (pgTrocoCred.ActivePage=tsFalta) then begin
    if (not cbDebitar.Checked) then begin
      Beep;
      ModalResult := mrNone;
      ShowMessage(lbFalta.Caption + ' ' + lbValorFalta.Caption);
      Exit;
    end;
    FValidator.NewDebito := Falta;
  end else
    FValidator.NewDebito := 0;

  if (pgTrocoCred.ActivePage=tsTroco) and cbCreditar.Checked then
    FValidator.NewCredito := FTotalDig - TotalFinal else
    FValidator.NewCredito := 0;

  if not FValidator.TudoOk then begin
    Beep;
    TFrmEditContatoValidar.Create(Self).Editar(FValidator);
    ModalResult := mrNone;
    Exit;
  end;

  FPagEsp.Debito := FValidator.NewDebito;
  FPagEsp.CreditoUsado := FCredUsado;
  if (pgTrocoCred.ActivePage=tsTroco) then begin
    if not TFrmTrocoMax.TrocoOk(CalcTroco) then Exit;
    if cbCreditar.Checked then begin
      FPagEsp.Credito := CalcTroco;
      VTroco := 0;
    end else begin
      VTroco := CalcTroco;
    end;
  end else
    VTroco := 0;

  aux := tList.Create;
  try
    with tvEsp.DataController do
    for I := IFrom to RecordCount-1 do 
      if FValores[I]>0.009 then
        SavePag(Values[I, 0], FValores[I]);

    for I := FPagEsp.Count - 1 downto 0 do 
      if Aux.IndexOf(FPagEsp[i])=-1 then FPagEsp.Delete(I);
      
  finally
    aux.Free;
  end;

  FPagEsp.Obs := meObs.Lines.Text;
  ModalResult := mrOk;
end;

function TFrmPagEspecie.CredDisp: Currency;
begin
  Result := FValidator.CalcCredDisp;
end;

function TFrmPagEspecie.CalcTroco: Currency;
begin
  Result := FTotalDig-TotalFinal;
end;

procedure TFrmPagEspecie.lbDescClick(Sender: TObject);
begin
  EditDesc;
end;

procedure TFrmPagEspecie.edDescontoPropertiesChange(Sender: TObject);
var 
  S: String; 
  C: Currency;
  I: Integer;
begin
//  S := FiltraCur(edDesconto.EditingText);
  C := StrToCurrDef(S, 0);
  with tvEsp.DataController do 
  if C<>FSaveDesc then begin
    FAlterouDesc := True;
    FSaveDesc := C;
    if C>TotalPagar then begin
      FDesconto := TotalPagar;
      TimerDesc2.Enabled := True;
    end else begin
      FDesconto := C;
      TimerDesc2.Enabled := False;
    end; 
    FTotalDig := 0;
    for I := 0 to RecordCount - 1 do
      if Values[I, 0] = 0 then begin
        Values[I, IndValor] := MaxCred;
        FValores[I] := MaxCred;
        FTotalDig := MaxCred;
        FCredUsado := MaxCred;
      end else begin
        Values[I, IndValor] := 0;
        FValores[I] := 0;
      end;
    AtualizaTotais;
    if TimerDesc2.Enabled then
      pgTrocoCred.ActivePage := tsErro;
    FAutomatico := False;   
  end;
end;

function TFrmPagEspecie.Editar(aNovo: Boolean; aPagEsp: TncPagEspecies; aValidator: TncDebCredValidator; aProdutos, aTaxIncluir: Currency; var aDesconto: Currency; var aDescPerc: Double; var aDescPorPerc: Boolean; const aPodeSalvar: Boolean = True; const aPodeDebito: Boolean = True; const aPodeCredito: Boolean = True): Boolean;
begin
  if Assigned(aValidator) then
    FValidator.Assign(aValidator);

  cbDebitar.Visible := aPodeDebito; 
  btnConfigDeb.Visible := aPodeDebito and FPremium;   

  panDesconto.Visible := (aTaxIncluir<0.001);
    
  btnSalvar.Enabled := aPodeSalvar;
  FNovo := aNovo;
  FPodeDebito := aPodeDebito;
  FPodeCredito := aPodeCredito;
  cbCreditar.Visible := gEspecies.AlgumPermiteCred and FPodeCredito;
  
  LoadData(aPagEsp, aProdutos, aTaxIncluir, aDesconto, aDescPerc, aDescPorPerc);
  ShowModal;
  Result := (ModalResult=mrOk);
  if Result then begin
    aDesconto := FDesconto;
    aDescPorPerc := FDescPorPerc;
    aDescPerc := FDescPerc;
    aPagEsp.Produtos   := aProdutos;
    aPagEsp.TaxIncluir := aTaxIncluir;
    if Assigned(aValidator) then
      aValidator.Assign(FValidator);
  end;
end;

procedure TFrmPagEspecie.EditDesc;
var 
  aDescPerc: Double; 
  aDescPorPerc, alterou: Boolean;
  Desc: Currency;
  I : Integer;
begin
  if not panDesconto.Visible then Exit;
  
  aDescPerc := DescPerc;
  aDescPorPerc := DescPorPerc;
  Desc := Desconto;
  if TFrmEditDesc.Create(Self).Editar(TotalPagar, Desc, aDescPerc, aDescPorPerc) then begin
    Alterou := (Desconto<>Desc);
    Desconto := Desc;
    DescPerc := aDescPerc;
    DescPorPerc := aDescPorPerc;

    with tvEsp.DataController do
    for I := 0 to RecordCount - 1 do
      if Values[I, 0] = 0 then begin
        Values[I, IndValor] := MaxCred;
        FValores[I] := MaxCred;
        FTotalDig := MaxCred;
        FCredUsado := MaxCred;
      end else begin
        Values[I, IndValor] := 0;
        FValores[I] := 0;
      end;
          
    AtualizaTotais;
    if Alterou then begin
      FAutomatico := True;
      ValorAutomatico;
    end;
  end;
end;

function TFrmPagEspecie.Falta: Currency;
begin
  Result := TotalFinal - FTotalDig;
end;

procedure TFrmPagEspecie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function Zeros(N: Integer): String;
begin
  result := '';
  while Length(Result)<N do REsult := Result + '0';
end;

procedure TFrmPagEspecie.FormCreate(Sender: TObject);
var i: integer;
begin
  with FormatSettings do
  if CurrencyDecimals>0 then 
    TcxCurrencyEditProperties(tvEspValor.Properties).EditFormat := '0.'+Zeros(CurrencyDecimals) else
    TcxCurrencyEditProperties(tvEspValor.Properties).EditFormat := '0';
    
  lbPercDesc.Caption := '';
  lbDesconto.Caption := '';
  AjustaVisualDeb;

  AplicaConfigDebito;
  
  FValidator := TncDebCredValidator.Create;
  FPremium := False;
  FSaveDEsc := 0;
  FFontSize := 18;
  SetLength(FValores, 0);
  cbCreditar.Visible := gEspecies.AlgumPermiteCred;
    
  FDentroGrid := False;
  FTotalDig := 0;
  FShowed := False;
  FAutomatico := True;
  with TcxImageComboBoxProperties(tvEspImg.Properties).Items do begin
    Clear;
    with Add do begin
      Value := 0;
      Description := rsCredito;
      ImageIndex := 4;
    end;
    for I := 0 to gEspecies.Count - 1 do
      with Add do begin
        Value := gEspecies.Itens[i].ID;
        Description := gEspecies.Itens[i].Nome;
        ImageIndex := gEspecies.Itens[i].Img;
      end;
  end;
end;

procedure TFrmPagEspecie.FormDestroy(Sender: TObject);
begin
  FValidator.Free;
end;

procedure TFrmPagEspecie.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
     Key_F2 : if btnSalvar.Enabled then btnSalvarClick(nil);
     Key_F3 : EditDesc;
     Key_Esc : btnCancelarClick(nil);
     Key_Ins :  AddMaisEsp;
  end;
end;

procedure TFrmPagEspecie.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key='+' then AddMaisEsp;
end;

procedure TFrmPagEspecie.FormShow(Sender: TObject);
begin
  TotalizaDig;
  FShowed := True;
  gridEsp.SetFocus;
end;

procedure TFrmPagEspecie.gridEspEnter(Sender: TObject);
begin
  FDentroGrid := True;
end;

procedure TFrmPagEspecie.gridEspExit(Sender: TObject);
begin
  FDentroGrid := False;
end;

function TFrmPagEspecie.IFrom: Integer;
begin
  if CredDisp>0 then
    Result := 1 else
    Result := 0;
end;

procedure TFrmPagEspecie.Load;
var 
  i, j, c: integer;
  ok: boolean;

procedure Add(aEspecie: Integer; aValor: Currency);
begin
  Inc(C);
  ok := True;
  tvEsp.DataController.AppendRecord;
  tvEsp.DataController.Values[c-1, 0] := aEspecie;
  tvEsp.DataController.Values[c-1, 1] := aEspecie;
  tvEsp.DataController.Values[c-1, IndValor] := aValor;

  SetLength(FValores, C);
  FValores[C-1] := aValor;
end;

begin
  c := 0;
  tvEsp.DataController.RecordCount := 0;
  if CredDisp>0 then
  if FNovo then begin
    Add(0, MaxCred);
    FCredUsado := MaxCred;
  end else 
    Add(0, FCredUsado);

  FPremium := gConfig.IsPremium;
  FPremium := FPremium or (FValidator.OldCliCreditado>0.009);

  if not FPremium then 
  for I := 0 to FPagEsp.Count-1 do
    if FPagEsp[i].peEspecie>1 then begin
      FPremium := True;
      Break;
    end;

  btnPROTroco.Visible := not FPremium;
  cbCreditar.Enabled := FPremium;

  btnPRODebito.Visible := not FPremium;
  cbDebitar.Enabled := FPremium;

  for I := 0 to gEspecies.Count - 1 do begin
    ok := False;
    for j := 0 to FPagEsp.Count - 1 do
      if FPagEsp[j].peEspecie=gEspecies[i].ID then 
        Add(gEspecies[i].ID, FPagEsp[j].peValor);
    if not ok then Add(gEspecies[i].ID, 0);
  end;

  if FPagEsp.Count=0 then begin
    if CredDisp>0 then
      I := 1 else
      I := 0;
    if FNovo then begin
      tvEsp.DataController.Values[I, IndValor] := TotalFinal - FCredUsado;
      FValores[I] := TotalFinal - FCredUsado;
    end;
    tvEsp.DataController.FocusedRecordIndex := I;
  end else begin
    for I := 0 to tvEsp.DataController.RecordCount - 1 do
      if tvEsp.DataController.Values[I, IndValor]>0 then begin
        tvEsp.DataController.FocusedRecordIndex := I;
        Break;
      end;
    if (I>=tvEsp.DataController.RecordCount) or (tvEsp.DataController.Values[I, IndValor]<0.001) then 
      tvEsp.DataController.FocusedRecordIndex := 0;
  end;

  TotalizaDig;

  if (not FNovo) then
  if (pgTrocoCred.ActivePage=tsFalta) then
    cbDebitar.Checked := True
  else
  if (pgTrocoCred.ActivePage=tsTroco) and (FPagEsp.Credito>0) then
    cbCreditar.Checked := True;
end;

procedure TFrmPagEspecie.LoadData(aPagEsp: TncPagEspecies; aProdutos, aTaxIncluir, aDesconto: Currency; aDescPerc: Double; aDescPorPerc: Boolean);
begin
  FCredUsado := aPagEsp.CreditoUsado;
  FPagEsp := aPagEsp;
  FProdutos := aProdutos;
  FTaxIncluir := aTaxIncluir;
  Desconto := aDesconto;
  DescPerc := aDescPerc;
  DescPorPerc := aDescPorPerc;
  meObs.Lines.text := FPagEsp.Obs;
  lbTotalPagar.Caption := CurrencyToStr(TotalPagar);
  Load;
end;

function TFrmPagEspecie.MaxCred: Currency;
begin
  if TotalFinal > CredDisp then
    Result := CredDisp else
    Result := TotalFinal;
end;

procedure TFrmPagEspecie.panDescontoClick(Sender: TObject);
begin
  EditDesc;
end;

procedure TFrmPagEspecie.SetDesconto(const Value: Currency);
begin
  if FDesconto = Value then Exit;
  FDesconto := Value;
  AtualizaTotais;
end;

procedure TFrmPagEspecie.SetDescPerc(const Value: Double);
begin
  if Value=FDescPerc then Exit;
  FDescPerc := Value;
  AtualizaTotais;
end;

procedure TFrmPagEspecie.SetDescPorPerc(const Value: Boolean);
begin
  if Value=FDescPorPerc then Exit;
  FDescPorPerc := Value;
  AtualizaTotais;
end;

procedure TFrmPagEspecie.tvEspCanFocusRecord(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
  if (ARecord.Values[TVEspImg.Index]>1) and (not FPremium) then
    AAllow := False else
    AAllow := True;
end;

procedure TFrmPagEspecie.tvEspCanSelectRecord(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
  AAllow := (ARecord.Index>0);
end;

procedure TFrmPagEspecie.tvEspCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var 
  V: Variant;
  T, L : Integer;
begin
{  with AViewInfo do 
  if Item=tvEspImg then
    if GridRecord.Values[0]<1 then begin
      ACanvas.Font.Size := 10;
      ACanvas.Font.Style := [fsBold];
    end;  }
  
  if FDentroGrid and AViewInfo.RecordViewInfo.Focused then
  begin
    ACanvas.Brush.Color := $00AAFFFF;
    ACanvas.Font.Color := clBlack;
{    ACanvas.FillRect(AviewInfo.RecordViewInfo.ContentBounds, ACanvas.Brush.Color);
    AViewInfo.EditViewInfo.Paint(ACanvas);
    if AViewInfo.Item.VisibleIndex = 0 then
      ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clBlack, clBlack, [bLeft, bTop, bBottom], 3);
    if AViewInfo.Item.VisibleIndex = Sender.VisibleItemCount - 1 then
      ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clBlack, clBlack, [bRight, bTop, bBottom], 3)
    else      
      ACanvas.DrawComplexFrame(AViewInfo.ClientBounds, clBlack, clBlack, [bTop, bBottom], 3);
    ADone := True;   }
  end else begin
    ACanvas.Brush.Color := clWhite;
    V := AViewInfo.GridRecord.Values[tvEspImg.Index];
    with AViewInfo do 
    if (not FPremium) and ((V=null) or (V>1)) then
    begin
      ACanvas.Brush.Color := clWhite;
      ACanvas.Font.Color := clSilver;
      if Item=tvEspValor then begin
        ACanvas.Font.Style := [];
        ACanvas.Font.Size := 8;
        ACanvas.FillRect(AViewInfo.Bounds);
        T := (((Bounds.Bottom - Bounds.top) - 16) div 2) + Bounds.Top;
        L := cxTextWidth(ACanvas.Font, rsRecursoPro);
        L := Bounds.Right - L - 16 - 10;
        ACanvas.DrawTexT(rsRecursoPro, Rect(Bounds.Left+3, Bounds.Top+3, Bounds.Right-3, Bounds.Bottom-3), taRightJustify, vaCenter, True, False);
        ACanvas.DrawImage(dmImagens.im16, L, T, 85);
        ADone := True;
      end;
    end;
  end;
    
{  if AViewInfo.GridRecord.Index=0 then begin
    ACanvas.Font.Size := 10;
    ACanvas.Font.Style := [];
    ACanvas.FillRect(AviewInfo.RecordViewInfo.ContentBounds, ACanvas.Brush.Color);
    ACanvas.DrawTexT('Selecione uma forma de pagamento:', AViewInfo.RecordViewInfo.ContentBounds, taCenter, vaCenter, False, False);
    R := AViewInfo.RecordViewInfo.ClientBounds;
    R.Right := R.Right-1;
    R.Bottom := R.Bottom-1;
    ADone := True;
  end;}
end;

procedure TFrmPagEspecie.tvEspDataControllerAfterPost(
  ADataController: TcxCustomDataController);
begin
  with ADataController do
  if FShowed and (FocusedRecordIndex>=IFrom) then
    FAutomatico := (Values[FocusedRecordIndex, IndValor]=(TotalFinal-FCredUsado));
end;

procedure TFrmPagEspecie.tvEspDataControllerDataChanged(Sender: TObject);
begin
  if (not FShowed) then Exit;
  with tvEsp.DataController do 
     if (Values[FocusedRecordIndex, IndValor] <> null) and (Values[FocusedRecordIndex, IndValor]=0) then
        Values[FocusedRecordIndex, IndValor] := null;
end;

procedure TFrmPagEspecie.tvEspDescrCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var 
  va: TcxAlignmentVert;
  r: TRect;
  V: Variant;
begin
  if AViewInfo.GridRecord.Focused and FDentroGrid then
    ACanvas.FillRect(AViewInfo.RealBounds, EspStyle_Focus.Color) else
    ACanvas.FillRect(AViewInfo.RealBounds, clWhite);


  V := AViewInfo.GridRecord.Values[tvEspImg.Index];
  if (not FPremium) and ((V=null) or (V>1)) then
    ACanvas.Font.Color := clSilver else
    ACanvas.Font.Color := clBlack;
    
  ACanvas.Font.Size := FFontSize;
  if aViewInfo.Value=0 then
    va := vaTop else
    va := vaCenter;
  ACanvas.DrawTexT(TcxImageComboBoxProperties(tvEspImg.Properties).GetDisplayText(AViewInfo.Value), 
    AViewInfo.RealBounds, 
    taLeftJustify,
    va, False, True);
  if va=vaTop then begin
    ACanvas.Font.Size := 10;
    R := AViewInfo.RealBounds;
    R.Left := R.Left + 2;
    R.Top := R.Top + ((R.Bottom-R.Top) div 2);
    ACanvas.DrawText('Credito Total = '+CurrencyToStr(CredDisp), R, taLeftJustify, vaCenter, False, True);
  end;
  ADone := True;
end;

procedure TFrmPagEspecie.tvEspEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = KEY_ENTER) and btnSalvar.Enabled and ((pgTrocoCred.ActivePage=tsOk) or (pgTrocoCred.ActivePage=tsTroco)) then
    btnSalvar.Click;
end;

procedure TFrmPagEspecie.tvEspFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if (CredDisp>0) and (AFocusedRecord.Index=0) then Exit;


  ValorAutomatico;
end;

procedure TFrmPagEspecie.tvEspImgStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
begin
  if ARecord.Focused then
    AStyle := EspStyle_Focus else
    AStyle := EspStyle;
end;

procedure TFrmPagEspecie.tvEspValorGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if (ARecord.Values[IndValor]=null) or (ARecord.Values[IndValor]=0) then
    AText := '';
end;

function StrTOC(S: String): Extended;
var I: Integer;
begin
  with FormatSettings do
  if DecimalSeparator<>'.' then begin
    I := Pos(DecimalSeparator, S);
    if I>0 then S[I] := '.';
  end;

  System.Val(S, Result, I);
  if I>0 then Result := 0;
end;

procedure TFrmPagEspecie.tvEspValorPropertiesChange(Sender: TObject);
var 
  C: Currency;
  S: String;
begin
  with tvEsp, Controller.EditingController do
  if IsEditing and (Edit is TcxCustomCurrencyEdit) then begin
    S := FiltraCur(TcxCustomCurrencyEdit(Edit).EditingText);
    C := StrToC(S);
    
    if (CredDisp>0) and (DataController.FocusedRecordIndex=0) then begin
      FCredUsado := C;
//          Timer1.Enabled := True;
    end;
    FValores[DataController.FocusedRecordIndex] := C;
    if (CredDisp>0) and (DataController.FocusedRecordIndex=0) and (C>MaxCred) then
      TimerCred.Enabled := True else
      TimerCred.Enabled := False;
    TotalizaDig;
  end;
end;

procedure TFrmPagEspecie.tvEspValorStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
begin
  if FDentroGrid and ARecord.Focused then
    AStyle := ValorStyle_Focus else
    AStyle := ValorStyle;
end;

procedure TFrmPagEspecie.ValorAutomatico(const aResetarCred: Boolean = False);
var 
  I: Integer;
begin
  if (not FShowed) or (not FAutomatico) then Exit;

  with tvEsp.DataController do begin 
    if CredDisp>0 then begin
      if aResetarCred or (FCredUsado>MaxCred) then begin
        Values[0, IndValor] := MaxCred;
        FValores[0] := MaxCred;
        FCredUsado := MaxCred;
      end;
    end;
  
    if FNovo then
    for I := IFrom to RecordCount-1 do
    if (I=FocusedRecordIndex) then begin
      Values[I, IndValor] := TotalFinal-FCredUsado;
      FValores[I] := TotalFinal-FCredUsado;
    end else begin
      Values[I, IndValor] := null;
      FValores[I] := 0;
    end;
  end;

  TotalizaDig;
end;

end.

