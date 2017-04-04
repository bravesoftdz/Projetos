unit ncaFrmDadosItemOutrasEntradas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxLabel, cxTextEdit, cxClasses, dxLayoutControl,
  cxCurrencyEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxMaskEdit, cxButtonEdit, cxDBEdit, ncaFrmPesqCFOP, Data.DB, kbmMemTable,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, ncMovEst;

type
  TfrmDadosItemOutrasEntradas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem16: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutItem17: TdxLayoutItem;
    cxLabel3: TcxLabel;
    dxLayoutItem18: TdxLayoutItem;
    cxLabel4: TcxLabel;
    dxLayoutItem19: TdxLayoutItem;
    cxLabel5: TcxLabel;
    dxLayoutItem20: TdxLayoutItem;
    cxLabel6: TcxLabel;
    dxLayoutItem21: TdxLayoutItem;
    cxLabel7: TcxLabel;
    dxLayoutItem22: TdxLayoutItem;
    cxLabel8: TcxLabel;
    dxLayoutItem23: TdxLayoutItem;
    edt_B_ICMS: TcxCurrencyEdit;
    dxLayoutItem24: TdxLayoutItem;
    edt_P_ICMS: TcxCurrencyEdit;
    dxLayoutItem1: TdxLayoutItem;
    edt_T_ICMS: TcxCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    edt_B_PIS: TcxCurrencyEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    edt_P_PIS: TcxCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    edt_T_PIS: TcxCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    edt_B_COFINS: TcxCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    edt_P_COFINS: TcxCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    edt_T_COFINS: TcxCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    edt_B_IPI: TcxCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    edt_P_IPI: TcxCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    edt_T_IPI: TcxCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    edt_B_ICMS_ST: TcxCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    edt_P_ICMS_ST: TcxCurrencyEdit;
    dxLayoutItem13: TdxLayoutItem;
    edt_T_ICMS_ST: TcxCurrencyEdit;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutItem25: TdxLayoutItem;
    lbCFOP: TcxLabel;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    edCFOP: TcxButtonEdit;
    lcCFOP: TdxLayoutItem;
    panBusca: TLMDSimplePanel;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    procedure edt_B_ICMSKeyPress(Sender: TObject; var Key: Char);
    procedure edt_B_PISKeyPress(Sender: TObject; var Key: Char);
    procedure edt_B_COFINSKeyPress(Sender: TObject; var Key: Char);
    procedure edt_B_IPIKeyPress(Sender: TObject; var Key: Char);
    procedure edt_B_ICMS_STKeyPress(Sender: TObject; var Key: Char);
    procedure edt_P_ICMSKeyPress(Sender: TObject; var Key: Char);
    procedure edt_P_PISKeyPress(Sender: TObject; var Key: Char);
    procedure edt_P_COFINSKeyPress(Sender: TObject; var Key: Char);
    procedure edt_P_IPIKeyPress(Sender: TObject; var Key: Char);
    procedure edt_P_ICMS_STKeyPress(Sender: TObject; var Key: Char);
    procedure edCFOPPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edCFOPKeyPress(Sender: TObject; var Key: Char);
    procedure btnOkKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCFOPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FPesqCFOP : TFrmPesqCFOP;
    FME       : TncMovEst;
    procedure Valida;
  public
    { Public declarations }
    function ObtemDadosFiscais(sl: TStrings; aValorTotal: Currency): Boolean;
  end;

var
  frmDadosItemOutrasEntradas: TfrmDadosItemOutrasEntradas;

implementation

{$R *.dfm}

uses ncaDM, ncaFrmPri, ncClassesBase, ncaPanVendaProd2;

procedure TfrmDadosItemOutrasEntradas.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDadosItemOutrasEntradas.btnOkClick(Sender: TObject);
begin
  Valida;
  FrmPri.iCFOP := StrToInt(edCFOP.Text);
  FrmPri.sNatOp := lbCFOP.Caption;
  ModalREsult := mrOk;
end;

procedure TfrmDadosItemOutrasEntradas.btnOkKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key  of
    Key_F2    : btnOk.Click;
    Key_Esc   : Close;
  end;
end;

procedure TfrmDadosItemOutrasEntradas.edCFOPKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key  of
    Key_F5    : edCFOPPropertiesButtonClick(Sender,0) ;
    key_F2    : btnOk.Click;
    Key_Esc   : Close;
  end;
end;

procedure TfrmDadosItemOutrasEntradas.edCFOPKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
  begin
    dados.TCfop.SetRange([edCfop.Text], [edCfop.Text]);
    lbCFOP.Caption := dados.tCFOPDescricao.Value;
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0)
  end;
end;

procedure TfrmDadosItemOutrasEntradas.edCFOPPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  aCod: Word;
  aOk : Boolean;
begin
  inherited;
  if not Assigned(FPesqCFOP) then
    FpesqCFOP := gPesqCFOPList.GetFrm;

  aCod := StrToIntDef(edCfop.EditText, 0);

  //Rodrigo continuar aqui
  dados.tbCli.Locate('ID', FrmPri.iCod, []);
  if dados.tbCliUF.Value <> Dados.tNFConfigEnd_UF.Value then
    aOk := FpesqCFOP.Pesquisar(22, 1, aCod, 0)
    else
      aOk := FpesqCFOP.Pesquisar(22, 0, aCod, 0);
  Dados.tCFOP.refresh;
  if aOk then
  begin
    edCfop.Text := IntToStr(aCod);
    lbCFOP.Caption := FpesqCFOP.TabDescricao.Value;
  end;
  FPesqCFOP.Free;
end;

