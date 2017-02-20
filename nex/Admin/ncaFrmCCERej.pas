unit ncaFrmCCERej;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo, cxLabel,
  dxGDIPlusClasses, Vcl.ExtCtrls, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TFrmCCERej = class(TForm)
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
    procedure Mostrar(aNum: String; aMotivo: String);
    
  end;

var
  FrmCCERej: TFrmCCERej;

implementation

{$R *.dfm}

procedure TFrmCCERej.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmCCERej.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCCERej.Mostrar(aNum, aMotivo: String);
begin
  lbNum.Caption := 'Núm.NF-e: '+aNum;
  meMotivo.Lines.Text := aMotivo;
  ShowModal;
end;

end.
