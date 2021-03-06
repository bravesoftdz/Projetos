unit ncsFrmPri;

interface   

{$I NEX.Inc}    

uses                 
  Windows, Messages, dxBar, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomComponent, LMDWndProcComponent, StdCtrls,
  ExtCtrls, LMDControl, Variants, Winsock,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, Menus, lmdcont, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, LMDCustomStatusBar, LMDStatusBar,
  LMDIniCtrl, ncClassesBase, ncServBase, jpeg,
  LMDCustomLabel, LMDLabel, cxLookAndFeelPainters, cxControls, cxContainer,
  cxEdit, cxLabel, cxButtons, cxPC, cxStyles, cxGraphics, cxMaskEdit,
  cxMemo, cxVGrid, cxInplaceContainer, cxSpinEdit, cxRadioGroup, 
  nxllComponent, nxdb, nxdbBackupController, Buttons, 
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, kbmMemTable,
  cxClasses, 
  cxButtonEdit, ImgList, cxTextEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox,
  ncsFrmBackup, ShellApi, LMDSysInfo, AppEvnts,
  cxCheckBox, LMDDockSpeedButton, 
  LMDTrayIcon, LMDBaseController, LMDCustomContainer, LMDGenericList,
  cxLookAndFeels, OleServer, ActiveX, cxHyperLinkEdit,
  cxPCdxBarPopupMenu,
  dxNavBarCollns, dxNavBarBase, dxNavBar, PngImage, LMDPNGImage, cxNavigator,
  dxBarBuiltInMenu, frxClass, dxCore,
  System.ImageList, Vcl.OleCtrls, dxGDIPlusClasses;

