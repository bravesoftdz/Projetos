program ImpDBF_Victor2;

uses
  Forms,
  uImpDBF_Victor2 in 'uImpDBF_Victor2.pas' {Form16};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
