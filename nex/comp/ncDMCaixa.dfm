object dmCaixa: TdmCaixa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 466
  Width = 678
  object nxSession: TnxSession
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    Timeout = 240000
    ServerEngine = nxRSE
    Left = 24
    Top = 16
  end
  object nxDB: TnxDatabase
    ActiveDesigntime = True
    Session = nxSession
    AliasName = 'NexCafe'
    Left = 80
    Top = 16
  end
  object nxRSE: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = nxTCPIP
    Left = 136
    Top = 16
  end
  object nxTCPIP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    Timeout = 240000
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 192
    Top = 16
  end
  object dsQVC: TDataSource
    DataSet = qVC
    Left = 247
    Top = 144
  end
  object qVC: TnxQuery
    Database = nxDB
    Timeout = 120000
    FilterOptions = [foCaseInsensitive]
    OnCalcFields = qVCCalcFields
    SQL.Strings = (
      
        'select P.Categoria, Sum(I.Total) as Total, Sum(I.Desconto) as De' +
        'sconto, Sum(I.Quant) as Quant  from MovEst I, Produto P'
      '  WHERE '
      '     (P.ID=I.Produto) and '
      '     (I.TipoTran=4) and'
      '     ((not Cancelado) or (Cancelado is Null)) and'
      '     ((not FidResgate) or (FidResgate is null))'
      '  GROUP BY '
      '     P.Categoria'
      ''
      '')
    Left = 247
    Top = 96
    object qVCTotal: TCurrencyField
      FieldName = 'Total'
    end
    object qVCDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object qVCTotFinal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotFinal'
      Calculated = True
    end
    object qVCQuant: TFloatField
      FieldName = 'Quant'
    end
    object qVCCategoria: TWideStringField
      FieldName = 'Categoria'
      Size = 35
    end
  end
  object tProd: TnxTable
    Database = nxDB
    Timeout = 120000
    TableName = 'Produto'
    IndexName = 'IID'
    Left = 24
    Top = 275
    object tProdID: TAutoIncField
      FieldName = 'ID'
    end
    object tProdCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
    end
    object tProdNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tProdDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
  end
  object tAuxME: TnxTable
    Database = nxDB
    Timeout = 120000
    Filter = 'Cancelado = False'
    Filtered = True
    OnCalcFields = tAuxMECalcFields
    TableName = 'MovEst'
    IndexName = 'IProduto'
    Left = 24
    Top = 224
    object tAuxMESaldoFinal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SaldoFinal'
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
    object tAuxMEDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tAuxMEEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tAuxMEAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tAuxMEEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object tAuxMECaixa: TIntegerField
      FieldName = 'Caixa'
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
    object tAuxMEFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tAuxMEFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tAuxMECancelado: TBooleanField
      FieldName = 'Cancelado'
    end
  end
  object mtEst: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'SaldoInicial'
        DataType = ftFloat
      end
      item
        Name = 'Entradas'
        DataType = ftFloat
      end
      item
        Name = 'Compras'
        DataType = ftFloat
      end
      item
        Name = 'Saidas'
        DataType = ftFloat
      end
      item
        Name = 'Vendas'
        DataType = ftFloat
      end
      item
        Name = 'ValorVendas'
        DataType = ftCurrency
      end
      item
        Name = 'SaldoFinal'
        DataType = ftFloat
      end
      item
        Name = 'Lucro'
        DataType = ftCurrency
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'FidResg'
        DataType = ftFloat
      end
      item
        Name = 'EntradasTot'
        DataType = ftFloat
      end
      item
        Name = 'Devolucoes'
        DataType = ftFloat
      end
      item
        Name = 'Descricao'
        DataType = ftWideString
      end>
    IndexFieldNames = 'ID'
    IndexName = 'mtEstIndex1'
    IndexDefs = <
      item
        Name = 'mtEstIndex1'
        Fields = 'ID'
      end>
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
    OnCalcFields = mtEstCalcFields
    Left = 80
    Top = 96
    object mtEstSaldoInicial: TFloatField
      FieldName = 'SaldoInicial'
    end
    object mtEstEntradas: TFloatField
      FieldName = 'Entradas'
    end
    object mtEstCompras: TFloatField
      FieldName = 'Compras'
    end
    object mtEstSaidas: TFloatField
      FieldName = 'Saidas'
    end
    object mtEstVendas: TFloatField
      FieldName = 'Vendas'
    end
    object mtEstValorVendas: TCurrencyField
      FieldName = 'ValorVendas'
    end
    object mtEstSaldoFinal: TFloatField
      FieldName = 'SaldoFinal'
    end
    object mtEstLucro: TCurrencyField
      FieldName = 'Lucro'
    end
    object mtEstID: TIntegerField
      FieldName = 'ID'
    end
    object mtEstFidResg: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FidResg'
      Calculated = True
    end
    object mtEstEntradasTot: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EntradasTot'
      Calculated = True
    end
    object mtEstDevolucoes: TFloatField
      FieldName = 'Devolucoes'
    end
    object mtEstDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 40
    end
  end
  object dsTot: TDataSource
    DataSet = mtTot
    Left = 24
    Top = 144
  end
  object dsEst: TDataSource
    DataSet = mtEst
    Left = 80
    Top = 144
  end
  object mtTot: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoIncMinValue = -1
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Total'
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
    Left = 24
    Top = 96
    object mtTotItem: TIntegerField
      FieldName = 'Item'
    end
    object mtTotDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object mtTotValor: TCurrencyField
      FieldName = 'Total'
    end
  end
  object qRFFat: TnxQuery
    Database = nxDB
    Timeout = 120000
    SQL.Strings = (
      'select'
      '  Tipo,'
      '  Count(*) as Qtd,'
      '  Sum(TotLiq) as TotLiq'
      'from '
      '  Tran'
      'where'
      '   ((Cancelado is Null) or (not Cancelado))'
      'group by'
      '  Tipo')
    Left = 184
    Top = 224
    object qRFFatQtd: TLargeintField
      FieldName = 'Qtd'
    end
    object qRFFatTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object qRFFatTipo: TByteField
      FieldName = 'Tipo'
    end
  end
  object qDesc: TnxQuery
    Database = nxDB
    Timeout = 120000
    SQL.Strings = (
      'select'
      '  Count(ID) as Quant,'
      '  Sum(Desconto) as Total'
      'from '
      '  Tran'
      'where'
      
        '  ((not Cancelado) or (Cancelado is null)) and (Desconto > 0.001' +
        ')')
    Left = 248
    Top = 275
    object qDescQuant: TLargeintField
      FieldName = 'Quant'
    end
    object qDescTotal: TCurrencyField
      FieldName = 'Total'
    end
  end
  object qCanc: TnxQuery
    Database = nxDB
    Timeout = 120000
    SQL.Strings = (
      'select'
      '  Count(ID) as Quant,'
      '  Sum(Total) as Total'
      'from '
      '  Tran'
      'where'
      '  (Cancelado = True)'
      '')
    Left = 248
    Top = 224
    object qCancQuant: TLargeintField
      FieldName = 'Quant'
    end
    object qCancTotal: TCurrencyField
      FieldName = 'Total'
    end
  end
  object tCli: TnxTable
    Database = nxDB
    Timeout = 120000
    TableName = 'Cliente'
    IndexName = 'IID'
    Left = 72
    Top = 224
  end
  object tCaixa: TnxTable
    Database = nxDB
    Timeout = 120000
    OnCalcFields = tCaixaCalcFields
    TableName = 'Caixa'
    IndexName = 'IAberto'
    Left = 303
    Top = 144
    object tCaixaID: TAutoIncField
      Alignment = taLeftJustify
      FieldName = 'ID'
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
    object tCaixaTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tCaixaDescontos: TCurrencyField
      FieldName = 'Descontos'
    end
    object tCaixaCancelamentos: TCurrencyField
      FieldName = 'Cancelamentos'
    end
    object tCaixaSaldoAnt: TCurrencyField
      FieldName = 'SaldoAnt'
    end
    object tCaixaObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tCaixaSangria: TCurrencyField
      FieldName = 'Sangria'
    end
    object tCaixaSupr: TCurrencyField
      FieldName = 'Supr'
    end
    object tCaixaReproc: TDateTimeField
      FieldName = 'Reproc'
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
    object tCaixaEstBuscasEng: TMemoField
      FieldName = 'EstBuscasEng'
      BlobType = ftMemo
    end
    object tCaixaEstRes: TMemoField
      FieldName = 'EstRes'
      BlobType = ftMemo
    end
    object tCaixaSaldoF: TCurrencyField
      FieldName = 'SaldoF'
    end
    object tCaixaQuebra: TCurrencyField
      FieldName = 'Quebra'
    end
    object tCaixaIDLivre: TStringField
      FieldName = 'IDLivre'
      Size = 10
    end
    object tCaixaNomeLoja: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeLoja'
      Size = 50
      Calculated = True
    end
  end
  object qFecha: TnxQuery
    Database = nxDB
    Timeout = 120000
    SQL.Strings = (
      'select'
      '  Cancelado,'
      '  Tipo,'
      '  Sum(Total) as Total,'
      '  Sum(Desconto) as Desconto,'
      '  Sum(Pago) as Pago,'
      '  Sum(Troco) as Troco,'
      '  Sum(Debito) as Debito'
      'from '
      '  Tran'
      'where'
      '  (CaixaPag = :Caixa) and ((OpDevValor=1) or (Tipo<>18))'
      'group by'
      '  Cancelado,'
      '  Tipo')
    Left = 72
    Top = 275
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Caixa'
        ParamType = ptUnknown
        Value = 0
      end>
    object qFechaCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object qFechaTipo: TByteField
      FieldName = 'Tipo'
    end
    object qFechaTotal: TCurrencyField
      FieldName = 'Total'
    end
    object qFechaDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object qFechaPago: TCurrencyField
      FieldName = 'Pago'
    end
    object qFechaTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object qFechaDebito: TCurrencyField
      FieldName = 'Debito'
    end
  end
  object repCaixa_pt: TfrxReport
    Version = '5.5.11'
    DataSet = frdbCaixa
    DataSetName = 'frdbCaixa'
    DotMatrixReport = False
    EngineOptions.SilentMode = True
    EngineOptions.NewSilentMode = simSilent
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39015.443900231490000000
    ReportOptions.LastChange = 42555.499512384260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo9OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF1."Bold"> = True then'
      '    Memo9.Font.Style := fsBold'
      '  else'
      
        '    Memo9.Font.Style := 0;                                      ' +
        '                                       '
      
        '  Memo9.Font.Color := <dbRF1."Cor">;                            ' +
        '                        '
      'end;'
      ''
      'procedure Memo10OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF1."Bold"> = True then'
      '    Memo10.Font.Style := fsBold'
      '  else'
      
        '    Memo10.Font.Style := 0;                                     ' +
        '                            '
      '  Memo10.Font.Color := <dbRF1."Cor">;  '
      'end;'
      ''
      'procedure dbRF2DescricaoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF2."Bold"> = True then'
      '    dbRF2Descricao.Font.Style := fsBold'
      '  else'
      
        '    dbRF2Descricao.Font.Style := 0;                             ' +
        '                                                '
      '  dbRF2Descricao.Font.Color := <dbRF2."Cor">;  '
      'end;'
      ''
      'procedure dbRF2TotalOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF2."Bold"> = True then'
      '    dbRF2Total.Font.Style := fsBold'
      '  else'
      
        '    dbRF2Total.Font.Style := 0;                                 ' +
        '                                            '
      '  dbRF2Total.Font.Color := <dbRF2."Cor">;  '
      'end;'
      ''
      'procedure dbRF3DescricaoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF3."Bold"> = True then'
      '    dbRF3Descricao.Font.Style := fsBold'
      '  else'
      
        '    dbRF3Descricao.Font.Style := 0;                             ' +
        '                                                '
      '  dbRF3Descricao.Font.Color := <dbRF3."Cor">;  '
      'end;'
      ''
      'procedure dbRF3TotalOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF3."Bold"> = True then'
      '    dbRF3Total.Font.Style := fsBold'
      '  else'
      
        '    dbRF3Total.Font.Style := 0;                                 ' +
        '                                            '
      '  dbRF3Total.Font.Color := <dbRF3."Cor">;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    ShowProgress = False
    OnBeforePrint = repCaixa_ptBeforePrint
    Left = 256
    Top = 16
    Datasets = <
      item
        DataSet = frdbPagEsp
        DataSetName = 'dbMeioPag'
      end
      item
        DataSet = frdbMPObs
        DataSetName = 'dbMPObs'
      end
      item
        DataSet = dbObs
        DataSetName = 'dbObs'
      end
      item
        DataSet = dbRF1
        DataSetName = 'dbRF1'
      end
      item
        DataSet = dbRF2
        DataSetName = 'dbRF2'
      end
      item
        DataSet = dbRF3
        DataSetName = 'dbRF3'
      end
      item
        DataSet = frdbCaixa
        DataSetName = 'frdbCaixa'
      end
      item
        DataSet = frdbEst
        DataSetName = 'frdbEst'
      end
      item
        DataSet = frdbProd
        DataSetName = 'frdbProd'
      end
      item
        DataSet = frdbTot
        DataSetName = 'frdbTot'
      end
      item
        DataSet = frdbTran
        DataSetName = 'frdbTran'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Top = 26.559060000000000000
          Width = 653.858690000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Caixa n.[frdbCaixa."ID"]     Inicio: [frdbCaixa."Abertura"]     ' +
              'T'#233'rmino: [frdbCaixa."Fechamento"]     Func: [frdbCaixa."Usuario"' +
              ']')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Align = baRight
          Left = 668.598857000000000000
          Top = 25.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag.[Page]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 46.677180000000010000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line54: TfrxLineView
          Align = baWidth
          Top = 22.338590000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Memo82: TfrxMemoView
          Align = baCenter
          Left = 222.803293500000000000
          Top = 0.779530000000001200
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'NomeLoja'
          DataSet = frdbCaixa
          DataSetName = 'frdbCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbCaixa."NomeLoja"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 136.063080000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        Child = repCaixa_pt.childRF2
        KeepChild = True
        KeepFooter = True
        PrintChildIfInvisible = True
        RowCount = 1
        Stretched = True
        object srRF1: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_pt.pgRF1
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 381.732530000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        Child = repCaixa_pt.Child4
        PrintChildIfInvisible = True
        Stretched = True
        object srMovEstoque: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_pt.Page4
          PrintOnParent = True
        end
      end
      object Child4: TfrxChild
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 430.866420000000000000
        Width = 740.409927000000000000
        Child = repCaixa_pt.Child5
        PrintChildIfInvisible = True
        Stretched = True
        object srTran: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_pt.Page5
        end
      end
      object Child5: TfrxChild
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 480.000310000000000000
        Width = 740.409927000000000000
        PrintChildIfInvisible = True
        Stretched = True
        object srEstoqueAbaixoMin: TfrxSubreport
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Page = repCaixa_pt.Page6
        end
      end
      object childRF2: TfrxChild
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 185.196970000000000000
        Width = 740.409927000000000000
        Child = repCaixa_pt.childRF3
        PrintChildIfInvisible = True
        Stretched = True
        object srRF2: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_pt.Page8
        end
      end
      object childRF3: TfrxChild
        FillType = ftBrush
        Height = 26.456692913385800000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        Child = repCaixa_pt.childMeioPagto
        PrintChildIfInvisible = True
        Stretched = True
        object srRF3: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_pt.Page3
        end
      end
      object ChildObs: TfrxChild
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 332.598640000000000000
        Width = 740.409927000000000000
        Child = repCaixa_pt.Child2
        PrintChildIfInvisible = True
        Stretched = True
        object srObs: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_pt.Page2
        end
      end
      object childMeioPagto: TfrxChild
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 283.464750000000000000
        Width = 740.409927000000000000
        Child = repCaixa_pt.ChildObs
        PrintChildIfInvisible = True
        Stretched = True
        object srMeioPagto: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_pt.Page9
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintIfEmpty = False
      object Header3: TfrxHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape5: TfrxShapeView
          Top = 49.133889999999990000
          Width = 740.409927000000000000
          Height = 26.456710000000000000
        end
        object Memo32: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line25: TfrxLineView
          Left = 207.874150000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo33: TfrxMemoView
          Left = 207.874150000000000000
          Top = 52.913420000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo Inicial')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line26: TfrxLineView
          Left = 272.125984250000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo34: TfrxMemoView
          Left = 272.126160000000000000
          Top = 52.913420000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entradas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line27: TfrxLineView
          Left = 328.819110000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo35: TfrxMemoView
          Left = 332.598640000000000000
          Top = 52.913420000000000000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Saidas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line28: TfrxLineView
          Left = 389.291590000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo36: TfrxMemoView
          Left = 393.071120000000000000
          Top = 52.913420000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pr'#234'mio Fid.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line29: TfrxLineView
          Left = 457.323130000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo37: TfrxMemoView
          Left = 665.197280000000000000
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Lucro')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 26.456710000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vendas e Movimenta'#231#227'o de Produtos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 461.102660000000000000
          Top = 52.913420000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vendas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line30: TfrxLineView
          Left = 517.795610000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo40: TfrxMemoView
          Left = 521.575140000000000000
          Top = 52.913420000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo Final')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line31: TfrxLineView
          Left = 589.606680000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo41: TfrxMemoView
          Left = 593.386210000000000000
          Top = 52.913420000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vl.Vendas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line32: TfrxLineView
          Left = 661.417750000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 117.165430000000000000
        Width = 740.409927000000000000
        DataSet = frdbEst
        DataSetName = 'frdbEst'
        RowCount = 0
        object Shape4: TfrxShapeView
          Width = 740.409927000000000000
          Height = 26.456692910000000000
          OnBeforePrint = 'Shape2OnBeforePrint'
        end
        object Memo26: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'Descricao'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbEst."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line20: TfrxLineView
          Left = 207.874150000000000000
          Height = 26.456692910000000000
          OnBeforePrint = 'Line7OnBeforePrint'
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          Left = 272.126160000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          Left = 328.819110000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          Left = 389.291590000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          Left = 457.323130000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo27: TfrxMemoView
          Left = 211.653680000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'SaldoInicial'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."SaldoInicial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 275.905690000000000000
          Top = 3.779529999999994000
          Width = 49.133855830000000000
          Height = 18.897650000000000000
          DataField = 'EntradasTot'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."EntradasTot"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 332.598640000000000000
          Top = 3.779529999999994000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          DataField = 'Saidas'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."Saidas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 393.071120000000000000
          Top = 3.779529999999994000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DataField = 'FidResg'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."FidResg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 461.102660000000000000
          Top = 3.779529999999994000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          DataField = 'Vendas'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."Vendas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line12: TfrxLineView
          Left = 517.795610000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 589.606680000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 661.417750000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo3: TfrxMemoView
          Left = 593.386210000000000000
          Top = 3.779529999999994000
          Width = 64.251975830000000000
          Height = 18.897650000000000000
          DataField = 'ValorVendas'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbEst."ValorVendas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 665.197280000000000000
          Top = 3.779529999999994000
          Width = 71.811035830000000000
          Height = 18.897650000000000000
          DataField = 'Lucro'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbEst."Lucro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779529999999994000
          Width = 64.251975830000000000
          Height = 18.897650000000000000
          DataField = 'SaldoFinal'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."SaldoFinal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 166.299320000000000000
        Width = 740.409927000000000000
        object Shape3: TfrxShapeView
          Width = 740.409927000000000000
          Height = 26.456710000000000000
        end
        object Line16: TfrxLineView
          Left = 589.606680000000000000
          Top = 0.000017090000000053
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 661.417750000000000000
          Top = 0.000017090000000053
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo19: TfrxMemoView
          Left = 593.386210000000000000
          Top = 3.779547089999994000
          Width = 64.251975830000000000
          Height = 18.897650000000000000
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdbEst."ValorVendas">,MasterData3,2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 665.197280000000000000
          Top = 3.779547089999994000
          Width = 71.811035830000000000
          Height = 18.897650000000000000
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdbEst."Lucro">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header4: TfrxHeader
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape8: TfrxShapeView
          Top = 49.133889999999990000
          Width = 740.409927000000000000
          Height = 49.133890000000000000
        end
        object Line34: TfrxLineView
          Left = 64.252010000000000000
          Top = 49.133889999999990000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'No.Tran')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line35: TfrxLineView
          Left = 173.858204250000000000
          Top = 49.133889999999990000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo46: TfrxMemoView
          Left = 68.031540000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data e Hora')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 68.031540000000000000
          Top = 75.590600000000000000
          Width = 98.267745830000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tipo de Transa'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line37: TfrxLineView
          Left = 340.157700000000000000
          Top = 49.133889999999990000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          Left = 404.409710000000000000
          Top = 49.133889999999990000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo51: TfrxMemoView
          Left = 343.937230000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line39: TfrxLineView
          Left = 468.661720000000000000
          Top = 49.133889999999990000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo53: TfrxMemoView
          Left = 472.441250000000000000
          Top = 52.913420000000000000
          Width = 75.590558500000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Observa'#231#245'es')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 3.779530000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Canc/FID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 177.637910000000000000
          Top = 52.913420000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 177.637910000000000000
          Top = 75.590600000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 343.937230000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 408.189240000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Final')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 408.189240000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pago')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Top = 26.456710000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Transa'#231#245'es')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Height = 49.133858270000000000
        Top = 139.842610000000000000
        Width = 740.409927000000000000
        DataSet = frdbTran
        DataSetName = 'frdbTran'
        RowCount = 0
        Stretched = True
        object Shape9: TfrxShapeView
          Align = baClient
          Width = 740.409927000000000000
          Height = 49.133858270000000000
          OnBeforePrint = 'Shape2OnBeforePrint'
        end
        object Memo52: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo24OnBeforePrint'
          DataField = 'ID'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbTran."ID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 68.031540000000000000
          Top = 26.456710000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'NomeTipo'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."NomeTipo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 408.189240000000000000
          Top = 3.779529999999994000
          Width = 56.692915830000000000
          Height = 18.897650000000000000
          DataField = 'TotalFinal'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbTran."TotalFinal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 472.441250000000000000
          Top = 3.779529999999994000
          Width = 264.567100000000000000
          Height = 41.574830000000000000
          StretchMode = smMaxHeight
          DataField = 'Obs'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."Obs"]')
          ParentFont = False
        end
        object Line41: TfrxLineView
          Left = 64.252010000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          Left = 173.858380000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          Left = 340.157700000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line42: TfrxLineView
          Left = 404.409710000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line43: TfrxLineView
          Left = 468.661720000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo60: TfrxMemoView
          Left = 68.031540000000000000
          Top = 3.779529999999994000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'DataHora'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."DataHora"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'NomeCliente'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."NomeCliente"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 177.637910000000000000
          Top = 26.456709999999990000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'Descricao'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."Descricao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 408.189240000000000000
          Top = 26.456709999999990000
          Width = 56.692915830000000000
          Height = 18.897650000000000000
          DataField = 'Pago'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbTran."Pago"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 343.937230000000000000
          Top = 3.779529999999994000
          Width = 56.692915830000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbTran."Total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 343.937230000000000000
          Top = 26.456709999999990000
          Width = 56.692915830000000000
          Height = 18.897650000000000000
          DataField = 'Desconto'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbTran."Desconto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456709999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo24OnBeforePrint'
          DataField = 'CancFid'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbTran."CancFid"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page6: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header5: TfrxHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape10: TfrxShapeView
          Top = 52.913420000000000000
          Width = 740.409927000000000000
          Height = 26.456710000000000000
        end
        object Memo67: TfrxMemoView
          Description = 'Produto'
          Left = 3.779530000000000000
          Top = 56.692949999999990000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line45: TfrxLineView
          Left = 381.732530000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo69: TfrxMemoView
          Left = 389.291590000000000000
          Top = 56.692949999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Estoque Atual')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line46: TfrxLineView
          Left = 476.220780000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo70: TfrxMemoView
          Left = 483.779840000000000000
          Top = 56.692949999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Estoque M'#237'n.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line47: TfrxLineView
          Left = 566.929500000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo71: TfrxMemoView
          Left = 574.488560000000000000
          Top = 56.692949999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Estoque M'#225'x.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line48: TfrxLineView
          Left = 657.638220000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo72: TfrxMemoView
          Left = 661.417750000000000000
          Top = 56.692949999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quant.Repor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Top = 30.236240000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Produtos com estoque abaixo do m'#237'nimo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line44: TfrxLineView
          Left = 283.464750000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo74: TfrxMemoView
          Left = 291.023810000000000000
          Top = 56.692949999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Desde')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 120.944960000000000000
        Width = 740.409927000000000000
        DataSet = frdbProd
        DataSetName = 'frdbProd'
        RowCount = 0
        object Shape11: TfrxShapeView
          Width = 740.409927000000000000
          Height = 26.456692910000000000
          OnBeforePrint = 'Shape2OnBeforePrint'
        end
        object Memo68: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          DataField = 'Descricao'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbProd."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line49: TfrxLineView
          Left = 381.732530000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line50: TfrxLineView
          Left = 476.220780000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line51: TfrxLineView
          Left = 566.929500000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line52: TfrxLineView
          Left = 657.638220000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo75: TfrxMemoView
          Left = 389.291590000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'EstoqueAtual'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."EstoqueAtual"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'EstoqueMin'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."EstoqueMin"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 574.488560000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'EstoqueMax'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."EstoqueMax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 661.417750000000000000
          Top = 3.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          DataField = 'EstoqueRepor'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."EstoqueRepor"]')
          ParentFont = False
        end
        object Line53: TfrxLineView
          Left = 283.464750000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo79: TfrxMemoView
          Left = 291.023810000000000000
          Top = 3.779529999999994000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'AbaixoMinDesde'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."AbaixoMinDesde"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object pgRF1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Resumo Financeiro')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 71.811070000000000000
        Width = 718.110700000000000000
        DataSet = dbRF1
        DataSetName = 'dbRF1'
        RowCount = 0
        object Shape7: TfrxShapeView
          Align = baLeft
          Width = 495.118430000000000000
          Height = 22.677180000000000000
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.889763780000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
          DataField = 'Descricao'
          DataSet = dbRF1
          DataSetName = 'dbRF1'
          Memo.UTF8W = (
            '[dbRF1."Descricao"]')
        end
        object Memo10: TfrxMemoView
          Left = 359.055118110000000000
          Top = 1.889763780000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          DataField = 'Total'
          DataSet = dbRF1
          DataSetName = 'dbRF1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRF1."Total"]')
          ParentFont = False
        end
      end
    end
    object Page8: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object heRF2: TfrxHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Top = 16.118120000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Valores Recebidos:')
          ParentFont = False
        end
      end
      object mdRF2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        DataSet = dbRF2
        DataSetName = 'dbRF2'
        RowCount = 0
        object Shape2: TfrxShapeView
          Align = baLeft
          Width = 495.118110240000000000
          Height = 22.677180000000000000
        end
        object dbRF2Descricao: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.889763779999996000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbRF2DescricaoOnBeforePrint'
          DataField = 'Descricao'
          DataSet = dbRF2
          DataSetName = 'dbRF2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRF2."Descricao"]')
          ParentFont = False
        end
        object dbRF2Total: TfrxMemoView
          Left = 359.055118110000000000
          Top = 1.889763779999996000
          Width = 128.503937010000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbRF2TotalOnBeforePrint'
          DataField = 'Total'
          DataSet = dbRF2
          DataSetName = 'dbRF2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRF2."Total"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object mdRF3: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        DataSet = dbRF3
        DataSetName = 'dbRF3'
        RowCount = 0
        object Shape6: TfrxShapeView
          Align = baLeft
          Width = 495.118110236220000000
          Height = 22.677180000000000000
        end
        object dbRF3Descricao: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.889763779999996000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbRF3DescricaoOnBeforePrint'
          DataField = 'Descricao'
          DataSet = dbRF3
          DataSetName = 'dbRF3'
          Memo.UTF8W = (
            '[dbRF3."Descricao"]')
        end
        object dbRF3Total: TfrxMemoView
          Left = 359.055118110000000000
          Top = 1.889763779999996000
          Width = 128.503937010000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbRF3TotalOnBeforePrint'
          DataField = 'Total'
          DataSet = dbRF3
          DataSetName = 'dbRF3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRF3."Total"]')
          ParentFont = False
        end
      end
      object Header7: TfrxHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Top = 17.338590000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Saldo de Caixa:')
          ParentFont = False
        end
      end
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintIfEmpty = False
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 75.590600000000000000
        Width = 718.110700000000000000
        DataSet = dbObs
        DataSetName = 'dbObs'
        RowCount = 0
        Stretched = True
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 718.110700000000000000
          Height = 30.236240000000000000
        end
        object frdbCaixaObs: TfrxMemoView
          Left = 3.779530000000000000
          Top = 4.779529999999994000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'Obs'
          DataSet = dbObs
          DataSetName = 'dbObs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbObs."Obs"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Top = 15.118120000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
      end
    end
    object Page9: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData7: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 113.385900000000000000
        Width = 740.409927000000000000
        DataSet = frdbPagEsp
        DataSetName = 'dbMeioPag'
        RowCount = 0
        Stretched = True
        object Shape15: TfrxShapeView
          Align = baClient
          Width = 740.409927000000000000
          Height = 26.456692910000000000
          OnBeforePrint = 'Shape2OnBeforePrint'
        end
        object Line3: TfrxLineView
          Left = 638.740570000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Highlight.ApplyFill = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dbMeioPag."Especie"> = 65535'
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[dbMeioPag."NomeEsp"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.559060000000003000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMeioPag."Total"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 408.189240000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 283.464750000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 529.134199999999900000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo42: TfrxMemoView
          Left = 162.519790000000000000
          Top = 3.779529999999994000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMeioPag."Vendas"]')
          ParentFont = False
          Highlights = <
            item
              ApplyFont = False
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value = 0'
              FillType = ftBrush
              Visible = False
            end
            item
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Condition = '<dbMeioPag."Especie"> = 65535'
              FillType = ftBrush
            end>
        end
        object Memo43: TfrxMemoView
          Left = 287.244280000000000000
          Top = 3.779529999999994000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMeioPag."Dev"]')
          ParentFont = False
          Highlights = <
            item
              ApplyFont = False
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value = 0'
              FillType = ftBrush
              Visible = False
            end
            item
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Condition = '<dbMeioPag."Especie"> = 65535'
              FillType = ftBrush
            end>
        end
        object Memo80: TfrxMemoView
          Left = 411.968770000000000000
          Top = 3.779529999999994000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMeioPag."Sangria"]')
          ParentFont = False
          Highlights = <
            item
              ApplyFont = False
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value = 0'
              FillType = ftBrush
              Visible = False
            end
            item
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Condition = '<dbMeioPag."Especie"> = 65535'
              FillType = ftBrush
            end>
        end
        object Memo81: TfrxMemoView
          Left = 532.913730000000000000
          Top = 3.779529999999994000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMeioPag."Supr"]')
          ParentFont = False
          Highlights = <
            item
              ApplyFont = False
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value = 0'
              FillType = ftBrush
              Visible = False
            end
            item
              ApplyFill = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Condition = '<dbMeioPag."Especie"> = 65535'
              FillType = ftBrush
            end>
        end
        object Line2: TfrxLineView
          Left = 158.740260000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object Header8: TfrxHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo14: TfrxMemoView
          Top = 20.677180000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            'Total por Meio de Pagamento')
          ParentFont = False
        end
        object Shape16: TfrxShapeView
          Top = 45.354360000000000000
          Width = 740.409448820000000000
          Height = 26.456710000000000000
        end
        object Line4: TfrxLineView
          Left = 638.740157480315000000
          Top = 45.354360000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 159.496062990000000000
          Top = 45.354360000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo15: TfrxMemoView
          Left = 645.520100000000000000
          Top = 48.913420000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133889999999990000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Meio de Pagamento')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 408.189240000000000000
          Top = 45.354360000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 283.464750000000000000
          Top = 45.354360000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 529.134200000000000000
          Top = 45.354360000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo17: TfrxMemoView
          Left = 177.637910000000000000
          Top = 49.133889999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vendas')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 298.582870000000000000
          Top = 49.133889999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Devolu'#231#245'es')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 423.307360000000000000
          Top = 49.133889999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sangria')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 540.472790000000000000
          Top = 49.133889999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Suprimento')
          ParentFont = False
        end
      end
      object MasterData8: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 162.519790000000000000
        Width = 740.409927000000000000
        DataSet = frdbMPObs
        DataSetName = 'dbMPObs'
        RowCount = 1
        object Memo13: TfrxMemoView
          Align = baWidth
          Top = 1.779529999999994000
          Width = 740.409927000000000000
          Height = 18.897650000000000000
          DataSet = frdbMPObs
          DataSetName = 'dbMPObs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[dbMPObs."Asterisco"] O valor total recebido em [dbMPObs."NomeEs' +
              'p"] foi de [dbMPObs."Total"] mas houve troco de [dbMPObs."Troco"' +
              '].')
          ParentFont = False
          Formats = <
            item
            end
            item
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end
            item
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end
            item
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end>
        end
      end
    end
  end
  object PDFexp: TfrxPDFExport
    ShowDialog = False
    FileName = 'c:\meus programas\caixa.pdf'
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
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 312
    Top = 16
  end
  object frdbCaixa: TfrxDBDataset
    Description = 'Caixa'
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frdbCaixa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'Aberto=Aberto'
      'Usuario=Usuario'
      'Abertura=Abertura'
      'Fechamento=Fechamento'
      'TotalFinal=TotalFinal'
      'Descontos=Descontos'
      'Cancelamentos=Cancelamentos'
      'SaldoAnt=SaldoAnt'
      'Obs=Obs'
      'Sangria=Sangria'
      'Supr=Supr'
      'Reproc=Reproc'
      'EstSessoesQtd=EstSessoesQtd'
      'EstSessoesTempo=EstSessoesTempo'
      'EstUrls=EstUrls'
      'EstSyncOk=EstSyncOk'
      'EstBuscasEng=EstBuscasEng'
      'EstRes=EstRes'
      'SaldoF=SaldoF'
      'Quebra=Quebra'
      'IDLivre=IDLivre'
      'NomeLoja=NomeLoja')
    DataSet = tCaixa
    BCDToCurrency = False
    Left = 368
    Top = 16
  end
  object frdbTot: TfrxDBDataset
    Description = 'Resumo Financeiro'
    UserName = 'frdbTot'
    CloseDataSource = False
    DataSet = mtTot
    BCDToCurrency = False
    Left = 416
    Top = 16
  end
  object qCorr: TnxQuery
    Database = nxDB
    Timeout = 120000
    SQL.Strings = (
      'update tran'
      'set pago = total - desconto'
      'where (Pago > (Total - Desconto)) and (Caixa=:Caixa)')
    Left = 352
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'Caixa'
        ParamType = ptUnknown
        Value = 1
      end>
  end
  object qCorr2: TnxQuery
    Database = nxDB
    Timeout = 120000
    SQL.Strings = (
      'update itran'
      'set caixa = :Caixa'
      'where tran in (select id from tran where caixa = :Caixa)')
    Left = 560
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'Caixa'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftString
        Name = 'Caixa'
        ParamType = ptUnknown
      end>
  end
  object tTran: TnxTable
    Database = nxDB
    Filter = '(Cancelado = False) and (Pago > 0)'
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Tran'
    IndexName = 'IID'
    Left = 24
    Top = 328
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
    object tTranIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tTranOpDevValor: TByteField
      FieldName = 'OpDevValor'
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
    object tTranDescricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
    object tTranNomeCliente: TWideStringField
      FieldName = 'NomeCliente'
      Size = 0
    end
  end
  object tITran: TnxTable
    Database = nxDB
    TableName = 'ITran'
    IndexName = 'ITranID'
    Left = 72
    Top = 336
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
  object frdbEst: TfrxDBDataset
    UserName = 'frdbEst'
    CloseDataSource = False
    DataSet = mtEst
    BCDToCurrency = False
    Left = 480
    Top = 16
  end
  object frdbTran: TfrxDBDataset
    UserName = 'frdbTran'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DataHora=DataHora'
      'Func=Func'
      'Total=Total'
      'Desconto=Desconto'
      'TotLiq=TotLiq'
      'Pago=Pago'
      'Debito=Debito'
      'Obs=Obs'
      'Cancelado=Cancelado'
      'CanceladoPor=CanceladoPor'
      'CanceladoEm=CanceladoEm'
      'QtdTempo=QtdTempo'
      'CredValor=CredValor'
      'FidResgate=FidResgate'
      'NomeTipo=NomeTipo'
      'CancFid=CancFid'
      'UID=UID'
      'Cliente=Cliente'
      'Tipo=Tipo'
      'DescPerc=DescPerc'
      'DescPorPerc=DescPorPerc'
      'PagEsp=PagEsp'
      'DebitoAnt=DebitoAnt'
      'DebitoPago=DebitoPago'
      'CreditoAnt=CreditoAnt'
      'Credito=Credito'
      'CreditoUsado=CreditoUsado'
      'Troco=Troco'
      'Caixa=Caixa'
      'CaixaPag=CaixaPag'
      'Maq=Maq'
      'PagFunc=PagFunc'
      'PagPend=PagPend'
      'ID=ID'
      'Sessao=Sessao'
      'Descricao=Descricao'
      'Entregar=Entregar'
      'Hora=Hora'
      'NomeCliente=NomeCliente'
      'Vendedor=Vendedor'
      'Comissao=Comissao'
      'Frete=Frete'
      'TotalFinal=TotalFinal')
    DataSet = qRepTran
    BCDToCurrency = False
    Left = 544
    Top = 16
  end
  object tRepProd: TnxTable
    Database = nxDB
    Timeout = 120000
    TableName = 'Produto'
    IndexName = 'IAbaixoMin'
    Left = 424
    Top = 147
  end
  object frdbProd: TfrxDBDataset
    UserName = 'frdbProd'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'UID=UID'
      'Marca=Marca'
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
      'EstoqueAtual=EstoqueAtual'
      'EstoquePend=EstoquePend'
      'EstoqueTot=EstoqueTot'
      'brtrib=brtrib'
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
      'PesoBruto=PesoBruto'
      'PesoLiq=PesoLiq'
      'tax_id=tax_id'
      'Ativo=Ativo'
      'Fidelidade=Fidelidade'
      'FidPontos=FidPontos'
      'NCM=NCM'
      'NCM_Ex=NCM_Ex'
      'cest=cest'
      'modST=modST'
      'MVA=MVA'
      'Pauta=Pauta'
      'CadastroRapido=CadastroRapido'
      'IncluidoEm=IncluidoEm'
      'AlteradoEm=AlteradoEm'
      'AlteradoPor=AlteradoPor'
      'RecVer=RecVer')
    DataSet = tRepProd
    BCDToCurrency = False
    Left = 168
    Top = 80
  end
  object qRepTran: TnxQuery
    Database = nxDB
    Timeout = 120000
    OnCalcFields = qRepTranCalcFields
    SQL.Strings = (
      'select * from Tran')
    Left = 592
    Top = 72
    object qRepTranDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object qRepTranFunc: TStringField
      FieldName = 'Func'
    end
    object qRepTranTotal: TCurrencyField
      FieldName = 'Total'
    end
    object qRepTranDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object qRepTranTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object qRepTranPago: TCurrencyField
      FieldName = 'Pago'
    end
    object qRepTranDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object qRepTranObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object qRepTranCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object qRepTranCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object qRepTranCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object qRepTranQtdTempo: TFloatField
      FieldName = 'QtdTempo'
    end
    object qRepTranCredValor: TBooleanField
      FieldName = 'CredValor'
    end
    object qRepTranFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object qRepTranNomeTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeTipo'
      Size = 40
      Calculated = True
    end
    object qRepTranCancFid: TStringField
      FieldKind = fkCalculated
      FieldName = 'CancFid'
      Size = 10
      Calculated = True
    end
    object qRepTranUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object qRepTranCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object qRepTranTipo: TByteField
      FieldName = 'Tipo'
    end
    object qRepTranDescPerc: TFloatField
      FieldName = 'DescPerc'
    end
    object qRepTranDescPorPerc: TBooleanField
      FieldName = 'DescPorPerc'
    end
    object qRepTranPagEsp: TWordField
      FieldName = 'PagEsp'
    end
    object qRepTranDebitoAnt: TCurrencyField
      FieldName = 'DebitoAnt'
    end
    object qRepTranDebitoPago: TCurrencyField
      FieldName = 'DebitoPago'
    end
    object qRepTranCreditoAnt: TCurrencyField
      FieldName = 'CreditoAnt'
    end
    object qRepTranCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object qRepTranCreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object qRepTranTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object qRepTranCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object qRepTranCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object qRepTranMaq: TWordField
      FieldName = 'Maq'
    end
    object qRepTranPagFunc: TStringField
      FieldName = 'PagFunc'
    end
    object qRepTranPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object qRepTranID: TLongWordField
      FieldName = 'ID'
    end
    object qRepTranSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object qRepTranDescricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
    object qRepTranEntregar: TBooleanField
      FieldName = 'Entregar'
    end
    object qRepTranHora: TByteField
      FieldName = 'Hora'
    end
    object qRepTranNomeCliente: TWideStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object qRepTranVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object qRepTranComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object qRepTranFrete: TCurrencyField
      FieldName = 'Frete'
    end
    object qRepTranTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
  end
  object tUsuario: TnxTable
    Database = nxDB
    TableName = 'Usuario'
    IndexName = 'IUsername'
    Left = 168
    Top = 144
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
  end
  object qPagEsp: TnxQuery
    Database = nxDB
    Timeout = 120000
    OnCalcFields = qPagEspCalcFields
    SQL.Strings = (
      'select'
      '  Especie,'
      '  TipoTran,'
      '  Sum(Valor) as TotalValor,'
      '  Sum(Troco) as TotalTroco'
      'from '
      '  PagEspecies'
      'where'
      '  ((Cancelado is Null) or (not Cancelado))'
      'group by'
      '  Especie, TipoTran'
      'order by'
      '  Especie, TipoTran')
    Left = 408
    Top = 208
    object qPagEspTotalF: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalF'
      Calculated = True
    end
    object qPagEspNomeEspecie: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeEspecie'
      LookupDataSet = tEsp
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'Especie'
      Size = 40
      Lookup = True
    end
    object qPagEspImg: TWordField
      FieldKind = fkLookup
      FieldName = 'Img'
      LookupDataSet = tEsp
      LookupKeyFields = 'ID'
      LookupResultField = 'Img'
      KeyFields = 'Especie'
      Lookup = True
    end
    object qPagEspEspecie: TWordField
      FieldName = 'Especie'
    end
    object qPagEspTotalValor: TCurrencyField
      FieldName = 'TotalValor'
    end
    object qPagEspTotalTroco: TCurrencyField
      FieldName = 'TotalTroco'
    end
    object qPagEspTipoTran: TByteField
      FieldName = 'TipoTran'
    end
  end
  object tEsp: TnxTable
    Database = nxDB
    Timeout = 120000
    TableName = 'Especie'
    IndexName = 'IID'
    Left = 360
    Top = 152
    object tEspID: TWordField
      FieldName = 'ID'
    end
    object tEspNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tEspImg: TWordField
      FieldName = 'Img'
    end
  end
  object dsPagEsp: TDataSource
    DataSet = mtPagEsp
    Left = 456
    Top = 208
  end
  object frdbPagEsp: TfrxDBDataset
    UserName = 'dbMeioPag'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Especie=Especie'
      'NomeEsp=NomeEsp'
      'Vendas=Vendas'
      'Dev=Dev'
      'Sangria=Sangria'
      'Supr=Supr'
      'Total=Total'
      'Obs=Obs')
    DataSet = mtPagEsp
    BCDToCurrency = False
    Left = 448
    Top = 88
  end
  object qRFPag: TnxQuery
    Database = nxDB
    Timeout = 120000
    SQL.Strings = (
      'select'
      '  Tipo,'
      '  Count(*) as Qtd,'
      '  Sum(Credito) as Credito,'
      '  Sum(Debito) as Debito,'
      '  Sum(Pago) as Pago,'
      '  Sum(CreditoUsado) as CreditoUsado,'
      '  Sum(Troco) as Troco'
      'from '
      '  Tran'
      'where'
      '   ((Cancelado is Null) or (not Cancelado))'
      'group by'
      '  Tipo'
      '')
    Left = 184
    Top = 272
    object qRFPagQtd: TLargeintField
      FieldName = 'Qtd'
    end
    object qRFPagCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object qRFPagDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object qRFPagCreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object qRFPagPago: TCurrencyField
      FieldName = 'Pago'
    end
    object qRFPagTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object qRFPagTipo: TByteField
      FieldName = 'Tipo'
    end
  end
  object mtRF1: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoIncMinValue = -1
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end
      item
        Name = 'Bold'
        DataType = ftBoolean
      end
      item
        Name = 'Cor'
        DataType = ftInteger
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
    OnCalcFields = mtRF1CalcFields
    Left = 336
    Top = 336
    object mtRF1Item: TIntegerField
      FieldName = 'Item'
    end
    object mtRF1Descricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object mtRF1Total: TCurrencyField
      FieldName = 'Total'
    end
    object mtRF1Bold: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Bold'
      Calculated = True
    end
    object mtRF1Cor: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Cor'
      Calculated = True
    end
  end
  object dsRF1: TDataSource
    DataSet = mtRF1
    Left = 336
    Top = 384
  end
  object mtRF2: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoIncMinValue = -1
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end
      item
        Name = 'Bold'
        DataType = ftBoolean
      end
      item
        Name = 'Cor'
        DataType = ftInteger
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
    OnCalcFields = mtRF2CalcFields
    Left = 384
    Top = 336
    object mtRF2Item: TIntegerField
      FieldName = 'Item'
    end
    object mtRF2Descricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object mtRF2Total: TCurrencyField
      FieldName = 'Total'
    end
    object mtRF2Bold: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Bold'
      Calculated = True
    end
    object mtRF2Cor: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Cor'
      Calculated = True
    end
  end
  object dsRF2: TDataSource
    DataSet = mtRF2
    Left = 384
    Top = 384
  end
  object mtRF3: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoIncMinValue = -1
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end
      item
        Name = 'Bold'
        DataType = ftBoolean
      end
      item
        Name = 'Cor'
        DataType = ftInteger
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
    OnCalcFields = mtRF3CalcFields
    Left = 432
    Top = 336
    object mtRF3Item: TIntegerField
      FieldName = 'Item'
    end
    object mtRF3Descricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object mtRF3Total: TCurrencyField
      FieldName = 'Total'
    end
    object mtRF3Bold: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Bold'
      Calculated = True
    end
    object mtRF3Cor: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Cor'
      Calculated = True
    end
  end
  object dsRF3: TDataSource
    DataSet = mtRF3
    Left = 432
    Top = 384
  end
  object dbRF1: TfrxDBDataset
    UserName = 'dbRF1'
    CloseDataSource = False
    DataSet = mtRF1
    BCDToCurrency = False
    Left = 560
    Top = 248
  end
  object dbRF2: TfrxDBDataset
    UserName = 'dbRF2'
    CloseDataSource = False
    DataSet = mtRF2
    BCDToCurrency = False
    Left = 608
    Top = 248
  end
  object dbRF3: TfrxDBDataset
    UserName = 'dbRF3'
    CloseDataSource = False
    DataSet = mtRF3
    BCDToCurrency = False
    Left = 560
    Top = 304
  end
  object mtObs: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Obs'
        DataType = ftMemo
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
    Left = 336
    Top = 272
    object mtObsObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
  end
  object dbObs: TfrxDBDataset
    UserName = 'dbObs'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Obs=Obs')
    DataSet = mtObs
    BCDToCurrency = False
    Left = 560
    Top = 368
  end
  object qME: TnxQuery
    Database = nxDB
    SQL.Strings = (
      
        'select produto, tipotran, fidresgate, sum(quant) as quant, sum(t' +
        'otal) as total, sum(pago) as pago, sum(desconto) as desconto, su' +
        'm(custou * quant) as custot  from movest'
      'where (cancelado <> true)'
      'group by produto, tipotran, fidresgate'
      '')
    Left = 184
    Top = 384
    object qMEproduto: TLongWordField
      FieldName = 'produto'
    end
    object qMEtipotran: TByteField
      FieldName = 'tipotran'
    end
    object qMEfidresgate: TBooleanField
      FieldName = 'fidresgate'
    end
    object qMEquant: TFloatField
      FieldName = 'quant'
    end
    object qMEtotal: TCurrencyField
      FieldName = 'total'
    end
    object qMEpago: TCurrencyField
      FieldName = 'pago'
    end
    object qMEdesconto: TCurrencyField
      FieldName = 'desconto'
    end
    object qMEcustot: TExtendedField
      FieldName = 'custot'
      Precision = 19
    end
  end
  object qRFPagPend: TnxQuery
    Database = nxDB
    SQL.Strings = (
      'select'
      '  Tipo,'
      '  Count(*) as Qtd,'
      '  Sum(Credito) as Credito,'
      '  Sum(Debito) as Debito,'
      '  Sum(Pago) as Pago,'
      '  Sum(CreditoUsado) as CreditoUsado,'
      '  Sum(Troco) as Troco'
      'from '
      '  Tran'
      'where'
      '   ((Cancelado is Null) or (not Cancelado))'
      'group by'
      '  Tipo')
    Left = 184
    Top = 328
    object qRFPagPendTipo: TByteField
      FieldName = 'Tipo'
    end
    object qRFPagPendQtd: TLargeintField
      FieldName = 'Qtd'
    end
    object qRFPagPendCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object qRFPagPendDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object qRFPagPendPago: TCurrencyField
      FieldName = 'Pago'
    end
    object qRFPagPendCreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object qRFPagPendTroco: TCurrencyField
      FieldName = 'Troco'
    end
  end
  object qDev: TnxQuery
    Database = nxDB
    Timeout = 120000
    SQL.Strings = (
      'select'
      '  OpDevValor,'
      '  Count(ID) as Quant,'
      '  Sum(Total) as Total'
      'from '
      '  Tran'
      'where'
      '  (Tipo=18) and (Cancelado is null) or (Cancelado = False)'
      'group by'
      '  OpDevValor'
      '')
    Left = 248
    Top = 344
    object qDevOpDevValor: TByteField
      FieldName = 'OpDevValor'
    end
    object qDevQuant: TLargeintField
      FieldName = 'Quant'
    end
    object qDevTotal: TCurrencyField
      FieldName = 'Total'
    end
  end
  object mtRF4: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoIncMinValue = -1
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end
      item
        Name = 'Bold'
        DataType = ftBoolean
      end
      item
        Name = 'Cor'
        DataType = ftInteger
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
    OnCalcFields = mtRF3CalcFields
    Left = 480
    Top = 336
    object mtRF4Item: TIntegerField
      FieldName = 'Item'
    end
    object mtRF4Descricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object mtRF4Total: TCurrencyField
      FieldName = 'Total'
    end
    object mtRF4Bold: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Bold'
      Calculated = True
    end
    object mtRF4Cor: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Cor'
      Calculated = True
    end
  end
  object dsRF4: TDataSource
    DataSet = mtRF4
    Left = 480
    Top = 384
  end
  object dbRF4: TfrxDBDataset
    UserName = 'dbRF4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Item=Item'
      'Descricao=Descricao'
      'Total=Total'
      'Bold=Bold'
      'Cor=Cor')
    DataSet = mtRF4
    BCDToCurrency = False
    Left = 608
    Top = 304
  end
  object tAuxTran: TnxTable
    Database = nxDB
    TableName = 'Tran'
    Left = 32
    Top = 392
  end
  object tAuxNFE: TnxTable
    Database = nxDB
    TableName = 'NFE'
    Left = 88
    Top = 392
  end
  object tNFConfig: TnxTable
    Database = nxDB
    TableName = 'NFCONFIG'
    Left = 120
    Top = 320
    object tNFConfigtpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object tNFConfigTipo: TByteField
      FieldName = 'Tipo'
    end
  end
  object tPostMS: TnxTable
    Database = nxDB
    TableName = 'PostMS'
    Left = 328
    Top = 88
    object tPostMSID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tPostMSMS: TBlobField
      FieldName = 'MS'
    end
    object tPostMSURL: TStringField
      FieldName = 'URL'
      Size = 255
    end
    object tPostMSInclusao: TDateTimeField
      FieldName = 'Inclusao'
    end
    object tPostMSEnvio: TDateTimeField
      FieldName = 'Envio'
    end
    object tPostMSTries: TWordField
      FieldName = 'Tries'
    end
    object tPostMSMax: TWordField
      FieldName = 'Max'
    end
    object tPostMSNextTry: TLongWordField
      FieldName = 'NextTry'
    end
  end
  object Designer: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 416
    Top = 272
  end
  object repCaixa_en: TfrxReport
    Version = '5.5.11'
    DataSet = frdbCaixa
    DataSetName = 'frdbCaixa'
    DotMatrixReport = False
    EngineOptions.SilentMode = True
    EngineOptions.NewSilentMode = simSilent
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39015.443900231490000000
    ReportOptions.LastChange = 42530.615283078700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo9OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF1."Bold"> = True then'
      '    Memo9.Font.Style := fsBold'
      '  else'
      '    Memo9.Font.Style := 0;'
      '  Memo9.Font.Color := <dbRF1."Cor">;'
      'end;'
      ''
      'procedure Memo10OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF1."Bold"> = True then'
      '    Memo10.Font.Style := fsBold'
      '  else'
      '    Memo10.Font.Style := 0;'
      '  Memo10.Font.Color := <dbRF1."Cor">;'
      'end;'
      ''
      'procedure dbRF2DescricaoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF2."Bold"> = True then'
      '    dbRF2Descricao.Font.Style := fsBold'
      '  else'
      '    dbRF2Descricao.Font.Style := 0;'
      '  dbRF2Descricao.Font.Color := <dbRF2."Cor">;'
      'end;'
      ''
      'procedure dbRF2TotalOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF2."Bold"> = True then'
      '    dbRF2Total.Font.Style := fsBold'
      '  else'
      '    dbRF2Total.Font.Style := 0;'
      '  dbRF2Total.Font.Color := <dbRF2."Cor">;'
      'end;'
      ''
      'procedure dbRF3DescricaoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF3."Bold"> = True then'
      '    dbRF3Descricao.Font.Style := fsBold'
      '  else'
      '    dbRF3Descricao.Font.Style := 0;'
      '  dbRF3Descricao.Font.Color := <dbRF3."Cor">;'
      'end;'
      ''
      'procedure dbRF3TotalOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF3."Bold"> = True then'
      '    dbRF3Total.Font.Style := fsBold'
      '  else'
      '    dbRF3Total.Font.Style := 0;'
      '  dbRF3Total.Font.Color := <dbRF3."Cor">;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    ShowProgress = False
    OnBeforePrint = repCaixa_ptBeforePrint
    Left = 384
    Top = 80
    Datasets = <
      item
        DataSet = frdbPagEsp
        DataSetName = 'dbMeioPag'
      end
      item
        DataSet = dbObs
        DataSetName = 'dbObs'
      end
      item
        DataSet = dbRF1
        DataSetName = 'dbRF1'
      end
      item
        DataSet = dbRF2
        DataSetName = 'dbRF2'
      end
      item
        DataSet = dbRF3
        DataSetName = 'dbRF3'
      end
      item
        DataSet = frdbCaixa
        DataSetName = 'frdbCaixa'
      end
      item
        DataSet = frdbEst
        DataSetName = 'frdbEst'
      end
      item
        DataSet = frdbProd
        DataSetName = 'frdbProd'
      end
      item
        DataSet = frdbTot
        DataSetName = 'frdbTot'
      end
      item
        DataSet = frdbTran
        DataSetName = 'frdbTran'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Top = 22.677180000000000000
          Width = 653.858690000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Register # [frdbCaixa."ID"]     Opening: [frdbCaixa."Abertura"] ' +
              '    Closing: [frdbCaixa."Fechamento"]     Clerk: [frdbCaixa."Usu' +
              'ario"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '%g'
              Kind = fkNumeric
            end
            item
              FormatStr = 'mm/dd/yyyy "-" hh:mm:ss am/pm'
              Kind = fkDateTime
            end
            item
              FormatStr = 'mm/dd/yyyy "-" hh:mm:ss am/pm'
              Kind = fkDateTime
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          Align = baRight
          Left = 668.598857000000000000
          Top = 22.677180000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 46.677180000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line54: TfrxLineView
          Align = baWidth
          Top = 22.338590000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Memo82: TfrxMemoView
          Align = baCenter
          Left = 222.803293500000000000
          Top = 0.779530000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          AutoWidth = True
          DataSet = frdbCaixa
          DataSetName = 'frdbCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbCaixa."NomeLoja"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 136.063080000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        Child = repCaixa_en.childRF2
        KeepChild = True
        KeepFooter = True
        PrintChildIfInvisible = True
        RowCount = 1
        Stretched = True
        object srRF1: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_en.pgRF1
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 381.732530000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        Child = repCaixa_en.Child4
        PrintChildIfInvisible = True
        Stretched = True
        object srMovEstoque: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_en.Page4
          PrintOnParent = True
        end
      end
      object Child4: TfrxChild
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 430.866420000000000000
        Width = 740.409927000000000000
        Child = repCaixa_en.Child5
        PrintChildIfInvisible = True
        Stretched = True
        object srTran: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_en.Page5
        end
      end
      object Child5: TfrxChild
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 480.000310000000000000
        Width = 740.409927000000000000
        PrintChildIfInvisible = True
        Stretched = True
        object srEstoqueAbaixoMin: TfrxSubreport
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Page = repCaixa_en.Page6
        end
      end
      object childRF2: TfrxChild
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 185.196970000000000000
        Width = 740.409927000000000000
        Child = repCaixa_en.childRF3
        PrintChildIfInvisible = True
        Stretched = True
        object srRF2: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_en.Page8
        end
      end
      object childRF3: TfrxChild
        FillType = ftBrush
        Height = 26.456692913385800000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        Child = repCaixa_en.childMeioPagto
        PrintChildIfInvisible = True
        Stretched = True
        object srRF3: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_en.Page3
        end
      end
      object ChildObs: TfrxChild
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 332.598640000000000000
        Width = 740.409927000000000000
        Child = repCaixa_en.Child2
        PrintChildIfInvisible = True
        Stretched = True
        object srObs: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_en.Page2
        end
      end
      object childMeioPagto: TfrxChild
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 283.464750000000000000
        Width = 740.409927000000000000
        Child = repCaixa_en.ChildObs
        PrintChildIfInvisible = True
        Stretched = True
        object srMeioPagto: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_en.Page9
        end
      end
    end
    object Page6: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header5: TfrxHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape10: TfrxShapeView
          Top = 52.913420000000000000
          Width = 740.409927000000000000
          Height = 26.456710000000000000
        end
        object Memo67: TfrxMemoView
          Description = 'Produto'
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Product')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line45: TfrxLineView
          Left = 381.732530000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo69: TfrxMemoView
          Left = 389.291590000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Current Stock')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line46: TfrxLineView
          Left = 476.220780000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo70: TfrxMemoView
          Left = 483.779840000000000000
          Top = 56.692950000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Min.Stock')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line47: TfrxLineView
          Left = 566.929500000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo71: TfrxMemoView
          Left = 574.488560000000000000
          Top = 56.692950000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Max.Stock')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line48: TfrxLineView
          Left = 657.638220000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo72: TfrxMemoView
          Left = 661.417750000000000000
          Top = 56.692950000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qty.Refill')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Top = 30.236240000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Products with stock below minimum')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line44: TfrxLineView
          Left = 283.464750000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo74: TfrxMemoView
          Left = 291.023810000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Since')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 120.944960000000000000
        Width = 740.409927000000000000
        DataSet = frdbProd
        DataSetName = 'frdbProd'
        RowCount = 0
        Stretched = True
        object Shape11: TfrxShapeView
          Align = baClient
          Width = 740.409927000000000000
          Height = 26.456692910000000000
          OnBeforePrint = 'Shape2OnBeforePrint'
        end
        object Memo68: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'Descricao'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbProd."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line49: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 381.732530000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line50: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 476.220780000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line51: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 566.929500000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line52: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 657.638220000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo75: TfrxMemoView
          Left = 389.291590000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'EstoqueAtual'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."EstoqueAtual"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'EstoqueMin'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."EstoqueMin"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 574.488560000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'EstoqueMax'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."EstoqueMax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 661.417750000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'EstoqueRepor'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."EstoqueRepor"]')
          ParentFont = False
        end
        object Line53: TfrxLineView
          ShiftMode = smWhenOverlapped
          Left = 283.464750000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo79: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 291.023810000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'AbaixoMinDesde'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."AbaixoMinDesde"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object pgRF1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Financial Summary')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 71.811070000000000000
        Width = 718.110700000000000000
        DataSet = dbRF1
        DataSetName = 'dbRF1'
        RowCount = 0
        object Shape7: TfrxShapeView
          Align = baLeft
          Width = 495.118430000000000000
          Height = 22.677180000000000000
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.889763780000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
          DataField = 'Descricao'
          DataSet = dbRF1
          DataSetName = 'dbRF1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRF1."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 359.055118110000000000
          Top = 1.889763780000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          DataField = 'Total'
          DataSet = dbRF1
          DataSetName = 'dbRF1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRF1."Total"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page8: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object heRF2: TfrxHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Top = 16.118120000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Amounts Received:')
          ParentFont = False
        end
      end
      object mdRF2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        DataSet = dbRF2
        DataSetName = 'dbRF2'
        RowCount = 0
        object Shape2: TfrxShapeView
          Align = baLeft
          Width = 495.118110240000000000
          Height = 22.677180000000000000
        end
        object dbRF2Descricao: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.889763780000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbRF2DescricaoOnBeforePrint'
          DataField = 'Descricao'
          DataSet = dbRF2
          DataSetName = 'dbRF2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRF2."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dbRF2Total: TfrxMemoView
          Left = 359.055118110000000000
          Top = 1.889763780000000000
          Width = 128.503937010000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbRF2TotalOnBeforePrint'
          DataField = 'Total'
          DataSet = dbRF2
          DataSetName = 'dbRF2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRF2."Total"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object mdRF3: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        DataSet = dbRF3
        DataSetName = 'dbRF3'
        RowCount = 0
        object Shape6: TfrxShapeView
          Align = baLeft
          Width = 495.118110236220000000
          Height = 22.677180000000000000
        end
        object dbRF3Descricao: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.889763780000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbRF3DescricaoOnBeforePrint'
          DataField = 'Descricao'
          DataSet = dbRF3
          DataSetName = 'dbRF3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRF3."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dbRF3Total: TfrxMemoView
          Left = 359.055118110000000000
          Top = 1.889763780000000000
          Width = 128.503937010000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbRF3TotalOnBeforePrint'
          DataField = 'Total'
          DataSet = dbRF3
          DataSetName = 'dbRF3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRF3."Total"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header7: TfrxHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Top = 17.338590000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Register Balance:')
          ParentFont = False
        end
      end
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
      end
    end
    object Page9: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData7: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 113.385900000000000000
        Width = 740.409927000000000000
        DataSet = frdbPagEsp
        DataSetName = 'dbMeioPag'
        RowCount = 0
        object Shape15: TfrxShapeView
          Width = 740.409448818898000000
          Height = 26.456692910000000000
          OnBeforePrint = 'Shape2OnBeforePrint'
        end
        object Line2: TfrxLineView
          Left = 283.464750000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          Left = 438.425480000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 2.779530000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataField = 'NomeEsp'
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMeioPag."NomeEsp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 291.023810000000000000
          Top = 2.779530000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMeioPag."Valor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 442.205010000000000000
          Top = 2.779530000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DataField = 'Obs'
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMeioPag."Obs"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header8: TfrxHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo14: TfrxMemoView
          Top = 22.677180000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Amount received by Payment Method:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape16: TfrxShapeView
          Top = 45.354360000000000000
          Width = 740.409448818898000000
          Height = 26.456710000000000000
        end
        object Line4: TfrxLineView
          Left = 438.425196850394000000
          Top = 45.354360000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 283.464750000000000000
          Top = 45.354360000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo15: TfrxMemoView
          Left = 291.023810000000000000
          Top = 49.133890000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Payment Method')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 442.205010000000000000
          Top = 49.133890000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Comments')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 162.519790000000000000
        Width = 740.409927000000000000
        object Shape17: TfrxShapeView
          Width = 740.409448818898000000
          Height = 26.456692910000000000
          OnBeforePrint = 'Shape2OnBeforePrint'
        end
        object Line6: TfrxLineView
          Left = 283.464750000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 438.425480000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo21: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 287.244280000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbMeioPag."Valor">,MasterData7)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header4: TfrxHeader
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape8: TfrxShapeView
          Top = 49.133890000000000000
          Width = 740.409927000000000000
          Height = 49.133890000000000000
        end
        object Line34: TfrxLineView
          Left = 64.252010000000000000
          Top = 49.133890000000000000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Trans. #')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line35: TfrxLineView
          Left = 173.858204250000000000
          Top = 49.133890000000000000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo46: TfrxMemoView
          Left = 68.031540000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Date and Time')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 68.031540000000000000
          Top = 71.811070000000000000
          Width = 98.267745830000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Transaction Type')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line37: TfrxLineView
          Left = 340.157700000000000000
          Top = 49.133890000000000000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          Left = 404.409710000000000000
          Top = 52.913420000000000000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo51: TfrxMemoView
          Left = 343.937230000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Value')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line39: TfrxLineView
          Left = 468.661720000000000000
          Top = 49.133890000000000000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo53: TfrxMemoView
          Left = 472.441250000000000000
          Top = 52.913420000000000000
          Width = 75.590558500000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Comments')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 56.692950000000000000
          Height = 26.456710000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cancel /'
            'Loyalty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 177.637910000000000000
          Top = 52.913420000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Customer')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 177.637910000000000000
          Top = 71.811070000000000000
          Width = 162.519790000000000000
          Height = 26.456710000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Description')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 343.937230000000000000
          Top = 71.811070000000000000
          Width = 56.692950000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Discount')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 408.189240000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Final')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 408.189240000000000000
          Top = 71.811070000000000000
          Width = 56.692950000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Paid')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Top = 26.456710000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Transactions')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Height = 49.133858270000000000
        Top = 139.842610000000000000
        Width = 740.409927000000000000
        DataSet = frdbTran
        DataSetName = 'frdbTran'
        RowCount = 0
        Stretched = True
        object Shape9: TfrxShapeView
          Align = baClient
          Width = 740.409927000000000000
          Height = 49.133858270000000000
          OnBeforePrint = 'Shape2OnBeforePrint'
        end
        object Memo52: TfrxMemoView
          Left = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          OnBeforePrint = 'Memo24OnBeforePrint'
          DataField = 'ID'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbTran."ID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 68.031540000000000000
          Top = 26.456710000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          DataField = 'NomeTipo'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."NomeTipo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 408.189240000000000000
          Width = 56.692915830000000000
          Height = 22.677180000000000000
          DataField = 'TotalFinal'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbTran."TotalFinal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 472.441250000000000000
          Top = 3.779530000000000000
          Width = 264.567100000000000000
          Height = 41.574830000000000000
          StretchMode = smMaxHeight
          DataField = 'Obs'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."Obs"]')
          ParentFont = False
        end
        object Line41: TfrxLineView
          Left = 64.252010000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          Left = 173.858380000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          Left = 340.157700000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line42: TfrxLineView
          Left = 404.409710000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line43: TfrxLineView
          Left = 468.661720000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo60: TfrxMemoView
          Left = 68.031540000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          DataField = 'DataHora'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."DataHora"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 177.637910000000000000
          Width = 162.519790000000000000
          Height = 22.677180000000000000
          DataField = 'NomeCliente'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."NomeCliente"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 177.637910000000000000
          Top = 26.456710000000000000
          Width = 162.519790000000000000
          Height = 22.677180000000000000
          StretchMode = smActualHeight
          DataField = 'Descricao'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."Descricao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 408.189240000000000000
          Top = 26.456710000000000000
          Width = 56.692915830000000000
          Height = 22.677180000000000000
          DataField = 'Pago'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbTran."Pago"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 343.937230000000000000
          Width = 56.692915830000000000
          Height = 22.677180000000000000
          DataField = 'Total'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbTran."Total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 343.937230000000000000
          Top = 26.456710000000000000
          Width = 56.692915830000000000
          Height = 22.677180000000000000
          DataField = 'Desconto'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbTran."Desconto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          OnBeforePrint = 'Memo24OnBeforePrint'
          DataField = 'CancFid'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbTran."CancFid"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintIfEmpty = False
      object Header3: TfrxHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape5: TfrxShapeView
          Top = 49.133890000000000000
          Width = 740.409927000000000000
          Height = 26.456710000000000000
        end
        object Memo32: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Width = 192.756030000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Product')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line25: TfrxLineView
          Left = 207.874150000000000000
          Top = 49.133890000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo33: TfrxMemoView
          Left = 207.874150000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Initial Balance')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line26: TfrxLineView
          Left = 272.125984250000000000
          Top = 49.133890000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo34: TfrxMemoView
          Left = 272.126160000000000000
          Top = 49.133890000000000000
          Width = 52.913420000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Inputs')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line27: TfrxLineView
          Left = 328.819110000000000000
          Top = 49.133890000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo35: TfrxMemoView
          Left = 332.598640000000000000
          Top = 49.133890000000000000
          Width = 52.913385830000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Outputs')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line28: TfrxLineView
          Left = 389.291590000000000000
          Top = 49.133890000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo36: TfrxMemoView
          Left = 393.071120000000000000
          Top = 49.133890000000000000
          Width = 60.472440940000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Loyalty Reward')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line29: TfrxLineView
          Left = 457.323130000000000000
          Top = 49.133890000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo37: TfrxMemoView
          Left = 665.197280000000000000
          Top = 49.133890000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Profit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 26.456710000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sales and Products Transactions')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 461.102660000000000000
          Top = 49.133890000000000000
          Width = 52.913420000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sales')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line30: TfrxLineView
          Left = 517.795610000000000000
          Top = 49.133890000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo40: TfrxMemoView
          Left = 521.575140000000000000
          Top = 49.133890000000000000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Final Balance')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line31: TfrxLineView
          Left = 589.606680000000000000
          Top = 49.133890000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo41: TfrxMemoView
          Left = 593.386210000000000000
          Top = 49.133890000000000000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sales Amount')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line32: TfrxLineView
          Left = 661.417750000000000000
          Top = 49.133890000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 117.165430000000000000
        Width = 740.409927000000000000
        DataSet = frdbEst
        DataSetName = 'frdbEst'
        RowCount = 0
        Stretched = True
        object Shape4: TfrxShapeView
          Align = baClient
          Width = 740.409927000000000000
          Height = 26.456692910000000000
          OnBeforePrint = 'Shape2OnBeforePrint'
        end
        object Memo26: TfrxMemoView
          Left = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'Descricao'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbEst."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line20: TfrxLineView
          Left = 207.874150000000000000
          Height = 26.456692910000000000
          OnBeforePrint = 'Line7OnBeforePrint'
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          Left = 272.126160000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          Left = 328.819110000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          Left = 389.291590000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          Left = 457.323130000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo27: TfrxMemoView
          Left = 211.653680000000000000
          Width = 56.692950000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'SaldoInicial'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."SaldoInicial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 275.905690000000000000
          Width = 49.133855830000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'EntradasTot'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."EntradasTot"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 332.598640000000000000
          Width = 52.913385830000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'Saidas'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."Saidas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 393.071120000000000000
          Width = 60.472440940000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'FidResg'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."FidResg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 461.102660000000000000
          Width = 52.913385830000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'Vendas'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."Vendas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line12: TfrxLineView
          Left = 517.795610000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 589.606680000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 661.417750000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo3: TfrxMemoView
          Left = 593.386210000000000000
          Width = 64.251975830000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'ValorVendas'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbEst."ValorVendas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 665.197280000000000000
          Width = 71.811035830000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'Lucro'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbEst."Lucro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 521.575140000000000000
          Width = 64.251975830000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataField = 'SaldoFinal'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."SaldoFinal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 166.299320000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Line16: TfrxLineView
          Left = 589.606680000000000000
          Top = 0.000017089999999997
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 661.417750000000000000
          Top = 0.000017089999999997
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo19: TfrxMemoView
          Left = 593.386210000000000000
          Top = 3.779547090000000000
          Width = 64.251975830000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frdbEst."ValorVendas">,MasterData3,2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 665.197280000000000000
          Top = 0.000017089999999997
          Width = 71.811035830000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frdbEst."Lucro">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 581.669667000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintIfEmpty = False
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 75.590600000000000000
        Width = 718.110700000000000000
        DataSet = dbObs
        DataSetName = 'dbObs'
        RowCount = 0
        Stretched = True
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 718.110700000000000000
          Height = 30.236240000000000000
        end
        object frdbCaixaObs: TfrxMemoView
          Left = 3.779530000000000000
          Top = 4.779530000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'Obs'
          DataSet = dbObs
          DataSetName = 'dbObs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbObs."Obs"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Top = 15.118120000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Comments:')
          ParentFont = False
        end
      end
    end
  end
  object mtPagEsp: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Especie'
        DataType = ftWord
      end
      item
        Name = 'NomeEsp'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'Vendas'
        DataType = ftCurrency
      end
      item
        Name = 'Dev'
        DataType = ftCurrency
      end
      item
        Name = 'Sangria'
        DataType = ftCurrency
      end
      item
        Name = 'Supr'
        DataType = ftCurrency
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end
      item
        Name = 'Troco'
        DataType = ftCurrency
      end
      item
        Name = 'Obs'
        DataType = ftWideMemo
      end>
    IndexFieldNames = 'Especie'
    IndexName = 'mtPagEspIndex1'
    IndexDefs = <
      item
        Name = 'mtPagEspIndex1'
        Fields = 'Especie'
        Options = [ixCaseInsensitive]
      end>
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
    Top = 152
    object mtPagEspEspecie: TWordField
      FieldName = 'Especie'
    end
    object mtPagEspNomeEsp: TWideStringField
      FieldName = 'NomeEsp'
      Size = 40
    end
    object mtPagEspVendas: TCurrencyField
      FieldName = 'Vendas'
    end
    object mtPagEspDev: TCurrencyField
      FieldName = 'Dev'
    end
    object mtPagEspSangria: TCurrencyField
      FieldName = 'Sangria'
    end
    object mtPagEspSupr: TCurrencyField
      FieldName = 'Supr'
    end
    object mtPagEspTotal: TCurrencyField
      FieldName = 'Total'
    end
    object mtPagEspTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object mtPagEspObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
  end
  object mtMPObs: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Asterisco'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end
      item
        Name = 'Troco'
        DataType = ftCurrency
      end
      item
        Name = 'NomeEsp'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Especie'
        DataType = ftWord
      end>
    IndexName = 'mtMPObsIndex1'
    IndexDefs = <
      item
        Name = 'mtMPObsIndex1'
        Fields = 'Especie'
        Options = [ixCaseInsensitive]
      end>
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
    Left = 120
    Top = 200
    object mtMPObsAsterisco: TStringField
      FieldName = 'Asterisco'
      Size = 10
    end
    object mtMPObsTotal: TCurrencyField
      FieldName = 'Total'
    end
    object mtMPObsTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object mtMPObsNomeEsp: TStringField
      FieldName = 'NomeEsp'
      Size = 40
    end
    object mtMPObsEspecie: TWordField
      FieldName = 'Especie'
    end
  end
  object frdbMPObs: TfrxDBDataset
    UserName = 'dbMPObs'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Asterisco=Asterisco'
      'Total=Total'
      'Troco=Troco'
      'NomeEsp=NomeEsp'
      'Especie=Especie')
    DataSet = mtMPObs
    BCDToCurrency = False
    Left = 528
    Top = 80
  end
  object repCaixa_es: TfrxReport
    Version = '5.5.11'
    DataSet = frdbCaixa
    DataSetName = 'frdbCaixa'
    DotMatrixReport = False
    EngineOptions.SilentMode = True
    EngineOptions.NewSilentMode = simSilent
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39015.443900231490000000
    ReportOptions.LastChange = 42618.496782708330000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo9OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF1."Bold"> = True then'
      '    Memo9.Font.Style := fsBold'
      '  else'
      '    Memo9.Font.Style := 0;'
      '  Memo9.Font.Color := <dbRF1."Cor">;'
      'end;'
      ''
      'procedure Memo10OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF1."Bold"> = True then'
      '    Memo10.Font.Style := fsBold'
      '  else'
      '    Memo10.Font.Style := 0;'
      '  Memo10.Font.Color := <dbRF1."Cor">;'
      'end;'
      ''
      'procedure dbRF2DescricaoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF2."Bold"> = True then'
      '    dbRF2Descricao.Font.Style := fsBold'
      '  else'
      '    dbRF2Descricao.Font.Style := 0;'
      '  dbRF2Descricao.Font.Color := <dbRF2."Cor">;'
      'end;'
      ''
      'procedure dbRF2TotalOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF2."Bold"> = True then'
      '    dbRF2Total.Font.Style := fsBold'
      '  else'
      '    dbRF2Total.Font.Style := 0;'
      '  dbRF2Total.Font.Color := <dbRF2."Cor">;'
      'end;'
      ''
      'procedure dbRF3DescricaoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF3."Bold"> = True then'
      '    dbRF3Descricao.Font.Style := fsBold'
      '  else'
      '    dbRF3Descricao.Font.Style := 0;'
      '  dbRF3Descricao.Font.Color := <dbRF3."Cor">;'
      'end;'
      ''
      'procedure dbRF3TotalOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbRF3."Bold"> = True then'
      '    dbRF3Total.Font.Style := fsBold'
      '  else'
      '    dbRF3Total.Font.Style := 0;'
      '  dbRF3Total.Font.Color := <dbRF3."Cor">;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    ShowProgress = False
    OnBeforePrint = repCaixa_ptBeforePrint
    Left = 616
    Top = 176
    Datasets = <
      item
        DataSet = frdbPagEsp
        DataSetName = 'dbMeioPag'
      end
      item
        DataSet = frdbMPObs
        DataSetName = 'dbMPObs'
      end
      item
        DataSet = dbObs
        DataSetName = 'dbObs'
      end
      item
        DataSet = dbRF1
        DataSetName = 'dbRF1'
      end
      item
        DataSet = dbRF2
        DataSetName = 'dbRF2'
      end
      item
        DataSet = dbRF3
        DataSetName = 'dbRF3'
      end
      item
        DataSet = frdbCaixa
        DataSetName = 'frdbCaixa'
      end
      item
        DataSet = frdbEst
        DataSetName = 'frdbEst'
      end
      item
        DataSet = frdbProd
        DataSetName = 'frdbProd'
      end
      item
        DataSet = frdbTot
        DataSetName = 'frdbTot'
      end
      item
        DataSet = frdbTran
        DataSetName = 'frdbTran'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Top = 26.559060000000000000
          Width = 653.858690000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Caixa n.[frdbCaixa."ID"]     Inicio: [frdbCaixa."Abertura"]     ' +
              'Termino: [frdbCaixa."Fechamento"]     Func: [frdbCaixa."Usuario"' +
              ']')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          Align = baRight
          Left = 668.598857000000000000
          Top = 25.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag.[Page]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 46.677179999999990000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Line54: TfrxLineView
          Align = baWidth
          Top = 22.338590000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = [ftTop]
        end
        object Memo82: TfrxMemoView
          Align = baCenter
          Left = 222.803293500000000000
          Top = 0.779530000000001200
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'NomeLoja'
          DataSet = frdbCaixa
          DataSetName = 'frdbCaixa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbCaixa."NomeLoja"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 136.063080000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        Child = repCaixa_es.childRF2
        KeepChild = True
        KeepFooter = True
        PrintChildIfInvisible = True
        RowCount = 1
        Stretched = True
        object srRF1: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_es.pgRF1
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 381.732530000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        Child = repCaixa_es.Child4
        PrintChildIfInvisible = True
        Stretched = True
        object srMovEstoque: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_es.Page4
          PrintOnParent = True
        end
      end
      object Child4: TfrxChild
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 430.866420000000000000
        Width = 740.409927000000000000
        Child = repCaixa_es.Child5
        PrintChildIfInvisible = True
        Stretched = True
        object srTran: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_es.Page5
        end
      end
      object Child5: TfrxChild
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 480.000310000000000000
        Width = 740.409927000000000000
        PrintChildIfInvisible = True
        Stretched = True
        object srEstoqueAbaixoMin: TfrxSubreport
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Page = repCaixa_es.Page6
        end
      end
      object childRF2: TfrxChild
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 185.196970000000000000
        Width = 740.409927000000000000
        Child = repCaixa_es.childRF3
        PrintChildIfInvisible = True
        Stretched = True
        object srRF2: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_es.Page8
        end
      end
      object childRF3: TfrxChild
        FillType = ftBrush
        Height = 26.456692913385800000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        Child = repCaixa_es.childMeioPagto
        PrintChildIfInvisible = True
        Stretched = True
        object srRF3: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_es.Page3
        end
      end
      object ChildObs: TfrxChild
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 332.598640000000000000
        Width = 740.409927000000000000
        Child = repCaixa_es.Child2
        PrintChildIfInvisible = True
        Stretched = True
        object srObs: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_es.Page2
        end
      end
      object childMeioPagto: TfrxChild
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 283.464750000000000000
        Width = 740.409927000000000000
        Child = repCaixa_es.ChildObs
        PrintChildIfInvisible = True
        Stretched = True
        object srMeioPagto: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = repCaixa_es.Page9
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintIfEmpty = False
      object Header3: TfrxHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape5: TfrxShapeView
          Top = 49.133889999999990000
          Width = 740.409927000000000000
          Height = 26.456710000000000000
        end
        object Memo32: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Producto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line25: TfrxLineView
          Left = 207.874150000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo33: TfrxMemoView
          Left = 207.874150000000000000
          Top = 52.913420000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo inicial')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line26: TfrxLineView
          Left = 272.125984250000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo34: TfrxMemoView
          Left = 272.126160000000000000
          Top = 52.913420000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entradas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line27: TfrxLineView
          Left = 328.819110000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo35: TfrxMemoView
          Left = 332.598640000000000000
          Top = 52.913420000000000000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Salidas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line28: TfrxLineView
          Left = 389.291590000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo36: TfrxMemoView
          Left = 393.071120000000000000
          Top = 52.913420000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Premio Fid.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line29: TfrxLineView
          Left = 457.323130000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo37: TfrxMemoView
          Left = 665.197280000000000000
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ganancia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 26.456710000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ventas y movimiento de Productos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 461.102660000000000000
          Top = 52.913420000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ventas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line30: TfrxLineView
          Left = 517.795610000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo40: TfrxMemoView
          Left = 521.575140000000000000
          Top = 52.913420000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo final')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line31: TfrxLineView
          Left = 589.606680000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo41: TfrxMemoView
          Left = 593.386210000000000000
          Top = 52.913420000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vl.Ventas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line32: TfrxLineView
          Left = 661.417750000000000000
          Top = 49.133889999999990000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 117.165430000000000000
        Width = 740.409927000000000000
        DataSet = frdbEst
        DataSetName = 'frdbEst'
        RowCount = 0
        object Shape4: TfrxShapeView
          Width = 740.409927000000000000
          Height = 26.456692910000000000
          OnBeforePrint = 'Shape2OnBeforePrint'
        end
        object Memo26: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'Descricao'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbEst."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line20: TfrxLineView
          Left = 207.874150000000000000
          Height = 26.456692910000000000
          OnBeforePrint = 'Line7OnBeforePrint'
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          Left = 272.126160000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          Left = 328.819110000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          Left = 389.291590000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          Left = 457.323130000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo27: TfrxMemoView
          Left = 211.653680000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'SaldoInicial'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."SaldoInicial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 275.905690000000000000
          Top = 3.779529999999994000
          Width = 49.133855830000000000
          Height = 18.897650000000000000
          DataField = 'EntradasTot'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."EntradasTot"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 332.598640000000000000
          Top = 3.779529999999994000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          DataField = 'Saidas'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."Saidas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 393.071120000000000000
          Top = 3.779529999999994000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DataField = 'FidResg'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."FidResg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 461.102660000000000000
          Top = 3.779529999999994000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          DataField = 'Vendas'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."Vendas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line12: TfrxLineView
          Left = 517.795610000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 589.606680000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 661.417750000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo3: TfrxMemoView
          Left = 593.386210000000000000
          Top = 3.779529999999994000
          Width = 64.251975830000000000
          Height = 18.897650000000000000
          DataField = 'ValorVendas'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbEst."ValorVendas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 665.197280000000000000
          Top = 3.779529999999994000
          Width = 71.811035830000000000
          Height = 18.897650000000000000
          DataField = 'Lucro'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbEst."Lucro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779529999999994000
          Width = 64.251975830000000000
          Height = 18.897650000000000000
          DataField = 'SaldoFinal'
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbEst."SaldoFinal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 166.299320000000000000
        Width = 740.409927000000000000
        object Shape3: TfrxShapeView
          Width = 740.409927000000000000
          Height = 26.456710000000000000
        end
        object Line16: TfrxLineView
          Left = 589.606680000000000000
          Top = 0.000017090000000053
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 661.417750000000000000
          Top = 0.000017090000000053
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo19: TfrxMemoView
          Left = 593.386210000000000000
          Top = 3.779547089999994000
          Width = 64.251975830000000000
          Height = 18.897650000000000000
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdbEst."ValorVendas">,MasterData3,2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 665.197280000000000000
          Top = 3.779547089999994000
          Width = 71.811035830000000000
          Height = 18.897650000000000000
          DataSet = frdbEst
          DataSetName = 'frdbEst'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frdbEst."Lucro">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header4: TfrxHeader
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape8: TfrxShapeView
          Top = 49.133889999999990000
          Width = 740.409927000000000000
          Height = 49.133890000000000000
        end
        object Line34: TfrxLineView
          Left = 64.252010000000000000
          Top = 49.133889999999990000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'No.Tran')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line35: TfrxLineView
          Left = 173.858204250000000000
          Top = 49.133889999999990000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo46: TfrxMemoView
          Left = 68.031540000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha y hora')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 68.031540000000000000
          Top = 75.590600000000000000
          Width = 98.267745830000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tipo de Transacci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line37: TfrxLineView
          Left = 340.157700000000000000
          Top = 49.133889999999990000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          Left = 404.409710000000000000
          Top = 49.133889999999990000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo51: TfrxMemoView
          Left = 343.937230000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line39: TfrxLineView
          Left = 468.661720000000000000
          Top = 49.133889999999990000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo53: TfrxMemoView
          Left = 472.441250000000000000
          Top = 52.913420000000000000
          Width = 75.590558500000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Observaciones')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 3.779530000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Canc/FID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 177.637910000000000000
          Top = 52.913420000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 177.637910000000000000
          Top = 75.590600000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 343.937230000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 408.189240000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total final')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 408.189240000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pago')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Top = 26.456710000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Transacciones')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Height = 49.133858270000000000
        Top = 139.842610000000000000
        Width = 740.409927000000000000
        DataSet = frdbTran
        DataSetName = 'frdbTran'
        RowCount = 0
        Stretched = True
        object Shape9: TfrxShapeView
          Align = baClient
          Width = 740.409927000000000000
          Height = 49.133858270000000000
          OnBeforePrint = 'Shape2OnBeforePrint'
        end
        object Memo52: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo24OnBeforePrint'
          DataField = 'ID'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbTran."ID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 68.031540000000000000
          Top = 26.456709999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'NomeTipo'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."NomeTipo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 408.189240000000000000
          Top = 3.779529999999994000
          Width = 56.692915830000000000
          Height = 18.897650000000000000
          DataField = 'TotLiq'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbTran."TotLiq"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 472.441250000000000000
          Top = 3.779529999999994000
          Width = 264.567100000000000000
          Height = 41.574830000000000000
          StretchMode = smMaxHeight
          DataField = 'Obs'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."Obs"]')
          ParentFont = False
        end
        object Line41: TfrxLineView
          Left = 64.252010000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          Left = 173.858380000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          Left = 340.157700000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line42: TfrxLineView
          Left = 404.409710000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line43: TfrxLineView
          Left = 468.661720000000000000
          Height = 49.133872910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo60: TfrxMemoView
          Left = 68.031540000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'DataHora'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."DataHora"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'NomeCliente'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."NomeCliente"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 177.637910000000000000
          Top = 26.456709999999990000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'Descricao'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbTran."Descricao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 408.189240000000000000
          Top = 26.456709999999990000
          Width = 56.692915830000000000
          Height = 18.897650000000000000
          DataField = 'Pago'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbTran."Pago"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 343.937230000000000000
          Top = 3.779529999999994000
          Width = 56.692915830000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbTran."Total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 343.937230000000000000
          Top = 26.456709999999990000
          Width = 56.692915830000000000
          Height = 18.897650000000000000
          DataField = 'Desconto'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frdbTran."Desconto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456709999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo24OnBeforePrint'
          DataField = 'CancFid'
          DataSet = frdbTran
          DataSetName = 'frdbTran'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbTran."CancFid"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page6: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header5: TfrxHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape10: TfrxShapeView
          Top = 52.913420000000000000
          Width = 740.409927000000000000
          Height = 26.456710000000000000
        end
        object Memo67: TfrxMemoView
          Description = 'Producto'
          Left = 3.779530000000000000
          Top = 56.692949999999990000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Producto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line45: TfrxLineView
          Left = 381.732530000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo69: TfrxMemoView
          Left = 389.291590000000000000
          Top = 56.692949999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Stock actual')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line46: TfrxLineView
          Left = 476.220780000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo70: TfrxMemoView
          Left = 483.779840000000000000
          Top = 56.692949999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Stock M'#237'n.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line47: TfrxLineView
          Left = 566.929500000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo71: TfrxMemoView
          Left = 574.488560000000000000
          Top = 56.692949999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Stock M'#225'x.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line48: TfrxLineView
          Left = 657.638220000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo72: TfrxMemoView
          Left = 661.417750000000000000
          Top = 56.692949999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quant.Repor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Top = 30.236240000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Productos con stock debajo del m'#237'nimo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line44: TfrxLineView
          Left = 283.464750000000000000
          Top = 52.913420000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo74: TfrxMemoView
          Left = 291.023810000000000000
          Top = 56.692949999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Desde')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 120.944960000000000000
        Width = 740.409927000000000000
        DataSet = frdbProd
        DataSetName = 'frdbProd'
        RowCount = 0
        object Shape11: TfrxShapeView
          Width = 740.409927000000000000
          Height = 26.456692910000000000
          OnBeforePrint = 'Shape2OnBeforePrint'
        end
        object Memo68: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          DataField = 'Descricao'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frdbProd."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line49: TfrxLineView
          Left = 381.732530000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line50: TfrxLineView
          Left = 476.220780000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line51: TfrxLineView
          Left = 566.929500000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line52: TfrxLineView
          Left = 657.638220000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo75: TfrxMemoView
          Left = 389.291590000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'EstoqueAtual'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."EstoqueAtual"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'EstoqueMin'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."EstoqueMin"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 574.488560000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'EstoqueMax'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."EstoqueMax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 661.417750000000000000
          Top = 3.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          DataField = 'EstoqueRepor'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."EstoqueRepor"]')
          ParentFont = False
        end
        object Line53: TfrxLineView
          Left = 283.464750000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo79: TfrxMemoView
          Left = 291.023810000000000000
          Top = 3.779529999999994000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'AbaixoMinDesde'
          DataSet = frdbProd
          DataSetName = 'frdbProd'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frdbProd."AbaixoMinDesde"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object pgRF1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Resumen financiero')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 71.811070000000000000
        Width = 718.110700000000000000
        DataSet = dbRF1
        DataSetName = 'dbRF1'
        RowCount = 0
        object Shape7: TfrxShapeView
          Align = baLeft
          Width = 495.118430000000000000
          Height = 22.677180000000000000
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.889763779999996000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
          DataField = 'Descricao'
          DataSet = dbRF1
          DataSetName = 'dbRF1'
          Memo.UTF8W = (
            '[dbRF1."Descricao"]')
        end
        object Memo10: TfrxMemoView
          Left = 359.055118110000000000
          Top = 1.889763779999996000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          DataField = 'Total'
          DataSet = dbRF1
          DataSetName = 'dbRF1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRF1."Total"]')
          ParentFont = False
        end
      end
    end
    object Page8: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object heRF2: TfrxHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Top = 16.118120000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Valores recibidos')
          ParentFont = False
        end
      end
      object mdRF2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        DataSet = dbRF2
        DataSetName = 'dbRF2'
        RowCount = 0
        object Shape2: TfrxShapeView
          Align = baLeft
          Width = 495.118110240000000000
          Height = 22.677180000000000000
        end
        object dbRF2Descricao: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.889763779999996000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbRF2DescricaoOnBeforePrint'
          DataField = 'Descricao'
          DataSet = dbRF2
          DataSetName = 'dbRF2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRF2."Descricao"]')
          ParentFont = False
        end
        object dbRF2Total: TfrxMemoView
          Left = 359.055118110000000000
          Top = 1.889763779999996000
          Width = 128.503937010000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbRF2TotalOnBeforePrint'
          DataField = 'Total'
          DataSet = dbRF2
          DataSetName = 'dbRF2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRF2."Total"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object mdRF3: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        DataSet = dbRF3
        DataSetName = 'dbRF3'
        RowCount = 0
        object Shape6: TfrxShapeView
          Align = baLeft
          Width = 495.118110236220000000
          Height = 22.677180000000000000
        end
        object dbRF3Descricao: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.889763779999996000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbRF3DescricaoOnBeforePrint'
          DataField = 'Descricao'
          DataSet = dbRF3
          DataSetName = 'dbRF3'
          Memo.UTF8W = (
            '[dbRF3."Descricao"]')
        end
        object dbRF3Total: TfrxMemoView
          Left = 359.055118110000000000
          Top = 1.889763779999996000
          Width = 128.503937010000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbRF3TotalOnBeforePrint'
          DataField = 'Total'
          DataSet = dbRF3
          DataSetName = 'dbRF3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRF3."Total"]')
          ParentFont = False
        end
      end
      object Header7: TfrxHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Top = 17.338590000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Saldo de Caja:')
          ParentFont = False
        end
      end
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintIfEmpty = False
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 75.590600000000000000
        Width = 718.110700000000000000
        DataSet = dbObs
        DataSetName = 'dbObs'
        RowCount = 0
        Stretched = True
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 718.110700000000000000
          Height = 30.236240000000000000
        end
        object frdbCaixaObs: TfrxMemoView
          Left = 3.779530000000000000
          Top = 4.779529999999994000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'Obs'
          DataSet = dbObs
          DataSetName = 'dbObs'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbObs."Obs"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Top = 15.118120000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Observaciones:')
          ParentFont = False
        end
      end
    end
    object Page9: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData7: TfrxMasterData
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 113.385900000000000000
        Width = 740.409927000000000000
        DataSet = frdbPagEsp
        DataSetName = 'dbMeioPag'
        RowCount = 0
        Stretched = True
        object Shape15: TfrxShapeView
          Align = baClient
          Width = 740.409927000000000000
          Height = 26.456692910000000000
          OnBeforePrint = 'Shape2OnBeforePrint'
        end
        object Line3: TfrxLineView
          Left = 638.740570000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Highlight.ApplyFill = False
          Highlight.Font.Charset = ANSI_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dbMeioPag."Especie"> = 65535'
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[dbMeioPag."NomeEsp"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.559060000000003000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMeioPag."Total"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 408.189240000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 283.464750000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 529.134200000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo42: TfrxMemoView
          Left = 162.519790000000000000
          Top = 3.779529999999994000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMeioPag."Vendas"]')
          ParentFont = False
          Highlights = <
            item
              ApplyFont = False
              ApplyFill = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value = 0'
              FillType = ftBrush
              Visible = False
            end
            item
              ApplyFill = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Condition = '<dbMeioPag."Especie"> = 65535'
              FillType = ftBrush
            end>
        end
        object Memo43: TfrxMemoView
          Left = 287.244280000000000000
          Top = 3.779529999999994000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMeioPag."Dev"]')
          ParentFont = False
          Highlights = <
            item
              ApplyFont = False
              ApplyFill = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value = 0'
              FillType = ftBrush
              Visible = False
            end
            item
              ApplyFill = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Condition = '<dbMeioPag."Especie"> = 65535'
              FillType = ftBrush
            end>
        end
        object Memo80: TfrxMemoView
          Left = 411.968770000000000000
          Top = 3.779529999999994000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMeioPag."Sangria"]')
          ParentFont = False
          Highlights = <
            item
              ApplyFont = False
              ApplyFill = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value = 0'
              FillType = ftBrush
              Visible = False
            end
            item
              ApplyFill = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Condition = '<dbMeioPag."Especie"> = 65535'
              FillType = ftBrush
            end>
        end
        object Memo81: TfrxMemoView
          Left = 532.913730000000000000
          Top = 3.779529999999994000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = frdbPagEsp
          DataSetName = 'dbMeioPag'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMeioPag."Supr"]')
          ParentFont = False
          Highlights = <
            item
              ApplyFont = False
              ApplyFill = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = 'Value = 0'
              FillType = ftBrush
              Visible = False
            end
            item
              ApplyFill = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Condition = '<dbMeioPag."Especie"> = 65535'
              FillType = ftBrush
            end>
        end
        object Line2: TfrxLineView
          Left = 158.740260000000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object Header8: TfrxHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo14: TfrxMemoView
          Top = 20.677180000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            'Total por medio de pago')
          ParentFont = False
        end
        object Shape16: TfrxShapeView
          Top = 45.354360000000000000
          Width = 740.409448820000000000
          Height = 26.456710000000000000
        end
        object Line4: TfrxLineView
          Left = 638.740157480315000000
          Top = 45.354360000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 159.496062990000000000
          Top = 45.354360000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo15: TfrxMemoView
          Left = 645.520100000000000000
          Top = 48.913420000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133889999999990000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Medio de pago')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 408.189240000000000000
          Top = 45.354360000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 283.464750000000000000
          Top = 45.354360000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 529.134200000000000000
          Top = 45.354360000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo17: TfrxMemoView
          Left = 177.637910000000000000
          Top = 49.133889999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ventas')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 298.582870000000000000
          Top = 49.133889999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Devoluciones')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 423.307360000000000000
          Top = 49.133889999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Extracciones')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 540.472790000000000000
          Top = 49.133889999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entradas')
          ParentFont = False
        end
      end
      object MasterData8: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 162.519790000000000000
        Width = 740.409927000000000000
        DataSet = frdbMPObs
        DataSetName = 'dbMPObs'
        RowCount = 1
        object Memo13: TfrxMemoView
          Align = baWidth
          Top = 1.779529999999994000
          Width = 740.409927000000000000
          Height = 18.897650000000000000
          DataSet = frdbMPObs
          DataSetName = 'dbMPObs'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[dbMPObs."Asterisco"] El valor total recibido en [dbMPObs."NomeE' +
              'sp"] fue de [dbMPObs."Total"] , pero se di'#243' cambio de [dbMPObs."' +
              'Troco"].')
          ParentFont = False
          Formats = <
            item
            end
            item
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end
            item
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end
            item
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end>
        end
      end
    end
  end
end