type
  TfrmPri = class(TForm)
    ImageErro: TImage;
    ImageOk: TImage;
    LMDSimplePanel1: TLMDSimplePanel;
    Timer2: TTimer;
    btnFechar: TcxButton;
    btnMinimizar: TcxButton;
    TimerTick: TTimer;
    cxStyleRepository1: TcxStyleRepository;
    cxsNegrito: TcxStyle;
    cxsAmarelo: TcxStyle;
    cxsVerde: TcxStyle;
    cxsVermelho: TcxStyle;
    LMDSimplePanel2: TLMDSimplePanel;
    mtChaves: TkbmMemTable;
    mtChavesChave: TStringField;
    mtChavesTipo: TStringField;
    mtChavesVencimento: TStringField;
    dsChaves: TDataSource;
    mtChavesMaquinas: TIntegerField;
    TimerLic: TTimer;
    PopupMenu1: TPopupMenu;
    Encerrar1: TMenuItem;
    N1: TMenuItem;
    Minimizar1: TMenuItem;
    Abrir1: TMenuItem;
    LMDSimplePanel6: TLMDSimplePanel;
    LMDSimplePanel7: TLMDSimplePanel;
    Paginas: TcxPageControl;
    tsBD: TcxTabSheet;
    tsAssistencia: TcxTabSheet;
    SysInfo: TLMDSysInfo;
    panBD: TLMDSimplePanel;
    LMDSimplePanel9: TLMDSimplePanel;
    Image3: TImage;
    cxLabel11: TcxLabel;
    cxLabel15: TcxLabel;
    LMDDockSpeedButton1: TLMDDockSpeedButton;
    cxLabel3: TcxLabel;
    edPasta: TcxTextEdit;
    btnAssistenciaRemota: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edNomeComp: TcxTextEdit;
    edIPs: TcxMemo;
    cxPageControl1: TcxPageControl;
    cxLabel19: TcxLabel;
    edCodEquip: TcxTextEdit;
    lbErroDB: TcxLabel;
    LMDSimplePanel10: TLMDSimplePanel;
    lbVersao: TcxLabel;
    lbFree: TcxLabel;
    pmConta: TPopupMenu;
    Criarumanovaconta1: TMenuItem;
    Editarosdadosdessaconta1: TMenuItem;
    Alterarasenhadaminhaconta1: TMenuItem;
    UsaroutracontaNexCaf1: TMenuItem;
    N4: TMenuItem;
    pmAnt: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    Tray: TLMDTrayIcon;
    SB: TdxNavBar;
    dxNavBarItem1: TdxNavBarItem;
    dxNavBarItem2: TdxNavBarItem;
    dxNavBarItem3: TdxNavBarItem;
    dxNavBarGroup1: TdxNavBarGroup;
    Timer3: TTimer;
    imgNavBar: TcxImageList;
    Image10: TImage;
    Image11: TImage;
    genList: TLMDGenericList;
    nbiZerarDB: TdxNavBarItem;
    SBItem1: TdxNavBarItem;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TrayDblClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure btnMinimizarClick(Sender: TObject);
    procedure TimerTickTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TimerLicTimer(Sender: TObject);
    procedure TrayMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure SBChangeSelectedItem(Sender: TObject);
    procedure imBDClick(Sender: TObject);
    procedure imRegistroClick(Sender: TObject);
    procedure btnAssistenciaRemotaClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure LMDDockSpeedButton1Click(Sender: TObject);
    procedure ImageIconeGrandeDblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure SBLinkPress(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure Timer3Timer(Sender: TObject);
    procedure lbVersaoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FInicio : Cardinal;
    FPrimeiro : Boolean;
    FVerPri : Word;

    procedure AtualizaDadosComp;
    
    procedure VeSePode(S: String);
    procedure RetiraReadOnly;
    procedure SetVerPri(const Value: Word);
    
    procedure WMQueryEndSession(var Msg: TMessage);
      message WM_QUERYENDSESSION;

    procedure WMEndSession(var Msg: TMessage);
      message WM_ENDSESSION;

    procedure WMDadosLicenca(var Msg: TMessage);
      message WM_User + 1;  

    procedure WMParPub(var Msg: TMessage);
      message WM_User + 2; 

    procedure wmopenform(var Msg: TMessage);
      message wm_user + 3;  

    procedure wmminimizar(var Msg: TMessage);
      message wm_user + 4;  

    procedure wminiciar(var Msg: TMessage);
      message wm_user + 5;

    function VersaoStr: String; 

    function VersaoCompleta: String; 

    procedure On_Error(const s:string);

    procedure OnTimerIniciaAdmin(Sender: TObject);
    procedure OnTimerMinimizar(Sender: TObject);

  public
    Serv : TncServidor;
    FFechar: Boolean;
    
    procedure DadosLicenca;

    procedure FreeCaption(S: String);
    
    procedure Ativar;
    procedure Desativar;

    procedure AbreMostra(aOp: Integer);
  
    procedure AjustaIconeTray;
    procedure RecriaTray;
    property VerPri: Word
      read FVerPri write SetVerPri;
    { Public declarations }
  end;

var
  frmPri: TfrmPri = nil;
  hndFrmPri : HWND;

  MessageID: Integer;
  

implementation

uses 
  uLicExeCryptor, 
  ncIDRecursos, 
  ncsFrmLogin,
  uFrmCodLoja, 
  ncVersoes, 
  ncServAtualizaLic_Indy, 
  ncFrmSuporteRem, ncIPAddr, ncSyncLic, ncDebug,
  ncVersionInfo, ncShellStart, ncFrmProgress, 
  ncMsgCom, ncFirewall, ncsStrings, ncDM_nexapp, uVersionInfo, ncDMproc_sped,
  ncDMSolicitacoes_Sped;

const
  SegMS = 1000;
  MinMS = SegMS * 60;
  HorMS = MinMS * 60;
  DiaMS = HorMS * 24;
  TempoLic = 10000;

resourcestring  
  rsVersao = 'Vers�o';

{$R *.DFM}

function ForceForegroundWindow(hwnd: THandle): boolean;
const
  SPI_GETFOREGROUNDLOCKTIMEOUT = $2000;
  SPI_SETFOREGROUNDLOCKTIMEOUT = $2001;
var
  ForegroundThreadID: DWORD;
  ThisThreadID : DWORD;
  timeout : DWORD;
begin
  DebugMsg('ForceForeGround Window');
  if IsIconic(hwnd) then ShowWindow(hwnd, SW_RESTORE);
  if GetForegroundWindow = hwnd then 
    Result := true
  else begin

  // Windows 98/2000 doesn't want to foreground a window when some other
  // window has keyboard focus
  
    if ((Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion > 4)) or
        ((Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and
        ((Win32MajorVersion > 4) or ((Win32MajorVersion = 4) and
        (Win32MinorVersion > 0)))) then
    begin
  
  // Code from Karl E. Peterson, www.mvps.org/vb/sample.htm
  // Converted to Delphi by Ray Lischner
  // Published in The Delphi Magazine 55, page 16
  
      Result := false;
      ForegroundThreadID := GetWindowThreadProcessID(GetForegroundWindow,nil);
      ThisThreadID := GetWindowThreadPRocessId(hwnd,nil);
      if AttachThreadInput(ThisThreadID, ForegroundThreadID, true) then
      begin
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hwnd);
        AttachThreadInput(ThisThreadID, ForegroundThreadID, false);
        Result := (GetForegroundWindow = hwnd);
      end;
      if not Result then begin
  // Code by Daniel P. Stasinski
        SystemParametersInfo(SPI_GETFOREGROUNDLOCKTIMEOUT, 0, @timeout, 0);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(0),  SPIF_SENDCHANGE);
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hWnd);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0,
        TObject(timeout), SPIF_SENDCHANGE);
      end;
    end
    else begin
      BringWindowToTop(hwnd); // IE 5.5 related hack
      SetForegroundWindow(hwnd);
    end;
  
    Result := (GetForegroundWindow = hwnd);
  end;
