object dmNFe: TdmNFe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 378
  Width = 700
  object nfceDados: TspdNFCeDataSets
    VersaoEsquema = pl_006n
    ValidaRegrasNegocio = False
    ValidaRegrasNegocioTecno = False
    Left = 83
    Top = 25
  end
  object nfceComp: TspdNFCe
    VersaoManual = vm50
    DanfceSettings.FraseContingencia = 
      'Danfce em conting'#234'ncia - Impresso em decorr'#234'ncia de problemas t'#233 +
      'cnicos'
    DanfceSettings.FraseHomologacao = 'SEM VALOR FISCAL'
    DanfceSettings.QtdeCopias = 1
    DanfceSettings.LineDelimiter = '|'
    DanfceSettings.InfCplMaxCol = 68
    DanfceSettings.InfCplMaxRow = 7
    DanfceSettings.ModeloDanfce = 
      'C:\Arquivos de programas\Borland\Delphi7\Bin\Templates\Vm50a\Dan' +
      'fce\retrato.rtm'
    DanfceSettings.ModeloDanfceMensagemEletronica = 
      'C:\Arquivos de programas\Borland\Delphi7\Bin\Templates\Vm50a\Dan' +
      'fce\retrato.rtm'
    DanfceSettings.FormatoDanfce = fdNormal
    DanfceSettings.ExibirDetalhamento = True
    Versao = '3.7.19.38894'
    CaracteresRemoverAcentos = #225#233#237#243#250#224#232#236#242#249#226#234#238#244#251#228#235#239#246#252#227#245#241#231#193#201#205#211#218#192#200#204#210#217#194#202#206#212#219#196#203#207#214#220#195#213#209#199#186#170
    TipoCertificado = ckMemory
    DiretorioTemplates = 'C:\Arquivos de programas\Borland\Delphi7\Bin\vm50\'
    IgnoreInvalidCertificates = False
    DiretorioLog = 'Log\'
    Ambiente = akHomologacao
    EmailSettings.Autenticacao = False
    EmailSettings.TimeOut = 0
    EmailSettings.AnexarDanfcePDF = True
    EmailSettings.ConteudoHtml = False
    DiretorioEsquemas = 'C:\Arquivos de programas\Borland\Delphi7\Bin\Esquemas\vm50\'
    ConexaoSegura = False
    TimeOut = 0
    SectionINI = 'NFCE'
    DiretorioXmlDestinatario = 'C:\Arquivos de programas\Borland\Delphi7\Bin\XmlDestinatario\'
    MaxSizeLoteEnvio = 500
    EntregaXML = exEmail
    Left = 27
    Top = 25
  end
  object nxDB: TnxDatabase
    ActiveDesigntime = True
    Session = nxSE
    AliasName = 'NexCafe'
    Left = 144
    Top = 24
  end
  object nxSE: TnxSession
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRSE
    Left = 192
    Top = 24
  end
  object tTran: TnxTable
    Database = nxDB
    TableName = 'Tran'
    IndexName = 'IStatusNFE'
    Left = 248
    Top = 24
    object tTranID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tTranUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tTranUID_ref: TGuidField
      FieldName = 'UID_ref'
      Size = 38
    end
    object tTranStatusNFE: TByteField
      FieldName = 'StatusNFE'
    end
    object tTranNFE: TGuidField
      FieldName = 'NFE'
      Size = 38
    end
    object tTranTipoNFE: TByteField
      FieldName = 'TipoNFE'
    end
    object tTranDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tTranIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tTranCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tTranTipo: TByteField
      FieldName = 'Tipo'
    end
    object tTranOpDevValor: TByteField
      FieldName = 'OpDevValor'
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
    object tTranDebito: TCurrencyField
      FieldName = 'Debito'
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
  end
  object tNFConfig: TnxTable
    Database = nxDB
    TableName = 'NFCONFIG'
    Left = 304
    Top = 24
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
    object tNFConfigCFOP_NFCe: TWordField
      FieldName = 'CFOP_NFCe'
    end
    object tNFConfigAutoEmitirNFCe: TBooleanField
      FieldName = 'AutoEmitirNFCe'
    end
    object tNFConfigCRT: TByteField
      FieldName = 'CRT'
    end
    object tNFConfigCSOSN_Padrao: TWordField
      FieldName = 'CSOSN_Padrao'
    end
    object tNFConfigCST_Padrao: TByteField
      FieldName = 'CST_Padrao'
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
  end
  object tNFE: TnxTable
    Database = nxDB
    TableName = 'NFE'
    IndexName = 'IProcessar'
    Left = 32
    Top = 88
    object tNFEID: TGuidField
      FieldName = 'ID'
      Size = 38
    end
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
      FieldName = 'Recibo'
      Size = 44
    end
    object tNFEProtocolo: TStringField
      FieldName = 'Protocolo'
      Size = 44
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
    object tNFEXML: TnxMemoField
      FieldName = 'XML'
      BlobType = ftMemo
    end
    object tNFEXMLret: TnxMemoField
      FieldName = 'XMLret'
      BlobType = ftMemo
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
    object tNFEDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object tNFEValor: TCurrencyField
      FieldName = 'Valor'
    end
  end
  object tMovEst: TnxTable
    Database = nxDB
    TableName = 'MovEst'
    IndexName = 'ITranItem'
    Left = 96
    Top = 88
    object tMovEstID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tMovEstID_ref: TLongWordField
      FieldName = 'ID_ref'
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
    object tMovEstPend: TBooleanField
      FieldName = 'Pend'
    end
    object tMovEstIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
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
  end
  object nxTCPIP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 216
    Top = 96
  end
  object nxRSE: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = nxTCPIP
    Left = 160
    Top = 96
  end
end
