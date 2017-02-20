unit ncaFrmNFCeCancelarHomo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel;

type
  TFrmNFCeCancelarHomo = class(TForm)
    cxLabel1: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    btnSalvar: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    lbMsg: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Mostrar(aMsg: String);

    class function ExisteVendaHomo(aMsg: String): Boolean;
  end;

var
  FrmNFCeCancelarHomo: TFrmNFCeCancelarHomo;

implementation

{$R *.dfm}

uses ncaDM;

class function TFrmNFCeCancelarHomo.ExisteVendaHomo(aMsg: String): Boolean;
begin
  Result := Dados.TemVendaHomo;
  if Result then
    TFrmNFCeCancelarHomo.Create(nil).Mostrar(aMsg);
end;

procedure TFrmNFCeCancelarHomo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmNFCeCancelarHomo.Mostrar(aMsg: String);
begin
  lbMsg.Caption := aMsg;
  ShowModal;
end;

end.
