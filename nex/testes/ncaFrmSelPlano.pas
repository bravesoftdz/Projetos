unit ncaFrmSelPlano;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  cxContainer, cxEdit, Vcl.Menus, LMDButtonControl, LMDRadioButton,
  Vcl.StdCtrls, cxButtons, cxRadioGroup, cxLabel, LMDCustomScrollBox,
  LMDScrollBox, cxTextEdit, cxMemo, LMDBaseEdit, LMDCustomMemo, LMDMemo, LMDSplt;

type
  TFrmSelPlano = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    Paginas: TcxPageControl;
    tsFree: TcxTabSheet;
    tsPro: TcxTabSheet;
    tsPri2: TcxTabSheet;
    rbPro: TcxRadioButton;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    rbFree: TcxRadioButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    LMDSimplePanel2: TLMDSimplePanel;
    LMDSplitterPanel1: TLMDSplitterPanel;
    LMDSplitterPane1: TLMDSplitterPane;
    LMDSplitterPane2: TLMDSplitterPane;
    cxLabel4: TcxLabel;
    cxLabel12: TcxLabel;
    LMDSimplePanel3: TLMDSimplePanel;
    LMDRadioButton2: TLMDRadioButton;
    cxLabel13: TcxLabel;
    cxLabel16: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    cxLabel14: TcxLabel;
    LMDSimplePanel5: TLMDSimplePanel;
    LMDRadioButton1: TLMDRadioButton;
    cxLabel15: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel11: TcxLabel;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure rbFreeClick(Sender: TObject);
    procedure rbProClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxLabel19Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Atualiza;
    { Public declarations }
  end;

var
  FrmSelPlano: TFrmSelPlano;

implementation

{$R *.dfm}

procedure TFrmSelPlano.Atualiza;
begin
  rbFree.Font.Style := [];
  rbPro.Font.Style := [];
  if rbFree.Checked then begin
    rbFree.Font.Name := 'Segoe UI Semibold';
    rbPro.Font.Name := 'Segoe UI';
  end else begin
    rbPro.Font.Name := 'Segoe UI Semibold';
    rbFree.Font.Name := 'Segoe UI';
  end;
end;

procedure TFrmSelPlano.cxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelPlano.cxLabel19Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelPlano.FormCreate(Sender: TObject);
begin
  Paginas.HideTabs := True;
end;

procedure TFrmSelPlano.rbFreeClick(Sender: TObject);
begin
  Atualiza;
end;

procedure TFrmSelPlano.rbProClick(Sender: TObject);
begin
  Atualiza;
end;

end.
