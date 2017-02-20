unit udmSAT_gerar;

interface

uses
  System.SysUtils, System.Classes, System.IniFiles, System.Contnrs,
  Data.DB, nxdb, nxllComponent, nxsdServerEngine, udmNFCe_trans,
  nxreRemoteServerEngine, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, madTools, Vcl.ExtCtrls, Windows, Messages,
  ActiveX, DateUtils, spdCFeSatDataSets, spdCFeSatType, spdCFeSat, ShellApi;

type
  TdmSAT_gerar = class(TDataModule)
    tBRTrib: TnxTable;
    tBRTribID: TWordField;
    tBRTribNome: TStringField;
    tBRTribOrigem: TByteField;
    tBRTribCST: TWordField;
    tBRTribCSOSN: TWordField;
    tBRTribICMS: TFloatField;
    tBRTribPadrao: TBooleanField;
    tBRTribCFOP_nfce: TWordField;
    tPagEsp: TnxTable;
    tPagEspID: TUnsignedAutoIncField;
    tPagEspCaixa: TLongWordField;
    tPagEspDataHora: TDateTimeField;
    tPagEspTran: TLongWordField;
    tPagEspEspecie: TWordField;
    tPagEspTipo: TByteField;
    tPagEspValor: TCurrencyField;
    tPagEspTroco: TCurrencyField;
    tPagEspDoc: TStringField;
    tPagEspCancelado: TBooleanField;
    tPagEspDevolucao: TBooleanField;
    tNFConfig: TnxTable;
    tNFConfigEmitirNFCe: TBooleanField;
    tNFConfigEmitirNFE: TBooleanField;
    tNFConfigCertificadoDig: TStringField;
    tNFConfigAutoPrintNFCe: TBooleanField;
    tNFConfigCRT: TByteField;
    tNFConfigNCM_Padrao: TStringField;
    tNFConfigMostrarDadosNFE: TBooleanField;
    tNFConfigModeloNFE: TStringField;
    tNFConfigModeloNFCe: TStringField;
    tNFConfigSerieNFCe: TStringField;
    tNFConfigSerieNFe: TStringField;
    tNFConfigInicioNFe: TLongWordField;
    tNFConfigInicioNFCe: TLongWordField;
    tNFConfigRazaoSocial: TStringField;
    tNFConfigNomeFantasia: TStringField;
    tNFConfigCNPJ: TStringField;
    tNFConfigIE: TStringField;
    tNFConfigEnd_Logradouro: TStringField;
    tNFConfigEnd_Numero: TStringField;
    tNFConfigEnd_Bairro: TStringField;
    tNFConfigEnd_UF: TStringField;
    tNFConfigEnd_CEP: TStringField;
    tNFConfigEnd_Municipio: TStringField;
    tNFConfigEnd_CodMun: TStringField;
    tNFConfigEnd_CodUF: TByteField;
    tNFConfigTelefone: TStringField;
    tNFConfigCSC: TStringField;
    tNFConfigIdCSC: TStringField;
    tNFConfigFromEmail: TStringField;
    tNFConfigFromName: TStringField;
    tNFConfigTrib_Padrao: TWordField;
    tNFConfigPedirEmail: TByteField;
    tNFConfigPedirCPF: TByteField;
    tNFConfigEnd_Complemento: TStringField;
    tNFConfigModeloNFCe_Email: TGuidField;
    tNFConfigTipoCert: TByteField;
    tNFConfigUrls_Consulta: TnxMemoField;
    tNFConfigUrls_qrcode_hom: TnxMemoField;
    tNFConfigUrls_qrcode_prod: TnxMemoField;
    tNFConfigAssuntoEmail: TStringField;
    tNFConfigRemoverNFCe: TBooleanField;
    tNFConfigDependNFCEOk: TBooleanField;
    tNFConfigCorpoEmail: TnxMemoField;
    tNFConfigPinCert: TStringField;
    tNCM: TnxTable;
    tNCMID: TUnsignedAutoIncField;
    tNCMNCM: TStringField;
    tNCMEx: TStringField;
    tNCMDescricao: TStringField;
    tNCMImpostoFed_Imp: TFloatField;
    tNCMImpostoFed_Nac: TFloatField;
    tNCMImpostoEst: TFloatField;
    tNCMImpostoMun: TFloatField;
    tNCMRECVER: TLongWordField;
    tNFE: TnxTable;
    tNFENumSeq: TUnsignedAutoIncField;
    tNFEModelo: TStringField;
    tNFESerie: TStringField;
    tNFENumero: TLongWordField;
    tNFEChave: TStringField;
    tNFEEntrada: TBooleanField;
    tNFETipoDoc: TByteField;
    tNFEDataHora: TDateTimeField;
    tNFECFOP: TWordField;
    tNFETran: TGuidField;
    tNFERecibo: TStringField;
    tNFEProtocolo: TStringField;
    tNFEStatus: TByteField;
    tNFEStatusNF: TIntegerField;
    tNFEIncluidoEm: TDateTimeField;
    tNFEEmitidoEm: TDateTimeField;
    tNFEValor: TCurrencyField;
    tNFEXMLdest: TnxMemoField;
    tNFEXMLret: TnxMemoField;
    tNFEXMLtransCont: TnxMemoField;
    tNFExMotivo: TnxMemoField;
    tNFEXMLtrans: TnxMemoField;
    tNFEtpAmb: TByteField;
    tNFECPF: TStringField;
    tNFEEmail: TStringField;
    tNFEStatusInut: TByteField;
    tNFEStatusCanc: TByteField;
    tNFEProtocoloCanc: TStringField;
    tNFEStatusCancNF: TIntegerField;
    tNFEJustCanc: TnxMemoField;
    tNFExMotivoCanc: TnxMemoField;
    tNFECanceladoPor: TStringField;
    tNFECanceladoEm: TDateTimeField;
    tNFExmlRetCanc: TnxMemoField;
    tNFEStatusInutNF: TIntegerField;
    tNFEProtocoloInut: TStringField;
    tNFExMotivoInut: TnxMemoField;
    tNFExmlRetInut: TnxMemoField;
    tCli: TnxTable;
    tTran: TnxTable;
    tTranID: TUnsignedAutoIncField;
    tTranUID: TGuidField;
    tTranDataHora: TDateTimeField;
    tTranCliente: TLongWordField;
    tTranTipo: TByteField;
    tTranFunc: TStringField;
    tTranTotal: TCurrencyField;
    tTranDesconto: TCurrencyField;
    tTranDescPerc: TFloatField;
    tTranDescPorPerc: TBooleanField;
    tTranTotLiq: TCurrencyField;
    tTranPagEsp: TWordField;
    tTranPago: TCurrencyField;
    tTranDebitoAnt: TCurrencyField;
    tTranDebitoPago: TCurrencyField;
    tTranCreditoAnt: TCurrencyField;
    tTranCredito: TCurrencyField;
    tTranCreditoUsado: TCurrencyField;
    tTranTroco: TCurrencyField;
    tTranObs: TnxMemoField;
    deb: TBooleanField;
    tTranCanceladoPor: TStringField;
    tTranCanceladoEm: TDateTimeField;
    tTranCaixa: TLongWordField;
    tTranCaixaPag: TLongWordField;
    tTranMaq: TWordField;
    tTranSessao: TLongWordField;
    tTranQtdTempo: TFloatField;
    tTranCredValor: TBooleanField;
    tTranFidResgate: TBooleanField;
    tTranPagFunc: TStringField;
    tTranPagPend: TBooleanField;
    tTranRecVer: TLongWordField;
    tTranUID_ref: TGuidField;
    tTranOpDevValor: TByteField;
    tTranIncluidoEm: TDateTimeField;
    tTranStatusNFE: TByteField;
    tTranTipoNFE: TByteField;
    tTranChaveNFE: TStringField;
    tTranExtra: TnxMemoField;
    tTranAmbNFe: TByteField;
    tTranStatusCanc: TByteField;
    tMovEst: TnxTable;
    tMovEstFator: TIntegerField;
    tMovEstSaldoPost: TFloatField;
    tMovEstID: TUnsignedAutoIncField;
    tMovEstTran: TLongWordField;
    tMovEstProduto: TLongWordField;
    tMovEstQuant: TFloatField;
    tMovEstUnitario: TCurrencyField;
    tMovEstTotal: TCurrencyField;
    tMovEstCustoU: TCurrencyField;
    tMovEstItem: TByteField;
    tMovEstDesconto: TCurrencyField;
    tMovEstPago: TCurrencyField;
    tMovEstPagoPost: TCurrencyField;
    tMovEstDescPost: TCurrencyField;
    tMovEstDataHora: TDateTimeField;
    tMovEstEntrada: TBooleanField;
    tMovEstCancelado: TBooleanField;
    tMovEstAjustaCusto: TBooleanField;
    tMovEstEstoqueAnt: TFloatField;
    tMovEstCliente: TLongWordField;
    tMovEstCaixa: TIntegerField;
    tMovEstCategoria: TStringField;
    tMovEstNaoControlaEstoque: TBooleanField;
    tMovEstITran: TIntegerField;
    tMovEstTipoTran: TByteField;
    tMovEstSessao: TIntegerField;
    tMovEstComissao: TCurrencyField;
    tMovEstComissaoPerc: TFloatField;
    tMovEstComissaoLucro: TBooleanField;
    tMovEstPermSemEstoque: TBooleanField;
    tMovEstFidResgate: TBooleanField;
    tMovEstFidPontos: TFloatField;
    tMovEstRecVer: TLongWordField;
    tMovEstID_ref: TLongWordField;
    tMovEstIncluidoEm: TDateTimeField;
    tMovEstPend: TBooleanField;
    tMovEstUnitarioLiq: TCurrencyField;
    tProduto: TnxTable;
    tProdutoID: TUnsignedAutoIncField;
    tProdutoCodigo: TStringField;
    tProdutoDescricao: TStringField;
    tProdutoUnid: TStringField;
    tProdutoPreco: TCurrencyField;
    tProdutoPrecoAuto: TBooleanField;
    tProdutoMargem: TFloatField;
    tProdutoObs: TnxMemoField;
    tProdutoImagem: TGraphicField;
    tProdutoCategoria: TStringField;
    tProdutoFornecedor: TLongWordField;
    tProdutoSubCateg: TStringField;
    tProdutoCustoUnitario: TCurrencyField;
    tProdutoPodeAlterarPreco: TBooleanField;
    tProdutoPermiteVendaFracionada: TBooleanField;
    tProdutoNaoControlaEstoque: TBooleanField;
    tProdutoEstoqueMin: TFloatField;
    tProdutoEstoqueMax: TFloatField;
    tProdutoAbaixoMin: TBooleanField;
    tProdutoAbaixoMinDesde: TDateTimeField;
    tProdutoEstoqueRepor: TFloatField;
    tProdutoComissaoPerc: TFloatField;
    tProdutoComissaoLucro: TBooleanField;
    tProdutoAtivo: TBooleanField;
    tProdutoFidelidade: TBooleanField;
    tProdutoFidPontos: TIntegerField;
    tProdutoCadastroRapido: TBooleanField;
    tProdutoIncluidoEm: TDateTimeField;
    tProdutoEstoqueAtual: TFloatField;
    tProdutoEstoquePend: TFloatField;
    tProdutoEstoqueTot: TFloatField;
    tProdutoNCM: TStringField;
    tProdutoNCM_Ex: TStringField;
    tProdutobrtrib: TWordField;
    tAuxNFE: TnxTable;
    tEspecie: TnxTable;
    tEspecieID: TWordField;
    tEspecieTipo: TByteField;
    tEspecieNome: TStringField;
    tEspeciePermiteTroco: TBooleanField;
    tEspeciePermiteVarios: TBooleanField;
    tEspeciePermiteCred: TBooleanField;
    tEspecieImg: TWordField;
    tEspecieRecVer: TLongWordField;
    tEspecieTipoPagNFE: TByteField;
    nxTCPIP: TnxWinsockTransport;
    nxRSE: TnxRemoteServerEngine;
    nxDB: TnxDatabase;
    nxSession: TnxSession;
    tTranDebito: TCurrencyField;
    satComp: TspdCFeSat;
    tNFConfigNomeDllSat: TStringField;
    tNFConfigSignACSat: TStringField;
    tNFConfigModeloSAT_Email: TGuidField;
    tNFEUID: TGuidField;
    tNFEChaveCont: TStringField;
    tNFEConsultouChave: TBooleanField;
    tNFEContingencia: TBooleanField;
    tNFELogEnvio: TnxMemoField;
    tNFELogRec: TnxMemoField;
    tNFEContingenciaEM: TDateTimeField;
    tNFConfigTipo: TByteField;
    tNFConfigDependSATOk: TBooleanField;
    tNFConfigtpAmb: TByteField;
    tNFConfigObsFisco: TnxMemoField;
    tNFConfigCodigoAtivacao: TStringField;
    tDoc: TnxTable;
    tDocID: TUnsignedAutoIncField;
    tDocUID: TGuidField;
    tDocTipo: TByteField;
    tDocBobina: TBooleanField;
    tDocFree: TBooleanField;
    tDocTextOnly: TBooleanField;
    tDocTamanho: TStringField;
    tDocParams: TnxMemoField;
    tDocDoc: TBlobField;
    tDocImg: TGraphicField;
    tDocCustom: TBooleanField;
    tDocMinVer: TWordField;
    tDocSRECVER: TLongWordField;
    tDocRECVER: TLongWordField;
    tConfig: TnxTable;
    tNFConfigAssociarSignAC: TBooleanField;
    tProdutocest: TLongWordField;
    tNFConfigsat_modelo: TByteField;
    tNFConfigsat_config: TStringField;
    tTranDescricao: TWideMemoField;
    tDocPais: TStringField;
    tDocLingua: TStringField;
    tDocNome: TWideStringField;
    tDocObs: TWideMemoField;
    tDocMaxVer: TWordField;
    tCliID: TUnsignedAutoIncField;
    tCliCodigo: TStringField;
    tCliCodigoKey: TStringField;
    tCliNome: TWideStringField;
    tCliEndereco: TWideStringField;
    tCliEndereco2: TWideStringField;
    tCliEnd_Numero: TWideStringField;
    tCliEnd_CodMun: TWideStringField;
    tCliEnd_Dest: TWideStringField;
    tCliEnd_Obs: TWideStringField;
    tCliendereco_id: TGuidField;
    tCliPais: TWideStringField;
    tCliBairro: TWideStringField;
    tCliCidade: TWideStringField;
    tCliUF: TWideStringField;
    tCliCEP: TWideStringField;
    tCliNFE_CredIcms: TBooleanField;
    tCliSexo: TStringField;
    tCliObs: TWideMemoField;
    tCliCpf: TWideStringField;
    tCliRg: TWideStringField;
    tCliTelefone: TWideStringField;
    tCliEmail: TWideMemoField;
    tCliPassaportes: TFloatField;
    tCliPai: TWideStringField;
    tCliMae: TWideStringField;
    tCliUltVisita: TDateTimeField;
    tCliDebito: TCurrencyField;
    tCliDataNasc: TDateTimeField;
    tCliCelular: TWideStringField;
    tCliTemDebito: TBooleanField;
    tCliLimiteDebito: TCurrencyField;
    tCliFoto: TGraphicField;
    tCliIncluidoEm: TDateTimeField;
    tCliAlteradoEm: TDateTimeField;
    tCliIncluidoPor: TStringField;
    tCliAlteradoPor: TStringField;
    tCliFidPontos: TFloatField;
    tCliFidTotal: TFloatField;
    tCliFidResg: TFloatField;
    tCliAniversario: TStringField;
    tCliSemFidelidade: TBooleanField;
    tCliTemCredito: TBooleanField;
    tCliPJuridica: TBooleanField;
    tCliInativo: TBooleanField;
    tCliFornecedor: TBooleanField;
    tCliValorCred: TCurrencyField;
    tCliRecVer: TLongWordField;
    tEnd: TnxTable;
    tEndendereco_id: TGuidField;
    tEndcliente_id: TLongWordField;
    tEndpos: TByteField;
    tEndnumseq: TUnsignedAutoIncField;
    tEndend_dest: TWideStringField;
    tEndendereco: TWideStringField;
    tEndendereco2: TWideStringField;
    tEndend_numero: TWideStringField;
    tEndcidade: TWideStringField;
    tEndcep: TWideStringField;
    tEndbairro: TWideStringField;
    tEndend_codmun: TWideStringField;
    tEnduf: TWideStringField;
    tEndend_obs: TWideStringField;
    tEnddef_cad: TBooleanField;
    tEnddef_ent: TBooleanField;
    tEnddef_cob: TBooleanField;
    tEndpais: TWideStringField;
    tNFConfigsat_esq: TByteField;
    tNFConfigcontabilidade: TStringField;
    tTranEntregar: TBooleanField;
    tTranVenDev: TBooleanField;
    tTranendereco_entrega: TGuidField;
    tTranids_pagto: TStringField;
    tTranHora: TByteField;
    tTranNomeCliente: TWideStringField;
    tTranVendedor: TStringField;
    tTranComissao: TCurrencyField;
    tTranFrete: TCurrencyField;
    tTrantax_incluido: TCurrencyField;
    tTrantax_incluir: TCurrencyField;
    tTranTotalFinal: TCurrencyField;
    tTrantranest: TBooleanField;
    tTrantrancx: TBooleanField;
    tTranTranspEnt: TLongWordField;
    tTranTranspVol: TWordField;
    tTranTranspPesoB: TFloatField;
    tTranTranspPesoL: TFloatField;
    tProdutoPesoBruto: TFloatField;
    tProdutoPesoLiq: TFloatField;
    tProdutotax_id: TLongWordField;
    tProdutomodST: TByteField;
    tProdutoMVA: TnxMemoField;
    tProdutoPauta: TnxMemoField;
    tProdutoRecVer: TLongWordField;
    tCliNaoContribICMS: TBooleanField;
    tCliIsentoIE: TBooleanField;
    tCliInfoExtra: TWideStringField;
    tCliTranspEntPadrao: TLongWordField;
    tCliTranspEnt: TBooleanField;
    tCliTipoFor: TByteField;
    tCliConsumidor: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure satCompXmlCopiaSeguranca(const aFileName: WideString);
  private
    _NumeroLote : String;
    _Dir        : String;
    serie       : String;
    slXML       : TStrings;
    slRet       : TStrings;
    ExCfg       : String;
    vTotImp     : Currency;
    FlastConfig : Cardinal;
    FEsq        : Cardinal;
    FOnGetDM : TGetDMEv;

    function CalcImp: Currency;

    procedure ValidaXML;

    procedure ObtemDadosSAT;

    function ProcessaGerar: Boolean;
    function ProcessaEnviar: Boolean;

    function ProcessaProxCancelamento: Boolean;
    function ProcessaProxCancelamentoTran: Boolean;

    function CancelaSAT: Boolean;

    function VerEsquema: Byte;
    
    procedure SalvaRetornoCanc;

    procedure SalvaRetorno;

    function satDev: Boolean;

    function AssociarSignAC(aForcar: Boolean = False): Boolean;

    procedure GeraEmail;

    { Private declarations }
    procedure sat_gerarxml;
    procedure sat_criar;

    procedure InstallDriver;

    procedure OpenDB;
    
    procedure GerarNF;
    function EnviarNF: Boolean;

    procedure RefreshConfig;

 public
    function ConsultarSAT: String;
 
    property OnGetDM : TGetDMEv 
      read FOnGetDM write FOnGetDM;
    
    { Public declarations }
  end;

  TncProcessaGerarSAT = class ( TThread  )
  private 
    FOnGetDM : TGetDMEv;
  
  protected 
    procedure Execute; override;
  public 
    constructor Create(aGetDM: TGetDMEv); 
  end; 
  
