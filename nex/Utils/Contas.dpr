program Contas;

uses
  Forms,
  uContas in 'uContas.pas' {frmPri};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Quantidade de Contas NexCaf�';
  Application.CreateForm(TfrmPri, frmPri);
  Application.Run;
end.
