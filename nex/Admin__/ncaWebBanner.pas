unit ncaWebBanner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, ActiveX, Automation, ncBaseWebApi, ExtCtrls,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, StdCtrls, idHttp, HTMLUn2, HtmlView, HtmlGlobals, SHDocVw,
  uMyBrowser;
  

const
  modobanner_IE         = 0;
  modobanner_HtmlViewer = 1;
  modobanner_Auto       = 2;

  modobanner_nenhum     = 99;
  
type
  TncBannerWebApi = class;

  TncBannerData = record
    bdPosicao : Byte;
    bdVisible : Boolean;
    bdTamanho : Integer;
    bdUrl     : String;
    bdModo    : Byte; 
    bdHtml    : String;
    bdBannerString : String;
  end;
  
  TFrmWebBanner = class(TForm)
    TimerErro: TTimer;
    panBanner: TLMDSimplePanel;
    WB: TMyBrowser;
    procedure TimerErroTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure HVHotSpotClick(Sender: TObject; const SRC: ThtString;
      var Handled: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure WBGetWebApi(Sender: TMyBrowser; var aWebApi: TMyWebApi);
    procedure WBNavigateError(ASender: TObject; const pDisp: IDispatch;
      const [Ref] URL, Frame, StatusCode: OleVariant; var Cancel: WordBool);
    procedure WBDocumentComplete(ASender: TObject; const pDisp: IDispatch;
      const [Ref] URL: OleVariant);
  private
    function GetPosicao: Byte;
    procedure SetPosicao(const Value: Byte);
    procedure SetPanelVisible(const Value: Boolean);
    procedure SetPanelSize(const Value: Integer);
    procedure SetModo(const Value: Byte);
    { Private declarations }
  protected  
    FModo : Byte;
    FErrCount : Byte;
    function CreateApi: TncBannerWebApi; virtual; 

    procedure OnTimerPanelClose(Sender: TObject);
    procedure OnTimerNavigate(Sender: TObject);

    procedure _Navigate;

    procedure CreateWB;
    procedure CreateHV;

    procedure OpenLink(S: String);

    procedure _PanelClose(aKeepClosed: Boolean);
  public
//    WB : TEmbeddedWB;
    HV : THtmlViewer;
    URL : String;
    HTML : String;
    BannerString : String;

    FPanelSize: Integer;
    FPanelVisible: Boolean;

    procedure Init(BD: TncBannerData; aParent: TWinControl);

    procedure Navigate;

    procedure ResizeBanner;

    procedure panelClose;

    procedure panelKeepClosed;

    procedure wbfalhou(aNavegar: Boolean);

    property Modo: Byte
      read FModo write SetModo;

    property Posicao: Byte
      read GetPosicao write SetPosicao;

    property PanelSize: Integer
      read FPanelSize write SetPanelSize;  

    property PanelVisible: Boolean
      read FPanelVisible write SetPanelVisible;  
    { Public declarations }
  end;

  TncBannerWebApi = class ( TncBaseWebApi )
  published
    function panelSize(const aPixels: OleVariant): OleVariant; virtual;
    function panelVisible(const aVisible: OleVariant): OleVariant; virtual;
    function panelClose: OleVariant; virtual;
    function panelKeepClosed: OleVariant; virtual;
  end;

  TncWebBanners = class
  private
    FForm    : TForm;
    FBanners : Array[0..3] of TFrmWebBanner;
    FKeepClosed : TStrings;

    FLastLoad: String;

    function GetBannerByPosicao(aPosicao: Byte): TFrmWebBanner;
  public
    constructor Create(aForm: TForm);

    destructor Destroy; override;

    procedure LoadBanners(aBannersStr: String);

    procedure BannerDestroyed(B: TFrmWebBanner);

    procedure Resize;

    procedure InitBanner(BD: TncBannerData);
    procedure DeleteBanner(aPos: Byte);
  end;

var
  FrmWebBanner: TFrmWebBanner;
  gWebBanners : TncWebBanners = nil;

implementation

uses ncClassesBase, ncShellStart, ncDebug;

{$R *.dfm}

function SplitBannerParams(S: String): TStrings;
var 
  P: Integer;
  s2: String;

procedure GetParamEnd;
var Aspas: Boolean;
begin
  Aspas := False;
  P := 0;
  if S='' then Exit;
  while P<Length(S) do begin
    Inc(P);
    if S[P]='"' then
      Aspas := not Aspas;
    if (not Aspas) and (S[P]=',') then Exit;
  end;
  if S[P]<>',' then Inc(P);
end;
  
begin
  Result := TStringList.Create;
  repeat
    GetParamEnd;
    if P>0 then begin
      s2 := Trim(Copy(S, 1, P-1));
      Delete(S, 1, P);
    end else begin
      s2 := Trim(S);
      S := '';
    end;
    if s2>'' then 
      Result.Add(s2);
  until S='';
end;

function LoadBannerData(S: String; var BD: TncBannerData): Boolean;
var 
  sl : TStrings;
begin
  Result := False;
  sl := SplitBannerParams(S);
  try
    BD.bdBannerString := S;
    BD.bdPosicao := StrToIntDef(sl.Values['pos'], 99);
    BD.bdVisible := (sl.Values['vis']='1');
    BD.bdTamanho := StrToIntdef(sl.Values['tam'], 0);
    BD.bdUrl     := RemoveAspas(sl.Values['url']);
    BD.bdModo    := StrToIntDef(sl.Values['modo'], modobanner_IE);
    BD.bdHtml    := Trim(RemoveAspas(sl.Values['html']));

    if (BD.bdModo>modobanner_Auto) then Exit;
    if (BD.bdModo>modobanner_IE) and (BD.bdHtml='') then Exit;
    if (BD.bdModo<>modobanner_HtmlViewer) and (BD.bdUrl='') then Exit;

    Result := (BD.bdPosicao in [0..3]) and (BD.bdTamanho>0);
  finally
    sl.Free;
  end;
end;

function TFrmWebBanner.CreateApi: TncBannerWebApi;
begin
  Result := TncBannerWebApi.Create(Self, WB);
end;

procedure TFrmWebBanner.CreateHV;
begin
  if HV=nil then begin
    HV := THtmlViewer.Create(Self);
    HV.ScrollBars := ssNone;
    HV.OnHotSpotClick := HVHotSpotClick;
    HV.Parent := panBanner;
    HV.Left := 0;
    HV.Top := 0;
  end;
  try
    if WB<>nil then FreeAndNil(WB);
  except
  end;
end;

procedure TFrmWebBanner.CreateWB;
begin
  try
    if HV<>nil then FreeAndNil(HV);
  except
  end;
  
  if WB=nil then begin
    try
      WB := TMyBrowser.Create(Self);
    except
      on E: Exception do begin
        DebugMsg('TMyBrowser.CreateWB - Exception: '+E.Message);
        wbFalhou(False);
      end;
    end;
  end;
  WB.OnDocumentComplete := WBDocumentComplete;
  WB.OnNavigateError := WBNavigateError;
  WB.OnGetWebApi := WBGetWebApi;
  WB.Left := 0;
  WB.Top := 0;
  WB.ParentWindow := panBanner.Handle;
//  WB.Parent := panBanner;    
end;

procedure TFrmWebBanner.FormCreate(Sender: TObject);
begin
  FModo := modobanner_nenhum;
  FErrCount := 0;
//  WB := nil;
  HV := nil;
  FPanelSize := 0;
  FPanelVisible := False;
end;

procedure TFrmWebBanner.FormDestroy(Sender: TObject);
begin
  if (gWebBanners<>nil) then
    gWebBanners.BannerDestroyed(Self);
end;

function TFrmWebBanner.GetPosicao: Byte;
begin
  case panBanner.Align of
    alRight : Result := 1;
    alBottom : Result := 2;
    alLeft : Result := 3;
  else
    Result := 0;
  end;
end;

function GetURL(aURL: String): String;
var h: TidHttp;
begin
  Result := '';
  try
    H := TidHttp.Create(nil);
    try
      H.HandleRedirects := True;
      Result := H.Get(aURL);
    finally
      H.Free;
    end;
  except
    on E: Exception do 
      DebugMsg('ncaWebBanner.GetUrl: ' + aURL + ' - Exception: '+Result); // do not localize
  end;
end;

procedure TFrmWebBanner.HVHotSpotClick(Sender: TObject; const SRC: ThtString;
  var Handled: Boolean);
var 
  S: String;
  sCmd: String;
  P : Integer;
begin
  S := Trim(Src);
  if Copy(S, 1, 8)='http://@' then begin
    Delete(S, 1, 8);
    P := Pos(',', S);
    if P=0 then begin
      sCmd := S;
      S := '';
    end else begin
      sCmd := Copy(S, 1, P-1);
      Delete(S, 1, P);
    end;

    S := Trim(S);
    
    if (SameText(sCmd, 'panelClose') or SameText(sCmd, 'panelKeepClosed')) then 
      _panelClose(SameText(sCmd, 'panelKeepClosed'));

    OpenLink(S);
  end else 
    OpenLink(S);
  
  Handled := True;
end;

procedure TFrmWebBanner.Init(BD: TncBannerData; aParent: TWinControl);
begin
  BannerString := BD.bdBannerString;
  Modo := BD.bdModo;
  Posicao := BD.bdPosicao;
  panelSize := BD.bdTamanho;
  panelVisible := BD.bdVisible;
  Html := BD.bdHtml;
  URL := BD.bdURL;
  panBanner.Parent := aParent;
  Navigate;
end;

procedure TFrmWebBanner.Navigate;
begin
  with TTimer.Create(Self) do begin
    Interval := 50;
    OnTimer := Self.OnTimerNavigate;
    Enabled := True;
  end;
end;

procedure TFrmWebBanner.ResizeBanner;
begin
  if Assigned(WB) then begin
    WB.Left := 0;
    WB.Top := 0;
    if FPanelVisible then begin
      panBanner.Height := panelSize;
      panBanner.Width  := panelSize;
      WB.Width := panBanner.Parent.Width;
      WB.Height := panBanner.Parent.Height;
    end else begin
      panBanner.Height := 1;
      panBanner.Width := 1;
      WB.Width := 1;
      WB.Height := 1;
    end;
  end else 
  if Assigned(HV) then begin
    HV.Left := 0;
    HV.Top := 0;
    if FPanelVisible then begin
      panBanner.Height := panelSize;
      panBanner.Width  := panelSize;
      HV.Width := panBanner.Width;
      HV.Height := panBanner.Height;
    end else begin
      panBanner.Height := 1;
      panBanner.Width := 1;
      HV.Width := 1;
      HV.Height := 1;
    end;
  end;
end;

procedure TFrmWebBanner.OnTimerNavigate(Sender: TObject);
begin
  try
    Sender.Free;
  finally
    _Navigate;
  end;
end;

procedure TFrmWebBanner.OnTimerPanelClose(Sender: TObject);
begin
  try
    if TTimer(Sender).Tag=1 then
      gWebBanners.FKeepClosed.Add(BannerString);
    Sender.Free;
  finally
    gWebBanners.DeleteBanner(Posicao);
  end;
end;

procedure TFrmWebBanner.OpenLink(S: String);
var Blank: Boolean;
begin
  Blank := (Copy(S, 1, 1)<>'#');
  if Blank then 
    ShellStart(S)
  else begin
    Delete(S, 1, 1);
    GetUrl(S);
  end;
end;

procedure TFrmWebBanner.panelClose;
begin
  _PanelClose(False);
end;

procedure TFrmWebBanner.panelKeepClosed;
begin
  _PanelClose(True);
end;

procedure TFrmWebBanner.SetModo(const Value: Byte);
begin
  if FModo<>Value then begin
    FModo := Value;
    if FModo in [modobanner_ie, modobanner_auto] then
      CreateWB else
      CreateHV;
    ResizeBanner;  
  end;
end;

procedure TFrmWebBanner.SetPanelSize(const Value: Integer);
begin
  if FPanelSize<>Value then begin
    FPanelSize := Value;
    ResizeBanner;
  end;
end;

procedure TFrmWebBanner.SetPanelVisible(const Value: Boolean);
begin
  FPanelVisible := Value;
  ResizeBanner;
end;

procedure TFrmWebBanner.SetPosicao(const Value: Byte);
begin
  case Value of
    1 : panBanner.Align := alRight;
    2 : panBanner.Align := alBottom;
    3 : panBanner.Align := alLeft;
  else
    panBanner.Align := alTop; 
  end;
end;

procedure TFrmWebBanner.TimerErroTimer(Sender: TObject);
begin
  Inc(FErrCount);
  TimerErro.Enabled := False;
  if (FErrCount>0) and (Modo=modobanner_Auto) then
    wbFalhou(True) else
    Navigate;
end;

function ColorToHTML(const Color: TColor): string;
var
  ColorRGB: LongWord;
begin
  ColorRGB := ColorToRGB(Color);
  FmtStr(Result, '#%0.2X%0.2X%0.2X',
    [Byte(ColorRGB), Byte(ColorRGB shr 8), Byte(ColorRGB shr 16)]);
end;

procedure TFrmWebBanner.WBDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const [Ref] URL: OleVariant);
begin
    try
