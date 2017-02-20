inherited FrmTax: TFrmTax
  ActiveControl = edNome
  Caption = 'Taxa'
  ClientHeight = 392
  ClientWidth = 515
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 531
  ExplicitHeight = 431
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    Width = 515
    Height = 346
    ExplicitLeft = 0
    ExplicitTop = 46
    ExplicitWidth = 515
    ExplicitHeight = 346
    object LC: TdxLayoutControl
      Left = 2
      Top = 2
      Width = 511
      Height = 342
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = FrmPri.lfDefault
      object edCod: TcxDBSpinEdit
        Left = 59
        Top = 10
        TabStop = False
        DataBinding.DataField = 'tax_id'
        DataBinding.DataSource = DS
        Enabled = False
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.MaxValue = 1.000000000000000000
        Properties.MinValue = 9999.000000000000000000
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        StyleDisabled.TextColor = clBlack
        TabOrder = 0
        Width = 83
      end
      object edNome: TcxDBTextEdit
        Left = 59
        Top = 43
        DataBinding.DataField = 'Nome'
        DataBinding.DataSource = DS
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 2
        Width = 420
      end
      object edPerc: TcxDBCurrencyEdit
        Left = 59
        Top = 76
        DataBinding.DataField = 'perc'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.###%'
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 3
        Width = 96
      end
      object edGrupo: TcxDBCheckBox
        Left = 385
        Top = 10
        Cursor = crHandPoint
        Caption = 'Grupo de Taxas'
        DataBinding.DataField = 'grupo'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Style.HotTrack = False
        TabOrder = 1
        Transparent = True
        OnClick = edGrupoClick
      end
      object panItens: TLMDSimplePanel
        Left = 10
        Top = 159
        Width = 100
        Height = 40
        Hint = ''
        Bevel.Mode = bmStandard
        Color = clWhite
        TabOrder = 6
        object cxLabel1: TcxLabel
          AlignWithMargins = True
          Left = 4
          Top = 1
          Margins.Top = 0
          Align = alTop
          Caption = 'Marque as taxas que fazem parte desse grupo de tributa'#231#227'o'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object grid: TcxGrid
          Left = 1
          Top = 21
          Width = 98
          Height = 18
          Align = alClient
          BorderStyle = cxcbsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
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
            OptionsView.NoDataToDisplayInfoText = '<nenhuma taxa cadastrada>'
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            object TVIncluir: TcxGridDBColumn
              DataBinding.FieldName = 'Incluir'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 46
            end
            object TVNome: TcxGridDBColumn
              DataBinding.FieldName = 'Nome'
              Options.Editing = False
              Options.Focusing = False
              Width = 443
            end
          end
          object GL: TcxGridLevel
            GridView = TV
          end
        end
      end
      object rbIncluido: TcxRadioButton
        Left = 10
        Top = 109
        Width = 113
        Height = 17
        Caption = 'J'#225' est'#225' inclu'#237'da no pre'#231'o de venda'
        Checked = True
        TabOrder = 4
        TabStop = True
        Transparent = True
      end
      object rbNaoIncluido: TcxRadioButton
        Left = 10
        Top = 134
        Width = 113
        Height = 17
        Caption = 'Adicionar ao pre'#231'o de venda'
        TabOrder = 5
        Transparent = True
      end
      object LCGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 2
        ShowBorder = False
        Index = -1
      end
      object lcCod: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'C'#243'digo'
        LayoutLookAndFeel = FrmPri.lfDestaque
        Control = edCod
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object lcNome: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Nome'
        Control = edNome
        ControlOptions.ShowBorder = False
        OnCaptionClick = lcNomeCaptionClick
        Index = 1
      end
      object lgrTaxa: TdxLayoutGroup
        Parent = LCGroup_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'TAX'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 2
      end
      object lcTax: TdxLayoutItem
        Parent = lgrTaxa
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Taxa'
        Control = edPerc
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcGrupo: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Text = 'cxDBCheckBox1'
        CaptionOptions.Visible = False
        Control = edGrupo
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = LCGroup_Root
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
      object lcItens: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Itens'
        CaptionOptions.Visible = False
        Visible = False
        Control = panItens
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = lgrTaxa
        CaptionOptions.Text = 'cxRadioButton1'
        CaptionOptions.Visible = False
        Control = rbIncluido
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = lgrTaxa
        CaptionOptions.Text = 'cxRadioButton2'
        CaptionOptions.Visible = False
        Control = rbNaoIncluido
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  inherited BarMgr: TdxBarManager
    LookAndFeel.SkinName = ''
    Left = 264
    Top = 242
    DockControlHeights = (
      0
      0
      36
      0)
    inherited cmGravar: TdxBarLargeButton
      ImageIndex = 4
    end
  end
  inherited defStyle: TcxDefaultEditStyleController
    Style.IsFontAssigned = True
    Left = 210
    Top = 0
    PixelsPerInch = 96
  end
  inherited MT: TkbmMemTable
    Left = 128
    Top = 228
    object MTnome: TWideStringField
      FieldName = 'nome'
      Size = 40
    end
    object MTincluido: TBooleanField
      FieldName = 'incluido'
    end
    object MTperc: TFloatField
      Alignment = taLeftJustify
      FieldName = 'perc'
    end
    object MTgrupo: TBooleanField
      FieldName = 'grupo'
    end
    object MTtax_id: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'tax_id'
    end
  end
  inherited DS: TDataSource
    Left = 200
    Top = 236
  end
  object tItens: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'tax_itens'
    IndexName = 'I_grupo_item'
    Left = 330
    Top = 56
    object tItensgrupo: TLongWordField
      FieldName = 'grupo'
    end
    object tItensitem: TLongWordField
      FieldName = 'item'
    end
  end
  object mtItens: TkbmMemTable
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
    Left = 100
    Top = 291
    object mtItensIncluir: TBooleanField
      FieldName = 'Incluir'
    end
    object mtItensItem: TIntegerField
      FieldName = 'Item'
    end
    object mtItensNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object dsItens: TDataSource
    DataSet = mtItens
    Left = 156
    Top = 315
  end
  object tTax: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'tax'
    Left = 356
    Top = 235
    object tTaxtax_id: TUnsignedAutoIncField
      FieldName = 'tax_id'
    end
    object tTaxnome: TWideStringField
      FieldName = 'nome'
      Size = 40
    end
    object tTaxincluido: TBooleanField
      FieldName = 'incluido'
    end
    object tTaxperc: TFloatField
      FieldName = 'perc'
    end
    object tTaxgrupo: TBooleanField
      FieldName = 'grupo'
    end
  end
end
