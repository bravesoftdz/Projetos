 {$I NEX.INC}

unit ncDMServ;

interface


uses
  Graphics,
  SysUtils,                      
  DateUtils,
  Windows,
  Classes, 
  ExtCtrls,
  DB, 
  Dialogs,
  Variants,
  nxDB, 
  nxllComponent, 
  ncClassesBase, 
  ncTran,
  ncTipoTran,
  ncDebito,
  ncErros,
  ncMovEst,
  ncLancExtra,
  ncSalvaCredito,
  nxsdServerEngine, nxreRemoteServerEngine,
  nxllTransport, nxptBasePooledTransport, nxtwWinsockTransport,
  ncMsgCom,
  ncEspecie,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  nxsrServerEngine, kbmMemTable;

type

  TProgressoEv = 
    procedure(const aTarefa: String; aPos, aTotal: Cardinal) of object;

  TDM = class;

  TFidCliente = record
    fdID : Integer;
    fdOld : Double;
    fdNew : Double;
  end;

  PFidCliente = ^TFidCliente;
  
  TFidControl = class
  private
    FList : TList;
    FPremiar : TList;
    FDM : TDM;
    FTimer : TTimer;

    function Get(aID: Integer; aCreate: Boolean; aOld: Double): PFidCliente;
    procedure OnTimer(Sender: TObject);
    
  public
    constructor Create(aDM: TDM);
    destructor Destroy;
    procedure Clear;

    procedure SaveChange(aID: Integer; vOld : Variant; aNew: Double);

    function CanCommit(DisableAutoPremiar: Boolean=False): Boolean;
  end;

  TDM = class(TDataModule)
    nxSession: TnxSession;
    nxDB: TnxDatabase;
    tTran: TnxTable;
    tITran: TnxTable;
    tUsuario: TnxTable;
    tConfig: TnxTable;
    tCli: TnxTable;
    tMovEst: TnxTable;
    tCaixa: TnxTable;
    tProduto: TnxTable;
    tUsuarioUsername: TStringField;
    tUsuarioNome: TStringField;
    tUsuarioAdmin: TBooleanField;
    tUsuarioSenha: TStringField;
    tUsuarioGrupos: TMemoField;
    tUsuarioDireitos: TMemoField;
    tUsuarioMaxTempoManut: TIntegerField;
    tUsuarioMaxMaqManut: TIntegerField;
    tAuxITran: TnxTable;
    tAuxME: TnxTable;
    tMovEstFator: TIntegerField;
    tMovEstSaldoPost: TFloatField;
    tAuxMEFator: TIntegerField;
    tAuxMESaldoPost: TFloatField;
    tDebito: TnxTable;
    tITranDebito: TCurrencyField;
    tAuxITranDebito: TCurrencyField;
    nxRSE: TnxRemoteServerEngine;
    nxTCPIP: TnxWinsockTransport;
    qAux: TnxQuery;
    tIC: TnxTable;
    tICIP: TStringField;
    tICcampanha: TStringField;
    tICutmccn: TStringField;
    tICutmctr: TStringField;
    tICutmcct: TStringField;
    tICutmcmd: TStringField;
    tICutmcsr: TStringField;
    H: TIdHTTP;
    tEspecie: TnxTable;
    tPagEsp: TnxTable;
    tAuxTran: TnxTable;
    tUsuarioLimiteDesc: TFloatField;
    tOrc: TnxTable;
    tSysLog: TnxTable;
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
    tTranCancelado: TBooleanField;
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
    tITranID: TUnsignedAutoIncField;
    tITranTran: TLongWordField;
    tITranCaixa: TLongWordField;
    tITranCaixaPag: TLongWordField;
    tITranCliente: TLongWordField;
    tITranSessao: TLongWordField;
    tITranDataHora: TDateTimeField;
    tITranTipoTran: TByteField;
    tITranTipoItem: TByteField;
    tITranSubTipo: TByteField;
    tITranItemID: TLongWordField;
    tITranSubItemID: TLongWordField;
    tITranItemPos: TByteField;
    tITranTotal: TCurrencyField;
    tITranDesconto: TCurrencyField;
    tITranTotLiq: TCurrencyField;
    tITranPago: TCurrencyField;
    tITranCancelado: TBooleanField;
    tITranPagPend: TBooleanField;
    tITranFidFator: TShortintField;
    tITranFidPontos: TFloatField;
    tITranFidMov: TBooleanField;
    tITranFidOpe: TByteField;
    tITranRecVer: TLongWordField;
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
    tAuxITranID: TUnsignedAutoIncField;
    tAuxITranTran: TLongWordField;
    tAuxITranCaixa: TLongWordField;
    tAuxITranCaixaPag: TLongWordField;
    tAuxITranCliente: TLongWordField;
    tAuxITranSessao: TLongWordField;
    tAuxITranDataHora: TDateTimeField;
    tAuxITranTipoTran: TByteField;
    tAuxITranTipoItem: TByteField;
    tAuxITranSubTipo: TByteField;
    tAuxITranItemID: TLongWordField;
    tAuxITranSubItemID: TLongWordField;
    tAuxITranItemPos: TByteField;
    tAuxITranTotal: TCurrencyField;
    tAuxITranDesconto: TCurrencyField;
    tAuxITranTotLiq: TCurrencyField;
    tAuxITranPago: TCurrencyField;
    tAuxITranCancelado: TBooleanField;
    tAuxITranPagPend: TBooleanField;
    tAuxITranFidFator: TShortintField;
    tAuxITranFidPontos: TFloatField;
    tAuxITranFidMov: TBooleanField;
    tAuxITranFidOpe: TByteField;
    tOrcUID: TGuidField;
    tOrcIDSeq: TUnsignedAutoIncField;
    tOrcCriadoEm: TDateTimeField;
    tOrcStatus: TByteField;
    tOrcAtualizadoEm: TDateTimeField;
    tOrcAprovadoEm: TDateTimeField;
    tOrcRecusadoEm: TDateTimeField;
    tOrcVendidoEm: TDateTimeField;
    tOrcExpiradoEm: TDateTimeField;
    tOrcStatusAlteradoEm: TDateTimeField;
    tOrcFunc: TStringField;
    tOrcIDVenda: TLongWordField;
    tOrcCliente: TLongWordField;
    tOrcTotal: TCurrencyField;
    tOrcDesconto: TCurrencyField;
    tOrcTotalFinal: TCurrencyField;
    tOrcVendido: TBooleanField;
    tOrcValData: TDateTimeField;
    tOrcValModo: TByteField;
    tOrcValTempo: TWordField;
    tOrcValUTempo: TByteField;
    tOrcObs: TnxMemoField;
    tAuxMEID: TUnsignedAutoIncField;
    tAuxMETran: TLongWordField;
    tAuxMEProduto: TLongWordField;
    tAuxMEQuant: TFloatField;
    tAuxMEUnitario: TCurrencyField;
    tAuxMETotal: TCurrencyField;
    tAuxMECustoU: TCurrencyField;
    tAuxMEItem: TByteField;
    tAuxMEDesconto: TCurrencyField;
    tAuxMEPago: TCurrencyField;
    tAuxMEPagoPost: TCurrencyField;
    tAuxMEDescPost: TCurrencyField;
    tAuxMEDataHora: TDateTimeField;
    tAuxMEEntrada: TBooleanField;
    tAuxMECancelado: TBooleanField;
    tAuxMEAjustaCusto: TBooleanField;
    tAuxMEEstoqueAnt: TFloatField;
    tAuxMECliente: TLongWordField;
    tAuxMECaixa: TIntegerField;
    tAuxMECategoria: TStringField;
    tAuxMENaoControlaEstoque: TBooleanField;
    tAuxMEITran: TIntegerField;
    tAuxMETipoTran: TByteField;
    tAuxMESessao: TIntegerField;
    tAuxMEComissao: TCurrencyField;
    tAuxMEComissaoPerc: TFloatField;
    tAuxMEComissaoLucro: TBooleanField;
    tAuxMEPermSemEstoque: TBooleanField;
    tAuxMEFidResgate: TBooleanField;
    tAuxMEFidPontos: TFloatField;
    tAuxMERecVer: TLongWordField;
    tAuxTranID: TUnsignedAutoIncField;
    tAuxTranUID: TGuidField;
    tAuxTranDataHora: TDateTimeField;
    tAuxTranCliente: TLongWordField;
    tAuxTranTipo: TByteField;
    tAuxTranFunc: TStringField;
    tAuxTranTotal: TCurrencyField;
    tAuxTranDesconto: TCurrencyField;
    tAuxTranDescPerc: TFloatField;
    tAuxTranDescPorPerc: TBooleanField;
    tAuxTranTotLiq: TCurrencyField;
    tAuxTranPagEsp: TWordField;
    tAuxTranPago: TCurrencyField;
    tAuxTranDebitoAnt: TCurrencyField;
    tAuxTranDebito: TCurrencyField;
    tAuxTranDebitoPago: TCurrencyField;
    tAuxTranCreditoAnt: TCurrencyField;
    tAuxTranCredito: TCurrencyField;
    tAuxTranCreditoUsado: TCurrencyField;
    tAuxTranTroco: TCurrencyField;
    tAuxTranObs: TnxMemoField;
    tAuxTranCancelado: TBooleanField;
    tAuxTranCanceladoPor: TStringField;
    tAuxTranCanceladoEm: TDateTimeField;
    tAuxTranCaixa: TLongWordField;
    tAuxTranCaixaPag: TLongWordField;
    tAuxTranMaq: TWordField;
    tAuxTranSessao: TLongWordField;
    tAuxTranQtdTempo: TFloatField;
    tAuxTranCredValor: TBooleanField;
    tAuxTranFidResgate: TBooleanField;
    tAuxTranPagFunc: TStringField;
    tAuxTranPagPend: TBooleanField;
    tAuxTranRecVer: TLongWordField;
    tSysLogID: TUnsignedAutoIncField;
    tSysLogDataHora: TDateTimeField;
    tSysLogInfo: TStringField;
    tCaixaID: TUnsignedAutoIncField;
    tCaixaIDLivre: TStringField;
    tCaixaAberto: TBooleanField;
    tCaixaUsuario: TStringField;
    tCaixaAbertura: TDateTimeField;
    tCaixaFechamento: TDateTimeField;
    tCaixaReproc: TDateTimeField;
    tCaixaTotalFinal: TCurrencyField;
    tCaixaDescontos: TCurrencyField;
    tCaixaCancelamentos: TCurrencyField;
    tCaixaSangria: TCurrencyField;
    tCaixaSupr: TCurrencyField;
    tCaixaSaldoAnt: TCurrencyField;
    tCaixaObs: TnxMemoField;
    tCaixaEstSessoesQtd: TIntegerField;
    tCaixaEstSessoesTempo: TFloatField;
    tCaixaEstUrls: TIntegerField;
    tCaixaEstSyncOk: TBooleanField;
    tCaixaEstBuscasEng: TnxMemoField;
    tCaixaEstRes: TnxMemoField;
    tCaixaSaldoF: TCurrencyField;
    tCaixaQuebra: TCurrencyField;
    tCaixaRecVer: TLongWordField;
    tDebitoData: TDateTimeField;
    tDebitoCliente: TLongWordField;
    tDebitoValor: TCurrencyField;
    tDebitoTipo: TByteField;
    tDebitoID: TLongWordField;
    tEspecieID: TWordField;
    tEspecieTipo: TByteField;
    tEspecieNome: TStringField;
    tEspeciePermiteTroco: TBooleanField;
    tEspeciePermiteVarios: TBooleanField;
    tEspeciePermiteCred: TBooleanField;
    tEspecieImg: TWordField;
    tEspecieRecVer: TLongWordField;
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
    mtDeb: TkbmMemTable;
    mtDebData: TDateTimeField;
    mtDebValor: TCurrencyField;
    mtDebID: TLongWordField;
    tTranDebito: TCurrencyField;
    tPagEspDevolucao: TBooleanField;
    tTranUID_ref: TGuidField;
    tTranOpDevValor: TByteField;
    tMovEstID_ref: TLongWordField;
    tAuxMEID_ref: TLongWordField;
    tAuxTranUID_ref: TGuidField;
    tAuxTranOpDevValor: TByteField;
    tTranIncluidoEm: TDateTimeField;
    tITranIncluidoEm: TDateTimeField;
    tMovEstIncluidoEm: TDateTimeField;
    tAuxMEIncluidoEm: TDateTimeField;
    tProdutoEstoqueAtual: TFloatField;
    tProdutoEstoquePend: TFloatField;
    tProdutoEstoqueTot: TFloatField;
    tMovEstPend: TBooleanField;
    tAuxMEPend: TBooleanField;
    tAuxTranIncluidoEm: TDateTimeField;
    tProdutoNCM: TStringField;
    tProdutoNCM_Ex: TStringField;
    tProdutobrtrib: TWordField;
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
    tAuxNFE: TnxTable;
    tAuxNFENumSeq: TUnsignedAutoIncField;
    tAuxNFEModelo: TStringField;
    tAuxNFESerie: TStringField;
    tAuxNFENumero: TLongWordField;
    tAuxNFEChave: TStringField;
    tAuxNFEEntrada: TBooleanField;
    tAuxNFETipoDoc: TByteField;
    tAuxNFEDataHora: TDateTimeField;
    tAuxNFECFOP: TWordField;
    tAuxNFETran: TGuidField;
    tAuxNFERecibo: TStringField;
    tAuxNFEProtocolo: TStringField;
    tAuxNFEContingencia: TBooleanField;
    tAuxNFEStatus: TByteField;
    tAuxNFEStatusNF: TIntegerField;
    tAuxNFEIncluidoEm: TDateTimeField;
    tAuxNFEEmitidoEm: TDateTimeField;
    tAuxNFEContingenciaEM: TDateTimeField;
    tAuxNFEValor: TCurrencyField;
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
    tNFEXMLtrans: TnxMemoField;
    tBRTrib: TnxTable;
    tBRTribID: TWordField;
    tBRTribNome: TStringField;
    tBRTribOrigem: TByteField;
    tBRTribCST: TWordField;
    tBRTribCSOSN: TWordField;
    tBRTribICMS: TFloatField;
    tBRTribPadrao: TBooleanField;
    tBRTribCFOP_nfce: TWordField;
    tTranStatusNFE: TByteField;
    tTranTipoNFE: TByteField;
    tTranChaveNFE: TStringField;
    tEspecieTipoPagNFE: TByteField;
    tNFEXMLtransCont: TnxMemoField;
    tAuxNFEXMLdest: TnxMemoField;
    tAuxNFEXMLret: TnxMemoField;
    tAuxNFEXMLtransCont: TnxMemoField;
    tAuxNFEXMLtrans: TnxMemoField;
    tMovEstUnitarioLiq: TCurrencyField;
    tNFExMotivo: TnxMemoField;
    tAuxNFExMotivo: TnxMemoField;
    tNFConfigtpAmb: TByteField;
    tNFConfigCSC: TStringField;
    tNFConfigIdCSC: TStringField;
    tTranExtra: TnxMemoField;
    tNFConfigFromEmail: TStringField;
    tNFConfigFromName: TStringField;
    tAuxTranStatusNFE: TByteField;
    tAuxTranChaveNFE: TStringField;
    tAuxTranTipoNFE: TByteField;
    tAuxTranExtra: TnxMemoField;
    tNFConfigTrib_Padrao: TWordField;
    tNFConfigPedirEmail: TByteField;
    tNFConfigPedirCPF: TByteField;
    tNFConfigEnd_Complemento: TStringField;
    tNFConfigModeloNFCe_Email: TGuidField;
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
    tNFEtpAmb: TByteField;
    tAuxNFEtpAmb: TByteField;
    tNFConfigTipoCert: TByteField;
    tNFConfigUrls_Consulta: TnxMemoField;
    tNFConfigUrls_qrcode_hom: TnxMemoField;
    tNFConfigUrls_qrcode_prod: TnxMemoField;
    tTranAmbNFe: TByteField;
    tNFECPF: TStringField;
    tNFEEmail: TStringField;
    tAuxNFEStatusInut: TByteField;
    tAuxNFEStatusCanc: TByteField;
    tAuxNFECPF: TStringField;
    tAuxNFEEmail: TStringField;
    tAuxTranAmbNFe: TByteField;
    tAuxTranStatusCanc: TByteField;
    tNFEStatusInut: TByteField;
    tNFEStatusCanc: TByteField;
    tTranStatusCanc: TByteField;
    tNFEProtocoloCanc: TStringField;
    tNFEStatusCancNF: TIntegerField;
    tNFEJustCanc: TnxMemoField;
    tAuxNFEProtocoloCanc: TStringField;
    tAuxNFEStatusCancNF: TIntegerField;
    tAuxNFEJustCanc: TnxMemoField;
    tNFExMotivoCanc: TnxMemoField;
    tAuxNFExMotivoCanc: TnxMemoField;
    tNFECanceladoPor: TStringField;
    tAuxNFECanceladoPor: TStringField;
    tNFECanceladoEm: TDateTimeField;
    tAuxNFECanceladoEm: TDateTimeField;
    tAuxNFExmlRetCanc: TnxMemoField;
    tAuxNFEStatusInutNF: TIntegerField;
    tAuxNFEProtocoloInut: TStringField;
    tAuxNFExMotivoInut: TnxMemoField;
    tAuxNFExmlRetInut: TnxMemoField;
    tNFExmlRetCanc: TnxMemoField;
    tNFEStatusInutNF: TIntegerField;
    tNFEProtocoloInut: TStringField;
    tNFExMotivoInut: TnxMemoField;
    tNFExmlRetInut: TnxMemoField;
    tNFConfigAssuntoEmail: TStringField;
    tNFConfigRemoverNFCe: TBooleanField;
    tNFConfigDependNFCEOk: TBooleanField;
    tNFConfigCorpoEmail: TnxMemoField;
    tNFConfigPinCert: TStringField;
    tProdFor: TnxTable;
    tProdForUID: TGuidField;
    tProdForProduto: TLongWordField;
    tProdForFornecedor: TLongWordField;
    tProdForRef: TStringField;
    tNFEUID: TGuidField;
    tNFEChaveCont: TStringField;
    tNFEConsultouChave: TBooleanField;
    tNFELogEnvio: TnxMemoField;
    tAuxNFEUID: TGuidField;
    tAuxNFEChaveCont: TStringField;
    tAuxNFEConsultouChave: TBooleanField;
    tAuxNFELogEnvio: TnxMemoField;
    tNFConfigTipo: TByteField;
    tNFELogRec: TnxMemoField;
    tAuxNFELogRec: TnxMemoField;
    tNFConfigDependSATOk: TBooleanField;
    tNFConfigModeloSAT_Email: TGuidField;
    tNFConfigObsFisco: TnxMemoField;
    tNFConfigNomeDllSat: TStringField;
    tNFConfigSignACSat: TStringField;
    tNFConfigCodigoAtivacao: TStringField;
    tNFConfigAssociarSignAC: TBooleanField;
    tProdForPos: TWordField;
    tCred: TnxTable;
    tCredID: TUnsignedAutoIncField;
    tCredDataHora: TDateTimeField;
    tCredFunc: TStringField;
    tCredAdicionar: TBooleanField;
    tCredTran: TLongWordField;
    tCredCaixa: TLongWordField;
    tCredCliente: TLongWordField;
    tCredCancelado: TBooleanField;
    tCredValor: TCurrencyField;
    tCredFidResgate: TBooleanField;
    tCredFidPontos: TFloatField;
    tCredRecVer: TLongWordField;
    tProdutocest: TLongWordField;
    TimerCest: TTimer;
    tMovEstTax: TnxTable;
    tTax: TnxTable;
    tTaxItens: TnxTable;
    tMovEstTaxmovest: TLongWordField;
    tMovEstTaxtax_id: TLongWordField;
    tMovEstTaxnome: TWideStringField;
    tMovEstTaxincluido: TBooleanField;
    tMovEstTaxperc: TFloatField;
    tMovEstTaxvalor: TCurrencyField;
    tTaxtax_id: TUnsignedAutoIncField;
    tTaxnome: TWideStringField;
    tTaxincluido: TBooleanField;
    tTaxperc: TFloatField;
    tTaxgrupo: TBooleanField;
    tTaxItensgrupo: TLongWordField;
    tTaxItensitem: TLongWordField;
    tMovEsttax_id: TLongWordField;
    tMovEsttax_incluido: TCurrencyField;
    tMovEsttax_incluir: TCurrencyField;
    tMovEstTotalFinal: TCurrencyField;
    tAuxTrantax_incluido: TCurrencyField;
    tAuxTrantax_incluir: TCurrencyField;
    tAuxTranTotalFinal: TCurrencyField;
    tTrantax_incluido: TCurrencyField;
    tTrantax_incluir: TCurrencyField;
    tTranTotalFinal: TCurrencyField;
    tAuxMEtax_id: TLongWordField;
    tAuxMEtax_incluido: TCurrencyField;
    tAuxMEtax_incluir: TCurrencyField;
    tAuxMETotalFinal: TCurrencyField;
    tUsuarioEmail: TWideStringField;
    tMovEstDescr: TWideStringField;
    tAuxTranDescricao: TWideMemoField;
    tTranDescricao: TWideMemoField;
    tTranids_pagto: TStringField;
    tAuxTranids_pagto: TStringField;
    tPagEspTipoTran: TByteField;
    tSysLogver: TWordField;
    tDocPais: TStringField;
    tDocLingua: TStringField;
    tDocNome: TWideStringField;
    tDocObs: TWideMemoField;
    tDocMaxVer: TWordField;
    tTranComissao: TCurrencyField;
    tAuxTranComissao: TCurrencyField;
    tMovEstDebDev: TCurrencyField;
    tAuxMEDebDev: TCurrencyField;
    tUsuarioInativo: TBooleanField;
    tTranVendedor: TStringField;
    tAuxTranVendedor: TStringField;
    tCard: TnxTable;
    tPost_nexapp: TnxTable;
    tMovEstValorProdLiq: TCurrencyField;
    tNFConfigDependNFEOk: TBooleanField;
    tNFConfigsat_modelo: TByteField;
    tNFConfigsat_config: TStringField;
    tNFConfignfe_permite_cred_icms: TBooleanField;
    tNFConfignfe_perc_cred_icms: TFloatField;
    tNFConfigtpAmbNFE: TByteField;
    tNFConfigModeloNFE_Email: TGuidField;
    tNFConfigconfig_nfe: TnxMemoField;
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
    tAuxTranNomeCliente: TWideStringField;
    tTranNomeCliente: TWideStringField;
    tTranEntregar: TBooleanField;
    tTranendereco_entrega: TGuidField;
    tAuxTranEntregar: TBooleanField;
    tAuxTranendereco_entrega: TGuidField;
    tBrtrib_tipo: TnxTable;
    tBrtrib_tipoid_brtrib: TWordField;
    tBrtrib_tipocsosn: TLongWordField;
    tBrtrib_tipocfop: TLongWordField;
    tBrtrib_tipoobsfiscal: TWideMemoField;
    tBrtrib_tipoicms: TFloatField;
    tBrtrib_tipolocal: TByteField;
    tTipoTran: TnxTable;
    tBrtrib_tipotipo: TByteField;
    tTipoTrantipo: TByteField;
    tTipoTranuser: TBooleanField;
    tTipoTranestoque: TBooleanField;
    tTipoTrancaixa: TBooleanField;
    tTipoTrannome: TWideStringField;
    tTipoTranentrada: TBooleanField;
    tTipoTranemite_nfe: TBooleanField;
    tTipoTranmovest: TBooleanField;
    tTipoTranatualiza_custo: TBooleanField;
    tTipoTranvisivel: TBooleanField;
    tTipoTranpagto: TBooleanField;
    tTipoTransel_endereco: TBooleanField;
    tTipoTrantipocad: TByteField;
    tTipoTranprecocusto_nfe: TBooleanField;
    tMovEstTotLiq: TCurrencyField;
    tMovEstCustoT: TCurrencyField;
    tMovEstLucro: TCurrencyField;
    tMovEstVenDev: TBooleanField;
    tNFConfignfe_venda: TBooleanField;
    tNFConfigtipodoc_padrao: TByteField;
    tNFConfignfe_venda_norm: TBooleanField;
    tNFConfigcalc_tiponfe: TByteField;
    tNFConfigESat: TBooleanField;
    tBRTribNFE_CredIcms: TBooleanField;
    tCliNaoContribICMS: TBooleanField;
    tCliIsentoIE: TBooleanField;
    tAuxMETotLiq: TCurrencyField;
    tAuxMECustoT: TCurrencyField;
    tAuxMELucro: TCurrencyField;
    tAuxMEDescr: TWideStringField;
    tAuxMEVenDev: TBooleanField;
    tCliConsumidor: TBooleanField;
    tNFConfigsat_esq: TByteField;
    tNFConfigcontabilidade: TStringField;
    tBRTribICMSSt: TnxMemoField;
    tNFConfigUsarPautaMaiorMVA: TBooleanField;
    tNFETotalNF: TCurrencyField;
    tTranTranspEnt: TLongWordField;
    tCliTipoFor: TByteField;
    tCliTranspEnt: TBooleanField;
    tAuxTranTranspEnt: TLongWordField;
    tTranFrete: TCurrencyField;
    tAuxTranFrete: TCurrencyField;
    tTranVenDev: TBooleanField;
    tTranHora: TByteField;
    tTrantranest: TBooleanField;
    tTrantrancx: TBooleanField;
    tTranTranspVol: TWordField;
    tTranTranspPesoB: TFloatField;
    tTranTranspPesoL: TFloatField;
    tAuxTranVenDev: TBooleanField;
    tAuxTranHora: TByteField;
    tAuxTrantranest: TBooleanField;
    tAuxTrantrancx: TBooleanField;
    tAuxTranTranspVol: TWordField;
    tAuxTranTranspPesoB: TFloatField;
    tAuxTranTranspPesoL: TFloatField;
    tCliInfoExtra: TWideStringField;
    tCliTranspEntPadrao: TLongWordField;
    tProdutoPesoBruto: TFloatField;
    tProdutoPesoLiq: TFloatField;
    tProdutotax_id: TLongWordField;
    tProdutomodST: TByteField;
    tProdutoMVA: TnxMemoField;
    tProdutoPauta: TnxMemoField;
    su: TLongWordField;
    tNFConfigexigir_peso_vol: TBooleanField;
    tNFConfigenviar_peso_vol_def: TBooleanField;
    tNFConfigauto_calc_peso_def: TBooleanField;
    tTranTranspPesoVol: TByteField;
    tAuxTranTranspPesoVol: TByteField;
    mtDebTipo: TByteField;
    tTranUpdID: TGuidField;
    tAuxTranUpdID: TGuidField;
    tProdutoUID: TGuidField;
    tProdutoMarca: TGuidField;
    tProdutoCodigo: TWideStringField;
    tProdutoDescricao: TWideStringField;
    tProdutoAlteradoEm: TDateTimeField;
    tProdutoAlteradoPor: TStringField;
    tProdutoCategoria: TWideStringField;
    tProdutoUnid: TWideStringField;
    tProdutoObs: TWideMemoField;
    tMovEstObs: TWideMemoField;
    tAuxMEObs: TWideMemoField;
    procedure tMovEstCalcFields(DataSet: TDataSet);
    procedure tAuxMECalcFields(DataSet: TDataSet);
    procedure tITranCalcFields(DataSet: TDataSet);
    procedure tTranCalcFields(DataSet: TDataSet);
    procedure tAuxITranCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tITranBeforePost(DataSet: TDataSet);
    procedure tCliBeforePost(DataSet: TDataSet);
    procedure tITranBeforeDelete(DataSet: TDataSet);
    procedure TimerCestTimer(Sender: TObject);
    procedure tNFConfigCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    function IncluiIME(IM: TncItemMovEst; ME: TncMovEst): Integer;
    function AlteraIME(IM: TncItemMovEst; MEAnt, MEAtu: TncMovEst): Integer;
    function ExcluiIME(IM: TncItemMovEst; MEAnt, MEAtu: TncMovEst): Integer;
    function ObtemSaldoAnt(aProduto: Integer; aDH: TDateTime; aID: Integer): Double; 

    function DebMovEst(aID: Cardinal): Currency;

    procedure SalvaEstoqueAtual(aProduto: Cardinal);

    function PassouLimiteDebito: Boolean;

    procedure PremiarCli(aCliente: Integer);
  public
    FidControl : TFidControl;
    FBuildEvolveDB : TNotifyEvent;
    
    
    procedure NovaLogicaPendentes;

    procedure SetCaixaPagIgualCaixa;
    
    function LimiteDeb: Currency;
    procedure RefreshDebitoCliente;
    procedure ReprocessaEstoque;
    function AjustaSaldoPost(aProduto: Integer; aDH: TDateTime; aID: Integer; aSaldoInicial: Double; aExcluiu: Boolean): Double;
    procedure Open(aChecaFmtTabs: Boolean = False);
    procedure Close;
    { Public declarations }


    procedure LoadComissaoProd(IM : TncItemMovEst);
    procedure LoadComissaoDev(IM : TncItemMovEst);

    procedure ResetNexApp;

    function QuantPend(aProduto, aIgnoreME: Cardinal): Extended;
    function UltimoSaldo(aProduto: Cardinal): Extended;

    function InitTran(const aTables : array of TnxTable;
                      aWith : Boolean): Boolean;

    procedure LoadIMEs(ME: TncMovEst);
    procedure LoadIDeb(Deb: TncDebito);
    procedure LoadIDebPagos(Deb: TncDebito);
    procedure LoadPagEsp(aTranID: Integer; aPagEsp: TncPagEspecies);
    procedure CancelarPagEsp(aTranID: Integer);
    procedure SavePagEsp(aTranID, aTipoTran, aCaixa: Integer; aDataHora: TDateTime; aCancelado: Boolean; aPagEsp: TncPagEspecies);
    procedure SavePagEspLE(aTranID, aTipoTran, aCaixa: Integer; aValor: Currency; aDataHora: TDateTime; aCancelado: Boolean);
    procedure SavePagEspTipoTran(aTranID, aTipoTran, aCaixa: Integer);
    function TotalDeb(aCliente: Integer): Currency;

    function CancelaTranNFe(aNFe: String): String;

    procedure CorrigeClienteDeb;
    procedure CorrigeErroCancelamentoPagEsp;
    procedure ZerarEstoque(aFunc: String);
    procedure CorrigePgDebitoDesc(aProgresso: TProgressoEv = nil);
    procedure CorrigeDataITran(aProgresso: TProgressoEv = nil);
    procedure CorrigeTotalNF(aProgresso: TProgressoEv = nil);
    procedure CorrigeDebPagPend(aProgresso: TProgressoEv = nil);
    procedure ResomaITranDebitos(aProgresso: TProgressoEv = nil);
    procedure CorrigeDescontos(aProgresso: TProgressoEv = nil);
    procedure RemoveDebitosDevolvidos(aProgresso: TProgressoEv = nil);

    procedure refaz_itran_debcli;
    procedure CorrigeErroITranDebCli(aProgresso: TProgressoEv = nil);
    procedure ReprocessaITranDeb(aProgresso: TProgressoEv = nil);

    procedure Ajusta_Vendedor(aProgresso: TProgressoEv = nil);
    procedure AjustaDescr_MovEst_Tran(aProgresso: TProgressoEv = nil);
    procedure AjustaComissao_Devolucoes(aProgresso: TProgressoEv = nil);
    procedure Ajusta_ids_pagto(aProgresso: TProgressoEv = nil);
    procedure Ajusta_pagesp_entrada_saida_caixa(aProgresso: TProgressoEv = nil);
    procedure AjustaComissao_Tran(aProgresso: TProgressoEv = nil);
    procedure RecalcComissao(aProgresso: TProgressoEv = nil);

    procedure ImportNewDoc(aProgresso: TProgressoEv = nil);

    function NFCeAtivo: Boolean;
    function NFeAtivo: Boolean;
    
    procedure SalvaUsuario(U: TncUsuario);
    procedure SalvaConfig(C: TncConfig);
    procedure SalvaConfigPB(P : TmsgPubPar);
    procedure SalvaEspecie(E: TncEspecie);
    procedure SalvaTipoTran(T: TncTipoTran);

    function NumCaixaAberto: Integer;
    function FuncCaixaAberto: String;
    function SalvaMovEst(ME: TncMovEst; const aIgnoraCaixa: Boolean = False): Integer;
    function SalvaMovEstCustom(ME: TncMovEst; const aIgnoraCaixa: Boolean = False): Integer;

    procedure SalvaProdFor(aProd, aFor: Cardinal);

    function ReemitirNFCe(aTran: tGuid): Integer;

    procedure SalvaUrls;

    procedure ExecQuery(aQuery: String);

    function PodeAlterarTran(aID: Integer): Boolean;
    function SalvaPagDebito(aDeb: TncDebito): Integer;
    function SalvaLancExtra(aLE: TncLancExtra): Integer;
    function CorrigeDataCaixa(aFunc: String; aID: Integer; aNovaAbertura, aNovoFechamento: TDateTime): integer; 

    function AjustaPontosFid(aFunc: String; aCliente: Integer; aFator: Smallint; aPontos: Double; aObs: String): Integer;
    function CancelarTran(aID: Integer; aFunc: String): integer;
    
    procedure PopulateProdFor;

    procedure CorrigeCustoT(aProgresso: TProgressoEv = nil);

    procedure PopulateTipoTran;

    function SalvaCredito(aCred: TncSalvaCredito): Integer;

    procedure ReprocessaDebitos;
    procedure RecriaDebitos;
    procedure SalvaInfoCampanha(IC : TInfoCampanha);

    procedure ExpiraOrcamentosPendentes; 

    procedure CorrigeCusto(aProgresso : TProgressoEv = nil);

    function sysLog_Find(aInfo: String): Boolean;
    procedure sysLog_Add(aInfo: String);
    function sysLog_lastver: Word;
  end;

  
  TThreadInfoCampanha = class ( TThread )
  protected
    FHandle: HWND;
    procedure Execute; override;
  public
    constructor Create(aHandle: HWND);
  end;    

  function ObtemInfoCampanha: TInfoCampanha; 
   
