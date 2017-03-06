unit ncClassesBase;
{
    ResourceString: Dario 12/03/13
}

interface 

{$I NEX.INC}

uses
  cxFormats,
  Classes,
  CacheProp,
  ClasseCS,
  SysUtils,
  Messages,
  Windows,
  Dialogs,
  DB,
  uFaixaInteger,
  uLicEXECryptor,
  ncMsgCom,
  SyncObjs,
  Variants,
  uThreadStringList,
  ncErros, 
  uNexTransResourceStrings_PT;

const
  incluir_marca = '{AA7D6FDC-C1EB-4910-AE16-6AA37A4D9CEA}';
  
  idtb_Caixa        = 01;
  idtb_Card         = 02;
  idtb_Credito      = 03;
  idtb_Categoria    = 04;
  idtb_Cliente      = 05;
  idtb_Config       = 06;
  idtb_Debito       = 07;
  idtb_ITran        = 08;
  idtb_Layout       = 09;
  idtb_MovEst       = 10;
  idtb_NCM          = 11;
  idtb_Produto      = 12;
  idtb_Tran         = 13;
  idtb_Usuario      = 14;
  idtb_infoCampanha = 15;
  idtb_temp         = 16;
  idtb_PostMS       = 17;
  idtb_Unidade      = 18;
  idtb_Especie      = 19;
  idtb_PagEspecies  = 20;
  idtb_IOrcamento   = 21;
  idtb_Orcamento    = 22;
  idtb_syslog       = 23;
  idtb_Doc          = 24;
  idtb_br_cest      = 25;
  idtb_Terminal     = 26;
  idtb_RecDel       = 27;
  idtb_CFOP         = 28;
  idtb_MunBr        = 29;
  idtb_NFCONFIG     = 30;
  idtb_NFE          = 31;
  idtb_CCE          = 32;
  idtb_BRTrib       = 33;
  idtb_ConvUnid     = 34;
  idtb_ProdFor      = 35;
  idtb_tax          = 36;
  idtb_tax_itens    = 37;
  idtb_movest_tax   = 38;
  idtb_post_nexapp  = 39;
  idtb_endereco     = 40;
  idtb_tipotran     = 41;
  idtb_BRTrib_Tipo  = 42;
  idtb_bk_control   = 43;
  idtb_bk_process   = 44;
  idtb_bk_upload    = 45;
  idtb_LinkXML      = 46;
  idtb_Marca        = 47;

  bk_status_criar_json = 0;
  bk_status_enviar     = 1;
  bk_status_enviado    = 2;
                        
  wm_registrapag     = wm_user;
  wm_processacotas   = wm_user + 1;
  wm_abreserv        = wm_user + 3;
  wm_alterouchorario = wm_user + 4;
  wm_abreaba         = wm_user + 6;
  wm_removesession   = wm_user + 7;
  wm_salvatranpopup  = wm_user + 8;
  wm_DownloadIntInfo = wm_user + 9;
  wm_autoprintpdf    = wm_user + 10;
  wm_refreshurls     = wm_user + 11;
  wm_refreshnfconfig = wm_user + 12;
  wm_nfeupdated      = wm_user + 13;
  wm_updatenfconfig  = wm_user + 14;
  wm_newcanc         = wm_user + 15;
  wm_newtrans        = wm_user + 16;
  wm_instaladepend   = wm_user + 17;
  wm_newgerar        = wm_user + 18;
  wm_newpostms       = wm_user + 19;
  wm_sinaliza_nexapp = wm_user + 20;
  wm_newconsulta     = wm_user + 21;
  wm_newcce          = wm_user + 22;
  wm_sinaliza_bk     = wm_user + 23;
  wm_startadmin      = wm_user + 24;
  wm_startstep       = wm_user + 25;

  
  card_status_criar_json   = 0;
  card_status_enviar_json  = 1;
  card_status_json_enviado = 2;

  card_type_venda       = 0;
  card_type_caixa       = 1;
  card_type_estoque     = 2;
  card_type_faturamento = 3;
  card_type_aberturacx  = 4;
  card_type_produto     = 5;
  card_type_orcamento   = 6;
  card_type_devolucao   = 7;
  card_type_resync      = 255;

  card_array_cards      = 0;
  card_array_produtos   = 1;

  card_array_name       : array[card_array_cards..card_array_produtos] of String = ('cards', 'products'); 

  http_method_reset_store = 0;
  http_method_post        = 1;
  http_method_put         = 2;
  http_method_delete      = 3;
  
  
  card_type_estoque_min = 201;
  card_type_estoque_fim = 202;

  statuscont_enviar         = 0;
  statuscont_chavedif       = 1;
  statuscont_chaveigual     = 2;
  statuscont_ok_chavenormal = 3;
  statuscont_ok_chavecont   = 4;
  statuscont_erro           = 5;  

  nfetran_naoemitir    = 0;
  nfetran_gerar        = 1;
  nfetran_transmitir   = 2;
  nfetran_contingencia = 20;
  nfetran_consultar    = 30;
  nfetran_erro         = 50;
  nfetran_ok           = 100;
  nfetran_ok_cont      = 101;

  nfestatus_transmitir   = 2;
  nfestatus_contingencia = 20;
  nfestatus_consultar    = 30;
  nfestatus_erro         = 50;
  nfestatus_ok           = 100;
  nfestatus_ok_cont      = 101;

  tiponfe_nenhum       = 0;
  tiponfe_nfce         = 1;
  tiponfe_sat          = 2;
  tiponfe_nfe          = 3;

  tipofor_produtos   = 0;
  tipofor_transp     = 1;
  tipofor_entregador = 2;

  peso_vol_nao_enviar = 0;
  peso_vol_auto       = 1;
  peso_vol_manual     = 2;

  DocParams_pt : Array[0..17] of String = (
    'RecNomeLoja',
    'RecRodape',
    'DocParam_Email',
    'DocParam_Tel',
    'DocParam_Tel2',
    'DocParam_Cidade',
    'DocParam_End',
    'DocParam_CEP',
    'DocParam_CNPJ',
    'DocParam_IE',
    'DocParam_Site',
    'DocParam_Facebook',
    'DocParam_Instagram',
    'DocParam_Whats',
    'DocParam_Whats2',
    'DocParam_InfoExtra',
    'DocParam_Logo',
    'DocParam_Logo2');

  DocParams_en : Array[0..17] of String = (
    'RecStoreName',
    'RecFooter',
    'DocParam_Email',
    'DocParam_Phone',
    'DocParam_Phone2',
    'DocParam_City',
    'DocParam_Address',
    'DocParam_PostCode',
    'DocParam_CNPJ',
    'DocParam_DocId',
    'DocParam_Website',
    'DocParam_Facebook',
    'DocParam_Instagram',
    'DocParam_WhatsApp',
    'DocParam_WhatsApp2',
    'DocParam_ExtraInfo',
    'DocParam_Logo',
    'DocParam_Logo2');  
  
  tipo_opest_venda      = 1;
  tipo_opest_devvenda   = 2;
  tipo_opest_compra     = 3;
  tipo_opest_devcompra  = 4;
  tipo_opest_outros_ent = 98;
  tipo_opest_outros_sai = 99;
  
  sat_outros   = 0;
  sat_bematech = 1;
  sat_dimep    = 2;
  sat_elgin    = 3;
  sat_kryptus  = 4;
  sat_sweda    = 5;
  sat_tanca    = 6;
  sat_nitere   = 7;

  sat_ultimo   = sat_nitere;

  sat_strings : array[0..sat_ultimo] of string = (
    'Outros',
    'Bematech', 
    'Dimep',
    'Elgin',
    'Kryptus',
    'Sweda',
    'Tanca', 
    'Nitere');
    
  tipocert_a1 = 0;
  tipocert_a3 = 2;

  nfcfg_nfce            = 0;
  nfcfg_sat             = 2;

  statuscanc_nfe_processarnfe   = 1;
  statuscanc_nfe_processatran   = 2;
  statuscanc_nfe_rej            = 3;
  statuscanc_nfe_erro           = 4;
  statuscanc_nfe_ok             = 5;

  statusinut_nfe_processar   = 1;
  statusinut_nfe_rej         = 2;
  statusinut_nfe_erro        = 3;
  statusinut_nfe_ok          = 4;

  statuscce_enviar = 0;
  statuscce_ok     = 1;
  statuscce_erro   = 2;

// Posição da barra de login do NexGuard
  poslogin_centro = 0;
  poslogin_topo   = 1;
  poslogin_rodape = 2;  

  orcamento_pendente = 0;
  orcamento_aprovado = 1;
  orcamento_vendido  = 2;
  orcamento_recusado = 3;
  orcamento_expirado = 4;

  tipodoc_venda     = 0;
  tipodoc_orcamento = 1;
  tipodoc_etiqueta  = 2;
  tipodoc_pgdebito  = 3;
  tipodoc_nfce      = 4;
  tipodoc_sat       = 5;
  tipodoc_pedido    = 6;
  tipodoc_nfe       = 7;
  
  tipodoc_demdeb    = 99;

  idtab_tran = 1;
  idtab_orcamento = 2;
  idtab_transp = 3;

  satAmb = 1;

const
  uf_br : array[0..26] of string[2] = 
('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 
'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'); 
  
  classid_TncTaxItem         = 10;
  classid_TncMovEst          = 11;
  classid_TncTaxItens        = 13;
  classid_TncPagEspecie      = 13;
  classid_TncPagEspecies     = 14;
  classid_TncTransacao       = 15;
  classid_TncItemMovEst      = 20;
  classid_TncItensMovEst     = 21;
  classid_TncTransacoes      = 25;
  classid_TncItemDebito      = 30;
  classid_TncItensDebito     = 31;
  
  wm_biometria              = wm_user + 100;
  wm_infocampanha           = wm_user + 101;
  wm_atualizadireitosconfig = wm_user + 102;
  
  // Modo de exibir o cronômetro nas máquinas clientes quando o cliente possui créditos
  mecApenasCredValidos   = 0;
  mecMostrarTotal        = 1;

  prefixo_versao = 'C';
  nomeprog       = 'Nex';

  pagesp_misto = High(Word);

  // tamanho tela
  tamTelaNormal = 0;
  tamTelaPDV1   = 1;
  
  // conteudo do caixa por e-amil
  cceMovEstoque       = 0;
  cceEstoqueAbaixoMin = 1;
  cceTransacoesDesc   = 2;
  cceTransacoesCanc   = 3;
  cceTransacoesObs    = 4;
  cceTodasTran        = 5;

  // opção de censura horário
  opchSemCensura  = 1;
  opchCHorario    = 2;
  opchCensuraEsp  = 3;
  

  TicksPorSegundo = 1000;
  TicksPorMinuto  = 60 * TicksPorSegundo;
  TicksPorHora    = 60 * TicksPorMinuto;
  TicksPorDia     = 24 * TicksPorHora;

  opcota_liberarauto = 0;
  opcota_confirmar   = 1;

  printeng_adobe    = 0;
  printeng_clprint  = 1;
  printeng_gnostice = 2;
  
  opexcesso_cancelarauto = 0;
  opexcesso_confirmar = 1;
  
// Opcao de repetição de tarifa
  rtUltima = 0;
  rtTodas  = 1;
  rtDesde  = 2;

// Direitos da Maquina
  dmNenhum  = 0;
  dmFree    = 1;
  dmPremium = 2;
  dmDef     = 3;  
  dmParcial = 4;

// Opcao de Tipo de Divisao de Tarifa por Minuto
  tdtPorTempo = 0;
  tdtPorValor = 1;  
  
  eppPausarAcesso   = 0;
  eppEncerrarAcesso = 1;

  SessionUser = 'admin';
  SessionPass = 'delphi9856';

  PortaKBMMW = 41592;

  BitsH : Array[0..23] of Cardinal = (
   $1,
   $2,
   $4,
   $8,
   $10,
   $20,
   $40,
   $80,
   $100,
   $200,
   $400,
   $800,
   $1000,
   $2000,
   $4000,
   $8000,
   $10000,
   $20000,
   $40000,
   $80000,
   $100000,
   $200000,
   $400000,
   $800000);

  // Opções de Bloqueio quando cair a rede
  obPermitePrePago = 0;
  obPermitePosPago = 1;
  obBloqueioTotal  = 2;
  obFecharCMGuard  = 3; 

  // Status de Impressão
  siPausado     = 0;
  siProcessando = 1;
  siRegistrou   = 2;

  BoolStr : Array[Boolean] of Char = ('0', '1');
  BoolString : Array[Boolean] of String = ('False', 'True');

  mdDemo     = -1;
  mdLiberado = 0;
  MinCreditoLoginMS = 5000;

  HorasSemana = 7 * 24;
  SegundosPorDia = 60 * 60 * 24;
  MSPorDia = SegundosPorDia * 1000;
  MSPorSemana = MSPorDia * 7;

  operLogoff    = 0;
  operShutdown  = 1;
  operReboot    = 2;
  operFecharNex = 3;

  // Controle de Impressoes
  ciDesativado = 0;
  ciMonitorar  = 1;
  ciRegistrar  = 2;
  
  // Tipos de Transação
{  ttAcesso            = 0;
  ttVendaPacote       = 1;
  ttCreditoTempo      = 2;
  ttManutencao        = 3;
  ttAcessoVenda       = 4;
  ttDebitoTempo       = 5;
  ttSinal             = 6;
  ttEstVenda          = 7;
  ttEstCompra         = 8;
  ttEstEntrada        = 9;
  ttEstSaida          = 10;
  ttPagtoDebito       = 11;
  ttSuprimentoCaixa   = 12;
  ttSangriaCaixa      = 13;
  ttVendaPassaporte   = 14;}

  trAddCredito    = 2;
  trRemCredito    = 3;
  trEstVenda      = 4;
  trEstCompra     = 5;
  trEstEntrada    = 6;
  trEstSaida      = 7;
  trPagDebito     = 8;
  trCaixaEnt      = 9;
  trCaixaSai      = 10;
  trCorrDataCx    = 13;
  trAjustaFid     = 14;
  trAjustaCusto   = 16;
  trZerarEstoque  = 17;
  trEstDevolucao  = 18;
  trEstDevFor     = 19;
  
  trMax           = trEstDevolucao;

  itMovEst    = 1;
  itCredito   = 2;
  itTran      = 3;
  itAjustaFid = 5;
  itFrete     = 6;

// Tipo de Operação Fidelidade
  tofNenhum   = 0;
  tofAcumulo  = 1;
  tofResgate  = 2;
  tofCorrecao = 3;

// Tipo Prêmio Automático
  tpaPac = 0;
  tpaPassaporte = 1;  

  // Tipo Cliente   
  tcNormal     = 0;
  tcCliGratis  = 1;
  tcManutencao = 2;

  // Tipos de Crédito de Tempo
  tctPrevisao   = 0;
  tctAvulso     = 1;
  tctPassaporte = 2;
  tctPacote     = 3;
  tctCartaoTempo= 4;
  tctLivre      = 5;
  tctDiv        = 6;
  tctDiv2       = 7;
  
  // Modos de Pagamento
  mpgTelaPagtoAutomatica = 0;
  mpgDuploCliqueMaq      = 1;
  mpgSomenteTransacoes   = 2;

  clAzulNEX = $B76311;

