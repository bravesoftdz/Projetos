object dmNexApp: TdmNexApp
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 297
  Width = 424
  object RSE: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = TCP
    Left = 80
    Top = 40
  end
  object TCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 184
    Top = 40
  end
  object Session: TnxSession
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = RSE
    Left = 80
    Top = 120
  end
  object tTran: TnxTable
    ActiveRuntime = True
    Database = DB
    TableName = 'Tran'
    Left = 184
    Top = 120
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
    object tTranNomeCliente: TStringField
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
  end
  object DB: TnxDatabase
    ActiveDesigntime = True
    Session = Session
    AliasName = 'NexCafe'
    Left = 264
    Top = 32
  end
  object tUsuarios: TnxTable
    Database = DB
    TableName = 'Usuario'
    Left = 280
    Top = 160
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
end
