object dmComp: TdmComp
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 565
  Width = 790
  object dbTran: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'dbTran'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NomeTipo=NomeTipo'
      'ID=ID'
      'UID=UID'
      'DataHora=DataHora'
      'Cliente=Cliente'
      'Tipo=Tipo'
      'Func=Func'
      'Total=Total'
      'Desconto=Desconto'
      'DescPerc=DescPerc'
      'DescPorPerc=DescPorPerc'
      'TotLiq=TotLiq'
      'PagEsp=PagEsp'
      'Pago=Pago'
      'DebitoAnt=DebitoAnt'
      'Debito=Debito'
      'DebitoPago=DebitoPago'
      'CreditoAnt=CreditoAnt'
      'Credito=Credito'
      'CreditoUsado=CreditoUsado'
      'Troco=Troco'
      'Obs=Obs'
      'Cancelado=Cancelado'
      'CanceladoPor=CanceladoPor'
      'CanceladoEm=CanceladoEm'
      'Caixa=Caixa'
      'CaixaPag=CaixaPag'
      'Maq=Maq'
      'NomeCliente=NomeCliente'
      'Sessao=Sessao'
      'Descr=Descr'
      'QtdTempo=QtdTempo'
      'CredValor=CredValor'
      'FidResgate=FidResgate'
      'PagFunc=PagFunc'
      'PagPend=PagPend'
      'NomeFunc=NomeFunc'
      'UID_ref=UID_ref'
      'OpDevValor=OpDevValor'
      'IncluidoEm=IncluidoEm')
    DataSet = tTran
    BCDToCurrency = False
    Left = 480
    Top = 32
  end
  object dbITran: TfrxDBDataset
    UserName = 'dbITran'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NomeTipoItem=NomeTipoItem'
      'PgAnt=PgAnt'
      'DescrItem=DescrItem'
      'DescrPg=DescrPg'
      'ValorOriginal=ValorOriginal'
      'DescAnt=DescAnt'
      'DataOrig=DataOrig'
      'Quant=Quant'
      'QuantUnid=QuantUnid'
      'Unitario=Unitario'
      'UnitarioStr=UnitarioStr'
      'TotalStr=TotalStr'
      'ID=ID'
      'Tran=Tran'
      'Caixa=Caixa'
      'CaixaPag=CaixaPag'
      'Cliente=Cliente'
      'Sessao=Sessao'
      'DataHora=DataHora'
      'TipoTran=TipoTran'
      'TipoItem=TipoItem'
      'SubTipo=SubTipo'
      'ItemID=ItemID'
      'SubItemID=SubItemID'
      'ItemPos=ItemPos'
      'Total=Total'
      'Desconto=Desconto'
      'TotLiq=TotLiq'
      'Debito=Debito'
      'Pago=Pago'
      'Cancelado=Cancelado'
      'PagPend=PagPend'
      'FidFator=FidFator'
      'FidPontos=FidPontos'
      'FidMov=FidMov'
      'FidOpe=FidOpe')
    DataSet = tITran
    BCDToCurrency = False
    Left = 480
    Top = 88
  end
  object dsItran: TDataSource
    DataSet = Dados.tbTran
    Left = 80
    Top = 80
  end
  object dsTran: TDataSource
    DataSet = Dados.tbTran
    Left = 24
    Top = 80
  end
  object tTran: TnxTable
    Database = Dados.db
    OnCalcFields = tTranCalcFields
    TableName = 'Tran'
    IndexName = 'IUID'
    Left = 24
    Top = 24
    object tTranNomeTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeTipo'
      Size = 50
      Calculated = True
    end
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
    object tTranNomeFunc: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFunc'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Func'
      Size = 40
      Lookup = True
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
  end
  object tITran: TnxTable
    Database = Dados.db
    OnCalcFields = tITranCalcFields
    TableName = 'ITran'
    IndexName = 'ITranID'
    Left = 80
    Top = 24
    object tITranNomeTipoItem: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeTipoItem'
      Size = 30
      Calculated = True
    end
    object tITranPgAnt: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PgAnt'
      Calculated = True
    end
    object tITranDescrItem: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescrItem'
      Size = 100
      Calculated = True
    end
    object tITranDescrPg: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescrPg'
      Size = 80
      Calculated = True
    end
    object tITranValorOriginal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorOriginal'
      Calculated = True
    end
    object tITranDescAnt: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DescAnt'
      Calculated = True
    end
    object tITranDataOrig: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'DataOrig'
      Calculated = True
    end
    object tITranQuant: TStringField
      FieldKind = fkCalculated
      FieldName = 'Quant'
      Size = 50
      Calculated = True
    end
    object tITranQuantUnid: TStringField
      FieldKind = fkCalculated
      FieldName = 'QuantUnid'
      Size = 60
      Calculated = True
    end
    object tITranUnitario: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Unitario'
      Calculated = True
    end
    object tITranUnitarioStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'UnitarioStr'
      Size = 30
      Calculated = True
    end
    object tITranTotalStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'TotalStr'
      Size = 30
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
    object tITranDebito: TCurrencyField
      FieldName = 'Debito'
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
  end
  object tAuxTran: TnxTable
    Database = Dados.db
    TableName = 'Tran'
    IndexName = 'IID'
    Left = 24
    Top = 144
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
  end
  object tSessao: TnxTable
    Database = Dados.db
    TableName = 'Sessao'
    IndexName = 'IID'
    Left = 192
    Top = 80
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
  end
  object tMovEst: TnxTable
    Database = Dados.db
    TableName = 'MovEst'
    IndexName = 'IID'
    Left = 192
    Top = 24
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
    object tMovEstID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object tMovEstRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tAuxITran: TnxTable
    Database = Dados.db
    TableName = 'ITran'
    IndexFieldNames = 'TipoItem;ItemID;Tran'
    Left = 136
    Top = 136
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
    object tAuxITranDebito: TCurrencyField
      FieldName = 'Debito'
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
    object tAuxITranIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
  end
  object tPro: TnxTable
    Database = Dados.db
    Timeout = 10000
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Produto'
    IndexName = 'IID'
    Left = 80
    Top = 144
    object tProEstoqueFinal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EstoqueFinal'
      Calculated = True
    end
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
    object tProComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tProComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tProAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object tProIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tProNomeFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFornecedor'
      LookupDataSet = Dados.tbCli
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'Fornecedor'
      Size = 50
      Lookup = True
    end
    object tProEstoquePend: TExtendedField
      FieldName = 'EstoquePend'
      Precision = 19
    end
    object tProEstoqueTot: TExtendedField
      FieldName = 'EstoqueTot'
      Precision = 19
    end
    object tProNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
  end
  object dbConfig: TfrxDBDataset
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
    Left = 576
    Top = 32
  end
  object repWin: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 38825.568748067100000000
    ReportOptions.Name = 'NEXCAFE_RECIBO'
    ReportOptions.LastChange = 41907.482169050900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure dbTotPagDescrOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  dbTotPagDescr.Font.Color :=  <dbTotPag."DescrCor">;'
      '  if <dbTotPag."DescrBold"> then'
      '    dbTotPagDescr.Font.Style := fsBold'
      '  else'
      
        '    dbTotPagDescr.Font.Style := 0;                              ' +
        '                                                 '
      'end;'
      ''
      'procedure dbTotPagValorOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  dbTotPagValor.Font.Color := <dbTotPag."ValorCor">;'
      '  if <dbTotPag."ValorBold"> then'
      '    dbTotPagValor.Font.Style := fsBold'
      '  else'
      
        '    dbTotPagDescr.Font.Style := 0;                              ' +
        '                                                     '
      'end;  '
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 328
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
        DataSet = dbITran
        DataSetName = 'dbITran'
      end
      item
        DataSet = dbProduto
        DataSetName = 'dbProduto'
      end
      item
        DataSet = dbTotPag
        DataSetName = 'dbTotPag'
      end
      item
        DataSet = dbTran
        DataSetName = 'dbTran'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
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
          Top = 37.795300000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cliente: ')
        end
        object Memo3: TfrxMemoView
          Left = 52.913420000000000000
          Top = 37.795300000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbTran."NomeCliente"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 461.102660000000000000
          Top = 37.795300000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Funcion'#225'rio: [dbTran."NomeFunc"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 64.252010000000000000
          Width = 393.071120000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dbTran."NomeTipo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baRight
          Left = 487.559370000000000000
          Top = 68.031540000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'N.Transa'#231#227'o: [dbTran."ID"]')
        end
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 427.086890000000000000
          Top = 3.779530000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Data / Hora da Transa'#231#227'o: [dbTran."DataHora"]')
        end
        object Memo9: TfrxMemoView
          Top = 113.385900000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Quantidade X Descri'#231#227'o')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baRight
          Left = 604.724800000000000000
          Top = 113.385900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 476.220780000000000000
          Top = 113.385900000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
      end
      object Produtos: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = dbITran
        DataSetName = 'dbITran'
        RowCount = 0
        object Memo13: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
        end
        object Memo15: TfrxMemoView
          Align = baRight
          Left = 476.220875200000000000
          Top = 3.779529999999990000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'Unitario'
          DataSet = dbITran
          DataSetName = 'dbITran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbITran."Unitario"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baRight
          Left = 604.724895200000000000
          Top = 3.779529999999990000
          Width = 113.385804800000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = dbITran
          DataSetName = 'dbITran'
          HAlign = haRight
          Memo.UTF8W = (
            '[dbITran."Total"]')
        end
        object Rich1: TfrxRichView
          Top = 3.779529999999990000
          Width = 472.441005910000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C205461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F72205269636865
            6432302031302E302E31303234307D5C766965776B696E64345C756331200D0A
            5C706172645C66733230205B6462495472616E2E225175616E74556E6964225D
            205C6220585C623020205B6462495472616E2E2244657363724974656D225D5C
            66315C667331365C7061720D0A7D0D0A00}
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        Stretched = True
        object Memo29: TfrxMemoView
          Align = baWidth
          Top = 15.118120000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Memo.UTF8W = (
            '[dbConfig."RecRodape"]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        DataSet = dbTotPag
        DataSetName = 'dbTotPag'
        RowCount = 0
        object Shape1: TfrxShapeView
          Left = 400.630180000000000000
          Width = 317.480520000000000000
          Height = 26.456710000000000000
        end
        object dbTotPagDescr: TfrxMemoView
          Left = 404.409710000000000000
          Top = 3.779530000000020000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbTotPagDescrOnBeforePrint'
          AutoWidth = True
          DataSet = dbTotPag
          DataSetName = 'dbTotPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbTotPag."Descr"]:')
          ParentFont = False
        end
        object dbTotPagValor: TfrxMemoView
          Left = 593.386210000000000000
          Top = 3.779530000000020000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbTotPagValorOnBeforePrint'
          DataField = 'Valor'
          DataSet = dbTotPag
          DataSetName = 'dbTotPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTotPag."Valor"]')
          ParentFont = False
        end
      end
    end
  end
  object ApdComPort1: TApdComPort
    TraceName = 'APRO.TRC'
    LogName = 'APRO.LOG'
    Left = 288
    Top = 104
  end
  object repWinB: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Bullzip'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 38825.568748067100000000
    ReportOptions.Name = 'NEXCAFE_RECIBO'
    ReportOptions.LastChange = 41860.566795497700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure dbTotPagDescrOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  dbTotPagDescr.Font.Color :=  <dbTotPag."DescrCor">;'
      '  if <dbTotPag."DescrBold"> then'
      '    dbTotPagDescr.Font.Style := fsBold'
      '  else'
      
        '    dbTotPagDescr.Font.Style := 0;                              ' +
        '                                                 '
      'end;'
      ''
      'procedure dbTotPagValorOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  dbTotPagValor.Font.Color := <dbTotPag."ValorCor">;'
      '  if <dbTotPag."ValorBold"> then'
      '    dbTotPagValor.Font.Style := fsBold'
      '  else'
      
        '    dbTotPagDescr.Font.Style := 0;                              ' +
        '                                                     '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 88
    Top = 328
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
        DataSet = dbITran
        DataSetName = 'dbITran'
      end
      item
        DataSet = dbProduto
        DataSetName = 'dbProduto'
      end
      item
        DataSet = dbTotPag
        DataSetName = 'dbTotPag'
      end
      item
        DataSet = dbTran
        DataSetName = 'dbTran'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 74
      PaperHeight = 3000
      PaperSize = 256
      LeftMargin = 4
      RightMargin = 2
      EndlessHeight = True
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 150.181200000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 257.008040000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 188.976402360000000000
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
        end
        object Memo2: TfrxMemoView
          Top = 32.133890000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cliente: ')
        end
        object Memo3: TfrxMemoView
          Left = 52.913420000000000000
          Top = 30.795300000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbTran."NomeCliente"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Top = 56.692950000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataSet = dbTran
          DataSetName = 'dbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Funcion'#225'rio: [dbTran."NomeFunc"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 192.756078820000000000
          Width = 64.251961180000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTran."DataHora"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 117.165430000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o / Quantidade X Unit'#225'rio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Align = baRight
          Left = 215.433210000000000000
          Top = 117.165430000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            ' Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Top = 80.252010000000000000
          Width = 279.685220000000000000
          Height = 18.897637800000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[dbTran."NomeTipo"] (n: [dbTran."ID"])')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baWidth
          Top = 100.606370000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          LineSpacing = 1
          Memo.UTF8W = (
            '=====================================================')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          Top = 137.952755910000000000
          Width = 257.008040000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '=====================================================')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object Produtos: TfrxMasterData
        FillType = ftBrush
        Height = 41.354352680000000000
        Top = 230.551330000000000000
        Width = 257.008040000000000000
        DataSet = dbITran
        DataSetName = 'dbITran'
        RowCount = 0
        Stretched = True
        object Memo12: TfrxMemoView
          Width = 253.228510000000000000
          Height = 19.897642680000000000
          DataField = 'DescrItem'
          DataSet = dbITran
          DataSetName = 'dbITran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbITran."DescrItem"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo11: TfrxMemoView
          Left = 159.519790000000000000
          Top = 14.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = dbITran
          DataSetName = 'dbITran'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbITran."Total"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 18.897650000000000000
          Top = 14.897650000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbITran."Quant"] X [dbITran."Unitario"]')
          ParentFont = False
          Formats = <
            item
            end
            item
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end>
        end
        object Memo15: TfrxMemoView
          Top = 30.015770000000000000
          Width = 257.008040000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '-----------------')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object Rodape: TfrxReportSummary
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 374.173470000000000000
        Width = 257.008040000000000000
        Stretched = True
        object dbConfigRecRodape: TfrxMemoView
          Align = baWidth
          Top = 12.559060000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'RecRodape'
          DataSet = dbConfig
          DataSetName = 'dbConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbConfig."RecRodape"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Width = 257.008040000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '-----------------')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object Totalizacao: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 18.897650000000000000
        ParentFont = False
        Top = 294.803340000000000000
        Width = 257.008040000000000000
        DataSet = dbTotPag
        DataSetName = 'dbTotPag'
        RowCount = 0
        object dbTotPagValor: TfrxMemoView
          Align = baRight
          Left = 158.740260000000000000
          Width = 98.267780000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'dbTotPagValorOnBeforePrint'
          DataField = 'Valor'
          DataSet = dbTotPag
          DataSetName = 'dbTotPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTotPag."Valor"]')
          ParentFont = False
        end
        object dbTotPagDescr: TfrxMemoView
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbTotPagDescrOnBeforePrint'
          DataField = 'Descr'
          DataSet = dbTotPag
          DataSetName = 'dbTotPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbTotPag."Descr"]')
          ParentFont = False
        end
      end
    end
  end
  object repCustom: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41551.724324039400000000
    ReportOptions.LastChange = 41551.724324039400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 328
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
        DataSet = dbITran
        DataSetName = 'dbITran'
      end
      item
        DataSet = dbProduto
        DataSetName = 'dbProduto'
      end
      item
        DataSet = dbTotPag
        DataSetName = 'dbTotPag'
      end
      item
        DataSet = dbTran
        DataSetName = 'dbTran'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
    end
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 360
    Top = 304
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 448
    Top = 304
  end
  object Designer: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10
    DefaultRightMargin = 10
    DefaultTopMargin = 10
    DefaultBottomMargin = 10
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 640
    Top = 248
  end
  object frxRichObject1: TfrxRichObject
    Left = 568
    Top = 240
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 320
    Top = 392
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 448
    Top = 232
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 376
    Top = 248
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 400
    Top = 160
  end
  object dbProduto: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'dbProduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EstoqueFinal=EstoqueFinal'
      'ID=ID'
      'Codigo=Codigo'
      'Descricao=Descricao'
      'Unid=Unid'
      'Preco=Preco'
      'PrecoAuto=PrecoAuto'
      'Margem=Margem'
      'Obs=Obs'
      'Imagem=Imagem'
      'Categoria=Categoria'
      'Fornecedor=Fornecedor'
      'SubCateg=SubCateg'
      'EstoqueAtual=EstoqueAtual'
      'CustoUnitario=CustoUnitario'
      'PodeAlterarPreco=PodeAlterarPreco'
      'PermiteVendaFracionada=PermiteVendaFracionada'
      'NaoControlaEstoque=NaoControlaEstoque'
      'EstoqueMin=EstoqueMin'
      'EstoqueMax=EstoqueMax'
      'AbaixoMin=AbaixoMin'
      'AbaixoMinDesde=AbaixoMinDesde'
      'EstoqueRepor=EstoqueRepor'
      'ComissaoPerc=ComissaoPerc'
      'ComissaoLucro=ComissaoLucro'
      'Ativo=Ativo'
      'IncluidoEm=IncluidoEm'
      'NomeFornecedor=NomeFornecedor'
      'EstoquePend=EstoquePend'
      'EstoqueTot=EstoqueTot'
      'NCM=NCM')
    DataSet = tPro
    BCDToCurrency = False
    Left = 528
    Top = 32
  end
  object tCliente: TnxTable
    Database = Dados.db
    TableName = 'Cliente'
    IndexName = 'IID'
    Left = 136
    Top = 24
  end
  object dbCliente: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'dbCliente'
    CloseDataSource = False
    DataSet = tCliente
    BCDToCurrency = False
    Left = 584
    Top = 88
  end
  object tPagEsp: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'PagEspecies'
    IndexName = 'ITranID'
    Left = 136
    Top = 80
    object tPagEspNomeEspecie: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeEspecie'
      LookupDataSet = Dados.tbEspecie
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'Especie'
      Size = 40
      Lookup = True
    end
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
    object tPagEspRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object mtPag: TkbmMemTable
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
      end
      item
        Name = 'DescrCor'
        DataType = ftInteger
      end
      item
        Name = 'DescrBold'
        DataType = ftBoolean
      end
      item
        Name = 'ValorCor'
        DataType = ftInteger
      end
      item
        Name = 'ValorBold'
        DataType = ftBoolean
      end>
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
    Left = 496
    Top = 168
    object mtPagDescr: TStringField
      FieldName = 'Descr'
      Size = 40
    end
    object mtPagValor: TCurrencyField
      FieldName = 'Valor'
    end
    object mtPagDescrCor: TIntegerField
      FieldName = 'DescrCor'
    end
    object mtPagDescrBold: TBooleanField
      FieldName = 'DescrBold'
    end
    object mtPagValorCor: TIntegerField
      FieldName = 'ValorCor'
    end
    object mtPagValorBold: TBooleanField
      FieldName = 'ValorBold'
    end
  end
  object dbTotPag: TfrxDBDataset
    UserName = 'dbTotPag'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Descr=Descr'
      'Valor=Valor'
      'DescrCor=DescrCor'
      'DescrBold=DescrBold'
      'ValorCor=ValorCor'
      'ValorBold=ValorBold')
    DataSet = mtPag
    BCDToCurrency = False
    Left = 528
    Top = 88
  end
  object repSerial: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Generic Text'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38823.643521608800000000
    ReportOptions.LastChange = 42058.441613125000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 152
    Top = 328
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
        DataSet = dbITran
        DataSetName = 'dbITran'
      end
      item
        DataSet = dbProduto
        DataSetName = 'dbProduto'
      end
      item
        DataSet = dbTotPag
        DataSetName = 'dbTotPag'
      end
      item
        DataSet = dbTran
        DataSetName = 'dbTran'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 121.919921260051000000
      PaperHeight = 359.833100941122000000
      PaperSize = 256
      EndlessHeight = True
      FontStyle = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 17
        Top = 204
        Width = 460.800000000000000000
        DataSet = dbITran
        DataSetName = 'dbITran'
        RowCount = 0
        Stretched = True
        object DMPMemo13: TfrxDMPMemoView
          Align = baLeft
          Width = 297.600000000000000000
          Height = 17
          Memo.UTF8W = (
            '[dbITran."QuantUnid"] X [dbITran."DescrItem"]')
          WordWrap = False
          TruncOutboundText = True
        end
        object DMPMemo15: TfrxDMPMemoView
          Align = baRight
          Left = 297.600000000000000000
          Width = 163.200000000000000000
          Height = 17
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbITran."Total"]')
          ParentFont = False
          WordWrap = False
          TruncOutboundText = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 153
        Top = 17
        Width = 460.800000000000000000
        object DMPMemo16: TfrxDMPMemoView
          Align = baLeft
          Width = 259.200000000000000000
          Height = 17
          FontStyle = []
          Memo.UTF8W = (
            '[dbConfig."RecNomeLoja"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo17: TfrxDMPMemoView
          Align = baRight
          Left = 259.200000000000000000
          Width = 182.400000000000000000
          Height = 17
          DataField = 'DataHora'
          DataSet = dbTran
          DataSetName = 'dbTran'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy hh:mm'
          DisplayFormat.Kind = fkDateTime
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTran."DataHora"]')
          ParentFont = False
          WordWrap = False
          TruncOutboundText = False
        end
        object DMPMemo18: TfrxDMPMemoView
          Top = 34
          Width = 451.200000000000000000
          Height = 17
          FontStyle = []
          Memo.UTF8W = (
            'CLIENTE: [dbTran."NomeCliente"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo19: TfrxDMPMemoView
          Top = 51
          Width = 451.200000000000000000
          Height = 17
          Memo.UTF8W = (
            'FUNC---: [dbTran."NomeFunc"]')
          TruncOutboundText = False
        end
        object DMPMemo21: TfrxDMPMemoView
          Align = baWidth
          Top = 85
          Width = 460.800000000000000000
          Height = 17
          FontStyle = []
          Memo.UTF8W = (
            '[dbTran."NomeTipo"] - No.:[dbTran."ID"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo24: TfrxDMPMemoView
          Top = 119
          Width = 240
          Height = 17
          Memo.UTF8W = (
            'Quant. X Produto')
          TruncOutboundText = False
        end
        object DMPMemo25: TfrxDMPMemoView
          Align = baRight
          Left = 336
          Top = 119
          Width = 124.800000000000000000
          Height = 17
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo4: TfrxDMPMemoView
          Align = baWidth
          Top = 102
          Width = 460.800000000000000000
          Height = 17
          Memo.UTF8W = (
            
              '================================================================' +
              '=========================')
          TruncOutboundText = False
        end
        object DMPMemo5: TfrxDMPMemoView
          Align = baWidth
          Top = 136
          Width = 460.800000000000000000
          Height = 17
          Memo.UTF8W = (
            
              '================================================================' +
              '=========================')
          TruncOutboundText = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 34
        Top = 306
        Width = 460.800000000000000000
        Stretched = True
        object DMPMemo1: TfrxDMPMemoView
          Top = 17
          Width = 384
          Height = 17
          StretchMode = smActualHeight
          Memo.UTF8W = (
            '[dbConfig."RecRodape"]')
          WordWrap = False
          TruncOutboundText = False
        end
        object DMPMemo11: TfrxDMPMemoView
          Align = baWidth
          Width = 460.800000000000000000
          Height = 17
          Memo.UTF8W = (
            
              '================================================================' +
              '=========================')
          TruncOutboundText = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 34
        Top = 238
        Width = 460.800000000000000000
        DataSet = dbTotPag
        DataSetName = 'dbTotPag'
        RowCount = 0
        object dbTotPagDescr: TfrxDMPMemoView
          Align = baLeft
          ShiftMode = smDontShift
          Top = 17
          Width = 268.800000000000000000
          Height = 17
          StretchMode = smActualHeight
          DataSet = dbTotPag
          DataSetName = 'dbTotPag'
          FontStyle = []
          Memo.UTF8W = (
            '[dbTotPag."Descr"]')
          ParentFont = False
          TruncOutboundText = True
        end
        object DMPMemo8: TfrxDMPMemoView
          Align = baRight
          ShiftMode = smDontShift
          Left = 259.200000000000000000
          Top = 17
          Width = 182.400000000000000000
          Height = 17
          DataSet = dbTotPag
          DataSetName = 'dbTotPag'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTotPag."Valor"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo2: TfrxDMPMemoView
          Align = baWidth
          Width = 460.800000000000000000
          Height = 17
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '-------------------------')
          TruncOutboundText = False
        end
      end
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
    Left = 168
    Top = 280
  end
  object repDebWin: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 38825.568748067100000000
    ReportOptions.Name = 'NEXCAFE_RECIBO'
    ReportOptions.LastChange = 42010.517047557900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure dbTotPagDescrOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  dbTotPagDescr.Font.Color :=  <dbTotPag."DescrCor">;'
      '  if <dbTotPag."DescrBold"> then'
      '    dbTotPagDescr.Font.Style := fsBold'
      '  else'
      
        '    dbTotPagDescr.Font.Style := 0;                              ' +
        '                                                 '
      'end;'
      ''
      'procedure dbTotPagValorOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  dbTotPagValor.Font.Color := <dbTotPag."ValorCor">;'
      '  if <dbTotPag."ValorBold"> then'
      '    dbTotPagValor.Font.Style := fsBold'
      '  else'
      
        '    dbTotPagDescr.Font.Style := 0;                              ' +
        '                                                     '
      'end;  '
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 400
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
        DataSet = dbITran
        DataSetName = 'dbITran'
      end
      item
        DataSet = dbProduto
        DataSetName = 'dbProduto'
      end
      item
        DataSet = dbTotPag
        DataSetName = 'dbTotPag'
      end
      item
        DataSet = dbTran
        DataSetName = 'dbTran'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
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
          Top = 37.795300000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cliente: ')
        end
        object Memo3: TfrxMemoView
          Left = 52.913420000000000000
          Top = 37.795300000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbTran."NomeCliente"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 427.086890000000000000
          Top = 37.795300000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Funcion'#225'rio: [dbTran."NomeFunc"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 64.252010000000000000
          Width = 393.071120000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Pagamento de D'#233'bito')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baRight
          Left = 487.559370000000000000
          Top = 68.031540000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'N.Transa'#231#227'o: [dbTran."ID"]')
        end
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 427.086890000000000000
          Top = 3.779530000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Data / Hora da Transa'#231#227'o: [dbTran."DataHora"]')
        end
        object Memo9: TfrxMemoView
          Top = 113.385900000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Quantidade X Descri'#231#227'o')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baRight
          Left = 604.724800000000000000
          Top = 113.385900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Pago')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 476.220780000000000000
          Top = 113.385900000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor em D'#233'bito')
          ParentFont = False
        end
      end
      object Produtos: TfrxMasterData
        FillType = ftBrush
        Height = 33.795300000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = dbITran
        DataSetName = 'dbITran'
        RowCount = 0
        object Memo13: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 33.795300000000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
        end
        object Memo15: TfrxMemoView
          Align = baRight
          Left = 476.220875200000000000
          Top = 1.779529999999990000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'Total'
          DataSet = dbITran
          DataSetName = 'dbITran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbITran."Total"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baRight
          Left = 604.724895200000000000
          Top = 1.779529999999990000
          Width = 113.385804800000000000
          Height = 18.897650000000000000
          DataSet = dbITran
          DataSetName = 'dbITran'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[<dbITran."Pago">+<dbITran."Desconto">]')
        end
        object Rich1: TfrxRichView
          Top = 1.779529999999990000
          Width = 472.441005910000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          GapX = 2
          GapY = 1
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C205461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F72205269636865
            6432302031302E302E31303234307D5C766965776B696E64345C756331200D0A
            5C706172645C66733230205B6462495472616E2E225175616E74556E6964225D
            205C6220585C623020205B6462495472616E2E2244657363724974656D225D5C
            66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo4: TfrxMemoView
          Left = 183.944960000000000000
          Top = 18.677180000000000000
          Width = 287.244280000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'Comprado em [dbITran."DataOrig"] - Valor Original = [dbITran."Va' +
              'lorOriginal"]')
          ParentFont = False
          Formats = <
            item
              FormatStr = 'dd/mm/yyyy'
              Kind = fkDateTime
            end
            item
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end>
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        Stretched = True
        object Memo29: TfrxMemoView
          Align = baWidth
          Top = 15.118120000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Memo.UTF8W = (
            '[dbConfig."RecRodape"]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = dbTotPag
        DataSetName = 'dbTotPag'
        RowCount = 0
        object Shape1: TfrxShapeView
          Left = 400.630180000000000000
          Width = 317.480520000000000000
          Height = 26.456710000000000000
        end
        object dbTotPagDescr: TfrxMemoView
          Left = 404.409710000000000000
          Top = 3.779530000000020000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbTotPagDescrOnBeforePrint'
          AutoWidth = True
          DataSet = dbTotPag
          DataSetName = 'dbTotPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbTotPag."Descr"]:')
          ParentFont = False
        end
        object dbTotPagValor: TfrxMemoView
          Left = 593.386210000000000000
          Top = 3.779530000000020000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbTotPagValorOnBeforePrint'
          DataField = 'Valor'
          DataSet = dbTotPag
          DataSetName = 'dbTotPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTotPag."Valor"]')
          ParentFont = False
        end
      end
    end
  end
  object repDebWinB: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Bullzip'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 38825.568748067100000000
    ReportOptions.Name = 'NEXCAFE_RECIBO'
    ReportOptions.LastChange = 41860.566795497700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure dbTotPagDescrOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  dbTotPagDescr.Font.Color :=  <dbTotPag."DescrCor">;'
      '  if <dbTotPag."DescrBold"> then'
      '    dbTotPagDescr.Font.Style := fsBold'
      '  else'
      
        '    dbTotPagDescr.Font.Style := 0;                              ' +
        '                                                 '
      'end;'
      ''
      'procedure dbTotPagValorOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  dbTotPagValor.Font.Color := <dbTotPag."ValorCor">;'
      '  if <dbTotPag."ValorBold"> then'
      '    dbTotPagValor.Font.Style := fsBold'
      '  else'
      
        '    dbTotPagDescr.Font.Style := 0;                              ' +
        '                                                     '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 88
    Top = 400
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
        DataSet = dbITran
        DataSetName = 'dbITran'
      end
      item
        DataSet = dbProduto
        DataSetName = 'dbProduto'
      end
      item
        DataSet = dbTotPag
        DataSetName = 'dbTotPag'
      end
      item
        DataSet = dbTran
        DataSetName = 'dbTran'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 74
      PaperHeight = 3000
      PaperSize = 256
      LeftMargin = 4
      RightMargin = 2
      EndlessHeight = True
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 167.291338590000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 257.008040000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 188.976402360000000000
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
        end
        object Memo2: TfrxMemoView
          Top = 32.133890000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cliente: ')
        end
        object Memo3: TfrxMemoView
          Left = 52.913420000000000000
          Top = 30.795300000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbTran."NomeCliente"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Top = 56.692950000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Funcion'#225'rio: [dbTran."NomeFunc"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 192.756078820000000000
          Width = 64.251961180000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTran."DataHora"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 117.165430000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Align = baRight
          Left = 181.417440000000000000
          Top = 136.063080000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Pago')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Top = 80.252010000000000000
          Width = 279.685220000000000000
          Height = 18.897637800000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Pagamento de D'#233'bito (n: [dbTran."ID"])')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo14: TfrxMemoView
          Align = baWidth
          Top = 100.606370000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          LineSpacing = 1
          Memo.UTF8W = (
            '=====================================================')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          Top = 155.952755910000000000
          Width = 257.008040000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '=====================================================')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Top = 136.063080000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data da Compra    Valor em D'#233'bito')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Produtos: TfrxMasterData
        FillType = ftBrush
        Height = 41.354352680000000000
        Top = 245.669450000000000000
        Width = 257.008040000000000000
        DataSet = dbITran
        DataSetName = 'dbITran'
        RowCount = 0
        Stretched = True
        object Memo12: TfrxMemoView
          Width = 253.228510000000000000
          Height = 19.897642680000000000
          DataSet = dbITran
          DataSetName = 'dbITran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbITran."Quant"] X [dbITran."DescrItem"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 178.417440000000000000
          Top = 14.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = dbITran
          DataSetName = 'dbITran'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[<dbITran."Pago">+<dbITran."Desconto">]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Top = 14.897650000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbITran."DataOrig"]         [dbITran."Total"]')
          ParentFont = False
          Formats = <
            item
              FormatStr = 'dd/mm/yyyy'
              Kind = fkDateTime
            end
            item
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end>
        end
        object Memo15: TfrxMemoView
          Top = 30.015770000000000000
          Width = 257.008040000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '-----------------')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object Rodape: TfrxReportSummary
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 389.291590000000000000
        Width = 257.008040000000000000
        Stretched = True
        object dbConfigRecRodape: TfrxMemoView
          Align = baWidth
          Top = 12.559060000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'RecRodape'
          DataSet = dbConfig
          DataSetName = 'dbConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbConfig."RecRodape"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Width = 257.008040000000000000
          Height = 11.338582680000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '-----------------')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object Totalizacao: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 18.897650000000000000
        ParentFont = False
        Top = 309.921460000000000000
        Width = 257.008040000000000000
        DataSet = dbTotPag
        DataSetName = 'dbTotPag'
        RowCount = 0
        object dbTotPagValor: TfrxMemoView
          Align = baRight
          Left = 158.740260000000000000
          Width = 98.267780000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'dbTotPagValorOnBeforePrint'
          DataField = 'Valor'
          DataSet = dbTotPag
          DataSetName = 'dbTotPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTotPag."Valor"]')
          ParentFont = False
        end
        object dbTotPagDescr: TfrxMemoView
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbTotPagDescrOnBeforePrint'
          DataField = 'Descr'
          DataSet = dbTotPag
          DataSetName = 'dbTotPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbTotPag."Descr"]')
          ParentFont = False
        end
      end
    end
  end
  object repDebSerial: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Generic Text'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38823.643521608800000000
    ReportOptions.LastChange = 41617.563664548600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 152
    Top = 400
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
        DataSet = dbITran
        DataSetName = 'dbITran'
      end
      item
        DataSet = dbProduto
        DataSetName = 'dbProduto'
      end
      item
        DataSet = dbTotPag
        DataSetName = 'dbTotPag'
      end
      item
        DataSet = dbTran
        DataSetName = 'dbTran'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 121.919921260051000000
      PaperHeight = 359.833100941122000000
      PaperSize = 256
      EndlessHeight = True
      FontStyle = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 51
        Top = 221
        Width = 460.800000000000000000
        DataSet = dbITran
        DataSetName = 'dbITran'
        RowCount = 0
        Stretched = True
        object DMPMemo13: TfrxDMPMemoView
          Align = baLeft
          Width = 460.800000000000000000
          Height = 17
          Memo.UTF8W = (
            '[dbITran."QuantUnid"] X [dbITran."DescrItem"]')
          WordWrap = False
          TruncOutboundText = True
        end
        object DMPMemo15: TfrxDMPMemoView
          Align = baRight
          Left = 297.600000000000000000
          Top = 17
          Width = 163.200000000000000000
          Height = 17
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<dbITran."Pago">+<dbITran."Desconto">]')
          ParentFont = False
          WordWrap = False
          TruncOutboundText = False
        end
        object DMPMemo2: TfrxDMPMemoView
          Align = baWidth
          Top = 34
          Width = 460.800000000000000000
          Height = 17
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '-------------------------')
          TruncOutboundText = False
        end
        object dbITranDataOrig: TfrxDMPMemoView
          Top = 17
          Width = 105.600000000000000000
          Height = 17
          DataField = 'DataOrig'
          DataSet = dbITran
          DataSetName = 'dbITran'
          FontStyle = []
          Memo.UTF8W = (
            '[dbITran."DataOrig"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object dbITranTotal: TfrxDMPMemoView
          Left = 134.400000000000000000
          Top = 17
          Width = 134.400000000000000000
          Height = 17
          DataField = 'Total'
          DataSet = dbITran
          DataSetName = 'dbITran'
          FontStyle = []
          Memo.UTF8W = (
            '[dbITran."Total"]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 170
        Top = 17
        Width = 460.800000000000000000
        object DMPMemo16: TfrxDMPMemoView
          Align = baLeft
          Width = 259.200000000000000000
          Height = 17
          FontStyle = []
          Memo.UTF8W = (
            '[dbConfig."RecNomeLoja"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo17: TfrxDMPMemoView
          Align = baRight
          Left = 259.200000000000000000
          Width = 182.400000000000000000
          Height = 17
          DataField = 'DataHora'
          DataSet = dbTran
          DataSetName = 'dbTran'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy hh:mm'
          DisplayFormat.Kind = fkDateTime
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTran."DataHora"]')
          ParentFont = False
          WordWrap = False
          TruncOutboundText = False
        end
        object DMPMemo18: TfrxDMPMemoView
          Top = 34
          Width = 460.800000000000000000
          Height = 17
          FontStyle = []
          Memo.UTF8W = (
            'CLIENTE: [dbTran."NomeCliente"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo19: TfrxDMPMemoView
          Top = 51
          Width = 460.800000000000000000
          Height = 17
          Memo.UTF8W = (
            'FUNC---: [dbTran."NomeFunc"]')
          TruncOutboundText = False
        end
        object DMPMemo21: TfrxDMPMemoView
          Align = baWidth
          Top = 85
          Width = 460.800000000000000000
          Height = 17
          FontStyle = []
          Memo.UTF8W = (
            'Pagamento de D'#233'bito - No.:[dbTran."ID"]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo24: TfrxDMPMemoView
          Top = 119
          Width = 134.400000000000000000
          Height = 17
          Memo.UTF8W = (
            'Descri'#231#227'o')
          TruncOutboundText = False
        end
        object DMPMemo25: TfrxDMPMemoView
          Align = baRight
          Left = 336
          Top = 136
          Width = 124.800000000000000000
          Height = 17
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Pago')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo4: TfrxDMPMemoView
          Align = baWidth
          Top = 102
          Width = 460.800000000000000000
          Height = 17
          Memo.UTF8W = (
            
              '================================================================' +
              '=========================')
          TruncOutboundText = False
        end
        object DMPMemo5: TfrxDMPMemoView
          Align = baWidth
          Top = 153
          Width = 460.800000000000000000
          Height = 17
          Memo.UTF8W = (
            
              '================================================================' +
              '=========================')
          TruncOutboundText = False
        end
        object DMPMemo3: TfrxDMPMemoView
          Top = 136
          Width = 297.600000000000000000
          Height = 17
          Memo.UTF8W = (
            'Data Compra   Valor D'#233'bito')
          TruncOutboundText = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 34
        Top = 340
        Width = 460.800000000000000000
        Stretched = True
        object DMPMemo1: TfrxDMPMemoView
          Top = 17
          Width = 384
          Height = 17
          StretchMode = smActualHeight
          Memo.UTF8W = (
            '[dbConfig."RecRodape"]')
          WordWrap = False
          TruncOutboundText = False
        end
        object DMPMemo11: TfrxDMPMemoView
          Align = baWidth
          Width = 460.800000000000000000
          Height = 17
          Memo.UTF8W = (
            
              '================================================================' +
              '=========================')
          TruncOutboundText = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 17
        Top = 289
        Width = 460.800000000000000000
        DataSet = dbTotPag
        DataSetName = 'dbTotPag'
        RowCount = 0
        object dbTotPagDescr: TfrxDMPMemoView
          Align = baLeft
          ShiftMode = smDontShift
          Width = 268.800000000000000000
          Height = 17
          StretchMode = smActualHeight
          DataSet = dbTotPag
          DataSetName = 'dbTotPag'
          FontStyle = []
          Memo.UTF8W = (
            '[dbTotPag."Descr"]')
          ParentFont = False
          TruncOutboundText = True
        end
        object DMPMemo8: TfrxDMPMemoView
          Align = baRight
          ShiftMode = smDontShift
          Left = 259.200000000000000000
          Width = 182.400000000000000000
          Height = 17
          DataSet = dbTotPag
          DataSetName = 'dbTotPag'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTotPag."Valor"]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
    end
  end
end