var
  dmSAT_gerar: TdmSAT_gerar;
  
  gProcessNFEWindow : Cardinal = 0;
  gProcessaGerarSAT : TncProcessaGerarSAT = nil;
  

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ncServBD, ncDebug, ncClassesBase, ncMsgCom, math,
  udmNFCe_gerar, ncDMdanfe_SAT, ncDMServ, ncGuidUtils, ncEndereco;

{$R *.dfm}

function ArqXML(aID: String; const aCancelamento: Boolean = False): String;
begin
  if aCancelamento then
    Result := ExtractFilePath(paramstr(0))+'SAT\Copia\ADC'+aID+'.xml' else
    Result := ExtractFilePath(paramstr(0))+'SAT\Copia\AD'+aID+'.xml';
end;

procedure ProcessMessages;
var Msg : TMsg;
begin
  while PeekMessage(Msg, 0, 0, 0, PM_REMOVE) do  begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
  end;
end;

function getImp(aValor, aImp: Currency): Currency;
begin
  Result := aValor * aImp / 100;
end;

function RetCampo(S: String; aLinha: Byte): String;
var sl: TStringlist;
begin
  sl:= TStringList.Create;
  try
    sl.Delimiter := '|';
    sl.QuoteChar := '"';
    try
      sl.DelimitedText := StringReplace(S, ' ', '"', [rfReplaceAll]);
      if sl.Count>aLinha then
        result := sl[aLinha] else
        result := '';
    except
      result := '';
    end;
  finally
    FreeAndNil(sl);
  end;
