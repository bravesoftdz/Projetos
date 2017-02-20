unit ncaProgressoDepend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncaPanBaseAlertaTopo, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxProgressBar, LMDPNGImage, cxLabel, dxGDIPlusClasses, Vcl.ExtCtrls,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, ieview, iemview;

type
  TpanProgressoDepend = class(TpanAlertaTopo)
    PB: TcxProgressBar;
    Img2: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure Atualiza(aEtapa, aProgresso : Byte; aErro : Integer; aErroStr: String);
  end;

var
  panProgressoDepend: TpanProgressoDepend = nil;

implementation

{$R *.dfm}

uses ncaFrmPri;

{ TpanProgressoDepend }

class procedure TpanProgressoDepend.Atualiza(aEtapa: Byte; aProgresso: Byte;
  aErro: Integer; aErroStr: String);
begin

  if (aErro>0) or (aEtapa=4) then begin
    if Assigned(panProgressoDepend) then FreeAndNil(panProgressoDepend);
  end else begin
    if not Assigned(panProgressoDepend) then begin
      panProgressoDepend := TpanProgressoDepend.Create(FrmPri);
      panProgressoDepend.Mostrar(FrmPri);
    end;  
    panProgressoDepend.lbMensagem.Caption := aErroStr;
    panProgressoDepend.PB.Position := aProgresso;
    with panProgressoDepend do
    if aEtapa=3 then begin
      img.Visible := False;
      img2.Visible := True;
      Img2.Left := 0;
      PB.Visible := False;
    end;  
  end;
end;

end.
