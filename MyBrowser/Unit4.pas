unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Winapi.Mshtmhst,
  SHDocVw_EWB, EwbCore, EmbeddedWB, uMyBrowser;

type
  TForm4 = class(TForm)
    W: TMyBrowser;
    procedure WGetWebApi(Sender: TMyBrowser; var aWebApi: TMyWebApi);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TTesteApi = class (TMyWebApi)
  published
    procedure teste;
  end;


var
  Form4: TForm4;

implementation

{$R *.dfm}

{ TTesteApi }

procedure TTesteApi.teste;
begin
  ShowMessage('Acionou Teste');
end;

procedure TForm4.WGetWebApi(Sender: TMyBrowser;
  var aWebApi: TMyWebApi);
begin
  aWebApi := TTesteApi.Create(Self, W);
end;

end.