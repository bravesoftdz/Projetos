unit ncTrial_Sombra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFrmSombraTrial = class(TForm)
    Timer1: TTimer;
    procedure FormClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSombraTrial: TFrmSombraTrial;

implementation

{$R *.dfm}

uses ncaFrmSelPlano;

procedure TFrmSombraTrial.FormClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSombraTrial.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TFrmSombraTrial.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  FrmSelPlano.ShowModal;
  Close;
end;

end.
