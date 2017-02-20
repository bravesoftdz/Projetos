unit ncaFrmCadCli;
{
    ResourceString: Dario 10/03/13
    João: TODO List!
}

interface

{$I NEX.inc}

uses
  Windows, Variants, Messages, SysUtils, Classes, Graphics, jpeg, Controls, Forms, Dialogs,
  dxBar, StdCtrls, 
  DBCtrls, ExtCtrls,
  ComCtrls, Db, kbmMemTable, ToolWin, nxdb, 
  dxBarExtItems, 
  cxStyles, cxGraphics, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxImageComboBox, cxMemo, ufmFormBase,
  cxVGrid, cxDBVGrid, cxInplaceContainer, cxPC, cxControls,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, Mask,
  cxCheckBox, cxRadioGroup, cxTimeEdit, cxLookAndFeels, cxGroupBox, cxDBEdit,
  cxContainer, cxCurrencyEdit, cxImage, Buttons, cxLabel,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel, LMDLabel, LMDControl,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton,
  cxClasses, cxBarEditItem, 
  dxNavBarCollns, dxNavBarBase, dxNavBar,
  dxLayoutControl, dxLayoutLookAndFeels, dxNavBarStyles,
  cxLookAndFeelPainters, ImgList, cxSpinEdit, LMDCustomImageList, LMDGraph,
  LMDImageList, cxPCdxBarPopupMenu, dxLayoutcxEditAdapters, dxLayoutContainer,
  LMDPNGImage, Menus, cxButtons, dxBarBuiltInMenu, ncaFrmEnderecos,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit;

