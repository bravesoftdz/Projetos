unit panModoHomoNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncaPanBaseAlertaTopo, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, LMDPNGImage, Vcl.ExtCtrls,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, dxGDIPlusClasses;

type
  TpanAlertaModoHomoNFe = class(TpanAlertaTopo)
    btnModoHomo: TcxButton;
    lbSaibaMais: TcxLabel;
    btnAtivarProd: TcxButton;
    procedure lbSaibaMaisClick(Sender: TObject);
    procedure btnModoHomoClick(Sender: TObject);
    procedure btnAtivarProdClick(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create;

    destructor Destroy; override;
    
    { Public declarations }
    class procedure Refresh;
  end;

var
  panAlertaModoHomoNFe: TpanAlertaModoHomoNFe = nil;

implementation

{$R *.dfm}

uses ncaFrmNFeModoHomo, ncaDM, ncaFrmPri, 
  ncaFrmNFCeCancelarHomo, ncClassesBase, ncaFrmNFeMigrarProd;

procedure TpanAlertaModoHomoNFe.btnAtivarProdClick(Sender: TObject);
begin
  inherited;
  if TFrmNFCeCancelarHomo.ExisteVendaHomo('Para ativar emissão de NF-e em produção é necessário cancelar a venda realizada em homologação.') then Exit;
  
  TFrmNFeMigrarProd.Create(Self).ShowModal;
end;

procedure TpanAlertaModoHomoNFe.btnModoHomoClick(Sender: TObject);
begin
  inherited;
  TFrmNFeModoHomo.Create(Self).ShowModal;  
end;

constructor TpanAlertaModoHomoNFe.Create;
begin
  inherited Create(FrmPri);

  panAlertaModoHomoNFe := self;
end;

destructor TpanAlertaModoHomoNFe.Destroy;
begin
  panAlertaModoHomoNFe := nil;
  inherited;
end;

procedure TpanAlertaModoHomoNFe.lbSaibaMaisClick(Sender: TObject);
begin
  inherited;
  Fechar;
end;

class procedure TpanAlertaModoHomoNFe.Refresh;
var aMostrar: Boolean;
begin
  aMostrar := Dados.NFeAtivo and (Dados.tNFConfigtpAmbNFe.Value=2);

  if aMostrar then begin
    if not Assigned(panAlertaModoHomoNFe) then
      TpanAlertaModoHomoNFe.Create.Mostrar(FrmPri);
  end else
    if Assigned(panAlertaModoHomoNFe) then
      panAlertaModoHomoNFe.Free;
end;

end.
