unit ncaFrmCancOk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo, cxLabel,
  dxGDIPlusClasses, Vcl.ExtCtrls, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TFrmCancOk = class(TForm)
    panTop: TLMDSimplePanel;
    panBottom: TLMDSimplePanel;
    panPri: TLMDSimplePanel;
    img: TImage;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    lbNumVenda: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Mostrar(aVenda: String);
    
  end;

var
  FrmCancOk: TFrmCancOk;

implementation

{$R *.dfm}

procedure TFrmCancOk.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmCancOk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCancOk.Mostrar(aVenda: String);
begin
  lbNumVenda.Caption := Format(lbNumVenda.Caption, [aVenda]);
  ShowModal;
end;

end.
