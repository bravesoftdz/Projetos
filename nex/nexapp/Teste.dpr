program Teste;

uses
  Vcl.Forms,
  uteste in 'uteste.pas' {Form26},
  System.uJSON in 'System.uJSON.pas',
  uDB_json in 'uDB_json.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm26, Form26);
  Application.Run;
end.