end; { ForceForegroundWindow }

procedure TfrmPri.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (not FFechar) and Tray.Active then begin
    Action := caNone;
    PostMessage(Handle, WM_SYSCOMMAND, SC_MINIMIZE, 0);
  end else  
    Desativar;
end;

procedure TfrmPri.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := FFechar;
end;

procedure TfrmPri.btnFecharClick(Sender: TObject);
begin
  FFechar := True;
  VeSePode(rsEncerrarServidor);
end;

procedure TfrmPri.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize := False;              
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

function SoDig(S: String): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do 
    if S[I] in ['0'..'9'] then
      Result := Result + S[I];
end;

procedure TfrmPri.FormCreate(Sender: TObject);
var
  S, sPath : String; 
begin
  try
    sPath := ExtractFilePath(ParamStr(0));
    try  
{      genList[0].SaveToFile(sPath+genList[0].Filename);
      genList[1].SaveToFile(sPath+genList[1].Filename);}
      ForceDirectories(sPath+pastaDados);
    except
    end;
  except
  end;

  handleFrmPri := Handle;
  Paginas.ActivePageIndex := 0;
  if FileExists(IniFName(true)) then begin
    slIni.LoadFromFile(IniFName(true));
    SendAutoConnInfo := not SameText(slIni.Values['SendAutoConnInfo'], 'N');
  end else begin
    slIni.Values['DesativaAutoServ'] := 'N';
    slIni.SaveToFile(IniFName(true));
  end;

  gPodeCancelarOutroCaixa := ncClassesBase.StrToBool(slIni.Values['PodeCancelarOutroCaixa']);

  if SameText(slIni.Values['Debug'], 'S') then begin
    DebugAtivo := True;
    lbVersao.Style.BorderColor := clBlack;
    lbVersao.Style.TextColor := clBlack;
  end;
  
  DebugMsg('TfrmPri.FrmCreate - 1');
  MessageID := RegisterWindowMessage('TaskbarCreated');

  FreeCaption('');
  
  Serv := TncServidor.Create(Self);

  DebugMsg('TfrmPri.FrmCreate - 2');
  
  ncFrmProgress.FormPri := Self;

  DebugMsg('TfrmPri.FrmCreate - 3');
  
  DebugMsg('TfrmPri.FrmCreate - 4');
  
  
  FPrimeiro := True;
  NomeCompServ := SysInfo.Computername;
  RegistroGlobal.LeArqPadrao(True);
  gNexApp_Config.Refresh;

  DebugMsg('TfrmPri.FrmCreate - 5');
  
  gConfig.Conta := RegistroGlobal.Conta;

  DebugMsg('TfrmPri.FrmCreate - 6');
  edPasta.Text    := ExtractFileDir(ParamStr(0));
  DebugMsg('TfrmPri.FrmCreate - 7');
  edCodEquip.Text := RegistroGlobal.GetCodEquip(RegistroGlobal.GetSerialHD);
  DebugMsg('TfrmPri.FrmCreate - 8');
  gConfig.CodEquip := edCodEquip.Text;
  DebugMsg('TfrmPri.FrmCreate - 9');
  gConfig.FreePremium := False;
  DebugMsg('TfrmPri.FrmCreate - 10');
  gConfig.DataLic := 0;
  gConfig.DVA := 0;
  gConfig.PreLib := False;
  DebugMsg('TfrmPri.FrmCreate - 11');
  gConfig.Conta := RegistroGlobal.Conta;
  DebugMsg('TfrmPri.FrmCreate - 12');
  gConfig.VerPri := Versoes.Versao;
  DebugMsg('TfrmPri.FrmCreate - 13');
  
  
  S := ExtractFilePath(ParamStr(0))+'ncserv.exe';
  if FileExists(S) then
    DeleteFile(S);

  S := ExtractFilePath(ParamStr(0))+'atualiza\ncguard.exe';
  if FileExists(S) then
    DeleteFile(S);

  DebugMsg('TfrmPri.FrmCreate - 14');
  
  RetiraReadOnly;
  FrmCopia := TFrmCopia.Create(Self);
  FrmCopia.panPri.Parent := panBD;
  SB.Groups[0].SelectedLinkIndex := 0;
  FrmCopia.Paginas.ActivePageIndex := 0;
  
  VerProg := SelfVersion;
  FVerPri := 0;
  VerPri := StrToIntDef(Copy(SoDig(SelfVersion), 1, 3), 0); 
  FInicio := GetTickCount;

  DebugMsg('TfrmPri.FrmCreate - 15 - FIM');
