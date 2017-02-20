program ImpCSV_produtos_NEXFMT;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  uImpCSV_ProdutosNEXFMTpas in 'uImpCSV_ProdutosNEXFMTpas.pas' {Form16};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
