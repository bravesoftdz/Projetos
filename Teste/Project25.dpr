program Project25;

uses
  Vcl.Forms,
  Unit26 in 'Unit26.pas' {Form26},
  kwicDescriptor in '..\kwic\kwicDescriptor.pas',
  kwicEngine in '..\kwic\kwicEngine.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm26, Form26);
  Application.Run;
end.
