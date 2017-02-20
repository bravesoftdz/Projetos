unit ncaFrmListaFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, LMDControl, ncaFrmPanFor,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  ExtCtrls, cxControls, cxContainer, cxEdit, cxLabel, LMDCustomComponent,
  LMDWndProcComponent, LMDFlyoutController, LMDFlowPanel, cxClasses;

type
  TFornecedor = record
    foID : Integer;
    foRef : String;
  end;

  TArrayFornecedor = Array of TFornecedor;

  TFrmListaFornecedores = class(TForm)
    panPri: TLMDSimplePanel;
    panItens: TLMDSimplePanel;
    Timer1: TTimer;
    lbAdd: TcxLabel;
    Fly: TLMDFlyoutController;
    cxEditStyleController1: TcxEditStyleController;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbAddClick(Sender: TObject);
  private
    { Private declarations }
    FItens : TList;
    FOrig  : TList;
    FDestroying: Boolean;
    FHabilitar: Boolean;
    FStyle : TcxEditStyleController;
    FPadrao : Integer;
    FOnGetMinWidth : TGetMinWidth;
    procedure CalcHeight;
    procedure OnDestroyItem(Sender: TObject);
    function MostrarApagar(Sender: TObject): Boolean;
    function GetFornecedor(aIndex: Integer): TFrmPanFor;

    function MesmoFor(aIndex, aFor: Integer): Boolean;
    procedure SetPadrao(const Value: Integer);

    procedure PadraoQuant(out aFornecedor: Integer; out aQuant: Integer);

    procedure OnSetPadrao(Sender: TObject);

    procedure OnChangeFornecedor(aOld, aNew: Integer);
    function FornecedorRepetido(aFor: TFrmPanFor; aNewFor: Integer): Boolean;

    function _OnGetMinWidth(Sender: TObject): Integer;

  public
    function Alterou: Boolean;

    procedure Update;
    
    function ValidaItem(aIndex: Integer; aRaiseException: Boolean): Boolean;

    function Valida(aRaiseException: Boolean = True): Boolean;
    
    function Add: TFrmPanFor;

    function Count: Integer;

    function IsFocused: Boolean;

    function FocusedFrm: TFrmPanFor;

    function AchaFor(aFor: Integer): Boolean;

    procedure Habilitar(aEnabled: Boolean);

    property Padrao: Integer
      read FPadrao write SetPadrao;

    property Style: TcxEditStyleController
      read FStyle write FStyle;

    property Fornecedores[aIndex: Integer]: TFrmPanFor
      read GetFornecedor;

    procedure Clear; 

    property OnGetMinWidth : TGetMinWidth read FOnGetMinWidth write FOnGetMinWidth;

    { Public declarations }
  end;

var
  FrmListaFornecedores: TFrmListaFornecedores;

implementation

{$R *.dfm}

{ TFrmFaixas }

resourcestring
  rsJaTemNovo = 'Antes de adicionar outro forncedor, termine de preencher o que está acima';

function TFrmListaFornecedores.Alterou: Boolean;
begin
  Result := True;
end;

procedure TFrmListaFornecedores.CalcHeight;
begin
  panItens.Height := FItens.Count*34;
  lbAdd.Top := panItens.Height+3;
{  if Count>0 then
    lbAdd.Left := Fornecedores[0].edFor.Left;}
end;

procedure TFrmListaFornecedores.Clear;
begin
  while FItens.Count>0 do 
    TObject(FItens[0]).Free;
end;

function TFrmListaFornecedores.MesmoFor(aIndex, aFor: Integer): Boolean;
var i: integer;
begin
  Result := True;
  for I := 0 to Count - 1 do with Fornecedores[I] do 
    if (I<>aIndex) and (Fornecedor=aFor) then begin
       edFor.SetFocus;
       Exit;
    end;
  Result := False;
end;

function TFrmListaFornecedores.Count: Integer;
begin
  Result := FItens.Count;
end;

function TFrmListaFornecedores.FocusedFrm: TFrmPanFor;
var I: Integer;
begin
  for I := 0 to Count-1 do if Fornecedores[I].IsFocused then begin
    Result := Fornecedores[I];
    Exit;
  end;
  Result := nil;
end;

procedure TFrmListaFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmListaFornecedores.FormCreate(Sender: TObject);
begin
  if Screen.Width<=1024 then lbAdd.Visible := False;
  
  FOnGetMinWidth := nil;
  FHabilitar := True;
  FStyle := nil;
  FItens := TList.Create;
  FDestroying := False;
//  SetLength(FOrig, 0);
  CalcHeight;
end;

procedure TFrmListaFornecedores.FormDestroy(Sender: TObject);
begin
  FDestroying := True;
  Clear;
  FItens.Free;
end;

function TFrmListaFornecedores.FornecedorRepetido(aFor: TFrmPanFor;
  aNewFor: Integer): Boolean;
