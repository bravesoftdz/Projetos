unit ncaWebBotao;

interface

uses 
  classes, sysutils, dxBar, Windows, idHttp, cxStyles, dxGDIPlusClasses, Graphics, cxPC, ncaFrmWebTab;

type
  TncaWebBotoes = class;
  
  TncaDownloadBotaoThread = class ( TThread )
  private
     FDownOk : Boolean;
     FImg : String;
  protected
     procedure Execute; override;
  public
    constructor Create(aImg: String);
  end;

  TncaShowCaption = function : Boolean of object;

  TncaWebBotaoData = object
    Nome      : String;
    Url       : String;
    Blank     : Boolean;
    ShowUrl   : Boolean;
    Sel       : Boolean;
    Toolbar   : Boolean;
    Bold      : Boolean;
    paramSessao,
    paramAdmin,
    paramConta : Boolean;
    
    Posicao   : Byte;
    Gray      : Boolean;
    Width     : Integer;
    Color     : Integer;
    Img       : String;

    procedure Clear;

    function BotaoExiste: Boolean;

    function FromString(S: String): Boolean;
    procedure AssignFrom(B: TncaWebBotaoData);
    function Igual(B: TncaWebBotaoData): Boolean;

    function GetStyle(aStylePadrao: TcxStyle): TcxStyle;
  end;

  TncaWebBotao = class
  private
    FWebBotoes : TncaWebBotoes;
    FData      : TncaWebBotaoData;
    FDownBtn   : TncaDownloadBotaoThread;
    FBtn       : TdxBarLargeButton;
    FTab       : TcxTabSheet;
    FWebTab    : TFrmWebTab;

    procedure OnLoadBtn(Sender: TObject);
    procedure LoadImgBtn;
  public
    constructor Create(aWebBotoes: TncaWebBotoes; aData: TncaWebBotaoData); 

    destructor Destroy; override;

    function Visible: Boolean;

    property Data: TncaWebBotaoData read FData;
    property Tab: TcxTabSheet read FTab;
    property WebTab: TFrmWebTab read FWebTab;
    property Btn: TdxBarLargeButton read FBtn;
  end;

  TncaWebBotoes = class
  private
    FBotoes : TList;
    FBar : TdxBar;
    FOnClick : TNotifyEvent;
    FStyle : TcxStyle;
    FWidth : Integer;
    FPC   : TcxPageControl;
    FShowCaption : TncaShowCaption;

    function FindBotao(aNome: String): TncaWebBotao;
    procedure UpdateBotao(aData: TncaWebBotaoData);
    function GetBotao(I: Integer): TncaWebBotao;
  public
    constructor Create(aBar: TdxBar; aPC: TcxPageControl; aStyle: TcxStyle; aWidth: Integer);

    procedure FromString(S: String);

    function Count: Integer;

    procedure RefreshShowCaption;

    destructor Destroy; override;

    property Botao[I: Integer]: TncaWebBotao
      read GetBotao;

    property OnClick: TNotifyEvent
      read FOnClick write FOnClick;

    property ShowCaption: TncaShowCaption
      read FShowCaption write FShowCaption;
  end;

var
  gWebBotoes : TncaWebBotoes = nil;  

implementation

uses ncClassesBase, nexUrls, ncDebug, cxGraphics;

{ TncaWebBotoes }

function UrlBotao(aImg: String): String;
begin
  Result := gUrls.Url('img_botao', '', False);
  if Copy(Result, Length(Result))<>'/' then
    Result := Result + '/';
  Result := Result+aImg+'.png';
end;

function PathBotao: String;
begin
  Result := ExtractFilePath(ParamStr(0))+'imgs\';
end;

function ArqBotao(aImg: String): String;
begin
  DebugMsg('ArqBotao - aImg: '+aImg);
  Result := PathBotao+aImg+'.png';
  Debugmsg('ArqBotao - Res: '+Result);
end;

function TncaWebBotoes.Count: Integer;
begin
  Result := FBotoes.Count;
end;

constructor TncaWebBotoes.Create(aBar: TdxBar; aPC: TcxPageControl; aStyle: TcxStyle; aWidth: Integer);
begin
  FBar := aBar;
  FShowCaption := nil;
  FPC  := aPC;
  FStyle := aStyle;
  FWidth := aWidth;
  FOnClick := nil;
  FBotoes := TList.Create;
end;

