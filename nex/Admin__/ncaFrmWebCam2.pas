unit ncaFrmWebCam2;
{
    ResourceString: Dario 11/03/13
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ShellAPI, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, 
  dxBar, cxPCdxBarPopupMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxClasses,
  cxLabel, cxPC, cxStyles, jpeg, cxImage, dxBarBuiltInMenu, dxCameraControl;

type
  TFrmWebCam2 = class(TForm)
    barMgr: TdxBarManager;
    cmSalvar: TdxBarLargeButton;
    cmCancelar: TdxBarLargeButton;
    cmArq: TdxBarLargeButton;
    cmStop: TdxBarLargeButton;
    cmPlay: TdxBarLargeButton;
    cmApagar: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    barSemWebCam: TdxBar;
    dxBarButton1: TdxBarButton;
    OpenDlg: TOpenDialog;
    barMgrBar2: TdxBar;
    LMDSimplePanel1: TLMDSimplePanel;
    Paginas: TcxPageControl;
    tsImg: TcxTabSheet;
    tsCam: TcxTabSheet;
    Image1: TcxImage;
    Cam: TdxCameraControl;
    dxBarDockControl1: TdxBarDockControl;
    Timer1: TTimer;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmPlayClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmStopClick(Sender: TObject);
    procedure cmApagarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmCancelarClick(Sender: TObject);
    procedure cmSalvarClick(Sender: TObject);
    procedure cmArqClick(Sender: TObject);
  private
    FAlterou : Boolean;
    FArq     : String;
    FDrivers : TStrings;
    FHDelta,
    FWDelta  : Integer;
    procedure SetArq(const Value: String);
    procedure InitWebCam;
    procedure LoadArq;
    { Private declarations }

    property Arq: String
      read FArq write SetArq;

  public
    function ObtemFoto(S: String): String;
    { Public declarations }
  end;

var
  FrmWebCam2: TFrmWebCam2;

implementation

{$R *.dfm}

uses
  ncaWebcam, ncaFrmPri, ufmImagens, ncClassesBase;

function IsNumber(s: string): Boolean;
var 
  i: Integer;
begin
  Result := False;
  for i := 1 to Length(s) do
    case s[i] of
      '0'..'9':;
      else 
        Exit;
    end;
  Result := True;
end;  

procedure TFrmWebCam2.cmApagarClick(Sender: TObject);
begin
  Arq := 'clear'; // do not localize
  LoadArq;
end;

procedure TFrmWebCam2.cmArqClick(Sender: TObject);
begin
  if OpenDlg.Execute then begin
    Arq := OpenDlg.FileName;
    CheckImgLimit(GetFileSize(Arq));
    LoadArq;
    cmSalvar.Click;
  end else
    cmCancelar.Click;
end;

procedure TFrmWebCam2.cmCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmWebCam2.cmPlayClick(Sender: TObject);
begin
  Paginas.ActivePage := tsCam;
  Cam.Active := True;
  cmPlay.Enabled := False;
  cmStop.Enabled := True;
end;

procedure TFrmWebCam2.cmSalvarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFrmWebCam2.cmStopClick(Sender: TObject);
var S: String;
begin
  cmStop.Enabled := False;
  cmPlay.Enabled := True;
  Cam.Capture;
  Cam.Active := False;
  Paginas.ActivePage := tsImg;

  S := ExtractFilePath(ParamStr(0))+'webcam.bmp'; // do not localize
  Cam.CapturedBitmap.SaveToFile(S);
  try
    Arq := S;
    LoadArq;
  except 
  end;
end;

procedure TFrmWebCam2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmWebCam2.FormCreate(Sender: TObject);
begin
  Paginas.ActivePage := tsImg;
  Paginas.HideTabs := True;
  FDrivers := nil;
  FHDelta := Height - Image1.Height;
  FWDelta := Width - Image1.Width;
end;

procedure TFrmWebCam2.FormDestroy(Sender: TObject);
begin
  if Assigned(FDrivers) then FDrivers.Free;
  try CloseWebcam; except end;
end;

procedure TFrmWebCam2.FormShow(Sender: TObject);
begin
  if Assigned(FDrivers) and (FDrivers.Count>0) then
    cmPlay.Click else
    cmArq.Click;
end;

procedure TFrmWebCam2.InitWebCam;
begin
  WebcamInit;
  FDrivers := WebcamList;
  if FDrivers.Count>0 then begin
    cmPlay.Visible := ivAlways;
    cmStop.Visible := ivAlways;
    barSemWebCam.Visible := False;
  end else begin
    cmPlay.Visible := ivNever;
    cmStop.Visible := ivNever;
    Height := Height + 26;
    barSemWebCam.Visible := True;
  end;
end;

procedure TFrmWebCam2.LoadArq;
begin
  if Sametext(FArq, 'clear') then begin // do not localize
    cmStop.Click;
    Image1.Visible := False;
    cmApagar.Enabled := False;
  end else 
  if Trim(FArq)>'' then begin
    Image1.Picture.LoadFromFile(FArq);
    cmApagar.Enabled := True;
    if not Image1.Visible then
      Image1.Visible := True;
  end else
    cmApagar.Enabled := False;
end;

function TFrmWebCam2.ObtemFoto(S: String): String;
var B: TBitmap; J: TJpegImage;
begin
  FArq := '';
  InitWebCam;
  Arq := S;
  Result := '';
  if (FDrivers.Count=0) and (S>'') then 
    LoadArq;
  
  ShowModal;
  
  if ModalResult=mrOk then
  if FArq<>S then begin

    if SameText(ExtractFileExt(FArq), '.bmp') then begin // do not localize
      B := TBitmap.Create;
      J := TJpegImage.Create;
      try
        B.LoadFromFile(FArq);
        J.Assign(B);
        FArq := ChangeFileExt(FArq, '.jpg'); // do not localize
        J.SaveToFile(FArq);
      finally
        J.Free;
        B.Free;
      end;
    end;
  
    Result := FArq;
  end;
end;

procedure TFrmWebCam2.SetArq(const Value: String);
begin
  if SameText(FArq, Value) then Exit;
  FArq := Value;
  cmSalvar.Enabled := True;
end;

end.

