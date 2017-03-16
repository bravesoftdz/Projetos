unit udmNFE_gerar;

interface

uses
  System.SysUtils, System.Classes, System.IniFiles, System.Contnrs,
  Data.DB, nxdb, nxllComponent, nxsdServerEngine,
  nxreRemoteServerEngine, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, madTools, Vcl.ExtCtrls, Windows, Messages,
  spdNFeType, ActiveX, DateUtils, spdNFeDataSets, spdNFe, ncTipoTran;

type

  TdmNFE_gerar = class(TDataModule)
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
    tProdutoPreco: TCurrencyField;
    tProdutoPrecoAuto: TBooleanField;
    tProdutoMargem: TFloatField;
    tProdutoImagem: TGraphicField;
    tProdutoFornecedor: TLongWordField;
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
    nfeComp: TspdNFe;
    nfeDS: TspdNFeDataSets;
    tNFConfigConfig_nfe: TnxMemoField;
    tNFConfigsat_modelo: TByteField;
    tNFConfigsat_config: TStringField;
    tNFConfignfe_permite_cred_icms: TBooleanField;
    tNFConfignfe_perc_cred_icms: TFloatField;
    tNFConfigDependNFEOk: TBooleanField;
    tNFConfigCodigoAtivacao: TStringField;
    tNFConfigAssociarSignAC: TBooleanField;
    tNFConfigtpAmbNFE: TByteField;
    tNFConfigModeloNFE_Email: TGuidField;
    tNFConfigObsFisco: TnxMemoField;
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
    tTranEntregar: TBooleanField;
    tTranendereco_entrega: TGuidField;
    tbrtrib_tipo: TnxTable;
    tbrtrib_tipoid_brtrib: TWordField;
    tbrtrib_tipocsosn: TLongWordField;
    tbrtrib_tipocfop: TLongWordField;
    tbrtrib_tipoobsfiscal: TWideMemoField;
    tbrtrib_tipoicms: TFloatField;
    tbrtrib_tipolocal: TByteField;
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
    tClilocal: TByteField;
    tCFOP: TnxTable;
    tCFOPCodigo: TWordField;
    tCFOPDescricao: TnxMemoField;
    tCFOPEntrada: TBooleanField;
    tCFOPTipo: TByteField;
    tCFOPNFCe: TBooleanField;
    tCFOPOrdem: TByteField;
    tCFOPCSOSN: TWordField;
    tbrtrib_tiponatop: TWideStringField;
    tAuxTran: TnxTable;
    tAuxTranUID: TGuidField;
    tAuxTranChaveNFE: TStringField;
    tbrtrib_tipotipo: TByteField;
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
    tNFConfignfe_venda: TBooleanField;
    tNFConfigtipodoc_padrao: TByteField;
    tCliNaoContribICMS: TBooleanField;
    tCliIsentoIE: TBooleanField;
    tBRTribNFE_CredIcms: TBooleanField;
    tCliConsumidor: TBooleanField;
    tNFConfigcontabilidade: TStringField;
    tProdutotax_id: TLongWordField;
    tProdutomodST: TByteField;
    tProdutoMVA: TnxMemoField;
    tProdutoPauta: TnxMemoField;
    tBRTribICMSSt: TnxMemoField;
    tNFConfigUsarPautaMaiorMVA: TBooleanField;
    tNFETotalNF: TCurrencyField;
    tTranVenDev: TBooleanField;
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
    tNFConfigsat_esq: TByteField;
    tNFConfigexigir_peso_vol: TBooleanField;
    tNFConfigenviar_peso_vol_def: TBooleanField;
    tNFConfigauto_calc_peso_def: TBooleanField;
    tProdutoPesoBruto: TFloatField;
    tProdutoPesoLiq: TFloatField;
    tCliInfoExtra: TWideStringField;
    tCliTranspEntPadrao: TLongWordField;
    tCliTranspEnt: TBooleanField;
    tCliTipoFor: TByteField;
    tTranTranspPesoVol: TByteField;
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
    tProdutoUID: TGuidField;
    tProdutoMarca: TGuidField;
    tProdutoCodigo: TWideStringField;
    tProdutoDescricao: TWideStringField;
    tProdutoUnid: TWideStringField;
    tProdutoObs: TWideMemoField;
    tProdutoAlteradoEm: TDateTimeField;
    tProdutoAlteradoPor: TStringField;
    tProdutoRecVer: TLongWordField;
    tProdutoCategoria: TWideStringField;
    tMovEstDadosFiscais: TnxMemoField;
    tNFConfignfe_pedido_na_obs: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure tCliCalcFields(DataSet: TDataSet);
  private
    _NumeroLote : String;
    _Dir        : String;
    serie       : String;
    slXML       : TStrings;
    slIcmsInter : TStrings;
    slMVA       : TStrings;
    slPauta     : TStrings;
    slRet       : TStrings;
    ExCfg       : String;
    vTotImp     : Currency;
    FlastConfig : Cardinal;
    FEsq        : Byte;
    FTipo       : TncTipoTran;
    slObs       : TStrings;
    slICMSSt    : TStrings;
    FPesoL : Double;
    FPesoB : Double;
    

    function Contingencia: Boolean;

    function CalcImp(var tNac, tEst, tMun: Currency): Currency;

    function VerEsquema: Byte;

    function IcmsInter: Byte;

    function ICMSSt: Double;

    function ProxNum: Cardinal;

    function MVA: Double;
    function Pauta: Currency;

    function Destacar_cred_icms: Boolean;

    function GetIndIEDest: Byte;

    function GetIndFinal: Byte;

    procedure ValidaXML;

    procedure AddObs(S: String);

    function ProcessaProxNF: Boolean;

    { Private declarations }
    procedure NFE_gerarxml;
    procedure NFE_criar;

    procedure OpenDB;
  public
    procedure GerarNFE;

    procedure RefreshConfig;
    { Public declarations }
  end;

  TncProcessaGerarNFe = class ( TThread  )
  protected 
    procedure Execute; override;
  public 
    constructor Create; 
  end; 
  
  function getXMLValue(aXML, aCampo: String; aCaminho: string = ''): String;

var
  dmNFE_gerar: TdmNFE_gerar;
  
  gProcessNFEWindow : Cardinal = 0;
  TerminarProcNFE : Boolean = False;
  gProcessaGerarNFe : TncProcessaGerarNFe = nil;
  
const
  cont_null   = 0;
  cont_off    = 1;
  cont_on     = 2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ncServBD, ncDebug, ncClassesBase, udmNFE_trans, ncMsgCom, math, ncEndereco;

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
  Result := DuasCasas(aValor * aImp / 100, 2);
end;

procedure TdmNFE_gerar.AddObs(S: String);
begin
  if copy(S, length(S), 1)=';' then Delete(S, Length(S), 1);
  if slObs.IndexOf(S)=-1 then slObs.Add(S);
end;

function TdmNFE_gerar.CalcImp(var tNac, tEst, tMun: Currency): Currency;
var V, N, E, M: Currency;
begin
  V := tMovEstTotLiq.Value;

  if tBRTribOrigem.Value in [1, 2, 6, 7] then 
    N := getImp(V, tNCMImpostoFed_Imp.Value) else
    N := getImp(V, tNCMImpostoFed_Nac.Value);
  tNac := tNac + N;
  M := getImp(V, tNCMImpostoMun.Value);
  tMun := tMun + M;
  E := getImp(V, tNCMImpostoEst.Value);
  tEst := tEst + E;
  Result := N + E + M;
end;


function CSOSN_ST(aCod: Word): Boolean;
begin
  Result := (aCod=201) and (aCod=202) and (aCod=203);
end;

function CST_ST(aCod: Word): Boolean;
begin
  Result := (aCod=30) and (aCod=60) and (aCod=70);
end;

function TdmNFE_gerar.Contingencia: Boolean;
begin
  Result := False;
{  tAuxNFE.IndexName := 'ItpAmbStatus';
  if gContingencia=cont_null then 
    if tAuxNFE.FindKey([tNFConfigtpAmbNFe.Value, nfestatus_contingencia]) then
      gContingencia := cont_on else
      gContingencia := cont_off;
  Result := (gContingencia=cont_on);    }
end;

procedure TdmNFE_gerar.DataModuleCreate(Sender: TObject);
begin
  FEsq := 1;
  slXML := TStringList.Create;
  slRet := TStringList.Create;
  slObs := TStringList.Create;
  slMVA := TStringList.Create;
  slPauta := TStringList.Create;
  slICMSSt := TStringList.Create;
  
  slIcmsInter := TStringList.Create;
  slObs.LineBreak := ';';
  FlastConfig := 0;
end;

function FormatValorCur(aValor: Extended): String;
var P: Integer;
begin
  Str(aValor:0:2, Result);
  P := Pos('.', Result);
  Result[P] := ',';
end;

procedure TdmNFE_gerar.DataModuleDestroy(Sender: TObject);
begin
  slXML.Free;
  slRet.Free;
  slObs.Free;
  slMVA.Free;
  slPauta.Free;
  slICMSSt.Free;
  slIcmsInter.Free;
end;

function TdmNFE_gerar.Destacar_cred_icms: Boolean;
begin
  Result := tNFConfignfe_permite_cred_icms.Value and 
            tBRTribNFE_CredIcms.Value and
            tCliPJuridica.Value and
            (not tCliNaoContribICMS.Value) and
            tCliNFE_CredIcms.Value and
            (tTranTipo.Value=trEstVenda) and
            (tBRTrib_TipoCSOSN.Value in [202, 102]);
