unit ncErros;
{
    ResourceString: Dario 12/03/13
}

interface

uses
  SysUtils,
  classes,
  uNexTransResourceStrings_PT;

type
  ENexCafe = class(Exception);

const
  ncerrTipoClasseInvalido   = 1;
  ncerrItemInexistente      = 3;
  ncerrItemSemAlteracoes    = 4;
  ncerrInfoLoginInvalida    = 5;
  ncerrErroBD               = 6;
  ncerrClienteInvalido      = 7;
  ncerrItemJaExiste         = 8;
  ncerrAcessoEmAndamento    = 9;
  ncerrClienteJaAtivo       = 10;
  ncerrSemCreditoDisp       = 11;
  ncerrMaquinaInexistente   = 12;
  ncerrMaquinaJaConectada   = 13;
  ncerrTelaNaoDisponivel    = 14;
  ncerrMaquinaSemAcesso     = 15;
  ncerrEmModoDemo           = 16;
  ncerrNumMaxMaq            = 17;
  ncerrSemNovaVersao        = 18;
  ncerrErroSocket           = 19;
  ncerrMaqJaEstaManutencao  = 20;
  ncerrMaqNaoEstaManutencao = 21;
  ncerrAcessoNaoPermitido   = 22;
  ncerrPassaporteEmUso      = 23;
  ncerrRGErrado             = 24;
  ncerrRGNaoCadastrado      = 25;
  ncerrCaixaFechado         = 26;
  ncerrClienteInativo       = 27;
  ncerrTransfAguardaPagto   = 28;
  ncerrLimiteManutUsuario   = 29;  
  ncerrArqNaoEncontrado     = 30; 
  ncerrFundoTemQueSerJPG    = 31;
  ncerrFundoTemQueSerJPGouGIF = 32;
  ncerrClienteNaoEncontrado = 33;
  ncerrMaqNaoLic            = 34;
  ncerrCaixaDiferente       = 35;
  ncerrImpossivelCancFimSessao = 36;
  ncerrImpossivelCancPassaporteUsado = 37;
  ncerrSemCreditoDispCanc            = 38;
  ncerrExisteTranPosterior           = 39;
  ncerrUsuarioInexistente            = 40;
  ncerrJaTemCaixaAberto              = 41;
  ncerrCaixaJaFoiFechado             = 42;
  ncerrAguardaPagto                  = 43;
  ncerrMaqReservada                  = 44;
  ncerrSaldoTempoInsuficiente        = 45;
  ncerrSenhaInvalida                 = 46;
  ncerrLimiteDebitoExcedido          = 47;
  ncerrHorarioNaoPermitido           = 48;
  ncerrMaquinaEmManutencao           = 49;
  ncerrTransacaoSoPodeAlterarViaFimSessao = 50;
  ncerrLoginNaoPermitidoLimDeb = 51;
  ncerrProdutoSemSaldo = 52;
  ncerrSaldoValorInsuficiente = 53;
  ncerrAcessoAlteradoPorOutroUsuario = 54;
  ncerrSessaoJaEncerrou = 55;
  ncerrSaldoFidInsuficiente = 56;
  ncerrFalhaTransfArq = 57;
  ncerrConexaoPerdida = 58;
  ncerrFalhaConexao   = 59;
  ncerrCliAvulsoBloqueado = 60;
  ncerrCliSemDadosMinimos = 61;
  ncerrTipoImpNaoExiste = 62;
  ncerrLoginAvulsoNaoPerm = 63;
  ncerrImpressaoPendente = 64;
  ncerrFalhaDownloadInt = 65;
  ncerrComandaInvalida = 66;

  ncerrExcecaoNaoTratada_TdmCaixa_AbreCaixa                     = 500;
  ncerrExcecaoNaoTratada_TdmCaixa_FechaCaixa                    = 501;
  ncerrExcecaoNaoTratada_TDM_ExcluiIME                          = 502;
  ncerrExcecaoNaoTratada_TncServidor_ObtemStreamListaObj        = 503;
  ncerrExcecaoNaoTratada_TncServidor_EnviarMsg                  = 504;
  ncerrExcecaoNaoTratada_TncServidor_FechaCaixa                 = 505;
  ncerrExcecaoNaoTratada_TncServidor_DisableAD                  = 506;
  ncerrExcecaoNaoTratada_TncServidor_AlteraSessao               = 507;
  ncerrExcecaoNaoTratada_TncServidor_DesativarFWSessao          = 508;
  ncerrExcecaoNaoTratada_TncServidor_DesktopSincronizado        = 509;
  ncerrExcecaoNaoTratada_TncServidor_AtualizaUsuarioBD          = 510;
  ncerrExcecaoNaoTratada_TncServidor_AtualizaConfigBD           = 511;
  ncerrExcecaoNaoTratada_TncServidor_AtualizaTarifaBD           = 512;
  ncerrExcecaoNaoTratada_TncServidor_AtualizaTipoAcessoBD       = 513;
  ncerrExcecaoNaoTratada_TncServidor_AtualizaTipoImpBD          = 514;
  ncerrExcecaoNaoTratada_TncServidor_SalvaCredTempo             = 515;
  ncerrExcecaoNaoTratada_TncServidor_SalvaDebito                = 516;
  ncerrExcecaoNaoTratada_TncServidor_SalvaDebTempo              = 517;
  ncerrExcecaoNaoTratada_TncServidor_SalvaImpressao             = 518;
  ncerrExcecaoNaoTratada_TncServidor_SalvaClientPages           = 519;
  ncerrExcecaoNaoTratada_TncServidor_SalvaLancExtra             = 520;
  ncerrExcecaoNaoTratada_TncServidor_SalvaLogAppUrl             = 521;
  ncerrExcecaoNaoTratada_TncServidor_SalvaMovEst                = 522;
  ncerrExcecaoNaoTratada_TncServidor_SalvaProcessos             = 523;
  ncerrExcecaoNaoTratada_TncServidor_SalvaSenhaCli              = 524;
  ncerrExcecaoNaoTratada_TncServidor_AtualizaSessaoBD           = 525;
  ncerrExcecaoNaoTratada_TncServidor_AtualizaMaquinaBD          = 526;
  ncerrExcecaoNaoTratada_TncServidor_ApagaMsgCli                = 527;
  ncerrExcecaoNaoTratada_TncServidor_ApagaObj                   = 528;
  ncerrExcecaoNaoTratada_TncServidor_LimpaFundo                 = 529;
  ncerrExcecaoNaoTratada_TncServidor_ArqFundoEnviado            = 530;
  ncerrExcecaoNaoTratada_TncServidor_ObtemSenhaCli              = 531;
  ncerrExcecaoNaoTratada_TncServidor_ObtemSitesBloqueados       = 532;
  ncerrExcecaoNaoTratada_TncServidor_ObtemStreamAvisos          = 533;
  ncerrExcecaoNaoTratada_TncServidor_ObtemStreamConfig          = 534;
  ncerrExcecaoNaoTratada_TncServidor_SalvaStreamObj             = 535;
  ncerrExcecaoNaoTratada_TncServidor_ShutdownMaq                = 536;
  ncerrExcecaoNaoTratada_TncServidor_SuporteRem                 = 537;
  ncerrExcecaoNaoTratada_TncServidor_RefreshEspera              = 538;
  ncerrExcecaoNaoTratada_TncServidor_RefreshPrecos              = 539;
  ncerrExcecaoNaoTratada_TncServidor_ModoManutencao             = 540;
  ncerrExcecaoNaoTratada_TncServidor_PermitirDownload           = 541;
  ncerrExcecaoNaoTratada_TncServidor_CorrigeDataCaixa           = 542;
  ncerrExcecaoNaoTratada_TncServidor_Login                      = 543;
  ncerrExcecaoNaoTratada_TncServidor_TransferirMaq              = 544;
  ncerrExcecaoNaoTratada_TncServidor_PararTempoMaq              = 545;
  ncerrExcecaoNaoTratada_TncServidor_AbreCaixa                  = 546;
  ncerrExcecaoNaoTratada_TncServidor_AdicionaPassaporte         = 547;
  ncerrExcecaoNaoTratada_TncServidor_AjustaPontosFid            = 548;
  ncerrExcecaoNaoTratada_TncServidor_LoginMaq                   = 549;
  ncerrExcecaoNaoTratada_TncServidor_PreLogoutMaq               = 550;
  ncerrExcecaoNaoTratada_TncServidor_CancelaTran                = 551;
  ncerrExcecaoNaoTratada_TncServidor_CancLogoutMaq              = 552;
  ncerrExcecaoNaoTratada_TncServidor_LogoutMaq                  = 553;
  ncerrExcecaoNaoTratada_TncServidor_AtualizaEspecieBD          = 554;
  

  ncerrUltimo = ncerrExcecaoNaoTratada_TncServidor_AtualizaEspecieBD;

  
  function StringErro(Erro: Integer): String;