end;

procedure TfrmPri.TrayDblClick(Sender: TObject);
begin
  DebugMsg('TrayDblClick');
  Application.Restore;
  Application.BringToFront;
  Visible := True;
end;

procedure TfrmPri.TrayMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbLeft then
    TrayDblClick(nil);
end;

procedure TfrmPri.LMDDockSpeedButton1Click(Sender: TObject);
begin
  ShellStart(edPasta.Text);
end;

procedure TfrmPri.OnTimerIniciaAdmin(Sender: TObject);
begin
  DebugMsg(Self, 'OnTimerIniciaAdmin');
  try
    WinExecAndWait32(ExtractFilePath(ParamStr(0))+'NexAdmin.exe afterinst', SW_SHOWNORMAL, False);
  finally
    Sender.Free;
  end;
end;

procedure TfrmPri.OnTimerMinimizar(Sender: TObject);
begin
  try
    btnMinimizarClick(nil);
  finally
    Sender.Free;
  end;
end;

procedure TfrmPri.On_Error(const s: string);
begin
  DebugMsg('ERRO Remote Control: '+s);
end;

function TfrmPri.VersaoCompleta: String;
begin
  Result := IntToStr(FVerPri);
  Result := nomeprog + ' ' + Result[1] + '.' + Result[2] + '.' + Result[3] + Copy(SelfVersion, 6, 20);
end;

function TfrmPri.VersaoStr: String;
begin
  Result := prefixo_versao+Copy(SelfVersion, 7, 20);
end;

procedure TfrmPri.VeSePode(S: String);
var I : Integer;
begin
  if Serv.Ativo then begin
    I := TFrmLogin.Create(nil).PodeFechar(not Serv.TodosPerm(daMaqFecharCMServer), S);
    DebugMsg('TFrmPri.VeSePode 1');
    if I<0 then FFechar := False;
  end;
  Timer2.Enabled := (not Serv.Ativo) or (I>=0);
end;

procedure TfrmPri.wmParPub(var Msg: TMessage);
var P : TmsgPubPar;
begin
  P := TmsgPubPar(Msg.WParam);
  try
    Serv.Lock;
    try
      if Serv.Ativo then
        Serv.AtualizaPubPar(P);
    finally
      Serv.Unlock;
    end;
  finally
    P.Free;
  end;
end;

procedure TfrmPri.WMDadosLicenca(var Msg: TMessage);
begin
  gNexApp_Config.Refresh;
  DadosLicenca;
end;

procedure TfrmPri.WMEndSession(var Msg: TMessage);
begin
  DebugMsg('WMEndSession 1');
