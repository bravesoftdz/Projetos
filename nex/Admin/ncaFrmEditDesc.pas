unit ncaFrmEditDesc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, StdCtrls, cxButtons, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  cxCurrencyEdit, cxLabel, dxGDIPlusClasses, ExtCtrls, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxClasses, dxLayoutControl, dxLayoutLookAndFeels;

type
  TFrmEditDesc = class(TForm)
    LMDSimplePanel2: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    edValor: TcxCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    edPerc: TcxCurrencyEdit;
    lbErro: TcxLabel;
    lcSubTotal: TdxLayoutItem;
    edSubTotal: TcxCurrencyEdit;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    lcTotalFinal: TdxLayoutItem;
    edTotalFinal: TcxCurrencyEdit;
    lcTotalLiq: TdxLayoutItem;
    edTotalLiq: TcxCurrencyEdit;
    lcTax: TdxLayoutItem;
    edTax: TcxCurrencyEdit;
    lcFrete: TdxLayoutItem;
    edFrete: TcxCurrencyEdit;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPercKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edValorPropertiesChange(Sender: TObject);
    procedure edPercPropertiesEditValueChanged(Sender: TObject);
    procedure edPercPropertiesChange(Sender: TObject);
    procedure edValorPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FPerc: Boolean;
    FTotal : Currency;
    FCalculando : Boolean;
    FFrete : Currency;
    FTax : Currency;

    procedure calcula;

    procedure FocusPerc;
    procedure FocusSalvar;
    procedure AjustaHeight;
  public
    function Editar(aTotal, aFrete, aTax: Currency; var aValor: Currency; var aPerc: Double; var aDescPerc: Boolean): Boolean;
    { Public declarations }
  end;

resourcestring
  rsDescAcimaLimite = 'Desconto acima do percentual máximo permitido';

var
  FrmEditDesc: TFrmEditDesc;

implementation

uses ncaFrmPri, ncaDM, ncIDRecursos, ncClassesBase;

{$R *.dfm}

{ TForm1 }

procedure TFrmEditDesc.AjustaHeight;

procedure Remove(B: Boolean);
begin
  if not B then 
    height := Height - edTax.Height - 7;
end;

begin
  Remove(lcTotalLiq.Visible);
  Remove(lcFrete.Visible);
  Remove(lcTax.Visible);
end;

procedure TFrmEditDesc.btnSalvarClick(Sender: TObject);
begin
  edValor.PostEditValue;
  edPerc.PostEditValue;

  if (lbErro.Style.TextColor=clRed)  then raise Exception.Create(lbErro.Caption);

  if not Dados.CM.UA.LimiteDescOk(edPerc.Value) then
    raise Exception.Create(rsDescAcimaLimite);
  
  ModalResult := mrOk;
end;

procedure TFrmEditDesc.calcula;
begin
  if FCalculando then Exit;

  try
    FCalculando := True;
    if Fperc then begin
      if edPerc.Value>100 then 
        lbErro.Style.TextColor := clRed 
      else begin
        edValor.Value := DuasCasas(FTotal * edPerc.Value / 100);
        edTotalLiq.Value := FTotal - edValor.Value;
        edTotalFinal.Value := edTotalLiq.Value + FFrete + FTax;
        lbErro.Visible := False;
        lbErro.Style.TextColor := clBtnFace;
      end;
    end else begin
      if edValor.Value>FTotal then 
        lbErro.Style.TextColor := clRed 
      else begin
        edPerc.Value := DuasCasas(edValor.Value / FTotal * 100);
        edTotalLiq.Value := FTotal - edValor.Value;
        edTotalFinal.Value := edTotalLiq.Value + FFrete + FTax;
        lbErro.Style.TextColor := clBtnFace;
      end;
    end;
  finally
    FCalculando := False;
  end;
end;

function TFrmEditDesc.Editar(aTotal, aFrete, aTax: Currency; var aValor: Currency; var aPerc: Double; var aDescPerc: Boolean): Boolean;
begin
  edValor.Value := aValor;
  edSubTotal.Value := aTotal;
  edTotalLiq.Value := aTotal - aValor;

  FFrete := aFrete;
  FTax := aTax;
  edFrete.Value := FFrete;
  edTax.Value := FTax;
  edTotalFinal.Value := edTotalLiq.Value + FFrete + FTax;

  lcTax.Visible := (FTax>0.009);
  lcFrete.Visible := (FFrete>0.009);
  lcTotalLiq.Visible := lcTax.Visible or lcFrete.Visible;
  

  lbErro.Caption := lbErro.Caption + ' ' + CurrencyToStr(aTotal);
  
  FPerc := aDescPerc and (aPerc>0);
  edPerc.Value := aPerc;
  FTotal := aTotal;
  Calcula;

  AjustaHeight;
  ShowModal;
  if ModalResult=mrOk then begin
    aValor := edValor.Value;
    aPerc := edPerc.Value;
    aDescPerc := FPerc;
    Result := True;
  end else
    Result := False;
end;

procedure TFrmEditDesc.edPercKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_Enter : FocusSalvar;
    Key_Up : edValor.SetFocus;
  end;
end;

procedure TFrmEditDesc.edPercPropertiesChange(Sender: TObject);
begin
  if edPerc.Focused then edPerc.PostEditValue;
end;

procedure TFrmEditDesc.edPercPropertiesEditValueChanged(Sender: TObject);
begin
  if edPerc.Focused then begin
    FPerc := True;
    Calcula;
  end;
end;

procedure TFrmEditDesc.edValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_Down, Key_Enter: FocusPerc;
  end;
end;

procedure TFrmEditDesc.edValorPropertiesChange(Sender: TObject);
begin
  if edValor.Focused then edValor.PostEditValue;
end;

procedure TFrmEditDesc.edValorPropertiesEditValueChanged(Sender: TObject);
begin
  if edValor.Focused then begin
    FPerc := False;
    Calcula;
  end;
end;

procedure TFrmEditDesc.FocusPerc;
begin
  if edPerc.Enabled then
    edPerc.SetFocus
  else
    FocusSalvar;
end;

procedure TFrmEditDesc.FocusSalvar;
begin
  if btnSalvar.Enabled then btnSalvar.SetFocus;
end;

procedure TFrmEditDesc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEditDesc.FormCreate(Sender: TObject);
begin
  FCalculando := False;
  btnSalvar.Enabled := Permitido(daTraDesconto);
end;

procedure TFrmEditDesc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_F2, Key_F3    : if btnSalvar.Enabled then btnSalvar.Click;
    Key_Esc   : ModalResult := mrCancel;
  end;
end;

procedure TFrmEditDesc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13, #27]) then Key := #0;
end;

end.
