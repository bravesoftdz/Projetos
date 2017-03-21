object FrmPesqDadosFiscais: TFrmPesqDadosFiscais
  Left = 0
  Top = 0
  ActiveControl = Grid
  BorderWidth = 15
  Caption = 'Selecione a compra que deseja devolver'
  ClientHeight = 337
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object panBusca: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 36
    Width = 738
    Height = 30
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alTop
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 0
    object btnOk: TcxButton
      Left = 0
      Top = 0
      Width = 81
      Height = 30
      Margins.Left = 0
      Margins.Right = 0
      Align = alLeft
      Caption = '&Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
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
    object btnXML: TcxButton
      AlignWithMargins = True
      Left = 111
      Top = 0
      Width = 250
      Height = 30
      Margins.Left = 30
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Adicionar XML de compra - F5'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 58
      OptionsImage.Images = dmImagens.im24
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnXMLClick
    end
  end
  object Grid: TcxGrid
    Left = 0
    Top = 81
    Width = 738
    Height = 256
    Margins.Left = 0
    Margins.Top = 15
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    RootLevelOptions.DetailFrameColor = clSilver
    object TV: TcxGridDBTableView
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
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnsQuickCustomizationReordering = qcrDisabled
      OptionsData.Appending = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' XML de compra desse produto>'
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = 15724527
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      Preview.AutoHeight = False
      Styles.Header = FrmPri.cxStyle1
      object TVDataNF: TcxGridDBColumn
        Caption = 'Data da NF-e'
        DataBinding.FieldName = 'DataNF'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = 'dd/mm/yyyy'
        Properties.ImmediateDropDownWhenActivated = True
        Properties.ImmediateDropDownWhenKeyPressed = True
        Properties.ImmediatePost = True
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Width = 110
      end
      object TVQuant: TcxGridDBColumn
        Caption = 'Quant.'
        DataBinding.FieldName = 'Quant'
        HeaderAlignmentHorz = taCenter
        Width = 81
      end
      object TVCustoU: TcxGridDBColumn
        Caption = 'Custo'
        DataBinding.FieldName = 'CustoU'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 85
      end
      object TVChaveNFE: TcxGridDBColumn
        Caption = 'Chave da NF-e'
        DataBinding.FieldName = 'ChaveNFE'
        Width = 303
      end
      object TVNomeFor: TcxGridDBColumn
        Caption = 'Fornecedor'
        DataBinding.FieldName = 'NomeFor'
        Width = 289
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
  object cxLabel1: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alTop
    Caption = 'Selecione a NF de COMPRA do Produto'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold, fsUnderline]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    AnchorX = 369
  end
  object Tab: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    FlipOrder = True
    TableName = 'DadosFiscais'
    IndexName = 'IProdutoDataNF'
    Left = 420
    Top = 162
    object TabID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object TabUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object TabChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object TabNomeFor: TStringField
      FieldName = 'NomeFor'
      Size = 50
    end
    object TabnItem: TWordField
      FieldName = 'nItem'
    end
    object TabProduto: TLongWordField
      FieldName = 'Produto'
    end
    object TabDataNF: TDateTimeField
      FieldName = 'DataNF'
    end
    object TabCNPJFor: TStringField
      FieldName = 'CNPJFor'
      Size = 19
    end
    object TabQuant: TFloatField
      Alignment = taCenter
      FieldName = 'Quant'
    end
    object TabQuantOrig: TFloatField
      FieldName = 'QuantOrig'
    end
    object TabDadosFiscais: TnxMemoField
      FieldName = 'DadosFiscais'
      BlobType = ftMemo
    end
    object TabCustoU: TCurrencyField
      FieldName = 'CustoU'
    end
  end
  object DS: TDataSource
    DataSet = Tab
    Left = 184
    Top = 152
  end
end