//      wbBottom.OleObject.Document.Body.Style.Margin := '0';
      if Assigned(pDisp) and WB.MasterDoc(pDisp) then
        WB.OleObject.Document.Body.BgColor := ColorToHtml(clBtnFace);
    except
    end;
end;

procedure TFrmWebBanner.wbfalhou(aNavegar: Boolean);
begin
  if Modo=modobanner_auto then begin
    CreateHV;
    ResizeBanner;
    if aNavegar then
      _Navigate;
  end;
end;

procedure TFrmWebBanner.WBGetWebApi(Sender: TMyBrowser; var aWebApi: TMyWebApi);
begin
  aWebApi := CreateApi;
end;

procedure TFrmWebBanner.WBNavigateError(ASender: TObject;
  const pDisp: IDispatch; const [Ref] URL, Frame, StatusCode: OleVariant;
  var Cancel: WordBool);
begin
  Cancel := True;
  TimerErro.Enabled := True;
end;

procedure TFrmWebBanner._Navigate;
begin
  if Assigned(WB) then begin
    try
      WB.Navigate(URL)
    except
      wbFalhou(True);
    end;
  end else
  if Assigned(HV) then
    HV.LoadFromString(self.HTML);
end;

procedure TFrmWebBanner._PanelClose(aKeepClosed: Boolean);
begin
  with TTimer.Create(Self) do begin
    OnTimer := OnTimerPanelClose;
    if aKeepClosed then Tag := 1;
    Interval := 100;
    Enabled := True;
  end;