end;

procedure TdmNFE_gerar.GerarNFE;
var
  P : PmsgNFEUpdated;
begin
  DebugMsg('GerarNFE 1');
  tNFE.Append;
  DebugMsg('GerarNFE 2');
  try
    
    NFE_criar;
    DebugMsg('GerarNFE 3');
    if ExCfg>'' then 
      raise Exception.Create(ExCfg);
    DebugMsg('GerarNFE 4');
    NFE_gerarxml;
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
  tTranTipoNFE.Value   := tiponfe_nfe;
  tTranStatusNFE.Value := tNFEStatus.Value;
  tTranChaveNFE.Value  := tNFEChave.Value;
  tTranAmbNFe.Value    := tNFEtpAmb.Value;
  if tTranTranspPesoVol.Value=peso_vol_auto then begin
    tTranTranspPesoL.Value := FPesoL;
    tTranTranspPesoB.Value := FPesoB;
  end;
  tTran.Post;

  New(P);
  P^.msgCCE := False;
  P^.msgUID := tTranUID.AsGuid;
  PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);
end;

function TdmNFE_gerar.GetIndFinal: Byte;
begin
  if (not tCliPJuridica.Value) or tCliConsumidor.Value or tCliNaoContribICMS.Value then
    Result := 1 else  //Indica operação com Consumidor final: 0- Não; 1- Consumidor final
    Result := 0;
end;

function TdmNFE_gerar.GetIndIEDest: Byte;
begin
  if tCliPJuridica.Value and (not tCliNaoContribICMS.Value) then begin
    if tCliIsentoIE.Value then
      Result := 2
    else begin
      if SoDig(tCliRG.Value)='' then 
        raise Exception.Create('É necessário preencher o campo Inscrição Estadual do cliente ou assinalar opção de Isento');
      Result := 1;
    end;
  end else 
    Result := 9;
end;

function TdmNFE_gerar.IcmsInter: Byte;
var S: String;
begin
  S := SoDig(slIcmsInter.Values[tNFConfigEnd_UF.Value+'-'+tCliUF.Value]);
  if S='' then
    S := SoDig(slIcmsInter.Values[tNFConfigEnd_UF.Value]);
  if S='' then S:='12';
  Result := StrToIntDef(S, 12);  
end;

function TdmNFE_gerar.ICMSSt: Double;
begin
  Result := StrParaFloat(slICMSST.Values[tCliUF.Value]);
end;

function TdmNFE_gerar.MVA: Double;
begin
  Result := StrParaFloat(slMVA.Values[tCliUF.Value]);
end;

procedure TdmNFE_gerar.RefreshConfig;
var 
  aNewConfig : Cardinal;
  S : String;
begin
  aNewConfig := getConfig_NFE;
  if aNewConfig=FlastConfig then Exit;

  tNFConfig.Active := True;
  tNFConfig.Refresh;
  FlastConfig := aNewConfig;

  try
    DebugMsg('TdmNFE_gerar.RefreshConfig 1');
    nfeComp.UF := tNFConfigEnd_UF.Value;
    nfeComp.CNPJ := SoDig(tNFConfigCNPJ.Value);
    S := ExtractFilePath(ParamStr(0));

    if FileExists(S+'nfe\icms_interestadual.ini') then
      slIcmsInter.LoadFromFile(S+'nfe\icms_interestadual.ini');
      
    nfeComp.DiretorioEsquemas := S+'nfe\Esquemas\';
    nfeComp.DiretorioTemplates := S+'nfe\Templates\';
    nfeComp.DiretorioLog := S+'nfe\Log';
    if FileExists(S+'nfe\nfeServidoresDes.ini') then
      nfeComp.ArquivoServidoresHom := S+'nfe\nfeServidoresDes.ini' else
      nfeComp.ArquivoServidoresHom := S+'nfe\nfeServidoresHom.ini';
    nfeComp.ArquivoServidoresProd := S+'nfe\nfeServidoresProd.ini';
    nfeComp.DiretorioXmlDestinatario := S+'nfe\XmlDestinatario\';
    nfeComp.DiretorioLogErro := S+'nfe\Erros\';
    nfeComp.DiretorioTemporario := S+'nfe\Temp\';
    nfeComp.ConexaoSegura := True;
    nfeComp.ValidarEsquemaAntesEnvio := True;

    DebugMsg('TdmNFE_gerar.RefreshConfig - S: '+S);
    
    nfeComp.VersaoManual := vm50a;
    S := ExtractFilePath(ParamStr(0))+'nfe\Templates\vm50a\Conversor\NFeDataSets.xml';
    nfeDS.XMLDicionario := S;
    
    if tNFConfigTipoCert.Value=tipocert_a1 then
      nfeComp.TipoCertificado := ckFile
    else begin
      nfeComp.TipoCertificado := ckSmartCard;
      nfeComp.PinCode := tNFConfigPinCert.Value;
    end;
      
    if tNFConfigtpAmbNFe.Value=2 then
      nfeComp.Ambiente := akHomologacao else
      nfeComp.Ambiente := akProducao;

    nfeComp.NomeCertificado.Text := tNFConfigCertificadoDig.Value;
  except  
    on E: Exception do
      raise Exception.Create('Erro na configuração para emissão de NFC-e: '+E.Message);
  end;
end;

procedure TdmNFE_gerar.tCliCalcFields(DataSet: TDataSet);
begin
  if tCliPais.IsNull or (tCliPais.Value='') or SameText(tCliPais.Value, 'BR') then begin
    if SameText(tCliUF.Value, tNFConfigENd_UF.Value) then
      tCliLocal.Value := 1 else
      tCliLocal.Value := 2;
  end else
    tCliLocal.Value := 3;
end;

procedure TdmNFE_gerar.NFE_criar;
begin
  tNFEModelo.Value := '55';
  tNFESerie.Value := tNFConfigSerieNFe.Value;
  tNFEtpAmb.Value := tNFConfigtpAmbNFe.Value;
  tNFENumero.Value := ProxNum;
  tNFEEntrada.Value := False;
  tNFETipoDoc.Value := tiponfe_nfe;
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

function TemST(aCSOSN: Word): Boolean;
begin
  Result := (aCSOSN=202) or (aCSOSN=201) or (aCSOSN=500);
end;

procedure TdmNFE_gerar.NFE_gerarxml;
var 
  S: String;
  sl : TStrings;
  FExtraEmail : Boolean;
  FExtraCPF : Boolean;
  aFreteOutros : Boolean;
  aChave: String;
  sXML : String;
  TotST, TotBCSt : Currency;
  
procedure DadosNFe;
var
  _NRNota : String;
begin
    FTipo := gListaTipoTran.PorTipo[tTranTipo.Value];
    if FTipo=nil then raise Exception.Create('Tipo de transação inesxistente: '+tTranTipo.AsString);

    nfeDS.campo('versao_A02').Value   := '3.10'; //Versão do leiaute
    nfeDS.Campo('cUF_B02').Value      := tNFConfigEnd_CodUF.AsString;
    nfeDS.Campo('cNF_B03').Value      := IntToStr(Random(99999999)); //Código Numérico que compõe a Chave de Acesso
    nfeDS.Campo('indPag_B05').Value   := '0'; //Indicador da forma de pagamento: 0 – pagamento à vista; 1 – pagamento à prazo; 2 - outros.
    nfeDS.Campo('mod_B06').Value      := '55'; //Modelo do Documento Fiscal
    nfeDS.Campo('serie_B07').Value    := '1';//tNFESerie.Value;

    nfeDS.Campo('nNF_B08').Value      := tNFENumero.AsString;
    nfeDS.Campo('dhEmi_B09').Value    := FormatDateTime('YYYY-mm-dd"T"HH:mm:ss', tNFEDataHora.Value) + TimeZoneStr; //Data e Hora de emissão do Documento Fiscal
    nfeDS.Campo('dhSaiEnt_B10').Value  := FormatDateTime('YYYY-mm-dd"T"HH:mm:ss', tNFEDataHora.Value) + TimeZoneStr;
    
    if FTipo.Entrada then
      nfeDS.Campo('tpNF_B11').Value     := '0' else
      nfeDS.Campo('tpNF_B11').Value     := '1';
      
    nfeDS.Campo('idDest_B11a').Value  := tCliLocal.AsString; //Identificador de local de destino da operação: 1- Operação interna; 2- Operação interestadual; 3- Operação com exterior.
    nfeDS.Campo('cMunFG_B12').Value   := tNFConfigEnd_CodMun.Value;
    nfeDS.Campo('tpImp_B21').Value    := '1';
    nfeDS.Campo('tpEmis_B22').Value   := '1';
    nfeDS.Campo('cDV_B23').Value      := ''; //Dígito Verificador da Chave de Acesso
    nfeDS.Campo('tpAmb_B24').Value    := tNFConfigtpAmbNFe.AsString;    
    if tTranTipo.Value=trEstDevolucao then begin
      nfeDS.Campo('finNFe_B25').Value   := '4';
      if sl.Values['ref_nfe']>'' then begin
        nfeDS.IncluirPart('nRef');
        nfeDS.Campo('refNFe_BA02').Value   := sl.Values['ref_nfe'];
        nfeDS.SalvarPart('nRef'); 
      end else
      if tAuxTran.FindKey([tTranUID_ref.AsString]) then begin
        nfeDS.IncluirPart('nRef');
        nfeDS.Campo('refNFe_BA02').Value   := tAuxTranChaveNFe.Value;
        nfeDS.SalvarPart('nRef'); 
      end;
    end else
      nfeDS.Campo('finNFe_B25').Value   := '1'; //Finalidade de emissão da NF-e: 1- NF-e normal/ 2-NF-e complementar / 3 – NF-e de ajuste.

    nfeDS.Campo('indFinal_B25a').Value   := getIndFinal.ToString;
      
    nfeDS.Campo('indPres_B25b').Value   := '1';
    nfeDS.Campo('procEmi_B26').Value  := '0';
    nfeDS.Campo('verProc_B27').Value  := '000'; //Versão do Processo de emissão da NF-e
