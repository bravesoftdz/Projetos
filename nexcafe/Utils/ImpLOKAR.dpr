program ImpLOKAR;

uses
  Forms,
  uImpLOKAR in 'uImpLOKAR.pas' {Form16};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
