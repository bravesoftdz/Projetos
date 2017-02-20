program ImpCSV_Clientes22;

uses
  kwicDescriptor in '..\..\kwic\kwicDescriptor.pas',
  kwicEngine in '..\..\kwic\kwicEngine.pas',
  Forms,
  uImpCSV_Clientes22 in 'uImpCSV_Clientes22.pas' {Form16},
  uProxCampo in 'uProxCampo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
