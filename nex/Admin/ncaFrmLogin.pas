unit ncaFrmLogin;
{
    ResourceString: Dario 11/03/13
}

interface

{$I NEX.INC}

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons,Dialogs, DBCtrls, Db,
  ExtCtrls, LMDCustomControl, LMDCustomPanel, 
  LMDCustomBevelPanel, nxllTransport, nxptBasePooledTransport,
  LMDSimplePanel, LMDCustomComponent, LMDIniCtrl, jpeg, 
  LMDCustomHint, LMDCustomShapeHint, LMDMessageHint, LMDShapeHint,
  LMDApplicationCtrl, cxLookAndFeelPainters, cxButtons, pngimage,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxLabel, Menus, cxGraphics, cxCheckBox,
  cxMaskEdit, cxDropDownEdit, cxRadioGroup, lmdcont, LMDControl,
  LMDPNGImage, cxLookAndFeels, dxBar, cxStyles, cxClasses, dxBarExtItems,
  cxImage, cxPCdxBarPopupMenu, cxPC, ieview, iemview, LMDBaseController,
  LMDCustomContainer, LMDGenericList, dxBarBuiltInMenu, dxGDIPlusClasses;


type
  TTryConn = class ( TThread )
  private
    FServ: String;
    FConectou: Boolean;
    FUsers: String;
    FVer: String;
    FConta: String;
    procedure doConnect;
    procedure doGetData;
  protected
    procedure Execute; override;
  public
    constructor Create(aServ: String; AOnTerminate: TNotifyEvent);

    property Conectou: Boolean read FConectou;
    property Users: String read FUsers;
    property Ver: String read FVer;
    property Conta: String read FConta;
  end;
  
  TFrmNexLogin = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    panPri: TLMDSimplePanel;
    panLogo: TLMDPanelFill;
    LMDSimplePanel11: TLMDSimplePanel;
    lbVer: TcxLabel;
    panServ: TLMDSimplePanel;
    btnConfig: TcxButton;
    pgConn: TcxPageControl;
    tsConectando: TcxTabSheet;
    cxLabel1: TcxLabel;
    img: TImageEnMView;
    tsConectado: TcxTabSheet;
    lbServer: TcxLabel;
    cxLabel2: TcxLabel;
    Paginas: TcxPageControl;
    tsErro: TcxTabSheet;
    tsOk: TcxTabSheet;
    panUsuario: TLMDSimplePanel;
    edUsuario: TcxComboBox;
    lbUsuario: TcxLabel;
    panSenha: TLMDSimplePanel;
    edSenha: TcxTextEdit;
    lbSenha: TcxLabel;
    LMDSimplePanel2: TLMDSimplePanel;
    btnLogin: TcxButton;
    lbEsqueceu: TcxLabel;
    LMDSimplePanel1: TLMDSimplePanel;
    cxLabel3: TcxLabel;
    Image1: TImage;
    cxLabel4: TcxLabel;
    btnFechar: TcxButton;
    imgNex: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure edSenhaFocusChanged(Sender: TObject);
    procedure edUsuarioFocusChanged(Sender: TObject);
    procedure edUsuarioEnter(Sender: TObject);
    procedure lbUsuarioClick(Sender: TObject);
    procedure lbSenhaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lbEsqueceuClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    FLocalizando: Boolean;
    FContaLoja : String;
    FShowing : Boolean;
    FTryConn : TTryConn;
    FLastCfg : Cardinal;
    slUsers   : TStrings;
    
    procedure LeConfig;
    procedure DoLogin(aAfterinst: Boolean);

    function FocusColor: Tcolor;

    procedure RetryConn;
    procedure MostrarConfig(aAlerta: Boolean);
    procedure TimerAutoLogin(Sender: TObject);
    procedure TimerForceForeground(Sender: TObject);
    procedure TryFirstConn(Sender: TObject);
    procedure Update;
    procedure SetLocalizando(const Value: Boolean);
    procedure OnTerminateTryConn(Sender: TObject);
    { Private declarations }
  public
    property Localizando: Boolean
      read FLocalizando write SetLocalizando;
  end;

  function EmailFromValue(S: String): String;
  function SenhaFromValue(S: String): String;