type
  TFrmCadCli = class(TForm)
    BarMgr: TdxBarManager;
    DS: TDataSource;
    panPri: TLMDSimplePanel;
    tAux: TnxTable;
    cmGravar: TdxBarLargeButton;
    cmCancelar: TdxBarLargeButton;
    FMgr: TFormManager;
    MT: TkbmMemTable;
    L: TcxLookAndFeelController;
    dxBarCombo1: TdxBarCombo;
    dxBarCombo2: TdxBarCombo;
    barTopo: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    OpenDlg: TOpenDialog;
    panPaginas: TLMDSimplePanel;
    Paginas: TcxPageControl;
    tsDados: TcxTabSheet;
    lcFicha: TdxLayoutControl;
    edCodigo: TcxDBMaskEdit;
    edNome: TcxDBTextEdit;
    edSexo: TcxDBImageComboBox;
    edTelefone: TcxDBTextEdit;
    edCelular: TcxDBTextEdit;
    edRG: TcxDBTextEdit;
    edNasc: TcxDBDateEdit;
    edCPF: TcxDBTextEdit;
    edMae: TcxDBTextEdit;
    edPai: TcxDBTextEdit;
    edEmail: TcxDBTextEdit;
    edObs: TcxDBMemo;
    pagFoto: TcxPageControl;
    tsSemFoto: TcxTabSheet;
    LMDSimplePanel2: TLMDSimplePanel;
    Image1: TImage;
    lbSemFoto: TcxLabel;
    tsFoto: TcxTabSheet;
    panFoto: TLMDSimplePanel;
    edFoto: TcxDBImage;
    edPJuridica: TcxDBCheckBox;
    lcFichaGroup_Root: TdxLayoutGroup;
    lcFichaGroup6: TdxLayoutGroup;
    lcFichaGroup1: TdxLayoutGroup;
    lcFichaItem2: TdxLayoutItem;
    lcFichaItem3: TdxLayoutItem;
    lcFichaGroup4: TdxLayoutGroup;
    lcDataNasc: TdxLayoutItem;
    lcFichaGroup8: TdxLayoutGroup;
    lcFichaGroup7: TdxLayoutGroup;
    lcFichaItem8: TdxLayoutItem;
    lcFichaItem9: TdxLayoutItem;
    lcRG: TdxLayoutItem;
    lcCPF: TdxLayoutItem;
    lcSexo: TdxLayoutItem;
    lcFichaItem24: TdxLayoutItem;
    lcPai: TdxLayoutItem;
    lcMae: TdxLayoutItem;
    lcFichaItem22: TdxLayoutItem;
    lcFichaItem23: TdxLayoutItem;
    lcFichaGroup18: TdxLayoutGroup;
    lcFichaItem1: TdxLayoutItem;
    lcFichaGroup2: TdxLayoutGroup;
    tsDebitos: TcxTabSheet;
    LMDSimplePanel11: TLMDSimplePanel;
    cxLabel2: TcxLabel;
    rbLimiteDeb_padrao: TcxRadioButton;
    rbLimiteDeb_Zero: TcxRadioButton;
    rbLimiteDeb_Valor: TcxRadioButton;
    edLimiteDeb: TcxDBCurrencyEdit;
    btnAlterarLimiteDeb: TcxButton;
    tsExtratoFid: TcxTabSheet;
    tsTran: TcxTabSheet;
    MTCodigo: TStringField;
    MTCodigoKey: TStringField;
    MTNome: TWideStringField;
    MTEndereco: TWideStringField;
    MTEndereco2: TWideStringField;
    MTEnd_Numero: TWideStringField;
    MTEnd_CodMun: TWideStringField;
    MTEnd_Dest: TWideStringField;
    MTEnd_Obs: TWideStringField;
    MTendereco_id: TGuidField;
    MTPais: TWideStringField;
    MTBairro: TWideStringField;
    MTCidade: TWideStringField;
    MTUF: TWideStringField;
    MTCEP: TWideStringField;
    MTNFE_CredIcms: TBooleanField;
    MTSexo: TStringField;
    MTObs: TWideMemoField;
    MTCpf: TWideStringField;
    MTRg: TWideStringField;
    MTTelefone: TWideStringField;
    MTPassaportes: TFloatField;
    MTPai: TWideStringField;
    MTMae: TWideStringField;
    MTUltVisita: TDateTimeField;
    MTDebito: TCurrencyField;
    MTDataNasc: TDateTimeField;
    MTCelular: TWideStringField;
    MTTemDebito: TBooleanField;
    MTLimiteDebito: TCurrencyField;
    MTFoto: TGraphicField;
    MTIncluidoEm: TDateTimeField;
    MTAlteradoEm: TDateTimeField;
    MTIncluidoPor: TStringField;
    MTAlteradoPor: TStringField;
    MTFidPontos: TFloatField;
    MTFidTotal: TFloatField;
    MTFidResg: TFloatField;
    MTAniversario: TStringField;
    MTSemFidelidade: TBooleanField;
    MTTemCredito: TBooleanField;
    MTPJuridica: TBooleanField;
    MTInativo: TBooleanField;
    MTFornecedor: TBooleanField;
    MTValorCred: TCurrencyField;
    MTIdade: TWordField;
    MTID: TLongWordField;
    panEnd: TLMDSimplePanel;
    lcEnderecos: TdxLayoutItem;
    LMDSimplePanel1: TLMDSimplePanel;
    NB: TdxNavBar;
    NBGroup1: TdxNavBarGroup;
    nbiFicha: TdxNavBarItem;
    nbiFid: TdxNavBarItem;
    nbiTran: TdxNavBarItem;
    nbiDebitos: TdxNavBarItem;
    NBStyleItem1: TdxNavBarStyleItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    MTNaoContribICMS: TBooleanField;
    MTIsentoIE: TBooleanField;
    edIsentoIE: TcxDBCheckBox;
    lcIsentoIE: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    lcNaoContribICMS: TdxLayoutItem;
    edNaoContribICMS: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    lcAprovICMS: TdxLayoutItem;
    edAprovICMS: TcxDBCheckBox;
    edConsumidor: TcxDBImageComboBox;
    lcConsumidor: TdxLayoutItem;
    MTConsumidor: TBooleanField;
    MTEmail: TWideStringField;
    MTTranspEntPadrao: TLongWordField;
    MTNomeTranspEnt: TStringField;
    edTranspEntPadrao: TcxDBButtonEdit;
    lcTranspEntPadrao: TdxLayoutItem;
    MTInfoExtra: TWideStringField;
    edInfoExtra: TcxDBTextEdit;
    lcInfoExtra: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    FTab: TnxTable;
    FTabID: TUnsignedAutoIncField;
    FTabUID: TGuidField;
    FTabCodigo: TStringField;
    FTabCodigoKey: TStringField;
    FTabNome: TWideStringField;
    FTabEndereco: TWideStringField;
    FTabEndereco2: TWideStringField;
    FTabEnd_Numero: TWideStringField;
    FTabEnd_CodMun: TWideStringField;
    FTabEnd_Dest: TWideStringField;
    FTabEnd_Obs: TWideStringField;
    FTabendereco_id: TGuidField;
    FTabPais: TWideStringField;
    FTabBairro: TWideStringField;
    FTabCidade: TWideStringField;
    FTabUF: TWideStringField;
    FTabCEP: TWideStringField;
    FTabNaoContribICMS: TBooleanField;
    FTabIsentoIE: TBooleanField;
    FTabNFE_CredIcms: TBooleanField;
    FTabSexo: TStringField;
    FTabObs: TWideMemoField;
    FTabCpf: TWideStringField;
    FTabRg: TWideStringField;
    FTabTelefone: TWideStringField;
    FTabEmail: TWideMemoField;
    FTabPassaportes: TFloatField;
    FTabPai: TWideStringField;
    FTabMae: TWideStringField;
    FTabUltVisita: TDateTimeField;
    FTabDebito: TCurrencyField;
    FTabDataNasc: TDateTimeField;
    FTabCelular: TWideStringField;
    FTabTemDebito: TBooleanField;
    FTabLimiteDebito: TCurrencyField;
    FTabFoto: TGraphicField;
    FTabIncluidoEm: TDateTimeField;
    FTabAlteradoEm: TDateTimeField;
    FTabIncluidoPor: TStringField;
    FTabAlteradoPor: TStringField;
    FTabFidPontos: TFloatField;
    FTabFidTotal: TFloatField;
    FTabFidResg: TFloatField;
    FTabAniversario: TStringField;
    FTabSemFidelidade: TBooleanField;
    FTabTemCredito: TBooleanField;
    FTabInfoExtra: TWideStringField;
    FTabTranspEntPadrao: TLongWordField;
    FTabTranspEnt: TBooleanField;
    FTabTipoFor: TByteField;
    FTabPJuridica: TBooleanField;
    FTabConsumidor: TBooleanField;
    FTabInativo: TBooleanField;
    FTabFornecedor: TBooleanField;
    FTabValorCred: TCurrencyField;
    FTabRecVer: TLongWordField;
    procedure DSStateChange(Sender: TObject);
    procedure InspNomeIsentoPropertiesGetEditingProperties(
      Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer;
      var AProperties: TcxCustomEditProperties);
    procedure cmGravarClick(Sender: TObject);
    procedure cmCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MTAfterInsert(DataSet: TDataSet);
    procedure MTAfterEdit(DataSet: TDataSet);
    procedure hora10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure hora10Click(Sender: TObject);
    procedure InspNomeTAPropertiesGetEditingProperties(
      Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer;
      var AProperties: TcxCustomEditProperties);
    procedure FMgrPageControlChange(Sender: TObject);
    procedure FMgrGetTabSheet(Sender: TObject; aClass: TFrmBaseClass;
      var aTabSheet: TcxTabSheet);
    procedure NBLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure edFotoPropertiesEditValueChanged(Sender: TObject);
    procedure lbSemFotoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edFotoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MTCalcFields(DataSet: TDataSet);
    procedure rbLimiteDeb_ValorClick(Sender: TObject);
    procedure rbLimiteDeb_ZeroClick(Sender: TObject);
    procedure rbLimiteDeb_padraoClick(Sender: TObject);
    procedure btnAlterarLimiteDebClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edPJuridicaPropertiesEditValueChanged(Sender: TObject);
    procedure edNaoContribICMSClick(Sender: TObject);
    procedure edIsentoIEClick(Sender: TObject);
    procedure edTranspEntPadraoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edTranspEntPadraoEnter(Sender: TObject);

    { Private declarations }
  private
    FPai: TWinControl;

    procedure RefreshBtn;

    //procedure OnBringToFrontTimer(Sender: TObject);

    procedure wmAtualizaStrings(var Msg: TMessage); message wm_user;
    procedure wmValidarNFe(var Msg: TMessage); message wm_user+1;
    

    procedure Atualiza;

    procedure ValidaNFe;

    procedure PesqTranspEntPadrao;

  public
    FEnd : TFrmEnderecos;
    FNovo : Boolean;
    Resultado: Integer;
    FRgAnt : String;
    FCodAnt : String;
    FTabOrigem : TDataset;
    FCHorario : Cardinal;
    FValidarNFe : Boolean;
    function Novo(aTab: TDataset; aPai: TWinControl): Integer;
    procedure Editar(aTab: TDataset; aPai: TWinControl; aValidarNFe: Boolean = False);
    procedure AfterEditarEnd(Sender: TObject);

    { Public declarations }
  end;

  TThreadStrings = class ( TThread )
  private
    FWnd : HWND;
  protected
    procedure Execute; override;
  public
    constructor Create(aWnd: HWND);  
  end;

