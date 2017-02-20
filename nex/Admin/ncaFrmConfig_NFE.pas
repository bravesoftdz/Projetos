unit ncaFrmConfig_NFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncaFrmBaseOpcao, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxDBEdit, cxLabel, Data.DB, kbmMemTable,
  cxCheckBox, dxGDIPlusClasses, Vcl.ExtCtrls, cxButtonEdit, ncaFrmNCMPesq,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, Vcl.Mask,
  Vcl.DBCtrls, cxSpinEdit, dxLayoutLookAndFeels, cxClasses,
  dxLayoutControlAdapters, dxBarBuiltInMenu, cxPC, ncaDocEdit, cxMemo, nxdb, ncClassesBase,
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel, LMDLabel,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  cxCurrencyEdit;

type
  TFrmConfig_NFE = class(TFrmBaseOpcao)
    panTopo: TLMDSimplePanel;
    edEmitirNFe: TcxDBCheckBox;
    MT: TkbmMemTable;
    MTEmitirNFE: TBooleanField;
    MTCRT: TByteField;
    MTModeloNFE: TStringField;
    MTSerieNFe: TStringField;
    MTInicioNFe: TLongWordField;
    MTRazaoSocial: TStringField;
    MTNomeFantasia: TStringField;
    MTCNPJ: TStringField;
    MTIE: TStringField;
    MTEnd_Logradouro: TStringField;
    MTEnd_Numero: TStringField;
    MTEnd_Bairro: TStringField;
    MTEnd_UF: TStringField;
    MTEnd_CEP: TStringField;
    MTEnd_Municipio: TStringField;
    MTEnd_CodMun: TStringField;
    MTEnd_CodUF: TByteField;
    MTTelefone: TStringField;
    DS: TDataSource;
    btnPremium: TcxButton;
    MTMostrarDadosNFE: TBooleanField;
    MTPedirEmail: TByteField;
    MTPedirCPF: TByteField;
    img: TImage;
    edSerieNFe: TcxDBTextEdit;
    lcSerieNFE: TdxLayoutItem;
    edInicioNFe: TcxDBSpinEdit;
    lcInicioNFE: TdxLayoutItem;
    edLogr: TcxDBTextEdit;
    LCItem1: TdxLayoutItem;
    edNumero: TcxDBTextEdit;
    LCItem3: TdxLayoutItem;
    edBairro: TcxDBTextEdit;
    LCItem4: TdxLayoutItem;
    edCEP: TcxDBTextEdit;
    LCItem6: TdxLayoutItem;
    edMun: TcxDBTextEdit;
    LCItem7: TdxLayoutItem;
    edTel: TcxDBTextEdit;
    LCItem10: TdxLayoutItem;
    edCodMun: TcxDBButtonEdit;
    lcCodMun: TdxLayoutItem;
    MTEnd_Complemento: TStringField;
    edComplemento: TcxDBTextEdit;
    LCItem2: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    llfUltraFlat: TdxLayoutCxLookAndFeel;
    MTCertificadoDig: TStringField;
    btnAvancadas: TcxButton;
    LCItem5: TdxLayoutItem;
    llfFlat: TdxLayoutCxLookAndFeel;
    Paginas: TcxPageControl;
    tsSefaz: TcxTabSheet;
    tsEndereco: TcxTabSheet;
    tsOpcoes: TcxTabSheet;
    panSefaz: TLMDSimplePanel;
    lc1: TdxLayoutControl;
    lc1Group_Root: TdxLayoutGroup;
    panEnd: TLMDSimplePanel;
    lc3: TdxLayoutControl;
    lc3Group_Root: TdxLayoutGroup;
    panOpcoes: TLMDSimplePanel;
    lc4: TdxLayoutControl;
    lc4Group_Root: TdxLayoutGroup;
    lc3Group2: TdxLayoutAutoCreatedGroup;
    lc3Group3: TdxLayoutAutoCreatedGroup;
    edPedirEmail: TcxDBCheckBox;
    lc4Item2: TdxLayoutItem;
    lcgr_avancado: TdxLayoutGroup;
    edHom: TcxDBCheckBox;
    lctpAmb: TdxLayoutItem;
    cxLabel1: TcxLabel;
    lc4Item4: TdxLayoutItem;
    MTTipoCert: TByteField;
    tsEmail: TcxTabSheet;
    lc5Group_Root: TdxLayoutGroup;
    lc5: TdxLayoutControl;
    edFromEmail: TcxDBTextEdit;
    lcFromEmail: TdxLayoutItem;
    MTFromEmail: TStringField;
    MTFromName: TStringField;
    edCorpoEmail: TcxDBMemo;
    lcCorpoEmail: TdxLayoutItem;
    edAssunto: TcxDBTextEdit;
    lcAssunto: TdxLayoutItem;
    MTAssuntoEmail: TStringField;
    cxLabel2: TcxLabel;
    lc5Item1: TdxLayoutItem;
    lcModEmailNFE: TdxLayoutItem;
    edModEmailNFE: TncDocEdit;
    MTCorpoEmail: TMemoField;
    btnInstalaDepend: TcxButton;
    lc4Item3: TdxLayoutItem;
    MTPinCert: TStringField;
    Timer1: TTimer;
    tsCert: TcxTabSheet;
    lcCD: TdxLayoutControl;
    edCertificado: TcxDBComboBox;
    edTipoCert: TcxDBImageComboBox;
    edPin: TcxDBTextEdit;
    lcCDGroup_Root: TdxLayoutGroup;
    lcCertificado: TdxLayoutItem;
    lcTipoCert: TdxLayoutItem;
    lcPIN: TdxLayoutItem;
    MTCodigoAtivacao: TStringField;
    panEstado: TLMDSimplePanel;
    cxLabel4: TcxLabel;
    edEstado: TcxDBImageComboBox;
    dxLayoutItem3: TdxLayoutItem;
    edIE: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    edCNPJ: TcxDBMaskEdit;
    dxLayoutItem5: TdxLayoutItem;
    edFantasia: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    edRazao: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    edCRT: TcxDBImageComboBox;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    OpenDlg: TOpenDialog;
    h: TIdHTTP;
    MTsat_modelo: TByteField;
    MTsat_config: TStringField;
    MTtpAmbNFe: TByteField;
    lcAliqCredICMS: TdxLayoutItem;
    edICMS: TcxDBCurrencyEdit;
    edPermCredICMS: TcxDBCheckBox;
    dxLayoutItem2: TdxLayoutItem;
    MTnfe_permite_cred_icms: TBooleanField;
    MTnfe_perc_cred_icms: TFloatField;
    edTipoDocPadrao: TcxDBImageComboBox;
    lcTipoDocPadrao: TdxLayoutItem;
    edEmitirNFeVenda: TcxDBCheckBox;
    lcEmitirNFeVenda: TdxLayoutItem;
    MTnfe_venda: TBooleanField;
    MTtipodoc_padrao: TByteField;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    MTContabilidade: TStringField;
    lcContabilidade: TdxLayoutItem;
    edContabilidade: TcxDBMaskEdit;
    cxLabel3: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    MTUsarPautaMaiorMVA: TBooleanField;
    edBaseICMSSt: TcxDBCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    procedure edEmitirNFCePropertiesChange(Sender: TObject);
    procedure edMostrarNCMPropertiesChange(Sender: TObject);
    procedure edMostrarSitTribPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edCRTPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edCodMunPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edCodMunPropertiesChange(Sender: TObject);
    procedure btnAvancadasClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure PaginasDrawTabEx(AControl: TcxCustomTabControl; ATab: TcxTab;
      Font: TFont);
    procedure btnPremiumClick(Sender: TObject);
    procedure PaginasChange(Sender: TObject);
    procedure btnInstalaDependClick(Sender: TObject);
    procedure edTipoCertPropertiesChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edEstadoPropertiesChange(Sender: TObject);
    procedure edsat_modeloPropertiesCloseUp(Sender: TObject);
    procedure edEmitirNFeVendaClick(Sender: TObject);
    procedure edPermCredICMSClick(Sender: TObject);
  private
    FFrmNCM : TFrmNCMPesq;
    FEditModelo : Boolean;
    FDisableSetFocus : Boolean;
    FAtivar : Boolean;
    FCNPJ : String;
    FSignAC : String;
    FSignACCNPJ : String;
    { Private declarations }
    procedure Atualiza;

    procedure Valida;

    procedure EnableDisable;
    procedure SetEditModelo(const Value: Boolean);

    procedure wmAtualizaDireitosConfig(var Msg: TMessage);
      message wm_atualizadireitosconfig;
  public
    { Public declarations }
    procedure Ler; override;
    procedure Salvar; override;
    function Alterou: Boolean; override;

    procedure AtualizaMun;

    procedure Renumera; override;

    property Ativar: Boolean read FAtivar write FAtivar;

    class procedure Mostrar(aAtivar : Boolean); 

    function NumItens: Integer; override;

    property EditModelo: Boolean read FEditModelo write SetEditModelo;
  end;