end;

function RetCFEId(S: String): String;
var P: Integer;
begin
  Result := 'erro-chave';
  P := Pos('|CFe', S);
  if P<1 then Exit;
  Delete(S, 1, P+3);
  Result := Copy(S, 1, Pos('|', S)-1);
  DebugMsg('RetCFEId='+Result);
end;

function RetErro(S: String): Integer;
begin
  Result := StrToIntDef(RetCampo(S, 1), 0);
end;

function TdmSAT_gerar.AssociarSignAC(aForcar: Boolean): Boolean;
begin
  Result := True;
  if satDev then Exit;
  try
    RefreshConfig;
    if (not aForcar) and (not tNFConfigAssociarSignAC.Value) then Exit;  
    DebugMsg('TdmSAT_gerar.AssociarSignAC - SignAc: '+tNFConfigSignACSat.Value);
    slRet.Clear;
    satComp.CnpjContribuinte := SoDig(tNFConfigCNPJ.Value);
    satComp.CnpjSoftwareHouse := '04580911000196';
    slRet.Text := satComp.AssociarAssinaturaSignAC(
      RandomRange(100000, 999999), 
      SoDig(tNFConfigCNPJ.Value), 
      '04580911000196', 
      tNFConfigSignACSat.Value);
    Result := (RetErro(slRet.Text)=13000);
    DebugMsg('TdmSAT_gerar.AssociarSignAC - Resultado: '+slRet.Text);

    if Result and tNFConfigAssociarSignAC.Value then begin
      tNFConfig.Edit;
      tNFConfigAssociarSignAC.Value := False;
      tNFConfig.Post;
    end;
  except
    on E: Exception do begin
      Result := False;
      slRet.Text := 'errosw='+E.message;
      DebugMsg('TdmSAT_gerar.AssociarSignAC - Exception: '+E.Message);  
    end;
  end;
end;

function TdmSAT_gerar.CalcImp: Currency;
var V: Currency;
begin
    V := tMovEstTotal.Value - tMovEstDesconto.Value;

    if tBRTribOrigem.Value in [1, 2, 6, 7] then
      Result := getImp(V, tNCMImpostoFed_Imp.Value) else
      Result := getImp(V, tNCMImpostoFed_Nac.Value);
    
    Result := DuasCasas(Result + getImp(V, tNCMImpostoEst.Value) + getImp(V, tNCMImpostoMun.Value));
end;

function TdmSAT_gerar.CancelaSAT: Boolean;
var 
  sCNPJ: String;
  sSign : String;
begin
  try    
    Result := True;

    if satDev then begin
      sCNPJ := '16716114000172';
      sSign := 'SGR-SAT SISTEMA DE GESTAO E RETAGUARDA DO SAT';
    end else begin
      sCNPJ := '04580911000196';
      sSign := tNFConfigSignACSat.Value;
    end;  
    DebugMsg('TdmSAT_gerar.CancelaSAT - Chave: '+tNFEChave.Value+' - CNPJ: '+sCNPJ+' - CPF cliente: '+tNFECPF.Value+' - Assinatura: '+sSign);  
    
    slRet.Text := satComp.CancelarUltimaVenda(RandomRange(100000, 999999), 
                                              tNFEChave.Value, sCNPJ,
                                              tNFECPF.Value,
                                              '001', sSign);
  except
    on E: Exception do begin
      slRet.Values['errosw'] := E.Message;
      DebugMsg('TdmNFe.CancelarSAT - Exception: ' + E.Message);
    end;
  end;  
  if Result then SalvaRetornoCanc;
