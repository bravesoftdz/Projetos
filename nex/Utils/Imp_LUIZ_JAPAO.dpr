program Imp_LUIZ_JAPAO;

uses
  Forms,
  uImp_Luiz_Japao in 'uImp_Luiz_Japao.pas' {Form16};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.