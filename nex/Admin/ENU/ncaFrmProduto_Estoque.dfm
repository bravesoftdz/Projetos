object FrmProd_Estoque: TFrmProd_Estoque
  Left = 0
  Top = 0
  Caption = 'Estoque'
  ClientHeight = 428
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object panPri: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 465
    Height = 209
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Bevel.StyleInner = bvLowered
    Bevel.BorderColor = 7471103
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 0
    object lbLimites2: TcxLabel
      AlignWithMargins = True
      Left = 15
      Top = 93
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Caption = 
        'Atrav'#233's do estoque m'#237'nimo o sistema avisa sobre os produtos que ' +
        'necessitam de reposi'#231#227'o por estar com estoque muito baixo (abaix' +
        'o de m'#237'nimo) e tamb'#233'm a quantidade a ser comprada para que o est' +
        'oque fique dentro do limite m'#225'ximo. '#13#10#13#10'Exemplo se um produto te' +
        'm o m'#237'nimo definido como 10 e o m'#225'ximo como 50, quando o estoque' +
        ' estiver em 5 o sistema vai recomendar a reposi'#231#227'o de 45.'
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWhite
      Style.BorderStyle = ebsThick
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = clHotLight
      Style.TextStyle = []
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWhite
      Properties.WordWrap = True
      Transparent = True
      Width = 432
    end
    object edMin: TcxCurrencyEdit
      Left = 123
      Top = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      EditValue = 0
      ImeName = 'g'
      ParentFont = False
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 5
      Properties.ImeName = 'g'
      Properties.OnChange = edMinPropertiesChange
      Properties.OnEditValueChanged = edAtualPropertiesEditValueChanged
      Style.StyleController = escFlat
      Style.TextStyle = [fsBold]
      TabOrder = 1
      OnKeyDown = edMinKeyDown
      OnKeyPress = edMaxKeyPress
      Width = 110
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 14
      Caption = 'Estoque M'#237'nimo'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel2: TcxLabel
      Left = 10
      Top = 52
      Caption = 'Estoque M'#225'ximo'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object edMax: TcxCurrencyEdit
      Left = 123
      Top = 48
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      EditValue = 0
      ImeName = 'g'
      ParentFont = False
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 5
      Properties.ImeName = 'g'
      Properties.OnChange = edMaxPropertiesChange
      Properties.OnEditValueChanged = edAtualPropertiesEditValueChanged
      Style.StyleController = escFlat
      Style.TextStyle = [fsBold]
      TabOrder = 4
      OnKeyDown = edMaxKeyDown
      OnKeyPress = edMaxKeyPress
      Width = 110
    end
  end
  object escFlat: TcxEditStyleController
    Style.BorderStyle = ebsFlat
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfFlat
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.BorderStyle = ebsFlat
    StyleFocused.Color = 7471103
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleFocused.TextColor = clHotLight
    StyleHot.LookAndFeel.Kind = lfFlat
    Left = 424
    Top = 224
    PixelsPerInch = 96
  end
end
