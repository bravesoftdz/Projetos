unit udmNFCe_gerar;

interface

uses
  System.SysUtils, System.Classes, System.IniFiles, spdNFCe, System.Contnrs,
  spdNFCeDataSets, Data.DB, nxdb, nxllComponent, nxsdServerEngine,
  nxreRemoteServerEngine, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, madTools, Vcl.ExtCtrls, Windows, Messages,
  spdNFCeType, ActiveX, DateUtils;

type

  TdmNFCe_gerar = class(TDataModule)
    nfceDS: TspdNFCeDataSets;
    nfceComp: TspdNFCe;
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
    tNFConfigtpAmb: TByteField;
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
    tNFEContingencia: TBooleanField;
    tNFEStatus: TByteField;
    tNFEStatusNF: TIntegerField;
    tNFEIncluidoEm: TDateTimeField;
    tNFEEmitidoEm: TDateTimeField;
    tNFEContingenciaEM: TDateTimeField;
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
    tNFEUID: TGuidField;
    tNFEChaveCont: TStringField;
    tNFEConsultouChave: TBooleanField;
    tNFELogEnvio: TnxMemoField;
    tNFConfigModeloSAT_Email: TGuidField;
    tNFConfigTipo: TByteField;
    tNFConfigNomeDllSat: TStringField;
    tNFConfigSignACSat: TStringField;
    tNFConfigDependSATOk: TBooleanField;
    tProdutocest: TLongWordField;
    tTranDescricao: TWideMemoField;
    tTranNomeCliente: TWideStringField;
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
    tTranEntregar: TBooleanField;
    tTranVenDev: TBooleanField;
    tTranendereco_entrega: TGuidField;
    tTranids_pagto: TStringField;
    tTranHora: TByteField;
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
    tCliNaoContribICMS: TBooleanField;
    tCliIsentoIE: TBooleanField;
    tCliInfoExtra: TWideStringField;
    tCliTranspEntPadrao: TLongWordField;
    tCliTranspEnt: TBooleanField;
    tCliTipoFor: TByteField;
    tCliConsumidor: TBooleanField;
    tNFETicksConsulta: TLongWordField;
    tNFELogRec: TnxMemoField;
    tNFETotalNF: TCurrencyField;
    tProdutoPesoBruto: TFloatField;
    tProdutoPesoLiq: TFloatField;
    tProdutotax_id: TLongWordField;
    tProdutomodST: TByteField;
    tProdutoMVA: TnxMemoField;
    tProdutoPauta: TnxMemoField;
    tProdutoRecVer: TLongWordField;
    tMovEsttax_id: TLongWordField;
    tMovEsttax_incluido: TCurrencyField;
    tMovEsttax_incluir: TCurrencyField;
    tMovEstTotLiq: TCurrencyField;
    tMovEstCustoT: TCurrencyField;
    tMovEstLucro: TCurrencyField;
    tMovEstDescr: TWideStringField;
    tMovEstTotalFinal: TCurrencyField;
    tMovEstDebDev: TCurrencyField;
    tMovEstVenDev: TBooleanField;
    tTransp: TnxTable;
    tTranspID: TUnsignedAutoIncField;
    tTranspCodigo: TStringField;
    tTranspCodigoKey: TStringField;
    tTranspNome: TWideStringField;
    tTranspEndereco: TWideStringField;
    tTranspEndereco2: TWideStringField;
    tTranspEnd_Numero: TWideStringField;
    tTranspEnd_CodMun: TWideStringField;
    tTranspEnd_Dest: TWideStringField;
    tTranspEnd_Obs: TWideStringField;
    tTranspendereco_id: TGuidField;
    tTranspPais: TWideStringField;
    tTranspBairro: TWideStringField;
    tTranspCidade: TWideStringField;
    tTranspUF: TWideStringField;
    tTranspCEP: TWideStringField;
    tTranspNaoContribICMS: TBooleanField;
    tTranspIsentoIE: TBooleanField;
    tTranspNFE_CredIcms: TBooleanField;
    tTranspSexo: TStringField;
    tTranspObs: TWideMemoField;
    tTranspCpf: TWideStringField;
    tTranspRg: TWideStringField;
    tTranspTelefone: TWideStringField;
    tTranspEmail: TWideMemoField;
    tTranspPassaportes: TFloatField;
    tTranspPai: TWideStringField;
    tTranspMae: TWideStringField;
    tTranspUltVisita: TDateTimeField;
    tTranspDebito: TCurrencyField;
    tTranspDataNasc: TDateTimeField;
    tTranspCelular: TWideStringField;
    tTranspTemDebito: TBooleanField;
    tTranspLimiteDebito: TCurrencyField;
    tTranspFoto: TGraphicField;
    tTranspIncluidoEm: TDateTimeField;
    tTranspAlteradoEm: TDateTimeField;
    tTranspIncluidoPor: TStringField;
    tTranspAlteradoPor: TStringField;
    tTranspFidPontos: TFloatField;
    tTranspFidTotal: TFloatField;
    tTranspFidResg: TFloatField;
    tTranspAniversario: TStringField;
    tTranspSemFidelidade: TBooleanField;
    tTranspTemCredito: TBooleanField;
    tTranspInfoExtra: TWideStringField;
    tTranspTranspEntPadrao: TLongWordField;
    tTranspTranspEnt: TBooleanField;
    tTranspTipoFor: TByteField;
    tTranspPJuridica: TBooleanField;
    tTranspConsumidor: TBooleanField;
    tTranspInativo: TBooleanField;
    tTranspFornecedor: TBooleanField;
    tTranspValorCred: TCurrencyField;
    tTranspRecVer: TLongWordField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    _NumeroLote : String;
    _Dir        : String;
    serie       : String;
    slXML       : TStrings;
    slRet       : TStrings;
    ExCfg       : String;
    vTotImp     : Currency;
    FlastConfig : Cardinal;
    FEsq        : Byte;

    function Contingencia: Boolean;

    function CalcImp(aFrete: Currency): Currency;

    function VerEsquema: Byte;

    function ProxNumNFCe: Cardinal;

    procedure ValidaXML;

    function ProcessaProxNF: Boolean;

    { Private declarations }
    procedure nfce_gerarxml;
    procedure nfce_criar;

    procedure ren_arq_cdata;

    procedure OpenDB;
  public
    procedure GerarNFE;

    procedure RefreshConfig;
    { Public declarations }
  end;

  TncProcessaGerarNFCe = class ( TThread  )
  protected 
    procedure Execute; override;
  public 
    constructor Create; 
  end; 
  
  function getXMLValue(aXML, aCampo: String; aCaminho: string = ''): String;