var
  FrmCadCli: TFrmCadCli;
  
  slCamposCli,
  slCidades,
  slBairros : TStrings;

implementation

uses 
  ncaDM,
  ncErros,
  ncaFrmPri,
  ncClassesBase,
  ncIDRecursos,
  ncListaID,
  ufmImagens, 
  ncafbTran, ncafgExtratoFid, ncaFrmWebCam2,
  ncaFrmLimiteDebPadrao, ncaStrings, ncEndereco, ncaFrmPesqTranspEnt;

// START resource string wizard section
resourcestring
  SHora = 'hora';
  SDataDeNascimentoNãoéVálida = 'Data de nascimento não é válida';
  SNomeNãoPodeSerDeixadoEmBranco = 'Nome não pode ser deixado em branco !';
  SJáExisteUmClienteCadastradoComEs = 'Já existe outro cliente cadastrado com esse RG';
  SCodigoRepetido = 'Já existe outro cliente cadastrado com esse código';
  SSeguirLimitePadrão = 'Seguir limite padrão (';
  SSeguirOpçãoPadrão = 'Seguir opção padrão ';
  SLivre = 'Livre';
  S1Ano = '1 ano';
  SAnos = ' anos';
  

// END resource string wizard section


{$R *.DFM}

procedure TFrmCadCli.Editar(aTab: TDataset; aPai: TWinControl; aValidarNFe: Boolean = False);
begin
  if aTab=nil then FTabOrigem := Dados.tbCli;
  try
    FValidarNFe := aValidarNFe;
    FNovo := False;
    FTabOrigem := ATab;
    FTab.FindKey([aTab.FieldByName('ID').AsInteger]);
    MT.Insert;
    TransfDados(FTab, MT);
    if (MTSexo.Value<>'M') and (MTSexo.Value<>'F') then
      MTSexo.Value := 'M';
    if MTInativo.IsNull then
      MTInativo.Value := False;

    FEnd.Load(aTab.FieldByName('ID').AsLongWord);  
    FEnd.ValidarNFe := FValidarNFe;
      
    cmGravar.Enabled := Permitido(daCliCadastrar);
    
    if aPai=nil then
      ShowModal
    else begin
      FPai := aPai;
      panPri.Parent := FPai;
    end;  
  finally
    if FPai=nil then Free;
  end;  