end;

{ TncBannerWebApi }

function TncBannerWebApi.panelClose: OleVariant;
begin
  TFrmWebBanner(Form).panelClose;
end;

function TncBannerWebApi.panelKeepClosed: OleVariant;
begin
  TFrmWebBanner(Form).panelKeepClosed;
end;

function TncBannerWebApi.panelSize(const aPixels: OleVariant): OleVariant;
begin
  TFrmWebBanner(Form).panelSize := aPixels;
end;

function TncBannerWebApi.panelVisible(const aVisible: OleVariant): OleVariant;
begin
  TFrmWebBanner(Form).panelVisible := aVisible;
end;

{ TncWebBanners }

procedure TncWebBanners.BannerDestroyed(B: TFrmWebBanner);
var I: byte;
begin
  for I := 0 to 3 do 
    if FBanners[I]=B then
      FBanners[I] := nil;
end;

constructor TncWebBanners.Create(aForm: TForm);
begin 
  FKeepClosed := TStringList.Create;
  FForm := aForm;
  FLastLoad := '';
  FBanners[0] := nil;
  FBanners[1] := nil;
  FBanners[2] := nil;
  FBanners[3] := nil;
end;

procedure TncWebBanners.DeleteBanner(aPos: Byte);
var B : TFrmWebBanner;
begin
  B := GetBannerByPosicao(aPos);
  if B<>nil then begin
    FBanners[B.Posicao] := nil;
    B.Free;
  end;
