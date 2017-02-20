object FrmImprimeOrcamento: TFrmImprimeOrcamento
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Imprimir Or'#231'amento'
  ClientHeight = 319
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object lbImpressora: TcxLabel
    AlignWithMargins = True
    Left = 25
    Top = 70
    Margins.Left = 25
    Margins.Top = 15
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Impressora'
    ParentFont = False
  end
  object lbModelo: TcxLabel
    AlignWithMargins = True
    Left = 25
    Top = 192
    Margins.Left = 25
    Margins.Top = 15
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
    Caption = 'C'#243'pias'
    ParentFont = False
    ExplicitTop = 184
  end
  object edPrinters: TcxComboBox
    AlignWithMargins = True
    Left = 25
    Top = 91
    Cursor = crHandPoint
    Margins.Left = 25
    Margins.Top = 0
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
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
    TabOrder = 2
    Width = 400
  end
  object edCopias: TcxSpinEdit
    Left = 25
    Top = 213
    ParentFont = False
    Properties.ImmediatePost = True
    Properties.MaxValue = 99.000000000000000000
    Properties.MinValue = 1.000000000000000000
    Style.LookAndFeel.Kind = lfFlat
    Style.StyleController = FrmPri.escFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 3
    Value = 1
    Width = 72
  end
  object LMDSimplePanel7: TLMDSimplePanel
    AlignWithMargins = True
    Left = 23
    Top = 15
    Width = 402
    Height = 40
    Hint = ''
    Margins.Left = 23
    Margins.Top = 15
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 4
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 32
      Height = 40
      Align = alLeft
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
      ExplicitLeft = 24
      ExplicitTop = 8
      ExplicitHeight = 32
    end
    object lbNome: TcxLabel
      AlignWithMargins = True
      Left = 39
      Top = 0
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Caption = 'Or'#231'amento para'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.Color = clBtnFace
      StyleDisabled.TextColor = 10907705
      StyleFocused.TextColor = clBlack
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Width = 265
      AnchorY = 20
    end
    object lbValor: TcxLabel
      Left = 304
      Top = 0
      Align = alRight
      Caption = 'Valor R$ 150,00'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.TextColor = clBlack
      Properties.Alignment.Vert = taVCenter
      AnchorY = 20
    end
  end
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 25
    Top = 265
    Width = 400
    Height = 29
    Hint = ''
    Margins.Left = 25
    Margins.Right = 25
    Margins.Bottom = 25
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 5
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 122
      Top = 0
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Cancel = True
      Caption = '&Cancelar'
      LookAndFeel.Kind = lfFlat
      ModalResult = 2
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = btnCancelarClick
    end
    object btnImp: TcxButton
      Left = 0
      Top = 0
      Width = 97
      Height = 29
      Align = alLeft
      Caption = '&Imprimir!'
      Default = True
      LookAndFeel.Kind = lfFlat
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnImpClick
    end
  end
  object cxLabel1: TcxLabel
    AlignWithMargins = True
    Left = 25
    Top = 131
    Margins.Left = 25
    Margins.Top = 15
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Modelo / Layout  de impress'#227'o'
    ParentFont = False
  end
  object edModelo: TncDocEdit
    AlignWithMargins = True
    Left = 25
    Top = 152
    Margins.Left = 25
    Margins.Top = 0
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
    ParentFont = False
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
    TabOrder = 7
    Tipo = 1
    Width = 400
  end
end
