unit ncaFrmAposOrc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxControls, cxContainer, cxEdit, cxLabel, cxCheckBox,
  PngImage, ExtCtrls, ncMovEst, cxMemo, cxTextEdit, dxGDIPlusClasses, nxDB,
  cxMaskEdit, cxDropDownEdit, Printers;

type
  TcxHackLabel = class(TcxLabel);
  
  TFrmAposOrc = class(TForm)
    LMDSimplePanel2: TLMDSimplePanel;
    panEnviar: TLMDSimplePanel;
    LMDSimplePanel6: TLMDSimplePanel;
    btnOk: TcxButton;
    LMDSimplePanel7: TLMDSimplePanel;
    lbNome: TcxLabel;
    Timer1: TTimer;
    cbEnviar: TcxCheckBox;
    panDetalhesEmail: TLMDSimplePanel;
    panBody: TLMDSimplePanel;
    panFrom: TLMDSimplePanel;
    lbFrom: TcxLabel;
    panAssunto: TLMDSimplePanel;
    edAssunto: TcxTextEdit;
    edBody: TcxMemo;
    LMDSimplePanel8: TLMDSimplePanel;
    panTo: TLMDSimplePanel;
    lbTo: TcxLabel;
    edTo: TcxTextEdit;
    LMDSimplePanel10: TLMDSimplePanel;
    LMDSimplePanel11: TLMDSimplePanel;
    LMDSimplePanel12: TLMDSimplePanel;
    lbValor: TcxLabel;
    btnConfigAssunto: TcxButton;
    lbPadraoBody: TcxLabel;
    panEnviar2: TLMDSimplePanel;
    lbPadraoEnviar: TcxLabel;
    lbEnviar: TcxLabel;
    edFrom: TcxLabel;
    panImprimir: TLMDSimplePanel;
    cbImprimir: TcxCheckBox;
    lbPadraoImp: TcxLabel;
    lbImpressora: TcxLabel;
    btnCancelar: TcxButton;
    lbAssunto: TcxLabel;
    imgOrc: TImage;
    btnConfigOrc: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure btnNovaVendaClick(Sender: TObject);
    procedure cxLabel3Click(Sender: TObject);

    procedure cxLabel2Click(Sender: TObject);
    procedure cbEnviarClick(Sender: TObject);
    procedure cbImprimirClick(Sender: TObject);
    procedure lbPadraoEnviarClick(Sender: TObject);
    procedure lbPadraoImpClick(Sender: TObject);
    procedure edAssuntoFocusChanged(Sender: TObject);
    procedure edBodyPropertiesChange(Sender: TObject);
    procedure edToFocusChanged(Sender: TObject);
    procedure edBodyFocusChanged(Sender: TObject);
    procedure lbPadraoBodyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edFromClick(Sender: TObject);

    procedure AtualizaFromEmail;
    procedure AtualizaAssunto;
    procedure AtualizaImp;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edFromFocusChanged(Sender: TObject);
    procedure btnConfigAssuntoClick(Sender: TObject);
    procedure lbImpressoraClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edAssuntoPropertiesChange(Sender: TObject);
    procedure lbAssuntoClick(Sender: TObject);
    procedure edAssuntoPropertiesEditValueChanged(Sender: TObject);
    procedure btnConfigOrcClick(Sender: TObject);
    
  private
    FRes : Byte;
    FTab : TnxTable;
    { Private declarations }

    function ImpressoraOK: Boolean;
  protected
    procedure wmSelectAll(var Msg: TMessage);
      message wm_user;
    
  public
    procedure Atualizar; 
    
    function Editar(aTab: TnxTable; aSomenteEmail: Boolean): Byte;
    { Public declarations }
  end;

var
  FrmAposOrc: TFrmAposOrc;

