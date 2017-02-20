object FrmPanFor: TFrmPanFor
  Left = 0
  Top = 0
  Caption = 'FrmPanFor'
  ClientHeight = 254
  ClientWidth = 1020
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 34
    Hint = ''
    Align = alTop
    Bevel.Mode = bmCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = panPriClick
    object lbFor: TcxLabel
      AlignWithMargins = True
      Left = 0
      Top = 3
      Cursor = crHandPoint
      Margins.Left = 0
      Align = alLeft
      Caption = 'Fornecedor'
      ParentFont = False
      Style.HotTrack = True
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextStyle = [fsUnderline]
      Properties.Alignment.Vert = taVCenter
      OnClick = lbForClick
      AnchorY = 17
    end
    object edFor: TcxButtonEdit
      AlignWithMargins = True
      Left = 77
      Top = 3
      Align = alLeft
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.ReadOnly = True
      Properties.UseNullString = True
      Properties.OnButtonClick = edForPropertiesButtonClick
      Properties.OnChange = edForPropertiesChange
      Style.BorderColor = clSilver
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.StyleController = FrmPri.cxEditStyleController1
      Style.IsFontAssigned = True
      StyleFocused.BorderStyle = ebsThick
      StyleFocused.Color = 7471103
      TabOrder = 1
      OnEnter = edForEnter
      OnExit = edForExit
      Width = 345
    end
    object edRef: TcxTextEdit
      AlignWithMargins = True
      Left = 507
      Top = 3
      Align = alLeft
      ParentFont = False
      Properties.MaxLength = 0
      Style.BorderColor = clSilver
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.StyleController = FrmPri.cxEditStyleController1
      Style.IsFontAssigned = True
      TabOrder = 2
      OnEnter = edRefEnter
      OnExit = edRefExit
      Width = 172
    end
    object lbRef: TcxLabel
      AlignWithMargins = True
      Left = 428
      Top = 3
      Cursor = crHandPoint
      Hint = 
        'C'#243'digo de Refer'#234'ncia: Trata-se do c'#243'digo interno que o seu forne' +
        'cedor d'#225' para esse produto.'
      Align = alLeft
      Caption = 'C'#243'digo Ref.'
      ParentFont = False
      Style.HotTrack = True
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextStyle = [fsUnderline]
      Properties.Alignment.Vert = taVCenter
      OnClick = lbRefClick
      AnchorY = 17
    end
    object btnApagar: TcxButton
      AlignWithMargins = True
      Left = 984
      Top = 3
      Width = 26
      Height = 28
      Cursor = crHandPoint
      Margins.Right = 10
      Align = alRight
      Caption = 'btnApagar'
      Colors.Default = clWhite
      OptionsImage.Glyph.Data = {
        76040000424D7604000000000000360000002800000010000000110000000100
        2000000000004004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF6F6F6FFF6F6F6FFF6F6F6FFF000000000000000000000000000000000000
        0000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF6F6F6FFF6F6F6FFF6F6F6FFF000000000000000000000000000000000000
        0000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF6F6F6FFF6F6F6FFF6F6F6FFF000000000000000000000000000000000000
        0000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF6F6F6FFF6F6F6FFF6F6F6FFF000000000000000000000000000000000000
        0000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF6F6F6FFF6F6F6FFF6F6F6FFF000000000000000000000000000000000000
        0000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF6F6F6FFF6F6F6FFF6F6F6FFF000000000000000000000000000000000000
        0000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF6F6F6FFF6F6F6FFF6F6F6FFF000000000000000000000000000000000000
        0000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF6F6F6FFF6F6F6FFF6F6F6FFF000000000000000000000000000000000000
        0000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF6F6F6FFF6F6F6FFF6F6F6FFF000000000000000000000000000000000000
        0000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF6F6F6FFF6F6F6FFF6F6F6FFF000000000000000000000000000000000000
        0000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF6F6F6FFF6F6F6FFF6F6F6FFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF0000000000000000000000000000
        00006F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF0000000000000000000000000000
        0000000000000000000000000000000000006F6F6FFF6F6F6FFF6F6F6FFF6F6F
        6FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 4
      Visible = False
      OnClick = btnApagarClick
    end
    object lbPadrao: TcxLabel
      AlignWithMargins = True
      Left = 770
      Top = 3
      Margins.Right = 0
      Align = alLeft
      Caption = '(Principal)'
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextColor = 5723991
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      OnClick = lbPadraoClick
      AnchorY = 17
    end
    object lbSetPadrao: TcxLabel
      AlignWithMargins = True
      Left = 685
      Top = 0
      Cursor = crHandPoint
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Tornar Principal'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = True
      Style.TextColor = 5723991
      Style.TextStyle = [fsBold, fsUnderline]
      Style.IsFontAssigned = True
      StyleFocused.TextStyle = [fsBold, fsUnderline]
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clHotLight
      StyleHot.TextStyle = [fsUnderline]
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      OnClick = lbSetPadraoClick
      AnchorX = 726
      AnchorY = 17
    end
  end
end
