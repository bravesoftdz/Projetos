program CorrigeLANS2;

uses
  Forms,
  uCorrigeLANS2 in 'uCorrigeLANS2.pas' {Form16};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
