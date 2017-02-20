unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncDebug, spdCFeSatType, spdCFeSat;

type
  TForm7 = class(TForm)
    spdCFeSat1: TspdCFeSat;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ListaCertificados;
  

var
  Form7: TForm7;
  satComp : TspdCFeSat;

implementation

{$R *.dfm}

procedure ListaCertificados;
var 
  sl: TStrings;
  S: String;
begin
  if not Assigned(satComp) then begin
    DebugMsgEsp('ListaCertificados', False, True);
    satComp := TspdCFeSat.Create(nil);
    satComp.UF := 'SP';
    sl := TStringList.Create;
    try
      satComp.ListarCertificados(sl);
      S := sl.Text;
      DebugMsgEsp('ListaCertificados: '+ sLineBreak + S, False, True);
    finally
      sl.Free;
    end;
  end;
end;

initialization
  satComp := nil;

finalization
  satComp.Free;  

  

end.