var
  DM: TDM;

implementation

uses ncVersoes, ncDebug, ncGuidUtils, nexUrls, ncDMSyncCest,
  uNexTransResourceStrings_PT, ncVersionInfo;

{$R *.dfm}

threadvar
  DataHoraTran : TDateTime;

resourcestring
  rsZerouPontosTodosClientes = 'Zerou pontos de todos os clientes';
  rsPontosAdicionados = 'pontos adicionados';
  rsPontosRemovidos = 'pontos removidos';
  rsTodos = 'Todos';    

function VToString(V: Variant): String;
begin
  if VarIsNull(V) then
    Result := '' else
    Result := V;
end;
  
function ObtemInfoCampanha: TInfoCampanha;
var 
  SL : TStrings;
  H : TidHttp;
begin
  Result := nil;
  try
    SL := TStringList.Create;
    H := TidHttp.Create(nil);
    try
      H.HandleRedirects := True;
      SL.Text := H.Get(gUrls.Url('contas_obteminfocampanha'));
      if SL.Values['erro']='0' then begin
        Result := tInfoCampanha.Create;
        Result.icCampanha := UTF8ToAnsi(sl.Values['campanha']);
        Result.icutmccn := UTF8ToAnsi(sl.Values['utmccn']);
        Result.icutmctr := UTF8ToAnsi(sl.Values['utmctr']);
        Result.icutmcct := UTF8ToAnsi(sl.Values['utmcct']);
        Result.icutmcmd := UTF8ToAnsi(sl.Values['utmcmd']);
        Result.icutmcsr := UTF8ToAnsi(sl.Values['utmcsr']);
      end;
    finally
      SL.Free;
      H.Free;
    end;
  except
    on E: Exception do
      DebugMsg('ObtemInfoCampanha - E.Message: '+E.Message);
  end;
end;

function ObtemIdade(DN: TDateTime): Integer;
var y, m, d, y2, m2, d2 : Word;
begin
  DecodeDate(Date, y, m , d);
  DecodeDate(DN, y2, m2, d2);
  Result := y-y2;
  if (m<m2) or ((m=m2) and (d<d2)) then Dec(Result);
  if Result < 5 then Result := 0;
end;

function SemAcento(S: String): String;
const
  Acentos =  'éêèýýúùûîiíìõôòóãáàñç';
  SAcentos = 'eeeyyuuuiiiiooooaaanc';
var
  I, P : Integer;
begin
  S := lowercase(S);
  Result := '';
  for I := 1 to Length(S) do begin
    P := Pos(S[i], Acentos);
    if P>0 then
      Result := Result + SAcentos[P] else
      Result := Result + S[i];
  end;
end;

{ TdmServ }
function DBInitTran(aDB: TnxDatabase;
                    const aTables : array of TnxTable;
                    aWith : Boolean): Boolean;
var I : Integer;
begin
  Result := False;
  if aDB.InTransaction then Exit;
  I := 10;
  while I > 0 do begin
    try
      if aWith then
        aDB.StartTransactionWith(aTables)
      else
        aDB.StartTransaction;

      I := 0;
    except
      Dec(I);
      Random(500);
    end
  end;
  Result := True;
end;

procedure TDM.AjustaComissao_Devolucoes(aProgresso: TProgressoEv);
var I, T: Cardinal;
begin
  tTran.IndexName := 'ITipoID';
  tMovEst.IndexName := 'ITranItem';
  try
    tTran.SetRange([trEstDevolucao], [trEstDevolucao]);
    try
      tTran.First;
      I := 0;
      T := tTran.RecordCount;
      while not tTran.Eof do begin
        if Assigned(aProgresso) then
          aProgresso(rsCorrigindoComissaoDev, I, T);
        tMovEst.SetRange([tTranID.Value], [tTranID.Value]);
        while not tMovEst.Eof do begin
          if tAuxME.Locate('ID', tMovEstID_Ref.Value, []) then begin
            tMovEst.Edit;
            tMovEstComissaoPerc.Value := tAuxMEComissaoPerc.Value;
            tMovEstComissaoLucro.Value := tAuxMEComissaoLucro.Value;
            tMovEstCustoU.Value := tAuxMECustoU.Value;
            if tAuxMEQuant.Value>0 then
              tMovEstComissao.Value := -1 * (tAuxMEComissao.Value * (tMovEstQuant.Value / tAuxMEQuant.Value));            
            tMovEst.Post;
          end;
          tMovEst.Next;
        end;
        tTran.Next;
      end;
    finally
      tTran.CancelRange;
    end;
  finally
    tTran.IndexName := 'IID';
    tMovEst.IndexName := 'IID';
  end;
end;

procedure TDM.AjustaComissao_Tran(aProgresso: TProgressoEv);
var 
  I, T: Cardinal;

procedure LoadComiss;
var C: Currency;
begin  
  C := 0;
  tMovEst.SetRange([tTranID.Value], [tTranID.Value]);
  while not tMovEst.Eof do begin
    C := C + tMovEstComissao.Value;
    tMovEst.Next;
  end;
  tTran.Edit;
  tTranComissao.Value := C;
  tTran.Post;
end;

begin
  tTran.IndexName := 'ITipoID';
  tMovEst.IndexName := 'ITranItem';
  try
    tTran.SetRange([trEstDevolucao], [trEstDevolucao]);
    try
      tTran.First;
      I := 0;
      T := tTran.RecordCount;
      while not tTran.Eof do begin
        if Assigned(aProgresso) then
          aProgresso(rsTotalizaComissao_venda_dev, I, T); 
        LoadComiss;  
        tTran.Next;
      end;
    finally
      tTran.CancelRange;
    end;

    tTran.SetRange([trEstVenda], [trEstVenda]);
    try
      tTran.First;
      I := 0;
      T := tTran.RecordCount;
      while not tTran.Eof do begin
        if Assigned(aProgresso) then
          aProgresso(rsTotalizaComissao_venda_dev, I, T); 
        LoadComiss;  
        tTran.Next;
      end;
    finally
      tTran.CancelRange;
    end;
  finally
    tTran.IndexName := 'IID';
    tMovEst.IndexName := 'IID';
  end;
end;

procedure TDM.AjustaDescr_MovEst_Tran(aProgresso : TProgressoEv = nil);
var 
  D : Currency;
  I, T: Cardinal;
  sl : TStrings;
begin
  tMovEst.First;
  I := 0;
  T := tMovEst.RecordCount;
  while not tMovEst.Eof do begin
    Inc(I);
    if Assigned(aProgresso) then aProgresso(rsCorrigeDescrItensVenda, I, T);
    tMovEst.Edit;
    tMovEstDescr.Value := VToString(tProduto.Lookup('ID', tMovEstProduto.Value, 'Descricao'));
    tMovEst.Post;

    tMovEst.Next;
  end;

  I := 0;
  T := tTran.RecordCount;
  
  sl := TStringList.Create;
  try
    try tTran.CancelRange; except end;

    tTran.First;
    tMovEst.IndexName := 'ITranItem';
    while not tTran.Eof do begin
      Inc(I);
      if Assigned(aProgresso) then aProgresso(rsCorrigeDescrVenda, I, T);

      if (tTranTipo.Value in [trEstVenda, trEstCompra, trEstDevolucao, trEstEntrada, trEstSaida, trAjustaCusto]) then 
      begin
        sl.Clear;
        tMovEst.SetRange([tTranID.Value], [tTranID.Value]);
        try
          tMovEst.First;
          while not tMovEst.Eof do begin
            sl.Add(GetDescrMovEst(tMovEstTipoTran.Value, tMovEstQuant.value, tMovEstDescr.Value));
            tMovEst.Next;
          end;
        finally
          tMovEst.CancelRange;
        end;

        tTran.Edit;
        tTranDescricao.Value := sl.Text;
        tTran.Post;
      end;

      tTran.Next;
    end;
  finally
    tMovEst.IndexName := 'IID';
    sl.Free;
  end;
end;

function TDM.AjustaPontosFid(aFunc: String; aCliente: Integer; aFator: Smallint;
  aPontos: Double; aObs: String): Integer;
var 
  NumCx: Integer;  
  S: String;

procedure CancelAndRollback;
begin
  if not nxDB.InTransaction then Exit;
  tCli.Cancel;
  tCaixa.Cancel;
  tITran.Cancel;
  tTran.Cancel;
  nxDB.Rollback;
end;

begin
  InitTran([tCaixa, tTran, tITran, tCli], True);
  try
    NumCx := NumCaixaAberto;
    if NumCx<1 then begin
      Result := ncerros.ncerrCaixaFechado;
      Exit;
    end;

    if (aCliente=0) and (aFator=0) then begin
      tTran.Insert;
      tTranCliente.Clear;
      tTranDescricao.Value := rsZerouPontosTodosClientes;
      tTranNomeCliente.Value := rsTodos;
    end else begin
      if not tCli.FindKey([aCliente]) then begin
        Result := ncerros.ncerrItemInexistente;
        Exit;
      end;
      tTran.Insert;
      S := FloatToStr(aPontos);
      if aFator=1 then
        S := S + ' ' + rsPontosAdicionados else
        S := S + ' ' + rsPontosRemovidos;
      tTranCliente.Value := aCliente;
      tTranNomeCliente.Value := tCliNome.Value;
      tTranDescricao.Value := S;
      tTranObs.Value := aObs;
    end;

    tTranFunc.Value := aFunc;
    tTranDataHora.Value := Now;
    tTranTipo.Value := trAjustaFid;
    tTranCaixa.Value := NumCx;
    tTran.Post;

    if (aCliente=0) and (aFator=0) then begin
      tITran.BeforePost := nil;
      tCli.BeforePost := nil;
      try
        tCli.First;
        while not tCli.Eof do begin
          if Abs(tCliFidPontos.Value)>0.0001 then begin
            aPontos := tCliFidPontos.Value;
              
            tITran.Insert;
            if aPontos<0 then begin
              aPontos := -1 * aPontos;
              tITranFidFator.Value := 1;
            end else 
              tITranFidFator.Value := -1;
            tITranCaixa.Value := NumCx;
            tITranTran.Value := tTranID.Value;
            tITranTipoTran.Value := trAjustaFid;
            tITranTipoItem.Value := itAjustaFid;
            tITranDataHora.Value := tTranDataHora.Value;
            tITranItemPos.Value := 1;
            tITranFidMov.Value := True;
            tITranFidPontos.Value := aPontos;
            tITranCliente.Value := tCliID.Value;
            tITran.Post;
  
            tCli.Edit;
            tCliFidPontos.Value := 0;
            tCli.Post;
          end;
          tCli.Next;
        end;
      finally
        tITran.BeforePost := tITranBeforePost;
        tCli.BeforePost := tCliBeforePost;
      end;
      FidControl.Clear;
    end else begin
      tITran.Insert;
      tITranCaixa.Value := NumCx;
      tITranTran.Value := tTranID.Value;
      tITranTipoTran.Value := trAjustaFid;
      tITranTipoItem.Value := itAjustaFid;
      tITranDataHora.Value := tTranDataHora.Value;
      tITranItemPos.Value := 1;
      tITranFidFator.Value := aFator;
      tITranFidMov.Value := True;
      tITranFidPontos.Value := aPontos;
      tITranCliente.Value := tCliID.Value;
      tITran.Post;
      FidControl.CanCommit;
    end;

    nxDB.Commit;

    Result := 0;
  finally
    CancelAndRollback;
  end;  
end;

function TDM.AjustaSaldoPost(aProduto: Integer; aDH: TDateTime; aID: Integer;
  aSaldoInicial: Double; aExcluiu: Boolean): Double;
var 
  vNaoControla : Variant;
  AchouProd, aNaoControla: Boolean;  
  aPend, aSaldo: Extended;
