object FrmImprimeEtq: TFrmImprimeEtq
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Imprimir'
  ClientHeight = 328
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 17
  object Image1: TImage
    Left = 24
    Top = 11
    Width = 32
    Height = 32
    AutoSize = True
    Center = True
    Picture.Data = {
      0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000002000
      0000200806000000737A7AF4000000097048597300000EC400000EC401952B0E
      1B000001C44944415478DA63FCFFFF3FC34002C641EF80CACACA6D40CA03A496
      0CF3F7B5B7B73B53EA80DFADADAD2C4C4C4C24DB5E5D5DCDF0EFDF3F16A023FE
      8E3A60C01CF0E89F24CBE2F61CD21CD0307F2FFBFE5BDF7F906C231E70B0DD07
      6B2266ACA8A86801D2C540CC011660646468686A6670ADDD4E4DFB19F6B77A81
      4304097C00E23A9003BE01199C7017D1CF0120F011E4009438A0B303FE8D3A60
      F03900045ADBDA18BC1B77327CFBF9872A960B70B331ACAB7466A8A9A921CE01
      4545450C271F7C6798BAF51AC58EE0E1606528F0D366D093626598306102710E
      90919161080D0D65101515054709250054D0BD7AF58A61D5AA550CCF9E3D23CE
      017404A30E4071803803A47C06557BDF877C0880AA6F605B8028077C023278F1
      A96A6A6AC2C80D2C2C2C041D01CAF77FFFFEC5A7E435C8019540461D03B43AC6
      06800D1206721A24041C008AEE22708304D8EA01798F1587C2AFA016112804FE
      111959CC4C8CC80EE001327FA3AB0136D37E8168A29B64C0386058B8F736510E
      4874514376001BD0B2DFB8D412E3805F2D2D2DACE044455E0850EC809F4007B0
      31021D30502100760033333371DE4702D472C08FE6E6667662B21DAD1CB00148
      F9310C54DF90D6000051AB46047413810E0000000049454E44AE426082}
  end
  object lbImpressora: TcxLabel
    Left = 22
    Top = 51
    Caption = 'Impressora'
  end
  object lbModelo: TcxLabel
    Left = 22
    Top = 108
    Caption = 'Modelo de Etiqueta'
  end
  object edPrinters: TcxComboBox
    Left = 24
    Top = 75
    Cursor = crHandPoint
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfFlat
    Style.StyleController = FrmPri.escFlat
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 1
    Width = 377
  end
  object btmImp: TcxButton
    Left = 24
    Top = 268
    Width = 97
    Height = 29
    Caption = '&Imprimir!'
    Default = True
    LookAndFeel.Kind = lfFlat
    TabOrder = 5
    OnClick = btmImpClick
  end
  object btnCancelar: TcxButton
    Left = 137
    Top = 268
    Width = 89
    Height = 29
    Cursor = crHandPoint
    Cancel = True
    Caption = '&Cancelar'
    LookAndFeel.Kind = lfFlat
    ModalResult = 2
    SpeedButtonOptions.CanBeFocused = False
    SpeedButtonOptions.AllowAllUp = True
    SpeedButtonOptions.Flat = True
    SpeedButtonOptions.Transparent = True
    TabOrder = 6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object lbQtd: TcxLabel
    Left = 62
    Top = 16
    Caption = '10 etiquetas'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = 7237230
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
  end
  object panPular: TLMDSimplePanel
    Left = 24
    Top = 183
    Width = 377
    Height = 29
    Hint = ''
    Bevel.Mode = bmCustom
    TabOrder = 4
    object lbIniciar2: TcxLabel
      Left = 207
      Top = 0
      Align = alLeft
      Caption = #170
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      AnchorY = 15
    end
    object edInicio: TcxSpinEdit
      AlignWithMargins = True
      Left = 157
      Top = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Properties.ImmediatePost = True
      Properties.MaxValue = 999.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Style.LookAndFeel.Kind = lfFlat
      Style.StyleController = FrmPri.escFlat
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 1
      Value = 1
      Width = 50
    end
    object cxLabel1: TcxLabel
      AlignWithMargins = True
      Left = 221
      Top = 3
      Align = alLeft
      Caption = 'etiqueta da folha.'
      Properties.Alignment.Vert = taVCenter
      AnchorY = 15
    end
    object cxLabel2: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      Caption = 'Come'#231'ar a impress'#227'o na '
      Properties.Alignment.Vert = taVCenter
      AnchorY = 15
    end
  end
  object edModelo: TncDocEdit
    Left = 24
    Top = 131
    Properties.Buttons = <
      item
        Default = True
      end>
    Properties.ReadOnly = True
    Style.LookAndFeel.Kind = lfFlat
    Style.StyleController = FrmPri.escFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 3
    Tipo = 2
    Width = 377
  end
end
