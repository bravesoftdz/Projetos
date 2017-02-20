program NexApp_Teste;

uses
  Vcl.Forms,
  uNexApp_Teste_Pri in 'uNexApp_Teste_Pri.pas' {Form21},
  uDM_nexapp in 'uDM_nexapp.pas' {dmNexApp: TDataModule},
  uDB_json in 'uDB_json.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm21, Form21);
  Application.CreateForm(TdmNexApp, dmNexApp);
  Application.Run;
end.
