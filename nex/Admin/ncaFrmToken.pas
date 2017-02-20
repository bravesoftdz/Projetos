unit ncaFrmToken;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxLabel, cxTextEdit, Vcl.StdCtrls, cxButtons;

type
  TFrmToken = class(TForm)
    btnLogin: TcxButton;
    edSenha: TcxTextEdit;
    cxLabel3: TcxLabel;
    edToken: TcxMaskEdit;
    lbToken: TcxLabel;
    cxLabel1: TcxLabel;
    btnCancelar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function _TokenOk: Boolean;
  public
    { Public declarations }
    class function TokenOk: Boolean;
  end;

var
  FrmToken: TFrmToken;

implementation

{$R *.dfm}

uses ncaFrmPri, ClipBrd, ncaSenhaToken;

resourcestring
  rsSenhaIncorreta = 'Senha incorreta!';

function RandStr: String;
begin
  Result := IntToStr(Random(99));
  if Length(Result)<2 then Result := '0' + Result;
end;

procedure TFrmToken.btnLoginClick(Sender: TObject);
begin
  if not SenhaTokenCorreta(edToken.Text, edSenha.Text) then
    raise Exception.Create(rsSenhaIncorreta);
  ModalResult := mrOk;
end;

procedure TFrmToken.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmToken.FormCreate(Sender: TObject);
begin
  randomize;
  edToken.Text := RandStr + RandStr + RandStr + RandStr;  
  ClipBoard.AsText := edToken.Text;
end;

procedure TFrmToken.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Esc   : Close;
  end;
end;

procedure TFrmToken.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [#27] then Key := #0;
end;

class function TFrmToken.TokenOk: Boolean;
begin
  Result := TFrmToken.Create(nil)._TokenOK;
end;

function TFrmToken._TokenOk: Boolean;
begin
  ShowModal;
  Result := (ModalResult=mrOk);
end;

end.
