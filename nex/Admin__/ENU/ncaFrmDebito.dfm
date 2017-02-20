object FrmDebito: TFrmDebito
  Left = 0
  Top = 0
  ActiveControl = Grid
  Caption = 'Pagamento de D'#233'bito'
  ClientHeight = 523
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object panCab2: TLMDSimplePanel
    Left = 0
    Top = 35
    Width = 736
    Height = 38
    Hint = ''
    Align = alTop
    Bevel.BorderSides = [fsTop]
    Bevel.EdgeStyle = etRaisedOuter
    Bevel.Mode = bmEdge
    Bevel.StandardStyle = lsNone
    TabOrder = 0
    object lbNomeCli: TcxLabel
      AlignWithMargins = True
      Left = 63
      Top = 5
      Align = alLeft
      Caption = 'Jo'#227'o Lucio Borges '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Vert = taVCenter
      AnchorY = 19
    end
    object cxLabel2: TcxLabel
      Left = 2
      Top = 2
      Align = alLeft
      Caption = 'Cliente:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clGray
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Vert = taVCenter
      AnchorY = 19
    end
  end
  object LMDSimplePanel2: TLMDSimplePanel
    Left = 0
    Top = 73
    Width = 736
    Height = 450
    Hint = ''
    Align = alClient
    Bevel.Mode = bmStandard
    Color = clWhite
    TabOrder = 1
    object Grid: TcxGrid
      Left = 1
      Top = 24
      Width = 734
      Height = 315
      Align = alClient
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LevelTabs.Style = 6
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      RootLevelOptions.TabsForEmptyDetails = False
      object TV: TcxGridTableView
        OnDblClick = TVDblClick
        OnKeyDown = TVKeyDown
        OnMouseLeave = TVMouseLeave
        OnMouseMove = TVMouseMove
        OnMouseUp = TVMouseUp
        Navigator.Buttons.CustomButtons = <>
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
            Column = TVTotal
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnDetailExpanding = TVDataControllerDetailExpanding
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.NoDataToDisplayInfoText = '. . .'
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 32
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GridLineColor = 15000804
        OptionsView.GridLines = glHorizontal
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object TVPagar: TcxGridColumn
          Caption = 'Pagar'
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Images = cxImageList1
          Properties.Items = <
            item
              Description = 'Pagar'
              ImageIndex = 0
              Value = False
            end
            item
              Description = 'Pagar'
              ImageIndex = 1
              Value = True
            end>
          OnCustomDrawCell = TVPagarCustomDrawCell
          HeaderAlignmentHorz = taCenter
          Width = 96
        end
        object TVDataHora: TcxGridColumn
          Caption = 'Data'
          DataBinding.ValueType = 'DateTime'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 112
        end
        object TVDescr: TcxGridColumn
          Caption = 'Descri'#231#227'o'
          PropertiesClassName = 'TcxMaskEditProperties'
          Options.Editing = False
          Options.Focusing = False
          Width = 390
        end
        object TVTotal: TcxGridColumn
          Caption = 'D'#233'bito'
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          OnCustomDrawCell = TVTotalCustomDrawCell
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Focusing = False
          Width = 138
        end
      end
      object tvHist: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.GridMode = True
        DataController.DataSource = dsHist
        DataController.KeyFieldNames = 'ID'
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
        OptionsView.GroupByBox = False
        Styles.Content = cxStyle3
        Styles.Header = cxStyle3
        object tvHistID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Width = 61
        end
        object tvHistTran: TcxGridDBColumn
          DataBinding.FieldName = 'Tran'
          Width = 52
        end
        object tvHistDataHora: TcxGridDBColumn
          DataBinding.FieldName = 'DataHora'
          Width = 126
        end
        object tvHistTotal: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
          Width = 94
        end
        object tvHistDesconto: TcxGridDBColumn
          DataBinding.FieldName = 'Desconto'
          Width = 94
        end
        object tvHistDebito: TcxGridDBColumn
          DataBinding.FieldName = 'Debito'
          Width = 94
        end
        object tvHistPago: TcxGridDBColumn
          DataBinding.FieldName = 'Pago'
          Width = 94
        end
        object tvHistCancelado: TcxGridDBColumn
          DataBinding.FieldName = 'Cancelado'
          Visible = False
          Width = 49
        end
      end
      object GL: TcxGridLevel
        GridView = TV
        Options.TabsForEmptyDetails = False
      end
    end
    object LMDSimplePanel3: TLMDSimplePanel
      Left = 1
      Top = 339
      Width = 734
      Height = 23
      Hint = ''
      Align = alBottom
      Bevel.Mode = bmCustom
      Color = clWhite
      TabOrder = 1
      object lbNenhum: TcxLabel
        AlignWithMargins = True
        Left = 120
        Top = 0
        Cursor = crHandPoint
        Margins.Left = 15
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Nenhum'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = 7368816
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.TextColor = clBlue
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        OnClick = cmNenhumClick
        AnchorY = 12
      end
      object lbTodos: TcxLabel
        AlignWithMargins = True
        Left = 5
        Top = 0
        Cursor = crHandPoint
        Margins.Left = 5
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Selecionar Todos'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = 7368816
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.TextColor = clBlue
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        OnClick = cmTodosClick
        AnchorY = 12
      end
      object lbEditObs: TcxLabel
        AlignWithMargins = True
        Left = 188
        Top = 0
        Cursor = crHandPoint
        Margins.Left = 15
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Observa'#231#245'es (F4)'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.TextColor = 7368816
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clBlue
        StyleHot.TextStyle = [fsUnderline]
        Properties.Alignment.Vert = taVCenter
        OnClick = lbEditObsClick
        AnchorY = 12
      end
    end
    object LMDSimplePanel4: TLMDSimplePanel
      Left = 1
      Top = 362
      Width = 734
      Height = 87
      Hint = ''
      Align = alBottom
      Bevel.BorderSides = []
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      TabOrder = 2
      object LMDSimplePanel5: TLMDSimplePanel
        Left = 374
        Top = 0
        Width = 360
        Height = 87
        Hint = ''
        Align = alRight
        Bevel.Mode = bmCustom
        TabOrder = 0
        object LMDSimplePanel1: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 360
          Height = 46
          Hint = ''
          Align = alTop
          Bevel.BorderSides = []
          Bevel.EdgeStyle = etRaisedOuter
          Bevel.Mode = bmEdge
          Bevel.StandardStyle = lsNone
          TabOrder = 0
          object edTotalGeral: TcxCurrencyEdit
            AlignWithMargins = True
            Left = 205
            Top = 5
            Cursor = crHandPoint
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alRight
            BeepOnEnter = False
            EditValue = 10
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.ClearKey = 46
            Properties.MaxValue = 99999999
            Properties.UseLeftAlignmentOnEditing = False
            Properties.ValidationOptions = [evoRaiseException, evoAllowLoseFocus]
            Properties.OnChange = edPagarPropertiesChange
            Style.BorderColor = clBlack
            Style.BorderStyle = ebsSingle
            Style.Color = clWhite
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.StyleController = FrmPri.escFlat
            Style.TextColor = clBlack
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            StyleDisabled.BorderColor = clBlue
            StyleDisabled.Color = clWhite
            StyleDisabled.TextColor = clBlue
            StyleFocused.BorderStyle = ebsFlat
            StyleFocused.Color = 11206655
            StyleHot.BorderStyle = ebsNone
            TabOrder = 0
            OnMouseUp = edPagarMouseUp
            Width = 150
          end
          object cbTotal: TcxRadioButton
            Left = 26
            Top = 0
            Width = 174
            Height = 46
            Cursor = crHandPoint
            Align = alRight
            Caption = 'Pagamento TOTAL'#13#10
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = True
            WordWrap = True
            OnClick = cbTotalClick
            GroupIndex = 56
          end
        end
        object panTot: TLMDSimplePanel
          Left = 0
          Top = 46
          Width = 360
          Height = 41
          Hint = ''
          Align = alClient
          Bevel.BorderSides = []
          Bevel.EdgeStyle = etRaisedOuter
          Bevel.Mode = bmEdge
          Bevel.StandardStyle = lsNone
          TabOrder = 1
          object edPagar: TcxCurrencyEdit
            AlignWithMargins = True
            Left = 205
            Top = 0
            Cursor = crHandPoint
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alRight
            BeepOnEnter = False
            EditValue = 10
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.ClearKey = 46
            Properties.MaxValue = 99999999
            Properties.UseLeftAlignmentOnEditing = False
            Properties.ValidationOptions = [evoRaiseException, evoAllowLoseFocus]
            Properties.OnChange = edPagarPropertiesChange
            Style.BorderColor = clBlue
            Style.BorderStyle = ebsSingle
            Style.Color = clWhite
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextColor = clBlue
            Style.TransparentBorder = True
            Style.IsFontAssigned = True
            StyleFocused.BorderStyle = ebsSingle
            StyleFocused.Color = 11206655
            StyleHot.BorderStyle = ebsSingle
            StyleHot.Color = 11206655
            TabOrder = 0
            OnMouseUp = edPagarMouseUp
            Width = 150
          end
          object cbParcial: TcxRadioButton
            AlignWithMargins = True
            Left = 28
            Top = 0
            Width = 172
            Height = 38
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Align = alRight
            Caption = 'Pagamento PARCIAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            WordWrap = True
            OnClick = cbParcialClick
            GroupIndex = 56
          end
        end
      end
      object edObs: TcxMemo
        AlignWithMargins = True
        Left = 5
        Top = 5
        Cursor = crHandPoint
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        Lines.Strings = (
          'edObs')
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ScrollBars = ssVertical
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfFlat
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.BorderStyle = ebsFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.BorderStyle = ebsSingle
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 1
        OnClick = lbEditObsClick
        Height = 77
        Width = 364
      end
    end
    object lbItens: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      AutoSize = False
      Caption = 'Itens em D'#233'bito:'
      ParentColor = False
      ParentFont = False
      Style.BorderColor = 13882323
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.TextColor = clGray
      Style.TextStyle = [fsUnderline]
      Style.TransparentBorder = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 23
      Width = 734
      AnchorX = 368
      AnchorY = 13
    end
  end
  object cbRecibo: TcxCheckBox
    Left = 244
    Top = 144
    AutoSize = False
    Caption = 'Emitir Recibo'
    ParentFont = False
    Style.LookAndFeel.Kind = lfFlat
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Visible = False
    Height = 35
    Width = 117
  end
  object BarMgr: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmImagens.im16
    ImageOptions.LargeImages = dmImagens.im24
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 168
    Top = 208
    DockControlHeights = (
      0
      0
      35
      0)
    object BarMgrBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Controles'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 164
      FloatTop = 132
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmGravar'
        end
        item
          Visible = True
          ItemName = 'cmCancelar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmDemonstrativo'
        end
        item
          Visible = True
          ItemName = 'cmRecibo'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Controles'
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = True
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object cmGravar: TdxBarLargeButton
      Caption = '&Salvar - F2'
      Category = 0
      Hint = 'Salvar - F2'
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = cmGravarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      SyncImageIndex = False
      ImageIndex = 28
    end
    object cmCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = cmCancelarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmRecibo: TdxBarControlContainerItem
      Align = iaRight
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cbRecibo
    end
    object cmDemonstrativo: TdxBarLargeButton
      Caption = 'Imprimir Demonstrativo'
      Category = 0
      Hint = 'Imprimir Demonstrativo'
      Visible = ivAlways
      LargeImageIndex = 17
      OnClick = cmDemonstrativoClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 72
    Top = 208
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWindow
      TextColor = clBlue
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 7340456
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000100000018000000470000002E000000000000005A000000640000003D0000
          00000000004C0000006400000036000000000000000000000000000000000000
          0000000000300000002B0000000E000000000000001D00000022000000140000
          00000000001900000022000000170000000C0000002800000000000000130000
          001F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000060000004F00000019000000380000
          0031000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000001700000015000000300000
          001B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000220000003A000000280000
          0017000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000002800000046000000460000
          0028000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000001500000025000000380000
          0020000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000001D000000320000001D0000
          0010000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000002900000046000000460000
          0028000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000001B0000002F000000300000
          0024000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0005000000020000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000007000000410000000B000000000000
          00190000004B000000240000000000000016000000250000001F000000000000
          0010000000250000002300000003000000370000003300000002000000000000
          0002000000180000002400000000000000300000005000000042000000000000
          0023000000500000004A00000008000000060000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00010000003D000000B20000007300000000000000E2000000FC000000990000
          0000000000C0000000FC00000087000000000000000000000000000000000000
          00000000007A0000006E00000024000000000000004A00000055000000320000
          00000000003F000000550000003B0000001E0000006500000000000000310000
          004F000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000011000000C60000003F0000008D0000
          007B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000003B00000035000000780000
          00440000000000000000000000000000002B0000008A00000049000000000000
          0000000000000000000000000000000000000000000000000004000000000000
          000000000000000000000000002F000000E0000000FF000000F7000000560000
          0000000000000000000000000000000000000000005600000093000000640000
          003B0000000000000032000000DF000000FF000000F9000000FF000000F60000
          00560000000000000000000000000000000000000066000000AF000000AF0000
          006600000000000000A9000000FF000000D400000036000000A6000000FF0000
          00F500000055000000000000000000000000000000360000005D0000008D0000
          005200000000000000200000009D00000026000000000000000A000000AA0000
          00FF000000F50000005400000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000A0000
          00AA000000FF000000F50000005700000000000000490000007E000000490000
          002A000000000000000000000000000000000000000000000000000000000000
          000A000000AC000000FF0000008D0000000000000067000000B0000000AF0000
          0066000000000000000000000000000000000000000000000000000000000000
          00000000000D0000005D000000060000000000000045000000770000007A0000
          005C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000070000
          000D000000060000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000013000000A40000001D000000000000
          003F000000BD0000005A00000000000000390000005D0000004F000000000000
          002A0000005D00000058000000080000008A0000008000000002000000000000
          00020000003D0000005B0000000000000079000000C8000000A6000000000000
          0059000000C8000000BA000000160000000F0000000000000000}
      end>
  end
  object TimerPagar: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerPagarTimer
    Left = 288
    Top = 128
  end
  object imgsOBS: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 20447400
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00250000009C000000B300000086000000600000003300000018000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0020000000A9000000F3000000FF000000FA000000D400000089000000390000
          0010000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000014000000A2000000FA000000FF000000FF000000FF000000D70000
          006D0000001D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000001E000000CE000000FF000000FF000000F4000000FE0000
          00F900000096000000230000000A0000000A0000000A0000000A0000000A0000
          000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
          000A000000070000000100000000000000000000000000000000000000000000
          0000000000010000001A00000091000000FF000000FF000000C2000000CD0000
          00FA000000FF000000A90000005E0000005E0000005E0000005E0000005E0000
          005E0000005E0000005E0000005E0000005E0000005E0000005E0000005E0000
          005D00000054000000360000001A000000010000000000000000000000000000
          00020000002D0000008D000000DB000000FF000000FF000000AA000000390000
          00BE000000F9000000FF000000FB000000FA000000FA000000FA000000FA0000
          00FA000000FA000000FA000000FA000000FA000000FA000000FA000000FA0000
          00FA000000F5000000D9000000900000002F0000000200000000000000000000
          002B000000BF000000FF000000FA000000E5000000D4000000A9000000030000
          002A000000BA000000DF000000DF000000DF000000DF000000DF000000DF0000
          00DF000000DF000000DF000000DF000000DF000000DF000000DF000000DF0000
          00DF000000E5000000F9000000FF000000C00000002C00000000000000080000
          00A6000000FF000000F5000000B7000000700000003F00000018000000030000
          0000000000270000005E0000005E0000005E0000005E0000005E0000005E0000
          005E0000005E0000005E0000005E0000005E0000005E0000005E0000005E0000
          005E00000071000000B7000000F5000000FF000000A800000009000000430000
          00F9000000FF0000009600000013000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000001200000094000000FF000000FA00000045000000890000
          00FF000000FB0000003B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000039000000FB000000FF00000096000000B60000
          00FF000000F600000023000000000000000000000000000000050000001B0000
          001B0000001B0000001B0000001B0000001B0000001B0000001B0000001B0000
          001B0000001B0000001B0000001B0000001B0000001B0000001B000000050000
          0000000000000000000000000021000000F4000000FF000000D3000000BD0000
          00FF000000F5000000220000000000000000000000000000001F0000009B0000
          009B0000009B0000009B0000009B0000009B0000009B0000009B0000009B0000
          009B0000009B0000009B0000009B0000009B0000009B0000009B0000001F0000
          0000000000000000000000000020000000F3000000FF000000E0000000BC0000
          00FF000000F50000002200000000000000000000000000000033000000FE0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FE000000330000
          0000000000000000000000000020000000F3000000FF000000DE000000BC0000
          00FF000000F50000002200000000000000000000000000000024000000B30000
          00B3000000B3000000B3000000B3000000B3000000B3000000B3000000B30000
          00B3000000B3000000B3000000B3000000B3000000B3000000B3000000240000
          0000000000000000000000000020000000F3000000FF000000DE000000BC0000
          00FF000000F5000000220000000000000000000000000000000A000000330000
          0034000000340000003400000034000000340000003400000034000000340000
          00340000003400000034000000340000003400000034000000330000000A0000
          0000000000000000000000000020000000F3000000FF000000DE000000BC0000
          00FF000000F50000002200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000020000000F3000000FF000000DE000000BC0000
          00FF000000F50000002200000000000000000000000000000002000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000020000
          0000000000000000000000000020000000F3000000FF000000DE000000BC0000
          00FF000000F50000002200000000000000000000000000000017000000760000
          0077000000770000007700000077000000770000007700000077000000770000
          0077000000770000007700000077000000770000007700000076000000170000
          0000000000000000000000000020000000F3000000FF000000DE000000BC0000
          00FF000000F50000002200000000000000000000000000000031000000EF0000
          00F0000000F0000000F0000000F0000000F0000000F0000000F0000000F00000
          00F0000000F0000000F0000000F0000000F0000000F0000000EF000000310000
          0000000000000000000000000020000000F3000000FF000000DE000000BC0000
          00FF000000F50000002200000000000000000000000000000026000000BC0000
          00BD000000BD000000BD000000BD000000BD000000BD000000BD000000BD0000
          00BD000000BD000000BD000000BD000000BD000000BD000000BC000000260000
          0000000000000000000000000020000000F3000000FF000000DE000000BD0000
          00FF000000F50000002100000000000000000000000000000008000000290000
          0029000000290000002900000029000000290000002900000029000000290000
          0029000000290000002900000029000000290000002900000029000000080000
          0000000000000000000000000020000000F3000000FF000000DD000000920000
          00FF000000FA0000002F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000002D000000F9000000FF000000A00000004F0000
          00FF000000FF0000008500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000082000000FF000000FF00000053000000140000
          00D4000000FF000000E700000076000000290000001800000018000000180000
          0018000000180000001800000018000000180000001800000018000000180000
          0018000000180000001800000018000000180000001800000018000000180000
          00180000002800000075000000E7000000FF000000D500000015000000010000
          0058000000F0000000FF000000E7000000CB000000BF000000BF000000BF0000
          00BF000000BF000000BF000000BF000000BF000000BF000000BF000000BF0000
          00BF000000BF000000BF000000BF000000BF000000BF000000BF000000BF0000
          00BF000000CB000000E7000000FF000000F00000005800000001000000000000
          000C00000062000000D4000000FF000000FF000000FD000000FC000000FC0000
          00FC000000FC000000FC000000FC000000FC000000FC000000FC000000FC0000
          00FC000000FC000000FC000000FC000000FC000000FC000000FC000000FC0000
          00FD000000FF000000FF000000D5000000630000000D00000000000000000000
          00000000000D0000003600000073000000BA000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000BB00000073000000360000000D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object tHist: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Filter = '(TipoTran=4) or (Pago>0)'
    Filtered = True
    TableName = 'ITran'
    IndexName = 'ITipoItemTran'
    Left = 272
    Top = 217
    object tHistID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tHistTran: TLongWordField
      FieldName = 'Tran'
    end
    object tHistCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tHistDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tHistTipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tHistTipoItem: TByteField
      FieldName = 'TipoItem'
    end
    object tHistItemID: TLongWordField
      FieldName = 'ItemID'
    end
    object tHistTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tHistDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tHistTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tHistDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tHistPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tHistCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
  end
  object dsHist: TDataSource
    DataSet = tHist
    Left = 352
    Top = 209
  end
end
