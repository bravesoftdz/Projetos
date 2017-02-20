unit ncaAlertaNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncaPanBaseAlertaTopo, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  LMDPNGImage, cxLabel, dxGDIPlusClasses, Vcl.ExtCtrls, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TpanAlertaTopo2 = class(TpanAlertaTopo)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    btnFechar: TcxButton;
    Timer1: TTimer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  panAlertaTopo2: TpanAlertaTopo2;

implementation

{$R *.dfm}

end.
