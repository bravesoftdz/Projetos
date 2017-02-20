unit ncaFrmRenameEtq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel, cxMemo,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel;

type
  TFrmRenomear = class(TForm)
    btnCancelar: TcxButton;
    btnOk: TcxButton;
    LMDSimplePanel2: TLMDSimplePanel;
    lbObs: TcxLabel;
    edObs: TcxMemo;
    panNome: TLMDSimplePanel;
    lbNome: TcxLabel;
    edNome: TcxTextEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    function Renomear(var aNome, aObs: String): Boolean;
    { Public declarations }
  end;

var
  FrmRenomear: TFrmRenomear;

implementation

uses ncaFrmPri;

{$R *.dfm}

procedure TFrmRenomear.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmRenomear.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Msg: TMsg;  
begin
  if Key=VK_ESCAPE then begin
    ModalResult := mrCancel;
    PeekMessage(Msg, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
  end;
end;

procedure TFrmRenomear.FormShow(Sender: TObject);
begin
  if lbNome.Width > lbObs.Width then begin
    lbObs.AutoSize := False;
    lbObs.Width := lbNome.Width;
  end else begin
    lbNome.AutoSize := False;
    lbNome.Width := lbObs.Width;
  end;
end;

function TFrmRenomear.Renomear(var aNome, aObs: String): Boolean;
begin
  edNome.Text := aNome;
  edObs.Text := aObs;
  ShowModal;
  Result := (ModalResult=mrOk);
  aNome := edNome.Text;
  aObs := edObs.Text;
end;

end.
