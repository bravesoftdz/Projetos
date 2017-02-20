program Project7;

uses
  Vcl.Forms,
  Unit7 in 'Unit7.pas' {Form7},
  ncDebug in 'ncDebug.pas';

{$R *.res}

begin
  Application.Initialize;
  ListaCertificados;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
