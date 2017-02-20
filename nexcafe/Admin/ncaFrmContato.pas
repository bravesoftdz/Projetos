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
  LMDPNGImage, cxGraphics, cxLookAndFeels;

type
  TFrmContato = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel7: TcxLabel;
    Image3: TImage;
    cxLabel11: TcxLabel;
    cxLabel15: TcxLabel;
    Image4: TImage;
    cxButton1: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Image1: TImage;
    lbSite: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel8: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbSiteClick(Sender: TObject);
    procedure cxLabel4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContato: TFrmContato;

implementation

uses ncShellStart, ncaDM;

// START resource string wizard section
const
  SWwwProgramanexComBr = 'www.programanex.com.br';

// END resource string wizard section


// START resource string wizard section
resourcestring
  SDispon�velEmNossoSite = 'Dispon�vel em nosso site:     ';

// END resource string wizard section


{$R *.dfm}

procedure TFrmContato.cxLabel4Click(Sender: TObject);
begin
  OpenTrack('assinar', 'frmcontato');
end;

procedure TFrmContato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmContato.FormCreate(Sender: TObject);
begin
  {$ifdef Loja}
  lbSite.Caption := SDispon�velEmNossoSite+SWwwProgramanexComBr;
  {$endif}
end;

procedure TFrmContato.lbSiteClick(Sender: TObject);
begin
{$ifdef Loja}
  ShellStart('http://www.programanex.com.br');
{$else}
  ShellStart('http://www.nexcafe.com.br');
{$endif}
end;

procedure TFrmContato.cxButton1Click(Sender: TObject);
begin
  Close;
end;

end.