end;

function TdmSAT_gerar.ConsultarSAT: String;
begin
  RefreshConfig;
  Result := satComp.ConsultarSAT(RandomRange(100000, 999999));
end;

function CSOSN_ST(aCod: Word): Boolean;
begin
  Result := (aCod=201) and (aCod=202) and (aCod=203);
end;

function CST_ST(aCod: Word): Boolean;
begin
  Result := (aCod=30) and (aCod=60) and (aCod=70);
end;

procedure TdmSAT_gerar.DataModuleCreate(Sender: TObject);
begin
  FOnGetDM    := nil;
  FEsq        := 1;
  slXML       := TStringList.Create;
  slRet       := TStringList.Create;
  FlastConfig := 0;
end;

procedure TdmSAT_gerar.DataModuleDestroy(Sender: TObject);
begin
  slXML.Free;
  slRet.Free;
end;

function TdmSAT_gerar.EnviarNF: Boolean;
begin
  try
    Result := True;
    DebugMsg('TdmSAT_gerar.EnviarNF');
    if AssociarSignAC then begin
      slRet.Clear;
      slRet.Text := satComp.EnviarDadosVenda(RandomRange(100000, 999999), tNFExmltrans.Value);
      DebugMsg('TdmSAT_gerar.EnviarNF - Retorno: '+sLineBreak+slRet.Text);
    end else
      DebugMsg('Associar Falhou');
  except
    on E: Exception do begin
      slRet.Values['errosw'] := E.Message;
      DebugMsg('TdmSAT_gerar.EnviarNF - ' + E.ClassName + ': ' + E.Message);
    end;
  end;  
  
  SalvaRetorno;
end;

procedure TdmSAT_gerar.GeraEmail;
var 
  dmDanfe: TdmDanfe_SAT;
  S : String;
begin

  if tNFConfigFromEmail.Value = '' then Exit;
  if tNFConfigNomeFantasia.Value = '' then Exit;
  if tNFEEmail.Value = '' then Exit;
  
  dmDanfe := TdmDanfe_SAT.Create(nil);
  try
    S := ExtractFilePath(ParamStr(0))+'Email\';

    if tDoc.FindKey([tNFConfigModeloSAT_Email.Value]) then begin
      dmDanfe.LoadReport(tDocDoc, '');
      dmDanfe.LoadXML(tNFEXMLdest.Value, '',
                      tTranTroco.Value, 
                      tTranFunc.Value, 
                      tTranID.AsString, 
                      tConfig);
      dmDanfe.EnviaEmail(tNFConfigFromEmail.Value, tNFConfigNomeFantasia.Value, tNFConfigAssuntoEmail.Value, tNFEEmail.Value);
    end;  
  finally
    dmDanfe.Free;
  end;
end;

procedure TdmSAT_gerar.GerarNF;
var
  P : PmsgNFEUpdated;
begin
  DebugMsg('TdmSAT_gerar.GerarNF 1');
  tNFE.Append;
  DebugMsg('TdmSAT_gerar.GerarNF 2');
  try
    sat_criar;
    DebugMsg('TdmSAT_gerar.GerarNF 3');
    if ExCfg>'' then 
      raise Exception.Create(ExCfg);
    DebugMsg('TdmSAT_gerar.GerarNF 4');
    sat_gerarxml;
    DebugMsg('TdmSAT_gerar.GerarNF 5');
  
    ValidaXML;

    DebugMsg('TdmSAT_gerar.GerarNF 6');
  except  
    on E: Exception do begin
      tNFEStatus.Value := nfetran_erro;
      tNFEStatusNF.Value := 9999;
      tNFENumero.Clear;
      tNFExMotivo.Value := E.Message;
    end;  
  end;

  tNFE.Post;

  if tNFEChave.Value='' then begin
    tNFE.Edit;
    tNFEChave.Value := tTranID.AsString+'-'+tNFENumSeq.AsString;
    tNFE.Post;
  end;  

  tTran.Edit;
  tTranTipoNFE.Value   := tiponfe_sat;
  tTranStatusNFE.Value := tNFEStatus.Value;
  tTranAmbNFe.Value    := satAmb;
  tTranChaveNFE.Value  := tNFEChave.Value;
  tTran.Post;

  New(P);
  P^.msgCCE := False;
  P^.msgUID := tTranUID.AsGuid;
  PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);
end;

function CopyDir(const fromDir, toDir: string): Boolean;
var
  fos: TSHFileOpStruct;
