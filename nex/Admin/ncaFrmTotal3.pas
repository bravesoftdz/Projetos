unit ncaFrmTotal3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, cxTextEdit, cxMemo, dxGDIPlusClasses,
  ExtCtrls, LMDBaseEdit, LMDCustomMemo, LMDMemo, ncEspecie, ImgList, ncMyImage,
  ncMovEst, LMDGraph,
  System.ImageList;

type
  TFrmTotal3 = class(TForm)
    imgs: TcxImageList;
    panTot: TLMDSimplePanel;
    panValores: TLMDSimplePanel;
    panTotal: TLMDSimplePanel;
    lbTotal: TcxLabel;
    panPontos: TLMDSimplePanel;
    lbPontosDisp: TcxLabel;
    lbPontosNec: TcxLabel;
    panDesconto: TLMDSimplePanel;
    lbDesconto: TcxLabel;
    lbPromptDesconto: TcxLabel;
    panTax: TLMDSimplePanel;
    lbTaxTotal: TcxLabel;
    lbTax: TcxLabel;
    panObs: TLMDSimplePanel;
    panEFEs: TLMDSimplePanel;
    lbDisplayObs: TcxLabel;
    lbEditDesconto: TcxLabel;
    lbEditObs: TcxLabel;
    lbEditPagamento: TcxLabel;
    procedure panValoresResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbEditObsClick(Sender: TObject);
    procedure lbEditDescontoClick(Sender: TObject);
    procedure lbEditPagamentoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FDesconto: Currency;
    FDescPorPerc : Boolean;
    FDescPerc : Double;
    FME       : TncMovEst;
    FTaxDescr : TncTaxDescr;
    
    FPontosNec: Double;
    FPontosDisp: Double;
    FFidResgate: Boolean;
    FPagEsp : TncPagEspecies;
    FOpPagto: Byte;
    FRecebido: Currency;
    FObsNF : Boolean;
    FObs   : String;
    FOnAtualizaTotal : TNotifyEvent;

    FOnEditarPagEsp : TNotifyEvent;
    
    procedure SetSubTotal(const Value: Currency);
    procedure SetPontosNec(const Value: Double);

    procedure SetPontosDisp(const Value: Double);
    procedure SetFidResgate(const Value: Boolean);
    procedure SetObs(const Value: String);
    procedure SetDesconto(const Value: Currency);
    procedure SetOpPagto(const Value: Byte);
    procedure SetRecebido(const Value: Currency);
    function GetSubTotal: Currency;
    procedure SetDescPerc(const Value: Double);
    procedure SetDescPorPerc(const Value: Boolean);
    function GetObs: String;
    procedure SetObsNF(const Value: Boolean);
    { Private declarations }
  public
    procedure InitVal(aPagEsp: TncPagEspecies; aSubTot, aDesconto, aPago, aRecebido : Double; aObs: String; aObsNF: Boolean; aParent: TWinControl; aShowObs: Boolean = True);
    procedure InitPontos(aNec, aDisp: Double; aObs: String; aParent: TWinControl; aShowObs: Boolean = True);
    procedure InitCusto(aPagEsp: TncPagEspecies; aCusto, aDesconto: Double; aObs: String; aParent: TWinControl; aShowObs: Boolean = True);

    procedure Atualiza;
    procedure AlteraParent(aParent: TWinControl);

    procedure EditObs;
    procedure EditDesc;

    function Total: Currency;

    function calcHeightValores: Integer;
    function calcWidthValores: Integer;

    function calcDesconto: Currency;
    function calcPerc: Double;

    function EditarPagEsp: Boolean;

    procedure SetPagEsp(aPagEsp: TncPagEspecies);

    property MovEst: TncMovEst read FME write FME;
    
    property SubTotal: Currency read GetSubTotal write SetSubTotal;
    
    property Desconto: Currency read FDesconto write SetDesconto;
    property DescPerc: Double read FDescPerc write SetDescPerc;
    property DescPorPerc: Boolean read FDescPorPerc write SetDescPorPerc;

    property PontosNec: Double read FPontosNec write SetPontosNec;
    property PontosDisp: Double read FPontosDisp write SetPontosDisp;

    property FidResgate: Boolean read FFidResgate write SetFidResgate;

    property Recebido: Currency read FRecebido write SetRecebido;
     
    property Obs: String read FObs write SetObs;
    
    property ObsNF: Boolean read FObsNF write SetObsNF;

    property OpPagto: Byte read FOpPagto write SetOpPagto;

    property OnEditarPagEsp: TNotifyEvent
      read FOnEditarPagEsp write FOnEditarPagEsp;

    property OnAtualizaTotal : TNotifyEvent
      read FOnAtualizaTotal write FOnAtualizaTotal;
     

    { Public declarations }
  end;