{  StTipoTransacao : Array[trInicioSessao..trAjustaFid] of String = (
    'Inicio de Sessão',
    'Fim de Sessão',
    'Crédito Tempo',
    'Débito Tempo',
    'Venda',
    'Compra',
    'Entrada Estoque',
    'Saida Estoque',
    'Pagamento Débito',
    'Suprimento Caixa',
    'Sangria Caixa',
    'Impressão',
    'Transf.Máquina',
    'Correção Data Caixa',
    'Correção Pontos Fid');

  AbrevTipoTransacao : Array[trInicioSessao..trAjustaFid] of String = (
    'Inicio',
    'Fim',
    'Cred.Tempo', 
    'Déb.Tempo',
    'Venda',
    'Compra',
    'Entrada Est',
    'Saida Est.',
    'Pg.Débito',
    'Suprimento',
    'Sangria',
    'Impressão',
    'Transf.Máq',
    'Corr.Data.Cx',
    'Corr.Pontos');  }

  // Tipos de Cadastros   
  tipocad_nenhum     = 0;
  tipocad_cliente    = 1;
  tipocad_fornecedor = 2;
  tipocad_filial     = 3;

  // Tipos de Classes
  tcCliente    = 2;
  tcUsuario    = 4;
  tcConfig     = 6;
  tcMovEst     = 10;
  tcEspecie    = 14;
  tcTipoTran   = 15;

  ProxyUsername = 'proxy';
  ProxySenha    = 'proxypass';

  // Tipo Expiração
  teNunca       = 0;
  teDias        = 1;
  teHoras       = 2;
  teAcessos     = 3;
  teDataMarcada = 4;

  // Operacao Salvar
  osNenhuma = 0;
  
  osIncluir = 1;
  osAlterar = 2;
  osExcluir = 3;
  osCancelar = 4;

  // Tipos de Tipos de Acesso
  ttaServico = 0;
  ttaCliente = 1;
  ttaMaquina = 2;

  // Opcoes para Chat
  ochJanelaVisivel   = 0;
  ochJanelaEscondida = 1;
  ochDesabilitar     = 2;

  // PM_CalcValorCli
  pm_cvc_Intervalo = 0;
  pm_cvc_Minimo    = 1;
  pm_cvc_Maximo    = 2;

  // JOb Control
  jc_pause  = 0;
  jc_resume = 1;
  jc_delete = 2;

  BoolToString : Array[Boolean] of String[5] = ('False', 'True');

  chFldDelim = #1'nexflddelim';
  chListaDelim = #2'nexlistdelim';

  recurso_vendadireta = 1;
  recurso_vendabalcao = 2;
  recurso_alimentacao = 3;

