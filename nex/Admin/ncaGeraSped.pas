unit ncaGeraSped;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, nxdb, Data.DB, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, kbmMemTable, system.StrUtils,
  Vcl.Grids, Vcl.DBGrids, ShellApi;

type
  TfrmGeraSped = class(TForm)
    edtDataIni: TcxDateEdit;
    edtDataFim: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    btnGerar: TcxButton;
    cxButton1: TcxButton;
    tbSolicitacoesSped: TnxTable;
    tbSolicitacoesSpedID: TUnsignedAutoIncField;
    tbSolicitacoesSpeddataIni: TDateField;
    tbSolicitacoesSpeddataFim: TDateField;
    tbSolicitacoesSpeddataInclusao: TDateTimeField;
    tbSolicitacoesSpeddataConclusao: TDateTimeField;
    tbSolicitacoesSpedusuario: TStringField;
    tbSolicitacoesSpedcnpj_emissor: TStringField;
    tbSolicitacoesSpedstatus: TLongWordField;
    tbSolicitacoesSpedresultado: TnxMemoField;
    tbSolicitacoesSpedspedGerado: TnxMemoField;
    tbSolicitacoesSpedGrava: TnxTable;
    tbSolicitacoesSpedGravaID: TUnsignedAutoIncField;
    tbSolicitacoesSpedGravadataIni: TDateField;
    tbSolicitacoesSpedGravadataFim: TDateField;
    tbSolicitacoesSpedGravadataInclusao: TDateTimeField;
    tbSolicitacoesSpedGravadataConclusao: TDateTimeField;
    tbSolicitacoesSpedGravausuario: TStringField;
    tbSolicitacoesSpedGravacnpj_emissor: TStringField;
    tbSolicitacoesSpedGravastatus: TLongWordField;
    tbSolicitacoesSpedGravaresultado: TnxMemoField;
    tbSolicitacoesSpedGravaspedGerado: TnxMemoField;
    tbEstabelecimento: TnxTable;
    tbEstabelecimentoID: TUnsignedAutoIncField;
    tbEstabelecimentoUID: TGuidField;
    tbEstabelecimentoEmitirNFCe: TBooleanField;
    tbEstabelecimentonfe_pedido_na_obs: TBooleanField;
    tbEstabelecimentoTipo: TByteField;
    tbEstabelecimentoRemoverNFCe: TBooleanField;
    tbEstabelecimentoUsarPautaMaiorMVA: TBooleanField;
    tbEstabelecimentoEmitirNFE: TBooleanField;
    tbEstabelecimentoCertificadoDig: TStringField;
    tbEstabelecimentosat_modelo: TByteField;
    tbEstabelecimentosat_config: TStringField;
    tbEstabelecimentosat_esq: TByteField;
    tbEstabelecimentonfe_permite_cred_icms: TBooleanField;
    tbEstabelecimentonfe_perc_cred_icms: TFloatField;
    tbEstabelecimentoContabilidade: TStringField;
    tbEstabelecimentoexigir_peso_vol: TBooleanField;
    tbEstabelecimentoenviar_peso_vol_def: TBooleanField;
    tbEstabelecimentoauto_calc_peso_def: TBooleanField;
    tbEstabelecimentonfe_venda: TBooleanField;
    tbEstabelecimentotipodoc_padrao: TByteField;
    tbEstabelecimentoPinCert: TStringField;
    tbEstabelecimentoDependNFCEOk: TBooleanField;
    tbEstabelecimentoDependSATOk: TBooleanField;
    tbEstabelecimentoDependNFEOk: TBooleanField;
    tbEstabelecimentoTipoCert: TByteField;
    tbEstabelecimentoAutoPrintNFCe: TBooleanField;
    tbEstabelecimentoCRT: TByteField;
    tbEstabelecimentoNCM_Padrao: TStringField;
    tbEstabelecimentoTrib_Padrao: TWordField;
    tbEstabelecimentoMostrarDadosNFE: TBooleanField;
    tbEstabelecimentoModeloNFE: TStringField;
    tbEstabelecimentoModeloNFCe: TStringField;
    tbEstabelecimentoSerieNFCe: TStringField;
    tbEstabelecimentoSerieNFe: TStringField;
    tbEstabelecimentoNomeDllSat: TStringField;
    tbEstabelecimentoSignACSat: TStringField;
    tbEstabelecimentoCodigoAtivacao: TStringField;
    tbEstabelecimentoAssociarSignAC: TBooleanField;
    tbEstabelecimentoInicioNFe: TLongWordField;
    tbEstabelecimentoInicioNFCe: TLongWordField;
    tbEstabelecimentoRazaoSocial: TStringField;
    tbEstabelecimentoNomeFantasia: TStringField;
    tbEstabelecimentoCNPJ: TStringField;
    tbEstabelecimentoIE: TStringField;
    tbEstabelecimentoEnd_Logradouro: TStringField;
    tbEstabelecimentoEnd_Numero: TStringField;
    tbEstabelecimentoEnd_Complemento: TStringField;
    tbEstabelecimentoEnd_Bairro: TStringField;
    tbEstabelecimentoEnd_UF: TStringField;
    tbEstabelecimentoEnd_CEP: TStringField;
    tbEstabelecimentoEnd_Municipio: TStringField;
    tbEstabelecimentoEnd_CodMun: TStringField;
    tbEstabelecimentoEnd_CodUF: TByteField;
    tbEstabelecimentoTelefone: TStringField;
    tbEstabelecimentotpAmb: TByteField;
    tbEstabelecimentotpAmbNFE: TByteField;
    tbEstabelecimentoCSC: TStringField;
    tbEstabelecimentoIdCSC: TStringField;
    tbEstabelecimentoPedirEmail: TByteField;
    tbEstabelecimentoPedirCPF: TByteField;
    tbEstabelecimentoFromEmail: TStringField;
    tbEstabelecimentoAssuntoEmail: TStringField;
    tbEstabelecimentoFromName: TStringField;
    tbEstabelecimentoCorpoEmail: TnxMemoField;
    tbEstabelecimentoModeloNFCe_Email: TGuidField;
    tbEstabelecimentoModeloSAT_Email: TGuidField;
    tbEstabelecimentoModeloNFE_Email: TGuidField;
    tbEstabelecimentourls_qrcode_hom: TnxMemoField;
    tbEstabelecimentourls_qrcode_prod: TnxMemoField;
    tbEstabelecimentourls_consulta: TnxMemoField;
    tbEstabelecimentoconfig_nfe: TnxMemoField;
    tbEstabelecimentoObsFisco: TnxMemoField;
    procedure btnGerarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);

  private

  public
    { Public declarations }
  end;

