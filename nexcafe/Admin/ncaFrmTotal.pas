unit ncaFrmTotal;
{
    ResourceString: Dario 11/03/13
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxPCdxBarPopupMenu, LMDPNGImage, ExtCtrls, cxPC, cxMemo,
  cxLabel, cxTextEdit, cxCurrencyEdit, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, Menus, StdCtrls,
  cxButtons, LMDBaseControl, LMDBaseGraphicControl, LMDBaseGraphicButton,
  LMDCustomSpeedButton, LMDSpeedButton, ncEspecie;

type
  TFrmTotal = class(TForm)
    panTot: TLMDSimplePanel;
    panInnerTot: TLMDSimplePanel;
    panRec: TLMDSimplePanel;
    panDif: TLMDSimplePanel;
    panObsVal: TLMDSimplePanel;
    LMDSimplePanel6: TLMDSimplePanel;
    panObs: TLMDSimplePanel;
    lbObs: TcxLabel;
    meObs: TcxMemo;
    pgValPontos: TcxPageControl;
    tsTotVal: TcxTabSheet;
    tsTotPontos: TcxTabSheet;
    LMDSimplePanel1: TLMDSimplePanel;
    LMDSimplePanel8: TLMDSimplePanel;
    cxLabel5: TcxLabel;
    LMDSimplePanel9: TLMDSimplePanel;
    cxLabel6: TcxLabel;
    LMDSimplePanel10: TLMDSimplePanel;
    LMDSimplePanel11: TLMDSimplePanel;
    lbNec: TcxLabel;
    lbDisp: TcxLabel;
    tsCusto: TcxTabSheet;
    panTotCusto: TLMDSimplePanel;
    edCustoT: TcxCurrencyEdit;
    lbTotCusto: TcxLabel;
    cxLabel4: TcxLabel;
    panOuterRec: TLMDSimplePanel;
    LMDSimplePanel7: TLMDSimplePanel;
    edRec: TcxCurrencyEdit;
    lbRec: TcxLabel;
    lbValorDif: TcxLabel;
    lbNomeDif: TcxLabel;
    panSimNao: TLMDSimplePanel;
    lbNao: TcxLabel;
    lbSim: TcxLabel;
    panTot1: TLMDSimplePanel;
    panTotal: TLMDSimplePanel;
    edTotal: TcxCurrencyEdit;
    lbTotal: TcxLabel;
    panDesconto: TLMDSimplePanel;
    edDesconto: TcxCurrencyEdit;
    lbDesc: TcxLabel;
    panSubTotal: TLMDSimplePanel;
    edSubTotal: TcxCurrencyEdit;
    lbSubTotal: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    LMDSimplePanel5: TLMDSimplePanel;
    LMDSimplePanel2: TLMDSimplePanel;
    edCalc: TcxCurrencyEdit;
    lbCalc2: TcxLabel;
    lbCalc1: TcxLabel;
    procedure lbDescClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbRecClick(Sender: TObject);
    procedure meObsEnter(Sender: TObject);
    procedure meObsExit(Sender: TObject);
    procedure lbObsClick(Sender: TObject);
    procedure btnPgTotalClick(Sender: TObject);
    procedure btnZeroClick(Sender: TObject);
    procedure edRecEnter(Sender: TObject);
    procedure edRecExit(Sender: TObject);
    procedure edRecPropertiesChange(Sender: TObject);
    procedure edRecPropertiesEditValueChanged(Sender: TObject);
    procedure edDescontoPropertiesChange(Sender: TObject);
    procedure edDescontoPropertiesEditValueChanged(Sender: TObject);
    procedure edDescontoEnter(Sender: TObject);
    procedure edDescontoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbSimClick(Sender: TObject);
    procedure lbNaoClick(Sender: TObject);
    procedure panTotMouseEnter(Sender: TObject);
    procedure panTotMouseExit(Sender: TObject);
    procedure panTotMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormMouseLeave(Sender: TObject);
    procedure pgValPontosChange(Sender: TObject);
  private
    FTamanho: Byte;
    FAtualizando : Boolean;
    FPontosNec : Double;
    FDebCaption : String;
    FPontosDisp : Double;
    FRecAnt : Double;
    FOpPagto : Byte;
    FPagEsp : TncPagEspecies;
    { Private declarations }

    procedure OnTimerSelText(Sender: TObject);


    procedure CriaTimerSelect(aObj: TObject);

    procedure OnTimerNomeDif(Sender: TObject);

    function GetSubTotal: Double;
    procedure SetSubTotal(const Value: Double);
    procedure SetPontosNec(const Value: Double);
    procedure SetPontosDisp(const Value: Double);
    function GetRecebido: Double;
    procedure SetRecebido(const Value: Double);
    procedure SetTamanho(const Value: Byte);
    procedure SetObs(const Value: String);
    function GetObs: String;
  public
    procedure InitVal(aPagEsp: TncPagEspecies; aSubTot, aDesconto, aPago, aRecebido : Double; aObs: String; aParent: TWinControl; aShowObs: Boolean = True);
    procedure InitPontos(aNec, aDisp: Double; aObs: String; aParent: TWinControl; aShowObs: Boolean = True);
    procedure InitCusto(aCusto: Double; aObs: String; aParent: TWinControl; aShowObs: Boolean = True);

    procedure Atualiza(aUpdateRec: Boolean = False);
    procedure Limpa;

    procedure PagarFimAcesso;
    
    function ValPanHeight : Integer;

    function Debito: Double;
    function Desconto: Double;
    function Pago: Double;
    function Total: Double;

    property Obs: String read GetObs write SetObs;

    property Tamanho: Byte
      read FTamanho write SetTamanho;
    
    property Recebido: Double
      read GetRecebido write SetRecebido;

    property OpPagto: Byte
      read FOpPagto write FOpPagto;

    property PontosDisp: Double
      read FPontosDisp write SetPontosDisp;

    property SubTotal: Double
      read GetSubTotal write SetSubTotal;

    property PontosNec: Double
      read FPontosNec write SetPontosNec;  
    { Public declarations }
  end;

var
  FrmTotal: TFrmTotal;

implementation

uses ncClassesBase, ncaDM, ncIDRecursos;

// START resource string wizard section
resourcestring
  SDebitar = 'Debitar';
  SDescontoNãoPodeSerMaiorQueSubTot = 'Desconto não pode ser maior que sub-total';
  SPagarNoFinalDoAcesso = 'Pagar no final do acesso';
  STroco = '  Troco  ';

// END resource string wizard section


{$R *.dfm}

procedure TFrmTotal.lbNaoClick(Sender: TObject);
begin
  edRec.Value := 0;
  FOpPagto := 0;
  edRec.SetFocus;
  CriaTimerSelect(edRec);
end;

procedure TFrmTotal.lbRecClick(Sender: TObject);
begin
  if edRec.Value<0.01 then begin
    edRec.Value := edTotal.Value;
    FOpPagto := 1;
  end else begin
    edRec.Value := 0;
    FOpPagto := 0;
  end;
  edRec.SetFocus;
  CriaTimerSelect(edRec);
end;

procedure TFrmTotal.lbSimClick(Sender: TObject);
begin
  edRec.Value := edTotal.Value;
  FOpPagto := 1;
  edRec.SetFocus;
  CriaTimerSelect(edRec);
end;

procedure TFrmTotal.Limpa;
begin
  FDebCaption := SDebitar;
  edDesconto.Properties.ReadOnly := not Permitido(daTraDesconto);
  lbDesc.Enabled := Permitido(daTraDesconto);
  FAtualizando := True;
  try
    FOpPagto := 0;
    edSubTotal.Value := 0;
    edCustoT.Value := 0;
    edDesconto.Value := 0;
    edTotal.Value := 0;
    edRec.Value := 0;
    FPontosNec := 0;
    FPontosDisp := 0;
  finally
    FAtualizando := False;
  end;
end;

function TFrmTotal.Debito: Double;
begin
  if edRec.Value < edTotal.Value then 
    Result := edTotal.Value - edRec.Value else
    Result := 0;
end;

function TFrmTotal.Desconto: Double;
begin
  Result := edDesconto.Value;
end;

procedure TFrmTotal.edDescontoEnter(Sender: TObject);
begin
  CriaTimerSelect(edDesconto);
end;

procedure TFrmTotal.edDescontoExit(Sender: TObject);
begin
  if edDesconto.Value > edSubTotal.Value then
    edDesconto.Value := edSubTotal.Value;
end;

procedure TFrmTotal.edDescontoPropertiesChange(Sender: TObject);
begin
  if (edDesconto.Focused) and (edDesconto.Value > edSubTotal.Value) then begin
    edDesconto.Value := edSubTotal.Value;
    MessageBeep(30);
    ShowMessage(SDescontoNãoPodeSerMaiorQueSubTot);
    CriaTimerSelect(edDesconto);
  end;

  edDesconto.PostEditValue;
end;

procedure TFrmTotal.edDescontoPropertiesEditValueChanged(Sender: TObject);
begin
  Atualiza(True);
end;

procedure TFrmTotal.meObsEnter(Sender: TObject);
begin
//  panObs.Color := $00B3FFFF;
//  pgDebTroco.Color := $00DFDFDF;
end;

procedure TFrmTotal.meObsExit(Sender: TObject);
begin
//  panObs.Color := clWhite;
//  pgDebTroco.Color := clWhite;
end;

procedure TFrmTotal.edRecEnter(Sender: TObject);
begin
  FRecAnt := edRec.Value;
  criaTimerSelect(edRec);
end;

procedure TFrmTotal.edRecExit(Sender: TObject);
begin
//  panOuterRec.Width := 215;
  if FRecAnt <> edRec.Value then begin
    if edRec.Value = edTotal.Value then
      FOpPagto := 1 else
      FOpPagto := 0;
  end;
end;

procedure TFrmTotal.edRecPropertiesChange(Sender: TObject);
begin
  edRec.PostEditValue;
end;

procedure TFrmTotal.edRecPropertiesEditValueChanged(Sender: TObject);
begin
  Atualiza;
end;

procedure TFrmTotal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTotal.FormCreate(Sender: TObject);
begin
  FTamanho := 0;
  Limpa;
end;

procedure TFrmTotal.FormMouseLeave(Sender: TObject);
begin
  panSimNao.Visible := False;
end;

procedure TFrmTotal.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  panSimNao.Visible := (Y>panTot.Top) and panRec.Visible;
end;

function TFrmTotal.GetObs: String;
begin
  Result := meObs.Lines.Text;
end;

function TFrmTotal.GetRecebido: Double;
begin
  Result := edRec.Value;
end;

function TFrmTotal.GetSubTotal: Double;
begin
  Result := edSubTotal.Value;
end;

function PontosToStr(P: Double): String;
begin
  Str((Int(P*10)/10):10:1, Result);
  Result := Trim(Result);
  if Pos('.', Result)>0 then 
    while (Result>'') and (Result[Length(Result)] in ['0']) do Delete(Result, Length(Result), 1);
  if Result[Length(Result)]='.' then Delete(Result, Length(Result), 1);
end;

procedure TFrmTotal.InitCusto(aCusto: Double; aObs: String;
  aParent: TWinControl; aShowObs: Boolean = True);
begin
  pgValPontos.ActivePage := tsCusto;
  FAtualizando := True;
  try
    panObs.Visible := aShowObs;
    Obs := aObs;
    panRec.Visible := False;
    edSubTotal.Value := aCusto;
    edCustoT.Value := aCusto;
  finally
    FAtualizando := False;
  end;
  if aParent<>nil then 
    panTot.Parent := aParent;
  panTot.Parent.ClientHeight := 78;
  Atualiza;
end;

procedure TFrmTotal.InitPontos(aNec, aDisp: Double; aObs: String;
  aParent: TWinControl; aShowObs: Boolean = True);
begin
  pgValPontos.ActivePage := tsTotPontos;
  FAtualizando := True;
  try
    panObs.Visible := aShowObs;
    panRec.Visible := False;
    panSimNao.Visible := False;
    Obs := aObs;
    SetPontosNec(aNec);
    SetPontosDisp(aDisp);
  finally
    FAtualizando := False;
  end;
  if aParent<>nil then 
    panTot.Parent := aParent;
  panTot.Parent.ClientHeight := 78;
end;

procedure TFrmTotal.InitVal(aPagEsp: TncPagEspecies; aSubTot, aDesconto, aPago, aRecebido: Double;
  aObs: String; aParent: TWinControl; aShowObs: Boolean = True);
begin
  pgValPontos.ActivePage := tsTotVal;
  
  FAtualizando := True;
  try
    panObs.Visible := aShowObs;
    Obs := aObs;
    if aRecebido<0.01 then aRecebido := aPago;
    edSubTotal.Value := aSubTot;
    edDesconto.Value := aDesconto;
    edRec.Value := aRecebido;
    panRec.Visible := True;
  finally
    FAtualizando := False;
  end;
  if aParent<>nil then 
    panTot.Parent := aParent;
  panTot.Parent.ClientHeight := ValPanHeight;
  Atualiza;
end;

procedure TFrmTotal.lbDescClick(Sender: TObject);
begin
  if edDesconto.Value>0.009 then begin
    edDesconto.Value := 0;
    FOpPagto := 0;
  end else begin
    edDesconto.Value := edSubTotal.Value;
    FOpPagto := 2;
  end;
  edDesconto.SetFocus;
  CriaTimerSelect(edDesconto);
end;

procedure TFrmTotal.lbObsClick(Sender: TObject);
begin
  meObs.SetFocus;
end;

procedure TFrmTotal.OnTimerNomeDif(Sender: TObject);
begin
  try
    lbNomeDif.Left := 0;
    lbNomeDif.Realign;
  finally
    Sender.Free;
  end;
end;

procedure TFrmTotal.OnTimerSelText(Sender: TObject);
begin
  with TcxCurrencyEdit(TTimer(Sender).Tag) do
  if Focused then SelectAll;
  
  Sender.Free;
end;

procedure TFrmTotal.PagarFimAcesso;
begin
  FDebCaption := SPagarNoFinalDoAcesso;
end;

function TFrmTotal.Pago: Double;
begin
  if edRec.Value > edTotal.Value then
    Result := edTotal.Value else
    Result := edRec.Value;
end;

procedure TFrmTotal.panTotMouseEnter(Sender: TObject);
begin
  panSimNao.Visible := panRec.Visible;
end;

procedure TFrmTotal.panTotMouseExit(Sender: TObject);
begin
  panSimNao.Visible := False;
end;

procedure TFrmTotal.panTotMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  panSimNao.Visible := panRec.Visible;
end;

procedure TFrmTotal.pgValPontosChange(Sender: TObject);
begin
  if pgValPontos.ActivePage<>tsTotVal then
    panObs.AlignWithMargins := True;
end;

procedure TFrmTotal.SetObs(const Value: String);
begin
  meObs.Lines.Text := Value;
end;

procedure TFrmTotal.SetPontosDisp(const Value: Double);
begin
  FPontosDisp := Value;
  lbDisp.Caption := PontosToStr(Value);
end;

procedure TFrmTotal.SetPontosNec(const Value: Double);
begin
  FPontosNec := Value;
  lbNec.Caption := PontosToStr(Value);
end;

procedure TFrmTotal.SetRecebido(const Value: Double);
begin
  edRec.Value := Value;
end;

procedure TFrmTotal.SetSubTotal(const Value: Double);
begin
  panSimNao.Visible := (Value>0.009) and panRec.Visible;
  edSubTotal.Value := Value;
  Atualiza(True);
end;

procedure TFrmTotal.SetTamanho(const Value: Byte);
const 
  minHeight = 24;
var
  H : Integer;  

procedure ApplyFontHeight(aSize: Integer);
begin
  lbCalc1.Style.Font.Size := aSize;
  lbCalc2.Style.Font.Size := aSize;
  edCalc.Style.Font.Size := aSize;

  lbTotCusto.Style.Font.Size := aSize;
  edCustoT.Style.Font.Size := aSize;

  lbSubTotal.Style.Font.Size := aSize;
  edSubTotal.Style.Font.Size := aSize;
  lbDesc.Style.Font.Size := aSize;
  edDesconto.Style.Font.Size := aSize;
  lbTotal.Style.Font.Size := aSize;
  edTotal.Style.Font.Size := aSize;
  lbRec.Style.Font.Size := aSize;
  edRec.Style.Font.Size := aSize;

  lbValorDif.Style.Font.Size := aSize;
  lbNomeDif.Style.Font.Size := aSize-2;
  
  if edCalc.Height > 24 then
    H := edCalc.Height else
    H := 24;

  panTotCusto.Height := H;  
  
  panObsVal.Height := (H*3)+2;
  panSubTotal.Height := H;
  panDesconto.Height := H;
  panTotal.Height := H;
  panRec.Height := H+2;

  pgValPontos.Width := lbCalc1.Width + lbCalc2.Width + 5;
  panOuterRec.Width := pgValPontos.Width;
  
  edSubTotal.Width := lbCalc2.Width;
  edDesconto.Width := lbCalc2.Width;
  edTotal.Width := lbCalc2.Width;
  edRec.Width := lbCalc2.Width;

  panTot.Parent.Height := ValPanHeight;
  panSimNao.Top := panTot.Parent.ClientHeight;
end;

begin
  if Value=FTamanho then Exit;

  if Value = tamTelaPDV1 then
    ApplyFontHeight(20) else
    ApplyFontHeight(10);
  
  FTamanho := Value;
end;

function TFrmTotal.Total: Double;
begin
  Result := edTotal.Value;
end;

function TFrmTotal.ValPanHeight: Integer;
begin
  Result := panObsVal.Height + 6;
  if panRec.Visible then begin
    Result := Result + panSimNao.Height;
    Result := Result + panRec.Height;
  end;
end;

procedure TFrmTotal.Atualiza(aUpdateRec: Boolean = False);
begin
  if FAtualizando then Exit;
  FAtualizando := True;
  try
    edCustoT.Value := edSubTotal.Value;
    if edDesconto.Value < edSubTotal.Value then
      edTotal.Value := edSubTotal.Value - edDesconto.Value else
      edTotal.Value := 0;
      
    if edDesconto.Value > 0 then
      edDesconto.Style.TextColor := clRed else
      edDesconto.Style.TextColor := clSilver;
  
    if edTotal.Value < 0.01 then
      edRec.Value := 0
    else
    if aUpdateRec then
    case FOpPagto of
      1 : edRec.Value := edTotal.Value;
      2 : edRec.Value := 0;
    end;

    if edRec.Value > edTotal.Value then begin
      lbValorDif.Visible := True;
      lbNomeDif.Visible := True;
      
      lbNomeDif.Style.Color := clGreen;
      lbNomeDif.Caption := STroco;
      lbValorDif.Style.Color := clGreen;
      lbValorDif.Caption := FloatToStrF(Abs(edRec.Value - edTotal.Value), ffCurrency, 10, 2)+'  ';
      lbNomeDif.Left := 0;
      lbValorDif.Left := panOuterRec.Left-1;
    end else
    if edRec.Value < edTotal.Value then begin
      lbValorDif.Visible := True;
      lbNomeDif.Visible := True;
      lbNomeDif.Left := 0;
      lbValorDif.Left := panOuterRec.Left-1;
    
      lbNomeDif.Style.Color := clRed;
      lbNomeDif.Caption := '  '+FDebCaption+'  ';
      lbValorDif.Style.Color := clRed;
      lbValorDif.Caption := FloatToStrF(Abs(edRec.Value - edTotal.Value), ffCurrency, 10, 2)+'  ';
    end else begin
      lbNomeDif.Visible := False;
      lbValorDif.Visible := False;
    end;
    lbNomeDif.Left := 0;
    with TTimer.Create(Self) do begin
      Interval := 50;
      OnTimer := OnTimerNomeDif;
      Enabled := True;
    end;
  finally
    FAtualizando := False;
  end;
end;

procedure TFrmTotal.btnPgTotalClick(Sender: TObject);
begin
  edRec.Value := edTotal.Value;
  FOpPagto := 1;
  edRec.SetFocus;
  CriaTimerSelect(edRec);
end;

procedure TFrmTotal.btnZeroClick(Sender: TObject);
begin
  edRec.Value := 0;
  FOpPagto := 2;
  edRec.SetFocus;
  CriaTimerSelect(edRec);
end;

procedure TFrmTotal.CriaTimerSelect(aObj: TObject);
begin
  with TTimer.Create(Self) do begin
    Tag := Integer(aObj);
    Interval := 50;
    OnTimer := OnTimerSelText;
    Enabled := True;
  end;
end;

end.

