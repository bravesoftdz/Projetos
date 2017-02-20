unit ncaFrmConfig_ExigirVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncaFrmBaseOpcaoImgTxtCheckBox,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, cxCheckBox,
  dxGDIPlusClasses, Vcl.ExtCtrls, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel;

type
  TFrmConfig_ExigirVendedor = class(TFrmBaseOpcaoImgTxtCheckBox)
  private
    { Private declarations }
  public
    procedure Ler; override;
    procedure Salvar; override;
    function Alterou: Boolean; override;
  
    { Public declarations }
  end;

var
  FrmConfig_ExigirVendedor: TFrmConfig_ExigirVendedor;

implementation

{$R *.dfm}

uses ncClassesBase;

{ TFrmConfig_ExigirVendedor }

function TFrmConfig_ExigirVendedor.Alterou: Boolean;
begin
  Result := (gConfig.ExigirVendedor <> CB.Checked);
end;

procedure TFrmConfig_ExigirVendedor.Ler;
begin
  inherited;
  CB.Checked := gConfig.ExigirVendedor;
end;

procedure TFrmConfig_ExigirVendedor.Salvar;
begin
  inherited;
  gConfig.ExigirVendedor := CB.Checked;
end;

end.