resourcestring
  rsAguardandoPagamento = 'Aguardando Pagamento';
  rsCredito = 'Creditado em conta';
  rsDebito  = 'Débito';
  rsImprimir = 'Imprimir';
  rsImprimirEm = 'Imprimir em';
  rsEnviar = 'Enviar';
  rsFromVazio = 'Informe seu e-mail';
  rsToVazio = 'É necessário informar o e-mail do cliente';
  rsAssuntoVazio = 'É necessário preencher o assunto';
  rsBodyVazio = 'É necessário digitar o texto do e-mail';
  rsSelecioneImp = 'Seleciona um impressora';
  rsImpVazia = 'É necessário selecionar uma impressora';
  rsOrcamentoPara = 'Orçamento para';
  rsBodyDef = 'Olá,'+sLineBreak+sLineBreak+'Segue orçamento solicitado em anexo.'+sLineBreak+sLineBreak+'Obrigado!';
  rsSubjectDef = 'Orçamento #[numero]';
  

const
  av_res_ok        = 1;
  av_res_novavenda = 2;
  av_res_editar    = 3;  

implementation

uses ufmImagens, ncClassesBase, ncaFrmConfigPosVenda, ncaDM, ncaFrmFromEmail,
  ncaFrmPri, ncaFrmSubject, ncaDMorc, ncaFrmImpOrcamento, ncaFrmRecursoPRO,
  ncafbOrcamento, ncaConfigRecibo, ncaFrmConfig_Orcamento;

{$R *.dfm}

procedure TFrmAposOrc.btnOkClick(Sender: TObject);
begin
  if cbEnviar.Checked then begin
    if not EmailValido(gConfig.EmailOrc_FromEmail) then begin
      edFrom.Style.TextColor := clRed;
      edFrom.Style.TextStyle := [fsBold];
      raise Exception.Create(rsFromVazio);
    end;

    if not EmailValido(edTo.Text) then begin
      edTo.SetFocus;
      Raise Exception.Create(rsToVazio);
    end;

    if Trim(edAssunto.Text)= '' then begin
      edAssunto.SetFocus;
      Raise Exception.Create(rsAssuntoVazio);
    end;

    if Trim(edBody.Text)= '' then begin
      edBody.SetFocus;
      Raise Exception.Create(rsBodyVazio);
    end;
  end;

  if ((panImprimir.Visible and cbImprimir.Checked) and (gRecibo.Modelo[tipodoc_orcamento]='')) or 
     ((cbEnviar.Checked and gConfig.IsPremium) and (gRecibo.ModeloEmailOrc='')) then
    if not TFrmConfig_Orcamento.Create(Self).Editar(True) then Exit;

  if panImprimir.Visible and cbImprimir.Checked then begin
    if not ImpressoraOk then begin
      lbImpressora.Style.TextColor := clRed;
      raise exception.Create(rsImpVazia);
    end;

    dmOrc.Imprime(FTab.FieldByName('UID').AsString);
  end;

  try
    if cbEnviar.Checked and gConfig.IsPremium then 
      dmOrc.EnviarEmail(FTab.FieldByName('UID').AsString,
                        gConfig.EmailOrc_FromName, 
                        gConfig.EmailOrc_FromEmail,
                        '', edTo.Text, edAssunto.Text, edBody.Text);
  finally
    Close;
  end;
end;

procedure TFrmAposOrc.AtualizaAssunto;
var S: String;
begin
  S := gConfig.EmailOrc_Subject;
  if Trim(S)= '' then
    S := rsSubjectDef
  else
  if SameText(S, 'blank') then
    S := '';
    
  edAssunto.Text := dmOrc.TranslateFields2(S, 'orcamento');
end;

procedure TFrmAposOrc.AtualizaFromEmail;
begin
  edFrom.Caption := FormatEmail(gConfig.EmailOrc_FromName, gConfig.EmailOrc_FromEmail);
  if Trim(edFrom.Caption)='' then
    edFrom.Caption := rsFromVazio;
  edFrom.Style.TextColor := clBlack;   
end;

procedure TFrmAposOrc.AtualizaImp;
var S: String;
begin
  S := gRecibo.Impressora[tipodoc_orcamento];
  if not ImpressoraOk then 
    lbImpressora.Caption := rsSelecioneImp else
    lbImpressora.Caption := S;
end;