var
  FrmConfig_NFE: TFrmConfig_NFE;

implementation

{$R *.dfm}



uses ncaFrmPri, ncaDM, ncaFrmMunBr, ncEspecie,
  ncaFrmConfigEspecies, ncaFrmRecursoPremium, ncaFrmNFeDepend,
  ncaProgressoDepend, ncaFrmAlertaPIN, ufmImagens, md5, ncHttp;

{ TFrmConfigNFE }
resourcestring                
  rsNFCePremium = 'A emissão de NF é um recurso exclusivo para assinantes do plano PREMIUM.';

function Chave(aLoja, aCNPJ: string): string;
begin
  aLoja := Trim(aLoja);
  aCNPJ := SoDig(aCNPJ);
  Result := getmd5str('piLKHerASD17IUywefd7kdsfTkjhasfdkxzxxx778213zxcnbv'+LowerCase(aLoja)+aCNPJ); // do not localize
end;  
  
function TFrmConfig_NFE.Alterou: Boolean;
begin
  Result := True;
  with Dados do begin
    if edEmitirNFe.Checked <> tNFConfigEmitirNFe.Value then Exit;
    if edEstado.EditValue <> tNFConfigEnd_UF.Value then Exit;
    if edCertificado.Text <> tNFConfigCertificadoDig.Value then Exit;
    if edCRT.EditValue <> tNFConfigCRT.Value then Exit;
    if edRazao.Text <> tNFConfigRazaoSocial.Value then Exit;
    if edFantasia.Text <> tNFConfigNomeFantasia.Value then Exit;
    if edCNPJ.Text <> tNFConfigCNPJ.Value then Exit;
    if edIE.Text <> tNFConfigIE.Value then Exit;
    if edContabilidade.Text <> tNFConfigContabilidade.Value then Exit;
    if edLogr.Text <> tNFConfigEnd_Logradouro.Value then Exit;
    if edNumero.Text <> tNFConfigEnd_Numero.Value then Exit;
    if edComplemento.Text <> tNFConfigEnd_Complemento.Value then Exit;
    if edBairro.Text <> tNFConfigEnd_Bairro.Value then Exit;
    if edCEP.Text <> tNFConfigEnd_CEP.Value then Exit;
    if edTel.Text <> tNFConfigTelefone.Value then Exit;
    if edCodMun.Text <> tNFConfigEnd_CodMun.Value then Exit;
    if MTPedirCPF.Value <> tNFConfigPedirCPF.Value then Exit;
    if MTPedirEmail.Value <> tNFConfigPedirEmail.Value then Exit;
    if edSerieNFe.Text <> tNFConfigSerieNFe.Value then Exit;
    if edInicioNFe.Value <> tNFConfigInicioNFe.Value then Exit;
    if edHom.EditValue <> tNFConfigtpAmbNFe.Value then Exit;
    if edModEmailNFE.IDDoc <> tNFConfigModeloNFe_Email.Value then Exit;
    if edAssunto.Text <> TNFConfigAssuntoEmail.Value then Exit;
    if edFromEmail.Text <> tNFConfigFromEmail.Value then Exit;
    if edTipoCert.EditValue <> tNFConfigTipoCert.Value then Exit;
    if edPin.Text <> tNFConfigPinCert.Value then Exit;
    if edPermCredICMS.Checked <> tNFConfignfe_permite_cred_icms.Value then Exit;
    if edICMS.Value <> tNFConfignfe_perc_cred_icms.Value then Exit;
    if edTipoDocPadrao.EditValue <> tNFConfigTipoDoc_Padrao.Value then Exit;
    if edEmitirNFeVenda.Checked <> TNFConfignfe_venda.Value then Exit;
    if edBaseICMSSt.Checked <> tNFConfigUsarPautaMaiorMVA.Value then Exit;
  end;
  Result := False;