begin
  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc  := FO_COPY;
    fFlags := FOF_FILESONLY or FOF_SILENT or FOF_NOCONFIRMATION or FOF_NOERRORUI or FOF_NOCONFIRMMKDIR;
    pFrom  := PChar(fromDir + #0);
    pTo    := PChar(toDir)
  end;
  Result := (0 = ShFileOperation(fos));
end;

procedure TdmSAT_gerar.InstallDriver;
var 
  S, sModelo: String;
  sl : TStrings;

function ArqBema: String;
begin  
  Result := ExtractFilePath(ParamStr(0)) + 'bemasat.xml';
end;

begin
  DebugMsg('TdmSAT_gerar.InstallDriver 1');
  if tNFConfigsat_modelo.IsNull then begin
    DebugMsg('TdmSAT_gerar.InstallDriver - Modelo nulo');
    Exit;
  end;

  DebugMsg('TdmSAT_gerar.InstallDriver 2');
  
  if not (tNFConfigsat_modelo.Value in [1..sat_ultimo]) then begin
    DebugMsg('TdmSAT_gerar.InstallDriver - Modelo inválido - '+tNFConfigsat_modelo.AsString);
    Exit;
  end;

  DebugMsg('TdmSAT_gerar.InstallDriver 3');

  sModelo := sat_strings[tNFConfigsat_modelo.Value];

  if SameText(slIni.Values['sat_driver'], sModelo) then begin
    DebugMsg('TdmSAT_gerar.InstallDriver - driver "'+sModelo+'" já foi instalado');
    Exit;
  end;

  DebugMsg('TdmSAT_gerar.InstallDriver 4');
  
  S := ExtractFilePath(ParamStr(0)) + 'sat\drivers\'+sModelo;

  if not DirectoryExists(S) then begin
    DebugMsg('TdmSAT_gerar.InstallDriver - diretório "'+S+'" não existe.');
    Exit;
  end;

  DebugMsg('TdmSAT_gerar.InstallDriver 5');

  if not copyDir(S+'\*.*', ExtractFileDir(ParamStr(0))) then 
    DebugMsg('TdmSAT_gerar.InstallDriver - Copia de arquivos falhou');

  if (tNFConfigsat_modelo.Value=sat_bematech) and FileExists(ArqBema) then begin
    sl := TStringList.Create;
    try
      sl.LoadFromFile(ArqBema);
      S := sl.Text;
      SetTagValue(S, 'Path', ExtractFileDir(ParamStr(0)));
      SetTagValue(S, 'Porta', tNFConfigsat_config.Value);
      sl.Text := S;
      sl.SaveToFile(ArqBema);
    finally
      sl.Free;
    end;
  end;

  DebugMsg('TdmSAT_gerar.InstallDriver 6');
  
  slIni.Values['sat_driver'] := sModelo;
  slIni.SaveToFile(IniFName(true));

  DebugMsg('TdmSAT_gerar.InstallDriver 7');
end;

procedure TdmSAT_gerar.RefreshConfig;
var 
  aNewConfig : Cardinal;
  S : String;
begin
  aNewConfig := getConfigNFCE;
  if aNewConfig=FlastConfig then Exit;

  tNFConfig.Active := True;
  tNFConfig.Refresh;
  FlastConfig := aNewConfig;

  try
    DebugMsg('TdmSAT_gerar.RefreshConfig 1');
    satComp.UF := tNFConfigEnd_UF.Value;
    S := ExtractFilePath(ParamStr(0));
    satComp.DiretorioEsquemas := S+'SAT\Esquemas\';
    satComp.DiretorioTemplates := S+'SAT\Templates\';
    satComp.DiretorioLog := S+'SAT\Log';
    satComp.DiretorioLogErro := S+'SAT\Erros\';
    satComp.DiretorioCopiaSeguranca := S+'SAT\Copia\';
    satComp.CodigoAtivacao := tNFConfigCodigoAtivacao.Value;

    case tNFConfigsat_modelo.Value of
      sat_bematech : satComp.NomeDllSat := S + 'bemasat32.dll';
      sat_nitere,
      sat_elgin,
      sat_dimep    : satComp.NomeDllSat := S + 'dllsat.dll';
      sat_kryptus  : satComp.NomeDllSat := S + 'SAT_DK_stdcall.dll';
      sat_sweda    : satComp.NomeDllSat := S + 'satdll.dll';
      sat_tanca    : satComp.NomeDllSat := S + 'sat.dll';
      sat_outros   : satComp.NomeDllSat := tNFConfigNomeDLLsat.Value;
    end;
    DebugMsg('TdmSAT_gerar.RefreshConfig 2 - DiretorioCopiaSeguranca = '+satComp.DiretorioCopiaSeguranca);
    if satDev then begin
      satComp.CnpjContribuinte := '08723218000186';
      satComp.CnpjSoftwareHouse := '16716114000172';
    end else begin
      satComp.CnpjContribuinte := SoDig(tNFConfigCNPJ.Value);
      satComp.CnpjSoftwareHouse := '04580911000196';
    end;
    DebugMsg('TdmSAT_gerar.RefreshConfig - S: '+S);

    InstallDriver;    
  except  
    on E: Exception do begin
      DebugMsg('TdmSAT_gerar.RefreshConfig - Exception: '+E.Message);
      raise Exception.Create('Erro na configuração para emissão de SAT: '+E.Message);
    end;
  end;
  DebugMsg('TdmSAT_gerar.RefreshConfig - Final');
end;

function StrToDataHora(sD, sH: String; var D: TDateTime): Boolean;
begin
  if (Length(sD)=8) and (Length(sH)=6) then begin
    D :=
      EncodeDate(StrToInt(copy(sD, 1, 4)),
                 StrToInt(copy(sD, 5, 2)),
                 StrToInt(copy(sD, 7, 2))) + 
      EncodeTime(StrToInt(copy(sH, 1, 2)),
                 StrToInt(copy(sH, 3, 2)),
                 StrToInt(copy(sH, 5, 2)), 0);
    Result := True;
  end else
    Result := False;
end;

procedure TdmSAT_gerar.SalvaRetorno;
var 
  S : String;
  P : PmsgNFEUpdated;
  D : TDateTime;
begin
  try
    InitTran(nxDB, [tNFE, tTran], True);
    try
      tNFE.Edit;

      if slRet.Values['errosw']>'' then
      begin
        tNFEStatusNF.Value := 9999;
        tNFEStatus.Value := nfestatus_erro;
        tNFExMotivo.Value := slRet.Values['errosw'];
      end 
      else begin
        tNFEXMLret.Value := slRet.Text;
        tNFEStatusNF.Value := StrToIntDef(RetCampo(slRet.Text, 1), 0);
        tNFExMotivo.Value := RetCampo(slRet.Text, 3);
        
        if (tNFEStatusNF.Value=6000) then begin
          tNFEChave.Value := RetCFEId(slRet.Text); //Copy(RetCampo(slRet.Text, 8), 4, 200);
          tNFEStatus.Value := nfestatus_ok;
            
          S := ArqXML(tNFeChave.Value);  
            
          if FileExists(S) then begin
            tNFEXMLdest.LoadFromFile(S);
            S := tNFEXMLDest.Value;
            tNFEModelo.Value  := GetXMLValue(S, 'mod',   'CFe,infCFe,ide');
            tNFENumero.Value  := StrToIntDef(GetXMLValue(S, 'nCFe',  'CFe,infCFe,ide'), 0);
            tNFEtpAmb.Value   := StrToIntDef(GetXMLValue(S, 'tpAmb', 'CFe,infCFe,ide'), 0);
            if StrToDataHora(GetXmlValue(S,     'dEmi',  'CFe,infCFe,ide'),
                             GetXmlValue(S,     'hEmi',  'CFe,infCFe,ide'), 
                             D) then
              tNFEEmitidoEm.Value := D; 
            DebugMsg(Self, 'SalvaRetorno - OK');                              
          end else
            DebugMsgEsp(Self, 'Arquivo não existe: '+S, False, True);
            
        end else 
          tNFEStatus.Value := nfestatus_erro;
      end;  
      tNFE.Post;

      tTran.Edit;
      tTranStatusNFE.Value := tNFEStatus.Value;
      tTranChaveNFE.Value := tNFEChave.Value;
      tTran.Post;
      nxDB.Commit;

      New(P);
      P^.msgCCE := False;
      P^.msgUID := tTranUID.AsGuid;
      PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);

      if tNFEStatus.Value=nfestatus_ok then
        GeraEmail;
    finally
      if nxDB.InTransaction then nxDB.Rollback;
    end;  
  except
    on E: Exception do 
      DebugMsgEsp('TdmSAT_gerar.SalvaRetorno - Exception: '+E.Message, False, True);
  end;  
end;

procedure TdmSAT_gerar.SalvaRetornoCanc;
var 
  S : String;
  P : PmsgNFEUpdated;
begin
  try
    InitTran(nxDB, [tNFE, tTran], True);
    try
      tNFE.Edit;

      if slRet.Values['errosw']='' then begin

        tNFEStatusCancNF.Value := StrToIntDef(RetCampo(slRet.Text, 1), 0);
        tNFExMotivoCanc.Value := RetCampo(slRet.Text, 3);
      
        if (tNFEStatusCancNF.Value=7000) then begin
          tNFECanceladoEm.Value := Now;
          tNFEStatusCanc.Value := statuscanc_nfe_processatran;
          S := ArqXML(tNFEChave.Value, True);
          if FileExists(S) then
            tNFExmlRetCanc.LoadFromFile(S);
        end else begin 
          tNFEStatusCanc.Value := statuscanc_nfe_rej;
          tNFExmlRetCanc.Value := slRet.Text;
        end;
      end else begin
        tNFEStatusCancNF.Value := 9999;
        tNFEStatusCanc.Value := statuscanc_nfe_erro;
        tNFExMotivoCanc.Value := slRet.Values['errosw'];
      end;
      
      tNFE.Post;

      tTran.Edit;
      tTranStatusCanc.Value := tNFEStatusCanc.Value;
      tTran.Post;
      nxDB.Commit;

      if tNFEStatusCanc.Value <> statuscanc_nfe_processatran then begin
        New(P);
        P^.msgCCE := False;
        P^.msgUID := tTranUID.AsGuid;
        PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);
      end;  
    finally
      if nxDB.InTransaction then nxDB.Rollback;
    end;  
  except
    on E: Exception do 
        DebugMsgEsp('TdmSAT_Gerar.SalvaRetornoCanc - Exception: '+E.Message, False, True);
  end;  
end;

procedure TdmSAT_gerar.satCompXmlCopiaSeguranca(const aFileName: WideString);
begin
  DebugMsg('TdmSAT_gerar.satCompXmlCopiaSeguranca - aFileName: '+aFileName);
end;

function TdmSAT_gerar.satDev: Boolean;
begin
  Result := (slIni.Values['satdev']='1');
end;

procedure TdmSAT_gerar.sat_criar;
begin
  tNFEEntrada.Value := False;
  tNFETipoDoc.Value := tiponfe_sat;
  tNFEDataHora.Value := Now; //tTranDataHora.Value;
  tNFETran.Value := tTranUID.Value;
  tNFEStatus.Value := nfestatus_transmitir;
  tNFEValor.Value := tTranTotLiq.Value;
  tNFEChave.Value := 'TEMP'+ncGUIDutils.TGuidEx.NewGuidStr;
end;

function FormatValor(aValor: Extended; aDecimais: Integer): String;
begin
  Str(aValor:0:aDecimais, Result);
end;

function ZeroPad(S: String; T: Integer): String;
begin
  Result := S;
  while Length(Result)<T do Result := '0'+Result;
end;

procedure TdmSAT_gerar.sat_gerarxml;
var 
  S: String;
  sl : TStrings;
  FExtraEmail : Boolean;
  FExtraCPF : Boolean;
  sXML : String;
  _dataSet : TspdCFeSatDataSets;

procedure DadosSAT;
var
  _NRNota : String;
