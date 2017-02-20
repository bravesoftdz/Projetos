unit ncDebug;
{
    ResourceString: Dario 12/03/13
}

interface

uses
  SyncObjs,
  SysUtils,
  Dialogs;

var
  AbriuArqDebug : Boolean = False;
  DebugAtivo : Boolean = False;
  arqDebug : TextFile;
  debugCS  : TCriticalSection = nil;

  nomearqdebug  : String = 'debug.txt'; // do not localize

  procedure DebugMsg(S: String; const aShowMsg: Boolean = False); overload;
  procedure DebugMsg(Sender:TObject; S: String; const aShowMsg: Boolean = False); overload;
  procedure DebugMsgEsp(S: String; const aShowMsg, aForcar: Boolean); overload;
  procedure DebugMsgEsp(Sender:TObject; S: String; const aShowMsg, aForcar: Boolean); overload;
  procedure DesativaDebug;

implementation

  uses
    uLogs;

procedure AbreArquivo;
var S: String;
begin
  debugCS.Enter;
  try
    try
      S := ExtractFilePath(ParamStr(0))+nomearqdebug;
      AssignFile(arqDebug, S);
      if FileExists(S) then
        Append(arqDebug) else 
        Rewrite(arqDebug);
      Writeln(arqDebug, '-------------------------------------------------');
      Writeln(arqDebug, '  INICIO: '+FormatDateTime('dd/mm/yyyy hh:mm:ss', Now));   // do not localize
      Writeln(arqDebug, '-------------------------------------------------');
    except
    end;  
    AbriuArqDebug := True;
  finally
    debugCS.Leave;
  end;
end;

procedure DebugMsgEsp(S: String; const aShowMsg, aForcar: Boolean);
//var SaveAtivo : Boolean;
begin
  {debugCS.Enter;
  try
    try
      SaveAtivo := DebugAtivo;
      if aForcar or DebugAtivo then begin
        if not AbriuArqDebug then AbreArquivo;
        if Trim(S)>'' then
          Writeln(arqDebug, FormatDateTime('dd/mm/yyyy hh:mm:ss - ', Now)+S) else
          Writeln(arqDebug);
        Flush(arqDebug);
      end;
      if aForcar and (not SaveAtivo) then
        DesativaDebug;
    except
    end;
  finally
    debugCS.Leave;
  end;}
  if aForcar then
    gLog.ForceLog(nil, [lcDebug], S) else
    gLog.Log(nil, [lcDebug], S);
  gLog.ForceLogWrite;
end;

procedure DebugMsgEsp(Sender:TObject;S: String; const aShowMsg, aForcar: Boolean);
begin
  if aForcar then
    gLog.ForceLog(Sender, [lcDebug], S) else
    gLog.Log(Sender, [lcDebug], S);
  gLog.ForceLogWrite;
end;

procedure DebugMsg(S: String; const aShowMsg: Boolean = False);
begin
  //DebugMsgEsp(S, aShowMsg, False);
  gLog.Log(nil, [lcDebug], S);
  gLog.ForceLogWrite;
end;

procedure DebugMsg(Sender:TObject;S: String; const aShowMsg: Boolean = False);
begin
  //DebugMsgEsp(S, aShowMsg, False);
  gLog.Log(Sender, [lcDebug], S);
  gLog.ForceLogWrite;
end;

procedure DesativaDebug;
begin
  DebugCS.Enter;
  try
    DebugAtivo := False;
    if AbriuArqDebug then begin
      CloseFile(arqDebug);
      AbriuArqDebug := False;
    end;
  finally
    DebugCS.Leave;
  end;
end;

initialization
  DebugCS := TCriticalSection.Create;
  AbriuArqDebug := False;

finalization
  try
    DesativaDebug;
  except
  end;
  FreeAndNil(DebugCS);
  
  

end.

