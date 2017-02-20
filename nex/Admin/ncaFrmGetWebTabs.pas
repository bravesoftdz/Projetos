unit ncaFrmGetWebTabs;
{
    ResourceString: Dario 11/03/13
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, Automation, ExtCtrls, SHDocVw, uMyBrowser;

type
  TFrmGetWebTabs = class(TForm)
    TimerErro: TTimer;
    WB: TMyBrowser;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure TimerErroTimer(Sender: TObject);
    procedure WBDocumentComplete(ASender: TObject; const pDisp: IDispatch;
      const [Ref] URL: OleVariant);
    procedure WBNavigateError(ASender: TObject; const pDisp: IDispatch;
      const [Ref] URL, Frame, StatusCode: OleVariant; var Cancel: WordBool);
  private
    { Private declarations }

    function LoadFromIni: Boolean;
  protected
    procedure wmNavigate(var Msg: TMessage);
      message wm_user;
  public
    { Public declarations }
  end;


var
  FrmGetWebTabs: TFrmGetWebTabs;

implementation

uses ncClassesBase, ncaDM, ncaFrmPri, ncDebug, nexUrls;


{$R *.dfm}

procedure TFrmGetWebTabs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmGetWebTabs.FormCreate(Sender: TObject);
begin
  Width := 1;
  Height := 1;
  Left := 500;
  Top := 0;
end;

procedure TFrmGetWebTabs.FormShow(Sender: TObject);
begin
  PostMessage(Handle, wm_user, 0, 0);
end;

function TFrmGetWebTabs.LoadFromIni: Boolean;
var 
  S: String;
  sl: TStrings;
  I : Integer;
begin
  Result := False;
  S := ExtractFilePath(ParamStr(0))+'webtabs.ini'; // do not localize
  if not FileExists(S) then Exit;
  Result := True;
  sl := TStringList.Create;
  try
    sl.LoadFromFile(S);
    for I := 0 to sl.Count-1 do 
      FrmPri.AddWebTab(sl[i]);
  finally
    sl.Free;
  end;
end;

procedure TFrmGetWebTabs.TimerErroTimer(Sender: TObject);
begin
  TimerErro.Enabled := False;
  WB.navigate(gUrls.Url('nextabs', 'conta='+gConfig.Conta+'&adm='+BoolStr[Dados.CM.UA.Admin]+'&cok='+BoolStr[gConfig.FreePremium or (gConfig.QtdLic>0)])); // do not localize
end;

procedure TFrmGetWebTabs.WBDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const [Ref] URL: OleVariant);
var 
  S: String;
  I, P: Integer;
  SL : TStrings;
begin
  try
    if not wb.MasterDoc(pDisp) then Exit;
    
    S := wb.BodyHtml(pDisp);
    P := Pos('!webtabs!="', S); // do not localize
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
      for I := 0 to SL.Count-1 do 
        FrmPri.AddWebTab(SL[i]);
    finally
      SL.Free;
    end;
  finally
    Close;
  end;
end;

procedure TFrmGetWebTabs.WBNavigateError(ASender: TObject;
  const pDisp: IDispatch; const [Ref] URL, Frame, StatusCode: OleVariant;
  var Cancel: WordBool);
begin
  try DebugMsg('TFrmGetWebTabs.NavigateError: ' + StatusCode); except end;
  TimerErro.Enabled := True;
  Cancel := True;
  DebugMsg('TFrmGetWebTabs - NavigateError 2');
end;

procedure TFrmGetWebTabs.wmNavigate(var Msg: TMessage);
begin
  DebugMsg('TFrmGetWebTabs - 1');
  try
    if not LoadFromIni then begin
      WB.navigate(gUrls.Url('nextabs', 'conta='+ // do not localize
        gConfig.Conta+'&adm='+BoolStr[Dados.CM.UA.Admin]+ // do not localize
        '&cok='+BoolStr[gConfig.FreePremium or (gConfig.QtdLic>0)]+ // do not localize
        '&sw='+prefixo_versao+'&random='+IntToStr(Random(High(Integer))))); // do not localize
    end else
      Close;
    DebugMsg('TFrmGetWebTabs - 2');  
  except
    on E: Exception do 
      DebugMsg('TFrmGetWebTabs.wmNAvigate - Exception: ' + E.Message);
  end;
end;

end.

