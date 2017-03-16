inherited fbCCE: TfbCCE
  Caption = 'Cartas de Corre'#231#227'o'
  Font.Height = -13
  Font.Name = 'Segoe UI'
  ExplicitWidth = 684
  ExplicitHeight = 390
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    inherited dxBarDockControl1: TdxBarDockControl
      Height = 44
      ExplicitHeight = 44
    end
    object Grid: TcxGrid
      Left = 0
      Top = 44
      Width = 668
      Height = 307
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TV: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.GridMode = True
        DataController.DataSource = DS
        DataController.KeyFieldNames = 'Chave'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = TVnfe_numero
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellAutoHeight = True
        Preview.Column = TVTexto
        Preview.MaxLineCount = 0
        Preview.Visible = True
        Styles.Header = FrmPri.cxsHeader
        object TVStatus: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'Status'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Images = dmImagens.im16
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = 'Transmitindo'
              ImageIndex = 94
              Value = 0
            end
            item
              Description = 'Aprovada'
              ImageIndex = 4
              Value = 1
            end
            item
              Description = 'Rejeitada'
              ImageIndex = 53
              Value = 2
            end>
          Properties.MultiLineText = True
          HeaderAlignmentHorz = taCenter
          Width = 115
        end
        object TVnfe_numero: TcxGridDBColumn
          Caption = 'N'#250'm. NF'
          DataBinding.FieldName = 'nfe_numero'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Content = FrmPri.cxStyle64
        end
        object TVDataHora: TcxGridDBColumn
          Caption = 'Data / Hora'
          DataBinding.FieldName = 'DataHora'
          HeaderAlignmentHorz = taCenter
          Width = 146
        end
        object TVnfe_serie: TcxGridDBColumn
          Caption = 'S'#233'rie'
          DataBinding.FieldName = 'nfe_serie'
          Visible = False
          Width = 54
        end
        object TVtran_id: TcxGridDBColumn
          Caption = 'Transa'#231#227'o'
          DataBinding.FieldName = 'tran_id'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object TVChave: TcxGridDBColumn
          DataBinding.FieldName = 'Chave'
          Width = 328
        end
        object TVtpAmbNFE: TcxGridDBColumn
          DataBinding.FieldName = 'tpAmbNFE'
          Visible = False
          VisibleForCustomization = False
        end
        object TVProtocolo: TcxGridDBColumn
          DataBinding.FieldName = 'Protocolo'
        end
        object TVTexto: TcxGridDBColumn
          DataBinding.FieldName = 'Texto'
          Width = 163
        end
        object TVxMotivo: TcxGridDBColumn
          DataBinding.FieldName = 'xMotivo'
          PropertiesClassName = 'TcxMemoProperties'
          Width = 248
        end
        object TVUsuario: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'Usuario'
          Width = 132
        end
        object TVStatusCCE: TcxGridDBColumn
          Caption = 'Status CCE'
          DataBinding.FieldName = 'StatusCCE'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
        end
      end
      object GL: TcxGridLevel
        GridView = TV
      end
    end
  end
  inherited BarMgr: TdxBarManager
    UseSystemFont = False
    Left = 72
    Top = 256
    inherited BarMgrBar1: TdxBar
      Font.Height = -13
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmEmail'
        end
        item
          Visible = True
          ItemName = 'cmSalvar'
        end
        item
          Visible = True
          ItemName = 'cmVer'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmImprimirCCE'
        end>
      UseOwnFont = True
    end
    inherited cmNovo: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited cmEditar: TdxBarLargeButton
      ImageIndex = 20
    end
    inherited cmApagar: TdxBarLargeButton
      ImageIndex = 12
    end
    inherited cmLayout: TdxBarLargeButton
      ImageIndex = -1
    end
    inherited cmPeriodo: TdxBarLargeButton
      ImageIndex = -1
    end
    object cmEmail: TdxBarLargeButton
      Caption = 'Enviar por E-mail'
      Category = 0
      Hint = 'Enviar por E-mail'
      Visible = ivAlways
      OnClick = cmEmailClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 153
    end
    object cmSalvar: TdxBarLargeButton
      Caption = 'Salvar XML'
      Category = 0
      Hint = 'Salvar XML'
      Visible = ivAlways
      OnClick = cmSalvarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 41
    end
    object cmVer: TdxBarLargeButton
      Caption = 'Ver XML'
      Category = 0
      Hint = 'Ver XML'
      Visible = ivAlways
      OnClick = cmVerClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 163
    end
    object cmImprimirCCE: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      OnClick = cmImprimirCCEClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 7
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Left = 440
    Top = 257
  end
  inherited CP: TdxComponentPrinter
    Left = 336
    Top = 258
  end
  inherited dlgExp: TSaveDialog
    Left = 128
    Top = 257
  end
  inherited pmLay: TdxBarPopupMenu
    Left = 240
    Top = 258
  end
  inherited pmPeriodo: TdxBarPopupMenu
    Left = 192
    Top = 260
  end
  object Tab: TnxTable
    ActiveDesigntime = True
    Database = Dados.db
    FlipOrder = True
    TableName = 'CCe'
    IndexName = 'IDataHora'
    Left = 288
    Top = 256
    object TabUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object TabNumSeq: TUnsignedAutoIncField
      FieldName = 'NumSeq'
    end
    object TabChave: TStringField
      FieldName = 'Chave'
      Size = 44
    end
    object TabDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object Tabtran_uid: TGuidField
      FieldName = 'tran_uid'
      Size = 38
    end
    object Tabtran_id: TLongWordField
      FieldName = 'tran_id'
    end
    object Tabnfe_serie: TStringField
      FieldName = 'nfe_serie'
      Size = 5
    end
    object Tabnfe_numero: TLongWordField
      FieldName = 'nfe_numero'
    end
    object TabtpAmbNFE: TByteField
      FieldName = 'tpAmbNFE'
    end
    object TabProtocolo: TStringField
      FieldName = 'Protocolo'
    end
    object TabTexto: TnxMemoField
      FieldName = 'Texto'
      BlobType = ftMemo
    end
    object TabStatus: TByteField
      FieldName = 'Status'
    end
    object TabStatusCCE: TIntegerField
      FieldName = 'StatusCCE'
    end
    object TabXMLdest: TnxMemoField
      FieldName = 'XMLdest'
      BlobType = ftMemo
    end
    object TabXMLret: TnxMemoField
      FieldName = 'XMLret'
      BlobType = ftMemo
    end
    object TabxMotivo: TnxMemoField
      FieldName = 'xMotivo'
      BlobType = ftMemo
    end
    object TabLogEnvio: TnxMemoField
      FieldName = 'LogEnvio'
      BlobType = ftMemo
    end
    object TabLogRec: TnxMemoField
      FieldName = 'LogRec'
      BlobType = ftMemo
    end
    object TabUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
    end
    object TabNomeUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeUsuario'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Usuario'
      Size = 50
      Lookup = True
    end
  end
  object DS: TDataSource
    DataSet = Tab
    Left = 392
    Top = 256
  end
  object Relcce: TfrxReport
    Version = '5.5.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42807.698038240700000000
    ReportOptions.LastChange = 42808.553718055550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 496
    Top = 256
    Datasets = <
      item
        DataSet = dbmt
        DataSetName = 'dbmt'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 405.779840000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape2: TfrxShapeView
          Left = 1.000000000000000000
          Top = 121.102350000000000000
          Width = 736.000000000000000000
          Height = 103.000000000000000000
        end
        object Shape1: TfrxShapeView
          Left = 1.000000000000000000
          Top = 1.102350000000000000
          Width = 736.000000000000000000
          Height = 117.440940000000000000
        end
        object Shape3: TfrxShapeView
          Left = 1.000000000000000000
          Top = 227.102350000000000000
          Width = 736.000000000000000000
          Height = 171.000000000000000000
        end
        object Memo1: TfrxMemoView
          Left = 9.559060000000000000
          Top = 155.299320000000000000
          Width = 714.331170000000000000
          Height = 64.488250000000000000
          DataField = 'xCOrrecao'
          DataSet = dbmt
          DataSetName = 'dbmt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbmt."xCOrrecao"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 185.196970000000000000
          Top = 3.779530000000000000
          Width = 336.378170000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Carta de Corre'#231#227'o Eletr'#244'nica - CC-e')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 38.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Raz'#227'o Social:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 170.637910000000000000
          Top = 66.133890000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ambiente:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 66.133890000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 212.126160000000000000
          Top = 96.811070000000000000
          Width = 137.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Protocolo Autoriza'#231#227'o:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 499.173470000000000000
          Top = 98.133890000000000000
          Width = 113.385900000000000000
          Height = 16.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data emiss'#227'o CC-e:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 8.338590000000000000
          Top = 97.590600000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CC-e referente a NF-e:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 121.944960000000000000
          Top = 123.724490000000000000
          Width = 468.661720000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Informa'#231#245'es da Carta de Corre'#231#227'o Eletr'#244'nica')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 120.944960000000000000
          Top = 231.126160000000000000
          Width = 468.661720000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Condi'#231#245'es de uso da Carta de Corre'#231#227'o Eletr'#244'nica')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 95.385900000000000000
          Top = 38.677180000000000000
          Width = 350.448980000000000000
          Height = 18.897650000000000000
          DataField = 'RazaoSocial'
          DataSet = dbmt
          DataSetName = 'dbmt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbmt."RazaoSocial"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 51.913420000000000000
          Top = 66.133890000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = dbmt
          DataSetName = 'dbmt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbmt."CNPJ"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 619.457020000000000000
          Top = 98.133890000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'dhEvento'
          DataSet = dbmt
          DataSetName = 'dbmt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbmt."dhEvento"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 150.976500000000000000
          Top = 97.252010000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'nroNFe'
          DataSet = dbmt
          DataSetName = 'dbmt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbmt."nroNFe"]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = 10.338590000000000000
          Top = 256.582870000000000000
          Width = 710.551640000000000000
          Height = 148.196970000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313033337B5C666F6E7474626C7B5C66
            305C66726F6D616E5C6663686172736574302054696D6573204E657720526F6D
            616E3B7D7B5C66315C666E696C5C666368617273657430205461686F6D613B7D
            7D0D0A7B5C2A5C67656E657261746F722052696368656432302031302E302E31
            343339337D5C766965776B696E64345C756331200D0A5C706172645C73623130
            305C73613130305C716A5C66305C667332305C6C616E67313034362020202020
            2020202020204120436172746120646520436F72726563616F205C2765392064
            69736369706C696E6164612070656C6F2070617261677261666F20315C276261
            2D4120646F206172742E20375C27626120646F20436F6E76656E696F20532F4E
            2C2064652031352064652064657A656D62726F2064652031393730206520706F
            646520736572207574696C697A616461207061726120726567756C6172697A61
            63616F206465206572726F206F636F727269646F206E6120656D697373616F20
            646520646F63756D656E746F2066697363616C2C20646573646520717565206F
            206572726F206E616F20657374656A612072656C6163696F6E61646F20636F6D
            3A205C7061720D0A49202D206173207661726961766569732071756520646574
            65726D696E616D206F2076616C6F7220646F20696D706F73746F207461697320
            636F6D6F3A20626173652064652063616C63756C6F2C20616C6971756F74612C
            206469666572656E636120646520707265636F2C207175616E7469646164652C
            2076616C6F72206461206F7065726163616F206F752064612070726573746163
            616F3B205C7061720D0A4949202D206120636F72726563616F20646520646164
            6F7320636164617374726169732071756520696D706C69717565206D7564616E
            636120646F2072656D6574656E7465206F7520646F2064657374696E61746172
            696F3B205C7061720D0A494949202D2061206461746120646520656D69737361
            6F206F752064652073616964612E5C7061720D0A0D0A5C706172645C66315C66
            7331365C6C616E67313033335C7061720D0A7D0D0A00}
        end
        object Memo18: TfrxMemoView
          Left = 242.448980000000000000
          Top = 66.133890000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'tpAmb'
          DataSet = dbmt
          DataSetName = 'dbmt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbmt."tpAmb"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 2.000000000000000000
          Top = 150.102350000000000000
          Width = 733.440940000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 2.000000000000000000
          Top = 27.102350000000000000
          Width = 733.440940000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 2.000000000000000000
          Top = 258.102350000000000000
          Width = 733.440940000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 450.000000000000000000
          Top = 28.102350000000000000
          Height = 88.338590000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo15: TfrxMemoView
          Left = 539.000000000000000000
          Top = 33.102350000000000000
          Width = 151.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Chave de Acesso NF-e')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          ShiftMode = smDontShift
          Left = 456.000000000000000000
          Top = 54.102350000000000000
          Width = 277.000000000000000000
          Height = 27.968503940000000000
          BarType = bcCode128C
          DataField = 'chNFe'
          DataSet = dbmt
          DataSetName = 'dbmt'
          Expression = '<dbmt."chNFe">'
          Rotation = 0
          ShowText = False
          Text = '35161007216011000152550010000754211000373531'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo17: TfrxMemoView
          Left = 460.000000000000000000
          Top = 81.102350000000000000
          Width = 270.385900000000000000
          Height = 18.897650000000000000
          DataField = 'chNFe'
          DataSet = dbmt
          DataSetName = 'dbmt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbmt."chNFe"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 355.000000000000000000
          Top = 97.102350000000000000
          Width = 91.133890000000000000
          Height = 18.897650000000000000
          DataField = 'protocolo'
          DataSet = dbmt
          DataSetName = 'dbmt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbmt."protocolo"]')
          ParentFont = False
        end
      end
    end
  end
  object mt: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'chNFe'
        DataType = ftString
        Size = 44
      end
      item
        Name = 'tpAmb'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'xCOrrecao'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'dhEvento'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RazaoSocial'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'nroNFe'
        DataType = ftString
        Size = 9
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
    Left = 304
    Top = 200
    object mtchNFe: TStringField
      FieldName = 'chNFe'
      Size = 44
    end
    object mttpAmb: TStringField
      FieldName = 'tpAmb'
      Size = 15
    end
    object mtCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object mtxCOrrecao: TStringField
      FieldName = 'xCOrrecao'
      Size = 150
    end
    object mtdhEvento: TStringField
      FieldName = 'dhEvento'
      Size = 10
    end
    object mtRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Size = 80
    end
    object mtnroNFe: TStringField
      FieldName = 'nroNFe'
      Size = 9
    end
    object mtprotocolo: TStringField
      FieldName = 'protocolo'
    end
  end
  object dbmt: TfrxDBDataset
    UserName = 'dbmt'
    CloseDataSource = False
    FieldAliases.Strings = (
      'chNFe=chNFe'
      'tpAmb=tpAmb'
      'CNPJ=CNPJ'
      'xCOrrecao=xCOrrecao'
      'dhEvento=dhEvento'
      'RazaoSocial=RazaoSocial'
      'nroNFe=nroNFe'
      'protocolo=protocolo')
    DataSet = mt
    BCDToCurrency = False
    Left = 240
    Top = 200
  end
  object tDadosNfe: TnxTable
    Database = Dados.db
    FlipOrder = True
    TableName = 'NFCONFIG'
    Left = 440
    Top = 200
    object tDadosNfeID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tDadosNfeUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tDadosNfeEmitirNFCe: TBooleanField
      FieldName = 'EmitirNFCe'
    end
    object tDadosNfeTipo: TByteField
      FieldName = 'Tipo'
    end
    object tDadosNfeRemoverNFCe: TBooleanField
      FieldName = 'RemoverNFCe'
    end
    object tDadosNfeUsarPautaMaiorMVA: TBooleanField
      FieldName = 'UsarPautaMaiorMVA'
    end
    object tDadosNfeEmitirNFE: TBooleanField
      FieldName = 'EmitirNFE'
    end
    object tDadosNfeCertificadoDig: TStringField
      FieldName = 'CertificadoDig'
      Size = 300
    end
    object tDadosNfesat_modelo: TByteField
      FieldName = 'sat_modelo'
    end
    object tDadosNfesat_config: TStringField
      FieldName = 'sat_config'
      Size = 50
    end
    object tDadosNfesat_esq: TByteField
      FieldName = 'sat_esq'
    end
    object tDadosNfenfe_permite_cred_icms: TBooleanField
      FieldName = 'nfe_permite_cred_icms'
    end
    object tDadosNfenfe_perc_cred_icms: TFloatField
      FieldName = 'nfe_perc_cred_icms'
    end
    object tDadosNfeContabilidade: TStringField
      FieldName = 'Contabilidade'
      Size = 19
    end
    object tDadosNfeexigir_peso_vol: TBooleanField
      FieldName = 'exigir_peso_vol'
    end
    object tDadosNfeenviar_peso_vol_def: TBooleanField
      FieldName = 'enviar_peso_vol_def'
    end
    object tDadosNfeauto_calc_peso_def: TBooleanField
      FieldName = 'auto_calc_peso_def'
    end
    object tDadosNfenfe_venda: TBooleanField
      FieldName = 'nfe_venda'
    end
    object tDadosNfetipodoc_padrao: TByteField
      FieldName = 'tipodoc_padrao'
    end
    object tDadosNfePinCert: TStringField
      FieldName = 'PinCert'
      Size = 50
    end
    object tDadosNfeDependNFCEOk: TBooleanField
      FieldName = 'DependNFCEOk'
    end
    object tDadosNfeDependSATOk: TBooleanField
      FieldName = 'DependSATOk'
    end
    object tDadosNfeDependNFEOk: TBooleanField
      FieldName = 'DependNFEOk'
    end
    object tDadosNfeTipoCert: TByteField
      FieldName = 'TipoCert'
    end
    object tDadosNfeAutoPrintNFCe: TBooleanField
      FieldName = 'AutoPrintNFCe'
    end
    object tDadosNfeCRT: TByteField
      FieldName = 'CRT'
    end
    object tDadosNfeNCM_Padrao: TStringField
      FieldName = 'NCM_Padrao'
      Size = 8
    end
    object tDadosNfeTrib_Padrao: TWordField
      FieldName = 'Trib_Padrao'
    end
    object tDadosNfeMostrarDadosNFE: TBooleanField
      FieldName = 'MostrarDadosNFE'
    end
    object tDadosNfeModeloNFE: TStringField
      FieldName = 'ModeloNFE'
      Size = 5
    end
    object tDadosNfeModeloNFCe: TStringField
      FieldName = 'ModeloNFCe'
      Size = 5
    end
    object tDadosNfeSerieNFCe: TStringField
      FieldName = 'SerieNFCe'
      Size = 5
    end
    object tDadosNfeSerieNFe: TStringField
      FieldName = 'SerieNFe'
      Size = 5
    end
    object tDadosNfeNomeDllSat: TStringField
      FieldName = 'NomeDllSat'
      Size = 200
    end
    object tDadosNfeSignACSat: TStringField
      FieldName = 'SignACSat'
      Size = 344
    end
    object tDadosNfeCodigoAtivacao: TStringField
      FieldName = 'CodigoAtivacao'
      Size = 50
    end
    object tDadosNfeAssociarSignAC: TBooleanField
      FieldName = 'AssociarSignAC'
    end
    object tDadosNfeInicioNFe: TLongWordField
      FieldName = 'InicioNFe'
    end
    object tDadosNfeInicioNFCe: TLongWordField
      FieldName = 'InicioNFCe'
    end
    object tDadosNfeRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Size = 100
    end
    object tDadosNfeNomeFantasia: TStringField
      FieldName = 'NomeFantasia'
      Size = 50
    end
    object tDadosNfeCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object tDadosNfeIE: TStringField
      FieldName = 'IE'
    end
    object tDadosNfeEnd_Logradouro: TStringField
      FieldName = 'End_Logradouro'
      Size = 100
    end
    object tDadosNfeEnd_Numero: TStringField
      FieldName = 'End_Numero'
      Size = 10
    end
    object tDadosNfeEnd_Complemento: TStringField
      FieldName = 'End_Complemento'
    end
    object tDadosNfeEnd_Bairro: TStringField
      FieldName = 'End_Bairro'
      Size = 40
    end
    object tDadosNfeEnd_UF: TStringField
      FieldName = 'End_UF'
      Size = 2
    end
    object tDadosNfeEnd_CEP: TStringField
      FieldName = 'End_CEP'
      Size = 9
    end
    object tDadosNfeEnd_Municipio: TStringField
      FieldName = 'End_Municipio'
      Size = 50
    end
    object tDadosNfeEnd_CodMun: TStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object tDadosNfeEnd_CodUF: TByteField
      FieldName = 'End_CodUF'
    end
    object tDadosNfeTelefone: TStringField
      FieldName = 'Telefone'
    end
    object tDadosNfetpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object tDadosNfetpAmbNFE: TByteField
      FieldName = 'tpAmbNFE'
    end
    object tDadosNfeCSC: TStringField
      FieldName = 'CSC'
      Size = 100
    end
    object tDadosNfeIdCSC: TStringField
      FieldName = 'IdCSC'
      Size = 10
    end
    object tDadosNfePedirEmail: TByteField
      FieldName = 'PedirEmail'
    end
    object tDadosNfePedirCPF: TByteField
      FieldName = 'PedirCPF'
    end
    object tDadosNfeFromEmail: TStringField
      FieldName = 'FromEmail'
      Size = 100
    end
    object tDadosNfeAssuntoEmail: TStringField
      FieldName = 'AssuntoEmail'
      Size = 100
    end
    object tDadosNfeFromName: TStringField
      FieldName = 'FromName'
      Size = 50
    end
    object tDadosNfeCorpoEmail: TnxMemoField
      FieldName = 'CorpoEmail'
      BlobType = ftMemo
    end
    object tDadosNfeModeloNFCe_Email: TGuidField
      FieldName = 'ModeloNFCe_Email'
      Size = 38
    end
    object tDadosNfeModeloSAT_Email: TGuidField
      FieldName = 'ModeloSAT_Email'
      Size = 38
    end
    object tDadosNfeModeloNFE_Email: TGuidField
      FieldName = 'ModeloNFE_Email'
      Size = 38
    end
    object tDadosNfeurls_qrcode_hom: TnxMemoField
      FieldName = 'urls_qrcode_hom'
      BlobType = ftMemo
    end
    object tDadosNfeurls_qrcode_prod: TnxMemoField
      FieldName = 'urls_qrcode_prod'
      BlobType = ftMemo
    end
    object tDadosNfeurls_consulta: TnxMemoField
      FieldName = 'urls_consulta'
      BlobType = ftMemo
    end
    object tDadosNfeconfig_nfe: TnxMemoField
      FieldName = 'config_nfe'
      BlobType = ftMemo
    end
    object tDadosNfeObsFisco: TnxMemoField
      FieldName = 'ObsFisco'
      BlobType = ftMemo
    end
  end
end