//  if TWMEndSession(Msg).EndSession then begin
    FFechar := True;
    DebugMsg('WMEndSession 2');
    Close;
//  end;
end;

procedure TfrmPri.wminiciar(var Msg: TMessage);
begin
  DebugMsg(Self, 'wminiciar 1');

  try
    if not Serv.Ativo then Ativar;
  finally
    DadosLicenca;
  end;

  Tray.Active := True;

  if Serv.Ativo then begin
    DebugMsg(Self, 'wminiciar 2');
    with TTimer.Create(Self) do begin
      Interval := 500;
      OnTimer := OnTimerMinimizar;
      Enabled := True;
    end;    
    PostMessage(Handle, wm_user+4, 0, 0);
    if SameText(ParamStr(1), 'afterinst') or SameText(ParamStr(2), 'afterinst') then begin
      DebugMsg(Self, 'afterinst');
      with TTimer.Create(Self) do begin
        Interval := 2000;
        OnTimer := OnTimerIniciaAdmin;
        Enabled := True;
      end;
    end;
  end else
    DebugMsg(Self, 'wminiciar 3');
  DebugMsg(Self, 'wminiciar 4');
end;

procedure TfrmPri.wmminimizar(var Msg: TMessage);
begin
   DebugMsg(Self, 'wmminimizar');
   btnMinimizarClick(nil);
end;

procedure TfrmPri.wmopenform(var Msg: TMessage);
begin
  Application.Restore;
  Application.BringToFront;
  Visible := True;
  ForceForegroundWindow(Handle);
end;

procedure TfrmPri.WMQueryEndSession(var Msg: TMessage);
begin
  Msg.Result := Integer(True);
  TWMQUERYEndSession(Msg).Result := Integer(True);
  FFechar := True;
  Close;
  DebugMsg('WMQueryEndSession');
end;

procedure TfrmPri.Timer2Timer(Sender: TObject);
begin
  DebugMsg('TFrmPri.Timer2Timer - 1');
  if InFrmProgress then Exit;
  DebugMsg('TFrmPri.Timer2Timer - 2');

  Timer2.Enabled := False;
  if FFechar then begin
    DebugMsg('TFrmPri.Timer2Timer - 3');
    Tray.Active := False;
    DebugMsg('TFrmPri.Timer2Timer - 4');
    Close;
    DebugMsg('TFrmPri.Timer2Timer - 5');
  end else begin
    DebugMsg('TFrmPri.Timer2Timer - 6');
    Desativar;
    DebugMsg('TFrmPri.Timer2Timer - 7');
  end;
end;

procedure TfrmPri.Timer3Timer(Sender: TObject);
begin
  Timer3.Enabled := False;
  try
    try
      AtualizaDadosComp;
      addApplicationToFirewall('NEX Server', ParamStr(0));
      allowexceptionsonfirewall;
    except 
    end;
  finally
    Timer3.Interval := 60000 * 3;
    Timer3.Enabled := True;
  end;
end;

procedure TfrmPri.TimerLicTimer(Sender: TObject);
begin
  if InFrmProgress then Exit;
  
  TimerLic.Enabled := False;
  TimerLic.Interval := TempoLic;
  TimerLic.Enabled := True;
  try
    DadosLicenca;
  except
  end;
end;

procedure TfrmPri.Ativar;
var
  sPath : String; 
  S: String;
begin
  DebugMsg(Self, 'Ativar');
  try
    sPath := ExtractFilePath(ParamStr(0));
    S := sPath + PastaDados;
    if not DirectoryExists(S) then ForceDirectories(S);
      
    Serv.Ativo := True;
  finally
    AjustaIconeTray;
    if (not Serv.Ativo) and Serv.ErroNLS then 
      FrmCopia.btnCorrigirClick(nil);
  end;
end;

procedure TfrmPri.AtualizaDadosComp;
var
  IP : TLocalIPObj;
  I : Integer;
begin
  IP := TLocalIPObj.Create;
  try
    gDadosAutoconn.ComputerName := ComputerName;
    edNomeComp.Text := ComputerName;
    edIPS.Lines.Text := '';
    for I := 0 to IP.IPCount-1 do
      edIPs.Lines.Add(IP.GetIPFromList(I));
    gDadosAutoconn.IPs := edIPs.Lines.Text;  
  finally
    IP.Free;
  end;
