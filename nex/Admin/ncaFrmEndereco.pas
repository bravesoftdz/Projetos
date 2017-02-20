unit ncaFrmEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, LMDControl, LMDCustomControl, DB,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxLayoutContainer, ncEndereco,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxButtonEdit,
  cxMaskEdit, cxTextEdit, cxDropDownEdit, cxImageComboBox, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxLabel, IdUri, ShellApi, Clipbrd;

type
  
  TFrmEndereco = class(TForm)
    panPri: TLMDSimplePanel;
    LC: TdxLayoutControl;
    LCGroup_Root: TdxLayoutGroup;
    lgPais: TdxLayoutGroup;
    lgInt: TdxLayoutGroup;
    lgBR: TdxLayoutGroup;
    edPais: TcxImageComboBox;
    lcPais: TdxLayoutItem;
    edDest: TcxTextEdit;
    lcDest: TdxLayoutItem;
    edbr_cep: TcxMaskEdit;
    lcbr_cep: TdxLayoutItem;
    edObs: TcxTextEdit;
    lcObs: TdxLayoutItem;
    edint_endereco: TcxTextEdit;
    lcint_endereco: TdxLayoutItem;
    edbr_Logr: TcxTextEdit;
    lcbr_logradouro: TdxLayoutItem;
    edbr_cidade: TcxComboBox;
    lcbr_cidade: TdxLayoutItem;
    edbr_bairro: TcxComboBox;
    lcbr_bairro: TdxLayoutItem;
    edbr_complemento: TcxTextEdit;
    lcbr_complemento: TdxLayoutItem;
    edbr_numero: TcxTextEdit;
    lcbr_numero: TdxLayoutItem;
    edbr_codmun: TcxButtonEdit;
    lcbr_codmun: TdxLayoutItem;
    edint_endereco2: TcxTextEdit;
    lcint_endereco2: TdxLayoutItem;
    edint_cep: TcxTextEdit;
    lcint_cep: TdxLayoutItem;
    edint_uf: TcxTextEdit;
    lcint_uf: TdxLayoutItem;
    edint_cidade: TcxComboBox;
    lcint_cidade: TdxLayoutItem;
    edint_bairro: TcxComboBox;
    lcint_bairro: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    edbr_uf: TcxComboBox;
    lcbr_uf: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    LMDSimplePanel2: TLMDSimplePanel;
    LMDSimplePanel1: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxLabel1: TcxLabel;
    lcbr_prompt_codmun: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    btnGmaps: TcxButton;
    lbEndLoja: TcxLabel;
    btnRota: TcxButton;
    lbCopiar: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure edPaisPropertiesCloseUp(Sender: TObject);
    procedure edPaisPropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edbr_cepPropertiesChange(Sender: TObject);
    procedure edbr_codmunPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edbr_codmunPropertiesChange(Sender: TObject);
    procedure btnGmapsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRotaClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbCopiarClick(Sender: TObject);
  private
    { Private declarations }
    FDados : TncEndereco;
    FMunOk : Boolean;
    FLastCEP : String;
    FValidarNFe : Boolean;

    function MostrarCodMun: Boolean;

    procedure SaveTo(E: TncEndereco);

    procedure AtualizaMun;

    procedure ValidaNFe;

    procedure wmCEP(var Msg: TMessage);
      message wm_user;

    procedure wmValidarNFe(var Msg: TMessage); message wm_user+1;

  public
    procedure Populate(E: TncEndereco; aTudo: Boolean);

    procedure OnTerminateCEP(Sender: TObject);

    procedure UpdateBairroCidade(slBairros, slCidades: TStrings);

    function Editar(aDados: TncEndereco; aValidarNFe: Boolean; const aEndLoja: Boolean = False): Boolean;
    
    { Public declarations }
  end;

var
  FrmEndereco: TFrmEndereco;

implementation

{$R *.dfm}

uses ncaDM, ncaFrmPri, ncClassesBase, ncHttp, nexUrls, ncaFrmMunBr,
  ncShellStart, ufmImagens, ncaFrmRecursoPRO, ncaStrings;

