program DownNFCE;

uses
  Vcl.Forms,
  uFrmDownNFCE in 'uFrmDownNFCE.pas' {FrmDownNFCE},
  ncDMDependNFCE in '..\comp\ncDMDependNFCE.pas' {dmDependNFCE: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmDownNFCE, FrmDownNFCE);
  Application.Run;
end.
