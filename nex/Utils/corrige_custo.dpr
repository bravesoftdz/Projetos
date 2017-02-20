program corrige_custo;

uses
  Forms,
  uCorrigeCusto in 'uCorrigeCusto.pas' {Form16},
  kwicDescriptor in '..\..\kwic\kwicDescriptor.pas',
  kwicEngine in '..\..\kwic\kwicEngine.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
