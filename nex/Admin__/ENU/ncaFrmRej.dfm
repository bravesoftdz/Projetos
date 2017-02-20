object FrmRej: TFrmRej
  Left = 0
  Top = 0
  ActiveControl = meMotivo
  BorderStyle = bsDialog
  Caption = 'NFC-e rejeitada pela SEFAZ'
  ClientHeight = 482
  ClientWidth = 694
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
    Width = 694
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
        000000200806000000737A7AF4000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
        000255494441545847BD97CD6B135114C5BB742B7E50B5ADBB0845A5B6D6AF85
        E8CE854BC595FE1D42772EC59D15FD3F5C0ABA3049231482B87115B1202E8AA5
        188D4AA3CF735E3AC3CC9D7399994473E0072FF79DFB3164326F32334D85100A
        4C55630D70F5FEF3038979F3E6CA1278063E8160D802EB6031DBA08C52D184A2
        F7F69BD4E1B66DA67095185068680AD7E17BB699C215924F9B62395AABB3E1F5
        D98311AE9527C349D59C14C42012164D811C6C38FCC18B1B89EB0A432CC05A79
        00552085576DC598F26681FC0192BB1DC65F36D1D25C3A046B5E8C29AF611B56
        3D003FC070C724489AE70EC39E1763CA2BB801BB3B804A28D05C3E12FE0C7F23
        6524AE19535EC11E528A0360A3618C2EAD95A361AFFF95BDA3B8664C791D4E20
        AD30C0136372699D9F0D3FB73FC7E614D78C29AFC303A41506F8604C2EADD563
        61B0D58BCD29AE19535E87B7482B0CA08C92F685E3A1FFFE5D6C4E71CD98F27A
        40130C70712EEC763B2C12B5DB7D1363CAEB014D30C0A5F9B0B3F18A45A276DA
        2F43FBF2BCF47A40E30FB07165217C69BE609128AE19535E0F68FC9BB073BD11
        7A0FD75824AAF7682D74AE35A4D741DE84957F86844324A761CDE644FE0C2B3F
        88FE01C507113F08A34BCDF7812CFA51BC3F40A5C328BE0F0CBE216524AE6B0C
        A10F238A01184A8F635EB51563CA6BF08F632A098AC41CE30E00E59A939C9220
        CCE5AF648301AC23715DE12B988335D79CE494DD4042E910BC6A52A179F94BA9
        DA24489EE4B5BCAF6A6649A5361350E8AE295C855BAA962595DAB4A0E819F014
        F06F986DF8113C06A754AE472AB5390D52A9CDFF4F98F90BF348D1ADEA819495
        0000000049454E44AE426082}
    end
    object lbNumVenda: TcxLabel
      AlignWithMargins = True
      Left = 532
      Top = 0
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alRight
      Caption = 'N'#250'm.Venda: 1500'
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
      Caption = 'NFC-e rejeitada pela SEFAZ '
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
    Top = 431
    Width = 694
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
    Width = 694
    Height = 390
    Hint = ''
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    ParentBackground = True
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 2
    object lb: TcxLabel
      AlignWithMargins = True
      Left = 10
      Top = 10
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      Caption = 
        'A venda que voc'#234' acabou de realizar teve a emiss'#227'o do NFC-e reje' +
        'itada pela SEFAZ. '#13#10#13#10#201' necess'#225'rio corrigir o problema e emitir ' +
        'novamente em no m'#225'ximo 24h. Ap'#243's esse prazo o programa NEX deixa' +
        'r'#225' de realizar novas vendas at'#233' que as vendas rejeitadas sejam c' +
        'orrigidas e reemitidas ou ent'#227'o canceladas.'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Width = 674
    end
    object cxLabel2: TcxLabel
      AlignWithMargins = True
      Left = 10
      Top = 139
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
      Width = 674
    end
    object meMotivo: TcxMemo
      AlignWithMargins = True
      Left = 10
      Top = 160
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
      TabOrder = 2
      Height = 220
      Width = 674
    end
  end
end
