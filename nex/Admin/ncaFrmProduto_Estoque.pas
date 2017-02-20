unit ncaFrmProduto_Estoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxCheckBox, cxLabel, cxTextEdit, cxCurrencyEdit,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, LMDGraph, cxClasses;

type
  TFrmProd_Estoque = class(TForm)
    panPri: TLMDSimplePanel;
    lbLimites2: TcxLabel;
    edMin: TcxCurrencyEdit;
    escFlat: TcxEditStyleController;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edMax: TcxCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure edMinKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edMaxKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edMinPropertiesChange(Sender: TObject);
    procedure edMaxPropertiesChange(Sender: TObject);
    procedure edAtualPropertiesEditValueChanged(Sender: TObject);
    procedure edMaxKeyPress(Sender: TObject; var Key: Char);
  private
    FOnFocusNext: TNotifyEvent;
    FOnChange: TNotifyEvent;
    Finiciando: Boolean;
    
    procedure AtualizaTela;
    procedure CheckESC(var aKey: Word);
    { Private declarations }
  public
  
    procedure InitData(aMin, aMax: Double);

    procedure FocusFirst;

    function Minimo: Double;

    function Maximo: Double;

    property OnFocusNext: TNotifyEvent
      read FOnFocusNext write FOnFocusNext;

    property OnChange: TNotifyEvent
      read FOnChange write FOnChange;  
    { Public declarations }
  end;

var
  FrmProd_Estoque: TFrmProd_Estoque;

implementation

uses ncaFrmPri, ncaDM, ncIDRecursos, ncaFrmProduto;

{$R *.dfm}

{ TFrmProduto_Estoque }

procedure TFrmProd_Estoque.AtualizaTela;
begin

end;

procedure TFrmProd_Estoque.CheckESC(var aKey: Word);
begin
  if aKey = Key_ESC then begin
    aKey := 0;
    TFrmProduto(Owner).edLimites.DroppedDown := False;
  end;
  if aKey = Key_F2 then begin
    aKey := 0;
    TFrmProduto(Owner).TentaGravar;
  end;
end;

procedure TFrmProd_Estoque.edAtualPropertiesEditValueChanged(Sender: TObject);
begin
  if FIniciando then Exit;
  FOnChange(Self);
end;

procedure TFrmProd_Estoque.edMaxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  CheckEsc(Key);
  if Key=13 then 
    FOnFocusNext(Sender);
end;

procedure TFrmProd_Estoque.edMaxKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then Key := #0;
end;

procedure TFrmProd_Estoque.edMaxPropertiesChange(Sender: TObject);
begin
  edMax.PostEditValue;
end;

procedure TFrmProd_Estoque.edMinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  CheckEsc(Key);
  if Key=13 then
    edMax.SetFocus;
end;

procedure TFrmProd_Estoque.edMinPropertiesChange(Sender: TObject);
begin
  edMin.PostEditValue;
end;

procedure TFrmProd_Estoque.FocusFirst;
begin
  edMin.SetFocus;
end;

procedure TFrmProd_Estoque.FormCreate(Sender: TObject);
begin
  FIniciando := False;
end;

procedure TFrmProd_Estoque.InitData(aMin,
  aMax: Double);
begin
  FIniciando := True;
  try
    edMin.Value := aMin;
    edMax.Value := aMax;
    AtualizaTela;
  finally
    FIniciando := False;
  end;
end;

function TFrmProd_Estoque.Maximo: Double;
begin
  if edMax.EditValue=null then
    Result := 0 else
    Result := edMax.EditValue;
end;

function TFrmProd_Estoque.Minimo: Double;
begin
  if edMin.EditValue=null then
    Result := 0 else
    Result := edMin.EditValue;
end;

end.
