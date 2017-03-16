inherited FrmConfig_TamCodigoAuto: TFrmConfig_TamCodigoAuto
  Caption = 'Gera'#231#227'o autom'#225'tica de c'#243'digo de produto'
  ClientHeight = 199
  ClientWidth = 569
  Font.Charset = ANSI_CHARSET
  Font.Height = -16
  Font.Name = 'Segoe UI'
  ExplicitWidth = 575
  ExplicitHeight = 228
  PixelsPerInch = 96
  TextHeight = 21
  inherited panPri: TLMDSimplePanel
    Width = 549
    Height = 114
    ExplicitHeight = 114
    inherited panTopo: TLMDSimplePanel
      Width = 549
      inherited img: TImage
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F987000000097048597300000EC400000EC401952B
          0E1B00000350494441546881ED993F482B491CC73F3BC68B162F9E418985410B
          4D61918470E0A18D65C03FE4449B2B22B6799C0836D934972B96C5EE8EFB5329
          3612B090888D0782953C2C2E06EDC4689156D03B31D96862E68A73F37C72C67D
          77F0D63CF26966F8CD2C7C3FEC30CBEC28524A1A1987DD01FE2F4D01BB690AD8
          CDBF0AA8AAEA00DA3F71969730745DAF3C2D2A8FB7D14422F1AD94F22DF015F0
          C5270C67853BE00F21C4AF9AA6A5CC624D209148FCF2101E21040EC7EB5A5D95
          4A856AB50A8010E2374DD3DEC28380AAAA1120DDDADA4A2412C1EFF7BF4A81E3
          E363B6B6B62897CB0821BED1346DCB4C190398989820140AD918F3791C0E07A1
          50884AA5423A9DA65AADC6809AC0D7008140C0BE8416090402A4D36978C86C0A
          BC01703A9D36C5B2CEA38C6FE033F80E20A5241E8FCB783C2E9F323333536BA3
          D1A8A59AD5F92F3D63D6CDDA631EE5ADFF060CC3A8B58AA258AA7DCCFC8F197F
          8E865F424D01BB690AD84D53C06E9A0276D314B09BA680DD3405ECA6E105EA9E
          C8C6C7C7A59452168B45592C166BFD7A35ABF3AD8ECFCECEFEF71399C9F5F535
          6B6B6B4C4D4D717474C4E9E929F1789CF5F575BC5E2F434343ACACAC30373747
          369BE5E4E484C5C54552A91497979744A3519697978946A3E4F379F6F7F789C5
          62ACAEAED2D7D7C7E4E4249B9B9B78BD5EDC6E37A9548AF9F9797C3EDF8BD92C
          09783C1EAEAEAEB8B8B82097CB91CBE52897CB6C6C6CE0F7FB090683288AC2C1
          C1014208B2D92CF97C9EDEDE5E6E6F6F696969C1E572B1B7B787D3E9E4FCFC9C
          42A180D7EB657B7B9B6030483A9D66646484A5A5250CC3606060C04AB4FA026E
          B71B80B3B333FAFBFBF1F97C0821E8E9E9C1E974B2B0B080C3E1E0FEFE9EEEEE
          6E868787B9B9B9211289303838C8EEEE2E1D1D1DDCDDDDE172B9181B1BA35C2E
          532A95E8EAEA02201C0EE3F178482693188641A150607A7A1A2104009D9D9D75
          05CC5F8B1240D7754BD676A3AA2A00BAAE2B0DBF0B9902D780AB542AD1D6D666
          679E1729954A66F72F782FF00E08673219464747EDC865994C266376DFC17B81
          1F81F0CECE0E00A15088F6F6D7754163180687878798191545F9093EBCE0484A
          29BFB72FA27584103F689A968427574CAAAA8681EF8011E04B5BD23DCF9FFCB3
          6C7ED675FD77B3F8814023F2D96CA30D4B53C06EFE061CEB6F424C77CFFC0000
          000049454E44AE426082}
      end
      object edDig: TcxSpinEdit
        AlignWithMargins = True
        Left = 262
        Top = 10
        Margins.Top = 10
        Margins.Bottom = 10
        Align = alLeft
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.LargeIncrement = 2.000000000000000000
        Properties.MaxValue = 99.000000000000000000
        Properties.MinValue = 2.000000000000000000
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Value = 2
        ExplicitLeft = 256
        Width = 73
      end
      object lbPromptDig: TcxLabel
        AlignWithMargins = True
        Left = 58
        Top = 0
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Gerar c'#243'digos de produtos com '
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Vert = taVCenter
        AnchorY = 25
      end
      object lbPromptSufix: TcxLabel
        Left = 338
        Top = 0
        Align = alLeft
        Caption = 'd'#237'gitos.'
        ParentFont = False
        Properties.Alignment.Vert = taVCenter
        ExplicitLeft = 335
        AnchorY = 25
      end
    end
    inherited lbDescr: TcxLabel
      Caption = 
        'Informe a quantidade de d'#237'gitos que o NEX deve utilizar para a g' +
        'era'#231#227'o de c'#243'digo autom'#225'tico para produtos. O c'#243'digo do produto '#233 +
        ' gerado automaticamente sempre que o campo C'#211'DIGO for deixado em' +
        ' branco.'
      Width = 491
    end
  end
  inherited LMDSimplePanel1: TLMDSimplePanel
    Top = 157
    Width = 549
  end
end
