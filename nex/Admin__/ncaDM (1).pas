{
    ResourceString: Dario 10/03/13
    João: TODO List!
}
unit ncaDM;

interface 

{$I nex.inc}


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Variants, 
  Db, nxdb, nxllConst, nxllTypes, nxdbBase, kbmMemTable, LMDCustomComponent,
  LMDOneInstance, 
  ncErros,
  ncEspecie,
  ncClassesBase, 
  ncMovEst,
  ncListaID,
  ncIDRecursos,
  dxBar,
  cxVGrid,
  cxDBVGrid,
  cxGrid,
  ncCompCliente, ExtCtrls, nxsdServerEngine, nxreRemoteServerEngine,
  nxllComponent, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit,
  cxCalendar, cxMaskEdit, cxTextEdit, cxDBLookupComboBox,
  cxGridCustomTableView, 
  cxGridTableView, 
  cxGridDBTableView, 
  cxGridDBCardView,
  cxGridCardView,
  cxClasses, cxColorComboBox,
  cxControls, cxGridCustomView, LMDIniCtrl, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdDayTime, LMDWaveComp,
  cxEditRepositoryItems, ImgList, nxllSimpleCommandHandler,
  ncNXServRemoto, nxllSimpleSession, nxllPluginBase, 
  LMDBaseController, LMDCustomContainer, LMDGenericList,
  cxExtEditRepositoryItems, cxImageComboBox, cxNavigator, ncCaixas, 
  ncaDocEdit, IdHttp,
  IdMultipartFormData  ,
  cxCheckBox, frxClass, nxtmSharedMemoryTransport, frxDBSet, System.ImageList,
  LMDStrList, cxDBEditRepository;

const
  wm_Biometria = wm_user + 100;
  
