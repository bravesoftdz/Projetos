unit ncaFrmContato;
{
    ResourceString: Dario 11/03/13
}

interface

{$I NEX.inc}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, pngimage,
  cxControls, cxContainer, cxEdit, cxLabel, ExtCtrls, Menus, 
  LMDPNGImage, cxGraphics, cxLookAndFeels, frxClass;

type
  TFrmContato = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel7: TcxLabel;
    Image3: TImage;
    lbTel: TcxLabel;
    lbTel2: TcxLabel;
    Image4: TImage;
    cxButton1: TcxButton;
    Image1: TImage;
    lbSite: TcxLabel;
    cxLabel6: TcxLabel;
    lbCel2: TcxLabel;
    lbTel1: TcxLabel;
    lbCel1: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure lbSiteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContato: TFrmContato;

implementation

uses ncShellStart, ncaDM, ncClassesBase;


{$R *.dfm}

procedure TFrmContato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmContato.FormCreate(Sender: TObject);
begin
  if gConfig.IsPremium then begin
    lbTel2.Caption := '(48) 3209-8620';
    if not gConfig.Pro then
      lbCel2.Caption := '(48) 9607-7121';
  end;
end;

procedure TFrmContato.lbSiteClick(Sender: TObject);
begin
  ShellStart('http://www.programanex.com.br');
end;

procedure TFrmContato.cxButton1Click(Sender: TObject);
begin
  Close;
end;

end.

