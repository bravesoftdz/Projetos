object FrmEndereco: TFrmEndereco
  Left = 0
  Top = 0
  Caption = 'Endere'#231'o'
  ClientHeight = 494
  ClientWidth = 587
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
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 587
    Height = 494
    Hint = ''
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 0
    ExplicitWidth = 572
    ExplicitHeight = 466
    object LC: TdxLayoutControl
      Left = 0
      Top = 31
      Width = 587
      Height = 378
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = FrmPri.lfPadrao
      ExplicitWidth = 572
      ExplicitHeight = 350
      object edObs: TcxTextEdit
        Left = 89
        Top = 335
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 17
        Width = 400
      end
      object edbr_Logr: TcxTextEdit
        Left = 112
        Top = 120
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 2
        Width = 400
      end
      object edbr_bairro: TcxComboBox
        Left = 112
        Top = 186
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 5
        Width = 400
      end
      object edbr_cidade: TcxComboBox
        Left = 233
        Top = 252
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 9
        Width = 305
      end
      object edint_endereco: TcxTextEdit
        Left = 10000
        Top = 10000
        ParentFont = False
        Style.LookAndFeel.Kind = lfFlat
        Style.StyleController = FrmPri.escFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 10
        Visible = False
        Width = 400
      end
      object edint_endereco2: TcxTextEdit
        Left = 10000
        Top = 10000
        ParentFont = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 11
        Visible = False
        Width = 400
      end
      object edint_bairro: TcxComboBox
        Left = 10000
        Top = 10000
        ParentFont = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 12
        Visible = False
        Width = 400
      end
      object edint_cidade: TcxComboBox
        Left = 10000
        Top = 10000
        ParentFont = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 13
        Visible = False
        Width = 400
      end
      object edint_cep: TcxTextEdit
        Left = 10000
        Top = 10000
        ParentFont = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 15
        Visible = False
        Width = 131
      end
      object edPais: TcxImageComboBox
        Left = 89
        Top = 13
        TabStop = False
        RepositoryItem = Dados.erPaisImg
        ParentFont = False
        Properties.ImmediateDropDownWhenActivated = True
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <>
        Properties.OnChange = edPaisPropertiesChange
        Properties.OnCloseUp = edPaisPropertiesCloseUp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.LookAndFeel.NativeStyle = False
        Style.StyleController = FrmPri.escFlat
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 400
      end
      object edDest: TcxTextEdit
        Left = 89
        Top = 302
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 16
        Width = 400
      end
      object edint_uf: TcxTextEdit
        Left = 10000
        Top = 10000
        ParentFont = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 14
        Visible = False
        Width = 400
      end
      object edbr_numero: TcxTextEdit
        Left = 112
        Top = 153
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 3
        Width = 134
      end
      object edbr_complemento: TcxTextEdit
        Left = 382
        Top = 153
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 4
        Width = 130
      end
      object edbr_cep: TcxMaskEdit
        Left = 112
        Top = 87
        ParentFont = False
        Properties.EditMask = '00000\-000;1;_'
        Properties.OnChange = edbr_cepPropertiesChange
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 1
        Text = '     -   '
        Width = 134
      end
      object edbr_codmun: TcxButtonEdit
        Left = 112
        Top = 219
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edbr_codmunPropertiesButtonClick
        Properties.OnChange = edbr_codmunPropertiesChange
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 6
        Width = 134
      end
      object cxLabel1: TcxLabel
        Left = 254
        Top = 219
        Caption = 'C'#243'digo IBGE para o munic'#237'pio'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.TextColor = cl3DDkShadow
        Style.IsFontAssigned = True
        Properties.Alignment.Vert = taVCenter
        AnchorY = 232
      end
      object edbr_uf: TcxComboBox
        Left = 112
        Top = 252
        ParentFont = False
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 8
        Width = 66
      end
      object LCGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Visible = False
        LayoutLookAndFeel = FrmPri.lfPadrao
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object lcObs: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Obs:'
        LayoutLookAndFeel = FrmPri.lfDefault
        Control = edObs
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 400
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object lgPais: TdxLayoutGroup
        Parent = LCGroup_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        LayoutDirection = ldTabbed
        ShowBorder = False
        Index = 1
      end
      object lgBR: TdxLayoutGroup
        Parent = lgPais
        AlignHorz = ahLeft
        CaptionOptions.Text = 'BR'
        CaptionOptions.Visible = False
        LayoutLookAndFeel = FrmPri.lfDefault
        ButtonOptions.Buttons = <>
        ItemIndex = 2
        ShowBorder = False
        Index = 0
      end
      object lcbr_logradouro: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Endere'#231'o'
        LayoutLookAndFeel = FrmPri.lfDefault
        Control = edbr_Logr
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 400
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lcbr_bairro: TdxLayoutItem
        Parent = lgBR
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Bairro'
        Control = edbr_bairro
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 400
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lcbr_cidade: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Cidade'
        Control = edbr_cidade
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 305
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lgInt: TdxLayoutGroup
        Parent = lgPais
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'INT'
        CaptionOptions.Visible = False
        LayoutLookAndFeel = FrmPri.lfDefault
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 1
      end
      object lcint_endereco: TdxLayoutItem
        Parent = lgInt
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Endere'#231'o'
        Control = edint_endereco
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 400
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcint_endereco2: TdxLayoutItem
        Parent = lgInt
        AlignHorz = ahLeft
        CaptionOptions.Text = ' '
        LayoutLookAndFeel = FrmPri.lfDefault
        Control = edint_endereco2
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 400
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
        Parent = lgInt
        AlignHorz = ahLeft
        AlignVert = avTop
        Index = 2
        AutoCreated = True
      end
      object lcint_bairro: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignVert = avClient
        CaptionOptions.Text = 'Bairro'
        Control = edint_bairro
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 400
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcint_cidade: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Cidade'
        Control = edint_cidade
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 400
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lcint_cep: TdxLayoutItem
        Parent = lgInt
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'C'#243'digo Postal'
        Control = edint_cep
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 131
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object lcPais: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Pa'#237's'
        Control = edPais
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 400
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcDest: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Destinat'#225'rio'
        LayoutLookAndFeel = FrmPri.lfDefault
        Control = edDest
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 400
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = lgBR
        AlignHorz = ahLeft
        AlignVert = avTop
        Index = 2
        AutoCreated = True
      end
      object lcint_uf: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Estado'
        Control = edint_uf
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 178
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object lcbr_numero: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'N'#250'mero'
        Control = edbr_numero
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 134
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = lgBR
        AlignHorz = ahLeft
        AlignVert = avTop
        Index = 0
        AutoCreated = True
      end
      object lcbr_complemento: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Text = 'Complemento'
        Control = edbr_complemento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 130
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 2
        AutoCreated = True
      end
      object lcbr_cep: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'CEP'
        LayoutLookAndFeel = FrmPri.lfDefault
        Control = edbr_cep
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 134
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcbr_codmun: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'C'#243'digo Mun.'
        Control = edbr_codmun
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 134
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup3
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object lcbr_prompt_codmun: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignVert = avClient
        CaptionOptions.Text = 'C'#243'digo IBGE para o munic'#237'pio'
        CaptionOptions.Visible = False
        Control = cxLabel1
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 159
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup3
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
      object lcbr_uf: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'UF'
        Control = edbr_uf
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 66
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
    object LMDSimplePanel2: TLMDSimplePanel
      AlignWithMargins = True
      Left = 0
      Top = 424
      Width = 587
      Height = 70
      Hint = ''
      Margins.Left = 0
      Margins.Top = 15
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alBottom
      Bevel.BorderSides = [fsTop]
      Bevel.BorderInnerWidth = 15
      Bevel.Mode = bmEdge
      TabOrder = 1
      ExplicitTop = 396
      ExplicitWidth = 572
      object LMDSimplePanel1: TLMDSimplePanel
        Left = 17
        Top = 17
        Width = 553
        Height = 36
        Hint = ''
        Margins.Left = 15
        Margins.Top = 0
        Margins.Right = 15
        Margins.Bottom = 15
        Align = alClient
        Bevel.Mode = bmCustom
        TabOrder = 0
        ExplicitWidth = 538
        object btnSalvar: TcxButton
          Left = 0
          Top = 0
          Width = 113
          Height = 36
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
          Left = 128
          Top = 0
          Width = 74
          Height = 36
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
          OnClick = btnCancelarClick
        end
        object btnGmaps: TcxButton
          Left = 480
          Top = 0
          Width = 73
          Height = 36
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 20
          Margins.Bottom = 0
          Align = alRight
          Caption = 'Ctrl-M'
          LookAndFeel.Kind = lfFlat
          OptionsImage.ImageIndex = 63
          OptionsImage.Images = dmImagens.im24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.AllowAllUp = True
          SpeedButtonOptions.Flat = True
          SpeedButtonOptions.Transparent = True
          TabOrder = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnGmapsClick
          ExplicitLeft = 465
        end
        object btnRota: TcxButton
          AlignWithMargins = True
          Left = 402
          Top = 0
          Width = 73
          Height = 36
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alRight
          Caption = 'Ctrl-R'
          LookAndFeel.Kind = lfFlat
          OptionsImage.ImageIndex = 64
          OptionsImage.Images = dmImagens.im24
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.AllowAllUp = True
          SpeedButtonOptions.Flat = True
          SpeedButtonOptions.Transparent = True
          TabOrder = 3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnRotaClick
          ExplicitLeft = 387
        end
        object lbCopiar: TcxLabel
          AlignWithMargins = True
          Left = 315
          Top = 0
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alRight
          Caption = 'Copiar (Ctrl-E)'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.HotTrack = True
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clHotLight
          StyleHot.TextStyle = [fsBold, fsUnderline]
          Properties.Alignment.Vert = taVCenter
          OnClick = lbCopiarClick
          ExplicitLeft = 305
          AnchorY = 18
        end
      end
    end
    object lbEndLoja: TcxLabel
      AlignWithMargins = True
      Left = 15
      Top = 3
      Margins.Left = 15
      Margins.Right = 15
      Align = alTop
      Caption = 'Informe o endere'#231'o da LOJA:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextStyle = [fsBold, fsUnderline]
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitWidth = 542
    end
  end
end
