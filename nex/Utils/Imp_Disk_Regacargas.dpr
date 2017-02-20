program Imp_Disk_Regacargas;

uses
  Vcl.Forms,
  nxseAllEngines,
  kwicDescriptor in '..\..\kwic\kwicDescriptor.pas',
  kwicEngine in '..\..\kwic\kwicEngine.pas',  
  uImp_Disk_Recargas in 'uImp_Disk_Recargas.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