var
  FrmTotal3: TFrmTotal3;

resourcestring
  rsPontosNec = 'Pontos Necessários';
  rsPontosDisp = 'Pontos Disponíveis';  
  rsTotal = 'Total';
  rsSubTotal = 'Sub-Total';
  rsDesconto = 'Desconto';

implementation

uses ncClassesBase, ncaFrmObs, ncaFrmEditObs, ncaFrmEditDesc;

{$R *.dfm}

function PontosToStr(P: Double): String;
begin
  Str((Int(P*10)/10):10:1, Result);
  Result := Trim(Result);
  if Pos('.', Result)>0 then 
    while (Result>'') and (Result[Length(Result)] in ['0']) do Delete(Result, Length(Result), 1);
  if Result[Length(Result)]='.' then Delete(Result, Length(Result), 1);
end;

procedure TFrmTotal3.AlteraParent(aParent: TWinControl);
begin
  panTot.Parent := aParent;
  aParent.Height := panTot.Height;
end;

procedure TFrmTotal3.Atualiza;
var 
  ObsH, DescH: Integer;
  aTax : Currency;
begin
  FDesconto := calcDesconto;
  lbPontosNec.Caption := rsPontosNec + ' = ' + PontosToStr(FPontosNec);
  lbPontosDisp.Caption := rsPontosDisp + ' = ' + PontosToStr(FPontosDisp);
  if FPontosDisp>=FPontosNec then
    lbPontosDisp.Style.TextColor := clGreen else
    lbPontosDisp.Style.TextColor := clRed;

  lbPromptDesconto.Caption := rsDesconto + ' ('+PercToStr(calcPerc)+') =';

  lbDesconto.Caption := CurrencyToStr(FDesconto);
  lbTotal.Caption := rsTotal + ' = ' + CurrencyToStr(Total);
//  lbTotal.Caption := rsTotal + ' * ' + FloatToStrF(Total, ffCurrency, 15, CurrencyDecimals);

  if FObsNF then
    lbDisplayObs.Caption := 'CONSTAR NA NF: '+FObs 
  else
    lbDisplayObs.Caption := FObs;

  lbDisplayObs.Hint := FObs;  

  lbDisplayObs.Visible := (FObs>''); 
//  lbEditObs.Visible := (Obs='');
  panDesconto.Visible := (FDesconto>0.0001);

  if lbDisplayObs.Visible then begin
    lbDisplayObs.Style.TextColor := clBlack;
    panObs.Bevel.StandardStyle := lsSingleLowered;
  end else begin
    lbDisplayObs.Style.TextColor := clGray;
    panObs.Bevel.StandardStyle := lsNone;
  end;
  panObs.Invalidate;
  panEFEs.Visible := False;
  panEFEs.Invalidate;
  panEFEs.Visible := True;
  

  panPontos.Visible := FidResgate;
  panTotal.Visible := not FidResgate;

  if (not FidResgate) and (FDesconto>0) then
    DescH := panDesconto.Height;
    DescH := 0;

  if Assigned(FME) then
    FME.Itens.UpdateTaxDescr(FTaxDescr) else
    FtaxDescr.Limpa;

  aTax := FTaxDescr.Total;
  panTax.Visible := (aTax>0.001);
  if panTax.Visible then begin
    lbTax.Caption := FTaxDescr.Descr + ' =';
    lbTaxTotal.Caption := CurrencyToStr(aTax);
  end;

  panDesconto.Top := 0;
  panTax.Top := 500;
  panTotal.Top := 1000;
  panPontos.Top := ObsH;

  panTot.Height := Self.calcHeightValores;
  panValores.Width := Self.calcWidthValores;

  panTot.Parent.Height := panTot.Height;

  if Assigned(FOnAtualizaTotal) then FOnAtualizaTotal(Self);
  
end;

function TFrmTotal3.calcDesconto: Currency;
begin
  if FDescPorPerc then 
    Result := DuasCasas(FPagEsp.Produtos * (FDescPerc/100)) else
    Result := FDesconto;
end;