begin
  Result := 0;

  //se achou o produto pela id, joga true na variavel
  //comentário que não serve pra nada so pra salvar no GIT

  AchouProd := tProduto.FindKey([aProduto]);

  //se variavel igual a true, verifica se produto controla estoque ou nao,
  //e joga true ou false para variavel de controle de mov. estoque
  if AchouProd then
    vNaoControla := tProdutoNaoControlaEstoque.Value else
    vNaoControla := null;

  //If aExclui (passada pelo parametro da funcao for true
  //retorna valor de um pedido cancelado para variavel aPend, senao
  //aPend recebe 0;
  if aExcluiu then
    aPend := QuantPend(aProduto, aID) else
    aPend := QuantPend(aProduto, 0);

  //se a variavel aDH (daa e hora) passada por parametro for maior que 0,
  //inicia movimentacao de estoque do produto passado por parametro.
  if aDH>0 then
  begin
    tAuxME.IndexName := 'IProduto';
    //variavel saldo armazena o saldo passado por parametro.
    aSaldo := aSaldoInicial;
    try
      //passa valores de um intervalo para tAuxMe
      tAuxME.SetRange([aProduto, aDH, Succ(aID)], [aProduto, MaxDateTime]);
      //se o retorno nao for vazio, entra no loop ate ultimo registro.
      while not tAuxME.Eof do begin
        //habilita modo de edicao de tAuxMe
        tAuxME.Edit;
        //if variavel esta nula, alimenta variavel com o o tipo de controle do
        //estoque do produto que esta sendo movimentado o estoque
        if vNaoControla=null then
          vNaoControla := tAuxMENaoControlaEstoque.Value;
        tAuxMENaoControlaEstoque.Value := vNaoControla;
        tAuxMEEstoqueAnt.Value := aSaldo;
        //grava movimentacao do estoque em tAuxME
        tAuxME.Post;

        //variavel a Saldo recebe o ultimo saldo de estoque
        aSaldo := tAuxMESaldoPost.Value;

        tAuxME.Next;
      end;

    finally
      tAuxME.CancelRange;
    end;
  end
  else
  begin
    //se nao entrou na condicao da variavel aDH>0
    //verifica se existe produto e nao mocimenta o estoque, se condicao for valida
    //aSaldo recebe 0 Senao aSaldo recebe o ultimo saldo de estoque do produto
    if AchouProd and tProdutoNaoControlaEstoque.Value then
      aSaldo := 0 else
      aSaldo := UltimoSaldo(aProduto);
  end;

  //Se achou o produto
  if AchouProd then
  begin
    //Habilita edicao de tProduto
    tProduto.Edit;
    //Estoque pendente a ser movimento recebe valor
    tProdutoEstoquePend.Value := aPend;
    //se o produto nao controla o estoque for verdadeiro
    //nao movimenta o estoque, senao pega o aSaldo e desconta aPend
    if tProdutoNaoControlaEstoque.Value then
      tProdutoEstoqueAtual.Clear else
      tProdutoEstoqueAtual.Value := aSaldo - aPend;
    //grava edicao
    tProduto.Post;
  end;
  //retorna saldo atualizado do produto
  Result := aSaldo-aPend;
end;

procedure TDM.Ajusta_ids_pagto(aProgresso: TProgressoEv);
var 
  I, T: Cardinal;
  S : String;

procedure Add(P: String);
begin
  if S>'' then S := S + ',';
  S := S + P;
end;

procedure _LoadPagEsp;
begin  
  tPagEsp.SetRange([tTranID.Value], [tTranID.Value]);
  tPagEsp.First;
  while not tPagEsp.Eof do begin
    Add(tPagEspEspecie.AsString);
    tPagEsp.Next;
  end;
end;

begin
  tTran.IndexName := 'ITipoID';
  tPagEsp.IndexName := 'ITranID';
  try
    tTran.SetRange([trEstVenda], [trEstVenda]);
    try
      tTran.First;
      I := 0;
      T := tTran.RecordCount;
      while not tTran.Eof do begin
        if Assigned(aProgresso) then
          aProgresso(rsAjusta_ids_pagto, I, T);
        S := '';
        if tTranDebito.Value>0 then Add('d');
        if tTranCreditoUsado.Value>0 then Add('c');
        _LoadPagEsp;
        tTran.Edit;
        tTranids_pagto.Value := S;
        tTran.Post;
        tTran.Next;
      end;
    finally
      tTran.CancelRange;
    end;
  finally
    tTran.IndexName := 'IID';
  end;
end;

procedure TDM.Ajusta_pagesp_entrada_saida_caixa(aProgresso: TProgressoEv);
var I, T: Cardinal;
begin
  tTran.IndexName := 'ITipoID';
  try
    tTran.SetRange([trCaixaEnt], [trCaixaSai]);
    try
      tTran.First;
      I := 0;
      T := tTran.RecordCount;
      while not tTran.Eof do begin
        if Assigned(aProgresso) then
          aProgresso(rsAjusta_pagesp_caixa_entrada_saida, I, T);
        SavePagEspLE(tTranID.Value, tTranTipo.Value, tTranCaixa.Value, tTranTotal.Value, tTranDataHora.Value, tTranCancelado.Value);
        tTran.Next;
      end;
    finally
      tTran.CancelRange;
    end;
  finally
    tTran.IndexName := 'IID';
  end;

  tTran.IndexName := 'ITipoID';
  try
    tTran.SetRange([trPagDebito], [trPagDebito]);
    try
      tTran.First;
      I := 0;
      T := tTran.RecordCount;
      while not tTran.Eof do begin
        SavePagEspTipoTran(tTranID.Value, tTranTipo.Value, tTranCaixa.Value);
        tTran.Next;
      end;
    finally
      tTran.CancelRange;
    end;
  finally
    tTran.IndexName := 'IID';
  end;

  tTran.IndexName := 'ITipoID';
  try
    tTran.SetRange([trEstDevolucao], [trEstDevolucao]);
    try
      tTran.First;
      I := 0;
      T := tTran.RecordCount;
      while not tTran.Eof do begin
        SavePagEspTipoTran(tTranID.Value, tTranTipo.Value, tTranCaixa.Value);
        tTran.Next;
      end;
    finally
      tTran.CancelRange;
    end;
  finally
    tTran.IndexName := 'IID';
  end;
  
end;

procedure TDM.Ajusta_Vendedor(aProgresso: TProgressoEv);
var 
  I, T: Cardinal;
  SIndex: String;
begin
  tTran.IndexName := 'ITipoID';
  tMovEst.IndexName := 'ITranItem';
  try
    tTran.SetRange([trEstVenda], [trEstVenda]);
    try
      tTran.First;
      I := 0;
      T := tTran.RecordCount;
      while not tTran.Eof do begin
        if Assigned(aProgresso) then
          aProgresso(rsGrava_Vendedor, I, T); 
        if tTranVendedor.Value='' then begin
          tTran.Edit;
          tTranVendedor.Value := tTranFunc.Value;
          tTran.Post;
        end;
        tTran.Next;
      end;
    finally
      tTran.CancelRange;
    end;

    SIndex := tAuxTran.IndexName;
    try
      tAuxTran.IndexName := 'IUID';
      tTran.SetRange([trEstDevolucao], [trEstDevolucao]);
      try
        tTran.First;
        I := 0;
        T := tTran.RecordCount;
        while not tTran.Eof do begin
          if Assigned(aProgresso) then
            aProgresso(rsGrava_Vendedor, I, T);
            
          if tTranUID_Ref.Value>'' then
          if (tTranVendedor.Value='') and tAuxTran.FindKey([tTranUID_Ref.Value]) then begin
            tTran.Edit;
            tTranVendedor.Value := tAuxTranVendedor.Value;
            tTran.Post;
          end;
          tTran.Next;
        end;
      finally
        tTran.CancelRange;
      end;
    finally
      tAuxTran.IndexName := SIndex;
    end;
  finally
    tTran.IndexName := 'IID';
    tMovEst.IndexName := 'IID';
  end;
end;

function TDM.AlteraIME(IM: TncItemMovEst; MEAnt, MEAtu: TncMovEst): Integer;
var 
  Achou, aAchouProd: Boolean;
  Ant : TncItemMovEst;
begin
  Result := 0;
  DebugMsg('TDM.AlteraIME - Produto: '+IntToStr(IM.imProduto)+' - Quant: '+FloatToStr(IM.imQuant));
  
  Ant := TncItemMovEst.Create(MEAnt);
  try
    tMovEst.IndexName := 'IID';
    tITran.IndexName := 'IID';
    Achou := tMovEst.FindKey([IM.imID]);
    if Achou then 
      Ant.LoadFromDataset(tMovEst, tMovEstTax);
    
    if IM._Operacao=osAlterar then begin
      if Achou then begin
        tDebito.IndexName := 'ITipoID';
        if tDebito.FindKey([itMovEst, Ant.imID]) then
          tDebito.Delete;
          
        AjustaSaldoPost(Ant.imProduto, Ant.imDataHora, Ant.imID, Ant.imEstoqueAnt, False);

        IM.imTran := MEAtu.ID;
        if MEAtu.PagPend then
          IM.imDataHora := 0 else
          IM.imDataHora := MEAtu.DataHora;
          
        tMovEst.Edit;

        if IM.imDataHora>0 then
          IM.imEstoqueAnt := ObtemSaldoAnt(IM.imProduto, IM.imDataHora, IM.imID);
          
        IM.SaveToDataset(tMovEst);

        if tITran.FindKey([IM.imITran]) then 
          tITran.Edit else
          Raise ENexCafe.Create('ITran '+IntToStr(IM.imITran)+' não encontrado');
          
        IM.SaveToITranDataset(tITran);
        tITran.Post;
        tMovEstITran.Value := tITranID.Value;
        tMovEst.Post;
        IM.imTaxItens.SaveToDataset(tMovEstTax);

        if (AjustaSaldoPost(IM.imProduto, IM.imDataHora, IM.imID, IM.SaldoPost, False)<0) then
        if (not tProdutoNaoControlaEstoque.Value) and
           (MEAtu.Tipo=trEstVenda) and 
           gConfig.NaoVenderAlemEstoque and 
           (not IM.imPermSemEstoque) then 
        begin
          Result := ncerrProdutoSemSaldo;
          Exit;
        end;

        if (MEAtu.Tipo=trEstCompra) and (MEAtu.Cliente>0) then SalvaProdFor(IM.imProduto, MEAtu.Cliente);

        if (IM.Debito>0.00001) and (MEAtu.ValorDebitado>0.00001) then begin
          tDebito.Insert;
          tDebitoData.Value := IM.imDataHora;
          tDebitoCliente.Value := IM.imCliente;
          tDebitoTipo.Value := itMovEst;
          tDebitoID.Value := IM.imID;
          tDebitoValor.Value := IM.Debito;
          tDebito.Post;
        end;
        
      end else
        Result := IncluiIME(IM, MEAtu);
    end else
      if Achou then begin
        tDebito.IndexName := 'ITipoID';
        if tDebito.FindKey([itMovEst, Ant.imID]) then
          tDebito.Delete;

        if tITran.FindKey([Ant.imITran]) then
          tITran.Delete; 
          
        tMovEst.Delete;
        AjustaSaldoPost(Ant.imProduto, Ant.imDataHora, Ant.imID, Ant.imEstoqueAnt, True);
      end;
  finally
    Ant.Free;
  end;
end;

function FirstWord(S: String): String;
var I : Integer;
begin
  S := Trim(S);
  Result := '';
  for I := 1 to Length(S) do
    if Copy(S, i, 1) = ' ' then
      Exit else
      Result := Result + S[i];
end; 

function TDM.CancelarTran(aID: Integer; aFunc: String): integer;
var 
  NumCx: Integer;
  NewTran: Boolean;
  P : PmsgNFEupdated;

procedure CancelAndRollback;
begin
  if not nxDB.InTransaction then Exit;

  tCaixa.Cancel;
  tCli.Cancel;
  tDebito.Cancel;
  tTran.Cancel;
  tITran.Cancel;
  tMovEst.Cancel;
  tProduto.Cancel;
  tCred.Cancel;
    
  if NewTran then nxDB.Rollback;
end;
  
begin
  Result := 0;
  NewTran := InitTran([tCaixa, tCli, tDebito, tTran, tITran, tMovEst, tCred, tProduto, tPagEsp], True);
  try
    try
      NumCx := NumCaixaAberto;
      if not PodeAlterarTran(aID) then begin
        Result := ncerrExisteTranPosterior;
        Exit;
      end;
      tTran.IndexName := 'IID';
      if not tTran.FindKey([aID]) then begin
        Result := ncerrItemInexistente;
        Exit;
      end;

      if tTranCancelado.Value then Exit;
      
      if not gPodeCancelarOutroCaixa then
      if (tTranCaixa.Value<>0) and (tTranCaixa.Value<>NumCx) then begin
        Result := ncerrCaixaDiferente;
        Exit;
      end;

      tTran.Edit;
      if tTranCaixa.Value=0 then tTranCaixa.Value := NumCx;
      tTranCancelado.Value := True;
      tTranCanceladoPor.Value := aFunc;
      tTranCanceladoEm.Value := Now;
      if (tTranDataHora.Value=0) or (tTranDataHora.IsNull) then 
        tTranDataHora.Value := tTranCanceladoEm.Value;
      tTranUpdID.AsGuid := TGuid.NewGuid;  
      tTran.Post;

      CancelarPagEsp(tTranID.Value);

      tDebito.IndexName := 'ITipoID';

      if tDebito.FindKey([itFrete, tTranID.Value]) then tDebito.Delete;

      tITran.IndexName := 'ITranID';
      tITran.SetRange([aID], [aID]);

      tMovEst.IndexName := 'IID';
      tCred.IndexName := 'IID';

      if (tTranTipo.Value = trRemCredito) and tCli.FindKey([tTranCliente.Value]) then begin
        tCli.Edit;
        tCliValorCred.Value := tCliValorCred.Value +  tTranQtdTempo.Value;
        tCli.Post;
      end;

      if (tTranTipo.Value = trEstDevolucao) and (tTranOpDevValor.Value=0) and tCli.FindKey([tTranCliente.Value]) then begin
        if tCliValorCred.Value < 0 then begin
          Result := ncerrSaldoValorInsuficiente;
          Exit;
        end;
        tCli.Edit;
        tCliValorCred.Value := tCliValorCred.Value - tTranTotal.Value;
        tCli.Post;
      end;      
      
      while not tITran.Eof do begin
        tITran.Edit;
        Result := ncerrItemInexistente;
        case tITranTipoItem.Value of
          itMovEst    : begin
            if not tMovEst.FindKey([tITranItemID.Value]) then Exit;
            tMovEst.Edit;
            if tMovEstCaixa.Value=0 then tMovEstCaixa.Value := tTranCaixa.Value;
            if (tMovEstDataHora.Value=0) or tMovEstDataHora.IsNull then tMovEstDataHora.Value := tTranDataHora.Value;
          end;
            
          itCredito   : begin
            if not tCred.FindKey([tITranItemID.Value]) then Exit;
            tCred.Edit;
          end;  
        end;
        
        if (tITranDebito.Value>0.0001) then begin
          if tDebito.FindKey([tITranTipoItem.Value, tITranItemID.Value]) then begin
            tDebito.Edit;
            tDebitoValor.Value := tDebitoValor.Value - tITranDebito.Value;
            tDebito.Post;
            if tDebitoValor.Value<0.01 then
              tDebito.Delete;
          end;
        end else
        if tTranTipo.Value=trPagDebito then begin
          
          if tDebito.FindKey([tITranTipoItem.Value, tITranItemID.Value]) then
            tDebito.Edit else
            tDebito.Insert;
            
          tDebitoTipo.Value := tITranTipoItem.Value;
          tDebitoID.Value := tITranItemID.Value;
          tDebitoCliente.Value := tTranCliente.Value;
          tDebitoData.Value := tTranDataHora.Value;
          tDebitoValor.Value := tDebitoValor.Value + tITranPago.Value + tITranDesconto.Value;
          tDebito.Post;

          case tITranTipoItem.Value of
            itMovEst    : begin
              tMovEstPagoPost.Value := tMovEstPagoPost.Value - tITranPago.Value;
              tMovEstDescPost.Value := tMovEstDescPost.Value - tITranDesconto.Value;
            end;
          end; 
        end;
        if tITranCaixa.Value=0 then tITranCaixa.Value := NumCx;
        if (tITranDataHora.Value=0) or (tITranDataHora.IsNull) then tITranDataHora.Value := tTranDataHora.Value;
        tITranCancelado.Value := True;
        tITran.Post;

        if tTranTipo.Value<>trPagDebito then 
        case tITranTipoItem.Value of
          itMovEst    : begin
            tMovEstCancelado.Value := True;
            tMovEstEstoqueAnt.Value := ObtemSaldoAnt(tMovEstProduto.Value, tMovEstDataHora.Value, tMovEstID.Value);
            tMovEst.Post;

            if tMovEstDebDev.Value>0 then begin
              tDebito.IndexName := 'ITipoID';
              if tDebito.FindKey([1, tMovEstID_Ref.Value]) then begin
                tDebito.Edit;
                tDebitoValor.Value := tDebitoValor.Value + tMovEstDebDev.Value;
              end else begin
                if not tAuxME.Locate('ID', tMovEstID_Ref.Value, []) then begin
                  DebugMsgEsp('ncDMServ.TDM.CancelarTran - MovEst não escontrado '+tMovEstID_Ref.AsString, False, True);
                  Result := ncerros.ncerrItemInexistente;
                  Exit;
                end;
                tDebito.Append;
                tDebitoCliente.Value := tAuxMECliente.Value;
                tDebitoData.Value := tAuxMEDataHora.Value;
                tDebitoTipo.Value := 1;
                tDebitoID.Value := tMovEstID_Ref.Value;
                tDebitoValor.Value := tMovEstDebDev.Value;
              end;
              tDebito.Post;
            end;

            if tTranTipo.Value in [trEstVenda, trEstCompra, trEstEntrada, trEstSaida, trEstDevolucao] then
              AjustaSaldoPost(tMovEstProduto.Value, tMovEstDataHora.Value, tMovEstID.Value, tMovEstEstoqueAnt.Value, True);
          end;  
          
          itCredito   : begin
            tCredCancelado.Value := True;
            if tTranCliente.Value>0 then
            if not tCli.FindKey([tTranCliente.Value]) then begin
              Result := ncerrItemInexistente;
              Exit;
            end else begin
              if tCredAdicionar.Value and (tCliValorCred.Value<tCredValor.Value) then begin
                Result := ncerrSemCreditoDispCanc;
                Exit;
              end else begin
                tCli.Edit;
                if tCredAdicionar.Value then
                  tCliValorCred.Value := tCliValorCred.Value - tCredValor.Value else
                  tCliValorCred.Value := tCliValorCred.Value + tCredValor.Value;
                tCli.Post;
              end;
            end;
          end;
        
        end;

        case tITranTipoItem.Value of
          itMovEst    : if tMovEst.State=dsEdit then tMovEst.Post;
          itCredito   : if tCred.State=dsEdit then tCred.Post;
        end;
        
        tITran.Next;
      end;

      if NewTran and (not FidControl.CanCommit(True)) then begin
        Result := ncerrSaldoFidInsuficiente;
        Exit;
      end;
      
      Result := 0;

      if tTranCliente.Value>0 then 
      if tCli.Locate('ID', tTranCliente.Value, []) then begin
        RefreshDebitoCliente;
      end;
      if NewTran then nxDB.Commit;

      New(P);
      P.msgCCE := False;
      P.msgUID := tTranUID.AsGuid;
      PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);
      
    except
      CancelAndRollback;
      Raise;
    end;
  finally
    try
      tITran.CancelRange;
    except
    end;
    CancelAndRollback;
  end;
end;

function TDM.CancelaTranNFe(aNFe: String): String;
var 
  NumCx: Integer;
  NewTran, aAchou: Boolean;
  P : PmsgNFEUpdated;

procedure CancelAndRollback;
begin
  if not nxDB.InTransaction then Exit;

  tCaixa.Cancel;
  tCli.Cancel;
  tDebito.Cancel;
  tTran.Cancel;
  tITran.Cancel;
  tMovEst.Cancel;
  tProduto.Cancel;
  if NewTran then nxDB.Rollback;
end;
  
begin
  Result := '';
  NewTran := InitTran([tCaixa, tCli, tDebito, tTran, tITran, tMovEst, tProduto, tPagEsp], True);
  try
    try
      if (not tTran.Locate('ChaveNFE', aNFe, [])) or (not tNFe.Locate('Chave', aNFe, [])) then begin
        Result := 'NFe ou Transação não encontrada no banco de dados';
        Exit;
      end;

      tTran.Edit;
      if tTranCaixa.Value=0 then tTranCaixa.Value := NumCx;
      tTranCancelado.Value := True;
      tTranCanceladoPor.Value := tNFeCanceladoPor.Value;
      tTranCanceladoEm.Value := Now;
      tTranUpdID.AsGuid := TGuid.NewGuid;  
      tTranStatusCanc.Value := statuscanc_nfe_ok;
      if (tTranDataHora.Value=0) or (tTranDataHora.IsNull) then 
        tTranDataHora.Value := tTranCanceladoEm.Value;
      tTran.Post;

      tNFe.Edit;
      tNFEStatusCanc.Value := statuscanc_nfe_ok;
      tNFe.Post;

      CancelarPagEsp(tTranID.Value);

      tDebito.IndexName := 'ITipoID';

      tITran.IndexName := 'ITranID';
      tITran.SetRange([tTranID.Value], [tTranID.Value]);

      tMovEst.IndexName := 'IID';

      while not tITran.Eof do begin
        aAchou := False;
        tITran.Edit;
        case tITranTipoItem.Value of
          itMovEst    : begin
            aAchou := tMovEst.FindKey([tITranItemID.Value]);
            if aAchou then begin
              tMovEst.Edit;
              if tMovEstCaixa.Value=0 then tMovEstCaixa.Value := tTranCaixa.Value;
              if (tMovEstDataHora.Value=0) or tMovEstDataHora.IsNull then tMovEstDataHora.Value := tTranDataHora.Value;
            end;  
          end;
        end;
        
        if (tITranDebito.Value>0.0001) then begin
          if tDebito.FindKey([tITranTipoItem.Value, tITranItemID.Value]) then begin
            tDebito.Edit;
            tDebitoValor.Value := tDebitoValor.Value - tITranDebito.Value;
            tDebito.Post;
            if tDebitoValor.Value<0.01 then
              tDebito.Delete;
          end;
        end;
        
        if tITranCaixa.Value=0 then tITranCaixa.Value := NumCx;
        if (tITranDataHora.Value=0) or (tITranDataHora.IsNull) then tITranDataHora.Value := tTranDataHora.Value;
        tITranCancelado.Value := True;
        tITran.Post;

        case tITranTipoItem.Value of
          itMovEst    : 
          if aAchou then begin
            tMovEstCancelado.Value := True;
            tMovEstEstoqueAnt.Value := ObtemSaldoAnt(tMovEstProduto.Value, tMovEstDataHora.Value, tMovEstID.Value);
            tMovEst.Post;

            if tTranTipo.Value in [trEstVenda, trEstCompra, trEstEntrada, trEstSaida, trEstDevolucao] then
              AjustaSaldoPost(tMovEstProduto.Value, tMovEstDataHora.Value, tMovEstID.Value, tMovEstEstoqueAnt.Value, True);
          end;  
        end;

        case tITranTipoItem.Value of
          itMovEst    : if (aAchou) and (tMovEst.State=dsEdit) then tMovEst.Post;
        end;
        
        tITran.Next;
      end;

      if tTranCliente.Value>0 then 
      if tCli.Locate('ID', tTranCliente.Value, []) then begin
        RefreshDebitoCliente;
      end;
      nxDB.Commit;

      New(P);
      P.msgCCE := False;
      P.msgUID := tTranUID.AsGuid;
      PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);
    except
      CancelAndRollback;
      Raise;
    end;
  finally
    try
      tITran.CancelRange;
    except
    end;
    CancelAndRollback;
  end;
