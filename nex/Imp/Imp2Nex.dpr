program Imp2Nex;

uses
  kwicDescriptor in '..\..\kwic\kwicDescriptor.pas',
  kwicEngine in '..\..\kwic\kwicEngine.pas',
  Forms,
  uImp2Nex in 'uImp2Nex.pas' {FrmPri},
  uProxCampo in '..\Utils\uProxCampo.pas',
  ncDebug in '..\comp\ncDebug.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPri, FrmPri);
  Application.Run;
end.
