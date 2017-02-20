unit ncaFrmOnTrial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, LMDBaseControl, LMDBaseGraphicControl, LMDGraphicControl,
  LMDHTMLLabel, cxLabel, StdCtrls, cxButtons, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDTypes, LMDSimplePanel;

type
  TFrmOnTrial = class(TForm)
    LMDSimplePanel3: TLMDSimplePanel;
    btnOk: TcxButton;
    LMDSimplePanel2: TLMDSimplePanel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    lbPrazo: TcxLabel;
    lbPrazo2: TLMDHTMLLabel;
    lbFree: TLMDHTMLLabel;
    cxLabel2: TcxLabel;
    lbDuvidas: TLMDHTMLLabel;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbPrazo2LinkClick(Sender: TObject; HRef: TLMDString);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOnTrial: TFrmOnTrial;

implementation

uses ncClassesBase, ncaDM;

resourcestring
  rsEm = 'em';
  rsHoje = 'Hoje';
  rsAmanha = 'Amanhã';

{$R *.dfm}

procedure TFrmOnTrial.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmOnTrial.FormCreate(Sender: TObject);     
var S: String;
begin
  if gConfig.Pro then
    S := 'PRO' else
    S := 'PREMIUM';

  lbPrazo.Caption := Format(lbPrazo.Caption, [S]);
  lbPrazo2.Caption := Format(lbPrazo2.Caption, [S]);
  lbFree.Caption := Format(lbFree.Caption, [S]);

  if gConfig.DataLic=Date then
    lbPrazo.Caption := lbPrazo.Caption + ' '+rsHoje+'.' 
  else
  if gConfig.DataLic=(Date-1) then
    lbPrazo.Caption := lbPrazo.Caption + ' '+rsAmanha+'.' 
  else
    lbPrazo.Caption := lbPrazo.Caption + ' '+rsEm+' '+FormatDateTime(FormatSettings.ShortDateFormat, gConfig.DataLic)+'.';
  
end;

procedure TFrmOnTrial.lbPrazo2LinkClick(Sender: TObject; HRef: TLMDString);
begin
  OpenTrack(HREF, 'TFrmOnTrial');
end;

end.
