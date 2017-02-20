object FrmDadosNFCe: TFrmDadosNFCe
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Dados para NF'
  ClientHeight = 434
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 374
    Width = 586
    Height = 60
    Hint = ''
    Align = alBottom
    Bevel.BorderSides = [fsTop]
    Bevel.Mode = bmEdge
    TabOrder = 0
    object LMDSimplePanel5: TLMDSimplePanel
      AlignWithMargins = True
      Left = 17
      Top = 9
      Width = 552
      Height = 34
      Hint = ''
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 15
      Margins.Bottom = 15
      Align = alBottom
      Bevel.Mode = bmCustom
      TabOrder = 0
      object btnSalvar: TcxButton
        Left = 0
        Top = 0
        Width = 105
        Height = 34
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Salvar - F2'
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnSalvarClick
      end
      object btnCancelar: TcxButton
        AlignWithMargins = True
        Left = 120
        Top = 0
        Width = 74
        Height = 34
        Cursor = crHandPoint
        Margins.Left = 15
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Cancel = True
        Caption = 'Cancelar'
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        ModalResult = 2
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.AllowAllUp = True
        SpeedButtonOptions.Flat = True
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
    end
  end
  object LMDSimplePanel2: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 586
    Height = 374
    Hint = ''
    Align = alClient
    Bevel.BorderSides = [fsBottom]
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 1
    object panDanfe: TLMDSimplePanel
      Left = 0
      Top = 224
      Width = 586
      Height = 86
      Hint = ''
      Align = alTop
      Bevel.BorderSides = []
      Bevel.Mode = bmEdge
      TabOrder = 0
      object Image2: TImage
        Left = 16
        Top = 16
        Width = 48
        Height = 48
        AutoSize = True
        Center = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F9870000000467414D410000B18F0BFC6105000000
          097048597300000E7200000E7201EB27F74D0000023B494441546843ED953D6E
          C240148439428E9023D0E5021C80BBE402941C831BA40C5DE868225152468AC4
          4F9792D2F16C3CC9E4E57937101E0E923F69F47687F5FACD1AC3A0AAAAAB966B
          5E935CF39AE49A93C9A4FA6FB23D52AEE96DD0B56C8F946BCA459DD307E89AB0
          0077F70FCDE86B8C4A7973D2E67B84066003B692B606DBD67B8406787C7E4D55
          1BB273627D9DE7080D001802D886DA1AFC4DE3243C00C805A09436DF232CC0A5
          E803744D1FA08DF178EC0A6CB7DB6A341A25610CBCB55089D000167A6C9C2140
          6E7D8EF000A83A067AFAFA0458EDFA1C9D04E0E9B382DCFA1CE101147A7C0214
          C8ADCF111AC013E0C96F369B24E0AD854A8405C8C10010DF8153090BC00677BB
          5DAAFBFDFE5BD3A8387DAED1CF39462D111A409B82180601F429D047D5316A89
          8B04D0CAB106B0D2F525C202B0098A27EA4983D9EB4A8405C8A1A7CF715B8812
          6101BC9F4408F0E7934DF2E968E30C54223480851E9B84ECCB6CC394080FA027
          AF01F8041840DF110D51A29300689A62D3DAB8AA447800851E9BD300FCCAF0BB
          4FBF4468004FC09EBC6D5ABD1261012E451FA06BFA005D73B600ABD5AA19C581
          FF09CB59022C168B34472508044F832D97CBE4A19263BDF97CDE381FC0836ADC
          5E5D532E4AA7C239B45EAF7F7898C3570FF353BDD96C561D0E87747F7A356EAF
          AEA99B89DE50A7D36952E3BD9CD97BAA95EE63657BA45CD3D90037BBA9851BD0
          5BD5BA6DEAA7D75CFF176F582B8553E1334FAED9A67A2384C0E629508477AC5C
          33A7FA4638A161A4778C5CF37A540DDE01090A080624B082230000000049454E
          44AE426082}
      end
      object cbImprimir: TcxCheckBox
        Left = 97
        Top = 25
        Cursor = crHandPoint
        Caption = 'Imprimir %s'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        OnKeyDown = cbImprimirKeyDown
      end
    end
    object panCPF: TLMDSimplePanel
      Left = 0
      Top = 57
      Width = 586
      Height = 81
      Hint = ''
      Align = alTop
      Bevel.BorderSides = [fsBottom]
      Bevel.Mode = bmEdge
      TabOrder = 1
      object Paginas: TcxPageControl
        Left = 2
        Top = 2
        Width = 582
        Height = 77
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tsCPF
        Properties.CustomButtons.Buttons = <>
        Properties.HideTabs = True
        Properties.HotTrack = True
        ClientRectBottom = 77
        ClientRectRight = 582
        ClientRectTop = 0
        object tsCPF: TcxTabSheet
          Caption = 'CPF'
          ImageIndex = 0
          object Image1: TImage
            Left = 14
            Top = 13
            Width = 48
            Height = 48
            AutoSize = True
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
              0000003008060000005702F9870000000467414D410000B18F0BFC6105000000
              097048597300000EBC00000EBC0195BC72490000027E494441546843ED983F4F
              D4411086F94C8ABD8D8958D15A18BF808588D219B42284A889958D3913133ABD
              42C3C588410B1390F36F6C1412456CC458F101D67B96BC976599B90BE10C3717
              8B877977667EBBF32EBFBBE2C6524AA131939130939130939130939130939130
              9391309391C87F4E5C7E3CD961AE430A02B34E9606220D2FE64A0356C3D033FA
              06CE5C5F4AB38BEDB4F86A3383265FE6E0EE93CFB997DAF98517FB6AA0E7064D
              4F0397EEBD4EDF7FED1E801A43A19FBDDBCEA0DB9BBFDDE7E82FF71E14AE016E
              538797B7272D030CCB5A2658CBC0BF1ABAC435C02BC110C4BA06B581723D1406
              EA01BD3A06F9AFA07BBD42DE3E47A5AF01EFC3A7BAE015E2C34B4D0630441FA8
              36685C03E5ADEADB05A465C0BA5919A0A7AE0D1AD700303C8368180D4D2D8401
              6E9B77BC36422D848108FC3770DC8CAE81AB8DD5B4B5B39B661A6BE95AA1014D
              8EBE899BADFC215F6AFFD8D31B7BFA5CA1E91BBFD24CADB7DB69BD93A3CFD267
              675BB9F754D1CB3E75BDC435F0747DAB1B3D4D9CBEBF9A61ED69FAF48CD723DD
              AF5775D1D3C085DB2B397A9A38FFE843E6CDD79D7C80A5B9397AD1E4A8795AFB
              7AF57A4ED70087B219D1D36CCA618DE52FDDCD2D2DA36872D43C2DFAD5856B20
              0AA36BE0E454E79B63AAE96AA2500D0EDB274D5DEBB2B77EAEC63560F1706523
              CD3C58336BC7856B80416F353FE5A161E246AB6BA0ACD1FBFCFDCF03513D17EF
              BC4C1FBFFDC9BDAC7501CAB126AA2EADE7D5EFD1D38006111C4ACE1AB88ED2F5
              5A510634ACCE0372445D9AF6B1700D68631DA2DB6063A26E8B5EE5CABCF461FF
              03ACCB33E82BE7AA710D4461A40C84FF71F73489A238ECECFF793D3266321266
              321266321266321266321266321266320E69EC2FBAB024C6A8A25E5000000000
              49454E44AE426082}
          end
          object CPF: TcxLabel
            Left = 93
            Top = 13
            Caption = 'Se o cliente desejar informe o CPF para constar na NF:'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object edCPF: TcxMaskEdit
            Left = 95
            Top = 32
            ParentFont = False
            Properties.IgnoreMaskBlank = True
            Properties.EditMask = '000.000.000-00;1; '
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.Kind = lfFlat
            Style.StyleController = FrmPri.escFlat
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.Kind = lfFlat
            TabOrder = 1
            Text = '   .   .   -  '
            OnKeyDown = edCPFKeyDown
            Width = 442
          end
        end
        object tsCNPJ: TcxTabSheet
          Caption = 'tsCNPJ'
          ImageIndex = 1
          object cxLabel1: TcxLabel
            Left = 13
            Top = 23
            Caption = 'CNPJ'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -21
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.TextColor = 11431986
            Style.TextStyle = []
            Style.IsFontAssigned = True
            StyleDisabled.TextColor = 11431986
          end
          object edCNPJ: TcxMaskEdit
            Left = 95
            Top = 29
            Enabled = False
            ParentFont = False
            Properties.EditMask = '00.000.000/0000-00;1; '
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.Kind = lfFlat
            Style.StyleController = FrmPri.escFlat
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.TextColor = clBlack
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.Kind = lfFlat
            TabOrder = 1
            Text = '  .   .   /    -  '
            OnKeyDown = edCPFKeyDown
            Width = 442
          end
        end
      end
    end
    object panEmail: TLMDSimplePanel
      Left = 0
      Top = 138
      Width = 586
      Height = 86
      Hint = ''
      Align = alTop
      Bevel.BorderSides = [fsBottom]
      Bevel.Mode = bmEdge
      TabOrder = 2
      object Image3: TImage
        Left = 16
        Top = 16
        Width = 48
        Height = 48
        AutoSize = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F9870000000467414D410000B18F0BFC6105000000
          097048597300000EBC00000EBC0195BC724900000641494441546843D5996B88
          555514C79D7CF5C041332D2A8AC1482A2B3042338D1E2895E48742332B4D4A2B
          ACD088C6A487651645A9907DA80CA2B282A86824E845512091D6076948523223
          82B12C4DCACC47D3EF7F38FBB25C7B9DDBBDFA4167C18FB5CFDAFFB5F6B9FB9E
          BBCF3EE7F63ADCADBBBBBB2E87BD45276D39EC2D3A694B6691A8592E9ABF6AD0
          B8F68ED1703DEDBBF10F09DAF7E0A7C35869A2DC66C92C123502273492137B0C
          BEA6FD37FE5F41BBBBA22DCD57F8FBF1C3A29A8D905924AA82C1FB82665927DD
          7D10EC8577E0EC689C7A6416892298B54B19709D99D1AA99AEDB76B17FF0FA16
          8F8CC68CC82C125928DE1F96C39E8A93DB49FB23FC42984AFB32FC28D0753F11
          3F075EA0FD033EFC50B09AF6F1D1F89ECC22514245E14B0DE4D0E06B6126B446
          B91168C7C0DBA04BC8D7FC164E88F22C994522C1AC9CACA269B68406C2FF04D3
          681F11E53502F917C3A6B29EADBD068E8A72129945228A1D4BA16FEC0082E377
          F183A39C66A1CE10EA7D616AA7B19E89F489CCBC80427DE07D15346880A5D0E2
          F50703F506822E1D3B967E6B6322BDC8CC0B9881F92AE466E569A87BF2F4F785
          51E4DC8B7F193EA5BD16AFCBE203DACFE3E7E0CFC1F736793AFECB8CA5713FB1
          B52D99D94E92CFB0C54ADF017DACCE42DF71E81EC56F3639FEB2A8B5F13AD68A
          74BBA9F194D3CA9F67C74964663B49EC502143170CB11AA3D54D6D1EEC009BD3
          289F9B5A5AED8A89332CB7E325324B1D24682FB3AF9C81345BD36D7282BEA1F4
          7D2C8DD537D236B165B626F1D79D761364976D66A983A4379468E884ECD221A6
          E5757DA9A942EBFC6FF03B14271430C3D5D5D26CFB55A3CD6A44660AF2490723
          D66DDDCEC02C9F4CBC9578B19D283556BF1B5EA3AD3B716D2DA73D14FCEF4A79
          E7BADA6D65DC6A26598DC84C4184B7982415D8811FE89389AF341AABD70F78AC
          D70BE25A656AFAD2ABFE7E372CE22DC48A5DADA97D97D588CCCA64ED0CEDD7D7
          E113894D84A2B863039CE8F509FA66186D626D85F647A77BD86B32E353F601AD
          367646E7D92462BD619DD3A8FD278CB05A0FFDCB8C3EF9E72AB4C5D6C58CF3B8
          D764866818EC732737CE2611BBB28C5B8DDAF7595D049ACF6C6EE96FABD06EB0
          5A58E8359921BE42098EFDB6B61CAF74FD42AB4CDD9D28FDFDE0D7526F1955A1
          FFC5E9EEF09ACCF894B7BA4FBD9B766DFDE5585B842EA751FB455B3802CD9946
          9FBE813DF86CC7497C80D7C244AFCB0CD10297B4D526707C5A19B71AB56FB0BA
          0834ED3E17DF59A11DE7B47BE154AFCB0CF1234A3074D9048E2F77FD89D156E7
          A15FBBDAEF8D3EF14A857EB1D36D84FFBF13F329F50AC4CEEE369BC0F17565DC
          6AD4AEFB408E66AED3A76FA03DD0EAB7523C721AED52AF1399219C6B9254402B
          52BF94C0F194326E356A5F620B5BE8D7CDABD8E4197DFA005302FD2CA7950F27
          2833C49395EC383D25D0D673ACEF17E10C111F0E9B8DCE33DEE9DBC0AF54D98D
          3491993E69F9A9ED0C4C4D091C6BFFA31B96D7ECC24F83E2E104AFB7173712DF
          AA7EE1F4E91BB836D5A67D1631BFF66BDF549B404F66246860ED1AED602B6C12
          B1B7CA787642A0D9D693D71617575B1BBCED368EDF885F0CAFD2DEA998E9D776
          7EB61DDB93998224AF5201C316A8ADD5B4CF87E2BD5093B4834E34EA8B78208D
          5945660AF2A98B0D979B8D9B6D22C77A59EB35556DDDAC1694795ADF75732C34
          1579DB69DF64C7AB22330529700C05B6B9C25A878F4E891CB770AC17B3BAF6AB
          4E44EDEFF013525E995BFB6D38AD2EBB2550B99BF564963A28B6C8142E06C13F
          619305F111F02C7DFAF1E91ADF455BD7B59E15AEA65D5B822DC4B555188F9F89
          9F0A2369F78FB4F5C82C75506C10FC0CF69AD43D61B22D70A8C9CC76322BBA69
          D5B6D6A5D74A718DD51D4A32F3024E5A9787FD16847E848BA0F642EA50919917
          30DBBD39D137CD3750FC2ECAE34EFC24A87CD15505B9DA5EACC04F8BFA1B25B3
          48C420FD18EC257CEDE405C7E903E939587F4CE80D84DE11EDF7A69A989E214E
          213E01FF20ACA19DDE39ADB7DA66C92C12099D14DC09FA03C35F52165D5E7A3A
          D31D594BAF1ECCFF80E83F80C485D1988D1006EBC1AC0D87F7C03F371F501BAF
          B5BFEEB3443DC2602330E8050CAEB55EEF749A3A69D0B7B41A3F1B3F20AADF28
          61B019388156B80A9E840F414F5DDA0CEA52D34E520FE67AF5A8FF189680FE37
          3B29AA752084C19E4418EC4984C19E4418EC3974F7FA0F1813CBA6CF761DBB00
          00000049454E44AE426082}
      end
      object edEmail: TcxMaskEdit
        Left = 97
        Top = 35
        ParentFont = False
        Properties.OnChange = edEmailPropertiesChange
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.StyleController = FrmPri.escFlat
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Text = 'joaolucioborges@gmail.com'
        OnKeyDown = edEmailKeyDown
        Width = 443
      end
      object lbEmail: TcxLabel
        Left = 95
        Top = 16
        Caption = 'Enviar %s por e-mail para:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
    object LMDSimplePanel4: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 586
      Height = 57
      Hint = ''
      Align = alTop
      Bevel.BorderSides = []
      Bevel.Mode = bmEdge
      TabOrder = 3
      object lbTit: TcxLabel
        Left = 16
        Top = 13
        Caption = 'Dados para emiss'#227'o do %s:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.TextStyle = [fsBold, fsUnderline]
        Style.IsFontAssigned = True
      end
    end
  end
end