end;

procedure TFrmConfig_NFE.Atualiza;
begin
  lcPIN.Visible := False; //(edTipoCert.ItemIndex=1);
  tsCert.TabVisible := True;
  lcSerieNFE.Visible := True;
  lcInicioNFE.Visible := True;
  lctpAmb.Visible := True;
  lcModEmailNFE.Visible := True;
end;

procedure TFrmConfig_NFE.AtualizaMun;
begin
  with Dados do 
  if tbMun.FindKey([edCodMun.Text]) then begin
    edMun.Text := tbMunNome.Value;
    MTEnd_Municipio.Value := tbMunNome.Value;
    MTEnd_CodUF.Value := StrToInt(Copy(edCodMun.Text, 1, 2));
  end else begin
    edMun.Text := '';
    MTEnd_Municipio.Value := '';
    MTEnd_CodUF.Value := 0;
  end;
end;

procedure TFrmConfig_NFE.btnAvancadasClick(Sender: TObject);
begin
  inherited;
  lcgr_Avancado.Visible := btnAvancadas.Down;
end;

procedure TFrmConfig_NFE.btnInstalaDependClick(Sender: TObject);
begin
  inherited;

  NotifySucessoDepend := True;
  ncaDM.NotityErroDepend := True;
  
  if Assigned(panProgressoDepend) then 
    ShowMessage('Já existe uma instalação em andamento') else
    Dados.CM.InstalaNFeDepend;
