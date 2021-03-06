unit ncaFrmConfigFid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ncaFrmBaseOpcaoImgTxtCheckBox, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxTextEdit,
  cxCurrencyEdit, StdCtrls, cxButtons, cxLabel, cxCheckBox, dxGDIPlusClasses,
  ExtCtrls, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxDBEdit, cxMaskEdit, cxSpinEdit, cxGroupBox;

type
  TFrmConfigFid = class(TFrmBaseOpcaoImgTxtCheckBox)
    cbProdutos: TcxGroupBox;
    cbFidParcial: TcxCheckBox;
    panPremium: TLMDSimplePanel;
    Image1: TImage;
    cxLabel3: TcxLabel;
    LMDSimplePanel2: TLMDSimplePanel;
    lbPontos: TcxLabel;
    edFidVendasPontos: TcxSpinEdit;
    lbAcumular: TcxLabel;
    LMDSimplePanel3: TLMDSimplePanel;
    lbGastos: TcxLabel;
    edFidVendasValor: TcxCurrencyEdit;
    lbACada: TcxLabel;
    cbPremio: TcxGroupBox;
    cbAutoPremiar: TcxCheckBox;
    LMDSimplePanel4: TLMDSimplePanel;
    lbAutoPremiarPontos2: TcxLabel;
    edAutoPremiarPontos: TcxSpinEdit;
    lbAutoPremiarPontos: TcxLabel;
    LMDSimplePanel5: TLMDSimplePanel;
    edAutoPremiarValor: TcxCurrencyEdit;
    lbAutoPremiarValor: TcxLabel;
    procedure panPremiumClick(Sender: TObject);
    procedure CBClick(Sender: TObject);
    procedure cbAutoPremiarClick(Sender: TObject);
  private
    { Private declarations }

    procedure EnableDisable;
  public

    procedure Ler; override;
    procedure Salvar; override;
    function Alterou: Boolean; override;

    procedure Renumera; override;
    function NumItens: Integer; override;
  
    { Public declarations }
  end;

var
  FrmConfigFid: TFrmConfigFid;

implementation

uses ncaFrmPri, ncaDM, ncClassesBase;

{$R *.dfm}

resourcestring
  SInformarPontos = '� necess�rio informar a quantidade de pontos';
  SInformarValor  = '� necess�rio informar o valor';

{ TFrmBaseOpcaoImgTxtCheckBox1 }

function TFrmConfigFid.Alterou: Boolean;
begin
  Result := True;
  if CB.Checked <> gConfig.FidAtivo then Exit;
  if edFidVendasPontos.Value <> gConfig.FidVendaPontos then Exit;
  if edFidVendasValor.Value <> gConfig.FidVendaValor then Exit;
  if cbFidParcial.Checked <> gConfig.FidParcial then Exit;
  if cbAutoPremiar.Checked <> gConfig.FidAutoPremiar then Exit;
  if edAutoPremiarPontos.Value <> gConfig.FidAutoPremiarPontos then Exit;
  if edAutoPremiarValor.Value <> gConfig.FidAutoPremiarValor then Exit;
  Result := False;
end;

procedure TFrmConfigFid.cbAutoPremiarClick(Sender: TObject);
begin
  inherited;
  EnableDisable;
  if cbAutoPremiar.Focused and cbAutoPremiar.Enabled then edAutoPremiarPontos.SetFocus;
end;

procedure TFrmConfigFid.CBClick(Sender: TObject);
begin
  inherited;
  EnableDisable;
  if CB.Focused and CB.Checked then
    edFidVendasPontos.SetFocus;
end;

procedure TFrmConfigFid.EnableDisable;
begin
  lbAcumular.Enabled := CB.Checked and CB.Enabled;
  edFidVendasPontos.Enabled := lbAcumular.Enabled;
  lbPontos.Enabled := lbAcumular.Enabled;
  lbAcada.Enabled := lbAcumular.Enabled;
  edFidVendasValor.Enabled := lbAcumular.Enabled;
  lbGastos.Enabled := lbAcumular.Enabled;
  cbFidParcial.Enabled := lbAcumular.Enabled;
  cbProdutos.Enabled := lbAcumular.Enabled;

  cbPremio.Enabled := lbAcumular.Enabled;
  cbAutoPremiar.Enabled := lbAcumular.Enabled;
  lbAutoPremiarPontos.Enabled := lbAcumular.Enabled and cbAutoPremiar.Checked;
  edAutoPremiarPontos.Enabled := lbAutoPremiarPontos.Enabled;
  lbAutoPremiarPontos2.Enabled := lbAutoPremiarPontos.Enabled;
  lbAutoPremiarValor.Enabled := lbAutoPremiarPontos.Enabled;
  edAutoPremiarValor.Enabled := lbAutoPremiarPontos.Enabled;
end;

procedure TFrmConfigFid.Ler;
begin
  inherited;
  panPremium.Visible := not gConfig.IsPremium;
  CB.Enabled := gConfig.IsPremium or gConfig.FidAtivo;
  CB.Checked := gConfig.FidAtivo;
  edFidVendasPontos.Value := gConfig.FidVendaPontos;
  edFidVendasValor.Value := gConfig.FidVendaValor;
  cbFidParcial.Checked := gConfig.FidParcial;
  cbAutoPremiar.Checked := gConfig.FidAutoPremiar;
  edAutoPremiarPontos.Value := gConfig.FidAutoPremiarPontos;
  edAutoPremiarValor.Value := gConfig.FidAutoPremiarValor;
  EnableDisable;
end;

function TFrmConfigFid.NumItens: Integer;
begin
  Result := 7;
end;

procedure TFrmConfigFid.panPremiumClick(Sender: TObject);
begin
  inherited;
  OpenPremium('fidelidade');
end;

procedure TFrmConfigFid.Renumera;
begin
  inherited;
  CB.Caption := IntToStr(InicioNumItem)+'. '+CB.Caption;
  lbAcada.Caption := IntToStr(InicioNumItem+2)+lbACada.Caption;
  lbAcumular.Caption := IntToStr(InicioNumItem+1)+lbAcumular.Caption;
  cbFidParcial.Caption := IntToStr(InicioNumItem+3)+cbFidParcial.Caption;
  RenumCB(cbAutoPremiar, 4);
  RenumLB(lbAutoPremiarPontos, 5);
  RenumLB(lbAutoPremiarValor, 6);
end;

procedure TFrmConfigFid.Salvar;
begin
  inherited;

  if CB.Checked then begin;
    if VarIsNull(edFidVendasPontos.Value) or (edFidVendasPontos.Value<0.01) then begin
      edFidVendasPontos.SetFocus;
      raise Exception.Create(SInformarPontos);
    end;

    if edFidVendasValor.Value<0.01 then begin
      edFidVendasValor.SetFocus;
      raise Exception.Create(SInformarValor);
    end;
  end;
  gConfig.FidAtivo := CB.Checked;
  gConfig.FidVendaPontos := edFidVendasPontos.Value;
  gConfig.FidVendaValor := edFidVendasValor.Value;
  gConfig.FidParcial := cbFidParcial.Checked;
  gConfig.FidAutoPremiar := cbAutoPremiar.Checked;
  gConfig.FidAutoPremiarPontos := edAutoPremiarPontos.Value;
  gConfig.FidAutoPremiarValor := edAutoPremiarValor.Value;
end;

end.