end;

procedure TFrmCadCli.edNaoContribICMSClick(Sender: TObject);
begin
  Atualiza;
end;

procedure TFrmCadCli.edPJuridicaPropertiesEditValueChanged(Sender: TObject);
begin
  Atualiza;
end;

procedure TFrmCadCli.edTranspEntPadraoEnter(Sender: TObject);
begin
  PesqTranspEntPadrao;
end;

procedure TFrmCadCli.edTranspEntPadraoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  PesqTranspEntPadrao;
end;

procedure TFrmCadCli.cmGravarClick(Sender: TObject);
begin
  Paginas.ActivePageIndex := 0;
  edTelefone.SetFocus;
  edNome.SetFocus;
  edNasc.PostEditValue;
  if (not MTDataNasc.IsNull) and (mtIdade.Value<>0) then
  if (MTIdade.Value<1) or (MTIdade.Value>110) then begin
    ShowMsg(SDataDeNascimentoNãoéVálida, True);
    edNasc.SetFocus;
    Exit;
  end;
    
  if MTNome.Value = '' then
    Raise ENexCafe.Create(SNomeNãoPodeSerDeixadoEmBranco);

  if (FCodAnt<>MTCodigo.Value) and (MTCodigo.Value>'') and tAux.Locate('CodigoKey', CodigoCliKey(MTCodigo.Value), []) then begin
    edCodigo.SetFocus;
    raise ENexCafe.Create(SCodigoRepetido);
  end;

  if lcIsentoIE.Visible then 
  if (not edIsentoIE.Checked) and (SoDig(edRG.Text)='') then begin
    Paginas.ActivePageIndex := 0;
    edRG.SetFocus;
    raise Exception.Create(rsCadastrarIE);
  end;
   
  if (FRgAnt<>MTRg.Value) and (MTRg.AsString>'') and tAux.FindKey([MTRG.Value]) then begin
    edRG.SetFocus;
    Raise ENexCafe.Create(SJáExisteUmClienteCadastradoComEs);
  end;
    
  if not (MT.State in [dsInsert, dsEdit]) then MT.Edit;
  
  if FNovo then begin
    FTab.Insert;
    FTab.FieldByName('IncluidoEm').AsDateTime := Now; // do not localize
    FTab.FieldByName('IncluidoPor').AsString := Dados.CM.Username; // do not localize
  end else begin
    FTab.Edit; 
    FTab.FieldByName('AlteradoEm').AsDateTime := Now; // do not localize
    FTab.FieldByName('AlteradoPor').AsString := Dados.CM.Username; // do not localize
  end;

  if FValidarNFe then ValidaNFe;


  FEnd.Enderecos[0].DadosAtu.SaveToDataset(MT);

  TransfDadosEsp(MT, FTab, '|ID|IncluidoEm|IncluidoPor|AlteradoEm|AlteradoPor|TemDebito|Debito|ValorCred|TemCredito|'); // do not localize
  FTab.FieldByName('Fornecedor').AsBoolean := False; // do not localize

  FTab.Post;
  FEnd.Save(FTabID.Value);
  
  if FNovo then 
    FTabOrigem.Locate('ID', FTabID.Value, []) else
    FTabOrigem.Refresh;
  
  Resultado := FTabID.Value;
  if FPai=nil then
    Close;
end;

procedure TFrmCadCli.rbLimiteDeb_padraoClick(Sender: TObject);
begin
  edLimiteDeb.Clear;
  MTLimiteDebito.Clear;
  edLimiteDeb.Enabled := False;
end;

procedure TFrmCadCli.rbLimiteDeb_ValorClick(Sender: TObject);
begin
  edLimiteDeb.Enabled := True;
  if Paginas.ActivePage = tsDebitos then
    edLimiteDeb.SetFocus;
end;

procedure TFrmCadCli.rbLimiteDeb_ZeroClick(Sender: TObject);
begin
  edLimiteDeb.Value := 0;
  MTLimiteDebito.Value := 0;
  edLimiteDeb.Enabled := False;
end;

procedure TFrmCadCli.lbSemFotoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var 
  //B : TBitmap;
  //J : TJpegImage;
  S : String;
begin
  S := TFrmWebCam2.Create(Self).ObtemFoto('');
  if (S<>'') and (S<>'clear') then  // TODO : check string
  begin
{    S := OpenDlg.FileName;
    if SameText(ExtractFileExt(OpenDlg.FileName), '.bmp') then begin
      B := TBitmap.Create;
      J := TJpegImage.Create;
      try
        B.LoadFromFile(OpenDlg.FileName);
        J.Assign(B);
        S := ChangeFileExt(S, '.jpg');
        J.SaveToFile(S);
      finally
        J.Free;
        B.Free;
      end;
    end;     }
    CheckImgLimit(GetFileSize(S));
    
    MTFoto.LoadFromFile(S);
    edFoto.EditValue := MTFoto.AsVariant;
    edFoto.PostEditValue;
  end else begin
    MTFoto.Clear;
    edFoto.Clear;
    edFoto.PostEditValue;
  end;
