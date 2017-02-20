program teste;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  nxseAllEngines,
  unTestFT in 'unTestFT.pas' {Form1},
  kwicDescriptor in '..\kwicDescriptor.pas',
  kwicEngine in '..\kwicEngine.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
