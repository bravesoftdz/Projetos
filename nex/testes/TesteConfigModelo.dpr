program TesteConfigModelo;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  ncaGM_FrmParam in '..\Admin\ncaGM_FrmParam.pas' {FrmGMParam};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmGMParam, FrmGMParam);
  Application.Run;

end.