end;

procedure AjustaFontRB(RB: TcxRadioButton);
begin
  if RB.Checked then
    RB.Font.Style := [fsBold] else
    RB.Font.Style := [];
end;

procedure TFrmCadCli.wmAtualizaStrings(var Msg: TMessage); 
begin
  FEnd.UpdateBairroCidade(slBairros, slCidades);
end;

procedure TFrmCadCli.wmValidarNFe(var Msg: TMessage);
begin
  ValidaNFe;
end;

procedure TFrmCadCli.AfterEditarEnd(Sender: TObject);
begin
  if lcPai.Visible then
    edPai.SetFocus else
    edEmail.SetFocus;
end;

procedure TFrmCadCli.Atualiza;
begin
  if edPJuridica.Checked then begin
    if gConfig.PaisBrasil then begin
      lcRG.CaptionOptions.Text := rsIE;
      lcCPF.CaptionOptions.Text := rsCNPJ;
      lcIsentoIE.Visible := True;
      lcNaoContribICMS.Visible := True;
      lcAprovICMS.Visible := Dados.EmiteNFeVenda and (not edNaoContribICMS.Checked) and Dados.tNFConfignfe_permite_cred_icms.Value;
      lcRG.Enabled := not edIsentoIE.Checked;
    end else begin
      lcRG.Caption := rsDocID;
      lcCPF.Visible := False;
      lcIsentoIE.Visible := False;
      lcNaoContribICMS.Visible := False;
      lcAprovICMS.Visible := False;
    end;
    lcConsumidor.Visible := Dados.EmiteNFeVenda;
  end else begin
    lcIsentoIE.Visible := False;
    lcNaoContribICMS.Visible := False;
    lcAprovICMS.Visible := False;
  
    if gConfig.PaisBrasil then begin
      lcRG.CaptionOptions.Text := rsRG;
      lcCPF.CaptionOptions.Text := rsCPF;
    end else begin
      lcRG.CaptionOptions.Text := rsDocID;
      lcCPF.Visible := False;
    end;
    lcConsumidor.Visible := False;
  end;
  lcDataNasc.Visible := not edPJuridica.Checked;
  lcSexo.Visible := not edPJuridica.Checked;
  lcPai.Visible := not edPJuridica.Checked;
  lcMae.Visible := not edPJuridica.Checked;
end;

procedure TFrmCadCli.btnAlterarLimiteDebClick(Sender: TObject);
begin
  TFrmLimiteDeb.Create(Self).ShowModal;
  rbLimiteDeb_Padrao.Caption := SSeguirLimitePadrão+Trim(FloatToStrF(gConfig.LimitePadraoDebito, ffCurrency, 10, 2))+')';
end;

procedure TFrmCadCli.cmCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadCli.FMgrGetTabSheet(Sender: TObject; aClass: TFrmBaseClass;
  var aTabSheet: TcxTabSheet);
begin
  if aClass = TfbTran then
    aTabSheet := tsTran
  else
  if aClass = TfbExtratoFid then
    aTabSheet := tsExtratoFid; 
end;

procedure TFrmCadCli.FMgrPageControlChange(Sender: TObject);
begin
  if Paginas.ActivePage=tsTran then begin
    if FMgr.FormByClass(TfbTran)=nil then begin
      FMgr.RegistraForm(TfbTran);
      LockWindowUpdate(Handle);
      try
        FMgr.Mostrar(TfbTran, ftran_Cliente, MTID.Value);
        with TfbTran(FMgr.FormAtivo) do begin
          panTran.AlignWithMargins := False;    
          pantsTran.Bevel.StandardStyle := lsNone;
          TV.DataController.DataModeController.GridMode := False;
          TV.OptionsView.Footer := True;
        end;  
      finally
        LockWindowUpdate(0);
      end;
    end;
  end else
  if Paginas.ActivePage=tsExtratoFid then begin
    if FMgr.FormByClass(TfbExtratoFid)=nil then begin
      FMgr.RegistraForm(TfbExtratoFid);
      LockWindowUpdate(Handle);
      try
        FMgr.Mostrar(TfbExtratoFid, ftran_Cliente, MTID.Value);   
        with TfbExtratoFid(FMgr.FormAtivo) do 
          dxBarDockControl1.SunkenBorder := False;
{          BarMgrBar1.BorderStyle := bbsNone;
        end;}
      finally
        LockWindowUpdate(0);
      end;
    end;
  end;
end;

procedure TFrmCadCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FMgr.Clear;
  Action := caFree;
end;

procedure TFrmCadCli.FormCreate(Sender: TObject);
var 
  II : TcxImageComboBoxItem;
const
  SNStr : Array[Boolean] of String[5] = ('(não)', '(sim)');

