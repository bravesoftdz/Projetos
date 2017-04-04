inherited FrmConfig_NFE: TFrmConfig_NFE
  Caption = 'NF-e'
  ClientHeight = 581
  ClientWidth = 691
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Segoe UI'
  OnDestroy = FormDestroy
  ExplicitWidth = 697
  ExplicitHeight = 610
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    Width = 671
    Height = 519
    Align = alClient
    ExplicitWidth = 671
    ExplicitHeight = 519
    object panTopo: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 671
      Height = 32
      Hint = ''
      Align = alTop
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      ParentColor = True
      TabOrder = 0
      object img: TImage
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 32
        Height = 32
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        AutoSize = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
          000000200806000000737A7AF4000000097048597300000EC400000EC401952B
          0E1B000002B54944415458C3BD97AB76DB401086BF5D4BA7AE0B4B025AE827B0
          784D026D2CA5A7348601267904D340E39C58C1360CF103D8AC2CB4C0A4B08DCF
          D1650AAAB5655DEC55DC74C86A2FDAFF9F7F66472B252200DCDCDC88EBBAFC0F
          8BA288BBBB3B05E09841D775E9F7FB789E471CC76F02EC380EABD58AE572B91F
          CB2FF03C8F8B8B8B14508064C32A6B25377EAAA56ECEF33C5D4B20F35C395773
          6580E3D9500AFD17E09D88B40A0495520A403D3F3F539C03E876BB25759D0AA5
          0450D1C300F7EB624F6E36349E759CABF93E9E0F83D206DD6EB72E0A9223554B
          4065EE1C2CCE54209E0D01B81FFCE2DBE243254A4E81223155CA0B1B96050514
          80EFFBF83E7540E72B00FC003E17DAF7C077A06FC25315822366A74026F3A7CC
          EB5D9BCD7F8967431111F58A9368ADC00BD039EA8A6A8CFF3B53F0A4026A3299
          749AEC7C7B7BBB7B9E4C2607E3B97E27BF6EAF890822C2783C96CD66236F6D9B
          CD46C6E3B118DC2A0508C3B091B6411054BE1B0441A97F34045114D52E7C0D99
          AABE55250CC35035044D000DA461189A128DEFFB3C3E3E1E90D15A9F26100441
          D31437BB6AE3B188A094220882DD73E517B2E26829E027F0F19C02630047A3D1
          6E6C3A9D625B8A0FC09F9E9ED86EB7D66CDAED36979797B5A0B504B2DB51C99B
          ED76CB60605F72178B85FD25C5F663642E2C00ABD58AD168C4743ADDB5F9B946
          B7A4230975D4F2E04D2C49927A02A72EA5C673935C7912BD5ECF8A4C09C3A614
          CFE7731111B9BEBEB66ACDFAC6A5D854C253B29F13862246550EA4C7F2200F56
          0C830591D2DE4E93042A9E822A659A26A56353D56C4F8205B83AAB0EE4CF7811
          D4D2F34697D283D2DAA4BAB5DBEDD729D06AB52A1799BAFE0F4C6518D504D6EB
          35BD5E0FA5144992E0380E711CA3B5466B4D9AA67F53394D77736643F3C9357F
          DBE6596BBD5B2722ACD7EB6A025114B15C2E0FFE5CDFF2F7DCD81F99C31C500A
          A59EBF0000000049454E44AE426082}
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitHeight = 34
      end
      object edEmitirNFe: TcxDBCheckBox
        Left = 35
        Top = 0
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Emitir NF-e (Nota Fiscal Eletr'#244'nica) '
        DataBinding.DataField = 'EmitirNFE'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.OnChange = edEmitirNFCePropertiesChange
        Style.LookAndFeel.Kind = lfFlat
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
      end
      object btnPremium: TcxButton
        Left = 393
        Top = 0
        Width = 278
        Height = 32
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 9
        Margins.Right = 0
        Margins.Bottom = 9
        Align = alRight
        Caption = 'Recurso PREMIUM - Saiba mais'
        Default = True
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001D1D1D1D55555555555555555555
          5555555555555555555555555555555555555555555555555555555555555555
          5555555555555555555555555555555555555555555555555555555555551D1D
          1D1D000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000008E8E8E8ED4D4D4FFBBB5B5FFBCB4B4FFBBB4
          B4FFBEB4B4FFBBB4B4FFBEB4B4FFBDB4B4FFBDB4B4FFB6B4B4FFBAB4B4FFBFB4
          B4FFB9B4B4FFBAB4B4FFB8B4B4FFB9B4B4FFBDB4B4FFB8B4B4FFB9B4B4FFD4D4
          D5FF8D8E8E8E0000000000000000000000000000000000000000000000000000
          0000000000000000000072727272A6A5A6FF373539FF1C5A6AFF265460FF2A4C
          57FF1E5D6CFF295360FF196B7EFF235866FF205967FF434E53FF2E515BFF156A
          7EFF33505AFF314D57FF3B4D54FF364D56FF1F5462FF3C4F57FF264F59FF3B34
          37FFA8A5A7FF7272727200000000000000000000000000000000000000000000
          00000000000000000000A9AAAAAA483B3CFF2B9AB3FF02E8FFFF08DAFFFF04DD
          FFFF00DEFFFF09DEFFFF00E0FFFF01DFFFFF00DEFFFF24E2FFFF0CDEFFFF00DF
          FFFF0DDFFFFF07DEFFFF18E0FFFF0EDFFFFF00DDFFFF1BDEFFFF04E6FFFF25A1
          BCFF454144FFA9AAAAAA00000000000000000000000000000000000000000000
          00000000000000000000A9AAAAAA534849FF2A788BFF11D0F0FF04C7F0FF20C3
          E5FF2BC4E5FF1CC5E9FF3FC6E3FF1EC1E4FF1EC5E8FF11C3E9FF0DC6ECFF2AC5
          E6FF41C8E5FF49C8E4FF08C0E9FF21C3E5FF33C5E5FF1CC4E8FF47D1EBFF0792
          B1FF525458FF8E8E8E8E00000000000000000000000000000000000000000000
          000000000000000000001D1D1D1DB5B5B6E3463F41FF232B32FF2E3C42FF3B36
          37FF383639FF283940FF373D42FF26424CFF3C3335FF393639FF293E46FF3835
          38FF3A3335FF373B40FF253B43FF2B3B42FF3E3839FF2D353AFF37292AFF4940
          42FFB6B5B6E31D1D1D1D00000000000000000000000000000000000000000000
          00000000000000000000000000001D1D1D1DD3D3D4E3343134FF33A4BDFF28CE
          EBFF42CAE7FF1AC4E9FF3BCFEDFF07C9F2FF37C6E5FF3CC9E6FF1FC5E8FF21C4
          E7FF17C4E8FF10C7EEFF0CC4ECFF08C5EDFF2DCFECFF0EAACDFF30363BFFD2D2
          D2E31D1D1D1D0000000000000000000000000000000000000000000000000000
          000000000000000000000000000039393939CAC6C6FF33474FFF10D5FEFF00D4
          FFFF08D5FFFF10D8FFFF00D4FFFF16D7FFFF0CD8FFFF00D4FFFF00D5FFFF00D5
          FFFF00D5FFFF00D4FFFF00D5FFFF00D3FFFF00D3FFFF00DBFFFF206678FFCEC1
          BFFF393939390000000000000000000000000000000000000000000000000000
          000000000000000000000000000072727272958989FF296676FF0CDDFFFF00D0
          FBFF00D2FEFF04CFFAFF00D0FDFF03D1FCFF06D2FCFF01D0FCFF01D1FCFF03D1
          FCFF03D1FCFF05D2FCFF00CEFBFF00D1FEFF03CEF8FF04D9FFFF04B0D5FF9696
          99FF555555550000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A7A9AAAA625656FF148AA5FF09E5FFFF3ED4
          F3FF18CDF4FF07D8FFFF03D0FCFF01D2FEFF00D1FDFF00D1FDFF02D1FDFF03D1
          FDFF07D3FEFF06D0FCFF0DD9FFFF20D4F9FF00D4FFFF01DFFFFF23A1BDFF615B
          5DFFA9AAAAAA0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A3A2A2AA363E44FF02C1EAFF10D4F0FF1E4C
          58FF3F393CFF35C9E4FF02D8FFFF04CFFBFF01D2FFFF00D1FDFF05D2FDFF01D3
          FEFF01CFFBFF00D8FFFF3CC7E3FF404247FF0E677DFF05D2F2FF14BBDCFF383D
          42FFA3A2A2AA0000000000000000000000000000000000000000000000000000
          0000000000000000000039393939C4C3C3FF47494EFF44C4E0FF185466FF7E70
          70FF6D6A6CFF333A40FF25CFEFFF00D7FFFF02CFFBFF01D3FEFF01D3FFFF03D0
          FBFF0DD9FFFF13CDEFFF2A3D46FF6E6768FF7F706FFF1F3F4AFF1CC3E3FF315F
          6BFFC9BFBEFF3939393900000000000000000000000000000000000000000000
          0000000000000000000072727272939395FF302D31FF3A2E2FFF8D8889FF5455
          55558C8D8E8E706465FF195566FF0AD3F6FF00D6FFFF00CFFBFF00CFFBFF00D5
          FFFF1CD2F5FF2A444FFF6D6667FF8D8E8E8E545555558F8889FF342D30FF2D2C
          30FF949395FF5555555500000000000000000000000000000000000000000000
          0000000000001D1D1D1DC5C7C7C75F6063FF292A2EFFA4A6A8FF393939390000
          0000000000008C8E8E8E706566FF273E48FF1FC8E8FF00D6FFFF32DBFDFF2BD4
          F4FF1C4957FF6F6565FF8D8E8E8E000000000000000039393939A5A6A8FF2B2A
          2EFF5F6163FFC6C7C7C71D1D1D1D000000000000000000000000000000000000
          00001D1D1D1DBBBBBCE363595AFF201519FF767172FF55555555000000000000
          000000000000000000008C8D8E8E6F6667FF36393FFF24C7E7FF1DD7FCFF3D46
          4CFF6C6668FF8D8E8E8E00000000000000000000000000000000555555557372
          74FF1E1417FF635A5BFFBCBABBE31D1D1D1D0000000000000000000000000000
          0000AAAAAAAA3A3234FF187186FF0AADC6FF244C58FF8A8585AA000000000000
          00000000000000000000000000008C8E8E8E777072FF35424AFF274C57FF7372
          75FF8D8E8D8E0000000000000000000000000000000000000000878788AA3732
          35FF269AB3FF0C829DFF38373AFFAAAAAAAA0000000000000000000000000000
          0000AAAAAAAA261A1CFF3BC2DEFF11F1FFFF254B57FFAEA5A5FF000000000000
          000000000000000000000000000039393939C4C3C4FF291819FF2C1616FFC5C2
          C2FF393939390000000000000000000000000000000000000000A9A6A7FF3943
          49FF1DE9FFFF00D6FFFF183A45FFAAAAAAAA0000000000000000000000000000
          0000AAAAAAAA605C5EFF3F454AFF405760FF393438FF67676872000000000000
          000000000000000000001D1D1D1DACA9AAE3293238FF207D92FF1D8095FF2936
          3CFFACA8A8E31D1D1D1D00000000000000000000000000000000676768723936
          39FF2F5662FF25515EFF606165FFAAAAAAAA0000000000000000000000000000
          00001D1D1D1DA6A7A7AAA19FA0FF8F898AFF949495AA00000000000000000000
          0000000000000000000055555555685959FF307E90FF07E6FFFF00E1FFFF0B99
          B8FF675F60FF555555550000000000000000000000000000000000000000ADAD
          ADC7928989FFA79D9DFFA6A6A6AA1D1D1D1D0000000000000000000000000000
          0000000000000000000055555555555555550000000000000000000000000000
          0000000000000000000055555555625656FF468594FF09E5FFFF00E0FFFF0DA5
          C5FF645E60FF5555555500000000000000000000000000000000000000000000
          0000555555555555555500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000039393939B6B5B6FF2F3136FF1D88A0FF1D899FFF2A36
          3DFFB8B4B5FF3939393900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000055555555B4B2B3FF635657FF645556FFB5B1
          B1FF555555550000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000055555555A9AAAAAAA9AAAAAA5555
          5555000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnPremiumClick
      end
    end
    object Paginas: TcxPageControl
      AlignWithMargins = True
      Left = 0
      Top = 79
      Width = 671
      Height = 440
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 12
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Properties.ActivePage = tsEmail
      Properties.CustomButtons.Buttons = <>
      Properties.ShowFrame = True
      Properties.Style = 9
      Properties.TabSlants.Positions = []
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      TabSlants.Positions = []
      OnChange = PaginasChange
      OnDrawTabEx = PaginasDrawTabEx
      ClientRectBottom = 439
      ClientRectLeft = 1
      ClientRectRight = 670
      ClientRectTop = 24
      object tsSefaz: TcxTabSheet
        Caption = '  1. Identifica'#231#227'o na Sefaz  '
        ImageIndex = 0
        object panSefaz: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 669
          Height = 415
          Hint = ''
          Align = alClient
          Bevel.BorderSides = [fsBottom, fsLeft, fsRight]
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          TabOrder = 0
          object lc1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 669
            Height = 415
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = llfFlat
            object edCNPJ: TcxDBMaskEdit
              Left = 124
              Top = 112
              DataBinding.DataField = 'CNPJ'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 3
              Width = 189
            end
            object edFantasia: TcxDBTextEdit
              Left = 124
              Top = 79
              DataBinding.DataField = 'NomeFantasia'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 2
              Width = 532
            end
            object edRazao: TcxDBTextEdit
              Left = 124
              Top = 46
              ParentCustomHint = False
              DataBinding.DataField = 'RazaoSocial'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 1
              Width = 532
            end
            object edIE: TcxDBTextEdit
              Left = 467
              Top = 112
              DataBinding.DataField = 'IE'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 4
              Width = 189
            end
            object edCRT: TcxDBImageComboBox
              AlignWithMargins = True
              Left = 124
              Top = 13
              Margins.Top = 6
              Margins.Bottom = 6
              DataBinding.DataField = 'CRT'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.ImmediateDropDownWhenActivated = True
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = 'Simples Nacional'
                  ImageIndex = 0
                  Value = 1
                end
                item
                  Description = 'Simples Nacional - Excesso de sublimite de receita bruta'
                  Value = 2
                end
                item
                  Description = 'Regime Normal'
                  Value = 3
                end>
              Properties.OnChange = edCRTPropertiesChange
              Style.HotTrack = False
              Style.LookAndFeel.Kind = lfFlat
              Style.StyleController = FrmPri.escFlat
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.Kind = lfFlat
              TabOrder = 0
              Width = 285
            end
            object cxLabel3: TcxLabel
              Left = 13
              Top = 165
              Caption = 
                'Contabilidade: CNPJ do escrit'#243'rio ou CPF do contador que faz a c' +
                'ontabilidade da sua empresa:'
              ParentFont = False
              Style.HotTrack = False
            end
            object edContabilidade: TcxDBMaskEdit
              Left = 13
              Top = 194
              DataBinding.DataField = 'Contabilidade'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 6
              Width = 157
            end
            object lc1Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'CNPJ'
              Control = edCNPJ
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = lc1Group_Root
              CaptionOptions.Text = 'Nome Fantasia'
              Control = edFantasia
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 580
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = lc1Group_Root
              CaptionOptions.Text = 'Raz'#227'o Social'
              Control = edRazao
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 580
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahRight
              AlignVert = avClient
              CaptionOptions.Text = 'Inscr. Estadual'
              Control = edIE
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = lc1Group_Root
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = lc1Group_Root
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Regime Tribut'#225'rio'
              Control = edCRT
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 285
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem1: TdxLayoutItem
              Parent = lc1Group_Root
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = ' '
              CaptionOptions.Visible = False
              CaptionOptions.WordWrap = True
              Offsets.Top = 20
              Control = cxLabel3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 563
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object lcContabilidade: TdxLayoutItem
              Parent = lc1Group_Root
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 
                'Em alguns estados essa informa'#231#227'o '#233' obrigat'#243'ria, em outros '#233' opc' +
                'ional.'
              CaptionOptions.WordWrap = True
              CaptionOptions.Layout = clRight
              Control = edContabilidade
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 157
              ControlOptions.ShowBorder = False
              Index = 5
            end
          end
        end
      end
      object tsCert: TcxTabSheet
        Caption = ' 2. Certificado Digital '
        ImageIndex = 5
        object lcCD: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 669
          Height = 415
          Align = alClient
          TabOrder = 0
          object edPin: TcxDBTextEdit
            Left = 132
            Top = 99
            DataBinding.DataField = 'PinCert'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.HotTrack = False
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Width = 457
          end
          object edCertificado: TcxDBComboBox
            Left = 132
            Top = 13
            DataBinding.DataField = 'CertificadoDig'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.AutoSelect = False
            Properties.DropDownListStyle = lsEditFixedList
            Properties.ImmediateDropDownWhenActivated = True
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Style.HotTrack = False
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = False
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 524
          end
          object edTipoCert: TcxDBImageComboBox
            Left = 132
            Top = 46
            DataBinding.DataField = 'TipoCert'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.ImmediateDropDownWhenActivated = True
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = 'A1'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'A3'
                Value = 2
              end>
            Properties.OnChange = edTipoCertPropertiesChange
            Style.HotTrack = False
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 63
          end
          object lcCDGroup_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            LayoutLookAndFeel = llfFlat
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object lcPIN: TdxLayoutItem
            Parent = lcCDGroup_Root
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'PIN'
            Offsets.Top = 20
            Visible = False
            Control = edPin
            ControlOptions.OriginalHeight = 25
            ControlOptions.OriginalWidth = 457
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object lcCertificado: TdxLayoutItem
            Parent = lcCDGroup_Root
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Certificado Digital'
            Control = edCertificado
            ControlOptions.OriginalHeight = 25
            ControlOptions.OriginalWidth = 600
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcTipoCert: TdxLayoutItem
            Parent = lcCDGroup_Root
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Tipo do Certificado'
            Control = edTipoCert
            ControlOptions.OriginalHeight = 25
            ControlOptions.OriginalWidth = 63
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object tsEndereco: TcxTabSheet
        Caption = '  3. Endere'#231'o  '
        ImageIndex = 2
        object panEnd: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 669
          Height = 415
          Hint = ''
          Align = alClient
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          TabOrder = 0
          object lc3: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 669
            Height = 415
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = llfFlat
            object edLogr: TcxDBTextEdit
              Left = 89
              Top = 13
              DataBinding.DataField = 'End_Logradouro'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 0
              Width = 567
            end
            object edNumero: TcxDBTextEdit
              Left = 89
              Top = 46
              DataBinding.DataField = 'End_Numero'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 1
              Width = 140
            end
            object edBairro: TcxDBTextEdit
              Left = 89
              Top = 79
              DataBinding.DataField = 'End_Bairro'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 3
              Width = 567
            end
            object edTel: TcxDBTextEdit
              Left = 89
              Top = 145
              DataBinding.DataField = 'Telefone'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 5
              Width = 140
            end
            object edCodMun: TcxDBButtonEdit
              Left = 13
              Top = 208
              DataBinding.DataField = 'End_CodMun'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = edCodMunPropertiesButtonClick
              Properties.OnChange = edCodMunPropertiesChange
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              Style.StyleController = FrmPri.escFlat
              Style.ButtonStyle = bts3D
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 6
              Width = 164
            end
            object edMun: TcxDBTextEdit
              Left = 185
              Top = 208
              DataBinding.DataField = 'End_Municipio'
              DataBinding.DataSource = DS
              Enabled = False
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              StyleDisabled.TextColor = 5131854
              TabOrder = 7
              Width = 471
            end
            object edComplemento: TcxDBTextEdit
              Left = 552
              Top = 46
              DataBinding.DataField = 'End_Complemento'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 2
              Width = 104
            end
            object edCEP: TcxDBTextEdit
              Left = 89
              Top = 112
              DataBinding.DataField = 'End_CEP'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 4
              Width = 140
            end
            object lc3Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object LCItem1: TdxLayoutItem
              Parent = lc3Group_Root
              CaptionOptions.Text = 'Logradouro'
              Control = edLogr
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 524
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object LCItem3: TdxLayoutItem
              Parent = lc3Group3
              AlignHorz = ahLeft
              CaptionOptions.Text = 'N'#250'mero'
              Control = edNumero
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 140
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object LCItem4: TdxLayoutItem
              Parent = lc3Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Bairro'
              Control = edBairro
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 524
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object LCItem10: TdxLayoutItem
              Parent = lc3Group_Root
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Telefone'
              Control = edTel
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 140
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object lcCodMun: TdxLayoutItem
              Parent = lc3Group2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Munic'#237'pio - C'#243'digo do IBGE'
              CaptionOptions.Layout = clTop
              LayoutLookAndFeel = FrmPri.lfPadrao
              Offsets.Top = 7
              Control = edCodMun
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 164
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lc3Group2: TdxLayoutAutoCreatedGroup
              Parent = lc3Group_Root
              LayoutDirection = ldHorizontal
              Index = 5
              AutoCreated = True
            end
            object LCItem7: TdxLayoutItem
              Parent = lc3Group2
              AlignHorz = ahClient
              AlignVert = avBottom
              CaptionOptions.Text = 'Munic'#237'pio'
              CaptionOptions.Visible = False
              Control = edMun
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 428
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object LCItem2: TdxLayoutItem
              Parent = lc3Group3
              AlignHorz = ahRight
              CaptionOptions.Text = 'Complemento'
              Control = edComplemento
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 104
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lc3Group3: TdxLayoutAutoCreatedGroup
              Parent = lc3Group_Root
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object LCItem6: TdxLayoutItem
              Parent = lc3Group_Root
              AlignHorz = ahLeft
              CaptionOptions.Text = 'CEP'
              Control = edCEP
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 140
              ControlOptions.ShowBorder = False
              Index = 3
            end
          end
        end
      end
      object tsOpcoes: TcxTabSheet
        Caption = '  4. Op'#231#245'es  '
        ImageIndex = 3
        object panOpcoes: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 669
          Height = 415
          Hint = ''
          Align = alClient
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          TabOrder = 0
          object lc4: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 669
            Height = 415
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = llfFlat
            object edPedirEmail: TcxDBCheckBox
              Left = 13
              Top = 13
              Cursor = crHandPoint
              Caption = 
                'Mostrar tela com op'#231#227'o de enviar o DANFE por E-mail no final da ' +
                'venda'
              DataBinding.DataField = 'PedirEmail'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.Alignment = taLeftJustify
              Properties.FullFocusRect = True
              Properties.ImmediatePost = True
              Properties.MultiLine = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Style.HotTrack = False
              TabOrder = 1
              Transparent = True
              Width = 643
            end
            object edSerieNFe: TcxDBTextEdit
              Left = 118
              Top = 263
              DataBinding.DataField = 'SerieNFe'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 7
              Width = 106
            end
            object edInicioNFe: TcxDBSpinEdit
              Left = 118
              Top = 296
              DataBinding.DataField = 'InicioNFe'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.ImmediatePost = True
              Properties.MaxValue = 999999.000000000000000000
              Properties.MinValue = 1.000000000000000000
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 8
              Width = 106
            end
            object edHom: TcxDBCheckBox
              Left = 28
              Top = 329
              Cursor = crHandPoint
              Caption = 'Emiss'#227'o em modo teste/homologa'#231#227'o (sem valor fiscal)'
              DataBinding.DataField = 'tpAmbNFe'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.Alignment = taLeftJustify
              Properties.DisplayChecked = '2'
              Properties.DisplayUnchecked = '1'
              Properties.FullFocusRect = True
              Properties.ImmediatePost = True
              Properties.MultiLine = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '2'
              Properties.ValueUnchecked = '1'
              Style.HotTrack = False
              TabOrder = 9
              Width = 353
            end
            object btnInstalaDepend: TcxButton
              Left = 28
              Top = 362
              Width = 469
              Height = 25
              Caption = 'Reinstalar programas e arquivos necess'#225'rios para emiss'#227'o de NF'
              TabOrder = 10
              OnClick = btnInstalaDependClick
            end
            object cxLabel1: TcxLabel
              Left = 28
              Top = 238
              Caption = 
                'ATEN'#199#195'O: As op'#231#245'es avan'#231'adas s'#243' devem ser alteradas com orienta'#231 +
                #227'o da equipe de atendimento Nextar.'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.HotTrack = False
              Style.TextColor = clRed
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              Properties.WordWrap = True
              Width = 556
            end
            object edPermCredICMS: TcxDBCheckBox
              Left = 13
              Top = 46
              Cursor = crHandPoint
              Caption = 'Permitir aproveitamento de cr'#233'dito de ICMS'
              DataBinding.DataField = 'nfe_permite_cred_icms'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.FullFocusRect = True
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Style.HotTrack = False
              TabOrder = 2
              Transparent = True
              OnClick = edPermCredICMSClick
            end
            object btnAvancadas: TcxButton
              Left = 13
              Top = 184
              Width = 113
              Height = 23
              Cursor = crHandPoint
              Caption = 'Op'#231#245'es avan'#231'adas'
              SpeedButtonOptions.GroupIndex = 55
              SpeedButtonOptions.AllowAllUp = True
              TabOrder = 0
              TabStop = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 5592405
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              OnClick = btnAvancadasClick
            end
            object edICMS: TcxDBCurrencyEdit
              Left = 357
              Top = 46
              DataBinding.DataField = 'nfe_perc_cred_icms'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.DisplayFormat = '0.##'
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 3
              Width = 106
            end
            object edBaseICMSSt: TcxDBCheckBox
              Left = 13
              Top = 112
              Caption = 'ICMS ST: Usar a base de c'#225'lculo que for maior entre Pauta e MVA'
              DataBinding.DataField = 'UsarPautaMaiorMVA'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.FullFocusRect = True
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Style.HotTrack = False
              TabOrder = 11
              Transparent = True
            end
            object edTipoDocPadrao: TcxDBImageComboBox
              Left = 467
              Top = 79
              DataBinding.DataField = 'tipodoc_padrao'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.Items = <
                item
                  Description = 'Selecionar a cada venda'
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = 'NFC-e'
                  Value = 1
                end
                item
                  Description = 'NF-e'
                  Value = 2
                end>
              Style.HotTrack = False
              TabOrder = 5
              Width = 189
            end
            object edEmitirNFeVenda: TcxDBCheckBox
              Left = 13
              Top = 79
              Cursor = crHandPoint
              Caption = 'Emitir NF-e para Vendas'
              DataBinding.DataField = 'nfe_venda'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Style.HotTrack = False
              TabOrder = 4
              Transparent = True
              OnClick = edEmitirNFeVendaClick
            end
            object edPedidoNaObs: TcxDBCheckBox
              Left = 13
              Top = 145
              Caption = 'Adicionar n'#250'mero do pedido nas observa'#231#245'es fiscais da NF-e'
              DataBinding.DataField = 'nfe_pedido_na_obs'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.FullFocusRect = True
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Style.HotTrack = False
              TabOrder = 12
              Transparent = True
            end
            object lc4Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              ButtonOptions.Buttons = <>
              Hidden = True
              ItemIndex = 6
              ShowBorder = False
              Index = -1
            end
            object lc4Item2: TdxLayoutItem
              Parent = lc4Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'cxDBCheckBox2'
              CaptionOptions.Visible = False
              Control = edPedirEmail
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 450
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcgr_avancado: TdxLayoutGroup
              Parent = lc4Group_Root
              AlignHorz = ahClient
              AlignVert = avBottom
              CaptionOptions.Text = 'Op'#231#245'es avan'#231'adas'
              Visible = False
              ButtonOptions.Buttons = <>
              Index = 4
            end
            object lcSerieNFE: TdxLayoutItem
              Parent = lcgr_avancado
              AlignHorz = ahLeft
              CaptionOptions.Text = 'S'#233'rie da NF-e'
              LayoutLookAndFeel = llfFlat
              Control = edSerieNFe
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 106
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcInicioNFE: TdxLayoutItem
              Parent = lcgr_avancado
              AlignHorz = ahLeft
              CaptionOptions.Text = 'N'#250'mero Inicial'
              Control = edInicioNFe
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 106
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lctpAmb: TdxLayoutItem
              Parent = lcgr_avancado
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Emiss'#227'o'
              CaptionOptions.Visible = False
              Control = edHom
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 353
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object lc4Item3: TdxLayoutItem
              Parent = lcgr_avancado
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnInstalaDepend
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 469
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object lc4Item4: TdxLayoutItem
              Parent = lcgr_avancado
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxLabel1'
              CaptionOptions.Visible = False
              Control = cxLabel1
              ControlOptions.OriginalHeight = 17
              ControlOptions.OriginalWidth = 556
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem2: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = edPermCredICMS
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 282
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object LCItem5: TdxLayoutItem
              Parent = lc4Group_Root
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnAvancadas
              ControlOptions.OriginalHeight = 23
              ControlOptions.OriginalWidth = 113
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcAliqCredICMS: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Al'#237'quota'
              Control = edICMS
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 106
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = lc4Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = lc4Group_Root
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = edBaseICMSSt
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object lcTipoDocPadrao: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahRight
              AlignVert = avClient
              CaptionOptions.Text = 'Tipo de NF padr'#227'o para vendas'
              Offsets.Left = 20
              Control = edTipoDocPadrao
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = lc4Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
            object lcEmitirNFeVenda: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'cxDBCheckBox2'
              CaptionOptions.Visible = False
              Control = edEmitirNFeVenda
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 166
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcPedidoNaObs: TdxLayoutItem
              Parent = lc4Group_Root
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = edPedidoNaObs
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 386
              ControlOptions.ShowBorder = False
              Index = 6
            end
          end
        end
      end
      object tsEmail: TcxTabSheet
        Caption = '  5. E-mail  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        object lc5: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 669
          Height = 415
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = llfFlat
          object edFromEmail: TcxDBTextEdit
            Left = 177
            Top = 47
            DataBinding.DataField = 'FromEmail'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.HotTrack = False
            TabOrder = 1
            Width = 479
          end
          object edCorpoEmail: TcxDBMemo
            Left = 13
            Top = 232
            DataBinding.DataField = 'CorpoEmail'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.HotTrack = False
            TabOrder = 4
            Height = 88
            Width = 643
          end
          object edAssunto: TcxDBTextEdit
            Left = 177
            Top = 80
            DataBinding.DataField = 'AssuntoEmail'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.HotTrack = False
            TabOrder = 2
            Width = 479
          end
          object cxLabel2: TcxLabel
            Left = 13
            Top = 13
            Caption = 'Par'#226'metros para o envio do Danfe por e-mail:'
            ParentFont = False
            Style.HotTrack = False
            Style.TextStyle = [fsUnderline]
            Transparent = True
          end
          object edModEmailNFE: TncDocEdit
            Left = 13
            Top = 156
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
              end>
            Style.HotTrack = False
            TabOrder = 3
            Text = 'edModEmailNFE'
            Tipo = 7
            Width = 643
          end
          object lc5Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object lcFromEmail: TdxLayoutItem
            Parent = lc5Group_Root
            AlignHorz = ahClient
            CaptionOptions.Text = 'Endere'#231'o de e-mail da loja'
            Control = edFromEmail
            ControlOptions.OriginalHeight = 25
            ControlOptions.OriginalWidth = 510
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcCorpoEmail: TdxLayoutItem
            Parent = lc5Group_Root
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Texto do E-mail'
            CaptionOptions.Layout = clTop
            Offsets.Top = 20
            Visible = False
            Control = edCorpoEmail
            ControlOptions.AlignVert = avTop
            ControlOptions.OriginalHeight = 88
            ControlOptions.OriginalWidth = 674
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object lcAssunto: TdxLayoutItem
            Parent = lc5Group_Root
            CaptionOptions.Text = 'Assunto do e-mail'
            Control = edAssunto
            ControlOptions.OriginalHeight = 25
            ControlOptions.OriginalWidth = 510
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object lc5Item1: TdxLayoutItem
            Parent = lc5Group_Root
            CaptionOptions.Text = 'cxLabel2'
            CaptionOptions.Visible = False
            Offsets.Bottom = 5
            Control = cxLabel2
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcModEmailNFE: TdxLayoutItem
            Parent = lc5Group_Root
            CaptionOptions.Text = 'Modelo de Danfe a ser enviado por e-mail'
            CaptionOptions.Layout = clTop
            Offsets.Top = 20
            Control = edModEmailNFE
            ControlOptions.OriginalHeight = 25
            ControlOptions.OriginalWidth = 674
            ControlOptions.ShowBorder = False
            Index = 3
          end
        end
      end
    end
    object panEstado: TLMDSimplePanel
      AlignWithMargins = True
      Left = 0
      Top = 42
      Width = 671
      Height = 25
      Hint = ''
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Bevel.Mode = bmCustom
      TabOrder = 2
      object cxLabel4: TcxLabel
        Left = 0
        Top = 0
        Align = alLeft
        Caption = 'Estado '
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Vert = taVCenter
        AnchorY = 13
      end
      object edEstado: TcxDBImageComboBox
        Left = 49
        Top = 0
        Align = alLeft
        DataBinding.DataField = 'End_UF'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.ImmediateDropDownWhenActivated = True
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <
          item
            Description = 'Acre'
            ImageIndex = 0
            Value = 'AC'
          end
          item
            Description = 'Alagoas'
            Value = 'AL'
          end
          item
            Description = 'Amap'#225
            Value = 'AP'
          end
          item
            Description = 'Amazonas'
            Value = 'AM'
          end
          item
            Description = 'Bahia'
            Value = 'BA'
          end
          item
            Description = 'Cear'#225
            Value = 'CE'
          end
          item
            Description = 'Distrito Federal'
            Value = 'DF'
          end
          item
            Description = 'Esp'#237'rito Santo'
            Value = 'ES'
          end
          item
            Description = 'Goi'#225's'
            Value = 'GO'
          end
          item
            Description = 'Maranh'#227'o'
            Value = 'MA'
          end
          item
            Description = 'Mato Grosso'
            Value = 'MT'
          end
          item
            Description = 'Mato Grosso do Sul'
            Value = 'MS'
          end
          item
            Description = 'Minas Gerais'
            Value = 'MG'
          end
          item
            Description = 'Par'#225
            Value = 'PA'
          end
          item
            Description = 'Para'#237'ba'
            Value = 'PB'
          end
          item
            Description = 'Paran'#225
            Value = 'PR'
          end
          item
            Description = 'Pernambuco'
            Value = 'PE'
          end
          item
            Description = 'Piau'#237
            Value = 'PI'
          end
          item
            Description = 'Rio de Janeiro'
            Value = 'RJ'
          end
          item
            Description = 'Rio Grande do Norte'
            Value = 'RN'
          end
          item
            Description = 'Rio Grande do Sul'
            Value = 'RS'
          end
          item
            Description = 'Rond'#244'nia'
            Value = 'RO'
          end
          item
            Description = 'Roraima'
            Value = 'RR'
          end
          item
            Description = 'Santa Catarina'
            Value = 'SC'
          end
          item
            Description = 'S'#227'o Paulo'
            Value = 'SP'
          end
          item
            Description = 'Sergipe'
            Value = 'SE'
          end
          item
            Description = 'Tocantins'
            Value = 'TO'
          end>
        Properties.OnChange = edEstadoPropertiesChange
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 248
      end
    end
  end
  inherited LMDSimplePanel1: TLMDSimplePanel
    Top = 539
    Width = 671
    Margins.Top = 0
    ExplicitTop = 539
    ExplicitWidth = 671
    inherited btCancelar: TcxButton
      Width = 80
      ExplicitWidth = 80
    end
  end
  object MT: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'CRT'
        DataType = ftByte
      end
      item
        Name = 'EmitirNFCe'
        DataType = ftBoolean
      end
      item
        Name = 'EmitirNFE'
        DataType = ftBoolean
      end
      item
        Name = 'AutoPrintNFCe'
        DataType = ftBoolean
      end
      item
        Name = 'ModeloNFE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ModeloNFCe'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'SerieNFCe'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'SerieNFe'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'InicioNFe'
        DataType = ftLongWord
      end
      item
        Name = 'InicioNFCe'
        DataType = ftLongWord
      end
      item
        Name = 'RazaoSocial'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NomeFantasia'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'End_Logradouro'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'End_Numero'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'End_Bairro'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'End_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'End_CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'End_Municipio'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'End_CodMun'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'End_CodUF'
        DataType = ftByte
      end
      item
        Name = 'Telefone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PedirEmail'
        DataType = ftByte
      end
      item
        Name = 'PedirCPF'
        DataType = ftByte
      end
      item
        Name = 'MostrarDadosNFE'
        DataType = ftBoolean
      end
      item
        Name = 'CertificadoDig'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'tpAmb'
        DataType = ftByte
      end
      item
        Name = 'CSC'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'IdCSC'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'End_Complemento'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FromEmail'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FromName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CorpoEmail'
        DataType = ftMemo
      end
      item
        Name = 'TipoCert'
        DataType = ftByte
      end
      item
        Name = 'AssuntoEmail'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.72.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 498
    Top = 418
    object MTnfe_pedido_na_obs: TBooleanField
      FieldName = 'nfe_pedido_na_obs'
    end
    object MTUsarPautaMaiorMVA: TBooleanField
      FieldName = 'UsarPautaMaiorMVA'
    end
    object MTnfe_venda: TBooleanField
      FieldName = 'nfe_venda'
    end
    object MTtipodoc_padrao: TByteField
      Alignment = taLeftJustify
      FieldName = 'tipodoc_padrao'
    end
    object MTsat_modelo: TByteField
      Alignment = taLeftJustify
      FieldName = 'sat_modelo'
    end
    object MTsat_config: TStringField
      FieldName = 'sat_config'
      Size = 50
    end
    object MTCRT: TByteField
      FieldName = 'CRT'
    end
    object MTEmitirNFE: TBooleanField
      FieldName = 'EmitirNFE'
    end
    object MTnfe_permite_cred_icms: TBooleanField
      FieldName = 'nfe_permite_cred_icms'
    end
    object MTnfe_perc_cred_icms: TFloatField
      FieldName = 'nfe_perc_cred_icms'
    end
    object MTModeloNFE: TStringField
      FieldName = 'ModeloNFE'
      Size = 5
    end
    object MTSerieNFe: TStringField
      FieldName = 'SerieNFe'
      Size = 5
    end
    object MTInicioNFe: TLongWordField
      FieldName = 'InicioNFe'
    end
    object MTRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Size = 100
    end
    object MTNomeFantasia: TStringField
      FieldName = 'NomeFantasia'
      Size = 50
    end
    object MTCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object MTIE: TStringField
      FieldName = 'IE'
    end
    object MTEnd_Logradouro: TStringField
      FieldName = 'End_Logradouro'
      Size = 100
    end
    object MTEnd_Numero: TStringField
      FieldName = 'End_Numero'
      Size = 10
    end
    object MTEnd_Bairro: TStringField
      FieldName = 'End_Bairro'
      Size = 40
    end
    object MTEnd_UF: TStringField
      FieldName = 'End_UF'
      Size = 2
    end
    object MTEnd_CEP: TStringField
      FieldName = 'End_CEP'
      Size = 9
    end
    object MTEnd_Municipio: TStringField
      FieldName = 'End_Municipio'
      Size = 50
    end
    object MTEnd_CodMun: TStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object MTEnd_CodUF: TByteField
      FieldName = 'End_CodUF'
    end
    object MTTelefone: TStringField
      FieldName = 'Telefone'
    end
    object MTPedirEmail: TByteField
      FieldName = 'PedirEmail'
    end
    object MTPedirCPF: TByteField
      FieldName = 'PedirCPF'
    end
    object MTMostrarDadosNFE: TBooleanField
      FieldName = 'MostrarDadosNFE'
    end
    object MTCertificadoDig: TStringField
      FieldName = 'CertificadoDig'
      Size = 300
    end
    object MTEnd_Complemento: TStringField
      FieldName = 'End_Complemento'
    end
    object MTFromEmail: TStringField
      FieldName = 'FromEmail'
      Size = 100
    end
    object MTFromName: TStringField
      FieldName = 'FromName'
      Size = 50
    end
    object MTTipoCert: TByteField
      Alignment = taLeftJustify
      FieldName = 'TipoCert'
    end
    object MTAssuntoEmail: TStringField
      FieldName = 'AssuntoEmail'
      Size = 100
    end
    object MTCorpoEmail: TMemoField
      FieldName = 'CorpoEmail'
      BlobType = ftMemo
    end
    object MTPinCert: TStringField
      FieldName = 'PinCert'
      Size = 50
    end
    object MTCodigoAtivacao: TStringField
      DisplayWidth = 50
      FieldName = 'CodigoAtivacao'
      Size = 50
    end
    object MTtpAmbNFe: TByteField
      FieldName = 'tpAmbNFe'
    end
    object MTContabilidade: TStringField
      FieldName = 'Contabilidade'
      Size = 19
    end
  end
  object DS: TDataSource
    DataSet = MT
    Left = 138
    Top = 410
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 512
    Top = 176
    object llfUltraFlat: TdxLayoutCxLookAndFeel
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
    end
    object llfFlat: TdxLayoutCxLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -13
      GroupOptions.CaptionOptions.Font.Name = 'Segoe UI'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -13
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 555
    Top = 394
  end
  object OpenDlg: TOpenDialog
    Filter = 'Arquivos DLL|*.dll'
    Left = 611
    Top = 217
  end
  object h: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 555
    Top = 265
  end
end
