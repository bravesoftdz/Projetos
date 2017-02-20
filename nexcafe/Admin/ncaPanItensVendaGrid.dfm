inherited panItensVendaGrid: TpanItensVendaGrid
  Caption = 'panItensVendaGrid'
  ClientHeight = 389
  ClientWidth = 1016
  ExplicitWidth = 1032
  ExplicitHeight = 427
  PixelsPerInch = 96
  TextHeight = 13
  inherited panPri: TLMDSimplePanel
    Width = 1016
    Height = 389
    ExplicitWidth = 1016
    ExplicitHeight = 389
    inherited panTot: TLMDSimplePanel
      Top = 342
      Width = 1016
      Color = clWhite
      TabOrder = 2
      ExplicitTop = 342
      ExplicitWidth = 1016
      object cmRemover: TMyImage
        Left = 0
        Top = 0
        Width = 57
        Height = 47
        Cursor = crHandPoint
        Hint = 'Remover item selecionado'
        Align = alLeft
        OnClick = cmRemoverClick
        Enabled = False
        MouseOverDrawMode = idmNormal
        MouseOffDrawMode = idmDisabled
        MouseDownDrawMode = idmGrayScale
        ImageList = imgs
        ImageIndex = 0
        Colorize = True
      end
      object cmCancelar: TMyImage
        Left = 57
        Top = 0
        Width = 57
        Height = 47
        Cursor = crHandPoint
        Hint = 'Remover item selecionado'
        Align = alLeft
        OnClick = cmRemoverClick
        Visible = False
        MouseOverDrawMode = idmNormal
        MouseOffDrawMode = idmDisabled
        MouseDownDrawMode = idmGrayScale
        ImageList = imgs
        ImageIndex = 1
        Colorize = True
      end
    end
    object Grid: TcxGrid
      Left = 0
      Top = 25
      Width = 1016
      Height = 317
      Margins.Left = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      BorderStyle = cxcbsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnEnter = GridEnter
      OnExit = GridExit
      OnResize = GridResize
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      object TV: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = TVCustomDrawCell
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Column = TVTotal
          end
          item
            Kind = skSum
            Position = spFooter
            Column = TVTotal
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'R$ 0.00'
            Kind = skSum
            Column = TVTotal
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnAfterDelete = TVDataControllerAfterDelete
        DataController.OnAfterPost = TVDataControllerAfterPost
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
        OptionsSelection.HideSelection = True
        OptionsView.GridLineColor = 15461355
        OptionsView.GridLines = glHorizontal
        OptionsView.GroupByBox = False
        object TVItem: TcxGridColumn
          Caption = 'Item'
          PropertiesClassName = 'TcxTextEditProperties'
          OnGetDisplayText = TVItemGetDisplayText
          BestFitMaxWidth = 43
          Options.Sorting = False
          Styles.Content = cxStyle3
          Width = 43
        end
        object TVCodigo: TcxGridColumn
          Caption = 'C'#243'digo'
          PropertiesClassName = 'TcxMaskEditProperties'
          Visible = False
          VisibleForCustomization = False
          Width = 112
        end
        object TVDescr: TcxGridColumn
          Caption = 'Descri'#231#227'o'
          PropertiesClassName = 'TcxMaskEditProperties'
          Styles.Header = cxStyle2
          Width = 242
        end
        object TVQuant: TcxGridColumn
          Caption = 'Quantidade'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taRightJustify
          OnCustomDrawCell = TVQuantCustomDrawCell
          OnGetDisplayText = TVQuantGetDisplayText
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle2
          Width = 140
        end
        object TVvezes: TcxGridColumn
          Caption = 'X'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          OnGetDisplayText = TVvezesGetDisplayText
          HeaderAlignmentHorz = taCenter
          Styles.Content = FrmPri.cxStyle39
          Styles.Header = cxStyle2
          Width = 20
        end
        object TVUnitario: TcxGridColumn
          Caption = '  Valor Unit'#225'rio'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Styles.Header = cxStyle2
          Width = 156
        end
        object TVFidPontos: TcxGridColumn
          Caption = 'Pontos'
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Focusing = False
          Width = 56
        end
        object TVIgual: TcxGridColumn
          Caption = '='
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          OnGetDisplayText = TVIgualGetDisplayText
          HeaderAlignmentHorz = taCenter
          Styles.Content = FrmPri.cxStyle39
          Styles.Header = cxStyle2
          Width = 22
        end
        object TVTotal: TcxGridColumn
          Caption = 'Total'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taRightJustify
          Styles.Header = cxStyle2
          Width = 146
        end
        object TVFidPontosTotal: TcxGridColumn
          Caption = 'Total'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          HeaderGlyphAlignmentHorz = taRightJustify
          Width = 47
        end
        object TVIDProduto: TcxGridColumn
          DataBinding.ValueType = 'LargeInt'
          Visible = False
          VisibleForCustomization = False
        end
        object TVCancelado: TcxGridColumn
          Visible = False
          VisibleForCustomization = False
        end
      end
      object GL: TcxGridLevel
        GridView = TV
      end
    end
    object panTop: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 1016
      Height = 25
      Align = alTop
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Color = clWhite
      TabOrder = 1
      object btnFontUp: TcxButton
        Left = 970
        Top = 0
        Width = 23
        Height = 25
        Cursor = crHandPoint
        Align = alRight
        Caption = 'Aumentar a Fonte'
        TabOrder = 0
        OnClick = btnFontUpClick
        OptionsImage.Glyph.Data = {
          E6010000424DE60100000000000036000000280000000C000000090000000100
          200000000000B001000000000000000000000000000000000000222222AA0606
          061C0000000000000000000000001D1D1D8D0C0C0C3800000000000000000000
          00FF0000000000000000222222AA1717177100000000000000000606061C3333
          33FF000000000000000000000000000000FF0000000000000000111111552E2E
          2EE2222222AA222222AA282828C6222222AA0000000000000000000000000000
          00FF000000000000000000000000333333FF17171771111111552E2E2EE21111
          1155000000000000000000000000000000FF0000000000000000000000002222
          22AA1111115500000000333333FF000000000000000000000000000000000000
          00FF00000000000000000000000011111155222222AA11111155222222AA0000
          000000000000000000FF00000000000000FF00000000000000FF000000000000
          0000333333FF222222AA11111155000000000000000000000000000000FF0000
          00FF000000FF000000000000000000000000222222AA333333FF000000000000
          0000000000000000000000000000000000FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000}
        PaintStyle = bpsGlyph
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.AllowAllUp = True
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
      object lbItens: TcxLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        AutoSize = False
        Caption = 'Itens'
        ParentColor = False
        ParentFont = False
        Style.Color = 15724527
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clGray
        Style.TextStyle = [fsUnderline]
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Visible = False
        Height = 25
        Width = 947
        AnchorX = 474
        AnchorY = 13
      end
      object btnFontDown: TcxButton
        Left = 993
        Top = 0
        Width = 23
        Height = 25
        Cursor = crHandPoint
        Align = alRight
        Caption = 'Diminuir a Fonte'
        TabOrder = 2
        OnClick = btnFontDownClick
        OptionsImage.Glyph.Data = {
          E6010000424DE60100000000000036000000280000000C000000090000000100
          200000000000B001000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF00000000000000000000001C0000
          008D000000AA00000038000000AA000000000000000000000000000000FF0000
          00FF000000FF000000000000008D000000AA000000550000008D000000FF0000
          000000000000000000FF00000000000000FF00000000000000FF0000008D0000
          00AA0000001C00000000000000FF000000000000000000000000000000000000
          00FF00000000000000000000001C0000008D000000E2000000FF000000FF0000
          0000000000000000000000000000000000FF00000000000000000000001C0000
          001C000000000000001C000000FF000000000000000000000000000000000000
          00FF000000000000000000000038000000FF000000FF000000FF000000550000
          0000000000000000000000000000000000FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF0000000000000000}
        PaintStyle = bpsGlyph
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.AllowAllUp = True
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
      object btnBold: TcxButton
        Left = 947
        Top = 0
        Width = 23
        Height = 25
        Cursor = crHandPoint
        Align = alRight
        Caption = 'B'
        TabOrder = 3
        OnClick = btnBoldClick
        PaintStyle = bpsCaption
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.AllowAllUp = True
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
    end
  end
  object BarMgr: TdxBarManager
    AutoDockColor = False
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
    DockColor = clWhite
    ImageOptions.Images = dmImagens.im16
    ImageOptions.LargeImages = dmImagens.im24
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    Style = bmsStandard
    UseSystemFont = True
    Left = 160
    Top = 88
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object LMDAlphaImageList1: TLMDAlphaImageList
    Left = 248
    Top = 168
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 104
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15724527
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clGray
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 4079166
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 544
    Top = 88
  end
  object imgs: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 10485872
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000002C0000009B0000
          009B0000009B0000009B0000009B0000009B0000009B0000009B0000009B0000
          009B0000009B0000009B0000009B0000009B0000009B0000009A000000260000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000500000068000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF0000005A0000
          0005000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000080000008F000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000810000
          0007000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000B000000B6000000FF0000
          00EF000000730000005200000052000000520000005200000052000000520000
          00520000005200000052000000520000007B000000F0000000FF000000A90000
          000A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000013000000D8000000FE0000
          00D6000000150000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000001E000000DD000000FF000000CE0000
          000E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000002B000000F2000000FA0000
          00BC00000006000000050000002E000000790000006100000023000000270000
          00640000007700000029000000040000000C000000C6000000FC000000EA0000
          0021000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000004A000000FF000000F60000
          009C000000000000001200000076000000FF000000BB0000003C000000430000
          00C2000000FF0000006C0000000F00000000000000A8000000F7000000FC0000
          003E000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000060000006F000000FF000000F10000
          0077000000000000001C00000095000000FF000000A200000023000000290000
          00A8000000FF0000008A000000190000000000000085000000F2000000FF0000
          0062000000050000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000900000098000000FF000000EB0000
          00530000000000000027000000B5000000FD0000008A00000011000000160000
          0092000000FE000000AB00000023000000000000005F000000ED000000FF0000
          008A000000080000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000B000000BF000000FF000000E40000
          00300000000000000032000000D4000000F60000007100000004000000070000
          0078000000F8000000CA0000002E000000000000003B000000E8000000FF0000
          00B20000000A0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000017000000DF000000FE000000D10000
          00150000000200000046000000EC000000ED0000005A00000000000000000000
          0060000000F0000000E50000003F000000010000001D000000DA000000FF0000
          00D5000000120000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000031000000F6000000FC000000B60000
          00030000000500000061000000FC000000E20000004400000000000000000000
          004B000000E5000000F8000000580000000400000007000000C0000000FD0000
          00F0000000270000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000052000000FF000000FA000000940000
          00000000000A0000007E000000FF000000D60000002E00000000000000000000
          0035000000DA000000FF000000750000000800000000000000A1000000FB0000
          00FE000000460000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000078000000FF000000F70000006F0000
          00000000000F0000009F000000FF000000CA0000001A00000000000000000000
          0020000000CF000000FF000000940000000E000000000000007C000000F80000
          00FF0000006B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000A1000000FF000000F50000004A0000
          000000000015000000BF000000FA000000B40000000A00000000000000000000
          000E000000BC000000FC000000B4000000130000000000000056000000F60000
          00FF000000940000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000C6000000FF000000EE000000290000
          00000000001E000000DB000000F2000000970000000100000000000000000000
          0003000000A0000000F5000000D3000000190000000000000033000000F20000
          00FF000000BA0000000000000000000000000000000000000000000000000000
          000000000000000000000000000F000000E5000000FE000000DA0000000F0000
          000300000032000000F1000000E8000000780000000000000000000000000000
          000000000082000000EB000000EB0000002A0000000200000017000000E20000
          00FE000000DC0000000800000000000000000000000000000000000000000000
          000000000000000000000000002B000000FA000000FC000000BB000000010000
          000700000050000000FE000000DC000000570000000000000000000000000000
          000000000061000000E0000000FC000000470000000500000005000000C60000
          00FD000000F40000002000000000000000000000000000000000000000000000
          0000000000000000000000000050000000FF000000FA00000096000000000000
          000C00000073000000FF000000D2000000360000000000000000000000000000
          000000000040000000D5000000FF000000680000000A00000000000000A40000
          00FA000000FF0000004200000000000000000000000000000000000000000000
          000000000000000000000000007A000000FF000000F70000006E000000000000
          0012000000A1000000FF000000C90000001B0000000000000000000000000000
          000000000023000000CB000000FF0000009500000010000000000000007B0000
          00F8000000FF0000006B00000000000000000000000000000000000000000000
          00000000000000000000000000A5000000FF000000F400000047000000000000
          000A000000550000007400000052000000060000000000000000000000000000
          0000000000080000005600000075000000500000000900000000000000540000
          00F5000000FF0000009600000000000000000000000000000000000000000000
          00000000000000000002000000CB000000FF000000E80000001E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000280000
          00EE000000FF000000BF00000000000000000000000000000000000000000000
          00000000000000000014000000EA000000FE000000E3000000570000004D0000
          004D0000004D0000004D0000004D0000004D0000004D0000004D0000004D0000
          004D0000004D0000004D0000004D0000004D0000004D0000004D0000005D0000
          00E8000000FF000000E00000000C000000000000000000000000000000000000
          00000000000000000033000000FD000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000F800000027000000000000000000000000000000000000
          00000000000000000060000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF00000051000000000000000000000000000000000000
          0000000000000000004A00000082000000820000008200000082000000820000
          0082000000820000008200000082000000820000008200000082000000820000
          0082000000820000008200000082000000820000008200000082000000820000
          0082000000820000008200000037000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000004000000049000000490000004900000049000000490000
          0049000000490000004900000049000000490000004900000049000000490000
          0049000000490000004900000049000000490000004900000049000000490000
          0049000000490000004900000040000000000000000000000000000000000000
          000000000000000000EA000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000EA000000000000000000000000000000000000
          000000000000000000A4000000BD000000BD000000BD000000BD000000BD0000
          00BD000000BD000000CB000000F6000000FF000000FF000000FF000000FF0000
          00FF000000FF000000F6000000CB000000BD000000BD000000BD000000BD0000
          00BD000000BD000000BD000000A4000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000035000000E0000000FF000000FF000000FF000000FF0000
          00FF000000FF000000E000000035000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000029000000A4000000BE000000BD000000BD000000BD0000
          00BD000000BE000000A400000029000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000060000002A000000530000007B000000E6000000E70000
          007B000000530000002A00000006000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          002900000084000000D1000000F9000000FF000000FF000000FF000000FF0000
          00FF000000FF000000F9000000D1000000840000002900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000001B000000940000
          00F2000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000F2000000940000001B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000004E000000DF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000DF0000
          004E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000006E000000FA000000FF000000FF0000
          00FF000000FF000000FF000000D9000000A10000007700000061000000610000
          0077000000A2000000DA000000FF000000FF000000FF000000FF000000FF0000
          00FA0000006E0000000000000000000000000000000000000000000000000000
          000000000000000000000000006D000000FF000000FF000000FF000000FF0000
          00FF000000BA0000004C0000000B000000000000000000000000000000000000
          0000000000000000000B0000004C000000BA000000FD000000FF000000FF0000
          00FF000000FF0000006D00000000000000000000000000000000000000000000
          0000000000000000004A000000FA000000FF000000FF000000FF000000ED0000
          0062000000020000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000098000000FF000000FF0000
          00FF000000FF000000FA0000004A000000000000000000000000000000000000
          000000000017000000E0000000FF000000FF000000FF000000E2000000370000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000048000000E9000000FF000000FF0000
          00FF000000FF000000FF000000E0000000170000000000000000000000000000
          000000000090000000FF000000FF000000FF000000EE00000036000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000049000000F1000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000900000000000000000000000000000
          0022000000F2000000FF000000FF000000FF0000006400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000049000000F1000000FF000000FF000000FF000000EE0000
          009B000000FF000000FF000000FF000000F20000002200000000000000000000
          007E000000FF000000FF000000FF000000C00000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000048000000F0000000FF000000FF000000FF000000F20000004A0000
          0000000000C0000000FF000000FF000000FF0000007E00000000000000040000
          00CD000000FF000000FF000000FF0000004E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0048000000F0000000FF000000FF000000FF000000F20000004C000000000000
          00000000004F000000FF000000FF000000FF000000CD00000004000000250000
          00F7000000FF000000FF000000DF0000000C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000480000
          00F0000000FF000000FF000000FF000000F20000004C00000000000000000000
          00000000000C000000DF000000FF000000FF000000F7000000250000004D0000
          00FF000000FF000000FF000000A7000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000048000000F00000
          00FF000000FF000000FF000000F20000004C0000000000000000000000000000
          000000000000000000A7000000FF000000FF000000FF0000004D0000006B0000
          00FF000000FF000000FF0000007C000000000000000000000000000000000000
          00000000000000000000000000000000000000000047000000F0000000FF0000
          00FF000000FF000000F20000004D000000000000000000000000000000000000
          0000000000000000007C000000FF000000FF000000FF0000006B0000008E0000
          00FF000000FF000000FF00000067000000000000000000000000000000000000
          000000000000000000000000000000000047000000F0000000FF000000FF0000
          00FF000000F30000004D00000000000000000000000000000000000000000000
          00000000000000000067000000FF000000FF000000FF0000008E0000008D0000
          00FF000000FF000000FF00000068000000000000000000000000000000000000
          0000000000000000000000000047000000F0000000FF000000FF000000FF0000
          00F30000004D0000000000000000000000000000000000000000000000000000
          00000000000000000068000000FF000000FF000000FF0000008D0000006A0000
          00FF000000FF000000FF0000007D000000000000000000000000000000000000
          00000000000000000047000000EF000000FF000000FF000000FF000000F30000
          004E000000000000000000000000000000000000000000000000000000000000
          0000000000000000007D000000FF000000FF000000FF0000006A0000004C0000
          00FF000000FF000000FF000000A9000000000000000000000000000000000000
          000000000046000000EF000000FF000000FF000000FF000000F30000004E0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000A8000000FF000000FF000000FF0000004C000000240000
          00F6000000FF000000FF000000E00000000D0000000000000000000000000000
          0046000000EF000000FF000000FF000000FF000000F30000004E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000D000000E0000000FF000000FF000000F600000024000000040000
          00CC000000FF000000FF000000FF000000510000000000000000000000460000
          00EF000000FF000000FF000000FF000000F30000004E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000051000000FF000000FF000000FF000000CC00000004000000000000
          007C000000FF000000FF000000FF000000C30000000000000044000000EF0000
          00FF000000FF000000FF000000F30000004F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0004000000C2000000FF000000FF000000FF0000007C00000000000000000000
          0020000000F0000000FF000000FF000000FF0000009A000000EB000000FF0000
          00FF000000FF000000F30000004F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0068000000FF000000FF000000FF000000F00000002000000000000000000000
          00000000008D000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000F40000004F00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000003A0000
          00F0000000FF000000FF000000FF0000008D0000000000000000000000000000
          000000000015000000DD000000FF000000FF000000FF000000FF000000FF0000
          00EC0000004E0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000003B000000E50000
          00FF000000FF000000FF000000DD000000150000000000000000000000000000
          00000000000000000046000000F8000000FF000000FF000000FF000000FF0000
          00A0000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000300000068000000F0000000FF0000
          00FF000000FF000000F800000046000000000000000000000000000000000000
          0000000000000000000000000068000000FE000000FF000000FF000000FF0000
          00FD000000C0000000520000000E000000000000000000000000000000000000
          0000000000000000000E00000051000000BF000000FF000000FF000000FF0000
          00FF000000FE0000006800000000000000000000000000000000000000000000
          000000000000000000000000000000000069000000F8000000FF000000FF0000
          00FF000000FF000000FF000000DE000000A80000007D00000067000000670000
          007D000000A8000000DE000000FF000000FF000000FF000000FF000000FF0000
          00F8000000690000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000049000000DB000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000DB0000
          0049000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000170000008E0000
          00EF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000EF0000008E000000170000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00240000007E000000CC000000F6000000FF000000FF000000FF000000FF0000
          00FF000000FF000000F6000000CC0000007E0000002400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000004000000270000004E0000006C000000A4000000A40000
          006C0000004E0000002700000004000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