end;

procedure TfrmPri.btnMinimizarClick(Sender: TObject);
begin
  DebugMsg('btnMinimizarClick');
  TrayDblClick(nil);
  Application.Minimize;
  PostMessage(Handle, WM_SYSCOMMAND, SC_MINIMIZE, 0);
end;

procedure TfrmPri.Button1Click(Sender: TObject);
var
  procSped : TdmProcDados_Sped;
begin
    procSped := TdmProcDados_Sped.Create(self);
    procSped.ProcessaDados;
end;

procedure TfrmPri.Button2Click(Sender: TObject);
var
  geraSped : TdmSolicitacoes_Sped;
  procSped : TdmProcDados_Sped;
begin
    procSped := TdmProcDados_Sped.Create(self);
    procSped.reprocessaAntigo;
    geraSped := TdmSolicitacoes_Sped.Create(self);
    geraSped.processaSped;
end;

procedure TfrmPri.lbVersaoClick(Sender: TObject);
begin
  ShowMessage('          '+VersaoCompleta+'          ');
end;

procedure TfrmPri.btnAssistenciaRemotaClick(Sender: TObject);
begin
  ChamaSuporte('NexServ', VersaoStr);
end;

procedure TfrmPri.TimerTickTimer(Sender: TObject);
var 
  Tempo : Cardinal;
  D, H, M, S : Word;
  St : String;
begin
  Serv.Lock;
  try
    DebugMsg('TIC-TAC');
  finally
    Serv.Unlock;
  end;
  
  if InFrmProgress then Exit;

  Tempo := GetTickCount - FInicio;
  D := Tempo div DiaMS;
  Tempo := Tempo mod DiaMS;
  H := Tempo div HorMS;
  Tempo := Tempo mod HorMS;
  M := Tempo div MinMS;
  Tempo := Tempo mod MinMS;
  S := Tempo div SegMS;
  St := '';
  if D > 0 then 
  if D > 1 then
    St := IntToStr(D) + ' dias, ' else
    St := '1 dia, ';
    
  St := St + IntToStr(H) + 'h, ' +
        IntToStr(M) + 'm, ' +
        IntToStr(S) + 's';
        
//  lbTempo.Caption := 'Tempo Execu��o: ' + St;
end;

procedure TfrmPri.DadosLicenca;
var 
  I, Q, T : Integer;
  Ant : Byte;
  TC : TTipoChave;
  Direito, aVenc : TDateTime;
  aCE, aSN: String;
  S : String;
  Chaves : TArrayChaveLiberacao;
  SC : TStatusConta;
begin
{$I crypt_start.inc}
  T := 0;
  Direito := EncodeDate(2050, 1, 1);
  RegistroGlobal.CodEquipSerial(aCE, aSN);
  SC := RegistroGlobal.Status;
  aVenc := 0;

