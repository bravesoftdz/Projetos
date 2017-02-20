unit ncaFrmUpgradePremium;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TFrmUpgradePremium = class(TForm)
    cxLabel1: TcxLabel;
    LMDSimplePanel1: TLMDSimplePanel;
    LMDSimplePanel2: TLMDSimplePanel;
    cxLabel2: TcxLabel;
    lbData: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    LMDSimplePanel3: TLMDSimplePanel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    btnSalvar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLabel6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUpgradePremium: TFrmUpgradePremium;

implementation

{$R *.dfm}

uses ncaFrmPri, ncClassesBase, ncaDM;

procedure TFrmUpgradePremium.cxLabel6Click(Sender: TObject);
begin
  OpenTrack('planos', 'upgradepremium');
end;

procedure TFrmUpgradePremium.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
