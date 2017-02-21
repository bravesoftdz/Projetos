unit ncaFrmConfig_Pais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel,
  dxLayoutcxEditAdapters, cxSpinEdit, dxLayoutContainer, cxCheckBox, cxClasses,
  dxLayoutControl, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel;

type
  TFrmPais = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lcSeguirWindows: TdxLayoutItem;
    edSeguirWindows: TcxCheckBox;
    lcPais: TdxLayoutItem;
    edPais: TcxImageComboBox;
    edSimbMoeda: TcxTextEdit;
    lcSimbMoeda: TdxLayoutItem;
    edCasasDec: TcxSpinEdit;
    lcCasasDec: TdxLayoutItem;
    edSepDec: TcxTextEdit;
    lcSepDec: TdxLayoutItem;
    lcSepMil: TdxLayoutItem;
    edSepMil: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure edSeguirWindowsClick(Sender: TObject);
    procedure edCasasDecClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure LoadWin;
    procedure Atualiza;
    function Alterou: Boolean;
  public
    { Public declarations }
  end;

var
  FrmPais: TFrmPais;

implementation

{$R *.dfm}

uses ncaDM, ncClassesBase, ncaFrmPri, ncServAtualizaLic_Indy;

function TFrmPais.Alterou: Boolean;
begin
  Result := True;
  if gConfig.Pais<>edPais.EditValue then Exit;
  if gConfig.fmt_moeda <> (not edSeguirWindows.Checked)  then Exit;
  if gConfig.fmt_simbmoeda <> edSimbMoeda.Text then Exit;
  if gConfig.fmt_decimais <> edCasasDec.EditValue then Exit;
  if gConfig.fmt_sep_decimal <> edSepDec.Text then Exit;
  if gConfig.fmt_sep_milhar <> edSepMil.Text then Exit;
  Result := False;
end;

procedure TFrmPais.Atualiza;
begin
  LoadWin;
  lcSimbMoeda.Enabled := not edSeguirWindows.Checked;
  lcCasasDec.Enabled := not edSeguirWindows.Checked;
  lcSepDec.Enabled := (not edSeguirWindows.Checked) and (edCasasDec.Value>0);
  lcSepMil.Enabled := not edSeguirWindows.Checked;
end;

procedure TFrmPais.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmPais.btnOkClick(Sender: TObject);
var S: String;
begin
  if Alterou then begin
    gConfig.AtualizaCache;
    gConfig.Pais := edPais.EditValue;
    gConfig.fmt_moeda := not edSeguirWindows.Checked;
    gConfig.fmt_decimais := edCasasDec.EditValue;
    gConfig.fmt_simbmoeda := edSimbMoeda.Text;
    gConfig.fmt_sep_decimal := edSepDec.Text;
    gConfig.fmt_sep_milhar := edSepMil.Text;
    
    Dados.CM.SalvaAlteracoesObj(gConfig, False);

    gConfig.ApplyFmtMoeda;

    S := GetApp;
    if S>'' then 
      Dados.CM.SalvaApp(S);
  end;
  Close;
end;

procedure TFrmPais.edCasasDecClick(Sender: TObject);
begin
  Atualiza;
end;

procedure TFrmPais.edSeguirWindowsClick(Sender: TObject);
begin
  Atualiza;
end;

procedure TFrmPais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPais.FormCreate(Sender: TObject);
begin
  edPais.EditValue := gConfig.PaisNorm;
  btnOk.Enabled := Dados.CM.UA.Admin;

  edSeguirWindows.Checked := not gConfig.fmt_moeda;
  edCasasDec.EditValue := gConfig.fmt_decimais;
  edSimbMoeda.Text := gConfig.fmt_simbmoeda;
  edSepDec.Text := gConfig.fmt_sep_decimal;
  edSepMil.Text := gConfig.fmt_sep_milhar;
end;

procedure TFrmPais.FormShow(Sender: TObject);
begin
  Atualiza;
end;

procedure TFrmPais.LoadWin;
var F : TFormatSettings;
begin
  if not edSeguirWindows.Checked then Exit;
  
  F := TFormatSettings.Create;
  edSimbMoeda.Text := F.CurrencyString;
  edCasasDec.Value := F.CurrencyDecimals;
  edSepDec.Text := F.DecimalSeparator;
  edSepMil.Text := F.ThousandSeparator;
end;

end.
