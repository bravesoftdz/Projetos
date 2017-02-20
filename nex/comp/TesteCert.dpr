program TesteCert;

uses
  Vcl.Forms,
  uTesteCert in '..\testes\uTesteCert.pas' {Form15},
  ncCert in 'ncCert.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm15, Form15);
  Application.Run;
end.