destructor TncaWebBotoes.Destroy;
begin
  while FBotoes.Count>0 do begin
    TObject(FBotoes[0]).Free;
    FBotoes.Delete(0);
  end;
  FBotoes.Free;
end;

function SplitBotoes(S: String) : TStrings;
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
end;

function TncaWebBotoes.FindBotao(aNome: String): TncaWebBotao;
var i: integer;
begin
  for i := 0 to FBotoes.Count - 1 do
    if TncaWebBotao(FBotoes[i]).FData.Nome=aNome then begin
      Result := TncaWebBotao(FBotoes[i]);
      Exit;
    end;
  Result := nil;
end;

procedure TncaWebBotoes.FromString(S: String);
var 
  sl: TStrings;
  sl2: TStrings;
  B : TncaWebBotaoData;
  i : Integer;
begin
  Debugmsg(Self, 'FromString: '+S);
  sl2 := TStringList.Create;
  sl := SplitBotoes(S);
  try
    for i := 0 to sl.Count-1 do 
      if B.FromString(sl[i]) then begin
        sl2.Add(B.Nome);
        if B.Width<FWidth then B.Width := FWidth;
        UpdateBotao(B);
      end;

    for i := FBotoes.Count -1 downto 0 do 
      if sl2.IndexOf(TncaWebBotao(FBotoes[i]).FData.Nome)=-1 then begin
        TObject(FBotoes[i]).Free;
        FBotoes.Delete(i);
      end;
  finally
    sl2.Free;
    sl.Free;
  end;
end;

function TncaWebBotoes.GetBotao(I: Integer): TncaWebBotao;
begin
  REsult := TncaWebBotao(FBotoes[I]);
end;

procedure TncaWebBotoes.RefreshShowCaption;
var I: Integer;
begin
  for I := 0 to Count-1 do  begin
    Botao[I].Btn.ShowCaption := FShowCaption;
{    if FShowCaption then
      Botao[I].Btn.Width := Botao[I].FData.Width else
      Botao[I].Btn.Width := 0;}
  end;
end;

procedure TncaWebBotoes.UpdateBotao(aData: TncaWebBotaoData);
var B : TncaWebBotao;
begin
  DebugMsg(Self, 'UpdateBotao - aData.Nome: '+aData.Nome);
  B := FindBotao(aData.Nome);
  if (B<>nil) and (not B.FData.Igual(aData)) then begin
    DebugMsg(Self, 'UpdateBotao 2');
    FBotoes.Remove(B);
    B.Free;
    B := nil;
  end;
  
  if aData.Width<FWidth then aData.Width := FWidth;

  if B=nil then begin
    DebugMsg(Self, 'UpdateBotao 3');
    B := TncaWebBotao.Create(Self, aData);
    FBotoes.Add(B);
  end;

  if Assigned(B) then begin
    DebugMsg(Self, 'UpdateBotao 4');
    B.Btn.ShowCaption := FShowCaption;
    if FShowCaption then
      B.Btn.Width := B.FData.Width else
      B.Btn.Width := 0;
  end;
  DebugMsg(Self, 'UpdateBotao 5');
end;

{ TncaWebBotaoData }

procedure TncaWebBotaoData.AssignFrom(B: TncaWebBotaoData);
begin
  Nome      := B.Nome;
  Url       := B.Url;
  Blank     := B.Blank;
  ShowUrl   := B.ShowUrl;
  Sel       := B.Sel;
  Toolbar   := B.Toolbar;
  Posicao   := B.Posicao;
  Img       := B.Img;
  Bold      := B.Bold;
  Gray      := B.Gray;
  Width     := B.Width;
  Color     := B.Color;
  paramSessao := B.paramSessao;
  paramConta := B.paramConta;
  paramAdmin := B.paramAdmin;
end;

function TncaWebBotaoData.BotaoExiste: Boolean;
begin
  Result := FileExists(ArqBotao(Img));
  DebugMsg('TncaWebBotaoData.BotaoExiste: '+BoolStr[Result]);
end;

procedure TncaWebBotaoData.Clear;
begin
  Nome      := '';
  Url       := '';
  Blank     := False;
  ShowUrl   := False;
  Sel       := False;
  Toolbar   := False;
  Posicao   := 0;
  Img       := '';
  Bold      := False;
  Gray      := False;
  Width     := 0;
  Color     := 0;

  paramSessao := False;
  paramAdmin := False;
  paramConta := False;
end;

function TncaWebBotaoData.FromString(S: String): Boolean;
var sl: TStrings;
    F: TFont;
