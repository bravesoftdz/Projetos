unit ncFrmWebPopup;
{
    ResourceString: Dario 12/03/13
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, Automation, ncClassesBase, mshtml,
  ExtCtrls, ncBaseWebApi, SHDocVw, uMyBrowser;

type
  TFrmWebPopup = class(TForm)
    TimerErro: TTimer;
    WB: TMyBrowser;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure WBCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TimerErroTimer(Sender: TObject);
    procedure WBGetWebApi(Sender: TMyBrowser; var aWebApi: TMyWebApi);
    procedure WBDocumentComplete(ASender: TObject; const pDisp: IDispatch;
      const [Ref] URL: OleVariant);
    procedure WBNavigateComplete2(ASender: TObject; const pDisp: IDispatch;
      const [Ref] URL: OleVariant);
    procedure WBNavigateError(ASender: TObject; const pDisp: IDispatch;
      const [Ref] URL, Frame, StatusCode: OleVariant; var Cancel: WordBool);
  private
    FNavOk : Boolean;
    { Private declarations }
    function NavURL: String;
  protected  
    function CreateApi: TncBaseWebApi; virtual; abstract;

    procedure wmNavigate(var Msg: TMessage);
      message wm_user;

    procedure wmFechar(var Msg: TMessage);
      message wm_user+1;  
  public
    Fechar : Boolean;
    URL   : String;

    function AddParams(S: String): String;
    { Public declarations }
  end;

  TFrmWebPopupClass = class of TFrmWebPopup;

var
  FrmWebPopup: TFrmWebPopup;
  FrmWebPopupClass: TFrmWebPopupClass = nil;
  
implementation

uses ncVersionInfo, ncDebug, ncGuidUtils, nexUrls;

{$R *.dfm}

function TFrmWebPopup.AddParams(S: String): String;
begin
  Result := AddParamUrl(S, 'conta='+ // do not localize
            gConfig.Conta+'&cok='+BoolStr[gConfig.FreePremium or (gConfig.QtdLic>0)]+ // do not localize
            '&ver='+SelfShortVer+ // do not localize
            '&sw='+prefixo_versao+
            '&random='+TGuidEx.ToString(TGuidEx.NewGuid));
  DebugMsg('TFrmWebPopup.AddParams - Result: '+Result);            
end;

procedure TFrmWebPopup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmWebPopup.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Fechar;
end;

procedure TFrmWebPopup.FormCreate(Sender: TObject);
begin
  Width := 1;
  Height := 1;
  Fechar := False;
  URL := '';
end;

procedure TFrmWebPopup.FormShow(Sender: TObject);
begin
  PostMessage(Handle, wm_user, 0, 0);

//  WB.navigate('file:///C:/Users/Joao/Desktop/premium_popup.html');
end;

procedure TFrmWebPopup.TimerErroTimer(Sender: TObject);
begin
  TimerErro.Enabled := False;
  WB.navigate(navURL);
end;

function TFrmWebPopup.navURL: String;
begin
  if Trim(URL) = '' then
    Result := AddParams(gUrls.Url('nexmsg')) else
    Result := URL;

  DebugMsg('TFrmWebPopup.navURL: '+Result);  
end;

procedure TFrmWebPopup.WBCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Fechar := True;
  CanClose := True;
  Close;
end;

procedure TFrmWebPopup.WBDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const [Ref] URL: OleVariant);
var 
  S: String; 
  I, P: Integer;
  SL : TStrings;
  Sair : Boolean;
begin
  if not WB.MasterDoc(pDisp) then Exit;
  
  Sair := True;
  try
    S := WB.BodyHtml(pDisp);
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
      if not SameText(SL.Values['Ok'], 'Ok') then Exit; // do not localize
      
      Width := StrToIntDef(Sl.Values['W'], 0);
      Height := StrToIntDef(Sl.Values['H'], 0);
      if (Width=0) or (Height=0) then Exit;

      case StrToIntDef(SL.Values['BS'], 2) of // do not localize
        0 : BorderStyle := bsNone;
        1 : BorderStyle := bsSingle;
        2 : BorderStyle := bsDialog;
        3 : BorderStyle := bsToolWindow;
        4 : BorderStyle := bsSizeToolWin;
      else
        BorderStyle := bsDialog;
      end;
      
      Caption := (WB.Document as IHTMLDocument2).title;

{      if not SameText(SL.Values['SC'], 'S') then
        WB.UserInterfaceOptions := WB.UserInterfaceOptions + [DontUseScrollbars];}
      WB.Repaint;  

      Fechar := SameText(SL.Values['CC'], 'S');   // do not localize

      Top := (Screen.Height - Height) div 2;
      Left := (Screen.Width - Width) div 2;
      Sair := False;
    finally
      SL.Free;
    end;
  finally
    if Sair then 
      PostMessage(Self.Handle, wm_user+1, 0, 0);
  end;
end;

procedure TFrmWebPopup.WBGetWebApi(Sender: TMyBrowser; var aWebApi: TMyWebApi);
begin
  aWebApi := CreateApi;
end;

procedure TFrmWebPopup.WBNavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const [Ref] URL: OleVariant);
begin
  FNavOk := True;
end;

procedure TFrmWebPopup.WBNavigateError(ASender: TObject; const pDisp: IDispatch;
  const [Ref] URL, Frame, StatusCode: OleVariant; var Cancel: WordBool);
begin
  Cancel := True;
  TimerErro.Enabled := True;
end;

procedure TFrmWebPopup.wmFechar(var Msg: TMessage);
begin
  Fechar := True;
  Close;
end;

procedure TFrmWebPopup.wmNavigate(var Msg: TMessage);
begin
  DebugMsg('TFrmWebPopup.wmNavigate 1');
  try
    FNavOk := False;
    WB.Navigate(navUrl);
    DebugMsg('TFrmWebPopup.wmNavigate 2');
  except
    on E: Exception do 
      DebugMsg('TFrmWebPopup.wmNAvigate - Exception: ' + E.Message);
  end;
end;

end.

