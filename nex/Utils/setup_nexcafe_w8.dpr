program setup_nexcafe_w8;

uses
  Forms,
  unxInst_w8_Pri in 'unxInst_w8_Pri.pas' {FrmPri},
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