procedure TFrmAposOrc.Atualizar;
begin
  if cbEnviar.Checked then begin
    cbEnviar.Style.BorderColor := clBlack;
    cbEnviar.Style.TextColor := clBlack;
  end else begin
    cbEnviar.Style.BorderColor := clGray;
    cbEnviar.Style.TextColor := clGray;
  end;

  if cbImprimir.Checked then begin
    cbImprimir.Caption := rsImprimirEm;
    cbImprimir.Style.BorderColor := clBlack;
    cbImprimir.Style.TextColor := clBlack;
  end else begin
    cbImprimir.Caption := rsImprimir;
    cbImprimir.Style.BorderColor := clGray;
    cbImprimir.Style.TextColor := clGray;
  end;
    
  lbImpressora.Visible := cbImprimir.Checked;

  lbAssunto.Enabled := cbEnviar.Checked;
  lbAssunto.Visible := (edAssunto.Text='');

  lbTo.Enabled := cbEnviar.Checked;
  edTo.Enabled := cbEnviar.Checked;
  lbFrom.Enabled := cbEnviar.Checked;
  edFrom.Enabled := cbEnviar.Checked;
  edAssunto.Enabled := cbEnviar.Checked;
  edBody.Enabled := cbEnviar.Checked;
end;

procedure TFrmAposOrc.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmAposOrc.btnConfigAssuntoClick(Sender: TObject);
begin
  if TFrmSubject.Create(Self).Editar then
    AtualizaAssunto;
end;

procedure TFrmAposOrc.btnConfigOrcClick(Sender: TObject);
begin
  TFrmConfig_Orcamento.Create(Self).Editar(False);
end;

procedure TFrmAposOrc.btnNovaVendaClick(Sender: TObject);
begin
  FREs := av_res_novavenda;
end;

procedure TFrmAposOrc.cbEnviarClick(Sender: TObject);
begin
  if gConfig.IsPremium then begin
    if Dados.CM.UA.Admin then
      lbPadraoEnviar.Visible := not lbPadraoEnviar.Visible;
  end else begin
    cbEnviar.Checked := False;
    TFrmRecursoPro.Create(Self).Mostrar(rsRecursoProEmailOrc, 'email_orcamento');
  end;
    
  Atualizar;
end;

procedure TFrmAposOrc.cbImprimirClick(Sender: TObject);
begin
  if Dados.CM.UA.Admin then
    lbPadraoImp.Visible := not lbPadraoImp.Visible;
    
  Atualizar;
end;

procedure TFrmAposOrc.cxLabel2Click(Sender: TObject);
begin
  PostMessage(Handle, wm_User, 0, 0);
end;

procedure TFrmAposOrc.cxLabel3Click(Sender: TObject);
begin
  Close;
  FRes := av_res_editar;
end;

procedure TFrmAposOrc.edAssuntoFocusChanged(Sender: TObject);
begin
  btnConfigAssunto.Visible := edAssunto.Focused;

  if edAssunto.Focused then
    panAssunto.Color := $00C4FFFF else
    panAssunto.Color := clWhite;
end;

procedure TFrmAposOrc.edAssuntoPropertiesChange(Sender: TObject);
begin
  lbAssunto.Visible := (edAssunto.Text='');
end;

procedure TFrmAposOrc.edAssuntoPropertiesEditValueChanged(Sender: TObject);
begin
  lbAssunto.Visible := (edAssunto.Text='');
end;

procedure TFrmAposOrc.edBodyFocusChanged(Sender: TObject);
begin
  if edBody.Focused then begin
    panBody.Color := $00C4FFFF;
    edBody.Properties.ScrollBars := ssVertical;
  end else begin
    panBody.Color := clWhite;
    edBody.Properties.ScrollBars := ssNone;
  end;
end;

procedure TFrmAposOrc.edBodyPropertiesChange(Sender: TObject);
begin
  if Dados.CM.UA.Admin then
    lbPadraoBody.Visible := (edBody.Text<>gConfig.EmailOrc_Body);
end;

procedure TFrmAposOrc.edToFocusChanged(Sender: TObject);
begin
  if edTo.Focused then
    panTo.Color := $00C4FFFF else
    panTo.Color := clWhite;
end;

