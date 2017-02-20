object FrmConfig_Orcamento: TFrmConfig_Orcamento
  Left = 0
  Top = 0
  ActiveControl = edModeloEmail
  BorderStyle = bsDialog
  Caption = 'Configurar envio/impress'#227'o do or'#231'amento'
  ClientHeight = 372
  ClientWidth = 536
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 17
  object LMDSimplePanel7: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 164
    Width = 506
    Height = 122
    Hint = ''
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 0
    object LMDSimplePanel2: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 506
      Height = 40
      Hint = ''
      Align = alTop
      Bevel.Mode = bmCustom
      TabOrder = 0
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
        ExplicitLeft = 8
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
        Caption = 'Impress'#227'o do Or'#231'amento'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.TextStyle = [fsUnderline]
        Style.IsFontAssigned = True
        StyleDisabled.Color = clBtnFace
        StyleDisabled.TextColor = 10907705
        StyleFocused.TextColor = clBlack
        Properties.Alignment.Vert = taVCenter
        Properties.WordWrap = True
        Width = 467
        AnchorY = 20
      end
    end
    object edModeloImp: TncDocEdit
      AlignWithMargins = True
      Left = 153
      Top = 46
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 25
      Margins.Bottom = 0
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
      TabOrder = 1
      Tipo = 1
      Width = 352
    end
    object cxLabel1: TcxLabel
      AlignWithMargins = True
      Left = 39
      Top = 47
      Margins.Left = 25
      Margins.Top = 15
      Margins.Right = 25
      Margins.Bottom = 0
      Caption = 'Modelo / Layout:'
      ParentFont = False
    end
    object edCopias: TcxSpinEdit
      Left = 153
      Top = 82
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
    object lbModelo: TcxLabel
      AlignWithMargins = True
      Left = 39
      Top = 83
      Margins.Left = 25
      Margins.Top = 15
      Margins.Right = 25
      Margins.Bottom = 0
      Caption = 'C'#243'pias'
      ParentFont = False
    end
  end
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 328
    Width = 506
    Height = 29
    Hint = ''
    Margins.Left = 15
    Margins.Top = 10
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
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
      Caption = '&Salvar - F2'
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
  object LMDSimplePanel3: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 68
    Width = 506
    Height = 81
    Hint = ''
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 2
    object LMDSimplePanel4: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 506
      Height = 40
      Hint = ''
      Align = alTop
      Bevel.Mode = bmCustom
      TabOrder = 0
      object Image2: TImage
        Left = 0
        Top = 0
        Width = 32
        Height = 40
        Align = alLeft
        AutoSize = True
        Center = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
          000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
          097048597300000EC400000EC401952B0E1B00000128494441545847DD96310E
          C2300C457B26764EC041DAA59D2A71A30A560EC102BD0B12426C0DFD11AEDC60
          9C40A9417CE9C9EE2751BEEC85CC39F75544D312D1B444342D114D4B44D312D1
          ACAAEA5A96A59B1BBC932DD73BC7D823007E84BAAE1B2AEFA96A1E24F9D403BC
          234EE0AF021C570BCFE10E9D013E406C05DBEDC6354DF31297F369B81F0DD09F
          FBEE04FA736A809409B46D3B9C075CD100DA0AA60A8F8401B892264095F75435
          0F927CEAC16F04D056105EA29E6ACCD37A903C81A2283C799E8FAAE6D575FDF0
          28EF417280A9A207790F7C006D05732B7902B171875EF88D1E2B218D26D07F47
          037C5AA300DA0AE608408F0F017A2F3A8170AC24EE6923E77A2B005DA09E6ACC
          D37AE003682B985B4F2760FA9F500A6089685A229A9688A625A26987CB6E1092
          F0A86CE2D5170000000049454E44AE426082}
        ExplicitHeight = 32
      end
      object cxLabel2: TcxLabel
        AlignWithMargins = True
        Left = 39
        Top = 0
        Margins.Left = 7
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Caption = 'Envio do Or'#231'amento por E-mail'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.TextStyle = [fsUnderline]
        Style.IsFontAssigned = True
        StyleDisabled.Color = clBtnFace
        StyleDisabled.TextColor = 10907705
        StyleFocused.TextColor = clBlack
        Properties.Alignment.Vert = taVCenter
        Properties.WordWrap = True
        Width = 467
        AnchorY = 20
      end
    end
    object edModeloEmail: TncDocEdit
      AlignWithMargins = True
      Left = 153
      Top = 46
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 25
      Margins.Bottom = 0
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
      TabOrder = 1
      Tipo = 1
      Width = 352
    end
    object cxLabel3: TcxLabel
      AlignWithMargins = True
      Left = 39
      Top = 47
      Margins.Left = 25
      Margins.Top = 15
      Margins.Right = 25
      Margins.Bottom = 0
      Caption = 'Modelo / Layout:'
      ParentFont = False
    end
  end
  object lbErro: TcxLabel
    AlignWithMargins = True
    Left = 15
    Top = 15
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 0
    Align = alTop
    Caption = 
      #201' necess'#225'rio escolher o modelo/layout do documento de or'#231'amento ' +
      'a ser enviado por e-mail ou impresso.'
    ParentFont = False
    Style.TextColor = clRed
    Properties.WordWrap = True
    Width = 506
  end
end