end;

procedure TDM.Close;
begin
  nxDB.Close;
  nxSession.Close;
end;

procedure TDM.CorrigeClienteDeb;
begin
  tDebito.First;
  while not tDebito.Eof do begin
    if tMovEst.Locate('ID', tDebitoID.Value, []) and tTran.Locate('ID', tMovEstTran.Value, []) and (tDebitoCliente.Value<>tTranCliente.Value) then
    begin
      tDebito.Edit;
      tDebitoCliente.Value := tTranCliente.Value;
      tDebito.Post;

      tMovEst.Edit;
      tMovEstCliente.Value := tTranCliente.Value;
      tMovEst.Post;
    end;
    tDebito.Next;
  end;
end;

procedure TDM.CorrigeCusto(aProgresso: TProgressoEv = nil);
var 
  SIndex: String;
  D : TDateTime;
  C, U : Currency;
  Q : TnxQuery;
  P, T : Cardinal;

function UltimoCusto: Currency;
begin
  tMovEst.SetRange([tProdutoID.Value, True], [tProdutoID.Value, True]);
  if tMovEst.Eof and tMovEst.Bof then begin
    Result := 0;
    D := 0;
    C := 0;
  end else begin
    tMovEst.Last;
    Result := tMovEstCustoU.Value;
    C := Result;
    D := tMovEstDataHora.Value;
  end;
end;

procedure AddCusto;
var ME: TncMovEst;
begin
  ME := TncMovEst.Create;
  try
    ME.Caixa := -1;
    ME.DataHora := Now;
    ME.Func := 'sistema';
    ME.Operacao := osIncluir;
    ME.Tipo := trAjustaCusto;
    with ME.NewIME do begin
      imQuant := 0;
      imUnitario := tProdutoCustoUnitario.Value;
      imCustoU := imUnitario;
      
      imProduto := tProdutoID.Value;
      imItem := 1;
      imTipoTran := trAjustaCusto;
      _Operacao := osIncluir;
    end;
    SalvaMovEstCustom(ME, True);
  finally
    ME.Free;
  end;
end;

begin
  SIndex := tMovEst.IndexName;

  try
    tMovEst.IndexName := 'IProdAjustaCustoTran';
    P := 0;
    T := tProduto.RecordCount;
    tProduto.First;
    while not tProduto.Eof do begin
      Inc(P);
      if Assigned(aProgresso) then aProgresso('Corrigindo custo atual dos produtos', P, T);
      U := UltimoCusto;
      if (U<>tProdutoCustoUnitario.Value) then 
        if (tProdutoCustoUnitario.Value>0) then 
          AddCusto 
        else
        if (U>0) then begin
          tProduto.Edit;
          tProdutoCustoUnitario.Value := U;
          tProduto.Post;
        end;
      tProduto.Next;
    end;

    tMovEst.IndexName := 'ITipoTranCaixa';
    tMovEst.SetRange([trEstVenda], [trEstVenda]);
    try
      P := 0;
      T := tMovEst.RecordCount;
      tMovEst.First;
      while not tMovEst.Eof do begin
        Inc(P);
        if Assigned(aProgresso) then aProgresso('Corrigindo custo das vendas', P, T);
        if (not tMovEstCancelado.Value) and (tMovEstCustoU.Value=0) then begin
          tMovEst.Edit;
          tMovEstCustoU.Clear;
          tMovEst.Post;
        end;
        tMovEst.Next;
      end;
    finally
      tMovEst.CancelRange;
    end;

    tMovEst.IndexName := 'ITipoTranCaixa';
    tMovEst.SetRange([trEstCompra], [trEstCompra]);
    try
      P := 0;
      T := tMovEst.RecordCount;
      tMovEst.First;
      while not tMovEst.Eof do begin
        Inc(P);
        if Assigned(aProgresso) then aProgresso('Corrigindo custo das compras', P, T);
        if (not tMovEstCancelado.Value) and (tMovEstCustoU.Value=0) then begin
          tMovEst.Edit;
          tMovEstCustoU.Clear;
          tMovEst.Post;
        end;
        tMovEst.Next;
      end;
    finally
      tMovEst.CancelRange;
    end;    

    syslog_add('corrigecusto2');
  finally
    tMovEst.IndexName := SIndex;
  end;

end;

procedure TDM.CorrigeCustoT(aProgresso: TProgressoEv = nil);
var SIndex : String;
  I, T: Cardinal;
begin
  DebugMsg('CorrigeCustoT - 1');
  SIndex := tMovEst.IndexName;
  try
    tMovEst.IndexName := 'ITipoTranDataHora';
    tMovEst.SetRange([trEstVenda], [trEstVenda]);
    T := tMovEst.RecordCount;
    I := 0;
    while not tMovEst.Eof do begin
      tMovEst.Edit;
      try 
        tMovEstCustoT.Value := tMovEstCustoU.Value * tMovEstQuant.Value; 
        tMovEstLucro.Value := tMovEstTotLiq.Value - tMovEstCustoT.Value;
        tMovEst.Post;
      except
        on E: Exception do begin
          tMovEst.Cancel;
          DebugEx(Self, 'CorrigeCustoT', E);
        end;
      end;
      Inc(I);
      if Assigned(aProgresso) then aProgresso(rsCorrigeLucro, I, T);
      
      tMovEst.Next;
    end;
  finally
    tMovEst.CancelRange;
    tMovEst.IndexName := SIndex;
  end;
  
  DebugMsg('CorrigeCustoT - 2');
end;

function TDM.CorrigeDataCaixa(aFunc: String; aID: Integer; aNovaAbertura,
  aNovoFechamento: TDateTime): integer;
var 
  NewTran: Boolean;
  NumCx: Integer;  
  S: String;

procedure CancelAndRollback;
begin
  if not nxDB.InTransaction then Exit;
  tCaixa.Cancel;
  tTran.Cancel;
  if NewTran then nxDB.Rollback;
end;

begin
  NewTran := InitTran([tCaixa, tTran], True);
  try
    if not tCaixa.Locate('ID', aID, []) then begin
      Result := ncerrItemInexistente;
      Exit;
    end;
    tTran.Insert;
    tCaixa.Edit;
    S := 'Caixa n.' + IntToStr(aID);
    tTranDescricao.Value := S;
    if (aNovaAbertura>(EncodeDate(2000, 1, 1))) and (aNovaAbertura<>tCaixaAbertura.Value) then 
    begin
      S := S + sLineBreak + 'Abertura alterada de  ' + tCaixaAbertura.AsString;
      tCaixaAbertura.Value := aNovaAbertura;
      S := S + '  para  ' + tCaixaAbertura.AsString
    end;
    
    if (aNovoFechamento>(EncodeDate(2000, 1, 1))) and (aNovoFechamento<>tCaixaFechamento.Value) then 
    begin
      S := S + sLineBreak + 'Fechamento alterado de  ' + tCaixaFechamento.AsString;
      tCaixaFechamento.Value := aNovoFechamento;
      S := S + '  para  ' + tCaixaFechamento.AsString;
    end;
    tCaixa.Post;

    tTranObs.Value := S;
    tTranFunc.Value := aFunc;
    tTranDataHora.Value := Now;
    tTranTipo.Value := trCorrDataCx;
    tTranCaixa.Value := NumCx;
    tTran.Post;
    nxDB.Commit;
    Result := 0;
  finally
    CancelAndRollback;
  end;  
end;

procedure TDM.CorrigeDataITran(aProgresso: TProgressoEv = nil);
var 
  I, T: Integer;
  Tot : Currency;
  Avancar : Boolean;


function CalcDebDif: Boolean;
begin
  tITran.SetRange([tDebitoTipo.Value, tDebitoID.Value], [tDebitoTipo.Value, tDebitoID.Value]);
  try
    tITran.First;
    Tot := 0;
    while not tITran.Eof do begin
      if not tITranCancelado.Value then
        if tITranTipoTran.Value=trPagDebito then
          Tot := Tot - tITranPago.Value else
          Tot := Tot + tITranDebito.Value;
      tITran.Next;    
    end;
    Result := (Abs(Tot - tDebitoValor.Value) > 0.001);
  finally
    tITran.CancelRange;
  end;
end;

begin
  
  I := 0;
  T := tITran.RecordCount;
  tITran.First;
  while not tITran.Eof do begin
    if (tITranDataHora.Value=0) and tTran.Locate('ID', tITranTran.Value, []) then begin
      tITran.Edit;
      tITranDataHora.Value := tTranDataHora.Value;
      tITran.Post;
    end;
    tITran.Next;

    if Assigned(aProgresso) then aProgresso('Verificando data e hora dos itens das transações', I, T);
    Inc(I);
  end;

  tITran.IndexName := 'ITipoItemDH';

  tDebito.First;
  while not tDebito.Eof do begin
    Avancar := True;
    if CalcDebDif then
      if Tot>0 then begin
        tDebito.Edit;
        tDebitoValor.Value := Tot;
        tDebito.Post;
      end else begin
        tDebito.Delete;
        Avancar := False;
      end;
      
    if Assigned(aProgresso) then aProgresso('Verificando débito dos clientes', I, T);
    if Avancar then
      tDebito.Next;
  end;

  ReprocessaDebitos;
end;

procedure TDM.CorrigeDebPagPend(aProgresso: TProgressoEv);
var I, T : Integer;
begin
  try
    tTran.First;
    I := 0;
    T := tTran.RecordCount;
    while not tTran.Eof do begin
      if (not tTranCancelado.Value) and (not tTranPagPend.Value) and (tTranDebito.Value>0) and (tTranCliente.Value>0) then
      begin
        tITran.SetRange([tTranID.Value], [tTranID.Value]);
        tITran.First;
        while not tITran.Eof do begin
          if tITranPagPend.Value then begin
            tITran.Edit;
            tItranPagPend.Value := False;
            tITran.Post;
            if tITranDebito.Value>0 then begin
              tDebito.Insert;
              tDebitoData.Value := tITranDataHora.Value;
              tDebitoCliente.Value := tTranCliente.Value;
              tDebitoTipo.Value := 1;
              tDebitoID.Value := tITranItemID.Value;
              tDebitoValor.Value := tITranDebito.Value;
              tDebito.Post;
            end;
          end;
          tITran.Next;
        end;
      end;
      tTran.Next;
      Inc(I);
      if Assigned(aProgresso) then aProgresso('Verificando débito dos clientes', I, T);
    end;  
    ReprocessaDebitos;
  finally
    try tTran.CancelRange; except end;
  end;  
end;

procedure TDM.CorrigeDescontos(aProgresso: TProgressoEv);
var 
  SIndex : String;
  P, T : Cardinal;

procedure _RecalcDesc;
var 
  I: Integer;
  ME : TncMovEst;
begin
  ME := TncMovEst.Create;
  try
    ME.LeDataset(tTran);
    LoadIMEs(ME);
    ME.SalvaDescPago;
    tMovEst.IndexName := 'IID';  
    for I := 0 to ME.Itens.Count-1 do with ME.Itens[I] do begin 
      if tMovEst.FindKey([imID]) and (tMovEstDesconto.Value<>imDesconto) then begin
        tMovEst.Edit;
        tMovEstDesconto.Value := imDesconto;
        tMovEst.Post;
      end;

      if tITran.FindKey([imITran]) and (tITranDesconto.Value<>imDesconto) then begin
        tITran.Edit;
        tITranDesconto.Value := imDesconto;
        tITran.Post;
      end;
    end;  
  finally
    ME.Free;
  end;
end;
  
begin                
  SIndex := tITran.IndexName;
  try
    tMovEst.IndexName := 'IID';
    tITran.IndexName := 'IID';
    tTran.First;
    T := tTran.RecordCount;
    P := 0;
    while not tTran.Eof do begin
      Inc(P);
      if Assigned(aProgresso) then
        aProgresso('Recalculando rateio de descontos ...', P, T);
      if tTranTipo.Value = trEstVenda then _RecalcDesc;
      tTran.Next;
    end;
  finally
    tITran.IndexName := SIndex;
  end;  
end;

procedure TDM.CorrigeErroCancelamentoPagEsp;
var SIndex: String;
begin
  SIndex := tTran.IndexName;
  try
    tTran.IndexName := 'IID';
    tPagEsp.First;
    while not tPagEsp.Eof do begin
      if tTran.FindKey([tPagEspTran.Value]) and (tTranCancelado.Value <> tPagEspCancelado.Value) then begin
        tPagEsp.Edit;
        tPagEspCancelado.Value := tTranCancelado.Value;
        tPagEsp.Post;
      end;
  
      tPagEsp.Next;
    end;
  finally
    tTran.IndexName := SIndex;
  end;
end;

function ZeroLeft(S: String; T: Integer): String;
begin
  Result := S;
  while Length(Result)<T do Result := '0'+Result;
end;

procedure TDM.CorrigeErroITranDebCli(aProgresso: TProgressoEv);
var 
  sl, sl2 : TStringList;
  T, I  : Cardinal;
  DebAnt : Currency;

function Maior: Boolean;
begin
  if tMovEst.FindKey([tITranItemID.Value]) then
    Result := (tITranTotal.Value > (tMovEstTotal.Value-tMovEstDesconto.Value)) else
    Result := False;
end;  

function TemErro: Boolean;
begin
  Result := True;
  tITran.SetRange([tTranID.Value], [tTranID.Value]);
  try
    tITran.First;
    while not tITran.Eof do begin
      if Maior then Exit;
      tITran.Next;
    end;
    Result := False;
  finally
    tITran.CancelRange;
  end;
end;

begin
  tTran.IndexName := 'ITipoDH';
  tITran.IndexName := 'ITranID';
  tMovEst.IndexName := 'IID';
  sl := TStringList.Create;
  sl2 := TStringList.Create;
  try
    tTran.SetRange([trPagDebito], [trPagDebito]);
    tTran.First;
    T := tTran.RecordCount;
    I := 0;
    while not tTran.Eof do begin
      Inc(I);
      if Assigned(aProgresso) then aProgresso('Totalizando débitos ...', I, T);
      if (sl.IndexOf(tTranCliente.AsString)=-1) and TemErro then 
        sl.Add(tTranCliente.AsString);
      tTran.Next;
    end;

    tCli.IndexName := 'IID';

    while sl.Count > 0 do begin
      if tCli.FindKey([StrToInt(sl[0])]) then begin
        DebAnt := tCliDebito.Value;
        refaz_itran_debcli;
        if DebAnt <> tCliDebito.Value then 
          sl2.Add(ZeroLeft(tCliCodigo.Value, 4) + ' - ' + tCliNome.Value);
      end;
      
      sl.Delete(0);
    end;

    if sl2.Count>0 then begin
      sl2.Sort;
      sl2.SaveToFile(ExtractFilePath(ParamStr(0))+'debitos_corrigidos2.txt');
    end;
    
  finally
    sl.Free;
    sl2.Free;
    tTran.CancelRange;
    tTran.IndexName := 'IID';
    tITran.IndexName := 'IID';
  end;
end;

procedure TDM.CorrigePgDebitoDesc(aProgresso: TProgressoEv = nil);  
var 
  sl: TStringList;
  l, lFrete : TList;
  S : String;
  Deb: Currency;

  trecs, rec: Cardinal;

function TinhaErro: Boolean;
var 
  D, P, T: Currency;
  ItemID : Pointer;
begin
  D := 0;
  Result := False;
  tITran.IndexName := 'ITranID';
  tITran.SetRange([tTranID.Value], [tTranID.Value]);
  try
    tITran.First;
    while (not tITran.Eof) and (not Result) do begin
      if tITranDesconto.Value<-0.01 then 
        Result := True
      else begin
        D := D + tITranDesconto.Value;
        Result := (D > tTranDesconto.Value);
      end;
      tITran.Next;
    end;
    if not Result then Exit;

    D := tTranDesconto.Value;
    P := tTranPago.Value + tTranCreditoUsado.Value;

    if tTranFrete.Value>0 then begin
      if P>tTranFrete.Value then
        P := P - tTranFrete.Value else
        P := 0;
    end;
    
    tITran.First;

    while (not tITran.Eof) do begin
      tITran.Edit;
      if tITranTotal.Value>D then begin
        tITranDesconto.Value := D;
        D := 0;
      end else begin
        tITranDesconto.Value := tITranTotal.Value;
        D := D - tITranTotal.Value;
      end;

      T := tITranTotal.Value-tITranDesconto.Value;
      if T>P then begin
        tITranPago.Value := P;
        P := 0;
      end else begin
        tITranPago.Value := T;
        P := P - T;
      end;
      tITran.Post;
      
      ItemID := Pointer(tITranItemID.Value);
      if tITranTipoItem.Value=itFrete then begin
        if lFrete.IndexOf(itemID)=-1 then lFrete.Add(ItemID);
      end else begin
        if l.IndexOf(itemID)=-1 then l.Add(ItemID);
      end;
      tITran.Next;
    end;
  finally
    tITran.CancelRange;
    tITran.IndexName := 'IID';
  end;
end;

procedure CorrigeItemDeb(Tipo: Byte; ID: Cardinal);
var 
  DH : TDateTime;
  D : Currency;
  Cli : Cardinal;
begin
  D := 0;
  DH := 0;
  tITran.IndexName := 'ITipoItemDH';
  tITran.SetRange([Tipo, ID], [Tipo, ID]);
  try
    tITran.First;
    while not tITran.Eof do begin
      Cli := tITranCliente.Value;
      if not tITranCancelado.Value then
        if tITranTipoTran.Value=trPagDebito then
          D := D - (tITranPago.Value + tITranDesconto.Value) 
        else begin
          D := D + (tITranTotal.Value - tITranDesconto.Value) - tITranPago.Value;   
          DH := tITranDataHora.Value;
        end;
      tITran.Next;
    end;

    if D>0.009 then begin
      if not tDebito.FindKey([Tipo, ID]) then begin
        tDebito.Append;
        tDebitoData.Value := DH;
        tDebitoCliente.Value := Cli;
        tDebitoTipo.Value := Tipo;
        tDebitoID.Value := ID;
      end else
        tDebito.Edit;
      tDebitoValor.Value := D;
      tDebito.Post;
    end else 
      if tDebito.FindKey([Tipo, ID]) then tDebito.Delete;
  finally
    tITran.CancelRange;
  end;   
end;

begin
  tTran.IndexName := 'ITipoDH';
  tDebito.IndexName := 'ITipoID';
  sl := TStringList.Create;
  l := tList.Create;
  lFrete := tList.Create;
  try
    InitTran([tTran, tCli, tDebito, tITran, tMovEst], True);
    try
      tTran.SetRange([8], [8]);
      try
        trecs := tTran.RecordCount;
        tTran.First;
        rec := 0;
        while not tTran.Eof do begin
          Inc(rec);
          if Assigned(aProgresso) then aProgresso('Corrigindo débitos parte 1 / 3', rec, trecs);
          
          if (not tTranCancelado.Value) and (tTranDesconto.Value>0) then
          if TinhaErro then
          if tCli.Locate('ID', tTranCliente.Value, []) then begin
            S := ZeroLeft(tCliCodigo.Value, 4) + ' - ' + tCliNome.Value;
            if sl.IndexOf(S)=-1 then sl.Add(S);
          end;
          tTran.Next;
        end;
      finally
        tTran.CancelRange;
      end;

      trecs := L.Count;
      rec := 0;
      while L.Count>0 do begin
        Inc(rec);
        if Assigned(aProgresso) then aProgresso('Corrigindo débitos parte 2 / 3', rec, trecs);
      
         CorrigeItemDeb(itMovEst, Cardinal(L[0]));
         L.Delete(0);
      end;

      trecs := lFrete.Count;
      rec := 0;
      while lFrete.Count>0 do begin
        Inc(rec);
        if Assigned(aProgresso) then aProgresso('Corrigindo débitos parte 3 / 3', rec, trecs);
      
         CorrigeItemDeb(itFrete, Cardinal(lFrete[0]));
         lFrete.Delete(0);
      end;

      ReprocessaDebitos;
      nxDB.Commit;
      
      if sl.Count>0 then begin
        sl.Sort;
        sl.SaveToFile(ExtractFilePath(ParamStr(0))+'debitos_corrigidos.txt');
      end;  
    except
      on E: Exception do begin
        if nxDB.InTransaction then nxDB.Rollback;
        DebugMsgEsp('TDM.CorrigePgDebitoDesc - Exception: ' + E.Message, False, True);
      end;  
    end;
  finally
    sl.Free;
    l.Free;
    lFrete.Free;
    tTran.IndexName := 'IID';
    tITran.IndexName := 'IID';
  end;
end;

function ExtractvNF(aXML: String): String;
var P : Integer;
begin
  Result := '';
  P := Pos('<vNF>', aXML);
  if P<1 then Exit;
  Delete(aXML, 1, P+4);
  P := Pos('</vNF>', aXML);
  if P<1 then Exit;
  Result := Trim(Copy(aXML, 1, P-1));
end;

procedure TDM.CorrigeTotalNF(aProgresso: TProgressoEv);
var 
  S: String;
  rec, trecs : Cardinal;
begin
  tNFe.First;
  while not tNFE.Eof do begin
    rec := 0;
    trecs := 0;
    if Assigned(aProgresso) then aProgresso('NFE: Corrigindo TotalNF', rec, trecs);
  
    if (tNFETipoDoc.Value=tiponfe_nfe) then begin
      S := tNFEXmlDest.Value;
      if S='' then S := tNFEXMLTrans.Value;
      if S>'' then S := ExtractvNF(S);
      tNFE.Edit;
      if S>'' then 
        tNFETotalNF.Value := StrParaFloat(S);
      if tNFETotalNF.Value=0 then tNFETotalNF.Value := tNFEValor.Value;
      tNFE.Post;
    end;
    tNFE.Next;
  end;
end;

function DuasCasas(Value: Currency): Currency;
begin
  Result := Trunc(Value * 100) / 100;                          
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  FidControl := TFidControl.Create(Self);
  FBuildEvolveDb := nil;
end;

function TDM.DebMovEst(aID: Cardinal): Currency;
var 
  SIndex : String;
  T: Currency;