function TFrmAposOrc.Editar(aTab: TnxTable; aSomenteEmail: Boolean): Byte;
begin
  FTab := aTab;
  dmOrc.Tab.Locate('UID', FTab.FieldByName('UID').AsString, []);
  
  panEnviar2.Visible := not aSomenteEmail;
  panImprimir.Visible := not aSomenteEmail;

  if aSomenteEmail then begin
    lbEnviar.Visible := True;
    cbEnviar.Visible := False;
    lbEnviar.Caption := cbEnviar.Caption;
    btnOk.Caption := rsEnviar;
    cbEnviar.Checked := True;
    Atualizar;
  end;
  with Dados do begin
    if aSomenteEmail then begin
      imgOrc.Visible := False;
      lbNome.Style.TextColor := clBlack;
      lbValor.Style.TextColor := clBlack;
    end;
    
    with FTab.FieldByName('Cliente') do
    if (AsInteger>0) and tbCli.Locate('ID', AsInteger, []) then begin
      edTo.Text := tbCliEmail.Value;
      if aSomenteEmail then
        lbNome.Caption := rsOrcamentoPara + ' ' + tbCliNome.Value;
    end else
      edTo.Text := '';
      
    lbValor.Caption := CurrencyToStr(FTab.FieldByName('TotalFinal').AsCurrency);
  end;
  FRes := av_res_ok;
  ShowModal;
  Result := FRes;
end;

procedure TFrmAposOrc.edFromClick(Sender: TObject);
begin
  try TWinControl(edFrom).SetFocus; except end;
  if TFrmFromEmail.Create(Self).Editar then AtualizaFromEmail;
end;

procedure TFrmAposOrc.edFromFocusChanged(Sender: TObject);
begin
  if edFrom.Focused then
    panFrom.Color := $00C4FFFF else
    panFrom.Color := clWhite;
end;

procedure TFrmAposOrc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmAposOrc.FormCreate(Sender: TObject);
begin
{  TcxHackLabel(edFrom).FIsInplace := True;
  TcxHackLabel(edFrom).TabStop := False;}
  
  AtualizaFromEmail;

  cbEnviar.Checked := gConfig.EmailOrc_Enviar and gConfig.IsPremium;
  cbImprimir.Checked := gConfig.DocOrc_Imprimir;
  edBody.Text := gConfig.EmailOrc_Body;

  if Trim(edBody.Text)='' then
    edBody.Text := rsBodyDef;
  
end;

procedure TFrmAposOrc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Esc   : Close;
  end;
end;

procedure TFrmAposOrc.FormShow(Sender: TObject);
begin
  AtualizaAssunto;
  AtualizaImp;
  
  lbPadraoEnviar.Visible := False;
  lbPadraoBody.Visible := False;
  lbPadraoImp.Visible := False;

  Atualizar;
  
  if edTo.Enabled then
    edTo.SetFocus;
end;

function TFrmAposOrc.ImpressoraOK: Boolean;
begin
  Result := (Printer.Printers.IndexOf(gRecibo.Impressora[tipodoc_orcamento])>=0);
end;

procedure TFrmAposOrc.lbAssuntoClick(Sender: TObject);
begin
  edAssunto.SetFocus;
end;

procedure TFrmAposOrc.lbImpressoraClick(Sender: TObject);
begin
  TFrmImprimeOrcamento.Create(Self).MostrarOpcoes;
  AtualizaImp;
end;

procedure TFrmAposOrc.lbPadraoBodyClick(Sender: TObject);
begin
  gConfig.AtualizaCache;
  gConfig.EmailOrc_Body := edBody.Text;
  Dados.CM.SalvaAlteracoesObj(gConfig, False);
  lbPadraoBody.Visible := False;
end;

procedure TFrmAposOrc.lbPadraoEnviarClick(Sender: TObject);
begin
  gConfig.AtualizaCache;
  gConfig.EmailOrc_Enviar := cbEnviar.Checked;
  Dados.CM.SalvaAlteracoesObj(gConfig, False);

  lbPadraoEnviar.Visible := False;
end;

procedure TFrmAposOrc.lbPadraoImpClick(Sender: TObject);
begin
  gConfig.AtualizaCache;
  gConfig.DocOrc_Imprimir := cbImprimir.Checked;
  Dados.CM.SalvaAlteracoesObj(gConfig, False);
  
  lbPadraoImp.Visible := False;
end;

procedure TFrmAposOrc.wmSelectAll(var Msg: TMessage);
begin
  case Msg.WParam of
    0 : edTo.SelectAll;
    1 : edFrom.SelectAll;
  end;
end;

end.


