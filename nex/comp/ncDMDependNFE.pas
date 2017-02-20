unit ncDMDependNFE;

interface

uses
  System.SysUtils, System.Classes, Windows, Registry, LMDCustomComponent,
  LMDWebBase, LMDWebConfig, LMDWebHTTPGet, LMDDownload, Vcl.ExtCtrls;

type
  TncProgressoDependEv = procedure (aNFE: Boolean; aEtapa, aProgresso : Byte; aErro : Integer; aErroStr: String) of object;
  
  TdmDependNFE = class(TDataModule)
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
  dmDependNFE: TdmDependNFE;


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

class function TdmDependNFE.PrecisaInstalar: Boolean;
var R: TRegistry;
begin
  Result := True;
  if not DirectoryExists(Caminho+'NFe') then Exit;
  if not DirectoryExists(Caminho+'NFe\Templates') then Exit;
  if not DirectoryExists(Caminho+'NFe\Esquemas') then Exit;
  
  R := TRegistry.Create;
  try
    R.Access := KEY_ALL_ACCESS;
    R.RootKey := HKEY_LOCAL_MACHINE;
    if not R.KeyExists(caminhoreg) then Exit;
    R.OpenKey(caminhoreg, False);
    try
      if R.ValueExists('NFe_depend3') then
        Result := False;
    finally
      R.CloseKey;
    end;  
  finally
    R.Free;
  end;
end;

procedure TdmDependNFE.TimerFreeTimer(Sender: TObject);
begin
  Free;
end;

procedure TdmDependNFE._Instala;
var 
  Erro: Integer;
  ErroStr : String;
begin
  try
    try
      ForceDirectories(caminho+'NFe\Log\');
      ForceDirectories(caminho+'NFe\Temp\');
      ForceDirectories(caminho+'NFe\Erros\');
      ForceDirectories(caminho+'NFe\XmlDestinatario\');
    except
    end;

//    WinExecAndWait32('regsvr32 NFeDatasetX.dll /u /s', SW_NORMAL, True);
    
    Erro := WinExecAndWait32(caminho+'setup_NFe_depend.exe /sp- /silent /nocancel', SW_SHOWNORMAL, True);
    if Erro=0 then begin
      FOnProgresso(True, 3, 0, 0, 'Instalando arquivos necessários para emissão de NFC-e (2/2)');
      Erro := WinExecAndWait32(caminho+'setup_NFe_arqs.exe /dir="'+caminho+'NFe'+'" /sp- /silent /nocancel', SW_SHOWNORMAL, True);
    end;

//    WinExecAndWait32('regsvr32 NFeDatasetX.dll /s', SW_NORMAL, True);

    if Erro>0 then
      FOnProgresso(True, 3, 100, Erro, 'Falha na instalação ('+IntToStr(Erro)+')')
    else begin
      Instalou;
      FOnProgresso(True, 4, 100, 0, '');
    end;
  finally  
    Destruir;
  end;  
end;

class procedure TdmDependNFE.Instalar(aForcar: Boolean; aOnProgresso: TncProgressoDependEv);
begin
  DebugMsg('TdmDependNFe.Instalar 1');
  if Assigned(dmDependNFe) then Exit;
  DebugMsg('TdmDependNFe.Instalar 2');
  if (not aForcar) and (not PrecisaInstalar) then Exit;
  DebugMsg('TdmDependNFe.Instalar 3');

  if FileExists(PWideChar(Caminho+'setup_NFe_depend.exe')) then 
    DeleteFile(PWideChar(Caminho+'setup_NFe_depend.exe'));

  if FileExists(PWideChar(Caminho+'setup_NFe_arqs.exe')) then 
    DeleteFile(PWideChar(Caminho+'setup_NFe_arqs.exe'));
    
  dmDependNFe := TdmDependNFe.Create(nil);

  with dmDependNFe do begin
    FOnProgresso := aOnProgresso;
    G.Process(False, True);
  end;  
  DebugMsg('TdmDependNFe.Instalar 4');
end;

procedure TdmDependNFE.DataModuleCreate(Sender: TObject);
begin
  FOnProgresso := nil;
  G.DownloadDir := Caminho;
  G2.DownloadDir := Caminho;
end;


procedure TdmDependNFE.DataModuleDestroy(Sender: TObject);
begin
  dmDependNFe := nil;
end;

procedure TdmDependNFE.Destruir;
begin
  dmDependNFe := nil;
  TimerFree.Enabled := True;
end;

procedure TdmDependNFE.G2Processed(Sender: TObject);
var
  Erro : Integer;
  S : String;
begin
  if (G.Error>0) then begin
    Erro := G.Error;
    S := G.ErrorString;
  end else
  if not FileExists(Caminho+'setup_NFe_arqs.exe') then begin
    Erro := 1;
    S := 'Falha no download do arquivo "Setup_NFe_Arqs.exe"';
  end else
    Erro := 0;
  
  if Erro>0 then begin
    FOnProgresso(True, 2, 100, Erro, S);
    Destruir;
  end else begin
    FOnProgresso(True, 3, 0, 0, 'Instalando arquivos necessários para emissão de NF-e (1/2)');
    _Instala;
  end;
end;

procedure TdmDependNFE.G2Progress(Sender: TLMDWebHTTPGet;
  Item: TLMDDownloadItem);
begin
  FOnProgresso(True, 2, Item.Progress, 0, 'Baixando arquivos necessários para emissão de NF-e (2/2)');
end;

procedure TdmDependNFE.GProcessed(Sender: TObject);
var
  Erro : Integer;
  S : String;
begin
  if (G.Error>0) then begin
    Erro := G.Error;
    S := G.ErrorString;
  end else
  if not FileExists(Caminho+'setup_NFe_depend.exe') then begin
    Erro := 1;
    S := 'Falha no download do arquivo "Setup_NFe_Depend.exe"';
  end else
    Erro := 0;
    
  if Erro>0 then begin
    FOnProgresso(True, 1, G.Progress, Erro, S);
    Destruir;
  end else 
    G2.Process(False, True);
end;

procedure TdmDependNFE.GProgress(Sender: TLMDWebHTTPGet;
  Item: TLMDDownloadItem);
begin
  FOnProgresso(True, 1, Item.Progress, 0, 'Baixando arquivos necessários para emissão de NF-e (1/2)');
end;

class procedure TdmDependNFE.Instalou;
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
    R.WriteBool('NFe_depend3', True);
    try R.CloseKey; except end;
  finally
    R.Free;
  end;
end;

initialization
  dmDependNFe := nil;

finalization
  if Assigned(dmDependNFe) then dmDependNFe.Free;
    

end. 
