program MostraSenhas;

uses
  Forms,
  uMostraSenhas in 'uMostraSenhas.pas' {Form4},
  ncClassesBase in '..\Comp\ncClassesBase.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.