program TesteCert;

uses
  Vcl.Forms,
  uTesteCert in 'uTesteCert.pas' {Form15};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm15, Form15);
  Application.Run;
end.