var
  FrmNexLogin: TFrmNexLogin;

implementation

uses 
  CSCBase,
  CSCClient,
  ncClassesBase, 
  ncaDM, 
  ncaFrmPri, 
  ncDebug, 
  ncVersionInfo, 
  ncaFrmErroConexao, 
  ncErros, 
  ncaFrmConn,
  ncaFrmConfigLogin, 
  ncaConnMgr, 
  ncaFrmEnviaSenha;

// START resource string wizard section
const
  S127001 = '127.0.0.1';
  

// END resource string wizard section


// START resource string wizard section
resourcestring
  SEnviamosEmail = 'Enviamos um email para %s com a senha. Por favor verifique sua caixa de SPAM.';
  SDetectarAutomaticamente = 'Detectar Automaticamente';
  SServidorLocal = 'Local';
  SServidor = 'Servidor: ';
  SVers�o = 'Vers�o ';

// END resource string wizard section


{$R *.DFM}

function EmailFromValue(S: String): String;
var P : Integer;
begin
  P := Pos(#255, S);
  Delete(S, 1, P);
  if P>0 then
    Result := S else
    Result := '';
end;


function SenhaFromValue(S: String): String;
var P: Integer;
begin
  P := Pos(#255, S);
  if P>0 then
    Result := Copy(S, 1, P-1) else
    Result := '';
end;


function TFrmNexLogin.FocusColor: Tcolor;
begin
  Result := edUsuario.StyleFocused.Color;
end;

procedure TFrmNexLogin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if FTryConn<>nil then
    FTryConn.OnTerminate := nil;
    
  FrmNexLogin := nil;
  Action:= caFree;
end;

procedure TFrmNexLogin.FormCreate(Sender: TObject);
begin
  Paginas.ActivePageIndex := 0;
  slUsers := TStringList.Create;
  FLastCfg := 0;

  img.mio.LoadFromStreamGIF(dados.genList.Items[0].Data);
  
  FLocalizando := True;
  FShowing := False;
  FrmNexLogin := Self;
  LeConfig;

  with TTimer.Create(Self) do begin // do not localize
    Interval := 50;
    OnTimer := TimerForceForeground;
    Enabled := True;
  end;
end;

procedure TFrmNexLogin.FormDestroy(Sender: TObject);
begin
  slUsers.Free;
end;

procedure TFrmNexLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and 
     (not btnLogin.Focused) then 
  begin
    SelectNext(ActiveControl as TWinControl, True, True);
    Key := #0;
  end;
end;

procedure TFrmNexLogin.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNexLogin.btnLoginClick(Sender: TObject);
begin
  DoLogin(False);
end;

procedure TFrmNexLogin.btnConfigClick(Sender: TObject);
begin
  MostrarConfig(False);
end;

procedure TFrmNexLogin.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNexLogin.DoLogin(aAfterinst: Boolean);
begin
  with Dados do begin
    CM.Username := edUsuario.Text;
    CM.Senha    := edSenha.Text;
    ServidorRemoto := True;
    CM.Servidor := ServRem;
    try
      CM.Ativo := True;
      slConfig.Values['Usuario'] := CM.Username;
    except
      On E: EErroNexCafe do begin
        if aAfterInst then Exit;
        if E.CodigoErro=ncerrFalhaConexao then begin
          TFrmErroConexao.Create(Self).ShowModal;
          Exit;
        end else
          Raise;
      end;   
      On E: Exception do begin 
        if aafterinst then Exit;
        Raise;
      end;
    end;
    Close;  
  end;
end;

procedure TFrmNexLogin.edSenhaFocusChanged(Sender: TObject);
begin
  if edSenha.Focused then
    panSenha.Color := FocusColor 
  else
  if edSenha.Enabled then
    panSenha.Color := clWhite else
    panSenha.Color := clBtnFace;
end;

procedure TFrmNexLogin.edUsuarioEnter(Sender: TObject);
begin
  edUsuario.DroppedDown := True;
end;

procedure TFrmNexLogin.edUsuarioFocusChanged(Sender: TObject);
begin
  if edUsuario.Focused then
    panUsuario.Color := FocusColor 
  else
  if edUsuario.Enabled then
    panUsuario.Color := clWhite else
    panUsuario.Color := clBtnFace;
end;

procedure TFrmNexLogin.FormShow(Sender: TObject);
begin
  Localizando := True;
  with TTimer.Create(Self) do begin
    Interval := 1000;
    OnTimer := TryFirstConn;
    Enabled := True;
  end;
  FShowing := True;

  lbVer.Caption := prefixo_versao + Copy(SelfVersion, 7, 20);
end;

procedure TFrmNexLogin.lbEsqueceuClick(Sender: TObject);
var 
  sl: TStrings;
  i : integer;
  aEmail : String;
begin

  sl := TStringList.Create;
  try
    aEmail := EmailFromValue(slUsers.Values[edUsuario.Text]);
    if aEmail>'' then 
      sl.Add(edUsuario.Text+'='+SenhaFromValue(slUsers.Values[edUsuario.Text]))
    else begin
      for I := 0 to slUsers.Count-1 do
        sl.Add(Copy(slUsers[i], 1, Pos(#255, slUsers[i])-1));
      aEmail := FContaLoja;
    end;
    TFrmEnviaSenha.Create(Self).Mostrar(aEmail, sl.Text);
  finally
    sl.Free;
  end;
end;

procedure TFrmNexLogin.lbSenhaClick(Sender: TObject);
begin
  edSenha.SetFocus;
end;

procedure TFrmNexLogin.lbUsuarioClick(Sender: TObject);
begin
  edUsuario.SetFocus;
end;

procedure TFrmNexLogin.LeConfig;
begin
  BioActive := SameText(slConfig.Values['Biometria'], 'S'); // do not localize
  gConnMgr.LoadConfig;
end;

procedure TFrmNexLogin.MostrarConfig(aAlerta: Boolean);
begin
  if FrmConfigLogin<>nil then Exit;
  if TFrmConfigLogin.Create(Self).Mostrar(aAlerta) then
  begin
    FLastCfg := 0;
    RetryConn;
  end else begin
    FLastCfg := GetTickCount;
    if Localizando or (Paginas.ActivePageIndex=1) then RetryConn;
  end;
end;

procedure TFrmNexLogin.OnTerminateTryConn(Sender: TObject);
var 
  I: Integer;
  sUser : String;
begin 
  FTryConn := nil;
  if FrmNexLogin=nil then Exit;
  
  with TTryConn(Sender) do 
  if Conectou then begin
    Localizando := False;
    gConnMgr.Conectou(FServ);
    if not SameText(FVer, lbVer.Caption) then begin
      Paginas.ActivePageIndex := 1;
    end else begin
      slUsers.Text := FUsers;
      with edUsuario.Properties.Items do begin
        BeginUpdate;
        try
          Clear;
          for I := 0 to slUsers.Count - 1 do
            Add(slUsers.Names[I]);
        finally
          EndUpdate;
        end;
      end;
      FContaLoja := FConta;

      sUser := slConfig.Values['Usuario'];

      if FrmConfigLogin=nil then
      if SameText(ParamStr(1), 'afterinst') or ((slUsers.Count=1) and (SenhaFromValue(slUsers.ValueFromIndex[0])=''))  then begin
        with TTimer.Create(Self) do begin // do not localize
          sUser := slUsers.Names[0];
          Interval := 100;
          OnTimer := TimerAutoLogin;
          Enabled := True;
        end;
      end else
      if SameText(ParamStr(1), 'afterlogoff') then 
        sUser := '';
        
      with slConfig do 
      if (edUsuario.Text='') and (sUser>'') and (slUsers.IndexOfName(sUser)>=0) then 
        edUsuario.Text := sUser;

      if FrmConfigLogin=nil then
      if edUsuario.Text>'' then
        edSenha.SetFocus else
        edUsuario.SetFocus;
    end;
    Update;
  end else begin
    gConnMgr.NaoConectou(FServ);

    if gConnMgr.Auto then begin
      if FrmConfigLogin=nil then
        RetryConn;
    end else begin
      if (FrmConfigLogin=nil) and ((FLastCfg=0) or ((GetTickCount-FLastCfg)>20000)) then 
        MostrarConfig(True) else
        RetryConn;
    end;
  end;
end;

procedure TFrmNexLogin.RetryConn;
begin
  if FTryConn=nil then begin
    Localizando := True;
    FContaLoja := '';
    Update;    
    FTryConn := TTryConn.Create(gConnMgr.ObtemServidor, OnTerminateTryConn);
    FTryConn.Resume;
  end;
end;

procedure TFrmNexLogin.SetLocalizando(const Value: Boolean);
begin
  FLocalizando := Value;
  if Value then begin
    Paginas.ActivePageIndex := 0;
    img.Playing := True;
    img.PlayLoop := True;
    pgConn.ActivePageIndex := 0;
    panServ.Color := clWhite;
    panServ.Bevel.BorderInnerWidth := 1;
    lbUsuario.Enabled := False;
    lbSenha.Enabled := False;
    edUsuario.Enabled := False;
    edSenha.Enabled := False;
    panUsuario.Color := clBtnFace;
    panUsuario.Bevel.BorderInnerWidth := 0;
    panSenha.Color := clBtnFace;
    panSenha.Bevel.BorderInnerWidth := 0;
    btnLogin.Enabled := False;
    lbEsqueceu.Enabled := False;
  end else begin
    with Dados.nxTCPIP do 
      if SameText(ServerName, '127.0.0.1') or SameText(ServerName, 'localhost') then
        lbServer.Caption := SServidorLocal else
        lbServer.Caption := ServerName;
    
    img.Playing := False;
    img.PlayLoop := False;
    pgConn.ActivePageIndex := 1;
    panServ.Color := clBtnFace;
    panServ.Bevel.BorderInnerWidth := 0;
    lbUsuario.Enabled := True;
    lbSenha.Enabled := True;
    edUsuario.Enabled := True;
    edSenha.Enabled := True;
    panUsuario.Color := clWhite;
    panUsuario.Bevel.BorderInnerWidth := 1;
    panSenha.Color := clWhite;
    panSenha.Bevel.BorderInnerWidth := 1;
    btnLogin.Enabled := True;
    lbEsqueceu.Enabled := True;
  end;
end;

procedure TFrmNexLogin.TimerAutoLogin(Sender: TObject);
begin
  Sender.Free;
  DoLogin(True);
end;

procedure TFrmNexLogin.TimerForceForeground(Sender: TObject);
begin
  try
    if FrmConfigLogin=nil then
      ForceForegroundWindow(Handle);
  finally
    Sender.Free;
  end;
end;

procedure TFrmNexLogin.TryFirstConn(Sender: TObject);
begin
  Sender.Free;
  RetryConn;
end;

procedure TFrmNexLogin.Update;
begin
  lbEsqueceu.Visible := (not Localizando) and ((FContaLoja>'') or (EmailFromValue(slUsers.Values[edUsuario.Text])>''));
end;

{ TTryConn }

constructor TTryConn.Create(aServ: String; AOnTerminate: TNotifyEvent);
begin
  inherited Create(True);
  OnTerminate := AOnTerminate;
  FServ := aServ;
  FConectou := False;
  FUsers:= '';
  FVer  := '';
  FConta:= '';
  FreeOnTerminate := True;
end;

procedure TTryConn.doConnect;
begin
  try
    Dados.ServRem.Ativo := False;
    Dados.nxTCPIP.Active := False;
    Dados.nxTCPIP.ServerName := FServ;
    Dados.ServRem.Ativo := True;
    FConectou := True;
    DebugMsg('TTryConn.doConnect - OK!');
  except
    on E: Exception do 
      DebugMsg('TTryConn.doConnect - Exception: ' + E.Message);
  end;
end;

procedure TTryConn.doGetData;
begin
  Dados.ServRem.GetLoginData(FVer, FConta, FUsers);
end;

procedure TTryConn.Execute;
begin
  doConnect;
  if FConectou then 
    doGetData;
end;

initialization
  FrmNexLogin := nil;

end.