type

  TInfoCampanha = class
    icCampanha : String;
    icutmccn   : String;
    icutmctr   : String;
    icutmcct   : String;
    icutmcmd   : String;
    icutmcsr   : String;
  end;
  
  TSessionSocket = record
    ssSession : Integer;
    ssSocket  : Integer;
  end;

  TFaixaIntItem = record
    fiDe, fiAte: Integer;
  end;  
    
  TArraySessionSocket = Array of TSessionSocket;
  TArrayTempo = Array[0..23] of Double;
  TArrayTipoTran = Array[0..trAjustaFid] of Boolean;
  PArrayTipoTran = ^TArrayTipoTran;
  ncPString = ^String;

  EErroNexCafe = class(Exception)
  public
    CodigoErro: Integer;
    ErroSocket: Integer;
    constructor Create(CE: Integer);
  end;

  TncDadosCliente = object
    dcCodigo: Integer;
    dcNome  : String;
  end;

  TncServidorBase = class;
  
  TncClasse       = class;
  TncCliente      = class;
  TncUsuario      = class;
  
  TTipoNotificacao = (tnCriacao, tnAlteracao, tnDestruicao);

  TProcNotificacao = procedure (Obj: TncClasse; TipoNot: TTipoNotificacao) of object;

  TncClasse = class ( TClasseCS )
  private
    FProcNotificar: TProcNotificacao;
  protected
    property ProcNotificar: TProcNotificacao
      read FProcNotificar write FProcNotificar;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Notificar(TipoNot: TTipoNotificacao);
    function TipoClasse: Integer; virtual; abstract;
  end;

  TncCodBarBalInfo = object
    Codigo    : String;
    PesoValor : Double;
    BalValor  : Boolean;

    procedure Clear;
    function IsEmpty: Boolean;
  end;

  {$METHODINFO ON}
  TncConfig = class ( TncClasse )
  private
    FEndereco_Loja         : TGuid;
    FManterSaldoCaixa      : Boolean;
    FEscondeTextoBotoes    : Boolean;

    FRecImprimir           : Byte; // 0=Nao Imprimir, 1=Imprimir Todos, 2=Imprimir Alguns
    FRecTipoImpressora     : String;
    FRecMatricial          : Boolean;
    FRecPorta              : String;
    FRecSalto              : Byte;
    FRecLargura            : Byte;
    FRecCortaFolha         : Boolean;
    FRecRodape             : String;
    FRecNomeLoja           : String;
    FRecImprimeMeioPagto   : Boolean;
    FRecPrefixoMeioPagto   : String;

    FPais                  : String;
    Ftax_id_default        : Cardinal;

    FDocParam_Email        : String;
    FDocParam_Tel          : String;
    FDocParam_Tel2         : String;
    FDocParam_Cidade       : String;
    FDocParam_End          : String;
    FDocParam_CEP          : String;
    FDocParam_CNPJ         : String;
    FDocParam_IE           : String;
    FDocParam_Site         : String;
    FDocParam_Facebook     : String;
    FDocParam_Instagram    : String;
    FDocParam_Whats        : String;
    FDocParam_Whats2       : String;
    FDocParam_InfoExtra    : String;

    FEmailIdent            : String;

    FCampoLocalizaCli      : Byte;
    FLimitePadraoDebito    : Double;
    FConta                 : String;
    FCodEquip              : String;
    FQtdLic                : Integer;
    FStatusConta           : TStatusConta;
    FVerPri                : Word;
    FFreePremium           : Boolean;
    FPro                   : Boolean;
    FDataLic               : TDateTime;
    FDVA                   : TDateTime;
    FProxAvisoAss          : TDatetime;
    FPreLib                : Boolean;
    FAlertaAssinatura      : Boolean;
    FJaFoiPremium          : Boolean;
    FMeioPagto             : Byte;
    
    FEmailEnviarCaixa      : Boolean;
    FEmailDestino          : String;
    FEmailConteudo         : String;
    
    FRelCaixaAuto          : Boolean;

    FNaoVenderAlemEstoque   : Boolean;

    FAutoSortGridCaixa      : Boolean;

    FFidAtivo               : Boolean;
    FFidVendaValor          : Currency;
    FFidVendaPontos         : Integer;
    FFidParcial             : Boolean;
    FFidAutoPremiar         : Boolean;
    FFidAutoPremiarValor    : Currency;
    FFidAutoPremiarPontos   : Integer;
    FFidMostrarSaldoAdmin   : Boolean;
    FFidMsg                 : Boolean;
    FFidMsgTitulo           : String;
    FFidMsgTexto            : String;
    
    FAutoObsAoCancelar      : Boolean;

    FPastaDownload          : String;
    
    FExigeDadosMinimos     : Boolean;
    FCidadePadrao          : String;
    FUFPadrao              : String;
    FDadosMinimos          : String;
    FPedirSaldoI           : Boolean;
    FPedirSaldoF           : Boolean;
    
    FCamposCliCC           : TStrings;
    fAutoCad               : boolean;
    fQuickCad              : boolean;
    fCodProdutoDuplicados  : boolean;
    fMargem                : double;
    fPrecoAuto             : boolean;

    FServerDir             : String;

    FBanners               : String;
    FBotoes                : String;

    FRecursos              : String;

    FConfirmarDebito       : Boolean;

    FComissaoPerc          : Double;
    FComissaoLucro         : Boolean;

    FCodBarBal             : Boolean;
    FCodBarBalTam          : Byte;
    FCodBarBalIdent        : String;
    FCodBarBalInicioCod    : Byte;
    FCodBarBalTamCod       : Byte;
    FCodBarBalValor        : Boolean; 
    FCodBarBalPPInicio     : Byte;
    FCodBarBalPPTam        : Byte;
    FCodBarBalPPDig        : Byte;
    FCodBarMaxQtdDig       : Byte;
    FCodBarArredondar      : Byte;

    FTelaPosVenda_Mostrar  : Boolean;
    FTelaPosVenda_BtnDef   : Byte;

    Ffmt_moeda             : Boolean;
    Ffmt_decimais          : Byte;
    Ffmt_simbmoeda         : string;
    Ffmt_sep_decimal       : string;
    Ffmt_sep_milhar        : string;

    FLastApplyFmtMoeda     : String;

    FExigirVendedor        : Boolean;

    FValOrc_Tempo          : Word;
    FValOrc_UTempo         : Byte;

    FEmailOrc_Enviar       : Boolean;
    FEmailOrc_FromName     : String;
    FEmailOrc_FromEmail    : String;
    FEmailOrc_Subject      : String;
    FEmailOrc_Body         : String;
    FDocOrc_Imprimir       : Boolean;
    FDocOrc_NomeLoja       : String;
    FObsPadraoOrcamento    : String;
    FTrocoMax              : Currency;
    FObsNF                 : Boolean;
    
    FslFlags               : TStrings;
    FUrls                  : String;

    FTranspEntPadrao       : Cardinal;
    FFretePadrao           : Currency;
    FDesativarFrete        : Boolean;
    FDesativarTranspEnt    : Boolean;
    FmodFretePadrao        : Byte;
    
    function GetCamposCliCCText: String;
    procedure SetCamposCliCCText(const Value: String);
    function GetServerDir: String;
    function GetRecursoOn(aIndex: Integer): Boolean;
    procedure SetRecursoOn(aIndex: Integer; const Value: Boolean);
    function GetRecBobina: Boolean;
    procedure SetRecBobina(const Value: Boolean);
    procedure SetConta(const Value: String);
    function GetDTol: Byte;
    procedure SetDTol(const Value: Byte);
    function GetUrls: String;
    procedure SetUrls(const Value: String);
    function GetFlags: String;
    procedure SetFlags(const Value: String);
    function GetEndereco_Loja: String;
    procedure SetEndereco_Loja(const Value: String);
  protected
    function GetChave: Variant; override;
    procedure SetVerPri(const Value: Word);
  public  
    function TipoClasse: Integer; override;

    function CalcPontos(aValor: Currency): Double;

    constructor Create;
    destructor Destroy; override;

    procedure AssignConfig(C : TncConfig);

    procedure ApplyFmtMoeda;

    function cxMaskUnitario: String;

    property slFlags: TStrings
      read FslFlags;

    function cce(acce: Integer): Boolean;

    function FidAutoPremiarAtivo: Boolean;

    function FidPremiarAutomaticamente(aPontos: Double): Boolean;

    function CodLojaInt: Integer;

    function DadosMinOk(T: TDataset): Boolean;

    function IsPremium: Boolean;

    function TrialPremium: Boolean;
    function TrialPro: Boolean;

    function IsFree: Boolean;

    function OnTrial: Boolean;

    function TolerandoPor: Integer;

    function TolDiasRestantes: Integer;

    function TrialDiasRestantes: Integer;

    function TrialVencido: Boolean;

    function CalcPreco(aMargem: Variant; aCusto: Currency): Currency;

    function DecodeCodBarBalanca(aCodigo: String; var aInfo: TncCodBarBalInfo): Boolean;

    function PrecisaoBalanca(aValor: Extended): Extended;

    function RecPrinterGeneric: Boolean;

    function ImpOutras: Boolean;

    function PodeFidelidade: Boolean;

    function PaisNorm: String;

    function PaisBrasil: Boolean;

    property End_Loja_Nativo: TGuid
      read FEndereco_Loja write FEndereco_Loja;

    property RecursoOn[aIndex: Integer]: Boolean
      read GetRecursoOn write SetRecursoOn;

    property slCamposCliCC: TStrings
      read FCamposCliCC;

    property RecBobina: Boolean
      read GetRecBobina write SetRecBobina;  
    
  published

    property fmt_moeda: Boolean read Ffmt_moeda write Ffmt_moeda;
    property fmt_decimais: Byte read Ffmt_decimais write Ffmt_decimais;
    property fmt_simbmoeda: string read Ffmt_simbmoeda write Ffmt_simbmoeda;
    property fmt_sep_decimal: string read Ffmt_sep_decimal write Ffmt_sep_decimal;
    property fmt_sep_milhar: string read Ffmt_sep_milhar write Ffmt_sep_milhar;
  
    property Endereco_Loja: String
      read GetEndereco_Loja write SetEndereco_Loja;
    
    property ValOrc_Tempo: Word
      read FValOrc_Tempo write FValOrc_Tempo;

    property ValOrc_UTempo: Byte
      read FValOrc_UTempo write FValOrc_UTempo;

    property ObsPadraoOrcamento: String
      read FObsPadraoOrcamento write FObsPadraoOrcamento; 

    property ObsNF: Boolean
      read FObsNF write FObsNF;

    property EmailOrc_Enviar : Boolean
      read FEmailOrc_Enviar write FEmailOrc_Enviar;

    property EmailOrc_FromName: String
      read FEmailOrc_FromName write FEmailOrc_FromName;

    property EmailOrc_FromEmail: String
      read FEmailOrc_FromEmail write FEmailOrc_FromEmail;

    property EmailOrc_Subject: String
      read FEmailOrc_Subject write FEmailOrc_Subject;
      
    property EmailOrc_Body: String
      read FEmailOrc_Body write FEmailOrc_Body;

    property DocOrc_Imprimir : Boolean
      read FDocOrc_Imprimir write FDocOrc_Imprimir;

    property DocOrc_NomeLoja : String
      read FDocOrc_NomeLoja write FDocOrc_NomeLoja;
          
    property CodProdutoDuplicados: boolean
      read fCodProdutoDuplicados write fCodProdutoDuplicados;
    property AutoCad: boolean
      read fAutoCad write fAutoCad;
      
    property QuickCad: boolean
      read fQuickCad write fQuickCad;
      
    property Margem: double
      read fMargem write fMargem;
      
    property PrecoAuto: boolean
      read fPrecoAuto write fPrecoAuto;

    property ComissaoPerc: Double
      read FComissaoPerc write FComissaoPerc;
         
    property ComissaoLucro: Boolean
      read FComissaoLucro write FComissaoLucro;

    property CodBarBal: Boolean
      read FCodBarBal write FCodBarBal;
        
    property CodBarBalTam: Byte
      read FCodBarBalTam write FCodBarBalTam;
      
    property CodBarBalIdent: String
      read FCodBarBalIdent write FCodBarBalIdent;

    property CodBarBalInicioCod: Byte
      read FCodBarBalInicioCod write FCodBarBalInicioCod;
        
    property CodBarBalTamCod: Byte
      read FCodBarBalTamCod write FCodBarBalTamCod;

    property CodBarBalValor: Boolean
      read FCodBarBalValor write FCodBarBalValor;

    property CodBarBalPPInicio: Byte
      read FCodBarBalPPInicio write FCodBarBalPPInicio;

    property CodBarBalPPTam: Byte
      read FCodBarBalPPTam write FCodBarBalPPTam;
            
    property CodBarBalPPDig: Byte        
      read FCodBarBalPPDig write FCodBarBalPPDig;

    property CodBarMaxQtdDig: Byte
      read FCodBarMaxQtdDig write FCodBarMaxQtdDig;

    property CodBarArredondar: Byte
      read FCodBarArredondar write FCodBarArredondar;  
      
    property RecImprimir: Byte
      read FRecImprimir write FRecImprimir;

    property RecTipoImpressora: String
      read FRecTipoImpressora write FRecTipoImpressora;

    property RecMatricial: Boolean
      read FRecMatricial write FRecMatricial;

    property RecPorta: String
      read FRecPorta write FRecPorta;
            
    property RecSalto: Byte
      read FRecSalto write FRecSalto;
      
    property RecLargura : Byte
      read FRecLargura write FRecLargura;

    property RecCortaFolha : Boolean
      read FRecCortaFolha write FRecCortaFolha;

    property RecRodape: String
      read FRecRodape write FRecRodape;

    property RecNomeLoja: String
      read FRecNomeLoja write FRecNomeLoja;   

    property RecImprimeMeioPagto: Boolean
      read FREcImprimeMeioPagto write FRecImprimeMeioPagto;  

    property RecPrefixoMeioPagto: String
      read FRecPrefixoMeioPagto write FRecPrefixoMeioPagto;      

    property DocParam_Email: String
      read FDocParam_Email write FDocParam_Email;
      
    property DocParam_Tel: String
      read FDocParam_Tel write FDocParam_Tel;
      
    property DocParam_Tel2: String
      read FDocParam_Tel2 write FDocParam_Tel2;
      
    property DocParam_Cidade: String
      read FDocParam_Cidade write FDocParam_Cidade;
      
    property DocParam_End: String
      read FDocParam_End write FDocParam_End;
      
    property DocParam_CEP: String
      read FDocParam_CEP write FDocParam_CEP;
      
    property DocParam_CNPJ: String
      read FDocParam_CNPJ write FDocParam_CNPJ;
      
    property DocParam_IE: String
      read FDocParam_IE write FDocParam_IE;
      
    property DocParam_Site: String
      read FDocParam_Site write FDocParam_Site;
     
    property DocParam_Facebook: String
      read FDocParam_Facebook write FDocParam_Facebook;
      
    property DocParam_Instagram: String
      read FDocParam_Instagram write FDocParam_Instagram;
      
    property DocParam_Whats: String
      read FDocParam_Whats write FDocParam_Whats;
      
    property DocParam_Whats2: String
      read FDocParam_Whats2 write FDocParam_Whats2;
      
    property DocParam_InfoExtra: String
      read FDocParam_InfoExtra write FDocParam_InfoExtra;

    property ManterSaldoCaixa: Boolean
      read FManterSaldoCaixa write FManterSaldoCaixa;   

    property EscondeTextoBotoes: Boolean
      read FEscondeTextoBotoes write FEscondeTextoBotoes;

    property CampoLocalizaCli: Byte
      read FCampoLocalizaCli write FCampoLocalizaCli;  

    property LimitePadraoDebito: Double
      read FLimitePadraoDebito write FLimitePadraoDebito;  

    property Conta: String
      read FConta write SetConta;     

    property FreePremium: Boolean
      read FFreePremium write FFreePremium;

    property Pro: Boolean
      read FPro write FPro;

    property DVA: TDateTime
      read FDVA write FDVA;
      
    property DTol: Byte
      read GetDTol write SetDTol;   

    property PreLib: Boolean
      read FPreLib write FPreLib;

    property ProxAvisoAss: TDateTime
      read FProxAvisoAss write FProxAvisoAss;  

    property DataLic: TDateTime
      read FDataLic write FDataLic;

    property MeioPagto: Byte
      read FMeioPagto write FMeioPagto;  
        
    property AlertaAssinatura: Boolean
      read FAlertaAssinatura write FAlertaAssinatura;  

    property JaFoiPremium: Boolean
      read FJaFoiPremium write FJaFoiPremium;  

    property CodEquip: String
      read FCodEquip write FCodEquip;  

    property QtdLic: Integer
      read FQtdLic write FQtdLic; 

    property StatusConta: TStatusConta
      read FStatusConta write FStatusConta;   

    property VerPri: Word
      read FVerPri write SetVerPri;

    property EmailEnviarCaixa: Boolean
      read FEmailEnviarCaixa write FEmailEnviarCaixa;

    property EmailIdent: String
      read FEmailIdent write FEmailIdent;

    property EmailDestino: String
      read FEmailDestino write FEmailDestino;   

    property EmailConteudo: String
      read FEmailConteudo write FEmailConteudo;  

    property RelCaixaAuto: Boolean
      read FRelCaixaAuto write FRelCaixaAuto;  

    property NaoVenderAlemEstoque: Boolean
      read FNaoVenderAlemEstoque write FNaoVenderAlemEstoque;  

    property AutoSortGridCaixa : Boolean
      read FAutoSortGridCaixa write FAutoSortGridCaixa;

    property AutoObsAoCancelar: Boolean
      read FAutoObsAoCancelar write FAutoObsAoCancelar;

    property FidAtivo: Boolean 
      read FFidAtivo write FFidAtivo;
      
    property FidVendaValor: Currency
      read FFidVendaValor write FFidVendaValor;
      
    property FidVendaPontos: Integer
      read FFidVendaPontos write FFidVendaPontos;
      
    property FidParcial: Boolean
      read FFidParcial write FFidParcial;

    property FidAutoPremiar : Boolean
      read FFidAutoPremiar write FFidAutoPremiar;

    property FidAutoPremiarValor: Currency 
      read FFidAutoPremiarValor write FFidAutoPremiarValor;

    property FidAutoPremiarPontos: Integer
      read FFidAutoPremiarPontos write FFidAutoPremiarPontos;

    property FidMostrarSaldoAdmin: Boolean
      read FFidMostrarSaldoAdmin write FFidMostrarSaldoAdmin;

    property FidMsg: Boolean
      read FFidMsg write FFidMsg;

    property FidMsgTitulo: String
      read FFidMsgTitulo write FFidMsgTitulo;

    property FidMsgTexto: String
      read FFidMsgTexto write FFidMsgTexto;  

    property PastaDownload: String
      read FPastaDownload write FPastaDownload;

    property ExigeDadosMinimos: Boolean
      read FExigeDadosMinimos write FExigeDadosMinimos;

    property CidadePadrao: String
      read FCidadePadrao write FCidadePadrao;
      
    property UFPadrao: String
      read FUFPadrao write FUFPadrao;

    property DadosMinimos: String
      read FDadosMinimos write FDadosMinimos;  

    property PedirSaldoI: Boolean
      read FPedirSaldoI write FPedirSaldoI;

    property PedirSaldoF: Boolean
      read FPedirSaldoF write FPedirSaldoF;  

    property CamposCliCC: String
      read GetCamposCliCCText write SetCamposCliCCText;

    property ServerDir: String
      read GetServerDir write FServerDir;  

    property Banners: String
      read FBanners write FBanners;

    property Botoes: String
      read FBotoes write FBotoes;   

    property Recursos: String
      read FRecursos write FRecursos;

    property ConfirmarDebito: Boolean
      read FConfirmarDebito write FConfirmarDebito;  

    property ExigirVendedor: Boolean
      read FExigirVendedor write FExigirVendedor;  

    property TelaPosVenda_Mostrar: Boolean
      read FTelaPosVenda_Mostrar write FTelaPosVenda_Mostrar;

    property TelaPosVenda_BtnDef: Byte
      read FTelaPosVenda_BtnDef write FTelaPosVenda_BtnDef;

    property Urls: String 
      read GetUrls write SetUrls;

    property TrocoMax: Currency
      read FTrocoMax write FTrocoMax;  

    property Flags: String
      read GetFlags write SetFlags;  

    property Pais: String 
      read FPais write FPais;

    property tax_id_def: Cardinal
      read Ftax_id_default write Ftax_id_default;

    property TranspEntPadrao : Cardinal
      read FTranspEntPadrao write FTranspEntPadrao;
      
    property FretePadrao : Currency
      read FFretePadrao write FFretePadrao;

    property modFretePadrao: Byte
      read FmodFretePadrao write FmodFretePadrao;
      
    property DesativarFrete : Boolean
      read FDesativarFrete write FDesativarFrete;

    property DesativarTranspEnt : Boolean  
      read FDesativarTranspEnt write FDesativarTranspEnt;
  end;
  {$METHODINFO OFF}
  
  
  TncCliente = class ( TncClasse )
  private
    FHandle     : Integer;
    FRemoto     : Boolean;
    FUsername   : String;
    FWndHandle  : HWND;
    FProxyHandle: Integer;
    FSocket     : Integer;
    FInicio     : TDateTime;
    FSessionID  : Integer;
  protected
    function GetChave: Variant; override;
  public
    constructor Create;
    
    function TipoClasse: Integer; override;
    function Proxy: Boolean;
  published
    property Handle: Integer
      read FHandle write FHandle;

    property Remoto: Boolean
      read FRemoto write FRemoto;

    property UserName: String
      read FUserName write FUserName;

    property WndHandle: HWND
      read FWndHandle write FWndHandle;

    property ProxyHandle: Integer
      read FProxyHandle write FProxyHandle;     

    property Socket: Integer
      read FSocket write FSocket;

    property Inicio: TDateTime
      read FInicio Write FInicio;

    property SessionID: Integer
      read FSessionID write FSessionID;  
  end;

  TncUsuario = class ( TncClasse )
  private
    FNumClientes    : Integer;  // número de clientes atualmente conectados nesse usuário
    FUsername       : String;
    FAdmin          : Boolean;
    FInativo        : Boolean;
    FSenha          : String;
    FDireitos       : String;
    FNome           : String;
    FEmail          : String;
    FLimiteDesc     : Double;
  protected
    function GetChave: Variant; override;
  
    procedure SetNumClientes(Valor: Integer); virtual;
    procedure SetUsername(Valor: String); virtual;
    procedure SetAdmin(Valor: Boolean); virtual;
    procedure SetSenha(Valor: String); virtual;
    procedure SetDireitos(Valor: String); virtual;
    procedure SetNome(Valor: String); virtual;
  public
    constructor Create;

    function TipoClasse: Integer; override;

    function PodeDesconto(aTotal, aDesc: Currency): Boolean;

    function LimiteDescOk(aPerc: Double): Boolean;

  published
    property NumClientes: Integer
      read FNumClientes write SetNumClientes;
      
    property Username: String
      read FUsername write SetUsername;

    property Nome: String
      read FNome write SetNome;  
      
    property Admin: Boolean
      read FAdmin write SetAdmin;
                                                  
    property Senha: String
      read FSenha write SetSenha;
      
    property Direitos: String
      read FDireitos write SetDireitos;

    property Email: String
      read FEmail write FEmail;

    property LimiteDesc: Double
      read FLimiteDesc write FLimiteDesc;    

    property Inativo: Boolean
      read FInativo write FInativo;
  end;

  TncListaUsuarios = class ( TListaClasseCS ) 
  private
    function GetUsuario(I: Integer): TncUsuario;
    function GetUsuarioPorUsername(N: String): TncUsuario;
  public
    constructor Create;

    function EmailUsuario(aUsername: String): String;

    function AdminAtivos: Integer;

    property Itens[I: Integer]: TncUsuario
      read GetUsuario; default;

    property PorUsername[N: String]: TncUsuario
      read GetUsuarioPorUsername;
  end;

  TncEnviaEvento = procedure (aMsg: Integer; aDados: Pointer) of object;

  TncServidorBase = class ( TComponent )
  private
    FUltimoHandle : Integer;
    FOnEnviaEvento : TncEnviaEvento;
    
    function NumClientesLocais: Integer;
  protected
    FClientes: TThreadList;
    FAtivo : Boolean;

    procedure AoRemoverCliente(Cliente: TncCliente); virtual;
    function ObtemCliente(aHandle: Integer): TncCliente;
    
    procedure EnviaEvento(Mensagem: Integer; Dados: Pointer);
    
    procedure AddCliente(Obj: TncCliente);
    procedure RemoveCliente(Obj: TncCliente); 
    function ProximoHandle: Integer;
    procedure SetAtivo(Valor: Boolean); virtual;
    procedure DesativaClientes;
    procedure ChecaErro(Erro: Integer);
    
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    class procedure Lock;
    class procedure Unlock;


    procedure ObtemSessionSocketArray(var SS: TArraySessionSocket);
    function ObtemUsernameHandlePorSessionID(aSessionID: Integer; var aUsername: String; var aHandle: Integer): Boolean;

    function ObtemLista(aTipoClasse: Integer): TListaClasseCS; virtual; abstract;
    
    function ObtemClientePorSocket(Socket: Integer): TncCliente;
    function ObtemClientePorSessionID(aSessionID: Integer): TncCliente;
    function ObtemPastaServ(var NomePastaServ: String): Integer; virtual; 
    function SalvaMovEst(aObj: TObject): Integer; virtual; abstract;
    function SalvaDebito(aObj: TObject): Integer; virtual; abstract;
    function SalvaLancExtra(aObj: TObject): Integer; virtual; abstract;
    function SalvaCredito(aObj: TObject): Integer; virtual; abstract;
    function AbreCaixa(aFunc: String; aSaldo: Currency; var NovoCx: Integer): Integer; virtual; abstract;
    function FechaCaixa(aFunc: String; aSaldo: Currency; aID: Integer): Integer; virtual; abstract;
    function ReprocCaixa(aFunc: String; aID: Integer): Integer; virtual; abstract;
    function CorrigeDataCaixa(aFunc: String; aID: Integer; aNovaAbertura, aNovoFechamento: TDateTime): integer; virtual; abstract;
    function AjustaPontosFid(aFunc: String; aCliente: Integer; aFator: Smallint; aPontos: Double; aObs: String): Integer; virtual; abstract;
    function ZerarEstoque(aFunc: String): integer; virtual; abstract;
    function ObtemCertificados(sl: TStrings): integer; virtual; abstract;
    function ReemitirNFCe(aTran: TGuid): integer; virtual; abstract;

    function GeraXMLProt(aChave: String): integer; virtual; abstract;

    function InutilizarNFCE(aNFe: Boolean; aAno: Word; aInicio, aFim: Cardinal; aJust: String; aResposta: TStrings): integer; virtual; abstract;
    function ConsultarSAT(aResposta: TStrings): integer; virtual; abstract;

    function InstalaNFCeDepend : Integer; virtual; abstract;
    function InstalaNFeDepend : Integer; virtual; abstract;

    function Upload(aFonte, aDestino: String): Integer; virtual;
    function Download(aFonte, aDestino: String): Integer; virtual;
    function DownloadArqInterno(aArq: String; aVerCli: Integer; aDestino: String): Integer; virtual; abstract;

    function SalvaStreamObj(Novo: Boolean; S: TStream): Integer; virtual; abstract;
    function ObtemStreamConfig(S: TStream): integer; virtual; abstract;
    function ObtemStreamListaObj(Cliente: Integer; TipoClasse: Integer; S: TStream): Integer; virtual; abstract;
    function ApagaObj(Cliente: Integer; TipoClasse: Integer; Chave: String): Integer; virtual; abstract;
    function Login(aUsername, 
                   aSenha: String; 
                   aFuncAtual: Boolean;
                   aRemoto: Boolean; 
                   aWndHandle: HWND; 
                   aProxyHandle: Integer; 
                   aSocket: Integer;
                   aSessionID: Integer;
                   aIP: String;
                   var Handle: Integer): Integer; virtual;                                                                              

    function CancelaTran(aID: Integer; aFunc: String): integer; virtual; abstract;
    function SalvaLic(aLic: String): Integer; virtual; abstract;

    function SalvaApp(aApp: String): Integer; virtual; abstract;

    function BaixaNovaVersao(Programa, Versao, ArqDestino: String): Integer; virtual;
    
    function TableUpdated(aIDTab : Byte): integer; virtual; abstract;

    function EnviarMsg(const aDe, aPara: Integer; const aTexto: String): Integer; virtual; abstract;
                   
    procedure Logout(Cliente: Integer); virtual;
    procedure LogoutSocket(Socket: Integer); virtual;
    procedure LogoutSession(aSessionID: Integer); virtual;

    function EnviarEventos: Boolean; virtual;
  published
    property OnEnviaEvento: TncEnviaEvento
      read FOnEnviaEvento write FOnEnviaEvento;
      
    property Ativo: Boolean                              
      read FAtivo write SetAtivo;  
  end; 

  TThreadRename = class ( TThread )
  private
    FArqNovo: String;
    FArqVelho: String;
  public
    constructor Create(aArqNovo, aArqVelho: String);

    procedure Execute; override;
  end;

  TThreadDeleteFile = class ( TThread )
  private
    FArq: String;
    FTryForMS: Cardinal;
  public
    constructor Create(aArq: String; aTryForMS: Cardinal);

    procedure Execute; override;
  end;
  

  
  function TicksToHMSSt(Ticks: Cardinal): String;
  function TicksToDateTime(Ticks: Cardinal): TDateTime;
  function MinutosToDateTime(M: Double): TDateTime;
  function MinutosToHoraStr(aMinutos: Extended): String;
  function SegundosToHMSSt(Seg: Cardinal): String;
  function SegundosToDateTime(Seg: Cardinal): TDateTime;
  function DateTimeToTicks(D: TDateTime): Cardinal;
  function DateTimeToSegundos(D: TDateTime): Cardinal;
  function DateTimeToMinutos(D: TDateTime): Cardinal;
  function HMSToMinutos(S: String): Double;
  function HMToMinutos(S: String): Double;
  function MSToMinutos(S: String): Double;
  
  function MinutosToTicks(M: Double): Cardinal;
  function TicksToMinutos(Ticks: Cardinal): Double;

  function Senha(D: TDateTime; NS: Cardinal; NumMaq: Integer): String;
  function VolumeSerial(DriveChar: Char): string;

  function CalcAcesso(Acesso, Sinal, Desc: Double): Double;
  function FormataNumVersao(St: String): String;

  function DuasCasas(D: Extended; aCasas: Integer = -1): Extended;

  function ObtemCred(I: Integer): Cardinal;

  function StringToBool(S: String): Boolean;

  function FloatParaStr(Valor: Extended): String;

  function QuantToStr(Valor: Extended): String;

  function StrParaFloat(S: String): Extended;
  
  function GetDTStr(D: TDateTime): String;

  function DTFromStr(S: String): TDateTime;

  function GetNextStrDelim(var S: String; aClassID: Byte): String;

  function GetNextListItem(var sItems, sItem: String; aClassID: Byte): Boolean;

  function GetNextStrDelimCustom(var S: String; aDelim: String): String;

