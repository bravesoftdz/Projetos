unit ncaFrmCCe;
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
  TFrmCCe = class(TForm)
    meObs: TcxMemo;
    LMDSimplePanel2: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    cxLabel1: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    function Editar(var Obs: String; aSalvar: Boolean): Boolean;
    { Public declarations }
  end;

var
  FrmCCe: TFrmCCe;

implementation

{$R *.dfm}

uses ncaFrmPri;

function TFrmCCe.Editar(var Obs: String; aSalvar: Boolean): Boolean;
begin
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

procedure TFrmCCe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCCe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_F2    : if btnSalvar.Enabled then btnSalvar.Click;
    Key_Esc   : Close;
  end;
end;

procedure TFrmCCe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [#27] then Key := #0;
end;

end.
