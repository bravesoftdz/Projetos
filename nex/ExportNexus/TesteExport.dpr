program TesteExport;

uses
  Vcl.Forms,
  uTesteExport in 'uTesteExport.pas' {Form19},
  NET.Nextar.ExportNexus in 'NET.Nextar.ExportNexus.pas',
  NET.mscorlib in 'NET.mscorlib.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm19, Form19);
  Application.Run;
end.