function GetCharCase(aField: String): TEditCharCase;
var P: Integer;
begin
  P := StrToIntDef(gConfig.slCamposCliCC.Values[aField], 0);
  case P of
    1 : Result := ecUpperCase;
    2 : Result := ecLowerCase;
  else
    Result := ecNormal;
  end;
end;  

begin
  Paginas.Properties.HideTabs := true;
  FEnd := TFrmEnderecos.Create(Self);
  FEnd.ParentFrm := Handle;
  FEnd.panPri.parent := panEnd;
  FEnd.OnAfterEditar := AfterEditarEnd;

  FValidarNFe := False;

  lcCPF.Visible := gConfig.PaisBrasil;
  if gConfig.PaisBrasil then
    lcRG.Caption := rsDocID;

  btnAlterarLimiteDeb.Enabled := Dados.CM.UA.Admin;

  rbLimiteDeb_Padrao.Caption := SSeguirLimitePadrão+Trim(FloatToStrF(gConfig.LimitePadraoDebito, ffCurrency, 10, 2))+')';

  edNome.Properties.CharCase := GetCharCase('Nome'); // do not localize
  edTelefone.Properties.CharCase := GetCharCase('Telefone'); // do not localize
  edCelular.Properties.CharCase := GetCharCase('Celular'); // do not localize
  edRG.Properties.CharCase := GetCharCase('Rg'); // do not localize
  edCPF.Properties.CharCase := GetCharCase('CPF'); // do not localize
{  edEndereco.Properties.CharCase := GetCharCase('Endereco'); // do not localize
  edBairro.Properties.CharCase := GetCharCase('Bairro'); // do not localize
  edCidade.Properties.CharCase := GetCharCase('Cidade'); // do not localize}
  edPai.Properties.CharCase := GetCharCase('Pai'); // do not localize
  edMae.Properties.CharCase := GetCharCase('Mae'); // do not localize
  edObs.Properties.CharCase := GetCharCase('Obs'); // do not localize
  edEmail.Properties.CharCase := GetCharCase('Email'); // do not localize
  
  TThreadStrings.Create(Handle);

  pagFoto.ActivePageIndex := 0;
  
  edLimiteDeb.Properties.ReadOnly := not Permitido(daAlterarLimiteDebito);

  FPai := nil;
  Paginas.ActivePageIndex := 0;

  FrmCadCli := Self;
  MT.Open;
  tAux.Open;
  Paginas.ActivePageIndex:= 0;
end;

procedure TFrmCadCli.FormShow(Sender: TObject);
begin
  Atualiza;
  if MTLimiteDebito.IsNull then
    rbLimiteDeb_padrao.Checked := True
  else
  if MTLimiteDebito.Value<0.01 then
    rbLimiteDeb_zero.Checked := True
  else begin
    rbLimiteDeb_Valor.Checked := True;
    edLimiteDeb.Enabled := True;
  end;
  FRGAnt := MTRG.Value;
  FCodAnt := MTCodigo.Value;
  Paginas.ActivePage := tsDados;
  edNome.SetFocus;
  pagFoto.ActivePageIndex := 1;
  Fend.AddFromDataset(MT);

  if mtFoto.IsNull then 
    pagFoto.ActivePageIndex := 0 else
    pagFoto.ActivePageIndex := 1;

  if (Screen.Width=640) then
    PostMessage(Handle, WM_SYSCOMMAND, SC_MAXIMIZE, 0);

  if FValidarNFe then PostMessage(Handle, wm_user+1, 0, 0);
end;

procedure TFrmCadCli.hora10Click(Sender: TObject);
begin
  with TLMDSpeedButton(Sender) do
  if Color=clGreen then
    Color := clRed
  else
    Color := clGreen;
end;

procedure TFrmCadCli.hora10MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if ssCtrl in Shift then 
    TLMDSpeedButton(Sender).Color := clGreen
  else
  if ssAlt in Shift then
    TLMDSpeedButton(Sender).Color := clRed;
end;

procedure TFrmCadCli.InspNomeIsentoPropertiesGetEditingProperties(
  Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer;
  var AProperties: TcxCustomEditProperties);
begin
  AProperties.ReadOnly := not Permitido(daCliMarcarIsento);
end;

procedure TFrmCadCli.InspNomeTAPropertiesGetEditingProperties(
  Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer;
  var AProperties: TcxCustomEditProperties);
begin
  AProperties.ReadOnly := not Permitido(daAlterarTipoAcesso);
end;

procedure TFrmCadCli.NBLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
begin
  Paginas.ActivePageIndex := ALink.Index;
end;

function TFrmCadCli.Novo(aTab: TDataset; aPai: TwinControl): Integer;
begin
  Result := -1; 
  if aTab=nil then aTab := Dados.tbCli;
  nbiFid.Enabled := False;
  nbiTran.Enabled := False;
  FTabOrigem := aTab;
  FNovo := True;
  MT.Insert;
  MTUF.Value := Dados.tbConfigUFPadrao.AsString;
  MTCidade.Value := Dados.tbConfigCidadePadrao.AsString;
  MTInativo.Value := False;
  MTSexo.Value := 'M';
  Resultado := -1;
  RefreshBtn;
  if aPai = nil  then
  begin
    try
      ShowModal;
    finally
      Result := Resultado;
      Free;
    end;
  end else begin
    FPai := aPai;
    panPri.Parent := FPai;
  end;
end;


procedure TFrmCadCli.PesqTranspEntPadrao;
var  aID: Cardinal;
begin
  aID := MTTranspEntPadrao.Value;
  if TFrmPesqTranspEnt.Create(Self).ObtemTranspEndPadrao(aID) then begin
    if not (MT.State in [dsEdit, dsInsert]) then MT.Edit;
    MTTranspEntPadrao.Value := aID;
    if aID=0 then begin
      MTTranspEntPadrao.Clear;
      MTNomeTranspEnt.Clear;
      edTranspEntPadrao.Clear;
    end;
  end;
end;

function ForceForegroundWindow(hwnd: THandle): boolean;
const
  SPI_GETFOREGROUNDLOCKTIMEOUT = $2000;
  SPI_SETFOREGROUNDLOCKTIMEOUT = $2001;
var
  ForegroundThreadID: DWORD;
  ThisThreadID : DWORD;
  timeout : DWORD;
begin
  if IsIconic(hwnd) then ShowWindow(hwnd, SW_RESTORE);
  if GetForegroundWindow = hwnd then 
    Result := true
  else begin

  // Windows 98/2000 doesn't want to foreground a window when some other
  // window has keyboard focus
  
    if ((Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion > 4)) or
        ((Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and
        ((Win32MajorVersion > 4) or ((Win32MajorVersion = 4) and
        (Win32MinorVersion > 0)))) then
    begin
  
  // Code from Karl E. Peterson, www.mvps.org/vb/sample.htm
  // Converted to Delphi by Ray Lischner
  // Published in The Delphi Magazine 55, page 16
  
      Result := false;
      ForegroundThreadID := GetWindowThreadProcessID(GetForegroundWindow,nil);
      ThisThreadID := GetWindowThreadPRocessId(hwnd,nil);
      if AttachThreadInput(ThisThreadID, ForegroundThreadID, true) then
      begin
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hwnd);
        AttachThreadInput(ThisThreadID, ForegroundThreadID, false);
        Result := (GetForegroundWindow = hwnd);
      end;
      if not Result then begin
  // Code by Daniel P. Stasinski
        SystemParametersInfo(SPI_GETFOREGROUNDLOCKTIMEOUT, 0, @timeout, 0);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(0),  SPIF_SENDCHANGE);
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hWnd);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0,
        TObject(timeout), SPIF_SENDCHANGE);
      end;
    end
    else begin
      BringWindowToTop(hwnd); // IE 5.5 related hack
      SetForegroundWindow(hwnd);
    end;
  
    Result := (GetForegroundWindow = hwnd);
  end;
