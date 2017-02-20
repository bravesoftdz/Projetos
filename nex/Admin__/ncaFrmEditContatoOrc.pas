unit ncaFrmEditContatoOrc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ncaFrmEditContatoPeq, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, ImgList, ncMyImage, cxLabel,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel;

type
  TFrmEditContatoOrc = class(TFrmEditContatoPeq)
  private
    { Private declarations }
  protected
    procedure Atualiza; override;
  public
    { Public declarations }
  end;

var
  FrmEditContatoOrc: TFrmEditContatoOrc;

implementation

{$R *.dfm}

{ TFrmEditContatoPeq2 }

procedure TFrmEditContatoOrc.Atualiza;
begin
  inherited;
  lbNome.Style.Font.Size := 10;
end;

end.