{  function StringListToListDelim(aSL: String; aClassID: Byte): String;
  function StringListFromListDelim(aListDelim: String; aClassID: Byte): String;}
  
  procedure StrToLista(S: String; SL: TStrings);
  function ListaToStr(S: String): String;
  
  
  function MenorCardinal(C1, C2: Cardinal): Cardinal;
  function MaiorCardinal(C1, C2: Cardinal): Cardinal;

  function MinutosToHMSStr(aMinutos: Extended): String;
  function MinutosToHMSAbrev(aMinutos: Extended): String;

  function CurrencyToStr(C: Currency): String;
  function PontosFidToStr(D: Double): String;
  function PercToStr(P: Double): String;
  
  function FormataSiteStr(S: String): String;
  function DomainAndSubdomain(S: String): String;

  function SetBit(Valor, Bit: Integer; Lig: Boolean): Integer;
  
  function BitIsSet(Valor, Bit: Integer): Boolean;

  function GetVersionBuild(S: String): Integer;

  function MesmoComputerName(aComp1, aComp2: String): Boolean;

  function IsWOW64: Boolean;

  function GuidStringClean(S: String): String;
  function GuidStringFmt(S: String): String;

  procedure DeleteFromArraySessionSocket(var SS: TArraySessionSocket; aIndex: Integer);

  function IsPDFFromNexCafe(aArq: String): Boolean;

  procedure BroadcastAtualizaDireitosConfig;

  function LimitaCasasDec(C: Currency): Currency;

  function SemAcento(S: String): String;

  function SameTextSemAcento(A, B: String): Boolean;

  function sFldDelim(aClassID: Byte): String;
  function sListaDelim(aClassID: Byte): String;
  
  function SplitParams(S: String): TStrings;
  function RemoveAspas(S: String): String;

  function CodigoCliKey(S: String): String;

  function FormatEmail(aNome, aEmail: String): String;
  function EmailValido(aEmail: String): Boolean;

  function GetValueFromStr(aStr, aName: String): String;
  procedure SetValueFromStr(var aStr: String; aName, aValue: String);
  function TimeZoneStr: String;
  
  function isCPF(CPF: string): boolean; 
  function isCNPJ(xCNPJ: String): Boolean;
  function imprimeCPF(CPF: string): string; 
  function SoDig(S: String): String;
  function StrToBool(S: String; const aDef: Boolean = False): Boolean;

  function ObsToinfCpl(S: String): String;
  function infCplToObs(S: String): String;

  function YMD_Date(S: String): TDateTime;

  procedure SetTagValue(var S: String; aTag, aValue: String);

  function INIFName(aServer: Boolean): String;

  function GetCountryCode: String;

  function LinguaPT: Boolean;
  function LinguaES: Boolean;
  function LinguaEN: Boolean;

  function TipoTranToStr(const aTipoTran: Byte): String;

  procedure CheckImgLimit(aSize: Cardinal);

  function GetFileSize(const FileName: string): LongInt; 

  function RemoveAcento(S: String): String;

  function FmtNFe(S: String): String;

  function TipoTranEstoque(aTipo: Byte): Boolean;
  function TipoTranCaixa(aTipo: Byte): Boolean;

  function CFOPTemSt(aCFOP: Word): Boolean;
  function CSOSNTemSt(aCSOSN: Word): Boolean;
  

var
  glTolerancia: Cardinal = 0;
  gConfig : TncConfig = nil;
  EncerrarThreads : Boolean = False;
  LadoServidor : Boolean = False;
  NomeCompServ : String = '';
  csServ : TCriticalSection;
  slDadosMin : TStrings;
  ServidorAtivo : Boolean = False;
  VerProg : String = '';
  gGuardSide : Boolean = True;
  handleFrmPri : HWND;
  gPodeCancelarOutroCaixa : Boolean = False;
  gTabConfigNF : TDataset = nil;
  slIni : TThreadStringList;
  DocParams : Array of String;

threadvar  
  HandleCliAtual : Integer;
  UsernameAtual: String;
  
implementation

uses Graphics, md5, ncVersoes, forms, ncDebug, math, nexUrls, DateUtils, ncGuidUtils;

function CFOPTemSt(aCFOP: Word): Boolean;
begin
  Result := (aCFOP=5401) or
            (aCFOP=5402) or
            (aCFOP=5403) or
            (aCFOP=5405) or
            (aCFOP=6401) or
            (aCFOP=6402) or
            (aCFOP=6403) or
            (aCFOP=6404);
end;

function CSOSNTemSt(aCSOSN: Word): Boolean;
begin
  Result := (aCSOSN=201) or
            (aCSOSN=202) or
            (aCSOSN=203) or
            (aCSOSN=900);
end;

function TipoTranEstoque(aTipo: Byte): Boolean;
begin
  Result := (aTipo>=50) or (aTipo in [
    trEstVenda,
    trEstCompra,
    trEstEntrada,
    trEstSaida,
    trAjustaCusto,
    trZerarEstoque,
    trEstDevolucao]);
end;

function TipoTranCaixa(aTipo: Byte): Boolean;
begin
  Result := (aTipo in [
    trAddCredito,
    trRemCredito,
    trEstVenda,
    trPagDebito,
    trCaixaEnt,
    trCaixaSai,
    trCorrDataCx,
    trAjustaFid,
    trEstDevolucao]);
end;

function TipoTranToStr(const aTipoTran: Byte): String;
begin
  case aTipoTran of
    trAddCredito    : Result := rsAddCred;
    trRemCredito    : Result := rsRemoverCred;
    trEstVenda      : Result := rsVenda;
    trEstCompra     : Result := rsCompra;
    trEstEntrada    : Result := rsEntradaEst;
    trEstSaida      : Result := rsSaidaEst;
    trPagDebito     : Result := rsPagDebito;
    trCaixaEnt      : Result := rsSuprCaixa;
    trCaixaSai      : Result := rsSangriaCaixa;
    trCorrDataCx    : Result := rsCorrecaoCaixa;
    trAjustaFid     : Result := rsCorrecaoFid;
    trAjustaCusto   : Result := rsAjustaCusto;
    trZerarEstoque  : Result := rsZerarEstoque;
    trEstDevolucao  : Result := rsDevolucao;
  else
    Result := '';
  end;
end;

function GetFileSize(const FileName: string): LongInt; 
var 
  SearchRec: TSearchRec; 
begin 
  try 
    if FindFirst(ExpandFileName(FileName), faAnyFile, SearchRec) = 0 then 
      Result := SearchRec.Size 
    else Result := -1; 
  finally 
    SysUtils.FindClose(SearchRec); 
  end; 
end; 

procedure CheckImgLimit(aSize: Cardinal);
begin
  if aSize>250000 then
    raise Exception.Create(rsImagemMuitoGrande);
end;

function LinguaPT: Boolean;
begin
  Result := SameText(SLingua, 'pt') or SameText(SLingua, '');
end;

function LinguaES: Boolean;
begin
  Result := SameText(SLingua, 'es');
end;

function LinguaEN: Boolean;
begin
  Result := SameText(SLingua, 'en');
end;



function GetCountryCode: String;
var acBuf : array[0..1024] of Char;
begin
  if GetLocaleInfo( LOCALE_SYSTEM_DEFAULT,
                    LOCALE_SISO3166CTRYNAME,
                    acBuf,
                    sizeof(acBuf)-1) > 0
  then 
    Result := String(acBuf) else
    Result := 'erro';
end;

function INIFName(aServer: Boolean): String;
begin
  if aServer then
    Result := ExtractFilePath(ParamStr(0))+'nexserv.ini' else
    Result := ExtractFilePath(ParamStr(0))+'nexadmin.ini';
end;


procedure SetTagValue(var S: String; aTag, aValue: String);
var P, I, F: Integer;
begin
  I := Pos('<'+aTag+'>', S);
  F := Pos('</'+aTag+'>', S);

  if (I=0) or (F=0) then Exit;

  S := Copy(S, 1, I-1) + '<'+aTag+'>' + aValue + '</'+aTag+'>' + Copy(S, F+Length(aTag)+3, High(Integer));
end;




function YMD_Date(S: String): TDateTime;
begin
  Result := EncodeDate(StrToInt(Copy(S, 1, 4)), StrToInt(Copy(S, 5, 2)), StrToInt(Copy(S, 7, 2)));
end;

function ObsToinfCpl(S: String): String;
var
  a: TStrings;
  i : integer;
begin
  Result := '';
  a := TStringList.Create;
  try
    a.Text := S;
    for I := 0 to a.Count-1 do
    if Trim(a[i])>'' then begin
      if Result>'' then Result := Result + '; ';
      Result := Result + Trim(a[i]);
    end;
  finally
    a.Free;
  end;
end;

function infCplToObs(S: String): String;
var
  a, b: TStrings;
  i : integer;
begin
  a := TStringList.Create;
  b := TStringList.Create;
  try
    a.LineBreak := ';';
    a.text := S;
    for I := 0 to a.Count-1 do
      b.Add(Trim(a[i]));
    Result := b.Text;
  finally
    a.Free;
    b.Free;
  end;
end;

function StrToBool(S: String; const aDef: Boolean = False): Boolean;
begin
  if Trim(S)>'' then
    Result := SameText(Trim(S), 'S') or (StrToIntDef(Trim(S), 0)>0) or SameText(Trim(S), 'Y') else
    Result := aDef;
end;

function TimeZoneStr: String;
var 
  I : Integer;
  aNeg : Boolean;
begin
  I := TTimeZone.Local.UtcOffset.Hours;
  aNeg := (I<0);
  if aNeg then I := I*-1;
  Result := IntToStr(I);
  if Length(Result)=1 then Result := '0'+Result;
  Result := Result + ':00';
  if aNeg then 
    Result := '-'+Result else
    Result := '+'+Result;
end;


function SoDig(S: String): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    if S[I] in ['0'..'9'] then Result := Result + S[I];
end;

function isCnpj(xCNPJ: String):Boolean;
Var
  d1,d4,xx,nCount,fator,resto,digito1,digito2 : Integer;
   Check : String;
begin
  xCNPJ := SoDig(xCNPJ);
d1 := 0;
d4 := 0;
xx := 1;
for nCount := 1 to Length( xCNPJ )-2 do
    begin
    if Pos( Copy( xCNPJ, nCount, 1 ), '/-.' ) = 0 then
    begin
    if xx < 5 then
    begin
    fator := 6 - xx;
    end
    else
   begin
   fator := 14 - xx;
   end;
   d1 := d1 + StrToInt( Copy( xCNPJ, nCount, 1 ) ) * fator;
   if xx < 6 then
    begin
    fator := 7 - xx;
   end
   else
   begin
   fator := 15 - xx;    end;
   d4 := d4 + StrToInt( Copy( xCNPJ, nCount, 1 ) ) * fator;
   xx := xx+1;
   end;
   end;
   resto := (d1 mod 11);
   if resto < 2 then
   begin
   digito1 := 0;
   end
   else
   begin
   digito1 := 11 - resto;
   end;
   d4 := d4 + 2 * digito1;
   resto := (d4 mod 11);
   if resto < 2 then
    begin
    digito2 := 0;
   end
   else
    begin
    digito2 := 11 - resto;
   end;
    Check := IntToStr(Digito1) + IntToStr(Digito2);
   if Check <> copy(xCNPJ,succ(length(xCNPJ)-2),2) then
    begin
    Result := False;
   end
   else
    begin
    Result := True;
   end;
end;

function isCPF(CPF: string): boolean;
var  dig10, dig11: string;
    s, i, r, peso: integer;
begin
  CPF := SoDig(CPF);
// length - retorna o tamanho da string (CPF é um número formado por 11 dígitos)
  if ((CPF = '00000000000') or (CPF = '11111111111') or
      (CPF = '22222222222') or (CPF = '33333333333') or
      (CPF = '44444444444') or (CPF = '55555555555') or
      (CPF = '66666666666') or (CPF = '77777777777') or
      (CPF = '88888888888') or (CPF = '99999999999') or
      (length(CPF)<>11))
     then begin
              isCPF := false;
              exit;
            end;

// try - protege o código para eventuais erros de conversão de tipo na função StrToInt
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
// StrToInt converte o i-ésimo caractere do CPF em um número
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig10 := '0'
    else str(r:1, dig10); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig11 := '0'
    else str(r:1, dig11);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig10 = CPF[10]) and (dig11 = CPF[11]))
       then isCPF := true
    else isCPF := false;
  except
    isCPF := false
  end;
end;

function imprimeCPF(CPF: string): string;
begin
  CPF := SoDig(CPF);
  Result := '';
  if Length(CPF)<>11 then Exit;
  Result := copy(CPF, 1, 3) + '.' + copy(CPF, 4, 3) + '.' +
    copy(CPF, 7, 3) + '-' + copy(CPF, 10, 2);
end;

function EmailValido(aEmail: String): Boolean;
begin
  Result := (Length(Trim(aEmail))>2) and (Pos('@', aEmail)>0);
end;

function GetValueFromStr(aStr, aName: String): String;
var sl : TStrings;
begin
  sl := TStringList.Create;
  try
    sl.Text := aStr;
    Result := sl.Values[aName];
  finally
    sl.Free;
  end;
end;

procedure SetValueFromStr(var aStr: String; aName, aValue: String);
var sl : TStrings;
begin
  sl := TStringList.Create;
  try
    sl.Text := aStr;
    sl.Values[aName] := aValue;
    aStr := sl.Text;
  finally
    sl.Free;
  end;
end;

function FormatEmail(aNome, aEmail: String): String;
begin
  if Trim(aEmail)='' then
    Result := ''
  else
  if Trim(aNome)>'' then
    Result := aNome + ' <' + aEmail + '>' else
    Result := aEmail;
