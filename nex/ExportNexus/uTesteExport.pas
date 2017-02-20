unit uTesteExport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm19 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation

{$R *.dfm}

uses NET.Nextar.ExportNexus, NET.mscorlib;

procedure TForm19.Button1Click(Sender: TObject);
var 
  C: CardService;
  d1, d2: DateTime;
begin
  d1 := DateTime.Create(2016, 6, 1);
  d2 := DateTime.Create(2016, 6, 20);
  C := CardService.Create('123456');
  C.GenerateCards(d1, d2);
  ShowMessage('Gerou!');
end;

end.
