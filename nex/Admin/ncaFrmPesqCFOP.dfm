object FrmPesqCFOP: TFrmPesqCFOP
  Left = 300
  Top = 420
  ActiveControl = Grid
  Caption = 'Selecione o CFOP desejado'
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
      Left = 0
      Top = 0
      Width = 66
      Height = 29
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
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
      ExplicitLeft = 469
    end
  end
  object Grid: TcxGrid
    AlignWithMargins = True
    Left = 7
    Top = 43
    Width = 535
    Height = 362
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    RootLevelOptions.DetailFrameColor = clSilver
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
      Navigator.Visible = True
      OnCustomDrawCell = TVCustomDrawCell
      DataController.DataModeController.GridMode = True
      DataController.DataSource = DS
      DataController.Filter.MaxValueListCount = 1000
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.Filter.SupportedLike = False
      DataController.KeyFieldNames = 'Codigo'
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
      OptionsBehavior.IncSearchItem = TVCodigo
      OptionsBehavior.ImmediateEditor = False
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
        DataBinding.FieldName = 'Codigo'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.Alignment.Horz = taCenter
        OnCustomDrawCell = TVCodigoCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 55
      end
      object TVDescricao: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'Descricao'
        Width = 478
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
  object Tab: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Timeout = 10000
    FilterOptions = [foCaseInsensitive]
    TableName = 'CFOP'
    IndexName = 'ITipoCodigoOrigem'
    Left = 40
    Top = 176
    object TabCodigo: TWordField
      FieldName = 'Codigo'
    end
    object TabDescricao: TnxMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
    object TabEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object TabTipo: TByteField
      FieldName = 'Tipo'
    end
    object TabNFCe: TBooleanField
      FieldName = 'NFCe'
    end
    object TabOrdem: TByteField
      FieldName = 'Ordem'
    end
    object TabCSOSN: TWordField
      FieldName = 'CSOSN'
    end
    object TabOrigem: TWordField
      FieldName = 'Origem'
    end
  end
  object DS: TDataSource
    DataSet = Tab
    Left = 104
    Top = 144
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
