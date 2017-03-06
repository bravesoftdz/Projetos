unit ncaFrmPanFor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, 
  Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxLabel, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, cxButtonEdit, cxDBEdit;

type
  TFrmPanFor = class;
  
  TFornecedorPadrao = procedure (out aFornecedor: Integer; out aQuant: Integer) of object;
  TOnChangeFornecedor = procedure (aOld, aNew: Integer) of object;
  TFornecedorRepetido = function (aFor: TFrmPanFor; aNewFor: Integer): Boolean of object;

  TGetMinWidth = function (sender: TObject): integer of object;  
  
  TFrmPanFor = class(TForm)
    panPri: TLMDSimplePanel;
    lbFor: TcxLabel;
    edFor: TcxButtonEdit;
    edRef: TcxTextEdit;
    lbRef: TcxLabel;
    btnApagar: TcxButton;
    lbPadrao: TcxLabel;
    lbSetPadrao: TcxLabel;
    procedure btnApagarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edForEnter(Sender: TObject);
    procedure edForExit(Sender: TObject);
    procedure edRefEnter(Sender: TObject);
    procedure edRefExit(Sender: TObject);
    procedure panPriClick(Sender: TObject);
    procedure edForPropertiesChange(Sender: TObject);
    procedure edForPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbSetPadraoClick(Sender: TObject);
    procedure lbForClick(Sender: TObject);
    procedure lbRefClick(Sender: TObject);
    procedure lbPadraoClick(Sender: TObject);
    procedure edRefKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FForA : Cardinal;
    FRefA : String;
    FFor  : Integer;
    FFornecedorPadrao : TFornecedorPadrao;
    FOnSetPadrao : TNotifyEvent;
    FOnChangeFornecedor : TOnChangeFornecedor;
    FFornecedorRepetido : TFornecedorRepetido;
    FOnGetMinWidth      : TGetMinWidth;
    FOnFocusNext  : TNotifyEvent;
    function GetRef: String;
    procedure SetFor(aFor: Cardinal);

  public
    procedure Update;

    function IsFocused: Boolean;
    
    procedure Habilitar(aEnabled: Boolean);

    procedure Pesquisar;

    procedure Clear;

    procedure Load(aFor: Cardinal; aRef: String);
    
    property Fornecedor: Integer
      read FFor;

    property Ref: String
      read GetRef;

    property OnFocusNext: TNotifyEvent
      read FOnFocusNext write FOnFocusNext;  

    property OnFornecedorPadrao: TFornecedorPadrao
      read FFornecedorPadrao write FFornecedorPadrao;  

    property OnSetPadrao: TNotifyEvent
      read FOnSetPadrao write FOnSetPadrao;  

    property OnChangeFornecedor: TOnChangeFornecedor
      read FOnChangeFornecedor write FOnChangeFornecedor;

    property FornecedorRepetido: TFornecedorRepetido
      read FFornecedorRepetido write FFornecedorRepetido;

    property OnGetMinWidth : TGetMinWidth
      read FOnGetMinWidth write FOnGetMinWidth;

    function Valido: Boolean;
    { Public declarations }
  end;

var
  FrmPanFor: TFrmPanFor;

implementation

{$R *.dfm}


uses ncaDM, ncaFrmPesqFor, ncaFrmPri, ncaStrings;

procedure TFrmPanFor.btnApagarClick(Sender: TObject);
begin
  Free;
end;

procedure TFrmPanFor.edRefEnter(Sender: TObject);
begin
  Update;
{  btnApagar.Visible := _MostrarApagar;
  panPri.Color := $00E6FBFB;}
end;

procedure TFrmPanFor.edRefExit(Sender: TObject);
begin
  Update;
{  btnApagar.Visible := edFor.Focused and _MostrarApagar;
  if not edFor.Focused then panPri.Color := clBtnFace;}
end;

procedure TFrmPanFor.edRefKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=13) and Assigned(FOnFocusNext) then
    FOnFocusNext(Self);
end;

procedure TFrmPanFor.Clear;
begin
  Load(0, '');
end;

procedure TFrmPanFor.edForEnter(Sender: TObject);
begin
  Update;
{  btnApagar.Visible := _MostrarApagar;
  panPri.Color := $00E6FBFB;}
end;

procedure TFrmPanFor.edForExit(Sender: TObject);
begin
  Update;
{  btnApagar.Visible := edRef.Focused and _MostrarApagar;
  if not edRef.Focused then panPri.Color := clBtnFace;}
end;

procedure TFrmPanFor.edForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=13) then edRef.SetFocus;
end;