end;

destructor TncWebBanners.Destroy;
begin
  FKeepClosed.Free;
  
  if Assigned(FBanners[0]) then FreeAndNil(FBanners[0]);
  if Assigned(FBanners[1]) then FreeAndNil(FBanners[1]);
  if Assigned(FBanners[2]) then FreeAndNil(FBanners[2]);
  if Assigned(FBanners[3]) then FreeAndNil(FBanners[3]);
  
  inherited;
end;

function TncWebBanners.GetBannerByPosicao(aPosicao: Byte): TFrmWebBanner;
begin
  Result := FBanners[aPosicao];
end;

procedure TncWebBanners.InitBanner(BD: TncBannerData);
var B : TFrmWebBanner;
begin
  if FKeepClosed.IndexOf(BD.bdBannerString)>=0 then Exit;

  B := FBanners[BD.bdPosicao];
  if Assigned(B) then begin
    if BD.bdVisible and (not B.panelVisible) then B.PanelVisible := True;
    B.PanelSize := BD.bdTamanho;
    if B.URL<>BD.bdURL then begin
      B.URL := BD.bdUrl;
      B.PanelVisible := BD.bdVisible;
      B.Navigate;
    end;
  end else begin
    B := TFrmWebBanner.Create(FForm);
    FBanners[BD.bdPosicao] := B;
    B.Init(BD, FForm);
  end;
