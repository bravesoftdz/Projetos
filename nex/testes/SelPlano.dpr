program SelPlano;

uses
  Vcl.Forms,
  ncaFrmSelPlano in 'ncaFrmSelPlano.pas' {FrmSelPlano},
  uSombra in 'uSombra.pas' {FrmSombraTrial};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmSombraTrial, FrmSombraTrial);
  Application.CreateForm(TFrmSelPlano, FrmSelPlano);
  Application.Run;
end.
