unit ncaAlertaRecuperarVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ncaPanBaseAlertaTopo, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, LMDPNGImage, ExtCtrls,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, Menus, StdCtrls, cxButtons;

type
  TpanAlertaRecuperarVenda = class(TpanAlertaTopo)
    btnFechar: TcxButton;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  panAlertaRecuperarVenda: TpanAlertaRecuperarVenda;

implementation

{$R *.dfm}

procedure TpanAlertaRecuperarVenda.btnFecharClick(Sender: TObject);
begin
  inherited;
  Free;
end;

end.