begin
  case tNFConfigsat_esq.Value of
    1 : _dataSet.Campo('versaoDadosEnt_A03').Value := '0.06';
  else
    _dataSet.Campo('versaoDadosEnt_A03').Value := '0.07';
  end;
  
  _dataSet.Campo('CNPJ_B11').Value := SoDig(satComp.CnpjSoftwareHouse);

  if satDev then
    _dataSet.Campo('signAC_B12').Value := 'SGR-SAT SISTEMA DE GESTAO E RETAGUARDA DO SAT' else
    _dataSet.Campo('signAC_B12').Value := tNFConfigSignACSat.Value;
  
  _dataSet.Campo('numeroCaixa_B14').Value := '001';

  _dataSet.Campo('CNPJ_C02').Value := SoDig(satComp.CnpjContribuinte);
  _dataSet.Campo('IE_C12').Value := SoDig(tNFConfigIE.Value);
  _dataSet.Campo('IM_C13').Value := '';
  _dataSet.Campo('cRegTribISSQN_C15').Value := '';
  _dataSet.Campo('indRatISSQN_C16').Value := 'N';

//  _dataSet.Campo('IM_C13').Value := '123123';
end;

function SoDig(S: String): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do 
    if S[I] in ['0'..'9']  then
      Result := Result + S[I];
end;

procedure AddNomeEmail;
begin
    if (Length(SoDig(tCliCPF.Value))=11) or (Length(sl.Values['cpfnf'])=11) then 
      _dataSet.Campo('xNome_E04').Value := fmtnfe(tCliNome.Value) else
      _dataSet.Campo('xNome_E04').Value := '';
    if (not FExtraEmail) and EmailValido(tCliEmail.Value) then begin 
      tNFEEmail.Value := fmtnfe(tCliEmail.Value);
    end else begin  
      if Trim(tCliEmail.Value)='' then begin
        tCli.Edit;
        tCliEmail.Value := fmtnfe(sl.Values['emailnf']);
        tCli.Post;
      end;
    end;
end;

procedure AddExtraEmail;
var S: String;
begin
  S := sl.Values['emailnf'];
  if (trim(S)>'') then begin
    tNFEEmail.Value := S;
    FExtraEmail := True;
  end else 
    FExtraEmail := False;
end;

procedure AddExtraCPF;
var S: String;
begin
  S := sl.Values['cpfnf'];
  if (trim(S)>'') then begin
    _dataSet.Campo('CPF_E03').Value := SoDig(S);
    tNFECPF.Value := S;
    FExtraCPF := True;
  end else 
    FExtraCPF := False;
end;

procedure DadosDoDestinatario;
begin
  _dataSet.Campo('CPF_E03').Value := '';
  _dataSet.Campo('xNome_E04').Value    := '';
  AddExtraEmail;
  AddExtraCPF;
  if (tTranCliente.Value>0) and (tCliID.Value=tTranCliente.Value) then begin
    if tCliPJuridica.Value and (Length(SoDig(tCliCPF.Value))>12) then begin
      _dataSet.Campo('CNPJ_E02').Value := SoDig(tCliCPF.Value);
      tNFECPF.Value := SoDig(tCliCPF.Value);
      AddNomeEmail;
    end else begin
      if not FExtraCPF then begin
        _dataSet.Campo('CPF_E03').Value := SoDig(tCliCPF.Value);
        tNFECPF.Value := SoDig(tCliCPF.Value);
      end else 
      if SoDig(tCliCPF.Value)<>SoDig(sl.Values['cpfnf']) then
      begin
        tCli.Edit;
        tCliCPF.Value := sl.Values['cpfnf'];
        tCli.Post;
      end;  
      AddNomeEmail;
    end;  
  end;  
end;

function EAN13(S: String ): integer;
     var i: integer;
begin
  Result := 0;
  S := copy(S, 1, 12);
  { Soma todos Números e Multiplica os Pares por 3 }
  for i := 0 to Length( S ) -1 do
      Result := Result + StrToInt( S[ i +1 ] ) * (( i mod 2 ) * 2 + 1);
  { 10 menos o Resto da divisão da soma por 10 }
  Result := ( ( Ceil (Result / 10) * 10 ) - Result );
end;

function EAN_OK(S: String): Boolean;
begin
  Result := (IntToStr(EAN13(S)) = Copy(S, 13, 1));
end;

function Codigo: String;
begin
  Result := Trim(tProdutoCodigo.Value);
  if Trim(Result)='' then
    Result := tProdutoID.AsString;
end;

function FmtNCM(S: String): String;
begin
  if Length(S)=7 then 
     Result := '0' + S else
     Result := S;
end;

procedure AdicionaItens;
var 
  aItem: Integer;
  vImp : Currency;
//  aFreteItem, aFreteTotal : currency;
  Q : Extended;
begin
  DebugMsg('dmSat_gerar.sat_gerar_xml - Adiciona Itens');
  aItem := 0;
  vTotImp := 0;
{  aFreteTotal := 0;
  aFreteItem  := 0;}
  tMovEst.IndexName := 'ITranItem';
  tMovEst.SetRange([tTranID.Value], [tTranID.Value]);
  try
    DebugMsg('dmSat_gerar.sat_gerar_xml - Adiciona Itens 2');
    tNCM.IndexName := 'INCM';
    tMovEst.First;
    while not tMovEst.Eof do begin
      tProduto.FindKey([tMovEstProduto.Value]);
      
      if tProdutobrtrib.IsNull then
        tBRTrib.FindKey([tNFConfigTrib_Padrao.Value]) else
        tBRTrib.FindKey([tProdutoBRTrib.Value]);

      if tProdutoNCM.IsNull then
        tNCM.FindKey([tNFConfigNCM_Padrao.Value{, tNFConfigNCMEx_Padrao}]) else
        tNCM.FindKey([tProdutoNCM.Value, tProdutoNCM_Ex.Value]);

      Inc(aItem);
      DebugMsg('TdmSAT_gerar - Adiciona Itens 3: '+Codigo);


      _dataSet.IncluirItem;
      _dataSet.Campo('nItem_H02').Value := IntToStr(aItem);

      _dataSet.Campo('cProd_I02').AsString := fmtnfe(Codigo);
      if (Length(Codigo)=13) and EAN_OK(Codigo) then 
        _dataSet.Campo('cEAN_I03').AsString := Codigo;
      _dataSet.Campo('xProd_I04').Value    := fmtnfe(tProdutoDescricao.Value);

      _dataSet.Campo('NCM_I05').Value      := FmtNCM(tNCMNCM.Value);

      if (tProdutocest.Value>0) and (VerEsquema>1) then begin
        _dataset.Campo('xCampoDet_I18').Value := 'Cod. CEST';
        _dataset.Campo('xTextoDet_I19').Value := tProdutocest.AsString;
      end;

      _dataSet.Campo('CFOP_I06').Value     := tBRTribCFOP_nfce.AsString;
      _dataSet.Campo('uCom_I07').Value     := fmtnfe(tProdutoUnid.Value);

      if (tMovEstTotal.Value>0) and (Frac(tMovEstQuant.Value)>0.00001) then
        Q := tMovEstTotal.Value/tMovEstUnitario.Value else
        Q := tMovEstQuant.Value;

      _dataSet.Campo('qCom_I08').Value     := FormatValor(Q, 4);
      _dataSet.Campo('vUnCom_I09').Value  := FormatValor(tMovEstUnitario.Value, 2);

      _dataSet.Campo('indRegra_I11').Value := 'A';
      
      
      if tMovEstDesconto.Value>=0.01 then
        _dataSet.Campo('vDesc_I12').Value    := FormatValor(tMovEstDesconto.Value, 2);

      vImp := CalcImp;                                 
      vTotImp := vTotImp + vImp;
      _dataSet.Campo('vItem12741_M02').Value := FormatValor(vImp, 2);

      
      _dataSet.Campo('orig_N06').Value     := tBRTribOrigem.AsString;
      if tNFConfigCRT.Value=3 then
        _dataSet.Campo('CST_N07').Value      := ZeroPad(tBRTribCST.AsString, 2) else
        _dataSet.Campo('CSOSN_N10').Value   := tBRTribCSOSN.AsString;
      
      _dataSet.Campo('pICMS_N08').Value := FormatValor(tBRTribICMS.Value, 2);

      _dataSet.Campo('vDeducISSQN_U02').Value := '';
      _dataSet.Campo('vAliq_U04').Value := '';
      _dataSet.Campo('cMunFG_U06').Value := '';
      _dataSet.Campo('cListServ_U07').Value := '';
      _dataSet.Campo('cServTribMun_U08').Value := '';
      _dataSet.Campo('cNatOp_U09').Value := '';
      _dataSet.Campo('indIncFisc_U10').Value := '';

