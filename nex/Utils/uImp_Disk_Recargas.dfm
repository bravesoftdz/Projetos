object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Importar dados'
  ClientHeight = 389
  ClientWidth = 1007
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 40
    Width = 1007
    Height = 349
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 1007
    Height = 40
    Hint = ''
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 10
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Importar'
      TabOrder = 0
      OnClick = cxButton1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = tF
    Left = 624
    Top = 200
  end
  object tAux: TnxTable
    Database = nxDB
    TableName = 'Cliente'
    IndexName = 'IUsername'
    Left = 512
    Top = 152
    object tAuxID: TAutoIncField
      FieldName = 'ID'
    end
    object tAuxNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tAuxEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object tAuxBairro: TStringField
      FieldName = 'Bairro'
    end
    object tAuxCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object tAuxUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object tAuxCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tAuxSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object tAuxCpf: TStringField
      FieldName = 'Cpf'
      Size = 14
    end
    object tAuxRg: TStringField
      FieldName = 'Rg'
      Size = 14
    end
    object tAuxTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tAuxMinutos: TFloatField
      FieldName = 'Minutos'
    end
    object tAuxMinutosUsados: TFloatField
      FieldName = 'MinutosUsados'
    end
    object tAuxMinutosIniciais: TFloatField
      FieldName = 'MinutosIniciais'
    end
    object tAuxIsento: TBooleanField
      FieldName = 'Isento'
    end
    object tAuxUsername: TStringField
      FieldName = 'Username'
      Size = 40
    end
    object tAuxPai: TStringField
      FieldName = 'Pai'
      Size = 40
    end
    object tAuxMae: TStringField
      FieldName = 'Mae'
      Size = 40
    end
    object tAuxSenha: TStringField
      FieldName = 'Senha'
    end
    object tAuxUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object tAuxDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tAuxEscola: TStringField
      FieldName = 'Escola'
      Size = 40
    end
    object tAuxEscolaHI: TDateTimeField
      FieldName = 'EscolaHI'
    end
    object tAuxEscolaHF: TDateTimeField
      FieldName = 'EscolaHF'
    end
    object tAuxNickName: TStringField
      FieldName = 'NickName'
      Size = 30
    end
    object tAuxDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object tAuxCelular: TStringField
      FieldName = 'Celular'
      Size = 15
    end
    object tAuxTemDebito: TBooleanField
      FieldName = 'TemDebito'
    end
    object tAuxLimiteDebito: TCurrencyField
      FieldName = 'LimiteDebito'
    end
    object tAuxFoto: TGraphicField
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object tAuxIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tAuxAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tAuxIncluidoPor: TStringField
      FieldName = 'IncluidoPor'
      Size = 10
    end
    object tAuxAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 10
    end
    object tAuxInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tAuxTipoAcessoPref: TIntegerField
      FieldName = 'TipoAcessoPref'
    end
    object tAuxValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
    object tAuxObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tAuxEmail: TMemoField
      FieldName = 'Email'
      BlobType = ftMemo
    end
  end
  object tCli: TnxTable
    Database = nxDB
    TableName = 'Cliente'
    IndexName = 'IID'
    Left = 560
    Top = 96
    object tCliID: TAutoIncField
      FieldName = 'ID'
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
      Size = 2
    end
    object tCliCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tCliSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object tCliCpf: TStringField
      FieldName = 'Cpf'
      Size = 14
    end
    object tCliRg: TStringField
      FieldName = 'Rg'
      Size = 14
    end
    object tCliTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tCliMinutos: TFloatField
      FieldName = 'Minutos'
    end
    object tCliMinutosUsados: TFloatField
      FieldName = 'MinutosUsados'
    end
    object tCliMinutosIniciais: TFloatField
      FieldName = 'MinutosIniciais'
    end
    object tCliIsento: TBooleanField
      FieldName = 'Isento'
    end
    object tCliUsername: TStringField
      FieldName = 'Username'
      Size = 40
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
    object tCliEscolaHI: TDateTimeField
      FieldName = 'EscolaHI'
    end
    object tCliEscolaHF: TDateTimeField
      FieldName = 'EscolaHF'
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
    object tCliInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tCliTipoAcessoPref: TIntegerField
      FieldName = 'TipoAcessoPref'
    end
    object tCliValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
    object tCliObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tCliEmail: TMemoField
      FieldName = 'Email'
      BlobType = ftMemo
    end
  end
  object nxTCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 16200
    Left = 520
    Top = 96
  end
  object ibDB: TIBDatabase
    Connected = True
    DatabaseName = 'localhost:C:\NexCafe\controle.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = ibTran
    ServerType = 'IBServer'
    AllowStreamedConnected = False
    Left = 320
    Top = 80
  end
  object nxSession1: TnxSession
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxSE
    Left = 384
    Top = 152
  end
  object nxDB: TnxDatabase
    Session = nxSession1
    AliasPath = 'c:\nex\dados'
    Left = 488
    Top = 96
  end
  object tF: TIBTable
    Database = ibDB
    Transaction = ibTran
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'COD_PROD'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME_PROD'
        DataType = ftWideString
        Size = 70
      end
      item
        Name = 'NOME_RES_PROD'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DATAC_PROD'
        DataType = ftDate
      end
      item
        Name = 'CODFOR_PROD'
        DataType = ftInteger
      end
      item
        Name = 'UND_PROD'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'FOTO_PROD'
        DataType = ftWideString
        Size = 512
      end
      item
        Name = 'ESTOQ_PROD'
        DataType = ftFloat
      end
      item
        Name = 'CUST_PROD'
        DataType = ftFloat
      end
      item
        Name = 'IPI_PROD'
        DataType = ftBCD
        Precision = 4
        Size = 2
      end
      item
        Name = 'ICMS_E_PROD'
        DataType = ftBCD
        Precision = 4
        Size = 2
      end
      item
        Name = 'ICMS_S_PROD'
        DataType = ftBCD
        Precision = 4
        Size = 2
      end
      item
        Name = 'PIS_PROD'
        DataType = ftBCD
        Precision = 4
        Size = 2
      end
      item
        Name = 'CONFINS_PROD'
        DataType = ftBCD
        Precision = 4
        Size = 2
      end
      item
        Name = 'C_EXTRA_PROD'
        DataType = ftBCD
        Precision = 4
        Size = 2
      end
      item
        Name = 'FRETE_PROD'
        DataType = ftFloat
      end
      item
        Name = 'FRETE_SOBRE_CI_PROD'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'CUSTF_PROD'
        DataType = ftFloat
      end
      item
        Name = 'CUST_MED_PROD'
        DataType = ftFloat
      end
      item
        Name = 'ML_PRAZO_PROD'
        DataType = ftFloat
      end
      item
        Name = 'PV_VISTA_PROD'
        DataType = ftFloat
      end
      item
        Name = 'PV_PRAZO_PROD'
        DataType = ftFloat
      end
      item
        Name = 'PROMOCAO'
        DataType = ftFloat
      end
      item
        Name = 'VALIDADE_PROMO'
        DataType = ftDate
      end
      item
        Name = 'ML_PRAZOAT_PROD'
        DataType = ftFloat
      end
      item
        Name = 'PV_VISTAAT_PROD'
        DataType = ftFloat
      end
      item
        Name = 'PV_PRAZOAT_PROD'
        DataType = ftFloat
      end
      item
        Name = 'PROMOCAOAT'
        DataType = ftFloat
      end
      item
        Name = 'VALIDADEAT_PROMO'
        DataType = ftDate
      end
      item
        Name = 'DESC_MAX_PROD'
        DataType = ftFloat
      end
      item
        Name = 'DESC_MAXAT_PROD'
        DataType = ftFloat
      end
      item
        Name = 'DATA_ATUAL_PC_PROD'
        DataType = ftDate
      end
      item
        Name = 'DATA_ULT_COMPRA_PROD'
        DataType = ftDate
      end
      item
        Name = 'CODCLASSE_PROD'
        DataType = ftInteger
      end
      item
        Name = 'CODSUBCLA_PROD'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'REF_PROD'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'LOCAL_PROD'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'USAR_PROD'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ESTOQ_MIN_PROD'
        DataType = ftFloat
      end
      item
        Name = 'USA_COMPOSI_PROD'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'FAZ_COMPOSI_PROD'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'USA_GRADE'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'CODBARRA_PROD'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'COMISSAO_AV_PROD'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'COMISSAO_AP_PROD'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'COMISSAOAT_AP_PROD'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'COMISSAOAT_AV_PROD'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'DATA_VENC_PROD'
        DataType = ftDate
      end
      item
        Name = 'NCM_PROD'
        DataType = ftWideString
        Size = 12
      end
      item
        Name = 'CFOP_PROD'
        DataType = ftInteger
      end
      item
        Name = 'MVA_PROD'
        DataType = ftBCD
        Precision = 4
        Size = 2
      end
      item
        Name = 'CST_ICMS_PROD'
        DataType = ftWideString
        Size = 12
      end
      item
        Name = 'CST_IPI_PROD'
        DataType = ftWideString
        Size = 12
      end
      item
        Name = 'CST_PIS_PROD'
        DataType = ftWideString
        Size = 12
      end
      item
        Name = 'CST_CONFINS_PROD'
        DataType = ftWideString
        Size = 12
      end>
    IndexDefs = <
      item
        Name = 'PK_PRODUTOS'
        Fields = 'COD_PROD'
        Options = [ixUnique]
      end
      item
        Name = 'IDX_NOMEPROD'
        Fields = 'NOME_PROD'
      end
      item
        Name = 'IDX_CODBARRA'
        Fields = 'CODBARRA_PROD'
      end>
    StoreDefs = True
    TableName = 'PRODUTOS'
    UniDirectional = False
    Left = 432
    Top = 216
    object tFNOME_PROD: TIBStringField
      DisplayWidth = 29
      FieldName = 'NOME_PROD'
      Origin = '"PRODUTOS"."NOME_PROD"'
      Size = 70
    end
    object tFDATAC_PROD: TDateField
      DisplayWidth = 21
      FieldName = 'DATAC_PROD'
      Origin = '"PRODUTOS"."DATAC_PROD"'
    end
    object tFUND_PROD: TIBStringField
      DisplayWidth = 11
      FieldName = 'UND_PROD'
      Origin = '"PRODUTOS"."UND_PROD"'
      Size = 3
    end
    object tFESTOQ_PROD: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTOQ_PROD'
      Origin = '"PRODUTOS"."ESTOQ_PROD"'
    end
    object tFCUSTF_PROD: TFloatField
      DisplayWidth = 14
      FieldName = 'CUSTF_PROD'
      Origin = '"PRODUTOS"."CUSTF_PROD"'
    end
    object tFPV_VISTA_PROD: TFloatField
      DisplayWidth = 12
      FieldName = 'PV_VISTA_PROD'
      Origin = '"PRODUTOS"."PV_VISTA_PROD"'
    end
    object tFESTOQ_MIN_PROD: TFloatField
      DisplayWidth = 24
      FieldName = 'ESTOQ_MIN_PROD'
      Origin = '"PRODUTOS"."ESTOQ_MIN_PROD"'
    end
    object tFCODBARRA_PROD: TIBStringField
      DisplayWidth = 18
      FieldName = 'CODBARRA_PROD'
      Origin = '"PRODUTOS"."CODBARRA_PROD"'
    end
  end
  object ibTran: TIBTransaction
    Active = True
    DefaultDatabase = ibDB
    Left = 400
    Top = 56
  end
  object tPro: TnxTable
    ActiveRuntime = True
    Database = nxDB
    TableName = 'Produto'
    Exclusive = True
    IndexName = 'IID'
    Left = 184
    Top = 216
    object tProID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tProCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tProDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tProUnid: TStringField
      FieldName = 'Unid'
      Size = 5
    end
    object tProPreco: TCurrencyField
      FieldName = 'Preco'
    end
    object tProPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object tProMargem: TFloatField
      FieldName = 'Margem'
    end
    object tProObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tProImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tProCategoria: TStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object tProFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tProSubCateg: TStringField
      FieldName = 'SubCateg'
      Size = 35
    end
    object tProEstoqueAtual: TExtendedField
      FieldName = 'EstoqueAtual'
      Precision = 19
    end
    object tProCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
    end
    object tProEstoqueACE: TExtendedField
      FieldName = 'EstoqueACE'
      Precision = 19
    end
    object tProEstoqueACS: TExtendedField
      FieldName = 'EstoqueACS'
      Precision = 19
    end
    object tProPodeAlterarPreco: TBooleanField
      FieldName = 'PodeAlterarPreco'
    end
    object tProPermiteVendaFracionada: TBooleanField
      FieldName = 'PermiteVendaFracionada'
    end
    object tProNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tProEstoqueMin: TExtendedField
      FieldName = 'EstoqueMin'
      Precision = 19
    end
    object tProEstoqueMax: TExtendedField
      FieldName = 'EstoqueMax'
      Precision = 19
    end
    object tProAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object tProAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
    end
    object tProEstoqueRepor: TExtendedField
      FieldName = 'EstoqueRepor'
      Precision = 19
    end
    object tProplus: TBooleanField
      FieldName = 'plus'
    end
    object tProplusURL: TnxMemoField
      FieldName = 'plusURL'
      BlobType = ftMemo
    end
    object tProplusCodParceiro: TStringField
      FieldName = 'plusCodParceiro'
      Size = 15
    end
    object tProplusCodProduto: TStringField
      FieldName = 'plusCodProduto'
      Size = 15
    end
    object tProComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tProComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tProAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object tProFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object tProFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object tPromd5Imagem: TStringField
      FieldName = 'md5Imagem'
      Size = 32
    end
    object tProlastProdModif: TDateTimeField
      FieldName = 'lastProdModif'
    end
    object tProuploadR: TByteField
      FieldName = 'uploadR'
    end
    object tProuploadS: TByteField
      FieldName = 'uploadS'
    end
    object tProfk_produ: TIntegerField
      FieldName = 'fk_produ'
    end
    object tProbatchUID: TGuidField
      FieldName = 'batchUID'
      Size = 38
    end
    object tProCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object tProIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tProRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tEst: TnxTable
    ActiveRuntime = True
    Database = nxDB
    TableName = 'MovEst'
    Exclusive = True
    IndexName = 'IID'
    Left = 120
    Top = 72
    object tEstID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tEstTran: TLongWordField
      FieldName = 'Tran'
    end
    object tEstProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tEstQuant: TFloatField
      FieldName = 'Quant'
    end
    object tEstUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tEstTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tEstCustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object tEstItem: TByteField
      FieldName = 'Item'
    end
    object tEstDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tEstPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tEstPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tEstDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tEstDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tEstEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tEstCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tEstAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tEstEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object tEstCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tEstCaixa: TIntegerField
      FieldName = 'Caixa'
    end
    object tEstCategoria: TStringField
      FieldName = 'Categoria'
    end
    object tEstNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tEstITran: TIntegerField
      FieldName = 'ITran'
    end
    object tEstTipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tEstSessao: TIntegerField
      FieldName = 'Sessao'
    end
    object tEstplusID: TGuidField
      FieldName = 'plusID'
      Size = 38
    end
    object tEstComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tEstComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tEstComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tEstplusTran: TBooleanField
      FieldName = 'plusTran'
    end
    object tEstPermSemEstoque: TBooleanField
      FieldName = 'PermSemEstoque'
    end
    object tEstFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tEstFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tEstRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object nxSE: TnxServerEngine
    ServerName = 'Nextar'
    Options = []
    TableExtension = 'nx1'
    Left = 528
    Top = 248
  end
end
