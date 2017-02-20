unit ncaFrmRej;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo, cxLabel,
  dxGDIPlusClasses, Vcl.ExtCtrls, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TFrmRej = class(TForm)
    panTop: TLMDSimplePanel;
    panBottom: TLMDSimplePanel;
    panPri: TLMDSimplePanel;
    img: TImage;
    lbNumVenda: TcxLabel;
    lb: TcxLabel;
    cxLabel2: TcxLabel;
    meMotivo: TcxMemo;
    lbTit: TcxLabel;
    cxButton1: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Mostrar(aVenda: String; aMotivo: String);
    
  end;

var
  FrmRej: TFrmRej;

implementation

{$R *.dfm}

uses ncaDM;

procedure TFrmRej.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmRej.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmRej.FormCreate(Sender: TObject);
begin
  lbTit.Caption := Format(lbTit.Caption, [Dados.tNFConfigNFStr.Value]);
end;

procedure TFrmRej.Mostrar(aVenda, aMotivo: String);
begin
  lbNumVenda.Caption := 'Núm.Venda: '+aVenda;
  meMotivo.Lines.Text := aMotivo;
  ShowModal;
end;

end.