begin
  DebugMsg('TncaWebBotaoData.FromString: '+S);
  Clear;
  sl := SplitParams(S);
  try
    Nome := RemoveAspas(sl.Values['nome']);
    F := TFont.Create;
    try
      F.Name := 'Segoe UI Semibold';
      F.Size := 9;
      F.Style := [fsBold];
      Width := cxTextWidth(F, ' '+Nome+' ');
    finally
      F.Free;
    end;
    Posicao := StrToIntDef(sl.Values['pos'], 0);
    Img := RemoveAspas(sl.Values['img']);
    Url := RemoveAspas(sl.Values['url']);
    Blank := (sl.Values['blank']='1');
    Gray  := (sl.Values['gray']<>'0');
//    Width := StrToIntDef(sl.Values['width'], 0);
    Color := StrToIntDef(sl.Values['color'], 0);
    Bold  := (sl.Values['bold']='1');
    Toolbar := False; //(sl.Values['toolbar']='1');
    ShowUrl := False; //(sl.Values['showurl']='1');
    Sel := (sl.Values['sel']='1');
    paramSessao := (sl.Values['paramSessao']='1');
    paramAdmin  := (sl.Values['paramAdmin']='1');
    paramConta  := (sl.Values['paramConta']='1');

    DebugMsg('TncaWebBotaoData.FromString 2');
    

    Result := (Nome>'') and (Posicao in [0..1]) and (Img > '') and (Url>'');
    DebugMsg('TncaWebBotaoData.FromString 3 - Result: '+BoolStr[Result]);
  finally
    sl.Free;
  end;
end;

function TncaWebBotaoData.GetStyle(aStylePadrao: TcxStyle): TcxStyle;
begin
  Result := TcxStyle.Create(nil);
  Result.Assign(aStylePadrao);
 
  if Bold or (Color<>0) then begin
    Result.TextColor := Color;
    if Bold then
      Result.Font.Style := [fsBold];
  end;
end;

function TncaWebBotaoData.Igual(B: TncaWebBotaoData): Boolean;
begin
  Result := False;
  if Nome<>B.Nome then Exit;
  if Url<>B.Url then Exit;
  if Blank<>B.Blank then Exit;
  if ShowUrl<>B.ShowUrl then Exit;
  if Sel<>B.Sel then Exit;
  if Toolbar<>B.Toolbar then Exit;
  if Posicao<>B.Posicao then Exit;
  if Img<>B.Img then Exit;

  if Bold<>B.Bold then Exit;
  if Gray<>B.Gray then Exit;
  if Color<>B.Color then Exit;
  if Width<>B.Width then Exit;

  if paramSessao<>B.paramSessao then Exit;
  if paramAdmin<>B.paramAdmin then Exit;
  if paramConta<>B.paramConta then Exit;
  
  Result := True;
end;

{ TncaWebBotao }

constructor TncaWebBotao.Create(aWebBotoes: TncaWebBotoes; aData: TncaWebBotaoData);
begin
  DebugMsg(Self, 'Create');
  FWebBotoes := aWebBotoes;
  FDownBtn := nil;
  FData.AssignFrom(aData);
  FBtn := TdxBarLargeButton.Create(FWebBotoes.FBar.Owner);
  FBtn.Style := FData.GetStyle(FWebBotoes.FStyle);
  FBtn.BarManager := FWebBotoes.FBar.BarManager;
  FBtn.Caption := aData.Nome;
  FBtn.OnClick := FWebBotoes.OnClick;
  FBtn.Visible := ivNever;
  FBtn.Tag := Integer(Self);
  FBtn.AutoGrayScale := FData.Gray;

 if FData.Width<FWebBotoes.FWidth then
    FBtn.Width := FWebBotoes.FWidth else
    FBtn.Width := FData.Width;
    
  if FData.BotaoExiste then begin
    DebugMsg(Self, 'Create 3');
    LoadImgBtn;
  end else begin
    DebugMsg(Self, 'Create 2');
    FDownBtn := TncaDownloadBotaoThread.Create(FData.Img);
    FDownBtn.OnTerminate := OnLoadBtn;
    FDownBtn.Resume;
  end;
  with FWebBotoes.FBar.ItemLinks.Add do begin
    Item := FBtn;
    if FData.Posicao=0 then 
      Index := 0;
  end;

  if FData.Blank then begin
    DebugMsg(Self, 'Create 3');
    FTab := nil;
    FWebTab := nil;
  end
  else begin
    DebugMsg(Self, 'Create 4');
    FTab := TcxTabSheet.Create(nil);
    FTab.PageControl := FWebBotoes.FPC;

    FWebTab := TFrmWebTab.Create(nil);
    FWebTab.paramSessao := FData.paramSessao;
    FWebTab.paramAdmin := FData.paramAdmin;
    FWebTab.paramConta := FData.paramConta;
    FWebTab.Paginas.Parent := Ftab;
    FWebTab.URL := FData.Url;
    FWebTab.showToolbar := FData.Toolbar;
    if FData.ShowUrl then
      FWebTab.showUrl := suBase else
      FWebTab.showUrl := suNao;
  end;

  if not FData.Blank then begin
    FBtn.AllowAllUp := False;
    FBtn.ButtonStyle := bsChecked;
    FBtn.GroupIndex := 1;
    DebugMsg(Self, 'Create 5');
  end;

  DebugMsg(Self, 'Create 6');
