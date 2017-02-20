unit ncaFrmTrocoMax;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel;

type
  TFrmTrocoMax = class(TForm)
    cxLabel1: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    btnSalvar: TcxButton;
    cxLabel2: TcxLabel;
    lbTroco: TcxLabel;
    lbMax: TcxLabel;
    lbConfig: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure lbConfigClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    sTroco, sMax : String;
    FTroco : Currency;
    { Public declarations }
    procedure Mostrar(aTroco: Currency);

    class function TrocoOk(aTroco: Currency): Boolean;
  end;

var
  FrmTrocoMax: TFrmTrocoMax;

implementation

{$R *.dfm}

uses ncClassesBase, ncaFrmConfigEspecies, ncaDM, ncaFrmPri;

procedure TFrmTrocoMax.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTrocoMax.FormCreate(Sender: TObject);
begin
  sTroco := lbTroco.Caption;
  sMax := lbMax.Caption;
end;

procedure TFrmTrocoMax.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_F2,
    Key_Esc   : Close;
  end;
end;

procedure TFrmTrocoMax.lbConfigClick(Sender: TObject);
begin
  TFrmConfigEspecies.Create(Self).Mostrar(False, True);
  lbMax.Caption := sMax+': '+CurrencyToStr(gConfig.TrocoMax);
  if gConfig.TrocoMax>=FTroco then Close;
end;

procedure TFrmTrocoMax.Mostrar(aTroco: Currency);
begin
  FTroco := aTroco;
  lbTroco.Caption := sTroco+': '+CurrencyToStr(aTroco);
  lbMax.Caption := sMax+': '+CurrencyToStr(gConfig.TrocoMax);
  ShowModal;
end;

class function TFrmTrocoMax.TrocoOk(aTroco: Currency): Boolean;
begin
  Result := (aTroco<=gConfig.TrocoMax);
  if not Result then begin
    with TFrmTrocoMax.Create(nil) do 
      Mostrar(aTroco);
    Result := (aTroco<=gConfig.TrocoMax);
  end;
end;

end.
