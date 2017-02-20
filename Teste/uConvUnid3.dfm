object Form2: TForm2
  Left = 0
  Top = 0
  BorderWidth = 20
  Caption = 'Form2'
  ClientHeight = 161
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 35
    Width = 305
    Height = 35
    Hint = ''
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 0
    ExplicitLeft = 5
    ExplicitTop = 32
    ExplicitWidth = 193
    object edPara: TcxCurrencyEdit
      Left = 53
      Top = 0
      Align = alLeft
      ParentFont = False
      Properties.OnChange = edParaPropertiesChange
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.Kind = lfFlat
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.BorderStyle = ebsFlat
      StyleFocused.Color = clInfoBk
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.TextStyle = [fsBold]
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 0
      ExplicitLeft = 55
      ExplicitTop = 2
      ExplicitHeight = 31
      Width = 50
    end
    object lbPara: TcxLabel
      Left = 103
      Top = 0
      Align = alLeft
      Caption = ' PC'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      ExplicitLeft = 94
      ExplicitTop = 2
      ExplicitHeight = 31
      AnchorY = 18
    end
    object lbDe: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      Caption = '1 CX = '
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      ExplicitLeft = -9
      ExplicitTop = 3
      AnchorY = 18
    end
    object cxLabel2: TcxLabel
      AlignWithMargins = True
      Left = 250
      Top = 0
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 7
      Align = alRight
      Caption = 'Inverter'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = 6052956
      Style.TextStyle = [fsUnderline]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      OnClick = cxLabel2Click
      ExplicitLeft = 352
      ExplicitHeight = 29
      AnchorY = 16
    end
  end
  object cxLabel5: TcxLabel
    Left = 0
    Top = 0
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alTop
    Caption = 'Como deve ser feito a convers'#227'o?'
    Style.TextStyle = [fsUnderline]
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    ExplicitLeft = 5
    ExplicitTop = -16
    ExplicitWidth = 387
    AnchorX = 153
    AnchorY = 13
  end
end