end;

{function SplitBanners(S: String) : TStrings;
var P : Integer;

function GetPos: Boolean;
begin
  P := Pos('[', S);
  Result := (P>0);
end;

begin
  Result := TStringList.Create;
  while GetPos do begin
    Delete(S, 1, P);
    P := Pos(']', S);
    if P>0 then begin
      Result.Add(Copy(S, 1, P-1));
      Delete(S, 1, P);
    end else 
      S := '';
  end;
end; }

function SplitBanners(S: String) : TStrings;
var P : Integer;

function GetBannerStart: Boolean;
begin
  P := Pos('[', S);
  Result := (P>0);
end;

procedure GetBannerEnd;
var Aspas: Boolean;
begin
  P := 0;
  if S='' then Exit;
  Aspas := False;
  while P < Length(S) do begin
    Inc(P);
    if S[P]='"' then
      Aspas := not Aspas;
    if (not Aspas) and (S[P]=']') then Exit;
  end;
  if S[P]<>']' then Inc(P);
end;

begin
  Result := TStringList.Create;
  while GetBannerStart do begin
    Delete(S, 1, P);
    if S>'' then begin
      GetBannerEnd;
      if P>0 then begin
        Result.Add(Copy(S, 1, P-1));
        Delete(S, 1, P);
      end else 
        S := '';
    end;
  end;
end;

procedure TncWebBanners.LoadBanners(aBannersStr: String);
var 
  sl : TStrings;
  A  : Array of TncBannerData;
  BD : TncBannerData;
  i, T  : Integer;

function FindBannerData(aPos: Byte): Boolean;
var k: integer;
begin
  for k := 0 to Length(A) - 1 do
    if A[k].bdPosicao=aPos then begin
      Result := True;
      Exit;
    end;
  Result := False;
end;  

begin
  SetLength(A, 0);
  T := 0;
  sl := SplitBanners(aBannersStr);
  try
    for I := 0 to sl.Count - 1 do
      if LoadBannerData(sl[i], BD) then begin
        Inc(T);
        SetLength(A, T);
        A[T-1].bdPosicao := BD.bdPosicao;
        A[T-1].bdVisible := BD.bdVisible;
        A[T-1].bdTamanho := BD.bdTamanho;
        A[T-1].bdUrl     := BD.bdUrl;
        A[T-1].bdModo    := BD.bdModo;
        A[T-1].bdHtml    := BD.bdHtml;
      end;

    for I := 0 to T-1 do InitBanner(A[I]);

    for I := 0 to 3 do if not FindBannerData(I) then DeleteBanner(I);
       
  finally
    sl.Free;
  end;
end;

procedure TncWebBanners.Resize;
var I: Integer;
begin
  for I := 0 to 3 do if FBanners[I]<>nil then
    FBanners[I].ResizeBanner;
end;

initialization
  gWebBanners := nil;

finalization
  if Assigned(gWebBanners) then gWebBanners.Free;  

end.