//  lbBoletosPend.Visible := (RegistroGlobal.BoletosPendentes>0);

  Chaves := RegistroGlobal.CloneChaves;
  try
    if Trim(RegistroGlobal.Conta)='' then 
      SC := scSemConta else
      SC := Chaves.Status(RegistroGlobal.CodLoja, aCE, aSN, aVenc);

    if (Length(lastCEOK)=19) and (lastCEOK<>edCodEquip.Text) then
      edCodEquip.Text := lastCEOK; 
      
      
    with RegistroGlobal do
    case SC of
      scBloqueada : begin
        FreeCaption('');
        T := 0;
        Versoes.AjustaVersaoAtual(EncodeDate(2050, 1, 1));
      end;
      scSemConta : begin
        FreeCaption('');
        Versoes.AjustaVersaoAtual(EncodeDate(2050, 1, 1));
      end;
      scAtivar : begin
        FreeCaption('FREE');
        Versoes.AjustaVersaoAtual(EncodeDate(2050, 1, 1));
        {$ifdef LAN}
        edCodAtivacao.SetFocus;                            
        {$endif}
      end;
      scOutroHD : begin
        FreeCaption('');
        Versoes.AjustaVersaoAtual(EncodeDate(2050, 1, 1));
      end;
      scCybermgr : begin
        FreeCaption('');
        Versoes.AjustaVersaoAtual(EncodeDate(2050, 1, 1));
      end;
      scTipoLicInvalida : begin
        FreeCaption('');
        Versoes.AjustaVersaoAtual(EncodeDate(2050, 1, 1));
      end;
      scFree, scPremium, scPremiumVenc : begin
        T := 1;
        if SC=scPremium then begin
          if RegistroGlobal.Tipo=tcFreePro then
            FreeCaption('PRO') else
            FreeCaption('PREMIUM');
        end else
          FreeCaption('FREE');
        Versoes.AjustaVersaoAtual(EncodeDate(2050, 1, 1));
      end;
      scAnt : begin
        FreeCaption('');
        mtChaves.Active := True;
        mtChaves.EmptyTable;
        for I := 0 to Chaves.Count-1 do begin
          Q := Chaves[I].ChaveValida(CodLoja, aCE, aSN, TC);
          if (Q<1) or (Q>2000) or (not (TC in [tcTemporaria, tcDefinitiva, tcTeste, tcLocacao])) then Q := 0;
          mtChaves.Insert;
          mtChavesChave.Value := Chaves[I].AsString;
          if Q = 0  then
            mtChavesTipo.Value := 'Inv�lida'
          else begin
            mtChavesTipo.Value := TipoChaveStr[TC];
            if TC=tcDefinitiva then begin
              mtChavesVencimento.Value := 'Nunca';
              if (Chaves[I].Vencimento<Direito) then
                Direito := Chaves[I].Vencimento;
              T := T + Q;
            end else begin
              mtChavesVencimento.Value := FormatDateTime('dd/mm/yyyy', Chaves[I].Vencimento);
              if not Chaves[I].Venceu then begin
                T := T + Q;
                if (Chaves[I].Vencimento<Direito) then
                  Direito := Chaves[I].Vencimento;
              end;
            end;  
          end;
          mtChavesMaquinas.Value := Q;
          mtChaves.Post;
        end;
    
        if T < 1 then 
          Versoes.AjustaVersaoAtual(EncodeDate(2050, 1, 1));
      end;
    end;
  finally
    Chaves.Free;
  end;
  
  Versoes.AjustaVersaoAtual(Direito);
  VerPri := Versoes.Versao;

  Serv.Lock;
  try
    if (gConfig.VerPri<>Versoes.Versao) or 
       (gConfig.Pro<>(RegistroGlobal.Tipo=tcFreePro)) or
       (gConfig.StatusConta<>SC) or
       (gConfig.Conta<>RegistroGlobal.Conta) or
       (gConfig.FreePremium<>(SC in [scFree, scPremium, scPremiumVenc])) or
       (gConfig.JaFoiPremium<>RegistroGlobal.JaFoiPremium) or
       (gConfig.DataLic<>aVenc) 
    then begin
      gConfig.AtualizaCache;
      gConfig.VerPri := Versoes.Versao;
      gConfig.StatusConta := SC;
      gConfig.JaFoiPremium := RegistroGlobal.JaFoiPremium or (SC=scPremiumVenc);
      gConfig.DataLic := aVenc;
      gConfig.Pro := (RegistroGlobal.Tipo=tcFreePro);
      gConfig.FreePremium := (SC in [scFree, scPremium, scPremiumVenc]);
      gConfig.Conta := RegistroGlobal.Conta;
      gConfig.Notificar(tnAlteracao);
    end;
  finally
    Serv.Unlock;
  end;

{$I crypt_end.inc}
end;

procedure TfrmPri.Desativar;
begin
  DebugMsg('TfrmPri.Desativar 1');
  try
    DebugMsg('TfrmPri.Desativar 2');
    Serv.Ativo := False;
    DebugMsg('TfrmPri.Desativar 3');
  finally
    AjustaIconeTray;
  end;
end;

procedure TfrmPri.SBChangeSelectedItem(Sender: TObject);
begin
  FrmCopia.Paginas.ActivePageIndex := SB.Groups[0].SelectedLinkIndex;
end;

procedure TfrmPri.SBLinkPress(Sender: TObject; ALink: TdxNavBarItemLink);
begin
  FrmCopia.Paginas.ActivePageIndex := ALink.Index;
end;

procedure TfrmPri.SetVerPri(const Value: Word);
begin
  if Value=FVerPri then Exit;
  FVerPri := Value;
  lbVersao.Caption := rsVersao + ' ' + VersaoStr;