var
  dmNFCe_gerar: TdmNFCe_gerar;
  
  gProcessNFEWindow : Cardinal = 0;
  TerminarProcNFE : Boolean = False;
  gContingencia : Byte = 0;
  gProcessaGerarNFCe : TncProcessaGerarNFCe = nil;
  
const
  cont_null   = 0;
  cont_off    = 1;
  cont_on     = 2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ncServBD, ncDebug, ncClassesBase, udmNFCe_trans, ncMsgCom, math,
  ncEndereco;

{$R *.dfm}

const
   sAmbHomoItem = 'NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
   sAmbHomoCli  = 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';

function RetiraBrancosExcedentes(Texto: string): string;
begin
  while Pos('  ', Texto) > 0 do
    Texto := StringReplace(Texto, '  ', ' ', [rfReplaceAll]);
  Result := Texto;
end;

function LimpaXML(S: String): String;
begin
  S := RetiraBrancosExcedentes(S); // deixa apenas 1 espaço
  S := StringReplace(S, '> <', '><', [rfIgnoreCase, rfReplaceAll]);
  S := StringReplace(S, ' </', '</', [rfIgnoreCase, rfReplaceAll]);
  S := StringReplace(S, '> ', '>', [rfIgnoreCase, rfReplaceAll]);
  S := StringReplace(S, #$D#$A, '', [rfIgnoreCase, rfReplaceAll]);
  S := StringReplace(S, #$D, '', [rfIgnoreCase, rfReplaceAll]);
  Result := S;
end;

function getXMLValue(aXML, aCampo: String; aCaminho: string = ''): String;
var
  sCaminho: String;
  P : Integer;
  
function GetProxCaminho: Boolean;
begin
  aCaminho := Trim(aCaminho);
  P := Pos(',', aCaminho);
  if P>0 then begin
    sCaminho := Copy(aCaminho, 1, P-1);
    Delete(aCaminho, 1, P);
  end else begin
    sCaminho := aCaminho;
    aCaminho := '';
  end;  
  Result := (sCaminho>'');
end;

begin
  Result := '';
  while GetProxCaminho do begin
    P := Pos('<'+sCaminho+'>', aXML);
    if P=0 then P := Pos('<'+sCaminho+' ', aXML);
    if P>0 then 
      Delete(aXML, 1, P + 1 + Length(sCaminho));                        
  end;

  P := Pos('<'+aCampo+'>', aXML);
  if P > 0 then begin
    Delete(aXML, 1, P + 1 + Length(aCampo));
    P := Pos('</'+aCampo+'>', aXML);
    if P>0 then 
      Result := Trim(Copy(aXML, 1, P-1)) else
      Result := aXML;
  end;
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


function TdmNFCe_gerar.CalcImp(aFrete: Currency): Currency;
var V: Currency;
begin
    V := tMovEstTotal.Value - tMovEstDesconto.Value;

    if tBRTribOrigem.Value in [1, 2, 6, 7] then
      Result := getImp(V, tNCMImpostoFed_Imp.Value) else
      Result := getImp(V, tNCMImpostoFed_Nac.Value);
    
    Result := DuasCasas(Result + getImp(V, tNCMImpostoEst.Value) + getImp(V, tNCMImpostoMun.Value));
end;


function CSOSN_ST(aCod: Word): Boolean;
begin
  Result := (aCod=201) and (aCod=202) and (aCod=203);
end;

function CST_ST(aCod: Word): Boolean;
begin
  Result := (aCod=30) and (aCod=60) and (aCod=70);
end;

function TdmNFCe_gerar.Contingencia: Boolean;
begin
  tAuxNFE.IndexName := 'ITipoDoctpAmbStatus';
  if gContingencia=cont_null then 
    if tAuxNFE.FindKey([tiponfe_nfce, tNFConfigtpAmb.Value, nfestatus_contingencia]) then
      gContingencia := cont_on else
      gContingencia := cont_off;
  Result := (gContingencia=cont_on);    
end;

procedure TdmNFCe_gerar.DataModuleCreate(Sender: TObject);
begin
  FEsq := 2;
  slXML := TStringList.Create;
  slRet := TStringList.Create;
  FlastConfig := 0;
end;

procedure TdmNFCe_gerar.DataModuleDestroy(Sender: TObject);
begin
  slXML.Free;
  slRet.Free;
end;

procedure TdmNFCe_gerar.GerarNFE;
var
  P : PmsgNFEUpdated;
begin
  DebugMsg('GerarNFE 1');
  tNFE.Append;
  DebugMsg('GerarNFE 2');
  try
    
    nfce_criar;
    DebugMsg('GerarNFE 3');
    if ExCfg>'' then 
      raise Exception.Create(ExCfg);
    DebugMsg('GerarNFE 4');
    nfce_gerarxml;
    DebugMsg('GerarNFE 5');
  
    ValidaXML;

    DebugMsg('GerarNFE 6');
  except  
    on E: Exception do begin
      DebugEx(Self, 'GerarNFE', E);
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
  tTranTipoNFE.Value   := tiponfe_nfce;
  tTranStatusNFE.Value := tNFEStatus.Value;
  tTranChaveNFE.Value  := tNFEChave.Value;
  tTranAmbNFe.Value    := tNFEtpAmb.Value;
  tTran.Post;

  New(P);
  P^.msgCCE := False;
  P^.msgUID := tTranUID.AsGuid;
  PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);
end;

procedure TdmNFCe_gerar.RefreshConfig;
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
    DebugMsg('TdmNFCe_gerar.RefreshConfig 1');
    nfceComp.UF := tNFConfigEnd_UF.Value;
    nfceComp.CNPJ := SoDig(tNFConfigCNPJ.Value);
    S := ExtractFilePath(ParamStr(0));
    nfceComp.DanfceSettings.TokenNFCe := tNFConfigCSC.Value;
    nfceComp.DanfceSettings.IdTokenNFCe := tNFConfigIdCSC.Value;
    nfceComp.DiretorioEsquemas := S+'NFCE\Esquemas\';
    nfceComp.DiretorioTemplates := S+'NFCE\Templates\';
    nfceComp.DiretorioLog := S+'NFCE\Log';
    if FileExists(S+'NFCE\nfceServidoresDes.ini') then
      nfceComp.ArquivoServidoresHom := S+'NFCE\nfceServidoresDes.ini' else
      nfceComp.ArquivoServidoresHom := S+'NFCE\nfceServidoresHom.ini';
    nfceComp.ArquivoServidoresProd := S+'NFCE\nfceServidoresProd.ini';
    nfceComp.DiretorioXmlDestinatario := S+'NFCE\XmlDestinatario\';
    nfceComp.DiretorioLogErro := S+'NFCE\Erros\';
    nfceComp.DiretorioTemporario := S+'NFCE\Temp\';
    nfceComp.ConexaoSegura := True;
    nfceComp.ValidarEsquemaAntesEnvio := True;

    DebugMsg('TdmNFCe_gerar.RefreshConfig - S: '+S);
    
    nfceComp.VersaoManual := vm50a;
    S := ExtractFilePath(ParamStr(0))+'NFCE\Templates\vm50a\Conversor\NFCeDataSets.xml';
    nfceDS.XMLDicionario := S;
    
    if tNFConfigTipoCert.Value=tipocert_a1 then
      nfceComp.TipoCertificado := ckFile
    else begin
      nfceComp.TipoCertificado := ckSmartCard;
      nfceComp.PinCode := tNFConfigPinCert.Value;
    end;
      
    if tNFConfigtpAmb.Value=2 then
      nfceComp.Ambiente := akHomologacao else
      nfceComp.Ambiente := akProducao;

    nfceComp.NomeCertificado.Text := tNFConfigCertificadoDig.Value;
  except  
    on E: Exception do
      raise Exception.Create('Erro na configuração para emissão de NFC-e: '+E.Message);
  end;
end;

procedure TdmNFCe_gerar.ren_arq_cdata;
var S: String;
begin
  S := ExtractFilePath(ParamStr(0))+'NFCe\Templates\vm50b\'+tNFConfigEnd_UF.Value+'\';
  if (not FileExists(S+'qrcode_ant.xml')) and FileExists(S+'qrcode_cdata.xml') then begin
    renamefile(S+'qrcode.xml', S+'qrcode_ant.xml');
    renamefile(S+'qrcode_cdata.xml', S+'qrcode.xml');
  end;
end;

procedure TdmNFCe_gerar.nfce_criar;
begin
  tNFEModelo.Value := '65';
  tNFESerie.Value := tNFConfigSerieNFCe.Value;
  tNFEtpAmb.Value := tNFConfigtpAmb.Value;
  tNFENumero.Value := ProxNumNFCe;
  tNFEEntrada.Value := False;
  tNFETipoDoc.Value := tiponfe_nfce;
  tNFEDataHora.Value := Now; //tTranDataHora.Value;
  tNFETran.Value := tTranUID.Value;
  tNFEStatus.Value := nfestatus_transmitir;
  tNFEValor.Value := tTranTotLiq.Value;
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

procedure TdmNFCe_gerar.nfce_gerarxml;
var
  S: String;
  sl : TStrings;
  FExtraEmail : Boolean;
  FExtraCPF : Boolean;
  aChaveNormal, aChaveCont : String;
  sXML : String;

procedure DadosDoNFCe;
var
  _NRNota : String;
begin
    nfceDS.campo('versao_A02').Value   := '3.10'; //Versão do leiaute
    nfceDS.Campo('cUF_B02').Value      := tNFConfigEnd_CodUF.AsString;
    nfceDS.Campo('cNF_B03').Value      := IntToStr(Random(99999999)); //Código Numérico que compõe a Chave de Acesso
    nfceDS.Campo('natOp_B04').Value    := 'VENDA MERC.ADQ.REC.TERC'; //Descrição da Natureza da Operação
    nfceDS.Campo('indPag_B05').Value   := '0'; //Indicador da forma de pagamento: 0 – pagamento à vista; 1 – pagamento à prazo; 2 - outros.
    nfceDS.Campo('mod_B06').Value      := '65'; //Modelo do Documento Fiscal
    nfceDS.Campo('serie_B07').Value    := '1';//tNFESerie.Value;

    nfceDS.Campo('nNF_B08').Value      := tNFENumero.AsString;
    nfceDS.Campo('dhEmi_B09').Value    := FormatDateTime('YYYY-mm-dd"T"HH:mm:ss', tNFEDataHora.Value) + TimeZoneStr; //Data e Hora de emissão do Documento Fiscal
    nfceDS.Campo('tpNF_B11').Value     := '1'; //Tipo de Operação: 0-entrada / 1-saída.
    nfceDS.Campo('idDest_B11a').Value  := '1'; //Identificador de local de destino da operação: 1- Operação interna; 2- Operação interestadual; 3- Operação com exterior.
    nfceDS.Campo('cMunFG_B12').Value   := tNFConfigEnd_CodMun.Value;
    nfceDS.Campo('tpImp_B21').Value    := '4';
    nfceDS.Campo('tpEmis_B22').Value   := '1';
    nfceDS.Campo('cDV_B23').Value      := ''; //Dígito Verificador da Chave de Acesso
    nfceDS.Campo('tpAmb_B24').Value    := tNFConfigtpAmb.AsString;
    nfceDS.Campo('finNFe_B25').Value   := '1'; //Finalidade de emissão da NF-e: 1- NF-e normal/ 2-NF-e complementar / 3 – NF-e de ajuste.
    nfceDS.Campo('indFinal_B25a').Value   := '1'; //Indica operação com Consumidor final: 0- Não; 1- Consumidor final;
    if tTranFrete.Value>0 then
      nfceDS.Campo('indPres_B25b').Value   := '4' else
      nfceDS.Campo('indPres_B25b').Value   := '1';
    nfceDS.Campo('procEmi_B26').Value  := '0';
    nfceDS.Campo('verProc_B27').Value  := '000'; //Versão do Processo de emissão da NF-e
end;

procedure DadosDoEmitente;
begin
  nfceDS.Campo('CNPJ_C02').Value     := SoDig(tNFConfigCNPJ.Value);
  nfceDS.Campo('xNome_C03').Value    := FmtNFe(tNFConfigRazaoSocial.Value);
  nfceDS.Campo('xFant_C04').Value    := fmtnfe(tNFConfigNomeFantasia.Value);
  nfceDS.Campo('xLgr_C06').Value     := fmtnfe(tNFConfigEnd_Logradouro.Value);
  nfceDS.Campo('xCpl_C08').Value     := fmtnfe(tNFConfigEnd_Complemento.Value);
  nfceDS.Campo('nro_C07').Value      := fmtnfe(tNFConfigEnd_Numero.Value);
  nfceDS.Campo('xBairro_C09').Value  := fmtnfe(tNFConfigEnd_Bairro.Value);
  nfceDS.Campo('cMun_C10').Value     := tNFConfigEnd_CodMun.Value;
  nfceDS.Campo('xMun_C11').Value     := fmtnfe(tNFConfigEnd_Municipio.Value);
  nfceDS.Campo('UF_C12').Value       := tNFConfigEnd_UF.Value;
  nfceDS.Campo('CEP_C13').Value      := SoDig(tNFConfigEnd_CEP.Value);
  nfceDS.Campo('cPais_C14').Value    := '1058'; //Código do País
  nfceDS.Campo('xPais_C15').Value    := 'BRASIL'; //Nome do País
  nfceDS.Campo('fone_C16').Value     := SoDig(tNFConfigTelefone.Value);
  nfceDS.Campo('IE_C17').Value       := SoDig(tNFConfigIE.Value);
  nfceDS.Campo('CRT_C21').Value      := tNFConfigCRT.AsString;
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
    if nfceComp.Ambiente <> akHomologacao then
    begin
      if (Length(SoDig(tCliCPF.Value))=11) or (Length(sl.Values['cpfnf'])=11) then 
        nfceDS.Campo('xNome_E04').Value := fmtnfe(tCliNome.Value) else
        nfceDS.Campo('xNome_E04').Value := '';
    end;    
    if (not FExtraEmail) and EmailValido(tCliEmail.Value) then begin 
      nfceDS.Campo('email_E19').Value := tCliEmail.Value;
      tNFEEmail.Value := tCliEmail.Value;
    end else begin  
      if Trim(tCliEmail.Value)='' then begin
        tCli.Edit;
        tCliEmail.Value := sl.Values['emailnf'];
        tCli.Post;
      end;
    end;
end;

procedure AddExtraEmail;
var S: String;
begin
  S := sl.Values['emailnf'];
  if (trim(S)>'') then begin
    nfceDS.Campo('email_E19').Value := S;
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
    if nfceComp.Ambiente <> akHomologacao then begin
      nfceDS.Campo('CPF_E03').Value := SoDig(S);
      tNFECPF.Value := S;
    end;  
    FExtraCPF := True;
  end else 
    FExtraCPF := False;
end;

procedure DadosDoDestinatario;
begin
  nfceDS.Campo('CPF_E03').Value := '';
  nfceDS.Campo('email_E19').Value := '';
  nfceDS.Campo('xNome_E04').Value    := '';
  if nfceComp.Ambiente = akHomologacao then begin
    nfceDS.Campo('xNome_E04').Value    := sAmbHomoCli;
    nfceDS.Campo('CNPJ_E02').Value := '99999999000191';
  end;
  nfceDS.Campo('xLgr_E06').Value     := '';
  nfceDS.Campo('nro_E07').Value      := '';
  nfceDS.Campo('xBairro_E09').Value  := '';
  nfceDS.Campo('cMun_E10').Value     := '';
  nfceDS.Campo('xMun_E11').Value     := '';
  nfceDS.Campo('UF_E12').Value       := '';
  nfceDS.Campo('CEP_E13').Value      := '';
  nfceDS.Campo('cPais_E14').Value    := '';
  nfceDS.Campo('xPais_E15').Value    := '';
  nfceDS.Campo('indIEDest_E16a').Value := '9';
  nfceDS.Campo('fone_E16').Value     := '';

  AddExtraEmail;
  AddExtraCPF;
  
  if (tTranCliente.Value>0) and (tCliID.Value=tTranCliente.Value) then begin
    if tCliPJuridica.Value and (Length(SoDig(tCliCPF.Value))>12) then begin
      if nfceComp.Ambiente <> akHomologacao then begin
        nfceDS.Campo('CNPJ_E02').Value := SoDig(tCliCPF.Value);
        tNFECPF.Value := SoDig(tCliCPF.Value);
      end;
      AddNomeEmail;
    end else begin
      if not FExtraCPF then begin
        if nfceComp.Ambiente <> akHomologacao then begin
          nfceDS.Campo('CPF_E03').Value := SoDig(tCliCPF.Value);
          tNFECPF.Value := SoDig(tCliCPF.Value);
        end;
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

procedure AdicionaItens;
var 
  aItem: Integer;
  vImp : currency;
  aFreteItem, aFreteTotal : currency;
  Q : Extended;
begin
  aItem := 0;
  vTotImp := 0;
  aFreteTotal := 0;
  aFreteItem  := 0;
  
  tMovEst.IndexName := 'ITranItem';
  tMovEst.SetRange([tTranID.Value], [tTranID.Value]);
  try
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

      nfceDS.IncluirItem;
      Inc(aItem);
      DebugMsg('TdmNFe_gerar - Adiciona Itens: '+Codigo);
      nfceDS.Campo('cProd_I02').AsString := fmtnfe(Codigo);
      nfceDS.Campo('nItem_H02').Value    := IntToStr(aItem);
      if (Length(Codigo)=13) and EAN_OK(Codigo) then begin
        nfceDS.Campo('cEAN_I03').AsString := Codigo;
        nfceDS.Campo('cEANTrib_I12').AsString := Codigo;
      end;

      if (aItem=1) and (nfceComp.Ambiente = akHomologacao) then 
        nfceDS.Campo('xProd_I04').Value    := sAmbHomoItem else
        nfceDS.Campo('xProd_I04').Value    := fmtnfe(tProdutoDescricao.Value);
                                   
      nfceDS.Campo('NCM_I05').Value      := tNCMNCM.Value;

      if (FEsq>2) and (tProdutocest.Value>0) then 
        nfceDS.Campo('NCM_I05c').Value := tProdutocest.AsString;

      nfceDS.Campo('CFOP_I08').Value     := tBRTribCFOP_nfce.AsString;
      nfceDS.Campo('uCom_I09').Value     := fmtnfe(tProdutoUnid.Value);

      if (tMovEstTotal.Value>0) and (Frac(tMovEstQuant.Value)>0.00001) then
        Q := tMovEstTotal.Value/tMovEstUnitario.Value else
        Q := tMovEstQuant.Value;

      if tTranFrete.Value>0 then begin
        aFreteItem := DuasCasas(((tMovEstTotal.Value - tMovEstDesconto.Value) / tTranTotLiq.Value) * tTranFrete.Value, 2);
        nfceDS.Campo('vFrete_I15').Value := FormatValor(aFreteItem, 2);
        aFreteTotal := aFreteTotal + aFreteItem;
      end;
        
      nfceDS.Campo('qCom_I10').Value     := FormatValor(Q, 4);
      nfceDS.Campo('vUnCom_I10a').Value  := FormatValor(tMovEstUnitario.Value, 4);
      nfceDS.Campo('vProd_I11').Value    := FormatValor(tMovEstTotal.Value, 2);
      nfceDS.Campo('uTrib_I13').Value    := Trim(tProdutoUnid.Value);
      nfceDS.Campo('qTrib_I14').Value    := FormatValor(Q, 4);
      nfceDS.Campo('vUnTrib_I14a').Value := FormatValor(tMovEstUnitario.Value, 4);
      if tMovEstDesconto.Value>=0.01 then
        nfceDS.Campo('vDesc_I17').Value    := FormatValor(tMovEstDesconto.Value, 2);
      nfceDS.Campo('indTot_I17b').Value  := '1'; //Indica se valor do Item (vProd) entra no valor total da NF-e (vProd)
  											//0 – o valor do item (vProd) não compõe o valor total da NF-e (vProd) 1 – o valor do item (vProd) compõe o valor total da NF-e (vProd)

     if tBRTribCFOP_nfce.Value=5656 then begin
       nfceDS.Campo('cProdANP_LA02').Value := '210203001';
       nfceDS.Campo('UFCons_LA06').Value := tNFConfigEnd_UF.Value;
{       nfceDS.Campo('vAliqProd_LA09').Value := '6.0000';
       nfceDS.Campo('qBCProd_LA08').Value := FormatValor(tMovEstTotal.Value-tMovEstDesconto.Value, 4);
       nfceDS.Campo('vCIDE_LA10').Value := FormatValor(DuasCasas((tMovEstTotal.Value-tMovEstDesconto.Value)*0.06), 2);}
       
{       nfceDS.Campo('cProdANP_LA02').Value := '210203001';
       nfceDS.Campo('pMixGN_LA03').Value := '12';
       nfceDS.Campo('CODIF_LA04').Value := '111111111111111111111';
       nfceDS.Campo('qTemp_LA05').Value := '30000.0000';
       nfceDS.Campo('UFCons_LA06').Value := tNFConfigEnd_UF.Value;
       nfceDS.Campo('qBCProd_LA08').Value := '20055.0000';
       nfceDS.Campo('vAliqProd_LA09').Value := '6.0000';
       nfceDS.Campo('vCIDE_LA10').Value = '1203.30';
       nfceDS.Campo('nBico_LA12').Value := '123';
       nfceDS.Campo('nBomba_LA13').Value := '321';
       nfceDS.Campo('nTanque_LA14').value := '111';
       nfceDS.Campo('vEncIni_LA15').Value := '123456789';
       nfceDS.Campo('vEncFin_LA16').Value := '987654321';}
     end;
  

      nfceDS.Campo('orig_N11').Value     := tBRTribOrigem.AsString;
      if tNFConfigCRT.Value=3 then
        nfceDS.Campo('CST_N12').Value      := ZeroPad(tBRTribCST.AsString, 2) else
        nfceDS.Campo('CSOSN_N12a').Value   := tBRTribCSOSN.AsString;


      tMovEst.Next;

      if tMovEst.Eof and (aFreteTotal>0) and (aFreteTotal<>tTranFrete.Value) then begin
        aFreteItem := DuasCasas(aFreteItem + (tTranFrete.Value - aFreteTotal), 2);
        nfceDS.Campo('vFrete_I15').Value := FormatValor(aFreteItem, 2);
      end;
      
      vImp := CalcImp(aFreteItem);
      vTotImp := vTotImp + vImp;
      nfceDS.Campo('vTotTrib_M02').Value := FormatValor(vImp, 2);
      
      nfceDS.SalvarItem;
    end; 
  finally
    tMovEst.CancelRange;  
  end;  
end;

procedure DadosTransp;
var sEnd: String;

procedure AddEnd(aStr: String);
begin
  aStr := Trim(aStr);
  if aStr='' then Exit;
  if sEnd>'' then sEnd := sEnd + ' ';
  sEnd := sEnd + aStr;
end;

begin
  if (tTranTranspEnt.Value=0) then begin
    nfceDS.Campo('modFrete_X02').Value := '9';
    Exit;
  end;  
  nfceDS.Campo('modFrete_X02').Value := '1';
  if Length(SoDig(tTranspCPF.Value))=11 then
    nfceDS.Campo('CPF_X05').Value := SoDig(tTranspCPF.Value) else
    nfceDS.Campo('CNPJ_X04').Value := SoDig(tTranspCPF.Value);
    
  nfceDS.Campo('xNome_X06').Value := FmtNFE(tTranspNome.Value);

  if Trim(tTranspRG.Value)>'' then
    nfceDS.Campo('IE_X07').Value := FmtNFE(tTranspRG.Value);

  sEnd := '';
  AddEnd(tTranspEndereco.Value);
  AddEnd(tTranspEnd_Numero.Value);
  AddEnd(tTranspEndereco2.Value);
  if sEnd>'' then begin
    nfceDS.Campo('xEnder_X08').Value := FmtNFE(sEnd);
    nfceDS.Campo('xMun_X09').Value := FmtNFE(tTranspCidade.Value);
    nfceDS.Campo('UF_X10').Value := FmtNFE(tTranspUF.Value);
  end;
end;


Procedure DadosTotalizadores;
var S: String;
begin
    if (Trim(tTranObs.Value)>'') and (GetValueFromStr(tTranExtra.Value, 'obsnf')='1') then
      nfceDS.Campo('infCpl_Z03').Value := ObsToInfCpl(tTranObs.Value);
    nfceDS.Campo('vBC_W03').Value := '0.00';
    nfceDS.Campo('vICMS_W04').Value := '0.00';
    nfceDS.Campo('vICMSDeson_W04a').Value := '0.00';
    nfceDS.Campo('vBCST_W05').Value := '0.00'; //Base de Cálculo do ICMS ST
    nfceDS.Campo('vST_W06').Value := '0.00'; //Valor Total do ICMS ST
    nfceDS.Campo('vProd_W07').Value := FormatValor(tTranTotal.Value, 2);
    nfceDS.Campo('vFrete_W08').Value := FormatValor(tTranFrete.Value, 2);
    nfceDS.Campo('vSeg_W09').Value := '0.00'; //Valor Total do Seguro
    if tTranDesconto.Value>=0.01 then
      nfceDS.Campo('vDesc_W10').Value := FormatValor(tTranDesconto.Value, 2) else
      nfceDS.Campo('vDesc_W10').Value := '0.00';
    nfceDS.Campo('vII_W11').Value := '0.00'; //Valor Total do II
    nfceDS.Campo('vIPI_W12').Value := '0.00'; //Valor Total do IPI
    nfceDS.Campo('vPIS_W13').Value := '0.00'; //Valor do PIS
    nfceDS.Campo('vCOFINS_W14').Value := '0.00'; //Valor do COFINS
    nfceDS.Campo('vOutro_W15').Value := '0.00'; //Outras Despesas acessórias
    nfceDS.Campo('vNF_W16').Value := FormatValor(tTranTotLiq.Value+tTranFrete.Value, 2);
    nfceDS.Campo('vTotTrib_W16a').Value := FormatValor(vTotImp, 2);

{    if tTranFrete.Value > 0 then
      nfceDS.Campo('modFrete_X02').Value := '1' else
      nfceDS.Campo('modFrete_X02').Value := '9'; //Modalidade do frete: 0- Por conta do emitente; 1- Por conta do destinatário/remetente; 2- Por conta de terceiros; 9- Sem frete.}
end;

procedure DadosPagamento;
var 
  V, Cred   : Currency;
  TotEsp : Array[1..99] of Currency;
  T      : Byte;
  TemCard : Boolean;
begin
  tPagEsp.IndexName := 'ITranID';
  tPagEsp.SetRange([tTranID.Value], [tTranID.Value]);
  try
    Fillchar(TotEsp, SizeOf(TotEsp), 0);
    Cred := tTranCredito.Value;
    tPagEsp.First;
    TemCard := False;
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

      if (T in [3, 4]) then
        TemCard := True;
    
      TotEsp[T] := TotEsp[T] + V;
      tPagEsp.Next;
    end;
  
    TotEsp[5] := tTranDebito.Value + tTranCreditoUsado.Value;
    DebugMsg('TotEsp[5] = '+CurrencyToStr(TotEsp[5]));
  
    for T := 1 to 99 do 
    if TotEsp[T]>0.009 then begin
      nfceDS.IncluirPart('YA');
        nfceDS.Campo('tPag_YA02').Value := ZeroPad(IntToStr(T), 2);
        nfceDS.Campo('vPag_YA03').Value := FormatValor(TotEsp[T], 2);
        if (T in [3, 4]) and (FEsq>1) then 
          nfceDS.Campo('tpIntegra_YA04a').Value := '2';
      nfceDS.SalvarPart('YA');
      DebugMsg('DadosPagamento - T: '+IntToStr(T)+' - Valor: '+CurrencyToStr(TotEsp[T]));
    end;

  finally
    tPagEsp.CancelRange;
  end;  
end;

procedure Gera(aCont: Boolean);
var sLote: String;
begin
  DebugMsg('nfce_gerarxml - gera - 1 - aCont: '+BoolToStr(aCont));
  tTransp.Refresh;
  
  if (tTranTranspEnt.Value>0) and (not tTransp.FindKey([tTranTranspEnt.Value])) then
    raise Exception.Create('Transportadora/Entregador '+tTranTranspEnt.AsString+' não encontrado');
  
  nfceDS.LoteNFCe.Clear;
  nfceDS.Incluir;
    DadosDoNFCe;
    DadosDoEmitente;
    DadosDoDestinatario;
    AdicionaItens;
    DadosTransp;
    DadosTotalizadores;
    DadosPagamento;
    if aCont then begin
      nfceDS.Campo('dhCont_B28').Value := FormatDateTime('YYYY-mm-dd"T"HH:mm:ss',now) + TimeZoneStr;
      nfceDS.Campo('xJust_B29').Value := 'Sem internet ou sem comunicacao com SEFAZ';
      nfceDS.Campo('tpEmis_B22').Value := '9';  
    end;  
  nfceDS.Salvar;

  DebugMsg('nfce_gerarxml - gera - 2');
  
  if aCont then begin
    aChaveCont := Copy(nfceDS.Campo('Id_A03').AsString,4,44);
    DebugMsg('nfce_gerarxml - gera - 3 - idToken: '+nfceComp.DanfceSettings.IdTokenNFCE+' Token: '+nfceComp.DanfceSettings.TokenNFCe);
    sLote := nfceDS.LoteNFCe.GetText;
    DebugMsg('nfce_gerarxml - gera - XML: '+sLineBreak+sLote);
    tNFEXMLtransCont.Value := nfceComp.AssinarNota(sLote);
  end else begin
    aChaveNormal := Copy(nfceDS.Campo('Id_A03').AsString,4,44);
    DebugMsg('nfce_gerarxml - gera - 5 - idToken: '+nfceComp.DanfceSettings.IdTokenNFCE+' Token: '+nfceComp.DanfceSettings.TokenNFCe);
    sLote := nfceDS.LoteNFCe.GetText;
    DebugMsg('nfce_gerarxml - gera - 6 - XML: '+sLineBreak+sLote);
    tNFEXMLtrans.Value := nfceComp.AssinarNota(sLote);
  end;  

  DebugMsg('nfce_gerarxml - gera - 7');
end;


begin
  sl := TStringList.Create;

  try
    sl.Text := tTranExtra.Value;

    case VerEsquema of
      1 : begin
        nfceComp.VersaoManual := vm50a;
        _Dir := ExtractFilePath(ParamStr(0))+'NFCe\Templates\vm50a\Conversor\NFCeDataSets.xml';
        nfceDS.VersaoEsquema := pl_008d;
        DebugMsg('TdmNFCe_gerar.nfce_gerarxml - Formato antigo');      
      end;

      2 : begin
        nfceComp.VersaoManual := vm50b;
        _Dir := ExtractFilePath(ParamStr(0))+'NFCe\Templates\vm50b\Conversor\NFCeDataSets.xml';
        nfceDS.VersaoEsquema := pl_008g;
        ren_arq_cdata;
        DebugMsg('TdmNFCe_gerar.nfce_gerarxml - Novo formato');
      end;

      3 : begin
        nfceComp.VersaoManual := vm50b;
        _Dir := ExtractFilePath(ParamStr(0))+'NFCe\Templates\vm50b\Conversor\NFCeDataSets.xml';
        nfceDS.VersaoEsquema := pl_008h;
        ren_arq_cdata;
        DebugMsg('TdmNFCe_gerar.nfce_gerarxml - Novo formato');
      end;      
    end;  
    
    nfceDS.XMLDicionario := _Dir;
    nfceDS.LoteNFCe.Clear;

    Gera(False);
    Gera(True);

    if Contingencia then begin
      tNFEContingencia.Value := True;
      tNFEStatus.Value := nfestatus_contingencia;
      tNFEChave.Value := aChaveCont;
    end else begin
      tNFEStatus.Value := nfestatus_transmitir;   
      tNFEContingencia.Value := False;
      tNFEChave.Value := aChaveNormal;
    end;
    
  finally
    sl.Free;
  end;

end;

procedure TdmNFCe_gerar.OpenDB;
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

function TdmNFCe_gerar.ProcessaProxNF: Boolean;
begin
  try
    DebugMsg('TdmNFCe_gerar.processProxNF - 1');
    Result := False;
    try
      ExCfg := '';
      RefreshConfig;
    except
      on E: Exception do begin
        DebugMsg('TdmNFCe_gerar.processProxNF - 1.5 - '+E.ClassName+': '+E.Message);
        ExCfg := E.Message;
      end;
    end;
    DebugMsg('TdmNFCe_gerar.processProxNF - 2');
    if not tTran.FindKey([tiponfe_nfce, False, tNFConfigtpAmb.Value, nfetran_gerar]) then Exit;
    DebugMsg('TdmNFCe_gerar.processProxNF - 3');
    InitTran(nxDB, [tTran, tCli, tPagEsp, tNFE, tBRTrib, tNCM, tNFConfig, tProduto, tMovEst, tEspecie], True);
    try
      DebugMsg('TdmNFCe_gerar.processProxNF - 4');
      if tTranCliente.Value>0 then tCli.FindKey([tTranCliente.Value]);
      DebugMsg('TdmNFCe_gerar.processProxNF - 5');
      GerarNFE;
      DebugMsg('TdmNFCe_gerar.processProxNF - 6');
      nxDB.Commit;
      DebugMsg('TdmNFCe_gerar.processProxNF - 7 - Commit OK');
      Result := True;
    except
      on E: Exception do begin
        DebugMsgEsp('TdmNFCe_gerar.ProcessaProxNF 1 - '+E.ClassName+': '+E.Message, False, True);
        nxDB.Rollback;
      end;  
    end;
  except
    on E: Exception do 
      DebugEx(Self, 'ProcessaProxNF', E);
  end;
end;

function TdmNFCe_gerar.ProxNumNFCe: Cardinal;
var 
  C: Cardinal;
  aSerie: String;
begin
  DebugMsg('TdmNFCe_gerar.ProxNumNFCe');
  tAuxNFE.Active := True;
  tAuxNFE.IndexName := 'ITipoDoctpAmbModeloSerieNumero';
  aSerie := tNFConfigSerieNFCe.Value;
  tAuxNFE.SetRange([tiponfe_nfce, tNFConfigtpAmb.Value, '65', aSerie], [tiponfe_nfce, tNFConfigtpAmb.Value, '65', aSerie]);
  if tAuxNFE.IsEmpty then
    C := 0 
  else begin
    tAuxNFE.Last;
    C := tAuxNFE.FieldByName('Numero').AsLongWord;
  end;
      
  if (C<tNFConfigInicioNFCe.Value) then
    Result := tNFConfigInicioNFCe.Value 
  else begin
    tAuxNFE.Last;
    C := tAuxNFE.FieldByName('Numero').AsLongWord;
    Result := C + 1;
  end;
  
  if Result=0 then Result := 1;
  DebugMsg('TdmNFCe_gerar.ProxNumNFCe - '+IntToStr(Result));
end;

procedure TdmNFCe_gerar.ValidaXML;
var S: String;
begin
  if not StrToBool(slIni.Values['validaxml']) then Exit;
  
  if Contingencia then
    S := tNFEXMLtransCont.Value else
    S := tNFEXMLtrans.Value;

  try
    nfceComp.ValidarLoteParaEnvio('0001', S);
  except
    on E: Exception do begin
      DebugMsg('TdmNFCe_gerar.ValidaXML - ' + E.ClassName+': '+E.Message);
      raise exception.Create('Erro na validação do XML: '+E.Message);
    end;
  end;
end;

function TdmNFCe_gerar.VerEsquema: Byte;
var 
  sl: TStrings;
  S, sData : String;
  D : TDateTime;
  R: Byte;
  sUF: String;
  H : Boolean;

function strh(a: String): String;
begin
  if H then
    Result := sl.Values[sUF+'_'+a+'_homo'] else
    Result := sl.Values[sUF+'_'+a];
  Result := Trim(Result);    
end;

procedure LeEsq;
begin
  if H and (Trim(strh('esquema'))='') then H := False;
  
  R := StrToIntDef(strh('esquema'), 2);
  S := strh('novoesquema');
  sData := strh('novoesquema_data');

  if H and (S='') then begin
    H := False;
    S := strh('novoesquema');
    sData := strh('novoesquema_data');
  end;
    
  if (S>'') and (Length(sData)=8) then begin
    D := YMD_Date(sData);
    if Date>=D then
      R := StrToIntDef(S, 1);
  end;
end;
      
begin
  sUF := tNFConfigEnd_UF.Value;
  H := (tNFConfigtpAmb.Value=2);
  sl := TStringList.Create;
  try
    sl.Text := tNFConfigUrls_consulta.Value;
    LeEsq;
    Result := R;
  finally
    sl.Free;
  end;
  FEsq := Result;
end;

{ TncProcessaGerarNFCe }

constructor TncProcessaGerarNFCe.Create;
begin
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TncProcessaGerarNFCe.Execute;
var 
  dm : TdmNFCe_gerar;
  lastGerar, aNewGerar, NextMS : Cardinal;
begin
  DebugMsg('TncProcessaGerarNFCe.Execute - 1');
  Sleep(10);
  coInitialize(nil);
  try
    DebugMsg('TncProcessaGerarNFCe.Execute - 2');
    dm := TdmNFCe_gerar.Create(nil);
    try
      DebugMsg('TncProcessaGerarNFCe.Execute - 3');
      NextMS := 0;
      lastGerar := 0;
      dm.OpenDB;
      dm.tTran.IndexName := 'ITipoNFECanceladoAmbStatusNFE';
      while (not Terminated) and (not TerminarProcNFE) do begin
        try
          aNewGerar := GetGerarNFCe;
          if (aNewGerar<>lastGerar) or (GetTickCount>=NextMS) then begin
            lastGerar := aNewGerar;
            if dm.ProcessaProxNF then
              NextMS := 0 else
              NextMS := GetTickCount + 15000;
          end;
          Sleep(5);
        except
          on E: Exception do 
            DebugMsg('TncProcessaGerarNFCe.Execute - ' + E.ClassName+': '+E.Message);
        end;
      end;
    finally
      dm.Free;
    end;
  except
    on E: Exception do 
      DebugMsgEsp('TncProcessaCancelamentos.Execute - Exception: '+E.Message, False, True);
  end;
  CoUninitialize;
end;

end.
