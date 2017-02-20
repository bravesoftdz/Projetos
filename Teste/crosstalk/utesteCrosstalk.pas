unit utesteCrosstalk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm18 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

uses NET.HelloWorld, NET.ExportDelphiNew;

procedure TForm18.Button1Click(Sender: TObject);
var 
  C: Class1;
  M : Matematica;
begin
  C := Class1.Create;
  ShowMessage(C.Test('lau bilau e crau'));

  M := Matematica.Create;
  ShowMessage(IntToStr(M.Divide(10, 0)));
end;

end.
