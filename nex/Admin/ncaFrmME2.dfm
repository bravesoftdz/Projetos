object FrmME2: TFrmME2
  Left = 0
  Top = 0
  Caption = 'FrmME2'
  ClientHeight = 573
  ClientWidth = 1135
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panCompra: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 39
    Width = 1135
    Height = 34
    Hint = ''
    Margins.Left = 0
    Margins.Top = 1
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 0
    object cbCompra: TcxCheckBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Atualizar custo dos produtos (compra)'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.Kind = lfFlat
      Style.TextColor = clHotLight
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 0
      Transparent = True
      OnClick = cbCompraClick
    end
  end
  object panTot: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 507
    Width = 1135
    Height = 66
    Hint = ''
    Margins.Left = 0
    Margins.Top = 1
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 2
  end
  object panLista: TLMDSimplePanel
    AlignWithMargins = True
    Left = 7
    Top = 230
    Width = 1121
    Height = 276
    Hint = ''
    Margins.Left = 7
    Margins.Top = 1
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alClient
    Bevel.Mode = bmStandard
    Color = clWhite
    TabOrder = 1
  end
  object cbFocus: TCheckBox
    Left = 0
    Top = 3000
    Width = 590
    Height = 17
    Caption = 'cbFocus'
    TabOrder = 3
  end
  object panTopo: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 1135
    Height = 38
    Hint = ''
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    Color = 14540253
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object LMDDrawEdge1: TLMDDrawEdge
      AlignWithMargins = True
      Left = 316
      Top = 4
      Width = 3
      Height = 30
      Margins.Top = 4
      Margins.Bottom = 4
      Align = alLeft
      FrameSides = [fsLeft]
      ExplicitLeft = 307
      ExplicitHeight = 26
    end
    object sepDepois: TLMDDrawEdge
      AlignWithMargins = True
      Left = 394
      Top = 4
      Width = 3
      Height = 30
      Margins.Top = 4
      Margins.Right = 0
      Margins.Bottom = 4
      Align = alLeft
      FrameSides = [fsLeft]
    end
    object sepEntregar: TLMDDrawEdge
      AlignWithMargins = True
      Left = 660
      Top = 4
      Width = 3
      Height = 30
      Margins.Top = 4
      Margins.Right = 0
      Margins.Bottom = 4
      Align = alLeft
      FrameSides = [fsLeft]
      ExplicitLeft = 502
    end
    object sepTipoNF: TLMDDrawEdge
      AlignWithMargins = True
      Left = 508
      Top = 4
      Width = 3
      Height = 30
      Margins.Top = 4
      Margins.Right = 0
      Margins.Bottom = 4
      Align = alLeft
      FrameSides = [fsLeft]
    end
    object cbRecibo: TcxCheckBox
      AlignWithMargins = True
      Left = 1021
      Top = 3
      Cursor = crHandPoint
      Margins.Left = 20
      TabStop = False
      Align = alLeft
      AutoSize = False
      Caption = 'Imprimir'
      ParentFont = False
      Style.BorderColor = clWhite
      Style.BorderStyle = ebsFlat
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = 5131854
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Visible = False
      Height = 32
      Width = 82
    end
    object cmConfig: TcxButton
      Left = 1103
      Top = 0
      Width = 32
      Height = 38
      Cursor = crHandPoint
      Hint = 'Configurar'
      Align = alRight
      Caption = 'Configurar'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 33
      OptionsImage.Images = dmImagens.im24
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      OnClick = cmConfigClick
    end
    object panFunc: TLMDSimplePanel
      AlignWithMargins = True
      Left = 1106
      Top = 0
      Width = 0
      Height = 38
      Hint = ''
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 15
      Margins.Bottom = 0
      Align = alClient
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      ParentColor = True
      TabOrder = 2
    end
    object panFidelidade: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 228
      Height = 38
      Hint = ''
      AutoSize = True
      Align = alLeft
      Bevel.Mode = bmCustom
      ParentColor = True
      TabOrder = 3
      object Img: TImage
        Left = 0
        Top = 0
        Width = 32
        Height = 38
        Align = alLeft
        Center = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
          000000180806000000E0773DF80000000467414D410000B18F0BFC6105000000
          097048597300000B0C00000B0C013F4022C80000000774494D4507D605170D3A
          12D35589A60000052A49444154484B9595794C545714C60F6EC3AA03B2880E20
          421411115CABE22EB11AA5068A988E066A83356E55DC50442254C71995A5586D
          C4AA8D0B2E45A41510C5A52D54A9024159A4280AC161E8C83A0308C87C3D6FD2
          264D23037EC9EF8F7973CF77CF3BE7DCFBE8FF3A7DBAE493B8D85FD432797ADB
          FEAFAFB7ED8DBCD2BA6BD715CDE61D49F5BE67C6A97D7E70504F4B92A8269F18
          A69C9068A7763F6A5DE2B4D5DC9F432D987E7A13433A762C2F2EF69B62242436
          2236AE168A232F21975561E5557FCCCF188519E9124C49B38777EA308C4BB581
          CD41338CD868F623877EC498E94D0C292626234C26FF1D71718D50286A7048F6
          0207A35F427A7603A665D862D2CFF6F04CB5855BCA508CBA3204967B4D205E2C
          4AE6502963AD3731A4F5EB633DF6465EEB922B2A219355203AFA29A2A38A1092
          1805CF1B62785CB3C1E8AB566C2E8638DE18F651E6BA81C3FA2571E84AC64A6F
          D28B449B379D3AB333FC3AA2638A1115F508117B72B173F72DB8A55AC2E5EA10
          385E1E0C9BB3A618BC5B04AB35A21C8E496466312682416F327272F2720E0939
          FC60C3E673088FC8467878367686652174CF09B826DB63C8C9FE10879BC37A8B
          E9AB7E264667396623E3C4F4DEE47F24128B47782D59B2E57C50D091B72BA409
          0890C6637980020BE6EDC3ECE93B747601921C231312CC2398494C9FB2FFAF84
          00776747BB8DEB56FADC8EDAB4A879EB9A450DB3A6CFC816990D3DC3FF1D6736
          31931973C688E9BB5A1E91B5F62E7DD77493DA34B962681F3BA339D71EAA9F48
          5770922A0E8492C2D498BC79A930FF1F66DE5140EEEA0CAA6A29F482AE6E15F0
          7A11F0CA07A85908A883D0563A0BCF92FB235341BFF94E202F0E11DEB66F9B34
          1592E59B4CAA6CAD580254CF054A1DF1B6C0167831897FCF464BFE58DE7029A0
          5CCA9B0C44CA7ECAB130D1BF49DF7AD07E9F629B1FB1490D675DEA00948F81F6
          E94C2E912B34051E50FD3A06DD357EC09B60E82A6722EF38212C90E238D49519
          A037E949151748A44AA7A6AEBA3540B12D3A8B24E82894A0F5CFC5E852AD4667
          951F1AF2A7A0F9C91CB494FBA15B19849A740BA4C7D00B0E17EE234BBD514FD2
          DCA3C9AA2C53A02E10BA620734E78FC7BBC630E8EAD771ED83815A7FE8AA17A0
          AB7C22CAF924B7BF0E85F60F09EEC809CE7614C516A3989E7B519D46CB5477EC
          B83C1F7369DCF0AE642C9A8B6602F55FB0F9A7FC7CB1BE0FCA3B23A1A95C0DBC
          8D447BA18B7E036F17FD6916467690DEEC7D2A3B47B3AB6F5800AAE5C0F3F168
          2B1A874EA594EBCD28B9EE55F3809753D1F9C41575F9DCA36E19B40FAD917580
          3046A23F1773989E9B9DB083AC9F5DA0769D7205BA4A3C509D25812AC713AD65
          F37972F8ADAA66409BEF86672976C84D344643A93FEA3207213582BACD44F42D
          5BF83006A76940E129BAA4BCEFC6197386C2DCD7FAA13ECF13CA7B6EA8CA7444
          6DB60DDE35ED027004A89C8887C708873FA73C8E8D6526081E82514F323AB896
          BC79F41A5A9EF2C1522DE38607E07192191A8B9772DDA5B8251F802ECD3E4EC0
          17159709297BA87BF470FD9DB48571103C0423433239F42505E72690A6F6FE68
          E0AF65E8A8F607B45F01EDDBD1511588EE3277945F24A4451256CD21E16B16CF
          2C60843BA95709195886F852705A0C3D7FC025A84CB344DD6D2BA86E0E46D9C5
          FEB8CB5393BC9DDAFCA6D2255E7B82F98C19CEF4F9BA16160EB532A785C10B29
          F1E85ACA39BF8D94E7B6913A3E948AA573E99AD88CBEE73572269011BE05864F
          F17B246C22DC946399E58C50E318E60013CEAC66A63236CC079BFF2BA15C0319
          3123618493EAC208190B1F7863C6405389FE06F955BB57BE97F53C0000000049
          454E44AE426082}
        ExplicitLeft = -6
        ExplicitHeight = 29
      end
      object lbMensagem: TcxLabel
        AlignWithMargins = True
        Left = 35
        Top = 7
        Margins.Top = 7
        Margins.Right = 5
        Margins.Bottom = 7
        Align = alLeft
        Caption = ' Resgate de pontos Fidelidade '
        ParentColor = False
        ParentFont = False
        Style.Color = clHotLight
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 3815994
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Vert = taVCenter
        Properties.LabelEffect = cxleExtrude
        Transparent = True
        AnchorY = 19
      end
      object LMDSimplePanel2: TLMDSimplePanel
        AlignWithMargins = True
        Left = 227
        Top = 1
        Width = 1
        Height = 36
        Hint = ''
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        Bevel.Mode = bmCustom
        Color = 13750737
        TabOrder = 1
      end
    end
    object lbDepois: TcxLabel
      AlignWithMargins = True
      Left = 404
      Top = 3
      Cursor = crHandPoint
      Margins.Left = 7
      Align = alLeft
      Caption = 'Concluir Depois'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = True
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.TextColor = 5592405
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleHot.BorderStyle = ebsNone
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.TextColor = clHotLight
      StyleHot.TextStyle = [fsUnderline]
      Properties.Alignment.Vert = taVCenter
      OnClick = lbDepoisClick
      AnchorY = 19
    end
    object cmGravar: TcxLabel
      AlignWithMargins = True
      Left = 239
      Top = 3
      Cursor = crHandPoint
      Margins.Left = 11
      Margins.Right = 7
      Align = alLeft
      Caption = 'Salvar - F2'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = True
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleHot.BorderStyle = ebsNone
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.TextColor = clHotLight
      StyleHot.TextStyle = [fsUnderline]
      Properties.Alignment.Vert = taVCenter
      OnClick = cmGravarClick
      AnchorY = 19
    end
    object cmCancelar: TcxLabel
      AlignWithMargins = True
      Left = 329
      Top = 3
      Cursor = crHandPoint
      Margins.Left = 7
      Margins.Right = 7
      Align = alLeft
      Caption = 'Cancelar'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = True
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.TextColor = 5592405
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleHot.BorderStyle = ebsNone
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.TextColor = clHotLight
      StyleHot.TextStyle = [fsUnderline]
      Properties.Alignment.Vert = taVCenter
      OnClick = cmCancelarClick
      AnchorY = 19
    end
    object btnXML: TcxButton
      AlignWithMargins = True
      Left = 852
      Top = 3
      Width = 146
      Height = 32
      Margins.Left = 0
      Align = alLeft
      Caption = 'Ler XML / NF-e'
      LookAndFeel.Kind = lfFlat
      OptionsImage.ImageIndex = 58
      OptionsImage.Images = dmImagens.im24
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 7
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnXMLClick
    end
    object cbEntregar: TcxCheckBox
      AlignWithMargins = True
      Left = 669
      Top = 3
      Cursor = crHandPoint
      Margins.Left = 6
      TabStop = False
      Align = alLeft
      AutoSize = False
      Caption = 'Entregar/despachar (F9)'
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWhite
      Style.BorderStyle = ebsFlat
      Style.Color = 14540253
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      OnClick = cbEntregarClick
      Height = 32
      Width = 180
    end
    object lbTipoTran: TcxLabel
      Left = 839
      Top = 3
      Caption = ' COMPRA 123 '
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = 3815994
      Style.TextStyle = [fsBold, fsUnderline]
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      AnchorX = 893
    end
    object cbNFe: TcxRadioButton
      AlignWithMargins = True
      Left = 598
      Top = 0
      Width = 59
      Height = 38
      Cursor = crHandPoint
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'NF-e'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = cbNFeClick
    end
    object cbCupom: TcxRadioButton
      AlignWithMargins = True
      Left = 518
      Top = 0
      Width = 73
      Height = 38
      Cursor = crHandPoint
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'CF-e SAT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = cbCupomClick
    end
  end
  object panCli: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 73
    Width = 1135
    Height = 52
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 5
    object lbDadosNF: TcxLabel
      AlignWithMargins = True
      Left = 719
      Top = 0
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alRight
      Caption = 'CPF: 163.920.128-93 - Email: joaolucioborges@gmail.com'
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.TextColor = 5592405
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleFocused.TextColor = clGray
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clHotLight
      StyleHot.TextStyle = [fsUnderline]
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      OnClick = lbDadosNFClick
      AnchorX = 1125
      AnchorY = 26
    end
  end
  object panEntrega: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 125
    Width = 1135
    Height = 52
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 6
    Visible = False
  end
  object panBuscaProd: TLMDSimplePanel
    AlignWithMargins = True
    Left = 7
    Top = 177
    Width = 1121
    Height = 52
    Hint = ''
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alTop
    Bevel.BorderColor = clRed
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 7
  end
  object BarMgr: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmImagens.im16
    ImageOptions.LargeImages = dmImagens.im24
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    ShowHintForDisabledItems = False
    UseBarHintWindow = False
    UseSystemFont = False
    Left = 120
    Top = 304
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 304
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWindow
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWindow
      TextColor = clBlue
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clWhite
    end
  end
  object tPro: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    FilterOptions = [foCaseInsensitive]
    OnCalcFields = tProCalcFields
    TableName = 'Produto'
    IndexName = 'IDescricao'
    Left = 120
    Top = 264
    object tProID: TAutoIncField
      FieldName = 'ID'
    end
    object tProPreco: TCurrencyField
      FieldName = 'Preco'
    end
    object tProPodeAlterarPreco: TBooleanField
      FieldName = 'PodeAlterarPreco'
    end
    object tProPermiteVendaFracionada: TBooleanField
      FieldName = 'PermiteVendaFracionada'
    end
    object tProCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
    end
    object tProCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object tProImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tProNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tProAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object tProAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
    end
    object tProAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object tProFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object tProIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tProPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object tProMargem: TFloatField
      FieldName = 'Margem'
    end
    object tProFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tProEstoqueMin: TFloatField
      FieldName = 'EstoqueMin'
    end
    object tProEstoqueMax: TFloatField
      FieldName = 'EstoqueMax'
    end
    object tProEstoqueRepor: TFloatField
      FieldName = 'EstoqueRepor'
    end
    object tProComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tProComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tProFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object tProEstoqueAtual: TFloatField
      FieldName = 'EstoqueAtual'
    end
    object tProEstoquePend: TFloatField
      FieldName = 'EstoquePend'
    end
    object tProEstoqueTot: TFloatField
      FieldName = 'EstoqueTot'
    end
    object tProNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object tProbrtrib: TWordField
      FieldName = 'brtrib'
    end
    object tProtax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tProNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object tProcest: TLongWordField
      FieldName = 'cest'
    end
    object tProTaxIdNorm: TLongWordField
      FieldKind = fkCalculated
      FieldName = 'TaxIdNorm'
      Calculated = True
    end
    object tProUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tProMarca: TGuidField
      FieldName = 'Marca'
      Size = 38
    end
    object tProCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tProDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tProUnid: TWideStringField
      FieldName = 'Unid'
      Size = 5
    end
    object tProObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tProCategoria: TWideStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object tProPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tProPesoLiq: TFloatField
      FieldName = 'PesoLiq'
    end
    object tPromodST: TByteField
      FieldName = 'modST'
    end
    object tProMVA: TnxMemoField
      FieldName = 'MVA'
      BlobType = ftMemo
    end
    object tProPauta: TnxMemoField
      FieldName = 'Pauta'
      BlobType = ftMemo
    end
    object tProAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tProAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = tPro
    Left = 56
    Top = 336
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 232
    Top = 304
  end
  object tCodR: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Produto'
    IndexName = 'ICodigo'
    Left = 240
    Top = 232
  end
  object imgs: TcxImageList
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 11010232
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          00000000000023180C326040218984582EBC996735DAA56F39EBAB7139F5B485
          56F3DACABBEFCBB9A6EFCCB9A7F0E5D6C5FAB2773FFEB2773DFFB3783EFFAF76
          3DFAA26D38E7885B2FC2583B1E7D010000010000000000000000000000000000
          00007E542BB6B3783EFFB1763CFFB1763CFFB3783EFFB1763CFFAF7439FEBD8A
          59FFFEFEFEFE888A8BFF87898BFEFEFEFEFEB47B42FDB2773CFFB0753CFDB076
          3CFEB3783EFFB1763CFFB1763CFFB3783EFF030201050000000000000000321F
          0D4BB1763CFFB3783EFFB0753CFDB0753CFDB3783EFFB0753CFDB0743AFDB77F
          49FFFDFDFDFD848484FF808080FDFDFDFDFDB67E47FDB2763CFFB0753CFDB075
          3CFDB3783EFFB0753CFDB0753CFDB3783EFF4B2F137000000000000000005234
          167AB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB2773CFFB379
          40FFFFFFFFFF7C7C7CFF747474FFFFFFFFFFB9844FFFB2763BFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF5636177F00000000000000004C30
          1472B1763CFFB3783EFFB0753CFDB0753CFDB3783EFFB0753CFDB0753BFDB277
          3EFFFDFDFDFD747474FF707070FDFDFDFDFDBD8A59FDB1753AFFB0753CFDB075
          3CFDB3783EFFB0753CFDB0753CFDB3783EFF4E31147400000000000000003A25
          0F57B1763CFFB3783EFFB0753CFDB0753CFDB3783EFFB0753CFDB0743BFDB57B
          41FFFDFDFDFD717171FF6C6C6CFDF9FDFDFDC29568FDB17539FFB0753CFDB075
          3CFDB3783EFFB0753CFDB0753CFDB3783EFF39240F550000000000000000110B
          0519B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB2763BFFB883
          4DFFFFFFFFFF717171FF6E6E6EFFFBFEFFFFCBA279FFB07438FFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0E08031600000000000000000000
          0000936232D4B3783EFFB0753CFDB0753CFDB3783EFFB0753CFDAF7339FDC191
          61FFFDFDFDFD767676FF707070FDFDFDFDFDD0AF8DFDB07337FFB0753CFDB075
          3CFDB3783EFFB0753CFDB1763CFF8A5725CD0000000000000000000000000000
          00000704010BB3783EFFB1763CFFB0763CFEB3783EFFB0753CFDAE7136FDCEA9
          83FFFDFDFDFD6F6F6FFF696969FDFDFDFDFDDCC2ABFDAF7135FFB0753CFDB075
          3CFDB3783EFFB1763CFFB0753CFD060301090000000000000000000000000000
          0000000000000000000074491FACB3783EFFB3783EFFB3783EFFAF7033FFE3CE
          B7FFEBEDEFFFCFCFD0FFD0D0D0FFE7E8E9FFEFE2D6FFAD6E30FFB3783EFFB378
          3EFFB3783EFF71471EA800000000000000000000000000000000000000000000
          00000000000000000000000000001009031867411C99B1753BFFAD6E30FFFFFF
          FFFFFFFFFFFFCBCBCBCBBDBDBDC0FFFFFFFFFFFFFFFFB07438FFB1753AFF603C
          198E0C0702120000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000190F0526B99D83DD8784
          828B04030304000000000000000000000000504C48559B8C80AD100A05170000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006849
          2992AE7133FFB07336FFAF7135FF9F6830E84734206100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000A06020FAF7439FCB276
          3CFFB1763CFFB3783EFFB0753CFDB1763CFFB0753AFF8C5D2FCA000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000A36D37EBB1763CFFB378
          3EFFB0753CFDB3783EFFB0753CFDB0753CFDB0753CFDB3783EFF7D532AB40000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000432A1163B3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF2216
          0933000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000875524C8B1763CFFB0753CFDB378
          3EFFB0753CFDB3783EFFB0753CFDB0753CFDB0753CFDB3783EFFB1763CFF6E45
          1CA4000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000A7692DF7B1763CFFB0753CFDB378
          3EFFB0753CFDB3783EFFB0753CFDB0753CFDB0753CFDB3783EFFB1763CFF905A
          25D7000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000A5672BF4B3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF905B
          27D6000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000815122BFB1763CFFB0753CFDB378
          3EFFB0753CFDB3783EFFB0753CFDB0753CFDB0753CFDB3783EFFB1763CFF6942
          1B9D000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000035210E4FB1763CFFB0753CFDB378
          3EFFB0753CFDB3783EFFB0753CFDB0753CFDB0753CFDB3783EFFB1763CFF190F
          0427000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000906032CDB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF69421C9B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000936232D4B378
          3EFFB1763CFFB3783EFFB1763CFFB1763CFFB1763CFF6F461EA5000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003C28
          155682572CBBA46E39EA9F6A36E5734D27A52416093500000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000006C000000B6000000B60000003D0000000000000000000000000000
          000000000000000000000000004D000000B6000000B500000089000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000095000000FF000000FF000000570000000000000000000000000000
          000000000000000000000000006F000000FF000000FF000000C2000000000000
          00000000000000000000000000000000000000000000000000000000000D0000
          000300000065000000E5000000FF000000550000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          00000000000000000000000000000000000000000000000000000000005C0000
          003D0000000E00000071000000DE000000560000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000C80000
          00E10000007A0000001A0000003E0000002B0000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000C40000
          00FF000000EB0000009100000029000000030000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000C30000
          00FF000000FF000000F5000000A6000000390000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000040000
          002D000000340000003400000034000000340000003400000034000000CF0000
          00FF000000FF000000FF000000FC000000B90000004A00000004000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000430000
          00AC000000B4000000B4000000B4000000B4000000B4000000B4000000ED0000
          00FF000000FF000000FF000000FF000000FF000000CA0000005E0000000B0000
          000000000000000000000000006C000000FF000000FF000000BE000000A20000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000DA0000003F0000
          000000000000000000000000006C000000FF000000FF000000BE000000A20000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000DA0000003E0000
          000000000000000000000000006C000000FF000000FF000000BE000000430000
          00AC000000B4000000B4000000B4000000B4000000B4000000B4000000EE0000
          00FF000000FF000000FF000000FF000000FF000000CA0000005E0000000B0000
          000000000000000000000000006C000000FF000000FF000000BE000000040000
          002D000000350000003500000035000000350000003500000035000000CF0000
          00FF000000FF000000FF000000FC000000B90000004A00000004000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000C30000
          00FF000000FF000000F5000000A6000000390000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000C40000
          00FF000000EB0000009100000029000000030000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000C80000
          00E10000007A0000001A0000003E0000002B0000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000800000
          0069000000130000004B000000BE000000500000000000000000000000000000
          0000000000000000000000000069000000FF000000FF000000BE000000000000
          00000000000000000000000000000000000000000000000000000000000D0000
          000300000065000000E5000000FF0000008B0000005300000053000000530000
          005300000053000000530000009A000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000092000000FF000000FF000000E7000000DB000000DB000000DB0000
          00DB000000DB000000DB000000EB000000FF000000FF000000C1000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000090000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF0000009D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000003B000000C2000000EA000000E7000000E7000000E7000000E70000
          00E7000000E7000000E7000000E7000000EA000000B900000033000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object tOrcItens: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'IOrcamento'
    IndexName = 'IOrcamento_UID'
    Left = 416
    Top = 224
    object tOrcItensDescr: TnxMemoField
      FieldName = 'Descr'
      BlobType = ftMemo
    end
    object tOrcItensUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tOrcItensTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tOrcItensDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tOrcItensTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tOrcItensOrcamento_UID: TGuidField
      FieldName = 'Orcamento_UID'
      Size = 38
    end
    object tOrcItensUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tOrcItensItem: TWordField
      FieldName = 'Item'
    end
    object tOrcItensProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tOrcItensQuant: TFloatField
      FieldName = 'Quant'
    end
  end
  object tOrc: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    FlipOrder = True
    TableName = 'Orcamento'
    IndexName = 'IUID'
    Left = 360
    Top = 224
    object tOrcUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tOrcIDSeq: TAutoIncField
      FieldName = 'IDSeq'
    end
    object tOrcNomeCliente: TWideStringField
      FieldKind = fkLookup
      FieldName = 'NomeCliente'
      LookupDataSet = Dados.tbCli
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 50
      Lookup = True
    end
    object tOrcNomeFunc: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFunc'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Func'
      Size = 40
      Lookup = True
    end
    object tOrcCriadoEm: TDateTimeField
      FieldName = 'CriadoEm'
    end
    object tOrcAtualizadoEm: TDateTimeField
      FieldName = 'AtualizadoEm'
    end
    object tOrcAprovadoEm: TDateTimeField
      FieldName = 'AprovadoEm'
    end
    object tOrcRecusadoEm: TDateTimeField
      FieldName = 'RecusadoEm'
    end
    object tOrcVendidoEm: TDateTimeField
      FieldName = 'VendidoEm'
    end
    object tOrcExpiradoEm: TDateTimeField
      FieldName = 'ExpiradoEm'
    end
    object tOrcStatusAlteradoEm: TDateTimeField
      FieldName = 'StatusAlteradoEm'
    end
    object tOrcFunc: TStringField
      FieldName = 'Func'
    end
    object tOrcTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tOrcDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tOrcTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tOrcVendido: TBooleanField
      FieldName = 'Vendido'
    end
    object tOrcObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tOrcStatus: TByteField
      FieldName = 'Status'
    end
    object tOrcIDVenda: TLongWordField
      FieldName = 'IDVenda'
    end
    object tOrcCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tOrcValData: TDateTimeField
      FieldName = 'ValData'
    end
    object tOrcValModo: TByteField
      FieldName = 'ValModo'
    end
    object tOrcValTempo: TWordField
      FieldName = 'ValTempo'
    end
    object tOrcValUTempo: TByteField
      FieldName = 'ValUTempo'
    end
  end
end