{      if tTranFrete.Value>0 then begin
        aFreteItem := DuasCasas(((tMovEstTotal.Value - tMovEstDesconto.Value) / tTranTotLiq.Value) * tTranFrete.Value, 2);
        _dataSet.Campo('vRatAcr_I16').Value := FormatValor(aFreteItem, 2);
        aFreteTotal := aFreteTotal + aFreteItem;
      end;}

      _dataSet.Campo('infAdProd_V01').Value := '';
      DebugMsg('TdmSAT_gerar - Adiciona Itens 4');

    _dataSet.Campo('CST_Q07').Value := '04';
{    _dataSet.Campo('vBC_Q08').Value := '';
    _dataSet.Campo('pPIS_Q09').Value := '';
    _dataSet.Campo('qBCProd_Q11').Value := '';
    _dataSet.Campo('vAliqProd_Q12').Value := '';}

    _dataSet.Campo('CST_S07').Value := '04';
{    _dataSet.Campo('vBC_S08').Value := '';
    _dataSet.Campo('pCOFINS_S09').Value := '';
    _dataSet.Campo('qBCProd_S11').Value := '';
    _dataSet.Campo('vAliqProd_S12').Value := '';}
      
      
      DebugMsg('TdmSAT_gerar - Adiciona Itens 5: ');
      
      
      tMovEst.Next;

{      if tMovEst.Eof and (aFreteTotal>0) and (aFreteTotal<>tTranFrete.Value) then begin
        aFreteItem := DuasCasas(aFreteItem + (tTranFrete.Value - aFreteTotal), 2);
        _dataSet.Campo('vRatAcr_I16').Value := FormatValor(aFreteItem, 2);
      end;}
      
      _dataSet.SalvarItem;
      
    end; 
  finally
    tMovEst.CancelRange;  
  end;  
  DebugMsg('TdmSAT_gerar - Adiciona Itens 6');
  
end;

Procedure DadosTotalizadores;
begin
  DebugMsg('TdmSAT_gerar.sat_gerarxml.DadosTotalizadores');
  if (Trim(tTranObs.Value)>'') and (GetValueFromStr(tTranExtra.Value, 'obsnf')='1') then
    _dataSet.Campo('infCpl_Z02').Value := ObsToInfCpl(tTranObs.Value);

  if tTranFrete.Value>0.001 then
    _dataSet.Campo('vAcresSubtot_W21').Value := FormatValor(tTranFrete.Value, 2);
  
