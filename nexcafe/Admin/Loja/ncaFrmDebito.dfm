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
    Align = alClient
    Bevel.Mode = bmCustom
    Color = clWhite
    TabOrder = 1
    object panTot: TLMDSimplePanel
      Left = 0
      Top = 402
      Width = 736
      Height = 48
      Align = alBottom
      Bevel.BorderSides = [fsTop]
      Bevel.EdgeStyle = etRaisedOuter
      Bevel.Mode = bmEdge
      Bevel.StandardStyle = lsNone
      TabOrder = 0
      object lbPromptPagar: TcxLabel
        AlignWithMargins = True
        Left = 510
        Top = 2
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alRight
        Caption = 'Pagar = '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -24
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.TextColor = clBlue
        Style.TextStyle = []
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        OnClick = lbPromptPagarClick
        AnchorY = 23
      end
      object lbNenhum: TcxLabel
        AlignWithMargins = True
        Left = 148
        Top = 5
        Cursor = crHandPoint
        Margins.Left = 15
        Align = alLeft
        Caption = 'Nenhum'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = clGray
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.TextColor = clBlue
        Properties.Alignment.Vert = taVCenter
        OnClick = cmNenhumClick
        AnchorY = 24
      end
      object lbTodos: TcxLabel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Selecionar Todos'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = clGray
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.TextColor = clBlue
        Properties.Alignment.Vert = taVCenter
        OnClick = cmTodosClick
        AnchorY = 24
      end
      object lbEditObs: TcxLabel
        AlignWithMargins = True
        Left = 230
        Top = 5
        Cursor = crHandPoint
        Margins.Left = 15
        Margins.Right = 0
        Align = alLeft
        Caption = 'Observa'#231#245'es (F4)'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.TextColor = clGray
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clBlue
        StyleHot.TextStyle = []
        Properties.Alignment.Vert = taVCenter
        OnClick = lbEditObsClick
        AnchorY = 24
      end
      object edPagar: TcxCurrencyEdit
        Left = 608
        Top = 2
        Cursor = crHandPoint
        Align = alRight
        BeepOnEnter = False
        EditValue = 10.000000000000000000
        ParentColor = True
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ClearKey = 46
        Properties.MaxValue = 99999999.000000000000000000
        Properties.UseLeftAlignmentOnEditing = False
        Properties.ValidationOptions = [evoRaiseException, evoAllowLoseFocus]
        Properties.OnChange = edPagarPropertiesChange
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -24
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlue
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleFocused.BorderStyle = ebsNone
        StyleFocused.Color = 11206655
        StyleHot.BorderStyle = ebsNone
        TabOrder = 4
        OnMouseUp = edPagarMouseUp
        Width = 126
      end
    end
    object cxLabel3: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      Caption = 'Itens em D'#233'bito:'
      Style.TextColor = clGray
      Style.TextStyle = []
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      AnchorX = 368
      AnchorY = 10
    end
    object Grid: TcxGrid
      Left = 0
      Top = 20
      Width = 736
      Height = 302
      Align = alClient
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      object TV: TcxGridTableView
        OnDblClick = TVDblClick
        OnKeyDown = TVKeyDown
        OnMouseLeave = TVMouseLeave
        OnMouseMove = TVMouseMove
        OnMouseUp = TVMouseUp
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
            Column = TVTotal
          end>
        DataController.Summary.SummaryGroups = <>
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
      object GL: TcxGridLevel
        GridView = TV
      end
    end
    object LMDSimplePanel1: TLMDSimplePanel
      Left = 0
      Top = 365
      Width = 736
      Height = 37
      Align = alBottom
      Bevel.BorderSides = [fsTop]
      Bevel.EdgeStyle = etRaisedOuter
      Bevel.Mode = bmEdge
      Bevel.StandardStyle = lsNone
      Color = clWhite
      TabOrder = 3
      object lbTotal: TcxLabel
        Left = 592
        Top = 2
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alRight
        Caption = 'Total = R$ 10,00'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.TextColor = clBlack
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        Properties.Alignment.Vert = taVCenter
        AnchorY = 19
      end
    end
    object panObs: TLMDSimplePanel
      AlignWithMargins = True
      Left = 0
      Top = 322
      Width = 736
      Height = 42
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 1
      AutoSize = True
      Align = alBottom
      Bevel.BorderSides = [fsTop]
      Bevel.EdgeStyle = etRaisedOuter
      Bevel.Mode = bmEdge
      Color = clWindow
      TabOrder = 4
      object lbObs: TcxLabel
        AlignWithMargins = True
        Left = 50
        Top = 5
        Cursor = crHandPoint
        Margins.Left = 48
        Align = alTop
        Caption = 'lbObs'
        Constraints.MaxHeight = 66
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleFocused.BorderStyle = ebsNone
        StyleFocused.TextColor = clBlue
        StyleFocused.TextStyle = []
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clBlue
        StyleHot.TextStyle = [fsUnderline]
        Properties.ShowEndEllipsis = True
        Properties.WordWrap = True
        OnClick = imgObsClick
        Width = 681
      end
      object imgObs: TMyImage
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 40
        Height = 36
        Cursor = crHandPoint
        OnClick = imgObsClick
        MouseOverDrawMode = idmNormal
        MouseOffDrawMode = idmDisabled
        MouseDownDrawMode = idmGrayScale
        ImageList = imgsOBS
        ImageIndex = 0
        Colorize = False
      end
    end
  end
  object cbRecibo: TcxCheckBox
    Left = 244
    Top = 144
    AutoSize = False
    Caption = 'Emitir Recibo'
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
end