unit ncaFrmAlertaPIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel, cxCheckBox;

type
  TFrmAlertaPIN = class(TForm)
    cxLabel1: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    btnSalvar: TcxButton;
    lbPINBranco: TcxLabel;
    cbCiente: TcxCheckBox;
    cxLabel3: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    function Ciente(aMostrarPINBranco: Boolean): Boolean;
    { Public declarations }
  end;

var
  FrmAlertaPIN: TFrmAlertaPIN;

implementation

{$R *.dfm}

procedure TFrmAlertaPIN.btnSalvarClick(Sender: TObject);
begin
  if not cbCiente.Checked then 
    raise Exception.Create('É necessário marcar a opção que você está ciente sobre perder o certificado caso informe um PIN errado');
  ModalResult := mrOk;    
end;

function TFrmAlertaPIN.Ciente(aMostrarPINBranco: Boolean): Boolean;
begin
  lbPINBranco.Visible := aMostrarPINBranco;
  ShowModal;
  Result := (ModalResult=mrOk);
end;

procedure TFrmAlertaPIN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
