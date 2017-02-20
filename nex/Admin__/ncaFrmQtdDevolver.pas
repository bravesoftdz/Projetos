unit ncaFrmQtdDevolver;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxCurrencyEdit, Vcl.StdCtrls, cxButtons, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel;

type
  TFrmQtdDevolver = class(TForm)
    LMDSimplePanel2: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    panPerc: TLMDSimplePanel;
    edQtd: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    lbProduto: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmQtdDevolver: TFrmQtdDevolver;

implementation

{$R *.dfm}

end.
