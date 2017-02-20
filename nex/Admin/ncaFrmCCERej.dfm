object FrmCCERej: TFrmCCERej
  Left = 0
  Top = 0
  ActiveControl = meMotivo
  BorderStyle = bsDialog
  Caption = 'Carta de Corre'#231#227'o Rejeitada '
  ClientHeight = 315
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object panTop: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 700
    Height = 41
    Hint = ''
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 0
    object img: TImage
      Left = 0
      Top = 0
      Width = 49
      Height = 41
      Align = alLeft
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF4000000097048597300000EC400000EC401952B
        0E1B000003A4494441545885ED974D681C6518C77FEFECCE6443FC0A692114BC
        F80186A0A6DD4D4B30D4D0121B359BAC178F4A7BA8879D90AD454C4945440F85
        501B61D1AABD289E04B1CD469AC56C0DD18836BBCA1A02822DA8A75A938A6249
        7667E67D3C24BB2469769BCD6E6FFE610EF33EEFC76FFEF3CCF3BEA3440400DB
        B653C001AAD735201C8FC7D35BEA2D22880883838352AD6CDB96643229D168F4
        EF6834DA5698BBDCE5AFC113AF7B98EEEE6EB4D6F78C8F8F7F65DB76673C1E9F
        2F37A6A60005F5F4F4E038CE7DC96472D2B6ED8E783CFE6BC5002FBE9DBAED42
        FFE65C3E3B7168D3586F6F2FAEEB36A752A9E955277EAF08E0A3970FDE16A09C
        94524422113CCFBB7F6A6AEA0BE0D18A005E383D8952AAEC221B1D6869696160
        60E01610A0B5E424B5FC0A4444B4D6EB2ED775251A8D4AC55F41E4CD8B58A651
        D68152FA67C963E28D67D63A50522501CEBFF6F4B616AF5425019E78E50275DB
        7420E7686646FAAB03D8EA04D5EA8E3BB0ED1CA8B103BA6280FF73A00A07B239
        479F9B19E9BF045C0514F040A9CE4A560F24B1584C464747B7B36041CBC071E0
        6CB6AFFD8C2BF21250B71A5BF229DE6F1B4B1FDB38A856953007F49EF876D8D0
        82275AA38C7563EB5D4FC732E1500C783298484F17024A44B06DDBF4FBFDF92A
        1CB07FEC0BFDAC85C9FCE2758CFA067C9685F29B0088E3E0790E72F32666D34E
        1474EE49A467A0360ECC01EFBD2A78F9C5EB3C72FA631A3BBAC8844388E32008
        8669B16F22CBE274925F868E6236EDFC8695DCA8C95E706E3EB27764497BF8EE
        BA97C68E2E00F65C98E587FE7614104CAC9C4F9BF61FE24A7D03A235D9BEF653
        8F8FCD0E950478FE5472AB009786B5CC2AC387323C32E110C1441A65285A3F1C
        C330CD62C74C3884CF325186812B7214280DF0E9D0E647AD4D7435DB77320060
        98163A9F23130EF1D8275F1268DE0540FECF3F983BF22CDAC9639856615C2394
        79051538C0F0DA9BD5DA2F8E536CD29EB712E2D67DA100606E0C54E0C083D9BE
        93CB40405C07C3B48AEF3CBF700D65D61168DE55CC09715D94DF0FF0D75A0067
        D3A9B7A603A6A1CE3A8E17F3F239F65DCC160373877B018A39114CA4F9BEEB61
        7C0D7763F97D1FC09A4A58C5AFD91CD076F8B7EF3CE7C6020FBD7E861D4F3D47
        261C423B7910C1B0EA0826D22C4C7CCE95B78E6136EE209848AB7500D5EAA7FE
        F6838E9649E7C602CAAAC31708140BD186E4C35074EE1E5B29443503580BB149
        29A6D06628F6EF1E4B7F5D68AF294041F391BDEFB87ADD66B4EC37D4BBADE72F
        1FDFD8F78E0054A2FF00293351E504B391D20000000049454E44AE426082}
    end
    object lbNum: TcxLabel
      AlignWithMargins = True
      Left = 567
      Top = 0
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alRight
      Caption = 'N'#250'm.NF-e: %s'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.TextStyle = [fsUnderline]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      AnchorY = 21
    end
    object cxLabel3: TcxLabel
      Left = 49
      Top = 0
      Align = alLeft
      Caption = 'Carta de Corre'#231#227'o Rejeitada pela SEFAZ'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      AnchorY = 21
    end
  end
  object panBottom: TLMDSimplePanel
    Left = 0
    Top = 264
    Width = 700
    Height = 51
    Hint = ''
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    object cxButton1: TcxButton
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 90
      Height = 31
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = '&OK'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton1Click
    end
  end
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 41
    Width = 700
    Height = 223
    Hint = ''
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    ParentBackground = True
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 2
    object cxLabel2: TcxLabel
      AlignWithMargins = True
      Left = 10
      Top = 10
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Motivo da rejei'#231#227'o:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextStyle = []
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Width = 680
    end
    object meMotivo: TcxMemo
      AlignWithMargins = True
      Left = 10
      Top = 31
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      Lines.Strings = (
        'meMotivo')
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.TextColor = 3427532
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 182
      Width = 680
    end
  end
end
