object dmDemonstrativoDeb: TdmDemonstrativoDeb
  OldCreateOrder = False
  Height = 344
  Width = 570
  object mtCab: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Cliente'
        DataType = ftString
        Size = 100
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
    Left = 32
    Top = 24
    object mtCabCliente: TStringField
      FieldName = 'Cliente'
      Size = 100
    end
  end
  object mtItem: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Descr'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DataCompra'
        DataType = ftDateTime
      end
      item
        Name = 'Quant'
        DataType = ftFloat
      end
      item
        Name = 'ValorCompra'
        DataType = ftCurrency
      end
      item
        Name = 'ValorDeb'
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
    Left = 80
    Top = 24
    object mtItemCodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Size = 30
    end
    object mtItemDescr: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descr'
      Size = 100
    end
    object mtItemDataCompra: TDateTimeField
      FieldName = 'DataCompra'
    end
    object mtItemQuant: TFloatField
      FieldName = 'Quant'
    end
    object mtItemValorCompra: TCurrencyField
      FieldName = 'ValorCompra'
    end
    object mtItemValorDeb: TCurrencyField
      FieldName = 'ValorDeb'
    end
  end
  object repBob: TfrxReport
    Version = '5.5'
    DataSet = dbCab
    DataSetName = 'dbCab'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
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
    Left = 168
    Top = 88
    Datasets = <
      item
        DataSet = dbCab
        DataSetName = 'dbCab'
      end
      item
        DataSet = Dados.dbConfig
        DataSetName = 'dbConfig'
      end
      item
        DataSet = dbItem
        DataSetName = 'dbItem'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 121.919921260050900000
      PaperHeight = 359.833100941122300000
      PaperSize = 256
      EndlessHeight = True
      FontStyle = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 51.000000000000000000
        Top = 204.000000000000000000
        Width = 460.800000000000000000
        DataSet = dbItem
        DataSetName = 'dbItem'
        RowCount = 0
        Stretched = True
        object DMPMemo13: TfrxDMPMemoView
          Align = baLeft
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          StretchMode = smActualHeight
          AutoWidth = True
          Memo.UTF8W = (
            '[dbItem."Quant"] X [dbItem."Descr"]')
          TruncOutboundText = True
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo15: TfrxDMPMemoView
          Align = baRight
          Left = 297.600000000000000000
          Width = 163.200000000000000000
          Height = 17.000000000000000000
          AutoWidth = True
          DataField = 'ValorCompra'
          DataSet = dbItem
          DataSetName = 'dbItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItem."ValorCompra"]')
          ParentFont = False
          WordWrap = False
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Align = baLeft
          Top = 17.000000000000000000
          Width = 230.400000000000000000
          Height = 17.000000000000000000
          DataField = 'DataCompra'
          DataSet = dbItem
          DataSetName = 'dbItem'
          Memo.UTF8W = (
            '[dbItem."DataCompra"]')
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          Align = baRight
          Left = 297.600000000000000000
          Top = 17.000000000000000000
          Width = 163.200000000000000000
          Height = 17.000000000000000000
          AutoWidth = True
          DataField = 'ValorDeb'
          DataSet = dbItem
          DataSetName = 'dbItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItem."ValorDeb"]')
          ParentFont = False
          WordWrap = False
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          Align = baWidth
          Top = 34.000000000000000000
          Width = 460.800000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '-------------------------')
          TruncOutboundText = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 153.000000000000000000
        Top = 17.000000000000000000
        Width = 460.800000000000000000
        object DMPMemo16: TfrxDMPMemoView
          Align = baWidth
          Width = 460.800000000000000000
          Height = 17.000000000000000000
          AutoWidth = True
          FontStyle = []
          Memo.UTF8W = (
            '[dbConfig."RecNomeLoja"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo18: TfrxDMPMemoView
          Align = baWidth
          Top = 34.000000000000000000
          Width = 460.800000000000000000
          Height = 17.000000000000000000
          StretchMode = smActualHeight
          AutoWidth = True
          DataSet = dbCab
          DataSetName = 'dbCab'
          FontStyle = []
          Memo.UTF8W = (
            'Cliente: [dbCab."Cliente"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo21: TfrxDMPMemoView
          Align = baLeft
          Top = 68.000000000000000000
          Width = 460.800000000000000000
          Height = 17.000000000000000000
          StretchMode = smActualHeight
          FontStyle = []
          Memo.UTF8W = (
            'Demonstrativo de D'#233'bitos em [Date] [Time]')
          ParentFont = False
          TruncOutboundText = False
          Formats = <
            item
            end
            item
            end>
        end
        object DMPMemo24: TfrxDMPMemoView
          Align = baLeft
          Top = 102.000000000000000000
          Width = 230.400000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            'Quant. X Produto')
          TruncOutboundText = False
        end
        object DMPMemo25: TfrxDMPMemoView
          Align = baRight
          Left = 345.600000000000000000
          Top = 102.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo4: TfrxDMPMemoView
          Align = baWidth
          Top = 85.000000000000000000
          Width = 460.800000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            
              '================================================================' +
              '=========================')
          TruncOutboundText = True
        end
        object DMPMemo5: TfrxDMPMemoView
          Align = baWidth
          Top = 136.000000000000000000
          Width = 460.800000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            
              '================================================================' +
              '=========================')
          TruncOutboundText = True
        end
        object DMPMemo3: TfrxDMPMemoView
          Top = 119.000000000000000000
          Width = 230.400000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            'Data da Compra')
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Align = baRight
          Left = 307.200000000000000000
          Top = 119.000000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR EM D'#201'BITO')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 289.000000000000000000
        Width = 460.800000000000000000
        Stretched = True
        object DMPMemo11: TfrxDMPMemoView
          Align = baWidth
          Top = 17.000000000000000000
          Width = 460.800000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            
              '================================================================' +
              '=========================')
          TruncOutboundText = True
        end
        object DMPMemo1: TfrxDMPMemoView
          Align = baRight
          Left = 307.200000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          AutoWidth = True
          DataSet = dbItem
          DataSetName = 'dbItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbItem."ValorDeb">,MasterData1)]')
          ParentFont = False
          WordWrap = False
          TruncOutboundText = False
        end
        object DMPMemo2: TfrxDMPMemoView
          Align = baLeft
          Width = 230.400000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            'Valor total em d'#233'bito: ')
          TruncOutboundText = False
        end
      end
    end
  end
  object dbCab: TfrxDBDataset
    UserName = 'dbCab'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Cliente=Cliente')
    DataSet = mtCab
    BCDToCurrency = False
    Left = 32
    Top = 88
  end
  object dbItem: TfrxDBDataset
    UserName = 'dbItem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Codigo=Codigo'
      'Descr=Descr'
      'DataCompra=DataCompra'
      'Quant=Quant'
      'ValorCompra=ValorCompra'
      'ValorDeb=ValorDeb')
    DataSet = mtItem
    BCDToCurrency = False
    Left = 80
    Top = 88
  end
  object tMovEst: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'MovEst'
    Left = 272
    Top = 160
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
    Left = 120
    Top = 200
  end
  object repFolha: TfrxReport
    Version = '5.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 38825.568748067100000000
    ReportOptions.Name = 'NEXCAFE_RECIBO'
    ReportOptions.LastChange = 41907.482169050900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '  '
      'begin'
      ''
      'end.')
    Left = 256
    Top = 80
    Datasets = <
      item
        DataSet = dbCab
        DataSetName = 'dbCab'
      end
      item
        DataSet = Dados.dbConfig
        DataSetName = 'dbConfig'
      end
      item
        DataSet = dbItem
        DataSetName = 'dbItem'
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
          Width = 544.252320000000000000
          Height = 18.897650000000000000
          DataField = 'Cliente'
          DataSet = dbCab
          DataSetName = 'dbCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCab."Cliente"]')
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
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Demonstrativo de D'#233'bitos em [Date] [Time]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Top = 113.385900000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade X Produto')
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
          HAlign = haRight
          Memo.UTF8W = (
            'Valor em D'#233'bito')
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
          Font.Style = []
          Memo.UTF8W = (
            'Valor da Compra')
          ParentFont = False
        end
      end
      object Produtos: TfrxMasterData
        FillType = ftBrush
        Height = 49.692950000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = dbItem
        DataSetName = 'dbItem'
        RowCount = 0
        object Memo13: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 49.692950000000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo15: TfrxMemoView
          Left = 476.220875200000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'ValorCompra'
          DataSet = dbItem
          DataSetName = 'dbItem'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbItem."ValorCompra"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baRight
          Left = 604.724895200000000000
          Top = 3.779530000000000000
          Width = 113.385804800000000000
          Height = 18.897650000000000000
          DataField = 'ValorDeb'
          DataSet = dbItem
          DataSetName = 'dbItem'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItem."ValorDeb"]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Top = 3.779530000000000000
          Width = 472.441005910000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C205461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F72205269636865
            6432302031302E302E31303538367D5C766965776B696E64345C756331200D0A
            5C706172645C66733230205B64624974656D2E225175616E74225D205C622058
            5C623020205B64624974656D2E224465736372225D5C66315C667331365C7061
            720D0A7D0D0A00}
        end
        object Memo4: TfrxMemoView
          Left = 2.000000000000000000
          Top = 27.015770000000000000
          Width = 343.936863860000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = dbItem
          DataSetName = 'dbItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Compra realizada em [dbItem."DataCompra"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        Stretched = True
        object Memo5: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object dbTotPagValor: TfrxMemoView
          Align = baRight
          Left = 219.212740000000000000
          Top = 5.338590000000000000
          Width = 498.897960000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'dbTotPagValorOnBeforePrint'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor total em D'#233'bito = [SUM(<dbItem."ValorDeb">,Produtos)]')
          ParentFont = False
        end
      end
    end
  end
end
