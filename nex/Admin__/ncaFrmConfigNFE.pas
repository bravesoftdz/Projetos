unit ncaFrmConfigNFE;

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
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TFrmConfigNFE = class(TFrmBaseOpcao)
    panTopo: TLMDSimplePanel;
    edEmitirNFCe: TcxDBCheckBox;
    MT: TkbmMemTable;
    MTEmitirNFCe: TBooleanField;
    MTEmitirNFE: TBooleanField;
    MTAutoPrintNFCe: TBooleanField;
    MTCRT: TByteField;
    MTModeloNFE: TStringField;
    MTModeloNFCe: TStringField;
    MTSerieNFCe: TStringField;
    MTSerieNFe: TStringField;
    MTInicioNFe: TLongWordField;
    MTInicioNFCe: TLongWordField;
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
    edSerieNFCE: TcxDBTextEdit;
    lcSerieNFCE: TdxLayoutItem;
    edInicioNFCE: TcxDBSpinEdit;
    lcInicioNFCE: TdxLayoutItem;
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
    MTtpAmb: TByteField;
    MTCSC: TStringField;
    MTIdCSC: TStringField;
    edCSC: TcxDBTextEdit;
    lcTokenCSC: TdxLayoutItem;
    edIDCSC: TcxDBTextEdit;
    lcIDCSC: TdxLayoutItem;
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
    edPedirCPF: TcxDBCheckBox;
    lc4Item1: TdxLayoutItem;
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
    lcModEmailNFCE: TdxLayoutItem;
    edModEmailNFCE: TncDocEdit;
    MTCorpoEmail: TMemoField;
    btnInstalaDepend: TcxButton;
    lc4Item3: TdxLayoutItem;
    lc4Group3: TdxLayoutAutoCreatedGroup;
    MTPinCert: TStringField;
    cxLabel3: TcxLabel;
    lc1Item1: TdxLayoutItem;
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
    edModEmailSAT: TncDocEdit;
    lcModEmailSAT: TdxLayoutItem;
    tsSAT: TcxTabSheet;
    lcSATGroup_Root: TdxLayoutGroup;
    lcSAT: TdxLayoutControl;
    MTCodigoAtivacao: TStringField;
    MTNomeDLLSat: TStringField;
    edCodAtivacao: TcxDBTextEdit;
    lcCodAtivacao: TdxLayoutItem;
    edSignAC: TcxDBMemo;
    dxLayoutItem1: TdxLayoutItem;
    lbInfoCSC: TLMDLabel;
    lcInfoCSC: TdxLayoutItem;
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
    MTAssociarSignAC: TBooleanField;
    edAssociarAC: TcxDBCheckBox;
    lcAssociarAC: TdxLayoutItem;
    GerarSignAC: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    OpenDlg: TOpenDialog;
    cxLabel5: TcxLabel;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    IdHTTP1: TIdHTTP;
    MTSignACSat: TStringField;
    grCSC: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    edsat_modelo: TcxDBImageComboBox;
    lcsat_modelo: TdxLayoutItem;
    MTsat_modelo: TByteField;
    MTsat_config: TStringField;
    edsat_porta: TcxDBComboBox;
    lcsat_porta: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    edNomeDLLSat: TcxDBButtonEdit;
    lcNomeDllSat: TdxLayoutItem;
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
    procedure GerarSignACClick(Sender: TObject);
    procedure edsat_modeloPropertiesChange(Sender: TObject);
    procedure edsat_modeloPropertiesCloseUp(Sender: TObject);
    procedure edNomeDLLSatPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
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

    function ESAT: Boolean;

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
  FrmConfigNFE: TFrmConfigNFE;

implementation

{$R *.dfm}



uses ncaFrmPri, ncaDM, ncaFrmMunBr, ncEspecie,
  ncaFrmConfigEspecies, ncaFrmRecursoPremium, ncaFrmNFCeDepend,
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
  
