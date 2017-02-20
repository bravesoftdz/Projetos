program DocUpload;

uses
  nxllZipCompressor,
  nxllRLECompressor,
  Vcl.Forms,
  uDocServerUpdater in 'uDocServerUpdater.pas' {FrmPri},
  kwicDescriptor in '..\..\kwic\kwicDescriptor.pas',
  kwicEngine in '..\..\kwic\kwicEngine.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPri, FrmPri);
  Application.Run;
end.