begin
  if not tMovEst.Locate('ID', aID, []) then begin
    Result := 0;
    Exit;
  end;
  Result := tMovEstTotalFinal.Value - tMovEstPago.Value;
  if Result<0.01 then Exit;

  SIndex := tAuxME.IndexName;
  try
    T := 0;
    tAuxME.IndexName := 'IID_ref';
    tAuxME.SetRange([tMovEstID.Value, trEstDevolucao, False], 
                    [tMovEstID.Value, trEstDevolucao, False]);
    while not tAuxME.Eof do begin
      T := T + tAuxMEDebDev.Value;
      tAuxME.Next;
    end;
  finally
    tAuxME.IndexName := SIndex;
  end;

  Result := Result - T;

  SIndex := tITran.IndexName;
  try
    T := 0;
    tITran.IndexName := 'ICanceladoTipoTranItemID';
    tITran.SetRange([False, trPagDebito, tMovEstID.Value], 
                    [False, trPagDebito, tMovEstID.Value]);
    while not tITran.Eof do begin
      T := T + tITranDesconto.Value + tITranPago.Value;
      tITran.Next;
    end;
  finally
    tITran.IndexName := SIndex;
  end;  

  Result := Result - T;
end;

function TDM.ExcluiIME(IM: TncItemMovEst; MEAnt, MEAtu: TncMovEst): Integer;
begin
  Result := 0;
  tMovEst.IndexName := 'IID';
  tITran.IndexName := 'IID';
  try
    if not tMovEst.FindKey([IM.imID]) then Exit;
    
    tDebito.IndexName := 'ITipoID';
    if tDebito.FindKey([itMovEst, IM.imID]) then
      tDebito.Delete;
    AjustaSaldoPost(IM.imProduto, IM.imDataHora, IM.imID, IM.imEstoqueAnt, True);
    while tMovEstTax.FindKey([IM.imID]) do tMovEstTax.Delete;

    tMovEst.Delete;
    if tITran.FindKey([IM.imITran]) then
      tITran.Delete;
  except
    on E: ENexCafe do begin
       DebugMsgEsp(Self, 'ExcluiIME ENexCafe: '+E.Message, False, True);
       Result := ncerrExcecaoNaoTratada_TDM_ExcluiIME;
    end;
  end;
end;

procedure TDM.ExecQuery(aQuery: String);
var Q: TnxQuery;
begin
  Q := TnxQuery.Create(Self);
  try
    Q.Timeout := 300000;
    Q.Database := nxDB;
    Q.SQL.Text := aQuery;
    Q.ExecSQL;
  finally
    Q.Free;
  end;
end;

procedure TDM.ExpiraOrcamentosPendentes;
begin
  tOrc.Active := True;
  tOrc.IndexName := 'IStatusValData';
  tOrc.SetRange([orcamento_pendente, EncodeDate(1980, 1, 1)], [orcamento_pendente, Date-1]);
  try
    tOrc.First;
    while not tOrc.Eof do begin
      tOrc.Edit;
      tOrcStatus.Value := orcamento_expirado;
      tOrc.Post;
      tOrc.First;
    end;
  finally
    tOrc.CancelRange;
  end;
end;

function TDM.FuncCaixaAberto: String;
begin
  tCaixa.Refresh;
  if tCaixa.FindKey([True]) then 
    Result := tCaixaUsuario.Value
  else
    Result := '';
end;

procedure TransfDadosEsp(TF, TD: TDataset; ExceptFields: String);
var 
  I : Integer;
  F : TField;
begin
  ExceptFields := UpperCase(ExceptFields);
  with TD do
  for I := 0 to pred(Fields.Count) do with Fields[I] do 
  if (FieldKind=fkData) and (Pos('|'+UpperCase(FieldName)+'|', ExceptFields)=0) then begin
    F := TF.FindField(FieldName);
    if (F <> nil) and (F.FieldKind=fkData) then 
    if (TD is TkbmMemTable) or (TD.State<>dsInsert) or (F.DataType<>ftAutoInc) then
      Value := F.Value;
  end;
end;


procedure TDM.ImportNewDoc(aProgresso: TProgressoEv);
var 
  S: String;
  T: TnxTable;
  aID, I, Tot: Cardinal;

procedure _Imp;
begin  
  if tDoc.FindKey([T.FieldByName('UID').AsString]) then begin
    if (tDocSRecVer.Value>=T.FieldByName('SRECVER').AsLongWord) then Exit;
    aID := tDocID.Value;
    tDoc.Edit;
  end else begin
    aID := 0;
    tDoc.Append;
  end;

  TransfDadosEsp(T, tDoc, '|ID|');  

  if aID=0 then
    tDocID.Clear else
    tDocID.Value := aID;

  tDoc.Post;    
end;
  
begin
  S := ExtractFilePath(ParamStr(0))+'dados\newDoc.nx1';
  if not FileExists(S) then Exit;

  T := TnxTable.Create(Self);
  try
    try
      T.Database := Self.nxDB;
      T.TableName := 'newDoc';
      T.Open;
      I := 0;
      Tot := T.RecordCount;
      T.First;
      tDoc.IndexName := 'IUID';
      while not T.Eof do begin
        Inc(I);
        _Imp;
        T.Next;
        if Assigned(aProgresso) then
          aProgresso(rsImportNewDoc, I, Tot);        
      end;
      T.Close;
      T.DeleteTable;
    except
      on E: Exception do 
        DebugMsgEsp('TDM.ImportNewDoc - Exception: '+E.Message+' - ID: '+T.FieldByName('ID').AsString, False, True);
    end;
  finally
    T.Free;
  end;
end;

function TDM.IncluiIME(IM: TncItemMovEst; ME: TncMovEst): Integer;
var
  aAchouProd: Boolean;
  aSaldo : Double;
  aPerm  : Boolean;
begin
  Result := 0;

  DebugMsg('TDM.IncluiIME - Produto: '+IntToStr(IM.imProduto)+' - Quant: '+FloatToStr(IM.imQuant));
  
  if not ME.PagPend then
    IM.imEstoqueAnt := ObtemSaldoAnt(IM.imProduto, IM.imDataHora, IM.imID);
    
  aAchouProd := tProduto.FindKey([IM.imProduto]);
     
  tMovEst.Insert;
  tMovEstIncluidoEm.Value := DataHoraTran;
  IM.imTran := ME.ID;
  IM.imNaoControlaEstoque := IM.imNaoControlaEstoque or (aAchouProd and tProdutoNaoControlaEstoque.Value);
  if not ME.PagPend then
    IM.imDataHora := ME.DataHora else
    IM.imDataHora := 0;
  IM.SaveToDataset(tMovEst);

  if (IM.imTipoTran=trEstDevolucao) and tAuxME.Locate('ID', IM.imID_Ref, []) then
  begin
    tMovEstComissaoPerc.Value := tAuxMEComissaoPerc.Value;
    tMovEstComissaoLucro.Value := tAuxMEComissaoLucro.Value;
    tMovEstCustoU.Value := tAuxMECustoU.Value;
    tMovEstComissao.Value := -1 * (tAuxMEComissao.Value * (tMovEstQuant.Value / tAuxMEQuant.Value));
  end;
  
  tMovEst.Post;
  
  IM.imID := tMovEstID.Value;

  tITran.Insert;
  tITranIncluidoEm.Value := DataHoraTran;
  IM.SaveToITranDataset(tITran);
  tITran.Post;
  
  IM.imITran := tITranID.Value;
  tMovEst.Edit;
  tMovEstITran.Value := tITranID.Value;
  tMovEst.Post;

  IM.imTaxItens.SaveToDataset(tMovEstTax);

  if (ME.Tipo=trEstCompra) and (ME.Cliente>0) then SalvaProdFor(IM.imProduto, ME.Cliente);

  if (IM.Debito>0.00001) and (ME.ValorDebitado>0.00001) then begin
    tDebito.Insert;
    tDebitoData.Value := IM.imDataHora;
    tDebitoCliente.Value := IM.imCliente;
    tDebitoTipo.Value := itMovEst;
    tDebitoID.Value := IM.imID;
    tDebitoValor.Value := IM.Debito;
    tDebito.Post;
  end;

  if (IM.imTipoTran=trEstDevolucao) and (IM.imDebDev>0) then begin
    tDebito.IndexName := 'ITipoID';
    if tDebito.FindKey([1, IM.imID_Ref]) then
    if (tDebitoValor.Value<=IM.imDebDev) then 
      tDebito.Delete
    else begin
      tDebito.Edit;
      tDebitoValor.Value := tDebitoValor.Value - IM.imDebDev;
      tDebito.Post;
    end;
  end;
  
  if aAchouProd then begin
    aSaldo := AjustaSaldoPost(IM.imProduto, IM.imDataHora, IM.imID, IM.SaldoPost, False);
    if (not tProdutoNaoControlaEstoque.Value) and gConfig.NaoVenderAlemEstoque and (aSaldo<0) and (IM.imTipoTran=trEstVenda) then begin
      DebugMsg('TDM.IncluiIME - IM.imPermSemEstoque: '+BoolStr[IM.imPermSemEstoque]);
      if (not IM.imPermSemEstoque) then begin
        Result := ncerrProdutoSemSaldo;
        Exit;
      end;
    end else 
      DebugMsg('TDM.IncluiIME - NaoVenderAlemEstoque: '+BoolStr[gConfig.NaoVenderAlemEstoque]+' - aSaldo: '+FloatToStr(aSaldo)+' - IM.imTipoTran: '+IntToStr(IM.imTipoTran));
  end else
    DebugMsg('TDM.IncluiIME - IM.imProduto: '+IntToStr(IM.imProduto)+ ' - Não encontrado');
end;

function TDM.InitTran(const aTables: array of TnxTable;
  aWith: Boolean): Boolean;
begin
  Result := DBInitTran(nxDB, aTables, aWith);
  if Result then
    FidControl.Clear;
end;

function TDM.LimiteDeb: Currency;
begin
  if tCliDebito.IsNull then
    Result := tConfig.FieldByName('LimitePadraoDebito').AsCurrency else
    Result := tCliDebito.Value;
end;

function TDM.PassouLimiteDebito: Boolean;
begin
  if tCliLimiteDebito.IsNull then
    Result := (tCliDebito.Value>0.009) and (tCliDebito.Value >= gConfig.LimitePadraoDebito) else
    Result := (tCliDebito.Value>0.009) and (tCliDebito.Value >= tCliLimiteDebito.Value);
end;

procedure TDM.LoadComissaoDev(IM: TncItemMovEst);
begin
  if (IM.imID_Ref=0) then 
    LoadComissaoProd(IM)
  else 
  if tAuxME.Locate('ID', IM.imID_Ref, []) then begin
    IM.imCustoU := tAuxMECustoU.Value;
    IM.imComissao := tAuxMEComissao.Value;
    IM.imComissaoPerc := tAuxMEComissaoPerc.Value;
    IM.ImComissaoLucro := tAuxMEComissaoLucro.Value;
  end else begin
    IM.imCustoU := 0;
    IM.imComissaoPerc := 0;
    IM.imComissaoLucro := False;
    IM.imComissao := 0;
  end;

  IM.imComissao := -1 * IM.imComissao;
end;

procedure TDM.LoadComissaoProd(IM: TncItemMovEst);
var
  aComissaoPerc : Double;
  aCusto: Currency;
begin
  if tProduto.FindKey([IM.imProduto]) then begin
    IM.imCustoU := tProdutoCustoUnitario.Value;
    if tProdutoComissaoPerc.IsNull then begin
      IM.imComissaoPerc := gConfig.ComissaoPerc;
      IM.imComissaoLucro := gConfig.ComissaoLucro;
    end else begin
      IM.imComissaoPerc := tProdutoComissaoPerc.Value;
      IM.imComissaoLucro := tProdutoComissaoLucro.Value;
    end;  

    aComissaoPerc := IM.imComissaoPerc / 100;

    if IM.imComissaoLucro then begin
      if IM.imCustoU > 0 then begin
        aCusto := IM.imQuant * IM.imCustoU;
        if aCusto > IM.ValorProdLiq then
          IM.imComissao := 0 else
          IM.imComissao := (IM.ValorProdLiq-aCusto) * aComissaoPerc;
      end;
    end else
      IM.imComissao := IM.ValorProdLiq * aComissaoPerc;
  end else begin
    IM.imComissaoPerc := 0;
    IM.imComissaoLucro := False;
    IM.imComissao := 0;
  end;
end;

procedure TDM.LoadIDeb(Deb: TncDebito);
var SIndex: String;
begin
  Deb.Itens.Limpa;
  SIndex := tDebito.IndexName;
  try
    tDebito.IndexName := 'ICliData';
    tDebito.SetRange([Deb.Cliente], [Deb.Cliente]);
    while not tDebito.Eof do begin
      Deb.Itens.NewItem.LoadFromDebito(tDebito);
      tDebito.Next;
    end;
  finally
    tDebito.IndexName := SIndex;
    tDebito.CancelRange;
  end;
end;

procedure TDM.LoadIDebPagos(Deb: TncDebito);
var SIndex: String;
begin
  Deb.Itens.Limpa;
  SIndex := tITran.IndexName;
  try
    tITran.IndexName := 'ITranID';
    tITran.SetRange([Deb.ID], [Deb.ID]);
    
    while not tITran.Eof do begin
      if (tITranPago.Value>0) or (tITranDesconto.Value>0) then
        Deb.Itens.NewItem.LoadFromITran(tITran);
      tITran.Next;
    end;
  finally
    tITran.IndexName := SIndex;
    tITran.CancelRange;
  end;
end;

procedure TDM.LoadIMEs(ME: TncMovEst);
var SIndex: String;
begin
  SIndex := tMovEst.IndexName;
  try
    tMovEst.IndexName := 'ITranItem';
    tMovEst.SetRange([ME.ID], [ME.ID]);
    ME.Itens.Limpa;
    while not tMovEst.Eof do begin
      ME.Itens.NewItem.LoadFromDataset(tMovEst, tMovEstTax);
      tMovEst.Next;
    end;
  finally
    tMovEst.IndexName := SIndex;
    tMovEst.CancelRange;
  end;
end;

procedure TDM.CancelarPagEsp(aTranID: Integer);
var SIndex: String;
begin
  SIndex := tPagEsp.IndexName;
  try
    tPagEsp.IndexName := 'ITranID';
    try
      tPagEsp.SetRange([aTranID], [aTranID]);
      tPagEsp.First;
      while not tPagEsp.Eof do begin
        tPagEsp.Edit;
        tPagEspCancelado.Value := True;
        tPagEsp.Post;
        tPagEsp.Next;
      end;
    finally
      tPagEsp.CancelRange;
    end;
  finally
    tPagEsp.IndexName := SIndex;
  end;
end;

procedure TDM.LoadPagEsp(aTranID: Integer; aPagEsp: TncPagEspecies);
begin
  try
    aPagEsp.Clear;
    tAuxTran.IndexName := 'IID';
    if (tAuxTranID.Value=aTranID) or tAuxTran.FindKey([aTranID]) then begin
      aPagEsp.CreditoAnt := tAuxTranCreditoAnt.Value;
      aPagEsp.DebitoAnt := tAuxTranDebitoAnt.Value;
      aPagEsp.Credito    := tAuxTranCredito.Value;
      aPagEsp.Debito    := tAuxTranDebito.Value;
      aPagEsp.CreditoUsado := tAuxTranCreditoUsado.Value;
      aPagEsp.DebitoPago := tAuxTranDebitoPago.Value;
    end;
    tPagEsp.IndexName := 'ITranID';
    tPagEsp.SetRange([aTranID], [aTranID]);
    tPagEsp.First;
    while not tPagEsp.Eof do begin
      with aPagEsp.NewItem do begin
        peEspecie := tPagEspEspecie.Value;
        peID := tPagEspID.Value;
        peTipo := tPagEspTipo.Value;
        peValor := tPagEspValor.Value;
        peTroco := tPagEspTroco.Value;
        peDoc := tPagEspDoc.Value;
      end;
      tPagEsp.Next;
    end;
  finally
    tPagEsp.CancelRange;
  end;
end;

function TDM.NFCeAtivo: Boolean;
begin
  Result := tNFConfigEmitirNFCe.Value and gConfig.IsPremium and (not gConfig.Pro);
end;

function TDM.NFeAtivo: Boolean;
begin
  Result := tNFConfigEmitirNFe.Value {and gConfig.IsPremium and (not gConfig.Pro)};
end;

procedure TDM.NovaLogicaPendentes;
begin
  tTran.Active := True;
  tTran.IndexName := 'IPagPendID';
  tTran.SetRange([True], [True]);
  tTran.First;
  tITran.IndexName := 'ITranID';
  tMovEst.IndexName := 'ITranItem';
  tProduto.IndexName := 'IID';
  try
    while not tTran.Eof do
    begin
      tTran.Edit;
      tTranCaixa.Value := 0;
      tTranCaixaPag.Value := 0;
      tTranDataHora.Clear;
      tTran.Post;
  
      tITran.SetRange([tTranID.Value], [tTranID.Value]);
      tITran.First;;
      while not tITran.Eof do 
      begin
        tITran.Edit;
        tITranDataHora.Clear;
        tITranCaixa.Value := 0;
        tITranCaixaPag.Value := 0;
        tITran.Post;    
        tITran.Next;                    
      end;
  
      tMovEst.SetRange([tTranID.Value], [tTranID.Value]);
      tMovEst.First;
      while not tMovEst.Eof do 
      begin
        tMovEst.Edit;
        tMovEstDataHora.Clear;
        tMovEstCaixa.Value := 0;
        tMovEst.Post;           
  
        if tProduto.FindKey([tMovEstProduto.Value]) then begin
          tProduto.Edit;
          tProdutoEstoquePend.Value := tProdutoEstoquePend.Value + tMovEstQuant.Value;
          tProduto.Post;
        end;

        tMovEst.Next;
      end;
      tTran.Next;         
    end;  
  finally
    tTran.CancelRange;
    tITran.CancelRange;
    tMovEst.CancelRange;
  end;
end;

function TDM.NumCaixaAberto: Integer;
begin
  tCaixa.Refresh;
  if tCaixa.FindKey([True]) then 
    Result := tCaixaID.Value
  else
    Result := 0;  
end;

function TDM.ObtemSaldoAnt(aProduto: Integer; aDH: TDateTime;
  aID: Integer): Double;
begin
  tAuxME.IndexName := 'IProduto';
  try
    tAuxME.SetRange([aProduto], [aProduto, aDH, pred(aID)]);
    if tAuxME.IsEmpty then
      Result := 0
    else begin
      tAuxME.Last;
      Result := tAuxMESaldoPost.Value;
    end;
  finally
    tAuxME.CancelRange;
  end;
end;

procedure TDM.Open(aChecaFmtTabs: Boolean = False);
var 
  I : Integer;
  aTableName : String;

begin
  nxDB.AliasPath := '';
  nxDB.AliasName := 'NexCafe';
  nxSession.Username := SessionUser;
  nxSession.Password := SessionPass;
  nxSession.Active := True;
  nxDB.Active := True;
  if aChecaFmtTabs and Assigned(FBuildEvolveDB) then
    FBuildEvolveDB(nil);
  for I := 0 to nxDB.DataSetCount-1 do  begin
    if nxDB.DataSets[I]  is TnxTable then
      aTableName := TnxTable(nxDB.DataSets[I]).TableName else
      aTableName := '';
    
    if nxDB.Datasets[I]<>qAux then
    try
      nxDB.DataSets[I].Active := True;
    except
      on E: Exception do raise Exception.Create(aTableName+': '+E.Message);
    end;
   end;   
end;

function TDM.PodeAlterarTran(aID: Integer): Boolean;
var SIndex: String;
begin
  Result := False;
  tTran.IndexName := 'IID';
  if not tTran.FindKey([aID]) then Exit;
  if tTranCancelado.Value then Exit;

  if tTranTipo.Value=trEstVenda then begin
    SIndex := tAuxTran.IndexName;
    try
      tAuxTran.IndexName := 'IUID_ref';
      if tAuxTran.FindKey([tTranUID.Value, trEstDevolucao, False]) then Exit;
    finally
      tAuxTran.IndexName := SIndex;
    end;
  end;
  SIndex := tITran.IndexName;
  tITran.IndexName := 'ITranID';
  tITran.SetRange([aID], [aID]);
  try
    tAuxITran.IndexName := 'ITipoItemTran';
    while not tITran.Eof do begin
      tAuxITran.SetRange([tITranTipoItem.Value, tITranItemID.Value, aID+1],
                         [tITranTipoItem.Value, tITranItemID.Value, High(Integer)]);
      while not tAuxITran.Eof do begin
        if not tAuxITranCancelado.Value then Exit;
        tAuxITran.Next;
      end;                        
      tITran.Next;
    end;

      tAuxITran.SetRange([itFrete, tTranID.Value, tTranID.Value+1], [itFrete, tTranID.Value, High(Integer)]);
      while not tAuxITran.Eof do begin
        if not tAuxITranCancelado.Value then Exit;
        tAuxITran.Next;
      end;                        
  finally
    tITran.CancelRange;
    tITran.IndexName := SIndex;
    tAuxITran.IndexName := 'IID';
    tAuxITran.CancelRange;
  end;
  
  Result := True;  
end;

procedure TDM.PopulateTipoTran;

procedure AddItem(aTipo: Byte; aTipoCad: Byte; aEntrada, aEmiteNFE, aMovEst, aAtualiza_Custo:  Boolean);
begin
  if tTipoTran.FindKey([aTipo]) then
    tTipoTran.Edit else
    tTipoTran.Append;

  tTipoTrantipo.Value := aTipo;
  tTipoTranuser.Value := False;
  tTipoTranestoque.Value := TipoTranEstoque(aTipo);
  tTipoTrancaixa.Value := TipoTranCaixa(aTipo);
  tTipoTrannome.Value := TipoTranToStr(aTipo);
  tTipoTranentrada.Value := aEntrada;
  tTipoTranemite_nfe.Value := aEmiteNFe;
  tTipoTranmovest.Value := aEntrada;
  tTipoTranatualiza_custo.Value := aAtualiza_Custo;
  tTipoTranvisivel.Value := TipoTranCaixa(aTipo) or (aTipo in [trEstVenda, trEstDevolucao, trEstCompra, trEstEntrada, trEstSaida]);
  tTipoTranpagto.Value := (aTipo in [trEstVenda, trEstDevolucao]);
  tTipoTransel_endereco.Value := (aTipo in [trEstVenda]);
  tTipoTranTipoCad.Value := aTipoCad;
  tTipoTranPrecoCusto_nfe.Value := false;
    
  tTipoTran.Post;
end;