end;

destructor TncaWebBotao.Destroy;
begin
  if Assigned(FDownBtn) then begin
    FDownBtn.OnTerminate := nil;
    FDownBtn.Terminate;
  end;
  FBtn.Style.Free;
  FBtn.Free;
  if Assigned(FWebTab) then FWebTab.Free;
  
  if Assigned(FTab) then FTab.Free;
  
  inherited;
end;

procedure TncaWebBotao.LoadImgBtn;
var P: TdxPngImage;
begin
  DebugMsg(Self, 'LoadImgBtn');
  try
    P := TdxPngImage.Create;
    try
      P.LoadFromFile(ArqBotao(FData.Img));
      DebugMsg(Self, 'LoadImgBtn 2');
      FBtn.LargeGlyph := P.GetAsBitmap;
      DebugMsg(Self, 'LoadImgBtn 3');
      FBtn.Visible := ivAlways;
      DebugMsg(Self, 'LoadImgBtn OK');
    finally
      P.Free;
    end;
  except
    on E: Exception do 
      DebugEx(Self, 'LoadImgBtn', E);
  end;
end;

procedure TncaWebBotao.OnLoadBtn(Sender: TObject);
begin
  DebugMsg(Self, 'OnLoadBtn');
  if TncaDownloadBotaoThread(Sender).FDownOk then
    LoadImgBtn;
end;


function TncaWebBotao.Visible: Boolean;
begin
  Result := (FBtn.Visible=ivAlways);
end;

{ TncaDownloadBotaoThread }

constructor TncaDownloadBotaoThread.Create(aImg: String);
begin
  DebugMsg(Self, 'Create - aImg: '+aImg);
  FImg := aImg;
  FDownOk := False;
  inherited Create(True);
  FreeOnTerminate := True;
end;

function DownloadArq(aFrom, aTo: String): Boolean;
var S: TFileStream;
begin
  DebugMsg('DownloadArq - aFrom: '+aFrom+' - aTo: '+aTo);
  S := TFileStream.Create(aTo, fmCreate);
  try
    with TidHttp.Create(nil) do
    try
      HandleRedirects := True;
      try
        DebugMsg('DownloadArq 2 - aFrom: '+aFrom+' - aTo: '+aTo);
        Get(aFrom, S);
        DebugMsg('DownloadArq 3 - aFrom: '+aFrom+' - aTo: '+aTo);
        Result := True;
      except
      end;
    finally
      Free;
    end;
  finally
    S.Free;
  end;
end;

procedure TncaDownloadBotaoThread.Execute;
var 
  TryMS,
  NextTry: Cardinal;
  aFrom, aTo: String;
begin
  DebugMsg(Self, 'Execute - PathBotao: '+PathBotao);
  ForceDirectories(PathBotao);
  NextTry := GetTickCount;
  TryMS := 0;
  aFrom := UrlBotao(FImg);
  aTo := ArqBotao(FImg);
  FDownOk := False;
  repeat
    if GetTickCount>=NextTry then begin
      DebugMsg(Self, 'Execute 2');
      FDownOk := DownloadArq(aFrom, aTo);
      if not FDownOk then begin
        DebugMsg(Self, 'Execute 3');
        if TryMS<(60*1000*30) then
          TryMS := TryMS+5000;
        NextTry := GetTickCount+TryMS;
      end;
    end else
      Sleep(100);
  until (Terminated) or FDownOk;
  DebugMsg(Self, 'Execute 4 - FDownOk: '+BoolStr[FDownOk]);
end;

end.
