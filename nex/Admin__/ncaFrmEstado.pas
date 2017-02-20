unit ncaFrmEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxDBEdit, Vcl.StdCtrls, cxButtons,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel;

type
  TFrmEstado = class(TForm)
    lbEstado: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    btnCanc: TcxButton;
    btnSalvar: TcxButton;
    edEstado: TcxImageComboBox;
    cxLabel5: TcxLabel;
    procedure edEstadoPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edEstadoPropertiesEditValueChanged(Sender: TObject);
    procedure edEstadoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ObtemEstado(aUF: String): String;
  end;

var
  FrmEstado: TFrmEstado;

implementation

{$R *.dfm}

uses ncaFrmPri;

{ TFrmEstado }

procedure TFrmEstado.edEstadoEnter(Sender: TObject);
begin
  edEstado.DroppedDown := True;
end;

procedure TFrmEstado.edEstadoPropertiesChange(Sender: TObject);
begin
  btnSalvar.Enabled := True;
end;

procedure TFrmEstado.edEstadoPropertiesEditValueChanged(Sender: TObject);
begin
  btnSalvar.Enabled := True;
end;

procedure TFrmEstado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function TFrmEstado.ObtemEstado(aUF: String): String;
begin
  if aUF>'' then
    edEstado.EditValue := aUF;
    
  ShowModal;
  if ModalResult=mrOk then 
    Result := edEstado.EditValue else
    Result := '';
end;

end.
