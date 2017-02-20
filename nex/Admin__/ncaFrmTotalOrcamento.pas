unit ncaFrmTotalOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, cxTextEdit, cxMemo, dxGDIPlusClasses,
  ExtCtrls, LMDBaseEdit, LMDCustomMemo, LMDMemo, ncEspecie, ImgList, ncMyImage,
  System.ImageList;

type
  TFrmTotalOrcamento = class(TForm)
    imgs: TcxImageList;
    panTot: TLMDSimplePanel;
    panInnerTot: TLMDSimplePanel;
    panValor: TLMDSimplePanel;
    lbTotal: TcxLabel;
    lbEditDesconto: TcxLabel;
    panDesconto: TLMDSimplePanel;
    panDesc2: TLMDSimplePanel;
    lbDesconto: TcxLabel;
    lbPromptDesconto: TcxLabel;
    panDesc1: TLMDSimplePanel;
    lbSubTotal: TcxLabel;
    cxLabel3: TcxLabel;
    lbObs: TcxLabel;
    lbEditObs: TcxLabel;
    procedure panTotResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbEditObsClick(Sender: TObject);
    procedure lbEditDescontoClick(Sender: TObject);
  private
    FDesconto: Currency;
    FDescPorPerc : Boolean;
    FDescPerc : Double;
    
    FFidResgate: Boolean;
    FPagEsp : TncPagEspecies;
    FOpPagto: Byte;
    FRecebido: Currency;

    procedure SetSubTotal(const Value: Currency);

    procedure SetFidResgate(const Value: Boolean);
    procedure SetObs(const Value: String);
    function GetObs: String;
    procedure SetDesconto(const Value: Currency);
    procedure SetOpPagto(const Value: Byte);
    procedure SetRecebido(const Value: Currency);
    function GetSubTotal: Currency;
    procedure SetDescPerc(const Value: Double);
    procedure SetDescPorPerc(const Value: Boolean);
    { Private declarations }
  public
    procedure InitVal(aPagEsp: TncPagEspecies; aSubTot, aDesconto, aPago, aRecebido : Double; aObs: String; aParent: TWinControl; aShowObs: Boolean = True);

    procedure Atualiza;
    procedure AlteraParent(aParent: TWinControl);

    procedure EditObs;
    procedure EditDesc;

    function Total: Currency;

    function calcDesconto: Currency;
    function calcPerc: Double;

    function EditarPagEsp: Boolean;

    procedure SetPagEsp(aPagEsp: TncPagEspecies);
    
    property SubTotal: Currency read GetSubTotal write SetSubTotal;
    
    property Desconto: Currency read FDesconto write SetDesconto;
    property DescPerc: Double read FDescPerc write SetDescPerc;
    property DescPorPerc: Boolean read FDescPorPerc write SetDescPorPerc;

    property FidResgate: Boolean read FFidResgate write SetFidResgate;

    property Recebido: Currency read FRecebido write SetRecebido;
     

    property Obs: String read GetObs write SetObs;

    property OpPagto: Byte read FOpPagto write SetOpPagto;

    { Public declarations }
  end;

var
  FrmTotalOrcamento: TFrmTotalOrcamento;

resourcestring
  rsTotal = 'Total';
  rsSubTotal = 'Sub-Total';
  rsDesconto = 'Desconto';

implementation

uses ncClassesBase, ncaFrmObs, ncaFrmEditObs, ncaFrmEditDesc;

{$R *.dfm}

procedure TFrmTotalOrcamento.AlteraParent(aParent: TWinControl);
begin
  Atualiza;
  panTot.Parent := aParent;
  aParent.Height := panTot.Height;
end;

procedure TFrmTotalOrcamento.Atualiza;
begin
  lbSubTotal.Caption := CurrencyToStr(SubTotal);

  lbPromptDesconto.Caption := rsDesconto + ' ('+PercToStr(calcPerc)+') =';

  lbDesconto.Caption := CurrencyToStr(FDesconto);
  lbTotal.Caption := rsTotal + ' = ' + CurrencyToStr(Total);
//  lbTotal.Caption := rsTotal + ' * ' + FloatToStrF(Total, ffCurrency, 15, CurrencyDecimals);

  lbObs.Visible := (Obs>'');
  lbEditObs.Visible := (Obs='');
  lbEditDesconto.Visible := (Desconto<0.0001);
  panDesconto.Visible := True; //(FDesconto>0.0001);

  panValor.Visible := not FidResgate;

  if (FDesconto>0) then
    panDesconto.Height := panDesc1.Height * 2 else
    panDesconto.Height := 0;

  panDesconto.Top := 0;
  panValor.Top := 1000;

  if (FDesconto>0.0001) or (Obs>'') then
    panTot.Height := panDesc1.Height * 3 else
    panTot.Height := panDesc1.Height;

  panTot.Parent.Height := panTot.Height;