procedure TfrmDadosItemOutrasEntradas.edt_B_COFINSKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
  begin
    edt_B_PIS.Value := edt_B_COFINS.Value;
    edt_B_ICMS.Value := edt_B_COFINS.Value;
    edt_B_IPI.Value := edt_B_COFINS.Value;
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0)
  end;

end;

procedure TfrmDadosItemOutrasEntradas.edt_B_ICMSKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
  begin
    edt_B_PIS.Value := edt_B_ICMS.Value;
    edt_B_COFINS.Value := edt_B_ICMS.Value;
    edt_B_IPI.Value := edt_B_ICMS.Value;
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0)
  end;
end;

procedure TfrmDadosItemOutrasEntradas.edt_B_ICMS_STKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
  begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0)
  end;
end;

procedure TfrmDadosItemOutrasEntradas.edt_B_IPIKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13)then
  begin
    edt_B_PIS.Value := edt_B_IPI.Value;
    edt_B_COFINS.Value := edt_B_IPI.Value;
    edt_B_ICMS.Value := edt_B_IPI.Value;
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0)
  end;
end;

procedure TfrmDadosItemOutrasEntradas.edt_B_PISKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
  begin
    edt_B_ICMS.Value := edt_B_PIS.Value;
    edt_B_COFINS.Value := edt_B_PIS.Value;
    edt_B_IPI.Value := edt_B_PIS.Value;
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0)
  end;
end;

procedure TfrmDadosItemOutrasEntradas.edt_P_COFINSKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    edt_T_COFINS.Value := (edt_P_COFINS.Value / 100) * edt_B_COFINS.Value;
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0)
  end;
end;

procedure TfrmDadosItemOutrasEntradas.edt_P_ICMSKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    edt_T_ICMS.Value := (edt_P_ICMS.Value / 100) * edt_B_ICMS.Value;
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0)
  end;
end;

procedure TfrmDadosItemOutrasEntradas.edt_P_ICMS_STKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    edt_T_ICMS_ST.Value := (edt_P_ICMS_ST.Value / 100) * edt_B_ICMS_ST.Value;
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0)
  end;
end;

procedure TfrmDadosItemOutrasEntradas.edt_P_IPIKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    edt_T_IPI.Value := (edt_P_IPI.Value / 100) * edt_B_IPI.Value;
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0)
  end;
end;

procedure TfrmDadosItemOutrasEntradas.edt_P_PISKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    edt_T_PIS.Value := (edt_P_PIS.Value / 100) * edt_B_PIS.Value;
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0)
  end;
end;

procedure TfrmDadosItemOutrasEntradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmDadosItemOutrasEntradas.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key  of
    Key_F2    : btnOk.Click;
    Key_Esc   : Close;
  end;
end;

procedure TfrmDadosItemOutrasEntradas.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

function TfrmDadosItemOutrasEntradas.ObtemDadosFiscais(sl: TStrings; aValorTotal: Currency): Boolean;
begin

  edt_B_ICMS.Value := aValorTotal;
  edt_B_PIS.Value := aValorTotal;
  edt_B_COFINS.Value := aValorTotal;
  edt_B_IPI.Value := aValorTotal;

  if FrmPri.iCFOP > 0 then
  begin
    edCFOP.Text := intToStr(FrmPri.iCFOP);
    lbCFOP.Caption := FrmPri.sNatOp;
  end;

  ShowModal;

  if ModalResult=mrOk then
  begin

    sl.Values['natOp'] := lbCFOP.Caption;
    sl.Values['CFOP'] := edCFOP.Text;
    if edt_T_ICMS.Value > 0 then
    begin
      sl.Values['orig'] := '0';
      sl.Values['modBC'] := '0';
      sl.Values['ICMS_vBC'] := floatParaStr(edt_B_ICMS.Value);
      sl.Values['pICMS'] := FloatParaStr(edt_P_ICMS.Value);
      sl.Values['vICMS'] := FloatParaStr(edt_T_ICMS.Value);
    end;

    if edt_T_PIS.Value > 0 then
    begin
      sl.Values['PIS_CST'] := '99';
      sl.Values['PIS_vBC'] := floatParaStr(edt_B_PIS.Value);
      sl.values['pPIS'] := floatParaStr(edt_P_PIS.Value);
      sl.values['vPIS'] := floatParaStr(edt_T_PIS.Value);
    end;

    if edt_T_COFINS.Value > 0 then
    begin
      sl.Values['COFINS_CST'] := '99';
      sl.Values['COFINS_vBC'] := floatParaStr(edt_B_COFINS.Value);
      sl.values['pCOFINS'] := floatParaStr(edt_P_COFINS.Value);
      sl.values['vCOFINS'] := floatParaStr(edt_T_COFINS.Value);
    end;
    if edt_T_IPI.Value > 0 then
    begin
      sl.Values['IPI_vBC'] := floatParaStr(edt_B_IPI.Value);
      sl.Values['pIPI'] := floatParaStr(edt_P_IPI.Value);
      sl.Values['vIPI'] := floatParaStr(edt_T_IPI.Value);
    end;
    if edt_T_ICMS_ST.Value > 0 then
    begin
      sl.Values['vBCST'] := floatParaStr(edt_B_ICMS_ST.Value);
      sl.Values['pICMSST'] := floatParaStr(edt_P_ICMS_ST.Value);
      sl.Values['vICMSST'] := floatParaStr(edt_T_ICMS_ST.Value);
    end;
    Result := True;
  end
  else
    Result := False;
end;

procedure TfrmDadosItemOutrasEntradas.Valida;
begin
  if edCFOP.Text='' then
  begin
    edCFOP.SetFocus;
    raise Exception.Create('É necessário preencher a CFOP.')
  end;
end;

end.
