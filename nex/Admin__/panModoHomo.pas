unit panModoHomo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncaPanBaseAlertaTopo, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, LMDPNGImage, Vcl.ExtCtrls,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, dxGDIPlusClasses;

type
  TpanAlertaModoHomo = class(TpanAlertaTopo)
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
  panAlertaModoHomo: TpanAlertaModoHomo = nil;

implementation

{$R *.dfm}

uses ncaFrmNFCModoHomo, ncaDM, ncaFrmPri, ncaFrmNFCeMigrarProd,
  ncaFrmNFCeCancelarHomo, ncClassesBase;

procedure TpanAlertaModoHomo.btnAtivarProdClick(Sender: TObject);
begin
  inherited;
  if TFrmNFCeCancelarHomo.ExisteVendaHomo('Para ativar emissão de NFC-e em produção é necessário cancelar a venda realizada em homologação.') then Exit;
  
  TFrmNFCeMigrarProd.Create(Self).ShowModal;
end;

procedure TpanAlertaModoHomo.btnModoHomoClick(Sender: TObject);
begin
  inherited;
  TFrmNFCeHomo.Create(Self).ShowModal;  
end;

constructor TpanAlertaModoHomo.Create;
begin
  inherited Create(FrmPri);

  panAlertaModoHomo := self;
end;

destructor TpanAlertaModoHomo.Destroy;
begin
  panAlertaModoHomo := nil;
  inherited;
end;

procedure TpanAlertaModoHomo.lbSaibaMaisClick(Sender: TObject);
begin
  inherited;
  Fechar;
end;

class procedure TpanAlertaModoHomo.Refresh;
var aMostrar: Boolean;
begin
  aMostrar := Dados.NFCeAtivo and (Dados.tNFConfigtpAmb.Value=2) and (Dados.tNFConfigTipo.Value=nfcfg_nfce);

  if aMostrar then begin
    if not Assigned(panAlertaModoHomo) then
      TpanAlertaModoHomo.Create.Mostrar(FrmPri);
  end else
    if Assigned(panAlertaModoHomo) then
      panAlertaModoHomo.Free;
end;

end.