var i: integer;  
begin
  Result := True;
  for I := 0 to Count-1 do
    if (Fornecedores[I]<>aFor) and (aNewFor=Fornecedores[I].Fornecedor) then Exit;
  Result := False;
end;

function TFrmListaFornecedores.GetFornecedor(aIndex: Integer): TFrmPanFor;
begin
  Result := TFrmPanFor(FItens[aIndex]);
end;

procedure TFrmListaFornecedores.Habilitar(aEnabled: Boolean);
var I: Integer;
begin
  FHabilitar := aEnabled;
  lbAdd.Enabled := aEnabled;
  for I := 0 to Count - 1 do Fornecedores[I].Habilitar(aEnabled);
end;

function TFrmListaFornecedores.IsFocused: Boolean;
var I: Integer;
begin
  Result := True;
  for I := 0 to Count-1 do if Fornecedores[I].IsFocused then Exit;
  Result := False;
end;

procedure TFrmListaFornecedores.lbAddClick(Sender: TObject);
begin
  if (Count>0) and (Fornecedores[Count-1].Fornecedor=0) then
    raise Exception.Create(rsJaTemNovo);

  with Add do begin
    edFor.SetFocus;
    Pesquisar;
  end;
end;

function TFrmListaFornecedores.MostrarApagar(Sender: TObject): Boolean;
begin
  Result := (FItens.Count>1);
end;

procedure TFrmListaFornecedores.OnChangeFornecedor(aOld, aNew: Integer);
begin
  if FPadrao=aOld then FPadrao := aNew;
end;

procedure TFrmListaFornecedores.OnDestroyItem(Sender: TObject);
var I : Integer;
begin
  I := FItens.IndexOf(Sender);
  FItens.Remove(Sender);
  if not FDestroying then begin
    while (I>0) and (I>=FItens.Count) do Dec(I);
    if I<FItens.Count then
      TFrmPanFor(FItens[I]).edFor.SetFocus;
    Timer1.Enabled := True;
    if (Count>0) and (TFrmPanFor(sender).Fornecedor=FPadrao) then SetPadrao(Fornecedores[0].Fornecedor);
    if Count=0 then begin
      SetPadrao(0);
      Add.edFor.SetFocus;
    end;
  end;
end;

procedure TFrmListaFornecedores.OnSetPadrao(Sender: TObject);
begin
  SetPadrao(TFrmPanFor(Sender).Fornecedor);
end;

procedure TFrmListaFornecedores.PadraoQuant(out aFornecedor, aQuant: Integer);
begin
  aFornecedor := FPadrao;
  aQuant := Count;
end;

procedure TFrmListaFornecedores.SetPadrao(const Value: Integer);
begin
  if Value=FPadrao then Exit;
  FPadrao := Value;
  Update;
end;

procedure TFrmListaFornecedores.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  CalcHeight;
end;

procedure TFrmListaFornecedores.Update;
var i: integer;
begin
  for I := 0 to Count-1 do
    Fornecedores[I].Update; 
end;

function TFrmListaFornecedores.Valida(aRaiseException: Boolean = True): Boolean;
var i, C: integer;
begin
  Result := False;
{  C := 0;
  for I := 0 to Count-1 do with Fornecedores[I] do 
    if not Valida then begin
      if not ValidaItem(I, aRaiseException) then Exit;
      Inc(C);
    end;}
  
  Result := True
end;

function TFrmListaFornecedores.ValidaItem(aIndex: Integer;
  aRaiseException: Boolean): Boolean;
var i: integer;
begin
  Result := False;
  i := aIndex;
  with Fornecedores[I] do begin
    if not Fornecedores[I].Valido then begin
      edFor.SetFocus;
{      if aRaiseException then
        raise exception.Create(SNumeroFinalDeveSerMaior);}
      Exit;  
    end;
  end;
  Result := True
end;

function TFrmListaFornecedores._OnGetMinWidth(Sender: TObject): Integer;
begin
  if Assigned(FOnGetMinWidth) then 
    Result := FOnGetMinWidth(Self) else
    Result := 0;
end;

function TFrmListaFornecedores.AchaFor(aFor: Integer): Boolean;
begin
  Result := FornecedorRepetido(nil, aFor);
end;

function TFrmListaFornecedores.Add: TFrmPanFor;
begin
  Result := TFrmPanFor.Create(Self);
  FItens.Add(Result);
  Result.OnFornecedorPadrao := PadraoQuant;
  Result.OnSetPadrao := OnSetPadrao;
  Result.OnChangeFornecedor := OnChangeFornecedor;
  Result.FornecedorRepetido := FornecedorRepetido;
  Result.OnGetMinWidth := _OnGetMinWidth;
  Result.OnDestroy := OnDestroyItem;
  Result.panPri.Parent := panItens;
  Result.panPri.Top := 10000;
  Result.edFor.Style.StyleController := FStyle;
  Result.edFor.Style.StyleController := FStyle;
  Result.Habilitar(FHabilitar);
  Result.Update;
  
  Timer1.Enabled := True;
end;

end.   
