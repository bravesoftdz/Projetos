program Corrige_Fidelidade2;

uses
  nxseAllEngines,
  Vcl.Forms,
  uCorrige_Fidelidade2 in 'uCorrige_Fidelidade2.pas' {Form21};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm21, Form21);
  Application.Run;
end.
