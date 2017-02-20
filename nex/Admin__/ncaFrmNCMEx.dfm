object FrmNCMEx: TFrmNCMEx
  Left = 0
  Top = 0
  ActiveControl = Grid
  BorderStyle = bsDialog
  Caption = 'Selecione a exce'#231#227'o tribut'#225'ria:'
  ClientHeight = 312
  ClientWidth = 404
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 17
  object Grid: TcxGrid
    AlignWithMargins = True
    Left = 7
    Top = 68
    Width = 390
    Height = 185
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alClient
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
      OptionsView.Header = False
      OptionsView.IndicatorWidth = 0
      Preview.AutoHeight = False
      object TVEx: TcxGridDBColumn
        Caption = 'Exce'#231#227'o'
        DataBinding.FieldName = 'Ex'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        OnGetDisplayText = TVExGetDisplayText
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle1
        Width = 78
      end
    end
    object TVFor: TcxGridDBTableView
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
    AlignWithMargins = True
    Left = 7
    Top = 7
    Width = 390
    Height = 26
    Hint = ''
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alTop
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 1
    object lbNCM: TcxLabel
      Left = 47
      Top = 0
      Align = alLeft
      Caption = '0008287'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextStyle = []
      Style.IsFontAssigned = True
    end
    object cxLabel2: TcxLabel
      AlignWithMargins = True
      Left = 0
      Top = 0
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'NCM: '
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object btnOk: TcxButton
      Left = 315
      Top = 0
      Width = 75
      Height = 26
      Align = alRight
      Caption = '&Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      TabOrder = 2
      ExplicitLeft = 304
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object cxLabel3: TcxLabel
    AlignWithMargins = True
    Left = 7
    Top = 47
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Selecione a exce'#231#227'o tribut'#225'ria a ser aplicada nesse produto:'
    ParentFont = False
  end
  object cxLabel1: TcxLabel
    AlignWithMargins = True
    Left = 7
    Top = 260
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 14
    Align = alBottom
    Caption = 
      'Aten'#231#227'o:'#13#10'Verifique com seu contador qual c'#243'digo de exce'#231#227'o util' +
      'izar.'
    ParentFont = False
    Style.TextColor = clHotLight
    Style.TextStyle = []
    Properties.WordWrap = True
    Width = 390
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 24
    Top = 96
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
  object DS: TDataSource
    Left = 72
    Top = 176
  end
  object Tab: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Timeout = 10000
    FilterOptions = [foCaseInsensitive]
    TableName = 'NCM'
    IndexName = 'INCM'
    Left = 40
    Top = 176
    object TabNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object TabDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object TabID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object TabEx: TStringField
      FieldName = 'Ex'
      Size = 2
    end
    object TabImpostoFed_Imp: TFloatField
      FieldName = 'ImpostoFed_Imp'
    end
    object TabImpostoFed_Nac: TFloatField
      FieldName = 'ImpostoFed_Nac'
    end
    object TabImpostoEst: TFloatField
      FieldName = 'ImpostoEst'
    end
    object TabImpostoMun: TFloatField
      FieldName = 'ImpostoMun'
    end
  end
end
