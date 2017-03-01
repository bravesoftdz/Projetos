object dmNFCe_gerar: TdmNFCe_gerar
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 313
  Width = 460
  object nfceDS: TspdNFCeDataSets
    VersaoEsquema = pl_008g
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
    Versao = '5.7.33.53481'
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
    DiretorioXmlDestinatario = 'C:\Arquivos de programas\Borland\Delphi7\Bin\XmlDestinatario\'
    MaxSizeLoteEnvio = 500
    DiretorioTemporario = 'C:\Program Files (x86)\Embarcadero\Studio\15.0\bin\Temp\'
    EntregaXML = exEmail
    Left = 27
    Top = 25
  end
  object tBRTrib: TnxTable
    Database = nxDB
    TableName = 'BRTrib'
    IndexName = 'IID'
    Left = 224
    Top = 112
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
  object tPagEsp: TnxTable
    Database = nxDB
    TableName = 'PagEspecies'
    IndexName = 'IID'
    Left = 120
    Top = 112
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
  object tNFConfig: TnxTable
    Database = nxDB
    TableName = 'NFCONFIG'
    Left = 328
    Top = 112
    object tNFConfigModeloSAT_Email: TGuidField
      FieldName = 'ModeloSAT_Email'
      Size = 38
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
  object tNCM: TnxTable
    Database = nxDB
    TableName = 'NCM'
    IndexName = 'INCM'
    Left = 280
    Top = 112
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
    Left = 176
    Top = 112
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
    object tNFEConsultouChave: TBooleanField
      FieldName = 'ConsultouChave'
    end
    object tNFELogEnvio: TnxMemoField
      FieldName = 'LogEnvio'
      BlobType = ftMemo
    end
    object tNFETicksConsulta: TLongWordField
      FieldName = 'TicksConsulta'
    end
    object tNFELogRec: TnxMemoField
      FieldName = 'LogRec'
      BlobType = ftMemo
    end
    object tNFETotalNF: TCurrencyField
      FieldName = 'TotalNF'
    end
  end
  object tCli: TnxTable
    Database = nxDB
    TableName = 'Cliente'
    IndexName = 'IID'
    Left = 72
    Top = 112
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
    object tCliNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tCliEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object tCliEndereco2: TWideStringField
      FieldName = 'Endereco2'
      Size = 60
    end
    object tCliEnd_Numero: TWideStringField
      FieldName = 'End_Numero'
    end
    object tCliEnd_CodMun: TWideStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object tCliEnd_Dest: TWideStringField
      FieldName = 'End_Dest'
      Size = 40
    end
    object tCliEnd_Obs: TWideStringField
      FieldName = 'End_Obs'
      Size = 40
    end
    object tCliendereco_id: TGuidField
      FieldName = 'endereco_id'
      Size = 38
    end
    object tCliPais: TWideStringField
      FieldName = 'Pais'
      Size = 2
    end
    object tCliBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object tCliCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object tCliUF: TWideStringField
      FieldName = 'UF'
      Size = 30
    end
    object tCliCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tCliNFE_CredIcms: TBooleanField
      FieldName = 'NFE_CredIcms'
    end
    object tCliSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object tCliObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tCliCpf: TWideStringField
      FieldName = 'Cpf'
    end
    object tCliRg: TWideStringField
      FieldName = 'Rg'
    end
    object tCliTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tCliEmail: TWideMemoField
      FieldName = 'Email'
      BlobType = ftWideMemo
    end
    object tCliPassaportes: TFloatField
      FieldName = 'Passaportes'
    end
    object tCliPai: TWideStringField
      FieldName = 'Pai'
      Size = 40
    end
    object tCliMae: TWideStringField
      FieldName = 'Mae'
      Size = 40
    end
    object tCliUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object tCliDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tCliDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object tCliCelular: TWideStringField
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
    end
    object tCliAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
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
    object tCliRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tCliNaoContribICMS: TBooleanField
      FieldName = 'NaoContribICMS'
    end
    object tCliIsentoIE: TBooleanField
      FieldName = 'IsentoIE'
    end
    object tCliInfoExtra: TWideStringField
      FieldName = 'InfoExtra'
      Size = 50
    end
    object tCliTranspEntPadrao: TLongWordField
      FieldName = 'TranspEntPadrao'
    end
    object tCliTranspEnt: TBooleanField
      FieldName = 'TranspEnt'
    end
    object tCliTipoFor: TByteField
      FieldName = 'TipoFor'
    end
    object tCliConsumidor: TBooleanField
      FieldName = 'Consumidor'
    end
  end
  object tTran: TnxTable
    Database = nxDB
    TableName = 'Tran'
    IndexName = 'ITipoNFECanceladoAmbStatusNFE'
    Left = 24
    Top = 112
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
    object deb: TBooleanField
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
    object tTranDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tTranDescricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
    object tTranNomeCliente: TWideStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tTranEntregar: TBooleanField
      FieldName = 'Entregar'
    end
    object tTranVenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object tTranendereco_entrega: TGuidField
      FieldName = 'endereco_entrega'
      Size = 38
    end
    object tTranids_pagto: TStringField
      FieldName = 'ids_pagto'
    end
    object tTranHora: TByteField
      FieldName = 'Hora'
    end
    object tTranVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object tTranComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tTranFrete: TCurrencyField
      FieldName = 'Frete'
    end
    object tTrantax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tTrantax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tTranTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tTrantranest: TBooleanField
      FieldName = 'tranest'
    end
    object tTrantrancx: TBooleanField
      FieldName = 'trancx'
    end
    object tTranTranspEnt: TLongWordField
      FieldName = 'TranspEnt'
    end
    object tTranTranspVol: TWordField
      FieldName = 'TranspVol'
    end
    object tTranTranspPesoB: TFloatField
      FieldName = 'TranspPesoB'
    end
    object tTranTranspPesoL: TFloatField
      FieldName = 'TranspPesoL'
    end
  end
  object tMovEst: TnxTable
    Database = nxDB
    TableName = 'MovEst'
    IndexName = 'ITranItem'
    Left = 72
    Top = 168
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
    object tMovEsttax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tMovEsttax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tMovEsttax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tMovEstTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tMovEstCustoT: TCurrencyField
      FieldName = 'CustoT'
    end
    object tMovEstLucro: TCurrencyField
      FieldName = 'Lucro'
    end
    object tMovEstDescr: TWideStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tMovEstTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tMovEstDebDev: TCurrencyField
      FieldName = 'DebDev'
    end
    object tMovEstVenDev: TBooleanField
      FieldName = 'VenDev'
    end
  end
  object tProduto: TnxTable
    Database = nxDB
    TableName = 'Produto'
    IndexName = 'IID'
    Left = 24
    Top = 168
    object tProdutoID: TUnsignedAutoIncField
      FieldName = 'ID'
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
    object tProdutoImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tProdutoFornecedor: TLongWordField
      FieldName = 'Fornecedor'
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
    object tProdutoEstoqueMin: TFloatField
      FieldName = 'EstoqueMin'
    end
    object tProdutoEstoqueMax: TFloatField
      FieldName = 'EstoqueMax'
    end
    object tProdutoAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object tProdutoAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
    end
    object tProdutoEstoqueRepor: TFloatField
      FieldName = 'EstoqueRepor'
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
    object tProdutoEstoqueAtual: TFloatField
      FieldName = 'EstoqueAtual'
    end
    object tProdutoEstoquePend: TFloatField
      FieldName = 'EstoquePend'
    end
    object tProdutoEstoqueTot: TFloatField
      FieldName = 'EstoqueTot'
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
    object tProdutocest: TLongWordField
      FieldName = 'cest'
    end
    object tProdutoPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tProdutoPesoLiq: TFloatField
      FieldName = 'PesoLiq'
    end
    object tProdutotax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tProdutomodST: TByteField
      FieldName = 'modST'
    end
    object tProdutoMVA: TnxMemoField
      FieldName = 'MVA'
      BlobType = ftMemo
    end
    object tProdutoPauta: TnxMemoField
      FieldName = 'Pauta'
      BlobType = ftMemo
    end
    object tProdutoRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tProdutoUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tProdutoMarca: TGuidField
      FieldName = 'Marca'
      Size = 38
    end
    object tProdutoCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tProdutoDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tProdutoUnid: TWideStringField
      FieldName = 'Unid'
      Size = 5
    end
    object tProdutoObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tProdutoCategoria: TWideStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object tProdutoAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tProdutoAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 30
    end
  end
  object tAuxNFE: TnxTable
    Database = nxDB
    TableName = 'NFE'
    IndexName = 'ITipoDoctpAmbModeloSerieNumero'
    Left = 120
    Top = 168
  end
  object tEspecie: TnxTable
    Database = nxDB
    TableName = 'Especie'
    IndexName = 'IID'
    Left = 176
    Top = 168
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
  object nxTCPIP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 296
    Top = 24
  end
  object nxRSE: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = nxTCPIP
    Left = 248
    Top = 24
  end
  object nxDB: TnxDatabase
    ActiveDesigntime = True
    Session = nxSession
    AliasName = 'NexCafe'
    Left = 200
    Top = 24
  end
  object nxSession: TnxSession
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRSE
    Left = 152
    Top = 24
  end
  object tEnd: TnxTable
    Database = nxDB
    TableName = 'endereco'
    IndexName = 'I_endereco_id'
    Left = 176
    Top = 232
    object tEndendereco_id: TGuidField
      FieldName = 'endereco_id'
      Size = 38
    end
    object tEndcliente_id: TLongWordField
      FieldName = 'cliente_id'
    end
    object tEndpos: TByteField
      FieldName = 'pos'
    end
    object tEndnumseq: TUnsignedAutoIncField
      FieldName = 'numseq'
    end
    object tEndend_dest: TWideStringField
      FieldName = 'end_dest'
      Size = 50
    end
    object tEndendereco: TWideStringField
      FieldName = 'endereco'
      Size = 60
    end
    object tEndendereco2: TWideStringField
      FieldName = 'endereco2'
      Size = 60
    end
    object tEndend_numero: TWideStringField
      FieldName = 'end_numero'
    end
    object tEndcidade: TWideStringField
      FieldName = 'cidade'
      Size = 40
    end
    object tEndcep: TWideStringField
      FieldName = 'cep'
      Size = 10
    end
    object tEndbairro: TWideStringField
      FieldName = 'bairro'
      Size = 30
    end
    object tEndend_codmun: TWideStringField
      FieldName = 'end_codmun'
      Size = 7
    end
    object tEnduf: TWideStringField
      FieldName = 'uf'
      Size = 30
    end
    object tEndend_obs: TWideStringField
      FieldName = 'end_obs'
      Size = 40
    end
    object tEnddef_cad: TBooleanField
      FieldName = 'def_cad'
    end
    object tEnddef_ent: TBooleanField
      FieldName = 'def_ent'
    end
    object tEnddef_cob: TBooleanField
      FieldName = 'def_cob'
    end
    object tEndpais: TWideStringField
      FieldName = 'pais'
      Size = 2
    end
  end
  object tTransp: TnxTable
    Database = nxDB
    TableName = 'Cliente'
    IndexName = 'IID'
    Left = 224
    Top = 160
    object tTranspID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tTranspCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tTranspCodigoKey: TStringField
      FieldName = 'CodigoKey'
      Size = 15
    end
    object tTranspNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tTranspEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object tTranspEndereco2: TWideStringField
      FieldName = 'Endereco2'
      Size = 60
    end
    object tTranspEnd_Numero: TWideStringField
      FieldName = 'End_Numero'
    end
    object tTranspEnd_CodMun: TWideStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object tTranspEnd_Dest: TWideStringField
      FieldName = 'End_Dest'
      Size = 40
    end
    object tTranspEnd_Obs: TWideStringField
      FieldName = 'End_Obs'
      Size = 40
    end
    object tTranspendereco_id: TGuidField
      FieldName = 'endereco_id'
      Size = 38
    end
    object tTranspPais: TWideStringField
      FieldName = 'Pais'
      Size = 2
    end
    object tTranspBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object tTranspCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object tTranspUF: TWideStringField
      FieldName = 'UF'
      Size = 30
    end
    object tTranspCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tTranspNaoContribICMS: TBooleanField
      FieldName = 'NaoContribICMS'
    end
    object tTranspIsentoIE: TBooleanField
      FieldName = 'IsentoIE'
    end
    object tTranspNFE_CredIcms: TBooleanField
      FieldName = 'NFE_CredIcms'
    end
    object tTranspSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object tTranspObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tTranspCpf: TWideStringField
      FieldName = 'Cpf'
    end
    object tTranspRg: TWideStringField
      FieldName = 'Rg'
    end
    object tTranspTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tTranspEmail: TWideMemoField
      FieldName = 'Email'
      BlobType = ftWideMemo
    end
    object tTranspPassaportes: TFloatField
      FieldName = 'Passaportes'
    end
    object tTranspPai: TWideStringField
      FieldName = 'Pai'
      Size = 40
    end
    object tTranspMae: TWideStringField
      FieldName = 'Mae'
      Size = 40
    end
    object tTranspUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object tTranspDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tTranspDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object tTranspCelular: TWideStringField
      FieldName = 'Celular'
      Size = 15
    end
    object tTranspTemDebito: TBooleanField
      FieldName = 'TemDebito'
    end
    object tTranspLimiteDebito: TCurrencyField
      FieldName = 'LimiteDebito'
    end
    object tTranspFoto: TGraphicField
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object tTranspIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tTranspAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tTranspIncluidoPor: TStringField
      FieldName = 'IncluidoPor'
    end
    object tTranspAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
    end
    object tTranspFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tTranspFidTotal: TFloatField
      FieldName = 'FidTotal'
    end
    object tTranspFidResg: TFloatField
      FieldName = 'FidResg'
    end
    object tTranspAniversario: TStringField
      FieldName = 'Aniversario'
      Size = 4
    end
    object tTranspSemFidelidade: TBooleanField
      FieldName = 'SemFidelidade'
    end
    object tTranspTemCredito: TBooleanField
      FieldName = 'TemCredito'
    end
    object tTranspInfoExtra: TWideStringField
      FieldName = 'InfoExtra'
      Size = 50
    end
    object tTranspTranspEntPadrao: TLongWordField
      FieldName = 'TranspEntPadrao'
    end
    object tTranspTranspEnt: TBooleanField
      FieldName = 'TranspEnt'
    end
    object tTranspTipoFor: TByteField
      FieldName = 'TipoFor'
    end
    object tTranspPJuridica: TBooleanField
      FieldName = 'PJuridica'
    end
    object tTranspConsumidor: TBooleanField
      FieldName = 'Consumidor'
    end
    object tTranspInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tTranspFornecedor: TBooleanField
      FieldName = 'Fornecedor'
    end
    object tTranspValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
    object tTranspRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
end
