unit ncaFrmConfig_TamCodigoAuto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncaFrmBaseOpcaoImgTxt, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, cxButtons,
  cxLabel, dxGDIPlusClasses, Vcl.ExtCtrls, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel;

type
  TFrmConfig_TamCodigoAuto = class(TFrmBaseOpcaoImgTxt)
    edDig: TcxSpinEdit;
    lbPromptDig: TcxLabel;
    lbPromptSufix: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Ler; override;
    procedure Salvar; override;
    function Alterou: Boolean; override;

    procedure Renumera; override;

    function NumItens: Integer; override;
  end;

var
  FrmConfig_TamCodigoAuto: TFrmConfig_TamCodigoAuto;

implementation

{$R *.dfm}

uses ncClassesBase, ncaDM, ncaStrings;

{ TFrmConfig_TamCodigoAuto }

function TFrmConfig_TamCodigoAuto.Alterou: Boolean;
begin
  Result := (gConfig.TamCodigoAuto <> edDig.Value);
end;

procedure TFrmConfig_TamCodigoAuto.Ler;
begin
  inherited;
  edDig.Value := gConfig.TamCodigoAuto;
end;

function TFrmConfig_TamCodigoAuto.NumItens: Integer;
begin
  Result := 1;
end;

procedure TFrmConfig_TamCodigoAuto.Renumera;
begin
  inherited;
  lbPromptDig.Caption := InicioNumItem.ToString+'. '+lbPromptDig.Caption;
end;

procedure TFrmConfig_TamCodigoAuto.Salvar;
var I : Integer;
begin
  I := StrToIntDef(edDig.EditingText, 0);
  if (I<2) or (I>6) then begin
    edDig.SetFocus;
    raise Exception.Create(rsTamCodMax6Dig);
  end;
  edDig.PostEditValue;
  gConfig.TamCodigoAuto := edDig.Value;
end;

end.