function TFrmTotal3.calcHeightValores: Integer;
begin
  Result := 0;
  if panDesconto.Visible  then Result := result + panDesconto.Height;
  if panTax.Visible then Result := Result + panTax.Height;
  if panTotal.Visible then Result := Result + panTotal.Height;
  if panPontos.Visible then Result := Result + panPontos.Height;

  if panPontos.Visible then begin
    if (FObs>'') then Result := Result + panTax.Height;
  end else begin
    if (Result=panTotal.Height) and (FObs>'') then Result := Result + panTax.Height;
  end;
end;

function TFrmTotal3.calcPerc: Double;
begin
  if not Assigned(FPagEsp) then
    Result := 0
  else
  if FDescPorPerc then
    Result := FDescPerc 
  else
  if FPagEsp.Produtos>0 then
    Result := (FDesconto / FPagEsp.Produtos) * 100 else
    Result := 0;
end;

function MaxWidth(W: Array of Integer): Integer;
var I : Integer;
begin
  Result := 0;
  for I := 0 to High(W) do if W[I]>Result then Result := W[I];
  Result := Result + 32;
end;

function TotalWidth(P: TLMDSimplePanel; L : Array of TcxLabel): Integer;
var I : Integer;
begin
  Result := 0;
  if P.Visible then
    for I := 0 to High(L) do 
       Result := Result + cxTextWidth(L[I].Style.Font, L[I].Caption);
end;

function TFrmTotal3.calcWidthValores: Integer;
begin
  Result := 0;
  if panPontos.Visible then
    Result := MaxWidth([TotalWidth(panPontos, [lbPontosNec]), TotalWidth(panPontos, [lbPontosDisp])])
  else
    Result := 
      MaxWidth([
        TotalWidth(panDesconto, [lbPromptDesconto, lbDesconto]),
        TotalWidth(panTax, [lbTax, lbTaxTotal]),
        TotalWidth(panTotal, [lbTotal])]);
end;

function TFrmTotal3.EditarPagEsp: Boolean;
var 
  P : TncPagEspecies;
  C, D, Desc: Currency;
begin
{  P := TncPagEspecies.Create;
  try
    P.Assign(FPagEsp);
    Desc := FME.Desconto;
    C := FCredUsado + FCli.Credito;
    if (FCredUsado>0) and (C<FCredUsado) then C := FCredUsado;

    if not FNovo then
      D := 0 else
      D := FCli.Debito;
    
    Result := TFrmPagEspecie.Create(Self).Editar(FNovo, P, FTot.SubTotal, C, D, Desc);
    if Result then begin
      FME.Desconto := Desc;
      FME.PagEsp.Assign(P);
    end;
  finally
    P.Free;
  end;}
end;

procedure TFrmTotal3.EditDesc;
var 
  aDescPerc: Double; 
  aDescPorPerc: Boolean;
  Desc: Currency;
begin
  aDescPerc := DescPerc;
  aDescPorPerc := DescPorPerc;
  Desc := Desconto;
  if TFrmEditDesc.Create(Self).Editar(SubTotal, FME.Frete, FME.Tax_Incluir, Desc, aDescPerc, aDescPorPerc) then begin
    FDesconto := Desc;
    FDescperc := aDescPerc;
    FDescPorPerc := aDescPorPerc;
    if Assigned(FME) then begin
      FME.Desconto := FDesconto;
      FME.SalvaDescPago;
    end;
    Atualiza;
  end;
end;

procedure TFrmTotal3.EditObs;
begin
  if TFrmEditObs.Create(Self).Editar(FObs, FObsNF, False, True) then begin
    Obs := FObs;
    ObsNF := FObsNF;
  end;
end;

procedure TFrmTotal3.FormCreate(Sender: TObject);
begin
  FTaxDescr := TncTaxDescr.Create;
  FME := nil;
  FOnAtualizaTotal := nil;
  FOnEditarPagEsp := nil;
  FPontosNec := 0;
  FPontosDisp := 0;
  FFidResgate := False;
  FDesconto := 0;
  FDescPerc := 0;
  FDescPorPerc := False;
  FObs := '';
  lbDisplayObs.Caption := '';
  FObsNF := False;
  Atualiza;

{  if Screen.Width<1280 then begin
    lbEditPagamento.Style.Font.Size := 10;
    lbEditDesconto.Style.Font.Size := 10;
    lbEditObs.Style.Font.Size := 10;
  end;}
end;

procedure TFrmTotal3.FormDestroy(Sender: TObject);
begin
  FTaxDescr.Free;
end;

function TFrmTotal3.GetObs: String;
begin
  Result := FObs;
end;

function TFrmTotal3.GetSubTotal: Currency;
begin
  if FPagEsp=nil then 
    Result := 0 else
    Result := FPagEsp.Produtos;
end;

