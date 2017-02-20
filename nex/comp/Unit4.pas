unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses ncCaixas;

procedure TForm4.Button1Click(Sender: TObject);
var R: TncCaixas;
begin
  R := TncCaixas.Create;
  R.AddCaixa(5);
  R.AddCaixa(7);
  R.AddCaixa(8);
  R.AddCaixa(3);
  R.AddCaixa(4);
  R.AddCaixa(10);
  R.AddCaixa(2);
  R.AddCaixa(1);
  R.Merge;
end;

end.
