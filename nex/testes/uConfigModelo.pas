unit uConfigModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxEdit, cxTextEdit, cxImage, cxVGrid,
  cxInplaceContainer, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, Vcl.StdCtrls, cxClasses, Vcl.Menus,
  cxButtons, cxContainer, cxLabel, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    VG: TcxVerticalGrid;
    VGEditorRow1: TcxEditorRow;
    VGEditorRow2: TcxEditorRow;
    VGEditorRow3: TcxEditorRow;
    erOpcao4: TcxEditorRow;
    erLogo: TcxEditorRow;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    VGEditorRow4: TcxEditorRow;
    VGEditorRow6: TcxEditorRow;
    cxStyle2: TcxStyle;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    btnSelImg: TcxButton;
    btnDel: TcxButton;
    btnSelImg2: TcxButton;
    procedure Button1Click(Sender: TObject);
    procedure btnSelImgClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure erLogoEditPropertiesChange(Sender: TObject);
    procedure erLogoEditPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  erOpcao4.Visible := not erOpcao4.Visible;
end;

procedure TForm2.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TForm2.erLogoEditPropertiesChange(Sender: TObject);
begin
  btnSelImg.Visible := VarIsNull(TcxImage(Sender).Picture.Graphic <> nil);
  btnDel.Visible := not btnSelImg.Visible;
  btnSelImg2.Visible := not btnSelImg.Visible;
 
end;

procedure TForm2.erLogoEditPropertiesEditValueChanged(Sender: TObject);
begin
  btnSelImg.Visible := VarIsNull(TcxImage(Sender).Picture.Graphic <> nil);
  btnDel.Visible := not btnSelImg.Visible;
  btnSelImg2.Visible := not btnSelImg.Visible;
end;

procedure TForm2.btnDelClick(Sender: TObject);
begin
  VG.SetFocus;
  VG.FocusedRow := erLogo;
  VG.ShowEdit;
  TcxImage(VG.InplaceEditor).Clear;
  btnSelImg.Visible := True;
  TcxImage(VG.InplaceEditor).PostEditValue;
  
  btnDel.Visible := False;
  btnSelImg2.Visible := False;
end;

procedure TForm2.btnSelImgClick(Sender: TObject);
begin
  VG.SetFocus;
  VG.FocusedRow := erLogo;
  VG.ShowEdit;
  TcxImage(VG.InplaceEditor).LoadFromFile;
  TcxImage(VG.InplaceEditor).PostEditValue;
end;

end.
