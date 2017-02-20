unit ncaFrmRejCanc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo, cxLabel,
  dxGDIPlusClasses, Vcl.ExtCtrls, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TFrmRejCanc = class(TForm)
    panTop: TLMDSimplePanel;
    panBottom: TLMDSimplePanel;
    panPri: TLMDSimplePanel;
    img: TImage;
    lbNum: TcxLabel;
    cxLabel2: TcxLabel;
    meMotivo: TcxMemo;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Mostrar(aVenda: String; aMotivo: String);
    
  end;

var
  FrmRejCanc: TFrmRejCanc;

implementation

{$R *.dfm}

procedure TFrmRejCanc.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmRejCanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmRejCanc.Mostrar(aVenda, aMotivo: String);
begin
  lbNum.Caption := 'Núm.Venda: '+aVenda;
  meMotivo.Lines.Text := aMotivo;
  ShowModal;
end;

end.