{    satDS.Campo('vBC_W03').Value := '0.00';
    satDS.Campo('vICMS_W04').Value := '0.00';
    satDS.Campo('vICMSDeson_W04a').Value := '0.00';
    satDS.Campo('vBCST_W05').Value := '0.00'; //Base de Cálculo do ICMS ST
    satDS.Campo('vST_W06').Value := '0.00'; //Valor Total do ICMS ST
    satDS.Campo('vProd_W07').Value := FormatValor(tTranTotal.Value, 2);
    satDS.Campo('vFrete_W08').Value := '0.00'; //Valor Total do Frete
    satDS.Campo('vSeg_W09').Value := '0.00'; //Valor Total do Seguro
    if tTranDesconto.Value>=0.01 then
      satDS.Campo('vDesc_W10').Value := FormatValor(tTranDesconto.Value, 2) else
      satDS.Campo('vDesc_W10').Value := '0.00';
    satDS.Campo('vII_W11').Value := '0.00'; //Valor Total do II
    satDS.Campo('vIPI_W12').Value := '0.00'; //Valor Total do IPI
    satDS.Campo('vPIS_W13').Value := '0.00'; //Valor do PIS
    satDS.Campo('vCOFINS_W14').Value := '0.00'; //Valor do COFINS
    satDS.Campo('vOutro_W15').Value := '0.00'; //Outras Despesas acessórias
    satDS.Campo('vNF_W16').Value := FormatValor(tTranTotLiq.Value, 2);
    satDS.Campo('vTotTrib_W16a').Value := FormatValor(vTotImp, 2);
    satDS.Campo('modFrete_X02').Value := '9'; //Modalidade do frete: 0- Por conta do emitente; 1- Por conta do destinatário/remetente; 2- Por conta de terceiros; 9- Sem frete.}
end;                                                        

procedure DadosPagamento;
var 
  V, Cred   : Currency;
  TotEsp : Array[1..99] of Currency;
  T      : Byte;
begin
  DebugMsg('TdmSAT_gerar.sat_gerarxml.DadosPagamento 1');

  tPagEsp.IndexName := 'ITranID';
  tPagEsp.SetRange([tTranID.Value], [tTranID.Value]);
  try
    DebugMsg('TdmSAT_gerar.sat_gerarxml.DadosPagamento 2');
  
    Fillchar(TotEsp, SizeOf(TotEsp), 0);
    Cred := tTranCredito.Value;
    tPagEsp.First;
    while not tPagEsp.Eof do begin
      if tEspecie.FindKey([tPagEspEspecie.Value]) and (tEspecieTipoPagNFE.Value in [1..99]) then
        T := tEspecieTipoPagNFE.Value else
        T := 1;

      V := tPagEspValor.Value-tPagEspTroco.Value;

      if Cred>0 then begin
        if Cred>=V then begin
          Cred := Cred - V;
          V := 0;
        end else begin
          V := V - Cred;
          Cred := 0;
        end;
      end;
    
      TotEsp[T] := TotEsp[T] + V;
      tPagEsp.Next;
    end;
  
    TotEsp[5] := tTranDebito.Value + tTranCreditoUsado.Value;
    DebugMsg('TotEsp[5] = '+CurrencyToStr(TotEsp[5]));
  
    for T := 1 to 99 do 
    if TotEsp[T]>0.009 then begin

      _dataSet.IncluirPart('PAGAMENTO');
      _dataSet.Campo('cMP_WA03').Value := ZeroPad(IntToStr(T), 2);
      _dataSet.Campo('vMP_WA04').Value := FormatValor(TotEsp[T], 2);
      _dataSet.Campo('cAdmC_WA05').Value := '';
      _dataSet.SalvarPart('PAGAMENTO');
    
      DebugMsg('DadosPagamento - T: '+IntToStr(T)+' - Valor: '+CurrencyToStr(TotEsp[T]));
    end;  
  finally
    tPagEsp.CancelRange;
  end;  
end;

procedure Gera;
begin
  DebugMsg('sat_gerarxml - gera - 1');
  _dataset.LoteCFeSat.Clear;
  _dataset.Incluir;
    DadosSAT;
    DadosDoDestinatario;
    AdicionaItens;
    DadosTotalizadores;
    DadosPagamento;
  _dataset.Salvar;

  DebugMsg('sat_gerarxml - gera - 2');
  
  
  tNFEXMLtrans.Value := _dataset.LoteCFeSat.GetText;
  DebugMsg('sat_gerarxml - gera - 3: '+sLineBreak+sLineBreak+tNFEXMLtrans.Value+sLineBreak);
  tNFEStatus.Value := nfestatus_transmitir;   
end;


begin
  sl := TStringList.Create;
  _dataSet := TspdCFeSatDataSets.Create(nil);

  try
    sl.Text := tTranExtra.Value;
    case tNFConfigsat_esq.Value of
      1 : _dataSet.VersaoEsquema := ve0006;
    else
      _dataSet.VersaoEsquema := ve0007;
    end;
    _dataSet.ArquivoConversorXml := satComp.DiretorioTemplates + 'Conversor\CFeSatDataSets.xml';
    Gera;
  finally
    sl.Free;
    _dataSet.Free;
  end;

end;

procedure TdmSAT_gerar.ObtemDadosSAT;
begin

end;

procedure TdmSAT_gerar.OpenDB;
var I : Integer;
begin
  nxSession.ServerEngine := dmServidorBD.ServerEngine;
  nxDB.AliasPath := '';
  nxDB.AliasName := 'NexCafe';
  nxSession.Username := SessionUser;
  nxSession.Password := SessionPass;
  nxSession.Active := True;
  nxDB.Active := True;
  for I := 0 to nxDB.DataSetCount-1 do 
    nxDB.DataSets[I].Active := True;
end;

function TdmSAT_gerar.ProcessaGerar: Boolean;
begin
  try
    DebugMsg('TdmSAT_gerar.ProcessaGerar - 1');
    Result := False;
    try
      ExCfg := '';
      RefreshConfig;
    except
      on E: Exception do 
        ExCfg := E.Message;
    end;
    DebugMsg('TdmSAT_gerar.ProcessaGerar - 2');
    tTran.IndexName := 'ITipoNFeCanceladoStatusNFE';
    
    if not tTran.FindKey([tiponfe_sat, False, nfetran_gerar]) then Exit;
    DebugMsg('TdmSAT_gerar.ProcessaGerar - 3');
    InitTran(nxDB, [tTran, tCli, tPagEsp, tNFE, tBRTrib, tNCM, tNFConfig, tProduto, tMovEst, tEspecie], True);
    try
      DebugMsg('TdmSAT_gerar.ProcessaGerar - 4');
      if tTranCliente.Value>0 then tCli.FindKey([tTranCliente.Value]);
      DebugMsg('TdmSAT_gerar.ProcessaGerar - 5');
      GerarNF;
      DebugMsg('TdmSAT_gerar.ProcessaGerar - 6');
      nxDB.Commit;
      DebugMsg('TdmSAT_gerar.ProcessaGerar - 7 - Commit OK');
      Result := True;
    except
      on E: Exception do begin
        DebugMsgEsp('TdmSAT_gerar.ProcessaGerar 8 - '+E.ClassName+': '+E.Message, False, True);
        nxDB.Rollback;
      end;  
    end;
  except
    on E: Exception do 
      DebugMsgEsp('TdmSAT_gerar.ProcessaGerar 9 - '+E.ClassName+': '+E.Message, False, True);
  end;
end;

function TdmSAT_gerar.ProcessaProxCancelamento: Boolean;
begin
  try
    RefreshConfig;
    Result := False;
    tNFE.IndexName := 'ITipoDocStatusCancNumSeq';
    tTran.IndexName := 'IUID';
    
    if not tNFE.FindKey([tiponfe_sat, statuscanc_nfe_processarnfe]) then Exit;
  
    if tTran.FindKey([tNFETran.Value]) then 
      Result := CancelaSAT
    else begin  
      tNFE.Edit;
      tNFEStatusCanc.Value := statuscanc_nfe_erro;
      tNFExMotivoCanc.Value := 'Transação não encontrada para esse SAT';
      tNFE.Post;
    end;
  except  
    on E: Exception do 
      DebugMsgEsp('TdmSAT_gerar.ProcessaProxCancelamento - Exception: '+E.Message, False, True);
  end;
end;

function TdmSAT_gerar.ProcessaProxCancelamentoTran: Boolean;
var 
  dm: Tdm;
  O : TObject;
  S : String;
begin
  try
    RefreshConfig;

    tNFE.IndexName := 'ITipoDocStatusCancNumSeq';
  
    if not tNFE.FindKey([tiponfe_sat, statuscanc_nfe_processatran]) then
    begin
      Result := False;
      Exit;
    end;
    Result := True;

    TncServidorBase.Lock;
    try
      FOnGetDM(O);
      if O=nil then Exit;

      dm := tDM(O);
      
      S := dm.CancelaTranNFe(tNFEChave.Value);
      if S>'' then
        DebugMsgEsp('TdmSAT_gerar.ProcessaProxCancelamentoTran - Erro: '+S, False, True);
    finally
      TncServidorBase.Unlock;
    end;
  except  
    on E: Exception do 
      DebugMsgEsp('TdmSAT_gerar.ProcessaProxCancelamento - Exception: '+E.Message, False, True);
  end;
end;

function TdmSAT_gerar.ProcessaEnviar: Boolean;
begin
  try
    DebugMsg('TdmSAT_gerar.ProcessaEnviar');
    RefreshConfig;

    tTran.IndexName := 'IUID';
    tNFE.IndexName := 'ITipoDocStatusNumSeq';

    Result := False;
    if not tNFE.FindKey([tiponfe_sat, nfetran_transmitir]) then Exit;
    if not tTran.FindKey([tNFETran.Value]) then begin
      DebugMsg('TdmSAT_gerar.ProcessaEnviar - 2');
      tNFE.Edit;
      tNFEStatus.Value := nfetran_erro;
      tNFExMotivo.Value := 'Transação não encontrada no banco de dados';
      tNFE.Post;
      Result := True;
      Exit;
    end;

    Result := EnviarNF;
  except
    on E: Exception do 
      DebugMsgEsp('TdmSAT_gerar.ProcessaEnviar - Exception: '+E.Message, False, True);
  end;
end;

procedure TdmSAT_gerar.ValidaXML;
begin
end;

function TdmSAT_gerar.VerEsquema: Byte;
var
  sl: TStrings;
  S, sData : String;
  D : TDateTime;
begin
  sl := TStringList.Create;
  try
    sl.Text := tNFConfigUrls_consulta.Value;
    Result := StrToIntDef(sl.Values[tNFConfigEnd_UF.Value+'_esquema'], 1);
    S := Trim(sl.Values[tNFConfigEnd_UF.Value+'_novoesquema']);
    sData := Trim(sl.Values[tNFConfigEnd_UF.Value+'_novoesquema_data']);
    
    if (S>'') and (Length(sData)=8) then begin
      D := YMD_Date(sData);
      if Date>=D then
        Result := StrToIntDef(S, 1); 
    end;
  finally
    sl.Free;
  end;
  FEsq := Result;
end;

{ TncProcessaGerarSAT }

constructor TncProcessaGerarSAT.Create(aGetDM: TGetDMEv);
begin
  inherited Create(False);
  FOnGetDM := aGetDM;
  FreeOnTerminate := True;
end;

procedure DesligaMensagensTanca;
var sl : TStrings;
begin
  sl := TStringList.Create;
  try
    sl.Add('[DEFAULT]');
    sl.Add('NO_POPUP = true');
    sl.SaveToFile('sat.ini');
  finally
    sl.Free;
  end;
end;

procedure TncProcessaGerarSAT.Execute;
var 
  dm : TdmSAT_gerar;
  lastGerar, lastCanc, aNewGerar, aNewCanc, NextMS, NextMSCanc : Cardinal;

  aOK1, aOK2 : Boolean;
begin
  DesligaMensagensTanca;
  
  Sleep(10);
  coInitialize(nil);
  try
    dm := TdmSAT_gerar.Create(nil);
    try
      dm.OnGetDM := FOnGetDM;
      NextMS := 0;
      NextMSCanc := 0;
      lastGerar := 0;
      dm.OpenDB;
      dm.tTran.IndexName := 'ITipoNFECanceladoStatusNFE';
      
      while (not Terminated) and (not TerminarProcNFE) do begin
        try
          aNewGerar := GetGerarNFCe;
          if (aNewGerar<>lastGerar) or (GetTickCount>=NextMS) then begin
            lastGerar := aNewGerar;
            if dm.ProcessaGerar or dm.ProcessaEnviar then
              NextMS := 0 else
              NextMS := GetTickCount + 10000 + Random(5000);
          end;

          aNewCanc := GetCancNFCe;
          if (aNewCanc<>lastCanc) or (GetTickCount>=NextMSCanc) then begin
            lastCanc := aNewCanc;
            aOk1 := dm.ProcessaProxCancelamento;
            aOk2 := dm.ProcessaProxCancelamentoTran;
            if aOk1 or aOk2 then
              NextMSCanc := 0 else
              NextMSCanc := GetTickCount + 10000 + Random(5000);
          end;
                    
          Sleep(5);
        except
          on E: Exception do 
            DebugMsg('TncProcessaGerarSAT.Execute - ' + E.ClassName+': '+E.Message);
        end;
      end;
    finally
      dm.Free;
    end;
  except
    on E: Exception do 
      DebugMsgEsp('TncProcessaGerarSAT.Execute - Exception: '+E.Message, False, True);
  end;
  CoUninitialize;
end;

end.
