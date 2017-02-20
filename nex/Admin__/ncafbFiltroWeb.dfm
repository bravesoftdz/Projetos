inherited fbFiltroWeb: TfbFiltroWeb
  Caption = 'Bloqueio de Sites'
  ClientHeight = 381
  ClientWidth = 685
  ExplicitWidth = 701
  ExplicitHeight = 417
  PixelsPerInch = 96
  TextHeight = 13
  inherited panPri: TLMDSimplePanel
    Width = 685
    Height = 381
    ExplicitWidth = 685
    ExplicitHeight = 381
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 685
      Height = 44
      ExplicitWidth = 685
      ExplicitHeight = 44
    end
    object Grid: TcxGrid
      AlignWithMargins = True
      Left = 196
      Top = 102
      Width = 489
      Height = 279
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      object TV: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.GridMode = True
        DataController.DataSource = DS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = TVURL
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.NoDataToDisplayInfoText = '<nenhum site bloqueado>'
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object TVURL: TcxGridDBColumn
          Caption = 'Sites bloqueados'
          DataBinding.FieldName = 'URL'
        end
      end
      object GL: TcxGridLevel
        GridView = TV
      end
    end
    object LMDSimplePanel1: TLMDSimplePanel
      AlignWithMargins = True
      Left = 0
      Top = 102
      Width = 193
      Height = 279
      Hint = ''
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Color = 9737364
      TabOrder = 2
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 193
        Height = 128
        Align = alTop
        AutoSize = True
        Center = True
        Proportional = True
        Transparent = True
        ExplicitWidth = 128
      end
      object cxLabel3: TcxLabel
        AlignWithMargins = True
        Left = 3
        Top = 147
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 
          'Adicione os sites que voc'#234' deseja bloquear o acesso nas m'#225'quinas' +
          ' clientes.'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextColor = clWhite
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.WordWrap = True
        ExplicitTop = 149
        Width = 187
        AnchorY = 169
      end
      object cxLabel5: TcxLabel
        Left = 0
        Top = 128
        Align = alTop
        Caption = 'Bloqueio de Sites'
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clWhite
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 97
        AnchorY = 138
      end
    end
    object PB: TProgressBar
      Left = 0
      Top = 80
      Width = 685
      Height = 17
      Align = alTop
      TabOrder = 3
      Visible = False
    end
    object panMostrar: TPanel
      Left = 0
      Top = 44
      Width = 685
      Height = 36
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object panBusca: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 685
        Height = 36
        Hint = ''
        Align = alClient
        Bevel.BorderSides = [fsTop]
        Bevel.Mode = bmStandard
        Bevel.StandardStyle = lsNone
        TabOrder = 0
        object lbBusca: TcxLabel
          Left = 7
          Top = 7
          Caption = 'Localizar:'
        end
        object edBusca: TcxMaskEdit
          Left = 59
          Top = 7
          Properties.MaskKind = emkRegExpr
          Properties.MaxLength = 0
          Properties.OnChange = edBuscaPropertiesChange
          Style.BorderStyle = ebsOffice11
          Style.Color = clGray
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clWhite
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.Color = 9855796
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleFocused.TextColor = clWhite
          StyleFocused.TextStyle = [fsBold]
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnKeyUp = edBuscaKeyUp
          Width = 230
        end
      end
    end
  end
  inherited BarMgr: TdxBarManager
    Left = 48
    Top = 128
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BarMgrBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmNovo'
        end
        item
          Visible = True
          ItemName = 'cmApagar'
        end
        item
          Visible = True
          ItemName = 'cmImportar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'cmStatus'
        end
        item
          Visible = True
          ItemName = 'btnAtivar'
        end>
    end
    inherited cmNovo: TdxBarLargeButton
      Caption = 'Adicionar Site'
      Hint = 'Adicionar Site'
      OnClick = cmNovoClick
      ShowCaption = True
      ImageIndex = 0
    end
    inherited cmEditar: TdxBarLargeButton
      GlyphLayout = glTop
      ShowCaption = True
      ImageIndex = 20
    end
    inherited cmApagar: TdxBarLargeButton
      Caption = '&Remover Site'
      Hint = 'Remover Site'
      OnClick = cmApagarClick
      ShowCaption = True
      ImageIndex = 12
    end
    inherited cmAtualizar: TdxBarLargeButton
      GlyphLayout = glTop
    end
    inherited cmExportar: TdxBarLargeButton
      LargeImageIndex = 47
      GlyphLayout = glTop
    end
    inherited cmImprimir: TdxBarLargeButton
      LargeImageIndex = 50
      GlyphLayout = glTop
    end
    inherited cmLayout: TdxBarLargeButton
      ImageIndex = -1
    end
    inherited cmPeriodo: TdxBarLargeButton
      ImageIndex = -1
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'O bloqueio de sites est'#225
      Category = 0
      Hint = 'O bloqueio de sites est'#225
      Visible = ivAlways
    end
    object cmStatus: TdxBarStatic
      Caption = 'Inativo.'
      Category = 0
      Hint = 'Inativo.'
      Style = cxStyle1
      Visible = ivAlways
    end
    object btnAtivar: TdxBarButton
      Caption = 'Clique aqui para Ativar'
      Category = 0
      Hint = 'Clique aqui para Ativar'
      Visible = ivAlways
      OnClick = btnAtivarClick
    end
    object cmImportar: TdxBarLargeButton
      Caption = 'Importar'
      Category = 0
      Hint = 'Importar lista de sites bloqueados de um arquivo texto (.TXT)'
      Visible = ivAlways
      LargeImageIndex = 113
      OnClick = cmImportarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Top = 113
  end
  inherited CP: TdxComponentPrinter
    Left = 136
    Top = 122
  end
  inherited pmLay: TdxBarPopupMenu
    Left = 224
    Top = 114
  end
  object Tab: TnxTable
    Database = Dados.db
    TableName = 'FiltroWeb'
    IndexName = 'IURL'
    Left = 88
    Top = 184
    object TabID: TAutoIncField
      FieldName = 'ID'
    end
    object TabURL: TStringField
      FieldName = 'URL'
      Size = 300
    end
    object TabLiberar: TBooleanField
      FieldName = 'Liberar'
    end
  end
  object DS: TDataSource
    DataSet = Tab
    Left = 88
    Top = 216
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
  object dlgImp: TOpenDialog
    DefaultExt = 'TXT'
    Filter = 'Arquivo Texto (um site/url por linha)|*.txt'
    Options = [ofFileMustExist, ofEnableSizing]
    Left = 336
    Top = 144
  end
end