function TFrmConfigNFE.Alterou: Boolean;
begin
  Result := True;
  with Dados do begin
    if edEmitirNFCe.Checked <> tNFConfigEmitirNFCe.Value then Exit;
    if edEstado.EditValue <> tNFConfigEnd_UF.Value then Exit;
    if edIDCSC.Text <> tNFConfigIdCSC.Value then Exit;
    if edCSC.Text <> tNFConfigCSC.Value then Exit;
    if edCertificado.Text <> tNFConfigCertificadoDig.Value then Exit;
    if edCRT.EditValue <> tNFConfigCRT.Value then Exit;
    if edRazao.Text <> tNFConfigRazaoSocial.Value then Exit;
    if edFantasia.Text <> tNFConfigNomeFantasia.Value then Exit;
    if edCNPJ.Text <> tNFConfigCNPJ.Value then Exit;
    if edIE.Text <> tNFConfigIE.Value then Exit;
    if edLogr.Text <> tNFConfigEnd_Logradouro.Value then Exit;
    if edNumero.Text <> tNFConfigEnd_Numero.Value then Exit;
    if edComplemento.Text <> tNFConfigEnd_Complemento.Value then Exit;
    if edBairro.Text <> tNFConfigEnd_Bairro.Value then Exit;
    if edCEP.Text <> tNFConfigEnd_CEP.Value then Exit;
    if edTel.Text <> tNFConfigTelefone.Value then Exit;
    if edCodMun.Text <> tNFConfigEnd_CodMun.Value then Exit;
    if MTPedirCPF.Value <> tNFConfigPedirCPF.Value then Exit;
    if MTPedirEmail.Value <> tNFConfigPedirEmail.Value then Exit;
    if edSerieNFCe.Text <> tNFConfigSerieNFCe.Value then Exit;
    if edInicioNFCe.Value <> tNFConfigInicioNFCe.Value then Exit;
    if edHom.EditValue <> tNFConfigtpAmb.Value then Exit;
    if edModEmailNFCE.IDDoc <> tNFConfigModeloNFCe_Email.Value then Exit;
    if edModEmailSAT.IDDoc <> TNFConfigModeloSAT_Email.Value then Exit;
    if edAssunto.Text <> TNFConfigAssuntoEmail.Value then Exit;
    if edFromEmail.Text <> tNFConfigFromEmail.Value then Exit;
    if edTipoCert.EditValue <> tNFConfigTipoCert.Value then Exit;
    if edPin.Text <> tNFConfigPinCert.Value then Exit;
    if edAssociarAC.Checked <> tNFConfigAssociarSignAC.Value then Exit;
    if edsat_modelo.EditValue <> tNFConfigsat_modelo.AsVariant then Exit;
    if edsat_porta.Text <> tNFConfigsat_config.Value then Exit;
    if edNomeDLLSat.Text <> TNFConfigNomeDllSat.Value then Exit;
  end;
  Result := False;
end;

function TFrmConfigNFE.ESAT: Boolean;
begin
  Result := (not VarIsNull(edEstado.EditValue)) and SameText(edEstado.EditValue, 'SP');
end;

procedure TFrmConfigNFE.Atualiza;
var 
  aSAT: Boolean;
begin
  lcPIN.Visible := False; //(edTipoCert.ItemIndex=1);
  aSAT := ESAT;

  grCSC.Visible := not ESAT;

  tsCert.TabVisible := (not aSAT);
  tsSAT.TabVisible := aSAT;

  lcSerieNFCE.Visible := (not aSAT);
  lcInicioNFCE.Visible := (not aSAT);
  lctpAmb.Visible := (not aSAT);

  lcAssociarAC.Visible := aSAT;

  lcModEmailSat.Visible := aSAT;
  lcModEmailNFCE.Visible := not aSat;

  lcsat_porta.Visible := (MTsat_modelo.Value=sat_bematech);
  lcNomeDllSat.Visible := (MTsat_modelo.Value=sat_outros) and (not MTsat_modelo.IsNull);

  if ESAT then
    edEmitirNFCe.Caption := 'Emitir CF-e SAT' else
    edEmitirNFCe.Caption := 'Emitir NFC-e';
