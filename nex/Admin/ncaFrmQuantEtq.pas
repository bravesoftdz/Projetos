unit ncaFrmQuantEtq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxSpinEdit, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel;

type
  TFrmQuantEtq = class(TForm)
    lbProduto: TcxLabel;
    LMDSimplePanel1: TLMDSimplePanel;
    lbQuant: TcxLabel;
    edQtd: TcxSpinEdit;
    btnCancelar: TcxButton;
    btnOk: TcxButton;
    cxLabel1: TcxLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure edQtdEnter(Sender: TObject);
  private
    { Private declarations }
  public
    function ObtemQuant(aDescr: String): Integer;
    
    { Public declarations }
  end;

var
  FrmQuantEtq: TFrmQuantEtq;

implementation

uses ncaFrmPri;

{$R *.dfm}

procedure TFrmQuantEtq.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFrmQuantEtq.edQtdEnter(Sender: TObject);
begin
  edQtd.SelectAll;
end;

procedure TFrmQuantEtq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmQuantEtq.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Msg: TMsg;  
begin
  if Key=VK_ESCAPE then begin
    ModalResult := mrCancel;
    PeekMessage(Msg, 0, WM_CHAR, WM_CHAR, PM_REMOVE);      
  end;
end;

function TFrmQuantEtq.ObtemQuant(aDescr: String): Integer;
begin
  lbProduto.Caption := aDescr;
  ShowModal;
  if ModalResult=mrOk then
    Result := edQtd.Value else
    Result := 0;
end;

end.