end; { ForceForegroundWindow }

{procedure TFrmCadCli.OnBringToFrontTimer(Sender: TObject);
begin
  try
    ForceForegroundWindow(Handle);
  finally
    Sender.Free;
  end;
end;}

procedure TFrmCadCli.RefreshBtn;
begin
  cmGravar.Enabled := ((FPai=nil) or MT.Modified) and  Permitido(daCliCadastrar);
  cmCancelar.Enabled := cmGravar.Enabled;
end;

procedure TFrmCadCli.ValidaNFe;
begin
    if FEnd.Enderecos[0].DadosAtu.is_br then begin
      if edPJuridica.Checked then begin
        if SoDig(edCPF.Text)='' then begin
          Paginas.ActivePageIndex := 0;
          edCPF.SetFocus;
          raise Exception.Create('A emissão de NF-e exige que seja informado o CNPJ');
        end;

        if not IsCNPJ(SoDig(edCPF.Text)) then begin
          Paginas.ActivePageIndex := 0;
          edCPF.SetFocus;
          raise Exception.Create('O CNPJ informado é inválido!');
        end;
      end else begin
        if SoDig(edCPF.Text)='' then begin
          Paginas.ActivePageIndex := 0;
          edCPF.SetFocus;
          raise Exception.Create('A emissão de NF-e exige que seja informado o CPF');
        end;

        if not IsCPF(SoDig(edCPF.Text)) then begin
          Paginas.ActivePageIndex := 0;
          edCPF.SetFocus;
          raise Exception.Create('O CPF informado é inválido!');
        end;
      end;
    end;

    if not FEnd.Enderecos[0].DadosAtu.NFeOk then begin
      Paginas.ActivePageIndex := 0;
      ShowMessage('A emissão de NF-e exige que o endereço do cliente esteja preenchido corretamente');
      FEnd.P.ActivePageIndex := 0;
      FEnd.Editar;
      Exit;
    end;
end;

procedure TFrmCadCli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_F2    : cmGravarClick(nil);
    Key_F4    : FEnd.Novo;
    Key_F9    : FEnd.Editar;
    Key_E     : if ssCtrl in Shift then FEnd.lbCopiarClick(nil);
    Key_Esc   : Close;
  end;

  if Paginas.ActivePageIndex=0 then
  if (Key = KEY_Enter) then begin
    if edObs.Focused or edEmail.Focused or edTranspEntPadrao.Focused then Exit;
    if edCPF.Focused then 
      FEnd.Editar else
      Perform(WM_NEXTDLGCTL,0,0);
  end;  