end;

procedure DadosDoEmitente;
var sCont: String;
begin
  nfeDS.Campo('CNPJ_C02').Value     := SoDig(tNFConfigCNPJ.Value);
  nfeDS.Campo('xNome_C03').Value    := FmtNFe(tNFConfigRazaoSocial.Value);
  nfeDS.Campo('xFant_C04').Value    := fmtnfe(tNFConfigNomeFantasia.Value);
  nfeDS.Campo('xLgr_C06').Value     := fmtnfe(tNFConfigEnd_Logradouro.Value);
  nfeDS.Campo('xCpl_C08').Value     := fmtnfe(tNFConfigEnd_Complemento.Value);
  nfeDS.Campo('nro_C07').Value      := fmtnfe(tNFConfigEnd_Numero.Value);
  nfeDS.Campo('xBairro_C09').Value  := fmtnfe(tNFConfigEnd_Bairro.Value);
  nfeDS.Campo('cMun_C10').Value     := tNFConfigEnd_CodMun.Value;
  nfeDS.Campo('xMun_C11').Value     := fmtnfe(tNFConfigEnd_Municipio.Value);
  nfeDS.Campo('UF_C12').Value       := tNFConfigEnd_UF.Value;
  nfeDS.Campo('CEP_C13').Value      := SoDig(tNFConfigEnd_CEP.Value);
  nfeDS.Campo('cPais_C14').Value    := '1058'; //Código do País
  nfeDS.Campo('xPais_C15').Value    := 'BRASIL'; //Nome do País
  nfeDS.Campo('fone_C16').Value     := SoDig(tNFConfigTelefone.Value);
  nfeDS.Campo('IE_C17').Value       := SoDig(tNFConfigIE.Value);
  nfeDS.Campo('CRT_C21').Value      := tNFConfigCRT.AsString;

  sCont := SoDig(tNFConfigcontabilidade.Value);
  DebugMsg(Self, 'Contabilidade - sCont: '+sCont);
  if sCont>'' then begin
    if isCNPJ(sCont) then begin
      DebugMsg(Self, 'Contabilidade - é CNPJ');
      nfeDS.IncluirPart('autXML');
      nfeDS.Campo('CNPJ_GA02').Value   := sCont;
      nfeDS.SalvarPart('autXML');
    end else
    if isCPF(sCont) then begin
      DebugMsg(Self, 'Contabilidade - é CPF');
      nfeDS.IncluirPart('autXML');
      nfeDS.Campo('CPF_GA03').Value   := sCont;
      nfeDS.SalvarPart('autXML');     
    end else
      DebugMsg(Self, 'Contabilidade - Não é CPF nem CNPJ');
  end;
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
    if nfeComp.Ambiente <> akHomologacao then
    begin
      if (Length(SoDig(tCliCPF.Value))=11) or (Length(sl.Values['cpfnf'])=11) then 
        nfeDS.Campo('xNome_E04').Value := fmtnfe(tCliNome.Value) else
        nfeDS.Campo('xNome_E04').Value := '';
    end;    
    if (not FExtraEmail) and EmailValido(tCliEmail.Value) then begin 
      nfeDS.Campo('email_E19').Value := fmtNFE(tCliEmail.Value);
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
    nfeDS.Campo('email_E19').Value := fmtNFE(S);
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
    if nfeComp.Ambiente <> akHomologacao then begin
      nfeDS.Campo('CPF_E03').Value := SoDig(S);
      tNFECPF.Value := S;
    end;  
    FExtraCPF := True;
  end else 
    FExtraCPF := False;
end;

procedure DadosDoDestinatario;
begin
  nfeDS.Campo('CPF_E03').Value      := '';
  nfeDS.Campo('email_E19').Value    := fmtNFE(tCliEmail.Value);
  if emailValido(tCliEmail.Value) then
    tNFEEmail.Value := tCliEmail.Value;
  AddExtraEmail;    
  nfeDS.Campo('xNome_E04').Value    := tCliNome.Value;
  if nfeComp.Ambiente = akHomologacao then 
    nfeDS.Campo('xNome_E04').Value    := sAmbHomoCli;
  nfeDS.Campo('xLgr_E06').Value     := FmtNFe(tCliEndereco.Value);
  nfeDS.Campo('nro_E07').Value      := FmtNFe(tCliEnd_Numero.Value);
  nfeDS.Campo('xBairro_E09').Value  := FmtNfe(tCliBairro.Value);
  nfeDS.Campo('xCpl_E08').Value     := FmtNFe(tCliEndereco2.Value);
  nfeDS.Campo('cMun_E10').Value     := FmtNFe(tCliEnd_CodMun.Value);
  nfeDS.Campo('xMun_E11').Value     := FmtNFe(tCliCidade.Value);
{  nfeDS.Campo('cMun_E10').Value     := '';
  nfeDS.Campo('xMun_E11').Value     := '';}
  nfeDS.Campo('UF_E12').Value       := FmtNfe(tCliUF.Value);
  nfeDS.Campo('CEP_E13').Value      := FmtNfe(SoDig(tCliCEP.Value));
  nfeDS.Campo('cPais_E14').Value    := '1058';
  nfeDS.Campo('xPais_E15').Value    := 'BRASIL';

  nfeDS.Campo('indIEDest_E16a').Value := getIndIEDest.ToString;

  if tCliPJuridica.Value and (not tCliIsentoIE.Value) then
    nfeDS.Campo('IE_E17').Value := SoDig(tCliRG.Value);
  
  nfeDS.Campo('fone_E16').Value := FmtNfe(SoDig(tCliTelefone.Value));

  if tCliPJuridica.Value and (Length(SoDig(tCliCPF.Value))>12) then begin
    nfeDS.Campo('CNPJ_E02').Value := SoDig(tCliCPF.Value);
    tNFECPF.Value := SoDig(tCliCPF.Value);
  end else begin
    nfeDS.Campo('CPF_E03').Value := SoDig(tCliCPF.Value);
    tNFECPF.Value := SoDig(tCliCPF.Value);
  end;  
end;

procedure DadosEntrega;
var E : TncEndereco;
begin
  if (not tTranendereco_entrega.IsNull) and 
     (tTranendereco_entrega.Value <> tCliendereco_id.Value) and
     tEnd.FindKey([tTranendereco_entrega.Value]) then
  begin
    E := TncEndereco.Create;
    try
      E.LoadFromDataset(tEnd);
      
      if tCliPJuridica.Value and (Length(SoDig(tCliCPF.Value))>12) then begin
        nfeDS.Campo('CNPJ_G02').Value := ZeroPad(SoDig(tCliCPF.Value), 14);
        tNFECPF.Value := SoDig(tCliCPF.Value);
      end else begin
        nfeDS.Campo('CPF_G02a').Value := ZeroPad(SoDig(tCliCPF.Value), 11);
        tNFECPF.Value := SoDig(tCliCPF.Value);
      end; 
        
      nfeDs.Campo('xLgr_G03').Value    := FmtNFe(E.enEndereco);
      nfeDs.Campo('nro_G04').Value     := FmtNFe(E.enNumero);
      nfeDs.Campo('xCpl_G05').Value    := FmtNFe(E.enEndereco2);
      nfeDs.Campo('xBairro_G06').Value := FmtNFe(E.enBairro);
      nfeDs.Campo('cMun_G07').Value    := FmtNFe(E.enCodMun);
      nfeDs.Campo('xMun_G08').Value    := FmtNFe(E.enCidade);
      nfeDs.Campo('UF_G09').Value      := FmtNFe(E.enUF);
    finally
      E.Free;
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
  aItem, aCSOSN: Integer;
  vImp : currency;
  aCredICMS, aTCredICMS, tNac, tMun, tEst, aBCST, aICMSNorm, aFrete, aFreteItem, aFreteTotal : currency;
  Q : Extended;
  Achou : Boolean;
  anatop, anatop_500: String;
  slObsfiscal : TStringList;