end;

function TFrmTotalOrcamento.calcDesconto: Currency;
begin
  if FDescPorPerc then 
    Result := DuasCasas(FPagEsp.Produtos * (FDescPerc/100)) else
    Result := FDesconto;
end;

function TFrmTotalOrcamento.calcPerc: Double;
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

function TFrmTotalOrcamento.EditarPagEsp: Boolean;
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

procedure TFrmTotalOrcamento.EditDesc;
var 
  aDescPerc: Double; 
  aDescPorPerc: Boolean;
  Desc: Currency;
begin
  aDescPerc := DescPerc;
  aDescPorPerc := DescPorPerc;
  Desc := Desconto;
  if TFrmEditDesc.Create(Self).Editar(SubTotal, Desc, aDescPerc, aDescPorPerc) then begin
    Desconto := Desc;
    Descperc := aDescPerc;
    DescPorPerc := aDescPorPerc;
  end;
end;

procedure TFrmTotalOrcamento.EditObs;
var 
  aObs: String;
  aObsNF : Boolean;
begin
  aObs := Obs;
  aObsNF := False;
  if TFrmEditObs.Create(Self).Editar(aObs, aObsNF, True) then Obs := aObs;
end;

procedure TFrmTotalOrcamento.FormCreate(Sender: TObject);
begin
  FFidResgate := False;
  FDesconto := 0;
  FDescPerc := 0;
  FDescPorPerc := False;
  lbObs.Caption := '';
  Atualiza;

  if Screen.Width<1280 then begin
    lbEditDesconto.Style.Font.Size := 10;
    lbEditObs.Style.Font.Size := 10;
  end;
end;

function TFrmTotalOrcamento.GetObs: String;
begin
  Result := lbObs.Caption;
end;

function TFrmTotalOrcamento.GetSubTotal: Currency;
begin
  if FPagEsp=nil then 
    Result := 0 else
    Result := FPagEsp.Produtos;
end;

procedure TFrmTotalOrcamento.InitVal(aPagEsp: TncPagEspecies; aSubTot, aDesconto, aPago, aRecebido: Double;
  aObs: String; aParent: TWinControl; aShowObs: Boolean);
begin
  FPagEsp := aPagEsp;
  AlteraParent(aParent);
  FidResgate := False;
  lbEditDesconto.Visible := True;
  lbEditObs.Visible := (aObs>'') or aShowObs;
  SubTotal := aSubTot;
  Desconto := aDesconto;
  Obs := aObs;
end;

procedure TFrmTotalOrcamento.lbEditDescontoClick(Sender: TObject);
begin
  EditDesc;
end;

procedure TFrmTotalOrcamento.lbEditObsClick(Sender: TObject);
begin
  EditObs;
end;

procedure TFrmTotalOrcamento.panTotResize(Sender: TObject);
begin
  panTot.Parent.Height := panTot.Height;
end;

procedure TFrmTotalOrcamento.SetDesconto(const Value: Currency);
begin
  FDesconto := Value;
  Atualiza;
end;

procedure TFrmTotalOrcamento.SetDescPerc(const Value: Double);
begin
  if Value<>FDescPerc then begin
    FDescPerc := Value;
    Atualiza;
  end;
end;

procedure TFrmTotalOrcamento.SetDescPorPerc(const Value: Boolean);
begin
  if Value<>FDescPorPerc then begin
    FDescPorPerc := Value;
    Atualiza;
  end;
end;

procedure TFrmTotalOrcamento.SetFidResgate(const Value: Boolean);
begin
  FFidResgate := Value;
  Atualiza;
end;

procedure TFrmTotalOrcamento.SetObs(const Value: String);
begin
  lbObs.Caption := Value;
  if FPagEsp<>nil then
    FPagEsp.Obs := Value;
  Atualiza;
end;

procedure TFrmTotalOrcamento.SetOpPagto(const Value: Byte);
begin
  FOpPagto := Value;
end;

procedure TFrmTotalOrcamento.SetPagEsp(aPagEsp: TncPagEspecies);
begin
  FPagEsp := aPagEsp;
  Atualiza;
end;

procedure TFrmTotalOrcamento.SetRecebido(const Value: Currency);
begin
  FRecebido := Value;
end;

procedure TFrmTotalOrcamento.SetSubTotal(const Value: Currency);
begin
  if FPagEsp<>nil then begin
    FPagEsp.Produtos := Value;
    Atualiza;
  end;
end;

function TFrmTotalOrcamento.Total: Currency;
begin
  if FPagEsp<>nil then 
    Result := FPagEsp.Produtos - calcDesconto else
    Result := 0;
end;


end.
