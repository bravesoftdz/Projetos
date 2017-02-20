object FrmEndereco: TFrmEndereco
  Left = 0
  Top = 0
  Caption = 'Endere'#231'o'
  ClientHeight = 438
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 17
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 572
    Height = 438
    Hint = ''
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 0
    ExplicitWidth = 902
    ExplicitHeight = 386
    object LC: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 572
      Height = 357
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = FrmPri.lfPadrao
      ExplicitWidth = 902
      ExplicitHeight = 386
      object edObs: TcxTextEdit
        Left = 55
        Top = 335
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 17
        Width = 400
      end
      object edbr_Logr: TcxTextEdit
        Left = 10000
        Top = 10000
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 2
        Visible = False
        Width = 400
      end
      object edbr_bairro: TcxComboBox
        Left = 10000
        Top = 10000
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 5
        Visible = False
        Width = 400
      end
      object edbr_cidade: TcxComboBox
        Left = 10000
        Top = 10000
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 8
        Visible = False
        Width = 305
      end
      object edint_endereco: TcxTextEdit
        Left = 118
        Top = 87
        ParentFont = False
        Style.LookAndFeel.Kind = lfFlat
        Style.StyleController = FrmPri.escFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 10
        Width = 400
      end
      object edint_endereco2: TcxTextEdit
        Left = 118
        Top = 120
        ParentFont = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 11
        Width = 400
      end
      object edint_bairro: TcxComboBox
        Left = 118
        Top = 153
        ParentFont = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 12
        Width = 400
      end
      object edint_cidade: TcxComboBox
        Left = 118
        Top = 186
        ParentFont = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 13
        Width = 400
      end
      object edint_cep: TcxTextEdit
        Left = 118
        Top = 252
        ParentFont = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 15
        Width = 131
      end
      object edPais: TcxImageComboBox
        Left = 55
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
        Left = 55
        Top = 302
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 16
        Width = 400
      end
      object edint_uf: TcxTextEdit
        Left = 118
        Top = 219
        ParentFont = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 14
        Width = 178
      end
      object edbr_numero: TcxTextEdit
        Left = 10000
        Top = 10000
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 3
        Visible = False
        Width = 134
      end
      object edbr_complemento: TcxTextEdit
        Left = 10000
        Top = 10000
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 4
        Visible = False
        Width = 130
      end
      object edbr_cep: TcxMaskEdit
        Left = 10000
        Top = 10000
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 1
        Visible = False
        Width = 134
      end
      object edbr_codmun: TcxButtonEdit
        Left = 10000
        Top = 10000
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 6
        Visible = False
        Width = 134
      end
      object edbr_uf: TcxComboBox
        Left = 10000
        Top = 10000
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 9
        Visible = False
        Width = 66
      end
      object cxLabel1: TcxLabel
        Left = 10000
        Top = 10000
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
        Visible = False
        AnchorY = 10011
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
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object lgPais: TdxLayoutGroup
        Parent = LCGroup_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        ItemIndex = 1
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
        ItemIndex = 1
        ShowBorder = False
        Index = 0
      end
      object lcbr_logradouro: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Endere'#231'o'
        LayoutLookAndFeel = FrmPri.lfDefault
        Control = edbr_Logr
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lcbr_bairro: TdxLayoutItem
        Parent = lgBR
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Bairro'
        Control = edbr_bairro
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lcbr_cidade: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Cidade'
        Control = edbr_cidade
        ControlOptions.ShowBorder = False
        Index = 0
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
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcint_endereco2: TdxLayoutItem
        Parent = lgInt
        AlignHorz = ahLeft
        CaptionOptions.Text = ' '
        LayoutLookAndFeel = FrmPri.lfDefault
        Control = edint_endereco2
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
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcint_cidade: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Cidade'
        Control = edint_cidade
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lcint_cep: TdxLayoutItem
        Parent = lgInt
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'C'#243'digo Postal'
        Control = edint_cep
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object lcPais: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Pa'#237's'
        Control = edPais
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcDest: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Nome'
        LayoutLookAndFeel = FrmPri.lfDefault
        Control = edDest
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
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object lcbr_numero: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'N'#250'mero'
        Control = edbr_numero
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
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'CEP'
        LayoutLookAndFeel = FrmPri.lfDefault
        Control = edbr_cep
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcbr_codmun: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'C'#243'digo Mun.'
        Control = edbr_codmun
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcbr_uf: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'UF'
        Control = edbr_uf
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup3
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignVert = avClient
        CaptionOptions.Text = 'C'#243'digo IBGE para o munic'#237'pio'
        CaptionOptions.Visible = False
        Control = cxLabel1
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
    end
    object LMDSimplePanel2: TLMDSimplePanel
      AlignWithMargins = True
      Left = 0
      Top = 372
      Width = 572
      Height = 66
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
      ExplicitTop = 320
      ExplicitWidth = 902
      object LMDSimplePanel1: TLMDSimplePanel
        Left = 17
        Top = 17
        Width = 538
        Height = 32
        Hint = ''
        Margins.Left = 15
        Margins.Top = 0
        Margins.Right = 15
        Margins.Bottom = 15
        Align = alClient
        Bevel.Mode = bmCustom
        TabOrder = 0
        ExplicitLeft = 15
        ExplicitTop = 132
        ExplicitWidth = 491
        ExplicitHeight = 30
        object btnSalvar: TcxButton
          Left = 0
          Top = 0
          Width = 113
          Height = 32
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Salvar - F2'
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          ModalResult = 1
          TabOrder = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnSalvarClick
          ExplicitHeight = 30
        end
        object btnCancelar: TcxButton
          AlignWithMargins = True
          Left = 128
          Top = 0
          Width = 74
          Height = 32
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
          ExplicitHeight = 30
        end
      end
    end
  end
end
