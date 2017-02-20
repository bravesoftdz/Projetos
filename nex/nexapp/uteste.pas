unit uteste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.json, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, kbmMemTable;

type
  TForm26 = class(TForm)
    MT: TkbmMemTable;
    MTNome: TStringField;
    MTTelefone: TStringField;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation

{$R *.dfm}

uses uDB_json;

procedure TForm26.Button1Click(Sender: TObject);
var J : TJsonObject;
begin
  MT.Open;
  MT.Append;
  MTNome.Value := '{"{João}}';
  MTTelefone.Value := '(48) 32098629';
  MT.Post;
  J := TJsonObject.Create;
  MT.Fields.ToJson(J);
  ShowMessage(J.ToString);
end;

end.
