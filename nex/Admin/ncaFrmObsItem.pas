unit ncaFrmObsItem;
{
    ResourceString: Dario 11/03/13
    Nada pra fazer
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxGraphics, cxLookAndFeels,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel;

type
  TFrmObsItem = class(TForm)
    meObs: TcxMemo;
    LMDSimplePanel2: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    cxLabel1: TcxLabel;
    lbProd: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    function Editar(aProduto: String; var Obs: String; aSalvar: Boolean): Boolean;
    { Public declarations }
  end;

var
  FrmObsItem: TFrmObsItem;

implementation

{$R *.dfm}

uses ncaFrmPri;

function TFrmObsItem.Editar(aProduto: String; var Obs: String; aSalvar: Boolean): Boolean;
begin                                         
  lbProd.Caption := aProduto;
  btnSalvar.Enabled := aSalvar;
  meObs.Lines.Text := Obs;
  ShowModal;
  meObs.PostEditValue;
  if ModalResult=mrOk then begin
    Obs := meObs.Lines.Text;
    Result := True;
  end else
    Result := False;
end;

procedure TFrmObsItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmObsItem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_F2    : if btnSalvar.Enabled then btnSalvar.Click;
    Key_Esc   : Close;
  end;
end;

procedure TFrmObsItem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [#27] then Key := #0;
end;

end.
