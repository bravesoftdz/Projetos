program Imp_CiberGest;

uses
  Forms,
  uImp_CiberGest in 'uImp_CiberGest.pas' {Form16};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