implementation

// START resource string wizard section
// END resource string wizard section


function StringErro(Erro: Integer): String;
begin
  case Erro of
    ncerrTipoClasseInvalido :
      Result := SncErros_TipoDeClasseInv�lido;
    ncerrItemInexistente    :
      Result := SncErros_ItemInexistente;
    ncerrItemSemAlteracoes  :
      Result := SncErros_ItemSemAltera��es;
    ncerrInfoLoginInvalida  :
      Result := SncErros_UsernameOuSenhaInv�lida;
    ncerrErroBD :
      Result := SncErros_ErroAcessandoBancoDeDadosDoServi;
    ncerrClienteInvalido :
      Result := SncErros_HandleDeClienteInv�lido;
    ncerrItemJaExiste :
      Result := SncErros_ItemRepetido;  
    ncerrAcessoEmAndamento :
      Result := SncErros_OAcessoAnteriorDessaM�quinaAinda;  
    ncerrClienteJaAtivo :
      Result := SncErros_J�ExisteM�quinaSendoUsadaPorEsse;
    ncerrSemCreditoDisp :
      Result := SncErros_N�oH�Cr�ditoDispon�vel;
    ncerrMaquinaInexistente : 
      Result := SncErros_N�meroDeM�quinaInexistente;     
    ncerrMaquinaJaConectada :
      Result := SncErros_EstaM�quinaJ�Est�Conectada;
    ncerrTelaNaoDisponivel :
      Result := SncErros_TelaN�oDispon�vel;  
    ncerrMaquinaSemAcesso :
      Result := SncErros_N�oExisteAcessoEmAndamentoNessaM;
    ncerrEmModoDemo :  
      Result := SncErros_ONexCaf�Est�SendoExecutadoEmModo;
    ncerrNumMaxMaq :
      Result := SncErros_LimiteDeM�quinasLicenciadasFoiAt;
    ncerrSemNovaVersao : 
      Result := SncErros_N�oH�NovaVers�oDispon�velNoServi;  
    ncerrErroSocket :
      Result := SncErros_ErroDeComunica��oTCPIP;  
    ncerrMaqJaEstaManutencao  :
      Result := SncErros_M�quinaEst�EmManuten��o;
    ncerrMaqNaoEstaManutencao :
      Result := SncErros_M�quinaN�oEst�EmModoManuten��o;
    ncerrAcessoNaoPermitido :
      Result := SncErros_Voc�N�oPossuiDireitoDeExecutarEs; 
    ncerrPassaporteEmUso :
      Result := SncErros_EsseCart�oDeTempoOuPassaporteJ�E;
    ncerrRGErrado :
      Result := SncErros_ON�meroDeRGInformadoEst�Diferent;
    ncerrRGNaoCadastrado :
      Result := SncErros_ParaUsarSuaConta�Necess�rioCadas;
    ncerrCaixaFechado :
      Result := SncErros_�Necess�rioAbrirUmCaixaParaReali;
    ncerrClienteInativo :
      Result := SncErros_EssaContaDeClienteEst�Inativada; 
    ncerrTransfAguardaPagto :
      Result := SncErros_N�o�Poss�velTransferirUmAcessoQu;
    ncerrLimiteManutUsuario :
      Result := SncErros_LimiteM�ximoDeM�quinasEmManuten�;
    ncerrArqNaoEncontrado :
      Result := SncErros_ArquivoN�oEncontrado;
    ncerrFundoTemQueSerJPG :  
      Result := SncErros_OArquivoDeFundoPara�reaDeTrabalh;
    ncerrFundoTemQueSerJPGouGIF :  
      Result := SncErros_OArquivoDeFundoParaATelaDeLoginT;
    ncerrClienteNaoEncontrado :
      Result := SncErros_ClienteN�oEncontrado;
    ncerrMaqNaoLic : 
      Result := SncErros_SuaContaNexCaf�N�oPermiteOUsoDes; 
    ncerrCaixaDiferente : 
      Result := SncErros_N�o�Poss�velAlterarUmaTransa��oQ; 
    ncerrImpossivelCancFimSessao : 
      Result := SncErros_N�o�PermitidoCancelarUmFimDeAces;
    ncerrImpossivelCancPassaporteUsado :
      Result := SncErros_N�o�PermitidoCancelarAVendaDeUmP;
    ncerrSemCreditoDispCanc :
      Result := SncErros_SemCr�ditoDispon�velParaCancelar;
    ncerrExisteTranPosterior :
      Result := SncErros_ExisteTransa��oPosteriorAEssaQue;
    ncerrUsuarioInexistente :
      Result := SncErros_NomeDeUsu�rioInexistente;
    ncerrJaTemCaixaAberto :
      Result := SncErros_J�ExisteUmCaixaAberto;  
    ncerrCaixaJaFoiFechado :
      Result := SncErros_EsteCaixaJ�Est�Fechado;  
    ncerrAguardaPagto :
      Result := SncErros_ExistemItensAguardandoConfirma��;
    ncerrMaqReservada :
      Result := SncErros_EstaM�quinaEst�ReservadaParaOutr; 
    ncerrSaldoTempoInsuficiente :
      Result := SncErros_Cr�ditoDeTempoAtualDoClienteN�o�;
    ncerrSaldoValorInsuficiente :
      Result := SncErros_OClienteN�oPossuiSaldoSuficiente;
    ncerrSenhaInvalida :
      Result := SncErros_SenhaInv�lida;  
    ncerrLimiteDebitoExcedido :
      Result := SncErros_OLimiteM�ximoDeD�bitoPermitidoPa;
    ncerrHorarioNaoPermitido :
      Result := SncErros_ClienteN�oAutorizadoAUsarComputa;
    ncerrMaquinaEmManutencao :
      Result := SncErros_EssaM�quinaEst�EmManuten��oForaD;  
    ncerrTransacaoSoPodeAlterarViaFimSessao :
      Result := SncErros_EssaTransa��oN�oPodeSerAlteradaD+
                SncErros_Fa�aAAltera��oAtrav�sDaTelaDeFim;
    ncerrLoginNaoPermitidoLimDeb :
      Result := SncErros_LoginN�oPermitidoValorLimiteDeD�;
    ncerrProdutoSemSaldo :
      Result := SncErros_SaldoDeProdutoInsuficiente;
    ncerrAcessoAlteradoPorOutroUsuario :
      Result := SncErros_OAcessoFoiAlteradoAntesDeVoc�Sal;
    ncerrSessaoJaEncerrou :
      Result := SncErros_N�o�Poss�velRealizarEssaOpera��o;
    ncerrSaldoFidInsuficiente :
      Result := SncErros_SaldoDePontosDoFidelidadeDoClien;
    ncerrFalhaTransfArq :
      Result := SncErros_FalhaNaTransfer�nciaDeArquivo;
    ncerrConexaoPerdida : 
      Result := SncErros_AConex�oDeRedeComOServidorFoiPer;
    ncerrFalhaConexao : 
      Result := SncErros_FalhaDeConex�oComOServidorNexCaf;  
    ncerrCliAvulsoBloqueado :
      Result := SncErros_N�o�Poss�velLiberarAcessoParaCli;
    ncerrCliSemDadosMinimos :
      Result := SncErros_OClienteN�oPossuiOsDadosCadastra;
    ncerrTipoImpNaoExiste :
      Result := SncErros_�Necess�rioSelecionarUmTipoDeImp;
    ncerrLoginAvulsoNaoPerm :
      Result := SncErros_N�o�PermitidoOAcessoDeClienteSem;
    ncerrImpressaoPendente : 
      Result := SncErros_N�o�Poss�velEncerrarOAcessoPoisH;
    ncerrFalhaDownloadInt :
      Result := SncErros_FalhaDownloadInt; 
    ncerrComandaInvalida :
      Result := SncErros_ComandaInvalida;

    ncerrExcecaoNaoTratada_TdmCaixa_AbreCaixa  :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TdmCaixa_AbreCaixa;
    ncerrExcecaoNaoTratada_TdmCaixa_FechaCaixa  :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TdmCaixa_FechaCaixa;
    ncerrExcecaoNaoTratada_TDM_ExcluiIME  :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TDM_ExcluiIME;
    ncerrExcecaoNaoTratada_TncServidor_ObtemStreamListaObj  :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_ObtemStreamListaObj;
    ncerrExcecaoNaoTratada_TncServidor_EnviarMsg :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_EnviarMsg;
    ncerrExcecaoNaoTratada_TncServidor_FechaCaixa :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_FechaCaixa;
    ncerrExcecaoNaoTratada_TncServidor_DisableAD :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_DisableAD;
    ncerrExcecaoNaoTratada_TncServidor_AlteraSessao :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_AlteraSessao;
    ncerrExcecaoNaoTratada_TncServidor_DesativarFWSessao :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_DesativarFWSessao;
    ncerrExcecaoNaoTratada_TncServidor_DesktopSincronizado :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_DesktopSincronizado;
    ncerrExcecaoNaoTratada_TncServidor_AtualizaUsuarioBD :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_AtualizaUsuarioBD;
    ncerrExcecaoNaoTratada_TncServidor_AtualizaConfigBD :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_AtualizaConfigBD;
    ncerrExcecaoNaoTratada_TncServidor_AtualizaTarifaBD :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_AtualizaTarifaBD;
    ncerrExcecaoNaoTratada_TncServidor_AtualizaTipoAcessoBD :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_AtualizaTipoAcessoBD;
    ncerrExcecaoNaoTratada_TncServidor_AtualizaTipoImpBD :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_AtualizaTipoImpBD;
    ncerrExcecaoNaoTratada_TncServidor_SalvaCredTempo :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_SalvaCredTempo;
    ncerrExcecaoNaoTratada_TncServidor_SalvaDebito :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_SalvaDebito;
    ncerrExcecaoNaoTratada_TncServidor_SalvaDebTempo :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_SalvaDebTempo;
    ncerrExcecaoNaoTratada_TncServidor_SalvaImpressao :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_SalvaImpressao;
    ncerrExcecaoNaoTratada_TncServidor_SalvaClientPages :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_SalvaClientPages;
    ncerrExcecaoNaoTratada_TncServidor_SalvaLancExtra :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_SalvaLancExtra ;
    ncerrExcecaoNaoTratada_TncServidor_SalvaLogAppUrl :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_SalvaLogAppUrl;
    ncerrExcecaoNaoTratada_TncServidor_SalvaMovEst :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_SalvaMovEst;
    ncerrExcecaoNaoTratada_TncServidor_SalvaProcessos :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_SalvaProcessos;
    ncerrExcecaoNaoTratada_TncServidor_SalvaSenhaCli :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_SalvaSenhaCli;
    ncerrExcecaoNaoTratada_TncServidor_AtualizaSessaoBD :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_AtualizaSessaoBD;
    ncerrExcecaoNaoTratada_TncServidor_AtualizaMaquinaBD :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_AtualizaMaquinaBD;
    ncerrExcecaoNaoTratada_TncServidor_ApagaMsgCli :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_ApagaMsgCli;
    ncerrExcecaoNaoTratada_TncServidor_ApagaObj :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_ApagaObj;
    ncerrExcecaoNaoTratada_TncServidor_LimpaFundo :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_LimpaFundo;
    ncerrExcecaoNaoTratada_TncServidor_ArqFundoEnviado :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_ArqFundoEnviado;
    ncerrExcecaoNaoTratada_TncServidor_ObtemSitesBloqueados :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_ObtemSitesBloqueados;
    ncerrExcecaoNaoTratada_TncServidor_ObtemStreamAvisos :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_ObtemStreamAvisos;
    ncerrExcecaoNaoTratada_TncServidor_ObtemStreamConfig :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_ObtemStreamConfig;
    ncerrExcecaoNaoTratada_TncServidor_SalvaStreamObj :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_SalvaStreamObj;
    ncerrExcecaoNaoTratada_TncServidor_ShutdownMaq :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_ShutdownMaq;
    ncerrExcecaoNaoTratada_TncServidor_SuporteRem :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_SuporteRem;
    ncerrExcecaoNaoTratada_TncServidor_RefreshEspera :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_RefreshEspera;
    ncerrExcecaoNaoTratada_TncServidor_RefreshPrecos :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_RefreshPrecos;
    ncerrExcecaoNaoTratada_TncServidor_ModoManutencao :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_ModoManutencao;
    ncerrExcecaoNaoTratada_TncServidor_PermitirDownload :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_PermitirDownload;
    ncerrExcecaoNaoTratada_TncServidor_CorrigeDataCaixa :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_CorrigeDataCaixa;
    ncerrExcecaoNaoTratada_TncServidor_Login :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_Login;
    ncerrExcecaoNaoTratada_TncServidor_TransferirMaq :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_TransferirMaq;
    ncerrExcecaoNaoTratada_TncServidor_PararTempoMaq :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_PararTempoMaq;
    ncerrExcecaoNaoTratada_TncServidor_AbreCaixa :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_AbreCaixa;
    ncerrExcecaoNaoTratada_TncServidor_AdicionaPassaporte :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_AdicionaPassaporte;
    ncerrExcecaoNaoTratada_TncServidor_AjustaPontosFid :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_AjustaPontosFid;
    ncerrExcecaoNaoTratada_TncServidor_LoginMaq :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_LoginMaq;
    ncerrExcecaoNaoTratada_TncServidor_PreLogoutMaq :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_PreLogoutMaq;
    ncerrExcecaoNaoTratada_TncServidor_CancelaTran :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_CancelaTran;
    ncerrExcecaoNaoTratada_TncServidor_CancLogoutMaq :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_CancLogoutMaq;
    ncerrExcecaoNaoTratada_TncServidor_LogoutMaq :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_LogoutMaq;

    ncerrExcecaoNaoTratada_TncServidor_AtualizaEspecieBD :
      Result := SncErros_Exce��oN�oTratadaNoServidor_TncServidor_AtuaizaEspecieBD;
      


    
    
  else
    Result := '';    
  end;
end;
  

end.