begin
  anatop := '';
  anatop_500 := '';
  aItem := 0;
  vTotImp := 0;
  aCredICMS := 0;
  aTCredICMS := 0;
  TotST := 0;
  TotBCSt := 0;
  tNac := 0;
  tMun := 0;
  tEst := 0;
  aFreteTotal := 0;
  aFreteItem  := 0;
  FPesoL := 0;
  FPesoB := 0;
  tMovEst.IndexName := 'ITranItem';
  tMovEst.SetRange([tTranID.Value], [tTranID.Value]);
  slObsfiscal := TStringList.Create;
  try
    slObsfiscal.LineBreak := ';';
    tNCM.IndexName := 'INCM';
    tMovEst.First;
    while not tMovEst.Eof do begin
      tProduto.FindKey([tMovEstProduto.Value]);
      
      Achou := False;
      if tProdutobrtrib.IsNull then
        Achou := tBRTrib.FindKey([tNFConfigTrib_Padrao.Value]) else
        Achou := tBRTrib.FindKey([tProdutoBRTrib.Value]);

      if Achou then
        Achou := tbrtrib_tipo.FindKey([tTranTipo.Value, tBRTribID.Value, tClilocal.Value-1]);

      if not Achou then
        raise Exception.Create('É necessário configurar a tributação para o produto: '+tProdutoCodigo.Value+' '+tProdutoDescricao.Value);

      if tbrtrib_tipoCSOSN.Value=500 then begin
        if anatop_500='' then
          anatop_500 := tbrtrib_tiponatop.Value;
      end else begin
        if anatop='' then
          anatop := tbrtrib_tiponatop.Value;
      end;

      if Trim(tbrtrib_tipoobsfiscal.Value)>'' then
      if slObsfiscal.IndexOf(Trim(tBrTrib_TipoObsFiscal.Value))=-1 then
        slObsfiscal.Add(Trim(tBrTrib_TipoObsFiscal.Value));
      
      if tProdutoNCM.IsNull then
        tNCM.FindKey([tNFConfigNCM_Padrao.Value{, tNFConfigNCMEx_Padrao}]) else
        tNCM.FindKey([tProdutoNCM.Value, tProdutoNCM_Ex.Value]);

      slMVA.Text := tProdutoMVA.Value;
      slPauta.Text := tProdutoPauta.Value;  
      slICMSSt.Text := tBRTribICMSSt.Value;

      nfeDS.IncluirItem;
      Inc(aItem);
      DebugMsg('TdmNFe_gerar - Adiciona Itens: '+Codigo);
      nfeDS.Campo('cProd_I02').AsString := fmtnfe(Codigo);
      nfeDS.Campo('nItem_H02').Value    := IntToStr(aItem);
      if (Length(Codigo)=13) and EAN_OK(Codigo) then begin
        nfeDS.Campo('cEAN_I03').AsString := Codigo;
        nfeDS.Campo('cEANTrib_I12').AsString := Codigo;
      end;

      if (tClilocal.Value=2) and (getIndFinal=1) and (getIndIEDest=9) then begin
        nfeDS.Campo('vBCUFDest_NA03').Value    := FormatValor(tMovEstTotLiq.Value, 2);
        nfeDS.Campo('pFCPUFDest_NA05').Value := FormatValor(0, 2);
        nfeDS.Campo('pICMSUFDest_NA07').Value := FormatValor(0, 2);
        nfeDS.Campo('pICMSInter_NA09').Value := FormatValor(ICMSInter, 2);
        case YearOf(Date) of
          2016 : nfeDS.Campo('pICMSInterPart_NA11').Value := FormatValor(40, 2);
          2017 : nfeDS.Campo('pICMSInterPart_NA11').Value := FormatValor(60, 2);
          2018 : nfeDS.Campo('pICMSInterPart_NA11').Value := FormatValor(80, 2);
        else
          nfeDS.Campo('pICMSInterPart_NA11').Value := FormatValor(100, 2);
        end;
        nfeDS.Campo('vFCPUFDest_NA13').Value := FormatValor(0, 2);
        nfeDS.Campo('vICMSUFDest_NA15').Value := FormatValor(0, 2);
        nfeDS.Campo('vICMSUFRemet_NA17').Value := FormatValor(0, 2);
      end;
      
      if (aItem=1) and (nfeComp.Ambiente = akHomologacao) then 
        nfeDS.Campo('xProd_I04').Value    := sAmbHomoItem else
        nfeDS.Campo('xProd_I04').Value    := fmtnfe(tProdutoDescricao.Value);
                                   
      nfeDS.Campo('NCM_I05').Value      := tProdutoNCM.Value;

      if (FEsq>1) and (tProdutocest.Value>0) then 
        nfeDS.Campo('CEST_I05c').Value := ZeroPad(tProdutocest.AsString, 7);

      nfeDS.Campo('CFOP_I08').Value     := tbrtrib_tipoCFOP.AsString;

      if (tbrtrib_tipoCFOP.Value=6102) and tCliPJuridica.Value and tCliNaoContribICMS.Value then 
        nfeDS.Campo('CFOP_I08').Value := '6108';
      
      nfeDS.Campo('uCom_I09').Value     := fmtnfe(tProdutoUnid.Value);

      if (tMovEstTotal.Value>0) and (Frac(tMovEstQuant.Value)>0.00001) then
        Q := tMovEstTotal.Value/tMovEstUnitario.Value else
        Q := tMovEstQuant.Value;

      if tTranFrete.Value>0 then begin
        aFreteItem := DuasCasas(((tMovEstTotal.Value - tMovEstDesconto.Value) / tTranTotLiq.Value) * tTranFrete.Value, 2);
        if aFreteItem>0.009 then begin
          if aFreteOutros then
            nfeDS.Campo('vOutro_I17a').Value := FormatValor(aFreteItem, 2) else
            nfeDS.Campo('vFrete_I15').Value := FormatValor(aFreteItem, 2);
          aFreteTotal := aFreteTotal + aFreteItem;
        end;
      end;
        
      nfeDS.Campo('qCom_I10').Value     := FormatValor(Q, 4);
      nfeDS.Campo('vUnCom_I10a').Value  := FormatValor(tMovEstUnitario.Value, 4);
      nfeDS.Campo('vProd_I11').Value    := FormatValor(tMovEstTotal.Value, 2);
      nfeDS.Campo('uTrib_I13').Value    := Trim(tProdutoUnid.Value);
      nfeDS.Campo('qTrib_I14').Value    := FormatValor(Q, 4);
      nfeDS.Campo('vUnTrib_I14a').Value := FormatValor(tMovEstUnitario.Value, 4);
      if tMovEstDesconto.Value>=0.01 then
        nfeDS.Campo('vDesc_I17').Value    := FormatValor(tMovEstDesconto.Value, 2);
      nfeDS.Campo('indTot_I17b').Value  := '1'; //Indica se valor do Item (vProd) entra no valor total da NF-e (vProd)
  											//0 – o valor do item (vProd) não compõe o valor total da NF-e (vProd) 1 – o valor do item (vProd) compõe o valor total da NF-e (vProd)

    // ICMS
{    aDs.SetCampo('modBC_N13=0');        // Modalidade de determinação da Base de Cálculo - ver Manual
    aDs.SetCampo('vBC_N15=0.01');       // Valor da Base de Cálculo do ICMS
    aDs.SetCampo('pICMS_N16=7.00');     // Alíquota do ICMS em Percentual
    aDs.SetCampo('vICMS_N17=0.01');     // Valor do ICMS em Reais   }

      // PIS
      nfeDS.Campo('CST_Q06').Value := '99';         // Codigo de Situacao Tributária - ver opções no Manual
      nfeDS.Campo('vBC_Q07').Value := '0.00';       // Valor da Base de Cálculo do PIS
      nfeDS.Campo('pPIS_Q08').Value := '0.00';      // Alíquota em Percencual do PIS
      nfeDS.Campo('vPIS_Q09').Value := '0.00';      // Valor do PIS em Reais}
      // COFINS
      nfeDS.Campo('CST_S06').Value := '99';         // Código de Situacao Tributária - ver opções no Manual
      nfeDS.Campo('vBC_S07').Value := '0.00';       // Valor da Base de Cálculo do COFINS
      nfeDS.Campo('pCOFINS_S08').Value := '0.00';   // Alíquota do COFINS em Percentual
      nfeDS.Campo('vCOFINS_S11').Value := '0.00';   // Valor do COFINS em Reais}
                                 
      if tBRTribCFOP_nfce.Value=5656 then begin
        nfeDS.Campo('cProdANP_LA02').Value := '210203001';
        nfeDS.Campo('UFCons_LA06').Value := tNFConfigEnd_UF.Value;
  {       nfeDS.Campo('vAliqProd_LA09').Value := '6.0000';
         nfeDS.Campo('qBCProd_LA08').Value := FormatValor(tMovEstTotal.Value-tMovEstDesconto.Value, 4);
         nfeDS.Campo('vCIDE_LA10').Value := FormatValor(DuasCasas((tMovEstTotal.Value-tMovEstDesconto.Value)*0.06), 2);}
       
  {       nfeDS.Campo('cProdANP_LA02').Value := '210203001';
         nfeDS.Campo('pMixGN_LA03').Value := '12';
         nfeDS.Campo('CODIF_LA04').Value := '111111111111111111111';
         nfeDS.Campo('qTemp_LA05').Value := '30000.0000';
         nfeDS.Campo('UFCons_LA06').Value := tNFConfigEnd_UF.Value;
         nfeDS.Campo('qBCProd_LA08').Value := '20055.0000';
         nfeDS.Campo('vAliqProd_LA09').Value := '6.0000';
         nfeDS.Campo('vCIDE_LA10').Value = '1203.30';
         nfeDS.Campo('nBico_LA12').Value := '123';
         nfeDS.Campo('nBomba_LA13').Value := '321';
         nfeDS.Campo('nTanque_LA14').value := '111';
         nfeDS.Campo('vEncIni_LA15').Value := '123456789';
         nfeDS.Campo('vEncFin_LA16').Value := '987654321';}
      end;
  
      vImp := CalcImp(tNac, tEst, tMun);                                 
      vTotImp := vTotImp + vImp;
      nfeDS.Campo('vTotTrib_M02').Value := FormatValor(vImp, 2);

      if Self.Destacar_cred_icms then begin
        if tNFConfignfe_perc_cred_icms.Value<0.01 then
          raise Exception.Create('É necessário configurar o percentual de aproveitamento de crédito de ICMS nas configurações da NF-e');
        aCSOSN := tbrtrib_tipoCSOSN.Value-1;
        nfeDS.Campo('CSOSN_N12a').Value   := IntToStr(aCSOSN);
        aCredICMS := DuasCasas((tMovEstTotLiq.Value+aFreteItem) * (tNFConfignfe_perc_cred_icms.Value/100), 2);
        aTCredICMS := aTCredICMS + aCredICMS;
        nfeDS.Campo('pCredSN_N29').Value := FormatValor(tNFConfignfe_perc_cred_icms.Value, 4);
        nfeDS.Campo('vCredICMSSN_N30').Value := FormatValor(aCredICMS, 2);
      end else
        aCSOSN := tbrtrib_tipoCSOSN.Value;
        
      nfeDS.Campo('orig_N11').Value     := tBRTriborigem.AsString;
      
      if tNFConfigCRT.Value=3 then
        nfeDS.Campo('CST_N12').Value      := ZeroPad(tBRTribCST.AsString, 2) else
        nfeDS.Campo('CSOSN_N12a').Value   := IntToStr(aCSOSN);

      if CFOPTemSt(tbrtrib_tipocfop.Value) and CSOSNTemSt(aCSOSN) then begin
        DebugMsg(Self, 'Adiciona Itens - TEM ST');
        nfeDS.Campo('modBCST_N18').Value := tProdutomodST.AsString;
        aBCSt := DuasCasas((tMovEstTotLiq.Value+aFreteItem) + ((tMovEstTotLiq.Value+aFreteItem) * (MVA/100)), 2);
        if (tProdutomodST.Value=4) or ((aBCSt>Pauta) and tNFConfigUsarPautaMaiorMVA.Value)  then 
          nfeDS.Campo('pMVAST_N19').Value := FormatValor(MVA, 2)
        else begin
          aBCSt := Pauta;
          nfeDS.Campo('pMVAST_N19').Value := FormatValor(0, 2);
        end;
        TotBCSt := TotBCSt + aBCSt;
        DebugMsg(Self, 'Adiciona Itens - Base ST - '+FloatParaStr(aBCSt));
        nfeDS.Campo('vBCST_N21').Value := FormatValor(aBCSt, 2);
        nfeDS.Campo('pICMSST_N22').Value := FormatValor(ICMSSt, 2);
        aBCSt := DuasCasas((aBCSt * (ICMSSt/100)) - ((tMovEstTotLiq.Value+aFreteItem) * (tbrtribicms.Value/100)), 2);
        TotSt := TotSt + aBCSt;
        nfeDS.Campo('vICMSST_N23').Value := FormatValor(DuasCasas(aBCst, 2), 2);
        nfeDS.Campo('UFST_N24').Value := tCliUF.Value;
      end;        
      tMovEst.Next;

      if tMovEst.Eof and (aFreteTotal>0) and (aFreteTotal<>tTranFrete.Value) then begin
        aFreteItem := DuasCasas(aFreteItem + (tTranFrete.Value - aFreteTotal), 2);
        if aFreteItem>0.009 then
        if aFreteOutros then
          nfeDS.Campo('vOutro_I17a').Value := FormatValor(aFreteItem, 2) else
          nfeDS.Campo('vFrete_I15').Value := FormatValor(aFreteItem, 2);
      end;

      if tTranTranspPesoVol.Value=peso_vol_auto then begin
        if (tProdutoPesoLiq.Value<0.001) or (tProdutoPesoBruto.Value<0.001) then
          raise Exception.Create('Prencher informações de peso no cadastro do produto: '+tProdutoCodigo.Value+' - '+tProdutoDescricao.Value);
        FPesoL := FPesoL + tMovEstQuant.Value * tProdutoPesoLiq.Value;
        FPesoB := FPesoB + tMovEstQuant.Value * tProdutoPesoBruto.Value;
      end;

      nfeDS.SalvarItem;

    end;


    if anatop='' then
      nfeDS.Campo('natOp_B04').Value := anatop_500 else
      nfeDS.Campo('natOp_B04').Value := anatop;

    if aTCredICMS>=0.01 then begin
      AddObs('PERMITE O APROVEITAMENTO DO CREDITO DE ICMS NO VALOR DE R$ '+FormatValorCur(aTCredICMS));
      AddObs('CORRESPONDENTE A ALIQUOTA DE '+tNFConfignfe_perc_cred_icms.AsString+
             '%, NOS TERMOS DO ARTIGO 23 DA LC 123');
    end else   
      AddObs('NAO GERA DIREITO A CREDITO FISCAL DE ICMS, DE ISS E DE IPI');

    AddObs(slObsfiscal.Text);        

    if (tNac>0) or (tEst>0) or (tMun>0) then begin
      anatop := ''; 
      if tNac>0 then
        anatop := 'R$'+FormatValorCur(tNac)+' FED'; 
      if tEst>0 then begin
        if anatop > '' then
          anatop := anatop + ' /';
        anatop := anatop + 'R$'+FormatValorCur(tEst)+' EST';
      end;

      if tMun>0 then begin
        if anatop > '' then
          anatop := anatop + ' /';
        anatop := anatop + 'R$'+FormatValorCur(tMun)+' MUN';
      end;
      AddObs('TRIB APROX '+anatop+' /FONTE:IBPT');
    end;
  finally
    slObsfiscal.Free;
    tMovEst.CancelRange;  
  end; 
end;

procedure AdicionaItensDevFor;
var 
  aItem, aCSOSN: Integer;
  vImp : currency;
  aCredICMS, aTCredICMS, tNac, tMun, tEst, aBCST, aICMSNorm, aFrete, aFreteItem, aFreteTotal : currency;
  Q : Extended;
  Achou : Boolean;
  anatop, anatop_500: String;
  slObsfiscal : TStringList;
begin
  anatop := '';
  anatop_500 := '';
  aItem := 0;
  vTotImp := 0;
  aCredICMS := 0;
  aTCredICMS := 0;
  TotST := 0;
  TotBCSt := 0;
  tNac := 0;
  tMun := 0;
  tEst := 0;
  aFreteTotal := 0;
  aFreteItem  := 0;
  FPesoL := 0;
  FPesoB := 0;
  tMovEst.IndexName := 'ITranItem';
  tMovEst.SetRange([tTranID.Value], [tTranID.Value]);
  slObsfiscal := TStringList.Create;
  try
    slObsfiscal.LineBreak := ';';
    tNCM.IndexName := 'INCM';
    tMovEst.First;
    while not tMovEst.Eof do begin
      tProduto.FindKey([tMovEstProduto.Value]);
      
      Achou := False;
      if tProdutobrtrib.IsNull then
        Achou := tBRTrib.FindKey([tNFConfigTrib_Padrao.Value]) else
        Achou := tBRTrib.FindKey([tProdutoBRTrib.Value]);

      if Achou then
        Achou := tbrtrib_tipo.FindKey([tTranTipo.Value, tBRTribID.Value, tClilocal.Value-1]);

      if not Achou then
        raise Exception.Create('É necessário configurar a tributação para o produto: '+tProdutoCodigo.Value+' '+tProdutoDescricao.Value);

      if tbrtrib_tipoCSOSN.Value=500 then begin
        if anatop_500='' then
          anatop_500 := tbrtrib_tiponatop.Value;
      end else begin
        if anatop='' then
          anatop := tbrtrib_tiponatop.Value;
      end;

      if Trim(tbrtrib_tipoobsfiscal.Value)>'' then
      if slObsfiscal.IndexOf(Trim(tBrTrib_TipoObsFiscal.Value))=-1 then
        slObsfiscal.Add(Trim(tBrTrib_TipoObsFiscal.Value));
      
      if tProdutoNCM.IsNull then
        tNCM.FindKey([tNFConfigNCM_Padrao.Value{, tNFConfigNCMEx_Padrao}]) else
        tNCM.FindKey([tProdutoNCM.Value, tProdutoNCM_Ex.Value]);

      slMVA.Text := tProdutoMVA.Value;
      slPauta.Text := tProdutoPauta.Value;  
      slICMSSt.Text := tBRTribICMSSt.Value;

      nfeDS.IncluirItem;
      Inc(aItem);
      DebugMsg('TdmNFe_gerar - Adiciona Itens: '+Codigo);
      nfeDS.Campo('cProd_I02').AsString := fmtnfe(Codigo);
      nfeDS.Campo('nItem_H02').Value    := IntToStr(aItem);
      if (Length(Codigo)=13) and EAN_OK(Codigo) then begin
        nfeDS.Campo('cEAN_I03').AsString := Codigo;
        nfeDS.Campo('cEANTrib_I12').AsString := Codigo;
      end;

      if (tClilocal.Value=2) and (getIndFinal=1) and (getIndIEDest=9) then begin
        nfeDS.Campo('vBCUFDest_NA03').Value    := FormatValor(tMovEstTotLiq.Value, 2);
        nfeDS.Campo('pFCPUFDest_NA05').Value := FormatValor(0, 2);
        nfeDS.Campo('pICMSUFDest_NA07').Value := FormatValor(0, 2);
        nfeDS.Campo('pICMSInter_NA09').Value := FormatValor(ICMSInter, 2);
        case YearOf(Date) of
          2016 : nfeDS.Campo('pICMSInterPart_NA11').Value := FormatValor(40, 2);
          2017 : nfeDS.Campo('pICMSInterPart_NA11').Value := FormatValor(60, 2);
          2018 : nfeDS.Campo('pICMSInterPart_NA11').Value := FormatValor(80, 2);
        else
          nfeDS.Campo('pICMSInterPart_NA11').Value := FormatValor(100, 2);
        end;
        nfeDS.Campo('vFCPUFDest_NA13').Value := FormatValor(0, 2);
        nfeDS.Campo('vICMSUFDest_NA15').Value := FormatValor(0, 2);
        nfeDS.Campo('vICMSUFRemet_NA17').Value := FormatValor(0, 2);
      end;
      
      if (aItem=1) and (nfeComp.Ambiente = akHomologacao) then 
        nfeDS.Campo('xProd_I04').Value    := sAmbHomoItem else
        nfeDS.Campo('xProd_I04').Value    := fmtnfe(tProdutoDescricao.Value);
                                   
      nfeDS.Campo('NCM_I05').Value      := tProdutoNCM.Value;

      if (FEsq>1) and (tProdutocest.Value>0) then 
        nfeDS.Campo('CEST_I05c').Value := ZeroPad(tProdutocest.AsString, 7);

      nfeDS.Campo('CFOP_I08').Value     := tbrtrib_tipoCFOP.AsString;

      if (tbrtrib_tipoCFOP.Value=6102) and tCliPJuridica.Value and tCliNaoContribICMS.Value then 
        nfeDS.Campo('CFOP_I08').Value := '6108';
      
      nfeDS.Campo('uCom_I09').Value     := fmtnfe(tProdutoUnid.Value);

      if (tMovEstTotal.Value>0) and (Frac(tMovEstQuant.Value)>0.00001) then
        Q := tMovEstTotal.Value/tMovEstUnitario.Value else
        Q := tMovEstQuant.Value;

      if tTranFrete.Value>0 then begin
        aFreteItem := DuasCasas(((tMovEstTotal.Value - tMovEstDesconto.Value) / tTranTotLiq.Value) * tTranFrete.Value, 2);
        if aFreteItem>0.009 then begin
          if aFreteOutros then
            nfeDS.Campo('vOutro_I17a').Value := FormatValor(aFreteItem, 2) else
            nfeDS.Campo('vFrete_I15').Value := FormatValor(aFreteItem, 2);
          aFreteTotal := aFreteTotal + aFreteItem;
        end;
      end;
        
      nfeDS.Campo('qCom_I10').Value     := FormatValor(Q, 4);
      nfeDS.Campo('vUnCom_I10a').Value  := FormatValor(tMovEstUnitario.Value, 4);
      nfeDS.Campo('vProd_I11').Value    := FormatValor(tMovEstTotal.Value, 2);
      nfeDS.Campo('uTrib_I13').Value    := Trim(tProdutoUnid.Value);
      nfeDS.Campo('qTrib_I14').Value    := FormatValor(Q, 4);
      nfeDS.Campo('vUnTrib_I14a').Value := FormatValor(tMovEstUnitario.Value, 4);
      if tMovEstDesconto.Value>=0.01 then
        nfeDS.Campo('vDesc_I17').Value    := FormatValor(tMovEstDesconto.Value, 2);
      nfeDS.Campo('indTot_I17b').Value  := '1'; //Indica se valor do Item (vProd) entra no valor total da NF-e (vProd)
  											//0 – o valor do item (vProd) não compõe o valor total da NF-e (vProd) 1 – o valor do item (vProd) compõe o valor total da NF-e (vProd)

    // ICMS
{    aDs.SetCampo('modBC_N13=0');        // Modalidade de determinação da Base de Cálculo - ver Manual
    aDs.SetCampo('vBC_N15=0.01');       // Valor da Base de Cálculo do ICMS
    aDs.SetCampo('pICMS_N16=7.00');     // Alíquota do ICMS em Percentual
    aDs.SetCampo('vICMS_N17=0.01');     // Valor do ICMS em Reais   }

      // PIS
      nfeDS.Campo('CST_Q06').Value := '99';         // Codigo de Situacao Tributária - ver opções no Manual
      nfeDS.Campo('vBC_Q07').Value := '0.00';       // Valor da Base de Cálculo do PIS
      nfeDS.Campo('pPIS_Q08').Value := '0.00';      // Alíquota em Percencual do PIS
      nfeDS.Campo('vPIS_Q09').Value := '0.00';      // Valor do PIS em Reais}
      // COFINS
      nfeDS.Campo('CST_S06').Value := '99';         // Código de Situacao Tributária - ver opções no Manual
      nfeDS.Campo('vBC_S07').Value := '0.00';       // Valor da Base de Cálculo do COFINS
      nfeDS.Campo('pCOFINS_S08').Value := '0.00';   // Alíquota do COFINS em Percentual
      nfeDS.Campo('vCOFINS_S11').Value := '0.00';   // Valor do COFINS em Reais}
                                 
      if tBRTribCFOP_nfce.Value=5656 then begin
        nfeDS.Campo('cProdANP_LA02').Value := '210203001';
        nfeDS.Campo('UFCons_LA06').Value := tNFConfigEnd_UF.Value;
  {       nfeDS.Campo('vAliqProd_LA09').Value := '6.0000';
         nfeDS.Campo('qBCProd_LA08').Value := FormatValor(tMovEstTotal.Value-tMovEstDesconto.Value, 4);
         nfeDS.Campo('vCIDE_LA10').Value := FormatValor(DuasCasas((tMovEstTotal.Value-tMovEstDesconto.Value)*0.06), 2);}
       
  {       nfeDS.Campo('cProdANP_LA02').Value := '210203001';
         nfeDS.Campo('pMixGN_LA03').Value := '12';
         nfeDS.Campo('CODIF_LA04').Value := '111111111111111111111';
         nfeDS.Campo('qTemp_LA05').Value := '30000.0000';
         nfeDS.Campo('UFCons_LA06').Value := tNFConfigEnd_UF.Value;
         nfeDS.Campo('qBCProd_LA08').Value := '20055.0000';
         nfeDS.Campo('vAliqProd_LA09').Value := '6.0000';
         nfeDS.Campo('vCIDE_LA10').Value = '1203.30';
         nfeDS.Campo('nBico_LA12').Value := '123';
         nfeDS.Campo('nBomba_LA13').Value := '321';
         nfeDS.Campo('nTanque_LA14').value := '111';
         nfeDS.Campo('vEncIni_LA15').Value := '123456789';
         nfeDS.Campo('vEncFin_LA16').Value := '987654321';}
      end;
  
      vImp := CalcImp(tNac, tEst, tMun);                                 
      vTotImp := vTotImp + vImp;
      nfeDS.Campo('vTotTrib_M02').Value := FormatValor(vImp, 2);

      if Self.Destacar_cred_icms then begin
        if tNFConfignfe_perc_cred_icms.Value<0.01 then
          raise Exception.Create('É necessário configurar o percentual de aproveitamento de crédito de ICMS nas configurações da NF-e');
        aCSOSN := tbrtrib_tipoCSOSN.Value-1;
        nfeDS.Campo('CSOSN_N12a').Value   := IntToStr(aCSOSN);
        aCredICMS := DuasCasas((tMovEstTotLiq.Value+aFreteItem) * (tNFConfignfe_perc_cred_icms.Value/100), 2);
        aTCredICMS := aTCredICMS + aCredICMS;
        nfeDS.Campo('pCredSN_N29').Value := FormatValor(tNFConfignfe_perc_cred_icms.Value, 4);
        nfeDS.Campo('vCredICMSSN_N30').Value := FormatValor(aCredICMS, 2);
      end else
        aCSOSN := tbrtrib_tipoCSOSN.Value;
        
      nfeDS.Campo('orig_N11').Value     := tBRTriborigem.AsString;
      
      if tNFConfigCRT.Value=3 then
        nfeDS.Campo('CST_N12').Value      := ZeroPad(tBRTribCST.AsString, 2) else
        nfeDS.Campo('CSOSN_N12a').Value   := IntToStr(aCSOSN);

      if CFOPTemSt(tbrtrib_tipocfop.Value) and CSOSNTemSt(aCSOSN) then begin
        DebugMsg(Self, 'Adiciona Itens - TEM ST');
        nfeDS.Campo('modBCST_N18').Value := tProdutomodST.AsString;
        aBCSt := DuasCasas((tMovEstTotLiq.Value+aFreteItem) + ((tMovEstTotLiq.Value+aFreteItem) * (MVA/100)), 2);
        if (tProdutomodST.Value=4) or ((aBCSt>Pauta) and tNFConfigUsarPautaMaiorMVA.Value)  then 
          nfeDS.Campo('pMVAST_N19').Value := FormatValor(MVA, 2)
        else begin
          aBCSt := Pauta;
          nfeDS.Campo('pMVAST_N19').Value := FormatValor(0, 2);
        end;
        TotBCSt := TotBCSt + aBCSt;
        DebugMsg(Self, 'Adiciona Itens - Base ST - '+FloatParaStr(aBCSt));
        nfeDS.Campo('vBCST_N21').Value := FormatValor(aBCSt, 2);
        nfeDS.Campo('pICMSST_N22').Value := FormatValor(ICMSSt, 2);
        aBCSt := DuasCasas((aBCSt * (ICMSSt/100)) - ((tMovEstTotLiq.Value+aFreteItem) * (tbrtribicms.Value/100)), 2);
        TotSt := TotSt + aBCSt;
        nfeDS.Campo('vICMSST_N23').Value := FormatValor(DuasCasas(aBCst, 2), 2);
        nfeDS.Campo('UFST_N24').Value := tCliUF.Value;
      end;        
      tMovEst.Next;

      if tMovEst.Eof and (aFreteTotal>0) and (aFreteTotal<>tTranFrete.Value) then begin
        aFreteItem := DuasCasas(aFreteItem + (tTranFrete.Value - aFreteTotal), 2);
        if aFreteItem>0.009 then
        if aFreteOutros then
          nfeDS.Campo('vOutro_I17a').Value := FormatValor(aFreteItem, 2) else
          nfeDS.Campo('vFrete_I15').Value := FormatValor(aFreteItem, 2);
      end;

      if tTranTranspPesoVol.Value=peso_vol_auto then begin
        if (tProdutoPesoLiq.Value<0.001) or (tProdutoPesoBruto.Value<0.001) then
          raise Exception.Create('Prencher informações de peso no cadastro do produto: '+tProdutoCodigo.Value+' - '+tProdutoDescricao.Value);
        FPesoL := FPesoL + tMovEstQuant.Value * tProdutoPesoLiq.Value;
        FPesoB := FPesoB + tMovEstQuant.Value * tProdutoPesoBruto.Value;
      end;

      nfeDS.SalvarItem;

    end;


    if anatop='' then
      nfeDS.Campo('natOp_B04').Value := anatop_500 else
      nfeDS.Campo('natOp_B04').Value := anatop;

    if aTCredICMS>=0.01 then begin
      AddObs('PERMITE O APROVEITAMENTO DO CREDITO DE ICMS NO VALOR DE R$ '+FormatValorCur(aTCredICMS));
      AddObs('CORRESPONDENTE A ALIQUOTA DE '+tNFConfignfe_perc_cred_icms.AsString+
             '%, NOS TERMOS DO ARTIGO 23 DA LC 123');
    end else   
      AddObs('NAO GERA DIREITO A CREDITO FISCAL DE ICMS, DE ISS E DE IPI');

    AddObs(slObsfiscal.Text);        

    if (tNac>0) or (tEst>0) or (tMun>0) then begin
      anatop := ''; 
      if tNac>0 then
        anatop := 'R$'+FormatValorCur(tNac)+' FED'; 
      if tEst>0 then begin
        if anatop > '' then
          anatop := anatop + ' /';
        anatop := anatop + 'R$'+FormatValorCur(tEst)+' EST';
      end;

      if tMun>0 then begin
        if anatop > '' then
          anatop := anatop + ' /';
        anatop := anatop + 'R$'+FormatValorCur(tMun)+' MUN';
      end;
      AddObs('TRIB APROX '+anatop+' /FONTE:IBPT');
    end;
  finally
    slObsfiscal.Free;
    tMovEst.CancelRange;  
  end; 
end;


procedure DadosTransp;
var sEnd, sFrete: String;

procedure AddEnd(aStr: String);
begin
  aStr := Trim(aStr);
  if aStr='' then Exit;
  if sEnd>'' then sEnd := sEnd + ' ';
  sEnd := sEnd + aStr;
end;

begin
  if aFreteOutros then 
    nfeDS.Campo('modFrete_X02').Value := '9' 
  else
  if GetValueFromStr(tTranExtra.Value, 'modFrete')='1' then
    nfeDS.Campo('modFrete_X02').Value := '1' 
  else
  if GetValueFromStr(tTranExtra.Value, 'modFrete')='2' then
    nfeDS.Campo('modFrete_X02').Value := '2' 
  else
    nfeDS.Campo('modFrete_X02').Value := '0';

  if (not aFreteOutros) and (tTranTranspEnt.Value>0) then begin
    if Length(SoDig(tTranspCPF.Value))=11 then
      nfeDS.Campo('CPF_X05').Value := SoDig(tTranspCPF.Value) else
      nfeDS.Campo('CNPJ_X04').Value := SoDig(tTranspCPF.Value);
  
    nfeDS.Campo('xNome_X06').Value := FmtNFE(tTranspNome.Value);

    if Trim(tTranspRG.Value)>'' then
      nfeDS.Campo('IE_X07').Value := SoDig(tTranspRG.Value);

    sEnd := '';
    AddEnd(tTranspEndereco.Value);
    AddEnd(tTranspEnd_Numero.Value);
    AddEnd(tTranspEndereco2.Value);
    if sEnd>'' then begin
      nfeDS.Campo('xEnder_X08').Value := FmtNFE(sEnd);
      nfeDS.Campo('xMun_X09').Value := FmtNFE(tTranspCidade.Value);
      nfeDS.Campo('UF_X10').Value := FmtNFE(tTranspUF.Value);
    end;
  end;  

  if tTranTranspPesoVol.Value in [peso_vol_auto, peso_vol_manual] then begin
    nfeDS.IncluirPart('VOL');
    nfeDS.Campo('qVol_X27').Value := tTranTranspVol.AsString;
    if tTranTranspPesoVol.Value=peso_vol_auto then begin
      nfeDS.Campo('pesoL_X31').Value := FormatValor(FPesoL, 3);
      nfeDS.Campo('pesoB_X32').Value := FormatValor(FPesoB, 3);
    end else begin
      nfeDS.Campo('pesoL_X31').Value := FormatValor(tTranTranspPesoL.Value, 3);
      nfeDS.Campo('pesoB_X32').Value := FormatValor(tTranTranspPesoB.Value, 3);
    end;
    nfeDS.SalvarPart('VOL');
  end;
end;

Procedure DadosTotalizadores;
var S: String;
begin
    if (Trim(tTranObs.Value)>'') and (GetValueFromStr(tTranExtra.Value, 'obsnf')='1') then
      AddObs(ObsToInfCpl(tTranObs.Value));

    nfeDS.Campo('infCpl_Z03').Value := FmtNFe(slObs.Text);
    
    nfeDS.Campo('vBC_W03').Value := '0.00';
    nfeDS.Campo('vICMS_W04').Value := '0.00';
    nfeDS.Campo('vICMSDeson_W04a').Value := '0.00';
    nfeDS.Campo('vBCST_W05').Value := FormatValor(TotBCSt, 2);
    nfeDS.Campo('vST_W06').Value := FormatValor(TotSt, 2);
    nfeDS.Campo('vProd_W07').Value := FormatValor(tTranTotal.Value, 2);
    nfeDS.Campo('vSeg_W09').Value := '0.00'; //Valor Total do Seguro
    if tTranDesconto.Value>=0.01 then
      nfeDS.Campo('vDesc_W10').Value := FormatValor(tTranDesconto.Value, 2) else
      nfeDS.Campo('vDesc_W10').Value := '0.00';
    nfeDS.Campo('vII_W11').Value := '0.00'; //Valor Total do II
    nfeDS.Campo('vIPI_W12').Value := '0.00'; //Valor Total do IPI
    nfeDS.Campo('vPIS_W13').Value := '0.00'; //Valor do PIS
    nfeDS.Campo('vCOFINS_W14').Value := '0.00'; //Valor do COFINS

    if tTranFrete.Value>0 then begin
      if aFreteOutros then begin
        nfeDS.Campo('vFrete_W08').Value := '0.00'; //Valor Total do Frete
        nfeDS.Campo('vOutro_W15').Value := FormatValor(tTranFrete.Value, 2); //Outras Despesas acessórias
      end else begin
        nfeDS.Campo('vFrete_W08').Value := FormatValor(tTranFrete.Value, 2); //Valor Total do Frete
        nfeDS.Campo('vOutro_W15').Value := '0.00'; //Outras Despesas acessórias
      end;
    end else begin
      nfeDS.Campo('vFrete_W08').Value := '0.00'; //Valor Total do Frete
      nfeDS.Campo('vOutro_W15').Value := '0.00'; //Outras Despesas acessórias
    end;  
    nfeDS.Campo('vNF_W16').Value := FormatValor(tTranTotLiq.Value+TotSt+tTranFrete.Value, 2);
    tNFETotalNF.Value := tTranTotLiq.Value + TotSt + tTranFrete.Value;
    nfeDS.Campo('vTotTrib_W16a').Value := FormatValor(vTotImp, 2);
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
      nfeDS.IncluirPart('YA');
        nfeDS.Campo('tPag_YA02').Value := ZeroPad(IntToStr(T), 2);
        nfeDS.Campo('vPag_YA03').Value := FormatValor(TotEsp[T], 2);
        if (T in [3, 4]) and (FEsq>1) then 
          nfeDS.Campo('tpIntegra_YA04a').Value := '2';
      nfeDS.SalvarPart('YA');
      DebugMsg('DadosPagamento - T: '+IntToStr(T)+' - Valor: '+CurrencyToStr(TotEsp[T]));
    end;

  finally
    tPagEsp.CancelRange;
  end;  
end;

procedure Gera;
var sLote: String;
begin
  slObs.Text := '';
  if tNFConfignfe_pedido_na_obs.Value then
    AddObs('PEDIDO: '+tTranID.AsString);
  AddObs('DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL');
  DebugMsg('NFE_gerarxml - gera - 1');

  tTransp.Refresh;

  aFreteOutros := (not tTranEntregar.Value) or (GetValueFromStr(tTranExtra.Value, 'modFrete')='9');

  if tTranEntregar.Value and (tTranTranspEnt.Value>0) then begin
    if not tTransp.FindKey([tTranTranspEnt.Value]) then
      raise Exception.Create('Transportadora não encontrada!');
    if tTranspTipoFor.Value<>tipofor_transp then
      aFreteOutros := True;  
  end;

{  aFreteOutros := not (
                  tTranEntregar.Value and
                  (tTranTranspEnt.Value>0) and 
                  tTransp.FindKey([tTranTranspEnt.Value]) and 
                  (tTranspTipoFor.Value=tipofor_transp));}

  nfeDS.LoteNFe.Clear;
  nfeDS.Incluir;
    DadosNFe;
    DadosDoEmitente;
    DadosDoDestinatario;
    DadosEntrega;
    if tTranTipo.Value=trEstDevFor then
      AdicionaItensDevFor else  
      AdicionaItens;
    DadosTransp;
    DadosTotalizadores;
//    DadosPagamento;
  nfeDS.Salvar;

  DebugMsg('NFE_gerarxml - gera - 2');
  
  aChave := Copy(nfeDS.Campo('Id_A03').AsString,4,44);
  DebugMsg('NFE_gerarxml - gera - 3 - Chave: '+aChave);
  sLote := nfeDS.LoteNFE.GetText;
  DebugMsg('NFE_gerarxml - gera - 4 - XML: '+sLineBreak+sLote);
  tNFEXMLtrans.Value := nfeComp.AssinarNota(sLote);

  DebugMsg('NFE_gerarxml - gera - 5');
end;


begin
  sl := TStringList.Create;

  try
    sl.Text := tTranExtra.Value;

    case VerEsquema of
      1 : begin
        nfeComp.VersaoManual := vm50a;
        _Dir := ExtractFilePath(ParamStr(0))+'nfe\Templates\vm50a\Conversor\NFeDataSets.xml';
        nfeDS.VersaoEsquema := pl_008i1;
        DebugMsg('TdmNFE_gerar.NFE_gerarxml - Esquema 1');      
      end;
      2 : begin
        nfeComp.VersaoManual := vm50a;
        _Dir := ExtractFilePath(ParamStr(0))+'nfe\Templates\vm50a\Conversor\NFeDataSets.xml';
        nfeDS.VersaoEsquema := pl_008i1;
        DebugMsg('TdmNFE_gerar.NFE_gerarxml - Esquema 2');      
      end;      
    end;  
    
    nfeDS.XMLDicionario := _Dir;
    nfeDS.LoteNFE.Clear;

    Gera;
    
    tNFEStatus.Value := nfestatus_transmitir;   
    tNFEContingencia.Value := False;
    tNFEChave.Value := aChave;
    
  finally
    sl.Free;
  end;

end;

procedure TdmNFE_gerar.OpenDB;
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

function TdmNFE_gerar.Pauta: Currency;
begin
  Result := StrParaFloat(slPauta.Values[tCliUF.Value]);
end;

function TdmNFE_gerar.ProcessaProxNF: Boolean;
begin
  try
    DebugMsg('TdmNFE_gerar.processProxNF - 1');
    Result := False;
    try
      ExCfg := '';
      RefreshConfig;
    except
      on E: Exception do begin
        DebugMsg('TdmNFE_gerar.processProxNF - 1.5 - '+E.ClassName+': '+E.Message);
        ExCfg := E.Message;
      end;
    end;
    DebugMsg('TdmNFE_gerar.processProxNF - 2');
    if not tTran.FindKey([tiponfe_nfe, False, tNFConfigtpAmbNFe.Value, nfetran_gerar]) then Exit;
    DebugMsg('TdmNFE_gerar.processProxNF - 3');
    InitTran(nxDB, [tTran, tCli, tPagEsp, tNFE, tBRTrib, tNCM, tNFConfig, tProduto, tMovEst, tEspecie], True);
    try
      DebugMsg('TdmNFE_gerar.processProxNF - 4');
      if tTranCliente.Value>0 then tCli.FindKey([tTranCliente.Value]);
      DebugMsg('TdmNFE_gerar.processProxNF - 5');
      GerarNFE;
      DebugMsg('TdmNFE_gerar.processProxNF - 6');
      nxDB.Commit;
      DebugMsg('TdmNFE_gerar.processProxNF - 7 - Commit OK');
      Result := True;
    except
      on E: Exception do begin
        DebugMsgEsp('TdmNFE_gerar.ProcessaProxNF 1 - '+E.ClassName+': '+E.Message, False, True);
        nxDB.Rollback;
      end;  
    end;
  except
    on E: Exception do 
      DebugMsgEsp('TdmNFE_gerar.ProcessaProxNF 2 - '+E.ClassName+': '+E.Message, False, True);
  end;
end;

function TdmNFE_gerar.ProxNum: Cardinal;
var 
  C: Cardinal;
  aSerie: String;
begin
  DebugMsg('TdmNFE_gerar.ProxNum');
  tAuxNFE.Active := True;
  tAuxNFE.IndexName := 'ITipoDoctpAmbModeloSerieNumero';
  aSerie := tNFConfigSerieNFe.Value;
  tAuxNFE.SetRange([tiponfe_nfe, tNFConfigtpAmbNFe.Value, '55', aSerie], 
                   [tiponfe_nfe, tNFConfigtpAmbNFe.Value, '55', aSerie]);
  if tAuxNFE.IsEmpty then
    C := 0 
  else begin
    tAuxNFE.Last;
    C := tAuxNFE.FieldByName('Numero').AsLongWord;
  end;
      
  if (C<tNFConfigInicioNFe.Value) then
    Result := tNFConfigInicioNFe.Value 
  else begin
    tAuxNFE.Last;
    C := tAuxNFE.FieldByName('Numero').AsLongWord;
    Result := C + 1;
  end;
  
  if Result=0 then Result := 1;
  DebugMsg('TdmNFE_gerar.ProxNum - '+IntToStr(Result));
end;

procedure TdmNFE_gerar.ValidaXML;
var S: String;
begin
  if not StrToBool(slIni.Values['validaxml']) then Exit;
  
  S := tNFEXMLtrans.Value;

  try
    nfeComp.ValidarLoteParaEnvio('0001', S);
  except
    on E: Exception do begin
      DebugMsg('TdmNFE_gerar.ValidaXML - ' + E.ClassName+': '+E.Message);
      raise exception.Create('Erro na validação do XML: '+E.Message);
    end;
  end;
end;

function TdmNFe_gerar.VerEsquema: Byte;
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
  
  R := StrToIntDef(strh('esquema'), 1);
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
  H := (tNFConfigtpAmbNFe.Value=2);
  sl := TStringList.Create;
  try
{    sl.Text := tNFConfigConfig_NFE.Value;
    LeEsq;}
    if H then
      R := 2 else
      R := 1;
    Result := 2;//R;
  finally
    sl.Free;
  end;
  FEsq := Result;
end;


{function TdmNFE_gerar.VerEsquema: Byte;
var 
  sl: TStrings;
  S, sData : String;
  D : TDateTime;

function GetslValue(aCampo: String): String;
begin  
  Result := Trim(sl.Values[tNFConfigEnd_UF.Value+'_'+aCampo]);
  if Result='' then
    Result := sl.Values[aCampo];
end;

begin
  sl := TStringList.Create;
  try
    sl.Text := tNFConfigConfig_NFE.Value;
    Result := StrToIntDef(GetslValue('esquema'), 1);
    S := GetslValue('novoesquema');
    sData := GetslValue('novoesquema_data');
    
    if (S>'') and (Length(sData)=8) then begin
      D := YMD_Date(sData);
      if Date>=D then
        Result := StrToIntDef(S, 1); 
    end;
  finally
    sl.Free;
  end;
  FEsq := Result;
end; }

{ TncProcessaGerarNFe }

constructor TncProcessaGerarNFe.Create;
begin
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TncProcessaGerarNFe.Execute;
var 
  dm : TdmNFE_gerar;
  lastGerar, aNewGerar, NextMS : Cardinal;
begin
  DebugMsg('TncProcessaGerarNFe.Execute - 1');
  Sleep(10);
  coInitialize(nil);
  try
    DebugMsg('TncProcessaGerarNFe.Execute - 2');
    dm := TdmNFE_gerar.Create(nil);
    try
      DebugMsg('TncProcessaGerarNFe.Execute - 3');
      NextMS := 0;
      lastGerar := 0;
      dm.OpenDB;
      dm.tTran.IndexName := 'ITipoNFECanceladoAmbStatusNFE';
      while (not Terminated) and (not TerminarProcNFE) do begin
        try
          aNewGerar := GetGerar_NFe;
          if (aNewGerar<>lastGerar) or (GetTickCount>=NextMS) then begin
            lastGerar := aNewGerar;
            if dm.ProcessaProxNF then
              NextMS := 0 else
              NextMS := GetTickCount + 15000;
          end;
          Sleep(5);
        except
          on E: Exception do 
            DebugMsg('TncProcessaGerarNFe.Execute - ' + E.ClassName+': '+E.Message);
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