end;

procedure TFrmCadCli.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then Key := #0;
end;

procedure TFrmCadCli.DSDataChange(Sender: TObject; Field: TField);
begin
  if MTFoto.IsNull then
    pagFoto.ActivePageIndex := 0 else
    pagFoto.ActivePageIndex := 1;
end;

procedure TFrmCadCli.DSStateChange(Sender: TObject);
begin
  RefreshBtn;
end;

procedure TFrmCadCli.MTAfterInsert(DataSet: TDataSet);
begin
  FRgAnt := '';
end;

procedure TFrmCadCli.MTCalcFields(DataSet: TDataSet);
var
  I, Y1, M1, D1, Y2, M2, D2 : Word;
begin
  if (not MTDataNasc.IsNull) and (MTDataNasc.Value<Date) then 
  begin
    DecodeDate(MTDataNasc.Value, Y1, M1, D1);
    DecodeDate(Date, Y2, M2, D2);

    I := Y2 - Y1;
    if (Y2>Y1) and ((M2<M1) or ((M2=M1) and (D2<D1))) then
      Dec(I);
                                
    MTIdade.Value := I;
  end;
end;

procedure TFrmCadCli.MTAfterEdit(DataSet: TDataSet);
begin
  FRgAnt := MTRG.Value;
end;

type THackMouse = class (TcxCustomImage);

procedure TFrmCadCli.edFotoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var 
    I : THackMouse;
    P : TPoint;
    Handled: Boolean;
begin
  if Button=mbLeft then begin
    P.X := X;
    P.Y := Y;
    I := THackMouse(edFoto);
    I.DoContextPopup(P, Handled);
  end;
end;

function IsPictureEmpty(APicture: TPicture): Boolean;
begin
  Result := not Assigned(APicture.Graphic) or APicture.Graphic.Empty;
end;

procedure TFrmCadCli.edFotoPropertiesEditValueChanged(Sender: TObject);
begin
  if IsPictureEmpty(edFoto.Picture) then
    pagFoto.ActivePageIndex := 0 else
    pagFoto.ActivePageIndex := 1;
end;

procedure TFrmCadCli.edIsentoIEClick(Sender: TObject);
begin
  Atualiza;
end;

{ TThreadStrings }

constructor TThreadStrings.Create(aWnd: HWND);
begin
  FWnd := aWnd;
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TThreadStrings.Execute;
var
  S: TnxSession;
  Q: TnxQuery;
  Str : String;
  
begin
  inherited;
  //S := nil;
  Q := nil;
  S := TnxSession.Create(nil);
  try
    S.ServerEngine := Dados.RSE;
    S.Username := 'admin'; // do not localize
    S.Password := 'delphi9856'; // do not localize
    S.Active := True;
    
    Q := TnxQuery.Create(nil);
    Q.Session := S;
    Q.AliasName := 'NexCafe'; // do not localize

    
    Q.Active := False;
    Q.SQL.Text := 'select distinct(Bairro) as Bairro from Cliente'; // do not localize
    Q.Active := True;

    slBairros.Clear;
    Q.First;
    while not Q.Eof do begin
      Str := Trim(Q.FieldByName('Bairro').AsString); // do not localize
      if Str>'' then slBairros.Add(Str);
      Q.Next;
    end;

    Q.Active := False;
    Q.SQL.Text := 'select distinct(Cidade) as Cidade from Cliente'; // do not localize
    Q.Active := True;

    slCidades.Clear;
    Q.First;
    while not Q.Eof do begin
      Str := Trim(Q.FieldByName('Cidade').AsString); // do not localize
      if Str>'' then slCidades.Add(Str);
      Q.Next;
    end;
    PostMessage(FWnd, wm_user, 0, 0);
  except
  end;
  if Q<>nil then Q.Free;
  if S<>nil then S.Free;
end;

initialization
  slCamposCli := TStringList.Create;
  slCamposCli.Add('Nome=Nome'); // do not localize
  slCamposCli.Add('Telefone=Telefone'); // do not localize
  slCamposCli.Add('Celular=Celular'); // do not localize
  slCamposCli.Add('Rg=RG'); // do not localize
  slCamposCli.Add('Cpf=CPF'); // do not localize
  slCamposCli.Add('Endereco=Endereço'); // do not localize
  slCamposCli.Add('Bairro=Bairro'); // do not localize
  slCamposCli.Add('Cidade=Cidade'); // do not localize
  slCamposCli.Add('UF=UF (Estado)'); // do not localize
  slCamposCli.Add('Email=E-mail'); // do not localize
  slCamposCli.Add('Obs=Observações'); // do not localize
  
  slCidades := TStringList.Create;
  slBairros := TStringList.Create;

finalization
  slCamposCli.Free;
  slCidades.Free;
  slBairros.Free;

end.









