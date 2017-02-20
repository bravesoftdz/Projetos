program SenhaToken;

uses
  Vcl.Forms,
  uSenhaTokenPri in 'uSenhaTokenPri.pas' {Form1},
  ncaSenhaToken in 'ncaSenhaToken.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
