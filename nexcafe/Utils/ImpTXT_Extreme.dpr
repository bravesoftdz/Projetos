program ImpTXT_Extreme;

uses
  Forms,
  uImpTXT_Extreme in 'uImpTXT_Extreme.pas' {Form16};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
