object dmNexApp: TdmNexApp
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 316
  Width = 424
  object RSE: TnxRemoteServerEngine
    Transport = TCP
    Left = 80
    Top = 32
  end
  object TCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    Timeout = 120000
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 184
    Top = 40
  end
  object Session: TnxSession
    UserName = 'admin'
    Password = 'delphi9856'
    BeepOnLoginError = False
    ServerEngine = RSE
    Left = 72
    Top = 144
  end
  object tTran: TnxTable
    Database = DB
    TableName = 'Tran'
    Left = 184
    Top = 112
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
    object tTranChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
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
    object tTranids_pagto: TStringField
      FieldName = 'ids_pagto'
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
    object tTranNomeCliente: TWideStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tTranSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tTranDescricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
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
    object tTranAmbNFe: TByteField
      FieldName = 'AmbNFe'
    end
    object tTranStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object tTranExtra: TnxMemoField
      FieldName = 'Extra'
      BlobType = ftMemo
    end
    object tTranPagFunc: TStringField
      FieldName = 'PagFunc'
    end
    object tTranComissao: TCurrencyField
      FieldName = 'Comissao'
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
    object tTranPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tTranRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tTranFuncName: TStringField
      FieldKind = fkLookup
      FieldName = 'FuncName'
      LookupDataSet = tUsuarios
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Func'
      Size = 40
      Lookup = True
    end
    object tTranVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object tTranNomeVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeVendedor'
      LookupDataSet = tUsuarios
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Vendedor'
      Size = 40
      Lookup = True
    end
  end
  object DB: TnxDatabase
    Session = Session
    Timeout = 120000
    AliasName = 'NexCafe'
    Left = 264
    Top = 32
  end
  object tUsuarios: TnxTable
    Database = DB
    TableName = 'Usuario'
    Left = 256
    Top = 184
    object tUsuariosUsername: TStringField
      FieldName = 'Username'
    end
    object tUsuariosNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tUsuariosAdmin: TBooleanField
      FieldName = 'Admin'
    end
    object tUsuariosSenha: TStringField
      FieldName = 'Senha'
      Size = 30
    end
    object tUsuariosGrupos: TnxMemoField
      FieldName = 'Grupos'
      BlobType = ftMemo
    end
    object tUsuariosDireitos: TnxMemoField
      FieldName = 'Direitos'
      BlobType = ftMemo
    end
    object tUsuariosMaxTempoManut: TIntegerField
      FieldName = 'MaxTempoManut'
    end
    object tUsuariosMaxMaqManut: TIntegerField
      FieldName = 'MaxMaqManut'
    end
    object tUsuariosLimiteDesc: TFloatField
      FieldName = 'LimiteDesc'
    end
    object tUsuariosRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tUsuariosEmail: TWideStringField
      FieldName = 'Email'
      Size = 100
    end
  end
  object tItens: TnxTable
    Database = DB
    TableName = 'MovEst'
    IndexName = 'ITranItem'
    Left = 136
    Top = 184
    object tItensID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tItensID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object tItensTran: TLongWordField
      FieldName = 'Tran'
    end
    object tItenstax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tItenstax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tItenstax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tItensProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tItensQuant: TFloatField
      FieldName = 'Quant'
    end
    object tItensUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tItensTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tItensCustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object tItensItem: TByteField
      FieldName = 'Item'
    end
    object tItensDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tItensDescr: TWideStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tItensTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tItensPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tItensPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tItensDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tItensDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tItensPend: TBooleanField
      FieldName = 'Pend'
    end
    object tItensIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tItensEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tItensCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tItensAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tItensEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object tItensCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tItensCaixa: TIntegerField
      FieldName = 'Caixa'
    end
    object tItensCategoria: TStringField
      FieldName = 'Categoria'
    end
    object tItensNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tItensITran: TIntegerField
      FieldName = 'ITran'
    end
    object tItensTipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tItensSessao: TIntegerField
      FieldName = 'Sessao'
    end
    object tItensComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tItensComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tItensComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tItensPermSemEstoque: TBooleanField
      FieldName = 'PermSemEstoque'
    end
    object tItensFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tItensFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tItensRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tPagEsp: TnxTable
    Database = DB
    OnCalcFields = tPagEspCalcFields
    TableName = 'PagEspecies'
    IndexName = 'ITranID'
    Left = 192
    Top = 184
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
    object tPagEspTipoTran: TByteField
      FieldName = 'TipoTran'
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
    object tPagEspRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tPagEspNome: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome'
      LookupDataSet = tEsp
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'Especie'
      Size = 40
      Lookup = True
    end
    object tPagEspValorFinal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorFinal'
      Calculated = True
    end
    object tPagEspImgEsp: TWordField
      FieldKind = fkLookup
      FieldName = 'ImgEsp'
      LookupDataSet = tEsp
      LookupKeyFields = 'ID'
      LookupResultField = 'Img'
      KeyFields = 'Especie'
      Lookup = True
    end
    object tPagEspImgEsp2: TWordField
      FieldKind = fkCalculated
      FieldName = 'ImgEsp2'
      Calculated = True
    end
  end
  object tEsp: TnxTable
    Database = DB
    TableName = 'Especie'
    Left = 280
    Top = 120
    object tEspID: TWordField
      FieldName = 'ID'
    end
    object tEspTipo: TByteField
      FieldName = 'Tipo'
    end
    object tEspNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tEspPermiteTroco: TBooleanField
      FieldName = 'PermiteTroco'
    end
    object tEspPermiteVarios: TBooleanField
      FieldName = 'PermiteVarios'
    end
    object tEspPermiteCred: TBooleanField
      FieldName = 'PermiteCred'
    end
    object tEspImg: TWordField
      FieldName = 'Img'
    end
    object tEspRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tEspTipoPagNFE: TByteField
      FieldName = 'TipoPagNFE'
    end
  end
  object mtCard: TkbmMemTable
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
    Version = '7.72.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 40
    Top = 224
    object mtCardCode: TLongWordField
      FieldName = 'Code'
    end
    object mtCardCreationDate: TDateTimeField
      FieldName = 'CreationDate'
    end
    object mtCardType: TByteField
      FieldName = 'Type'
    end
    object mtCardIdRef: TLongWordField
      FieldName = 'IdRef'
    end
    object mtCardShopCode: TLongWordField
      FieldName = 'ShopCode'
    end
    object mtCardEventDate: TDateTimeField
      FieldName = 'EventDate'
    end
  end
  object tCard: TnxTable
    Database = DB
    BeforePost = tCardBeforePost
    TableName = 'Card'
    IndexName = 'I_type_id_ref_status'
    Left = 312
    Top = 64
    object tCardcard_id: TUnsignedAutoIncField
      FieldName = 'card_id'
    end
    object tCardcard_id_ref: TLongWordField
      FieldName = 'card_id_ref'
    end
    object tCardstatus: TByteField
      FieldName = 'status'
    end
    object tCardcreated_on: TDateTimeField
      FieldName = 'created_on'
    end
    object tCardtype: TByteField
      FieldName = 'type'
    end
    object tCardid_ref: TLongWordField
      FieldName = 'id_ref'
    end
    object tCardjson: TWideMemoField
      FieldName = 'json'
      BlobType = ftWideMemo
    end
    object tCardjson_dif: TWideMemoField
      FieldName = 'json_dif'
      BlobType = ftWideMemo
    end
    object tCardmethod: TByteField
      FieldName = 'method'
    end
    object tCardcard_array: TByteField
      FieldName = 'card_array'
    end
  end
  object tPost: TnxTable
    Database = DB
    Timeout = 120000
    TableName = 'post_nexapp'
    IndexName = 'IID'
    Left = 288
    Top = 232
    object tPostID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tPostContentType: TWideStringField
      FieldName = 'ContentType'
      Size = 100
    end
    object tPostDados: TBlobField
      FieldName = 'Dados'
    end
    object tPostQtd: TWordField
      FieldName = 'Qtd'
    end
    object tPostResp: TWideMemoField
      FieldName = 'Resp'
      BlobType = ftWideMemo
    end
    object tPostDH: TDateTimeField
      FieldName = 'DH'
    end
    object tPostmethod: TByteField
      FieldName = 'method'
    end
    object tPostcard_array: TByteField
      FieldName = 'card_array'
    end
  end
  object tCaixa: TnxTable
    Database = DB
    OnCalcFields = tCaixaCalcFields
    TableName = 'Caixa'
    IndexName = 'IID'
    Left = 64
    Top = 88
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
    object tCaixaNomeUsuario: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeUsuario'
      Size = 40
      Calculated = True
    end
    object tCaixaTotalCalc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalCalc'
      Calculated = True
    end
    object tCaixaDivergente: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Divergente'
      Calculated = True
    end
  end
  object tProd: TnxTable
    Database = DB
    OnCalcFields = tProdCalcFields
    TableName = 'Produto'
    IndexName = 'IID'
    Left = 104
    Top = 88
    object tProdID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tProdCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tProdDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tProdUnid: TStringField
      FieldName = 'Unid'
      Size = 5
    end
    object tProdPreco: TCurrencyField
      FieldName = 'Preco'
    end
    object tProdPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object tProdMargem: TFloatField
      FieldName = 'Margem'
    end
    object tProdObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tProdImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tProdCategoria: TStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object tProdFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tProdSubCateg: TStringField
      FieldName = 'SubCateg'
      Size = 35
    end
    object tProdEstoqueAtual: TFloatField
      FieldName = 'EstoqueAtual'
    end
    object tProdEstoquePend: TFloatField
      FieldName = 'EstoquePend'
    end
    object tProdEstoqueTot: TFloatField
      FieldName = 'EstoqueTot'
    end
    object tProdbrtrib: TWordField
      FieldName = 'brtrib'
    end
    object tProdCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
    end
    object tProdPodeAlterarPreco: TBooleanField
      FieldName = 'PodeAlterarPreco'
    end
    object tProdPermiteVendaFracionada: TBooleanField
      FieldName = 'PermiteVendaFracionada'
    end
    object tProdNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tProdEstoqueMin: TFloatField
      FieldName = 'EstoqueMin'
    end
    object tProdEstoqueMax: TFloatField
      FieldName = 'EstoqueMax'
    end
    object tProdAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object tProdAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
    end
    object tProdEstoqueRepor: TFloatField
      FieldName = 'EstoqueRepor'
    end
    object tProdComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tProdComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tProdtax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tProdAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object tProdFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object tProdFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object tProdNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object tProdNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object tProdcest: TLongWordField
      FieldName = 'cest'
    end
    object tProdCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object tProdIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tProdRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tProdNomeFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFornecedor'
      LookupDataSet = tCli
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'Fornecedor'
      Size = 40
      Lookup = True
    end
    object tProdTelFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'TelFornecedor'
      LookupDataSet = tCli
      LookupKeyFields = 'ID'
      LookupResultField = 'Telefone'
      KeyFields = 'Fornecedor'
      Lookup = True
    end
    object tProdEmailFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'EmailFornecedor'
      LookupDataSet = tCli
      LookupKeyFields = 'ID'
      LookupResultField = 'Email'
      KeyFields = 'Fornecedor'
      Size = 50
      Lookup = True
    end
    object tProdShopCode: TLongWordField
      FieldKind = fkCalculated
      FieldName = 'ShopCode'
      Calculated = True
    end
  end
  object tCli: TnxTable
    Database = DB
    TableName = 'Cliente'
    IndexName = 'IID'
    Left = 24
    Top = 88
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
    object tCliNaoContribICMS: TBooleanField
      FieldName = 'NaoContribICMS'
    end
    object tCliIsentoIE: TBooleanField
      FieldName = 'IsentoIE'
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
    object tCliConsumidor: TBooleanField
      FieldName = 'Consumidor'
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
  end
  object tProdFor: TnxTable
    Database = DB
    TableName = 'ProdFor'
    IndexName = 'IProdFor'
    Left = 144
    Top = 248
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
    object tProdForPos: TWordField
      FieldName = 'Pos'
    end
    object tProdForRef: TStringField
      FieldName = 'Ref'
    end
  end
  object tMovEst: TnxTable
    Database = DB
    OnCalcFields = tMovEstCalcFields
    TableName = 'MovEst'
    IndexName = 'ICanceladoContatoTipoDataHora'
    Left = 352
    Top = 168
    object tMovEstID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tMovEstID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object tMovEstTran: TLongWordField
      FieldName = 'Tran'
    end
    object tMovEstItem: TByteField
      FieldName = 'Item'
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
    object tMovEstTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tMovEstCustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object tMovEstCustoT: TCurrencyField
      FieldName = 'CustoT'
    end
    object tMovEstLucro: TCurrencyField
      FieldName = 'Lucro'
    end
    object tMovEstDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tMovEstDescr: TWideStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tMovEstTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
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
    object tMovEstDebDev: TCurrencyField
      FieldName = 'DebDev'
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
    object tMovEstVenDev: TBooleanField
      FieldName = 'VenDev'
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
    object tMovEstCalcCustoU: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcCustoU'
      Calculated = True
    end
  end
end
