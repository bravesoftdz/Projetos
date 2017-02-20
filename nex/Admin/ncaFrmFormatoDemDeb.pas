unit ncaFrmFormatoDemDeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, PngImage, ExtCtrls, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, cxSpinEdit, StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Printers, frxClass,
  cxButtonEdit, ncaDocEdit, cxRadioGroup, ncDebito;

type
  TFrmFormatoDemDeb = class(TForm)
    lbModelo: TcxLabel;
    LMDSimplePanel1: TLMDSimplePanel;
    btnCancelar: TcxButton;
    btnOk: TcxButton;
    rbFolha: TcxRadioButton;
    rbBobina: TcxRadioButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    function ObtemFormato: Byte;
    { Public declarations }
  end;

var
  FrmFormatoDemDeb: TFrmFormatoDemDeb;

implementation


{$R *.dfm}


procedure TFrmFormatoDemDeb.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmFormatoDemDeb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;


function TFrmFormatoDemDeb.ObtemFormato: Byte;
begin
  Result := 0;
  ShowModal;
  if ModalResult=mrOk then begin
    if rbFolha.Checked then
      Result := 1 else
      Result := 2;
  end;
end;

end.
