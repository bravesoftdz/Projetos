program TestePanFor;

uses
  Forms,
  ncaFrmListaFornecedores in '..\nex\Admin\ncaFrmListaFornecedores.pas' {FrmListaFornecedores},
  ncaFrmPanFor in '..\nex\Admin\ncaFrmPanFor.pas' {FrmPanFor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmListaFornecedores, FrmListaFornecedores);
  Application.CreateForm(TFrmPanFor, FrmPanFor);
  Application.Run;
end.
