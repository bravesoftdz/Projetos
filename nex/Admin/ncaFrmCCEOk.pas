unit ncaFrmCCEOk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo, cxLabel,
  dxGDIPlusClasses, Vcl.ExtCtrls, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TFrmCCEOk = class(TForm)
    panTop: TLMDSimplePanel;
    panBottom: TLMDSimplePanel;
    panPri: TLMDSimplePanel;
    img: TImage;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    lbNFE: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Mostrar(aNum: String);
    
  end;

var
  FrmCCEOk: TFrmCCEOk;

implementation

{$R *.dfm}

procedure TFrmCCEOk.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmCCEOk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCCEOk.Mostrar(aNum: String);
begin
  lbNFE.Caption := Format(lbNFE.Caption, [aNum]);
  ShowModal;
end;

end.
