program TesteXML_nfce;

uses
  Vcl.Forms,
  uPriTesteXML_nfce in 'uPriTesteXML_nfce.pas' {Form12},
  nexDMxml_nfce in '..\Utils\nexDMxml_nfce.pas' {dmXML_nfce: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TdmXML_nfce, dmXML_nfce);
  Application.Run;
end.
