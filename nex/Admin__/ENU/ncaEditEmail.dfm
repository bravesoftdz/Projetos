object FrmEditEmail: TFrmEditEmail
  Left = 0
  Top = 0
  ActiveControl = edEmail
  BorderStyle = bsDialog
  Caption = 'E-mail'
  ClientHeight = 256
  ClientWidth = 558
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 21
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 196
    Width = 558
    Height = 60
    Hint = ''
    Align = alBottom
    Bevel.BorderSides = [fsTop]
    Bevel.Mode = bmEdge
    TabOrder = 0
    ExplicitTop = 374
    ExplicitWidth = 586
    object LMDSimplePanel5: TLMDSimplePanel
      AlignWithMargins = True
      Left = 17
      Top = 9
      Width = 524
      Height = 34
      Hint = ''
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 15
      Margins.Bottom = 15
      Align = alBottom
      Bevel.Mode = bmCustom
      TabOrder = 0
      ExplicitWidth = 552
      object btnSalvar: TcxButton
        Left = 0
        Top = 0
        Width = 105
        Height = 34
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Enviar'
        Default = True
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
    Width = 558
    Height = 196
    Hint = ''
    Align = alClient
    Bevel.BorderSides = [fsBottom]
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 1
    ExplicitWidth = 586
    ExplicitHeight = 374
    object panEmail: TLMDSimplePanel
      Left = 0
      Top = 57
      Width = 558
      Height = 86
      Hint = ''
      Align = alTop
      Bevel.BorderSides = []
      Bevel.Mode = bmEdge
      TabOrder = 0
      ExplicitTop = 138
      ExplicitWidth = 586
      object Image3: TImage
        Left = 16
        Top = 16
        Width = 48
        Height = 48
        AutoSize = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F987000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
          000641494441546843D5996B88555514C79D7CF5C041332D2A8AC1482A2B3042
          338D1E2895E48742332B4D4A2BACD088C6A487651645A9907DA80CA2B282A868
          24E845512091D607694852322382B12C4DCACC47D3EF7F38FBB25C7B9DDBBDFA
          4167C18FB5CFDAFFB5F6B9FB9EBBCF3EE7F63ADCADBBBBBB2E87BD45276D39EC
          2D3A694B6691A8592E9ABF6AD0B8F68ED1703DEDBBF10F09DAF7E0A7C35869A2
          DC66C92C123502273492137B0CBEA6FD37FE5F41BBBBA22DCD57F8FBF1C3A29A
          8D905924AA82C1FB82665927DD7D10EC8577E0EC689C7A6416892298B54B1970
          9D99D1AA99AEDB76B17FF0FA168F8CC68CC82C125928DE1F96C39E8A93DB49FB
          23FC42984AFB32FC28D0753F113F075EA0FD033EFC50B09AF6F1D1F89ECC2251
          4245E14B0DE4D0E06B6126B446B91168C7C0DBA04BC8D7FC164E88F22C994522
          C1AC9CACA269B68406C2FF04D3681F11E53502F917C3A6B29EADBD068E8A7212
          9945228A1D4BA16FEC0082E377F183A39C66A1CE10EA7D616AA7B19E89F489CC
          BC80427DE07D15346880A5D0E2F50703F506822E1D3B967E6B6322BDC8CC0B98
          81F92AE466E569A87BF2F4F78551E4DC8B7F193EA5BD16AFCBE203DACFE3E7E0
          CFC1F736793AFECB8CA5713FB1B52D99D94E92CFB0C54ADF017DACCE42DF71E8
          1EC56F3639FEB2A8B5F13AD68A74BBA9F194D3CA9F67C74964663B49EC502143
          170CB11AA3D54D6D1EEC009BD3289F9B5A5AED8A89332CB7E325324B1D24682F
          B3AF9C81345BD36D7282BEA1F47D2C8DD537D236B165B626F1D79D761364976D
          66A983A4379468E884ECD221A6E5757DA9A942EBFC6FF03B14271430C3D5D5D2
          6CFB55A3CD6A44660AF2490723D66DDDCEC02C9F4CBC9578B19D283556BF1B5E
          A3AD3B716D2DA73D14FCEF4A79E7BADA6D65DC6A26598DC84C4184B7982415D8
          811FE89389AF341AABD70F78ACD70BE25A656AFAD2ABFE7E372CE22DC48A5DAD
          A97D97D588CCCA64ED0CEDD7D7E113894D84A2B863039CE8F509FA66186D626D
          85F647A77BD86B32E353F601AD367646E7D92462BD619DD3A8FD278CB05A0FFD
          CB8C3EF9E72AB4C5D6C58CF3B8D764866818EC732737CE2611BBB28C5B8DDAF7
          595D049ACF6C6EE96FABD06EB05A58E8359921BE42098EFDB6B61CAF74FD42AB
          4CDD9D28FDFDE0D7526F1955A1FFC5E9EEF09ACCF894B7BA4FBD9B766DFDE558
          5B842EA751FB455B3802CD99469FBE813DF86CC7497C80D7C244AFCB0CD10297
          B4D526707C5A19B71AB56FB0BA0834ED3E17DF59A11DE7B47BE154AFCB0CF123
          4A3074D9048E2F77FD89D156E7A15FBBDAEF8D3EF14A857EB1D36D84FFBF13F3
          29F50AC4CEEE369BC0F17565DC6AD4AEFB408E66AED3A76FA03DD0EAB7523C72
          1AED52AF1399219C6B9254402B52BF94C0F194326E356A5F620B5BE8D7CDABD8
          E4197DFA005302FD2CA7950F272833C49395EC383D25D0D673ACEF17E10C111F
          0E9B8DCE33DEE9DBC0AF54D98D3491993E69F9A9ED0C4C4D091C6BFFA31B96D7
          ECC24F83E2E104AFB7173712DFAA7EE1F4E91BB836D5A67D1631BFF66BDF549B
          404F66246860ED1AED602B6C12B1B7CA787642A0D9D693D71617575B1BBCED36
          8EDF885F0CAFD2DEA998E9D7767EB61DDB93998224AF5201C316A8ADD5B4CF87
          E2BD5093B4834E34EA8B78208D5945660AF2A98B0D979B8D9B6D22C77A59EB35
          556DDDAC1694795ADF75732C341579DB69DF64C7AB22330529700C05B6B9C25A
          878F4E891CB770AC17B3BAF6AB4E44EDEFF013525E995BFB6D38AD2EBB2550B9
          9BF564963A28B6C8142E06C13F619305F111F02C7DFAF1E91ADF455BD7B59E15
          AEA65D5B822DC4B555188F9F899F0A2369F78FB4F5C82C75506C10FC0CF69AD4
          3D61B22D70A8C9CC76322BBA69D5B6D6A5D74A718DD51D4A32F3024E5A9787FD
          16847E848BA0F642EA5091991730DBBD39D137CD3750FC2ECAE34EFC24A87CD1
          5505B9DA5EACC04F8BFA1B25B348C420FD18EC257CEDE405C7E903E939587F4C
          E80D84DE11EDF7A69A989E214E213E01FF20ACA19DDE39ADB7DA66C92C12099D
          14DC09FA03C35F52165D5E7A3AD31D594BAF1ECCFF80E83F80C485D1988D1006
          EBC1AC0D87F7C03F371F501BAFB5BFEEB3443DC2602330E8050CAEB55EEF749A
          3A69D0B7B41A3F1B3F20AADF2861B019388156B80A9E840F414F5DDA0CEA52D3
          4E520FE67AF5A8FF189680FE373B29AA752084C19E4418EC4984C19E4418EC39
          74F7FA0F1813CBA6CF761DBB0000000049454E44AE426082}
      end
      object edEmail: TcxMaskEdit
        Left = 81
        Top = 27
        ParentFont = False
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
        Width = 443
      end
    end
    object LMDSimplePanel4: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 558
      Height = 57
      Hint = ''
      Align = alTop
      Bevel.BorderSides = []
      Bevel.Mode = bmEdge
      TabOrder = 1
      ExplicitWidth = 586
      object cxLabel3: TcxLabel
        Left = 16
        Top = 13
        Caption = 'Enviar NFC-e por e-mail para:'
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
