program GeraSignAC;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Classes,
  System.SysUtils,
  spdCFeSatType,
  spdCFeSat,
  ncDebug in '..\comp\ncDebug.pas';

var
  sat: TspdCFeSat;
  sl : TStrings;  

procedure SalvaErro(S: String);
begin  
  sl := TStringList.Create;
  try
    sl.Text := S;
    sl.SaveToFile('signac.txt');
  finally
    sl.Free;
  end;
end;

begin
  DebugAtivo := True;
  NomeArqDebug := 'GeraSignAC_log.txt';
  try
    DebugMsgEsp('GeraSignAC 1', False, True);
    sat := TspdCFeSat.Create(nil);
    sl := TStringList.Create;
    try
      sat.NomeCertificado.Text := 'CN=NEXTAR TECNOLOGIA DE SOFTWARE LTDA - ME, OU=, O=NEXTAR TECNOLOGIA DE SOFTWARE LTDA - ME, C=BR, S=Santa Catarina, L=Florianopolis, E=';
      DebugMsgEsp('GeraSignAC - '+ParamStr(1), False, True);
      sl.Text := sat.GerarSignAC(ParamStr(1), '04580911000196');
      DebugMsgEsp('GeraSignAC - '+sl.Text, False, True);
      sl.SaveToFile(ExtractFilePath(ParamStr(0))+'signac.txt');
    finally
      sl.Free;
      sat.Free;
    end;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do begin
      Writeln(E.ClassName, ': ', E.Message);
      SalvaErro(E.Message);
      DebugMsgEsp('Erro: '+E.Message, False, True);
    end;
  end;
end.
