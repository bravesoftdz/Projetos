unit ncFrmCriarConta;
{
    ResourceString: Dario 12/03/13
}

interface

{$I nex.inc}
                           
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxMaskEdit, cxTextEdit, cxLabel, LMDPNGImage, ExtCtrls,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, httpApp,
  LMDSimplePanel, Menus, StdCtrls, cxButtons, cxDropDownEdit,
  cxPCdxBarPopupMenu, cxRadioGroup, cxPC, cxCheckBox, cxClasses, ImgList,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, Countries, LMDCustomComponent, LMDSysInfo, LMDControl,
  LMDStrList, DB, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, kbmMemTable,
  dxBarBuiltInMenu, System.ImageList, cxImageComboBox, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxLayoutLookAndFeels, dxLayoutControl;

type
  TFrmCriarConta = class(TForm)
    panPri: TLMDSimplePanel;
    Paginas: TcxPageControl;
    tsCriar1: TcxTabSheet;
    tsCriar2: TcxTabSheet;
    tsCriarInformar: TcxTabSheet;
    rgCriar: TcxRadioButton;
    rgInformar: TcxRadioButton;
    cxEditStyleController1: TcxEditStyleController;
    edLoja: TcxTextEdit;
    cxLabel9: TcxLabel;
    edProp: TcxTextEdit;
    cxLabel8: TcxLabel;
    lbAtividade: TcxLabel;
    cxLabel1: TcxLabel;
    edTel: TcxMaskEdit;
    Logos: TcxImageList;
    tsAtivar: TcxTabSheet;
    rgNaoCriar: TcxRadioButton;
    panAtivar: TLMDSimplePanel;
    lbTopo1: TcxLabel;
    lbTopo2: TcxLabel;
    LMDSimplePanel1: TLMDSimplePanel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    LMDSimplePanel3: TLMDSimplePanel;
    cxLabel4: TcxLabel;
    cxLabel11: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    cxLabel12: TcxLabel;
    cxLabel14: TcxLabel;
    edCod: TcxTextEdit;
    btnConfirmarRegistro: TcxButton;
    cxLabel13: TcxLabel;
    lbReenviar: TcxLabel;
    tsInformarRegistro: TcxTabSheet;
    edEmailReg: TcxTextEdit;
    rbEmail: TcxRadioButton;
    LMDSimplePanel2: TLMDSimplePanel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    LMDSimplePanel5: TLMDSimplePanel;
    lbCorrigir: TcxLabel;
    lbEmail: TcxLabel;
    panRodape: TLMDSimplePanel;
    btnAvancar: TcxButton;
    btnVoltar: TcxButton;
    H: TIdHTTP;
    tsTransferirReg: TcxTabSheet;
    LMDSimplePanel6: TLMDSimplePanel;
    cxLabel15: TcxLabel;
    lbTransfTopo: TcxLabel;
    lbTransfPrompt: TcxLabel;
    edSenhaT: TcxTextEdit;
    cxLabel21: TcxLabel;
    lbEsqueciSenha: TcxLabel;
    cbOptin: TcxCheckBox;
    edAtividade: TcxTextEdit;
    cxLabel16: TcxLabel;
    LMDSysInfo1: TLMDSysInfo;
    edPais: TcxImageComboBox;
    Image8: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    edEmail: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edSenha: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edSenha2: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    Image4: TImage;
    dxLayoutItem5: TdxLayoutItem;
    cxLabel5: TcxLabel;
    dxLayoutItem6: TdxLayoutItem;
    cxLabel10: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PaginasChange(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarRegistroClick(Sender: TObject);
    procedure lbReenviarClick(Sender: TObject);
    procedure lbCorrigirClick(Sender: TObject);
    procedure lbEsqueciSenhaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FShowing : Boolean;
    FPagMostrar : Integer;
    FPreReg     : TStrings;
    FPreRegOk   : Boolean;
    procedure MudouPagina;
    procedure AtualizaBotoes;
    function ValidaNomeTel: Boolean;
    function ValidaEmailSenha: Boolean;
    function ObtemChaveSeg: String;

    procedure CriarConta;

    procedure PreenchePreReg;

    procedure ObtemRegistro;
    procedure TransferirRegistro;
  protected
    procedure CreateParams(var Params: TCreateParams); override;

    procedure showAtivar; virtual;
    procedure aposAtivar; virtual;
    procedure salvaLic(aConta, aChaves: String; aDVA: String); virtual;
  public
    { Public declarations }
    procedure Mostrar(aPag: Integer);
  end;

  function ObtemRegistroNex(sConta: String = ''): String;
  
var
  FrmCriarConta: TFrmCriarConta;

resourcestring
  SAvançar = '&Avançar >>';
  SRegistrarMinhaLoja = 'Registrar Minha Loja!';
  STransferirRegistro = 'Transferir Registro!';
  SFalhaDeConexãoComOServidorDeRegi = 'Falha de conexão com o servidor de registros Nextar';
  SJáFoiRealizadoUmRegistroNexCaféC = 'Já foi realizado um registro com o e-mail informado.';
  SErroNoProcessamentoDoSeuRegistro = 'Erro no processamento do seu registro (';
  SPorFavorFaçoContatoComAEquipeDeA = '). Por favor faça contato com a equipe de atendimento Nextar.';
  SParaUsarONEXéNecessárioRegistrar = 'Para usar o NEX é necessário registrar sua loja.';
  SSeuNEXEstáRegistradoParaUsoEmOut = 'Seu NEX está registrado para uso em outro computador';
  SEnviamosSuaSenhaPara = 'Enviamos sua senha para ';
  SConfirmarRegistro = 'Confirmar registro';
  SRegistroNexCafé = 'Registro Nex';
  STransferirRegistro_1 = 'Transferir registro';
  SSeuRegistroFoiRecuperadoComSuces = 'Seu registro foi recuperado com sucesso!';
  SRegistroTransferidoComSucesso = 'Registro transferido com sucesso!';
  SPorFavorInformeCorretamenteSeuEM = 'Por favor, informe corretamente seu e-mail';
  SPorFavorInformeUmaSenha = 'Por favor, informe uma senha';
  SVocêInformouSenhasDiferentesPorF = 'Você informou senhas diferentes. Por favor informe novamente sua senha';
  SPorFavorInformeONomeDaLoja = 'Por favor informe o nome da loja';
  SPorFavorInformeONomeDoProprietár = 'Por favor informe o nome do proprietário da loja';
  

implementation

uses idURI, ncClassesBase, ncaFrmObrigado, uLicEXECryptor,
  ncaFrmConfirmarReg, uNR_chaveseg, ncaFrmCorrigeEmail, ncDMServ, ncDebug,
  ncKiteApi, ncVersionInfo, ncaDM, ncGuidUtils, ncHttp, nexUrls, ncaFrmPri;

{$R *.dfm}

procedure TFrmCriarConta.aposAtivar;
begin

end;

procedure TFrmCriarConta.AtualizaBotoes;
begin
  btnVoltar.Enabled := (Paginas.ActivePageIndex>FPagMostrar);
  btnVoltar.Visible := (Paginas.ActivePageIndex <> tsAtivar.PageIndex);
  case Paginas.ActivePageIndex of
    0, 1 : btnAvancar.Caption := SAvançar;
    2 : btnAvancar.Caption := SRegistrarMinhaLoja;
    3 : panRodape.Visible := False;
    4 : btnAvancar.Caption := SAvançar;
    5 : btnAvancar.Caption := STransferirRegistro;
  end;
end;

procedure TFrmCriarConta.btnAvancarClick(Sender: TObject);
begin
  case Paginas.ActivePageIndex of
    0 : begin
      if rgNaoCriar.Checked then begin
        Close;
        Exit;
      end else
      if rgInformar.Checked then begin
        Paginas.ActivePage := tsInformarRegistro;
        Exit;
      end;
    end;
    1 : if not ValidaNomeTel then Exit;
    2 : begin
      if not ValidaEmailSenha then Exit;
      CriarConta;
      Exit;
    end;
    4 : begin
      ObtemRegistro;
      Exit;
    end;
    5 : begin
      TransferirRegistro;
      Exit;
    end;
  end;
  if Paginas.ActivePageIndex < (Paginas.TabCount-1) then
    Paginas.ActivePageIndex := Paginas.ActivePageIndex + 1;
end;

procedure TFrmCriarConta.btnVoltarClick(Sender: TObject);
begin
  if Paginas.ActivePage=tsInformarRegistro then
    Paginas.ActivePageIndex := 0
  else
  if Paginas.ActivePageIndex>0 then
    Paginas.ActivePageIndex := Paginas.ActivePageIndex - 1;
end;

function get_prereg: String;
var sl: TStrings;
begin
  sl := TStringList.Create;
  try
    sl.Text := kapi_obtemprereg;
    Result := sl.Values['email']; // do not localize
  finally
    sl.Free;
  end;
end;

procedure TFrmCriarConta.CreateParams(var Params: TCreateParams);
begin
  inherited;
  if Owner is TWinControl then begin
    params.ExStyle := params.ExStyle or WS_EX_APPWINDOW;
    params.WndParent := TCustomForm(Owner).Handle;
  end;
end;

procedure TFrmCriarConta.CriarConta;
var 
  S: String;
  sDVA: String;
  sl : TStrings;
  IC : TInfoCampanha;
  aEmailChave: String;
  slPlano: TStrings;

function ArqPlano: String;
begin  
  Result := ExtractFilePath(ParamStr(0))+'plano.ini';
end;

begin
  gConfig.AtualizaCache;
  gConfig.Pais := edPais.EditValue;
  Dados.CM.SalvaAlteracoesObj(gConfig, False);

  slPlano := TStringList.Create;
  try
    if FileExists(ArqPlano) then slPlano.LoadFromFile(ArqPlano);
    slPlano.Values['plano'] := StrToIntDef(slPlano.Values['plano'], 0).ToString;
    
    S := 'email='+httpEncode(edEmail.Text) + '&' +  // do not localize
         'senha='+httpEncode(AnsiToUTF8(edSenha.Text)) + '&' + // do not localize
         'tel='+httpEncode(edTel.Text) + '&' + // do not localize
         'tipotel=0'+'&'+ // do not localize
         'nome='+httpEncode(AnsiToUTF8(edProp.Text))+'&'+ // do not localize
         'loja='+httpEncode(AnsiToUTF8(edLoja.Text))+'&'+ // do not localize
         'pais='+httpEncode(AnsiToUTF8(edPais.EditValue))+'&'+ // do not localize
         'codequip='+httpEncode(gConfig.CodEquip)+'&'+ // do not localize
         'ver='+selfshortver+'&'+
         'tipo=1&'+ // do not localize
         'atividade='+httpEncode(AnsiToUTF8(edAtividade.Text))+'&'+ // do not localize
         'optin='+httpEncode(BoolStr[cbOptin.Checked])+'&'+
         'plano='+slPlano.Values['plano'];
  finally
    slPlano.Free;
  end;

   DM.tIC.Active := True;     
   DM.tIC.Refresh;
   
   if DM.tIC.IsEmpty then begin
     IC := ObtemInfoCampanha;
     try
       if IC<>nil then DM.SalvaInfoCampanha(IC);
     finally
       if IC<>nil then IC.Free;
     end;
   end;

   with DM do 
   if not tIC.IsEmpty then 
     S := S + 
          '&campanha='+httpEncode(AnsiToUTF8(tICCampanha.Value)) + // do not localize
          '&utmccn='+httpEncode(AnsiToUTF8(tICutmccn.Value)) + // do not localize
          '&utmcct='+httpEncode(AnsiToUTF8(tICutmcct.Value)) + // do not localize
          '&utmctr='+httpEncode(AnsiToUTF8(tICutmctr.Value)) + // do not localize
          '&utmcsr='+httpEncode(AnsiToUTF8(tICutmcsr.Value)) + // do not localize
          '&utmcmd='+httpEncode(AnsiToUTF8(tICutmcmd.Value)); // do not localize

  DebugMsg('TFrmCriarConta2.CriarConta - ' + S); // do not localize
          
  sl := tStringList.Create;
  try
    sl.Text := h.Get(gUrls.Url('contas_criarcontabasica', S)); // do not localize
    if sl.Text='' then
      raise Exception.Create(SFalhaDeConexãoComOServidorDeRegi)
    else
    if sl[0]='0' then begin 
      salvaLic(edEmail.Text, ChaveAtivar, 'dva=');
      showAtivar;
      TFrmConfirmarReg.Create(Self).ShowModal;
      Paginas.ActivePage := tsAtivar;
      try
        aEmailChave := Trim(FPreReg.Values['email_chave']); // do not localize
        if aEmailChave='' then aEmailChave := edEmail.Text;
        kapi_reg_Criar(
          AnsiToUTF8(edEmail.Text), 
          AnsiToUTF8(aEmailChave),
          AnsiToUTF8(edProp.Text),
          AnsiToUTF8(edLoja.Text),
          AnsiToUTF8(edAtividade.Text),
          AnsiToUTF8(edTel.Text),
          BoolStr[cbOptin.Checked]);
      except
      end;
    end else
    if sl[0]='1' then
      raise exception.Create(SJáFoiRealizadoUmRegistroNexCaféC) else
      raise exception.Create(SErroNoProcessamentoDoSeuRegistro+sl[0]+SPorFavorFaçoContatoComAEquipeDeA);
  finally
    sl.Free;
  end;
end;

procedure TFrmCriarConta.btnConfirmarRegistroClick(Sender: TObject);
var sl: TStrings;
begin
  sl := tStringList.Create;
  try
    sl.Text := h.Get(gUrls.Url('contas_ativar', 'conta='+httpEncode(gConfig.Conta)+'&codativacao='+edCod.Text+'&codequip='+gConfig.CodEquip+'&ret=nohtml')); // do not localize
    if sl[0]='0' then begin 
      try kapi_reg_Confirmar(AnsiToUTF8(gConfig.Conta)); except end;
      salvaLic(gConfig.Conta, sl[1], 'dva=');
      TFrmObrigado.Create(Self).Mostrar('');
    end else
      raise exception.Create(sl[0]);
  finally
    sl.Free;
  end;
  Close;
end;

function SoDig(S: String): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do 
    if S[I] in ['0'..'9'] then
      Result := Result + S[I];
end;

procedure TFrmCriarConta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCriarConta.FormCreate(Sender: TObject);
var I : Integer;
begin
  edPais.EditValue := gConfig.PaisNorm;

  FPreReg := TStringList.Create;
  FPreRegOk := False;
  lbTopo2.Caption := SParaUsarONEXéNecessárioRegistrar;
  lbTransfTopo.Caption := SSeuNEXEstáRegistradoParaUsoEmOut;
  FPagMostrar := 0;
  lbEmail.Caption := gConfig.Conta;
  FShowing := False;
  Paginas.HideTabs := True;
  Paginas.ActivePageIndex := 0;
  AtualizaBotoes;
end;

procedure TFrmCriarConta.FormDestroy(Sender: TObject);
begin
  FPreReg.Free;
end;

procedure TFrmCriarConta.FormShow(Sender: TObject);
begin
  PreenchePreReg;
  Fshowing := true;
  MudouPagina;
end;

procedure TFrmCriarConta.lbCorrigirClick(Sender: TObject);
var S: String;
begin
  S := TFrmCorrigeEmail.Create(Self).EditarEmail(lbEmail.Caption);
  if S>'' then begin
    lbEmail.Caption := S;
    salvaLic(S, ChaveAtivar, 'dva=');
  end;
end;

procedure TFrmCriarConta.lbEsqueciSenhaClick(Sender: TObject);
var 
  ChaveSeg : String;
  SL : TStrings;
begin
  SL := tStringList.Create;
  try
    ChaveSeg := ObtemChaveSeg;
    Sl.Text := H.Get(gUrls.Url('contas_esquecisenha', 'conta='+httpEncode(gConfig.Conta)+'&chaveseg='+ChaveSeg+'&senhaseg='+GeraSenhaSeg(ChaveSeg))); // do not localize
    chaveseg := sl.Text;
    if chaveseg = 'sdsdfsdfsfd' then Exit;
       
    if Sl.Values['erro']<>'0' then // do not localize
      ShowMessage(Sl.Values['Erro'])  // do not localize
    else
      TFrmObrigado.Create(Self).Mostrar(SEnviamosSuaSenhaPara+Sl.Values['email']); // do not localize
  finally
    Sl.Free;
  end;
end;

procedure TFrmCriarConta.lbReenviarClick(Sender: TObject);
var 
  ChaveSeg : String;
  SL : TStrings;
begin
  SL := tStringList.Create;
  try
    ChaveSeg := ObtemChaveSeg;
    Sl.Text := H.Get(gUrls.Url('contas_reenviaconfirmacao', 'conta='+httpEncode(gConfig.Conta)+'&chaveseg='+ChaveSeg+'&senhaseg='+GeraSenhaSeg(ChaveSeg))); // do not localize
    if Sl.Values['erro']<>'0' then // do not localize
      ShowMessage(Sl.Values['Erro']) else // do not localize
      TFrmConfirmarReg.Create(Self).ShowModal;
      
  finally
    Sl.Free;
  end;
end;

procedure TFrmCriarConta.Mostrar(aPag: Integer);
begin
  FPagMostrar := aPag;
  Paginas.ActivePageIndex := aPag;
  ShowModal;
end;

procedure TFrmCriarConta.MudouPagina;
begin
  AtualizaBotoes;
  case Paginas.ActivePageIndex of
    1 : edLoja.SetFocus;
    2 : edEmail.SetFocus;
    3 : begin
      Caption := SConfirmarRegistro;
      edCod.SetFocus;
      Height := 286;
    end;
    4 : begin
      Caption := SRegistroNexCafé;
      edEmailReg.SetFocus;
    end;
    5 : begin
      Caption := STransferirRegistro_1;
      edSenhaT.SetFocus;
    end;
  end;
end;

function ObtemRegistroNex(sConta: String = ''): String;
var 
  S: String;
  sl : TStrings;
  H : TidHttp;
begin
  if sConta='' then sConta := gConfig.Conta;
  
  S := 'conta='+httpEncode(sConta) + '&' +  // do not localize
        'codequip='+httpEncode(gConfig.CodEquip) + '&' +
        'random='+TGuidEx.ToString(TGuidEx.NewGuid);

  sl := tStringList.Create;
  H := TidHttp.Create(nil);
  try
    H.HandleRedirects := True;
    sl.Text := h.Get(gUrls.Url('contas_obtemregistro', S)); // do not localize
    if sl.Values['erro']='0' then begin  // do not localize
      Dados.CM.salvaLic(sl.Values['conta'], sl.Values['chaves']); // do not localize
      Result := '';
    end else
      Result := sl.Values['erro']; // do not localize
  finally
    sl.Free;
    H.Free;
  end;
end;

function TFrmCriarConta.ObtemChaveSeg: String;
begin
  Result := H.Get(gUrls.Url('contas_obtemchaveseg'));
end;

procedure TFrmCriarConta.ObtemRegistro;
var 
  sConta,
  S: String;
begin
  sConta := edEmailReg.Text;
     
   S := 'conta='+httpEncode(sConta) + '&' +  // do not localize
        'codequip='+httpEncode(gConfig.CodEquip); // do not localize

   S := ObtemRegistroNEX(sConta);

   if S='' then begin
      TFrmObrigado.Create(Self).Mostrar(SSeuRegistroFoiRecuperadoComSuces);
      Close;
   end else
     raise exception.Create(S);
end;

procedure TFrmCriarConta.PaginasChange(Sender: TObject);
begin
  if Fshowing then MudouPagina;
end;

procedure TFrmCriarConta.PreenchePreReg;
var S: String;
begin
  if FPreRegOk then Exit;
  FPreRegOk := True;
  FPreReg.Text := kapi_ObtemPreReg;
  edEmail.Text := Trim(FPreReg.Values['email']); // do not localize
  edLoja.Text  := Trim(FPreReg.Values['nome_loja']); // do not localize
  edProp.Text  := Trim(FPreReg.Values['nome_prop']); // do not localize
  edTel.Text   := Trim(FPreReg.Values['tel']); // do not localize
  edAtividade.Text := Trim(FPreReg.Values['atividade']); // do not localize
end;

procedure TFrmCriarConta.salvaLic(aConta, aChaves: String; aDVA: String);
begin

end;

procedure TFrmCriarConta.showAtivar;
begin

end;

procedure TFrmCriarConta.TransferirRegistro;
var 
  ChaveSeg : String;
  S, sDVA : String;
  SL : TStrings;
begin
  SL := tStringList.Create;
  try
    ChaveSeg := ObtemChaveSeg;

    S := 'conta='+gConfig.Conta+ // do not localize
         '&senha='+edSenhaT.Text+ // do not localize
         '&ret=nohtml'+ // do not localize
         '&codequip='+gConfig.CodEquip+ // do not localize
         '&chaveseg='+ChaveSeg+ // do not localize
         '&senhaseg='+GeraSenhaSeg(ChaveSeg); // do not localize

    Sl.Text := httpGet(gUrls.Url('contas_transferir', S)); // do not localize
    if Sl.Values['erro']<>'0' then begin // do not localize
      Beep;
      ShowMessage(Sl.Values['erro']); // do not localize
      edSenhaT.SetFocus;
    end else begin
      if sl.IndexOfName('dva')>0 then
        sDVA := 'dva='+sl.Values['dva'] else
        sDVA := '';
      salvaLic(gConfig.Conta, sl.Values['chaves'], sDVA); // do not localize
      TFrmObrigado.Create(Self).Mostrar(SRegistroTransferidoComSucesso);
      Close;
    end;
  finally
    Sl.Free;
  end;
end;

function TFrmCriarConta.ValidaEmailSenha: Boolean;
var 
  P : Integer;
  S : String;
begin
  Result := False;

  P := Pos('@', edEmail.Text);
  if (P<1) then 
    S := '' else 
    S := Copy(edEmail.Text, P+1, 300);

  if Trim(Copy(S, Pos('.', S)+1, 300))='' then begin
    Beep;
    edEmail.SetFocus;
    ShowMessage(SPorFavorInformeCorretamenteSeuEM);
    Exit;
  end;

  if Trim(edSenha.Text)='' then begin
    Beep;
    edEmail.SetFocus;
    ShowMessage(SPorFavorInformeUmaSenha);
    Exit;
  end;

  if edSenha.Text<>edSenha2.Text then begin
    Beep;
    edEmail.SetFocus;
    ShowMessage(SVocêInformouSenhasDiferentesPorF);
    Exit;
  end;

  lbEmail.Caption := edEmail.Text;
  
  Result := True;
end;

function TFrmCriarConta.ValidaNomeTel: Boolean;
begin
  Result := False;

  if Trim(edLoja.Text)='' then begin
    Beep;
    edLoja.SetFocus;
    ShowMessage(SPorFavorInformeONomeDaLoja);
    Exit;
  end;

  if Trim(edProp.Text)='' then begin
    Beep;
    edProp.SetFocus;
    ShowMessage(SPorFavorInformeONomeDoProprietár);
    Exit;
  end;

  Result := True;
end;

end.



