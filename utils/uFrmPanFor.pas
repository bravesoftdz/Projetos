unit uFrmPanFor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, 
  Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxLabel, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, cxButtonEdit, cxDBEdit;

type
  TMostrarApagar= function (Sender: TObject): Boolean of object;
  
  TFrmPanFor = class(TForm)
    panPri: TLMDSimplePanel;
    lbDe: TcxLabel;
    edFor: TcxButtonEdit;
    edRef: TcxMaskEdit;
    lbAte: TcxLabel;
    btnApagar: TcxButton;
    procedure btnApagarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edForEnter(Sender: TObject);
    procedure edForExit(Sender: TObject);
    procedure edRefEnter(Sender: TObject);
    procedure edRefExit(Sender: TObject);
    procedure panPriClick(Sender: TObject);
    procedure edIPropertiesChange(Sender: TObject);
    procedure edFPropertiesChange(Sender: TObject);
    procedure edIPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FMostrarApagar: TMostrarApagar;
    FOnAlterouInicio : TNotifyEvent;
    function _MostrarApagar: Boolean;
    function GetInicio: variant;
    procedure SetInicio(const Value: variant);
    function GetFim: variant;
    procedure SetFim(const Value: variant);
  public
    procedure Habilitar(aEnabled: Boolean);
    property MostrarApagar: TMostrarApagar
      read FMostrarApagar write FMostrarApagar;

    property OnAlterouInicio  : TNotifyEvent
      read FOnAlterouInicio write FOnAlterouInicio;

    property Inicio: variant
      read GetInicio write SetInicio;

    property Fim: variant
      read GetFim write SetFim; 

    function Valido: Boolean;

    function MaiorQueZero: Boolean;  
  
    { Public declarations }
  end;

var
  FrmPanFor: TFrmPanFor;

implementation

{$R *.dfm}

procedure TFrmPanFor.btnApagarClick(Sender: TObject);
begin
  Free;
end;

procedure TFrmPanFor.edRefEnter(Sender: TObject);
begin
  btnApagar.Visible := _MostrarApagar;
  panPri.Color := $00F0F0F0;
end;

procedure TFrmPanFor.edRefExit(Sender: TObject);
begin
  btnApagar.Visible := edI.Focused and _MostrarApagar;
  if not edI.Focused then panPri.Color := clWhite;

end;

procedure TFrmPanFor.edFPropertiesChange(Sender: TObject);
begin
  edF.PostEditValue;
end;

procedure TFrmPanFor.edForEnter(Sender: TObject);
begin
  btnApagar.Visible := _MostrarApagar;
  panPri.Color := $00F0F0F0;
end;

procedure TFrmPanFor.edForExit(Sender: TObject);
begin
  btnApagar.Visible := edF.Focused and _MostrarApagar;
  if not edF.Focused then panPri.Color := clWhite;
  
end;

procedure TFrmPanFor.edIPropertiesChange(Sender: TObject);
begin
  edI.PostEditValue;
end;

procedure TFrmPanFor.edIPropertiesEditValueChanged(Sender: TObject);
begin
  try FOnAlterouInicio(Self); except end;
end;

procedure TFrmPanFor.FormCreate(Sender: TObject);
begin
  FMostrarApagar := nil;
end;

function TFrmPanFor.GetFim: variant;
begin
  if edF.EditValue=null then
    Result := 0
  else
    try
      Result := edF.EditValue
    except
      Result := 0;
    end;
end;

function TFrmPanFor.GetInicio: variant;
begin
  if edI.EditValue=null then
    Result := 0
  else
    try
      Result := edI.EditValue
    except
      Result := 0;
    end;
end;

procedure TFrmPanFor.Habilitar(aEnabled: Boolean);
begin
  edI.Enabled := aEnabled;
  edF.Enabled := aEnabled;
  lbDe.Enabled := aEnabled;
  lbAte.Enabled := aEnabled;
  btnApagar.Enabled := aEnabled;
end;

function TFrmPanFor.MaiorQueZero: Boolean;
begin
  Result := (Inicio>0) or (Fim>0);
end;

procedure TFrmPanFor.panPriClick(Sender: TObject);
begin
  edI.SetFocus;
end;

procedure TFrmPanFor.SetFim(const Value: variant);
begin
  edF.EditValue := Value;
end;

procedure TFrmPanFor.SetInicio(const Value: variant);
begin
  edI.EditValue := Value;
end;

function TFrmPanFor.Valido: Boolean;
begin
  Result := (Fim>=Inicio);
end;

function TFrmPanFor._MostrarApagar: Boolean;
begin
  Result := FMostrarApagar(Self);
end;

end.
