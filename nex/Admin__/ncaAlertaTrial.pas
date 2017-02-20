unit ncaAlertaTrial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ncaPanBaseAlertaTopo, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, LMDPNGImage, ExtCtrls,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, Menus, StdCtrls, cxButtons, ncMyImage, dxGDIPlusClasses;

type
  TpanAlertaTrial = class(TpanAlertaTopo)
    lbSaibaMias: TcxLabel;
    imgFechar: TMyImage;
    lbInicio: TcxLabel;
    lbMeio: TcxLabel;
    procedure imgFecharClick(Sender: TObject);
    procedure lbSaibaMiasClick(Sender: TObject);
  protected
    procedure Prepara; override;
  public  

    class function Exibir(aParent: TWinControl): Boolean;
    { Private declarations }
    { Public declarations }
  end;

var
  panAlertaTrial: TpanAlertaTrial;

implementation

uses ufmImagens, ncClassesBase, ncaFrmOnTrial;

{$R *.dfm}

resourcestring
  rsAmanha = 'Amanhã';
  rsUltimo = ' é o último dia de testes do plano %s';
  rsHoje   = 'Hoje';

  rsDia = 'dia';
  rsDias = 'dias';

class function TpanAlertaTrial.Exibir(aParent: TWinControl): Boolean;
begin
  if gConfig.OnTrial and (gConfig.DataLic>=Date) and (gConfig.TrialDiasRestantes<8) then begin
    Result := False;
    TpanAlertaTrial.Create(aParent).Mostrar(aParent);
  end;
end;

procedure TpanAlertaTrial.imgFecharClick(Sender: TObject);
begin
  inherited;
  Free;
end;

procedure TpanAlertaTrial.lbSaibaMiasClick(Sender: TObject);
begin
  inherited;
  TFrmOnTrial.Create(nil).ShowModal;
end;

procedure TpanAlertaTrial.Prepara;
var Dias: Integer;
begin
  inherited;
  
  Dias := gConfig.TrialDiasRestantes;

  case Dias of
    0 : begin
      lbMeio.Caption := rsUltimo;
      lbInicio.Caption := rsHoje;
      lbMensagem.Visible := False;
      img.Visible := True;
      panPri.Color := $00BFFFFF;
    end;
    1 : begin
      lbMeio.Caption := rsUltimo;
      lbInicio.Caption := rsAmanha;
      lbMensagem.Visible := False;
      img.Visible := True;
      panPri.Color := $00BFFFFF;
    end;
  else
    lbInicio.Visible := False;
  end;
  
  if gConfig.Pro then
    lbMeio.Caption := Format(lbMeio.Caption, ['PRO']) else
    lbMeio.Caption := Format(lbMeio.Caption, ['PREMIUM']);

  if Dias>1 then
    lbMensagem.Caption := IntToStr(Dias) + ' ' + rsDias else
    lbMensagem.Caption := IntToStr(Dias) + ' ' + rsDia;
end;

end.
