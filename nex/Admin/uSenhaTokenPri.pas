unit uSenhaTokenPri;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    cxLabel1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    cxLabel2: TLabel;
    lbInfo: TLabel;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses ncaSenhaToken, ClipBrd;

function NumStr(S: String): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    if (S[I] in ['0'..'9']) then
      Result := Result + S[I];
end;

procedure TForm1.Edit1Change(Sender: TObject);
var S: String;
begin
  S := NumStr(Edit1.Text);
  if Length(S)=8 then begin
    Edit2.Text := SenhaToken(S);
    Clipboard.AsText := Edit2.Text;
    lbInfo.Visible := True;
  end else begin
    Edit2.Text := '';
    lbInfo.Visible := False;
  end;
end;

end.



