unit unxInst_Pri_nex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDPNGImage, ExtCtrls, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, Registry, LMDCustomComponent,
  LMDBaseController, LMDCustomContainer, LMDGenericList, cxPCdxBarPopupMenu,
  cxContainer, cxEdit, cxRadioGroup, cxCheckBox, PngImage, frxClass,
  dxBarBuiltInMenu, Winapi.ShellAPI, dxGDIPlusClasses, Vcl.Menus, cxButtons,
  cxLabel;
  
type
  TFrmPri = class(TForm)
    Paginas: TcxPageControl;
    tsInicio: TcxTabSheet;
    tsDestinoRede: TcxTabSheet;
    LMDSimplePanel1: TLMDSimplePanel;
    Image1: TImage;
    Label2: TLabel;
    LMDSimplePanel3: TLMDSimplePanel;
    Label9: TLabel;
    Label10: TLabel;
    Image4: TImage;
    edPasta: TEdit;
    btnPasta: TcxButton;
    tsInstalar: TcxTabSheet;
    LMDSimplePanel4: TLMDSimplePanel;
    Label11: TLabel;
    Label12: TLabel;
    Image5: TImage;
    meTermos: TMemo;
    LMDSimplePanel5: TLMDSimplePanel;
    btnAvancar: TcxButton;
    btnVoltar: TcxButton;
    Timer1: TTimer;
    Image6: TImage;
    Label15: TLabel;
    Label16: TLabel;
    cbExec1: TCheckBox;
    genList: TLMDGenericList;
    Label8: TLabel;
    cbServ: TcxCheckBox;
    rbLocal: TcxRadioButton;
    rbRede: TcxRadioButton;
    cbConcordo: TCheckBox;
    Timer2: TTimer;
    btnCancelar: TcxLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaginasChange(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnPastaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

    function fullexe(prog: byte): String;
    procedure rbRedeClick(Sender: TObject);
    procedure rbLocalClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
    procedure LeDadosReg;
    procedure SalvaReg;
    procedure SalvaPlanoPremium;
  public
    { Public declarations }
  end;

var
  FrmPri: TFrmPri;
  FechouAdmin : Boolean = False;
  FechouServ : Boolean = False;

const
  Caminho = '\Software\Microsoft\Windows\CurrentVersion\Uninstall\';  
  
  

implementation

uses unxInst_Folder, madKernel, ncFirewall;

{$R *.dfm}

function RunAsAdmin(hWnd: HWND; filename: string; Parameters: string): Boolean;
{
    See Step 3: Redesign for UAC Compatibility (UAC)
    http://msdn.microsoft.com/en-us/library/bb756922.aspx
}
var
    sei: TShellExecuteInfo;
begin
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

procedure FecharProg(aProg: String);
var 
  P : IProcesses;
  H : HWND;
  I : Integer;
begin
  if SameText(aProg, 'nexserv.exe') then begin
    H := FindWindow('TncServBaseClassName', nil);
    if H<>0 then begin
      PostMessage(H, wm_endsession, 0, 0);
      FechouServ := True;
      Sleep(2000);
    end;

    H := FindWindow('TncServBaseClassName_Nex', nil);
    if H<>0 then begin
      PostMessage(H, wm_endsession, 0, 0);
      FechouServ := True;
      Sleep(2000);
    end;
    
    P := Processes(aProg);
    if P.ItemCount>0 then begin
      P[0].Close;
      FechouServ := True;
    end;

    P := Processes(aProg);
    if P.ItemCount>0 then begin
      P[0].Quit;
      FechouServ := True;
    end;

    P := Processes(aProg);
    if P.ItemCount>0 then begin
      P[0].Exit_;
      FechouServ := True;
    end;

    P := Processes(aProg);
    if P.ItemCount>0 then begin
      P[0].Terminate;
      FechouServ := True;
    end;    
  end else  begin
    P := Processes(aProg);

    for I := 0 to P.ItemCount-1 do begin
      P[I].Close;
      FechouAdmin := True;   
    end;

    Sleep(500);

    P := Processes(aProg);

    for I := 0 to P.ItemCount-1 do begin
      P[I].Terminate;
      FechouAdmin := True;   
    end;
    
  end;
end;

function GetTempDirectory: String;
var
  tempFolder: array[0..MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @tempFolder);
  result := StrPas(tempFolder);
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

procedure TFrmPri.btnAvancarClick(Sender: TObject);
var S, sExe: String;

procedure ExecSW(I: Integer);
var sParam: String;
begin
{  S := fullexe(i);
  if I=1 then 
    S := S + ' afterinst';

  if I=1 then
    I := SW_SHOW else
    I := SW_SHOWNORMAL;}

  S := fullexe(i);
  if I=1 then 
    sParam := 'afterinst' else
    sParam := '';

  if I=1 then
    I := SW_SHOW else
    I := SW_SHOWNORMAL;
    
  RunAsAdmin(0, S, sParam);
    
 // WinExecAndWait32(S, I, False);
end;

begin
{  Memo1.Clear;
  Memo1.Lines.Add('Tipo de instalação:');
  if rbRede.Checked then begin
     Memo1.Lines.Add('     - Usar em rede');
     if cbServ.Checked then
       Memo1.Lines.Add('     - Instalar o servidor NEX nessa máquina');
  end else
    Memo1.Lines.Add('     - Usar apenas nesse computador');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Instalar em:');
  Memo1.Lines.Add('     ' + edPasta.Text);}
    
  case Paginas.ActivePageIndex of
    2 : begin
      if not cbConcordo.Checked then begin
        Beep;
        ShowMessage('É necessário estar de acordo com os termos de serviço');
        cbConcordo.SetFocus;
        Exit;
      end;
      try SalvaReg except end;
 
      btnAvancar.Enabled := False;
      btnVoltar.Enabled := False;
      Paginas.Enabled := False;
      Cursor := crHourGlass;
      Paginas.Cursor := crHourGlass;
      tsInstalar.Cursor := crHourGlass;
      Screen.Cursor := crHourGlass;
      Timer2.Enabled := True;
    end;
    
    3 : begin
      if cbExec1.Checked then begin
        if rbLocal.Checked or cbServ.Checked then 
          ExecSW(1) else
          ExecSW(2);      
      end;
      Close;
    end
  else
    Paginas.ActivePageIndex := Paginas.ActivePageIndex + 1;
  end;
end;

procedure TFrmPri.btnVoltarClick(Sender: TObject);
begin
  Paginas.ActivePageIndex := Paginas.ActivePageIndex - 1;
end;

procedure TFrmPri.btnPastaClick(Sender: TObject);
begin
  edPasta.Text := TFrmFolder.Create(Self).ObtemFolder(edPasta.Text);
{  if OpenDlg.Execute then
    edPasta.Text := OpenDlg.FileName;}
end;

procedure TFrmPri.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPri.FormCreate(Sender: TObject);
begin
  Paginas.ActivePageIndex := 0;
  try LeDadosReg; except end;
end;

function TFrmPri.fullexe(prog: byte): String;
begin
  result := edPasta.Text;
  if Copy(result, Length(result), 1) <> '\' then
    result := result + '\';
    
  case prog of
    1 : result := result + 'NexServ.exe';
    2 : result := result + 'NexAdmin.exe';
    3 : result := result + 'plano.ini';
  end;
end;

procedure TFrmPri.LeDadosReg;
var 
  R: TRegistry;

procedure Le(aChave: String);
var S: String;
begin
  R.OpenKey(Caminho+aChave, False);
  S := ExtractFileDir(R.ReadString('InstallLocation'));
  edPasta.Text := S;
  R.CloseKey;  
end;  

begin
  R := TRegistry.Create;
  try
    R.Access := KEY_ALL_ACCESS;
    R.RootKey := HKEY_LOCAL_MACHINE;
    
    if R.KeyExists(Caminho+'Nex_is1') then begin
      Le('Nex_is1');
      if R.KeyExists(caminho+'Nex') then begin
        R.OpenKey(Caminho+'Nex', False);
        rbRede.Checked := R.ReadBool('rbRede');
        cbServ.Checked := R.ReadBool('cbServ');
        cbServ.Enabled := rbRede.Checked;
        R.CloseKey;
      end else begin
        rbLocal.Checked := True;
        cbServ.Checked := True;
        cbServ.Enabled := False;
      end;
    end;
  finally
    R.Free;
  end;
end;

procedure TFrmPri.PaginasChange(Sender: TObject);
begin
  case Paginas.ActivePageIndex of
    2 : btnAvancar.Caption := 'Instalar!';
    3 : btnAvancar.Caption := 'Concluir';
  else
    btnAvancar.Caption := 'Avançar >';
  end;
  
  btnVoltar.Enabled := not (Paginas.ActivePageIndex in [0, 3]);
  btnCancelar.Enabled := (Paginas.ActivePageIndex <> 3);
end;

procedure TFrmPri.rbLocalClick(Sender: TObject);
begin
  cbServ.Enabled := False;
  cbServ.Checked := True;
end;

procedure TFrmPri.rbRedeClick(Sender: TObject);
begin
  cbServ.Enabled := True;
end;

procedure TFrmPri.SalvaPlanoPremium;
var sl: TStrings;
begin
  sl := TStringList.Create;
  try
    sl.Values['plano'] := '1';
    sl.SaveToFile(fullexe(3));
  finally
    sl.Free;
  end;
end;

procedure TFrmPri.SalvaReg;
var R: TRegistry;
begin
  R := TRegistry.Create;
  try
    R.Access := KEY_ALL_ACCESS;
    R.RootKey := HKEY_LOCAL_MACHINE;

    if not R.KeyExists(caminho+'Nex') then
      if not R.CreateKey(caminho+'Nex') then Exit;

    try R.CloseKey except end;
      
    R.OpenKey(Caminho+'Nex', False);
    R.WriteBool('rbRede', rbRede.Checked);
    R.WriteBool('cbServ', cbServ.Checked);
    R.CloseKey;
    
  finally
    R.Free;
  end;
end;

procedure TFrmPri.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  Top := Top - 24;
end;

procedure TFrmPri.Timer2Timer(Sender: TObject);
var S, sExe: String;
begin
      FecharProg('NexAdmin.exe');
      if rbLocal.Checked or cbServ.Checked then 
        FecharProg('NexServ.exe');

      if FechouAdmin or FechouServ then
        cbExec1.Visible := False; 
        
  Timer2.Enabled := False;
    if rbRede.Checked and (not cbServ.Checked) then 
      S := '/type=Admin'  else
      S := '/type=Servidor';
    sExe := IncludeTrailingBackslash(GetTempDirectory)+'setup_nex_.exe';
    genList.Items[0].SaveToFile(sExe);  
    if WinExecAndWait32(sExe + ' /dir="'+edPasta.Text+'" /silent '+S, SW_SHOWNORMAL, True)<>0 then
      Close;

  Screen.Cursor := crDefault;
      
  Cursor := crDefault;
  Paginas.Enabled := True;
  btnAvancar.Enabled := True;
  Paginas.ActivePageIndex := Paginas.ActivePageIndex + 1;
  btnCancelar.Enabled := False;
         

  if Pos('PREMIUM', UpperCase(ParamStr(0)))>0 then SalvaPlanoPremium;
        
  try  
    try allowexceptionsonFirewall except end;
    if rbLocal.Checked or cbServ.Checked then 
      addApplicationToFirewall('Nex Servidor', fullexe(1));
    addApplicationToFirewall('Nex Admin', fullexe(2));
  except
  end;
end;

end.
