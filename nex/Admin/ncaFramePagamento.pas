unit ncaFramePagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, LMDGraph, cxPCdxBarPopupMenu, cxPC, ncEspecie,
  Menus, StdCtrls, cxButtons;

type
  TFramePagamento = class(TFrame)
    panPri: TLMDSimplePanel;
    panValores: TLMDSimplePanel;
  private
    { Private declarations }
    FOnClicouPagamento : TNotifyEvent;
    procedure _OnClicouPag(Sender: TObject);
  public
    procedure Clear;
    procedure Add(aPrompt: String; aValor: Currency; aCorFonte, aCor: TColor; aHeight: Byte; aTraco: Boolean; aBold: Boolean=False);
    procedure Load(aPagEsp: TncPagEspecies; aTotal, aDesconto, aTax_Incluir, aFrete, aTroco, aCredUsado, aCreditado, aDebitado: Currency);

    property OnClicouPagamento: TNotifyEvent
      read FOnClicouPagamento write FOnClicouPagamento;
    { Public declarations }
  end;

implementation

uses ncClassesBase, uNexTransResourceStrings_PT;

{$R *.dfm}

resourcestring
  rsSubTotal = 'Sub-Total';
  rsDesconto = 'Desconto';
  rsTaxas = 'Taxas';
  rsTxEntFrete = 'Tx.Ent/Frete';
  rsTotalPagar = 'Total à pagar';
  rsTroco = 'Troco';
  rsCredUsado = 'Crédito Usado';
  rsSalvarCred = 'Salvar crédito em conta';
  rsEditarPag = 'Editar Pagamento (F2)';
  rsDebitado = 'Debitado';

{ TFrame1 }

procedure TFramePagamento.Add(aPrompt: String; aValor: Currency; aCorFonte, aCor: TColor; aHeight: Byte; aTraco: Boolean; aBold: Boolean = False);
var 
  P : TLMDSimplePanel;
  L : TcxLabel;
begin
  P := TLMDSimplePanel.Create(panValores);
  P.Height := aHeight;
  P.Color := aCor;
  
  if aTraco then begin
    P.Bevel.Mode := bmEdge;
    P.Bevel.EdgeStyle := etEtched;
    P.Bevel.BorderSides := [fsBottom];
  end;
  P.Align := alTop;
  P.Parent := panValores;
  P.Top := (panValores.ComponentCount-1) * 40;
  P.Margins.Top := 0;
  P.Margins.Left := 0;
  P.Margins.Right := 0;
  P.Margins.Bottom := 1;
  P.AlignWithMargins := True;
  
  
  L := TcxLabel.Create(panValores);
  L.Parent := P;
  L.Align := alClient;
  L.Properties.Alignment.Vert := taVCenter;
  L.Caption := aPrompt;
  if aBold then
    L.Style.TextColor := aCorFonte;

  L := TcxLabel.Create(panValores);
  L.Parent := P;
  L.Align := alRight;
  L.Properties.Alignment.Vert := taVCenter;
  L.Caption := CurrencyToStr(aValor);
  L.Style.TextColor := aCorFonte;
  if aBold then
    L.Style.TextStyle := [fsBold];

end;

procedure TFramePagamento.Clear;
begin
  while panValores.ComponentCount>0 do panValores.Components[0].Free;
end;

procedure TFramePagamento.Load(aPagEsp: TncPagEspecies; aTotal,
  aDesconto, aTax_Incluir, aFrete, aTroco, aCredUsado, aCreditado, aDebitado: Currency);
var
  I: Integer;  
  B: TcxButton;
begin
  LockWindowUpdate(panPri.Handle);
  try
    Clear;
  
    if (aDesconto>0) or (atax_Incluir>0) or (aFrete>0) then 
      Add(rsSubTotal, aTotal, clBlack, clBtnFace, 30, False);
      
    if aDesconto>0 then
      Add(rsDesconto, aDesconto*-1, clRed, clBtnFace, 30, False);
    
    if aTax_Incluir>0 then 
      Add(rsTaxas, aTax_Incluir, clBlack, clBtnFace, 30, False);
    if aFrete>0 then
      Add(rsTxEntFrete, aFrete, clBlack, clBtnFace, 30, False);
        
    Add(rsTotalPagar, aTotal-aDesconto+aTax_Incluir+aFrete, clAzulNEX, clBtnFace, 30, False, True);

    if aCredUsado>0 then
      Add(rsCredUsado, aCredUsado, clGreen, clBtnFace, 30, False);
    
    for i := 0 to aPagEsp.Count - 1 do
    with aPagEsp.Items[i] do 
      Add(Nome, peValor, clBlack, clBtnFace, 30, False, True);

    if aTroco>0 then
      Add(rsTroco, aTroco, clGreen, clBtnFace, 30, False, True);

    if aPagEsp.Credito>0 then
      Add(rsSalvarCred, aPagEsp.Credito, clGreen, clBtnFace, 30, False, True);

    if aDebitado>0 then
      Add(rsDebitado, aDebitado, clRed, clBtnFace, 30, False, True);
      

    with TcxButton.Create(panValores) do begin
      Parent := panValores;
      Align := alTop;
      LookAndFeel.Kind := lfFlat;
      LookAndFeel.NativeStyle := False;
      Top := 1000;
      Margins.Top := 1;
      Margins.Left := 0;
      Margins.Right := 0;
      margins.Bottom := 0;
      Caption := rsEditarPag;
      Font.Name := 'Segoe UI Semibold';
      Font.Size := 10;
      Font.Style := [];
      OnClick := OnClicouPagamento;
    end; 
    Visible := False;
    Visible := True;
    Repaint; 

    
      
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TFramePagamento._OnClicouPag(Sender: TObject);
begin
  if Assigned(FOnClicouPagamento) then
    FOnClicouPagamento(Self);
end;

end.
