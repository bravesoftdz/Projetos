unit ncaFrmPeriodo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, cxCheckBox;

type
  TFrmPeriodo = class(TForm)
    lbInicio: TcxLabel;
    lbFinal: TcxLabel;
    edInicio: TcxDateEdit;
    edFim: TcxDateEdit;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    cbExpCanc: TcxCheckBox;
    procedure btnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    function ObtemPeriodo(var I, F: TDateTime; var aExpCanc: Boolean; aDoc: String): Boolean;
  end;

var
  FrmPeriodo: TFrmPeriodo;

implementation

uses ncaDM;

resourcestring
  rsInformarInicio = '� necess�rio informar uma data inicial';
  rsInformarFinal  = '� necess�rio informar a data final';
  rsFinalMenorInicio = 'A data final deve ser maior ou igual a data inicial';

{$R *.dfm}

procedure TFrmPeriodo.btnOkClick(Sender: TObject);
begin
  if edInicio.Date < EncodeDate(1980, 1, 1) then begin
    edInicio.SetFocus;
    raise Exception.Create(rsInformarInicio);
  end;  

  if edFim.Date < EncodeDate(1980, 1, 1) then begin
    edFim.SetFocus;
    raise Exception.Create(rsInformarFinal);
  end;  

  if edFim.Date < edInicio.Date then begin
    edInicio.SetFocus;
    raise Exception.Create(rsFinalMenorInicio);
  end;  
  
  ModalResult := mrOk;
end;

procedure TFrmPeriodo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function TFrmPeriodo.ObtemPeriodo(var I, F: TDateTime; var aExpCanc: Boolean; aDoc: String): Boolean;
begin
  if aDoc>'' then
    cbExpCanc.Checked := getFormOptionBool(Self, aDoc+'_expcanc', True) else
    cbExpCanc.Visible := False;
    
  ShowModal;
  if ModalResult=mrOk then begin
    if aDoc>'' then
      saveFormOptionBool(Self, aDoc+'_expcanc', cbExpCanc.Checked);
    Result := True;
    I := edInicio.Date;
    F := edFim.Date;
    aExpCanc := cbExpCanc.Checked;
  end else
    Result := False;
end;

end.
