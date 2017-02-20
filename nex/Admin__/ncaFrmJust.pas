unit ncaFrmJust;
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
  TFrmJust = class(TForm)
    LMDSimplePanel2: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edObs: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    function Editar(var Obs: String; aSalvar: Boolean): Boolean;
    { Public declarations }
  end;

var
  FrmJust: TFrmJust;

implementation

{$R *.dfm}

uses ncaFrmPri;

procedure TFrmJust.btnSalvarClick(Sender: TObject);
begin
  if Trim(edObs.Text)='' then begin
    edObs.SetFocus;
    raise Exception.Create('É obrigatório informar o motivo do cancelado');
  end;  

  if Length(Trim(edObs.Text))<15 then begin
    edObs.SetFocus;
    raise Exception.Create('A justificativa deve ter no mínimo 15 caracteres');
  end;
  ModalResult := mrOk;
end;

function TFrmJust.Editar(var Obs: String; aSalvar: Boolean): Boolean;
begin
  btnSalvar.Enabled := aSalvar;
  edObs.Text := Obs;
  ShowModal;
  edObs.PostEditValue;
  if ModalResult=mrOk then begin
    Obs := Trim(edObs.Text);
    Result := True;
  end else
    Result := False;
end;

procedure TFrmJust.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmJust.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_F2    : if btnSalvar.Enabled then btnSalvar.Click;
    Key_Esc   : Close;
  end;
end;

procedure TFrmJust.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [#27, #13] then Key := #0;
end;

end.
