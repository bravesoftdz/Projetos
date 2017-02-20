object FrmDebito: TFrmDebito
  Left = 0
  Top = 0
  Caption = 'Pagamento de D'#233'bito'
  ClientHeight = 498
  ClientWidth = 847
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
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object panCab2: TLMDSimplePanel
    Left = 0
    Top = 36
    Width = 847
    Height = 29
    Align = alTop
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 0
    object lbNomeCli: TcxLabel
      Left = 56
      Top = 0
      Align = alLeft
      Caption = 'Jo'#227'o Lucio Borges '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Vert = taVCenter
      AnchorY = 15
    end
    object cxLabel2: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      Caption = ' Cliente: '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Vert = taVCenter
      AnchorY = 15
    end
  end
  object LMDSimplePanel2: TLMDSimplePanel
    Left = 0
    Top = 65
    Width = 847
    Height = 433
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 1
    object panTotais: TLMDSimplePanel
      Left = 0
      Top = 307
      Width = 847
      Height = 126
      Align = alBottom
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      TabOrder = 0
    end
    object panDebTotal: TLMDSimplePanel
      AlignWithMargins = True
      Left = 0
      Top = 268
      Width = 847
      Height = 39
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alBottom
      Bevel.Mode = bmCustom
      Color = clWhite
      TabOrder = 1
      object lbDesconto: TcxLabel
        Left = 736
        Top = 0
        Align = alRight
        Caption = 'R$ 17,50'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clGray
        Style.Font.Height = -24
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.TextColor = clGray
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.TextColor = clRed
        Properties.Alignment.Vert = taVCenter
        AnchorY = 20
      end
      object cxLabel1: TcxLabel
        AlignWithMargins = True
        Left = 593
        Top = 0
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alRight
        Caption = 'D'#233'bito Total'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clGray
        Style.Font.Height = -24
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.TextColor = clGray
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.TextColor = clRed
        Properties.Alignment.Vert = taVCenter
        AnchorY = 20
      end
    end
    object LMDSimplePanel1: TLMDSimplePanel
      Left = 0
      Top = 16
      Width = 847
      Height = 251
      Align = alClient
      Bevel.Mode = bmCustom
      Color = clWhite
      TabOrder = 2
    end
    object cxLabel3: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      Caption = 'Itens:'
      ParentColor = False
      Style.Color = clWhite
      Style.TextStyle = [fsUnderline]
      Style.TransparentBorder = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      AnchorX = 424
      AnchorY = 8
    end
  end
  object cbRecibo: TcxCheckBox
    Left = 171
    Top = 416
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
    Height = 21
    Width = 118
  end
  object BarMgr: TdxBarManager
    AllowReset = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
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
    SunkenBorder = True
    UseSystemFont = False
    Left = 168
    Top = 208
    DockControlHeights = (
      0
      0
      36
      0)
    object BarMgrBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
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
    object cmTodos: TdxBarButton
      Align = iaRight
      Caption = 'Todos'
      Category = 0
      Hint = 'Marcar todos itens'
      Visible = ivAlways
      PaintStyle = psCaption
      UnclickAfterDoing = False
      OnClick = cmTodosClick
    end
    object cmNenhum: TdxBarButton
      Align = iaRight
      Caption = 'Nenhum'
      Category = 0
      Hint = 'Desmarcar todos itens'
      Visible = ivAlways
      UnclickAfterDoing = False
      OnClick = cmNenhumClick
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
    object cmEditar: TdxBarButton
      Align = iaRight
      Caption = '&Detalhes do Item'
      Category = 0
      Hint = 'Detalhes do Item'
      Visible = ivNever
      ImageIndex = 29
      UnclickAfterDoing = False
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
  end
end
