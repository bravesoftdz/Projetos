unit ncBaseWebApi;
{
    ResourceString: Dario 12/03/13
}

interface

uses Dialogs, SysUtils, Winsock, Windows, ExtActns, ActiveX, UrlMon, Automation, uMyBrowser, SHFolder, Classes, Forms, idHttp;

type
  TncBaseWebApi = class ( TMyWebApi )
  published
    function DotNetInstalled(const aVer: OleVariant): OleVariant;
    function FileVersion(const aFileName: OleVariant): OleVariant;
    function LogInfo(const aString: OleVariant): OleVariant; override;
    function Conta: OleVariant;
    function ContaFree: OleVariant;
    function ContaPremium: OleVariant;
    function AppVer: OleVariant;
    function FullAppVer: OleVariant;
    function ShellStart(const aCmd, aParams, aDir: OleVariant): OleVariant; override; 
    function ServerIP: OleVariant; virtual;
    function UsernameFunc: OleVariant; virtual;
    function UserAdmin: OleVariant; virtual;
    function PopupUrl(const aURL: OleVariant): OleVariant; virtual;
  end;

implementation

uses
  ncShellStart, ncClassesBase, ncVersionInfo, ncDebug,
  ncFrmWebPopup, uLicEXECryptor;

{ TncBaseWebApi }


function TncBaseWebApi.UserAdmin: OleVariant;
begin
  Result := 0;
end;

function TncBaseWebApi.AppVer: OleVariant;
begin
  Result := Trim(Copy(SelfVersion, 7, 20));
end;

function TncBaseWebApi.Conta: OleVariant;
begin
  Result := gConfig.Conta;
end;

function TncBaseWebApi.ContaFree: OleVariant;
begin
  Result := gConfig.FreePremium and (gConfig.StatusConta<>scPremium);
end;

function TncBaseWebApi.ContaPremium: OleVariant;
begin
  Result := gConfig.FreePremium and (gConfig.StatusConta=scPremium);
end;

function GetSysFolder(csidl: integer): String;
const
  TOKEN_DEFAULTUSER = $FFFF; // -1
var
  szBuffer: AnsiString; // <-- here
  ResultCode: Integer;
begin
  Result := ''; // avoid function might return undefined warning
  SetLength(szBuffer, 255);
  ResultCode := SHGetFolderPathA(0, CSIDL, TOKEN_DEFAULTUSER,
0, PAnsiChar(szBuffer));
  if ResultCode = 0 then
    Result := String(PAnsiChar(szBuffer));
end;

function TncBaseWebApi.DotNetInstalled(const aVer: OleVariant): OleVariant;
var 
  s: String;
  sr : TSearchRec;
begin
  Result := 0;
  s := GetSysFolder(CSIDL_WINDOWS) + '\Microsoft.NET\Framework'; // do not localize
  if not DirectoryExists(s) then Exit;
  if FindFirst(s+'\*.*', faDirectory, sr)=0 then
  try
    repeat
      s := aVer;
      if Pos(s, sr.Name)=1 then begin
        Result := 1;
        Exit;
      end;
    until (FindNext(sr)<>0);
  finally
    SysUtils.FindClose(sr);
  end;
end;

function TncBaseWebApi.FileVersion(const aFileName: OleVariant): OleVariant;
begin
  ncVersionInfo.GetVersionInfo(aFileName);
end;

function TncBaseWebApi.FullAppVer: OleVariant;
begin
  Result := SelfVersion;
end;

function TncBaseWebApi.LogInfo(const aString: OleVariant): OleVariant;
begin
  DebugMsg('TncBaseWebApi.LogInfo: ' + aString); // do not localize
end;

function TncBaseWebApi.PopupUrl(const aURL: OleVariant): OleVariant;
var F: TFrmWebPopup;
begin
  if FrmWebPopupClass<>nil then begin
    F := FrmWebPopupClass.Create(nil);
    F.URL := aURL;
    F.Show;
    Result := 1;
  end else
    Result := 0;
end;

function TncBaseWebApi.ServerIP: OleVariant;
begin
  Result := '127.0.0.1'; // do not localize
end;

function TncBaseWebApi.ShellStart(const aCmd, aParams,
  aDir: OleVariant): OleVariant;
var 
  sCmd, sParams, sDir: String;  
begin
  sCmd := aCmd;
  sParams := aParams;
  sDir := aDir;
  DebugMsg('TncBaseWebApi.ShellStart - aCmd: ' + aCmd + ' - aParams: ' + aParams + ' - aDir: ' + aDir); // do not localize
  ncShellStart.ShellStart(sCmd, sParams, sDir);
  Result := 1;
end;

function TncBaseWebApi.UsernameFunc: OleVariant;
begin
  Result := ncClassesBase.UsernameAtual;
end;


{ ThreadRenameExec }


end.

