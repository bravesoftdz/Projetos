program ImpODIN;

uses
  Forms,
  uImpODIN in 'uImpODIN.pas' {FrmPri};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Importa dados do ODIN para NexCaf�';
  Application.CreateForm(TFrmPri, FrmPri);
  Application.Run;
end.
