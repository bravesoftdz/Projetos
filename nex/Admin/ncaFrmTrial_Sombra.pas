unit ncaFrmTrial_Sombra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFrmTrial_sombra = class(TForm)
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTrial_sombra: TFrmTrial_sombra;

implementation

{$R *.dfm}

uses ncaFrmTrial_Fim;

procedure TFrmTrial_sombra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTrial_sombra.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
  Left := Screen.WorkAreaLeft;
  Top := Screen.WorkAreaTop;
  Height := Screen.WorkAreaHeight;
  Width := Screen.WorkAreaWidth;
end;

procedure TFrmTrial_sombra.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  Application.CreateForm(TFrmTrial_Fim, FrmTrial_Fim);
  FrmTrial_Fim.Mostrar;
  Close;
end;

end.
