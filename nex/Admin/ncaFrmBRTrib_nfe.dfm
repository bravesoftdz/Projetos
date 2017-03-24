inherited FrmBRTrib_nfe: TFrmBRTrib_nfe
  ActiveControl = edNome
  Caption = 'Tributa'#231#227'o'
  ClientHeight = 583
  ClientWidth = 792
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 808
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    Width = 792
    Height = 537
    ExplicitWidth = 792
    ExplicitHeight = 537
    object LC: TdxLayoutControl
      Left = 2
      Top = 2
      Width = 788
      Height = 533
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = FrmPri.lfDefault
      object edCod: TcxDBSpinEdit
        Left = 61
        Top = 10
        TabStop = False
        DataBinding.DataField = 'ID'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.MaxValue = 1.000000000000000000
        Properties.MinValue = 9999.000000000000000000
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 0
        Width = 83
      end
      object edNome: TcxDBTextEdit
        Left = 61
        Top = 43
        DataBinding.DataField = 'Nome'
        DataBinding.DataSource = DS
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 1
        Width = 420
      end
      object edOrigem: TcxDBImageComboBox
        Left = 61
        Top = 76
        DataBinding.DataField = 'Origem'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.ImmediateDropDownWhenKeyPressed = False
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <
          item
            Description = '0 - Nacional'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = '1 - Estrangeira - Importa'#231#227'o direta'
            Value = 1
          end
          item
            Description = '2 - Estrangeira - Adquirida no mercado interno'
            Value = 2
          end
          item
            Description = 
              '3 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
              'ior a 40% (quarenta por cento)'
            Value = 3
          end
          item
            Description = 
              '4 - Nacional, cuja produ'#231#227'o tenha sido feita em conformidade com' +
              ' os processos produtivos b'#225'sicos de que tratam o Decreto-Lei n'#186' ' +
              '288/67, e as Leis n'#186's 8.248/91, 8.387/91, 10.176/01 e 11 . 4 8 4' +
              ' / 0 7'
            Value = 4
          end
          item
            Description = 
              '5 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o infer' +
              'ior ou igual a 40% (quarenta por cento)'
            Value = 5
          end
          item
            Description = 
              '6 - Estrangeira - Importa'#231#227'o direta, sem similar nacional, const' +
              'ante em lista de Resolu'#231#227'o CAMEX'
            Value = 6
          end
          item
            Description = 
              '7 - Estrangeira - Adquirida no mercado interno, sem similar naci' +
              'onal, constante em lista de Resolu'#231#227'o CAMEX'#8221
            Value = 7
          end>
        Style.StyleController = FrmPri.escFlat
        TabOrder = 2
        Width = 420
      end
      object edCSOSN: TcxDBImageComboBox
        Left = 10000
        Top = 10000
        RepositoryItem = Dados.erCSOSN
        DataBinding.DataField = 'CSOSN'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.ImmediateDropDownWhenKeyPressed = False
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <>
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 6
        Visible = False
        Width = 420
      end
      object edCFOP_NFCe: TcxDBButtonEdit
        Left = 10000
        Top = 10000
        DataBinding.DataField = 'CFOP_nfce'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edCFOP_NFCePropertiesButtonClick
        Properties.OnChange = edCFOP_NFCePropertiesChange
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 7
        Visible = False
        Width = 114
      end
      object lbCFOP: TcxLabel
        Left = 10000
        Top = 10000
        Caption = 'XXXXX'
        ParentFont = False
        Style.HotTrack = False
        Transparent = True
        Visible = False
      end
      object LMDSimplePanel1: TLMDSimplePanel
        Left = 24
        Top = 228
        Width = 740
        Height = 281
        Hint = ''
        Bevel.Mode = bmStandard
        Color = clWhite
        TabOrder = 5
        object Grid: TcxGrid
          Left = 1
          Top = 1
          Width = 738
          Height = 258
          Align = alClient
          BorderStyle = cxcbsNone
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object TV: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsItens
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Preview.Column = TVobsfiscal
            Preview.MaxLineCount = 0
            Preview.Visible = True
            Styles.Header = FrmPri.styleSelecionado
            object TVnome: TcxGridDBColumn
              Caption = 'Opera'#231#227'o'
              DataBinding.FieldName = 'nome'
              Options.Editing = False
              Options.Focusing = False
              Styles.Content = FrmPri.cxStyle60
              Width = 201
            end
            object TVdentro_estado: TcxGridDBColumn
              Caption = 'Local'
              DataBinding.FieldName = 'local'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.ImmediateDropDownWhenActivated = True
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = 'Mesmo Estado'
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = 'Outro Estado'
                  Value = 1
                end
                item
                  Description = 'Outro Pa'#237's'
                  Value = 2
                end>
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Styles.Content = FrmPri.cxStyle60
              Width = 134
            end
            object TVcsosn: TcxGridDBColumn
              Caption = 'CSOSN'
              DataBinding.FieldName = 'csosn'
              RepositoryItem = Dados.erCSOSN_nfe
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
            object TVcfop: TcxGridDBColumn
              Caption = 'CFOP'
              DataBinding.FieldName = 'cfop'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = TVcfopPropertiesButtonClick
              HeaderAlignmentHorz = taCenter
              Width = 62
            end
            object TVicms: TcxGridDBColumn
              Caption = '% ICMS'
              DataBinding.FieldName = 'icms'
              PropertiesClassName = 'TcxMaskEditProperties'
              Visible = False
              HeaderAlignmentHorz = taCenter
              VisibleForCustomization = False
              Width = 63
            end
            object TVobsfiscal: TcxGridDBColumn
              Caption = 'Observa'#231#227'o Fiscal na NF-e'
              DataBinding.FieldName = 'obsfiscal'
              PropertiesClassName = 'TcxMemoProperties'
              Width = 360
            end
            object TVnatop: TcxGridDBColumn
              Caption = 'Natureza da opera'#231#227'o'
              DataBinding.FieldName = 'natop'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.MaxLength = 60
              Width = 301
            end
          end
          object GL: TcxGridLevel
            GridView = TV
          end
        end
        object lbObs: TcxLabel
          Left = 1
          Top = 259
          Cursor = crHandPoint
          Align = alBottom
          Caption = 
            'F4 - Observa'#231#245'es Fiscais (observa'#231#245'es que devem fazer parte da N' +
            'F-e)'
          ParentColor = False
          ParentFont = False
          Style.Color = clWhite
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.HotTrack = True
          Style.TextColor = clHotLight
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextStyle = [fsBold, fsUnderline]
          OnClick = lbObsClick
        end
      end
      object edPermiteCredICMS: TcxDBCheckBox
        Left = 61
        Top = 142
        Caption = 'Permite destaque de aproveitamento de cr'#233'dito de ICMS na NF-e'
        DataBinding.DataField = 'nfe_credicms'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.FullFocusRect = True
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Style.HotTrack = False
        TabOrder = 4
      end
      object edICMS: TcxDBCurrencyEdit
        Left = 61
        Top = 109
        DataBinding.DataField = 'ICMS'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.DisplayFormat = '0.##'
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 3
        Width = 114
      end
      object panICMSSt: TLMDSimplePanel
        Left = 10000
        Top = 10000
        Width = 740
        Height = 281
        Hint = ''
        Bevel.Mode = bmCustom
        TabOrder = 9
        Visible = False
        object gridST: TcxGrid
          Left = 0
          Top = 28
          Width = 169
          Height = 253
          Align = alLeft
          TabOrder = 0
          object tvST: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsST
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object TVUF: TcxGridDBColumn
              DataBinding.FieldName = 'UF'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 80
            end
            object TVMVA: TcxGridDBColumn
              Caption = '% ICMS'
              DataBinding.FieldName = 'perc'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '0.##%'
              Properties.EditFormat = '#.##'
              HeaderAlignmentHorz = taCenter
              Width = 159
            end
          end
          object glST: TcxGridLevel
            GridView = tvST
          end
        end
        object cxLabel1: TcxLabel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 7
          Align = alTop
          Caption = 
            'Necess'#225'rio preencher somente para opera'#231#245'es  sujeito a substitui' +
            #231#227'o tribut'#225'ria'
          ParentFont = False
          Style.TextColor = clRed
          Style.TextStyle = [fsBold, fsUnderline]
        end
      end
      object LCGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 5
        ShowBorder = False
        Index = -1
      end
      object lcCod: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'C'#243'digo'
        LayoutLookAndFeel = FrmPri.lfDestaque
        Control = edCod
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 83
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcNome: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Nome'
        Control = edNome
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 420
        ControlOptions.ShowBorder = False
        OnCaptionClick = lcNomeCaptionClick
        Index = 1
      end
      object lcOrigem: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Origem'
        Control = edOrigem
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 420
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object grPag: TdxLayoutGroup
        Parent = LCGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = FrmPri.lfFlat
        Offsets.Top = 15
        ButtonOptions.Buttons = <>
        LayoutDirection = ldTabbed
        Padding.AssignedValues = [lpavTop]
        ShowBorder = False
        Index = 5
      end
      object grNFCe: TdxLayoutGroup
        Parent = grPag
        CaptionOptions.Text = '  B. Par'#226'metros para NFC-e  ou  SAT CF-e  '
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 1
      end
      object lcCSOSN: TdxLayoutItem
        Parent = grNFCe
        AlignHorz = ahLeft
        CaptionOptions.Text = 'CSOSN'
        Control = edCSOSN
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 420
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcCFOP: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'CFOP'
        Control = edCFOP_NFCe
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 114
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = grNFCe
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object lclbCFOP: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avTop
        CaptionOptions.Visible = False
        Control = lbCFOP
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 44
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object panGrid: TdxLayoutItem
        Parent = grPag
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = '  A. Par'#226'metros para NF-e  '
        CaptionOptions.Visible = False
        LayoutLookAndFeel = FrmPri.lfDestaque
        Padding.AssignedValues = [lpavTop]
        Control = LMDSimplePanel1
        ControlOptions.OriginalHeight = 40
        ControlOptions.OriginalWidth = 100
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcPermiteCredIcms: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = ' '
        Control = edPermiteCredICMS
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 408
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object lcICMS: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = '% ICMS'
        Control = edICMS
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 114
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object lcICMSSt: TdxLayoutItem
        Parent = grPag
        AlignVert = avClient
        CaptionOptions.Text = '  C. % ICMS Substitui'#231#227'o Tribut'#225'ria  '
        CaptionOptions.Visible = False
        Control = panICMSSt
        ControlOptions.OriginalHeight = 40
        ControlOptions.OriginalWidth = 100
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  inherited BarMgr: TdxBarManager
    LookAndFeel.SkinName = ''
    Left = 448
    Top = 66
    inherited cmGravar: TdxBarLargeButton
      ImageIndex = 4
    end
  end
  inherited defStyle: TcxDefaultEditStyleController
    Style.IsFontAssigned = True
    Top = 40
    PixelsPerInch = 96
  end
  inherited MT: TkbmMemTable
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftWord
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Origem'
        DataType = ftByte
      end
      item
        Name = 'CST'
        DataType = ftWord
      end
      item
        Name = 'CSOSN'
        DataType = ftWord
      end
      item
        Name = 'ICMS'
        DataType = ftFloat
      end
      item
        Name = 'Padrao'
        DataType = ftBoolean
      end
      item
        Name = 'CFOP_nfce'
        DataType = ftWord
      end
      item
        Name = 'NFE_CredIcms'
        DataType = ftBoolean
      end
      item
        Name = 'ICMSSt'
        DataType = ftMemo
      end>
    Left = 368
    Top = 60
    object MTID: TWordField
      Alignment = taLeftJustify
      FieldName = 'ID'
    end
    object MTNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object MTOrigem: TByteField
      Alignment = taLeftJustify
      FieldName = 'Origem'
    end
    object MTCST: TWordField
      Alignment = taLeftJustify
      FieldName = 'CST'
    end
    object MTCSOSN: TWordField
      Alignment = taLeftJustify
      FieldName = 'CSOSN'
    end
    object MTICMS: TFloatField
      Alignment = taLeftJustify
      FieldName = 'ICMS'
    end
    object MTPadrao: TBooleanField
      FieldName = 'Padrao'
    end
    object MTCFOP_nfce: TWordField
      Alignment = taLeftJustify
      FieldName = 'CFOP_nfce'
    end
    object MTnfe_credicms: TBooleanField
      FieldName = 'NFE_CredIcms'
    end
    object MTICMSSt: TMemoField
      FieldName = 'ICMSSt'
      BlobType = ftMemo
    end
  end
  inherited DS: TDataSource
    Left = 408
    Top = 60
  end
  object tAux: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'BRTrib'
    IndexName = 'IID'
    Left = 314
    Top = 56
    object tAuxID: TWordField
      FieldName = 'ID'
    end
  end
  object mtItens: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'csosn'
        DataType = ftLongWord
      end
      item
        Name = 'cfop'
        DataType = ftLongWord
      end
      item
        Name = 'obsfiscal'
        DataType = ftWideMemo
      end
      item
        Name = 'icms'
        DataType = ftFloat
      end
      item
        Name = 'local'
        DataType = ftByte
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'natop'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'tipo'
        DataType = ftByte
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
    Left = 594
    Top = 128
    object mtItenscsosn: TLongWordField
      Alignment = taLeftJustify
      FieldName = 'csosn'
    end
    object mtItenscfop: TLongWordField
      Alignment = taLeftJustify
      FieldName = 'cfop'
    end
    object mtItensobsfiscal: TWideMemoField
      FieldName = 'obsfiscal'
      BlobType = ftWideMemo
    end
    object mtItensicms: TFloatField
      FieldName = 'icms'
      DisplayFormat = '#.#%'
    end
    object mtItenslocal: TByteField
      Alignment = taLeftJustify
      FieldName = 'local'
    end
    object mtItensnome: TStringField
      FieldName = 'nome'
      Size = 40
    end
    object mtItensnatop: TStringField
      FieldName = 'natop'
      Size = 60
    end
    object mtItenstipo: TByteField
      FieldName = 'tipo'
    end
  end
  object dsItens: TDataSource
    DataSet = mtItens
    Left = 634
    Top = 80
  end
  object mtST: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'perc'
        DataType = ftFloat
      end>
    IndexFieldNames = 'UF'
    IndexName = 'MTIndex1'
    IndexDefs = <
      item
        Name = 'MTIndex1'
        Fields = 'UF'
        Options = [ixPrimary, ixUnique, ixCaseInsensitive]
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
    Left = 520
    Top = 80
    object mtSTuf: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mtSTperc: TFloatField
      FieldName = 'perc'
    end
  end
  object dsST: TDataSource
    DataSet = mtST
    Left = 680
    Top = 144
  end
end