procedure TFrmTotal3.InitCusto(aPagEsp: TncPagEspecies; aCusto, aDesconto: Double; aObs: String;
  aParent: TWinControl; aShowObs: Boolean);
begin
  FPagEsp := aPagEsp;
  AlteraParent(aParent);
//  lbEditObs.Visible := (aObs>'') or aShowObs;
  Obs := aObs;
  SubTotal := aCusto;
  Desconto := aDesconto;
  FidResgate := False;
  lbEditPagamento.Visible := False;
  lbEditDesconto.Visible := True;
end;

procedure TFrmTotal3.InitPontos(aNec, aDisp: Double; aObs: String;
  aParent: TWinControl; aShowObs: Boolean);
begin
  FPagEsp := nil;
  AlteraParent(aParent);
  FidResgate := True;
  lbEditDesconto.Visible := False;
//  lbEditObs.Visible := (aObs>'') or aShowObs;
  PontosNec := aNec;
  PontosDisp := aDisp;
  Obs := aObs;
  lbEditPagamento.Visible := False;
end;

procedure TFrmTotal3.InitVal(aPagEsp: TncPagEspecies; aSubTot, aDesconto, aPago, aRecebido: Double;
  aObs: String; aObsNF: Boolean; aParent: TWinControl; aShowObs: Boolean);
begin
  FPagEsp := aPagEsp;
  AlteraParent(aParent);
  FidResgate := False;
  lbEditDesconto.Visible := True;
//  lbEditObs.Visible := (aObs>'') or aShowObs;
  SubTotal := aSubTot;
  Desconto := aDesconto;
  FObsNF := aObsNF;
  Obs := aObs;
  if (aPagEsp=nil) or (aPagEsp.Count=0) then lbEditPagamento.Visible := False;
end;

procedure TFrmTotal3.lbEditDescontoClick(Sender: TObject);
begin
  EditDesc;
end;

procedure TFrmTotal3.lbEditObsClick(Sender: TObject);
begin
  EditObs;
end;

procedure TFrmTotal3.lbEditPagamentoClick(Sender: TObject);
begin
  if Assigned(FOnEditarPagEsp) then FOnEditarPagEsp(Self);
end;

procedure TFrmTotal3.panValoresResize(Sender: TObject);
begin
  panTot.Parent.Height := panTot.Height;
end;

procedure TFrmTotal3.SetDesconto(const Value: Currency);
begin
  FDesconto := Value;
  Atualiza;
end;

procedure TFrmTotal3.SetDescPerc(const Value: Double);
begin
  if Value<>FDescPerc then begin
    FDescPerc := Value;
    Atualiza;
  end;
end;

procedure TFrmTotal3.SetDescPorPerc(const Value: Boolean);
begin
  if Value<>FDescPorPerc then begin
    FDescPorPerc := Value;
    Atualiza;
  end;
end;

procedure TFrmTotal3.SetFidResgate(const Value: Boolean);
begin
  FFidResgate := Value;
  Atualiza;
end;

procedure TFrmTotal3.SetObs(const Value: String);
begin
  FObs := Value;
  if FPagEsp<>nil then
    FPagEsp.Obs := Value;
  Atualiza;
end;

procedure TFrmTotal3.SetObsNF(const Value: Boolean);
begin
  FObsNF := Value;
  Atualiza;
end;

procedure TFrmTotal3.SetOpPagto(const Value: Byte);
begin
  FOpPagto := Value;
end;

procedure TFrmTotal3.SetPagEsp(aPagEsp: TncPagEspecies);
begin
  FPagEsp := aPagEsp;
  Atualiza;
end;

procedure TFrmTotal3.SetPontosDisp(const Value: Double);
begin
  FPontosDisp := Value;
  Atualiza;
end;

procedure TFrmTotal3.SetPontosNec(const Value: Double);
begin
  FPontosNec := Value;
  Atualiza;
end;

procedure TFrmTotal3.SetRecebido(const Value: Currency);
begin
  FRecebido := Value;
end;

procedure TFrmTotal3.SetSubTotal(const Value: Currency);
begin
  if FPagEsp<>nil then begin
    FPagEsp.Produtos := Value;
    Atualiza;
  end;
end;

function TFrmTotal3.Total: Currency;
var aTax: Currency;
begin
  if Assigned(FME) then
    aTax := FME.Itens.get_tax_incluir else
    aTax := 0;
    
  if FPagEsp<>nil then 
    Result := FPagEsp.Produtos - calcDesconto + aTax + FME.Frete else
    Result := 0;
end;


end.