end;

function CodigoCliKey(S: String): String;
var 
  Dig: Boolean;
  I: Integer;
begin
  S := Trim(S);
  Dig := True;
  for I := 1 to Length(S) do
    if not (S[I] in ['0'..'9']) then begin
      Dig := False;
      Break;
    end;
    
  if Dig then begin
    while Length(S)<15 do S := '0'+S;
  end else
    S := UpperCase(S);
    
  Result := S;
end;

function SplitParams(S: String): TStrings;
var 
  P: Integer;
  s2: String;
begin
  Result := TStringList.Create;
  repeat
    P := Pos(',', S);
    if P>0 then begin
      s2 := Trim(Copy(S, 1, P-1));
      Delete(S, 1, P);
    end else begin
      s2 := Trim(S);
      S := '';
    end;
    if s2>'' then 
      Result.Add(s2);
  until S='';
end;

function RemoveAspas(S: String): String;
begin
  S := Trim(S);
  if Copy(S, 1, 1)='"' then Delete(S, 1, 1);
  if Copy(S, Length(S), 1)='"' then Delete(S, Length(S), 1);
  Result := S;
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

function RemoveAcento(S: String): String;
const
  Acentos =  'éêèýýúùûîiíìõôòóãáàñçÉÊÈÝÝÚÙÛÎIÍÌÕÔÒÓÃÁÀÑÇ';
  SAcentos = 'eeeyyuuuiiiiooooaaancEEEYYUUUIIIIOOOOAAANC';
var
  I, P : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do begin
    P := Pos(S[i], Acentos);
    if P>0 then
      Result := Result + SAcentos[P] else
      Result := Result + S[i];
  end;
end;

function FmtNFe(S: String): String;
begin
  Result := Trim(RemoveAcento(S));
end;

function SameTextSemAcento(A, B: String): Boolean;
begin
  Result := SameText(SemAcento(A), SemAcento(B));
end;


function LimitaCasasDec(C: Currency): Currency;
begin
  Result := DuasCasas(C);
{  if CurrencyDecimals>0 then
    Result := Int(C*Power(10, SysUtils.CurrencyDecimals)) / Power(10, SysUtils.CurrencyDecimals) else
    Result := C;}
end;

function CurrencyToStr(C: Currency): String;
begin
  Result := FloatToStrF(C, ffCurrency, 15, SysUtils.FormatSettings.CurrencyDecimals);
end;

function PercToStr(P: Double): String;
var lastCH: char;
begin
  Result := FloatToStrF(P, ffFixed, 15, 2);
  while (Length(Result)>0) and (Result[Length(Result)] in ['0', '.', ',']) do begin
    lastCH := Result[Length(Result)];
    Delete(Result, Length(Result), 1);
    if lastCH in [',', '.'] then  Break;
  end;
  if Result='' then Result := '0';
  Result := Result + '%';
end;

function PontosFidToStr(D: Double): String;
begin
  Str(D:0:1, Result);
  Result := Copy(Result, 1, Pos('.', Result)+1);
  if (Result>'') and (Result[Length(Result)]='0') then
    Delete(Result, Pos('.', Result), 10);
end;

procedure BroadcastAtualizaDireitosConfig;
var I: Integer;
begin
  for I := 0 to screen.FormCount-1 do 
    PostMessage(Screen.Forms[I].Handle, wm_AtualizaDireitosConfig, 0, 0);
end;

function IsPDFFromNexCafe(aArq: String): Boolean;
{5184B62F-3BD3-4C6F-BB56-1892185A1EA6}
begin
  aArq := ExtractFileName(aArq);
  if Length(aArq)=42 then
    Result :=
      SameText(Copy(aArq, 38, 5), '}.pdf') and // do not localize
      SameText(aArq[1], '{') and
      SameText(aArq[10], '-') and
      SameText(aArq[15], '-') and
      SameText(aArq[20], '-') and
      SameText(aArq[25], '-')
  else
    Result := False;
  DebugMsg('IsPDFFromNexCafe: Result: '+BoolStr[result]+' - aArq: ' + aArq); // do not localize
end;


procedure DeleteFromArraySessionSocket(var SS: TArraySessionSocket; aIndex: Integer);
var I: Integer;
begin
  if Length(SS)=0 then Exit;
  
  for I := aIndex to High(SS)-1 do
    SS[I] := SS[I+1];
    
  SetLength(SS, Length(SS)-1);
end;


function GuidStringClean(S: String): String;
var I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do 
    if not (S[i] in ['{', '}', '-']) then
      Result := Result + S[i];
end;

function GuidStringFmt(S: String): String;
begin
  Result := '{' + Copy(S, 1, 8)+
            '-' + Copy(S, 9, 4)+
            '-' + Copy(S, 13, 4)+
            '-' + Copy(S, 17, 4)+
            '-' + Copy(S, 21, 12) + '}';
end;

function IsWOW64: Boolean;
type
  TIsWow64Process = function( // Type of IsWow64Process API fn
    Handle: THandle;
    var Res: BOOL
  ): BOOL; stdcall;
var
  IsWow64Result: BOOL;              // result from IsWow64Process
  IsWow64Process: TIsWow64Process;  // IsWow64Process fn reference
begin
  // Try to load required function from kernel32
  IsWow64Process := GetProcAddress(
    GetModuleHandle('kernel32'), 'IsWow64Process' // do not localize
  );
  if Assigned(IsWow64Process) then
  begin
    // Function is implemented: call it
    if not IsWow64Process(GetCurrentProcess, IsWow64Result) then
      raise Exception.Create('Bad process handle'); // do not localize
    // Return result of function
    Result := IsWow64Result;
  end
  else
    // Function not implemented: can't be running on Wow64
    Result := False;
end;

function GetVersionBuild(S: String): Integer;
var I : integer;
begin
  I := Length(S);
  while (I>0) and (S[I]<>'.') do Dec(I);
  if I>0 then begin
    Delete(S, 1, I);
    Result := StrToIntDef(S, 0);
  end else
    Result := 0;
end;

function ZeroPad(St: String; Len: Integer): String;
begin
  Result := St;
  while Length(Result)<Len do Result := '0'+Result;
end;

function SetBit(Valor, Bit: Integer; Lig: Boolean): Integer;
begin
  if Lig then
    Result := (Valor or Bit) else
    Result := Valor and (not Bit);  
end;

function BitIsSet(Valor, Bit: Integer): Boolean;
var R: Boolean;
begin
  Result := ((Valor and Bit)=Bit);
end;