begin
  DebugMsg(Self, 'PopulateTipoTran');

  AddItem(trAddCredito,   tipocad_cliente,    False, False, False, False);
  AddItem(trRemCredito,   tipocad_cliente,    False, False, False, False);
  AddItem(trEstVenda,     tipocad_cliente,    False, True,  True,  False);
  AddItem(trEstCompra,    tipocad_fornecedor, True,  False, True,  True);
  AddItem(trEstEntrada,   tipocad_nenhum,     True,  False, True,  False);
  AddItem(trEstSaida,     tipocad_nenhum,     False, False, True,  False);
  AddItem(trPagDebito,    tipocad_cliente,    False, False, False, False);
  AddItem(trCaixaEnt,     tipocad_nenhum,     True,  False, False, False);    
  AddItem(trCaixaSai,     tipocad_nenhum,     False, False, False, False);
  AddItem(trCorrDataCx,   tipocad_nenhum,     False, False, False, False);
  AddItem(trAjustaFid,    tipocad_cliente,    False, False, False, False);
  AddItem(trAjustaCusto,  tipocad_nenhum,     False, False, False, True);
  AddItem(trZerarEstoque, tipocad_nenhum,     False, False, True,  False);
  AddItem(trEstDevolucao, tipocad_cliente,    True,  True,  True,  False);
  
  DebugMsg(Self, 'PopulateTipoTran OK');
end;

procedure TDM.PopulateProdFor;
begin
  DebugMsg('TDM.PopulateProdFor - Start');
  tProdFor.Active := True;
  tProduto.First;
  while not tProduto.Eof do begin
    if tProdutoFornecedor.Value>0 then
    if not tProdFor.FindKey([tProdutoID.Value, tProdutoFornecedor.Value]) then begin
      tProdFor.Append;
      tProdForProduto.Value := tProdutoID.Value;
      tProdForFornecedor.Value := tProdutoFornecedor.Value;
      tProdFor.Post;
    end;
    tProduto.Next;
  end;
  DebugMsg('TDM.PopulateProdFor - End');
end;

procedure TDM.PremiarCli(aCliente: Integer);
var 
  SC : TncSalvaCredito;
  NumCx : Integer;
  AumentouDeb : Boolean;

begin
  try
    if not tCli.FindKey([aCliente]) then Exit;

    while gConfig.FidPremiarAutomaticamente(tCliFidPontos.Value) and (not tCliSemFidelidade.Value) do begin
      InitTran([tConfig, tCaixa, tCli, tCred, tTran, tITran], False);
      try
        NumCX := NumCaixaAberto;
        if NumCx<1 then Exit;

        SC := TncSalvaCredito.Create;
        try
          SC.Func      := '_auto_';
          SC.Adicionar := True;
          SC.Obs := rsPremioFidelidade;
          SC.Cliente := tCliID.Value;
          SC.Valor := gConfig.FidAutoPremiarValor;
          SC.Caixa := NumCx;
          SC.FidResgate := True;
          SC.FidPontos := gConfig.FidAutoPremiarPontos;

          SalvaCredito(SC);
        finally
          SC.Free;
        end;
        nxDB.Commit;
      finally
        if nxDB.InTransaction then nxDB.Rollback;
      end;
    end;      

  except
  end;
end;

function TDM.QuantPend(aProduto, aIgnoreME: Cardinal): Extended;
begin
  tAuxME.Active := True;
  tAuxME.IndexName := 'IProdPendCancelado';
  tAuxME.SetRange([aProduto, True, False], [aProduto, True, False]);
  try
    Result := 0;
    tAuxME.First;
    while not tAuxME.Eof do
    begin
      if tAuxMEID.Value<>aIgnoreME then
        Result := tAuxMEQuant.Value + Result;
      tAuxME.Next;
    end;
  finally
    tAuxME.CancelRange;
  end;
end;

function TDM.UltimoSaldo(aProduto: Cardinal): Extended;
var aDT: TDateTime;
begin
  tAuxME.Active := True;
  tAuxME.IndexName := 'IProduto';
  aDT := 1;
  tAuxME.SetRange([aProduto, aDT], [aProduto, MaxDateTime]);
  try
    if not tAuxME.IsEmpty then begin
      tAuxME.Last;
      Result := tAuxMESaldoPost.Value;
    end else
      Result := 0;
  finally
    tAuxME.CancelRange;
  end;
end;

procedure TDM.RecalcComissao(aProgresso: TProgressoEv);
var 
  P, T: Cardinal;
  SIndex: String;
  aComissaoPerc: Double;
  aCusto : Currency;
begin
  SIndex := tMovEst.IndexName;
  try
    tMovEst.IndexName := 'ITipoTranCaixa';
    tMovEst.SetRange([trEstVenda], [trEstVenda]);
    try
      P := 0;
      T := tMovEst.RecordCount;
      tMovEst.First;
      while not tMovEst.Eof do begin
        Inc(P);
        if Assigned(aProgresso) then aProgresso(rsRecalcComissao, P, T);

        aComissaoPerc := tMovEstComissaoPerc.Value / 100;

        tMovEst.Edit;
        if tMovEstComissaoLucro.Value then begin
          aCusto := tMovEstQuant.Value * tMovEstCustoU.Value;
          if aCusto > tMovEstValorProdLiq.Value then
            tMovEstComissao.Value := 0 else
            tMovEstComissao.Value := (tMovEstValorProdLiq.Value-aCusto) * aComissaoPerc;
        end else
          tMovEstComissao.Value := tMovEstValorProdLiq.Value * aComissaoPerc;
        tMovEst.Post;
        
        tMovEst.Next;
      end;
    finally
      tMovEst.CancelRange;
    end;
  finally
    tMovEst.IndexName := SIndex;
  end;
end;

procedure TDM.RecriaDebitos;
var 
  CodProd: Integer;
  ME : TncMovEst;

procedure ObtemProd;
begin
  if CodProd<>-1 then Exit;
  ME := TncMovEst.Create;
  ME.Tipo := trEstVenda;
  ME.DataHora := Now;
  if not tProduto.Locate('Descricao', 'Debito Antigo', [loCaseInsensitive]) then begin
    tProduto.Insert;
    tProdutoDescricao.Value := 'Debito Antigo';
    tProdutoCodigo.Value := 'debito';
    tProdutoPodeAlterarPreco.Value := True;
    tProdutoNaoControlaEstoque.Value := True;
    tProduto.Post;
  end;
  CodProd := tProdutoID.Value;
end;

begin
  ME := nil;
  CodProd := -1;

  tCli.First;
  while not tCli.Eof do begin
    if tCliDebito.Value>0.009 then begin
      ObtemProd;
      ME.Itens.Limpa;
      ME.Cliente := tCliID.Value;
      with Me.Itens.NewItem do begin
        imQuant := 1;
        imUnitario := tCliDebito.Value;
        imProduto := CodProd;
        imTotal := imUnitario;
        imItem := 1;
        imDataHora := Now;
        imTipoTran := trEstVenda;
        imCliente := tCliID.Value;
        imCaixa := 0;
        imNaoControlaEstoque := True;
        _Operacao := osIncluir;
      end;
      ME.Total := tCliDebito.Value;
      ME.Caixa := 0;
      ME.Tipo := trEstVenda;
      ME.ID := -1;
      ME.Operacao := osIncluir;
      ME.Obs := 'Lançados automaticamente na conversão de programa';
      Self.SalvaMovEst(ME, True);
    end;
    tCli.Next;
  end;
  if ME<>nil then ME.Free;
end;

function TDM.ReemitirNFCe(aTran: tGuid): integer;
var 
  P : PmsgNFEUpdated;
  S : String;
begin
  InitTran([tTran, tITran, tNFConfig, tNFe, tMovEst, tDoc], True);
  try
    S := aTran.ToString;
    DebugMsg('TDM.ReemitirNFCe - aTran: '+aTran.ToString);
    if not tTran.Locate('UID', S, []) then Exit;
    if tTranStatusNFe.Value <> nfetran_erro then Exit;

    tTran.Edit;
    tTranChaveNFE.Clear;
    tTranStatusNFE.Value := nfetran_gerar;
    tTran.Post;

{    if (tTranCliente.Value > 0) and (not tCli.Locate('ID', tTranCliente.Value, [])) then begin
      Result := ncerrClienteNaoEncontrado;
      Exit;
    end;

    FOnGerarNFCe(Self);}
    nxDB.Commit;

    New(P);
    P^.msgCCE := False;
    P^.msgUID := tTranUID.AsGuid;
    PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);
    
    Result := 0;
  finally
    if nxDB.InTransaction then nxDB.Rollback;
  end;

end;

procedure TDM.refaz_itran_debcli;
var T: Currency;

procedure additensvenda;
var D: Currency;
begin
  if (tTranFrete.Value>0) and (tTranDebito.Value>0) then begin
    if tTranDebito.Value>=tTranFrete.Value then
      D := tTranFrete.Value else
      D := tTranDebito.Value;

    mtDeb.Append;
    mtDebID.Value := tTranID.Value;
    mtDebData.Value := tTranDataHora.Value;
    mtDebValor.Value := D;
    mtDebTipo.Value := itFrete;
    mtDeb.Post;   
  end;
  
  tITran.IndexName := 'ITranID';
  tITran.SetRange([tTranID.Value], [tTranID.Value]);
  try
    tITran.First;
    while not tITran.Eof do begin
      if tITranDebito.Value>0 then begin
        mtDeb.Append;
        mtDebID.Value := tITranItemID.Value;
        mtDebData.Value := tITranDataHora.Value;
        mtDebValor.Value := tITranDebito.Value;
        mtDebTipo.Value := itMovEst;
        mtDeb.Post;
      end;
      tITran.Next;
    end;
  finally
    tITran.CancelRange;
  end;
end;

procedure verificavalordeb;
var vdeb, vpag: currency;
begin
  vdeb := 0;
  tITran.IndexName := 'ITranID';
  tITran.SetRange([tTranID.Value], [tTranID.Value]);
  try
    tITran.First;
    while not tITran.Eof do begin
      vdeb := vdeb + tITranDebito.Value;
      tITran.Next;
    end;

    vpag := tTranDebito.Value;

    if vdeb = vpag then Exit;
    
    vdeb := tTranDebito.Value;

    if tTranFrete.Value>0 then begin
      if vdeb>tTranFrete.Value then
        vdeb := vdeb - tTranFrete.Value else
        vdeb := 0;
    end;

    if vdeb<=0 then Exit;
    
    tITran.First;
    while (not tITran.Eof) do begin
      vPag := tITranTotal.Value - tITranDesconto.Value;
      if vPag > 0 then begin
        tITran.Edit;
        if vDeb >= VPag then begin
          tITranPago.Value := 0;
          vDeb := vDeb - VPag;
          tITranDebito.Value := VPag;
        end else begin
          tITranPago.Value := vPag-vDeb;
          tITranDebito.Value := vDeb;
          vDeb := 0;
        end;
        tITran.Post;
      end;  
      tITran.Next;
    end;  
  finally
    tITran.CancelRange;
  end;
end;

procedure additensdebito;
var P, D, pagar: Currency;
begin
  tITran.IndexName := 'ITranID';
  tITran.SetRange([tTranID.Value], [tTranID.Value]);
  try
    tITran.First;
    while not tITran.Eof do begin
      if (tITranItemID.Value=0) or (not mtDeb.FindKey([tITranTipoItem.Value, tITranItemID.Value])) then
        tITran.Delete else
        tITran.Next;
    end;
  finally
    tITran.CancelRange;
  end;

  tITran.IndexName := 'ITipoItemTran';

  P := tTranPago.Value + tTranCreditoUsado.Value;
  D := tTranDesconto.Value;

  mtDeb.First;
  while not mtDeb.Eof do begin
    if not tITran.FindKey([mtDebTipo.Value, mtDebID.Value, tTranID.Value]) then begin
      tITran.Append;
      tITranTipoItem.Value := mtDebTipo.Value;
      tITranItemID.Value := mtDebID.Value;
      tITranTran.Value := tTranID.Value;
      tITranCliente.Value := tTranCliente.Value;
      tITranDataHora.Value := tTranDataHora.Value;
      tITranTipoTran.Value := tTranTipo.Value;
      tITranCaixa.Value := tTranCaixa.Value;
      tITranCaixaPag.Value := tTranCaixaPag.Value;
    end else
      tITran.Edit;
    tITranTotal.Value := mtDebValor.Value;  
    
    if D>tITranTotal.Value then begin
      tITranDesconto.Value := tITranTotal.Value;
      D := D - tITranDesconto.Value;
    end else begin
      tITranDesconto.Value := D;
      D := 0;
    end;
    pagar := tITranTotal.Value - tITranDesconto.Value;
    
    if P>pagar then begin
      tITranPago.Value := pagar;
      P := P - Pagar;
    end else begin
      tITranPago.Value := P;
      P := 0;
    end;
    
    tITran.Post;

    mtDeb.Edit;
    mtDebValor.Value := mtDebValor.Value - tITranPago.Value - tITranDesconto.Value;
    mtDeb.Post;

    mtDeb.Next;
  end;

  mtDeb.First;
  while not mtDeb.Eof do begin
    if mtDebValor.Value<0.01 then
      mtDeb.Delete else
      mtDeb.Next;
  end;

  if (P>0) or (D>0) then
    DebugMsgEsp('Erro reprocessando débito transação ' + tTranID.AsString + ' - P: '+CurrencyToStr(P) + ' - D: '+ CurrencyToStr(D), False, True);
end;

procedure removedebitosdev;
var deb : currency;
begin
  tMovEst.IndexName := 'ITranItem';
  tMovEst.SetRange([tTranID.Value], [tTranID.Value]);
  try
    tMovEst.First;
    deb := 0;
    while not tMovEst.Eof do begin
      deb := deb + tMovEstDebDev.Value;
      if mtDeb.FindKey([itMovEst, tMovEstID_Ref.Value]) then begin
        if mtDebValor.Value<=tMovEstDebDev.Value then begin
          deb := deb - mtDebValor.Value;
          mtDeb.Delete;
        end else begin
          deb := deb - tMovEstDebDev.Value;
          mtDeb.Edit;
          mtDebValor.Value := mtDebValor.Value - tMovEstDebDev.Value;
          mtDeb.Post;
        end;
      end;
      tMovEst.Next;
    end;
  finally
    tMovEst.CancelRange;
  end;

  mtDeb.First;
  while (not mtDeb.Eof) and (deb>0) do begin
    mtDeb.Edit;

    if mtDebValor.Value>=deb then begin
      mtDebValor.Value := mtDebValor.Value - deb;
      deb := 0;
    end else begin
      deb := deb - mtDebValor.Value;
      mtDebValor.Value := 0;
    end;
    mtDeb.Post;

    mtDeb.Next;
  end;

  mtDeb.First;
  while not mtDeb.Eof do begin
    if mtDebValor.Value<0.01 then
      mtDeb.Delete else
      mtDeb.Next;
  end;
end;

begin
  mtDeb.Active := False;
  mtDeb.Active := True;
  tTran.IndexName := 'ICliID';
  tITran.IndexName := 'ITranID';
  tTran.SetRange([tCliID.Value], [tCliID.Value]);
  try
    tTran.First;
    while not tTran.Eof do begin
      if not tTranCancelado.Value then
        case tTranTipo.Value of
          trEstVenda : if (tTranDebito.Value>0) and (not tTranPagPend.Value) then begin
            verificavalordeb;
            additensvenda;
          end;
          
          trPagDebito : additensdebito;

          trEstDevolucao : removedebitosdev;
        end;
        
      tTran.Next;
    end;

    tDebito.IndexName := 'ICliData';
    tDebito.SetRange([ tCliID.Value], [tCliID.Value]);
    try
      tDebito.First;
      while not tDebito.Eof do tDebito.Delete;
    finally
      tDebito.CancelRange;
    end;

    mtDeb.First; T := 0;
    while not mtDeb.Eof do begin
      tDebito.Append;
      tDebitoCliente.Value := tCliID.Value;
      tDebitoData.Value := mtDebData.Value;
      tDebitoID.Value := mtDebID.Value;
      tDebitoTipo.Value := mtDebTipo.Value;
      tDebitoValor.Value := mtDebValor.Value;
      tDebito.Post;
      T := T + tDebitoValor.Value;
      mtDeb.Next;
    end;

    tCli.Edit;
    tCliDebito.Value := T;
    tCli.Post;
  finally
    tTran.CancelRange;
    tTran.IndexName := 'IID';
    tITran.IndexName := 'IID';
  end;
end;

procedure TDM.RefreshDebitoCliente;
var 
  SIndex: String;
  T : Currency;
begin
  SIndex := tDebito.IndexName;
  try
    tDebito.IndexName := 'ICliData';
    tDebito.SetRange([tCliID.Value], [tCliID.Value]);
    try
      T := 0;
      while not tDebito.Eof do begin
        T := T + tDebitoValor.Value;
        tDebito.Next;
      end;
      tCli.Edit;
      tCliDebito.Value := T;
      tCli.Post;
    finally
      tDebito.CancelRange;
    end;
  finally
    tDebito.IndexName := SIndex;
  end;

end;

procedure TDM.RemoveDebitosDevolvidos(aProgresso: TProgressoEv);
var 
  I, T, R: Cardinal;
begin
  T := tDebito.RecordCount;
  I := 0;
  R := 0;
  tDebito.First;
  while not tDebito.Eof do begin
    Inc(I); 
    if Assigned(aProgresso) then 
      aProgresso('Reprocessando débitos de produtos devolvidos 1/2 ...', I, T);
    tDebito.Edit;
    tDebitoValor.Value := DebMovEst(tDebitoID.Value);
    tDebito.Post;
    if tDebitoValor.Value<0.01 then begin
      tDebito.Delete;
      Inc(R);
    end else
      tDebito.Next;
  end;

  if R>0 then ReprocessaDebitos;
end;

procedure TDM.ReprocessaDebitos;
begin
  CorrigeClienteDeb;
  qAux.Active := False;
  qAux.SQL.Text := 'update cliente c set debito = (select sum(valor) from debito d where c.id = d.cliente)';
  qAux.ExecSQL;
  qAux.Active := False;
end;

procedure TDM.ReprocessaEstoque;
begin
  tProduto.First;
  while not tProduto.Eof do begin
    AjustaSaldoPost(tProdutoID.Value, 1, 0, 0, False);
    tProduto.Next;
  end;
end;

procedure TDM.ReprocessaITranDeb(aProgresso: TProgressoEv);
var 
  sl: TStringList;
  D : Currency;
  I, T: Cardinal;
begin
  sl := TStringList.Create;
  try
    tCli.First;
    I := 0;
    T := tCli.RecordCount;
    while not tCli.Eof do begin
      Inc(I);
      if Assigned(aProgresso) then aProgresso('Reprocessando débitos ...', I, T);
      
      D := tCliDebito.Value;
      refaz_itran_debcli;

      if CurrencyToStr(D)<>CurrencyToStr(tCliDebito.Value) then 
        sl.Add(zeroleft(tCliCodigo.Value, 5) +  ' - ' + tCliNome.Value + ' | Anterior: '+CurrencyToStr(D) + ' | Atual: '+CurrencyToStr(tCliDebito.Value));
      tCli.Next;
    end;

    if sl.Count>0 then begin
      sl.Sort;
      sl.SaveToFile(ExtractFilePath(ParamStr(0))+'debitos_corrigidos.txt');
    end;
  finally
    sl.Free;
  end;
end;

procedure TDM.ResetNexApp;
begin
  DebugMsg(Self, 'ResetNexApp');
  if not tCard.IsEmpty then
    tCard.DeleteRecords;

  if not tPost_nexapp.IsEmpty then
    tPost_nexapp.DeleteRecords;
end;

procedure TDM.ResomaITranDebitos(aProgresso: TProgressoEv = nil);
var 
  D: Currency;
  T, I: Cardinal;

procedure Resoma;
begin
  D := 0;
  tITran.IndexName := 'ITipoItemDH';
  tITran.SetRange([tDebitoTipo.Value, tDebitoID.Value], [tDebitoTipo.Value, tDebitoID.Value]);
  try
    tITran.First;
    while not tITran.Eof do begin
      if tITranTipoTran.Value=trPagDebito then
        D := D - (tITranPago.Value + tITranDesconto.Value) else
        D := D + tITranDebito.Value;
      tITran.Next;
    end;
  finally
    tITran.CancelRange;
  end;
end;

begin
  tITran.IndexName := 'ITipoItemDH';
  try
    tDebito.First;
    T := tDebito.RecordCount; I := 0;
    while not tDebito.Eof do begin
      Inc(I);
      if Assigned(aProgresso) then aProgresso('Resomando descontos e pagamentos de débitos', i, t);
    
      Resoma;
      if D=0 then
        tDebito.Delete
      else begin
        if tDebitoValor.Value<>D then begin
          tDebito.Edit;
          tDebitoValor.Value := D;
          tDebito.Post;
        end;
        tDebito.Next;
      end;
    end;
    ReprocessaDebitos;
  finally
    tITran.IndexName := 'IID';
  end;
end;


procedure TDM.SalvaConfig(C: TncConfig);
var NewTran: Boolean;
begin
  NewTran := InitTran([tConfig, tProduto], True);
  try
    if tConfig.RecordCount>0 then begin
      tConfig.First;
      tConfig.Edit;
    end else
      tConfig.Insert;  
    C.SalvaDataset(tConfig);
    tConfig.Post;
    if NewTran then nxDB.Commit;
  except
    tConfig.Cancel;
    if NewTran then nxDB.Rollback;
    Raise;
  end;    
end;

procedure TDM.SalvaConfigPB(P: TmsgPubPar);
var NewTran: Boolean;
begin
  if P.AllNull then Exit;

  NewTran := InitTran([tConfig], True);
  try
    if tConfig.RecordCount>0 then begin
      tConfig.First;
      tConfig.Edit;
    end else
      tConfig.Insert;  

    if P.pbHPConta <> null then
      tConfig.FieldByName('HomePage_AddConta').Value := P.pbHPConta;

    if P.pbBotoes<>null then
      tConfig.FieldByName('Botoes').Value := P.pbBotoes;

    if P.pbBanners<>null then
      tConfig.FieldByName('Banners').Value := P.pbBanners;

    if P.pbDTol<>null then
      tConfig.FieldByName('DTol').Value := P.pbDTol; 

    if P.pbAlertaAss<>null then
      tConfig.FieldByName('AlertaAssinatura').Value := P.pbAlertaAss;

    try  
      if (P.pbMeioPagto<>null) and ((P.pbMeioPagto>=0) and (P.pbMeioPagto<=255)) then
        tConfig.FieldByName('MeioPagto').Value := P.pbMeioPagto;  
    except
    end;

    if P.pbDVA<>null then
      tConfig.FieldByName('DVA').Value := P.pbDVA;

    if P.pbPreLib<>null then
      tConfig.FieldByName('PreLib').Value := P.pbPreLib;

    tConfig.Post;
    if NewTran then nxDB.Commit;
  except
    tConfig.Cancel;
    if NewTran then nxDB.Rollback;
    Raise;
  end;
end;

function SemEspaco(S: String): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    if S[I] <> #32 then
      Result := Result + S[I];
end;

function TDM.SalvaLancExtra(aLE: TncLancExtra): Integer;
var NumCx: Integer;

procedure _CancelAndRollback;
begin
  if nxDB.InTransaction then begin
    nxDB.Rollback;
    tTran.Cancel;
    tCaixa.Cancel;
    tPagEsp.Cancel;
  end;
