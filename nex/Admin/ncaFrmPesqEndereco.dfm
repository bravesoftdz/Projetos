object FrmPesqEndereco: TFrmPesqEndereco
  Left = 300
  Top = 420
  ActiveControl = Grid
  BorderWidth = 7
  Caption = 'Selecione o endere'#231'o de entrega'
  ClientHeight = 313
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 192
    Top = 288
    Width = 38
    Height = 17
    Caption = 'Label1'
  end
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 619
    Height = 313
    Hint = ''
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alClient
    Bevel.Mode = bmStandard
    TabOrder = 0
    object Grid: TcxGrid
      Left = 1
      Top = 25
      Width = 617
      Height = 287
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 7
      Margins.Bottom = 7
      Align = alClient
      BorderStyle = cxcbsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      RootLevelOptions.DetailFrameColor = clSilver
      object TV: TcxGridDBTableView
        OnDblClick = TVDblClick
        OnKeyDown = TVKeyDown
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        DataController.DataSource = DS
        DataController.Filter.MaxValueListCount = 1000
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Filter.SupportedLike = False
        DataController.KeyFieldNames = 'endereco_id'
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <
          item
            Links = <>
            SummaryItems.Separator = ', '
            SummaryItems = <
              item
                Kind = skCount
              end>
          end>
        Filtering.ColumnPopup.MaxDropDownItemCount = 12
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.NoDataToDisplayInfoText = '<Nenhum endere'#231'o cadastrado>'
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLineColor = 15724527
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.Header = False
        OptionsView.IndicatorWidth = 0
        Preview.AutoHeight = False
        Styles.Header = cxStyle3
        object TVimg: TcxGridDBColumn
          DataBinding.FieldName = 'img'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DefaultImageIndex = 199
          Properties.Images = dmImagens.im32
          Properties.ImmediateDropDownWhenActivated = True
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = 'Endere'#231'o'
              ImageIndex = 199
              Value = 0
            end>
          Properties.ShowDescriptions = False
          Width = 43
        end
        object TVDadosEnd: TcxGridDBColumn
          DataBinding.FieldName = 'DadosEnd'
          PropertiesClassName = 'TcxMemoProperties'
          Width = 461
        end
        object TVColumn1: TcxGridDBColumn
        end
      end
      object TVFor: TcxGridDBTableView
        OnDblClick = TVDblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.GridMode = True
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.NoDataToDisplayInfoText = '<Ainda n'#227'o foi cadastrado nenhum fornecedor>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object TVForNome: TcxGridDBColumn
          DataBinding.FieldName = 'Nome'
        end
      end
      object GL: TcxGridLevel
        GridView = TV
      end
    end
    object panBusca: TLMDSimplePanel
      Left = 1
      Top = 1
      Width = 617
      Height = 24
      Hint = ''
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 7
      Margins.Bottom = 7
      Align = alTop
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Color = clWhite
      TabOrder = 1
      object lbExcluir: TcxLabel
        AlignWithMargins = True
        Left = 152
        Top = 0
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = '&Excluir'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.TextColor = clHotLight
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clHotLight
        StyleHot.TextStyle = [fsUnderline]
        Properties.Alignment.Vert = taVCenter
        Visible = False
        OnClick = lbExcluirClick
        AnchorY = 12
      end
      object lbEditar: TcxLabel
        AlignWithMargins = True
        Left = 77
        Top = 0
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = '&Editar (F9)'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.TextColor = clHotLight
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clHotLight
        StyleHot.TextStyle = [fsUnderline]
        Properties.Alignment.Vert = taVCenter
        OnClick = lbEditarClick
        AnchorY = 12
      end
      object lbNovo: TcxLabel
        AlignWithMargins = True
        Left = 5
        Top = 0
        Cursor = crHandPoint
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = '&Novo (F4)'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.TextColor = clHotLight
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clHotLight
        StyleHot.TextStyle = [fsUnderline]
        Properties.Alignment.Vert = taVCenter
        OnClick = lbNovoClick
        AnchorY = 12
      end
      object lbRota: TcxLabel
        AlignWithMargins = True
        Left = 501
        Top = 0
        Cursor = crHandPoint
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alRight
        Caption = 'Ver no Mapa (CTRL-M)'
        ParentColor = False
        ParentFont = False
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.TextColor = 11447982
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clHotLight
        StyleHot.TextStyle = [fsUnderline]
        Properties.Alignment.Vert = taVCenter
        OnClick = btnGmapsClick
        AnchorY = 12
      end
      object lbGMaps: TcxLabel
        AlignWithMargins = True
        Left = 390
        Top = 0
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 15
        Margins.Bottom = 0
        Align = alRight
        Caption = 'Ver Rota (CTRL-R)'
        ParentColor = False
        ParentFont = False
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.TextColor = 11447982
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clHotLight
        StyleHot.TextStyle = [fsUnderline]
        Properties.Alignment.Vert = taVCenter
        OnClick = btnRotaClick
        AnchorY = 12
      end
      object lbCopiar: TcxLabel
        AlignWithMargins = True
        Left = 294
        Top = 0
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 15
        Margins.Bottom = 0
        Align = alRight
        Caption = 'Copiar (CTRL-E)'
        ParentColor = False
        ParentFont = False
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.TextColor = 11447982
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clHotLight
        StyleHot.TextStyle = [fsUnderline]
        Properties.Alignment.Vert = taVCenter
        OnClick = lbCopiarClick
        AnchorY = 12
      end
    end
  end
  object DS: TDataSource
    DataSet = MT
    Left = 298
    Top = 108
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 184
    Top = 176
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clGray
    end
  end
  object MT: TkbmMemTable
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
    AfterPost = MTAfterPost
    AfterDelete = MTAfterDelete
    Left = 263
    Top = 107
    object MTendereco_id: TGuidField
      FieldName = 'endereco_id'
      Size = 38
    end
    object MTDadosEnd: TMemoField
      FieldName = 'DadosEnd'
      BlobType = ftMemo
    end
    object MTimg: TByteField
      FieldName = 'img'
    end
  end
end
