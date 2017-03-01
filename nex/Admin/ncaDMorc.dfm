object dmOrc: TdmOrc
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 420
  Width = 604
  object Tab: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    FilterOptions = [foCaseInsensitive]
    FlipOrder = True
    TableName = 'Orcamento'
    IndexName = 'IUID'
    Left = 64
    Top = 56
    object TabUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object TabIDSeq: TAutoIncField
      FieldName = 'IDSeq'
    end
    object TabCriadoEm: TDateTimeField
      FieldName = 'CriadoEm'
    end
    object TabAtualizadoEm: TDateTimeField
      FieldName = 'AtualizadoEm'
    end
    object TabVendidoEm: TDateTimeField
      FieldName = 'VendidoEm'
    end
    object TabFunc: TStringField
      FieldName = 'Func'
    end
    object TabTotal: TCurrencyField
      FieldName = 'Total'
    end
    object TabDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object TabTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object TabObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object TabNomeFunc: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFunc'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Func'
      Size = 40
      Lookup = True
    end
    object TabNomeStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeStatus'
      Size = 40
      Calculated = True
    end
    object TabNomeCliente: TWideStringField
      FieldKind = fkLookup
      FieldName = 'NomeCliente'
      LookupDataSet = Dados.tbCli
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 50
      Lookup = True
    end
    object TabIDVenda: TLongWordField
      FieldName = 'IDVenda'
    end
    object TabCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object TabStatus: TByteField
      FieldName = 'Status'
    end
    object TabAprovadoEm: TDateTimeField
      FieldName = 'AprovadoEm'
    end
    object TabRecusadoEm: TDateTimeField
      FieldName = 'RecusadoEm'
    end
    object TabExpiradoEm: TDateTimeField
      FieldName = 'ExpiradoEm'
    end
    object TabStatusAlteradoEm: TDateTimeField
      FieldName = 'StatusAlteradoEm'
    end
    object TabVendido: TBooleanField
      FieldName = 'Vendido'
    end
    object TabValData: TDateTimeField
      FieldName = 'ValData'
    end
    object TabValModo: TByteField
      FieldName = 'ValModo'
    end
    object TabValTempo: TWordField
      FieldName = 'ValTempo'
    end
    object TabValUTempo: TByteField
      FieldName = 'ValUTempo'
    end
  end
  object dbOrcamento: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'dbOrc'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-UID=UID'
      'IDSeq=Numero'
      '-RecVer=RecVer'
      'CriadoEm=CriadoEm'
      'AtualizadoEm=AtualizadoEm'
      'VendidoEm=VendidoEm'
      '-Func=Func'
      'IDVenda=IDVenda'
      '-Cliente=Cliente'
      'Total=Total'
      'Desconto=Desconto'
      'TotalFinal=TotalFinal'
      'Obs=Obs'
      'NomeFunc=NomeFunc'
      'ValData=ValidoAte'
      '-ValModo=ValModo'
      '-ValTempo=ValTempo'
      '-ValUTempo=ValUTempo'
      'Status=Status'
      'AprovadoEm=AprovadoEm'
      'RecusadoEm=RecusadoEm'
      'ExpiradoEm=ExpiradoEm'
      'Vendido=Vendido'
      'StatusAlteradoEm=StatusAlteradoEm'
      'NomeStatus=NomeStatus')
    DataSet = Tab
    BCDToCurrency = False
    Left = 152
    Top = 64
  end
  object tItens: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'IOrcamento'
    IndexFieldNames = 'Orcamento_UID'
    MasterFields = 'UID'
    MasterSource = dsTab
    Left = 240
    Top = 64
    object tItensOrcamento_UID: TGuidField
      FieldName = 'Orcamento_UID'
      Size = 38
    end
    object tItensUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tItensItem: TWordField
      FieldName = 'Item'
    end
    object tItensDescr: TnxMemoField
      FieldName = 'Descr'
      BlobType = ftMemo
    end
    object tItensUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tItensTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tItensDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tItensTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tItensProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tItensQuant: TFloatField
      FieldName = 'Quant'
    end
  end
  object dsTab: TDataSource
    DataSet = Tab
    Left = 64
    Top = 144
  end
  object dbItens: TfrxDBDataset
    UserName = 'dbItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-Orcamento_UID=Orcamento_UID'
      '-UID=UID'
      'Item=Item'
      'Produto=Produto'
      'Descr=Descr'
      'Unitario=Unitario'
      'Quant=Quant'
      'Total=Total'
      'Desconto=Desconto'
      'TotalFinal=TotalFinal'
      '-RecVer=RecVer')
    DataSet = tItens
    BCDToCurrency = False
    Left = 152
    Top = 144
  end
  object dsItens: TDataSource
    DataSet = tItens
    Left = 352
    Top = 72
  end
  object tProduto: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'Produto'
    IndexFieldNames = 'ID'
    MasterFields = 'Produto'
    MasterSource = dsItens
    Left = 344
    Top = 144
    object tProdutoNomeMarca: TWideStringField
      FieldKind = fkLookup
      FieldName = 'NomeMarca'
      LookupDataSet = Dados.tbMarca
      LookupKeyFields = 'UID'
      LookupResultField = 'Nome'
      KeyFields = 'Marca'
      Size = 40
      Lookup = True
    end
    object tProdutoID: TAutoIncField
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
    object tProdutoAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object tProdutoAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
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
    object tProdutoNomeFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFornecedor'
      LookupDataSet = Dados.tbCli
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'ID'
      Size = 40
      Lookup = True
    end
    object tProdutoFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tProdutoEstoqueAtual: TFloatField
      FieldName = 'EstoqueAtual'
    end
    object tProdutoEstoqueMin: TFloatField
      FieldName = 'EstoqueMin'
    end
    object tProdutoEstoqueMax: TFloatField
      FieldName = 'EstoqueMax'
    end
    object tProdutoEstoqueRepor: TFloatField
      FieldName = 'EstoqueRepor'
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
    object tProdutobrtrib: TWordField
      FieldName = 'brtrib'
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
    object tProdutoNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object tProdutocest: TLongWordField
      FieldName = 'cest'
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
    object tProdutoAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tProdutoAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 30
    end
  end
  object dbProduto: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'dbProduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NomeMarca=NomeMarca'
      'ID=ID'
      'Preco=Preco'
      'PrecoAuto=PrecoAuto'
      'Margem=Margem'
      'Imagem=Imagem'
      'CustoUnitario=CustoUnitario'
      'PodeAlterarPreco=PodeAlterarPreco'
      'PermiteVendaFracionada=PermiteVendaFracionada'
      'NaoControlaEstoque=NaoControlaEstoque'
      'AbaixoMin=AbaixoMin'
      'AbaixoMinDesde=AbaixoMinDesde'
      'ComissaoPerc=ComissaoPerc'
      'ComissaoLucro=ComissaoLucro'
      'Ativo=Ativo'
      'Fidelidade=Fidelidade'
      'FidPontos=FidPontos'
      'CadastroRapido=CadastroRapido'
      'IncluidoEm=IncluidoEm'
      'NomeFornecedor=NomeFornecedor'
      'Fornecedor=Fornecedor'
      'EstoqueAtual=EstoqueAtual'
      'EstoqueMin=EstoqueMin'
      'EstoqueMax=EstoqueMax'
      'EstoqueRepor=EstoqueRepor'
      'EstoquePend=EstoquePend'
      'EstoqueTot=EstoqueTot'
      'NCM=NCM'
      'UID=UID'
      'Marca=Marca'
      'Codigo=Codigo'
      'Descricao=Descricao'
      'Unid=Unid'
      'Obs=Obs'
      'Categoria=Categoria'
      'brtrib=brtrib'
      'PesoBruto=PesoBruto'
      'PesoLiq=PesoLiq'
      'tax_id=tax_id'
      'NCM_Ex=NCM_Ex'
      'cest=cest'
      'modST=modST'
      'MVA=MVA'
      'Pauta=Pauta'
      'AlteradoEm=AlteradoEm'
      'AlteradoPor=AlteradoPor')
    DataSet = tProduto
    BCDToCurrency = False
    Left = 248
    Top = 144
  end
  object tCliente: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    OnCalcFields = tClienteCalcFields
    TableName = 'Cliente'
    IndexFieldNames = 'ID'
    MasterFields = 'Cliente'
    MasterSource = dsTab
    Left = 216
    Top = 248
    object tClienteID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tClienteCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tClienteCodigoKey: TStringField
      FieldName = 'CodigoKey'
      Size = 15
    end
    object tClienteNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tClienteEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object tClienteEndereco2: TWideStringField
      FieldName = 'Endereco2'
      Size = 60
    end
    object tClienteEnd_Numero: TWideStringField
      FieldName = 'End_Numero'
    end
    object tClienteEnd_CodMun: TWideStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object tClienteEnd_Dest: TWideStringField
      FieldName = 'End_Dest'
      Size = 40
    end
    object tClienteEnd_Obs: TWideStringField
      FieldName = 'End_Obs'
      Size = 40
    end
    object tClienteendereco_id: TGuidField
      FieldName = 'endereco_id'
      Size = 38
    end
    object tClientePais: TWideStringField
      FieldName = 'Pais'
      Size = 2
    end
    object tClienteBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object tClienteCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object tClienteUF: TWideStringField
      FieldName = 'UF'
      Size = 30
    end
    object tClienteCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tClienteNaoContribICMS: TBooleanField
      FieldName = 'NaoContribICMS'
    end
    object tClienteIsentoIE: TBooleanField
      FieldName = 'IsentoIE'
    end
    object tClienteNFE_CredIcms: TBooleanField
      FieldName = 'NFE_CredIcms'
    end
    object tClienteSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object tClienteObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tClienteCpf: TWideStringField
      FieldName = 'Cpf'
    end
    object tClienteRg: TWideStringField
      FieldName = 'Rg'
    end
    object tClienteTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tClienteEmail: TWideMemoField
      FieldName = 'Email'
      BlobType = ftWideMemo
    end
    object tClientePassaportes: TFloatField
      FieldName = 'Passaportes'
    end
    object tClientePai: TWideStringField
      FieldName = 'Pai'
      Size = 40
    end
    object tClienteMae: TWideStringField
      FieldName = 'Mae'
      Size = 40
    end
    object tClienteUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object tClienteDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tClienteDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object tClienteCelular: TWideStringField
      FieldName = 'Celular'
      Size = 15
    end
    object tClienteTemDebito: TBooleanField
      FieldName = 'TemDebito'
    end
    object tClienteLimiteDebito: TCurrencyField
      FieldName = 'LimiteDebito'
    end
    object tClienteFoto: TGraphicField
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object tClienteIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tClienteAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tClienteIncluidoPor: TStringField
      FieldName = 'IncluidoPor'
    end
    object tClienteAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
    end
    object tClienteFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tClienteFidTotal: TFloatField
      FieldName = 'FidTotal'
    end
    object tClienteFidResg: TFloatField
      FieldName = 'FidResg'
    end
    object tClienteAniversario: TStringField
      FieldName = 'Aniversario'
      Size = 4
    end
    object tClienteSemFidelidade: TBooleanField
      FieldName = 'SemFidelidade'
    end
    object tClienteTemCredito: TBooleanField
      FieldName = 'TemCredito'
    end
    object tClientePJuridica: TBooleanField
      FieldName = 'PJuridica'
    end
    object tClienteConsumidor: TBooleanField
      FieldName = 'Consumidor'
    end
    object tClienteInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tClienteFornecedor: TBooleanField
      FieldName = 'Fornecedor'
    end
    object tClienteValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
    object tClienteRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tClienteEndNumComp: TStringField
      FieldKind = fkCalculated
      FieldName = 'EndNumComp'
      Size = 100
      Calculated = True
    end
  end
  object dbCliente: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'dbCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'Codigo=Codigo'
      '-CodigoKey=CodigoKey'
      'Nome=Nome'
      'Endereco=Endereco1'
      'Endereco2=Endereco2'
      'End_Numero=End_Numero'
      'End_CodMun=End_CodMun'
      'End_Dest=End_Dest'
      'End_Obs=End_Obs'
      '-endereco_id=endereco_id'
      'Pais=Pais'
      'Bairro=Bairro'
      'Cidade=Cidade'
      'UF=UF'
      'CEP=CEP'
      'NaoContribICMS=NaoContribICMS'
      'IsentoIE=IsentoIE'
      'NFE_CredIcms=NFE_CredIcms'
      'Sexo=Sexo'
      'Obs=Obs'
      'Cpf=Cpf'
      'Rg=Rg'
      'Telefone=Telefone'
      'Email=Email'
      'Passaportes=Passaportes'
      'Pai=Pai'
      'Mae=Mae'
      'UltVisita=UltVisita'
      'Debito=Debito'
      'DataNasc=DataNasc'
      'Celular=Celular'
      'TemDebito=TemDebito'
      'LimiteDebito=LimiteDebito'
      'Foto=Foto'
      'IncluidoEm=IncluidoEm'
      'AlteradoEm=AlteradoEm'
      'IncluidoPor=IncluidoPor'
      'AlteradoPor=AlteradoPor'
      'FidPontos=FidPontos'
      'FidTotal=FidTotal'
      'FidResg=FidResg'
      'Aniversario=Aniversario'
      'SemFidelidade=SemFidelidade'
      'TemCredito=TemCredito'
      'PJuridica=PJuridica'
      'Consumidor=Consumidor'
      'Inativo=Inativo'
      'Fornecedor=Fornecedor'
      'ValorCred=ValorCred'
      'RecVer=RecVer'
      'EndNumComp=Endereco')
    DataSet = tCliente
    BCDToCurrency = False
    Left = 416
    Top = 160
  end
  object repOrcamento: TfrxReport
    Version = '5.5.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbZoom, pbNavigator, pbNoFullScreen]
    PreviewOptions.ShowCaptions = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Bullzip'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41908.064752881900000000
    ReportOptions.LastChange = 41908.064752881900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 432
    Top = 248
    Datasets = <
      item
        DataSet = dbCliente
        DataSetName = 'dbCliente'
      end
      item
        DataSet = dbConfig
        DataSetName = 'dbConfig'
      end
      item
        DataSet = dbItens
        DataSetName = 'dbItens'
      end
      item
        DataSet = dbOrcamento
        DataSetName = 'dbOrc'
      end
      item
        DataSet = dbProduto
        DataSetName = 'dbProduto'
      end
      item
        DataSet = dbTotal
        DataSetName = 'dbTotal'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 200.315090000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Align = baWidth
          Top = 173.858380000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
        end
        object Memo1: TfrxMemoView
          Left = 0.559060000000000000
          Width = 347.716760000000000000
          Height = 26.456710000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbConfig."RecNomeLoja"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 103.385900000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente: ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 83.149660000000000000
          Top = 103.385900000000000000
          Width = 589.606680000000000000
          Height = 18.897650000000000000
          DataField = 'Nome'
          DataSet = dbCliente
          DataSetName = 'dbCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCliente."Nome"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baCenter
          Left = 277.795455000000000000
          Top = 26.456710000000000000
          Width = 162.519790000000000000
          Height = 26.456710000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Or'#231'amento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baRight
          Left = 517.795609999999900000
          Top = 75.590599999999990000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero: [dbOrc."Numero"]')
        end
        object Memo9: TfrxMemoView
          Left = 5.559060000000000000
          Top = 177.637910000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade X Descri'#231#227'o')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 597.165740000000000000
          Top = 177.637910000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 465.441250000000000000
          Top = 177.637910000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Top = 75.590599999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Valido at'#233)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 83.149660000000000000
          Top = 75.590599999999990000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'ValidoAte'
          DataSet = dbOrcamento
          DataSetName = 'dbOrc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbOrc."ValidoAte"]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 430.866420000000000000
          Top = 3.779530000000001000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baCenter
          Left = 311.811225000000000000
          Top = 152.401670000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ITENS')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = dbItens
        DataSetName = 'dbItens'
        RowCount = 0
        object Shape4: TfrxShapeView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 26.456710000000000000
        end
        object Memo15: TfrxMemoView
          Left = 600.945270000000000000
          Top = 3.779530000000022000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = dbItens
          DataSetName = 'dbItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItens."Total"]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = 5.559060000000000000
          Top = 3.779530000000022000
          Width = 453.543355910000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C205461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F72205269636865
            6432302031302E302E31343339337D5C766965776B696E64345C756331200D0A
            5C706172645C66733230205B64624974656E732E225175616E74225D205C6220
            585C623020205B64624974656E732E224465736372225D5C66315C667331365C
            7061720D0A7D0D0A00}
        end
        object Memo4: TfrxMemoView
          Left = 464.882190000000000000
          Top = 3.779530000000022000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'Unitario'
          DataSet = dbItens
          DataSetName = 'dbItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItens."Unitario"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        Child = repOrcamento.Child1
        Stretched = True
        object Memo17: TfrxMemoView
          Left = 22.677180000000000000
          Top = 2.338590000000011000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        DataSet = dbTotal
        DataSetName = 'dbTotal'
        RowCount = 0
        object Shape1: TfrxShapeView
          Left = 445.205010000000000000
          Width = 272.126160000000000000
          Height = 30.236240000000000000
        end
        object dbTotPagDescr: TfrxMemoView
          Left = 453.543600000000000000
          Top = 4.779530000000022000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbTotPagDescrOnBeforePrint'
          AutoWidth = True
          DataField = 'Descr'
          DataSet = dbTotal
          DataSetName = 'dbTotal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbTotal."Descr"]')
          ParentFont = False
        end
        object dbTotPagValor: TfrxMemoView
          Left = 582.047620000000000000
          Top = 4.779530000000022000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbTotPagValorOnBeforePrint'
          DataField = 'Valor'
          DataSet = dbTotal
          DataSetName = 'dbTotal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTotal."Valor"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 529.134200000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Align = baLeft
          Top = 3.779530000000022000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Criado em [dbOrc."CriadoEm"] por [dbOrc."NomeFunc"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line1: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 468.661720000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Shape2: TfrxShapeView
          Align = baClient
          Width = 718.110700000000000000
          Height = 37.795300000000000000
        end
        object Memo12: TfrxMemoView
          Left = 102.047285590000000000
          Top = 6.220469999999978000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'Obs'
          DataSet = dbOrcamento
          DataSetName = 'dbOrc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbOrc."Obs"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 6.220469999999978000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
      end
    end
  end
  object mtTot: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Descr'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Valor'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.72.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 496
    Top = 168
    object mtTotDescr: TStringField
      FieldName = 'Descr'
      Size = 40
    end
    object mtTotValor: TCurrencyField
      FieldName = 'Valor'
    end
  end
  object dbTotal: TfrxDBDataset
    UserName = 'dbTotal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Descr=Descr'
      'Valor=Valor')
    DataSet = mtTot
    BCDToCurrency = False
    Left = 528
    Top = 88
  end
  object dbConfig: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'dbConfig'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NumSeq=NumSeq'
      'FecharProgramas=FecharProgramas'
      'AutoExecutar=AutoExecutar'
      'LimiteTempoPadrao=LimiteTempoPadrao'
      'PacoteTempoReal=PacoteTempoReal'
      'PermiteLoginSemCred=PermiteLoginSemCred'
      'AlteraLoginSemCred=AlteraLoginSemCred'
      'EncerramentoPrePago=EncerramentoPrePago'
      'EncerramentoCartao=EncerramentoCartao'
      'TempoEPrePago=TempoEPrePago'
      'TempoECartao=TempoECartao'
      'PermiteCapturaTela=PermiteCapturaTela'
      'VariosTiposAcesso=VariosTiposAcesso'
      'ModoPagtoAcesso=ModoPagtoAcesso'
      'MostraPrePagoDec=MostraPrePagoDec'
      'MostraNomeMaq=MostraNomeMaq'
      'AutoCad=AutoCad'
      'QuickCad=QuickCad'
      'CodProdutoDuplicados=CodProdutoDuplicados'
      'TempoMaxAlerta=TempoMaxAlerta'
      'Abre1=Abre1'
      'Abre2=Abre2'
      'Abre3=Abre3'
      'Abre4=Abre4'
      'Abre5=Abre5'
      'Abre6=Abre6'
      'Abre7=Abre7'
      'Fecha1=Fecha1'
      'Fecha2=Fecha2'
      'Fecha3=Fecha3'
      'Fecha4=Fecha4'
      'Fecha5=Fecha5'
      'Fecha6=Fecha6'
      'Fecha7=Fecha7'
      'CorLivre=CorLivre'
      'CorFLivre=CorFLivre'
      'CorUsoPrePago=CorUsoPrePago'
      'CorFUsoPrePago=CorFUsoPrePago'
      'CorUsoPosPago=CorUsoPosPago'
      'CorFUsoPosPago=CorFUsoPosPago'
      'CorAguardaPagto=CorAguardaPagto'
      'CorFAguardaPagto=CorFAguardaPagto'
      'CorManutencao=CorManutencao'
      'CorFManutencao=CorFManutencao'
      'CorPausado=CorPausado'
      'CorFPausado=CorFPausado'
      'CorDesktop=CorDesktop'
      'CorFDesktop=CorFDesktop'
      'CorMaqManut=CorMaqManut'
      'CorFMaqManut=CorFMaqManut'
      'CorPrevisao=CorPrevisao'
      'CorFPrevisao=CorFPrevisao'
      'CampoLocalizaCli=CampoLocalizaCli'
      'ManterSaldoCaixa=ManterSaldoCaixa'
      'NaoMostrarMsgDebito=NaoMostrarMsgDebito'
      'NaoCobrarImpFunc=NaoCobrarImpFunc'
      'Tolerancia=Tolerancia'
      'RegImp98=RegImp98'
      'LimitePadraoDebito=LimitePadraoDebito'
      'RecPorta=RecPorta'
      'RecSalto=RecSalto'
      'RecLargura=RecLargura'
      'RecRodape=RecRodape'
      'RecImprimir=RecImprimir'
      'RecMatricial=RecMatricial'
      'RecTipoImpressora=RecTipoImpressora'
      'RecNomeLoja=RecNomeLoja'
      'RecCortaFolha=RecCortaFolha'
      'RecImprimeMeioPagto=RecImprimeMeioPagto'
      'RecPrefixoMeioPagto=RecPrefixoMeioPagto'
      'MostraProgAtual=MostraProgAtual'
      'MostraObs=MostraObs'
      'EscondeTextoBotoes=EscondeTextoBotoes'
      'EscondeTipoAcesso=EscondeTipoAcesso'
      'ExigirRG=ExigirRG'
      'TipoFDesktop=TipoFDesktop'
      'TipoFLogin=TipoFLogin'
      'NumFDesktop=NumFDesktop'
      'NumFLogin=NumFLogin'
      'FundoWeb=FundoWeb'
      'FundoWebURL=FundoWebURL'
      'MostrarApenasPIN=MostrarApenasPIN'
      'TextoPIN=TextoPIN'
      'AlterarSenhaCli=AlterarSenhaCli'
      'VerSenhaCli=VerSenhaCli'
      'CliCadPadrao=CliCadPadrao'
      'ControlaImp=ControlaImp'
      'FiltrarWEB=FiltrarWEB'
      'SiteRedirFiltro=SiteRedirFiltro'
      'PastaDownload=PastaDownload'
      'MinutosDesligaMaq=MinutosDesligaMaq'
      'MinutosDesligaMon=MinutosDesligaMon'
      'BloqDownload=BloqDownload'
      'BloqDownloadExe=BloqDownloadExe'
      'BloqMenuIniciar=BloqMenuIniciar'
      'BloqPainelCtrl=BloqPainelCtrl'
      'BloqCtrlAltDel=BloqCtrlAltDel'
      'BloqExecutar=BloqExecutar'
      'BloqMeusLocaisRede=BloqMeusLocaisRede'
      'BloqMeuComputador=BloqMeuComputador'
      'BloqLixeira=BloqLixeira'
      'BloqMeusDocumentos=BloqMeusDocumentos'
      'ClassicStartMenu=ClassicStartMenu'
      'BloqTray=BloqTray'
      'BloqBotaoDir=BloqBotaoDir'
      'BloqToolbars=BloqToolbars'
      'BloqPosPago=BloqPosPago'
      'FiltrarDesktop=FiltrarDesktop'
      'FiltrarMenuIniciar=FiltrarMenuIniciar'
      'TempoB1=TempoB1'
      'TempoB2=TempoB2'
      'TempoB3=TempoB3'
      'TempoB4=TempoB4'
      'TempoB5=TempoB5'
      'TempoB6=TempoB6'
      'PaginaInicial=PaginaInicial'
      'EsconderCronometro=EsconderCronometro'
      'AposEncerrar=AposEncerrar'
      'AlinhaBarraGuard=AlinhaBarraGuard'
      'NoNet=NoNet'
      'TempoSumirLogin=TempoSumirLogin'
      'EsconderDrives=EsconderDrives'
      'EmailMetodo=EmailMetodo'
      'EmailServ=EmailServ'
      'EmailUsername=EmailUsername'
      'EmailSenha=EmailSenha'
      'EmailDestino=EmailDestino'
      'EmailIdent=EmailIdent'
      'EmailEnviarCaixa=EmailEnviarCaixa'
      'EmailConteudo=EmailConteudo'
      'AlertaAssinatura=AlertaAssinatura'
      'CredPadraoTipo=CredPadraoTipo'
      'CredPadraoCod=CredPadraoCod'
      'PgVendas=PgVendas'
      'PgVendaAvulsa=PgVendaAvulsa'
      'PgAcesso=PgAcesso'
      'PgTempo=PgTempo'
      'PgImp=PgImp'
      'BloquearUsoEmHorarioNP=BloquearUsoEmHorarioNP'
      'OpcaoChat=OpcaoChat'
      'SalvarCodUsername=SalvarCodUsername'
      'ContinuarCredTempo=ContinuarCredTempo'
      'NaoGuardarCreditoCli=NaoGuardarCreditoCli'
      'RelCaixaAuto=RelCaixaAuto'
      'SincronizarHorarios=SincronizarHorarios'
      'MostrarDebitoNoGuard=MostrarDebitoNoGuard'
      'BloquearLoginAlemMaxDeb=BloquearLoginAlemMaxDeb'
      'ClienteNaoAlteraSenha=ClienteNaoAlteraSenha'
      'NaoObrigarSenhaCliente=NaoObrigarSenhaCliente'
      'NaoVenderAlemEstoque=NaoVenderAlemEstoque'
      'CreditoComoValor=CreditoComoValor'
      'CliAvulsoNaoEncerra=CliAvulsoNaoEncerra'
      'AutoSortGridCaixa=AutoSortGridCaixa'
      'AvisoFimTempoAdminS=AvisoFimTempoAdminS'
      'DetectarImpServ=DetectarImpServ'
      'AvisoCreditos=AvisoCreditos'
      'ClientePodeVerCred=ClientePodeVerCred'
      'ChatAlertaSonoro=ChatAlertaSonoro'
      'ChatMostraNotificacao=ChatMostraNotificacao'
      'ModoCredGuard=ModoCredGuard'
      'MsgFimCred=MsgFimCred'
      'SemLogin=SemLogin'
      'AutoObsAoCancelar=AutoObsAoCancelar'
      'FidAtivo=FidAtivo'
      'FidVendaValor=FidVendaValor'
      'FidVendaPontos=FidVendaPontos'
      'FidParcial=FidParcial'
      'FidAutoPremiar=FidAutoPremiar'
      'FidAutoPremiarValor=FidAutoPremiarValor'
      'FidAutoPremiarPontos=FidAutoPremiarPontos'
      'FidMostrarSaldoAdmin=FidMostrarSaldoAdmin'
      'FidMsg=FidMsg'
      'FidMsgTitulo=FidMsgTitulo'
      'FidMsgTexto=FidMsgTexto'
      'CliCadNaoEncerra=CliCadNaoEncerra'
      'ImpedirPosPago=ImpedirPosPago'
      'AutoLigarMaqCli=AutoLigarMaqCli'
      'Biometria=Biometria'
      'PMPausaAutomatica=PMPausaAutomatica'
      'PMConfirmaImpCliente=PMConfirmaImpCliente'
      'PMConfirmaImpAdmin=PMConfirmaImpAdmin'
      'PMMostrarPaginasCli=PMMostrarPaginasCli'
      'PMMostrarValorCli=PMMostrarValorCli'
      'PMCalcValorCli=PMCalcValorCli'
      'PMPromptValorCli=PMPromptValorCli'
      'PMObsValorCli=PMObsValorCli'
      'PMPausarServ=PMPausarServ'
      'PMNaoPausar=PMNaoPausar'
      'PMCotas=PMCotas'
      'PMCotasMaxPagDia=PMCotasMaxPagDia'
      'PMCotasMaxPagMes=PMCotasMaxPagMes'
      'PMCotasOpCota=PMCotasOpCota'
      'PMCotasOpExcesso=PMCotasOpExcesso'
      'PMCotasMaxExcesso=PMCotasMaxExcesso'
      'PMCotasPorCli=PMCotasPorCli'
      'PMPDF=PMPDF'
      'PMPDFPrintEng=PMPDFPrintEng'
      'PMReviewCli=PMReviewCli'
      'PMReviewAdmin=PMReviewAdmin'
      'PubHomePage=PubHomePage'
      'PubAd=PubAd'
      'PubToolbar=PubToolbar'
      'MaxTempoSessao=MaxTempoSessao'
      'TarifaPadrao=TarifaPadrao'
      'TarifaPorHorario=TarifaPorHorario'
      'BloqueiaCliAvulso=BloqueiaCliAvulso'
      'ExigeDadosMinimos=ExigeDadosMinimos'
      'DadosMinimos=DadosMinimos'
      'CidadePadrao=CidadePadrao'
      'UFPadrao=UFPadrao'
      'PedirSaldoI=PedirSaldoI'
      'PedirSaldoF=PedirSaldoF'
      'BRT=BRT'
      'DTol=DTol'
      'DVA=DVA'
      'ProxAvisoAss=ProxAvisoAss'
      'PreLib=PreLib'
      'ExCookie=ExCookie'
      'HPOpenBef=HPOpenBef'
      'CamposCliCC=CamposCliCC'
      'CliCongelado=CliCongelado'
      'SenhaAdminOk=SenhaAdminOk'
      'QtdMaqOk=QtdMaqOk'
      'PosLogin=PosLogin'
      'HomePage_AddConta=HomePage_AddConta'
      'HomePage_Tab=HomePage_Tab'
      'HomePage_LastURL=HomePage_LastURL'
      'HomePage_URL=HomePage_URL'
      'HomePage_Params=HomePage_Params'
      'Sky_Params=Sky_Params'
      'Banners=Banners'
      'Botoes=Botoes'
      'FaixaComanda=FaixaComanda'
      'Recursos=Recursos'
      'PrecoAuto=PrecoAuto'
      'Margem=Margem'
      'ComissaoPerc=ComissaoPerc'
      'ValOrc_Tempo=ValOrc_Tempo'
      'ValOrc_UTempo=ValOrc_UTempo'
      'EmailOrc_Enviar=EmailOrc_Enviar'
      'EmailOrc_FromName=EmailOrc_FromName'
      'EmailOrc_FromEmail=EmailOrc_FromEmail'
      'EmailOrc_Subject=EmailOrc_Subject'
      'EmailOrc_Body=EmailOrc_Body'
      'DocOrc_Imprimir=DocOrc_Imprimir'
      'DocOrc_NomeLoja=DocOrc_NomeLoja'
      'ObsPadraoOrcamento=ObsPadraoOrcamento'
      'ComissaoLucro=ComissaoLucro'
      'CodBarBal=CodBarBal'
      'CodBarBalTam=CodBarBalTam'
      'CodBarBalIdent=CodBarBalIdent'
      'CodBarBalInicioCod=CodBarBalInicioCod'
      'CodBarBalTamCod=CodBarBalTamCod'
      'CodBarBalValor=CodBarBalValor'
      'CodBarBalPPInicio=CodBarBalPPInicio'
      'CodBarBalPPTam=CodBarBalPPTam'
      'CodBarBalPPDig=CodBarBalPPDig'
      'CodBarMaxQtdDig=CodBarMaxQtdDig'
      'CodBarArredondar=CodBarArredondar'
      'ComandaOff=ComandaOff'
      'MesasOff=MesasOff'
      'ConsumoAvulsoOff=ConsumoAvulsoOff'
      'ConfirmarDebito=ConfirmarDebito'
      'TelaPosVenda_Mostrar=TelaPosVenda_Mostrar'
      'TelaPosVenda_BtnDef=TelaPosVenda_BtnDef'
      'RecVer=RecVer'
      'DocParam_Email=DocParam_Email'
      'DocParam_Tel=DocParam_Tel'
      'DocParam_Tel2=DocParam_Tel2'
      'DocParam_Cidade=DocParam_Cidade'
      'DocParam_End=DocParam_End'
      'DocParam_CEP=DocParam_CEP'
      'DocParam_CNPJ=DocParam_CNPJ'
      'DocParam_IE=DocParam_IE'
      'DocParam_Site=DocParam_Site'
      'DocParam_Facebook=DocParam_Facebook'
      'DocParam_Instagram=DocParam_Instagram'
      'DocParam_Whats=DocParam_Whats'
      'DocParam_Whats2=DocParam_Whats2'
      'DocParam_InfoExtra=DocParam_InfoExtra'
      'DocParam_Logo=DocParam_Logo'
      'DocParam_Logo2=DocParam_Logo2')
    DataSet = Dados.tbConfig
    BCDToCurrency = False
    Left = 64
    Top = 216
  end
  object expPDF: TfrxPDFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = False
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 320
    Top = 296
  end
  object slFieldMap: TLMDStringList
    Left = 64
    Top = 272
    object TLMDStringListItem
      Description = 'Orcamento'
      Ident = 0
      Internal = {0A094F7263616D656E746F0E0000006E756D65726F3D69647365710D0A}
    end
  end
  object repCustom: TfrxReport
    Version = '5.5.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41910.752276956020000000
    ReportOptions.LastChange = 41910.752276956020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 440
    Top = 328
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object dmExp: TfrxDotMatrixExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = False
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    OEMConvert = False
    PageBreaks = False
    SaveToFile = True
    UseIniSettings = True
    Left = 152
    Top = 208
  end
end
