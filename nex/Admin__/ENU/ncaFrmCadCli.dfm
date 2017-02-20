object FrmCadCli: TFrmCadCli
  Left = 241
  Top = 118
  Caption = 'Dados do Cliente'
  ClientHeight = 547
  ClientWidth = 795
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
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 36
    Width = 795
    Height = 511
    Hint = ''
    Align = alClient
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 0
    object NB: TdxNavBar
      AlignWithMargins = True
      Left = 0
      Top = 5
      Width = 89
      Height = 506
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      BorderStyle = bsSingle
      Color = 16250871
      ActiveGroupIndex = 0
      TabOrder = 0
      View = 3
      OptionsBehavior.Common.AllowSelectLinks = True
      OptionsImage.LargeImages = dmImagens.im32
      OptionsStyle.DefaultStyles.Button.BackColor = clBtnFace
      OptionsStyle.DefaultStyles.Button.BackColor2 = clBtnFace
      OptionsStyle.DefaultStyles.Button.Font.Charset = ANSI_CHARSET
      OptionsStyle.DefaultStyles.Button.Font.Color = clWindowText
      OptionsStyle.DefaultStyles.Button.Font.Height = -13
      OptionsStyle.DefaultStyles.Button.Font.Name = 'Segoe UI'
      OptionsStyle.DefaultStyles.Button.Font.Style = []
      OptionsStyle.DefaultStyles.Button.AssignedValues = [savFont]
      OptionsStyle.DefaultStyles.GroupBackground.BackColor = clBtnFace
      OptionsStyle.DefaultStyles.GroupBackground.BackColor2 = clBtnFace
      OptionsStyle.DefaultStyles.GroupBackground.Font.Charset = DEFAULT_CHARSET
      OptionsStyle.DefaultStyles.GroupBackground.Font.Color = clWindowText
      OptionsStyle.DefaultStyles.GroupBackground.Font.Height = -11
      OptionsStyle.DefaultStyles.GroupBackground.Font.Name = 'Tahoma'
      OptionsStyle.DefaultStyles.GroupBackground.Font.Style = []
      OptionsStyle.DefaultStyles.GroupBackground.AssignedValues = [savBackColor, savBackColor2]
      OptionsStyle.DefaultStyles.Item.BackColor = clWhite
      OptionsStyle.DefaultStyles.Item.BackColor2 = clWhite
      OptionsStyle.DefaultStyles.Item.Font.Charset = ANSI_CHARSET
      OptionsStyle.DefaultStyles.Item.Font.Color = clBtnText
      OptionsStyle.DefaultStyles.Item.Font.Height = -12
      OptionsStyle.DefaultStyles.Item.Font.Name = 'Segoe UI'
      OptionsStyle.DefaultStyles.Item.Font.Style = []
      OptionsStyle.DefaultStyles.Item.AssignedValues = [savFont]
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
            Item = nbiCred
          end
          item
            Item = nbiFid
          end
          item
            Item = nbiTran
          end>
      end
      object nbiCred: TdxNavBarItem
        Caption = 'Cr'#233'ditos Promocionais'
        LargeImageIndex = 108
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
    object Paginas: TcxPageControl
      AlignWithMargins = True
      Left = 94
      Top = 5
      Width = 701
      Height = 506
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = tsDados
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 505
      ClientRectLeft = 1
      ClientRectRight = 700
      ClientRectTop = 25
      object tsDados: TcxTabSheet
        Caption = 'Ficha'
        ImageIndex = 0
        ExplicitLeft = 0
        ExplicitTop = 28
        ExplicitWidth = 701
        ExplicitHeight = 478
        object lcFicha: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 699
          Height = 480
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          BevelKind = bkTile
          TabOrder = 0
          LayoutLookAndFeel = FrmPri.lfPadrao
          ExplicitWidth = 701
          ExplicitHeight = 478
          object edCodigo: TcxDBMaskEdit
            Left = 95
            Top = 13
            DataBinding.DataField = 'Codigo'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.Alignment.Horz = taLeftJustify
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            Left = 95
            Top = 46
            DataBinding.DataField = 'Nome'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            Width = 361
          end
          object edSexo: TcxDBImageComboBox
            Left = 298
            Top = 78
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
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            Style.ButtonStyle = btsFlat
            Style.PopupBorderStyle = epbsFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 4
            Width = 134
          end
          object edTelefone: TcxDBTextEdit
            Left = 95
            Top = 110
            DataBinding.DataField = 'Telefone'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            Left = 298
            Top = 110
            DataBinding.DataField = 'Celular'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            Left = 95
            Top = 142
            DataBinding.DataField = 'Rg'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            Left = 95
            Top = 78
            DataBinding.DataField = 'DataNasc'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.DisplayFormat = 'dd/mm/yyyy'
            Properties.EditFormat = 'dd/mm/yyyy'
            Properties.ImmediatePost = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            Style.ButtonStyle = btsFlat
            Style.PopupBorderStyle = epbsFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 3
            Width = 149
          end
          object edCPF: TcxDBTextEdit
            Left = 298
            Top = 142
            DataBinding.DataField = 'Cpf'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            TabOrder = 9
            Width = 134
          end
          object edMae: TcxDBTextEdit
            Left = 386
            Top = 302
            DataBinding.DataField = 'Mae'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            Width = 296
          end
          object edPai: TcxDBTextEdit
            Left = 95
            Top = 302
            DataBinding.DataField = 'Pai'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            Width = 251
          end
          object edEndereco: TcxDBTextEdit
            Left = 95
            Top = 174
            DataBinding.DataField = 'Endereco'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            TabOrder = 11
            Width = 531
          end
          object edBairro: TcxDBComboBox
            Left = 95
            Top = 238
            DataBinding.DataField = 'Bairro'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Sorted = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            Style.ButtonStyle = btsFlat
            Style.PopupBorderStyle = epbsFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 13
            Width = 250
          end
          object edCidade: TcxDBComboBox
            Left = 95
            Top = 206
            DataBinding.DataField = 'Cidade'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Sorted = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            Style.ButtonStyle = btsFlat
            Style.PopupBorderStyle = epbsFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 12
            Width = 250
          end
          object edUF: TcxDBTextEdit
            Left = 399
            Top = 238
            DataBinding.DataField = 'UF'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.LookupItemsSorted = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            TabOrder = 14
            Width = 282
          end
          object edCEP: TcxDBMaskEdit
            Left = 95
            Top = 270
            DataBinding.DataField = 'CEP'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            Width = 250
          end
          object edEmail: TcxDBMemo
            Left = 95
            Top = 334
            DataBinding.DataField = 'Email'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            Height = 36
            Width = 585
          end
          object edObs: TcxDBMemo
            Left = 95
            Top = 378
            DataBinding.DataField = 'Obs'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            TabOrder = 19
            Height = 65
            Width = 585
          end
          object pagFoto: TcxPageControl
            Left = 497
            Top = 13
            Width = 168
            Height = 126
            Color = clBtnFace
            ParentBackground = False
            ParentColor = False
            TabOrder = 10
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
              object LMDSimplePanel1: TLMDSimplePanel
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
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
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
                  Properties.GraphicClassName = 'TJPEGImage'
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
          object lbIdade: TcxLabel
            Left = 440
            Top = 78
            Caption = 'IDADE'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
            Transparent = True
          end
          object edPJuridica: TcxDBCheckBox
            Left = 252
            Top = 13
            Cursor = crHandPoint
            Caption = 'Empresa'
            DataBinding.DataField = 'PJuridica'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.OnEditValueChanged = edPJuridicaPropertiesEditValueChanged
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
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
            Width = 121
          end
          object lcFichaGroup_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Visible = False
            LayoutLookAndFeel = FrmPri.lfPadrao
            ButtonOptions.Buttons = <>
            Hidden = True
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
            ShowBorder = False
            Index = 0
          end
          object lcFichaItem2: TdxLayoutItem
            Parent = lcFichaGroup2
            AlignHorz = ahLeft
            CaptionOptions.Text = 'C'#243'digo'
            Control = edCodigo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem3: TdxLayoutItem
            Parent = lcFichaGroup1
            CaptionOptions.Text = 'Nome'
            Control = edNome
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaGroup4: TdxLayoutGroup
            Parent = lcFichaGroup1
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 2
          end
          object lcDataNasc: TdxLayoutItem
            Parent = lcFichaGroup18
            CaptionOptions.Text = 'Data Nasc.'
            Control = edNasc
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaGroup8: TdxLayoutGroup
            Parent = lcFichaGroup4
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
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
            Control = edTelefone
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem9: TdxLayoutItem
            Parent = lcFichaGroup7
            CaptionOptions.Text = 'Celular'
            Control = edCelular
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaGroup5: TdxLayoutGroup
            Parent = lcFichaGroup8
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object lcRG: TdxLayoutItem
            Parent = lcFichaGroup5
            CaptionOptions.Text = 'RG'
            Control = edRG
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcCPF: TdxLayoutItem
            Parent = lcFichaGroup5
            CaptionOptions.Text = 'CPF'
            Control = edCPF
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcSexo: TdxLayoutItem
            Parent = lcFichaGroup18
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Sexo'
            CaptionOptions.Width = 34
            Control = edSexo
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
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaGroup9: TdxLayoutGroup
            Parent = lcFichaGroup_Root
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object lcFichaGroup10: TdxLayoutGroup
            Parent = lcFichaGroup9
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object lcFichaItem17: TdxLayoutItem
            Parent = lcFichaGroup10
            CaptionOptions.Text = 'Endere'#231'o'
            Control = edEndereco
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem18: TdxLayoutItem
            Parent = lcFichaGroup3
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Bairro'
            Control = edBairro
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem19: TdxLayoutItem
            Parent = lcFichaGroup10
            CaptionOptions.Text = 'Cidade'
            Control = edCidade
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaItem20: TdxLayoutItem
            Parent = lcFichaGroup3
            CaptionOptions.Text = 'Estado'
            Control = edUF
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaItem21: TdxLayoutItem
            Parent = lcFichaGroup10
            AlignHorz = ahLeft
            CaptionOptions.Text = 'CEP'
            Control = edCEP
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object lcFichaGroup12: TdxLayoutGroup
            Parent = lcFichaGroup9
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object lcPai: TdxLayoutItem
            Parent = lcFichaGroup12
            CaptionOptions.Text = 'Pai'
            Control = edPai
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcMae: TdxLayoutItem
            Parent = lcFichaGroup12
            CaptionOptions.Text = 'M'#227'e'
            Control = edMae
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaItem22: TdxLayoutItem
            Parent = lcFichaGroup_Root
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'E-mail'
            Control = edEmail
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object lcFichaItem23: TdxLayoutItem
            Parent = lcFichaGroup_Root
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Observa'#231#245'es'
            Control = edObs
            ControlOptions.ShowBorder = False
            Index = 3
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
          object lcIdade: TdxLayoutItem
            Parent = lcFichaGroup18
            CaptionOptions.Text = 'cxLabel2'
            CaptionOptions.Visible = False
            Control = lbIdade
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object lcFichaItem1: TdxLayoutItem
            Parent = lcFichaGroup2
            CaptionOptions.Text = 'cxDBCheckBox1'
            CaptionOptions.Visible = False
            Control = edPJuridica
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaGroup2: TdxLayoutGroup
            Parent = lcFichaGroup1
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object lcFichaGroup3: TdxLayoutGroup
            Parent = lcFichaGroup10
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 2
          end
        end
      end
      object tsDebitos: TcxTabSheet
        Caption = 'Debitos'
        ImageIndex = 3
        object LMDSimplePanel11: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 699
          Height = 480
          Hint = ''
          Align = alClient
          Bevel.Mode = bmEdge
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
      object tsPass: TcxTabSheet
        Caption = 'Creditos'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 28
        ExplicitWidth = 701
        ExplicitHeight = 478
      end
      object tsExtratoFid: TcxTabSheet
        Caption = 'Fidelidade'
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 28
        ExplicitWidth = 701
        ExplicitHeight = 478
      end
      object tsTran: TcxTabSheet
        Caption = 'Historico'
        ImageIndex = 6
        ExplicitLeft = 0
        ExplicitTop = 28
        ExplicitWidth = 701
        ExplicitHeight = 478
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
    IndexName = 'IRg'
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
    SunkenBorder = True
    UseSystemFont = True
    Left = 304
    Top = 424
    DockControlHeights = (
      0
      0
      36
      0)
    object BarMgrBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
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
      LargeImageIndex = 5
      OnClick = cmGravarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      SyncImageIndex = False
      ImageIndex = 4
    end
    object cmCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = cmCancelarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
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
    Left = 176
    Top = 230
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
    Version = '7.65.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterInsert = MTAfterInsert
    AfterEdit = MTAfterEdit
    OnCalcFields = MTCalcFields
    Left = 208
    Top = 174
    object MTNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object MTEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object MTBairro: TStringField
      FieldName = 'Bairro'
    end
    object MTCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object MTUF: TStringField
      FieldName = 'UF'
      Size = 30
    end
    object MTCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object MTSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object MTCpf: TStringField
      FieldName = 'Cpf'
    end
    object MTRg: TStringField
      FieldName = 'Rg'
    end
    object MTTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object MTPassaportes: TFloatField
      FieldName = 'Passaportes'
    end
    object MTPai: TStringField
      FieldName = 'Pai'
      Size = 40
    end
    object MTMae: TStringField
      FieldName = 'Mae'
      Size = 40
    end
    object MTSenha: TStringField
      FieldName = 'Senha'
    end
    object MTUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object MTDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object MTEscola: TStringField
      FieldName = 'Escola'
      Size = 40
    end
    object MTNickName: TStringField
      FieldName = 'NickName'
      Size = 30
    end
    object MTDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object MTCelular: TStringField
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
      Size = 10
    end
    object MTAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 10
    end
    object MTTitEleitor: TStringField
      FieldName = 'TitEleitor'
      Size = 13
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
    object MTValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
    object MTID: TIntegerField
      FieldName = 'ID'
    end
    object MTIdade: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Idade'
      Calculated = True
    end
    object MTEmail: TMemoField
      FieldName = 'Email'
      BlobType = ftMemo
    end
    object MTObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object MTCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
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
    Left = 592
    Top = 192
  end
end
