program ImpCSV_produtos21;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  kwicDescriptor in '..\..\kwic\kwicDescriptor.pas',
  kwicEngine in '..\..\kwic\kwicEngine.pas',
  Forms,
  uImpCSV_Produtos21 in 'uImpCSV_Produtos21.pas' {Form16};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
