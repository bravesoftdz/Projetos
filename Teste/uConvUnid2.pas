unit uConvUnid2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxCurrencyEdit, cxTextEdit, cxLabel, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel;

type
  TForm1 = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    LMDSimplePanel2: TLMDSimplePanel;
    cxTextEdit1: TcxTextEdit;
    edPara: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    LMDSimplePanel3: TLMDSimplePanel;
    cxLabel4: TcxLabel;
    cxButton1: TcxButton;
    LMDSimplePanel4: TLMDSimplePanel;
    cxLabel1: TcxLabel;
    cxLabel5: TcxLabel;
    LMDSimplePanel5: TLMDSimplePanel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
