program ImpCSV_produtos20;

uses
  kwicDescriptor in '..\..\kwic\kwicDescriptor.pas',
  kwicEngine in '..\..\kwic\kwicEngine.pas',
  Forms,
  uImpCSV_Produtos20 in 'uImpCSV_Produtos20.pas' {Form16};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
