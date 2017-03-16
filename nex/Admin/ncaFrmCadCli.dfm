object FrmCadCli: TFrmCadCli
  Left = 241
  Top = 118
  Caption = 'Dados do Cliente'
  ClientHeight = 674
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object panPri: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 31
    Width = 826
    Height = 643
    Hint = ''
    Margins.Left = 0
    Margins.Top = 1
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    Bevel.BorderSides = []
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 0
    object panPaginas: TLMDSimplePanel
      AlignWithMargins = True
      Left = 103
      Top = 0
      Width = 723
      Height = 643
      Hint = ''
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Bevel.Mode = bmStandard
      TabOrder = 0
      object Paginas: TcxPageControl
        Left = 1
        Top = 1
        Width = 721
        Height = 641
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tsTran
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 641
        ClientRectRight = 721
        ClientRectTop = 28
        object tsDados: TcxTabSheet
          Caption = 'Ficha'
          ImageIndex = 0
          object lcFicha: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 721
            Height = 613
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = FrmPri.lfPadrao
            OptionsImage.Images = dmImagens.im24
            object edCodigo: TcxDBMaskEdit
              Left = 130
              Top = 13
              DataBinding.DataField = 'Codigo'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = ''
              Style.StyleController = FrmPri.cxEditStyleController1
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = ''
              StyleFocused.Color = 11206655
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = ''
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = ''
              TabOrder = 0
              Width = 149
            end
            object edNome: TcxDBTextEdit
              Left = 130
              Top = 46
              DataBinding.DataField = 'Nome'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = ''
              Style.StyleController = FrmPri.cxEditStyleController1
              Style.TextStyle = [fsBold]
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = ''
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = ''
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = ''
              TabOrder = 2
              Width = 337
            end
            object edSexo: TcxDBImageComboBox
              Left = 333
              Top = 111
              DataBinding.DataField = 'Sexo'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.Items = <
                item
                  Description = 'Masculino'
                  ImageIndex = 0
                  Value = 'M'
                end
                item
                  Description = 'Feminino'
                  Value = 'F'
                end>
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = ''
              Style.StyleController = FrmPri.cxEditStyleController1
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = ''
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = ''
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = ''
              TabOrder = 5
              Width = 134
            end
            object edTelefone: TcxDBTextEdit
              Left = 130
              Top = 143
              DataBinding.DataField = 'Telefone'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = ''
              Style.StyleController = FrmPri.cxEditStyleController1
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = ''
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = ''
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = ''
              TabOrder = 6
              Width = 149
            end
            object edCelular: TcxDBTextEdit
              Left = 333
              Top = 143
              DataBinding.DataField = 'Celular'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = ''
              Style.StyleController = FrmPri.cxEditStyleController1
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = ''
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = ''
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = ''
              TabOrder = 7
              Width = 134
            end
            object edRG: TcxDBTextEdit
              Left = 130
              Top = 175
              DataBinding.DataField = 'Rg'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = ''
              Style.StyleController = FrmPri.cxEditStyleController1
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = ''
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = ''
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = ''
              TabOrder = 8
              Width = 149
            end
            object edNasc: TcxDBDateEdit
              Left = 130
              Top = 111
              DataBinding.DataField = 'DataNasc'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.DisplayFormat = 'dd/mm/yyyy'
              Properties.EditFormat = 'dd/mm/yyyy'
              Properties.ImmediatePost = True
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = ''
              Style.StyleController = FrmPri.cxEditStyleController1
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = ''
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = ''
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = ''
              TabOrder = 4
              Width = 149
            end
            object pagFoto: TcxPageControl
              Left = 485
              Top = 13
              Width = 168
              Height = 126
              Color = clBtnFace
              ParentBackground = False
              ParentColor = False
              TabOrder = 12
              Properties.ActivePage = tsSemFoto
              Properties.CustomButtons.Buttons = <>
              Properties.HideTabs = True
              LookAndFeel.NativeStyle = False
              ClientRectBottom = 124
              ClientRectLeft = 2
              ClientRectRight = 166
              ClientRectTop = 2
              object tsSemFoto: TcxTabSheet
                Caption = 'SemFoto'
                ImageIndex = 0
                object LMDSimplePanel2: TLMDSimplePanel
                  Left = 0
                  Top = 0
                  Width = 164
                  Height = 122
                  Hint = ''
                  Align = alClient
                  Bevel.Mode = bmStandard
                  TabOrder = 0
                  object Image1: TImage
                    Left = 1
                    Top = 1
                    Width = 162
                    Height = 120
                    Align = alClient
                    Center = True
                    ExplicitLeft = 0
                    ExplicitTop = 2
                    ExplicitWidth = 190
                    ExplicitHeight = 191
                  end
                  object lbSemFoto: TcxLabel
                    AlignWithMargins = True
                    Left = 11
                    Top = 11
                    Cursor = crHandPoint
                    Margins.Left = 10
                    Margins.Top = 10
                    Margins.Right = 10
                    Margins.Bottom = 10
                    Align = alClient
                    Caption = 'Clique aqui para fazer uma foto por WEB-CAM'
                    ParentFont = False
                    Style.HotTrack = True
                    Style.TextColor = 11382189
                    Style.TextStyle = []
                    Style.TransparentBorder = True
                    StyleHot.BorderStyle = ebsNone
                    StyleHot.TextColor = 6776679
                    StyleHot.TextStyle = [fsUnderline]
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.WordWrap = True
                    Transparent = True
                    OnMouseUp = lbSemFotoMouseUp
                    Width = 142
                    AnchorX = 82
                    AnchorY = 61
                  end
                end
              end
              object tsFoto: TcxTabSheet
                Caption = 'Foto'
                ImageIndex = 1
                object panFoto: TLMDSimplePanel
                  Left = 0
                  Top = 0
                  Width = 164
                  Height = 122
                  Hint = ''
                  Align = alClient
                  Bevel.Mode = bmCustom
                  TabOrder = 0
                  object edFoto: TcxDBImage
                    Left = 0
                    Top = 0
                    Cursor = crHandPoint
                    Align = alClient
                    DataBinding.DataField = 'Foto'
                    DataBinding.DataSource = DS
                    Properties.Caption = 'Teste'
                    Properties.GraphicClassName = 'TdxSmartImage'
                    Properties.ImmediatePost = True
                    Properties.OnEditValueChanged = edFotoPropertiesEditValueChanged
                    Style.BorderStyle = ebsFlat
                    Style.Color = clWhite
                    TabOrder = 0
                    OnMouseUp = edFotoMouseUp
                    Height = 122
                    Width = 164
                  end
                end
              end
            end
            object edPJuridica: TcxDBCheckBox
              Left = 287
              Top = 13
              Cursor = crHandPoint
              AutoSize = False
              Caption = 'Empresa'
              DataBinding.DataField = 'PJuridica'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.OnEditValueChanged = edPJuridicaPropertiesEditValueChanged
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
              Height = 25
              Width = 180
            end
            object panEnd: TLMDSimplePanel
              Left = 130
              Top = 274
              Width = 570
              Height = 136
              Hint = ''
              Bevel.Mode = bmCustom
              TabOrder = 14
            end
            object edObs: TcxDBMemo
              Left = 130
              Top = 482
              DataBinding.DataField = 'Obs'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = ''
              Style.StyleController = FrmPri.cxEditStyleController1
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = ''
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = ''
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = ''
              TabOrder = 18
              Height = 65
              Width = 571
            end
            object edEmail: TcxDBTextEdit
              Left = 130
              Top = 450
              DataBinding.DataField = 'Email'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = ''
              Style.StyleController = FrmPri.cxEditStyleController1
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = ''
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = ''
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = ''
              TabOrder = 17
              Width = 570
            end
            object edPai: TcxDBTextEdit
              Left = 130
              Top = 418
              DataBinding.DataField = 'Pai'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = ''
              Style.StyleController = FrmPri.cxEditStyleController1
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = ''
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = ''
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = ''
              TabOrder = 15
              Width = 257
            end
            object edMae: TcxDBTextEdit
              Left = 427
              Top = 418
              DataBinding.DataField = 'Mae'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = ''
              Style.StyleController = FrmPri.cxEditStyleController1
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = ''
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = ''
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = ''
              TabOrder = 16
              Width = 273
            end
            object edCPF: TcxDBTextEdit
              Left = 130
              Top = 208
              DataBinding.DataField = 'Cpf'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = ''
              Style.StyleController = FrmPri.cxEditStyleController1
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = ''
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = ''
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = ''
              TabOrder = 10
              Width = 149
            end
            object edIsentoIE: TcxDBCheckBox
              Left = 287
              Top = 175
              Cursor = crHandPoint
              Caption = 'Isento de IE'
              DataBinding.DataField = 'IsentoIE'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 9
              OnClick = edIsentoIEClick
            end
            object edNaoContribICMS: TcxDBCheckBox
              Left = 287
              Top = 208
              Cursor = crHandPoint
              Caption = 'N'#227'o '#233' contribuite de ICMS'
              DataBinding.DataField = 'NaoContribICMS'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.NullStyle = nssUnchecked
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 11
              OnClick = edNaoContribICMSClick
            end
            object edAprovICMS: TcxDBCheckBox
              Left = 130
              Top = 241
              Cursor = crHandPoint
              Caption = 'Destacar aproveitamento de cr'#233'dito de ICMS na NF-e'
              DataBinding.DataField = 'NFE_CredIcms'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.NullStyle = nssUnchecked
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 13
            end
            object edConsumidor: TcxDBImageComboBox
              Left = 130
              Top = 78
              DataBinding.DataField = 'Consumidor'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.ImmediateDropDownWhenActivated = True
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = 
                    'Revenda/Ind'#250'stria - Empresa compra para revender ou industrializ' +
                    'ar'
                  Value = False
                end
                item
                  Description = 'Consumo - Empresa compra para consumo pr'#243'prio'
                  Value = True
                end>
              Style.HotTrack = False
              TabOrder = 3
              Width = 336
            end
            object edInfoExtra: TcxDBTextEdit
              Left = 130
              Top = 555
              DataBinding.DataField = 'InfoExtra'
              DataBinding.DataSource = DS
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 19
              Width = 262
            end
            object edTranspEntPadrao: TcxDBButtonEdit
              Left = 439
              Top = 555
              DataBinding.DataField = 'NomeTranspEnt'
              DataBinding.DataSource = DS
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClearKey = 46
              Properties.ReadOnly = True
              Properties.OnButtonClick = edTranspEntPadraoPropertiesButtonClick
              Style.HotTrack = False
              TabOrder = 20
              OnEnter = edTranspEntPadraoEnter
              Width = 263
            end
            object lcFichaGroup_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Visible = False
              LayoutLookAndFeel = FrmPri.lfPadrao
              ButtonOptions.Buttons = <>
              Hidden = True
              ItemIndex = 6
              ShowBorder = False
              Index = -1
            end
            object lcFichaGroup6: TdxLayoutGroup
              Parent = lcFichaGroup_Root
              CaptionOptions.Text = 'Hidden Group'
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object lcFichaGroup1: TdxLayoutGroup
              Parent = lcFichaGroup6
              CaptionOptions.Text = 'Hidden Group'
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              ItemIndex = 2
              ShowBorder = False
              Index = 0
            end
            object lcFichaItem2: TdxLayoutItem
              Parent = lcFichaGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'C'#243'digo'
              LayoutLookAndFeel = FrmPri.lfDefault
              Control = edCodigo
              ControlOptions.OriginalHeight = 24
              ControlOptions.OriginalWidth = 149
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcFichaItem3: TdxLayoutItem
              Parent = lcFichaGroup1
              CaptionOptions.Text = 'Nome'
              LayoutLookAndFeel = FrmPri.lfDefault
              Control = edNome
              ControlOptions.OriginalHeight = 24
              ControlOptions.OriginalWidth = 337
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcFichaGroup4: TdxLayoutGroup
              Parent = lcFichaGroup1
              CaptionOptions.Text = 'Hidden Group'
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              ItemIndex = 1
              ShowBorder = False
              Index = 3
            end
            object lcDataNasc: TdxLayoutItem
              Parent = lcFichaGroup18
              CaptionOptions.Text = 'Data Nasc.'
              LayoutLookAndFeel = FrmPri.lfDefault
              Control = edNasc
              ControlOptions.OriginalHeight = 24
              ControlOptions.OriginalWidth = 149
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcFichaGroup8: TdxLayoutGroup
              Parent = lcFichaGroup4
              CaptionOptions.Text = 'Hidden Group'
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              ItemIndex = 1
              ShowBorder = False
              Index = 1
            end
            object lcFichaGroup7: TdxLayoutGroup
              Parent = lcFichaGroup8
              CaptionOptions.Text = 'Hidden Group'
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object lcFichaItem8: TdxLayoutItem
              Parent = lcFichaGroup7
              CaptionOptions.Text = 'Telefone'
              LayoutLookAndFeel = FrmPri.lfDefault
              Control = edTelefone
              ControlOptions.OriginalHeight = 24
              ControlOptions.OriginalWidth = 149
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcFichaItem9: TdxLayoutItem
              Parent = lcFichaGroup7
              CaptionOptions.Text = 'Celular'
              LayoutLookAndFeel = FrmPri.lfDefault
              Control = edCelular
              ControlOptions.OriginalHeight = 24
              ControlOptions.OriginalWidth = 134
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcRG: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'RG'
              LayoutLookAndFeel = FrmPri.lfDefault
              Control = edRG
              ControlOptions.OriginalHeight = 24
              ControlOptions.OriginalWidth = 149
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcSexo: TdxLayoutItem
              Parent = lcFichaGroup18
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Sexo'
              LayoutLookAndFeel = FrmPri.lfDefault
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = False
              Control = edSexo
              ControlOptions.AlignHorz = ahLeft
              ControlOptions.OriginalHeight = 24
              ControlOptions.OriginalWidth = 134
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcFichaItem24: TdxLayoutItem
              Parent = lcFichaGroup6
              CaptionOptions.Text = 'cxPageControl2'
              CaptionOptions.Visible = False
              Offsets.Left = 10
              Control = pagFoto
              ControlOptions.AutoColor = True
              ControlOptions.OriginalHeight = 126
              ControlOptions.OriginalWidth = 168
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcFichaGroup18: TdxLayoutGroup
              Parent = lcFichaGroup4
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object lcFichaItem1: TdxLayoutItem
              Parent = lcFichaGroup2
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              LayoutLookAndFeel = FrmPri.lfFlat
              Control = edPJuridica
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 180
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcFichaGroup2: TdxLayoutGroup
              Parent = lcFichaGroup1
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ItemIndex = 1
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object lcEnderecos: TdxLayoutItem
              Parent = lcFichaGroup_Root
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.AlignVert = tavTop
              CaptionOptions.Text = 'Endere'#231'o'
              LayoutLookAndFeel = FrmPri.lfDefault
              Control = panEnd
              ControlOptions.OriginalHeight = 136
              ControlOptions.OriginalWidth = 570
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lcFichaItem23: TdxLayoutItem
              Parent = lcFichaGroup_Root
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.AlignVert = tavTop
              CaptionOptions.Text = 'Observa'#231#245'es'
              LayoutLookAndFeel = FrmPri.lfDefault
              Control = edObs
              ControlOptions.OriginalHeight = 65
              ControlOptions.OriginalWidth = 571
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object lcFichaItem22: TdxLayoutItem
              Parent = lcFichaGroup_Root
              AlignHorz = ahLeft
              CaptionOptions.AlignVert = tavTop
              CaptionOptions.Text = 'E-mail'
              LayoutLookAndFeel = FrmPri.lfDefault
              Control = edEmail
              ControlOptions.OriginalHeight = 24
              ControlOptions.OriginalWidth = 570
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object lcPai: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Pai'
              LayoutLookAndFeel = FrmPri.lfDefault
              Visible = False
              Control = edPai
              ControlOptions.OriginalHeight = 24
              ControlOptions.OriginalWidth = 257
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcMae: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'M'#227'e'
              LayoutLookAndFeel = FrmPri.lfDefault
              Visible = False
              Control = edMae
              ControlOptions.OriginalHeight = 24
              ControlOptions.OriginalWidth = 273
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = lcFichaGroup_Root
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
            object lcCPF: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              CaptionOptions.Text = 'CPF'
              LayoutLookAndFeel = FrmPri.lfDefault
              Control = edCPF
              ControlOptions.OriginalHeight = 24
              ControlOptions.OriginalWidth = 149
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcIsentoIE: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              LayoutLookAndFeel = FrmPri.lfFlat
              Control = edIsentoIE
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 92
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = lcFichaGroup8
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object lcNaoContribICMS: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              CaptionOptions.Visible = False
              LayoutLookAndFeel = FrmPri.lfFlat
              Control = edNaoContribICMS
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 179
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = lcFichaGroup8
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object lcAprovICMS: TdxLayoutItem
              Parent = lcFichaGroup_Root
              AlignHorz = ahLeft
              CaptionOptions.Text = ' '
              LayoutLookAndFeel = FrmPri.lfFlat
              Control = edAprovICMS
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 338
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcConsumidor: TdxLayoutItem
              Parent = lcFichaGroup1
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Revenda/consumo'
              LayoutLookAndFeel = FrmPri.lfFlat
              Visible = False
              Control = edConsumidor
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 336
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lcInfoExtra: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Informa'#231#245'es extras'
              CaptionOptions.WordWrap = True
              LayoutLookAndFeel = FrmPri.lfFlat
              Control = edInfoExtra
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 262
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcTranspEntPadrao: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.ImageIndex = 67
              LayoutLookAndFeel = FrmPri.lfFlat
              Offsets.Left = 10
              Padding.AssignedValues = [lpavTop]
              Control = edTranspEntPadrao
              ControlOptions.AlignVert = avBottom
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 263
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = lcFichaGroup_Root
              LayoutDirection = ldHorizontal
              Index = 6
              AutoCreated = True
            end
          end
        end
        object tsDebitos: TcxTabSheet
          Caption = 'Debitos'
          ImageIndex = 3
          object LMDSimplePanel11: TLMDSimplePanel
            Left = 0
            Top = 0
            Width = 721
            Height = 613
            Hint = ''
            Align = alClient
            Bevel.Mode = bmStandard
            Bevel.StandardStyle = lsNone
            TabOrder = 0
            object cxLabel2: TcxLabel
              Left = 12
              Top = 12
              Caption = 'Valor limite para d'#233'bitos: '
              ParentFont = False
              Style.TextStyle = [fsBold]
            end
            object rbLimiteDeb_padrao: TcxRadioButton
              Left = 36
              Top = 39
              Width = 261
              Height = 17
              Cursor = crHandPoint
              Caption = 'Seguir limite padr'#227'o (R$15,00)'
              Checked = True
              TabOrder = 1
              TabStop = True
              OnClick = rbLimiteDeb_padraoClick
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
            end
            object rbLimiteDeb_Zero: TcxRadioButton
              Left = 36
              Top = 65
              Width = 341
              Height = 17
              Cursor = crHandPoint
              Caption = 'N'#227'o permitir d'#233'bitos para esse cliente'
              TabOrder = 2
              OnClick = rbLimiteDeb_ZeroClick
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
            end
            object rbLimiteDeb_Valor: TcxRadioButton
              Left = 36
              Top = 91
              Width = 333
              Height = 17
              Cursor = crHandPoint
              Caption = 'Esse cliente possui um limite diferenciado:'
              TabOrder = 3
              OnClick = rbLimiteDeb_ValorClick
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
            end
            object edLimiteDeb: TcxDBCurrencyEdit
              Left = 54
              Top = 110
              DataBinding.DataField = 'LimiteDebito'
              DataBinding.DataSource = DS
              Enabled = False
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Color = clWindow
              TabOrder = 4
              Width = 121
            end
            object btnAlterarLimiteDeb: TcxButton
              Left = 320
              Top = 38
              Width = 121
              Height = 21
              Cursor = crHandPoint
              Caption = 'Alterar limite padr'#227'o'
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              TabOrder = 5
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              OnClick = btnAlterarLimiteDebClick
            end
          end
        end
        object tsExtratoFid: TcxTabSheet
          Caption = 'Fidelidade'
          ImageIndex = 5
        end
        object tsTran: TcxTabSheet
          Caption = 'Historico'
          ImageIndex = 6
        end
      end
    end
    object LMDSimplePanel1: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 96
      Height = 643
      Hint = ''
      Align = alLeft
      Bevel.Mode = bmStandard
      TabOrder = 1
      object NB: TdxNavBar
        Left = 1
        Top = 1
        Width = 94
        Height = 641
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Color = 16250871
        Ctl3D = False
        ActiveGroupIndex = 0
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        View = 4
        OptionsBehavior.Common.AllowSelectLinks = True
        OptionsImage.LargeImages = dmImagens.im32
        OptionsStyle.DefaultStyles.Button.BackColor = clBtnFace
        OptionsStyle.DefaultStyles.Button.BackColor2 = clBtnFace
        OptionsStyle.DefaultStyles.Button.Font.Charset = DEFAULT_CHARSET
        OptionsStyle.DefaultStyles.Button.Font.Color = clWindowText
        OptionsStyle.DefaultStyles.Button.Font.Height = -11
        OptionsStyle.DefaultStyles.Button.Font.Name = 'Tahoma'
        OptionsStyle.DefaultStyles.Button.Font.Style = []
        OptionsStyle.DefaultStyles.Button.AssignedValues = [savFont]
        OptionsStyle.DefaultStyles.Item.BackColor = clWhite
        OptionsStyle.DefaultStyles.Item.BackColor2 = clWhite
        OptionsStyle.DefaultStyles.Item.Font.Charset = ANSI_CHARSET
        OptionsStyle.DefaultStyles.Item.Font.Color = clBtnText
        OptionsStyle.DefaultStyles.Item.Font.Height = -12
        OptionsStyle.DefaultStyles.Item.Font.Name = 'Segoe UI'
        OptionsStyle.DefaultStyles.Item.Font.Style = []
        OptionsStyle.DefaultStyles.Item.AssignedValues = [savFont]
        OptionsStyle.DefaultStyles.ItemPressed.BackColor = clWhite
        OptionsStyle.DefaultStyles.ItemPressed.BackColor2 = clWhite
        OptionsStyle.DefaultStyles.ItemPressed.Font.Charset = ANSI_CHARSET
        OptionsStyle.DefaultStyles.ItemPressed.Font.Color = clBtnText
        OptionsStyle.DefaultStyles.ItemPressed.Font.Height = -12
        OptionsStyle.DefaultStyles.ItemPressed.Font.Name = 'Segoe UI Semibold'
        OptionsStyle.DefaultStyles.ItemPressed.Font.Style = [fsBold]
        OptionsStyle.DefaultStyles.ItemPressed.AssignedValues = [savFont]
        OptionsView.Common.ShowGroupCaptions = False
        OptionsView.NavigationPane.ShowHeader = False
        OptionsView.NavigationPane.ShowOverflowPanel = False
        OnLinkClick = NBLinkClick
        object NBGroup1: TdxNavBarGroup
          Caption = 'NBGroup1'
          LinksUseSmallImages = False
          SelectedLinkIndex = 0
          TopVisibleLinkIndex = 0
          Links = <
            item
              Item = nbiFicha
            end
            item
              Item = nbiDebitos
            end
            item
              Item = nbiFid
            end
            item
              Item = nbiTran
            end>
        end
        object nbiFicha: TdxNavBarItem
          Caption = 'Ficha Cadastral'
          LargeImageIndex = 91
        end
        object nbiFid: TdxNavBarItem
          Caption = 'Extrato Fidelidade'
          LargeImageIndex = 73
        end
        object nbiTran: TdxNavBarItem
          Caption = 'Transa'#231#245'es'
          LargeImageIndex = 92
        end
        object nbiDebitos: TdxNavBarItem
          Caption = 'D'#233'bitos'
          LargeImageIndex = 94
        end
        object NBStyleItem1: TdxNavBarStyleItem
          Style.BackColor = clWhite
          Style.BackColor2 = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.AssignedValues = [savFont]
        end
      end
    end
  end
  object tAux: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Timeout = 10000
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Cliente'
    IndexName = 'IFornecedorRg'
    Left = 344
    Top = 408
  end
  object BarMgr: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmImagens.im16
    ImageOptions.LargeImages = dmImagens.im24
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 336
    Top = 304
    DockControlHeights = (
      0
      0
      30
      0)
    object barTopo: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 671
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmGravar'
        end
        item
          Visible = True
          ItemName = 'cmCancelar'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object cmGravar: TdxBarLargeButton
      Caption = '&Salvar - F2'
      Category = 0
      Hint = 'Salvar - F2'
      Visible = ivAlways
      OnClick = cmGravarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 5
      SyncImageIndex = False
      ImageIndex = 4
    end
    object cmCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      OnClick = cmCancelarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 4
    end
    object dxBarCombo1: TdxBarCombo
      Caption = 'Tipo da Conta'
      Category = 0
      Hint = 'Tipo da Conta'
      Visible = ivAlways
      ShowCaption = True
      Text = 'Cliente Normal'
      ItemIndex = -1
    end
    object dxBarCombo2: TdxBarCombo
      Caption = 'Status da Conta'
      Category = 0
      Hint = 'Status da Conta'
      Visible = ivAlways
      ShowCaption = True
      ItemIndex = -1
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'N'#227'o guardar cr'#233'dito de tempo restante no final do acesso'
      Category = 0
      Hint = 'N'#227'o guardar cr'#233'dito de tempo restante no final do acesso'
      Visible = ivAlways
      ShowCaption = True
      Width = 20
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.NullStyle = nssUnchecked
    end
  end
  object DS: TDataSource
    DataSet = MT
    OnStateChange = DSStateChange
    OnDataChange = DSDataChange
    Left = 256
    Top = 392
  end
  object FMgr: TFormManager
    BarMgr = BarMgr
    PageControl = Paginas
    OnPageControlChange = FMgrPageControlChange
    OnGetTabSheet = FMgrGetTabSheet
    Left = 256
    Top = 318
  end
  object MT: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = False
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Endereco'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Sexo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Cpf'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Rg'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Telefone'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Passaportes'
        DataType = ftFloat
      end
      item
        Name = 'Pai'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Mae'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Senha'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UltVisita'
        DataType = ftDateTime
      end
      item
        Name = 'Debito'
        DataType = ftCurrency
      end
      item
        Name = 'Escola'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NickName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DataNasc'
        DataType = ftDateTime
      end
      item
        Name = 'Celular'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TemDebito'
        DataType = ftBoolean
      end
      item
        Name = 'LimiteDebito'
        DataType = ftCurrency
      end
      item
        Name = 'Foto'
        DataType = ftGraphic
      end
      item
        Name = 'IncluidoEm'
        DataType = ftDateTime
      end
      item
        Name = 'AlteradoEm'
        DataType = ftDateTime
      end
      item
        Name = 'IncluidoPor'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'AlteradoPor'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TitEleitor'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'FidPontos'
        DataType = ftFloat
      end
      item
        Name = 'FidTotal'
        DataType = ftFloat
      end
      item
        Name = 'FidResg'
        DataType = ftFloat
      end
      item
        Name = 'Aniversario'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'SemFidelidade'
        DataType = ftBoolean
      end
      item
        Name = 'TemCredito'
        DataType = ftBoolean
      end
      item
        Name = 'PJuridica'
        DataType = ftBoolean
      end
      item
        Name = 'Inativo'
        DataType = ftBoolean
      end
      item
        Name = 'ValorCred'
        DataType = ftCurrency
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Email'
        DataType = ftMemo
      end
      item
        Name = 'Obs'
        DataType = ftMemo
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
    AfterInsert = MTAfterInsert
    AfterEdit = MTAfterEdit
    OnCalcFields = MTCalcFields
    Left = 232
    Top = 174
    object MTNaoContribICMS: TBooleanField
      FieldName = 'NaoContribICMS'
    end
    object MTIsentoIE: TBooleanField
      FieldName = 'IsentoIE'
    end
    object MTCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object MTCodigoKey: TStringField
      FieldName = 'CodigoKey'
      Size = 15
    end
    object MTNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object MTEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object MTEndereco2: TWideStringField
      FieldName = 'Endereco2'
      Size = 60
    end
    object MTEnd_Numero: TWideStringField
      FieldName = 'End_Numero'
    end
    object MTEnd_CodMun: TWideStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object MTEnd_Dest: TWideStringField
      FieldName = 'End_Dest'
      Size = 40
    end
    object MTEnd_Obs: TWideStringField
      FieldName = 'End_Obs'
      Size = 40
    end
    object MTendereco_id: TGuidField
      FieldName = 'endereco_id'
      Size = 38
    end
    object MTPais: TWideStringField
      FieldName = 'Pais'
      Size = 2
    end
    object MTBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object MTCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object MTUF: TWideStringField
      FieldName = 'UF'
      Size = 30
    end
    object MTCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object MTNFE_CredIcms: TBooleanField
      FieldName = 'NFE_CredIcms'
    end
    object MTSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object MTObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object MTCpf: TWideStringField
      FieldName = 'Cpf'
    end
    object MTRg: TWideStringField
      FieldName = 'Rg'
    end
    object MTTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object MTPassaportes: TFloatField
      FieldName = 'Passaportes'
    end
    object MTPai: TWideStringField
      FieldName = 'Pai'
      Size = 40
    end
    object MTMae: TWideStringField
      FieldName = 'Mae'
      Size = 40
    end
    object MTUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object MTDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object MTDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object MTCelular: TWideStringField
      FieldName = 'Celular'
      Size = 15
    end
    object MTTemDebito: TBooleanField
      FieldName = 'TemDebito'
    end
    object MTLimiteDebito: TCurrencyField
      FieldName = 'LimiteDebito'
    end
    object MTFoto: TGraphicField
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object MTIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object MTAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object MTIncluidoPor: TStringField
      FieldName = 'IncluidoPor'
    end
    object MTAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
    end
    object MTFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object MTFidTotal: TFloatField
      FieldName = 'FidTotal'
    end
    object MTFidResg: TFloatField
      FieldName = 'FidResg'
    end
    object MTAniversario: TStringField
      FieldName = 'Aniversario'
      Size = 4
    end
    object MTSemFidelidade: TBooleanField
      FieldName = 'SemFidelidade'
    end
    object MTTemCredito: TBooleanField
      FieldName = 'TemCredito'
    end
    object MTPJuridica: TBooleanField
      FieldName = 'PJuridica'
    end
    object MTInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object MTFornecedor: TBooleanField
      FieldName = 'Fornecedor'
    end
    object MTValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
    object MTIdade: TWordField
      FieldKind = fkCalculated
      FieldName = 'Idade'
      Calculated = True
    end
    object MTID: TLongWordField
      FieldName = 'ID'
    end
    object MTConsumidor: TBooleanField
      FieldName = 'Consumidor'
    end
    object MTEmail: TWideStringField
      FieldName = 'Email'
      Size = 500
    end
    object MTInfoExtra: TWideStringField
      FieldName = 'InfoExtra'
      Size = 50
    end
    object MTTranspEntPadrao: TLongWordField
      FieldName = 'TranspEntPadrao'
    end
    object MTNomeTranspEnt: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeTranspEnt'
      LookupDataSet = Dados.mtTransp
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'TranspEntPadrao'
      Size = 50
      Lookup = True
    end
  end
  object L: TcxLookAndFeelController
    Kind = lfFlat
    Left = 400
    Top = 408
  end
  object OpenDlg: TOpenDialog
    Filter = 'Imagens|*.jpeg;*.jpg;*.bmp'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 400
    Top = 312
  end
  object FTab: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'Cliente'
    IndexName = 'IID'
    Left = 648
    Top = 260
    object FTabID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object FTabUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object FTabCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object FTabCodigoKey: TStringField
      FieldName = 'CodigoKey'
      Size = 15
    end
    object FTabNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object FTabEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object FTabEndereco2: TWideStringField
      FieldName = 'Endereco2'
      Size = 60
    end
    object FTabEnd_Numero: TWideStringField
      FieldName = 'End_Numero'
    end
    object FTabEnd_CodMun: TWideStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object FTabEnd_Dest: TWideStringField
      FieldName = 'End_Dest'
      Size = 40
    end
    object FTabEnd_Obs: TWideStringField
      FieldName = 'End_Obs'
      Size = 40
    end
    object FTabendereco_id: TGuidField
      FieldName = 'endereco_id'
      Size = 38
    end
    object FTabPais: TWideStringField
      FieldName = 'Pais'
      Size = 2
    end
    object FTabBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object FTabCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object FTabUF: TWideStringField
      FieldName = 'UF'
      Size = 30
    end
    object FTabCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object FTabNaoContribICMS: TBooleanField
      FieldName = 'NaoContribICMS'
    end
    object FTabIsentoIE: TBooleanField
      FieldName = 'IsentoIE'
    end
    object FTabNFE_CredIcms: TBooleanField
      FieldName = 'NFE_CredIcms'
    end
    object FTabSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object FTabObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object FTabCpf: TWideStringField
      FieldName = 'Cpf'
    end
    object FTabRg: TWideStringField
      FieldName = 'Rg'
    end
    object FTabTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object FTabEmail: TWideMemoField
      FieldName = 'Email'
      BlobType = ftWideMemo
    end
    object FTabPassaportes: TFloatField
      FieldName = 'Passaportes'
    end
    object FTabPai: TWideStringField
      FieldName = 'Pai'
      Size = 40
    end
    object FTabMae: TWideStringField
      FieldName = 'Mae'
      Size = 40
    end
    object FTabUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object FTabDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object FTabDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object FTabCelular: TWideStringField
      FieldName = 'Celular'
      Size = 15
    end
    object FTabTemDebito: TBooleanField
      FieldName = 'TemDebito'
    end
    object FTabLimiteDebito: TCurrencyField
      FieldName = 'LimiteDebito'
    end
    object FTabFoto: TGraphicField
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object FTabIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object FTabAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object FTabIncluidoPor: TStringField
      FieldName = 'IncluidoPor'
    end
    object FTabAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
    end
    object FTabFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object FTabFidTotal: TFloatField
      FieldName = 'FidTotal'
    end
    object FTabFidResg: TFloatField
      FieldName = 'FidResg'
    end
    object FTabAniversario: TStringField
      FieldName = 'Aniversario'
      Size = 4
    end
    object FTabSemFidelidade: TBooleanField
      FieldName = 'SemFidelidade'
    end
    object FTabTemCredito: TBooleanField
      FieldName = 'TemCredito'
    end
    object FTabInfoExtra: TWideStringField
      FieldName = 'InfoExtra'
      Size = 50
    end
    object FTabTranspEntPadrao: TLongWordField
      FieldName = 'TranspEntPadrao'
    end
    object FTabTranspEnt: TBooleanField
      FieldName = 'TranspEnt'
    end
    object FTabTipoFor: TByteField
      FieldName = 'TipoFor'
    end
    object FTabPJuridica: TBooleanField
      FieldName = 'PJuridica'
    end
    object FTabConsumidor: TBooleanField
      FieldName = 'Consumidor'
    end
    object FTabInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object FTabFornecedor: TBooleanField
      FieldName = 'Fornecedor'
    end
    object FTabValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
    object FTabRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
end
