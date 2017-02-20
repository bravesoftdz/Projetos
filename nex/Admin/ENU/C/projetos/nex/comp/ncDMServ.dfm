object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 504
  Width = 826
  object nxSession: TnxSession
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRSE
    Left = 24
    Top = 16
  end
  object nxDB: TnxDatabase
    Session = nxSession
    AliasName = 'NexCafe'
    Left = 72
    Top = 16
  end
  object tTran: TnxTable
    Database = nxDB
    OnCalcFields = tTranCalcFields
    TableName = 'Tran'
    IndexName = 'ISessao'
    Left = 24
    Top = 72
    object tTranID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tTranUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tTranDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tTranCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tTranTipo: TByteField
      FieldName = 'Tipo'
    end
    object tTranFunc: TStringField
      FieldName = 'Func'
    end
    object tTranTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tTranDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tTranDescPerc: TFloatField
      FieldName = 'DescPerc'
    end
    object tTranDescPorPerc: TBooleanField
      FieldName = 'DescPorPerc'
    end
    object tTranTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tTranPagEsp: TWordField
      FieldName = 'PagEsp'
    end
    object tTranPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tTranDebitoAnt: TCurrencyField
      FieldName = 'DebitoAnt'
    end
    object tTranDebitoPago: TCurrencyField
      FieldName = 'DebitoPago'
    end
    object tTranCreditoAnt: TCurrencyField
      FieldName = 'CreditoAnt'
    end
    object tTranCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object tTranCreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object tTranTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object tTranObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tTranCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tTranCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tTranCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tTranCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tTranCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object tTranMaq: TWordField
      FieldName = 'Maq'
    end
    object tTranNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tTranSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tTranDescr: TStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tTranQtdTempo: TFloatField
      FieldName = 'QtdTempo'
    end
    object tTranCredValor: TBooleanField
      FieldName = 'CredValor'
    end
    object tTranFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tTranPagFunc: TStringField
      FieldName = 'PagFunc'
    end
    object tTranPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tTranRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tTranDebito: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Debito'
      Calculated = True
    end
    object tTranUID_ref: TGuidField
      FieldName = 'UID_ref'
      Size = 38
    end
    object tTranOpDevValor: TByteField
      FieldName = 'OpDevValor'
    end
    object tTranIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tTranStatusNFE: TByteField
      FieldName = 'StatusNFE'
    end
    object tTranTipoNFE: TByteField
      FieldName = 'TipoNFE'
    end
    object tTranChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object tTranExtra: TnxMemoField
      FieldName = 'Extra'
      BlobType = ftMemo
    end
    object tTranAmbNFe: TByteField
      FieldName = 'AmbNFe'
    end
    object tTranStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
  end
  object tITran: TnxTable
    Database = nxDB
    BeforePost = tITranBeforePost
    BeforeDelete = tITranBeforeDelete
    OnCalcFields = tITranCalcFields
    TableName = 'ITran'
    IndexName = 'IID'
    Left = 72
    Top = 72
    object tITranDebito: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Debito'
      Calculated = True
    end
    object tITranID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tITranTran: TLongWordField
      FieldName = 'Tran'
    end
    object tITranCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tITranCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object tITranCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tITranSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tITranDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tITranTipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tITranTipoItem: TByteField
      FieldName = 'TipoItem'
    end
    object tITranSubTipo: TByteField
      FieldName = 'SubTipo'
    end
    object tITranItemID: TLongWordField
      FieldName = 'ItemID'
    end
    object tITranSubItemID: TLongWordField
      FieldName = 'SubItemID'
    end
    object tITranItemPos: TByteField
      FieldName = 'ItemPos'
    end
    object tITranTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tITranDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tITranTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tITranPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tITranCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tITranPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tITranFidFator: TShortintField
      FieldName = 'FidFator'
    end
    object tITranFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tITranFidMov: TBooleanField
      FieldName = 'FidMov'
    end
    object tITranFidOpe: TByteField
      FieldName = 'FidOpe'
    end
    object tITranRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tITranIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
  end
  object tUsuario: TnxTable
    Database = nxDB
    TableName = 'Usuario'
    IndexName = 'IUsername'
    Left = 24
    Top = 136
    object tUsuarioUsername: TStringField
      FieldName = 'Username'
    end
    object tUsuarioNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tUsuarioAdmin: TBooleanField
      FieldName = 'Admin'
    end
    object tUsuarioSenha: TStringField
      FieldName = 'Senha'
      Size = 30
    end
    object tUsuarioGrupos: TMemoField
      FieldName = 'Grupos'
      BlobType = ftMemo
    end
    object tUsuarioDireitos: TMemoField
      FieldName = 'Direitos'
      BlobType = ftMemo
    end
    object tUsuarioMaxTempoManut: TIntegerField
      FieldName = 'MaxTempoManut'
    end
    object tUsuarioMaxMaqManut: TIntegerField
      FieldName = 'MaxMaqManut'
    end
    object tUsuarioLimiteDesc: TFloatField
      FieldName = 'LimiteDesc'
    end
  end
  object tConfig: TnxTable
    Database = nxDB
    TableName = 'Config'
    Left = 120
    Top = 72
    object tConfigNumSeq: TUnsignedAutoIncField
      FieldName = 'NumSeq'
    end
    object tConfigFecharProgramas: TBooleanField
      FieldName = 'FecharProgramas'
    end
    object tConfigAutoExecutar: TStringField
      FieldName = 'AutoExecutar'
      Size = 200
    end
    object tConfigLimiteTempoPadrao: TDateTimeField
      FieldName = 'LimiteTempoPadrao'
    end
    object tConfigPacoteTempoReal: TBooleanField
      FieldName = 'PacoteTempoReal'
    end
    object tConfigPermiteLoginSemCred: TBooleanField
      FieldName = 'PermiteLoginSemCred'
    end
    object tConfigAlteraLoginSemCred: TBooleanField
      FieldName = 'AlteraLoginSemCred'
    end
    object tConfigEncerramentoPrePago: TByteField
      FieldName = 'EncerramentoPrePago'
    end
    object tConfigEncerramentoCartao: TByteField
      FieldName = 'EncerramentoCartao'
    end
    object tConfigTempoEPrePago: TWordField
      FieldName = 'TempoEPrePago'
    end
    object tConfigTempoECartao: TWordField
      FieldName = 'TempoECartao'
    end
    object tConfigPermiteCapturaTela: TBooleanField
      FieldName = 'PermiteCapturaTela'
    end
    object tConfigVariosTiposAcesso: TBooleanField
      FieldName = 'VariosTiposAcesso'
    end
    object tConfigModoPagtoAcesso: TByteField
      FieldName = 'ModoPagtoAcesso'
    end
    object tConfigMostraPrePagoDec: TBooleanField
      FieldName = 'MostraPrePagoDec'
    end
    object tConfigMostraNomeMaq: TBooleanField
      FieldName = 'MostraNomeMaq'
    end
    object tConfigAutoCad: TBooleanField
      FieldName = 'AutoCad'
    end
    object tConfigQuickCad: TBooleanField
      FieldName = 'QuickCad'
    end
    object tConfigCodProdutoDuplicados: TBooleanField
      FieldName = 'CodProdutoDuplicados'
    end
    object tConfigTempoMaxAlerta: TDateTimeField
      FieldName = 'TempoMaxAlerta'
    end
    object tConfigAbre1: TDateTimeField
      FieldName = 'Abre1'
    end
    object tConfigAbre2: TDateTimeField
      FieldName = 'Abre2'
    end
    object tConfigAbre3: TDateTimeField
      FieldName = 'Abre3'
    end
    object tConfigAbre4: TDateTimeField
      FieldName = 'Abre4'
    end
    object tConfigAbre5: TDateTimeField
      FieldName = 'Abre5'
    end
    object tConfigAbre6: TDateTimeField
      FieldName = 'Abre6'
    end
    object tConfigAbre7: TDateTimeField
      FieldName = 'Abre7'
    end
    object tConfigFecha1: TDateTimeField
      FieldName = 'Fecha1'
    end
    object tConfigFecha2: TDateTimeField
      FieldName = 'Fecha2'
    end
    object tConfigFecha3: TDateTimeField
      FieldName = 'Fecha3'
    end
    object tConfigFecha4: TDateTimeField
      FieldName = 'Fecha4'
    end
    object tConfigFecha5: TDateTimeField
      FieldName = 'Fecha5'
    end
    object tConfigFecha6: TDateTimeField
      FieldName = 'Fecha6'
    end
    object tConfigFecha7: TDateTimeField
      FieldName = 'Fecha7'
    end
    object tConfigCorLivre: TIntegerField
      FieldName = 'CorLivre'
    end
    object tConfigCorFLivre: TIntegerField
      FieldName = 'CorFLivre'
    end
    object tConfigCorUsoPrePago: TIntegerField
      FieldName = 'CorUsoPrePago'
    end
    object tConfigCorFUsoPrePago: TIntegerField
      FieldName = 'CorFUsoPrePago'
    end
    object tConfigCorUsoPosPago: TIntegerField
      FieldName = 'CorUsoPosPago'
    end
    object tConfigCorFUsoPosPago: TIntegerField
      FieldName = 'CorFUsoPosPago'
    end
    object tConfigCorAguardaPagto: TIntegerField
      FieldName = 'CorAguardaPagto'
    end
    object tConfigCorFAguardaPagto: TIntegerField
      FieldName = 'CorFAguardaPagto'
    end
    object tConfigCorManutencao: TIntegerField
      FieldName = 'CorManutencao'
    end
    object tConfigCorFManutencao: TIntegerField
      FieldName = 'CorFManutencao'
    end
    object tConfigCorPausado: TIntegerField
      FieldName = 'CorPausado'
    end
    object tConfigCorFPausado: TIntegerField
      FieldName = 'CorFPausado'
    end
    object tConfigCorDesktop: TIntegerField
      FieldName = 'CorDesktop'
    end
    object tConfigCorFDesktop: TIntegerField
      FieldName = 'CorFDesktop'
    end
    object tConfigCorMaqManut: TIntegerField
      FieldName = 'CorMaqManut'
    end
    object tConfigCorFMaqManut: TIntegerField
      FieldName = 'CorFMaqManut'
    end
    object tConfigCorPrevisao: TIntegerField
      FieldName = 'CorPrevisao'
    end
    object tConfigCorFPrevisao: TIntegerField
      FieldName = 'CorFPrevisao'
    end
    object tConfigCampoLocalizaCli: TByteField
      FieldName = 'CampoLocalizaCli'
    end
    object tConfigManterSaldoCaixa: TBooleanField
      FieldName = 'ManterSaldoCaixa'
    end
    object tConfigNaoMostrarMsgDebito: TBooleanField
      FieldName = 'NaoMostrarMsgDebito'
    end
    object tConfigNaoCobrarImpFunc: TBooleanField
      FieldName = 'NaoCobrarImpFunc'
    end
    object tConfigTolerancia: TDateTimeField
      FieldName = 'Tolerancia'
    end
    object tConfigRegImp98: TBooleanField
      FieldName = 'RegImp98'
    end
    object tConfigLimitePadraoDebito: TCurrencyField
      FieldName = 'LimitePadraoDebito'
    end
    object tConfigRecPorta: TStringField
      FieldName = 'RecPorta'
      Size = 100
    end
    object tConfigRecSalto: TWordField
      FieldName = 'RecSalto'
    end
    object tConfigRecLargura: TWordField
      FieldName = 'RecLargura'
    end
    object tConfigRecRodape: TnxMemoField
      FieldName = 'RecRodape'
      BlobType = ftMemo
    end
    object tConfigRecImprimir: TByteField
      FieldName = 'RecImprimir'
    end
    object tConfigRecMatricial: TBooleanField
      FieldName = 'RecMatricial'
    end
    object tConfigRecTipoImpressora: TStringField
      FieldName = 'RecTipoImpressora'
      Size = 32
    end
    object tConfigRecNomeLoja: TStringField
      FieldName = 'RecNomeLoja'
      Size = 40
    end
    object tConfigRecCortaFolha: TBooleanField
      FieldName = 'RecCortaFolha'
    end
    object tConfigRecImprimeMeioPagto: TBooleanField
      FieldName = 'RecImprimeMeioPagto'
    end
    object tConfigRecPrefixoMeioPagto: TStringField
      FieldName = 'RecPrefixoMeioPagto'
      Size = 30
    end
    object tConfigMostraProgAtual: TBooleanField
      FieldName = 'MostraProgAtual'
    end
    object tConfigMostraObs: TBooleanField
      FieldName = 'MostraObs'
    end
    object tConfigEscondeTextoBotoes: TBooleanField
      FieldName = 'EscondeTextoBotoes'
    end
    object tConfigEscondeTipoAcesso: TBooleanField
      FieldName = 'EscondeTipoAcesso'
    end
    object tConfigExigirRG: TBooleanField
      FieldName = 'ExigirRG'
    end
    object tConfigTipoFDesktop: TStringField
      FieldName = 'TipoFDesktop'
      Size = 3
    end
    object tConfigTipoFLogin: TStringField
      FieldName = 'TipoFLogin'
      Size = 3
    end
    object tConfigNumFDesktop: TIntegerField
      FieldName = 'NumFDesktop'
    end
    object tConfigNumFLogin: TIntegerField
      FieldName = 'NumFLogin'
    end
    object tConfigFundoWeb: TBooleanField
      FieldName = 'FundoWeb'
    end
    object tConfigFundoWebURL: TnxMemoField
      FieldName = 'FundoWebURL'
      BlobType = ftMemo
    end
    object tConfigMostrarApenasPIN: TBooleanField
      FieldName = 'MostrarApenasPIN'
    end
    object tConfigTextoPIN: TStringField
      FieldName = 'TextoPIN'
      Size = 30
    end
    object tConfigAlterarSenhaCli: TBooleanField
      FieldName = 'AlterarSenhaCli'
    end
    object tConfigVerSenhaCli: TBooleanField
      FieldName = 'VerSenhaCli'
    end
    object tConfigCliCadPadrao: TBooleanField
      FieldName = 'CliCadPadrao'
    end
    object tConfigControlaImp: TByteField
      FieldName = 'ControlaImp'
    end
    object tConfigFiltrarWEB: TBooleanField
      FieldName = 'FiltrarWEB'
    end
    object tConfigSiteRedirFiltro: TStringField
      FieldName = 'SiteRedirFiltro'
      Size = 80
    end
    object tConfigPastaDownload: TStringField
      FieldName = 'PastaDownload'
      Size = 1024
    end
    object tConfigMinutosDesligaMaq: TByteField
      FieldName = 'MinutosDesligaMaq'
    end
    object tConfigMinutosDesligaMon: TByteField
      FieldName = 'MinutosDesligaMon'
    end
    object tConfigBloqDownload: TBooleanField
      FieldName = 'BloqDownload'
    end
    object tConfigBloqDownloadExe: TBooleanField
      FieldName = 'BloqDownloadExe'
    end
    object tConfigBloqMenuIniciar: TBooleanField
      FieldName = 'BloqMenuIniciar'
    end
    object tConfigBloqPainelCtrl: TBooleanField
      FieldName = 'BloqPainelCtrl'
    end
    object tConfigBloqCtrlAltDel: TBooleanField
      FieldName = 'BloqCtrlAltDel'
    end
    object tConfigBloqExecutar: TBooleanField
      FieldName = 'BloqExecutar'
    end
    object tConfigBloqMeusLocaisRede: TBooleanField
      FieldName = 'BloqMeusLocaisRede'
    end
    object tConfigBloqMeuComputador: TBooleanField
      FieldName = 'BloqMeuComputador'
    end
    object tConfigBloqLixeira: TBooleanField
      FieldName = 'BloqLixeira'
    end
    object tConfigBloqMeusDocumentos: TBooleanField
      FieldName = 'BloqMeusDocumentos'
    end
    object tConfigClassicStartMenu: TBooleanField
      FieldName = 'ClassicStartMenu'
    end
    object tConfigBloqTray: TBooleanField
      FieldName = 'BloqTray'
    end
    object tConfigBloqBotaoDir: TBooleanField
      FieldName = 'BloqBotaoDir'
    end
    object tConfigBloqToolbars: TBooleanField
      FieldName = 'BloqToolbars'
    end
    object tConfigBloqPosPago: TBooleanField
      FieldName = 'BloqPosPago'
    end
    object tConfigFiltrarDesktop: TBooleanField
      FieldName = 'FiltrarDesktop'
    end
    object tConfigFiltrarMenuIniciar: TBooleanField
      FieldName = 'FiltrarMenuIniciar'
    end
    object tConfigTempoB1: TWordField
      FieldName = 'TempoB1'
    end
    object tConfigTempoB2: TWordField
      FieldName = 'TempoB2'
    end
    object tConfigTempoB3: TWordField
      FieldName = 'TempoB3'
    end
    object tConfigTempoB4: TWordField
      FieldName = 'TempoB4'
    end
    object tConfigTempoB5: TWordField
      FieldName = 'TempoB5'
    end
    object tConfigTempoB6: TWordField
      FieldName = 'TempoB6'
    end
    object tConfigPaginaInicial: TStringField
      FieldName = 'PaginaInicial'
      Size = 200
    end
    object tConfigEsconderCronometro: TBooleanField
      FieldName = 'EsconderCronometro'
    end
    object tConfigAposEncerrar: TByteField
      FieldName = 'AposEncerrar'
    end
    object tConfigAlinhaBarraGuard: TByteField
      FieldName = 'AlinhaBarraGuard'
    end
    object tConfigNoNet: TByteField
      FieldName = 'NoNet'
    end
    object tConfigTempoSumirLogin: TWordField
      FieldName = 'TempoSumirLogin'
    end
    object tConfigEsconderDrives: TStringField
      FieldName = 'EsconderDrives'
      Size = 30
    end
    object tConfigEmailMetodo: TByteField
      FieldName = 'EmailMetodo'
    end
    object tConfigEmailServ: TStringField
      FieldName = 'EmailServ'
      Size = 50
    end
    object tConfigEmailUsername: TStringField
      FieldName = 'EmailUsername'
      Size = 50
    end
    object tConfigEmailSenha: TStringField
      FieldName = 'EmailSenha'
      Size = 50
    end
    object tConfigEmailDestino: TnxMemoField
      FieldName = 'EmailDestino'
      BlobType = ftMemo
    end
    object tConfigEmailIdent: TStringField
      FieldName = 'EmailIdent'
    end
    object tConfigEmailEnviarCaixa: TBooleanField
      FieldName = 'EmailEnviarCaixa'
    end
    object tConfigEmailConteudo: TStringField
      FieldName = 'EmailConteudo'
    end
    object tConfigAlertaAssinatura: TBooleanField
      FieldName = 'AlertaAssinatura'
    end
    object tConfigCredPadraoTipo: TByteField
      FieldName = 'CredPadraoTipo'
    end
    object tConfigCredPadraoCod: TIntegerField
      FieldName = 'CredPadraoCod'
    end
    object tConfigPgVendas: TBooleanField
      FieldName = 'PgVendas'
    end
    object tConfigPgVendaAvulsa: TBooleanField
      FieldName = 'PgVendaAvulsa'
    end
    object tConfigPgAcesso: TBooleanField
      FieldName = 'PgAcesso'
    end
    object tConfigPgTempo: TBooleanField
      FieldName = 'PgTempo'
    end
    object tConfigPgImp: TBooleanField
      FieldName = 'PgImp'
    end
    object tConfigBloquearUsoEmHorarioNP: TBooleanField
      FieldName = 'BloquearUsoEmHorarioNP'
    end
    object tConfigOpcaoChat: TByteField
      FieldName = 'OpcaoChat'
    end
    object tConfigSalvarCodUsername: TBooleanField
      FieldName = 'SalvarCodUsername'
    end
    object tConfigContinuarCredTempo: TBooleanField
      FieldName = 'ContinuarCredTempo'
    end
    object tConfigNaoGuardarCreditoCli: TBooleanField
      FieldName = 'NaoGuardarCreditoCli'
    end
    object tConfigRelCaixaAuto: TBooleanField
      FieldName = 'RelCaixaAuto'
    end
    object tConfigSincronizarHorarios: TBooleanField
      FieldName = 'SincronizarHorarios'
    end
    object tConfigMostrarDebitoNoGuard: TBooleanField
      FieldName = 'MostrarDebitoNoGuard'
    end
    object tConfigBloquearLoginAlemMaxDeb: TBooleanField
      FieldName = 'BloquearLoginAlemMaxDeb'
    end
    object tConfigClienteNaoAlteraSenha: TBooleanField
      FieldName = 'ClienteNaoAlteraSenha'
    end
    object tConfigNaoObrigarSenhaCliente: TBooleanField
      FieldName = 'NaoObrigarSenhaCliente'
    end
    object tConfigNaoVenderAlemEstoque: TBooleanField
      FieldName = 'NaoVenderAlemEstoque'
    end
    object tConfigCreditoComoValor: TBooleanField
      FieldName = 'CreditoComoValor'
    end
    object tConfigCliAvulsoNaoEncerra: TBooleanField
      FieldName = 'CliAvulsoNaoEncerra'
    end
    object tConfigAutoSortGridCaixa: TBooleanField
      FieldName = 'AutoSortGridCaixa'
    end
    object tConfigAvisoFimTempoAdminS: TByteField
      FieldName = 'AvisoFimTempoAdminS'
    end
    object tConfigDetectarImpServ: TBooleanField
      FieldName = 'DetectarImpServ'
    end
    object tConfigAvisoCreditos: TBooleanField
      FieldName = 'AvisoCreditos'
    end
    object tConfigClientePodeVerCred: TBooleanField
      FieldName = 'ClientePodeVerCred'
    end
    object tConfigChatAlertaSonoro: TBooleanField
      FieldName = 'ChatAlertaSonoro'
    end
    object tConfigChatMostraNotificacao: TBooleanField
      FieldName = 'ChatMostraNotificacao'
    end
    object tConfigModoCredGuard: TByteField
      FieldName = 'ModoCredGuard'
    end
    object tConfigMsgFimCred: TStringField
      FieldName = 'MsgFimCred'
      Size = 150
    end
    object tConfigSemLogin: TBooleanField
      FieldName = 'SemLogin'
    end
    object tConfigAutoObsAoCancelar: TBooleanField
      FieldName = 'AutoObsAoCancelar'
    end
    object tConfigFidAtivo: TBooleanField
      FieldName = 'FidAtivo'
    end
    object tConfigFidVendaValor: TCurrencyField
      FieldName = 'FidVendaValor'
    end
    object tConfigFidVendaPontos: TIntegerField
      FieldName = 'FidVendaPontos'
    end
    object tConfigFidParcial: TBooleanField
      FieldName = 'FidParcial'
    end
    object tConfigFidAutoPremiar: TBooleanField
      FieldName = 'FidAutoPremiar'
    end
    object tConfigFidAutoPremiarValor: TCurrencyField
      FieldName = 'FidAutoPremiarValor'
    end
    object tConfigFidAutoPremiarPontos: TIntegerField
      FieldName = 'FidAutoPremiarPontos'
    end
    object tConfigFidMostrarSaldoAdmin: TBooleanField
      FieldName = 'FidMostrarSaldoAdmin'
    end
    object tConfigFidMsg: TBooleanField
      FieldName = 'FidMsg'
    end
    object tConfigFidMsgTitulo: TStringField
      FieldName = 'FidMsgTitulo'
      Size = 50
    end
    object tConfigFidMsgTexto: TnxMemoField
      FieldName = 'FidMsgTexto'
      BlobType = ftMemo
    end
    object tConfigCliCadNaoEncerra: TBooleanField
      FieldName = 'CliCadNaoEncerra'
    end
    object tConfigImpedirPosPago: TBooleanField
      FieldName = 'ImpedirPosPago'
    end
    object tConfigAutoLigarMaqCli: TBooleanField
      FieldName = 'AutoLigarMaqCli'
    end
    object tConfigBiometria: TBooleanField
      FieldName = 'Biometria'
    end
    object tConfigPMPausaAutomatica: TBooleanField
      FieldName = 'PMPausaAutomatica'
    end
    object tConfigPMConfirmaImpCliente: TBooleanField
      FieldName = 'PMConfirmaImpCliente'
    end
    object tConfigPMConfirmaImpAdmin: TBooleanField
      FieldName = 'PMConfirmaImpAdmin'
    end
    object tConfigPMMostrarPaginasCli: TBooleanField
      FieldName = 'PMMostrarPaginasCli'
    end
    object tConfigPMMostrarValorCli: TBooleanField
      FieldName = 'PMMostrarValorCli'
    end
    object tConfigPMCalcValorCli: TByteField
      FieldName = 'PMCalcValorCli'
    end
    object tConfigPMPromptValorCli: TStringField
      FieldName = 'PMPromptValorCli'
      Size = 100
    end
    object tConfigPMObsValorCli: TStringField
      FieldName = 'PMObsValorCli'
      Size = 300
    end
    object tConfigPMPausarServ: TBooleanField
      FieldName = 'PMPausarServ'
    end
    object tConfigPMNaoPausar: TnxMemoField
      FieldName = 'PMNaoPausar'
      BlobType = ftMemo
    end
    object tConfigPMCotas: TBooleanField
      FieldName = 'PMCotas'
    end
    object tConfigPMCotasMaxPagDia: TLongWordField
      FieldName = 'PMCotasMaxPagDia'
    end
    object tConfigPMCotasMaxPagMes: TLongWordField
      FieldName = 'PMCotasMaxPagMes'
    end
    object tConfigPMCotasOpCota: TByteField
      FieldName = 'PMCotasOpCota'
    end
    object tConfigPMCotasOpExcesso: TByteField
      FieldName = 'PMCotasOpExcesso'
    end
    object tConfigPMCotasMaxExcesso: TLongWordField
      FieldName = 'PMCotasMaxExcesso'
    end
    object tConfigPMCotasPorCli: TBooleanField
      FieldName = 'PMCotasPorCli'
    end
    object tConfigPMPDF: TBooleanField
      FieldName = 'PMPDF'
    end
    object tConfigPMPDFPrintEng: TByteField
      FieldName = 'PMPDFPrintEng'
    end
    object tConfigPMReviewCli: TBooleanField
      FieldName = 'PMReviewCli'
    end
    object tConfigPMReviewAdmin: TBooleanField
      FieldName = 'PMReviewAdmin'
    end
    object tConfigPubHomePage: TBooleanField
      FieldName = 'PubHomePage'
    end
    object tConfigPubAd: TBooleanField
      FieldName = 'PubAd'
    end
    object tConfigPubToolbar: TBooleanField
      FieldName = 'PubToolbar'
    end
    object tConfigMaxTempoSessao: TWordField
      FieldName = 'MaxTempoSessao'
    end
    object tConfigTarifaPadrao: TIntegerField
      FieldName = 'TarifaPadrao'
    end
    object tConfigTarifaPorHorario: TBooleanField
      FieldName = 'TarifaPorHorario'
    end
    object tConfigBloqueiaCliAvulso: TBooleanField
      FieldName = 'BloqueiaCliAvulso'
    end
    object tConfigExigeDadosMinimos: TBooleanField
      FieldName = 'ExigeDadosMinimos'
    end
    object tConfigDadosMinimos: TStringField
      FieldName = 'DadosMinimos'
      Size = 300
    end
    object tConfigCidadePadrao: TStringField
      FieldName = 'CidadePadrao'
      Size = 50
    end
    object tConfigUFPadrao: TStringField
      FieldName = 'UFPadrao'
      Size = 2
    end
    object tConfigPedirSaldoI: TBooleanField
      FieldName = 'PedirSaldoI'
    end
    object tConfigPedirSaldoF: TBooleanField
      FieldName = 'PedirSaldoF'
    end
    object tConfigBRT: TWordField
      FieldName = 'BRT'
    end
    object tConfigDTol: TByteField
      FieldName = 'DTol'
    end
    object tConfigDVA: TDateTimeField
      FieldName = 'DVA'
    end
    object tConfigProxAvisoAss: TDateTimeField
      FieldName = 'ProxAvisoAss'
    end
    object tConfigPreLib: TBooleanField
      FieldName = 'PreLib'
    end
    object tConfigExCookie: TBooleanField
      FieldName = 'ExCookie'
    end
    object tConfigHPOpenBef: TBooleanField
      FieldName = 'HPOpenBef'
    end
    object tConfigCamposCliCC: TnxMemoField
      FieldName = 'CamposCliCC'
      BlobType = ftMemo
    end
    object tConfigCliCongelado: TBooleanField
      FieldName = 'CliCongelado'
    end
    object tConfigSenhaAdminOk: TBooleanField
      FieldName = 'SenhaAdminOk'
    end
    object tConfigQtdMaqOk: TBooleanField
      FieldName = 'QtdMaqOk'
    end
    object tConfigPosLogin: TByteField
      FieldName = 'PosLogin'
    end
    object tConfigHomePage_AddConta: TBooleanField
      FieldName = 'HomePage_AddConta'
    end
    object tConfigHomePage_Tab: TBooleanField
      FieldName = 'HomePage_Tab'
    end
    object tConfigHomePage_LastURL: TDateTimeField
      FieldName = 'HomePage_LastURL'
    end
    object tConfigHomePage_URL: TStringField
      FieldName = 'HomePage_URL'
      Size = 300
    end
    object tConfigHomePage_Params: TStringField
      FieldName = 'HomePage_Params'
      Size = 300
    end
    object tConfigSky_Params: TStringField
      FieldName = 'Sky_Params'
      Size = 300
    end
    object tConfigBanners: TnxMemoField
      FieldName = 'Banners'
      BlobType = ftMemo
    end
    object tConfigBotoes: TnxMemoField
      FieldName = 'Botoes'
      BlobType = ftMemo
    end
    object tConfigFaixaComanda: TStringField
      FieldName = 'FaixaComanda'
      Size = 100
    end
    object tConfigRecursos: TStringField
      FieldName = 'Recursos'
      Size = 30
    end
    object tConfigPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object tConfigMargem: TFloatField
      FieldName = 'Margem'
    end
    object tConfigComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tConfigValOrc_Tempo: TWordField
      FieldName = 'ValOrc_Tempo'
    end
    object tConfigValOrc_UTempo: TByteField
      FieldName = 'ValOrc_UTempo'
    end
    object tConfigEmailOrc_Enviar: TBooleanField
      FieldName = 'EmailOrc_Enviar'
    end
    object tConfigEmailOrc_FromName: TStringField
      FieldName = 'EmailOrc_FromName'
      Size = 100
    end
    object tConfigEmailOrc_FromEmail: TStringField
      FieldName = 'EmailOrc_FromEmail'
      Size = 100
    end
    object tConfigEmailOrc_Subject: TStringField
      FieldName = 'EmailOrc_Subject'
      Size = 100
    end
    object tConfigEmailOrc_Body: TnxMemoField
      FieldName = 'EmailOrc_Body'
      BlobType = ftMemo
    end
    object tConfigDocOrc_Imprimir: TBooleanField
      FieldName = 'DocOrc_Imprimir'
    end
    object tConfigDocOrc_NomeLoja: TStringField
      FieldName = 'DocOrc_NomeLoja'
      Size = 50
    end
    object tConfigObsPadraoOrcamento: TnxMemoField
      FieldName = 'ObsPadraoOrcamento'
      BlobType = ftMemo
    end
    object tConfigComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tConfigCodBarBal: TBooleanField
      FieldName = 'CodBarBal'
    end
    object tConfigCodBarBalTam: TByteField
      FieldName = 'CodBarBalTam'
    end
    object tConfigCodBarBalIdent: TStringField
      FieldName = 'CodBarBalIdent'
      Size = 5
    end
    object tConfigCodBarBalInicioCod: TByteField
      FieldName = 'CodBarBalInicioCod'
    end
    object tConfigCodBarBalTamCod: TByteField
      FieldName = 'CodBarBalTamCod'
    end
    object tConfigCodBarBalValor: TBooleanField
      FieldName = 'CodBarBalValor'
    end
    object tConfigCodBarBalPPInicio: TByteField
      FieldName = 'CodBarBalPPInicio'
    end
    object tConfigCodBarBalPPTam: TByteField
      FieldName = 'CodBarBalPPTam'
    end
    object tConfigCodBarBalPPDig: TByteField
      FieldName = 'CodBarBalPPDig'
    end
    object tConfigCodBarMaxQtdDig: TByteField
      FieldName = 'CodBarMaxQtdDig'
    end
    object tConfigCodBarArredondar: TByteField
      FieldName = 'CodBarArredondar'
    end
    object tConfigComandaOff: TBooleanField
      FieldName = 'ComandaOff'
    end
    object tConfigMesasOff: TBooleanField
      FieldName = 'MesasOff'
    end
    object tConfigConsumoAvulsoOff: TBooleanField
      FieldName = 'ConsumoAvulsoOff'
    end
    object tConfigConfirmarDebito: TBooleanField
      FieldName = 'ConfirmarDebito'
    end
    object tConfigTelaPosVenda_Mostrar: TBooleanField
      FieldName = 'TelaPosVenda_Mostrar'
    end
    object tConfigTelaPosVenda_BtnDef: TByteField
      FieldName = 'TelaPosVenda_BtnDef'
    end
    object tConfigRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tConfigDocParam_Email: TStringField
      FieldName = 'DocParam_Email'
      Size = 100
    end
    object tConfigDocParam_Tel: TStringField
      FieldName = 'DocParam_Tel'
      Size = 15
    end
    object tConfigDocParam_Tel2: TStringField
      FieldName = 'DocParam_Tel2'
      Size = 15
    end
    object tConfigDocParam_Cidade: TStringField
      FieldName = 'DocParam_Cidade'
      Size = 50
    end
    object tConfigDocParam_End: TStringField
      FieldName = 'DocParam_End'
      Size = 100
    end
    object tConfigDocParam_CEP: TStringField
      FieldName = 'DocParam_CEP'
      Size = 9
    end
    object tConfigDocParam_CNPJ: TStringField
      FieldName = 'DocParam_CNPJ'
      Size = 19
    end
    object tConfigDocParam_IE: TStringField
      FieldName = 'DocParam_IE'
      Size = 19
    end
    object tConfigDocParam_Site: TStringField
      FieldName = 'DocParam_Site'
      Size = 50
    end
    object tConfigDocParam_Facebook: TStringField
      FieldName = 'DocParam_Facebook'
      Size = 100
    end
    object tConfigDocParam_Instagram: TStringField
      FieldName = 'DocParam_Instagram'
      Size = 50
    end
    object tConfigDocParam_Whats: TStringField
      FieldName = 'DocParam_Whats'
      Size = 15
    end
    object tConfigDocParam_Whats2: TStringField
      FieldName = 'DocParam_Whats2'
      Size = 15
    end
    object tConfigDocParam_InfoExtra: TStringField
      FieldName = 'DocParam_InfoExtra'
      Size = 100
    end
    object tConfigDocParam_Logo: TGraphicField
      FieldName = 'DocParam_Logo'
      BlobType = ftGraphic
    end
    object tConfigDocParam_Logo2: TGraphicField
      FieldName = 'DocParam_Logo2'
      BlobType = ftGraphic
    end
    object tConfigUrls: TMemoField
      FieldName = 'Urls'
      BlobType = ftMemo
    end
    object tConfigExigirVendedor: TBooleanField
      FieldName = 'ExigirVendedor'
    end
    object tConfigMeioPagto: TByteField
      FieldName = 'MeioPagto'
    end
  end
  object tMaq: TnxTable
    Database = nxDB
    TableName = 'Maquina'
    IndexName = 'INumero'
    Left = 72
    Top = 136
    object tMaqNumero: TWordField
      FieldName = 'Numero'
    end
    object tMaqNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
    object tMaqMenu: TnxMemoField
      FieldName = 'Menu'
      BlobType = ftMemo
    end
    object tMaqRecursos: TnxMemoField
      FieldName = 'Recursos'
      BlobType = ftMemo
    end
    object tMaqComputerName: TStringField
      FieldName = 'ComputerName'
      Size = 200
    end
    object tMaqTipoAcesso: TIntegerField
      FieldName = 'TipoAcesso'
    end
    object tMaqEmManutencao: TBooleanField
      FieldName = 'EmManutencao'
    end
    object tMaqObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tMaqURLLogin: TnxMemoField
      FieldName = 'URLLogin'
      BlobType = ftMemo
    end
    object tMaqProgramaAtual: TnxMemoField
      FieldName = 'ProgramaAtual'
      BlobType = ftMemo
    end
    object tMaqSiteAtual: TnxMemoField
      FieldName = 'SiteAtual'
      BlobType = ftMemo
    end
    object tMaqIPConfig: TnxMemoField
      FieldName = 'IPConfig'
      BlobType = ftMemo
    end
    object tMaqIP: TStringField
      FieldName = 'IP'
      Size = 30
    end
    object tMaqMacAddress: TStringField
      FieldName = 'MacAddress'
    end
    object tMaqRAM: TLongWordField
      FieldName = 'RAM'
    end
    object tMaqCPU: TStringField
      FieldName = 'CPU'
      Size = 50
    end
    object tMaqOS: TStringField
      FieldName = 'OS'
      Size = 50
    end
    object tMaqPrinters: TnxMemoField
      FieldName = 'Printers'
      BlobType = ftMemo
    end
    object tMaqDrives: TStringField
      FieldName = 'Drives'
      Size = 25
    end
    object tMaqHDTotal: TLongWordField
      FieldName = 'HDTotal'
    end
    object tMaqHDFree: TLongWordField
      FieldName = 'HDFree'
    end
    object tMaqPatrocinio: TStringField
      FieldName = 'Patrocinio'
    end
    object tMaqDisplayH: TWordField
      FieldName = 'DisplayH'
    end
    object tMaqDisplayW: TWordField
      FieldName = 'DisplayW'
    end
    object tMaqDisplayWH: TStringField
      FieldName = 'DisplayWH'
      Size = 10
    end
    object tMaqLastScan: TDateTimeField
      FieldName = 'LastScan'
    end
    object tMaqSessionID: TLongWordField
      FieldName = 'SessionID'
    end
    object tMaqConnectTime: TDateTimeField
      FieldName = 'ConnectTime'
    end
    object tMaqAvisaFimTempo: TBooleanField
      FieldName = 'AvisaFimTempo'
    end
  end
  object tCli: TnxTable
    Database = nxDB
    BeforePost = tCliBeforePost
    TableName = 'Cliente'
    IndexName = 'IID'
    Left = 24
    Top = 296
    object tCliID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tCliCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tCliCodigoKey: TStringField
      FieldName = 'CodigoKey'
      Size = 15
    end
    object tCliNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tCliEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object tCliBairro: TStringField
      FieldName = 'Bairro'
    end
    object tCliCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object tCliUF: TStringField
      FieldName = 'UF'
      Size = 30
    end
    object tCliCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tCliSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object tCliObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tCliCpf: TStringField
      FieldName = 'Cpf'
    end
    object tCliRg: TStringField
      FieldName = 'Rg'
    end
    object tCliTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tCliEmail: TnxMemoField
      FieldName = 'Email'
      BlobType = ftMemo
    end
    object tCliPassaportes: TFloatField
      FieldName = 'Passaportes'
    end
    object tCliPai: TStringField
      FieldName = 'Pai'
      Size = 40
    end
    object tCliMae: TStringField
      FieldName = 'Mae'
      Size = 40
    end
    object tCliSenha: TStringField
      FieldName = 'Senha'
    end
    object tCliUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object tCliDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tCliEscola: TStringField
      FieldName = 'Escola'
      Size = 40
    end
    object tCliNickName: TStringField
      FieldName = 'NickName'
      Size = 30
    end
    object tCliDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object tCliCelular: TStringField
      FieldName = 'Celular'
      Size = 15
    end
    object tCliTemDebito: TBooleanField
      FieldName = 'TemDebito'
    end
    object tCliLimiteDebito: TCurrencyField
      FieldName = 'LimiteDebito'
    end
    object tCliFoto: TGraphicField
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object tCliIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tCliAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tCliIncluidoPor: TStringField
      FieldName = 'IncluidoPor'
      Size = 10
    end
    object tCliAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 10
    end
    object tCliTitEleitor: TStringField
      FieldName = 'TitEleitor'
      Size = 13
    end
    object tCliFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tCliFidTotal: TFloatField
      FieldName = 'FidTotal'
    end
    object tCliFidResg: TFloatField
      FieldName = 'FidResg'
    end
    object tCliAniversario: TStringField
      FieldName = 'Aniversario'
      Size = 4
    end
    object tCliSemFidelidade: TBooleanField
      FieldName = 'SemFidelidade'
    end
    object tCliTemCredito: TBooleanField
      FieldName = 'TemCredito'
    end
    object tCliPJuridica: TBooleanField
      FieldName = 'PJuridica'
    end
    object tCliInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tCliFornecedor: TBooleanField
      FieldName = 'Fornecedor'
    end
    object tCliValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
  end
  object tTipoAcesso: TnxTable
    Database = nxDB
    TableName = 'TipoAcesso'
    IndexName = 'IID'
    Left = 136
    Top = 248
    object tTipoAcessoID: TWordField
      FieldName = 'ID'
    end
    object tTipoAcessoNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
    object tTipoAcessoTarifaPadrao: TIntegerField
      FieldName = 'TarifaPadrao'
    end
    object tTipoAcessoHoraTarifaStr: TnxMemoField
      FieldName = 'HoraTarifaStr'
      BlobType = ftMemo
    end
  end
  object tLog: TnxTable
    Database = nxDB
    TableName = 'Log'
    IndexName = 'IProgramaMaq'
    Left = 24
    Top = 192
    object tLogID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tLogDiaHora: TDateTimeField
      FieldName = 'DiaHora'
    end
    object tLogMaquina: TWordField
      FieldName = 'Maquina'
    end
    object tLogUsuario: TStringField
      FieldName = 'Usuario'
    end
    object tLogPrograma: TByteField
      FieldName = 'Programa'
    end
    object tLogOperacao: TStringField
      FieldName = 'Operacao'
      Size = 70
    end
    object tLogHoras: TDateTimeField
      FieldName = 'Horas'
    end
    object tLogDias: TWordField
      FieldName = 'Dias'
    end
  end
  object tMovEst: TnxTable
    Database = nxDB
    OnCalcFields = tMovEstCalcFields
    TableName = 'MovEst'
    IndexName = 'ITranItem'
    Left = 216
    Top = 72
    object tMovEstFator: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Fator'
      Calculated = True
    end
    object tMovEstSaldoPost: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SaldoPost'
      Calculated = True
    end
    object tMovEstID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tMovEstTran: TLongWordField
      FieldName = 'Tran'
    end
    object tMovEstProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tMovEstQuant: TFloatField
      FieldName = 'Quant'
    end
    object tMovEstUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tMovEstTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tMovEstCustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object tMovEstItem: TByteField
      FieldName = 'Item'
    end
    object tMovEstDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tMovEstPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tMovEstPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tMovEstDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tMovEstDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tMovEstEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tMovEstCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tMovEstAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tMovEstEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object tMovEstCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tMovEstCaixa: TIntegerField
      FieldName = 'Caixa'
    end
    object tMovEstCategoria: TStringField
      FieldName = 'Categoria'
    end
    object tMovEstNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tMovEstITran: TIntegerField
      FieldName = 'ITran'
    end
    object tMovEstTipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tMovEstSessao: TIntegerField
      FieldName = 'Sessao'
    end
    object tMovEstComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tMovEstComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tMovEstComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tMovEstPermSemEstoque: TBooleanField
      FieldName = 'PermSemEstoque'
    end
    object tMovEstFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tMovEstFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tMovEstRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tMovEstID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object tMovEstIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tMovEstPend: TBooleanField
      FieldName = 'Pend'
    end
    object tMovEstUnitarioLiq: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'UnitarioLiq'
      Calculated = True
    end
  end
  object tCaixa: TnxTable
    Database = nxDB
    TableName = 'Caixa'
    IndexName = 'IAberto'
    Left = 328
    Top = 192
    object tCaixaID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tCaixaIDLivre: TStringField
      FieldName = 'IDLivre'
      Size = 10
    end
    object tCaixaAberto: TBooleanField
      FieldName = 'Aberto'
    end
    object tCaixaUsuario: TStringField
      FieldName = 'Usuario'
    end
    object tCaixaAbertura: TDateTimeField
      FieldName = 'Abertura'
    end
    object tCaixaFechamento: TDateTimeField
      FieldName = 'Fechamento'
    end
    object tCaixaReproc: TDateTimeField
      FieldName = 'Reproc'
    end
    object tCaixaTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tCaixaDescontos: TCurrencyField
      FieldName = 'Descontos'
    end
    object tCaixaCancelamentos: TCurrencyField
      FieldName = 'Cancelamentos'
    end
    object tCaixaSangria: TCurrencyField
      FieldName = 'Sangria'
    end
    object tCaixaSupr: TCurrencyField
      FieldName = 'Supr'
    end
    object tCaixaSaldoAnt: TCurrencyField
      FieldName = 'SaldoAnt'
    end
    object tCaixaObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tCaixaEstSessoesQtd: TIntegerField
      FieldName = 'EstSessoesQtd'
    end
    object tCaixaEstSessoesTempo: TFloatField
      FieldName = 'EstSessoesTempo'
    end
    object tCaixaEstUrls: TIntegerField
      FieldName = 'EstUrls'
    end
    object tCaixaEstSyncOk: TBooleanField
      FieldName = 'EstSyncOk'
    end
    object tCaixaEstBuscasEng: TnxMemoField
      FieldName = 'EstBuscasEng'
      BlobType = ftMemo
    end
    object tCaixaEstRes: TnxMemoField
      FieldName = 'EstRes'
      BlobType = ftMemo
    end
    object tCaixaSaldoF: TCurrencyField
      FieldName = 'SaldoF'
    end
    object tCaixaQuebra: TCurrencyField
      FieldName = 'Quebra'
    end
    object tCaixaRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tProduto: TnxTable
    Database = nxDB
    TableName = 'Produto'
    IndexName = 'IID'
    Left = 168
    Top = 72
    object tProdutoID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tProdutoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tProdutoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tProdutoUnid: TStringField
      FieldName = 'Unid'
      Size = 5
    end
    object tProdutoPreco: TCurrencyField
      FieldName = 'Preco'
    end
    object tProdutoPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object tProdutoMargem: TFloatField
      FieldName = 'Margem'
    end
    object tProdutoObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tProdutoImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tProdutoCategoria: TStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object tProdutoFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tProdutoSubCateg: TStringField
      FieldName = 'SubCateg'
      Size = 35
    end
    object tProdutoCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
    end
    object tProdutoPodeAlterarPreco: TBooleanField
      FieldName = 'PodeAlterarPreco'
    end
    object tProdutoPermiteVendaFracionada: TBooleanField
      FieldName = 'PermiteVendaFracionada'
    end
    object tProdutoNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tProdutoEstoqueMin: TExtendedField
      FieldName = 'EstoqueMin'
      Precision = 19
    end
    object tProdutoEstoqueMax: TExtendedField
      FieldName = 'EstoqueMax'
      Precision = 19
    end
    object tProdutoAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object tProdutoAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
    end
    object tProdutoEstoqueRepor: TExtendedField
      FieldName = 'EstoqueRepor'
      Precision = 19
    end
    object tProdutoComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tProdutoComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tProdutoAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object tProdutoFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object tProdutoFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object tProdutoCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object tProdutoIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tProdutoEstoqueAtual: TExtendedField
      FieldName = 'EstoqueAtual'
      Precision = 19
    end
    object tProdutoEstoquePend: TExtendedField
      FieldName = 'EstoquePend'
      Precision = 19
    end
    object tProdutoEstoqueTot: TExtendedField
      FieldName = 'EstoqueTot'
      Precision = 19
    end
    object tProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object tProdutoNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object tProdutobrtrib: TWordField
      FieldName = 'brtrib'
    end
  end
  object tHPass: TnxTable
    Database = nxDB
    TableName = 'HPass'
    IndexName = 'ISessaoPass'
    Left = 120
    Top = 136
    object tHPassID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tHPassPassaporte: TLongWordField
      FieldName = 'Passaporte'
    end
    object tHPassSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tHPassDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tHPassCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tHPassMinutosAnt: TFloatField
      FieldName = 'MinutosAnt'
    end
    object tHPassMinutosUsados: TFloatField
      FieldName = 'MinutosUsados'
    end
    object tHPassExpirou: TBooleanField
      FieldName = 'Expirou'
    end
  end
  object tCred: TnxTable
    Database = nxDB
    TableName = 'Credito'
    IndexName = 'IID'
    Left = 168
    Top = 136
    object tCredID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tCredDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tCredFunc: TStringField
      FieldName = 'Func'
    end
    object tCredAdicionar: TBooleanField
      FieldName = 'Adicionar'
    end
    object tCredTran: TLongWordField
      FieldName = 'Tran'
    end
    object tCredCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tCredCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tCredCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tCredValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tCredFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tCredFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tCredRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tSessao: TnxTable
    Database = nxDB
    TableName = 'Sessao'
    IndexName = 'IID'
    Left = 200
    Top = 248
    object tSessaoID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tSessaoInicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object tSessaoTermino: TDateTimeField
      FieldName = 'Termino'
    end
    object tSessaoMinutosR: TFloatField
      FieldName = 'MinutosR'
    end
    object tSessaoMinutosC: TFloatField
      FieldName = 'MinutosC'
    end
    object tSessaoMaq: TWordField
      FieldName = 'Maq'
    end
    object tSessaoMaqI: TWordField
      FieldName = 'MaqI'
    end
    object tSessaoEncerrou: TBooleanField
      FieldName = 'Encerrou'
    end
    object tSessaoCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tSessaoTransfMaq: TBooleanField
      FieldName = 'TransfMaq'
    end
    object tSessaoTipoCli: TByteField
      FieldName = 'TipoCli'
    end
    object tSessaoCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tSessaoTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tSessaoDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tSessaoPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tSessaoDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tSessaoPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tSessaoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tSessaoFuncI: TStringField
      FieldName = 'FuncI'
      Size = 30
    end
    object tSessaoFuncF: TStringField
      FieldName = 'FuncF'
      Size = 30
    end
    object tSessaoObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tSessaoTipoAcesso: TIntegerField
      FieldName = 'TipoAcesso'
    end
    object tSessaoCaixaI: TLongWordField
      FieldName = 'CaixaI'
    end
    object tSessaoCaixaF: TLongWordField
      FieldName = 'CaixaF'
    end
    object tSessaoTicksI: TIntegerField
      FieldName = 'TicksI'
    end
    object tSessaoPausado: TBooleanField
      FieldName = 'Pausado'
    end
    object tSessaoInicioPausa: TLongWordField
      FieldName = 'InicioPausa'
    end
    object tSessaoMinTicksUsados: TLongWordField
      FieldName = 'MinTicksUsados'
    end
    object tSessaoMinTicksTotal: TLongWordField
      FieldName = 'MinTicksTotal'
    end
    object tSessaoFimTicksUsados: TLongWordField
      FieldName = 'FimTicksUsados'
    end
    object tSessaoFimTicksTotal: TLongWordField
      FieldName = 'FimTicksTotal'
    end
    object tSessaoStrPausas: TnxMemoField
      FieldName = 'StrPausas'
      BlobType = ftMemo
    end
    object tSessaoStrTransfMaq: TnxMemoField
      FieldName = 'StrTransfMaq'
      BlobType = ftMemo
    end
    object tSessaoStrFechamentoCaixa: TnxMemoField
      FieldName = 'StrFechamentoCaixa'
      BlobType = ftMemo
    end
    object tSessaoMinutosCli: TExtendedField
      FieldName = 'MinutosCli'
      Precision = 19
    end
    object tSessaoMinutosPrev: TExtendedField
      FieldName = 'MinutosPrev'
      Precision = 19
    end
    object tSessaoMinutosMax: TExtendedField
      FieldName = 'MinutosMax'
      Precision = 19
    end
    object tSessaoMinutosCliU: TExtendedField
      FieldName = 'MinutosCliU'
      Precision = 19
    end
    object tSessaoValorCli: TCurrencyField
      FieldName = 'ValorCli'
    end
    object tSessaoValorCliU: TExtendedField
      FieldName = 'ValorCliU'
      Precision = 19
    end
    object tSessaoTranI: TIntegerField
      FieldName = 'TranI'
    end
    object tSessaoTranF: TIntegerField
      FieldName = 'TranF'
    end
    object tSessaoPermitirDownload: TBooleanField
      FieldName = 'PermitirDownload'
    end
    object tSessaoPermitirDownloadExe: TBooleanField
      FieldName = 'PermitirDownloadExe'
    end
    object tSessaoFiltrarWEB: TBooleanField
      FieldName = 'FiltrarWEB'
    end
    object tSessaoVersaoRegistro: TLongWordField
      FieldName = 'VersaoRegistro'
    end
    object tSessaoIPs: TnxMemoField
      FieldName = 'IPs'
      BlobType = ftMemo
    end
    object tSessaoDesktopSinc: TBooleanField
      FieldName = 'DesktopSinc'
    end
    object tSessaoCartaoTempo: TBooleanField
      FieldName = 'CartaoTempo'
    end
    object tSessaoHP1: TIntegerField
      FieldName = 'HP1'
    end
    object tSessaoHP2: TIntegerField
      FieldName = 'HP2'
    end
    object tSessaoHP3: TIntegerField
      FieldName = 'HP3'
    end
    object tSessaoHP4: TIntegerField
      FieldName = 'HP4'
    end
    object tSessaoHP5: TIntegerField
      FieldName = 'HP5'
    end
    object tSessaoHP6: TIntegerField
      FieldName = 'HP6'
    end
    object tSessaoHP7: TIntegerField
      FieldName = 'HP7'
    end
    object tSessaoDisableAD: TBooleanField
      FieldName = 'DisableAD'
    end
    object tSessaoJobID: TLongWordField
      FieldName = 'JobID'
    end
    object tSessaoJobPages: TWordField
      FieldName = 'JobPages'
    end
    object tSessaoTipoMaq: TByteField
      FieldName = 'TipoMaq'
    end
    object tSessaoRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tHCred: TnxTable
    Database = nxDB
    TableName = 'HCred'
    IndexName = 'IID'
    Left = 272
    Top = 192
    object tHCredID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tHCredDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tHCredTipo: TByteField
      FieldName = 'Tipo'
    end
    object tHCredCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tHCredSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tHCredTran: TLongWordField
      FieldName = 'Tran'
    end
    object tHCredSaldoAnt: TFloatField
      FieldName = 'SaldoAnt'
    end
    object tHCredQuant: TFloatField
      FieldName = 'Quant'
    end
    object tHCredRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tPassaporte: TnxTable
    Database = nxDB
    TableName = 'Passaporte'
    IndexName = 'IID'
    Left = 72
    Top = 192
    object tPassaporteID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tPassaporteNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tPassaporteTipoPass: TIntegerField
      FieldName = 'TipoPass'
    end
    object tPassaporteCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object tPassaporteExpirou: TBooleanField
      FieldName = 'Expirou'
    end
    object tPassaporteSenha: TStringField
      FieldName = 'Senha'
    end
    object tPassaportePrimeiroUso: TDateTimeField
      FieldName = 'PrimeiroUso'
    end
    object tPassaporteTipoAcesso: TIntegerField
      FieldName = 'TipoAcesso'
    end
    object tPassaporteTipoExp: TByteField
      FieldName = 'TipoExp'
    end
    object tPassaporteExpirarEm: TDateTimeField
      FieldName = 'ExpirarEm'
    end
    object tPassaporteMaxSegundos: TLongWordField
      FieldName = 'MaxSegundos'
    end
    object tPassaporteSegundos: TLongWordField
      FieldName = 'Segundos'
    end
    object tPassaporteAcessos: TLongWordField
      FieldName = 'Acessos'
    end
    object tPassaporteDia1: TLongWordField
      FieldName = 'Dia1'
    end
    object tPassaporteDia2: TLongWordField
      FieldName = 'Dia2'
    end
    object tPassaporteDia3: TLongWordField
      FieldName = 'Dia3'
    end
    object tPassaporteDia4: TLongWordField
      FieldName = 'Dia4'
    end
    object tPassaporteDia5: TLongWordField
      FieldName = 'Dia5'
    end
    object tPassaporteDia6: TLongWordField
      FieldName = 'Dia6'
    end
    object tPassaporteDia7: TLongWordField
      FieldName = 'Dia7'
    end
    object tPassaporteTran: TLongWordField
      FieldName = 'Tran'
    end
    object tPassaporteDataCompra: TDateTimeField
      FieldName = 'DataCompra'
    end
    object tPassaporteCartao: TBooleanField
      FieldName = 'Cartao'
    end
    object tPassaporteValido: TBooleanField
      FieldName = 'Valido'
    end
    object tPassaporteValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tPassaporteSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tPassaporteRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tTipoPass: TnxTable
    Database = nxDB
    TableName = 'TipoPass'
    IndexName = 'IID'
    Left = 200
    Top = 296
    object tTipoPassID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tTipoPassNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tTipoPassValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tTipoPassTipoAcesso: TIntegerField
      FieldName = 'TipoAcesso'
    end
    object tTipoPassTipoExp: TByteField
      FieldName = 'TipoExp'
    end
    object tTipoPassExpirarEm: TDateTimeField
      FieldName = 'ExpirarEm'
    end
    object tTipoPassMaxSegundos: TLongWordField
      FieldName = 'MaxSegundos'
    end
    object tTipoPassObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tTipoPassDia1: TLongWordField
      FieldName = 'Dia1'
    end
    object tTipoPassDia2: TLongWordField
      FieldName = 'Dia2'
    end
    object tTipoPassDia3: TLongWordField
      FieldName = 'Dia3'
    end
    object tTipoPassDia4: TLongWordField
      FieldName = 'Dia4'
    end
    object tTipoPassDia5: TLongWordField
      FieldName = 'Dia5'
    end
    object tTipoPassDia6: TLongWordField
      FieldName = 'Dia6'
    end
    object tTipoPassDia7: TLongWordField
      FieldName = 'Dia7'
    end
    object tTipoPassFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object tTipoPassFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
  end
  object tAuxITran: TnxTable
    Database = nxDB
    OnCalcFields = tAuxITranCalcFields
    TableName = 'ITran'
    IndexName = 'IID'
    Left = 272
    Top = 72
    object tAuxITranDebito: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Debito'
      Calculated = True
    end
    object tAuxITranID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tAuxITranTran: TLongWordField
      FieldName = 'Tran'
    end
    object tAuxITranCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tAuxITranCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object tAuxITranCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tAuxITranSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tAuxITranDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tAuxITranTipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tAuxITranTipoItem: TByteField
      FieldName = 'TipoItem'
    end
    object tAuxITranSubTipo: TByteField
      FieldName = 'SubTipo'
    end
    object tAuxITranItemID: TLongWordField
      FieldName = 'ItemID'
    end
    object tAuxITranSubItemID: TLongWordField
      FieldName = 'SubItemID'
    end
    object tAuxITranItemPos: TByteField
      FieldName = 'ItemPos'
    end
    object tAuxITranTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tAuxITranDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tAuxITranTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tAuxITranPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tAuxITranCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tAuxITranPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tAuxITranFidFator: TShortintField
      FieldName = 'FidFator'
    end
    object tAuxITranFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tAuxITranFidMov: TBooleanField
      FieldName = 'FidMov'
    end
    object tAuxITranFidOpe: TByteField
      FieldName = 'FidOpe'
    end
  end
  object tAuxME: TnxTable
    Database = nxDB
    OnCalcFields = tAuxMECalcFields
    TableName = 'MovEst'
    IndexName = 'IProduto'
    Left = 216
    Top = 136
    object tAuxMEFator: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Fator'
      Calculated = True
    end
    object tAuxMESaldoPost: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SaldoPost'
      Calculated = True
    end
    object tAuxMEID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tAuxMETran: TLongWordField
      FieldName = 'Tran'
    end
    object tAuxMEProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tAuxMEQuant: TFloatField
      FieldName = 'Quant'
    end
    object tAuxMEUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tAuxMETotal: TCurrencyField
      FieldName = 'Total'
    end
    object tAuxMECustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object tAuxMEItem: TByteField
      FieldName = 'Item'
    end
    object tAuxMEDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tAuxMEPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tAuxMEPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tAuxMEDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tAuxMEDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tAuxMEEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tAuxMECancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tAuxMEAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tAuxMEEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object tAuxMECliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tAuxMECaixa: TIntegerField
      FieldName = 'Caixa'
    end
    object tAuxMECategoria: TStringField
      FieldName = 'Categoria'
    end
    object tAuxMENaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tAuxMEITran: TIntegerField
      FieldName = 'ITran'
    end
    object tAuxMETipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tAuxMESessao: TIntegerField
      FieldName = 'Sessao'
    end
    object tAuxMEComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tAuxMEComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tAuxMEComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tAuxMEPermSemEstoque: TBooleanField
      FieldName = 'PermSemEstoque'
    end
    object tAuxMEFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tAuxMEFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tAuxMERecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tAuxMEID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object tAuxMEIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tAuxMEPend: TBooleanField
      FieldName = 'Pend'
    end
  end
  object tDebito: TnxTable
    Database = nxDB
    TableName = 'Debito'
    IndexName = 'ITipoID'
    Left = 24
    Top = 248
    object tDebitoData: TDateTimeField
      FieldName = 'Data'
    end
    object tDebitoCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tDebitoValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tDebitoTipo: TByteField
      FieldName = 'Tipo'
    end
    object tDebitoID: TLongWordField
      FieldName = 'ID'
    end
  end
  object nxRSE: TnxRemoteServerEngine
    Transport = nxTCPIP
    Left = 120
    Top = 16
  end
  object nxTCPIP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 168
    Top = 16
  end
  object tOcupacao: TnxTable
    Database = nxDB
    TableName = 'Ocupacao'
    IndexName = 'ISessao'
    Left = 264
    Top = 248
    object tOcupacaoID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tOcupacaoSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tOcupacaoMaq: TLongWordField
      FieldName = 'Maq'
    end
    object tOcupacaoData: TDateField
      FieldName = 'Data'
    end
    object tOcupacaoHora: TByteField
      FieldName = 'Hora'
    end
    object tOcupacaoCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tOcupacaoFunc: TStringField
      FieldName = 'Func'
    end
    object tOcupacaoTipoCli: TByteField
      FieldName = 'TipoCli'
    end
    object tOcupacaoMinutosU: TFloatField
      FieldName = 'MinutosU'
    end
    object tOcupacaoMinutosP: TFloatField
      FieldName = 'MinutosP'
    end
    object tOcupacaoCaixa: TLongWordField
      FieldName = 'Caixa'
    end
  end
  object tEsp: TnxTable
    Database = nxDB
    TableName = 'Espera'
    IndexName = 'IID'
    Left = 323
    Top = 72
    object tEspID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tEspPos: TIntegerField
      FieldName = 'Pos'
    end
    object tEspCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object tEspNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tEspDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tEspPrevisao: TDateTimeField
      FieldName = 'Previsao'
    end
    object tEspPrevMaq: TWordField
      FieldName = 'PrevMaq'
    end
    object tEspPrevSessao: TIntegerField
      FieldName = 'PrevSessao'
    end
    object tEspObs: TStringField
      FieldName = 'Obs'
      Size = 50
    end
    object tEspCartao: TStringField
      FieldName = 'Cartao'
    end
  end
  object qAux: TnxQuery
    Database = nxDB
    Timeout = 240000
    Left = 216
    Top = 16
  end
  object tSessaoCli: TnxTable
    Database = nxDB
    TableName = 'Sessao'
    IndexName = 'IEncerrouCli'
    Left = 136
    Top = 192
    object tSessaoCliID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tSessaoCliInicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object tSessaoCliTermino: TDateTimeField
      FieldName = 'Termino'
    end
    object tSessaoCliMinutosR: TFloatField
      FieldName = 'MinutosR'
    end
    object tSessaoCliMinutosC: TFloatField
      FieldName = 'MinutosC'
    end
    object tSessaoCliMaq: TWordField
      FieldName = 'Maq'
    end
    object tSessaoCliMaqI: TWordField
      FieldName = 'MaqI'
    end
    object tSessaoCliEncerrou: TBooleanField
      FieldName = 'Encerrou'
    end
    object tSessaoCliCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tSessaoCliTransfMaq: TBooleanField
      FieldName = 'TransfMaq'
    end
    object tSessaoCliTipoCli: TByteField
      FieldName = 'TipoCli'
    end
    object tSessaoCliCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tSessaoCliTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tSessaoCliDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tSessaoCliPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tSessaoCliDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tSessaoCliPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tSessaoCliNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tSessaoCliFuncI: TStringField
      FieldName = 'FuncI'
      Size = 30
    end
    object tSessaoCliFuncF: TStringField
      FieldName = 'FuncF'
      Size = 30
    end
    object tSessaoCliObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tSessaoCliTipoAcesso: TIntegerField
      FieldName = 'TipoAcesso'
    end
    object tSessaoCliCaixaI: TLongWordField
      FieldName = 'CaixaI'
    end
    object tSessaoCliCaixaF: TLongWordField
      FieldName = 'CaixaF'
    end
    object tSessaoCliTicksI: TIntegerField
      FieldName = 'TicksI'
    end
    object tSessaoCliPausado: TBooleanField
      FieldName = 'Pausado'
    end
    object tSessaoCliInicioPausa: TLongWordField
      FieldName = 'InicioPausa'
    end
    object tSessaoCliMinTicksUsados: TLongWordField
      FieldName = 'MinTicksUsados'
    end
    object tSessaoCliMinTicksTotal: TLongWordField
      FieldName = 'MinTicksTotal'
    end
    object tSessaoCliFimTicksUsados: TLongWordField
      FieldName = 'FimTicksUsados'
    end
    object tSessaoCliFimTicksTotal: TLongWordField
      FieldName = 'FimTicksTotal'
    end
    object tSessaoCliStrPausas: TnxMemoField
      FieldName = 'StrPausas'
      BlobType = ftMemo
    end
    object tSessaoCliStrTransfMaq: TnxMemoField
      FieldName = 'StrTransfMaq'
      BlobType = ftMemo
    end
    object tSessaoCliStrFechamentoCaixa: TnxMemoField
      FieldName = 'StrFechamentoCaixa'
      BlobType = ftMemo
    end
    object tSessaoCliMinutosCli: TExtendedField
      FieldName = 'MinutosCli'
      Precision = 19
    end
    object tSessaoCliMinutosPrev: TExtendedField
      FieldName = 'MinutosPrev'
      Precision = 19
    end
    object tSessaoCliMinutosMax: TExtendedField
      FieldName = 'MinutosMax'
      Precision = 19
    end
    object tSessaoCliMinutosCliU: TExtendedField
      FieldName = 'MinutosCliU'
      Precision = 19
    end
    object tSessaoCliValorCli: TCurrencyField
      FieldName = 'ValorCli'
    end
    object tSessaoCliValorCliU: TExtendedField
      FieldName = 'ValorCliU'
      Precision = 19
    end
    object tSessaoCliTranI: TIntegerField
      FieldName = 'TranI'
    end
    object tSessaoCliTranF: TIntegerField
      FieldName = 'TranF'
    end
    object tSessaoCliPermitirDownload: TBooleanField
      FieldName = 'PermitirDownload'
    end
    object tSessaoCliPermitirDownloadExe: TBooleanField
      FieldName = 'PermitirDownloadExe'
    end
    object tSessaoCliFiltrarWEB: TBooleanField
      FieldName = 'FiltrarWEB'
    end
    object tSessaoCliVersaoRegistro: TLongWordField
      FieldName = 'VersaoRegistro'
    end
    object tSessaoCliIPs: TnxMemoField
      FieldName = 'IPs'
      BlobType = ftMemo
    end
    object tSessaoCliDesktopSinc: TBooleanField
      FieldName = 'DesktopSinc'
    end
    object tSessaoCliCartaoTempo: TBooleanField
      FieldName = 'CartaoTempo'
    end
    object tSessaoCliHP1: TIntegerField
      FieldName = 'HP1'
    end
    object tSessaoCliHP2: TIntegerField
      FieldName = 'HP2'
    end
    object tSessaoCliHP3: TIntegerField
      FieldName = 'HP3'
    end
    object tSessaoCliHP4: TIntegerField
      FieldName = 'HP4'
    end
    object tSessaoCliHP5: TIntegerField
      FieldName = 'HP5'
    end
    object tSessaoCliHP6: TIntegerField
      FieldName = 'HP6'
    end
    object tSessaoCliHP7: TIntegerField
      FieldName = 'HP7'
    end
    object tSessaoCliDisableAD: TBooleanField
      FieldName = 'DisableAD'
    end
    object tSessaoCliJobID: TLongWordField
      FieldName = 'JobID'
    end
    object tSessaoCliJobPages: TWordField
      FieldName = 'JobPages'
    end
    object tSessaoCliTipoMaq: TByteField
      FieldName = 'TipoMaq'
    end
    object tSessaoCliRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tMsgCli: TnxTable
    Database = nxDB
    TableName = 'MsgCli'
    IndexName = 'IClienteID'
    Left = 328
    Top = 248
    object tMsgCliID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tMsgCliCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tMsgCliTitulo: TStringField
      FieldName = 'Titulo'
      Size = 50
    end
    object tMsgCliTexto: TnxMemoField
      FieldName = 'Texto'
      BlobType = ftMemo
    end
    object tMsgCliRef: TLongWordField
      FieldName = 'Ref'
    end
  end
  object tIC: TnxTable
    Database = nxDB
    TableName = 'infoCampanha'
    IndexName = 'IIP'
    Left = 72
    Top = 248
    object tICIP: TStringField
      FieldName = 'IP'
      Size = 15
    end
    object tICcampanha: TStringField
      FieldName = 'campanha'
      Size = 50
    end
    object tICutmccn: TStringField
      FieldName = 'utmccn'
      Size = 250
    end
    object tICutmctr: TStringField
      FieldName = 'utmctr'
      Size = 250
    end
    object tICutmcct: TStringField
      FieldName = 'utmcct'
      Size = 250
    end
    object tICutmcmd: TStringField
      FieldName = 'utmcmd'
      Size = 250
    end
    object tICutmcsr: TStringField
      FieldName = 'utmcsr'
      Size = 250
    end
  end
  object H: TIdHTTP
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 280
    Top = 24
  end
  object tEspecie: TnxTable
    Database = nxDB
    TableName = 'Especie'
    IndexName = 'IID'
    Left = 80
    Top = 296
    object tEspecieID: TWordField
      FieldName = 'ID'
    end
    object tEspecieTipo: TByteField
      FieldName = 'Tipo'
    end
    object tEspecieNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tEspeciePermiteTroco: TBooleanField
      FieldName = 'PermiteTroco'
    end
    object tEspeciePermiteVarios: TBooleanField
      FieldName = 'PermiteVarios'
    end
    object tEspeciePermiteCred: TBooleanField
      FieldName = 'PermiteCred'
    end
    object tEspecieImg: TWordField
      FieldName = 'Img'
    end
    object tEspecieRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tEspecieTipoPagNFE: TByteField
      FieldName = 'TipoPagNFE'
    end
  end
  object tPagEsp: TnxTable
    Database = nxDB
    TableName = 'PagEspecies'
    IndexName = 'IID'
    Left = 136
    Top = 296
    object tPagEspID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tPagEspCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tPagEspDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tPagEspTran: TLongWordField
      FieldName = 'Tran'
    end
    object tPagEspEspecie: TWordField
      FieldName = 'Especie'
    end
    object tPagEspTipo: TByteField
      FieldName = 'Tipo'
    end
    object tPagEspValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tPagEspTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object tPagEspDoc: TStringField
      FieldName = 'Doc'
      Size = 50
    end
    object tPagEspCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tPagEspDevolucao: TBooleanField
      FieldName = 'Devolucao'
    end
  end
  object tAuxTran: TnxTable
    Database = nxDB
    TableName = 'Tran'
    IndexName = 'IID'
    Left = 328
    Top = 136
    object tAuxTranID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tAuxTranUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tAuxTranDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tAuxTranCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tAuxTranTipo: TByteField
      FieldName = 'Tipo'
    end
    object tAuxTranFunc: TStringField
      FieldName = 'Func'
    end
    object tAuxTranTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tAuxTranDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tAuxTranDescPerc: TFloatField
      FieldName = 'DescPerc'
    end
    object tAuxTranDescPorPerc: TBooleanField
      FieldName = 'DescPorPerc'
    end
    object tAuxTranTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tAuxTranPagEsp: TWordField
      FieldName = 'PagEsp'
    end
    object tAuxTranPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tAuxTranDebitoAnt: TCurrencyField
      FieldName = 'DebitoAnt'
    end
    object tAuxTranDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tAuxTranDebitoPago: TCurrencyField
      FieldName = 'DebitoPago'
    end
    object tAuxTranCreditoAnt: TCurrencyField
      FieldName = 'CreditoAnt'
    end
    object tAuxTranCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object tAuxTranCreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object tAuxTranTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object tAuxTranObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tAuxTranCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tAuxTranCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tAuxTranCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tAuxTranCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tAuxTranCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object tAuxTranMaq: TWordField
      FieldName = 'Maq'
    end
    object tAuxTranNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tAuxTranSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tAuxTranDescr: TStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tAuxTranQtdTempo: TFloatField
      FieldName = 'QtdTempo'
    end
    object tAuxTranCredValor: TBooleanField
      FieldName = 'CredValor'
    end
    object tAuxTranFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tAuxTranPagFunc: TStringField
      FieldName = 'PagFunc'
    end
    object tAuxTranPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tAuxTranRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tAuxTranUID_ref: TGuidField
      FieldName = 'UID_ref'
      Size = 38
    end
    object tAuxTranOpDevValor: TByteField
      FieldName = 'OpDevValor'
    end
    object tAuxTranIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tAuxTranStatusNFE: TByteField
      FieldName = 'StatusNFE'
    end
    object tAuxTranChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object tAuxTranTipoNFE: TByteField
      FieldName = 'TipoNFE'
    end
    object tAuxTranExtra: TnxMemoField
      FieldName = 'Extra'
      BlobType = ftMemo
    end
    object tAuxTranAmbNFe: TByteField
      FieldName = 'AmbNFe'
    end
    object tAuxTranStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
  end
  object tOrc: TnxTable
    Database = nxDB
    TableName = 'Orcamento'
    IndexName = 'IStatusValData'
    Left = 376
    Top = 72
    object tOrcUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tOrcIDSeq: TUnsignedAutoIncField
      FieldName = 'IDSeq'
    end
    object tOrcCriadoEm: TDateTimeField
      FieldName = 'CriadoEm'
    end
    object tOrcStatus: TByteField
      FieldName = 'Status'
    end
    object tOrcAtualizadoEm: TDateTimeField
      FieldName = 'AtualizadoEm'
    end
    object tOrcAprovadoEm: TDateTimeField
      FieldName = 'AprovadoEm'
    end
    object tOrcRecusadoEm: TDateTimeField
      FieldName = 'RecusadoEm'
    end
    object tOrcVendidoEm: TDateTimeField
      FieldName = 'VendidoEm'
    end
    object tOrcExpiradoEm: TDateTimeField
      FieldName = 'ExpiradoEm'
    end
    object tOrcStatusAlteradoEm: TDateTimeField
      FieldName = 'StatusAlteradoEm'
    end
    object tOrcFunc: TStringField
      FieldName = 'Func'
    end
    object tOrcIDVenda: TLongWordField
      FieldName = 'IDVenda'
    end
    object tOrcCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tOrcTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tOrcDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tOrcTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tOrcVendido: TBooleanField
      FieldName = 'Vendido'
    end
    object tOrcValData: TDateTimeField
      FieldName = 'ValData'
    end
    object tOrcValModo: TByteField
      FieldName = 'ValModo'
    end
    object tOrcValTempo: TWordField
      FieldName = 'ValTempo'
    end
    object tOrcValUTempo: TByteField
      FieldName = 'ValUTempo'
    end
    object tOrcObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
  end
  object tSysLog: TnxTable
    Database = nxDB
    TableName = 'syslog'
    IndexName = 'IInfo'
    Left = 200
    Top = 192
    object tSysLogID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tSysLogDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tSysLogInfo: TStringField
      FieldName = 'Info'
      Size = 30
    end
  end
  object mtDeb: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.65.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 264
    Top = 304
    object mtDebData: TDateTimeField
      FieldName = 'Data'
    end
    object mtDebValor: TCurrencyField
      FieldName = 'Valor'
    end
    object mtDebID: TLongWordField
      FieldName = 'ID'
    end
  end
  object tNFConfig: TnxTable
    Database = nxDB
    TableName = 'NFCONFIG'
    Left = 424
    Top = 264
    object tNFConfigEmitirNFCe: TBooleanField
      FieldName = 'EmitirNFCe'
    end
    object tNFConfigEmitirNFE: TBooleanField
      FieldName = 'EmitirNFE'
    end
    object tNFConfigCertificadoDig: TStringField
      FieldName = 'CertificadoDig'
      Size = 300
    end
    object tNFConfigAutoPrintNFCe: TBooleanField
      FieldName = 'AutoPrintNFCe'
    end
    object tNFConfigCRT: TByteField
      FieldName = 'CRT'
    end
    object tNFConfigNCM_Padrao: TStringField
      FieldName = 'NCM_Padrao'
      Size = 8
    end
    object tNFConfigMostrarDadosNFE: TBooleanField
      FieldName = 'MostrarDadosNFE'
    end
    object tNFConfigModeloNFE: TStringField
      FieldName = 'ModeloNFE'
      Size = 5
    end
    object tNFConfigModeloNFCe: TStringField
      FieldName = 'ModeloNFCe'
      Size = 5
    end
    object tNFConfigSerieNFCe: TStringField
      FieldName = 'SerieNFCe'
      Size = 5
    end
    object tNFConfigSerieNFe: TStringField
      FieldName = 'SerieNFe'
      Size = 5
    end
    object tNFConfigInicioNFe: TLongWordField
      FieldName = 'InicioNFe'
    end
    object tNFConfigInicioNFCe: TLongWordField
      FieldName = 'InicioNFCe'
    end
    object tNFConfigRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Size = 100
    end
    object tNFConfigNomeFantasia: TStringField
      FieldName = 'NomeFantasia'
      Size = 50
    end
    object tNFConfigCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object tNFConfigIE: TStringField
      FieldName = 'IE'
    end
    object tNFConfigEnd_Logradouro: TStringField
      FieldName = 'End_Logradouro'
      Size = 100
    end
    object tNFConfigEnd_Numero: TStringField
      FieldName = 'End_Numero'
      Size = 10
    end
    object tNFConfigEnd_Bairro: TStringField
      FieldName = 'End_Bairro'
      Size = 40
    end
    object tNFConfigEnd_UF: TStringField
      FieldName = 'End_UF'
      Size = 2
    end
    object tNFConfigEnd_CEP: TStringField
      FieldName = 'End_CEP'
      Size = 9
    end
    object tNFConfigEnd_Municipio: TStringField
      FieldName = 'End_Municipio'
      Size = 50
    end
    object tNFConfigEnd_CodMun: TStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object tNFConfigEnd_CodUF: TByteField
      FieldName = 'End_CodUF'
    end
    object tNFConfigTelefone: TStringField
      FieldName = 'Telefone'
    end
    object tNFConfigtpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object tNFConfigCSC: TStringField
      FieldName = 'CSC'
      Size = 100
    end
    object tNFConfigIdCSC: TStringField
      FieldName = 'IdCSC'
      Size = 10
    end
    object tNFConfigFromEmail: TStringField
      FieldName = 'FromEmail'
      Size = 100
    end
    object tNFConfigFromName: TStringField
      FieldName = 'FromName'
      Size = 50
    end
    object tNFConfigTrib_Padrao: TWordField
      FieldName = 'Trib_Padrao'
    end
    object tNFConfigPedirEmail: TByteField
      FieldName = 'PedirEmail'
    end
    object tNFConfigPedirCPF: TByteField
      FieldName = 'PedirCPF'
    end
    object tNFConfigEnd_Complemento: TStringField
      FieldName = 'End_Complemento'
    end
    object tNFConfigModeloNFCe_Email: TGuidField
      FieldName = 'ModeloNFCe_Email'
      Size = 38
    end
    object tNFConfigTipoCert: TByteField
      FieldName = 'TipoCert'
    end
    object tNFConfigUrls_Consulta: TnxMemoField
      FieldName = 'urls_consulta'
      BlobType = ftMemo
    end
    object tNFConfigUrls_qrcode_hom: TnxMemoField
      FieldName = 'urls_qrcode_hom'
      BlobType = ftMemo
    end
    object tNFConfigUrls_qrcode_prod: TnxMemoField
      FieldName = 'urls_qrcode_prod'
      BlobType = ftMemo
    end
    object tNFConfigAssuntoEmail: TStringField
      FieldName = 'AssuntoEmail'
      Size = 100
    end
    object tNFConfigRemoverNFCe: TBooleanField
      FieldName = 'RemoverNFCe'
    end
    object tNFConfigDependNFCEOk: TBooleanField
      FieldName = 'DependNFCEOk'
    end
    object tNFConfigCorpoEmail: TnxMemoField
      FieldName = 'CorpoEmail'
      BlobType = ftMemo
    end
    object tNFConfigPinCert: TStringField
      FieldName = 'PinCert'
      Size = 50
    end
  end
  object tAuxNFE: TnxTable
    Database = nxDB
    TableName = 'NFE'
    IndexName = 'ItpAmbModeloSerieNumero'
    Left = 472
    Top = 208
    object tAuxNFENumSeq: TUnsignedAutoIncField
      FieldName = 'NumSeq'
    end
    object tAuxNFEModelo: TStringField
      FieldName = 'Modelo'
      Size = 5
    end
    object tAuxNFESerie: TStringField
      FieldName = 'Serie'
      Size = 5
    end
    object tAuxNFENumero: TLongWordField
      FieldName = 'Numero'
    end
    object tAuxNFEChave: TStringField
      FieldName = 'Chave'
      Size = 44
    end
    object tAuxNFEEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tAuxNFETipoDoc: TByteField
      FieldName = 'TipoDoc'
    end
    object tAuxNFEDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tAuxNFECFOP: TWordField
      FieldName = 'CFOP'
    end
    object tAuxNFETran: TGuidField
      FieldName = 'Tran'
      Size = 38
    end
    object tAuxNFERecibo: TStringField
      DisplayWidth = 20
      FieldName = 'Recibo'
    end
    object tAuxNFEProtocolo: TStringField
      DisplayWidth = 20
      FieldName = 'Protocolo'
    end
    object tAuxNFEContingencia: TBooleanField
      FieldName = 'Contingencia'
    end
    object tAuxNFEStatus: TByteField
      FieldName = 'Status'
    end
    object tAuxNFEStatusNF: TIntegerField
      FieldName = 'StatusNF'
    end
    object tAuxNFEProcessar: TBooleanField
      FieldName = 'Processar'
    end
    object tAuxNFEIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tAuxNFEEmitidoEm: TDateTimeField
      FieldName = 'EmitidoEm'
    end
    object tAuxNFEContingenciaEM: TDateTimeField
      FieldName = 'ContingenciaEM'
    end
    object tAuxNFEProcessarEm: TDateTimeField
      FieldName = 'ProcessarEm'
    end
    object tAuxNFEXMLdest: TnxMemoField
      FieldName = 'XMLdest'
      BlobType = ftMemo
    end
    object tAuxNFEXMLret: TnxMemoField
      FieldName = 'XMLret'
      BlobType = ftMemo
    end
    object tAuxNFEXMLtransCont: TnxMemoField
      FieldName = 'XMLtransCont'
      BlobType = ftMemo
    end
    object tAuxNFEXMLtrans: TnxMemoField
      FieldName = 'XMLtrans'
      BlobType = ftMemo
    end
    object tAuxNFExMotivo: TnxMemoField
      FieldName = 'xMotivo'
      BlobType = ftMemo
    end
    object tAuxNFEValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tAuxNFEtpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object tAuxNFEStatusInut: TByteField
      FieldName = 'StatusInut'
    end
    object tAuxNFEStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object tAuxNFECPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object tAuxNFEEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object tAuxNFEProtocoloCanc: TStringField
      DisplayWidth = 20
      FieldName = 'ProtocoloCanc'
    end
    object tAuxNFEStatusCancNF: TIntegerField
      FieldName = 'StatusCancNF'
    end
    object tAuxNFEJustCanc: TnxMemoField
      FieldName = 'JustCanc'
      BlobType = ftMemo
    end
    object tAuxNFExMotivoCanc: TnxMemoField
      FieldName = 'xMotivoCanc'
      BlobType = ftMemo
    end
    object tAuxNFECanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tAuxNFECanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tAuxNFExmlRetCanc: TnxMemoField
      FieldName = 'xmlRetCanc'
      BlobType = ftMemo
    end
    object tAuxNFEStatusInutNF: TIntegerField
      FieldName = 'StatusInutNF'
    end
    object tAuxNFEProtocoloInut: TStringField
      FieldName = 'ProtocoloInut'
    end
    object tAuxNFExMotivoInut: TnxMemoField
      FieldName = 'xMotivoInut'
      BlobType = ftMemo
    end
    object tAuxNFExmlRetInut: TnxMemoField
      FieldName = 'xmlRetInut'
      BlobType = ftMemo
    end
    object tAuxNFEUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tAuxNFEChaveCont: TStringField
      FieldName = 'ChaveCont'
      Size = 44
    end
    object tAuxNFEConsultouChaveNormal: TBooleanField
      FieldName = 'ConsultouChaveNormal'
    end
    object tAuxNFELogEnvio: TnxMemoField
      FieldName = 'LogEnvio'
      BlobType = ftMemo
    end
  end
  object tNCM: TnxTable
    Database = nxDB
    TableName = 'NCM'
    IndexName = 'INCM'
    Left = 424
    Top = 200
    object tNCMID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object tNCMEx: TStringField
      FieldName = 'Ex'
      Size = 2
    end
    object tNCMDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tNCMImpostoFed_Imp: TFloatField
      FieldName = 'ImpostoFed_Imp'
    end
    object tNCMImpostoFed_Nac: TFloatField
      FieldName = 'ImpostoFed_Nac'
    end
    object tNCMImpostoEst: TFloatField
      FieldName = 'ImpostoEst'
    end
    object tNCMImpostoMun: TFloatField
      FieldName = 'ImpostoMun'
    end
    object tNCMRECVER: TLongWordField
      FieldName = 'RECVER'
    end
  end
  object tNFE: TnxTable
    Database = nxDB
    TableName = 'NFE'
    IndexName = 'IChave'
    Left = 424
    Top = 152
    object tNFENumSeq: TUnsignedAutoIncField
      FieldName = 'NumSeq'
    end
    object tNFEModelo: TStringField
      FieldName = 'Modelo'
      Size = 5
    end
    object tNFESerie: TStringField
      FieldName = 'Serie'
      Size = 5
    end
    object tNFENumero: TLongWordField
      FieldName = 'Numero'
    end
    object tNFEChave: TStringField
      FieldName = 'Chave'
      Size = 44
    end
    object tNFEEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tNFETipoDoc: TByteField
      FieldName = 'TipoDoc'
    end
    object tNFEDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tNFECFOP: TWordField
      FieldName = 'CFOP'
    end
    object tNFETran: TGuidField
      FieldName = 'Tran'
      Size = 38
    end
    object tNFERecibo: TStringField
      DisplayWidth = 20
      FieldName = 'Recibo'
    end
    object tNFEProtocolo: TStringField
      DisplayWidth = 20
      FieldName = 'Protocolo'
    end
    object tNFEContingencia: TBooleanField
      FieldName = 'Contingencia'
    end
    object tNFEStatus: TByteField
      FieldName = 'Status'
    end
    object tNFEStatusNF: TIntegerField
      FieldName = 'StatusNF'
    end
    object tNFEProcessar: TBooleanField
      FieldName = 'Processar'
    end
    object tNFEIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tNFEEmitidoEm: TDateTimeField
      FieldName = 'EmitidoEm'
    end
    object tNFEContingenciaEM: TDateTimeField
      FieldName = 'ContingenciaEM'
    end
    object tNFEProcessarEm: TDateTimeField
      FieldName = 'ProcessarEm'
    end
    object tNFEValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tNFEXMLdest: TnxMemoField
      FieldName = 'XMLdest'
      BlobType = ftMemo
    end
    object tNFEXMLret: TnxMemoField
      FieldName = 'XMLret'
      BlobType = ftMemo
    end
    object tNFEXMLtransCont: TnxMemoField
      FieldName = 'XMLtransCont'
      BlobType = ftMemo
    end
    object tNFExMotivo: TnxMemoField
      FieldName = 'xMotivo'
      BlobType = ftMemo
    end
    object tNFEXMLtrans: TnxMemoField
      FieldName = 'XMLtrans'
      BlobType = ftMemo
    end
    object tNFEtpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object tNFECPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object tNFEEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object tNFEStatusInut: TByteField
      FieldName = 'StatusInut'
    end
    object tNFEStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object tNFEProtocoloCanc: TStringField
      DisplayWidth = 20
      FieldName = 'ProtocoloCanc'
    end
    object tNFEStatusCancNF: TIntegerField
      FieldName = 'StatusCancNF'
    end
    object tNFEJustCanc: TnxMemoField
      FieldName = 'JustCanc'
      BlobType = ftMemo
    end
    object tNFExMotivoCanc: TnxMemoField
      FieldName = 'xMotivoCanc'
      BlobType = ftMemo
    end
    object tNFECanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tNFECanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tNFExmlRetCanc: TnxMemoField
      FieldName = 'xmlRetCanc'
      BlobType = ftMemo
    end
    object tNFEStatusInutNF: TIntegerField
      FieldName = 'StatusInutNF'
    end
    object tNFEProtocoloInut: TStringField
      FieldName = 'ProtocoloInut'
    end
    object tNFExMotivoInut: TnxMemoField
      FieldName = 'xMotivoInut'
      BlobType = ftMemo
    end
    object tNFExmlRetInut: TnxMemoField
      FieldName = 'xmlRetInut'
      BlobType = ftMemo
    end
    object tNFEUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tNFEChaveCont: TStringField
      FieldName = 'ChaveCont'
      Size = 44
    end
    object tNFEConsultouChaveNormal: TBooleanField
      FieldName = 'ConsultouChaveNormal'
    end
    object tNFELogEnvio: TnxMemoField
      FieldName = 'LogEnvio'
      BlobType = ftMemo
    end
  end
  object tBRTrib: TnxTable
    Database = nxDB
    TableName = 'BRTrib'
    IndexName = 'IID'
    Left = 472
    Top = 152
    object tBRTribID: TWordField
      FieldName = 'ID'
    end
    object tBRTribNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tBRTribOrigem: TByteField
      FieldName = 'Origem'
    end
    object tBRTribCST: TWordField
      FieldName = 'CST'
    end
    object tBRTribCSOSN: TWordField
      FieldName = 'CSOSN'
    end
    object tBRTribICMS: TFloatField
      FieldName = 'ICMS'
    end
    object tBRTribPadrao: TBooleanField
      FieldName = 'Padrao'
    end
    object tBRTribCFOP_nfce: TWordField
      FieldName = 'CFOP_nfce'
    end
  end
  object tPost: TnxTable
    Database = nxDB
    TableName = 'Post'
    IndexName = 'IEnviar'
    Left = 432
    Top = 72
    object tPostID: TAutoIncField
      FieldName = 'ID'
    end
    object tPostParametros: TnxMemoField
      FieldName = 'Parametros'
      BlobType = ftMemo
    end
    object tPostHost: TStringField
      FieldName = 'Host'
      Size = 255
    end
    object tPostURL: TStringField
      FieldName = 'URL'
      Size = 255
    end
    object tPostApagarArq: TBooleanField
      FieldName = 'ApagarArq'
    end
    object tPostArq: TStringField
      FieldName = 'Arq'
      Size = 255
    end
    object tPostInclusao: TDateTimeField
      FieldName = 'Inclusao'
    end
    object tPostEnvio: TDateTimeField
      FieldName = 'Envio'
    end
    object tPostTentativas: TWordField
      FieldName = 'Tentativas'
    end
    object tPostEnviar: TBooleanField
      FieldName = 'Enviar'
    end
    object tPostMsgErro: TnxMemoField
      FieldName = 'MsgErro'
      BlobType = ftMemo
    end
    object tPostOK: TBooleanField
      FieldName = 'OK'
    end
  end
  object tDoc: TnxTable
    Database = nxDB
    TableName = 'Doc'
    IndexName = 'IUID'
    Left = 536
    Top = 88
    object tDocID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tDocUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tDocTipo: TByteField
      FieldName = 'Tipo'
    end
    object tDocBobina: TBooleanField
      FieldName = 'Bobina'
    end
    object tDocFree: TBooleanField
      FieldName = 'Free'
    end
    object tDocTextOnly: TBooleanField
      FieldName = 'TextOnly'
    end
    object tDocTamanho: TStringField
      FieldName = 'Tamanho'
    end
    object tDocNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object tDocObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tDocParams: TnxMemoField
      FieldName = 'Params'
      BlobType = ftMemo
    end
    object tDocDoc: TBlobField
      FieldName = 'Doc'
    end
    object tDocImg: TGraphicField
      FieldName = 'Img'
      BlobType = ftGraphic
    end
    object tDocCustom: TBooleanField
      FieldName = 'Custom'
    end
    object tDocMinVer: TWordField
      FieldName = 'MinVer'
    end
    object tDocSRECVER: TLongWordField
      FieldName = 'SRECVER'
    end
    object tDocRECVER: TLongWordField
      FieldName = 'RECVER'
    end
  end
  object tProdFor: TnxTable
    Database = nxDB
    TableName = 'ProdFor'
    IndexName = 'IProdFor'
    Left = 384
    Top = 336
    object tProdForUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tProdForProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tProdForFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tProdForRef: TStringField
      FieldName = 'Ref'
    end
  end
end
