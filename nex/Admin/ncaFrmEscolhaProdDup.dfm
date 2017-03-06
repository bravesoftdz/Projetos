object FrmEscolhaProdDup: TFrmEscolhaProdDup
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = ' Escolha um produto'
  ClientHeight = 224
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 20
    Top = 10
    Width = 752
    Height = 142
    Hint = ''
    Margins.Left = 20
    Margins.Top = 10
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 0
    object Grid: TcxGrid
      Left = 0
      Top = 0
      Width = 752
      Height = 142
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      object TVprod: TcxGridDBTableView
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
        OnCustomDrawCell = TVprodCustomDrawCell
        OnGetCellHeight = TVprodGetCellHeight
        DataController.DataSource = dsTab
        DataController.Filter.MaxValueListCount = 1000
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.KeyFieldNames = 'ID'
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end>
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
        OptionsBehavior.CellHints = True
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.Indicator = True
        Preview.AutoHeight = False
        object TVprodID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object TVDescr: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'Descricao'
          PropertiesClassName = 'TcxTextEditProperties'
          MinWidth = 460
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Styles.Content = cxStyle1
          Width = 460
        end
        object TVprodPreco: TcxGridDBColumn
          DataBinding.FieldName = 'Preco'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Nullable = False
          Properties.ReadOnly = True
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Styles.Content = cxStyle4
          Width = 60
        end
        object TVprodUnid: TcxGridDBColumn
          Caption = 'Un.'
          DataBinding.FieldName = 'Unid'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          MinWidth = 30
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Styles.Content = cxStyle3
          Width = 30
        end
        object TVprodImagem: TcxGridDBColumn
          DataBinding.FieldName = 'Imagem'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxSmartImage'
          MinWidth = 153
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 153
        end
      end
      object GL: TcxGridLevel
        GridView = TVprod
      end
    end
  end
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 20
    Top = 172
    Width = 752
    Height = 32
    Hint = ''
    Margins.Left = 20
    Margins.Top = 0
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 0
      Top = 0
      Width = 81
      Height = 32
      Cursor = crHandPoint
      Align = alLeft
      Caption = '&Ok'
      Default = True
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      AlignWithMargins = True
      Left = 101
      Top = 0
      Width = 81
      Height = 32
      Cursor = crHandPoint
      Margins.Left = 20
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Cancel = True
      Caption = '&Cancelar'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      ModalResult = 2
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton2Click
    end
  end
  object dsTab: TDataSource
    DataSet = Tab
    Left = 72
    Top = 112
  end
  object Tab: TnxTable
    Database = Dados.db
    Timeout = 10000
    Filter = '(plus <> true)'
    Filtered = True
    TableName = 'Produto'
    IndexName = 'IDescricao'
    Left = 40
    Top = 112
    object TabID: TAutoIncField
      FieldName = 'ID'
    end
    object TabPreco: TCurrencyField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'Preco'
    end
    object TabImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object TabCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object TabDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object TabUnid: TWideStringField
      FieldName = 'Unid'
      Size = 5
    end
    object TabObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object TabCategoria: TWideStringField
      FieldName = 'Categoria'
      Size = 35
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
end
