object FrmBRTribPesq: TFrmBRTribPesq
  Left = 300
  Top = 420
  Caption = 'Selecione a tributa'#231#227'o desejada'
  ClientHeight = 412
  ClientWidth = 549
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 192
    Top = 288
    Width = 38
    Height = 17
    Caption = 'Label1'
  end
  object panBusca: TLMDSimplePanel
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 535
    Height = 29
    Hint = ''
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alTop
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 0
    object btnOk: TcxButton
      Left = 469
      Top = 0
      Width = 66
      Height = 29
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = '&Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      ModalResult = 1
      SpeedButtonOptions.Flat = True
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnOkClick
    end
    object lbExcluir: TcxLabel
      AlignWithMargins = True
      Left = 94
      Top = 0
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '&Excluir'
      ParentFont = False
      Style.HotTrack = True
      Style.TextStyle = [fsUnderline]
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clBlue
      Properties.Alignment.Vert = taVCenter
      OnClick = lbExcluirClick
      AnchorY = 15
    end
    object lbEditar: TcxLabel
      AlignWithMargins = True
      Left = 46
      Top = 0
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '&Editar'
      ParentFont = False
      Style.HotTrack = True
      Style.TextStyle = [fsUnderline]
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clBlue
      Properties.Alignment.Vert = taVCenter
      OnClick = lbEditarClick
      AnchorY = 15
    end
    object lbNovo: TcxLabel
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Align = alLeft
      Caption = '&Novo'
      ParentFont = False
      Style.HotTrack = True
      Style.TextStyle = [fsUnderline]
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clBlue
      Properties.Alignment.Vert = taVCenter
      OnClick = lbNovoClick
      AnchorY = 15
    end
  end
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 7
    Top = 43
    Width = 535
    Height = 362
    Hint = ''
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alClient
    Bevel.Mode = bmStandard
    TabOrder = 1
    ExplicitLeft = 240
    ExplicitTop = 75
    object Grid: TcxGrid
      Left = 1
      Top = 1
      Width = 533
      Height = 333
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 7
      Margins.Bottom = 7
      Align = alClient
      BorderStyle = cxcbsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      RootLevelOptions.DetailFrameColor = clSilver
      ExplicitLeft = 7
      ExplicitTop = 43
      ExplicitWidth = 535
      ExplicitHeight = 362
      object TV: TcxGridDBTableView
        OnDblClick = TVDblClick
        OnKeyUp = TVKeyUp
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        OnCustomDrawCell = TVCustomDrawCell
        OnFocusedRecordChanged = TVFocusedRecordChanged
        DataController.DataModeController.GridMode = True
        DataController.DataSource = DS
        DataController.Filter.MaxValueListCount = 1000
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Filter.SupportedLike = False
        DataController.KeyFieldNames = 'NCM'
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
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = TVCodigo
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.NoDataToDisplayInfoText = '<Nenhuma tributa'#231#227'o cadastrada>'
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLineColor = 15724527
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.IndicatorWidth = 0
        Preview.AutoHeight = False
        Styles.Header = cxStyle3
        OnCustomDrawColumnHeader = TVCustomDrawColumnHeader
        object TVCodigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          OnCustomDrawCell = TVCodigoCustomDrawCell
          HeaderAlignmentHorz = taCenter
          Width = 49
        end
        object TVDescricao: TcxGridDBColumn
          DataBinding.FieldName = 'Nome'
          Width = 420
        end
        object TVPadrao: TcxGridDBColumn
          OnGetDisplayText = TVPadraoGetDisplayText
          Styles.Content = FrmPri.cxStyle56
          Width = 64
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
    object panPadrao: TLMDSimplePanel
      Left = 1
      Top = 334
      Width = 533
      Height = 27
      Hint = ''
      Align = alBottom
      Bevel.Mode = bmCustom
      Color = clWhite
      TabOrder = 1
      ExplicitTop = 295
      ExplicitWidth = 640
      object lbPadrao: TcxLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Definir como padr'#227'o'
        ParentFont = False
        Style.HotTrack = True
        Style.TextStyle = [fsUnderline]
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clHotLight
        Properties.Alignment.Vert = taVCenter
        OnClick = lbPadraoClick
        AnchorY = 14
      end
    end
  end
  object Tab: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Timeout = 10000
    FilterOptions = [foCaseInsensitive]
    TableName = 'BRTrib'
    IndexName = 'IID'
    Left = 40
    Top = 176
    object TabID: TWordField
      FieldName = 'ID'
    end
    object TabNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object TabOrigem: TByteField
      FieldName = 'Origem'
    end
    object TabCST: TWordField
      FieldName = 'CST'
    end
    object TabCSOSN: TWordField
      FieldName = 'CSOSN'
    end
    object TabICMS: TFloatField
      FieldName = 'ICMS'
    end
    object TabPadrao: TBooleanField
      FieldName = 'Padrao'
    end
    object TabCFOP_nfce: TWordField
      FieldName = 'CFOP_nfce'
    end
  end
  object DS: TDataSource
    DataSet = Tab
    Left = 72
    Top = 176
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
end