function FormataSiteStr(S: String): String;
var I: Integer;
begin
  if Copy(S, 1, 1)='"' then begin
    Delete(S, 1, 1);
    I := Pos('"', S);
    if I>0 then
      S := Copy(S, 1, I-1);
  end;
  
  if (copy(lowercase(S), 1, 5)='http:') or // do not localize
     (copy(lowercase(S), 1, 4)='ftp:') then  // do not localize
  begin
    Delete(S, 1, Pos(':', S));
    while (S>'') and (S[1] in ['/', ':', '\']) do Delete(S, 1, 1);
    while (S>'') and (S[Length(S)] in ['/', ':', '\']) do
      Delete(S, Length(S), 1);
    Result := S;
  end else
    Result := S;
end;

function DomainAndSubdomain(S: String): String;
var p: integer;
begin
  p := pos('/', S);
  if p>0 then
    Result := copy(S, 1, P-1) else
    Result := S;
end;

function MinutosToHoraStr(aMinutos: Extended): String;
var 
  H, M, S: Integer;
  aNeg: Boolean;
begin
  aNeg := (aMinutos<0);
  if aNeg then
    aMinutos := -1 * aMinutos;
  if aMinutos>0.000001 then begin
    H := Trunc(aMinutos / 60);
    M := Trunc(aMinutos) Mod 60;
    S := Trunc(aMinutos * 60) mod 60;
    if (H>0) or (M>0) or (S>0) then
      Result := ZeroPad(IntToStr(H), 2)+':'+
                ZeroPad(IntToStr(M), 2)+':'+
                ZeroPad(IntToStr(S), 2);
  end else
    Result := '00:00:00'; // do not localize
  if aNeg then Result := '-' + Result;
end;
  
function HMSToMinutos(S: String): Double;
begin
  if Length(S)=8 then
    Result := 
      StrToIntDef(Copy(S, 1, 2), 0) * 60 +
      StrToIntDef(Copy(S, 4, 2), 0) +
      StrToIntDef(Copy(S, 7, 2), 0) / 60
  else
    Result := 0;
end;

function MSToMinutos(S: String): Double;
begin
  Result := 
    StrToIntDef(Copy(S, 1, Pos(':', S)-1), 0) +
    StrToIntDef(Copy(S, Pos(':', S)+1, 2), 0) / 60;
end;

function HMToMinutos(S: String): Double;
var 
  H, M : Integer;
  St: String;
begin
  St := Copy(S, 1, Pos(':', S)-1);
  H := StrToIntDef(St, 0);
  St := Copy(S, Pos(':', S)+1, 2);
  M := StrToIntDef(St, 0);
  Result := (H*60) + M;
end;

function MinutosToHMSStr(aMinutos: Extended): String;
var 
  H, M, S: Integer;
  aNeg: Boolean;
begin
  Result := '';
  aNeg := (aMinutos<0);
  if aNeg then
    aMinutos := -1 * aMinutos;
  
  if aMinutos>0.000001 then begin
    H := Trunc(aMinutos / 60);
    M := Trunc(aMinutos) Mod 60;
    S := Trunc(aMinutos * 60) mod 60;
    if H>0 then
      Result := IntToStr(H)+'h';
    if M>0 then
      Result := Result + IntToStr(M)+'m';
    if S>0 then
      Result := Result + IntToStr(S)+'s';  
  end;
  if aNeg then Result := '-' + Result;
end;

function MinutosToHMSAbrev(aMinutos: Extended): String;
var 
  H, M, S: Integer;
  aNeg: Boolean;
begin
  Result := '';
  aNeg := (aMinutos<0);
  if aNeg then
    aMinutos := -1 * aMinutos;
  
  if aMinutos>0.000001 then begin
    H := Trunc(aMinutos) div 60;
    M := Trunc(aMinutos) Mod 60;
    S := Trunc(aMinutos * 60) mod 60;
    if H>0 then
      Result := IntToStr(H)+'h';
    if M>0 then
      Result := Result + IntToStr(M)+'m';
    if H<1 then
    if S>0 then
      Result := Result + IntToStr(S)+'s';  
  end;
  if aNeg then Result := '-' + Result;
end;

function DateTimeToMinutos(D: TDateTime): Cardinal;
begin
  Result := DateTimeToSegundos(D) div 60;
end;

constructor TThreadRename.Create(aArqNovo, aArqVelho: String);
begin
  FreeOnTerminate := True;
  FArqNovo := aArqNovo;
  FArqVelho := aArqVelho;
  inherited Create(False);
end;

procedure TThreadRename.Execute;
var 
  Ok: Boolean;
begin
  Ok := False;
  if FileExists(FArqNovo) then
  while (not Ok) and (not Terminated) and (not EncerrarThreads) do begin
    Ok := DeleteFile(PChar(FArqNovo));
    if not OK then 
      Sleep(100) else
      DebugMsg('TThreadRename.Execute - FArqNovo: '+FArqNovo+' - DELETED.'); // do not localize
  end;

  Ok := False;
  if (FArqVelho<>'') then
  while (not Ok) and (not Terminated) and (not EncerrarThreads) do begin
    Ok := RenameFile(FArqVelho, FArqNovo);
    if not OK then 
      Sleep(100) else
      DebugMsg('TThreadRename.Execute - FArqVelho: '+FArqVelho+' RENOMEADO PARA: ' + FArqNovo); // do not localize
  end;
end;

function MenorCardinal(C1, C2: Cardinal): Cardinal;
begin
  if C1<C2 then
    Result := C1
  else
    Result := C2;  
end;

function MaiorCardinal(C1, C2: Cardinal): Cardinal;
begin
  if C2>C1 then
    Result := C2
  else
    Result := C1;  
end;

function GetNextStrDelimCustom(var S: String; aDelim: String): String;
var 
  P : Integer;
begin
  P := Pos(aDelim, S);
  if P>0 then begin
    Result := Copy(S, 1, P-1);
    Delete(S, 1, P+Length(aDelim)-1);
  end else begin
    Result := S;
    S := '';
  end;  
end;


function sFldDelim(aClassID: Byte): String;
begin
  Result := chFldDelim + Char(aClassID);
end;

function sListaDelim(aClassID: Byte): String;
begin
  Result := chListaDelim + Char(aClassID);
end;

function GetNextListItem(var sItems, sItem: String; aClassID: Byte): Boolean;
var 
  P : Integer;
  aDelim: String;
begin
  aDelim := sListaDelim(aClassID);
  P := Pos(aDelim, sItems);
  if P>0 then begin
    Result := True;
    sItem := Copy(sItems, 1, P-1);
    Delete(sItems, 1, P+Length(aDelim)-1);
  end else begin
    Result := False;
    sItems := '';
  end;
end;


function GetNextStrDelim(var S: String; aClassID: Byte): String;
begin
  Result := GetNextStrDelimCustom(S, sFldDelim(aClassID));
end;

{function StringListToListDelim(aSL: String; aClassID: Byte): String;
var 
  sl: TStrings;
  I: Integer;
begin
  Result := '';
  sl := TStringList.Create;
  try
    sl.Text := aSL;
    for I := 0 to sl.Count - 1 do 
      Result := Result + sl[i] + sListaDelim(aClassID);
  finally
    sl.Free;
  end;
end;

function StringListFromListDelim(aListDelim: String; aClassID: Byte): String;
var 
  aDelim: String;
  sl: TStrings;
begin
  Result := '';
  aDelim := sListaDelim(aClassID);
  sl := TStringList.Create;
  try
    while Pos(aDelim, aListDelim)>0 do 
      sl.Add(GetNextStrDelimCustom(aListDelim, aDelim));
    Result := sl.Text;  
  finally
    sl.Free;
  end;
end; }

procedure StrToLista(S: String; SL: TStrings);
begin
  SL.Clear;
  while S>'' do SL.Add(GetNextStrDelimCustom(S, chFldDelim));
end;

function ListaToStr(S: String): String;
var I : Integer;
begin
  Result := '';
  with TStringList.Create do
  try
    Text := S;
    for I := 0 to Count-1 do 
      Result := Result + Strings[I] + chListaDelim;
  finally
    Free;
  end;
end;

function GetDTStr(D: TDateTime): String;
begin
  Str(D, Result);
end;

function DTFromStr(S: String): TDateTime;
var Code: Integer;
begin
  Val(S, Result, Code);
  if Code<>0 then Result := 0;
end;

function FloatParaStr(Valor: Extended): String;
begin
  Str(Valor, Result);
end;

function QuantToStr(Valor: Extended): String;
begin
  Str(Valor:0:3, Result);
  while (Result>'') and (Result[Length(Result)]='0') do Delete(Result, Length(Result), 1);
  if (Result>'') and (Result[Length(Result)]='.') then Delete(Result, Length(Result), 1);
end;


function StrParaFloat(S: String): Extended;
var Code: Integer;
begin
  Val(S, Result, Code);
  if Code<>0 then
    Result := 0;
end;


function StringToBool(S: String): Boolean;
begin
  S := UpperCase(S);
  Result := (S='T') or (S='TRUE') OR (S='S') or (S='SIM') or (S='1') or (S='Y') or (S='YES'); // do not localize
end;

function ObtemCred(I: Integer): Cardinal;
begin
  if I>0 then 
    Result := I
  else
    Result := 0;  
end;

function DuasCasas(D: Extended; aCasas: Integer = -1): Extended;
var 
  I, C : Integer;
  S : String;
begin
  Str(D:10:10, S);

  with FormatSettings do
  if aCasas=-1 then aCasas := CurrencyDecimals;
  
  if aCasas>0 then 
    S := Copy(S, 1, Pos('.', S)+aCasas) 
  else begin
    I := Pos('.', S);
    if I>0 then
      S := Copy(S, 1, I-1);
  end;
  Val(S, Result, I);
  
{  S := D;
  C := 1;
  DebugMsg('DuasCasas - D: '+FloatToStr(D));
  
  for I := 1 to CurrencyDecimals do C := C * 10;

  D := Int(D * C);
  Result := D / C;  

  DebugMsg('DuasCasas - Result: '+FloatToStr(Result));
  DebugMsg('Plano B: '+FloatToStr(Trunc(S*C)/C));}
end;

function LimpaTraco(S: String): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do 
  if S[I] <> '-' then 
    Result := Result + S[I];
end;

function NumStr(I, Tam: Integer): String;
begin
  Result := ZeroPad(IntToStr(I), Tam);
end;

function FormataNumVersao(St: String): String;
var I : Integer;
begin
  Result := St;
  I := Length(Result);
  while (I>0) and (Result[I]<>'.') do Dec(I);
  
  if (I>0) and (Result[I]='.') then 
    Result := Copy(Result, 1, I)+ZeroPad(Copy(Result, I+1, Length(Result)), 4);
end;

function CalcAcesso(Acesso, Sinal, Desc: Double): Double;
begin
  if Sinal > Acesso then
    Result := 0 - Desc
  else
    Result := Acesso - Sinal - Desc;  
end;

function VolumeSerial(DriveChar: Char): string;
var
  OldErrorMode: Integer;
  Serial, NotUsed, VolFlags: DWORD;
  Buf: array [0..MAX_PATH] of Char;
begin
  OldErrorMode := SetErrorMode(SEM_FAILCRITICALERRORS);
  try
    Buf[0] := #$00;
    if GetVolumeInformation(PChar(DriveChar + ':\'), nil, 0, @Serial,
      NotUsed, VolFlags, nil, 0) then
      Result := IntToHex(Integer(Serial), 0)
    else Result := '';
  finally
    SetErrorMode(OldErrorMode);
  end;
end;

function Senha(D: TDateTime; NS: Cardinal; NumMaq: Integer): String;
var
  E : Extended;
  S : String;
begin
  try
    E := NS + (Int(D)*1000) +  (NumMaq * 1000) - 3;
    E := Ln(E);
    Str(E:0:30, S);
    S := Copy(S, Pos('.', S)+4, 8);
    Result := S[2] + S[8] + S[7] + S[3] + S[1] + S[4] + S[6] + S[5];
  except
   Result := 'Kznq098s'; // do not localize
  end;  
end;

{ TncClasse }
function Z2(I: Integer): String;
begin
  Result := IntToStr(I);
  if Length(Result)=1 then
    Result := '0' + Result;
end;

function TicksToHMSSt(Ticks: Cardinal): String;
var H, M, S : Integer;
begin
  H := Ticks div (1000 * 60 * 60);
  Ticks := Ticks mod (1000 * 60 * 60);
  M := Ticks div (1000 * 60);
  Ticks := Ticks mod (1000 * 60);
  S := Ticks div 1000;
  Result := Z2(H) + ':' + Z2(M) + ':' + Z2(S);  
end;

function TicksToDateTime(Ticks: Cardinal): TDateTime;
var H, M, S : Integer;
begin
//  Result := Ticks / 1000 / 60 / 60 / 24;
  
  H := Ticks div (1000 * 60 * 60);
  Ticks := Ticks mod (1000 * 60 * 60);
  M := Ticks div (1000 * 60);
  Ticks := Ticks mod (1000 * 60);
  S := Ticks div 1000;
  
  if (H>23) then H := 23;
  
  Result := EncodeTime(H, M, S, 0);
end;  

function MinutosToDateTime(M: Double): TDateTime;
begin
  Result := M / 24 / 60;
end;

function SegundosToHMSSt(Seg: Cardinal): String;
begin
  Result := IntToStr(Seg div (60 * 60));
  Seg := Seg mod (60 * 60);
  Result := Result + ':' + Z2(Seg div 60);
  Seg := Seg mod 60;
  Result := Result + ':' + Z2(Seg);
end;  

function SegundosToDateTime(Seg: Cardinal): TDateTime;
var H, M: Integer;
begin
  H := Seg div (60 * 60);
  Seg := Seg mod (60 * 60);
  M := Seg div 60;
  Seg := Seg mod 60;
  
  Result := EncodeTime(H, M, Seg, 0);
end;  

function MinutosToTicks(M: Double): Cardinal;
begin
  Result := Trunc(M * 60 * 1000);  
end;

function TicksToMinutos(Ticks: Cardinal): Double;
begin
  Result := Ticks / 1000 / 60;
end;

function DateTimeToTicks(D: TDateTime): Cardinal;
var 
  H, M, S, MS : Word;
  Dia : Int64;
  I : Int64;
begin
  I := Trunc(D * (24*60*60*1000));
{  Dia := Trunc(Int(D));
  I := (Dia * 24 * 60 * 60 * 1000) +
       (H * 60 * 60 * 1000) +
       (M * 60 * 1000) +
       (S * 1000) + MS;}
  if I>High(Cardinal) then
    I := High(Cardinal);
  Result := I;
end;  

function DateTimeToSegundos(D: TDateTime): Cardinal;
var H, M, S, MS : Word;
begin
  DecodeTime(D, H, M, S, MS);
  Result := (H * 60 * 60) + (M * 60) + S;
end;  

constructor TncClasse.Create;
begin
  inherited;
  FProcNotificar := nil;
end;

destructor TncClasse.Destroy;
begin
  try
    Notificar(tnDestruicao);
  except
    on E: Exception do 
      DebugMsg('TncClasse.Destroy - TipoClasse: ' + IntToStr(TipoClasse) + ' - Chave: ' + Chave + ' - Erro: ' + E.Message); // do not localize
  end;
  inherited;
end;

procedure TncClasse.Notificar(TipoNot: TTipoNotificacao);
begin
  if Assigned(FProcNotificar) then
    FProcNotificar(Self, TipoNot);
end;

{ TncServidorBase }

procedure TncServidorBase.ChecaErro(Erro: Integer);
begin
    try
        if Erro > 0 then
            if Erro > ncErrUltimo then begin
              try
                Ativo := False;
              except
              end;
              raise EErroNexCafe.Create(ncerrConexaoPerdida);
            end else
              raise EErroNexCafe.Create(Erro);
  except
    on e: exception do begin
        DebugMsgEsp(Self, E.Message, False, True);
        raise e;
    end;
  end;
end;

constructor TncServidorBase.Create(AOwner: TComponent);
begin
  inherited;
  FClientes := TThreadList.Create;
  FUltimoHandle := 0;
  FAtivo := False;
  FOnEnviaEvento := nil;
end;

destructor TncServidorBase.Destroy;
begin
  FreeAndNil(FClientes);
  inherited;
end;

function TncServidorBase.Download(aFonte, aDestino: String): Integer;
begin
  Result := 0;
end;

procedure TncServidorBase.EnviaEvento(Mensagem: Integer; Dados: Pointer);
var 
  I, Faltam : Integer;  
  CopiaDados: Pointer;
  C         : TncCliente;
begin
  if Assigned(FOnEnviaEvento) then begin
//    DebugMsg('TncServidorBase.EnviaEvento 1 - Não Enviou Mensagem: ' + GetMsgIDString(Mensagem)); // do not localize
    FOnEnviaEvento(Mensagem, Dados);
    Exit;
  end;
  with FClientes.LockList do
  try
    Faltam := NumClientesLocais;
    if Faltam = 0 then begin
//      DebugMsg('TncServidorBase.EnviaEvento 2 - Não há clients. Não Enviou Mensagem: ' + GetMsgIDString(Mensagem)); // do not localize
      FreeDados(Mensagem, Dados);
      Exit;
    end;
    
    for I := 0 to pred(Count) do begin
      C := Items[I];
      if (C.WndHandle>0) and (not C.Remoto) then begin
//        DebugMsg('TncServidorBase.EnviaEvento 3 - C.WndHandle: ' + IntToStr(C.WndHandle) + ' - Mensagem: ' + GetMsgIDString(Mensagem)); // do not localize
      
        if (Faltam>1) then
          CopiaDados := ClonaDados(Mensagem, Dados);
        EnviaMsg(C.WndHandle, Mensagem, 0, Integer(Dados));
        Dados := CopiaDados;  
        Dec(Faltam);
      end;
    end;  
  finally
    FClientes.UnlockList;
  end;  
end;

function TncServidorBase.EnviarEventos: Boolean;
begin
  Result := (NumClientesLocais>0);
end;

procedure TncServidorBase.AddCliente(Obj: TncCliente);
begin
  with FClientes.LockList do
  try
    Add(Obj);
  finally
    FClientes.UnlockList;
  end;
end;

function TncServidorBase.ProximoHandle: Integer;
begin
  Inc(FUltimoHandle);
  Result := FUltimoHandle;
end;

procedure TncServidorBase.RemoveCliente(Obj: TncCliente);
var 
  I : Integer;
  C : TncCliente;
begin
  with FClientes.LockList do
  try
    I := 0;
    if Obj.Proxy then begin
      while I < Count do begin
        C := TncCliente(Items[I]);
        if (C.ProxyHandle=Obj.Handle) then begin
          if C.Proxy then I := 0;
          RemoveCliente(C);
        end else
          Inc(I);
      end;
    end;     
    Remove(Obj);
    AoRemoverCliente(Obj);   
    Obj.Free;
  finally
    FClientes.UnlockList;
  end;
end;

function TncServidorBase.NumClientesLocais: Integer;
var 
  I : Integer;
  C : TncCliente;
begin
  with FClientes.LockList do
  try
    Result := 0;
    for I := 0 to pred(Count) do begin
      C := TncCliente(Items[I]);
      if (not C.Remoto) and (C.WndHandle>0) then
        Inc(Result);
    end;    
  finally
    FClientes.UnlockList;
  end;
end;

class procedure TncServidorBase.Lock;
begin
//  DebugMsg('TncServidorBase.Lock - ThreadID: '+IntToStr(GetCurrentThreadID)); // do not localize
  csServ.Enter;
//  DebugMsg('TncServidorBase.Lock OK - ThreadID: '+IntToStr(GetCurrentThreadID)); // do not localize
end;

function TncServidorBase.Login(aUsername, aSenha: String; aFuncAtual: Boolean; aRemoto: Boolean;
  aWndHandle: HWND; aProxyHandle: Integer; aSocket: Integer; aSessionID: Integer; aIP: String;
  var Handle: Integer): Integer;
var
  C : TncCliente;  
begin
  Result := 0;
  C := TncCliente.Create;
  C.UserName := aUserName;
  C.Handle := Handle;
  C.Remoto := aRemoto;
  C.WndHandle := aWndHandle;
  C.ProxyHandle := aProxyHandle;
  C.Socket := aSocket;
  C.Inicio := Now;
  C.SessionID := aSessionID;
  AddCliente(C);
end;

procedure TncServidorBase.Logout(Cliente: Integer);
var C : TncCliente;
begin
  C := ObtemCliente(Cliente);
  if C <> nil then 
    RemoveCliente(C);
end;

procedure TncServidorBase.LogoutSession(aSessionID: Integer);
var I : Integer;
begin
  with FClientes.LockList do
  try
    for I := 0 to pred(Count) do 
    if TncCliente(Items[I]).SessionID = aSessionID then begin
      RemoveCliente(TncCliente(Items[I]));
      Exit;
    end;
  finally
    FClientes.UnlockList;
  end;  
end;

procedure TncServidorBase.LogoutSocket(Socket: Integer);
var C : TncCliente;
begin
  C := ObtemClientePorSocket(Socket);
  while (C<>nil) do begin
    RemoveCliente(C);
    C := ObtemClientePorSocket(Socket);
  end;  
end;


function TncServidorBase.ObtemCliente(aHandle: Integer): TncCliente;
var I : Integer;
begin
  Result := nil;
  if FClientes=nil then Exit;
  
  with FClientes.LockList do
  try
    for I := 0 to pred(Count) do 
    if TncCliente(Items[I]).Handle = aHandle then begin
      Result := Items[I];
      Exit;
    end;
  finally
    FClientes.UnlockList;
  end;  
end;

function TncServidorBase.ObtemClientePorSessionID(aSessionID: Integer): TncCliente;
var I : Integer;
begin
  with FClientes.LockList do
  try
    if aSessionID > 0 then
    for I := 0 to pred(Count) do 
    if TncCliente(Items[I]).SessionID = aSessionID then begin
      Result := Items[I];
      Exit;
    end;
    Result := nil;  
  finally
    FClientes.UnlockList;
  end;  
end;

function TncServidorBase.ObtemClientePorSocket(Socket: Integer): TncCliente;
var I : Integer;
begin
  with FClientes.LockList do
  try
    if Socket > 0 then
    for I := 0 to pred(Count) do 
    if TncCliente(Items[I]).Socket = Socket then begin
      Result := Items[I];
      Exit;
    end;
    Result := nil;  
  finally
    FClientes.UnlockList;
  end;  
end;

function TncServidorBase.ObtemPastaServ(var NomePastaServ: String): Integer;
begin
  Result := 0;
  NomePastaServ := ExtractFilePath(ParamStr(0));
end;

procedure TncServidorBase.ObtemSessionSocketArray(var SS: TArraySessionSocket);
var I, C: Integer;  
begin
  SetLength(SS, 0);
  C := 0;
  with FClientes.LockList do 
  try
    for I := 0 to pred(count) do with TncCliente(Items[i]) do 
      if (SessionID>0) then begin
        Inc(C);
        SetLength(SS, C);
        SS[C-1].ssSession := SessionID;
        SS[C-1].ssSocket  := Socket;
      end;  
  finally
    FClientes.UnlockList;
  end;  
  
end;

function TncServidorBase.ObtemUsernameHandlePorSessionID(aSessionID: Integer; var aUsername: String; var aHandle: Integer): Boolean;
var I: Integer;  
begin
  with FClientes.LockList do 
  try
    for I := 0 to pred(count) do with TncCliente(Items[i]) do 
      if aSessionID=SessionID then begin
        aUsername := Username;
        aHandle := Handle;
        Result := True;
        Exit;
      end;  
  finally
    FClientes.UnlockList;
  end; 
  aUsername := '';
  aHandle := -1;
  Result := False; 
end;

procedure TncServidorBase.SetAtivo(Valor: Boolean);
begin
  if not Valor then DesativaClientes;
  FAtivo := Valor;
end;

class procedure TncServidorBase.Unlock;
begin
//  DebugMsg('TncServidorbase.Unlock'); // do not localize
  csServ.Leave;
end;

function TncServidorBase.Upload(aFonte, aDestino: String): Integer;
begin
  Result := 0;
end;

procedure TncServidorBase.DesativaClientes;
begin
  EnviaEvento(ncmc_ServidorDesativado, nil);
  with FClientes.LockList do 
  try
    while Count > 0 do begin
      TncCliente(Items[0]).Free;
      Delete(0);
    end;  
  finally
    FClientes.UnlockList;
  end;  
end;

procedure TncServidorBase.AoRemoverCliente(Cliente: TncCliente);
begin

end;

function TncServidorBase.BaixaNovaVersao(Programa, Versao,
  ArqDestino: String): Integer;
begin
  Result := ncerrSemNovaVersao;
end;

{ TncCliente }

constructor TncCliente.Create;
begin
  inherited;
  FHandle   := 0;
  FRemoto   := False;
  FUsername := '';
  FWndHandle:= 0;
  FSocket   := 0;
  FInicio   := 0;
end;

function TncCliente.TipoClasse: Integer;
begin
  Result := tcCliente;
end;

function TncCliente.Proxy: Boolean;
begin
  Result := (Username = ProxyUsername);
end;


function TncCliente.GetChave: Variant;
begin
  Result := FHandle;
end;

function MesmoComputerName(aComp1, aComp2: String): Boolean;
begin
  Result := False;
  if Trim(aComp1)='' then Exit;
  if Trim(aComp2)='' then Exit;

  while Copy(aComp1, 1, 1)='\' do Delete(aComp1, 1, 1);
  while Copy(aComp2, 1, 1)='\' do Delete(aComp2, 1, 1);

  Result := SameText(aComp1, aComp2);
end;

constructor EErroNexCafe.Create(CE: Integer);
begin
  inherited Create(SncClassesBase_ErroNexCafé+IntToStr(CE)+'): '+StringErro(CE));
  CodigoErro := CE;
end;

{ TncListaUsuarios }

function TncListaUsuarios.AdminAtivos: Integer;
var I : Integer;
begin
  Result := 0;
  for I := 0 to Count-1 do 
    if Itens[i].Admin and (not Itens[i].Inativo) then
      Inc(Result);
end;

constructor TncListaUsuarios.Create;
begin
  inherited Create(tcUsuario);
end;

function TncListaUsuarios.EmailUsuario(aUsername: String): String;
var U : TncUsuario;
begin
  U := PorUsername[aUsername];
  if Assigned(U) then
    Result := U.Email else
    Result := '';
end;

function TncListaUsuarios.GetUsuario(I: Integer): TncUsuario;
begin
  Result := TncUsuario(GetItem(I));
end;

function TncListaUsuarios.GetUsuarioPorUsername(N: String): TncUsuario;
begin
  Result := TncUsuario(GetItemPorChave(N));
end;

{ TncUsuario }

constructor TncUsuario.Create;
begin
  inherited;
  FNumClientes := 0;
  FUsername    := '';
  FAdmin       := False;
  FSenha       := '';
  FDireitos    := '';
  FLimiteDesc := 0;
  FInativo := False;
end;

function TncUsuario.GetChave: Variant;
begin
  Result := FUsername;
end;

function TncUsuario.LimiteDescOk(aPerc: Double): Boolean;
begin
  Result := Admin or (aPerc<=FLimiteDesc) or (FLimiteDesc<0.00001);
end;

function TncUsuario.PodeDesconto(aTotal, aDesc: Currency): Boolean;
begin
  Result := (not gConfig.IsPremium) or Admin or (((aDesc/aTotal)*100)<=FLimiteDesc);
end;

procedure TncUsuario.SetAdmin(Valor: Boolean);
begin
  FAdmin := Valor;
end;

procedure TncUsuario.SetDireitos(Valor: String);
begin
  FDireitos := Valor;
end;

procedure TncUsuario.SetNome(Valor: String);
begin
  FNome := Valor;
end;

procedure TncUsuario.SetNumClientes(Valor: Integer);
begin
  FNumClientes := Valor;
end;

procedure TncUsuario.SetSenha(Valor: String);
begin
  FSenha := Valor;
end;

procedure TncUsuario.SetUsername(Valor: String);
begin
  FUsername := Valor;
end;

function TncUsuario.TipoClasse: Integer;
begin
  Result := tcUsuario;
end;

{ TncConfig }

constructor TncConfig.Create;
begin
  inherited;
  FLastApplyFmtMoeda := '';
  FslFlags := TStringList.Create;
  FCamposCliCC := TStringList.Create;
 
  fMargem              := 0;
  fPrecoAuto           := False;
  FComissaoPerc        := 0;
  FComissaoLucro       := False;
  FEndereco_Loja       := TGuidEx.Empty;
  FQuickCad            := True;

  FTranspEntPadrao       := 0;
  FFretePadrao           := 0;
  FDesativarFrete        := False;
  FmodFretePadrao        := 9;
  FDesativarTranspEnt    := False;
  

  FCodBarBal             := False;
  FCodBarBalTam          := 13;
  FCodBarBalIdent        := '2';
  FCodBarBalInicioCod    := 2;
  FCodBarBalTamCod       := 5;
  FCodBarBalValor        := True;
  FCodBarBalPPInicio     := 7;
  FCodBarBalPPTam        := 5;
  FCodBarBalPPDig        := 2;
  FCodBarMaxQtdDig       := 3;
  FCodBarArredondar      := 4;

  FRecImprimir           := 0;
  FRecMatricial          := False;
  FRecTipoImpressora     := '';
  FRecPorta              := '1'; // do not localize
  FRecSalto              := 10;
  FRecLargura            := 40;
  FRecCortaFolha         := False;
  FRecRodape             := '';
  FRecNomeLoja           := SncClassesBase_NOMEDALOJA;
  FRecImprimeMeioPagto   := True;
  FRecPrefixoMeioPagto   := '';

  FDocParam_Email        := '';
  FDocParam_Tel          := '';
  FDocParam_Tel2         := '';
  FDocParam_Cidade       := '';
  FDocParam_End          := '';
  FDocParam_CEP          := '';
  FDocParam_CNPJ         := '';
  FDocParam_IE           := '';
  FDocParam_Site         := '';
  FDocParam_Facebook     := '';
  FDocParam_Instagram    := '';
  FDocParam_Whats        := '';
  FDocParam_Whats2       := '';
  FDocParam_InfoExtra    := '';
  
  FManterSaldoCaixa    := False;
  FEscondeTextoBotoes  := False;
  FCampoLocalizaCli    := 0;
  FLimitePadraoDebito  := 0;
  FConta               := '';
  FCodEquip            := '';
  FQtdLic              := 0;
  FStatusConta         := scSemConta;
  
  FVerPri              := 0;
  FFreePremium         := False;
  FPro                 := False;
  FDataLic             := 0;
  FDVA                 := 0;
  FProxAvisoAss        := 0;
  FPreLib              := False;
  FAlertaAssinatura    := True;
  FJaFoiPremium        := False;

  FMeioPagto           := 0;
  
  FEmailDestino        := '';
  FEmailEnviarCaixa    := False;
  FEmailIdent          := '';
  FEmailConteudo       := '';

  FExigeDadosMinimos     := False;
  FCidadePadrao          := '';
  FUFPadrao              := '';
  FDadosMinimos          := '';
  FPedirSaldoI           := True;
  FPedirSaldoF           := True;
  
  FRelCaixaAuto := True;
  
  FNaoVenderAlemEstoque   := False;
  FAutoSortGridCaixa      := False;

  FAutoObsAoCancelar      := False;
    
  FFidAtivo               := False;
  FFidVendaValor          := 0;
  FFidVendaPontos         := 0;
  FFidParcial             := False;
  FFidMsg                 := False;
  FFidMsgTitulo           := '';
  FFidMsgTexto            := '';

  if PaisBrasil then
    FTrocoMax := 100 else
    FTrocoMax := 1000;

  FPais                   := GetCountryCode;
  Ftax_id_default         := 0;
  
  FFidAutoPremiar         := False;
  FFidAutoPremiarValor    := 0;
  FFidAutoPremiarPontos   := 0;

  FFidMostrarSaldoAdmin   := False;
  FPastaDownload          := '';
  
  FTelaPosVenda_Mostrar   := True;
  FTelaPosVenda_BtnDef    := 1;

  FExigirVendedor         := False;

  Ffmt_moeda             := False;
  Ffmt_decimais          := 2;
  Ffmt_simbmoeda         := '';
  Ffmt_sep_decimal       := '';
  Ffmt_sep_milhar        := '';
  
  FValOrc_Tempo           := 0;
  FValOrc_UTempo          := 0;
  FObsPadraoOrcamento     := '';
  FObsNF                  := False;

  FEmailOrc_Enviar       := True;
  FEmailOrc_FromName     := '';
  FEmailOrc_FromEmail    := '';
  FEmailOrc_Subject      := '';
  FEmailOrc_Body         := '';
  
  FDocOrc_Imprimir       := True;
  FDocOrc_NomeLoja       := '';

  FServerDir              := '';

  FBotoes                := '';
  FBanners               := '';
  FRecursos              := '';
  FConfirmarDebito       := True;
end;

function TncConfig.cxMaskUnitario: String;
var 
  S: String;
  D: Byte;
  M: String;
  F: TFormatSettings;

function zeros: string;
begin 
  Result := '';
  while (Length(Result)<Self.Ffmt_decimais) do Result := Result + '0';
end;
  
begin
  S := '';
  if Ffmt_moeda then begin
    D := FFmt_decimais;
    M := FFmt_SimbMoeda;
  end else begin
    F := TFormatSettings.Create;
    D := F.CurrencyDecimals;
    M := F.CurrencyString;
  end;
  
  while Length(S)<Ffmt_decimais do S := S + '0';
  while Length(S)<10 do S := S + '#';
  Result := M+' ,0.'+S+';-'+M+' ,0.'+S;
end;

function TncConfig.DadosMinOk(T: TDataset): Boolean;
var 
  I, P, N : Integer;
  F : TField;
  S, sFld : String;

function NextFld: Integer;
var sNum: String;
begin
  P := Pos(',', S);
  if P=0 then begin
    sNum := S;
    S := '';
  end else begin
    sNum := Copy(S, 1, P-1);
    Delete(S, 1, P);
  end;
  Result := StrToIntDef(SoDig(sNum), -1);
end;  

begin
  if ExigeDadosMinimos and (Trim(DadosMinimos)>'') then begin
    Result := False;
    S := Trim(DadosMinimos);
    while S>'' do begin
      N := NextFld;
      if N>=0 then 
        sFld := slDadosMin.ValueFromIndex[N] else
        sFld := '';
        
      if sFld>'' then begin
        F := T.FindField(sFld);
        if F<>nil then begin
          if (F.DataType in [ftDate, ftDateTime]) then begin
            if F.IsNull then Exit;
          end else 
            if F.IsNull or (Trim(F.AsString)='') then Exit;
        end;
      end;
    end;                                     
  end;
  Result := True;
end;

function TncConfig.DecodeCodBarBalanca(aCodigo: String;
  var aInfo: TncCodBarBalInfo): Boolean;
begin
  aInfo.Codigo := '';
  Result := False;
  if not CodBarBal then Exit;
  if CodBarBalIdent = '' then Exit;
  if CodBarBalTam < 1 then Exit;
  if Length(aCodigo) <> CodBarBalTam then Exit;
  if Copy(aCodigo, 1, Length(CodBarBalIdent))<>CodBarBalIdent then Exit;
  Result := True;
  aInfo.Codigo := Copy(aCodigo, CodBarBalInicioCod, CodBarBalTamCod);
  aInfo.PesoValor := StrToIntDef(Copy(aCodigo, CodBarBalPPInicio, CodBarBalPPTam), 0) / Power(10, CodBarBalPPDig);
  aInfo.BalValor := CodBarBalValor;
end;

destructor TncConfig.Destroy;
begin
  FslFlags.Free;
  FCamposCliCC.Free;
  inherited;
end;

function TncConfig.FidAutoPremiarAtivo: Boolean;
begin
  Result := FidAtivo and FidAutoPremiar and (FidAutoPremiarValor>0.01);
end;

function TncConfig.FidPremiarAutomaticamente(aPontos: Double): Boolean;
begin
  Result := FidAutoPremiarAtivo and (aPontos>=FidAutoPremiarPontos);
end;

procedure TncConfig.SetVerPri(const Value: Word);
begin
  FVerPri := Value;
  if not LadoServidor then
    Versoes.Versao := Value;
end;

function TncConfig.CalcPontos(aValor: Currency): Double;
var 
  Valor: Currency;
  Pontos : Integer;
begin
  Result := 0;
  if not FFidAtivo then Exit;
  Valor := FFidVendaValor;
  Pontos := FFidVendaPontos;

  if (Valor=0) or (Pontos=0) then Exit;

  Result := aValor/Valor;
  if not FFidParcial then Result := Trunc(Int(Result));
  Result := Result * Pontos;
end;

function TncConfig.CalcPreco(aMargem: Variant; aCusto: Currency): Currency;
var M: Double;
begin
  if VarIsNull(aMargem) then
    M := gConfig.Margem else
    M := aMargem;

  if M>0.009 then begin
    Result := aCusto * (1 + (M/100));
    Result := LimitaCasasDec(Result);
  end else
    Result := 0;
end;

function TncConfig.cce(acce: Integer): Boolean;
begin
  Result := (Copy(FEmailConteudo, acce+1, 1)='1');
end;

function TncConfig.CodLojaInt: Integer;
begin
  Result := StrToCodLoja(FConta);
end;

function TncConfig.ImpOutras: Boolean;
begin
  Result := SameText(Self.RecTipoImpressora, SncaFrmConfigRec_OutraSerial);
end;

function TncConfig.GetCamposCliCCText: String;
begin
  Result := FCamposCliCC.Text;
end;

function TncConfig.GetChave: Variant;
begin
  Result := 0;
end;

function TncConfig.GetDTol: Byte;
begin
  Result := gDTol;
end;

function TncConfig.GetEndereco_Loja: String;
begin
  if TGuidEx.IsEmpty(FEndereco_Loja) then
    Result := '' else
    Result := TGuidEx.ToString(FEndereco_Loja);
end;

function TncConfig.GetFlags: String;
begin
  Result := FslFlags.Text;
end;

function TncConfig.GetRecBobina: Boolean;
begin
  Result := RecMatricial;
end;

function TncConfig.GetRecursoOn(aIndex: Integer): Boolean;
begin
  Result := SameText(Copy(FRecursos, aIndex, 1), '1');
end;

function TncConfig.GetServerDir: String;
begin
  if LadoServidor then
    Result := ExtractFilePath(ParamStr(0)) else
    Result := FServerDir;
end;

function TncConfig.GetUrls: String;
begin
  Result := gUrls.AsString;
end;

function TncConfig.IsFree: Boolean;
begin
  Result := gConfig.FreePremium and (not gConfig.IsPremium);
end;

function TncConfig.IsPremium: Boolean;
begin
  if gDTol>9 then gDTol := 9;
  Result := (gConfig.StatusConta=scPremium);
end;

function TncConfig.TipoClasse: Integer;
begin
  Result := tcConfig;
end;

function TncConfig.TolDiasRestantes: Integer;
begin
  Result := TolerandoPor;
  if Result>0 then Result := DTol - Result;
end;

function TncConfig.TolerandoPor: Integer;
begin
  if (StatusConta=scPremium) and (DVA>0) and (DataLic>0) and (Date>DVA) and (not PreLib) and (DTol>0) then
    Result := (Trunc(Date)-Trunc(DVA)) else
    Result := 0;

  if Result>DTol then Result := 0;
end;

function TncConfig.TrialDiasRestantes: Integer;
begin
  if OnTrial then 
    Result := Trunc(DataLic-Date) else
    Result := 0;
end;

function TncConfig.TrialPremium: Boolean;
begin
  Result := (OnTrial or TrialVencido) and not PRO;

end;

function TncConfig.TrialPro: Boolean;
begin
  Result := (OnTrial or TrialVencido) and PRO;
end;

function TncConfig.TrialVencido: Boolean;
begin
  Result := (FDVA=0) and (FPreLib=True) and (gConfig.StatusConta=scPremiumVenc);
end;


procedure TncConfig.ApplyFmtMoeda;
var F: TFormatSettings;

function zeros: string;
begin
  Result := '';
  while Length(Result)<Ffmt_decimais do Result := Result + '0';
end;

function zerosf: string;
begin
  Result := '';
  while Length(Result)<F.CurrencyDecimals do Result := Result + '0';
end;

function strparmoeda: String;
begin
  Result := FFmt_Moeda.ToString+
            FFmt_decimais.ToString+
            FFmt_simbmoeda+
            FFmt_sep_decimal+
            FFmt_sep_milhar;
end;

begin
  if FLastApplyFmtMoeda=strparmoeda then Exit;
  FLastApplyFmtMoeda := strparmoeda;
  try
    if Ffmt_moeda then begin
      DebugMsg(Self, 'ApplyFmtMoeda 1');
      dxFormatSettings.CurrencyDecimals := Ffmt_decimais;
      dxFormatSettings.CurrencyString := FFmt_simbmoeda;
  
      if FFmt_sep_decimal>'' then
        dxFormatSettings.DecimalSeparator := FFmt_sep_decimal[1] else
        dxFormatSettings.DecimalSeparator := #0;
  
      if FFmt_sep_milhar>'' then
        dxFormatSettings.ThousandSeparator := FFmt_sep_milhar[1] else
        dxFormatSettings.ThousandSeparator := #0;
      
      if Ffmt_decimais>0 then 
        cxFormatController.CurrencyFormat := Ffmt_simbmoeda+' ,0.'+zeros+';-'+Ffmt_simbmoeda+' ,0.'+zeros else
        cxFormatController.CurrencyFormat := Ffmt_simbmoeda+' ,0.'+zeros+';-'+Ffmt_simbmoeda+' ,0.'+zeros;
    end else begin
      DebugMsg(Self, 'ApplyFmtMoeda 2');
      F := TFormatSettings.Create;
      dxFormatSettings.CurrencyDecimals := F.CurrencyDecimals;
      dxFormatSettings.CurrencyString := F.CurrencyString;
      dxFormatSettings.DecimalSeparator := F.DecimalSeparator;
      dxFormatSettings.ThousandSeparator := F.ThousandSeparator;
      if F.CurrencyDecimals > 0 then
        cxFormatController.CurrencyFormat := F.CurrencyString+' ,0.'+zerosf+';-'+F.CurrencyString+' ,0.'+zerosf else
        cxFormatController.CurrencyFormat := F.CurrencyString+' ,0.'+zerosf+';-'+F.CurrencyString+' ,0.'+zerosf;
    end;
    DebugMsg(Self, 'ApplyFmtMoeda 3');
    if not LadoServidor then begin
      DebugMsg(Self, 'TranslationChanged');
      cxFormatController.TranslationChanged;
    end;
    DebugMsg(Self, 'ApplyFmtMoeda 4');
  except
    on E: Exception do 
      DebugEx(Self, 'ApplytFmtMoeda', E);
  end;
end;

procedure TncConfig.AssignConfig(C: TncConfig);
begin    
  FEndereco_Loja          := C.FEndereco_Loja;                 
  FManterSaldoCaixa       := C.FManterSaldoCaixa       ;
  FEscondeTextoBotoes     := C.FEscondeTextoBotoes     ;
  FRecImprimir            := C.FRecImprimir            ;
  FRecTipoImpressora      := C.FRecTipoImpressora      ;
  FRecMatricial           := C.FRecMatricial           ;
  FRecPorta               := C.FRecPorta               ;
  FRecSalto               := C.FRecSalto               ;
  FRecLargura             := C.FRecLargura             ;
  FRecCortaFolha          := C.FRecCortaFolha          ;
  FRecRodape              := C.FRecRodape              ;
  FRecNomeLoja            := C.FRecNomeLoja            ;
  FRecImprimeMeioPagto    := C.FRecImprimeMeioPagto    ;
  FRecPrefixoMeioPagto    := C.FRecPrefixoMeioPagto    ;
  FDocParam_Email         := C.FDocParam_Email         ;
  FDocParam_Tel           := C.FDocParam_Tel           ;
  FDocParam_Tel2          := C.FDocParam_Tel2          ;
  FDocParam_Cidade        := C.FDocParam_Cidade        ;
  FDocParam_End           := C.FDocParam_End           ;
  FDocParam_CEP           := C.FDocParam_CEP           ;
  FDocParam_CNPJ          := C.FDocParam_CNPJ          ;
  FDocParam_IE            := C.FDocParam_IE            ;
  FDocParam_Site          := C.FDocParam_Site          ;
  FDocParam_Facebook      := C.FDocParam_Facebook      ;
  FDocParam_Instagram     := C.FDocParam_Instagram     ;
  FDocParam_Whats         := C.FDocParam_Whats         ;
  FDocParam_Whats2        := C.FDocParam_Whats2        ;
  FDocParam_InfoExtra     := C.FDocParam_InfoExtra     ;
  FEmailIdent             := C.FEmailIdent             ;
  FEmailConteudo          := C.FEmailConteudo          ;
  FCampoLocalizaCli       := C.FCampoLocalizaCli       ;
  FLimitePadraoDebito     := C.FLimitePadraoDebito     ;
  FConta                  := C.FConta                  ;
  FCodEquip               := C.FCodEquip               ;
  FQtdLic                 := C.FQtdLic                 ;
  FStatusConta            := C.FStatusConta            ;
  FVerPri                 := C.FVerPri                 ;
  FFreePremium            := C.FFreePremium            ;
  FPro                    := C.FPro                    ;
  FDataLic                := C.FDataLic                ;
  FDVA                    := C.FDVA                    ;
  FProxAvisoAss           := C.FProxAvisoAss           ;
  FPreLib                 := C.FPreLib                 ;
  FAlertaAssinatura       := C.FAlertaAssinatura       ;
  FJaFoiPremium           := C.FJaFoiPremium           ;
  FMeioPagto              := C.FMeioPagto              ;
  FEmailEnviarCaixa       := C.FEmailEnviarCaixa       ;
  FEmailDestino           := C.FEmailDestino           ;
  FEmailConteudo          := C.FEmailConteudo          ;
  FRelCaixaAuto           := C.FRelCaixaAuto           ;
  FNaoVenderAlemEstoque   := C.FNaoVenderAlemEstoque   ;
  FAutoSortGridCaixa      := C.FAutoSortGridCaixa      ;
  FFidAtivo               := C.FFidAtivo               ;
  FFidVendaValor          := C.FFidVendaValor          ;
  FFidVendaPontos         := C.FFidVendaPontos         ;
  FFidParcial             := C.FFidParcial             ;
  FFidAutoPremiar         := C.FFidAutoPremiar         ;
  FFidAutoPremiarValor    := C.FFidAutoPremiarValor    ;
  FFidAutoPremiarPontos   := C.FFidAutoPremiarPontos   ;
  FFidMostrarSaldoAdmin   := C.FFidMostrarSaldoAdmin   ;
  FFidMsg                 := C.FFidMsg                 ;
  FFidMsgTitulo           := C.FFidMsgTitulo           ;
  FFidMsgTexto            := C.FFidMsgTexto            ;
  FAutoObsAoCancelar      := C.FAutoObsAoCancelar      ;
  FPastaDownload          := C.FPastaDownload          ;
  FExigeDadosMinimos      := C.FExigeDadosMinimos      ;
  FCidadePadrao           := C.FCidadePadrao           ;
  FUFPadrao               := C.FUFPadrao               ;
  FDadosMinimos           := C.FDadosMinimos           ;
  FPedirSaldoI            := C.FPedirSaldoI            ;
  FPedirSaldoF            := C.FPedirSaldoF            ;
  fAutoCad                := C.fAutoCad                ;
  fQuickCad               := C.fQuickCad               ;
  fCodProdutoDuplicados   := C.fCodProdutoDuplicados   ;
  fMargem                 := C.fMargem                 ;
  fPrecoAuto              := C.fPrecoAuto              ;
  FServerDir              := C.FServerDir              ;
  FBanners                := C.FBanners                ;
  FBotoes                 := C.FBotoes                 ;
  FRecursos               := C.FRecursos               ;
  FConfirmarDebito        := C.FConfirmarDebito        ;
  FComissaoPerc           := C.FComissaoPerc           ;
  FComissaoLucro          := C.FComissaoLucro          ;
  FCodBarBal              := C.FCodBarBal              ;
  FCodBarBalTam           := C.FCodBarBalTam           ;
  FCodBarBalIdent         := C.FCodBarBalIdent         ;
  FCodBarBalInicioCod     := C.FCodBarBalInicioCod     ;
  FCodBarBalTamCod        := C.FCodBarBalTamCod        ;
  FCodBarBalValor         := C.FCodBarBalValor         ;
  FCodBarBalPPInicio      := C.FCodBarBalPPInicio      ;
  FCodBarBalPPTam         := C.FCodBarBalPPTam         ;
  FCodBarBalPPDig         := C.FCodBarBalPPDig         ;
  FCodBarMaxQtdDig        := C.FCodBarMaxQtdDig        ;
  FCodBarArredondar       := C.FCodBarArredondar       ;
  FTelaPosVenda_Mostrar   := C.FTelaPosVenda_Mostrar   ;
  FTelaPosVenda_BtnDef    := C.FTelaPosVenda_BtnDef    ;
  FExigirVendedor         := C.FExigirVendedor         ;

  Ffmt_moeda             := C.Ffmt_moeda;
  Ffmt_decimais          := C.Ffmt_decimais;
  Ffmt_simbmoeda         := C.Ffmt_simbmoeda;
  Ffmt_sep_decimal       := C.Ffmt_sep_decimal;
  Ffmt_sep_milhar        := C.Ffmt_sep_milhar;
  
  FValOrc_Tempo           := C.FValOrc_Tempo           ;
  FValOrc_UTempo          := C.FValOrc_UTempo          ;
  FEmailOrc_Enviar        := C.FEmailOrc_Enviar        ;
  FEmailOrc_FromName      := C.FEmailOrc_FromName      ;
  FEmailOrc_FromEmail     := C.FEmailOrc_FromEmail     ;
  FEmailOrc_Subject       := C.FEmailOrc_Subject       ;
  FEmailOrc_Body          := C.FEmailOrc_Body          ;
  FDocOrc_Imprimir        := C.FDocOrc_Imprimir        ;
  FDocOrc_NomeLoja        := C.FDocOrc_NomeLoja        ;
  FObsPadraoOrcamento     := C.FObsPadraoOrcamento     ;
  FTrocoMax               := C.FTrocoMax               ;
  FPais                   := C.Fpais;
  Ftax_id_default         := C.Ftax_id_default;
  FObsNF                  := C.FObsNF;

  FTranspEntPadrao       := C.FTranspEntPadrao;
  FFretePadrao           := C.FFretePadrao;
  FDesativarFrete        := C.FDesativarFrete;
  FmodFretePadrao        := C.FmodFretePadrao;
  FDesativarTranspEnt    := C.FDesativarTranspEnt;
  
  FCamposCliCC.Text := C.FCamposCliCC.Text;
  FslFlags.Text := C.FslFlags.Text;
end;

function TncConfig.OnTrial: Boolean;
begin
  Result := (FDVA=0) and (FPreLib=True) and IsPremium;
end;

function TncConfig.PaisBrasil: Boolean;
begin
  Result := SameText(PaisNorm, 'BR');
end;

function TncConfig.PaisNorm: String;
begin
  if Pais='' then
    Result := GetCountryCode else
    Result := Pais;
end;

function TncConfig.PodeFidelidade: Boolean;
begin
  Result := FidAtivo;
end;

function TncConfig.PrecisaoBalanca(aValor: Extended): Extended;
var 
  I, M : Integer;
  V : Extended;
begin
  M := 1;
  if CodBarMaxQtdDig>0 then 
    for I := 1 to CodBarMaxQtdDig do M := M * 10;
  V := aValor;
  aValor := Int(aValor * M);
  if (CodBarArredondar>0) then begin
    V := (V * (M*10)) - (aValor * 10);
    if V>=CodBarArredondar then aValor := aValor + 1;
  end;
  Result := aValor / M;
end;

function TncConfig.RecPrinterGeneric: Boolean;
begin
  Result := (Pos('Generic', RecTipoImpressora)>0);
end;

procedure TncConfig.SetCamposCliCCText(const Value: String);
begin
  FCamposCliCC.Text := Value;
end;

procedure TncConfig.SetConta(const Value: String);
begin
  FConta := Value;
end;

procedure TncConfig.SetDTol(const Value: Byte);
begin
  gDTol := Value;
  if gDTol>9 then gDTol := 9;
end;

procedure TncConfig.SetEndereco_Loja(const Value: String);
begin
  if Value='' then
    FEndereco_Loja := TGuidEx.Empty else
    FEndereco_Loja := TGuidEx.FromString(Value);
end;

procedure TncConfig.SetFlags(const Value: String);
begin
  FslFlags.Text := Value;
end;

procedure TncConfig.SetRecBobina(const Value: Boolean);
begin
  RecMatricial := Value;
end;

procedure TncConfig.SetRecursoOn(aIndex: Integer; const Value: Boolean);
begin
  while Length(FRecursos)<aIndex do FRecursos := FRecursos + '0';
  if Value then
    FRecursos[aIndex] := '1' else
    FRecursos[aIndex] := '0';
end;

procedure TncConfig.SetUrls(const Value: String);
begin
  FUrls := Value;
  gUrls.SetString(Value);
end;

{ TThreadDeleteFile }

constructor TThreadDeleteFile.Create(aArq: String; aTryForMS: Cardinal);
begin
  FArq := aArq;
  FTryForMS := aTryForMS;
  inherited Create(False);
end;

procedure TThreadDeleteFile.Execute;
var 
  C: Cardinal;
  Ok : Boolean;
begin
  try
    C := GetTickCount + FTryForMS;
    Ok := True;
    repeat
      Sleep(Random(100)+5);
      Ok := SysUtils.DeleteFile(FArq);
    until Ok or (GetTickCount>C) or EncerrarThreads;
  finally
    Free;
  end;
end;

{ TncCodBarBalInfo }

procedure TncCodBarBalInfo.Clear;
begin
  Codigo := '';
  PesoValor := 0;
  BalValor := False;
end;

function TncCodBarBalInfo.IsEmpty: Boolean;
begin
  Result := (Codigo='');
end;

procedure LoadDocParams;
var I : Integer;
begin
  SetLength(DocParams, 18);
  
//  if LinguaPT then begin
    for I := 0 to High(DocParams_pt) do
      DocParams[I] := DocParams_pt[I];
{  end else begin
    for I := 0 to High(DocParams_en) do
      DocParams[I] := DocParams_en[I];
  end;}
end;

initialization
  LoadDocParams;
  
  slIni := TThreadStringList.Create;
  csServ := TCriticalSection.Create;
  gConfig := TncConfig.Create;
  slDadosMin := TStringList.Create;
  slDadosMin.Add('Nome=Nome'); // do not localize
  slDadosMin.Add('Endereço=Endereco'); // do not localize
  slDadosMin.Add('Cidade=Cidade'); // do not localize
  slDadosMin.Add('Bairro=Bairro'); // do not localize
  slDadosMin.Add('CEP=CEP'); // do not localize
  slDadosMin.Add('Estado=UF'); // do not localize
  slDadosMin.Add('RG=RG'); // do not localize
  slDadosMin.Add('CPF=CPF'); // do not localize
  slDadosMin.Add('Data de Nascimento=DataNasc'); // do not localize
  slDadosMin.Add('Telefone=Telefone'); // do not localize
  slDadosMin.Add('Celular=Celular'); // do not localize
  slDadosMin.Add('Username=Username'); // do not localize
  slDadosMin.Add('Escola=Escola'); // do not localize
  slDadosMin.Add('Nome do Pai=Pai'); // do not localize
  slDadosMin.Add('Nome da Mãe=Mae'); // do not localize
  slDadosMin.Add('E-mail=Email'); // do not localize

finalization
  gConfig.Free;
  csServ.Free;
  slDadosMin.Free;
  slIni.Free;
      
end.