var
  frmGeraSped: TfrmGeraSped;

implementation

{$R *.dfm}

uses ncaDM, ncClassesBase;

procedure TfrmGeraSped.btnGerarClick(Sender: TObject);
begin
  tbSolicitacoesSped.Active := true;
  tbSolicitacoesSped.Append;
  tbEstabelecimento.Open;
  tbSolicitacoesSpeddataIni.Value := StrToDate(edtDataIni.Text);
  tbSolicitacoesSpeddataFim.Value := StrToDate(edtDataFim.Text);
  tbSolicitacoesSpeddataInclusao.Value := now;
  tbSolicitacoesSpedcnpj_emissor.Value := soDig(tbEstabelecimentoCNPJ.Value);
  tbSolicitacoesSpedstatus.Value  := statusGeracaoSped_pendente;
  tbSolicitacoesSped.Post;
end;

procedure TfrmGeraSped.cxButton1Click(Sender: TObject);
var
  slSped : TStringList;
  sCaminho :string;
begin
  slSped := TStringList.Create;
  try
    tbSolicitacoesSped.Active := true;
    tbSolicitacoesSped.SetRange([statusGeracaoSped_ok],[statusGeracaoSped_ok]);
    tbsolicitacoesSped.Open;
    tbsolicitacoesSped.First;

    while not tbSolicitacoesSped.Eof do
    begin
      slSped.Clear;
      ForceDirectories(ExtractFilePath(ParamStr(0))+'Speds');
      sCaminho := ExtractFilePath(ParamStr(0))+'Speds\' +
                  tbSolicitacoesSpedcnpj_emissor.AsString + '_'+
                  soDig(tbSolicitacoesSpeddataIni.AsString) + '_' +
                  soDig(tbSolicitacoesSpeddataFim.AsString) +'.txt';
      slSped.Add(Trim(tbSolicitacoesSpedspedGerado.AsString));
      slSped.SaveToFile(sCaminho);

      tbSolicitacoesSpedGrava.Active := true;
      tbSolicitacoesSpedGrava.findKey([tbSolicitacoesSpedID.value]);
      tbSolicitacoesSpedGrava.Open;

      tbSolicitacoesSpedGrava.Edit;
      tbSolicitacoesSpedGravadataConclusao.Value := now;
      tbSolicitacoesSpedGravastatus.Value := statusGeracaoSped_Salvo;
      tbSolicitacoesSpedGravausuario.Value := Dados.CM.Username;
      tbSolicitacoesSpedGravaresultado.Value := 'Sped salvo com sucesso em: ' + sCaminho;
      tbSolicitacoesSpedGrava.Post;

      tbSolicitacoesSped.Next;
    end;

    if sCaminho>'' then
      ShellExecute(0, nil, 'explorer.exe', PWideChar('/select,'+sCaminho), nil, SW_SHOWNORMAL)
  finally
    slSped.Free;
  end;
end;

end.
