program EstatisticasNextar;

uses
  Forms,
  uEstatisticasNextar in 'uEstatisticasNextar.pas' {Form13};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Nextar - Estat�sticas';
  Application.CreateForm(TForm13, Form13);
  Application.Run;
end.
