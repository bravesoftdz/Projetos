unit ncaFrmNFCeImpedirDeslig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel;

type
  TFrmNFCeImpedirDeslig = class(TForm)
    cxLabel1: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    btnAtivar: TcxButton;
    lbMsg: TcxLabel;
    cxLabel2: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLabel2Click(Sender: TObject);
    procedure btnAtivarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function PodeVender: Boolean;
  end;

var
  FrmNFCeImpedirDeslig: TFrmNFCeImpedirDeslig;

implementation

{$R *.dfm}

uses ncaDM, ncaFrmConfig_Cupom;

procedure TFrmNFCeImpedirDeslig.btnAtivarClick(Sender: TObject);
begin
  TFrmConfig_Cupom.Mostrar(True);
  Close;
end;

procedure TFrmNFCeImpedirDeslig.cxLabel2Click(Sender: TObject);
begin
  Close;
end;

class function TFrmNFCeImpedirDeslig.PodeVender: Boolean;
begin
  Result := (not Dados.TemVendaProd) or Dados.tNFConfigEmitirNFCe.Value;
  if not Result then
    TFrmNFCeImpedirDeslig.Create(nil).ShowModal;
end;

procedure TFrmNFCeImpedirDeslig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
