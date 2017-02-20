unit uDMGeraSignAC;

interface

uses
  Windows, SysUtils, Classes, IdBaseComponent, IdComponent, IdTCPServer, SyncObjs,
  IdCustomHTTPServer, IdHTTPServer, ncDebug, 
  IdContext, IdCustomTCPServer;

type
  TdmSignAC = class(TDataModule)
    H: TIdHTTPServer;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure HCommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
  public
    { Public declarations }
  end;

var
  dmSignAC: TdmSignAC;
  CS : TCriticalSection;
  


implementation

{$R *.dfm}

function DataBaseLic: TDateTime;
begin
  Result := EncodeDate(2003, 1, 1);
end;

procedure TdmSignAC.DataModuleCreate(Sender: TObject);
begin
  H.Active := True;
end;

procedure TdmSignAC.DataModuleDestroy(Sender: TObject);
begin
  H.Active := False;
end;

function WinExecAndWait32(FileName: string; Visibility: Integer; aWait: Boolean): Longword;
var { by Pat Ritchey }
  zAppName: array[0..512] of Char;
  zCurDir: array[0..255] of Char;
  WorkDir: string;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  StrPCopy(zAppName, FileName);
  GetDir(0, WorkDir);
  StrPCopy(zCurDir, WorkDir);
  FillChar(StartupInfo, SizeOf(StartupInfo), #0);
  StartupInfo.cb          := SizeOf(StartupInfo);
  StartupInfo.dwFlags     := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  if not CreateProcess(nil,
    zAppName, // pointer to command line string
    nil, // pointer to process security attributes
    nil, // pointer to thread security attributes
    False, // handle inheritance flag
    CREATE_NEW_CONSOLE or // creation flags
    NORMAL_PRIORITY_CLASS,
    nil, //pointer to new environment block
    nil, // pointer to current directory name
    StartupInfo, // pointer to STARTUPINFO
    ProcessInfo) // pointer to PROCESS_INF
    then Result := WAIT_FAILED
  else
  begin
    if aWait then begin
      WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
      GetExitCodeProcess(ProcessInfo.hProcess, Result);
    end;
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
  end;
end; 

procedure TdmSignAC.HCommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
var
  S, sCNPJ, sChave, sDebug : String;
  I: Integer;
  sl : TStrings;
  Erro : Integer;
begin
    if ARequestInfo.Params.Count=0 then Exit;
    
    try
      sCNPJ := Trim(ARequestInfo.Params.Values['cnpj']);
      sChave := Trim(ARequestInfo.Params.Values['chave']);
      S := '';
      CS.Enter;
      try
        if FileExists('signac.txt') then
          Windows.DeleteFile('signac.txt');
          
        Erro := WinExecAndWait32('c:\meus programas\nex\gerasignac.exe '+sCNPJ, SW_SHOWNA, True);
        if Erro=0 then begin
          DebugMsgEsp('Passou aqui 1', False, True);
          sl := TStringList.Create;
          if FileExists('signac.txt') then begin
            try
              sl.LoadFromFile('signac.txt');
              S := sl.Text;
              DebugMsgEsp('Passou aqui 2: S', False, True);
            finally
              sl.Free;
            end;
          end;
          DebugMsgEsp('Passou aqui 3', False, True);
        end else
          DebugMsgEsp('Passou aqui 4 - Erro: '+IntToStr(Erro), False, True);
      finally
        CS.Leave;
      end;
    
      AResponseInfo.ContentText := S;
  
      sDebug := '';
  
      with aRequestInfo do 
      for I := 0 to Params.Count - 1 do begin
        sDebug := sDebug + ', ';
        sDebug := sDebug + Params.Names[I] + '=' + Params.ValueFromIndex[I];
      end;  
  
      DebugMsgEsp('IP: '+ARequestInfo.RemoteIP+sDebug+', Resposta='+S, False, True);
    except
      on E: Exception do DebugMsgEsp('Exception: ' + E.Message, False, True);
    end;
end;

{ TThreadSignAC }


initialization
  nomearqdebug := 'Nextar_GeraSignAC.txt';
  DebugAtivo := True;
  CS := TCriticalSection.Create;

finalization
  CS.Free;
    
end.