procedure TFrmEndereco.AtualizaMun;
begin
  with Dados do 
  if tbMun.FindKey([edbr_CodMun.Text]) then begin
    edbr_cidade.Text := tbMunNome.Value;
    edbr_uf.Text := tbMunUF.Value;
    FMunOk := True;
  end else begin
    edbr_cidade.Text := '';
    FMunOk := not FValidarNFe;
  end;
end;

procedure TFrmEndereco.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEndereco.btnGmapsClick(Sender: TObject);
begin
  if not gConfig.IsPremium then begin
    TFrmRecursoPro.Create(Self).Mostrar(rsEndCliGMapsPRO, 'climapa');
    Exit;
  end;

  SaveTo(FDados);
  ShellStart('http://maps.google.com/maps?q='+TidUri.ParamsEncode(FDados.ResumoLinhaUnica));
end;

procedure TFrmEndereco.btnRotaClick(Sender: TObject);
var S: String;
begin
  if not gConfig.IsPremium then begin
    TFrmRecursoPro.Create(Self).Mostrar(rsEndCliGMapsPRO, 'climapa');
    Exit;
  end;

  S := Dados.EndLoja;
  if S='' then Exit;
  SaveTo(FDados);
  ShellStart('http://maps.google.com/maps/dir/'+
             TidUri.ParamsEncode(S)+'/'+
             TidUri.ParamsEncode(FDados.ResumoLinhaUnica));
end;

procedure TFrmEndereco.btnSalvarClick(Sender: TObject);
begin
  if FValidarNFe then ValidaNfe;
  ModalResult := mrOk;
end;

procedure TFrmEndereco.lbCopiarClick(Sender: TObject);
var E: TncEndereco;
begin
  E := TncEndereco.Create;
  try
    SaveTo(E);
    Clipboard.AsText := E.Resumo;
  finally
    E.Free;
  end;
end;

procedure TFrmEndereco.edbr_cepPropertiesChange(Sender: TObject);
var S: String;
begin
  if not edbr_cep.Focused then Exit;

  S := SoDig(edbr_cep.EditingText);

  if (Length(S)=8) and (S<>SoDig(FLastCEP)) then begin
    FLastCEP := S;
    with ThttpThreadGet.Create(gUrls.Url('contas_cep', '', False)+ '/'+S+'.text', '', False, False) do begin
      OnTerminate := OnTerminateCEP;
      Resume;
    end;
  end;
end;

procedure TFrmEndereco.edbr_codmunPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var 
  aUF, 
  aCod: String;
  P : TFrmMunPesq;
begin
  inherited;
  aUF := Trim(edbr_uf.Text);
  if aUF='' then begin
    edbr_uf.SetFocus;
    raise exception.Create('É necessário selecionar uma UF (Estado)');
  end;

  aCod := edbr_CodMun.Text;

  P := TFrmMunPesq.Create(self);
  try
    if P.Pesquisar(aUF, aCod, True) then begin
      edbr_CodMun.Text := aCod;
      edbr_cidade.text := P.TabNome.Value;
      edbr_uf.Text := P.TabUF.Value;
    end;
  finally
    P.Free;
  end;
end;

procedure TFrmEndereco.edbr_codmunPropertiesChange(Sender: TObject);
begin
  AtualizaMun;
end;

function TFrmEndereco.Editar(aDados: TncEndereco; aValidarNFe: Boolean; const aEndLoja: Boolean = False): Boolean;
begin
  FValidarNFe := aValidarNFe;
  lbEndLoja.Visible := aEndLoja;
  FDados.Assign(aDados);
  Populate(aDados, True);
  ShowModal;
  if ModalResult=mrOk then begin
    Result := True;
    SaveTo(aDados);
    if aDados.is_foreign then aDados.enCodMun := '';
  end else
    Result := False;
end;

procedure TFrmEndereco.edPaisPropertiesChange(Sender: TObject);
begin
  if edPais.Focused then begin
    SaveTo(FDados);
    Populate(FDados, False);
  end;