end;

procedure TFrmConfig_NFE.btnOkClick(Sender: TObject);
begin
  if edEmitirNFe.Checked then begin
    Paginas.ActivePageIndex := 0;
    edRazao.SetFocus;
    edFantasia.SetFocus;
  end;

  if Alterou then Salvar;
  Close;
end;

procedure TFrmConfig_NFE.btnPremiumClick(Sender: TObject);
begin
  inherited;
  TFrmRecursoPremium.Create(Self).Mostrar(rsNFCePremium, 'nfce');
end;

procedure TFrmConfig_NFE.edPermCredICMSClick(Sender: TObject);
begin
  inherited;
  EnableDisable;
end;

procedure TFrmConfig_NFE.edCodMunPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var 
  aUF, 
  aCod: String;  
  P : TFrmMunPesq;
begin
  inherited;
  aUF := MTEnd_UF.Value;
  if aUF='' then begin
    Paginas.ActivePageIndex := 0;
    raise exception.Create('É necessário selecionar um estado');
  end;  

  aCod := edCodMun.Text;

  P := TFrmMunPesq.Create(self);
  try
    if P.Pesquisar(aUF, aCod) then begin
      edCodMun.Text := aCod;
      MTEnd_CodMun.Value := aCod;
      MTEnd_Municipio.Value := P.TabNome.Value;
      MTEnd_CodUF.Value := StrToInt(copy(aCod, 1, 2));
    end;
  finally
    P.Free;
  end;
end;

procedure TFrmConfig_NFE.edCodMunPropertiesChange(Sender: TObject);
begin
  inherited;
  AtualizaMun;
end;

procedure TFrmConfig_NFE.edCRTPropertiesChange(Sender: TObject);
begin
  inherited;
  if edCRT.Focused and (edCRT.ItemIndex=2) then begin
    ShowMessage('O NEX ainda não está preparado para emitir NF-e para empresas que trabalham em Regime Normal');
    edCRT.ItemIndex := 0;
  end;
  Atualiza;
end;

procedure TFrmConfig_NFE.edEmitirNFCePropertiesChange(Sender: TObject);
begin
  inherited;
  Atualiza;
  EnableDisable;
end;

