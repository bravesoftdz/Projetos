object FrmEnderecos: TFrmEnderecos
  Left = 0
  Top = 0
  Caption = 'FrmEnderecos'
  ClientHeight = 136
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 17
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 642
    Height = 136
    Hint = ''
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 0
    object LMDSimplePanel2: TLMDSimplePanel
      Left = 0
      Top = 114
      Width = 642
      Height = 22
      Hint = ''
      Align = alBottom
      Bevel.Mode = bmCustom
      TabOrder = 0
      object cxLabel1: TcxLabel
        Left = 0
        Top = 0
        Cursor = crHandPoint
        Align = alLeft
        Caption = '&Novo endere'#231'o - F4'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold, fsUnderline]
        Style.HotTrack = True
        Style.TextColor = clHotLight
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clHighlight
        StyleHot.TextStyle = [fsBold, fsUnderline]
        OnClick = cxLabel1Click
      end
      object cxLabel3: TcxLabel
        AlignWithMargins = True
        Left = 124
        Top = 0
        Cursor = crHandPoint
        Margins.Left = 20
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = '&Editar - F5'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold, fsUnderline]
        Style.HotTrack = True
        Style.TextColor = clHotLight
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clHighlight
        StyleHot.TextStyle = [fsBold, fsUnderline]
        OnClick = cxLabel3Click
      end
    end
    object P: TcxPageControl
      Left = 0
      Top = 0
      Width = 642
      Height = 114
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Properties.CloseButtonMode = cbmActiveAndHoverTabs
      Properties.CustomButtons.Buttons = <>
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoNoArrows, pcoRedrawOnResize]
      Properties.Style = 6
      ExplicitTop = 8
      ExplicitHeight = 209
      ClientRectBottom = 114
      ClientRectRight = 642
      ClientRectTop = 0
    end
  end
end
