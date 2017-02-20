program NexDB;

uses
  Vcl.Forms,
  uNexDBPri in 'uNexDBPri.pas' {FrmSuporteDB},
  uNexDBPanel in 'uNexDBPanel.pas' {FrmDBPanel},
  ncaSenhaToken in '..\nex\Admin\ncaSenhaToken.pas',
  kwicDescriptor in '..\kwic\kwicDescriptor.pas',
  kwicEngine in '..\kwic\kwicEngine.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'NexDB';
  Application.CreateForm(TFrmSuporteDB, FrmSuporteDB);
  Application.Run;
end.
