program Contas2;

uses
  Forms,
  uContas2 in 'uContas2.pas' {frmPri};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Quantidade de Contas NexCaf�';
  Application.CreateForm(TfrmPri, frmPri);
  Application.Run;
end.
