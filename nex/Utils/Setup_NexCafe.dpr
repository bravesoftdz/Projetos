program Setup_NexCafe;

uses
  Forms,
  unxInst_Pri in 'unxInst_Pri.pas' {FrmPri},
  unxInst_Folder in 'unxInst_Folder.pas' {FrmFolder},
  ncFirewall in '..\Comp\ncFirewall.pas';

{$R *.res}
{$R uacs.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'NexCaf� - Programa de Instala��o';
  Application.CreateForm(TFrmPri, FrmPri);
  Application.Run;
end.