type

  TncDocEditHelper = class ( TncBaseDocEditHelper )
    function ObtemNome(aDocID: String): String; override;
    function RunDocMgr(aDocEdit: TncDocEdit): Boolean; override;
  end;

  TInfoCor = object
    icCorFundo : TColor;
    icCorFonte : TColor;
    icNegrito  : Boolean;
    procedure Limpa;
    procedure LeStr(S: String);
    function GetStr: String;
  end;

  TInfoModulo = object
    imID        : Byte;
    imPos       : Byte;
    imVisivel   : Boolean;
    imMostratab : Boolean;
    procedure Limpa;
    procedure LeStr(S: String);
    function GetStr: String;
  end;

  TDados = class(TDataModule)
    tbCli: TnxTable;
    tbPro: TnxTable;
    tbTran: TnxTable;
    tbMovEst: TnxTable;
    Session: TnxSession;
    db: TnxDatabase;
    tbConfig: TnxTable;
    dsConfig: TDataSource;
    RSE: TnxRemoteServerEngine;
    mtUsuario: TkbmMemTable;
    dsUsuario: TDataSource;
    mtUsuarioUsername: TStringField;
    mtUsuarioNome: TStringField;
    mtUsuarioAdmin: TBooleanField;
    mtUsuarioSenha: TStringField;
    mtUsuarioGrupos: TMemoField;
    mtUsuarioDireitos: TMemoField;
    mtUsuarioNumClientes: TIntegerField;
    tbLayout: TnxTable;
    tbLayoutUsuario: TStringField;
    tbLayoutGrid: TStringField;
    tbLayoutNome: TStringField;
    tbLayoutPublico: TBooleanField;
    tbLayoutLayout: TBlobField;
    tbLayoutFiltro: TBlobField;
    tbLayoutUsuarios: TMemoField;
    tbCaixa: TnxTable;
    Timer2: TTimer;
    Q: TnxQuery;
    gvRep: TcxGridViewRepository;
    TVL: TcxGridDBTableView;
    TVLCodigo: TcxGridDBColumn;
    TVLNome: TcxGridDBColumn;
    TVLUsername: TcxGridDBColumn;
    TVLDebito: TcxGridDBColumn;
    Reg: TLMDIniCtrl;
    tbTranID: TAutoIncField;
    tbTranDataHora: TDateTimeField;
    tbTranFunc: TStringField;
    tbTranTotal: TCurrencyField;
    tbTranDesconto: TCurrencyField;
    tbTranPago: TCurrencyField;
    tbTranObs: TMemoField;
    tbTranCancelado: TBooleanField;
    tbTranCanceladoPor: TStringField;
    tbTranCanceladoEm: TDateTimeField;
    tbTranMaq: TWordField;
    tbTranNomeCliente: TStringField;
    tbMovEstID: TAutoIncField;
    tbMovEstQuant: TFloatField;
    tbMovEstUnitario: TCurrencyField;
    tbMovEstTotal: TCurrencyField;
    tbMovEstCustoU: TCurrencyField;
    tbMovEstDesconto: TCurrencyField;
    tbMovEstPago: TCurrencyField;
    tbMovEstDataHora: TDateTimeField;
    tbMovEstEntrada: TBooleanField;
    tbMovEstCancelado: TBooleanField;
    tbMovEstEstoqueAnt: TFloatField;
    tbMovEstCategoria: TStringField;
    tbMovEstNaoControlaEstoque: TBooleanField;
    tbCaixaID: TAutoIncField;
    tbCaixaAberto: TBooleanField;
    tbCaixaUsuario: TStringField;
    tbCaixaAbertura: TDateTimeField;
    tbCaixaFechamento: TDateTimeField;
    tbCaixaTotalFinal: TCurrencyField;
    tbCaixaDescontos: TCurrencyField;
    tbCaixaCancelamentos: TCurrencyField;
    tbCaixaSaldoAnt: TCurrencyField;
    tbCaixaObs: TMemoField;
    dsTipoPass: TDataSource;
    tbCaixaSangria: TCurrencyField;
    tbCaixaSupr: TCurrencyField;
    Wav2: TLMDWaveComp;
    tbTranDebito: TCurrencyField;
    tbTranQtdTempo: TFloatField;
    tbTranFidResgate: TBooleanField;
    ER: TcxEditRepository;
    erSimNao: TcxEditRepositoryImageComboBoxItem;
    tbMovEstPagoPost: TCurrencyField;
    tbMovEstDescPost: TCurrencyField;
    tbMovEstITran: TIntegerField;
    tbMovEstSessao: TIntegerField;
    tbMovEstFidResgate: TBooleanField;
    tbMovEstFidPontos: TFloatField;
    erFidelidade: TcxEditRepositoryImageComboBoxItem;
    im16: TcxImageList;
    erTipoTran: TcxEditRepositoryImageComboBoxItem;
    erTipoItem: TcxEditRepositoryImageComboBoxItem;
    erFidOpe: TcxEditRepositoryImageComboBoxItem;
    erTipoPremioAuto: TcxEditRepositoryImageComboBoxItem;
    SimpleCmdHandler: TnxSimpleCommandHandler;
    nxTCPIP: TnxWinsockTransport;
    Timer1: TTimer;
    GL: TLMDGenericList;
    tbCaixaReproc: TDateTimeField;
    tbCaixaEstSessoesQtd: TIntegerField;
    tbCaixaEstSessoesTempo: TFloatField;
    tbCaixaEstUrls: TIntegerField;
    tbCaixaEstSyncOk: TBooleanField;
    tbCaixaEstBuscasEng: TnxMemoField;
    tbCaixaEstRes: TnxMemoField;
    tbCaixaSaldoF: TCurrencyField;
    tbCaixaQuebra: TCurrencyField;
    tbCaixaIDLivre: TStringField;
    tbTranTotLiq: TCurrencyField;
    tbIC: TnxTable;
    tbICIP: TStringField;
    tbICcampanha: TStringField;
    tbICutmccn: TStringField;
    tbICutmctr: TStringField;
    tbICutmcct: TStringField;
    tbICutmcmd: TStringField;
    tbICutmcsr: TStringField;
    tbMovEstPermSemEstoque: TBooleanField;
    tbTranDebitoAnt: TCurrencyField;
    tbTranDebitoPago: TCurrencyField;
    tbTranCreditoAnt: TCurrencyField;
    tbTranCredito: TCurrencyField;
    tbTranCreditoUsado: TCurrencyField;
    tbTranCredValor: TBooleanField;
    tbEspecie: TnxTable;
    tbEspecieID: TWordField;
    tbEspecieNome: TStringField;
    tbEspeciePermiteTroco: TBooleanField;
    tbEspeciePermiteVarios: TBooleanField;
    tbEspeciePermiteCred: TBooleanField;
    tbEspecieImg: TWordField;
    tbTranTroco: TCurrencyField;
    tbTranPagFunc: TStringField;
    tbTranPagPend: TBooleanField;
    tbTranDescPerc: TFloatField;
    tbTranDescPorPerc: TBooleanField;
    mtUsuarioLimiteDesc: TFloatField;
    mtUsuarioImg: TSmallintField;
    mtEsp: TkbmMemTable;
    mtEspID: TWordField;
    mtEspNome: TStringField;
    tbCliID: TAutoIncField;
    tbCliNome: TStringField;
    tbCliEndereco: TStringField;
    tbCliBairro: TStringField;
    tbCliCidade: TStringField;
    tbCliUF: TStringField;
    tbCliCEP: TStringField;
    tbCliSexo: TStringField;
    tbCliObs: TnxMemoField;
    tbCliCpf: TStringField;
    tbCliRg: TStringField;
    tbCliTelefone: TStringField;
    tbCliEmail: TnxMemoField;
    tbCliPai: TStringField;
    tbCliMae: TStringField;
    tbCliSenha: TStringField;
    tbCliUltVisita: TDateTimeField;
    tbCliDebito: TCurrencyField;
    tbCliEscola: TStringField;
    tbCliNickName: TStringField;
    tbCliDataNasc: TDateTimeField;
    tbCliCelular: TStringField;
    tbCliTemDebito: TBooleanField;
    tbCliLimiteDebito: TCurrencyField;
    tbCliFoto: TGraphicField;
    tbCliIncluidoEm: TDateTimeField;
    tbCliAlteradoEm: TDateTimeField;
    tbCliIncluidoPor: TStringField;
    tbCliAlteradoPor: TStringField;
    tbCliTitEleitor: TStringField;
    tbCliFidPontos: TFloatField;
    tbCliFidTotal: TFloatField;
    tbCliFidResg: TFloatField;
    tbCliAniversario: TStringField;
    tbCliSemFidelidade: TBooleanField;
    tbCliTemCredito: TBooleanField;
    tbCliPJuridica: TBooleanField;
    tbCliInativo: TBooleanField;
    tbCliFornecedor: TBooleanField;
    tbCliValorCred: TCurrencyField;
    tbTranUID: TGuidField;
    tbTranPagEsp: TWordField;
    tbMovEstTran: TLongWordField;
    tbMovEstAjustaCusto: TBooleanField;
    tbMovEstComissao: TCurrencyField;
    tbMovEstComissaoPerc: TFloatField;
    tbMovEstComissaoLucro: TBooleanField;
    tbMovEstProduto: TLongWordField;
    tbMovEstItem: TByteField;
    tbMovEstCliente: TLongWordField;
    tbMovEstCaixa: TIntegerField;
    tbMovEstTipoTran: TByteField;
    tbTranCliente: TLongWordField;
    tbTranTipo: TByteField;
    tbTranCaixa: TLongWordField;
    tbTranRecVer: TLongWordField;
    tbTranSessao: TLongWordField;
    tbTranCaixaPag: TLongWordField;
    tbEspecieTipo: TByteField;
    tbProID: TUnsignedAutoIncField;
    tbProCodigo: TStringField;
    tbProDescricao: TStringField;
    tbProUnid: TStringField;
    tbProPreco: TCurrencyField;
    tbProPrecoAuto: TBooleanField;
    tbProMargem: TFloatField;
    tbProObs: TnxMemoField;
    tbProImagem: TGraphicField;
    tbProCategoria: TStringField;
    tbProFornecedor: TLongWordField;
    tbProSubCateg: TStringField;
    tbProEstoqueAtual: TExtendedField;
    tbProCustoUnitario: TCurrencyField;
    tbProPodeAlterarPreco: TBooleanField;
    tbProPermiteVendaFracionada: TBooleanField;
    tbProNaoControlaEstoque: TBooleanField;
    tbProEstoqueMin: TExtendedField;
    tbProEstoqueMax: TExtendedField;
    tbProAbaixoMin: TBooleanField;
    tbProAbaixoMinDesde: TDateTimeField;
    tbProEstoqueRepor: TExtendedField;
    tbProComissaoPerc: TFloatField;
    tbProComissaoLucro: TBooleanField;
    tbProAtivo: TBooleanField;
    tbProFidelidade: TBooleanField;
    tbProFidPontos: TIntegerField;
    tbProCadastroRapido: TBooleanField;
    tbProIncluidoEm: TDateTimeField;
    tbProRecVer: TLongWordField;
    tbDoc: TnxTable;
    tbDocUID: TGuidField;
    tbDocTipo: TByteField;
    tbDocBobina: TBooleanField;
    tbDocTextOnly: TBooleanField;
    tbDocTamanho: TStringField;
    tbDocNome: TStringField;
    tbDocObs: TnxMemoField;
    tbDocParams: TnxMemoField;
    tbDocDoc: TBlobField;
    tbDocImg: TGraphicField;
    tbDocCustom: TBooleanField;
    tbDocSRECVER: TLongWordField;
    tbDocRECVER: TLongWordField;
    erTipoDoc: TcxEditRepositoryImageComboBoxItem;
    erTipoPapel: TcxEditRepositoryImageComboBoxItem;
    erParamsRec: TcxEditRepositoryCheckComboBox;
    tbTerm: TnxTable;
    tbTermTermID: TGuidField;
    tbTermNome: TStringField;
    tbTermOpcoes: TnxMemoField;
    tbDocID: TUnsignedAutoIncField;
    tbDocFree: TBooleanField;
    tbDocMinVer: TWordField;
    tbMovEstID_ref: TLongWordField;
    tbMovEstRecVer: TLongWordField;
    tbTranUID_ref: TGuidField;
    tbTranOpDevValor: TByteField;
    tbProEstoquePend: TExtendedField;
    tbProEstoqueTot: TExtendedField;
    tbMovEstPend: TBooleanField;
    tbMovEstIncluidoEm: TDateTimeField;
    tbTranIncluidoEm: TDateTimeField;
    tbNCM: TnxTable;
    tbNCMNCM: TStringField;
    tbNCMDescricao: TStringField;
    tbNCMNCMDescr: TStringField;
    nxSharedMemoryTransport1: TnxSharedMemoryTransport;
    tbProNCM: TStringField;
    tNFConfig: TnxTable;
    tbProNCM_Ex: TStringField;
    erCST: TcxEditRepositoryImageComboBoxItem;
    erCSOSN: TcxEditRepositoryImageComboBoxItem;
    tNFConfigEmitirNFCe: TBooleanField;
    tNFConfigEmitirNFE: TBooleanField;
    tNFConfigCertificadoDig: TStringField;
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
    tCFOP: TnxTable;
    tCFOPCodigo: TWordField;
    tCFOPDescricao: TnxMemoField;
    tCFOPEntrada: TBooleanField;
    tCFOPTipo: TByteField;
    tCFOPNFCe: TBooleanField;
    tCFOPOrdem: TByteField;
    tCFOPCSOSN: TWordField;
    tbProbrtrib: TWordField;
    tBrTrib: TnxTable;
    tBrTribID: TWordField;
    tBrTribNome: TStringField;
    tBrTribOrigem: TByteField;
    tBrTribCST: TWordField;
    tBrTribCSOSN: TWordField;
    tBrTribICMS: TFloatField;
    tBrTribPadrao: TBooleanField;
    tBrTribCFOP_nfce: TWordField;
    tNFConfigCSC: TStringField;
    tNFConfigIdCSC: TStringField;
    tNFConfigFromEmail: TStringField;
    tNFConfigFromName: TStringField;
    tbTranStatusNFE: TByteField;
    tbTranChaveNFE: TStringField;
    tbTranTipoNFE: TByteField;
    tbTranExtra: TnxMemoField;
    tbNFE: TnxTable;
    tbNFENumSeq: TUnsignedAutoIncField;
    tbNFEModelo: TStringField;
    tbNFESerie: TStringField;
    tbNFENumero: TLongWordField;
    tbNFEChave: TStringField;
    tbNFEEntrada: TBooleanField;
    tbNFETipoDoc: TByteField;
    tbNFEDataHora: TDateTimeField;
    tbNFECFOP: TWordField;
    tbNFETran: TGuidField;
    tbNFERecibo: TStringField;
    tbNFEProtocolo: TStringField;
    tbNFEContingencia: TBooleanField;
    tbNFEStatus: TByteField;
    tbNFEStatusNF: TIntegerField;
    tbNFEXMLdest: TnxMemoField;
    tbNFEXMLret: TnxMemoField;
    tbNFEXMLtrans: TnxMemoField;
    tbNFEXMLtransCont: TnxMemoField;
    tbNFExMotivo: TnxMemoField;
    tbNFEIncluidoEm: TDateTimeField;
    tbNFEEmitidoEm: TDateTimeField;
    tbNFEContingenciaEM: TDateTimeField;
    tbNFEValor: TCurrencyField;
    erStatusNFE: TcxEditRepositoryImageComboBoxItem;
    tbNCMID: TUnsignedAutoIncField;
    tbNCMEx: TStringField;
    tbNCMImpostoFed_Imp: TFloatField;
    tbNCMImpostoFed_Nac: TFloatField;
    tbNCMImpostoEst: TFloatField;
    tbNCMImpostoMun: TFloatField;
    tbNCMRECVER: TLongWordField;
    tNFConfigTrib_Padrao: TWordField;
    tNFConfigPedirEmail: TByteField;
    tNFConfigPedirCPF: TByteField;
    tNFConfigAutoPrintNFCe: TBooleanField;
    tbMun: TnxTable;
    tbMunUF: TStringField;
    tbMunNome: TStringField;
    tbMunCodigo: TStringField;
    tNFConfigEnd_Complemento: TStringField;
    tNFConfigtpAmb: TByteField;
    tNFConfigModeloNFCe_Email: TGuidField;
    tbNFEtpAmb: TByteField;
    tNFConfigTipoCert: TByteField;
    tNFConfigurls_qrcode_hom: TnxMemoField;
    tNFConfigurls_qrcode_prod: TnxMemoField;
    tNFConfigurls_consulta: TnxMemoField;
    tbTranAmbNFe: TByteField;
    tbTranStatusCanc: TByteField;
    tbNFEProtocoloCanc: TStringField;
    tbNFEStatusCanc: TByteField;
    tbNFEStatusCancNF: TIntegerField;
    tbNFEJustCanc: TnxMemoField;
    tbNFExMotivoCanc: TnxMemoField;
    tbNFECanceladoPor: TStringField;
    tbNFECanceladoEm: TDateTimeField;
    tbNFEStatusInut: TByteField;
    tbNFECPF: TStringField;
    tbNFEEmail: TStringField;
    tbNFExmlRetCanc: TnxMemoField;
    tbNFEStatusInutNF: TIntegerField;
    tbNFEProtocoloInut: TStringField;
    tbNFExMotivoInut: TnxMemoField;
    tbNFExmlRetInut: TnxMemoField;
    tNFConfigCorpoEmail: TnxMemoField;
    tNFConfigAssuntoEmail: TStringField;
    tNFConfigRemoverNFCe: TBooleanField;
    tNFConfigDependNFCEOk: TBooleanField;
    tNFConfigPinCert: TStringField;
    dbConfig: TfrxDBDataset;
    tbNFEUID: TGuidField;
    tbNFEChaveCont: TStringField;
    tbNFELogEnvio: TnxMemoField;
    tbNFELogRec: TnxMemoField;
    tbNFEConsultouChave: TBooleanField;
    tNFConfigTipo: TByteField;
    tNFConfigDependSATOk: TBooleanField;
    tNFConfigModeloSAT_Email: TGuidField;
    tNFConfigObsFisco: TnxMemoField;
    tNFConfigNomeDllSat: TStringField;
    tNFConfigSignACSat: TStringField;
    tNFConfigCodigoAtivacao: TStringField;
    tNFConfigAssociarSignAC: TBooleanField;
    tNFConfigESAT: TBooleanField;
    tNFConfigNFStr: TStringField;
    genList: TLMDGenericList;
    tbConfigNumSeq: TUnsignedAutoIncField;
    tbConfigMeioPagto: TByteField;
    tbConfigAutoCad: TBooleanField;
    tbConfigQuickCad: TBooleanField;
    tbConfigCodProdutoDuplicados: TBooleanField;
    tbConfigCampoLocalizaCli: TByteField;
    tbConfigManterSaldoCaixa: TBooleanField;
    tbConfigRecPorta: TStringField;
    tbConfigRecSalto: TWordField;
    tbConfigRecLargura: TWordField;
    tbConfigRecRodape: TnxMemoField;
    tbConfigRecImprimir: TByteField;
    tbConfigRecMatricial: TBooleanField;
    tbConfigRecTipoImpressora: TStringField;
    tbConfigRecNomeLoja: TStringField;
    tbConfigRecCortaFolha: TBooleanField;
    tbConfigRecImprimeMeioPagto: TBooleanField;
    tbConfigRecPrefixoMeioPagto: TStringField;
    tbConfigEscondeTextoBotoes: TBooleanField;
    tbConfigPastaDownload: TStringField;
    tbConfigEmailDestino: TnxMemoField;
    tbConfigEmailIdent: TStringField;
    tbConfigEmailConteudo: TStringField;
    tbConfigFlags: TnxMemoField;
    tbConfigEmailEnviarCaixa: TBooleanField;
    tbConfigAlertaAssinatura: TBooleanField;
    tbConfigRelCaixaAuto: TBooleanField;
    tbConfigNaoVenderAlemEstoque: TBooleanField;
    tbConfigAutoSortGridCaixa: TBooleanField;
    tbConfigAutoObsAoCancelar: TBooleanField;
    tbConfigFidAtivo: TBooleanField;
    tbConfigFidVendaValor: TCurrencyField;
    tbConfigFidVendaPontos: TIntegerField;
    tbConfigFidParcial: TBooleanField;
    tbConfigFidAutoPremiar: TBooleanField;
    tbConfigFidAutoPremiarValor: TCurrencyField;
    tbConfigFidAutoPremiarPontos: TIntegerField;
    tbConfigFidMostrarSaldoAdmin: TBooleanField;
    tbConfigFidMsg: TBooleanField;
    tbConfigFidMsgTitulo: TStringField;
    tbConfigFidMsgTexto: TnxMemoField;
    tbConfigExigeDadosMinimos: TBooleanField;
    tbConfigDadosMinimos: TStringField;
    tbConfigCidadePadrao: TStringField;
    tbConfigUFPadrao: TStringField;
    tbConfigPedirSaldoI: TBooleanField;
    tbConfigPedirSaldoF: TBooleanField;
    tbConfigDTol: TByteField;
    tbConfigDVA: TDateTimeField;
    tbConfigProxAvisoAss: TDateTimeField;
    tbConfigPreLib: TBooleanField;
    tbConfigCamposCliCC: TnxMemoField;
    tbConfigCliCongelado: TBooleanField;
    tbConfigBanners: TnxMemoField;
    tbConfigBotoes: TnxMemoField;
    tbConfigRecursos: TStringField;
    tbConfigPrecoAuto: TBooleanField;
    tbConfigMargem: TFloatField;
    tbConfigComissaoPerc: TFloatField;
    tbConfigValOrc_Tempo: TWordField;
    tbConfigValOrc_UTempo: TByteField;
    tbConfigEmailOrc_Enviar: TBooleanField;
    tbConfigEmailOrc_FromName: TStringField;
    tbConfigEmailOrc_FromEmail: TStringField;
    tbConfigEmailOrc_Subject: TStringField;
    tbConfigEmailOrc_Body: TnxMemoField;
    tbConfigDocOrc_Imprimir: TBooleanField;
    tbConfigDocOrc_NomeLoja: TStringField;
    tbConfigObsPadraoOrcamento: TnxMemoField;
    tbConfigComissaoLucro: TBooleanField;
    tbConfigCodBarBal: TBooleanField;
    tbConfigCodBarBalTam: TByteField;
    tbConfigCodBarBalIdent: TStringField;
    tbConfigCodBarBalInicioCod: TByteField;
    tbConfigCodBarBalTamCod: TByteField;
    tbConfigCodBarBalValor: TBooleanField;
    tbConfigCodBarBalPPInicio: TByteField;
    tbConfigCodBarBalPPTam: TByteField;
    tbConfigCodBarBalPPDig: TByteField;
    tbConfigCodBarMaxQtdDig: TByteField;
    tbConfigCodBarArredondar: TByteField;
    tbConfigComandaOff: TBooleanField;
    tbConfigMesasOff: TBooleanField;
    tbConfigConsumoAvulsoOff: TBooleanField;
    tbConfigConfirmarDebito: TBooleanField;
    tbConfigTelaPosVenda_Mostrar: TBooleanField;
    tbConfigExigirVendedor: TBooleanField;
    tbConfigTelaPosVenda_BtnDef: TByteField;
    tbConfigRecVer: TLongWordField;
    tbConfigTrocoMax: TCurrencyField;
    tbConfigDocParam_Email: TStringField;
    tbConfigDocParam_Tel: TStringField;
    tbConfigDocParam_Tel2: TStringField;
    tbConfigDocParam_Cidade: TStringField;
    tbConfigDocParam_End: TStringField;
    tbConfigDocParam_CEP: TStringField;
    tbConfigDocParam_CNPJ: TStringField;
    tbConfigDocParam_IE: TStringField;
    tbConfigDocParam_Site: TStringField;
    tbConfigDocParam_Facebook: TStringField;
    tbConfigDocParam_Instagram: TStringField;
    tbConfigDocParam_Whats: TStringField;
    tbConfigDocParam_Whats2: TStringField;
    tbConfigDocParam_InfoExtra: TStringField;
    tbConfigDocParam_Logo: TGraphicField;
    tbConfigDocParam_Logo2: TGraphicField;
    tbConfigUrls: TnxMemoField;
    tbConfigLimitePadraoDebito: TCurrencyField;
    tbDocPais: TStringField;
    tbDocLingua: TStringField;
    tbDocMaxVer: TWordField;
    erLingua: TcxEditRepositoryImageComboBoxItem;
    strPaises_pt: TLMDStrList;
    mtPaises: TkbmMemTable;
    mtPaisesCod: TStringField;
    mtPaisesNome: TStringField;
    dsPaises: TDataSource;
    erPais: TcxEditRepositoryLookupComboBoxItem;
    tbCest: TnxTable;
    tbCestcest: TLongWordField;
    tbCestncm: TLongWordField;
    tbCestdescr: TnxMemoField;
    tbCestsrecver: TLongWordField;
    tbCestrecver: TLongWordField;
    tbProcest: TLongWordField;
    tNFConfigsat_modelo: TByteField;
    tNFConfigsat_config: TStringField;
    tbConfigPais: TStringField;
    tbConfigtax_id_def: TLongWordField;
    imgPais: TcxImageList;
    erPaisImg: TcxEditRepositoryImageComboBoxItem;
    tTax: TnxTable;
    tTaxtax_id: TUnsignedAutoIncField;
    tTaxnome: TWideStringField;
    tTaxincluido: TBooleanField;
    tTaxperc: TFloatField;
    tTaxgrupo: TBooleanField;
    tbTrantax_incluido: TCurrencyField;
    tbTrantax_incluir: TCurrencyField;
    tbTranTotalFinal: TCurrencyField;
    strPaises_en: TLMDStrList;
    mtUsuarioEmail: TWideStringField;
    tbTranDescr: TWideMemoField;
    erMeioPag: TcxEditRepositoryImageComboBoxItem;
    procedure DataModuleCreate(Sender: TObject);
    procedure FFTblMgrPause;
    procedure CMAoDesativar(Sender: TObject);
    procedure ffClientConnectionLost(aSource: TObject; aStarting: Boolean;
      var aRetry: Boolean);
    procedure CMAoAtualizarUsuario(Sender: TObject);
    procedure CMAoDestruirUsuario(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure CMAoAtualizarConfig(Sender: TObject);
    procedure CMAoAbrirFecharCx(Sender: TObject);
    procedure nxTCPIPConnectionLost(aSender: TnxBaseTransport;
      aSessionID: TnxSessionID);
    procedure Timer1Timer(Sender: TObject);
    procedure CMAoDestruirEspecie(Sender: TObject);
    procedure CMAoAtualizarEspecie(Sender: TObject);
    procedure CMAoAtualizarNFConfig(Sender: TObject);
    procedure CMAoAtualizarTabela(Sender: TObject; aIDTab: Byte);
    procedure tbNCMCalcFields(DataSet: TDataSet);
    procedure tNFConfigCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    FsetFlags : TStringList;

    procedure CreateCM;

    procedure LoadPaises;
    procedure LoadMeioPag;

  public
    ServRem: TncNXServRemoto;
    CM: TClienteNexCafe;
    TranList : TStringList;
    TranCanc : TStringList;
    ShowUpgPremium : Boolean;
    GetFlagsOk     : Boolean;
    FContaLastGetFlags: String;

    function GeraDanfe(aTran: String; aEmail: Boolean): Boolean;

    procedure GravaFlag(aFlag, aValor: String);
    procedure GetFlags;

    procedure SendNextSetFlags;
    
    procedure AbreDB;
    procedure FecharDB;
    function ControlaSaldo(aProduto: String): Boolean;
    { Public declarations }
    procedure AbreCaixa;
    procedure TotalizaDebCli(Cli: Integer);
    procedure RefreshTipoCred(NoDiv: Boolean; AddLivre: Boolean = False; AddPos: Boolean = True);
    procedure RefreshCaixaAberto;
    function TotalCredValor: Double;
    function TotalDebitos: Double;
    function LimiteDebito(F: TField): Double;
    function NovoMovEst(aTipoTran: Integer; aCliente: Integer; aPagPend: Boolean = False; aFidResgate: Boolean = False; aTamanho: Byte = tamTelaNormal): Byte;
    function NovaVenda(var aUID: TGUID; aCliente: Integer; aPagPend, aFidResgate: Boolean; aTamanho: Byte = tamTelaNormal): Byte;
    procedure EditarMovEst(ME: TncMovEst; aPodeAlterarCli, aPodeNFe: Boolean);
    procedure EditarTran(aTran: Integer; aPodeAlterarCli: Boolean = False);
    procedure DevolverVenda(aUID: String);
    procedure EditarPagamento(aTran: Integer);

    procedure ImprimeDanfe(aTran : String);
    procedure SalvaNF(aTran, aArq: String);

    procedure OnProgressoDepend(aEtapa, aProgresso : Byte; aErro : Integer; aErroStr: String);

    procedure LoadReportFromDoc(aReport: TfrxReport; aDoc: String = '');

    function FindDoc(aDoc: String): Boolean;

    function IsDotMatrixRep: Boolean;

    function CorrigeEstoque(aProduto: Integer; aAnt, aNovo: Double): Boolean;

    function ObtemCXRange(aDataI, aDataF: TDateTime; var aCXRange: TncCaixas): Boolean;

    function FindDocByReport(aTipo: Byte; aRep: String): String;

    function QtdDocCustom(aTipo: Byte): Integer;

    procedure OnRefreshUrls(Sender: TObject);

    procedure EnviaEmailAtivacaoNFCe(aCNPJAnt, aRazaoAnt: String);

    function CorrigeCusto(aProduto: Integer; aNovoCusto: Currency): Boolean;

    procedure onTerminateGetFlags(Sender: TObject);

    procedure onTerminateSetFlags(Sender: TObject);

    function TemVendaHomo: Boolean;

    function TemVendaProd: Boolean;

    function NFCeAtivo: Boolean;

    function CancelaNFE(aTran: Cardinal): Boolean;

    function CancelaVenda(aTran: Cardinal): Boolean;

    function SaldoInicialCx: Currency;

    procedure OnNFEUpdated(Sender: TObject; Tran: TGUID);

    procedure ImportarModelosEtq;

    procedure AjustaCampoLocalizaCli;

    function GetTaxName(atax_id: Cardinal): String;

    function ImgIndexPais: Integer;


//    function ObtemAguardando: Double;
  end;

  function DateTimeToTempo(DT: TDateTime; Unid: String): Double;
  procedure GetInfoCor(Itens, Cores: TStrings; S: String; var IC: TInfoCor);
  
  procedure TransfDados(TF, TD: TDataset);
  procedure TransfRecords(TF, TD: TDataset);
  procedure TransfDadosEsp(TF, TD: TDataset; ExceptFields: String);
  
  function Permitido(TipoAcesso: Integer): Boolean;

  function BarV(B: Boolean): TdxBarItemVisible;

  procedure PostInspectors(F: TForm);
  function PodeEditarTran(T: TDataset): Boolean;

  function ValorStr(E: Extended): String;
  function Pad(S: String; T: Integer): String;
  function LPad(S: String; T: Integer): String;
  function CharStr(C: Char; T: Integer): String;
  function TempoSt(S: String): String;

  procedure SalvaLayout(AGrid: TcxGrid; ALayout: String);
  procedure LeLayout(AGrid: TcxGrid; ALayout: String);

  function configname: String;

  procedure LoadConfig;
  procedure SaveConfig;
  

  function CaixaFechado: Boolean;

  function ForceForegroundWindow(hwnd: THandle): boolean;

  procedure OpenPremium(aRecurso: String);
  procedure OpenTrack(aTarget, aOrigin: String);

  function PortaRec: String;

  function InitTran(aDB: TnxDatabase;
                    const aTables : array of TnxTable;
                    aWith : Boolean): Boolean;

  function getFormOption(aForm: TComponent; aOption: String; const aDefault: String = ''): String;

  procedure saveFormOption(aForm: TComponent; aOption, aValue: String);

  procedure saveFormOptionInt(aForm: TComponent; aOption: String; aValue: Integer);

  function getFormOptionBool(aForm: TComponent; aOption: String; const aDefault: Boolean = False): Boolean;

  function getFormOptionInt(aForm: TComponent; aOption: String; const aDefault: Integer = 0): Integer;

  procedure saveFormOptionBool(aForm: TComponent; aOption: String; aValue: Boolean);

  procedure AbreNexServ;

  function PageWidth(S: String): Integer;

  function PodeCancelarStatusCanc(aStatus, aAmb: Integer) : String;

  function PodeCancelarStatusNF(aStatus, aAmb: Integer) : String;

  procedure CreateDMCaixa;
  
var
  Dados: TDados;
  NumAcessoPagto: Integer;
  MaisDeUm : Boolean = False;  
  ServidorRemoto : Boolean = False;
  Conectando: Boolean = False;
  slConfig : TStringList;
  SimulaGuardOn : Boolean = False;
  
const
  DelimitaSt = #13#10;

  stprev_livre   = 0;
  stprev_emuso   = 1;
  stprev_semprev = 2;
  stprev_manut   = 3;
  
  Fechando : Boolean = False;

var  
  DirUA : String;   // Direitos do usuário atual
  DiaAberto : TDateTime;
  NumAberto : Integer;
  BioActive : Boolean = False;
  TemPend   : Boolean = False;
  TemRej    : Boolean = False;
  TemCont   : Boolean = False;
  
  DataPend  : TDateTime = 0;
  DataRej   : TDateTime = 0;
  NumPend   : Cardinal = 0;
  NumRej    : Cardinal = 0;

  NotifySucessoDepend : Boolean = False;
  NotityErroDepend    : Boolean = False;

resourcestring
  SSomenteAdmin = 'Somente usuário administrador do sistema pode realizar essa operação';  
  rsEspecie_Misto = 'Misto';
  rsModeloNaoExiste = 'Modelo/layout %s não existe!';
  rsCaixaFechado = 'O caixa dessa venda já foi fechado. Não é possível cancelar uma venda de um caixa que já foi fechado';
  rsConfirmaCancelamento = 'Deseja realmente cancelar essa venda?';
  

implementation                                                       

uses 
  ncVersionInfo, 
  ncaFrmPri, ufmFormBase,
  ncDMServ, 
  ncafbCaixa, ncaDMComp, ncDebito, ncLancExtra,
  ncaFrmDebito, ncaFrmLancExtra,
  ncDebug, ncaFrmAddMaq,
  ncaFrmAbrirCx, ncaFrmPanTopo, ncaFrmME2,
  ncaFrmPagEspecie, ncDebCredValidator, ncShellStart, ncaConfigRecibo,
  ncaFrmAposVenda, ncaTermID, ncaFrmDoc, ncaDocMgr, nexUrls, ncaFrmDevolucao,
  ncDMdanfe_NFCE, ufmImagens, ncaFrmConfigDanfe_NFCe, ncaFrmConfigNFE,
  ncaFrmRej, ncafbVendas2, ncaFrmJust, ncaFrmAjustaFid, ncaFrmRejCanc,
  ncaFrmCancOk, umsg, ncaFrmUpgradePremium, panModoHomo, ncaProgressoDepend,
  ncaFrmDadosNFCe, ncafbOrcamento, ncHttp, uNR_chaveseg, uLicEXECryptor,
  ncaFrmConfigDanfe_SAT, ncDMdanfe_SAT, ncDMCaixa, uNexTransResourceStrings_PT,
  ncaFrmEmailUsuario, ncaDMImgEsp;

// START resource string wizard section
const
  SNexAdminIni = 'NexAdmin.ini';
  SNcadminExe = 'ncadmin.exe';

// END resource string wizard section


// START resource string wizard section
resourcestring
  SOCaixaEstáFechadoÉNecessárioAbri = 'O caixa está fechado. É necessário abrir o caixa para executar essa operação.';
  SHoras = 'Horas';
  SMinutos = 'Minutos';
  SSegundos = 'Segundos';
  SAjuda = 'Ajuda';
  SAConexãoComOServidorNexCaféFoiPe = 'A conexão com o servidor foi perdida. Clique em OK e inicie novamente o NexAdmin.';
  SErroCriandoJanelaDeAcessoRemoto = 'Erro criando janela de acesso remoto';
  SSemPrevisão = 'Sem previsão';
  SAConexãoComOServidorNexCaféFoiPe_1 = 'A conexão com o servidor foi perdida. O NexAdmin será fechado.';
  SPósPago = 'Pós-Pago';
  SPósPagoTempoLivre = 'Pós-pago: Tempo Livre';
  STempoLivre = 'Tempo Livre';
  SPósPagoLimiteDeTempo = 'Pós-pago: Limite de Tempo';
  SLimiteDeTempo = 'Limite de Tempo';
  SPréPago = 'Pré-Pago';
  SDigitarTempoOuValor = 'Digitar Tempo ou Valor';
  SCartãoDeTempo = 'Cartão de Tempo';
  SRegistroNãoEncontrado = 'Registro não encontrado';
  SEmManutenção = 'Em manutenção';
  SLivre = 'Livre';

// END resource string wizard section


{$R *.DFM}

procedure CreateDMCaixa;
begin
  if not Assigned(dmCaixa) then begin
    Application.CreateForm(TdmCaixa, dmCaixa);
    dmCaixa.nxSession.ServerEngine := Dados.RSE;
    dmCaixa.AbreConn;
  end;
end;


procedure AbreNexServ;
var S : String;
begin
  S := ExtractFilePath(ParamStr(0))+'nexserv.exe';
  if (FindWindow('TncServBaseClassName_Nex', nil)=0) and FileExists(S) and (slConfig.Values['UltimoServidor']='127.0.0.1') then
    ShellStart(S);
end;

function getFormOption(aForm: TComponent; aOption: String; const aDefault: String = ''): String;
begin
  Result := slConfig.Values[aForm.Name+'_'+aOption];
  if Result='' then Result := aDefault;
end;

procedure saveFormOption(aForm: TComponent; aOption, aValue: String);
begin
  slConfig.Values[aForm.Name+'_'+aOption] := aValue;
  saveConfig;
end;

function getFormOptionBool(aForm: TComponent; aOption: String; const aDefault: Boolean = False): Boolean;
begin
  Result := StringToBool(getFormOption(aForm, aOption, BoolStr[aDefault]));
end;

function getFormOptionInt(aForm: TComponent; aOption: String; const aDefault: Integer = 0): Integer;
begin
  Result := StrToIntDef(getFormOption(aForm, aOption, IntToStr(aDefault)), aDefault);
end;

procedure saveFormOptionBool(aForm: TComponent; aOption: String; aValue: Boolean);
begin
  slConfig.Values[aForm.Name+'_'+aOption] := BoolStr[aValue];
  saveConfig;
end;

procedure saveFormOptionInt(aForm: TComponent; aOption: String; aValue: Integer);
begin
  slConfig.Values[aForm.Name+'_'+aOption] := IntToStr(aValue);
  saveConfig;
end;


procedure OpenTrack(aTarget, aOrigin: String);
begin
  ShellStart(gUrls.Url('track', 'conta='+gConfig.Conta+'&target='+aTarget+'&origin='+aOrigin+'&prog=1&ver='+SelfShortVer));
end;

procedure OpenPremium(aRecurso: String);
begin
  OpenTrack('planos', aRecurso);
end;

function PortaRec: String;
begin
  if slConfig.Values['PortaRec'] > '' then // do not localize
    Result := slConfig.Values['PortaRec'] else // do not localize
    Result := gConfig.RecPorta;
end;

function configname: String;
begin
  Result := ExtractFilePath(ParamStr(0))+SNexAdminIni;
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

function InitTran(aDB: TnxDatabase;
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

function TempoSt(S: String): String;
begin
  if S>'' then begin
    S[3] :='h';
    S[6] :='m';
    S := S + 's';
    if Copy(S, 7, 2)='00' then // do not localize
      S := Copy(S, 1, 6);
    if Copy(S, 4, 2)='00' then // do not localize
      S := Copy(S, 1, 3) + Copy(S, 7, 3);
    if Copy(S, 1, 2)='00' then // do not localize
      S := Copy(S, 4, 10);
    while (S>'') and (S[1]='0') do Delete(S, 1, 1);
  end;
  Result := S;
end;


function CaixaFechado: Boolean;
begin
  if NumAberto<1 then begin
    Beep;
    ShowMessage(SOCaixaEstáFechadoÉNecessárioAbri);
    Dados.AbreCaixa;
  end;
  Result := (NumAberto < 1);
end;  

function MasterParentName(C: TControl): String;
begin
  Result := '';
  while C.Parent<>nil do begin
    Result := C.Parent.Name;
    C := C.Parent;
  end;   
end;

function GridClassName(C: TControl; ALayout: String): String;
begin
  Result := C.Owner.Name;
  if (ALayout<>'padrao') and (ALayout<>'especial') then // do not localize
    Result := Result + '.' + MasterParentName(C);
    
  if GridClassName_IncludeGridName then  
    Result := C.Name + '.' + Result;
end;

procedure LeLayout(AGrid: TcxGrid; ALayout: String);
var 
  M: TStream;
  GV : TcxCustomGridView;
  aClassName: String;
begin
  if not Dados.tbLayout.Active then Exit;
  aClassName := GridClassName(AGrid, ALayout);
  with Dados do 
  if tbLayout.FindKey([True, aClassName, 'todos', ALayout]) then begin // do not localize
    M := TMemoryStream.Create;
    try 
      tbLayoutLayout.SaveToStream(M);
      M.Position := 0;
      GV := AGrid.Views[0];
      GV.RestoreFromStream(M);
      if GV is TcxGridDBTableView then
        with TcxGridDBTableView(GV) do
          OptionsView.DataRowHeight := StrToIntDef(tbLayoutUsuarios.Value, OptionsView.DataRowHeight)
      else   
      if GV is TcxGridDBCardView then
        with TcxGridDBCardView(GV) do
          OptionsView.CaptionWidth := StrToIntDef(tbLayoutUsuarios.Value, OptionsView.CardWidth);
    finally
      M.Free;
    end;    
  end;
end;

procedure SalvaLayout(AGrid: TcxGrid; ALayout: String);
var 
  M: TStream;
  GV : TcxCustomGridView;
  aClassName: String;
begin
  with Dados do begin
    if not tbLayout.Active then Exit;

    aClassName := GridClassName(AGrid, ALayout);
  
    if tbLayout.FindKey([True, aClassName, 'todos', ALayout]) then // do not localize
      tbLayout.Edit else
      tbLayout.Insert;
      
    M := TMemoryStream.Create;
    try 
      GV := AGrid.Views[0];
      GV.StoreToStream(M);
      M.Position := 0;
      tbLayoutLayout.LoadFromStream(M);
      if GV is TcxGridDBTableView then
        tbLayoutUsuarios.Value := IntToStr(TcxGridDBTableView(GV).OptionsView.DataRowHeight)
      else   
      if GV is TcxGridDBCardView then
        tbLayoutUsuarios.Value := IntToStr(TcxGridDBCardView(GV).OptionsView.CardWidth);
      tbLayoutPublico.Value := True;
      tbLayoutGrid.Value := aClassName;
      tbLayoutUsuario.Value := 'todos'; // do not localize
      tbLayoutNome.Value := ALayout;
      tbLayout.Post;
    finally
      M.Free;
    end;    
  end;
end;


function ValorStr(E: Extended): String;
begin
  Result := FloatToStrF(E, ffCurrency, 20, 2);
end;

function Pad(S: String; T: Integer): String;
begin
  Result := S;
  while Length(Result) < T do Result := Result + ' ';
end;

function LPad(S: String; T: Integer): String;
begin
  Result := S;
  while Length(Result) < T do Result := ' ' + Result;
end;

function CharStr(C: Char; T: Integer): String;
begin
  Result := '';
  while Length(Result) < T do Result := Result + C;
end;

function PodeEditarTran(T: TDataset): Boolean;
begin
  Result := (T.FieldByName('Caixa').AsInteger<=0) or // do not localize
            ((NumAberto>0) and
             (T.FieldByName('Caixa').AsInteger=NumAberto)); // do not localize
end;


procedure PostInspectors(F: TForm);
var I : Integer;
begin
  for I := 0 to F.ComponentCount-1 do
    if F.Components[I] is TcxDBVerticalGrid then 
      TcxDBVerticalGrid(F.Components[I]).DataController.PostEditingData;
end;


function BarV(B: Boolean): TdxBarItemVisible;
begin
  if B then
    Result := ivAlways
  else
    Result := ivNever;  
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

procedure TransfRecords(TF, TD: TDataset);
begin
  TF.First;
  while not TF.Eof do begin
    TD.Append;
    TransfDados(TF, TD);
    TD.Post;
    TF.Next;
  end;
end;

procedure TransfDados(TF, TD: TDataset);
begin
  TransfDadosEsp(TF, TD, '');
end;

function LeftPadCh(S: String; C: Char; T: Integer): String;
begin
  Result := S;
  while Length(Result) < T do Result := C + Result;
end;

procedure TInfoCor.Limpa;
begin
  icCorFundo := clWhite;
  icCorFonte := clBlack;
  icNegrito  := False;
end;
  
procedure TInfoCor.LeStr(S: String);
begin
  if Length(S) <> 31 then
    Limpa
  else begin
    icCorFundo := TColor(StrToIntDef(Trim(Copy(S, 1, 15)), Integer(clWhite)));
    icCorFonte := TColor(StrToIntDef(Trim(Copy(S, 16, 15)), Integer(clBlack)));
    icNegrito  := (S[31] = 'T')
  end;
end;

function TInfoCor.GetStr: String;
const
  TFStr : Array[Boolean] of Char = ('F', 'T');
begin
  Result := 
    Pad(IntToStr(Integer(icCorFundo)), 15) +
    Pad(IntToStr(Integer(icCorFonte)), 15) +
    TFStr[icNegrito];
end;

procedure GetInfoCor(Itens, Cores: TStrings; S: String; var IC: TInfoCor);
var I : Integer;
begin
  I := Itens.IndexOf(S);
  if I = -1 then I := 0;
  if (Cores.Count>I) then
    IC.LeStr(Cores[I])
  else
    IC.Limpa;  
end;

procedure TInfoModulo.Limpa;
begin
  imID        := 0;
  imPos       := 0;
  imVisivel   := True;
  imMostraTab := True;
end;
  
procedure TInfoModulo.LeStr(S: String);
begin
  if Length(S) <> 6 then
    Limpa
  else begin
    imID := StrToIntDef(Copy(S, 1, 2), 0);
    imPos := StrToIntDef(Copy(S, 3, 2), 0);
    imVisivel := (S[5]='T');
    imMostraTab := (S[6]='T');
  end;  
end;

function TInfoModulo.GetStr: String;
const
  TFStr : Array[Boolean] of Char = ('F', 'T');
begin
  Result := 
    Pad(IntToStr(imID), 2) +
    Pad(IntToStr(imPos), 2) + 
    TFStr[imVisivel] +
    TFStr[imMostraTab];
end;

function DateTimeToTempo(DT: TDateTime; Unid: String): Double;
begin
  if Unid = SHoras then
    Result := Frac(DT) * 24
  else
  if Unid = SMinutos then
    Result := Frac(DT) * (24 * 60)
  else
  if Unid = SSegundos then
    Result := Frac(DT) * (24 * 60 * 60)
  else
    Result := 0;
end;

procedure TDados.AbreDB;
var I: Integer;
begin
  db.Connected:= true;
  tbCli.open;
  tbPro.open;
  tbTran.open;
  tbMovEst.open;
  tbConfig.Open;
  tbLayout.Open;
  tbCaixa.Open;
  tbIC.Open;
  tbEspecie.Open;
  tbDoc.Open;
  tBrTrib.Open;
  tbNFE.Open;
  tbNCM.Open;
  tbMun.Open;
  tbCEST.Open;

  tbTerm.Open;
  tNFConfig.Open;
  tTax.Open;

  TpanAlertaModoHomo.Refresh;
  
  if tNFConfig.IsEmpty then begin
    tNFConfig.Append;
    tNFConfig.Post;
  end;

  tCFOP.Open;

  tbTerm.SetRange([gTermID], [gTermID]);
  if tbTerm.IsEmpty then begin
    tbTerm.Insert;
    tbTermTermID.Value := gTermID;
    tbTerm.Post;
  end;

  RefreshCaixaAberto;

  mtUsuario.DisableControls;
  try
    mtUsuario.Active := True;
    mtUsuario.EmptyTable;
    CM.Usuarios.SalvaDataset(mtUsuario);
    mtUsuario.First;
  finally
    mtUsuario.EnableControls;
  end;

  mtEsp.Active := True;
  mtEsp.Append;
  mtEspID.Value := High(Word);
  mtEspNome.Value := rsEspecie_Misto;
  mtEsp.Post;

  for I := 0 to gEspecies.Count - 1 do begin
    mtEsp.Append;
    mtEspID.Value := gEspecies.Itens[i].ID;
    mtEspNome.Value := gEspecies.Itens[i].Nome;
    mtEsp.Post;
  end;

  LoadMeioPag;

  GetFlags;

  if tbConfig.RecordCount > 0 then 
    tbConfig.First;
    
  AjustaCampoLocalizaCli;
  Application.CreateForm(TDM, DM);
  DM.nxSession.ServerEngine := RSE;
  DM.Open;

  dmComp := TdmComp.Create(Self);
end;

procedure TDados.DataModuleCreate(Sender: TObject);
var S: String;
begin
  LoadPaises;
  GetFlagsOk := False;
  FContaLastGetFlags := '';
  gTabConfigNF := tbConfig;
  FsetFlags := TStringList.Create;
  ShowUpgPremium := False;
  
  AbreNexServ;
  gUrls.OnRefresh := OnRefreshUrls;
  
{$ifdef LOJA}
  nxTCPIP.Port := 17200;
{$else}
  nxTCPIP.Port := 16200;  
{$endif}  
  CreateCM;
//  frxResources.LoadFromStream(GL.Items[0].Data);
  S := ExtractFilePath(ParamStr(0))+SNcadminExe;
  if FileExists(S) then
    DeleteFile(S);
    
  S := ExtractFilePath(ParamStr(0))+SAjuda;
  if not DirectoryExists(S) then
    mkDir(S);
    
  LeLayoutProc := @LeLayout;
  SalvaLayoutProc := @SalvaLayout;
{  nxTCPIP.Enabled := False;
  nxTCPIP.Port := 16100;
  nxTCPIP.Enabled := True;}
  TranList := TStringList.Create;
  TranCanc := TStringList.Create;
  DiaAberto := 0;
  NumAberto := -1;
  DirUA := '';
  if MaisDeUm then Exit;
end;
 
procedure TDados.FFTblMgrPause;
begin
  Application.ProcessMessages;
end;

function TDados.FindDoc(aDoc: String): Boolean;
begin
  DebugMsg('TDados.FindDoc - aDoc: '+aDoc);
  Result := (aDoc>'') and tbDoc.Locate('UID', aDoc, []);
  DebugMsg('TDados.FindDoc - Res: '+BoolStr[Result]);
end;

function TDados.FindDocByReport(aTipo: Byte; aRep: String): String;
begin
  Result := '';
  tbDoc.IndexName := 'ITipoBobinaNome';
  tbDoc.SetRange([aTipo], [aTipo]);
  try
    tbDoc.First;
    while not tbDoc.Eof do begin
      if tbDocCustom.Value and (tbDocDoc.AsString=aRep) then begin
        Result := tbDocUID.Value;
        Exit;
      end;
      tbDoc.Next;
    end;
  finally  
    tbDoc.CancelRange;
  end;
end;

function TDados.GeraDanfe(aTran: String; aEmail: Boolean): Boolean;
var S: String;

procedure GeraNFCE;
begin
  DebugMsg('TDados.GeraDanfe - aTran: ' + aTran + ' - aEmail: ' + BoolStr[aEmail]);

  if not Assigned(dmDanfe_NFCE) then 
    Application.CreateForm(TdmDanfe_NFCE, dmDanfe_NFCE);
  
  if aEmail then begin
    DebugMsg('TDados.GetDanfe - aEmail');
    if not tbDoc.Locate('UID', tNFConfigModeloNFCe_Email.Value, []) then begin
      ShowMessage('É necessário selecionar um modelo/layout de NF para ser salvo e/ou enviado por email');
      with TFrmConfigNFE.Create(Self) do begin
        EditModelo := True;
        ShowModal;
        Exit;
      end;
    end;
  end else
  if (not gRecibo.ImpressoraOk(tipodoc_nfce) or not gRecibo.DocOk(tipodoc_nfce)) then begin
    TFrmConfigDanfe_NFCe.Create(Self).Editar;
    Exit;
  end;

  if Dados.tbNFEContingencia.Value then
    S := tbNFEXMLtransCont.Value else
    S := tbNFEXMLdest.Value;
    
  dmDanfe_NFCE.LoadXML(S, tbTranTroco.Value, tbTranFunc.Value, tbTranID.AsString, tNFConfigIdCSC.Value, tNFConfigCSC.Value, tbConfig, 
                       tNFConfigurls_qrcode_hom.Value, tNFConfigurls_qrcode_prod.Value, tNFConfigurls_consulta.Value);

  DebugMsg('TDados.GeraDanfe - tbDocUI.Value: '+ tbDocUID.Value);   
                      
  if aEmail then
    dmDanfe_NFCE.LoadReport(tbDocDoc, '') else
    dmDanfe_NFCE.LoadReport(tbDocDoc, gRecibo.Impressora[tipodoc_nfce]);

  Result := True;    
end;

procedure GeraSAT;
begin
  if aEmail then begin
    if not tbDoc.Locate('UID', tNFConfigModeloSAT_Email.Value, []) then begin
      ShowMessage('É necessário selecionar um modelo/layout de NF para ser salvo e/ou enviado por email');
      with TFrmConfigNFE.Create(Self) do begin
        EditModelo := True;
        ShowModal;
        Exit;
      end;
    end;
  end else
  if (not gRecibo.ImpressoraOk(tipodoc_sat) or not gRecibo.DocOk(tipodoc_sat)) then begin
    TFrmConfigDanfe_SAT.Create(Self).Editar;
    Exit;
  end;

  if not Assigned(dmDanfe_SAT) then 
    Application.CreateForm(TdmDanfe_SAT, dmDanfe_SAT);

  if tbNFEStatusCanc.Value in [statuscanc_nfe_ok, statuscanc_nfe_processatran] then
    S := tbNFEXMLretcanc.Value else
    S := '';
  
  dmDanfe_SAT.LoadXML(tbNFEXMLDest.Value, S, tbTranTroco.Value, tbTranFunc.Value, tbTranID.AsString, tbConfig);

  if aEmail then
    dmDanfe_SAT.LoadReport(tbDocDoc, '') else
    dmDanfe_SAT.LoadReport(tbDocDoc, gRecibo.Impressora[tipodoc_sat]);

  Result := True;    
end;

begin
  Result := False;
  if not tbTran.Locate('UID', aTran, []) then Exit;

  case tbTranStatusNFE.Value of 
    nfetran_contingencia : 
      if aEmail then raise Exception.Create('Essa NF ainda está em contingência é necessário aguardar a transamissão para SEFAZ para enviar o e-mail');

    nfetran_ok, nfetran_ok_cont : ;
    nfetran_gerar,
    nfetran_transmitir : raise exception.Create('Ainda não foi concluído o processo de emissão/transmissão dessa NF');
    nfetran_erro       : raise exception.Create('Essa NF foi rejeitada pela SEFAZ');
  else
    raise Exception.Create('Erro na emissão da NF: '+tbTranStatusNFE.AsString);
  end;

  if not tbNFE.Locate('Chave', tbTranChaveNFE.Value, []) then 
    raise exception.Create('NFe não encontrada');

  if tbNFETipoDoc.Value=tiponfe_sat then
    GeraSAT else
    GeraNFCE;
end;

procedure TDados.GetFlags;
var S: String;
begin
  if gConfig.Conta='' then Exit;
  if not (gConfig.StatusConta in [scFree, scPremium, scPremiumVenc]) then Exit;

  if GetFlagsOk and (FContaLastGetFlags=gConfig.Conta) then Exit;

  GetFlagsOk := False;
  FContaLastGetFlags := gConfig.Conta;
  
  httpThreadGet(gUrls.Url('contas_getflags'), 'conta='+gConfig.Conta, Self.onTerminateGetFlags, False, True, True);
end;

function TDados.GetTaxName(atax_id: Cardinal): String;
begin
  if atax_id=0 then atax_id := gConfig.tax_id_def;
  if tTax.FindKey([atax_id]) then
    Result := tTaxNome.Value else
    Result := '';
end;

procedure TDados.GravaFlag(aFlag, aValor: String);
var 
  aUrl, aParams: String;
begin
  if gConfig.Conta='' then Exit;
  if not (gConfig.StatusConta in [scFree, scPremium, scPremiumVenc]) then Exit;
  if SameText(gConfig.slFlags.Values[aFlag], aValor) then Exit;

  aUrl := gConfig.Flags;

  if aUrl='sfdsdfsdfsdf' then Exit;


  aUrl := gUrls.Url('contas_setflags');
  aParams := 'conta='+gConfig.Conta+
             '&flag='+aFlag+'&value='+AnsiToUTF8(aValor);
             
  if GetFlagsOk then
    httpThreadGet(aUrl, aParams, onTerminateSetFlags, True, True, True) else
    FsetFlags.Add(aUrl+'='+aParams);
end;

function PageWidth(S: String): Integer;
var P: Integer;
begin  
  Result := 0;
  P := Pos('PaperWidth="', S);
  if P<1 then Exit;
  Delete(S, 1, P+11);
  S := Copy(S, 1, Pos('"', S)-1);
  Result := StrToIntDef(S, 0);
end;


function TDados.ImgIndexPais: Integer;
var 
  S: String;
  V: Variant;
begin
  S := gConfig.Pais;
  if S='' then S := GetCountryCode;

  with erPaisImg.Properties do
  for Result := 0 to Items.Count-1 do begin
    V := Items[Result].Value;
    if (not VarIsNull(V)) and SameText(V, S) then Exit;
  end;

  Result := -1;
end;

procedure TDados.ImportarModelosEtq;
var 
  T: TnxTable;
  P : Integer;
begin
  try
    gRecibo.Impressora[tipodoc_etiqueta] := slConfig.Values['etq_impressora'];
    gRecibo.Modelo[tipodoc_etiqueta] := slConfig.Values['etq_modelo'];
    T := TnxTable.Create(Self);
    try
      T.TableName := 'Label';
      T.DataBase := db;
      T.Open;
      T.First;
      while not T.Eof do begin
        if not tbDoc.Locate('UID', T.FieldByName('ID').AsString, []) then begin
          tbDoc.Insert;
          tbDocUID.Value := T.FieldByName('ID').AsString;
          tbDocNome.Value := T.FieldByName('Nome').AsString;
          tbDocDoc.AsString := T.FieldByName('Report').AsString;
          tbDocObs.AsString := T.FieldByName('Obs').AsString;
          tbDocCustom.Value := True;
          P := PageWidth(tbDocDoc.AsString);
          tbDocBobina.Value := (P>0) and (P<140);
        end else 
          tbDoc.Edit;
        tbDocTipo.Value := tipodoc_etiqueta;
        tbDoc.Post;
        T.Next;
      end;
    finally
      T.Free;
    end;
  except
  end;    
end;

procedure TDados.ImprimeDanfe(aTran: String);
begin
  GeraDanfe(aTran, False);
end;

function TDados.IsDotMatrixRep: Boolean;
begin
  Result := (Pos('TfrxDMPPage', tbDocDoc.AsString)>0);
end;

function TDados.NFCeAtivo: Boolean;
begin
  Result := (gConfig.IsPremium and (not gConfig.Pro)) and Dados.tNFConfigEmitirNFCe.Value;
end;

function TDados.NovaVenda(var aUID: TGuid; aCliente: Integer; aPagPend, aFidResgate: Boolean;
  aTamanho: Byte = tamTelaNormal): Byte;
var 
  ME: TncMovEst;
  S: String;
begin
  result := 0;
  if (not aPagPend) and CaixaFechado then Exit;
  ME := TncMovEst.Create;
  try
    ME.Tipo := trEstVenda;
    ME.CriaUID;
    aUID := ME.NativeUID;
    ME.Operacao := osIncluir;
    ME.FidResgate := aFidResgate;
    ME.PagPend := aPagPend;
    ME.Cliente := aCliente;
    S := CM.UA.Username;
    if gConfig.ExigirVendedor then
      ME.Func := '' else
      ME.Func := S;
    result := TFrmME2.Create(nil).Editar(True, ME, True);
{    if result then begin
      CM.SalvaMovEst(ME);
      TFrmAposVenda.Create(Self).Editar(ME);
    end;}
  finally
    ME.Free;
  end;
end;

function TDados.NovoMovEst(aTipoTran: Integer; aCliente: Integer; aPagPend: Boolean = False; aFidResgate: Boolean = False; aTamanho: Byte = tamTelaNormal): Byte;
var 
  ME: TncMovEst;
  S: String;
begin
  result := 0;
  if CaixaFechado then Exit;
  ME := TncMovEst.Create;
  try
    ME.Tipo := aTipoTran;
    ME.Operacao := osIncluir;
    ME.PagPend := aPagPend;
    ME.FidResgate := aFidResgate;
    ME.Cliente := aCliente;
    S := CM.UA.Username;
    ME.Func := S;
    result := TFrmME2.Create(nil).Editar(True, ME, True);
  finally
    ME.Free;
  end;
end;

procedure TDados.nxTCPIPConnectionLost(aSender: TnxBaseTransport;
  aSessionID: TnxSessionID);
begin
  ShowMessage(SAConexãoComOServidorNexCaféFoiPe);
  CM.Ativo := False;
end;

function TDados.ObtemCXRange(aDataI, aDataF: TDateTime;
  var aCXRange: TncCaixas): Boolean;
var SIndex: String;  
begin
  aCXRange := nil;
  Result := False;
  SIndex := tbCaixa.IndexName;
  tbCaixa.IndexName := 'IAbertura';
  tbCaixa.SetRange([aDataI], [aDataF+1]);
  try
    tbCaixa.First;
    while not tbCaixa.Eof do begin
      if not Assigned(aCXRange) then begin
        aCXRange := TncCaixas.Create;
        aCXRange.DataI := aDataI;
        aCXRange.DataF := aDataF+1;
      end;
    
      aCXRange.AddCaixa(tbCaixaID.Value);
      tbCaixa.Next;
    end;
  finally
    tbCaixa.CancelRange;
    tbCaixa.IndexName := SIndex;
  end;
  if Assigned(aCXRange)  then begin
    aCXRange.Merge;
    Result := (aCXRange.Count>0);
  end else
    Result := False;
end;

procedure TDados.OnNFEUpdated(Sender: TObject; Tran: TGUID);
var 
  I : Integer;
  S: String;
  aPrint : Boolean;
begin
  I := TranList.IndexOf(Tran.ToString);
  if (I>=0) and tbTran.Locate('UID', Tran.ToString, []) and 
     (tbTranStatusNFE.Value>nfetran_transmitir) then begin
    S := GetValueFromStr(tbTranExtra.Value, 'PrintNFCe');
    aPrint := (S<>'0'); 
    TranList.Delete(I);
    if tbNFE.Locate('Chave', tbTranChaveNFE.Value, []) then begin
      case tbNFEStatus.Value of
        nfestatus_contingencia, nfetran_ok : begin
          if (tbNFEStatus.Value=nfestatus_contingencia) or aPrint then
            GeraDanfe(Tran.ToString, False);

          if tNFConfigTipo.Value=nfcfg_sat then begin
            Dados.GravaFlag('acessou_config_sat', '1');
            Dados.GravaFlag('ativou_sat', '1');
            if tNFConfigtpAmb.Value=1 then
              Dados.GravaFlag('emitiu_sat', '1') else
          end else begin
            Dados.GravaFlag('acessou_config_nfce', '1');
            Dados.GravaFlag('ativou_nfce', '1');
            if tNFConfigtpAmb.Value=1 then
              Dados.GravaFlag('emitiu_nfce_prod', '1') else
              Dados.GravaFlag('emitiu_nfce_homo', '1');
          end;
        end;
        nfestatus_erro : 
          tFrmRej.Create(Self).Mostrar(tbTranID.AsString, tbNFExMotivo.Value);
      end;    
    end;  
  end;

  I := TranCanc.IndexOf(Tran.ToString);
  if I>=0 then begin
    TranCanc.Delete(I);
    if tbTran.Locate('UID', Tran.ToString, []) and tbNFE.Locate('Chave', tbTranChaveNFE.Value, []) then 
    case tbNFEStatusCanc.Value of
      statuscanc_nfe_ok : begin
        if tNFConfigTipo.Value=nfcfg_sat then
            GeraDanfe(Tran.ToString, False);
        TFrmCancOk.Create(Self).Mostrar(tbTranID.AsString);
      end;
      statuscanc_nfe_erro, statuscanc_nfe_rej : 
        tFrmRejCanc.Create(Self).Mostrar(tbTranID.AsString, tbNFExMotivoCanc.Value);
    end;
  end;  

  with FrmPri do 
  if FM.FormAtivo is TfbVendas2 then begin
    TfbVendas2(FM.FormAtivo).RefreshPend;
    TfbVendas2(FM.FormAtivo).Tab.Refresh;
  end;  
end;

procedure TDados.OnProgressoDepend(aEtapa, aProgresso: Byte; aErro: Integer;
  aErroStr: String);
begin
  TpanProgressoDepend.Atualiza(aEtapa, aProgresso, aErro, aErroStr);

  if (aEtapa=4) or (aErro>0) then begin
    if (aEtapa=4) and NotifySucessoDepend then
      ShowMessage('Arquivos necessários para emitir NF instalados com sucesso!');

    if aErro>0 then 
      ShowMessage('Erro na instalação de arquivos necessários para emitir NF: '+aErroStr);
      
    NotifySucessoDepend := False;
    NotityErroDepend := False;
  end;
end;

procedure TDados.OnRefreshUrls(Sender: TObject);
begin
  if Assigned(CM) and CM.Ativo then begin
    gConfig.AtualizaCache;
    gConfig.Urls := gUrls.AsString;
    CM.SalvaAlteracoesObj(gConfig, False);
  end;
end;

procedure TDados.onTerminateGetFlags(Sender: TObject);
var 
  sl : TStrings;
begin
  if not SameText(Self.FContaLastGetFlags, gConfig.Conta) then 
    GetFlags 
  else begin
    sl := TStringList.Create;
    try
      GetFlagsOk := True;
      sl.Text := ThttpThreadGet(Sender).Res;
      if Trim(sl.Values['erro'])='' then begin
        gConfig.AtualizaCache;
        gConfig.Flags := sl.Text;
        CM.SalvaAlteracoesObj(gConfig, False);
      end;
    finally
      sl.Free;
    end;
    SendNextSetFlags;
  end;
end;

function GetParamValue(aUrl, aParam: String): String;
var P : Integer;
begin
  Result := '';
  P := Pos(aParam+'=', aUrl);
  if P=0 then Exit;
  Delete(aUrl, 1, P-1);
  Delete(aUrl, 1, Pos('=', aUrl));
  P := Pos('&', aUrl);
  if P>0 then Delete(aUrl, P, 500);
  Result := aUrl;
end;

procedure TDados.onTerminateSetFlags(Sender: TObject);
var aFlag, aValue: String;
begin
  with ThttpThreadGet(Sender) do begin
    gConfig.AtualizaCache;
    aFlag := GetParamValue(FParams, 'flag');
    aValue := GetParamValue(FParams, 'value');
    gConfig.slFlags.Values[aFlag] := aValue;
    Dados.CM.SalvaAlteracoesObj(gConfig, False);
    SendNextSetFlags;
  end;
end;

function TDados.QtdDocCustom(aTipo: Byte): Integer;
begin
  Result := 0;
  tbDoc.IndexName := 'ITipoBobinaNome';
  tbDoc.SetRange([aTipo], [aTipo]);
  try
    tbDoc.First;
    while not tbDoc.Eof do begin
      if tbDocCustom.Value then 
        Inc(Result);
      tbDoc.Next;
    end;
  finally  
    tbDoc.CancelRange;
  end;
end;

function TDados.LimiteDebito(F: TField): Double;
begin
  if F.IsNull then
    Result := tbConfigLimitePadraoDebito.Value else
    Result := F.AsFloat;  
end;

procedure TDados.LoadMeioPag;
var i: integer;
begin
  with erMeioPag, Properties do begin
    BeginUpdate;
    try
      Items.Clear;
      for I := 0 to gEspecies.Count-1 do 
      with Items.Add do begin
        Value := gEspecies[i].ID;
        Description := gEspecies[i].Nome;
        ImageIndex := gEspecies[i].Img;
      end;      
    finally
      EndUpdate;
    end;
  end;
end;

procedure TDados.LoadPaises;
var 
  I : Integer;
  sl : TLMDStrList;
begin
  dsPaises.Dataset := nil;
  mtPaises.DisableControls;
  mtPaises.Active := True;
  try
    if SameText(SLingua, 'PT') then
      sl := strPaises_pt else
      sl := strPaises_en;

    for I := 0 to sl.Items.Count-1 do begin
      mtPaises.Append;
      mtPaisesCod.Value := sl.Items.Names[I];
      mtPaisesNome.Value := sl.Items.ValueFromIndex[I];
      mtPaises.Post;

      with erPaisImg.Properties.Items.Add do begin
        Value := sl.Items.Names[I];
        Description := sl.items.ValueFromindex[I];
      end;
    end;
  finally
    mtPaises.EnableControls;
  end;

  dsPaises.Dataset := mtPaises;
end;

procedure TDados.LoadReportFromDoc(aReport: TfrxReport; aDoc: String = '');
var S: TStream;
begin
  if (aDoc>'') and (not tbDoc.Locate('UID', aDoc, [])) then 
    Raise Exception.Create(Format(rsModeloNaoExiste, [aDoc]));

  if tbDoc.IsEmpty then Exit;   
  
  S := TMemoryStream.Create;
  try
    tbDocDoc.SaveToStream(S);
    S.Position := 0;
    aReport.LoadFromStream(S);
  finally
    S.Free;
  end;
end;

procedure TDados.CMAoDesativar(Sender: TObject);
begin
  if not Conectando then begin
    Session.Active := False;
    ShowMessage(SAConexãoComOServidorNexCaféFoiPe_1);
    ClicouSair := True;
    Application.Terminate;
  end;  
end;

function TDados.SaldoInicialCx: Currency;
var S: String;
begin
  Result := 0;
  if gConfig.ManterSaldoCaixa and (not tbCaixa.IsEmpty) then begin
    S := tbCaixa.IndexName;
    try
      tbCaixa.IndexName := 'IID'; // do not localize
      tbCaixa.Last;
      Result := tbCaixaTotalFinal.Value + tbCaixaSaldoAnt.Value + tbCaixaSupr.Value - tbCaixaSangria.Value;
    finally
      tbCaixa.IndexName := 'IAberto'; // do not localize
    end;
  end;
end;

procedure TDados.SalvaNF(aTran, aArq: String);
var 
  S: String;
  P : Integer;

procedure ObtemUltPonto;
begin  
  P := Length(S);
  while (Copy(S, P, 1)<>'.') and (P>0) do Dec(P);
end;

begin
  GeraDanfe(aTran, True);
  S := aArq;
  ObtemUltPonto;
  S := Copy(S, 1, P)+'pdf';
  dmDanfe_NFCE.GeraPDF(S);
  if tbNFeContingencia.Value then
    tbNFexmlTransCont.SaveToFile(aArq) else
    tbNFexmlDest.SaveToFile(aArq);
end;

procedure TDados.SendNextSetFlags;

function Url: String;
begin
  Result := FsetFlags.Names[0];
end;

function Params: String;
begin
  Result := FsetFlags.ValueFromIndex[0];
end;

begin
  if FsetFlags.Count=0 then Exit;
  while (FsetFlags.Count>0) and ThreadGetJaExiste(Url, Params) do FsetFlags.Delete(0);

  if FsetFlags.Count>0 then begin
    httpThreadGet(Url, Params, onTerminateSetFlags, True, True);
    FsetFlags.Delete(0);
  end;
end;

procedure TDados.tbNCMCalcFields(DataSet: TDataSet);
begin
  tbNCMNCMDescr.Value := tbNCMNCM.Value + '   ' + tbNCMDescricao.Value;
end;

procedure TDados.ffClientConnectionLost(aSource: TObject;
  aStarting: Boolean; var aRetry: Boolean);
begin
  aRetry := False;
  CM.Ativo := False;
  ServRem.Ativo := False;
  Application.Terminate;
end;

procedure TDados.CMAoAtualizarUsuario(Sender: TObject);
var U: TncUsuario;
begin
  if not mtUsuario.Active then Exit;
  U := TncUsuario(Sender);
  if mtUsuario.Locate('Username', U.Username, []) then  // do not localize
    mtUsuario.Edit else
    mtUsuario.Append;  
    
  U.SalvaDataset(mtUsuario);
  mtUsuario.Post;
  FrmPri.AjustaVisSenha;  
end;

procedure TDados.CMAoDestruirUsuario(Sender: TObject);
begin
  if not mtUsuario.Active then Exit;
  with TncUsuario(Sender) do
  if mtUsuario.Locate('Username', Username, []) then // do not localize
    mtUsuario.Delete;

end;

function TDados.ControlaSaldo(aProduto: String): Boolean;
var SIndex: String;
begin
  Result := True;
  SIndex := tbPro.IndexName;
  tbPro.IndexName := 'ICodigo'; // do not localize
  try
    Result := (not tbPro.FindKey([aProduto])) or (not tbProNaoControlaEstoque.Value);
  finally
    tbPro.IndexName := SIndex;
  end;
end;

function TDados.CorrigeCusto(aProduto: Integer; aNovoCusto: Currency): Boolean;
var ME: TncMovEst;
begin
  Result := False;
  ME := TncMovEst.Create;
  try
    ME.Caixa := NumAberto;
    ME.DataHora := Now;
    ME.Func := CM.UA.Username;
    ME.Operacao := osIncluir;
    ME.Tipo := trAjustaCusto;
    with ME.NewIME do begin
      imQuant := 0;
      imUnitario := aNovoCusto;
      imCustoU := imUnitario;
      
      imProduto := aProduto;
      imItem := 1;
      imTipoTran := trAjustaCusto;
      _Operacao := osIncluir;
    end;
    CM.SalvaMovEst(ME);
    Result := True;
  finally
    ME.Free;
  end;
end;

function TDados.CorrigeEstoque(aProduto: Integer; aAnt, aNovo: Double): Boolean;
var ME: TncMovEst;
begin
  Result := False;
  if Int(aAnt*1000)=Int(aNovo*1000) then Exit;
  ME := TncMovEst.Create;
  try
    ME.Caixa := NumAberto;
    ME.DataHora := Now;
    ME.Func := CM.UA.Username;
    ME.Operacao := osIncluir;
    with ME.NewIME do begin
      if aNovo>aAnt then begin
        ME.Tipo := trEstEntrada;
        imQuant := aNovo - aAnt;
      end else begin
        ME.Tipo := trEstSaida;
        imQuant := aAnt - aNovo;
      end;
      imProduto := aProduto;
      imItem := 1;
//      imEstoqueAnt := aAnt;
      _Operacao := osIncluir;
    end;
    CM.SalvaMovEst(ME);
    Result := True;
  finally
    ME.Free;
  end;
end;

procedure TDados.CreateCM;
begin
  ServRem := TncNXServRemoto.Create(Self);
  ServRem.CmdHandler := SimpleCmdHandler;
  ServRem.Session := Session;
  ServRem.Transp := nxTCPIP;
  
  CM := TClienteNexCafe.Create(Self);
  CM.Servidor := ServRem;
  CM.FuncAtual := True;
  CM.Senha := 'proxypass';
  CM.Username := 'proxy';
  CM.AoAbrirFecharCx := CMAoAbrirFecharCx;
  CM.AoAtualizarConfig := CMAoAtualizarConfig;
  CM.AoAtualizarUsuario := CMAoAtualizarUsuario;
  CM.AoAtualizarNFe := OnNFEUpdated;
  CM.AoAtualizaNFConfig := CMAoAtualizarNFConfig;
  CM.AoAtualizarTabela := CMAoAtualizarTabela;
  
  CM.AoDesativar := CMAoDesativar;
  CM.AoDestruirUsuario := CMAoDestruirUsuario;

  CM.AoAtualizarEspecie := CMAoAtualizarEspecie;
  CM.AoDestruirEspecie := CMAoDestruirEspecie;

  CM.OnProgressoDepend := OnProgressoDepend;
end;

procedure TDados.CMAoAtualizarTabela(Sender: TObject; aIDTab: Byte);
begin
  case aIDTab of
    idtab_tran : 
      with FrmPri do
      if FM.FormAtivo is TfbVendas2 then begin
        TfbVendas2(FM.FormAtivo).RefreshPend;
        TfbVendas2(FM.FormAtivo).Tab.Refresh;
      end;  

    idtab_orcamento : 
      with FrmPri do
      if FM.FormAtivo is TfbOrcamento then 
        TfbOrcamento(FM.FormAtivo).Tab.Refresh;
  end;
end;

procedure TDados.CMAoDestruirEspecie(Sender: TObject);
begin
  with TncEspecie(Sender) do
  if mtEsp.FindKey([ID]) then mtEsp.Delete;

  LoadMeioPag;
end;

function Permitido(TipoAcesso: Integer): Boolean;
begin
  if Dados.CM.UA.Admin then
    Result := True else
    Result := ItemTrueStr(Dados.CM.UA.Direitos, TipoAcesso);
end;

procedure TDados.AbreCaixa;
var 
  aSaldo: Currency;
begin
  aSaldo := 0;
  if NumAberto>0 then Exit;
  if not TFrmAbrirCaixa.Create(Self).Abrir(aSaldo) then Exit;
  CM.AbrirCaixa(aSaldo);
  Self.RefreshCaixaAberto;
end;

{function TDados.ObtemAguardando: Double;
begin
  Q.Active := False;
  Q.Active := True;
  if Q.RecordCount > 0 then
    Result := Q.FieldByName('Acessos').AsFloat + Q.FieldByName('Vendas').AsFloat
  else
    Result := 0;
end;}

procedure TDados.DataModuleDestroy(Sender: TObject);
begin
  gTabConfigNF := nil;
  FsetFlags.Free;
  
  TranList.Free;
  try FreeAndNil(CM); except end;
  try FreeAndNil(ServRem); except end;
end;


function TDados.TemVendaHomo: Boolean;
var SIndex : String;
begin
  SIndex := tbTran.IndexName;
  try
    tbTran.IndexName := 'ICanceladoAmbStatusNFE';
    Result := (tNFConfigTipo.Value=nfcfg_nfce) and tbTran.FindKey([False, 2]);
  finally
    tbTran.IndexName := SIndex;
  end;
end;

function TDados.TemVendaProd: Boolean;
var SIndex : String;
begin
  SIndex := tbTran.IndexName;
  try
    tbTran.IndexName := 'ICanceladoAmbStatusNFE';
    Result := tbTran.FindKey([False, 1]);
  finally
    tbTran.IndexName := SIndex;
  end;
end;

procedure TDados.Timer1Timer(Sender: TObject);
var Res : Integer;
begin
  Res := 0;
  if CM.Ativo then
  try
    Res := ServRem.KeepAlive;
  except
    Res := -1;
  end;
  if Res<>0 then begin
    CM.Ativo := False;
    nxTCPIP.Active := False;
    ServRem.Ativo := False;
    FrmPri.Close;
    ShowMessage(SAConexãoComOServidorNexCaféFoiPe_1);
  end;
end;

procedure TDados.Timer2Timer(Sender: TObject);
begin
{  Timer2.Enabled := False;
  if tbAcesso.FindKey([NumAcessoPagto]) then
    TFrmAcesso.Create(Self).Editar(tbAcesso, 2);}
end;

procedure TDados.tNFConfigCalcFields(DataSet: TDataSet);
begin
  tNFConfigESAT.Value := (tNFConfigTipo.Value=nfcfg_sat);
  if tNFConfigESAT.Value then
    tNFConfigNFStr.Value := 'CF-e SAT' else
    tNFConfigNFStr.Value := 'NFC-e';
end;

procedure TDados.RefreshCaixaAberto;
begin
  if tbCaixa.FindKey([True]) then begin
    DiaAberto := tbCaixaAbertura.Value;
    NumAberto := tbCaixaID.Value;
  end else begin
    DiaAberto := 0;
    NumAberto := -1;
  end;  
  BroadcastAtualizaDireitosConfig;  
end;

procedure TDados.RefreshTipoCred(NoDiv: Boolean; AddLivre: Boolean = False; AddPos: Boolean = True);
begin
end;

procedure TDados.TotalizaDebCli(Cli: Integer);
var Debito: Double;
begin
  Q.Active := False;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT ' + // do not localize
            '  Sum(Valor) as TotDeb ' + // do not localize
            'FROM Debito ' + // do not localize
            'WHERE '+ // do not localize
            '  Cliente='+IntToStr(Cli)); // do not localize
  Q.Open;
  Debito := Q.FieldByName('TotDeb').AsCurrency; // do not localize
  tbCli.CancelRange;
  tbCli.IndexName := 'ICodigo';             // do not localize
  if tbCli.FindKey([Cli]) then begin
    tbCli.Edit;
    tbCliDebito.Value := Debito;
    tbCliTemDebito.AsBoolean := (Debito>0.0009);
    tbCli.Post;
  end;
  Q.Active := False;
end;

function TDados.TotalDebitos: Double;
begin
  Q.Active := False;
  Q.SQL.Clear;
  Q.SQL.Text := 'select sum(debito) as totdeb from cliente';
//  Q.SQL.Add('SELECT Sum(D.Valor) as TotDeb FROM Debito D, Cliente C where C.ID = D.Cliente'); // do not localize
  Q.Open;
  Result := Q.FieldByName('TotDeb').AsCurrency; // do not localize
end;

function TDados.TotalCredValor: Double;
begin
  Q.Active := False;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT SUM(ValorCred) as Valor From Cliente where (ValorCred>0)'); // do not localize
  Q.Open;
  Result := Q.FieldByName('Valor').AsCurrency; // do not localize
end;

procedure TDados.EditarMovEst(ME: TncMovEst; aPodeAlterarCli, aPodeNFe : Boolean);
var 
  B: TncItensMovEst;
  Str: String;
begin
  if ME.Tipo=trAjustaCusto then Exit;
 
  B := TncItensMovEst.Create(nil);
  try
    Str := ME.Itens.AsString;
    if ME.Sessao=0 then begin
      if TFrmME2.Create(nil).Editar(False, ME, (not ME.Cancelado) and ((NumAberto=ME.Caixa) or (ME.Caixa=0)) and aPodeNFe)>0 then begin
        B.AsString := ME.Itens.AsString;
        ME.Itens.AsString := Str;
        ME.SalvaDescPago;
        ME.Itens.AjustaOperacao(B);
        CM.SalvaMovEst(ME);
      end;
    end;
  finally
    B.Free;
  end;
end;

procedure TDados.DevolverVenda(aUID: String);
var 
  M : TncMovEst;
  I : Integer;
begin
  if not tbTran.Locate('UID', aUID, []) then Exit;
  
  M := TncMovEst.Create;
  try
    M.LeDataset(tbTran);
    DM.LoadIMEs(M);
    M.CriaUID;
    M.Tipo := trEstDevolucao;
    M.ID := 0;
    M.Operacao := osIncluir;

    for I := 0 to M.Itens.Count-1 do with M.Itens[i] do begin
      imID := 0;
      imUnitario := DuasCasas((imTotal - imDesconto) / imQuant);
      imTotal := imUnitario * imQuant;
      imDesconto := 0;
      imTipoTran := trEstDevolucao;
      _Operacao := osIncluir;
    end;

    CM.SalvaMovEst(M);
  finally
    M.Free;
  end;

end;

procedure TDados.EditarPagamento(aTran: Integer);
var 
  P: TncPagEspecies;
  M: TncMovEst;
  B: TncItensMovEst;
  V: TncDebCredValidator;
  D, aDesc: Currency;
  aDescPerc: Double;
  aDescPorPerc: Boolean;
  aPodeSalvar : Boolean;
  PJ, aPagPend : Boolean;
  aTemCli : Boolean;
  I : Integer;
  aImp : Byte;
  CNPJ, sDadosNF, aCliCPF, aCliEmail : String;

function PrecisaDadosNF: Boolean;  
var EmailOk, CPFOk : Boolean;
begin
  Result := False;
  if not NFCeAtivo then Exit;

  if not aPagPend then Exit;
  
  if (Dados.tNFConfigPedirCPF.Value=0) and (Dados.tNFConfigPedirEmail.Value=0) then Exit;

  EmailOk := (tNFConfigPedirEmail.Value=0) or (GetValueFromStr(sDadosNF, 'EmailNF')>'');
  CPFOK   := (tNFConfigPedirCPF.Value=0) or (GetValueFromStr(sDadosNF, 'CPFNF')>'') or PJ;

  if EmailOk and CPFOK then Exit;

  Result := True;
end;  

function LeDadosNF: Boolean;
var 
  S: String;
  sCPF, sEmail : String;
begin
  Result := (not PrecisaDadosNF);
  if Result then Exit;

  S := sDadosNF;
  if aTemCli then begin
    sCPF := GetValueFromStr(S, 'CPFNF');
    if (Trim(sCPF)='') and (aCliCPF>'') then 
      SetValueFromStr(S, 'CPFNF', aCliCPF);
    sEmail := GetValueFromStr(S, 'EmailNF');  
    if (Trim(sEmail)='') and (aCliEmail>'') then 
      SetValueFromStr(S, 'EmailNF', aCliEmail);
  end;
  
  Result := TFrmDadosNFCe.Create(Self).Editar(S, PJ, CNPJ);
  if Result then 
    sDadosNF := S;
end;
    
begin
  tbTran.IndexName := 'IID';
  if tbTran.FindKey([aTran]) then begin
    if not (tbTranTipo.Value in [trEstVenda, trPagDebito]) then Exit;
    sDadosNF := tbTranExtra.Value;

    aCliCPF := '';
    aCliEmail := '';
    
    
    aPagPend := tbTranPagPend.Value;
    P := TncPagEspecies.Create;
    M := TncMovEst.Create;
    V := TncDebCredValidator.Create;
    try
      DM.LoadPagEsp(aTran, P);
      tbCli.IndexName := 'IID';

      if (tbTranCliente.Value>0) and tbCli.FindKey([tbTranCliente.Value]) then
      begin 
        V.SetOldCli(tbTranCliente.Value, tbCliDebito.Value, tbCliValorCred.Value, tbTranCreditoUsado.Value, tbTranCredito.Value);
        V.SetNewCli(tbTranCliente.Value, tbCliDebito.Value, tbCliValorCred.Value, tbCliLimiteDebito.AsVariant);
        aTemCli := True;
        PJ := tbCliPJuridica.Value;
        CNPJ := tbCliCPF.Value;
        aCliCPF := tbCliCPF.Value;
        aCliEmail := tbCliEmail.Value;
      end else begin
        aTemCli := False;
        PJ := False;
        CNPJ := '';
      end;
        
      D := tbTranDesconto.Value; 
      aDesc := D; 
      aDescPerc := tbTranDescPerc.Value;
      aDescPorPerc := tbTranDescPorPerc.Value;
      P.Obs := tbTranObs.Value;
      M.PagEsp.Assign(P);
      aPodeSalvar := (tbTranCaixa.Value=NumAberto) or tbTranPagPend.Value or (tbTranCaixaPag.Value=NumAberto);

      if aPodeSalvar and (not (tbTranStatusNFE.Value in [nfetran_naoemitir, nfetran_erro])) then
        aPodeSalvar := False;

      if aPodeSalvar then
        if tbTranPagPend.Value then
          aPodeSalvar := Permitido(daVendaPagamento) else
          aPodeSalvar := Permitido(daAlterarPagamento);
      aPodeSalvar := aPodeSalvar and (not tbTranCancelado.Value);    
      if TFrmPagEspecie.Create(Self).Editar(tbTranPagPend.Value, P, V, tbTranTotal.Value, tbTranTax_Incluir.Value, D, aDescPerc, aDescPorPerc, aPodeSalvar) then
      if LeDadosNF then
      if ((not M.PagEsp.Igual(P)) or (D<>aDesc)) then 
      begin

        tbTran.IndexName := 'IID';
        if not tbTran.FindKey([aTran]) then raise exception.Create('Erro localizando transação '+IntToStr(aTran));
      
        B := TncItensMovEst.Create(M);
        try
          M.LeDataset(tbTran);
          DM.LoadIMEs(M);
          B.AsString := M.Itens.AsString;
          M.Pago := P.Pago;
          M.Cliente := V.NewCli;
          M.Obs := P.Obs;
          M.Desconto := D;
          m.DescPerc := aDescPerc;
          M.DescPorPerc := aDescPorPerc;
          M.PagFunc := Dados.CM.UA.Username;
          M.PagPend := False;
          M.PagEsp.Assign(P);
          M.SalvaDescPago;
          M.Extra := sDadosNF;
          M.Itens.AjustaOperacao(B, False);
          for I := 0 to M.Itens.Count - 1 do
            M.Itens[I].imPermSemEstoque := True;
            
          CM.SalvaMovEst(M);
          if aPagPend and (not M.PagPend) then begin
            if NFCeAtivo then begin
              TranList.Add(tbTranUID.AsString);
            end else begin
              if gRecibo.Imprimir and (gRecibo.AutoPrint=autoprint_pagamento) then
                dmComp.Imprime(tbTranUID.AsGuid);
            end;
          end;
        finally
          B.Free;
        end;
      end;
    finally
      P.Free;
      M.Free;
      V.Free;
    end;
  end;
end;

procedure TDados.EditarTran(aTran: Integer; aPodeAlterarCli: Boolean = False);
var
  ME: TncMovEst;
  Deb : TncDebito;
  LE : TncLancExtra;
  Tempo : Double;
  Obs: String; 
  CredValor: Boolean;
  aPodeNFe : Boolean;
begin
  if not tbTran.FindKey([aTran]) then Exit;
  
  case tbTranTipo.Value of
    trCaixaEnt..trCaixaSai : 
    begin
      LE := TncLancExtra.Create;
      try
        LE.LeDataset(tbTran);
        if TFrmLancExtra.Create(nil).Editar(False, (LE.Caixa=NumAberto), LE) then
          Dados.CM.SalvaLancExtra(LE);
      finally
        LE.Free;
      end;
    end;

    trEstDevolucao : TFrmDev.Create(Self).Editar(tbTranID.Value);
    
    trEstVenda..trEstSaida:
    begin
      ME := TncMovEst.Create;
      try
        ME.LeDataset(tbTran);
        DM.LoadIMEs(ME);
        DM.LoadPagEsp(ME.ID, ME.PagEsp);
        aPodeNFe := (tbTranTipo.Value<>trEstVenda) or (tbTranStatusNFe.Value in [nfetran_naoemitir, nfetran_erro]);
        Dados.EditarMovEst(ME, aPodeAlterarCli, aPodeNFe);
      finally
        ME.Free;
      end;
    end;

    trPagDebito : begin
      Deb := TncDebito.Create;
      try
        Deb.LeDataset(tbTran);
        DM.LoadIDebPagos(Deb);
        DM.LoadPagEsp(tbTranID.Value, Deb.PagEsp);
        TFrmDebito.Create(nil).Editar(False, Deb, tbTranNomeCliente.Value);
      finally
        Deb.Free;
      end;
    end;
  end;
end;

procedure TDados.EnviaEmailAtivacaoNFCe(aCNPJAnt, aRazaoAnt: String);
var 
  MS : TIdMultiPartFormDataStream;
  H : TidHttp;
  S : String;

procedure AddParam(aName, aValue: String);
begin
  ms.AddFormField(aName, AnsiToUtf8(aValue), 'utf-8').ContentTransfer := '8bit';
end;
  
begin
  inherited;
  try
    h := TIdHTTP.create(nil);
    ms := TIdMultiPartFormDataStream.Create;
    try
      AddParam('from_name',   'NFCe NEX');
      AddParam('from_email',  'avisonfce@nextar.com.br');
      AddParam('to[][email]', 'avisonfce@nextar.com.br');
      AddParam('to[][name]', '');

      if (aCNPJAnt>'') or (aRazaoAnt<>'') then begin
        AddParam('subject', 'Alterou dados NFCe: '+gConfig.Conta);
        if aCNPJAnt <> '' then
          S := 'Alterou o CNPJ de '+aCNPJAnt+' para ' + tNFConfigCNPJ.Value else
          S := '';
        if aRazaoAnt>'' then begin
          if S>'' then S := S + ' e ';
          S := S + 'Alterou a Razão social de '+ aRazaoAnt+ ' para ' + tNFConfigRazaoSocial.Value;
        end;
        AddParam('body', 'A loja '+gConfig.Conta+' fez alterações nos dados para a emissão de NFC-e em '+FormatDateTime('dd/mm/yyyy hh:mm', Now)+': '+S);
      end else begin                                                                                                                                                                                                                                         
        AddParam('subject', 'Ativou NFCe: '+gConfig.Conta);
        AddParam('body', 'A loja '+gConfig.Conta+
                 ', Razao Social: '+tNFConfigRazaoSocial.Value+
                 ', UF: '+tNFConfigEnd_UF.Value+
                 ', CNPJ: '+tNFConfigCNPJ.Value+', ativou a emissão de NFC-e em '+FormatDateTime('dd/mm/yyyy hh:mm', Now)+'.');
      end;  
        
      AddParam('tags', 'nfce');
    
      H.HandleRedirects := True;  
      H.Post(gUrls.Url('mailer'), MS);
    finally
      H.Free;
      MS.Free;
    end;      
  except
    on E: Exception do DebugMsgEsp('TfnNFe.EnviaEmailAtivacao - Exception: '+E.Message, false, true);
  end;  
end;

procedure TDados.AjustaCampoLocalizaCli;
begin
  case tbConfigCampoLocalizaCli.Value of
    1 : begin
      TVLCodigo.Index := 0;
      TVLNome.Index := 1;
      TVL.OptionsBehavior.IncSearchItem := TVLCodigo;
      tbCli.IndexName := 'IID'; // do not localize
    end;
  else
    TVL.OptionsBehavior.IncSearchItem := TVLNome;
    TVLUsername.Index := 1;
    TVLNome.Index := 0;
    tbCli.IndexName := 'INome'; // do not localize
  end;
end;

procedure TDados.FecharDB;
begin
  DB.Connected := False;
  Session.Active := False;
  nxTCPIP.Active := False;
  mtUsuario.EmptyTable;
  if Assigned(dmComp) then
    FreeAndNil(dmComp);
end;

function PodeCancelarStatusCanc(aStatus, aAmb: Integer) : String;
begin
  Result := '';
  case aStatus of
    statuscanc_nfe_processarnfe,
    statuscanc_nfe_processatran   : 
      if aAmb=1 then
        Result := 'Já existe um cancelamento em andamento para essa venda';
    statuscanc_nfe_ok             : 
      Result := 'Essa venda já foi cancelada';
  end;
end;

function PodeCancelarStatusNF(aStatus, aAmb: Integer) : String;
begin
  Result := '';
  case aStatus of
    nfetran_gerar,
    nfetran_transmitir : 
      Result := 'Não é possível cancelar uma venda que está com a emissão da NFC-e em andamento';
    
    nfetran_contingencia : 
      if aAmb=1 then
        Result := 'Essa venda está com a NFC-e em contingência. Ainda não foi transmitida para a SEFAZ. Para cancelar a venda é necessário aguardar a conclusão da transmissão para a SEFAZ.';
  end;
end;

function TDados.CancelaNFE(aTran: Cardinal): Boolean;
var 
  aJust, aMsg : String;
begin
  Result := False;

  if tNFConfigTipo.Value=nfcfg_nfce then begin
    if not TFrmJust.Create(Self).Editar(aJust, True) then Exit;
  end else
    aJust := '';

  aMsg := '';

  InitTran(DB, [tbTran, tbNFE, tbCaixa], True);
  try
    if not tbTran.Locate('ID', aTran, []) then Exit;
    if not tbNFE.Locate('Chave', tbTranChaveNFE.Value, []) then Exit;
    
    aMsg := PodeCancelarStatusNF(tbTranStatusNFE.Value, tbTranAmbNFe.Value);
    if aMsg>'' then Exit;

    aMsg := PodeCancelarStatusCanc(tbTranStatusCanc.Value, tbTranAmbNFe.Value);
    if aMsg>'' then Exit;

    if NumAberto<>tbTranCaixa.Value then begin
      aMsg := rsCaixaFechado;
      Exit;
    end;
    
    tbNFE.Edit;
    tbNFEJustCanc.Value := aJust;
    tbNFEStatusCanc.Value := statuscanc_nfe_processarnfe;
    tbNFECanceladoPor.Value := CM.Username;
    tbNFECanceladoEm.Value := Now;
    tbNFE.Post;

    tbTran.Edit;
    tbTranStatusCanc.Value := statuscanc_nfe_processarnfe;
    tbTran.Post;

    DB.Commit;
    
    Result := True;
    trancanc.Add(tbTranUID.AsString);
  finally
    if DB.InTransaction then db.Rollback;
    if aMsg>'' then ShowMessage(aMsg);
  end;
end;

function TDados.CancelaVenda(aTran: Cardinal): Boolean;

procedure RaiseEx(S: String);
begin  
  if S>'' then raise Exception.Create(S);
end;

begin
  result := False;
  if not tbTran.Locate('ID', aTran, []) then Exit;

  if tbTranCancelado.Value then begin
    ShowMessage(rsVendaJaCancelada);
    Exit;
  end;

  RaiseEx(PodeCancelarStatusNF(tbTranStatusNFE.Value, tbTranAmbNFe.Value));
  RaiseEx(PodeCancelarStatusCanc(tbTranStatusCanc.Value, tbTranAmbNFe.Value));
     
  if NaoSim(rsConfirmaCancelamento) then Exit;

  if (tbTranStatusNFE.Value in [0, nfetran_erro]) then begin
    CM.CancelaTran(tbTranID.Value, CM.Username);
    Result := True;
  end else
    Result := CancelaNFE(aTran);
end;

procedure TDados.CMAoAbrirFecharCx(Sender: TObject);
var FI : PfmFormInfo;
begin
  RefreshCaixaAberto;
  FI := FrmPri.FM.FormByClass(TfbCaixa);
  if FI^.fiInstance<>nil then
    TfbCaixa(FI^.fiInstance).AbriuFechouCx;
end;

procedure TDados.CMAoAtualizarNFConfig(Sender: TObject);
begin
  tNFConfig.Refresh;
  DM.tNFConfig.Refresh;
  TpanAlertaModoHomo.Refresh;
  FrmPri.AtualizaDireitos;
end;

procedure TDados.CMAoAtualizarConfig(Sender: TObject);
begin
  GetFlags;
  tbConfig.Refresh;
  TpanAlertaModoHomo.Refresh;
  FrmPanTopo.Verifica;
  BroadcastAtualizaDireitosConfig;  
  FrmPri.AjustaVersao; 
  FrmPri.AtualizaConfig;
  FrmPri.ChecaRede;
  if ShowUpgPremium and (gConfig.OnTrial and (not gConfig.Pro))then begin
    ShowUpgPremium := False;
    TFrmUpgradePremium.Create(Self).ShowModal;
  end;

  if CM.UA.Admin and SameText('admin', CM.UA.Username) then 
    TFrmEmailUsuario.ChecaEmailUsuarioAtual;
end;

procedure TDados.CMAoAtualizarEspecie(Sender: TObject);
begin
  with TncEspecie(Sender) do
  if mtEsp.FindKey([ID]) then begin
    mtEsp.Edit;
    mtEspNome.Value := Nome;
    mtEsp.Post;
  end;

  LoadMeioPag;
end;

procedure LoadConfig;
begin
  with slConfig do begin
    if FileExists(ConfigName) then
      LoadFromFile(ConfigName) 
    else begin
      Values['Servidor'] := '127.0.0.1'; // do not localize
      Values['Usuario'] := 'admin'; // do not localize
      SaveConfig;
    end;

    DebugAtivo := SameText(Values['Debug'], 'S'); // do not localize
  end;
end;

procedure SaveConfig;
begin
  slConfig.SaveToFile(ConfigName);
end;

{ TncDocEditHelper }

function TncDocEditHelper.ObtemNome(aDocID: String): String;
var V : Variant;
begin
  V := Dados.tbDoc.Lookup('UID', aDocID, 'Nome');
  if V=null then 
    Result := '' else
    Result := V;
end;

function TncDocEditHelper.RunDocMgr(aDocEdit: TncDocEdit): Boolean;
var aID: String;
begin
  aID := aDocEdit.IDDoc;
  if TFrmDocMgr.Create(nil).Run(False, aDocEdit.Tipo, aID, FrmPri.IsDocMgr) then 
    aDocEdit.IDDoc := aID;
end;

initialization
  gDocEditHelper := TncDocEditHelper.Create;
  slConfig := TStringList.Create;
  LoadConfig;
  
  with FormatSettings do
  if NegCurrFormat=0 then
    NegCurrFormat := 1;

finalization
  slConfig.Free;


end.


{1F9C7BE5-772A-4E9E-90C9-3F6FB30D50C0}