end;

procedure TFrmEndereco.edPaisPropertiesCloseUp(Sender: TObject);
begin
  edPais.PostEditValue;
end;

procedure TFrmEndereco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEndereco.FormCreate(Sender: TObject);
begin
  lgPais.LayoutDirection := ldVertical;
  FDados := TncEndereco.Create;
  FValidarNFe := False;
end;

procedure TFrmEndereco.FormDestroy(Sender: TObject);
begin
  FDados.Free;
end;


procedure TFrmEndereco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_F2    : btnSalvar.Click;
    Key_M     : if ssCtrl in Shift then btnGMaps.Click;
    Key_R     : if ssCtrl in Shift then btnRota.Click;
    Key_E     : if ssCtrl in Shift then lbCopiarClick(nil);
    Key_Esc   : Close;
  end;

  if (not btnSalvar.Focused) and (Key = KEY_Enter) then 
    Perform(WM_NEXTDLGCTL,0,0);
end;
     
procedure TFrmEndereco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [#13, #27] then Key := #0;
end;


procedure TFrmEndereco.FormShow(Sender: TObject);
var S: String;
begin
  if FValidarNFe then PostMessage(Handle, wm_user+1, 0, 0);

  S := SoDig(edbr_cep.Text);

  if gConfig.IsPremium then
  if (Length(S)=8) and (Trim(edbr_codmun.Text)='') and SameText('BR', edPais.EditValue) then begin
    FLastCEP := S;
    with ThttpThreadGet.Create(gUrls.Url('contas_cep', '', False)+ '/'+S+'.text', '', False, False) do begin
      OnTerminate := OnTerminateCEP;
      Resume;
    end;
  end;  
end;

function TFrmEndereco.MostrarCodMun: Boolean;
begin
  Result := True;
end;

procedure TFrmEndereco.OnTerminateCEP(Sender: TObject);
var 
  sl : TStrings;
begin
  sl := TStringList.Create;
  sl.Text := ThttpThreadGet(Sender).Res;
  if Trim(sl.Values['logradouro'])='' then
    sl.Free
  else 
    postMessage(Handle, wm_user, NativeUInt(sl), 0);
end;

procedure TFrmEndereco.Populate(E: TncEndereco; aTudo : Boolean);
begin
  if aTudo then begin
    edDest.Text := E.enDest;
    edPais.EditValue := E.enPais;
    edobs.text := E.enObs;
  end;
  
  if SameText('BR', E.enPais) then begin
    lgBR.visible := True;
    lgInt.Visible := False;
    edbr_cep.Text := E.enCEP;
    edbr_logr.Text := E.enEndereco;
    edbr_numero.Text := E.enNumero;
    edbr_complemento.Text := E.enEndereco2;
    edbr_bairro.Text := E.enBairro;
    edbr_cidade.Text := E.enCidade;
    edbr_uf.Text := E.enUF;
    edbr_codmun.Text := E.enCodMun;

    if MostrarCodMun then begin
      lcbr_codmun.Visible := True;
      lcbr_prompt_codmun.Visible := True;
      lcbr_cidade.Enabled := False;
    end else begin
      lcbr_codmun.Visible := False;
      lcbr_prompt_codmun.Visible := False;
      lcbr_cidade.Enabled := True;
    end;

  end else begin
    lgBR.visible := False;
    lgInt.Visible := True;
    edint_endereco.Text := E.enEndereco;
    edint_endereco2.Text := E.enEndereco2;
    edint_bairro.text := E.enBairro;
    edint_cidade.text := E.enCidade;
    edint_uf.Text := E.enUF;
    edint_cep.text := E.enCEP;
  end;
  FLastCEP := SoDig(e.enCEP);
end;

procedure TFrmEndereco.SaveTo(E: TncEndereco);
begin
  E.enDest := edDest.Text;
  E.enPais := edPais.EditValue;
  E.enObs := edobs.text;

  if lgBR.Visible then begin
    E.enCEP := edbr_cep.text;
    E.enEndereco := edbr_logr.Text;
    E.enNumero := edbr_numero.Text;
    E.enEndereco2 := edbr_complemento.Text;
    E.enBairro := edbr_bairro.Text;
    E.enCidade := edbr_cidade.Text;
    E.enUF := edbr_uf.Text;
    E.enCodMun := edbr_codmun.Text;
  end else begin
    E.enEndereco := edint_endereco.Text;
    E.enEndereco2 := edint_endereco2.Text;
    E.enBairro := edint_bairro.text;
    E.enCidade := edint_cidade.text;
    E.enUF := edint_uf.Text;
    E.enCEP := edint_cep.text;
  end;
end;

procedure TFrmEndereco.UpdateBairroCidade(slBairros, slCidades: TStrings);
begin
  edbr_bairro.Properties.Items.Text := slBairros.Text;
  edbr_cidade.Properties.Items.Text := slCidades.Text;
end;

procedure TFrmEndereco.ValidaNFe;
begin
  if SameText('BR', edPais.EditValue) then begin
    if SoDig(edbr_cep.Text)='' then begin
      edbr_cep.SetFocus;
      raise Exception.Create('Para emitir NF-e é necessário informar o CEP');
    end;

    if Length(SoDig(edbr_cep.Text))<>8 then begin
      edbr_cep.SetFocus;
      raise Exception.Create('O CEP informado não está correto');
    end;

    if Trim(edbr_logr.text)='' then begin
      edbr_logr.SetFocus;
      raise Exception.Create('Para emitir NF-e é necessário informar o endereço');
    end;

    if Trim(edbr_numero.text)='' then begin
      edbr_numero.SetFocus;
      raise Exception.Create('Para emitir NF-e é necessário informar o número do endereço. Se o endereço não tiver número digitar S/N');
    end;

    if not FMunOk then begin
      edbr_codmun.SetFocus;
      if SoDig(edbr_codmun.Text)='' then
        raise Exception.Create('Para emitir NF-e é necessário informar o código IBGE do município') else
      
      if SoDig(edbr_codmun.Text)='' then
        raise Exception.Create('O código IBGE informado para o município não existe');
    end;

    if Trim(edbr_cidade.Text)='' then begin
      if edbr_cidade.Enabled then edbr_cidade.SetFocus;
      raise Exception.Create('Para emitir NF-e é necessário informar a cidade');
    end;

    if Trim(edbr_uf.Text)='' then begin
      edbr_uf.SetFocus;
      raise Exception.Create('Para emitir NF-e é necessário informar a UF (estado/unidade da federação');
    end;
        
  end else begin
    if Trim(edint_endereco.Text)='' then begin
      edint_endereco.SetFocus;
      raise Exception.Create('Para emitir NF-e é necessário informar o endereço');
    end;
    
    if Trim(edbr_cidade.Text)='' then begin
      edint_cidade.SetFocus;
      raise Exception.Create('Para emitir NF-e é necessário informar a cidade');
    end;
  end;
end;

procedure TFrmEndereco.wmCEP(var Msg: TMessage);
var 
  sl : TStrings;
begin
  sl := TStrings(Msg.WParam);
  try
    if Trim(sl.Values['logradouro'])>'' then
      edbr_logr.Text := Trim(sl.Values['logradouro']);

    if Trim(sl.Values['localidade'])>'' then
      edbr_cidade.Text := Trim(sl.Values['localidade']);

    if Trim(sl.Values['bairro'])>'' then
      edbr_bairro.text := Trim(sl.Values['bairro']);

    if Trim(sl.Values['uf'])>'' then
      edbr_uf.Text := Trim(sl.Values['uf']);

    if Trim(sl.Values['ibge'])>'' then
      edbr_codmun.text := Trim(sl.Values['ibge']);

    edbr_numero.SetFocus;
  finally
    sl.Free;
  end;
end;

procedure TFrmEndereco.wmValidarNFe(var Msg: TMessage);
begin
  ValidaNFe;
end;

end.
