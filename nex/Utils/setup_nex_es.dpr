program setup_nex_es;

uses
  Windows,
  Dialogs,
  ShellApi,
  SysUtils,
  Forms,
  ElevationUtils,
  unxInst_Pri_es in 'unxInst_Pri_es.pas' {FrmPri},
  ncFirewall in '..\..\nex_old\Comp\ncFirewall.pas',
  ncDebug in '..\..\nex_old\comp\ncDebug.pas',
  unxInst_Folder in '..\..\nex_old\Utils\unxInst_Folder.pas' {FrmFolder};

{$R *.res}
{$R uacs.res}

function RunAsAdmin(hWnd: HWND; filename: string; Parameters: string): Boolean;
{
    See Step 3: Redesign for UAC Compatibility (UAC)
    http://msdn.microsoft.com/en-us/library/bb756922.aspx
}
var
    sei: TShellExecuteInfo;
begin
    if SameText(ParamStr(1), 'afterinst') then
      Parameters := Parameters + ' afterinst';
    ZeroMemory(@sei, SizeOf(sei));
    sei.cbSize := SizeOf(TShellExecuteInfo);
    sei.Wnd := hwnd;
    sei.fMask := SEE_MASK_FLAG_DDEWAIT or SEE_MASK_FLAG_NO_UI;
    sei.lpVerb := PChar('runas');
    sei.lpFile := PChar(Filename); // PAnsiChar;
    if parameters <> '' then
        sei.lpParameters := PChar(parameters); // PAnsiChar;
    sei.nShow := SW_SHOWNORMAL; //Integer;

    Result := ShellExecuteEx(@sei);
end;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Nex - Programa de Instalação';

  if (not SameText('NOELEV', ParamStr(1))) and (IsUACEnabled) and (not IsElevated) then begin 
    if (ParamStr(1)='ELEV') then begin
      ShowMessage('O instalador do program NEX só pode ser executado com usuário que tenha direito de Administrador no Windows.');
      Exit;
    end else begin
      RunAsAdmin(0, ParamStr(0), 'ELEV');  
      Exit;
    end;
  end;
  
  Application.CreateForm(TFrmPri, FrmPri);
  Application.CreateForm(TFrmFolder, FrmFolder);
  Application.Run;
end.
