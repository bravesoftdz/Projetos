unit ncDMDependSAT;

interface

uses
  System.SysUtils, System.Classes, Windows, Registry, LMDCustomComponent,
  LMDWebBase, LMDWebConfig, LMDWebHTTPGet, LMDDownload, Vcl.ExtCtrls;

type
  TncProgressoDependEv = procedure (aNFe: Boolean; aEtapa, aProgresso : Byte; aErro : Integer; aErroStr: String) of object;
  
  TdmDependSAT = class(TDataModule)
    G: TLMDWebHTTPGet;
    G2: TLMDWebHTTPGet;
    TimerFree: TTimer;
    procedure GProcessed(Sender: TObject);
    procedure G2Processed(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure GProgress(Sender: TLMDWebHTTPGet; Item: TLMDDownloadItem);
    procedure G2Progress(Sender: TLMDWebHTTPGet; Item: TLMDDownloadItem);
    procedure TimerFreeTimer(Sender: TObject);
  private
    FOnProgresso  : TncProgressoDependEv;
    procedure _Instala;

    procedure Destruir;
  public
    class procedure Instalar(aForcar: Boolean; aOnProgresso: TncProgressoDependEv);
    { Public declarations }
    class function PrecisaInstalar: Boolean;
    class procedure Instalou;
  end;

var
  dmDependSAT: TdmDependSAT;


const
  CaminhoReg = '\Software\Nex';  

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ncDebug;

{$R *.dfm}

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


function Caminho: String;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

class function TdmDependSAT.PrecisaInstalar: Boolean;
var R: TRegistry;
begin
  Result := True;
  if not DirectoryExists(Caminho+'SAT') then Exit;
  if not DirectoryExists(Caminho+'SAT\Templates') then Exit;
  if not DirectoryExists(Caminho+'SAT\Esquemas') then Exit;
  
  R := TRegistry.Create;
  try
    R.Access := KEY_ALL_ACCESS;
    R.RootKey := HKEY_LOCAL_MACHINE;
    if not R.KeyExists(caminhoreg) then Exit;
    R.OpenKey(caminhoreg, False);
    try
      if R.ValueExists('sat_depend4') then
        Result := False;
    finally
      R.CloseKey;
    end;  
  finally
    R.Free;
  end;
end;

procedure TdmDependSAT.TimerFreeTimer(Sender: TObject);
begin
  Free;
end;

procedure TdmDependSAT._Instala;
var 
  Erro: Integer;
  ErroStr : String;
begin
  try
    try
      ForceDirectories(caminho+'SAT\Log\');
    except
    end;

    Erro := WinExecAndWait32(caminho+'setup_sat_depend4.exe /sp- /silent /nocancel /log=depend_log.txt', SW_SHOWNORMAL, True);
    if Erro=0 then begin
      FOnProgresso(False, 3, 0, 0, 'Instalando arquivos necessários para emissão de CFe SAT(2/2)');
      Erro := WinExecAndWait32(caminho+'setup_sat_arqs4.exe /dir="'+caminho+'SAT'+'" /sp- /silent /nocancel', SW_SHOWNORMAL, True);
    end;

    if Erro>0 then
      FOnProgresso(False, 3, 100, Erro, 'Falha na instalação ('+IntToStr(Erro)+')')
    else begin
      Instalou;
      FOnProgresso(False, 4, 100, 0, '');
    end;
    
  finally  
    Destruir;
  end;  
end;

class procedure TdmDependSAT.Instalar(aForcar: Boolean; aOnProgresso: TncProgressoDependEv);
begin
  DebugMsg('TdmDependSAT.Instalar 1');
  if Assigned(dmDependSAT) then Exit;
  DebugMsg('TdmDependSAT.Instalar 2');

  if (not aForcar) and (not PrecisaInstalar) then Exit;

  DebugMsg('TdmDependSAT.Instalar 3');
  

  if FileExists(PWideChar(Caminho+'setup_sat_depend4.exe')) then 
    DeleteFile(PWideChar(Caminho+'setup_sat_depend4.exe'));

  if FileExists(PWideChar(Caminho+'setup_sat_arqs4.exe')) then 
    DeleteFile(PWideChar(Caminho+'setup_sat_arqs4.exe'));
    
  dmDependSAT := TdmDependSAT.Create(nil);

  with dmDependSAT do begin
    FOnProgresso := aOnProgresso;
    G.Process(False, True);
  end;
  DebugMsg('TdmDependSAT.Instalar 4');
end;

procedure TdmDependSAT.DataModuleCreate(Sender: TObject);
begin
  FOnProgresso := nil;
  G.DownloadDir := Caminho;
  G2.DownloadDir := Caminho;
end;

procedure TdmDependSAT.DataModuleDestroy(Sender: TObject);
begin
  dmDependSAT := nil;
end;

procedure TdmDependSAT.Destruir;
begin
  dmDependSAT := nil;
  TimerFree.Enabled := True;
end;

procedure TdmDependSAT.G2Processed(Sender: TObject);
var
  Erro : Integer;
  S : String;
begin
  if (G.Error>0) then begin
    Erro := G.Error;
    S := G.ErrorString;
  end else
  if not FileExists(Caminho+'setup_sat_arqs4.exe') then begin
    Erro := 1;
    S := 'Falha no download do arquivo "setup_sat_arqs4.exe"';
  end else
    Erro := 0;
  
  if Erro>0 then begin
    FOnProgresso(False, 2, 100, Erro, S);
    Destruir;
  end else begin
    FOnProgresso(False, 3, 0, 0, 'Instalando arquivos necessários para emissão de CFe SAT (1/2)');
    _Instala;
  end;
end;

procedure TdmDependSAT.G2Progress(Sender: TLMDWebHTTPGet;
  Item: TLMDDownloadItem);
begin
  FOnProgresso(False, 2, Item.Progress, 0, 'Baixando arquivos necessários para emissão de CFe SAT (2/2)');
end;

procedure TdmDependSAT.GProcessed(Sender: TObject);
var
  Erro : Integer;
  S : String;
begin
  if (G.Error>0) then begin
    Erro := G.Error;
    S := G.ErrorString;
  end else
  if not FileExists(Caminho+'setup_sat_depend4.exe') then begin
    Erro := 1;
    S := 'Falha no download do arquivo "setup_sat_depend4.exe"';
  end else
    Erro := 0;
    
  if Erro>0 then begin
    FOnProgresso(False, 1, G.Progress, Erro, S);
    Destruir;
  end else 
    G2.Process(False, True);
end;

procedure TdmDependSAT.GProgress(Sender: TLMDWebHTTPGet;
  Item: TLMDDownloadItem);
begin
  FOnProgresso(False, 1, Item.Progress, 0, 'Baixando arquivos necessários para emissão de CFe SAT (1/2)');
end;

class procedure TdmDependSAT.Instalou;
var R: TRegistry;
begin
  R := TRegistry.Create;
  try
    R.Access := KEY_ALL_ACCESS;
    R.RootKey := HKEY_LOCAL_MACHINE;

    if not R.KeyExists(caminhoreg) then
      if not R.CreateKey(caminhoreg) then Exit;

    try R.CloseKey except end;
      
    R.OpenKey(caminhoreg, False);
    R.WriteBool('sat_depend4', True);
    try R.CloseKey; except end;
  finally
    R.Free;
  end;
end;

initialization
  dmDependSAT := nil;

finalization
  if Assigned(dmDependSAT) then dmDependSAT.Free;
    

end. 
