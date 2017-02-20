unit ncaFrmConfigPosVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ncaFrmBaseOpcaoImgTxtCheckBox, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Menus, StdCtrls,
  cxRadioGroup, cxButtons, cxLabel, cxCheckBox, PngImage, ExtCtrls, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  frxClass;

type
  TFrmConfigPosVenda = class(TFrmBaseOpcaoImgTxtCheckBox)
    rgNada: TcxRadioButton;
    rgOk: TcxRadioButton;
    rgNovaVenda: TcxRadioButton;
    procedure CBClick(Sender: TObject);
  private
    function GetBtnDef: Byte;
    procedure SetBtnDef(const Value: Byte);
    { Private declarations }
  public

    procedure Ler; override;
    procedure Salvar; override;
    function Alterou: Boolean; override;
    procedure Renumera; override;
    function NumItens: Integer; override;
      
    procedure EnableDisable;

    property BtnDef: Byte
      read GetBtnDef write SetBtnDef;
    { Public declarations }
  end;

var
  FrmConfigPosVenda: TFrmConfigPosVenda;

implementation

uses ncClassesBase;

{$R *.dfm}

{ TFrmConfigPosVenda }

function TFrmConfigPosVenda.Alterou: Boolean;
begin
  Result := (CB.Checked <> gConfig.TelaPosVenda_Mostrar) or (BtnDef <> gConfig.TelaPosVenda_BtnDef);
end;

procedure TFrmConfigPosVenda.CBClick(Sender: TObject);
begin
  inherited;
  EnableDisable;
end;

procedure TFrmConfigPosVenda.EnableDisable;
begin
  rgNovaVenda.Enabled := CB.Checked;
  rgOk.Enabled := CB.Checked;
  rgNada.Enabled := CB.Checked;
end;

function TFrmConfigPosVenda.GetBtnDef: Byte;
begin
  if rgNovaVenda.Checked then
    Result := 1
  else
  if rgOk.Checked then
    Result := 2
  else
    Result := 0;
end;

procedure TFrmConfigPosVenda.Ler;
begin
  inherited;
  CB.Checked := gConfig.TelaPosVenda_Mostrar;
  BtnDef := gConfig.TelaPosVenda_BtnDef;
  EnableDisable;
end;

function TFrmConfigPosVenda.NumItens: Integer;
begin
  Result := 4;
end;

procedure TFrmConfigPosVenda.Renumera;
begin
  inherited;
  RenumRB(rgNovaVenda, 1);
  RenumRB(rgOk, 2);
  RenumRB(rgNada, 3);
end;

procedure TFrmConfigPosVenda.Salvar;
begin
  inherited;
  gConfig.TelaPosVenda_Mostrar := CB.Checked;
  gConfig.TelaPosVenda_BtnDef := BtnDef;
end;

procedure TFrmConfigPosVenda.SetBtnDef(const Value: Byte);
begin
  case Value of
    1 : rgNovaVenda.Checked := True;
    2 : rgOk.Checked := True;
  else
    rgNada.Checked := True;
  end;
end;

end.
