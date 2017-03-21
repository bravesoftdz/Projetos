object FrmEntrega: TFrmEntrega
  Left = 0
  Top = 0
  BorderWidth = 7
  Caption = 'Entrega'
  ClientHeight = 416
  ClientWidth = 687
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 384
    Width = 687
    Height = 32
    Hint = ''
    Margins.Left = 0
    Margins.Top = 7
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    object btnAvancar: TcxButton
      AlignWithMargins = True
      Left = 107
      Top = 0
      Width = 100
      Height = 32
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Avan'#231'ar >>'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnAvancarClick
    end
    object btnVoltar: TcxButton
      Left = 0
      Top = 0
      Width = 97
      Height = 32
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '<< Voltar'
      Enabled = False
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnVoltarClick
    end
    object btnConfig: TcxButton
      AlignWithMargins = True
      Left = 653
      Top = 0
      Width = 34
      Height = 32
      Cursor = crHandPoint
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Op'#231#245'es'
      LookAndFeel.Kind = lfFlat
      OptionsImage.ImageIndex = 33
      OptionsImage.Images = dmImagens.im24
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
      Visible = False
    end
  end
  object Paginas: TcxPageControl
    Left = 0
    Top = 0
    Width = 687
    Height = 377
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Properties.ActivePage = tsFrete
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    OnChange = PaginasChange
    ClientRectBottom = 373
    ClientRectLeft = 4
    ClientRectRight = 683
    ClientRectTop = 26
    object tsEndereco: TcxTabSheet
      Caption = '1. Endere'#231'o '
      ImageIndex = 0
    end
    object tsTransp: TcxTabSheet
      Caption = '2. Entregador ou Transportadora '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
    end
    object tsFrete: TcxTabSheet
      Caption = '3. Taxa de Entrega / Frete'
      ImageIndex = 2
      object lcFrete: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 679
        Height = 347
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object edVol: TcxSpinEdit
          Left = 132
          Top = 191
          ParentFont = False
          Properties.ImmediatePost = True
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 121
        end
        object edPesoBruto: TcxCurrencyEdit
          Left = 132
          Top = 294
          EditValue = 0.000000000000000000
          Enabled = False
          ParentFont = False
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.###'
          Properties.EditFormat = '0.###'
          Properties.OnChange = edPesoBrutoPropertiesChange
          Style.HotTrack = False
          TabOrder = 9
          Width = 121
        end
        object cbPesoAuto: TcxCheckBox
          Left = 28
          Top = 228
          Cursor = crHandPoint
          Caption = 'Calcular peso automaticamente'
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          State = cbsChecked
          Style.HotTrack = False
          TabOrder = 6
          OnClick = cbPesoAutoClick
        end
        object cbEnviarPesoVol: TcxCheckBox
          Left = 13
          Top = 135
          Cursor = crHandPoint
          Caption = 'Enviar informa'#231#245'es de Peso e Volume na NF-e'
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          State = cbsChecked
          Style.HotTrack = False
          TabOrder = 0
          Transparent = True
          OnClick = cbEnviarPesoVolClick
        end
        object lbPadraoPesoVol: TcxLabel
          Left = 521
          Top = 135
          Cursor = crHandPoint
          Caption = 'Definir como op'#231#227'o padr'#227'o'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.HotTrack = True
          Style.TextColor = clSilver
          Style.TextStyle = [fsUnderline]
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clHighlight
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          OnClick = lbPadraoPesoVolClick
          AnchorY = 148
        end
        object edPesoLiq: TcxCurrencyEdit
          Left = 132
          Top = 261
          EditValue = 0.000000000000000000
          Enabled = False
          ParentFont = False
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.###'
          Properties.EditFormat = '0.###'
          Properties.OnChange = edPesoLiqPropertiesChange
          Style.HotTrack = False
          TabOrder = 8
          Width = 121
        end
        object lbPadraoPesoAuto: TcxLabel
          Left = 506
          Top = 228
          Cursor = crHandPoint
          Caption = 'Definir como op'#231#227'o padr'#227'o'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.HotTrack = True
          Style.TextColor = clSilver
          Style.TextStyle = [fsUnderline]
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clHighlight
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          OnClick = lbPadraoPesoAutoClick
          AnchorY = 241
        end
        object cxLabel1: TcxLabel
          Left = 13
          Top = 13
          Caption = 'Taxa de Entrega / Frete:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Transparent = True
        end
        object edFrete: TcxCurrencyEdit
          Left = 13
          Top = 42
          AutoSize = False
          ParentFont = False
          Properties.OnChange = edFretePropertiesChange
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.escFlat
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 3
          Height = 29
          Width = 138
        end
        object lbFretePadrao: TcxLabel
          Left = 159
          Top = 42
          Cursor = crHandPoint
          Caption = 'Definir como valor padr'#227'o'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.HotTrack = True
          Style.TextColor = clSilver
          Style.TextStyle = [fsUnderline]
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clHighlight
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          OnClick = lbFretePadraoClick
          AnchorY = 57
        end
        object lbPadraoPaga: TcxLabel
          Left = 13
          Top = 104
          Cursor = crHandPoint
          Caption = 'Definir como padr'#227'o'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.HotTrack = True
          Style.TextColor = clSilver
          Style.TextStyle = [fsUnderline]
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clHotLight
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          OnClick = lbPadraoPagaClick
          AnchorY = 113
        end
        object edEmitentePaga: TcxRadioButton
          Left = 13
          Top = 79
          Width = 162
          Height = 17
          Cursor = crHandPoint
          Caption = 'por conta do Emitente'
          TabOrder = 10
          OnClick = edEmitentePagaClick
          Transparent = True
        end
        object edDestPaga: TcxRadioButton
          Left = 183
          Top = 79
          Width = 179
          Height = 17
          Cursor = crHandPoint
          Caption = 'por conta do Destinat'#225'rio'
          TabOrder = 11
          OnClick = edEmitentePagaClick
          Transparent = True
        end
        object edTerceiros: TcxRadioButton
          Left = 370
          Top = 79
          Width = 167
          Height = 17
          Cursor = crHandPoint
          Caption = 'por conta de Terceiros'
          TabOrder = 12
          OnClick = edEmitentePagaClick
          Transparent = True
        end
        object edSemFrete: TcxRadioButton
          Left = 545
          Top = 79
          Width = 113
          Height = 17
          Cursor = crHandPoint
          Caption = 'sem FRETE'
          Checked = True
          TabOrder = 13
          TabStop = True
          OnClick = edEmitentePagaClick
          Transparent = True
        end
        object lcFreteGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          LayoutLookAndFeel = FrmPri.lfFlat
          ButtonOptions.Buttons = <>
          Hidden = True
          ItemIndex = 3
          ShowBorder = False
          Index = -1
        end
        object grPesoVol: TdxLayoutGroup
          Parent = lcFreteGroup_Root
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Text = 'Peso / Volume'
          LayoutLookAndFeel = FrmPri.lfFlat
          ButtonOptions.Buttons = <>
          ItemIndex = 1
          Index = 2
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = grPesoVol
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Qtd. de Volumes'
          LayoutLookAndFeel = FrmPri.lfFlat
          Control = edVol
          ControlOptions.OriginalHeight = 29
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcPesoBruto: TdxLayoutItem
          Parent = grPesoVol
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Peso Bruto'
          Control = edPesoBruto
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 3
        end
        object lcPesoAuto: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Visible = False
          Control = cbPesoAuto
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 207
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcEnviarPesoVol: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Visible = False
          Control = cbEnviarPesoVol
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcPadraoPesoVol: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = lbPadraoPesoVol
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = lcFreteGroup_Root
          AlignVert = avBottom
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object lcPesoLiq: TdxLayoutItem
          Parent = grPesoVol
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Peso L'#237'quido'
          Control = edPesoLiq
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object lcPadraoPesoAuto: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = lbPadraoPesoAuto
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = grPesoVol
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup5
          CaptionOptions.Visible = False
          Padding.AssignedValues = [lpavBottom]
          Control = cxLabel1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup6
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Taxa de Entrega / Frete:'
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          LayoutLookAndFeel = FrmPri.lfDestaque
          Padding.AssignedValues = [lpavTop]
          Control = edFrete
          ControlOptions.OriginalHeight = 29
          ControlOptions.OriginalWidth = 138
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
          Parent = lcFreteGroup_Root
          AlignHorz = ahLeft
          AlignVert = avTop
          Index = 1
          AutoCreated = True
        end
        object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup5
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 1
          AutoCreated = True
        end
        object lcFretePadrao: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup6
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = lbFretePadrao
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 138
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = lcFreteGroup_Root
          AlignVert = avClient
          LayoutDirection = ldHorizontal
          Index = 3
          AutoCreated = True
        end
        object grPorConta: TdxLayoutGroup
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          ButtonOptions.Buttons = <>
          ShowBorder = False
          Index = 0
        end
        object grPorConta2: TdxLayoutGroup
          Parent = grPorConta
          AlignHorz = ahClient
          CaptionOptions.Text = 'New Group'
          ButtonOptions.Buttons = <>
          ItemIndex = 2
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object lcPadraoPaga: TdxLayoutItem
          Parent = grPorConta
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'cxLabel2'
          CaptionOptions.Visible = False
          Control = lbPadraoPaga
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 110
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lcEmitentePaga: TdxLayoutItem
          Parent = grPorConta2
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Visible = False
          Control = edEmitentePaga
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 162
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcDestPaga: TdxLayoutItem
          Parent = grPorConta2
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Visible = False
          Control = edDestPaga
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 179
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lcTerceiros: TdxLayoutItem
          Parent = grPorConta2
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = edTerceiros
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 167
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lcSemFrete: TdxLayoutItem
          Parent = grPorConta2
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Visible = False
          Control = edSemFrete
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 17
          ControlOptions.OriginalWidth = 113
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
    end
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 12517696
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000A16C38E6A16C38E60000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005D3F2085B3783EFFB3783EFF5E3F
          2186000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000018100822B3783EFFB3783EFFB3783EFFB378
          3EFF181008220000000000000000000000000000000000000000000000000000
          0000000000000000000000000000AA723BF2B3783EFFB3783EFFB3783EFFB378
          3EFFAA723BF20000000000000000000000000000000000000000000000000000
          00000000000000000000704B279FB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFF704B279F00000000000000000000000000000000000000000000
          00000000000026190D35B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFF25190D35000000000000000000000000000000000000
          000000000000AC733CF5B3783EFFB3783DFFB07337FFAE6F31FFAE6F31FFB073
          37FFB3783DFFB3783EFFAC733CF5000000000000000000000000000000000000
          00004C331A6AB3783EFFB3783DFFAD6D30FFD2B08DFFF2EAE0FFF2EAE1FFD2B0
          8EFFAC6D2FFFB3783DFFB3783EFF4C331A6B0000000000000000000000000000
          00009B6835DBB3783EFFAF7134FFDBC1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFDDC1A8FFAF7134FFB3783EFF9A6735DB0000000000000000000000000000
          0000B4793EFFB2773DFFAF7236FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFB07236FFB2773DFFB3783EFF0000000000000000000000000000
          0000B4793EFFB2763CFFB57D46FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFB57F48FFB2763CFFB3783EFF0000000000000000000000000000
          00009D6936DEB3783EFFAD6D2EFFFAF7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFAF7F5FFAD6D2EFFB3783EFF9C6836DE0000000000000000000000000000
          000051361C71B3783EFFB1753AFFBB8957FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFBD8958FFB1753AFFB3783EFF50361B710000000000000000000000000000
          000000000000A56F39EBB3783EFFB17539FFB07337FFCAA079FFCAA079FFB073
          37FFB17539FFB3783EFFA56F39EB000000000000000000000000000000000000
          00000000000002010103A56F39EBB3783EFFB2773DFFB17438FFB17438FFB277
          3DFFB3783EFFA56F39EB02010103000000000000000000000000000000000000
          0000000000000000000000000000483019678E6031CBAF753DF9AF753DF98E60
          31CB483019670000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000002212032F7D41
          07B1964900D9A24F00EEA85200F6AC5400FCAD5500FEB76515FDAD5400FEAB54
          00FBA95200F7A35000EF994B00DE814205B8351D054A00000000B45E0AFFD59A
          60FFFFFEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEAD7BFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF5FFE1B080FFB35C07FF040200059F4F00E6FFF7
          E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCA36CFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE5500FF00000000854302BFF7D6
          B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7A067FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1DCFFAA5500F6000000005D300485E1B0
          7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAD0FFFFFBE8FFD3985EFFFFEED6FFFFF5
          E3FFFFFFFFFFFFFFFFFFFFFFFFFFF1CBA6FF804103B70000000000000000A553
          04EFCD8E4EFFF8D7B7FFF4D0AEFFAB4E00FFD5995FFFFFFFFFFFDCA773FFAA4F
          00FFF1C9A3FFFCE1C4FFD3985CFFB15B04FF1009021600000000000000000000
          00003D2004548B4602C8B05801FFBE7025FFFFF1DAFFDDA673FFFFEDD7FFC278
          30FFB05801FF954B03D647250463000000000000000000000000000000000000
          000000000000000000002212032FC58A4FF1AB5200FFD09255FFB05600FFCA8F
          53F82B17053B0000000000000000000000000000000000000000000000000000
          00000000000000000000110A0217B35E0AFFFFFFFFFFFFFFFFFFFFFFFFFFBB6A
          1CFF1B0F04250000000000000000000000000000000000000000000000000000
          00000000000000000000793E03ACF1CBA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3
          C8FF834101BD0000000000000000000000000000000000000000000000000000
          00000000000000000000AE5600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAE5400FF0000000000000000000000000000000000000000000000000000
          0000000000000F080213B35B06FFBB6D21FFEDC59FFFFFF9E8FFF1CBA6FFBF74
          29FFB15903FF1C10042400000000000000000000000000000000000000000000
          000000000000150B021BE1B180FFE7B88CFFAA4F00FFAA4B00FFA94B00FFDDA6
          70FFEEC69FFF2414042F00000000000000000000000000000000000000000000
          00000000000000000000B05803FFE1AE7EFFFFFFF7FFFFFFF1FFFFFFF9FFEABF
          95FFB15804FF0100000100000000000000000000000000000000000000000000
          00000000000000000000562E0877B35C09FFB05800FFB05800FFB05800FFB35C
          07FF673809910000000000000000000000000000000000000000000000000000
          00000000000000000000000000003A1F05519B540ED8B76311FFA75A10E9512C
          0871000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000577729B879A4
          39FE79A539FF79A539FF79A539FF79A539FF79A539FF79A539FF79A539FF79A5
          39FF79A539FF79A539FF79A539FF79A539FF79A539FF5A7A2ABD78A439FD79A5
          39FFA8C47EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF1E0FFE9F0DFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB0C98AFF79A539FF79A539FF78A439FD9EBE
          70FFE8F0DDFFFFFFFFFFFFFFFFFFFEFEFDFFA9C581FF79A539FF79A539FFA5C3
          7BFFFDFDFCFFFFFFFFFFFFFFFFFFEBF2E2FF9FBF72FF79A539FF78A439FDFEFE
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFD0DFBAFF79A539FF79A539FF79A539FF79A5
          39FFCBDCB2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BA63EFF78A439FDFEFE
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFAAC683FF79A539FF79A539FF79A539FF79A5
          39FFA6C37BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BA63EFF78A439FDFEFE
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFAAC683FF79A539FF79A539FF79A539FF79A5
          39FFA6C37BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BA63EFF78A439FDFEFE
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFD0DFB9FF79A539FF79A539FF79A539FF79A5
          39FFCADCB2FFFFFFFFFFFFFFFFFFFFFFFFFFF1F5EAFF7BA63CFF78A439FD9CBC
          6DFFE7EFDCFFFFFFFFFFFFFFFFFFFEFEFDFFA8C47EFF79A539FF79A539FFA4C1
          79FFFDFDFCFFFFFFFFFFFFFFFFFFBDD29DFF79A539FF79A539FF78A439FD79A5
          39FFA8C57EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F0DDFFE7EFDCFFFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFF82AA46FF79A539FF79A539FF577729B879A4
          39FE79A539FF79A539FF79A539FF79A539FF79A539FF79A539FF79A539FF79A5
          39FF79A539FF79A539FF79A539FF79A539FF79A539FF5A7A2ABD000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000130C051C5F3B
          188D855221C6855221C65F3B188D130C051C0000000000000000000000000000
          0000000000000000000000000000000000000000000039230E55B17438FFB277
          3CFFB07236FFB07236FFB17439FFB17438FF39230E5500000000000000000000
          000000000000000000000000000000000000130C051C985E26E2B17438FFB073
          37FFF9F5F0FFF9F5F0FFB07236FFB07337FF985E26E2130C051C000000000000
          0000000000000000000000000000000000005F3B188DAB6A2BFFB17438FFB175
          39FFC39669FFC39669FFB2763BFFB07336FFAB6A2BFF5F3B188D000000000000
          0000664523929F6A37E23C28155600000000855221C6AB6A2BFFB07336FFAE6F
          33FFF9F5F0FFF9F5F0FFE5D3BFFFB47B42FFAB6A2BFF855221C6000000001911
          0A22B3783EFFB3783EFF8C5E30C700000000855221C6AB6A2BFFBC8756FFBC89
          57FFAB6B2CFFC29365FFF7F0EAFFDEC3AAFFAB6A2BFF855221C6A46E39EACAA9
          8AF4BA8652FFB3783EFFA6825ED50A09070C5F3B188DAB6A2BFFE3CDB9FFF6EE
          E8FFC09162FFBF8E5EFFF5EDE6FFE2CDB8FFAB6A2BFF5F3B188DB3783EFFB57B
          43FFD8BA9CFFD8BA9CFFD9BC9FFF2C1E103E130C051C985E26E2B78049FFEADA
          CAFFFEFEFEFFFFFFFFFFECDFD2FFB8824DFF985E26E2130C051CB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFF976637D60202020239230E55985E26E2AB6A
          2BFFAB6A2BFFAB6A2BFFAB6A2BFF985E26E239230E5500000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF958B80A301010002130C051C5F3B
          188D855221C6855221C65F3B188D130C051C0100000100000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFE9D9C9FF976534D7271A0E380503
          020701000001010000010403010621160B2F8C5E31C800000000B3783EFFECDE
          D0FFFFFFFFFFFFFFFFFFFFFFFFFFB3783EFFE9D9C9FFB3783EFFB3783EFF9765
          34D7976534D7976534D7976534D7B3783EFFB3783EFF00000000291E1239B378
          3EFFFFFFFFFFFFFFFFFFFFFFFFFFB3783EFFE9D9C9FFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000B378
          3EFFECDED0FFFFFFFFFFFFFFFFFFB3783EFFE9D9C9FFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000000000003223
          1644B3783EFFB3783EFFB3783EFFB3783EFFE9D9C9FFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000000000000000
          00000000000000000000000000000000000000000000B3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000664523929F6A37E248301966000000000000000000000000000000000000
          000000000000664523929F6A37E2483019660000000000000000000000001911
          0A22B3783EFFB3783EFFA6703AED000000000000000000000000000000000000
          000019110A22B3783EFFB3783EFFA6703AED0000000000000000A46E39EACAA9
          8AF4BA8652FFB3783EFFC59B70FDD9BC9FFFB0773FF9B0773FF9B0773FF9B077
          3FF9CAA98AF4BA8652FFB3783EFFC59B70FDD9BC9FFFB0773FF9B3783EFFB57B
          43FFD8BA9CFFD8BA9CFFD9BC9FFFB0773FF9B0773FF9B0773FF9B0773FF9B077
          3FF9B57B43FFD8BA9CFFD8BA9CFFD9BC9FFFB0773FF9B0773FF9B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB0773FF9E9D9C9FFE9D9C9FFE9D9C9FFE9D9
          C9FFE9D9C9FFE9D9C9FFE9D9C9FFE9D9C9FFE9D9C9FFE9D9C9FFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFE9D9C9FFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFE9D9C9FFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFECDE
          D0FFFFFFFFFFFFFFFFFFFFFFFFFFB3783EFFE9D9C9FFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF291E1239B378
          3EFFFFFFFFFFFFFFFFFFFFFFFFFFB3783EFFE9D9C9FFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000B378
          3EFFECDED0FFFFFFFFFFFFFFFFFFB3783EFFE9D9C9FFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF000000003223
          1644B3783EFFB3783EFFB3783EFFB3783EFFE9D9C9FFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF000000000000
          00000000000000000000000000000000000000000000B3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF000000000000
          00000000000000000000000000000000000000000000B3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB2773EFD000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
