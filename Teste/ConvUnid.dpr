program ConvUnid;

uses
  Vcl.Forms,
  uConvUnid in 'uConvUnid.pas' {Form5},
  uConvUnid2 in 'uConvUnid2.pas' {Form1},
  uConvUnid3 in 'uConvUnid3.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
