unit ncaFrmAposVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxControls, cxContainer, cxEdit, cxLabel, cxCheckBox,
  PngImage, ExtCtrls, ncMovEst, frxClass;

type
  TFrmAposVenda = class(TForm)
    LMDSimplePanel2: TLMDSimplePanel;
    LMDSimplePanel3: TLMDSimplePanel;
    lbTotal2: TcxLabel;
    lbTotal: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    lbPago2: TcxLabel;
    lbPago: TcxLabel;
    panTroco: TLMDSimplePanel;
    lbTroco2: TcxLabel;
    lbTroco: TcxLabel;
    LMDSimplePanel6: TLMDSimplePanel;
    btnNovaVenda: TcxButton;
    btnOk: TcxButton;
    LMDSimplePanel1: TLMDSimplePanel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    LMDSimplePanel7: TLMDSimplePanel;
    cxLabel1: TcxLabel;
    Image1: TImage;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure btnNovaVendaClick(Sender: TObject);
    procedure cxLabel3Click(Sender: TObject);

    procedure wmAjustaFoco(var Msg: TMessage);
      message wm_user;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxLabel2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    
  private
    FRes : Byte;
    FME : TncMovEst;
    { Private declarations }
  public
    function Editar(aME: TncMovEst): Byte;
    { Public declarations }
  end;

var
  FrmAposVenda: TFrmAposVenda;

resourcestring
  rsAguardandoPagamento = 'Aguardando Pagamento';
  rsCredito = 'Creditado em conta';
  rsDebito  = 'Débito';

const
  av_res_ok        = 1;
  av_res_novavenda = 2;
  av_res_editar    = 3;  
  
implementation

uses ufmImagens, ncClassesBase, ncaFrmConfigPosVenda;

{$R *.dfm}

procedure TFrmAposVenda.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmAposVenda.btnNovaVendaClick(Sender: TObject);
begin
  FREs := av_res_novavenda;
end;

procedure TFrmAposVenda.cxLabel2Click(Sender: TObject);
begin
  TFrmConfigPosVenda.Create(Self).ShowModal;
  PostMessage(Handle, wm_User, 0, 0);
end;

procedure TFrmAposVenda.cxLabel3Click(Sender: TObject);
begin
  Close;
  FRes := av_res_editar;
end;

function TFrmAposVenda.Editar(aME: TncMovEst): Byte;
begin
  FRes := av_res_ok;
  FME := aME;
  if aME.PagPend then
    btnNovaVenda.Caption := btnNovaVenda.Caption + ' (F4)' else
    btnNovaVenda.Caption := btnNovaVenda.Caption + ' (F3)';
    
  lbTotal2.Caption := CurrencyToStr(aME.TotalFinal);
  with aME do 
  if PagPend then begin
    panTroco.Visible := False;
    lbPago.Caption := rsAguardandoPagamento;
    lbPago2.Visible := False;
    lbTroco.Visible := False;
    lbTroco2.Visible := False;
  end else begin
    lbPago2.Caption := CurrencyToStr(aME.Pago+PagEsp.CreditoUsado);
    if PagEsp.Credito>0 then begin
      panTroco.Color := clWhite;
      lbTroco.Style.TextColor := clGreen;
      lbTroco2.Style.TextColor := clGreen;
      lbTroco2.Caption := CurrencyToStr(PagEsp.Credito);
      lbTroco.Caption := rsCredito;
    end else 
    if ValorDebitado>0 then begin
       panTroco.Color := clRed;
       lbTroco.Caption := rsDebito;
       lbTroco2.Caption := CurrencyToStr(ValorDebitado);
    end else
    if ValorTroco>0 then begin
      lbTroco2.Caption := CurrencyToStr(ValorTroco);
    end else begin
      panTroco.Visible := False;
      lbTroco.Visible := False;
      lbTroco2.Visible := False;
    end;
  end;
  ShowModal;
  Result := FRes;
end;

procedure TFrmAposVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmAposVenda.FormCreate(Sender: TObject);
begin
  PostMessage(Handle, wm_user, 0, 0);
end;

procedure TFrmAposVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F3 : if not FME.PagPend then btnNovaVenda.Click;
    VK_F4 : if FME.PagPend then btnNovaVenda.Click;
  end;
end;

procedure TFrmAposVenda.wmAjustaFoco(var Msg: TMessage);
begin
  case gConfig.TelaPosVenda_BtnDef of
    0 : ActiveControl := nil;
    1 : ActiveControl := btnNovaVenda;
    2 : ActiveControl := btnOk;
  end;
end;

end.
