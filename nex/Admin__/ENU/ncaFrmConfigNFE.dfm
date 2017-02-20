inherited FrmConfigNFE: TFrmConfigNFE
  Caption = 'NFC-e'
  ClientHeight = 511
  ClientWidth = 648
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Segoe UI'
  OnDestroy = FormDestroy
  ExplicitWidth = 654
  ExplicitHeight = 539
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    Width = 628
    Height = 449
    Align = alClient
    ExplicitWidth = 628
    ExplicitHeight = 449
    object panTopo: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 628
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
          000000200806000000737A7AF4000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
          0001D4494441545847C597416E8330104523F548394D2FC0325D70885CA32BF6
          25BB1CA3472851406AB7D935B8FE884F2703B68704DA277D8D6D1CCFCF809DB0
          71CE75DAED762ECFF33F117231EF6000170E8783ABEBDA5555B58AB0367220D7
          A4014CF05CBDDA3EB2CDBE3506AF2147D0005C7ADAA7E737474DF42FB2DFB6ED
          20032D72A40C5CB9709FB03380D88BE31DD200C6A900578B8121A18C726146C0
          C48C2FAFEF37D715F60A7846467A8D0CC80AB01D6056053E74F4FA44037D4A1B
          A002D82AE0C56F1B944C4C19B055C0EB82C6C2604D5305DC7EBF9F25891ED7FD
          A881A669706155902369A0288A5992E871DD8F1AE02D5893D3E9947E08A56B8B
          3CDFF81CA21CC7CE907D703E9F9306B00DE7326CCFAEE791DB52B6A306501E0F
          667FA1B10459960D021603A30A1C8F475796A559981FC2720B7EEBD58345E710
          9B7FD733C005B7DB6D27C09232CA6B8F1A183165003039B01A408EA081D04928
          17D4DF5C471033603A09355C30959CF16E03A95B00908489C0543B66207A0B52
          0FA18609A509103160FA3F60DE05FADBB3FFA881E039A00D4C45103160FE4B76
          4364C14916AFC0824771BC0238A5D6267A12E2C51113F0FE861F26EC59448CA1
          8D08C96B980BF1739CC3B69C877EF0E5F47F5ECFDDE6077CCD8A01A8EDD11700
          00000049454E44AE426082}
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitHeight = 34
      end
      object edEmitirNFCe: TcxDBCheckBox
        Left = 35
        Top = 0
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Emitir NFC-e'
        DataBinding.DataField = 'EmitirNFCe'
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
        Width = 153
      end
      object btnPremium: TcxButton
        Left = 350
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
      Top = 72
      Width = 628
      Height = 377
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
      Properties.ActivePage = tsSefaz
      Properties.CustomButtons.Buttons = <>
      Properties.ShowFrame = True
      Properties.Style = 9
      Properties.TabSlants.Positions = []
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      TabSlants.Positions = []
      OnChange = PaginasChange
      OnDrawTabEx = PaginasDrawTabEx
      ClientRectBottom = 376
      ClientRectLeft = 1
      ClientRectRight = 627
      ClientRectTop = 24
      object tsSefaz: TcxTabSheet
        Caption = '  1. Identifica'#231#227'o na Sefaz  '
        ImageIndex = 0
        object panSefaz: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 626
          Height = 352
          Hint = ''
          Align = alClient
          Bevel.BorderSides = [fsBottom, fsLeft, fsRight]
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          TabOrder = 0
          object lc1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 626
            Height = 352
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = llfFlat
            object edEstado: TcxDBImageComboBox
              Left = 59
              Top = 13
              DataBinding.DataField = 'End_UF'
              DataBinding.DataSource = DS
              ParentFont = False
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
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI Semibold'
              Style.Font.Style = [fsBold]
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 558
            end
            object edIDCSC: TcxDBTextEdit
              Left = 59
              Top = 56
              DataBinding.DataField = 'IdCSC'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 1
              Width = 93
            end
            object edCSC: TcxDBTextEdit
              Left = 59
              Top = 89
              DataBinding.DataField = 'CSC'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 3
              Width = 558
            end
            object edCertificado: TcxDBComboBox
              Left = 13
              Top = 152
              DataBinding.DataField = 'CertificadoDig'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.AutoSelect = False
              Properties.DropDownListStyle = lsEditFixedList
              Properties.ImmediateDropDownWhenActivated = True
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 4
              Width = 626
            end
            object edTipoCert: TcxDBImageComboBox
              Left = 59
              Top = 185
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
              TabOrder = 5
              Width = 63
            end
            object edPin: TcxDBTextEdit
              Left = 156
              Top = 185
              DataBinding.DataField = 'PinCert'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxLabel3: TcxLabel
              Left = 160
              Top = 60
              Caption = '* Esse campo tamb'#233'm '#233' conhecido como ID Token'
              ParentFont = False
              Style.HotTrack = False
              Style.TextColor = 4539717
              Transparent = True
            end
            object lc1Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object lcEstado: TdxLayoutItem
              Parent = lc1Group_Root
              CaptionOptions.Text = 'Estado'
              Control = edEstado
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcIDCSC: TdxLayoutItem
              Parent = lc1Group3
              AlignHorz = ahLeft
              CaptionOptions.Text = 'ID CSC'
              Offsets.Top = 10
              Control = edIDCSC
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcTokenCSC: TdxLayoutItem
              Parent = lc1Group_Root
              CaptionOptions.Text = 'CSC'
              Control = edCSC
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lcCertificado: TdxLayoutItem
              Parent = lc1Group1
              AlignHorz = ahClient
              CaptionOptions.Text = 'Certificado Digital'
              CaptionOptions.Layout = clTop
              Offsets.Top = 7
              Control = edCertificado
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lc1Group1: TdxLayoutAutoCreatedGroup
              Parent = lc1Group_Root
              Index = 3
              AutoCreated = True
            end
            object lcTipoCert: TdxLayoutItem
              Parent = lc1Group2
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Tipo'
              Control = edTipoCert
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcPIN: TdxLayoutItem
              Parent = lc1Group2
              AlignHorz = ahClient
              CaptionOptions.Text = 'PIN'
              Visible = False
              Control = edPin
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lc1Group2: TdxLayoutAutoCreatedGroup
              Parent = lc1Group1
              AlignVert = avBottom
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object lc1Group3: TdxLayoutAutoCreatedGroup
              Parent = lc1Group_Root
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object lc1Item1: TdxLayoutItem
              Parent = lc1Group3
              AlignVert = avBottom
              CaptionOptions.Text = 'cxLabel3'
              CaptionOptions.Visible = False
              Control = cxLabel3
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
      end
      object tsDadosEmp: TcxTabSheet
        Caption = '  2. Dados da Empresa  '
        ImageIndex = 1
        object panDadosEmp: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 626
          Height = 352
          Hint = ''
          Align = alClient
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          TabOrder = 0
          object lc2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 626
            Height = 352
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = llfFlat
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
              Width = 481
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
              Width = 515
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
              Width = 515
            end
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
            object edIE: TcxDBTextEdit
              Left = 124
              Top = 145
              DataBinding.DataField = 'IE'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 4
              Width = 189
            end
            object lc2Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object lcCRT: TdxLayoutItem
              Parent = lc2Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Regime Tribut'#225'rio'
              Control = edCRT
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcRazao: TdxLayoutItem
              Parent = lc2Group_Root
              CaptionOptions.Text = 'Raz'#227'o Social'
              Control = edRazao
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcFantasia: TdxLayoutItem
              Parent = lc2Group_Root
              CaptionOptions.Text = 'Nome Fantasia'
              Control = edFantasia
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lcCNPJ: TdxLayoutItem
              Parent = lc2Group_Root
              AlignHorz = ahLeft
              CaptionOptions.Text = 'CNPJ'
              Control = edCNPJ
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object lcIE: TdxLayoutItem
              Parent = lc2Group_Root
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Inscri'#231#227'o Estadual'
              Control = edIE
              ControlOptions.ShowBorder = False
              Index = 4
            end
          end
        end
      end
      object tsEndereco: TcxTabSheet
        Caption = '  3. Endere'#231'o  '
        ImageIndex = 2
        object panEnd: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 626
          Height = 352
          Hint = ''
          Align = alClient
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          TabOrder = 0
          object lc3: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 626
            Height = 352
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
              Width = 550
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
              Width = 550
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
              Style.BorderStyle = ebsFlat
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = False
              Style.StyleController = FrmPri.escFlat
              Style.ButtonStyle = btsFlat
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
              Width = 454
            end
            object edComplemento: TcxDBTextEdit
              Left = 509
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
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object LCItem3: TdxLayoutItem
              Parent = lc3Group3
              AlignHorz = ahLeft
              CaptionOptions.Text = 'N'#250'mero'
              Control = edNumero
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object LCItem4: TdxLayoutItem
              Parent = lc3Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Bairro'
              Control = edBairro
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object LCItem10: TdxLayoutItem
              Parent = lc3Group_Root
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Telefone'
              Control = edTel
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
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object LCItem2: TdxLayoutItem
              Parent = lc3Group3
              AlignHorz = ahRight
              CaptionOptions.Text = 'Complemento'
              Control = edComplemento
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
          Width = 626
          Height = 352
          Hint = ''
          Align = alClient
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          TabOrder = 0
          object lc4: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 626
            Height = 352
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = llfFlat
            object edPedirCPF: TcxDBCheckBox
              Left = 13
              Top = 13
              Caption = 'Mostrar tela com op'#231#227'o de informar o CPF no final da venda'
              DataBinding.DataField = 'PedirCPF'
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
              TabOrder = 0
              Width = 626
            end
            object edPedirEmail: TcxDBCheckBox
              Left = 13
              Top = 46
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
              Width = 626
            end
            object btnAvancadas: TcxButton
              Left = 500
              Top = 79
              Width = 113
              Height = 23
              Cursor = crHandPoint
              Caption = 'Op'#231#245'es avan'#231'adas'
              SpeedButtonOptions.GroupIndex = 55
              SpeedButtonOptions.AllowAllUp = True
              TabOrder = 2
              TabStop = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 5592405
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              OnClick = btnAvancadasClick
            end
            object edSerieNFCE: TcxDBTextEdit
              Left = 122
              Top = 200
              DataBinding.DataField = 'SerieNFCe'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 4
              Width = 106
            end
            object edInicioNFCE: TcxDBSpinEdit
              Left = 122
              Top = 233
              DataBinding.DataField = 'InicioNFCe'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.ImmediatePost = True
              Properties.MaxValue = 999999
              Properties.MinValue = 1
              Style.HotTrack = False
              Style.StyleController = FrmPri.escFlat
              TabOrder = 5
              Width = 106
            end
            object edHom: TcxDBCheckBox
              Left = 28
              Top = 266
              Caption = 'Emiss'#227'o em modo teste/homologa'#231#227'o (sem valor fiscal)'
              DataBinding.DataField = 'tpAmb'
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
              TabOrder = 6
              Width = 429
            end
            object btnInstalaDepend: TcxButton
              Left = 28
              Top = 299
              Width = 469
              Height = 25
              Caption = 
                'Reinstalar programas e arquivos necess'#225'rios para emiss'#227'o de NFC-' +
                'e'
              TabOrder = 7
              OnClick = btnInstalaDependClick
            end
            object cxLabel1: TcxLabel
              Left = 28
              Top = 175
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
              Width = 558
            end
            object lc4Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object lc4Item1: TdxLayoutItem
              Parent = lc4Group3
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = edPedirCPF
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lc4Item2: TdxLayoutItem
              Parent = lc4Group3
              CaptionOptions.Text = 'cxDBCheckBox2'
              CaptionOptions.Visible = False
              Control = edPedirEmail
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object LCItem5: TdxLayoutItem
              Parent = lc4Group3
              AlignHorz = ahRight
              AlignVert = avBottom
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnAvancadas
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lcgr_avancado: TdxLayoutGroup
              Parent = lc4Group_Root
              AlignHorz = ahClient
              AlignVert = avBottom
              CaptionOptions.Text = 'Op'#231#245'es avan'#231'adas'
              Visible = False
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object lcSerieNFCE: TdxLayoutItem
              Parent = lcgr_avancado
              AlignHorz = ahLeft
              CaptionOptions.Text = 'S'#233'rie da NFC-e'
              LayoutLookAndFeel = llfFlat
              Control = edSerieNFCE
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcInicioNFCE: TdxLayoutItem
              Parent = lcgr_avancado
              AlignHorz = ahLeft
              CaptionOptions.Text = 'N'#250'mero Inicial'
              Control = edInicioNFCE
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lctpAmb: TdxLayoutItem
              Parent = lcgr_avancado
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Emiss'#227'o'
              CaptionOptions.Visible = False
              Control = edHom
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object lc4Item3: TdxLayoutItem
              Parent = lcgr_avancado
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxButton1'
              CaptionOptions.Visible = False
              Control = btnInstalaDepend
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object lc4Group3: TdxLayoutAutoCreatedGroup
              Parent = lc4Group_Root
              Index = 0
              AutoCreated = True
            end
            object lc4Item4: TdxLayoutItem
              Parent = lcgr_avancado
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxLabel1'
              CaptionOptions.Visible = False
              Control = cxLabel1
              ControlOptions.ShowBorder = False
              Index = 0
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
          Width = 626
          Height = 352
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
            Width = 462
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
            Width = 626
          end
          object edAssunto: TcxDBTextEdit
            Left = 177
            Top = 80
            DataBinding.DataField = 'AssuntoEmail'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.HotTrack = False
            TabOrder = 2
            Width = 462
          end
          object cxLabel2: TcxLabel
            Left = 13
            Top = 13
            Caption = 'Par'#226'metros para o envio do Danfce por e-mail:'
            ParentFont = False
            Style.HotTrack = False
            Style.TextStyle = [fsUnderline]
            Transparent = True
          end
          object edModEmailNFCE: TncDocEdit
            Left = 13
            Top = 156
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
              end>
            Style.HotTrack = False
            TabOrder = 3
            Text = 'edModEmailNFCE'
            Tipo = 4
            Width = 626
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
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object lcAssunto: TdxLayoutItem
            Parent = lc5Group_Root
            CaptionOptions.Text = 'Assunto do e-mail'
            Control = edAssunto
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object lc5Item1: TdxLayoutItem
            Parent = lc5Group_Root
            CaptionOptions.Text = 'cxLabel2'
            CaptionOptions.Visible = False
            Offsets.Bottom = 5
            Control = cxLabel2
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lc5Item2: TdxLayoutItem
            Parent = lc5Group_Root
            CaptionOptions.Text = 'Modelo de Danfce a ser enviado por e-mail'
            CaptionOptions.Layout = clTop
            Offsets.Top = 20
            Control = edModEmailNFCE
            ControlOptions.ShowBorder = False
            Index = 3
          end
        end
      end
    end
    object lbContador: TcxLabel
      AlignWithMargins = True
      Left = 0
      Top = 39
      Margins.Left = 0
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Caption = 
        'Solicite a ajuda do seu contador para preencher os campos abaixo' +
        '.'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHotLight
      Style.IsFontAssigned = True
    end
  end
  inherited LMDSimplePanel1: TLMDSimplePanel
    Top = 469
    Width = 628
    Margins.Top = 0
    ExplicitTop = 469
    ExplicitWidth = 628
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
    Version = '7.64.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 98
    Top = 346
    object MTCRT: TByteField
      FieldName = 'CRT'
    end
    object MTEmitirNFCe: TBooleanField
      FieldName = 'EmitirNFCe'
    end
    object MTEmitirNFE: TBooleanField
      FieldName = 'EmitirNFE'
    end
    object MTAutoPrintNFCe: TBooleanField
      FieldName = 'AutoPrintNFCe'
    end
    object MTModeloNFE: TStringField
      FieldName = 'ModeloNFE'
      Size = 5
    end
    object MTModeloNFCe: TStringField
      FieldName = 'ModeloNFCe'
      Size = 5
    end
    object MTSerieNFCe: TStringField
      FieldName = 'SerieNFCe'
      Size = 5
    end
    object MTSerieNFe: TStringField
      FieldName = 'SerieNFe'
      Size = 5
    end
    object MTInicioNFe: TLongWordField
      FieldName = 'InicioNFe'
    end
    object MTInicioNFCe: TLongWordField
      FieldName = 'InicioNFCe'
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
    object MTtpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object MTCSC: TStringField
      FieldName = 'CSC'
      Size = 100
    end
    object MTIdCSC: TStringField
      FieldName = 'IdCSC'
      Size = 10
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
  end
  object DS: TDataSource
    DataSet = MT
    Left = 138
    Top = 370
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 360
    Top = 288
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
    Left = 275
    Top = 362
  end
end