procedure TFrmPanFor.edForPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Pesquisar;
end;

procedure TFrmPanFor.edForPropertiesChange(Sender: TObject);
begin
  edFor.PostEditValue;
end;              

procedure TFrmPanFor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPanFor.FormCreate(Sender: TObject);
begin
  FOnGetMinWidth := nil;
  FOnFocusNext := nil;
  
  if Screen.Width<=1024 then begin
    lbFor.Visible := False;
    lbRef.Caption := 'Ref.';
  end;
  
  FOnChangeFornecedor := nil;
  FFornecedorRepetido := nil;
  FFornecedorPadrao := nil;
  FOnSetPadrao := nil;
  Clear;
end;

function TFrmPanFor.GetRef: String;
begin
  Result := edRef.Text;
end;

procedure TFrmPanFor.Habilitar(aEnabled: Boolean);
begin
  edFor.Enabled := aEnabled;
  edRef.Enabled := aEnabled;
  lbFor.Enabled := aEnabled;
  lbRef.Enabled := aEnabled;
  btnApagar.Enabled := aEnabled;
end;

function TFrmPanFor.IsFocused: Boolean;
begin
  Result := edFor.Focused or edRef.Focused;
end;

procedure TFrmPanFor.lbForClick(Sender: TObject);
begin
  edFor.SetFocus;
end;

procedure TFrmPanFor.lbPadraoClick(Sender: TObject);
begin
  edFor.SetFocus;
end;

procedure TFrmPanFor.lbRefClick(Sender: TObject);
begin
  edRef.SetFocus;
end;

procedure TFrmPanFor.lbSetPadraoClick(Sender: TObject);
begin
  if Assigned(FOnSetPadrao) then
    FOnSetPadrao(Self);
end;

procedure TFrmPanFor.Load(aFor: Cardinal; aRef: String);
begin
  FForA := aFor;
  FRefA := aRef;
  SetFor(aFor);
  edRef.Text := aRef;
end;

procedure TFrmPanFor.panPriClick(Sender: TObject);
begin
  edFor.SetFocus;
end;

procedure TFrmPanFor.Pesquisar;
var   
  FPesq: TFrmPesqFor;
  aNome: String;
  FP : Double;
  Ant, newFor : Integer;
begin
    FPesq := gPesqForList.GetFrm;
    try
      aNome := edFor.Text;
      FP := 0;
      Ant := FFor;
      newFor := FFor;
      if FPesq.Pesquisar(newFor, aNome, FP) and (newFor<>Ant) then begin
        if Assigned(FFornecedorRepetido) and FFornecedorRepetido(Self, newFor) then
          raise Exception.Create(rsFornecedorRepetido);
        SetFor(newFor);
        edRef.SetFocus;
      end;
    finally
      gPesqForList.ReleaseFrm(FPesq);
    end;
end;

procedure TFrmPanFor.SetFor(aFor: Cardinal);
var aAnt: Integer;
begin
  with Dados do begin
    if aFor>0 then begin
      if tbCli.Locate('ID', aFor, []) then
        edFor.Text := tbCliNome.Value else
        edFor.Text := '';
    end else
      edFor.Text:= '';
    aAnt := FFor;
    FFor := aFor;
    if Assigned(FOnChangeFornecedor) then
      FOnChangeFornecedor(aAnt, FFor);
  end;
end;

procedure TFrmPanFor.Update;
var aFor, aQuant: Integer;
begin
  if Assigned(FFornecedorPadrao) then 
    FFornecedorPadrao(aFor, aQuant) 
  else begin
    aFor := 0;
    aQuant := 0;
  end;

  if Assigned(FOnGetMinWidth) then
    lbFor.Constraints.minWidth := FOnGetMinWidth(Self) else
    lbFor.Constraints.MinWidth := 0;

  lbPadrao.Visible := (aQuant>1) and (FFor>0) and (FFor=aFor);
  if edFor.Focused or edRef.Focused then begin
    panPri.Color := $00E6FBFB;
    lbFor.Caption := rsFornecedor+' (F5)';
    btnApagar.Visible := True;
    lbSetPadrao.Visible := (aQuant>1) and (FFor>0) and (FFor<>aFor);
  end else begin
    lbSetPadrao.Visible := False;
    lbFor.Caption := rsFornecedor;
    panPri.Color := clBtnFace;
    btnApagar.Visible := False;
  end;
end;

function TFrmPanFor.Valido: Boolean;
begin
  Result := (FFor>0);
end;

end. 




