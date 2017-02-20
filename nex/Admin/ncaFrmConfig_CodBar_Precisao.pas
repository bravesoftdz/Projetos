unit ncaFrmConfig_CodBar_Precisao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxLabel, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel;

type
  TFrmConfig_CodBar_Precisao = class(TForm)
    panMaxQtdDig: TLMDSimplePanel;
    lbMaxQtdDig: TcxLabel;
    edMaxQtdDig: TcxSpinEdit;
    lbMaxQtdDig2: TcxLabel;
    panArredondar: TLMDSimplePanel;
    lbArredondarDig: TcxLabel;
    LMDSimplePanel2: TLMDSimplePanel;
    btnOk: TcxButton;
    lbCancelar: TcxLabel;
    pan2: TLMDSimplePanel;
    lbNao: TcxLabel;
    edCodBarArredondar: TcxSpinEdit;
    procedure edMaxQtdDigPropertiesEditValueChanged(Sender: TObject);
    procedure lbCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure UpdateText;
  public
    procedure Load;
    { Public declarations }
  end;

var
  FrmConfig_CodBar_Precisao: TFrmConfig_CodBar_Precisao;

resourcestring
  rsArredondarDig1 = 'Arredondar para cima se o ';
  rsArredondarDig2 = 'dígito da fração de peso for igual ou maior que:';

implementation

uses ncClassesBase, ncaFrmPri;

{$R *.dfm}

procedure TFrmConfig_CodBar_Precisao.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConfig_CodBar_Precisao.lbCancelarClick(Sender: TObject);
begin
  Load;
  Close;
end;

procedure TFrmConfig_CodBar_Precisao.edMaxQtdDigPropertiesEditValueChanged(
  Sender: TObject);
begin
  UpdateText;
end;

procedure TFrmConfig_CodBar_Precisao.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    Key_F2    : Close;
//    Key_Esc   : lbCancelarClick(nil);
  end;
end;

procedure TFrmConfig_CodBar_Precisao.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #27 then begin
    Key := #0;
    lbCancelarClick(nil);
  end;
end;

procedure TFrmConfig_CodBar_Precisao.Load;
begin
  edMaxQtdDig.Value := gConfig.CodBarMaxQtdDig;
  edCodBarArredondar.Value := gConfig.CodBarArredondar;
  UpdateText;
end;

procedure TFrmConfig_CodBar_Precisao.UpdateText;
begin
  lbArredondarDig.Caption := rsArredondarDig1 + ' ' + IntToStr(edMaxQtdDig.Value+1) + 'o. ' + rsArredondarDig2;
  lbNao.Visible := (edCodBarArredondar.Value=0);
end;

end.
