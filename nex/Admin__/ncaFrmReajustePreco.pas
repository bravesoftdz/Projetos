unit ncaFrmReajustePreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, cxLabel, Vcl.StdCtrls, cxButtons, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel;

type
  TFrmReajustePreco = class(TForm)
    LMDSimplePanel2: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    cxLabel1: TcxLabel;
    panMargem: TLMDSimplePanel;
    edMargem: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    lbPerc: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edMargemFocusChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    function ObtemPerc: Double;
  end;

var
  FrmReajustePreco: TFrmReajustePreco;

implementation

{$R *.dfm}

uses ncaFrmPri, ncaDM;

resourcestring
  rsPercZero = 'O percentual a ser aplicado deve ser maior que zero';


procedure TFrmReajustePreco.btnSalvarClick(Sender: TObject);
begin
  edMargem.PostEditValue;
  if edMargem.Value<0.0001 then raise exception.Create(rsPercZero);
  ModalResult := mrOk;
end;

procedure TFrmReajustePreco.edMargemFocusChanged(Sender: TObject);
begin
  lbPerc.Visible := edMargem.Focused;
  lbPerc.Left := edMargem.Left + edMargem.Width + 5;
end;

procedure TFrmReajustePreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmReajustePreco.FormCreate(Sender: TObject);
begin
  edMargem.Value := 0;
  btnSalvar.Enabled := Dados.CM.UA.Admin;
end;

function TFrmReajustePreco.ObtemPerc: Double;
begin
  ShowModal;
  if ModalResult=mrOk then
    Result := edMargem.Value else
    Result := 0;
end;

end.
