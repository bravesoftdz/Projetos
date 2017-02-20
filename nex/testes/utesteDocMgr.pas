unit utesteDocMgr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.ImgList, Vcl.StdCtrls, cxButtons, cxControls, cxContainer, cxEdit,
  cxLabel, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel;

type
  TForm4 = class(TForm)
    cxImageList1: TcxImageList;
    LMDSimplePanel1: TLMDSimplePanel;
    btnFolhas: TcxButton;
    btnBobina: TcxButton;
    cxLabel1: TcxLabel;
    procedure btnFolhasMouseEnter(Sender: TObject);
    procedure btnFolhasMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFolhasClick(Sender: TObject);
    procedure btnBobinaClick(Sender: TObject);
  private
    FBobina: Boolean;
    procedure SetBobina(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    property Bobina: Boolean
      read FBobina write SetBobina;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.btnBobinaClick(Sender: TObject);
begin
  Bobina := True;
end;

procedure TForm4.btnFolhasClick(Sender: TObject);
begin
  Bobina := False;
end;

procedure TForm4.btnFolhasMouseEnter(Sender: TObject);
begin
  btnFolhas.Font.Style := [fsUnderline];
end;

procedure TForm4.btnFolhasMouseLeave(Sender: TObject);
begin
  btnFolhas.Font.Style := [];
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  FBobina := False;
end;

procedure TForm4.SetBobina(const Value: Boolean);
begin
  FBobina := Value;
  if Value then begin
    btnBobina.OptionsImage.ImageIndex := 3;
    btnBobina.Font.Color := clBlue;
    btnBobina.Font.Style := [fsUnderline];
    btnFolhas.Font.Color := clBlack;
    btnFolhas.Font.Style := [];
    btnFolhas.OptionsImage.ImageIndex := 0;
  end else begin
    btnBobina.OptionsImage.ImageIndex := 2;
    btnBobina.Font.Color := clBlack;
    btnBobina.Font.Style := [];
    btnFolhas.Font.Color := clBlue;
    btnFolhas.Font.Style := [fsUnderline];
    btnFolhas.OptionsImage.ImageIndex := 1;
  end;
end;

end.
