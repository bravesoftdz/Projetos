program NexSignAC;

uses
  Vcl.Forms,
  uNexSignAC in 'uNexSignAC.pas' {FrmPri},
  ncDebug in '..\comp\ncDebug.pas';

{$R *.res}

begin
  nomearqdebug := 'NexSignAC.txt';
  DebugAtivo := True;
  
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPri, FrmPri);
  Application.Run;
end.