procedure TFrmConfig_NFE.edEmitirNFeVendaClick(Sender: TObject);
begin
  inherited;
  EnableDisable;
  Atualiza;
end;

procedure TFrmConfig_NFE.edEstadoPropertiesChange(Sender: TObject);
begin
  inherited;
  EnableDisable;
  Atualiza;
end;

procedure TFrmConfig_NFE.edMostrarNCMPropertiesChange(Sender: TObject);
begin
  inherited;
  Atualiza;
end;
     
procedure TFrmConfig_NFE.edMostrarSitTribPropertiesChange(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

procedure TFrmConfig_NFE.edsat_modeloPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

procedure TFrmConfig_NFE.edTipoCertPropertiesChange(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

procedure TFrmConfig_NFE.EnableDisable;
var aEnable: Boolean;
begin
  lcEmitirNFeVenda.Visible := Dados.tNFConfigEmitirNFCe.Value;
  lcAliqCredIcms.Visible := edPermCredICMS.Checked;
  lcTipoDocPadrao.Visible := lcEmitirNFeVenda.Visible and edEmitirNFeVenda.Checked;
  lcPIN.Visible := False; //(edTipoCert.ItemIndex=1);
  btnPremium.Visible := not ((gConfig.IsPremium) and (not gConfig.Pro));
  edEmitirNFe.Enabled := not btnPremium.Visible;
  aEnable := edEmitirNFe.Checked and edEmitirNFe.Enabled and (edEstado.ItemIndex>=0);
  lc1Group_Root.Enabled := aEnable;
  lcCDGroup_Root.Enabled := aEnable;
  lc3Group_Root.Enabled := aEnable;
  lc4Group_Root.Enabled := aEnable;
  lc5Group_Root.Enabled := aEnable;
  btnOk.Enabled := Dados.CM.UA.Admin and edEmitirNFe.Enabled;
end;

procedure TFrmConfig_NFE.FormCreate(Sender: TObject);
begin
  inherited;
  FSignACCNPJ := '';
  FDisableSetFocus := True;
  FAtivar := False;
  FFrmNCM := nil;
  FEditModelo := False;
  Paginas.ActivePageIndex := 0;
  btnInstalaDepend.Enabled := Dados.CM.UA.Admin;
  lctpAmb.Visible := (Dados.tNFConfigtpAmb.Value=1);
  edTipoDocPadrao.Properties.Items[1].Description := Dados.tNFConfigNFStr.Value;
end;

procedure TFrmConfig_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(FFrmNCM) then gNCMPesqList.ReleaseFrm(FFrmNCM);
end;

procedure TFrmConfig_NFE.FormShow(Sender: TObject);
begin
  inherited;
  FDisableSetFocus := False;
  Dados.CM.ObtemCertificados(edCertificado.Properties.Items);
  EnableDisable;
  Timer1.Enabled := True;
end;

procedure TFrmConfig_NFE.Ler;
begin
  inherited;
  MT.Active := False;
  MT.Active := True;
  MT.Append;
  TransfDados(Dados.tNFConfig, MT);
  
  FCNPJ := Dados.tNFConfigCNPJ.Value;
  FSignAC := Dados.tNFConfigSignACSat.Value;
  
  if FAtivar then
    MTEmitirNFe.Value := True;
  
  if Dados.tNFConfigModeloNFCe_Email.IsNull then
    edModEmailNFE.IDDoc := '' else
    edModEmailNFE.IDDoc := Dados.tNFConfigModeloNFe_Email.Value;

  Atualiza;
end;

class procedure TFrmConfig_NFE.Mostrar(aAtivar: Boolean);
begin
  inherited;

  Dados.GravaFlag('acessou_config_nfe', '1');
  
  if (not gConfig.IsPremium) or gConfig.Pro then
    TFrmRecursoPremium.Create(nil).ShowModal;
    
  if gConfig.IsPremium and (not gConfig.Pro) then 
    with TFrmConfig_NFE.Create(nil) do begin
      Ativar := aAtivar;                                  
      ShowModal;
    end;  
end;

function TFrmConfig_NFE.NumItens: Integer;
begin
  Result := 3;
end;

procedure TFrmConfig_NFE.PaginasChange(Sender: TObject);
begin
  inherited;
  if lc1Group_Root.Enabled and (not FDisableSetFocus) then 
  case Paginas.ActivePageIndex of
    0 : edEstado.SetFocus;
    1 : edCertificado.SetFocus;
    2 : edLogr.SetFocus;
    3 : edPedirEmail.SetFocus;
    4 : edFromEmail.SetFocus;  
  end;
end;

procedure TFrmConfig_NFE.PaginasDrawTabEx(AControl: TcxCustomTabControl;
  ATab: TcxTab; Font: TFont);
begin
  inherited;
  if btnPremium.Visible then
    Font.Color := clSilver;
end;

procedure TFrmConfig_NFE.Renumera;
begin
//  RenumCB(edEmitirNFCe, 0);
//  RenumLB(lbCRT, 2);
end;

procedure TFrmConfig_NFE.Salvar;
var 
   aEmissaoAntes : Boolean;
   aCNPJAnt, aRazaoAnt : String;
begin
  inherited;

  Valida;

  with Dados do begin
    tNFConfig.Refresh;
    if tNFConfig.IsEmpty then 
      tNFConfig.Append else
      tNFConfig.Edit;
    aEmissaoAntes := tNFConfigEmitirNFe.Value;  
    aCNPJAnt := tNFConfigCNPJ.Value;
    aRazaoAnt := tNFConfigRazaoSocial.Value;
    TransfDados(MT, tNFConfig);
    tNFConfigPinCert.Value := Trim(edPin.Text);

    if edModEmailNFE.IDDoc='' then
      tNFConfigModeloNFe_Email.Clear else
      tNFConfigModeloNFe_Email.Value := edModEmailNFE.IDDoc;

    tNFConfig.Post;  

    if tNFConfigEmitirNFe.Value and (not aEmissaoAntes) then begin 
      Dados.GravaFlag('acessou_config_nfe', '1');
      Dados.GravaFlag('ativou_nfe', '1');
      if (not tNFConfigDependNFEOk.Value) then NotityErroDepend := True;
      Dados.EnviaEmailAtivacaoNF(True, '', '');
    end else
    if tNFConfigEmitirNFe.Value then begin
      if (aCNPJAnt=tNFConfigCNPJ.Value) then aCNPJAnt := '';
      if aRazaoAnt=tNFConfigRazaoSocial.Value then aRazaoAnt := '';
      if (aRazaoAnt>'') or (aCNPJAnt>'') then
        Dados.EnviaEmailAtivacaoNF(True, aCNPJAnt, aRazaoAnt);
    end;    
  end;
end;

procedure TFrmConfig_NFE.SetEditModelo(const Value: Boolean);
begin
  Paginas.ActivePageIndex := 3;
  FEditModelo := Value;
end;

procedure TFrmConfig_NFE.Timer1Timer(Sender: TObject);
begin
  inherited;
  Timer1.Enabled := False;
  
  if edEmitirNFe.Enabled and FEditModelo then begin
    Paginas.ActivePage := tsEmail;
    edModEmailNFE.SetFocus;
  end else
  if lc1Group_Root.Enabled then begin
    Paginas.ActivePageIndex := 0;
    edEstado.SetFocus;
  end;
end;

procedure TFrmConfig_NFE.Valida;
begin
  if not edEmitirNFe.Checked then Exit;

  if edEstado.EditValue='' then 
  begin
    Paginas.ActivePageIndex := 0;
    edEstado.SetFocus;
    raise exception.Create('É necessário infomar o estado');
  end;
  
  if edMun.Text='' then begin
    Paginas.ActivePageIndex := 2;
    edCodMun.SetFocus;
    if Trim(edCodMun.Text)='' then
      raise exception.Create('É necessário informar o código do município') else
      raise Exception.Create('O código de municipio informado não existe');
  end;

 { if lcPin.Visible and (Trim(edPin.Text)>'') then begin
    Paginas.ActivePageIndex := 0;
    edPin.SetFocus;
    raise Exception.Create('É necessário informar o PIN do certificado A3');
  end;  }

  with Dados do
  if tbMun.FindKey([MTEnd_CodMun.Value]) then
    if tbMunUF.Value <> MTEnd_UF.Value then
      raise exception.Create('O município informado no endereço não é do mesmo estado selecionado.');

  if Trim(edCertificado.Text)='' then begin
    Paginas.ActivePageIndex := 1;
    edCertificado.SetFocus;
    raise Exception.Create('É necessário selecionar o certificado digital a ser usado');
  end;

  if (Trim(edRazao.Text)='') then begin
    Paginas.ActivePageIndex := 0;
    edRazao.SetFocus;
    raise Exception.Create('A razão social deve ser informada');
  end;

  if (Trim(edFantasia.Text)='') then begin
    Paginas.ActivePageIndex := 0;
    edFantasia.SetFocus;
    raise Exception.Create('O nome fantasia deve ser informado');
  end;

  if (Trim(edCNPJ.Text)='') then begin
    Paginas.ActivePageIndex := 0;
    edCNPJ.SetFocus;
    raise Exception.Create('O CNPJ deve ser informado');
  end;

  if not IsCNPJ(edCNPJ.Text) then begin
    Paginas.ActivePageIndex := 0;
    edCNPJ.SetFocus;
    raise Exception.Create('O CNPJ informado não é válido');
  end;
  
  if Trim(edFantasia.Text)='' then begin
    Paginas.ActivePageIndex := 0;
    edIE.SetFocus;
    raise Exception.Create('A Inscrição Estadual deve ser informada');
  end;

  if SoDig(edContabilidade.Text)>'' then 
  if (not IsCNPJ(edContabilidade.Text)) and (not isCPF(edContabilidade.Text)) then begin
    Paginas.ActivePageIndex := 0;
    edContabilidade.SetFocus;
    raise Exception.Create('A informação da contabilidade não está correta. Deve conter um CPF ou CNPJ válido.');
  end;

  if Trim(edLogr.Text)='' then begin
    Paginas.ActivePageIndex := 2;
    edLogr.SetFocus;
    raise Exception.Create('O endereço deve ser informado');
  end;
  
  if Trim(edNumero.Text)='' then begin
    Paginas.ActivePageIndex := 2;
    edNumero.SetFocus;
    raise Exception.Create('O número do endereço deve ser informado');
  end;

  if Trim(edBairro.Text)='' then begin
    Paginas.ActivePageIndex := 2;
    edBairro.SetFocus;
    raise Exception.Create('O bairro deve ser informado');
  end;

  if Trim(edCEP.Text)='' then begin
    Paginas.ActivePageIndex := 2;
    edCEP.SetFocus;
    raise Exception.Create('O CEP deve ser informado');
  end;

  if Length(SoDig(edCEP.Text))<8 then begin
    Paginas.ActivePageIndex := 2;
    edCEP.SetFocus;
    raise Exception.Create('O CEP deve ter 8 dígitos');
  end;  

  if Trim(edSerieNFe.Text)='' then begin
    btnAvancadas.Down := True;
    lcgr_Avancado.Visible := True;
    Paginas.ActivePageIndex := 3;
    edSerieNFe.SetFocus;
    raise Exception.Create('É necessário informar a série da NF-e');
  end;

  if not gEspecies.TipoPagNFE_Ok then begin
    Beep;
    ShowMessage('Para cada Meio de Pagamento que você configurou no NEX para sua loja é necessário configurar o meio de pagamento correspondente na NF');
    TFrmConfigEspecies.Create(Self).Mostrar(True, False);
    raise EAbort.Create('');
  end;  

{  if lcPin.Visible and (not TFrmAlertaPIN.Create(Self).Ciente((Trim(edPin.Text)=''))) then
    raise EAbort.Create('');}
end;

procedure TFrmConfig_NFE.wmAtualizaDireitosConfig(var Msg: TMessage);
var I : Integer;
  B : Boolean;
begin
  B := edEmitirNFe.Enabled;
  EnableDisable;
  if (not B) and edEmitirNFe.Enabled then begin
    I := Paginas.ActivePageIndex;
    Paginas.ActivePageIndex := 0;
    Paginas.ActivePageIndex := 1;
    Paginas.ActivePageIndex := I;
  end;
end;

end.



