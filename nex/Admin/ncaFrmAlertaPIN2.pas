unit ncaFrmAlertaPIN2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel, cxCheckBox;

type
  TFrmAlertaPIN2 = class(TForm)
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
  FrmAlertaPIN2: TFrmAlertaPIN2;

implementation

{$R *.dfm}

procedure TFrmAlertaPIN2.btnSalvarClick(Sender: TObject);
begin
  if not cbCiente.Checked then 
    raise Exception.Create('É necessário marcar a opção que você está ciente sobre perder o certificado caso informe um PIN errado');
  ModalResult := mrOk;    
end;

function TFrmAlertaPIN2.Ciente(aMostrarPINBranco: Boolean): Boolean;
begin
  lbPINBranco.Visible := aMostrarPINBranco;
  ShowModal;
  Result := (ModalResult=mrOk);
end;

procedure TFrmAlertaPIN2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
