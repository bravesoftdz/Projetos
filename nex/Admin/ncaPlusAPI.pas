unit ncaPlusAPI;
{
    ResourceString: Dario 11/03/13
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, uMyBRowser, Automation, ncClassesBase,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, StdCtrls,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, LMDCustomParentPanel, LMDBackPanel, jpeg, ncafbPesqCli,
  cxPCdxBarPopupMenu, ncaBaseWebApi,
  ncaFrmSombra, ExtCtrls, dxBarBuiltInMenu, SHDocVw;

type
 
{$METHODINFO ON}
  TFrmPlus = class(TForm)
    Paginas: TcxPageControl;
    tsWB: TcxTabSheet;
    WB: TMyBrowser;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure WBCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure WBGetWebApi(Sender: TMyBrowser; var aWebApi: TMyWebApi);
    procedure WBNavigateError(ASender: TObject; const pDisp: IDispatch;
      const [Ref] URL, Frame, StatusCode: OleVariant; var Cancel: WordBool);
    procedure WBDocumentComplete(ASender: TObject; const pDisp: IDispatch;
      const [Ref] URL: OleVariant);
  protected
    FCodParceiro: String;
    FSessaoValidada: Boolean;
    FURL : String;
    FIDProdutoParceiro,
    FEmailCliente,
    FIDTranNex, 
    FIDSessao: String;
    FMaq,
    FSessao, 
    FIDProdutoNex: Integer;
    FFrmSombra : TFrmSombra2;
    
    FadesaoFechar: Boolean;
    FadesaoUrlSucesso: String;
    FadesaoUrlCancelar: String;
    
    function GetFullURL : String; virtual;
    function URLaddparams(aURL: String): string; virtual;

    procedure OnTimerErroNav(Sender: TObject);
  public
    FPodeFechar : Boolean;
    FNav: Boolean;

    property URL: String read FURL write FURL;

    function GetWBImg: TjpegImage;

    function GetCliCod: Integer; virtual;
    function GetCliNome: String; virtual;

    procedure NavegaURL; virtual;

    procedure MostraSombraMsg(aTipo: Byte);
    procedure FechaSombraMsg;

    procedure showCancelar(aCaption: String); virtual;
    procedure hideCancelar; virtual;
    procedure wmNavegaURL(var Msg: TMessage);
      message wm_user+1;
    

  published 
    procedure Center; virtual;
    procedure setSize(aWidth, aHeight: OleVariant); virtual;
    procedure setPosition(aX, aY: OleVariant); virtual;
    procedure Maximizar; virtual;
    procedure Fechar; virtual;
    { Public declarations }
      
  end;
{$METHODINFO OFF}

  TncPlusAPI = class(TncAdminBaseWebApi)
  private
    procedure ErroSessao;
    function _obtemIDLojaParceiro(aCodParceiro: String): String;
    
  published
    procedure MsgErro(aStr: String);
    procedure alteraBorderStyle(aBorderStyle: OleVariant);
    procedure alteraDimensoes(aLargura, aAltura: OleVariant);

    procedure validaSessaoNex(CodParceiro, ChaveSessao: OleVariant);
    function obtemChaveSessaoParceiro(IDSessaoParceiro: Olevariant): OleVariant;
    function obtemIDSessaoNex: OleVariant;
    
    procedure salvaIDLojaParceiro(IDLojaParceiro: OleVariant);
    procedure salvaToken(Token: OleVariant);
    procedure salvaCredenciais(aIDLojaParceiro, aToken: OleVariant);
    
    function obtemToken: OleVariant;
    function obtemIDLojaParceiro: OleVariant;
    function obtemCalcToken(IDSessaoParceiro: OleVariant): OleVariant;

    function obtemAppVer: OleVariant;
    function obtemFullAppVer: OleVariant;

    procedure linkAdesao(var aCodParceiro, aURLparceiro, aURLsucesso, aURLcancelar, aLabelCancelar: OleVariant);
    function hideCancelar: OleVariant;

    function obtemFuncIsAdmin: OleVariant;
    function obtemFuncNome: OleVariant;
    function obtemFuncLogin: OleVariant;

    function obtemEmailCliente: OleVariant;

    procedure formClose;
    procedure appClose;

    function caixaEstaAberto: OleVariant;

    procedure abreAba(aUrl, aTitulo: OleVariant);
    
    function obtemIDLojaNex: OleVariant;
    function Form: TFrmPlus;
  end;

  TVendaPlusInfo = class
     Browser    : TMyBrowser;
     CodParceiro: String;
     Refresh    : Boolean;
  end;

  TAbreAba = class
     URL: String;
     Titulo: String;
  end;

  procedure AddURLPar(var aURL: String; aParName, aParValue: String);
var
  FrmPlus: TFrmPlus;

  CacheCleared : Boolean = False;

implementation

uses ncVersoes, ncVersionInfo, ncaFrmPri, ncaPlusParceiro, ncaDMPlus, ncaDM, Clipbrd, Registry,
  ncDebug, ncMovEst, ncDMServ;

// START resource string wizard section
resourcestring
  SErroCriandoIDSessao = 'Erro criando IDSessao';
  SSCRIPTERROR = 'SCRIPT ERROR: ';
  SJáFoiCriadoUmaTransação = 'Já foi criado uma transação';
  SÉNecessárioAbrirOCaixaParaRealiz = 'É necessário abrir o caixa para realizar essa operação';
  SASessãoAindaNãoFoiValidada = 'A sessão ainda não foi validada';
  SCancelarAdesão = 'Cancelar Adesão';
  SExp = 'Exp: ';
  SValorInválido = 'Valor inválido ';
  SFalhaNaValidaçãoDeSessãoParceiro = 'Falha na validação de sessão parceiro ';
  SAChaveDeValidação = '. A chave de validação ';
  SNãoéVálidaParaASessao = ' não é válida para a sessao ';

// END resource string wizard section


{$R *.dfm}


procedure AddURLPar(var aURL: String; aParName, aParValue: String);
var 
  P : Integer;
  C : Char;
begin
  P := Pos('?'+aParName+'=', aURL);
  if P>0 then 
    C := '?'
  else begin
    P := Pos('&'+aParName+'=', aURL);
    if P>0 then
      C := '&';
  end;

  if P > 0 then begin
    Delete(aURL, P, Length(aParName)+1);
    while (aURL>'') and (P<=Length(aURL)) and (aURL[P]<>'&') do Delete(aURL, P, 1);
    if (aURL>'') and (P<=Length(aURL)) and (C='?') and (aURL[P]='&') then aURL[P] := '?';
  end;
  
  if pos('?', aURL)>0 then
    aURL := aURL + '&'+aParName+'='+aParValue else
    aURL := aURL + '?'+aParName+'='+aParValue;
end;

procedure TFrmPlus.Center;
begin
  Top := ((Screen.WorkAreaHeight - Height) div 2) + Screen.WorkAreaTop;
  Left := ((Screen.WorkAreaWidth - Width) div 2) + Screen.WorkAreaLeft;
end;

procedure TFrmPlus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPlus.Fechar;
begin
  FPodefechar := True;
  inherited Close;
end;

procedure TFrmPlus.FechaSombraMsg;
begin
  if Assigned(FFrmSombra) then  
    FFrmSombra.Fechar;
end;

procedure TFrmPlus.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := FPodeFechar;
end;

procedure TFrmPlus.FormCreate(Sender: TObject);
var 
  Erro: HResult;
  G : TGUID;
begin
  inherited;

  try 
    with TRegistry.Create do
      try
        RootKey := HKEY_CURRENT_USER;
        if OpenKey('Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION', true) then // do not localize
          WriteInteger(ExtractFileName(Application.ExeName), 8888);
      finally
        Free;
      end;
  except 
  end;

  FFrmSombra := nil;

  FadesaoFechar := False;
  FadesaoURLcancelar := '';
  FadesaoURLsucesso := '';
    
  FMaq := 0;
  FSessao := 0;
  FIDTranNex := '';
  FIDProdutoNex := 0;
  FIDProdutoParceiro := '';
  FEmailCliente := '';

{  Width := 1;
  Height := 1;}
  FPodeFechar := False;
  FNav := True;
  FSessaoValidada := False;
  Erro := CreateGUID(G);
  if Erro=0 then
    FIDSessao := GuidStringClean(GUIDToString(G)) else
    raise Exception.Create(SErroCriandoIDSessao);
end;

procedure TFrmPlus.FormShow(Sender: TObject);
begin
{  if Paginas.ActivePageIndex=0 then 
    WB.navigate(FUrl+'?idsessaonex='+FIDSessao);}
end;

function TFrmPlus.GetCliCod: Integer;
begin
  Result := 0;
end;

function TFrmPlus.GetCliNome: String;
begin
  Result := '';
end;

function TFrmPlus.GetFullURL: String;
begin
  Result := URLaddparams(FURL);
end;

function TFrmPlus.GetWBImg: TjpegImage;
var 
  Ofs : Integer;
  Bmp: TBitmap;
  DC : HDC;

procedure SaveBMP;  
begin 
  Bmp.PixelFormat := pf32bit;
  Bmp.Width := ClientWidth; 
  Bmp.Height := ClientHeight; 
  Bmp.Canvas.Brush := Brush; 
  Bmp.Canvas.FillRect(ClientRect); 
  Bmp.Canvas.Lock; 
  DC := GetDC (WB.HWND);
  try 
    Bmp.Width := WB.Width-16;
    Bmp.Height := WB.Height;
    BitBlt(Bmp.Canvas.Handle, 0, 0, Bmp.Width,
           Bmp.Height,DC, 0, 0, SRCCOPY);
  finally 
    ReleaseDC (WB.HWND, DC);
    Bmp.Canvas.Unlock; 
  end;
end;

begin
  Result := nil;
  try
    Bmp := TBitmap.Create;
    try
      SaveBMP;
      Result := TjpegImage.Create;
      Result.Assign(Bmp);
      Result.CompressionQuality := 60;
      Result.Compress;
    finally
      Bmp.Free;
    end;
  except
    if Assigned(Result) then Result.Free;
    Raise;
  end;
end;


procedure TFrmPlus.hideCancelar;
begin
  FadesaoFechar := False;
end;

procedure TFrmPlus.Maximizar;
begin
  PostMessage(Handle, WM_SYSCOMMAND, SC_MAXIMIZE, 0);
end;

procedure TFrmPlus.MostraSombraMsg(aTipo: Byte);
begin
  if Assigned(FFrmSombra) then 
    Exit;
  FFrmSombra := TFrmSombra2.Create(Self);
  with FFrmSombra do begin
    Width := Self.Width - 9;
    Height := Self.Height - 27;
    Top := Self.Top + 23;
    Left := Self.Left + 4;
    Mostrar(aTipo);
    if FFrmSombra.ModalResult=mrCancel then 
      Self.Fechar
    else 
      if FFrmSombra.Tag>0 then
      with TTimer.Create(Self) do begin
        Tag := FFrmSombra.Tag;
        Interval := 100;
        OnTimer := OnTimerErroNav;
        Enabled := True;
      end;
    Free;  
    FFrmSombra := nil;
  end;
end;

procedure TFrmPlus.NavegaURL;
var S: String;
begin
  S := getfullurl;

  WB.navigate(S);
end;

procedure TFrmPlus.OnTimerErroNav(Sender: TObject);
begin
  Sender.Free;
  Self.MostraSombraMsg(2);
end;

procedure TFrmPlus.setPosition(aX, aY: OleVariant);
begin
  if aX<>null then Left := aX;
  if aY<>null then Top := aY;
end;

procedure TFrmPlus.setSize(aWidth, aHeight: OleVariant);
begin
  if (aHeight<>null) and (aHeight > Screen.WorkAreaHeight) then 
    aHeight := Screen.WorkAreaHeight;

  if (aWidth<>null) and (aWidth > Screen.WorkAreaWidth) then
    aWidth := Screen.WorkAreaWidth;
      
  if aHeight<>null then
    Height := aHeight;

  if aWidth<>null then 
    Width := aWidth;

  Center;    
end;

procedure TFrmPlus.showCancelar(aCaption: String);
begin

end;

function TFrmPlus.URLaddparams(aURL: String): string;
begin
  Result := aURL;
  addurlpar(Result, 'idsessaonex', FIDSessao); // do not localize
end;

procedure TFrmPlus.WBCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  FPodeFechar := True;
  CanClose := True;
  Close;
end;

procedure TFrmPlus.WBDocumentComplete(ASender: TObject; const pDisp: IDispatch;
  const [Ref] URL: OleVariant);
var 
  S: String; 
  I, P: Integer;
  SL : TStrings;
begin
  if not WB.MasterDoc(pDisp) then Exit;
  
  S := WB.BodyHtml(pDisp);

  Clipboard.AsText := S;

  FechaSombraMsg;

  P := Pos('!nexinfo!="', S); // do not localize
  if P=0 then Exit;
  Delete(S, 1, P+10);
  S := Copy(S, 1, Pos('"', S)-1);
  if S='' then Exit;
  
  SL := TStringList.Create;
  try
    P := Pos(';', S);
    while P > 0 do begin
      SL.Add(Copy(S, 1, P-1));
      Delete(S, 1, P);
      P := Pos(';', S);
    end;
    if Trim(S)>'' then SL.Add(Trim(S));
    
    P := StrToIntDef(sl.Values['W'], 0);
    if P>0 then
      Width := P;
      
    P := StrToIntDef(Sl.Values['H'], 0);
    if P>0 then
      Height := P;
    
    case StrToIntDef(SL.Values['BS'], 2) of // do not localize
      0 : BorderStyle := bsNone;
      1 : BorderStyle := bsSingle;
      2 : BorderStyle := bsSizeable;
      3 : BorderStyle := bsDialog;
      4 : BorderStyle := bsToolWindow;
      5 : BorderStyle := bsSizeToolWin;
    end;
      
    Caption := WB.Doc2.Title;

{      if not SameText(SL.Values['SC'], 'S') then
        WB.UserInterfaceOptions := WB.UserInterfaceOptions + [DontUseScrollbars];}
    WB.Refresh;
    WB.Repaint;  

    if Trim(SL.Values['CC'])>'' then  // do not localize
      FPodeFechar := SameText(SL.Values['CC'], 'S');  // do not localize

    Center; 

    Self.Refresh;
    Self.Repaint;
    WB.Repaint;
    WB.SendToBack;
    WB.BringToFront;
      
  finally
    SL.Free;
  end;
end;

procedure TFrmPlus.WBGetWebApi(Sender: TMyBrowser; var aWebApi: TMyWebApi);
begin
  aWebApi := TncPlusApi.Create(Self, WB);
end;

procedure TFrmPlus.WBNavigateError(ASender: TObject; const pDisp: IDispatch;
  const [Ref] URL, Frame, StatusCode: OleVariant; var Cancel: WordBool);
begin
  Cancel := True;
end;

procedure TFrmPlus.wmNavegaURL(var Msg: TMessage);
begin
  NavegaURL;
end;

{ TFrmBaseGMWrapper }

procedure TncPlusAPI.alteraBorderStyle(aBorderStyle: OleVariant);
var I: Integer;
begin
  I := aBorderStyle;
  with Form do 
  case I of
    0 : BorderStyle := bsNone;
    1 : BorderStyle := bsSingle;
    2 : BorderStyle := bsSizeable;
    3 : BorderStyle := bsDialog;
    4 : BorderStyle := bsToolWindow;
    5 : BorderStyle := bsSizeToolWin;
  end;
end;

procedure TncPlusAPI.alteraDimensoes(aLargura, aAltura: OleVariant);
begin
  if (aAltura<>null) and (aAltura > Screen.WorkAreaHeight) then 
    aAltura := Screen.WorkAreaHeight - 60;

  if (aLargura<>null) and (aLargura > Screen.WorkAreaWidth) then
    alargura := Screen.WorkAreaWidth;
  Form.Width := aLargura;
  Form.Height := aAltura;
  Form.Center;
end;

procedure TncPlusAPI.appClose;
begin
  Form.FPodeFechar := True;
  Form.Close;
  FrmPri.Close;
end;

function TncPlusAPI.obtemAppVer: OleVariant;
begin
  Result := Trim(Copy(SelfVersion, 7, 20));
end;

function TncPlusAPI.obtemCalcToken(IDSessaoParceiro: OleVariant): OleVariant;
var dm : TdmPlus;
begin
  if Form.FSessaoValidada then begin
    dm := dmPlusPool.Get;
    try
      Result := gpParceiros.obtemCalcToken(Form.FCodParceiro, 
                                          IDSessaoParceiro, 
                                          dm.obtemIDLojaParceiro(Form.FCodParceiro), 
                                          dm.obtemToken(Form.FCodParceiro));
    finally
      dmPlusPool.ReleaseObj(dm);
    end;
  end else
    ErroSessao;
end;

function TncPlusAPI.obtemChaveSessaoParceiro(
  IDSessaoParceiro: Olevariant): OleVariant;
begin
  if Form.FSessaoValidada then
    Result := gpParceiros.obtemChaveSessaoParceiro(Form.FCodParceiro, IDSessaoParceiro) else
    ErroSessao;
end;

function TncPlusAPI.obtemEmailCliente: OleVariant;
begin
  Result := Form.FEmailCliente;
end;

function TncPlusAPI.caixaEstaAberto: OleVariant;
begin
  Result := (ncaDM.NumAberto>0);
end;

procedure TncPlusAPI.ErroSessao;
begin
  MsgErro(SASessãoAindaNãoFoiValidada);
end;

function TncPlusAPI.Form: TFrmPlus;
begin
  Result := TFrmPlus(FObject);
end;

procedure TncPlusAPI.formClose;
begin
  Form.FPodeFechar := True;
  Form.Close;
end;

function TncPlusAPI.hideCancelar: OleVariant;
begin
  Form.hideCancelar;
end;

procedure TncPlusAPI.linkAdesao(var aCodParceiro, aURLparceiro, aURLsucesso, aURLcancelar, aLabelCancelar: OleVariant);
begin
  if _obtemIDLojaParceiro(aCodParceiro)>'' then begin
    Form.URL := aURLSucesso;
    PostMessage(Form.Handle, wm_user+1, 0, 0);
    Exit;
  end;

  if (aLabelCancelar=null) or (aLabelCancelar='') then
    aLabelCancelar := SCancelarAdesão;

  Form.showCancelar(aLabelCancelar);
  Form.FadesaoFechar := True;
  Form.FadesaoUrlSucesso := aURlSucesso;
  Form.FadesaoUrlCancelar := aURLcancelar;
  Form.FURL := aURLParceiro;
  PostMessage(Form.Handle, wm_user+1, 0, 0);
end;

procedure TncPlusAPI.MsgErro(aStr: String);
begin
  Beep;
  ShowMessage(aStr);
  formClose;
end;

function TncPlusAPI.obtemFullAppVer: OleVariant;
var S: String;
begin
  S := IntToStr(Versoes.Versao);
  S := S[1] + '.' + S[2] + '.' + S[3] + Copy(SelfVersion, 6, 20);
  Result := S;
end;

function TncPlusAPI.obtemFuncIsAdmin: OleVariant;
begin
  Result := Dados.CM.UA.Admin;
end;

function TncPlusAPI.obtemFuncLogin: OleVariant;
begin
  Result := Dados.CM.UA.Username;
end;

function TncPlusAPI.obtemFuncNome: OleVariant;
begin
  Result := Dados.CM.UA.Nome;
end;

function TncPlusAPI.obtemIDLojaNex: OleVariant;
begin
  if Form.FSessaoValidada then 
    Result := gConfig.Conta else
    ErroSessao;
end;

function TncPlusAPI.obtemIDLojaParceiro: OleVariant;
begin
  if Form.FSessaoValidada then 
    Result := _obtemIDLojaParceiro(Form.FCodParceiro) else
    ErroSessao;
end;

function TncPlusAPI.obtemIDSessaoNex: OleVariant;
begin
  Result := Form.FIDSessao;
end;

function TncPlusAPI.obtemToken: OleVariant;
var dm : TdmPlus;
begin
  if Form.FSessaoValidada then begin
    dm := dmPlusPool.Get;
    try
      Result := dm.obtemToken(Form.FCodParceiro);
    finally
      dmPlusPool.ReleaseObj(dm);
    end;
  end else
    ErroSessao;
end;

procedure TncPlusAPI.salvaCredenciais(aIDLojaParceiro, aToken: OleVariant);
var dm : TdmPlus;
begin
  if Form.FSessaoValidada then begin
    dm := dmPlusPool.Get;
    try
      dm.SalvaCredenciais(Form.FCodParceiro, aIDLojaParceiro, aToken);
      if Form.FadesaoFechar then begin
        Form.hideCancelar;
        Form.URL := Form.FadesaoURLSucesso;
        PostMessage(Form.Handle, wm_user+1, 0, 0);
      end;
    finally
      dmPlusPool.ReleaseObj(dm);
    end;
  end else
    ErroSessao;
end;

procedure TncPlusAPI.salvaIDLojaParceiro(IDLojaParceiro: OleVariant);
var dm : TdmPlus;
begin
  if Form.FSessaoValidada then begin
    dm := dmPlusPool.Get;
    try
      dm.SalvaIDLojaParceiro(Form.FCodParceiro, IDLojaParceiro);
    finally
      dmPlusPool.ReleaseObj(dm);
    end;
  end else
    ErroSessao;
end;

procedure TncPlusAPI.salvaToken(Token: OleVariant);
var dm : TdmPlus;
begin
  if Form.FSessaoValidada then begin
    dm := dmPlusPool.Get;
    try
      dm.SalvaToken(Form.FCodParceiro, Token);
      if Form.FadesaoFechar then begin
        Form.hideCancelar;
        Form.URL := Form.FadesaoURLSucesso;
        PostMessage(Form.Handle, wm_user+1, 0, 0);
      end;
    finally
      dmPlusPool.ReleaseObj(dm);
    end;
  end else
    ErroSessao;
end;

function OleToStr(V: OleVariant): String;
begin
  if V = null then
    Result := 'null' // do not localize
  else
  try
    Result := V;
  except
    on E: Exception do 
      Result := SExp+E.Message;
  end;
end;


procedure TncPlusAPI.abreAba(aUrl, aTitulo: OleVariant); 
var I : TAbreAba;
begin
  I := TAbreAba.Create;
  I.URL := aURL;
  I.Titulo := aTitulo;
  PostMessage(FrmPri.Handle, wm_abreaba, wparam(I), 0);
end;

procedure TncPlusAPI.validaSessaoNex(CodParceiro, ChaveSessao: OleVariant);
begin
  Form.FSessaoValidada := False;
  if not gpParceiros.validaChaveSessaoNex(CodParceiro, obtemIDSessaoNex, ChaveSessao) then
    MsgErro(SFalhaNaValidaçãoDeSessãoParceiro + CodParceiro +SAChaveDeValidação + ChaveSessao + SNãoéVálidaParaASessao+ObtemIDSessaoNex) 
  else begin
    Form.FSessaoValidada := True;
    Form.FCodParceiro := CodParceiro;
    Form.FechaSombraMsg;
  end;
end;

function TncPlusAPI._obtemIDLojaParceiro(aCodParceiro: String): String;
var dm : TdmPlus;
begin
  dm := dmPlusPool.Get;
  try
    Result := dm.obtemIDLojaParceiro(aCodParceiro);
  finally
    dmPlusPool.ReleaseObj(dm);
  end;
end;

end.

NexCafé - Plus API
  Autenticação
  - getSvcTokenInfo(aInfoName)
  - setSvcTokenInfo(aInfoName, aInfoValue);
  
  - getContaLoja
  
  - getFuncIsAdmin
  - getFuncNome
  - getfuncLogin
  
  Transacao
  - saveTran
                                                                                                          
  Produtos
  - addProd
  - getProdAtivo
  - setProdAtivo

  getEmailCli
  getNomeCli
  sendMsgCli
  
  

  
  
 

  
  
  
