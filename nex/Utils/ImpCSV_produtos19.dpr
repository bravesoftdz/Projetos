program ImpCSV_produtos19;

uses
  kwicDescriptor in '..\..\kwic\kwicDescriptor.pas',
  kwicEngine in '..\..\kwic\kwicEngine.pas',
  Forms,
  uImpCSV_Produtos19 in 'uImpCSV_Produtos19.pas' {Form16};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