end;


procedure TfrmPri.AbreMostra(aOp: Integer);
begin
  if aOp in [0..1] then begin
    Application.Restore;
    Application.BringToFront;
    Visible := True;
    ForceForegroundWindow(Handle);
    {$IFDEF Lan}
    Paginas.ActivePageIndex := 0;
    {$ENDIF}

    {$IFDEF Loja}
    Paginas.ActivePageIndex := 1;
    {$ENDIF}
    
    
  end else 
  if aOp=10 then begin
    FFechar := True;
    Close;
  end;
end;

procedure TfrmPri.AjustaIconeTray;
begin
  if Serv.Ativo then  begin
    lbErroDB.Caption := '';
    lbErroDB.Visible := False;
  end else 
  if (Serv.ErroBD>'') and not Serv.ErroNLS then begin
    lbErroDB.Caption := Format(rsDBError, [Serv.ErroBD]);
    lbErroDB.Visible := True;
  end;
end;

procedure TfrmPri.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  Handled := False;
  if Msg.message = MessageID then begin
    RecriaTray;
    DebugMsg('TASKBAR RECREATED');
  end;
end;

procedure TfrmPri.FormDestroy(Sender: TObject);
begin
  frmPri := nil;
end;

procedure TfrmPri.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F8 then
    btnAssistenciaRemotaClick(nil);
end;

procedure TfrmPri.FormShow(Sender: TObject);
var 
  I : Integer;
begin
  CoInitialize(nil);
  hndFrmPri := Handle;
  hndNotify := Handle;

  DebugMsg(Self, 'FormShow - ' + FPrimeiro.ToString);
  
  PostMessage(Handle, wm_user+5, 0, 0);
  FPrimeiro := False;
  AtualizaDadosComp;
  Paginas.ActivePageIndex := 1;
end;

procedure TfrmPri.FreeCaption(S: String);
begin
  lbFree.Caption := S;
  if SameText(S, 'PREMIUM') then
    lbFree.Style.TextColor := clGreen else
    lbFree.Style.TextColor := $00595959;
end;

procedure TfrmPri.ImageIconeGrandeDblClick(Sender: TObject);
begin
  DebugAtivo := not DebugAtivo;
  if not DebugAtivo then DesativaDebug;
  if DebugAtivo then begin
    lbVersao.Style.BorderColor := clBlack;
    lbVersao.Style.TextColor := clBlack;
  end else begin
    lbVersao.Style.BorderColor := $00ACACAC;
    lbVersao.Style.TextColor := $00595959;
  end;
end;

procedure TfrmPri.imBDClick(Sender: TObject);
begin
  Paginas.ActivePageIndex := 2;
end;

procedure TfrmPri.imRegistroClick(Sender: TObject);
begin
  Paginas.ActivePageIndex := 1;
end;

procedure TfrmPri.RecriaTray;
//var A, S: Boolean;
begin
{  A := Tray.Active;
  S := Tray.ShowMinimizedIcon;
  Tray.Free;
  Tray := TLMDTrayIcon.Create(Self);
  Tray.OnClick := TrayDblClick;
  Tray.OnDblClick := TrayDblClick;
  Tray.NoClose := False;
  Tray.Hint := 'Cyber Manager - CM-Server';
  AjustaIconeTray;
  Tray.ShowMinimizedIcon := S;
  Tray.Active := A;}
//  Application.Restore;


  Tray.Active := False;
  Tray.Active := True;
  PostMessage(Handle, WM_SYSCOMMAND, SC_MINIMIZE, 0);
end;

procedure TfrmPri.RetiraReadOnly;
var 
  SR : TSearchRec;
  S: String;
begin
  S := ExtractFilePath(ParamStr(0))+pastaDados;
  if FindFirst(S+'*.nx1', SysUtils.faReadOnly, SR) = 0 then
  try
    repeat
      if (SR.Attr and SysUtils.faReadOnly) = SysUtils.faReadOnly then
        SetFileAttributes(Pchar(S+SR.Name), SR.Attr-SysUtils.faReadOnly);
    until FindNext(SR)<>0;
  finally
    FindClose(SR);
  end;
end;

end.