end;

begin
  Result := 0;
  InitTran([tTran, tCaixa, tPagEsp], True);
  try
    NumCx := NumCaixaAberto;
    if NumCx=0 then begin
      Result := ncerrCaixaFechado;
      Exit;
    end;

    if aLE.ID=-1 then begin
      aLE.Caixa := NumCx;
      aLE.DataHora := Now;
      tTran.Insert;
    end else begin
      if not tTran.Locate('ID', aLE.ID, []) then begin
        Result := ncerrItemInexistente;
        Exit;
      end;

      if (tTranCaixa.Value <> NumCx) or (aLE.Caixa <> NumCx) then begin 
        Result := ncErros.ncerrCaixaDiferente;
        Exit;
      end;
      tTran.Edit;
    end;
    aLE.SalvaDataset(tTran);
    if aLE.ID=-1 then tTranID.Clear;
    tTran.Post;

    SavePagEspLE(tTranID.Value, tTranTipo.Value, tTranCaixa.Value, tTranTotal.Value, tTranDataHora.Value, tTranCancelado.Value);

    
    nxDB.Commit;
  finally
    _CancelAndRollback;
  end;
end;

function TDM.SalvaMovEst(ME: TncMovEst; const aIgnoraCaixa: Boolean = False): Integer;
begin
  Result := SalvaMovEstCustom(ME, aIgnoraCaixa);
end;

function TDM.SalvaMovEstCustom(ME: TncMovEst; const aIgnoraCaixa: Boolean = False): Integer;
var
  NumCx, I: Integer;
  MEAnt : TncMovEst;
  NewTran : Boolean;
  Debitar : Currency;
  V: Variant;
  S: String;
  P: PmsgNFEUpdated;
  sl : TStrings;
  SIndex : String;

function TipoTranGeraNF: Boolean;
begin  
  if tTranTipo.Value in [trEstVenda, trEstDevolucao] then
    Result := True;
end;

begin
  DataHoraTran := Now;
  Result := 0;
  Debitar := 0;
  MEAnt := nil;
  DebugMsg('TDM.SalvaMovEstCustom - UID: '+ME.UID);
  
  if (ME.Operacao=osIncluir) then begin
    if ME.UID='' then 
      ME.CriaUID
    else
    if tTran.Locate('UID', ME.UID, []) then begin
      DebugMsgEsp('TDM.SalvaMovEstCustom - ERRO DUPLICIDADE - Tran: '+ME.UID, False, True);
      Result := 0;
      Exit;
    end;
  end;
  
  NewTran := InitTran([tNFE, tTran, tDebito, tITran, tMovEst, tMovEstTax, tAuxME, tCli, tCaixa, tProduto, tPagEsp, tProdFor], True);
  try
    try
      NumCx := NumCaixaAberto;
  
      if (NumCx=0) and (not aIgnoraCaixa) and (not ME.PodeSalvarSemCaixa) and (not ME.PagPend) then begin
        Result := ncerrCaixaFechado;
        Exit;
      end;

      if (ME.Cliente<>0) and tCli.FindKey([Me.Cliente]) then begin
        tCli.Edit;
        tCliUltVisita.Value := Now;    

        if (ME.Tipo=trEstDevolucao) and (ME.OpDevValor=0) then
          tCliValorCred.Value := tCliValorCred.Value + ME.Total;
          
        tCli.Post;
      end; 

      ME.SalvaDescPago;     

      tTran.IndexName := 'IID';

      if (ME.Tipo in [trEstVenda, trEstDevolucao]) then begin 
        if ME.PagPend then 
        begin
          ME.Caixa := 0;
          ME.CaixaPag := 0;
          ME.DataHora := 0;                   
        end else begin
          if (ME.CaixaPag=0) then ME.CaixaPag := NumCx;
          ME.Caixa := ME.CaixaPag;
          if ME.DataHora=0 then 
          begin
            ME.DataHora := DataHoraTran;
            for i := 0 to ME.Itens.Count-1 do begin
              ME.Itens[I].imDataHora := ME.DataHora;                      
              ME.Itens[I].imCaixa := ME.Caixa;
            end;
          end;
        end;

        tProduto.IndexName := 'IID';
        for I := 0 to ME.Itens.Count-1 do with Me.Itens[i] do 
          if _Operacao<>osExcluir then
            if (ME.Tipo=trEstVenda) then 
              LoadComissaoProd(ME.Itens[i]) else
              LoadComissaoDev(ME.Itens[i]);
      end;

      if ME.Operacao=osIncluir then begin
        if tTran.Locate('UID', ME.UID, []) then begin
          Result := 0;
          Exit;
        end;

        if aIgnoraCaixa or ME.PagPend then
          ME.Caixa := 0 else
          ME.Caixa := NumCx;
        if not ME.PagPend then ME.DataHora := DataHoraTran;
        ME.SalvaTipoTran;
        for I := 0 to ME.Itens.Count - 1 do begin
          ME.Itens[I]._Operacao := osIncluir;
          ME.Itens[I].imTipoTran := ME.Tipo;
        end;
        tTran.Insert;
        tTranIncluidoEm.Value := DataHoraTran;
      end else
      if not tTran.FindKey([ME.ID]) then  begin
        Result := ncerrItemInexistente;
        Exit;
      end else begin
        if not PodeAlterarTran(ME.ID) then begin
          Result := ncerros.ncerrExisteTranPosterior;
          Exit;
        end;
        if (ME.UpdID<>tTranUpdID.Value) then begin
          DebugMsg(Self, 'SalvaMovEstCustom - ME.UpdID: '+ME.UpdID+' - tTranUpdID.Value: '+tTranUpdID.Value);
          Result := ncerros.ncerrTranAlteradaOutroUsuario;
          Exit;
        end;

        MEAnt := TncMovEst.Create;
        MEAnt.LeDataset(tTran);
        if (tTranCaixa.Value<>NumCX) and ((ME.CaixaPag<>NumCx)) and (tTranCaixa.Value>0) then begin
          Result := ncerrCaixaDiferente;
          Exit;
        end;

        tTran.Edit;
      end;

      if ME.PagPend then
        tTranDataHora.Clear else
        tTranDataHora.Value := ME.DataHora;
        
      if not TGuidEx.IsEmptyGuid(ME.NativeUID) then
        tTranUID.AsGuid := ME.NativeUID;
        
      tTranPagFunc.Value := ME.PagFunc;
      tTranPagPend.Value := ME.PagPend;
      tTranCliente.Value := ME.Cliente;
      tTranTipo.Value := ME.Tipo;
      S := ME.Func;
      tTranFunc.Value := S;
      if (ME.Tipo=trEstVenda) and (ME.Vendedor='') then
        ME.Vendedor := S;

      if (ME.Tipo=trEstDevolucao) and (ME.Vendedor='') then begin
        SIndex := tAuxTran.IndexName;
        try
          tAuxTran.IndexName := 'IUID';
          if tAuxTran.FindKey([ME.UID_Ref]) then
            ME.Vendedor := tAuxTranVendedor.Value;
        finally
          tAuxTran.IndexName := SIndex;
        end;
      end;        

      tTranVendedor.Value := ME.Vendedor;
      tTranTotal.Value := ME.Total;
      tTranDesconto.Value := ME.Desconto;
      tTranPago.Value := ME.Pago;
      tTranObs.Value := ME.Obs;
      tTrantax_incluir.Value := ME.tax_incluir;
      tTrantax_incluido.Value := ME.tax_incluido;
      tTranCancelado.Value := ME.Cancelado;
      tTranCanceladoPor.Value := ME.CanceladoPor;
      tTranCanceladoEm.Value := ME.CanceladoEm;
      tTranFidResgate.Value := ME.FidResgate;
      tTranCaixa.Value := ME.Caixa;
      tTranExtra.Value := ME.Extra;
      tTranComissao.Value := ME.Itens.ComissaoTot;
      tTranTranspEnt.Value := ME.TranspEnt;
      tTranFrete.Value := ME.Frete;
      tTranTranspPesoL.Value := ME.TranspPesoL;
      tTranTranspPesoB.Value := ME.TranspPesoB;
      tTranTranspPesoVol.Value := ME.TranspPesoVol;
      tTranTranspVol.Value := ME.TranspVol;
      ME.NativeUpdID := TGuid.NewGuid;
      tTranUpdID.AsGuid := ME.NativeUpdID;

      DebugMsg(Self, 'SalvaMovEstCustom - New UpdID: '+tTranUpdID.Value);

      if ME.Tipo=trEstVenda then
        tTranTipoNFE.Value := ME.TipoNFE;

      if ME.Extra>'' then begin
        sl := TstringList.Create;
        sl.Text := ME.Extra;
        if (ME.Tipo in [trEstCompra, trEstEntrada]) and (sl.Values['NFe']>'') then
          tTranChaveNFe.Value := sl.Values['NFe'];
      end;
      
      if ME.UID_Ref='' then
        tTranUID_ref.Clear else
        tTranUID_Ref.Value := ME.UID_Ref;

      tTranOpDevValor.Value := ME.OpDevValor;

      tTranEntregar.Value := ME.Entregar;
      if ME.endereco_entrega>'' then
        tTranendereco_entrega.Value := ME.endereco_entrega else
        tTranendereco_entrega.clear;
      
      tTranCaixaPag.Value := ME.CaixaPag;
      tTranCredito.Value := ME.PagEsp.Credito;
      tTranCreditoUsado.Value := ME.PagEsp.CreditoUsado;
      tTranMaq.Value := ME.Maq;
      if ME.Cliente>0 then
        tTranNomeCliente.AsVariant := tCli.Lookup('ID', ME.Cliente, 'Nome') else
        tTranNomeCliente.Value := ME.NomeCliente;
        
      tTranSessao.Value := ME.Sessao;
      S := '';

      tTranPagEsp.AsVariant := ME.PagEsp.IDEspecie;

      if ME.Tipo=trEstVenda then
        tTranids_pagto.Value := ME.PagEsp.ids_pagto;

      tTran.Post;


      ME.ID := tTranID.Value;
      
      if ME.SalvarDebFrete(MEAnt) then
      if ME.DebitoFrete<0.01 then begin
        if tDebito.FindKey([itFrete, ME.ID]) then
          tDebito.Delete;
      end else begin
        if tDebito.FindKey([itFrete, ME.ID]) then
          tDebito.Edit else
          tDebito.Insert;
        tDebitoCliente.Value := ME.Cliente;
        tDebitoTipo.Value := itFrete;
        tDebitoValor.Value := ME.DebitoFrete;
        tDebitoID.Value := ME.ID;
      end;

      SavePagEsp(ME.ID, ME.Tipo, ME.CaixaPag, ME.DataHora, ME.Cancelado, ME.PagEsp);

      for I := 0 to ME.Itens.Count - 1 do 
        with ME.Itens[I] do begin
          imTipoTran := ME.Tipo;
          imSessao   := ME.Sessao;
          imDataHora := ME.DataHora;
          imCliente  := ME.Cliente;
          imCaixa    := ME.Caixa;
          imProdutoDescr := VToString(tProduto.Lookup('ID', imProduto, 'Descricao'));
          case _Operacao of
            osIncluir : Result := IncluiIME(ME.Itens[I], ME);
            osAlterar : Result := AlteraIME(ME.Itens[I], MEAnt, ME);
            osExcluir : Result := ExcluiIME(ME.Itens[I], MEAnt, ME);
          end;
          if (Result<>0) then Exit;
        end;

      tTran.Edit;
      tTranDescricao.Value := ME.Itens.Descr;
      tTran.Post;  

      tCli.IndexName := 'IID';   

      if (MEAnt<>nil) and (MEAnt.Cliente>0) then
        if tCli.FindKey([MEAnt.Cliente]) then
          RefreshDebitoCliente;

      if (ME<>nil) and (ME.Cliente>0) and ((MEAnt=nil) or (MEAnt.Cliente<>ME.Cliente) or (MEAnt.ValorDebitado<>ME.ValorDebitado)) then
        if tCli.FindKey([ME.Cliente]) then
          RefreshDebitoCliente;

      if NewTran and (not FidControl.CanCommit) then begin
        Result := ncerrSaldoFidInsuficiente;
        Exit;
      end;

      if ME.Operacao=osIncluir then begin
        tTran.Edit;
        tTran.Post;
      end;

      if (NFCeAtivo or NFeAtivo) and (tTranStatusNFE.Value=0) and TipoTranGeraNF then begin
        tNFConfig.Refresh;
        case tTranTipo.Value of
          trEstVenda : 
          if ((MEAnt=nil) or MEAnt.PagPend) and (not tTranPagPend.Value) then begin
            tTran.Edit;
            tTranStatusNFE.Value := nfetran_gerar;
            
            if tTranTipoNFE.Value=tiponfe_nenhum then 
              tTranTipoNFE.Value := tNFConfigcalc_tiponfe.Value;

            if tTranTipoNFE.Value=tiponfe_nenhum then 
              tTranStatusNFE.Value := nfetran_erro
            else
            if tTranTipoNFE.Value=tiponfe_nfe then
              tTranAmbNFe.Value := tNFConfigtpAmbNFe.Value 
            else
              tTranAmbNFe.Value := tNFConfigtpAmb.Value;

            tTran.Post;
          end;
  
          trEstDevolucao : if NFeAtivo and (MEAnt=nil) then begin
            tTran.Edit;
            tTranStatusNFE.Value := nfetran_gerar;
            tTranAmbNFe.Value := tNFConfigtpAmbNFe.Value;
            tTranTipoNFE.Value := tiponfe_nfe;
            tTran.Post;
          end;
        end;
      end;

{      if NFCeAtivo or NFeAtivo and 
         (tTranTipo.Value=trEstVenda) and 
         (tTranStatusNFE.Value = 0) and 
         ((MEAnt=nil) or MEAnt.PagPend) and 
         (not tTranPagPend.Value) then
      begin
        tTran.Edit;
        tTranStatusNFE.Value := nfetran_gerar;
        tTranAmbNFe.Value := tNFConfigtpAmb.Value;
        if NFeAtivo then
          tTranTipoNFE.Value := tiponfe_nfe 
        else
        if tNFConfigTipo.Value=nfcfg_nfce then
          tTranTipoNFE.Value := tiponfe_nfce 
        else
          tTranTipoNFE.Value := tiponfe_sat;  
        tTran.Post;

        New(P);
        P^.msgTran := tTranUID.AsGuid;
        PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);
      end;  }

      if NewTran then
        nxDB.Commit;

       New(P);
       P^.msgCCE := False;
       P^.msgUID := tTranUID.AsGuid;
       PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);        
        
        
    except
      if NewTran then 
        nxDB.Rollback;
      tTran.Cancel;
      tMovEst.Cancel;
      tCaixa.Cancel;
      tProduto.Cancel;
      tITran.Cancel;
      tAuxME.Cancel;
      Raise;
    end;
  finally
    if NewTran then
      if nxDB.InTransaction then 
        nxDB.Rollback;
    
    if MEAnt<>nil then 
      MEAnt.Free;
  end;
end;

function TDM.SalvaCredito(aCred: TncSalvaCredito): Integer;
begin
  Result := 0;
    aCred.DataHora := Now;
    aCred.Caixa := NumCaixaAberto;
    if aCred.Caixa=0 then begin
      Result := ncerrCaixaFechado;
      Exit;
    end;

    tCli.IndexName := 'IID';
    if not tCli.FindKey([aCred.Cliente]) then begin
      Result := ncerrItemInexistente;
      Exit;
    end; 

    tCli.Refresh;

    if (not aCred.Adicionar) then
    if ((tCliValorCred.Value - aCred.Valor) < -0.001) then begin
      Result := ncerrSemCreditoDisp;
      Exit;
    end;

    tCli.Edit;
    tCliValorCred.Value := tCliValorCred.Value + aCred.ValorFator;
    tCli.Post;
    
    tTran.Insert;
    if aCred.Adicionar then
      tTranDescricao.Value := rsValorCreditado +  ' = ' + CurrToStr(aCred.Valor) else
      tTranDescricao.Value := rsValorRemovido +  ' = ' + CurrToStr(aCred.Valor);
    tTranNomeCliente.Value := tCliNome.Value;

    tTranCaixa.Value := aCred.Caixa;
    tTranDataHora.Value := aCred.DataHora;
    tTranTipo.Value := aCred.TipoTran;
    tTranFidResgate.Value := aCred.FidResgate;
    tTranCliente.Value := aCred.Cliente;
    tTranFunc.Value := aCred.Func;
    tTranCaixaPag.Value := aCred.Caixa;
    tTranPagPend.Value := False;
    tTranObs.Value := aCred.Obs;
    tTran.Post;

    tCred.Insert;
    tCredCaixa.Value := aCred.Caixa;
    tCredDataHora.Value := aCred.DataHora;
    tCredAdicionar.Value := aCred.Adicionar;
    tCredValor.Value := aCred.Valor;
    tCredCliente.Value := aCred.Cliente;
    tCredTran.Value := tTranID.Value;
    tCredFidResgate.Value := aCred.FidResgate;
    tCredFidPontos.Value := aCred.FidPontos;
    tCredFunc.Value := aCred.Func;
    tCred.Post;

    tITran.Insert;
    tITranTran.Value := tTranID.Value;
    tITranCaixa.Value := aCred.Caixa;
    tITranDataHora.Value := aCred.DataHora;
    tITranTipoTran.Value := aCred.TipoTran;
    if aCred.FidResgate then begin
      tITranFidFator.Value := -1;
      tITranFidPontos.Value := aCred.FidPontos;
    end else begin
      tITranFidFator.Clear;
      tITranFidPontos.Clear;
    end;
    tITranCliente.Value := aCred.Cliente;
    tITranCaixaPag.Value := aCred.Caixa;
    tITranPagPend.Value := False;
    tITranTipoItem.Value := itCredito;
    tITranItemID.Value := tCredID.Value;
    tITranItemPos.Value := 1;
    tITran.Post;
end;

procedure TDM.SalvaEspecie(E: TncEspecie);
begin
  if E.ID=0 then begin
    if tEspecie.IsEmpty then
      E.ID := 1
    else begin
      tEspecie.Last;
      E.ID := tEspecieID.Value+1;
    end;
  end;
  if not tEspecie.FindKey([E.ID]) then
    tEspecie.Insert else
    tEspecie.Edit;
  tEspecieID.Value := E.ID;
  tEspecieNome.Value := E.Nome;
  tEspecieTipo.Value := E.Tipo;
  tEspeciePermiteVarios.Value := E.PermiteVarios;
  tEspeciePermiteTroco.Value := E.PermiteTroco;
  tEspeciePermiteCred.Value := E.PermiteCred;
  tEspecieImg.Value := E.Img;
  tEspecieTipoPagNFE.Value := E.TipoPagNFE;
  tEspecie.Post;
end;

procedure TDM.SalvaEstoqueAtual(aProduto: Cardinal);
begin
  tProduto.IndexName := 'IID';
  if tProduto.FindKey([aProduto]) then 
  begin
    tProduto.Edit;
    tProdutoEstoquePend.Value := QuantPend(aProduto, 0);
    if tProdutoNaoControlaEstoque.Value then
      tProdutoEstoqueAtual.Clear else
      tProdutoEstoqueAtual.Value := UltimoSaldo(aProduto) - tProdutoEstoquePend.Value;
    tProduto.Post;                                     
  end;
end;

procedure TDM.SalvaInfoCampanha(IC: TInfoCampanha);
begin
  tIC.Active := True;
  tIC.Refresh;
  if tIC.IsEmpty then begin
    tIC.Insert;
    tICcampanha.Value := IC.icCampanha;
    tICutmccn.Value := IC.icutmccn;
    tICutmcct.Value := IC.icutmcct;
    tICutmctr.Value := IC.icutmctr;
    tICutmcmd.Value := IC.icutmcmd;
    tICutmcsr.Value := IC.icutmcsr;
    tIC.Post;
  end;
end;

function TDM.SalvaPagDebito(aDeb: TncDebito): Integer;
var I, aTipoItem, aItemID : Integer;

procedure _CancelAndRollback;
begin
  if nxDB.InTransaction then begin
    nxDB.Rollback;
    tDebito.Cancel;
    tCli.Cancel;
    tCaixa.Cancel;
    tTran.Cancel;
    tITran.Cancel;
    tMovEst.Cancel;
    tCred.Cancel;
  end;
end;

begin
  Result := 0;
  InitTran([tDebito, tCli, tCaixa, tTran, tITran, tCred, tMovEst, tPagEsp], True);
  try
    tDebito.CancelRange;
    
    aDeb.DataHora := Now;
    aDeb.Caixa := NumCaixaAberto;
    if aDeb.Caixa=0 then begin
      Result := ncerrCaixaFechado;
      Exit;
    end;

    tCli.IndexName := 'IID';
    if not tCli.FindKey([aDeb.Cliente]) then begin
      Result := ncerrItemInexistente;
      Exit;
    end;

    tCli.Edit;
    tCliUltVisita.Value := Now;
    tCli.Post;

    aDeb.SalvaDescPago;
    tTran.Insert;
    aDeb.SalvaDataset(tTran);

    if aDeb.PagEsp<>nil then
      tTranPagEsp.AsVariant := aDeb.PagEsp.IDEspecie else
      tTranPagEsp.Clear;

    if not TGuidEx.IsEmptyGuid(aDeb.NativeGuid) then
      tTranUID.AsGuid := aDeb.NativeGuid;
      
    tTranTipo.Value := trPagDebito;
    tTranNomeCliente.Value := tCliNome.Value;
    tTranID.Clear;
    tTran.Post;
    aDeb.ID := tTranID.Value;

    with aDeb do 
    for I := 0 to Itens.Count-1 do with Itens[I] do begin
      idItemPos := I+1;
      tITran.Insert;
      idDataHora := aDeb.DataHora;
      SaveToITran(tITran);
      tITran.Post;

      tDebito.IndexName := 'ITipoID';
      aTipoItem := idTipoItem;
      aItemID  := idItemID;

      if not tDebito.FindKey([aTipoItem, aItemID, aDeb.Cliente]) then begin
        if (aTipoItem=150) or (aItemID=-1) then Exit;
        
        Result := ncerrItemInexistente;
        Exit;
      end;

      tDebito.Edit;
      tDebitoValor.Value := tDebitoValor.Value - idPago - idDesconto;
      tDebito.Post;

      case idTipoItem of
        itMovEst : 
        if tMovEst.Locate('ID', idItemID, []) then begin
          tMovEst.Edit;
          tMovEstPagoPost.Value := tMovEstPagoPost.Value + idPago;
          tMovEstDescPost.Value := tMovEstDescPost.Value + idDesconto;
          tMovEst.Post;
        end;
      end;

      SavePagEsp(tTranID.Value, tTranTipo.Value, tTranCaixa.Value, tTranDataHora.Value, tTranCancelado.Value, aDeb.PagEsp);

      if tDebitoValor.Value < 0.01 then 
        tDebito.Delete;
    end;

    RefreshDebitoCliente;

    if not FidControl.CanCommit then begin
      Result := ncerrSaldoFidInsuficiente;
      Exit;
    end;
    
    nxDB.Commit;
  finally
    _CancelAndRollback;
  end;
