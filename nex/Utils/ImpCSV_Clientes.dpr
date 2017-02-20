program ImpCSV_Clientes;

uses
  kwicDescriptor in '..\..\kwic\kwicDescriptor.pas',
  kwicEngine in '..\..\kwic\kwicEngine.pas',
  Forms,
  uImpCSV_Clientes in 'uImpCSV_Clientes.pas' {Form16},
  uProxCampo in 'uProxCampo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
