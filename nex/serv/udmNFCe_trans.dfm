object dmNFCE_trans: TdmNFCE_trans
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 330
  Width = 562
  object nxDB: TnxDatabase
    Session = nxSE
    AliasName = 'NexCafe'
    Left = 144
    Top = 24
  end
  object nxSE: TnxSession
    UserName = 'admin'
    Password = 'delphi9856'
    Left = 192
    Top = 24
  end
  object tTran: TnxTable
    Database = nxDB
    TableName = 'Tran'
    IndexName = 'IUID'
    Left = 88
    Top = 88
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
    object tTranSessao: TLongWordField
      FieldName = 'Sessao'
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
    object tTranExtra: TnxMemoField
      FieldName = 'Extra'
      BlobType = ftMemo
    end
    object tTranAmbNFe: TByteField
      FieldName = 'AmbNFe'
    end
    object tTranChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object tTranStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object tTranDescricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
  end
  object tNFConfig: TnxTable
    Database = nxDB
    TableName = 'NFCONFIG'
    Left = 144
    Top = 88
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
    object tNFConfigTipoCert: TByteField
      FieldName = 'TipoCert'
    end
    object tNFConfigFromEmail: TStringField
      FieldName = 'FromEmail'
      Size = 100
    end
    object tNFConfigFromName: TStringField
      FieldName = 'FromName'
      Size = 50
    end
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
    object tNFConfigModeloSAT_Email: TGuidField
      FieldName = 'ModeloSAT_Email'
      Size = 38
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
    object tNFConfigTipo: TByteField
      FieldName = 'Tipo'
    end
    object tNFConfigNomeDllSat: TStringField
      FieldName = 'NomeDllSat'
      Size = 200
    end
    object tNFConfigSignACSat: TStringField
      FieldName = 'SignACSat'
      Size = 344
    end
    object tNFConfigDependSATOk: TBooleanField
      FieldName = 'DependSATOk'
    end
    object tNFConfigEnd_CodUF: TByteField
      FieldName = 'End_CodUF'
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
    object tNFConfigTrib_Padrao: TWordField
      FieldName = 'Trib_Padrao'
    end
    object tNFConfigPedirEmail: TByteField
      FieldName = 'PedirEmail'
    end
    object tNFConfigPedirCPF: TByteField
      FieldName = 'PedirCPF'
    end
    object tNFConfigTelefone: TStringField
      FieldName = 'Telefone'
    end
    object tNFConfigurls_consulta: TnxMemoField
      FieldName = 'urls_consulta'
      BlobType = ftMemo
    end
    object tNFConfigurls_qrcode_hom: TnxMemoField
      FieldName = 'urls_qrcode_hom'
      BlobType = ftMemo
    end
    object tNFConfigurls_qrcode_prod: TnxMemoField
      FieldName = 'urls_qrcode_prod'
      BlobType = ftMemo
    end
    object tNFConfigModeloNFCe_Email: TGuidField
      FieldName = 'ModeloNFCe_Email'
      Size = 38
    end
    object tNFConfigAssuntoEmail: TStringField
      FieldName = 'AssuntoEmail'
      Size = 100
    end
    object tNFConfigPinCert: TStringField
      FieldName = 'PinCert'
      Size = 50
    end
  end
  object tNFE: TnxTable
    Database = nxDB
    TableName = 'NFE'
    IndexName = 'IChave'
    Left = 32
    Top = 88
    object tNFELogRec: TnxMemoField
      FieldName = 'LogRec'
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
    object tNFEConsultouChave: TBooleanField
      FieldName = 'ConsultouChave'
    end
    object tNFELogEnvio: TnxMemoField
      FieldName = 'LogEnvio'
      BlobType = ftMemo
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
    object tNFEIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tNFEEmitidoEm: TDateTimeField
      FieldName = 'EmitidoEm'
    end
    object tNFEContingenciaEM: TDateTimeField
      FieldName = 'ContingenciaEM'
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
    object tNFEXMLtrans: TnxMemoField
      FieldName = 'XMLtrans'
      BlobType = ftMemo
    end
    object tNFExMotivo: TnxMemoField
      FieldName = 'xMotivo'
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
  end
  object tConfig: TnxTable
    Database = nxDB
    TableName = 'Config'
    Left = 88
    Top = 144
  end
  object tDoc: TnxTable
    Database = nxDB
    TableName = 'Doc'
    IndexName = 'IUID'
    Left = 144
    Top = 144
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
    object tDocNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object tDocObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tDocRECVER: TLongWordField
      FieldName = 'RECVER'
    end
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
    Versao = '5.7.31.50994'
    CaracteresRemoverAcentos = #225#233#237#243#250#224#232#236#242#249#226#234#238#244#251#228#235#239#246#252#227#245#241#231#193#201#205#211#218#192#200#204#210#217#194#202#206#212#219#196#203#207#214#220#195#213#209#199#186#170
    TipoCertificado = ckFile
    DiretorioTemplates = 
      'C:\Program Files (x86)\Embarcadero\Studio\15.0\bin\NFCE\Template' +
      's\vm50\'
    IgnoreInvalidCertificates = False
    DiretorioLog = 'Log\'
    Ambiente = akHomologacao
    ValidarEsquemaAntesEnvio = True
    EmailSettings.Autenticacao = False
    EmailSettings.TimeOut = 0
    EmailSettings.AnexarDanfcePDF = True
    EmailSettings.ConteudoHtml = False
    DiretorioEsquemas = 'C:\Arquivos de programas\Borland\Delphi7\Bin\Esquemas\vm50\'
    ConexaoSegura = False
    TimeOut = 60000
    SectionINI = 'NFCE'
    OnLog = nfceCompLog
    DiretorioXmlDestinatario = 'C:\Arquivos de programas\Borland\Delphi7\Bin\XmlDestinatario\'
    MaxSizeLoteEnvio = 500
    DiretorioTemporario = 'C:\Program Files (x86)\Embarcadero\Studio\15.0\bin\Temp\'
    EntregaXML = exEmail
    Left = 43
    Top = 25
  end
end