end;

procedure TDM.SalvaProdFor(aProd, aFor: Cardinal);
begin
  DebugMsg('TDM.SalvaProdFor - aProd: '+IntToStr(aProd) + ' - aFor: ' + IntToStr(aFor));
  tProdFor.IndexName := 'IProdFor';
  if not tProdFor.FindKey([aProd, aFor]) then begin
    DebugMsg('TDM.SalvaProdFor 2');
    tProdFor.Append;
    tProdForProduto.Value := aProd;
    tProdForFornecedor.Value := aFor;
    tProdFor.Post;
  end;
  if tProduto.FindKey([aProd]) and (tProdutoFornecedor.Value=0) then begin
    DebugMsg('TDM.SalvaProdFor - Principal');
    tProduto.Edit;
    tProdutoFornecedor.Value := aFor;
    tProduto.Post;
  end;
  DebugMsg('TDM.SalvaProdFor 3');
end;

procedure TDM.SalvaTipoTran(T: TncTipoTran);
begin
  if tTipoTran.FindKey([ T.Tipo]) then
    tTipoTran.Edit else
    tTipoTran.Insert;
  T.SalvaDataset(tTipoTran);  
  tTipoTran.Post;
end;

procedure TDM.SalvaUrls;
begin
  tConfig.Edit;
  tConfig.FieldByname('Urls').Value := gConfig.Urls;
  tConfig.Post;
end;

procedure TDM.SalvaUsuario(U: TncUsuario);
var NewTran: Boolean;
begin
  NewTran := InitTran([tUsuario], True);
  try
    if tUsuario.FindKey([U.Username]) then
      tUsuario.Edit
    else
      tUsuario.Insert;
        
    U.SalvaDataset(tUsuario);
    tUsuario.Post;
    if NewTran then nxDB.Commit;
  except
    tUsuario.cancel;
    if NewTran then nxDB.Rollback;
    Raise;
  end;
end;

procedure TDM.SavePagEsp(aTranID, aTipoTran, aCaixa: Integer; aDataHora: TDateTime; aCancelado: Boolean; aPagEsp: TncPagEspecies);
var 
  I : Integer;
  SIndex : String;
begin
  tPagEsp.IndexName := 'ITranID';
  tPagEsp.SetRange([aTranID], [aTranID]);
  try
    tPagEsp.First;
    while not tPagEsp.Eof do begin
      if aPagEsp.PorID(tPagEspID.Value)=nil then
        tPagEsp.Delete else
        tPagEsp.Next;
    end;
  finally
    tPagEsp.CancelRange;
  end;

  tPagEsp.CancelRange;
  tPagEsp.IndexName := 'IID';
        
  with aPagEsp do   
  for I := 0 to Count - 1 do begin
    if (Items[i].peID>0) and tPagEsp.FindKey([Items[i].peID]) then
      tPagEsp.Edit else
      tPagEsp.Insert;

    tPagEspTran.Value := aTranID;
    tPagEspCaixa.Value := aCaixa;
    tPagEspTipoTran.Value := aTipoTran;
    tPagEspDevolucao.Value := (aTipoTran=trEstDevolucao);
    tPagEspCancelado.Value := aCancelado;
    tPagEspDataHora.Value := aDataHora;
    tPagEspEspecie.Value := Items[i].peEspecie;
    tPagEspTipo.Value := Items[i].peTipo;
    tPagEspTroco.Value := Items[i].peTroco;
    tPagEspValor.Value := Items[i].peValor;
    tPagEspDoc.Value := Items[i].peDoc;
    tPagEsp.Post;
    Items[i].peID := tPagEspID.Value;
  end;  
end;

procedure TDM.SavePagEspLE(aTranID, aTipoTran, aCaixa: Integer; aValor: Currency;
  aDataHora: TDateTime; aCancelado: Boolean);
var 
  I : Integer;
  SIndex : String;

function FatorValor: Currency;
begin  
  if aTipoTran=trCaixaEnt then
   Result := aValor else
   Result := -1 * aValor;
end;

begin
  tPagEsp.IndexName := 'ITranID';
  try
    if tPagEsp.FindKey([aTranID]) then
      tPagEsp.Edit else
      tPagEsp.Insert;
    tPagEspTran.Value := aTranID;
    tPagEspCaixa.Value := aCaixa;
    tPagEspTipoTran.Value := aTipoTran;
    tPagEspCancelado.Value := aCancelado;
    tPagEspDataHora.Value := aDataHora;
    tPagEspEspecie.Value := gEspecies.IDDinheiro;
    tPagEspTipo.Value := tipoesp_dinheiro;
    tPagEspTroco.Value := 0;
    tPagEspValor.Value := FatorValor;
    tPagEspDoc.Value := '';
    tPagEsp.Post;
  finally
    tPagEsp.IndexName := 'IID';
  end;
end;

procedure TDM.SavePagEspTipoTran(aTranID, aTipoTran, aCaixa: Integer);
begin
  tPagEsp.IndexName := 'ITranID';
  tPagEsp.SetRange([aTranID], [aTranID]);
  try
    tPagEsp.First;
    while not tPagEsp.Eof do begin
      tPagEsp.Edit;
      tPagEspTipoTran.Value := aTipoTran;
      tPagEspDevolucao.Value := (aTipoTran=trEstDevolucao);
      tPagEspCaixa.Value := aCaixa;
      tPagEsp.Next;  
    end;
  finally
    tPagEsp.CancelRange;
  end;
end;

procedure TDM.SetCaixaPagIgualCaixa;
var Q: TnxQuery;
begin
  Q := TnxQuery.Create(Self);
  try
    Q.Timeout := 600000;
    Q.Database := nxDB;
    Q.SQL.Text := 'update "tran" set caixapag = caixa where tipo = 18';
    Q.ExecSQL;
    Q.Active := False;

    Q.SQL.Text := 'update "itran" set caixapag = caixa where tipotran = 18';
    Q.ExecSQL;
    Q.Active := False;
  finally
    Q.Free;
  end;
end;

procedure TDM.sysLog_Add(aInfo: String);
begin
  if sysLog_Find(aInfo) then 
    tSysLog.Edit else
    tSysLog.Append;
  tSysLogInfo.Value := aInfo;
  tSysLogVer.Value := ncVersionInfo.WProgShortVer;
  tSysLog.Post;

  DebugMsg('TDM.sysLog_Add - aInfo: '+aInfo);
end;

function TDM.sysLog_Find(aInfo: String): Boolean;
begin
  tSysLog.IndexName := 'IInfo';
  Result := tSysLog.FindKey([aInfo]);
end;

function TDM.sysLog_lastver: Word;
begin
  if sysLog_Find('lastver') then
    Result := tSysLogver.Value else
    Result := 0;
end;

procedure TDM.tAuxITranCalcFields(DataSet: TDataSet);
begin
  if tAuxITranCancelado.Value or 
    (tAuxITranCaixa.Value=0) or
    (tAuxITranTipoTran.Value in [trEstCompra, trEstEntrada, trEstSaida, trPagDebito, trEstDevolucao])
  then
    tAuxITranDebito.Value := 0 else
    tAuxITranDebito.Value := tAuxITranTotal.Value - tAuxITranDesconto.Value - tAuxITranPago.Value;
end;

procedure TDM.tAuxMECalcFields(DataSet: TDataSet);
begin
  if tAuxMENaoControlaEstoque.Value then begin
    tAuxMEFator.Value := 0;
    tAuxMESaldoPost.Value := 0;
  end else begin
    if tAuxMECancelado.Value or tAuxMEDataHora.IsNull then
      tAuxMEFator.Value := 0 
    else
    if tAuxMEEntrada.Value then
      tAuxMEFator.Value := 1 else
      tAuxMEFator.Value := -1;
    tAuxMESaldoPost.Value := tAuxMEEstoqueAnt.Value + (tAuxMEFator.Value * tAuxMEQuant.Value);
  end;  
end;

procedure TDM.tCliBeforePost(DataSet: TDataSet);
begin
  if tCliSemFidelidade.Value then
    tCliFidPontos.Value := 0;
    
  FidControl.SaveChange(tCliID.Value, tCliFidPontos.OldValue, tCliFidPontos.Value);
end;

procedure TDM.TimerCestTimer(Sender: TObject);
begin
  DebugMsg('TDM.TimerCestTimer');
  TimerCest.Enabled := False;
  csServ.Enter;
  try
    if not tNFConfigEmitirNFCe.Value then Exit;
    CestUpdate(0, False, nxSession.ServerEngine, nil);
  finally
    TimerCest.Interval := 300000;
    TimerCest.Enabled := True;
    csServ.Leave;
  end;
end;

function VarDef(V, Def: Variant): Variant;
begin
  if V=null then
    Result := Def else
    Result := V;
end;

procedure TDM.tITranBeforeDelete(DataSet: TDataSet);
var
  aClienteNew, aFatorNew : Integer;
  aPontosNew : Double;

  SaveEdit : Boolean;
  SaveID : Integer;
begin
  aClienteNew := tITranCliente.Value;
  aPontosNew := tITranFidPontos.Value;

  if tITranCancelado.Value then
    aFatorNew := 0 else
    aFatorNew := tITranFidFator.Value;

  if (aClienteNew=0) then Exit;
  if (aFatorNew=0) then Exit;
  if (aPontosNew=0) then Exit;

  SaveEdit := (tCli.State=dsEdit);
  SaveID := tCliID.Value;

  try
    if tCliID.Value<>aClienteNew then tCli.FindKey([aClienteNew]);
    if tCliID.Value=aClienteNew then begin
      if tCli.State<>dsEdit then tCli.Edit;
      
      tCliFidPontos.Value := tCliFidPontos.Value + (-1 * aFatorNew * aPontosNew);
      
      if aFatorNew=1 then
        tCliFidTotal.Value := tCliFidTotal.Value - aPontosNew
      else
        if (aFatorNew=-1) then
        if (tITranTipoTran.Value=trAjustaFid) then
          tCliFidTotal.Value := tCliFidTotal.Value + aPontosNew else
          tCliFidResg.Value := tCliFidResg.Value - aPontosNew;
            
      tCli.Post;
    end;
  finally
    if SaveID<>tCliID.Value then tCli.FindKey([SaveID]);
    if (SaveID=tCliID.Value) and SaveEdit and (tCli.State<>dsEdit) then tCli.Edit;
  end;
end;

procedure TDM.tITranBeforePost(DataSet: TDataSet);

procedure AjustaPontos;
var
  aClienteOld, aClienteNew, aFatorOld, aFatorNew : Integer;
  aPontosOld, aPontosNew : Double;
  
  SaveEdit : Boolean;
  SaveID : Integer;
begin

  if (tITranCancelado.OldValue<>null) and tITranCancelado.OldValue then
    aFatorOld := 0 else
    aFatorOld := VarDef(tITranFidFator.OldValue, 0);

  aPontosOld := VarDef(tITranFidPontos.OldValue, 0);
  aClienteOld := VarDef(tITranCliente.OldValue, 0);

  aClienteNew := tITranCliente.Value;
  aPontosNew := tITranFidPontos.Value;

  if tITranCancelado.Value then
    aFatorNew := 0 else
    aFatorNew := tITranFidFator.Value;

  if (aClienteOld=0) and (aClienteNew=0) then Exit;
  if (aFatorOld=0) and (aFatorNew=0) then Exit;
  if (aClienteOld=aClienteNew) and (aFatorOld=aFatorNew) and (aPontosOld=aPontosNew) then Exit;

  SaveEdit := (tCli.State=dsEdit);
  SaveID := tCliID.Value;

  try
    if (aClienteOld>0) then begin
      if tCliID.Value<>aClienteOld then tCli.FindKey([aClienteOld]);
      if tCliID.Value=aClienteOld then begin
        if tCli.State<>dsEdit then tCli.Edit;
        tCliFidPontos.Value := tCliFidPontos.Value + (-1 * aFatorOld * aPontosOld);
        if aFatorOld=1 then
          tCliFidTotal.Value := tCliFidTotal.Value - aPontosOld 
        else
        if (aFatorOld=-1) then
          if (tITranTipoTran.Value in [trAjustaFid, trEstDevolucao]) then
            tCliFidTotal.Value := tCliFidTotal.Value + aPontosOld else
            tCliFidResg.Value := tCliFidResg.Value - aPontosOld;
        tCli.Post;
      end;
    end;

    if (aClienteNew>0) then begin
      if tCliID.Value<>aClienteNew then tCli.FindKey([aClienteNew]);
      if tCliID.Value=aClienteNew then begin
        if tCli.State<>dsEdit then tCli.Edit;
        tCliFidPontos.Value := tCliFidPontos.Value + (aFatorNew * aPontosNew);
        if aFatorNew=1 then
          tCliFidTotal.Value := tCliFidTotal.Value + aPontosNew
        else
        if (aFatorNew=-1) then
          if (tITranTipoTran.Value in [trAjustaFid, trEstDevolucao]) then
            tCliFidTotal.Value := tCliFidTotal.Value - aPontosNew else
            tCliFidResg.Value := tCliFidResg.Value + aPontosNew;
            
        tCli.Post;
      end;
    end;
  finally
    if SaveID<>tCliID.Value then tCli.FindKey([SaveID]);
    if (SaveID=tCliID.Value) and SaveEdit and (tCli.State<>dsEdit) then tCli.Edit;
  end;
end;

begin
  if tITranFidFator.IsNull then begin
    tITranFidFator.Value := 0;
    if gConfig.FidAtivo and (tITranTipoItem.Value=itMovEst) then
    begin  
      if (tITranTipoTran.Value=trEstDevolucao) then begin
        tITranFidFator.Value := -1;
        tITranFidPontos.Value := gConfig.CalcPontos(tITranTotal.Value);
      end else
      if (tITranTipoTran.Value in [trEstVenda, trPagDebito]) and (tITranPago.Value>0) then begin
        tITranFidFator.Value := 1;
        tITranFidPontos.Value := gConfig.CalcPontos(tITranPago.Value);
      end else
        tITranFidPontos.Value := 0
    end;
  end;
  
  tITranFidMov.Value := (tITranFidPontos.Value<>0) and (tITranFidFator.Value<>0);
  if tTran.Active and (tTranID.Value=tITranTran.Value) then 
    tITranCliente.Value := tTranCliente.Value;

  AjustaPontos;  
end;

procedure TDM.tITranCalcFields(DataSet: TDataSet);
begin
  if tITranCancelado.Value or 
    (tITranCaixa.Value=0) or
    (tITranTipoTran.Value in [trEstCompra, trEstDevolucao, trEstEntrada, trEstSaida, trPagDebito])
  then
    tITranDebito.Value := 0 else
    tITranDebito.Value := tITranTotal.Value - tITranDesconto.Value - tITranPago.Value;
end;

procedure TDM.tMovEstCalcFields(DataSet: TDataSet);
begin
  try
    if tMovEstCancelado.Value or tMovEstNaoControlaEstoque.Value then
      tMovEstFator.Value := 0
    else
    if tMovEstEntrada.Value then
      tMovEstFator.Value := 1
    else
      tMovEstFator.Value := -1;
    tMovEstSaldoPost.Value := tMovEstEstoqueAnt.Value + (tMovEstFator.Value * tMovEstQuant.Value);
    
    if tMovEstQuant.Value>0 then 
      tMovEstUnitarioLiq.Value := (tMovEstTotal.Value-tMovEstDesconto.Value) / tMovEstQuant.Value;

    tMovEstValorProdLiq.Value := tMovEstTotal.Value - tMovEstDesconto.Value;
  except
    on E: Exception do 
      DebugEx(Self, 'tMovEstCalcFields - ID: '+tMovEstID.AsString, E, False);
  end;
end;

procedure TDM.tNFConfigCalcFields(DataSet: TDataSet);
begin
  if tNFConfigEmitirNFCe.Value then
    tNFConfignfe_venda_norm.Value := tNFConfignfe_venda.Value else
    tNFConfignfe_venda_norm.Value := True;

  tNFConfigESAT.Value := (tNFConfigTipo.Value=nfcfg_sat);

  if tNFConfigEmitirNFCe.Value and tNFConfigEmitirNFe.Value and tNFConfignfe_venda.Value then begin
    case tNFConfigtipodoc_padrao.Value of
      1 : if tNFConfigESat.Value then tNFConfigcalc_tiponfe.Value := tiponfe_sat else tNFConfigcalc_tiponfe.Value := tiponfe_nfce;
      2 : tNFConfigcalc_tiponfe.Value := tiponfe_nfe;
    else
      tNFConfigcalc_tiponfe.Value := tiponfe_nenhum;
    end;
  end else
  if tNFConfigEmitirNFCe.Value then begin
    if tNFConfigESat.Value then
      tNFConfigcalc_tiponfe.Value := tiponfe_sat else
      tNFConfigcalc_tiponfe.Value := tiponfe_nfce;
  end else
  if tNFConfigEmitirNFe.Value then
    tNFConfigcalc_tiponfe.Value := tiponfe_nfe
  else
    tNFConfigcalc_tiponfe.Value := tiponfe_nenhum;  
end;

function TDM.TotalDeb(aCliente: Integer): Currency;
var Q: TnxQuery;
begin
  Q := TnxQuery.Create(nil);
  try
    Q.Database := nxDB;
    Q.SQL.Text := 'select sum(valor) as debito from debito where cliente = '+IntToStr(aCliente);
    Q.Active := True;
    Result := Q.FieldByName('debito').AsCurrency;
  finally
    Q.Free;
  end;
end;

procedure TDM.tTranCalcFields(DataSet: TDataSet);
begin
  if tTranCancelado.Value or 
    (tTranCaixa.Value=0) or
    (tTranTipo.Value in [trEstCompra, trEstDevolucao, trEstEntrada, trEstSaida, trPagDebito]) 
  then
    tTranDebito.Value := 0 else
    tTranDebito.Value := tTranTotal.Value - tTranDesconto.Value - tTranPago.Value - tTranCreditoUsado.Value;

  if tTranDebito.Value<0 then
    tTranDebito.Value := 0;
end;


procedure TDM.ZerarEstoque(aFunc: String);
begin
  InitTran([tTran, tProduto, tMovEst, tCaixa], True);
  try
    tTran.Insert;
    tTranTipo.Value := trZerarEstoque;
    tTranFunc.Value := aFunc;
    tTranDataHora.Value := Now;
    tTranDescricao.Value := 'Zerar estoque todos produtos';
    tTranCaixa.Value := NumCaixaAberto;
    tTranPagPend.Value := False;
    tTran.Post;

    tProduto.First;
    while not tProduto.Eof do begin
      if Abs(tProdutoEstoqueAtual.Value)>0 then begin
        tMovEst.Insert;
        tMovEstProduto.Value := tProdutoID.Value;
        tMovEstTran.Value := tTranID.Value;
        tMovEstCaixa.Value := tTranCaixa.Value;
        tMovEstDataHora.Value := tTranDataHora.Value;
        if tProdutoEstoqueAtual.Value > 0 then begin
          tMovEstTipoTran.Value := trEstSaida;
          tMovEstEntrada.Value := False;
        end else begin
          tMovEstTipoTran.Value := trEstEntrada;
          tMovEstEntrada.Value := True;
        end;
        tMovEstQuant.Value := Abs(tProdutoEstoqueAtual.Value);
        tMovEstEstoqueAnt.Value := tProdutoEstoqueAtual.Value;
        tMovEst.Post;

        tProduto.Edit;
        tProdutoEstoqueAtual.Value := 0;
        tProduto.Post;
      end;
      tProduto.Next;
    end;
    nxDB.Commit;
  except
    nxDB.Rollback;
    raise;
  end;
end;

{ TFidControl }

function TFidControl.CanCommit(DisableAutoPremiar: Boolean=False): Boolean;
var i: integer;
  np : Double;
begin
  for i := 0 to FList.Count - 1 do with PFidCliente(FList[i])^ do
    if (fdNew<0) and (fdNew<fdOld) then begin
      Result := False;
      Exit;
    end;
    
  Result := True;

  if (not DisableAutoPremiar) and gConfig.FidAutoPremiarAtivo then
  for i := 0 to FList.Count - 1 do with PFidCliente(FList[i])^ do begin
    np := fdNew;
    if ((np>=gConfig.FidAutoPremiarPontos) or ((gConfig.FidAutoPremiarPontos-fdNew)<0.0001)) and 
       (FPremiar.IndexOf(Pointer(fdID))=-1) 
    then
      FPremiar.Add(Pointer(fdID));
  end;

  FTimer.Enabled := False;
  FTimer.Enabled := (FPremiar.Count>0);    
end;

procedure TFidControl.Clear;
begin
  while FList.Count > 0 do begin
    Dispose(PFidCliente(FList[0]));
    FList.Delete(0);
  end;
end;

constructor TFidControl.Create(aDM: TDM);
begin
  FDM := aDM;
  FPremiar := TList.Create;
  FList := TList.Create;
  FTimer := TTimer.Create(nil);
  FTimer.Interval := 500;
  FTimer.Enabled := False;
  FTimer.OnTimer := OnTimer;
end;

destructor TFidControl.Destroy;
begin
  Clear;
  FList.Free;
  FPremiar.Free;
  FTimer.Free;
  inherited;
end;

function TFidControl.Get(aID: Integer; aCreate: Boolean; aOld: Double): PFidCliente;
var i : Integer;
begin
  Result := nil;
  for I := 0 to FList.Count - 1 do 
    if PFidCliente(FList[I])^.fdID=aID then begin
      Result := PFidCliente(FList[I]);
      Break;
    end;

  if (Result=nil) and aCreate then begin
    New(Result);
    FList.Add(Result);
    Result^.fdID := aID;
    Result^.fdOld := aOld;
    Result^.fdNew := 0;
  end; 
end;

procedure TFidControl.OnTimer(Sender: TObject);
begin
  FTimer.Enabled := False;
  while FPremiar.Count>0 do begin
    csServ.Enter;
    try
      DM.PremiarCli(Integer(FPremiar[0]));
    finally
      csServ.Leave;
    end;
    FPremiar.Delete(0);
  end;
end;

procedure TFidControl.SaveChange(aID: Integer; vOld: Variant; aNew: Double);
var 
  P : PFidCliente;
  aOld : Double;
begin
  if vOld=null then
    aOld := 0 else
    aOld := vOld;
    
  P := Get(aID, True, aOld);
  P^.fdNew := aNew;
end;

{ TThreadInfoCampanha }

constructor TThreadInfoCampanha.Create(aHandle: HWND);
begin
  FHandle := aHandle;
  inherited Create(False);
end;

procedure TThreadInfoCampanha.Execute;
var IC : TInfoCampanha;
begin
  IC := ObtemInfoCampanha;
  if IC <> nil then PostMessage(FHandle, wm_infocampanha, Integer(IC), 0); 
end;

initialization

with FormatSettings do
  if NegCurrFormat=0 then
    NegCurrFormat := 1;

  DM := nil;

  
end.