end;

procedure TFrmConfigNFE.AtualizaMun;
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

procedure TFrmConfigNFE.btnAvancadasClick(Sender: TObject);
begin
  inherited;
  lcgr_Avancado.Visible := btnAvancadas.Down;
end;

procedure TFrmConfigNFE.btnInstalaDependClick(Sender: TObject);
begin
  inherited;

  NotifySucessoDepend := True;
  ncaDM.NotityErroDepend := True;
  
  if Assigned(panProgressoDepend) then 
    ShowMessage('Já existe uma instalação em andamento') else
    Dados.CM.InstalaNFCeDepend;
end;

procedure TFrmConfigNFE.btnOkClick(Sender: TObject);
begin
  if edEmitirNFCe.Checked then begin
    Paginas.ActivePageIndex := 0;
    edRazao.SetFocus;
    edFantasia.SetFocus;
  end;

  if Alterou then Salvar;
  Close;
end;

procedure TFrmConfigNFE.btnPremiumClick(Sender: TObject);
begin
  inherited;
  TFrmRecursoPremium.Create(Self).Mostrar(rsNFCePremium, 'nfce');
end;

procedure TFrmConfigNFE.edCodMunPropertiesButtonClick(Sender: TObject;
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

procedure TFrmConfigNFE.edCodMunPropertiesChange(Sender: TObject);
begin
  inherited;
  AtualizaMun;
end;

procedure TFrmConfigNFE.edCRTPropertiesChange(Sender: TObject);
begin
  inherited;
  if edCRT.Focused and (edCRT.ItemIndex=2) then begin
    ShowMessage('O NEX ainda não está preparado para emitir NFC-e para empresas que trabalham em Regime Normal');
    edCRT.ItemIndex := 0;
  end;
  Atualiza;
end;

procedure TFrmConfigNFE.edEmitirNFCePropertiesChange(Sender: TObject);
begin
  inherited;
  Atualiza;
  EnableDisable;
end;

procedure TFrmConfigNFE.edEstadoPropertiesChange(Sender: TObject);
begin
  inherited;
  EnableDisable;
  Atualiza;
end;

procedure TFrmConfigNFE.edMostrarNCMPropertiesChange(Sender: TObject);
begin
  inherited;
  Atualiza;
end;
     
procedure TFrmConfigNFE.edMostrarSitTribPropertiesChange(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

procedure TFrmConfigNFE.edNomeDLLSatPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if OpenDlg.Execute(Handle) then begin
    edNomeDLLSat.Text := OpenDlg.FileName;
    MTNomeDllSat.Value := OpenDlg.FileName;
    edNomeDLLSat.Refresh;
  end;
end;

procedure TFrmConfigNFE.edsat_modeloPropertiesChange(Sender: TObject);
begin
  inherited;
  if edsat_modelo.Focused then Atualiza;
end;

procedure TFrmConfigNFE.edsat_modeloPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

procedure TFrmConfigNFE.edTipoCertPropertiesChange(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

procedure TFrmConfigNFE.EnableDisable;
var aEnable: Boolean;
begin
  lcPIN.Visible := False; //(edTipoCert.ItemIndex=1);
  btnPremium.Visible := not ((gConfig.IsPremium) and (not gConfig.Pro));
  edEmitirNFCe.Enabled := not btnPremium.Visible;
  aEnable := edEmitirNFCe.Checked and edEmitirNFCe.Enabled and (edEstado.ItemIndex>=0);
  lc1Group_Root.Enabled := aEnable;
  lcCDGroup_Root.Enabled := aEnable;
  lcSATGroup_Root.Enabled := aEnable;  
  lc3Group_Root.Enabled := aEnable;
  lc4Group_Root.Enabled := aEnable;
  lc5Group_Root.Enabled := aEnable;
  btnOk.Enabled := Dados.CM.UA.Admin and edEmitirNFCe.Enabled;
end;

procedure TFrmConfigNFE.FormCreate(Sender: TObject);
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
end;

procedure TFrmConfigNFE.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(FFrmNCM) then gNCMPesqList.ReleaseFrm(FFrmNCM);
end;

procedure TFrmConfigNFE.FormShow(Sender: TObject);
begin
  inherited;
  FDisableSetFocus := False;
  Dados.CM.ObtemCertificados(edCertificado.Properties.Items);
  EnableDisable;
  Timer1.Enabled := True;
end;

procedure TFrmConfigNFE.GerarSignACClick(Sender: TObject);
var 
  S: String;
begin
  inherited;
  if Length(SoDig(edCNPJ.Text))=0 then
    raise exception.Create('É necessário preencher o CNPJ antes de gerar a assinatura');

  if Length(SoDig(edCNPJ.Text))<>14 then
    raise exception.Create('O CNPJ da sua empresa não está correto. Tem que ter 14 dígitos');

  S := 'http://docserver.nextar.com.br:8080/?cnpj='+SoDig(edCNPJ.Text)+'&loja='+gConfig.Conta+'&chave='+chave(gConfig.Conta, edCNPJ.Text);

  S := httpGet(S);
  if Pos('erro=', S)=1 then 
    raise Exception.Create(Copy(S, 6, 1000));
    
  MTSignACSat.Value := S;
  edSignAC.Text := S;  
  edSignAC.Refresh;
end;

procedure TFrmConfigNFE.Ler;
begin
  inherited;
  MT.Active := False;
  MT.Active := True;
  MT.Append;
  TransfDados(Dados.tNFConfig, MT);
  
  FCNPJ := Dados.tNFConfigCNPJ.Value;
  FSignAC := Dados.tNFConfigSignACSat.Value;
  
  if FAtivar then
    MTEmitirNFCe.Value := True;
  
  if Dados.tNFConfigModeloNFCe_Email.IsNull then
    edModEmailNFCE.IDDoc := '' else
    edModEmailNFCE.IDDoc := Dados.tNFConfigModeloNFCe_Email.Value;

  if Dados.tNFConfigModeloSAT_Email.IsNull then
    edModEmailSAT.IDDoc := '' else
    edModEmailSAT.IDDoc := Dados.tNFConfigModeloSAT_Email.Value;  
  Atualiza;
end;

class procedure TFrmConfigNFE.Mostrar(aAtivar: Boolean);
begin
  inherited;

  Dados.GravaFlag('acessou_config_nfce', '1');
  
  if (not gConfig.IsPremium) or gConfig.Pro then
    TFrmRecursoPremium.Create(nil).ShowModal;
    
  if gConfig.IsPremium and (not gConfig.Pro) then 
    with TFrmConfigNFE.Create(nil) do begin
      Ativar := aAtivar;                                  
      ShowModal;
    end;  
end;

function TFrmConfigNFE.NumItens: Integer;
begin
  Result := 3;
end;

procedure TFrmConfigNFE.PaginasChange(Sender: TObject);
begin
  inherited;
  if lc1Group_Root.Enabled and (not FDisableSetFocus) then 
  case Paginas.ActivePageIndex of
    0 : edEstado.SetFocus;
    1 : edCertificado.SetFocus;
    2 : edCodAtivacao.SetFocus;
    3 : edLogr.SetFocus;
    4 : edPedirCPF.SetFocus;
    5 : edFromEmail.SetFocus;  
  end;
end;

procedure TFrmConfigNFE.PaginasDrawTabEx(AControl: TcxCustomTabControl;
  ATab: TcxTab; Font: TFont);
begin
  inherited;
  if btnPremium.Visible then
    Font.Color := clSilver;
end;

procedure TFrmConfigNFE.Renumera;
begin
//  RenumCB(edEmitirNFCe, 0);
//  RenumLB(lbCRT, 2);
end;

procedure TFrmConfigNFE.Salvar;
var 
   aEmissaoAntes : Boolean;
   aCNPJAnt, aRazaoAnt : String;
begin
  inherited;

  Valida;

  with Dados do begin
    if tNFConfig.IsEmpty then 
      tNFConfig.Append else
      tNFConfig.Edit;
    aEmissaoAntes := tNFConfigEmitirNFCe.Value;  
    aCNPJAnt := tNFConfigCNPJ.Value;
    aRazaoAnt := tNFConfigRazaoSocial.Value;
    TransfDados(MT, tNFConfig);
    tNFConfigPinCert.Value := Trim(edPin.Text);

    if edModEmailNFCE.IDDoc='' then
      tNFConfigModeloNFCe_Email.Clear else
      tNFConfigModeloNFCe_Email.Value := edModEmailNFCE.IDDoc;

    if edModEmailSAT.IDDoc='' then
      tNFConfigModeloSAT_Email.Clear else
      tNFConfigModeloSAT_Email.Value := edModEmailSAT.IDDoc;
      
    if SameText(tNFConfigEnd_UF.Value, 'SP') then
      tNFConfigTipo.Value := nfcfg_sat else
      tNFConfigTipo.Value := nfcfg_nfce;

    if ESAT and (edSignAC.Text<>FSignAC) then
      tNFConfigAssociarSignAC.Value := True;  
      
    tNFConfig.Post;  

    if tNFConfigEmitirNFCe.Value and (not aEmissaoAntes) then begin 
      if ESAT then begin
        if (not tNFConfigDependSATOk.Value) then NotityErroDepend := True;
        Dados.GravaFlag('acessou_config_sat', '1');
        Dados.GravaFlag('ativou_sat', '1');
      end else begin
      Dados.GravaFlag('acessou_config_nfce', '1');
        Dados.GravaFlag('ativou_nfce', '1');
        if (not tNFConfigDependNFCEOk.Value) then NotityErroDepend := True;
      end;
      Dados.EnviaEmailAtivacaoNFCe('', '');
    end else
    if tNFConfigEmitirNFCe.Value then begin
      if (aCNPJAnt=tNFConfigCNPJ.Value) then aCNPJAnt := '';
      if aRazaoAnt=tNFConfigRazaoSocial.Value then aRazaoAnt := '';
      if (aRazaoAnt>'') or (aCNPJAnt>'') then
        Dados.EnviaEmailAtivacaoNFCe(aCNPJAnt, aRazaoAnt);
    end;    
    
  end;
end;

procedure TFrmConfigNFE.SetEditModelo(const Value: Boolean);
begin
  Paginas.ActivePageIndex := 3;
  FEditModelo := Value;
end;

procedure TFrmConfigNFE.Timer1Timer(Sender: TObject);
begin
  inherited;
  Timer1.Enabled := False;
  
  if edEmitirNFCe.Enabled and FEditModelo then begin
    Paginas.ActivePage := tsEmail;
    if ESAT then
      edModEmailSAT.SetFocus else
      edModEmailNFCE.SetFocus;
  end else
  if lc1Group_Root.Enabled then begin
    Paginas.ActivePageIndex := 0;
    edEstado.SetFocus;
  end;
end;

procedure TFrmConfigNFE.Valida;
begin
  if not edEmitirNFCe.Checked then Exit;

  if edEstado.EditValue='' then 
  begin
    Paginas.ActivePageIndex := 0;
    edEstado.SetFocus;
    raise exception.Create('É necessário infomar o estado');
  end;
  
  if edMun.Text='' then begin
    Paginas.ActivePageIndex := 3;
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

  if (not ESAT) and (Trim(MTIDCSC.Value)='') then begin
    Paginas.ActivePageIndex := 0;
    edIdCSC.SetFocus;
    raise exception.Create('É necessário informar o ID CSC');
  end;  

  if (not ESAT) and (Length(SoDig(MTIDCSC.Value))<>6) then begin
    Paginas.ActivePageIndex := 0;
    raise Exception.Create('O ID CSC deve conter obrigatoriamente 6 dígitos numéricos');
  end;
  
  if (not ESAT) and (Trim(MTCSC.Value)='') then begin
    Paginas.ActivePageIndex := 0;
    edCSC.SetFocus;
    raise Exception.Create('É necessário informar o Token do CSC');
  end;

  if (not ESAT) and (Trim(edCertificado.Text)='') then begin
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

  if Trim(edLogr.Text)='' then begin
    Paginas.ActivePageIndex := 3;
    edLogr.SetFocus;
    raise Exception.Create('O endereço deve ser informado');
  end;
  
  if Trim(edNumero.Text)='' then begin
    Paginas.ActivePageIndex := 3;
    edNumero.SetFocus;
    raise Exception.Create('O número do endereço deve ser informado');
  end;

  if Trim(edBairro.Text)='' then begin
    Paginas.ActivePageIndex := 3;
    edBairro.SetFocus;
    raise Exception.Create('O bairro deve ser informado');
  end;

  if Trim(edCEP.Text)='' then begin
    Paginas.ActivePageIndex := 3;
    edCEP.SetFocus;
    raise Exception.Create('O CEP deve ser informado');
  end;

  if Length(SoDig(edCEP.Text))<8 then begin
    Paginas.ActivePageIndex := 3;
    edCEP.SetFocus;
    raise Exception.Create('O CEP deve ter 8 dígitos');
  end;  

  if (not ESAT) and (Trim(edSerieNFCe.Text)='') then begin
    btnAvancadas.Down := True;
    lcgr_Avancado.Visible := True;
    Paginas.ActivePageIndex := 4;
    edSerieNFCe.SetFocus;
    raise Exception.Create('É necessário informar a série da NFC-e');
  end;

  if ESAT and (Length(edSignAC.Text)<>344) then begin
    Paginas.ActivePageIndex := 2;
    edSignAC.SetFocus;
    if Trim(edSignAC.Text)='' then
      raise Exception.Create('É necessário informar a assinatura do aplicativo comercial') else
      raise Exception.Create('A assinatura do aplicativo comercial está incorreta. Ela tem que ter 344 dígitos');
  end;

  if ESAT and (Trim(edCodAtivacao.Text)='') then begin
    Paginas.ActivePageIndex := 2;
    edCodAtivacao.SetFocus;
    raise Exception.Create('É necessário informar o Código de Ativação do Seu SAT');
  end;

  if ESAT and MTsat_modelo.IsNull then begin
    Paginas.ActivePageIndex := 2;
    edsat_modelo.SetFocus;
    raise Exception.Create('É necessário informar o equipamento SAT utilizado em sua loja');
  end;

  if ESAT and (MTsat_modelo.Value=sat_bematech) and (Trim(MTsat_config.Value)='') then begin
    Paginas.ActivePageIndex := 2;
    edsat_porta.SetFocus;
    raise Exception.Create('É necessário informar a porta de comunicação do equipamento SAT');
  end;

  if ESAT and (MTsat_modelo.Value=sat_outros) and (Trim(MTNomeDllSAT.Value)='') then begin
    Paginas.ActivePageIndex := 2;
    edNomeDllSat.SetFocus;
    raise Exception.Create('É necessário informar o arquivo da DLL do equipamento SAT');
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

procedure TFrmConfigNFE.wmAtualizaDireitosConfig(var Msg: TMessage);
var I : Integer;
  B : Boolean;
begin
  B := edEmitirNFCe.Enabled;
  EnableDisable;
  if (not B) and edEmitirNFCe.Enabled then begin
    I := Paginas.ActivePageIndex;
    Paginas.ActivePageIndex := 0;
    Paginas.ActivePageIndex := 1;
    Paginas.ActivePageIndex := I;
  end;
end;

end.

