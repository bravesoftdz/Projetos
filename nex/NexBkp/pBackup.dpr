program pBackup;

uses
  Vcl.Forms,
  unPrincipal in 'unPrincipal.pas' {Form1},
  uCompactar in 'uCompactar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
