object FrmCadCli: TFrmCadCli
  Left = 241
  Top = 118
  Caption = 'Dados do Cliente'
  ClientHeight = 576
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 36
    Width = 765
    Height = 540
    Align = alClient
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 0
    object NB: TdxNavBar
      AlignWithMargins = True
      Left = 0
      Top = 5
      Width = 89
      Height = 535
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
      OptionsStyle.DefaultStyles.GroupBackground.BackColor = clBtnFace
      OptionsStyle.DefaultStyles.GroupBackground.BackColor2 = clBtnFace
      OptionsStyle.DefaultStyles.GroupBackground.Font.Charset = DEFAULT_CHARSET
      OptionsStyle.DefaultStyles.GroupBackground.Font.Color = clWindowText
      OptionsStyle.DefaultStyles.GroupBackground.Font.Height = -11
      OptionsStyle.DefaultStyles.GroupBackground.Font.Name = 'Tahoma'
      OptionsStyle.DefaultStyles.GroupBackground.Font.Style = []
      OptionsStyle.DefaultStyles.GroupBackground.AssignedValues = [savBackColor, savBackColor2]
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
            Item = nbiCensura
          end
          item
            Item = nbiOpcoes
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
      object nbiCensura: TdxNavBarItem
        Caption = 'Censura de Hor'#225'rio'
        LargeImageIndex = 109
      end
      object nbiOpcoes: TdxNavBarItem
        Caption = 'Op'#231#245'es'
        LargeImageIndex = 17
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
      Width = 671
      Height = 535
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = tsDados
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 535
      ClientRectRight = 671
      ClientRectTop = 24
      object tsDados: TcxTabSheet
        Caption = 'Ficha'
        ImageIndex = 0
        object lcFicha: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 671
          Height = 511
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          BevelKind = bkTile
          TabOrder = 0
          LayoutLookAndFeel = FrmPri.lfPadrao
          object edCodigo: TcxDBMaskEdit
            Left = 78
            Top = 10
            DataBinding.DataField = 'ID'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.Color = 11206655
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 0
            Width = 149
          end
          object edNome: TcxDBTextEdit
            Left = 78
            Top = 40
            DataBinding.DataField = 'Nome'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 1
            Width = 347
          end
          object edUsername: TcxDBTextEdit
            Left = 78
            Top = 70
            DataBinding.DataField = 'Username'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.IncrementalSearch = False
            Properties.OnChange = edUsernamePropertiesChange
            Properties.OnEditValueChanged = edUsernamePropertiesEditValueChanged
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 2
            OnEnter = edUsernameEnter
            OnExit = edUsernameExit
            Width = 149
          end
          object edSenha: TcxDBTextEdit
            Left = 271
            Top = 70
            DataBinding.DataField = 'Senha'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 3
            Width = 154
          end
          object edSexo: TcxDBImageComboBox
            Left = 271
            Top = 243
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
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            Style.ButtonStyle = btsFlat
            Style.PopupBorderStyle = epbsFlat
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 13
            Width = 134
          end
          object edApelido: TcxDBTextEdit
            Left = 78
            Top = 123
            DataBinding.DataField = 'NickName'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 5
            Width = 134
          end
          object edTelefone: TcxDBTextEdit
            Left = 78
            Top = 183
            DataBinding.DataField = 'Telefone'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 8
            Width = 149
          end
          object edCelular: TcxDBTextEdit
            Left = 271
            Top = 183
            DataBinding.DataField = 'Celular'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 9
            Width = 134
          end
          object edRG: TcxDBTextEdit
            Left = 78
            Top = 213
            DataBinding.DataField = 'Rg'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 10
            Width = 149
          end
          object edNasc: TcxDBDateEdit
            Left = 78
            Top = 153
            DataBinding.DataField = 'DataNasc'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            Style.ButtonStyle = btsFlat
            Style.PopupBorderStyle = epbsFlat
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 6
            Width = 149
          end
          object edCPF: TcxDBTextEdit
            Left = 271
            Top = 213
            DataBinding.DataField = 'Cpf'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 11
            Width = 134
          end
          object edMae: TcxDBTextEdit
            Left = 360
            Top = 393
            DataBinding.DataField = 'Mae'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 22
            Width = 249
          end
          object edPai: TcxDBTextEdit
            Left = 78
            Top = 393
            DataBinding.DataField = 'Pai'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 21
            Width = 251
          end
          object edTitEleitor: TcxDBTextEdit
            Left = 78
            Top = 243
            DataBinding.DataField = 'TitEleitor'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 12
            Width = 149
          end
          object edEscola: TcxDBComboBox
            Left = 78
            Top = 363
            DataBinding.DataField = 'Escola'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Sorted = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            Style.ButtonStyle = btsFlat
            Style.PopupBorderStyle = epbsFlat
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 20
            Width = 250
          end
          object edEndereco: TcxDBTextEdit
            Left = 78
            Top = 273
            DataBinding.DataField = 'Endereco'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 15
            Width = 531
          end
          object edBairro: TcxDBComboBox
            Left = 78
            Top = 303
            DataBinding.DataField = 'Bairro'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Sorted = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            Style.ButtonStyle = btsFlat
            Style.PopupBorderStyle = epbsFlat
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 16
            Width = 250
          end
          object edCidade: TcxDBComboBox
            Left = 78
            Top = 333
            DataBinding.DataField = 'Cidade'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Sorted = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            Style.ButtonStyle = btsFlat
            Style.PopupBorderStyle = epbsFlat
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 17
            Width = 250
          end
          object edUF: TcxDBTextEdit
            Left = 360
            Top = 333
            DataBinding.DataField = 'UF'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.LookupItemsSorted = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 18
            Width = 36
          end
          object edCEP: TcxDBMaskEdit
            Left = 426
            Top = 333
            DataBinding.DataField = 'CEP'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 19
            Width = 95
          end
          object edEmail: TcxDBMemo
            Left = 78
            Top = 423
            DataBinding.DataField = 'Email'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 23
            Height = 36
            Width = 531
          end
          object edObs: TcxDBMemo
            Left = 78
            Top = 465
            DataBinding.DataField = 'Obs'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.cxEditStyleController1
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 24
            Height = 65
            Width = 531
          end
          object pagFoto: TcxPageControl
            Left = 441
            Top = 10
            Width = 168
            Height = 126
            Color = clBtnFace
            ParentBackground = False
            ParentColor = False
            TabOrder = 14
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
                  Picture.Data = {
                    0D544C4D44504E474F626A65637489504E470D0A1A0A0000000D494844520000
                    00C0000000C0080600000052DC6C0700004DA84944415478DAED9D09D01CC575
                    C77B24240EA1031DE84220212C9064114E6109246C0C36C6061C08102E3BC680
                    6D829DE054C595C47152A9B2AB925452C18E890901638363953804163297C138
                    080CC2600C38021C300274A00321240442C7A47F6FFB0DBDB3D3B3B3C7F7EDEC
                    C7D75553FBBEFD66667B7AFABDF77F47BF8E4C7F93B6C71E7B9809132698D34E
                    3B4D3EE33896EFA3286A273DD0A3A3D439B147EF6CC7EF667DF7F8E38F9B9FFC
                    E427E69D77DEE9F49097A2459DEE4059DAD9679F6D8E3CF248A1DB34E977B3F4
                    004BEFE6E8411E030C0C30C04E8F01B65B7ABBA577587A97A57736DA87D0FF61
                    82175E78413EDFEFED7DCF004CFAA38E3ACA4C9D3AB51D937E90A5F7B4F49E96
                    1EEC26FA004B0F7074ECCE8F0AD04CFA5D96DC65E91D967ED7D2EF58FAADA2CC
                    90F7FFB7DF7EDBAC5AB54AB4C1EAD5AB3BFD1A3AD6DEB70C307EFC7873C51557
                    B4720BC60E893EC81E7BDB632F7BEC6E7A7E4C610A98618B3DB6DA63873BE266
                    6FF8BDEF7DCF6CDCB8518EF75B7BDF31C03EFBEC9348FD9123473623E991E848
                    F7219666D2EFE1A04E23D2BD5D345A0230BFD5D25B1D5D4803A4E9175F7CD12C
                    5CB8F07DC704EF3B06F8F33FFF7391FEF2F08D431D26FD304BEE69E9DDBCEF7B
                    73D287686C86B72DF986A5DF6994016840216C83C58B1777FA35F55A7BDF3000
                    92FFB39FFDAC78781A6C409CC1DCC21E433AFD1C05DB9BF678C31E6244377AF1
                    AF7EF5ABF78DA7E87DC100279E78A218B9071E7860235291B101DE8C70506760
                    49247D511AEF1176C2267BC84C6E441BE0210212F5F5D6E719E0D4534F35F3E6
                    CD6B14EAE0B244E2EFEDE89627E5C08103A3BDF6DA2B1E306000318768D0A041
                    6AB4F20EE26DDBB69977DF7D37DAB973678C8766D7AE5D2D33039FF6CF6DA6A2
                    11363BB76A6121001C421BF46577699F6500025B04B530761B680A77C63ABAA9
                    DFE5183A74A819356A94193E7CB819366C9840B0A2CD4E7EF3C61B6FC8F1E69B
                    6F9AF5EBD79BB7DE7A4B5C9796499A1D12B4C06BA6E241DAD5C885C0A1A54B97
                    36FBBBA56E7D96019A086CA9D41FD6A8CF7EB7DD768BEC648F478F1E6DC68C19
                    138D183122DE7BEFBD45EAC79526904ACFE7F20C696D9CC44EBEE75FD06803CB
                    08311E1ACB0CD1BA75EB84AEA72532BEDB6E3FB00DDE0422151D1BDAD7BEF6B5
                    4EBFD21E697D9201803DC71D77DC7B0F592C8035CED27B1837F78A30808533B1
                    9DF066E6CC999195F4B1853832E9EDC48C91E24C509FD66BD3CC605C1A843200
                    1FF6DE91BD974026BE87E6640B91A2AD5BB7C61B366C30CB972F176608F533D0
                    77026B6F5B126DB0A3281C7AF0C107FBA477A8CF314083DE1E7CFA7876C69882
                    9087093964C890C4A846D23351DC24373B76EC90C34ED4E43BFFA0F992357D6F
                    9A6300E3263F1A06C6924369C73066D3A64DE6F9E79F37BFFFFDEF0D7644E8DE
                    190DDB609D3D709D1682447DD13BD4A71880C90FF4F1D31AE421B3251B5E9DE1
                    961E612AB93A75A5BE9DECD1E4C993E3FDF7DF5FA00EDF33D191CADBB76F8FED
                    21B4650091FAD0696DC07D9C87A94A03E86F41BBC92F1A061A8805ED1820B247
                    6C8DE8E47BAE7DE59557227BC42FBFFCB2B1FDC8D3003E0D247ADD5420515C44
                    1BF435EF509F62000D72A5F16BC6CB44DA0F772ECE01EEFBDCC9326EDC3873F4
                    D14747D6A08D91C2FEA4B7135E26BD4F2B6330E9B915B4DA03A68E0DC007508A
                    7FC100D040207ED74E7C61009F861938C76A8018C3F989279E88D6AE5D5B8401
                    249A6C3F5EB77FBEE122CBA1314BE8BE0487FA040334087BC8CE1C6D8FA1A602
                    81EADEDB627C73C0010708F46062E389E17013BEEA9343A190C21E670457DDB7
                    1E54F16190C21F85404EFACBA71EBBEFBEBB7CC7F9FC3690E8D9679F154F5281
                    46721DF182D71D5DB7DD73CF3DE6673FFB59FB5F662FB73EC100279D74921C21
                    0F46CAD81D65E9A1A68EB18B6485A166CD9A251E1E2632D0C24EFCD84DFE4403
                    A8FFDE314122F54D86A42F4A9B1434526D90D60083070F160D603FE57BFB29DF
                    73BE3590A3A79F7E3A26C5A1405C01E31826D860FFDC550F0EF595DCA1AE6700
                    20CF673EF319496CABD3803D231CECD15CFCCC4961A569347DFAF478DAB46966
                    CF3DF794C9CDA4B7C65FD5A4871998F4D08AFB4D0B93BE088D6DC09F3AE909A8
                    C10CF459E1108136188373B76CD912FFF6B7BF25A8257DACF33B0287ECF1465C
                    49C5CE6DA4535F79E5959D9E022DB5AE67807FFCC77F2C721A22111FFF705307
                    F6E0D59933678EC02926B48BD00AB4C1FBA1B40F81D4BBD3DBCD87443E14E2F0
                    69DA4B2FBD245E9CAD5BB7D6BB2D10A83013FCDBBFFD5B57AF27E86A0620D075
                    D65967D53E540A025949B88FFD7B94A92C4C094A56A0CEE1871F8E5611A9EF26
                    BD18974A23F5550328D4E964CE8F715E23D5066ED28B06E03BAB0D041661245B
                    26887FF39BDF6017D4BB37F181B596DC12E76495D2804040216C8E6E6C5DCD00
                    975E7AA99932654AE541A2F71E25F5C2C8DD9F14BFB71C31F3E5DBC91FCD9E3D
                    5B025BE065263DD2DF1E4223F1A115F6A45D999D62009F81D5068001EC117B9F
                    C220B84C91D68F3CF248B479F3E67AF76615DA2BA692519A69C4EB38630CDF77
                    DF7D9D9E0E4DB5AE6400726D88F66AAA43F0E1A2886C4E92FF07E79C239E9EE3
                    8F3F5EF27798DCE4DCB8C99F4020FD6C20D024ADD1F35B6D4E1B24F087B1D2BF
                    A1814C7886EEBFFF7E63ED837AB76391CD1AFBB9BDDE735C7DF5D55DA905BA92
                    0188C05E72C925B9BE6A53C1FD4478F7CE93A056E2C730D2BEFBEE2B4622385F
                    610FB46A0095FAED96DCC6F3F6E4D18DDC13B8031C5208A4B0C81AF4B1739746
                    D6808DB109EAC0216C003C431BAD56CCCD24254076F3CD37777A6A34DCBA9201
                    BEFCE52FD7F8FCD32FC61EF8FAF771CF9839B1ACC48F8E3DF6D8D84E7E0954E9
                    A48701EC2110081AC6E824D6374D3009DFE30E5506C033048D16801908ACAD5C
                    B9D23CFAE8A3E229CAB9374C803DF066DA1E48373246972C59D2E9E9D150EB3A
                    06C0EDF995AF7C25FB61DEB303803E07E4DD8789C042195296D3B0C7A7F95F37
                    373C456ED2E3D24DA01034FF7BE59557CCFFFCCFFFD47B4EFEF972ECD613D0B2
                    9800B7E80D37DC5034F8568AD6750C00F4F10DDF14ECA191D733CE54AA34F8CF
                    994836E0C111471C6166CC9891C01E3BE9AB340034515FE34956D32688D25BB4
                    6A02C704551A60C89021A219804BCB962D8B9F7BEE3949E330614D03145A1FBB
                    34EA90770863B89B0CE2AE620026ED273FF949915ED2F96C06D807F8A3C12EF7
                    BF2A7C3C6DDA3461002002508749BF75EB56A131746106DCA0CDC01E532226F1
                    3EE5B9D50620B8C7EA34B77847D2AB2D1398152B5624097B19F763E2AF359595
                    6535E3AF0DB7E88D37DED835B181AE61005E16933FCBF393823EB95E9FFDF6DB
                    4FD60A703F853B4E0324B493FCBDDE7ADA63840708E1C1B3B3764157AFC114AC
                    3803C3D799B8DB6C1F5799CAAAB2609FAFB9E69AAEF108750D03007B2EBEF8E2
                    90D4577A5F534977F0257222CD78D9279D7452347AF468096621E9D31A80EF4D
                    49218DF7CE82B4AFB5B28266B844D1006803D500D0448E5F7BEDB5E8DE7BEF95
                    31C8E9CB06AB2536E8D8666983279E78C2DC72CB2D9D9E32855AD73380625153
                    2956B5BFA9A43AF813439F5360CF61871D962C3C5706509A2017690D6598E86D
                    62921A06D1A8B132800F8708A63DF2C823F1F2E5CB8D09331AE1EF978C2BB712
                    82437FF3377FD3E92953A8750D037CF39BDFACEE7854D575F5F90F0D5D0FF439
                    F6D8630502384357F26214F600873A95D3D3DB8DB153F8C3780087D443041422
                    DF7FCD9A3579B7D86827FB7A935A49E63300D9A2D75E7B6DA71FB5FE5874BA03
                    451AF939679E7966A5C319290FF673A83DC6C6198B5B6843860C89E6CE9D1B4F
                    9A3449D295EDA417A9AFB0C7E1FE1E0D4E75CA0B14FA3F7100854078846000B4
                    011E323C428F3DF69868C4C0BDB1013016DEF127BDAF0DFA19A08DEDF39FFF7C
                    8DEB33E5F624D16D78EAB99237336DDA346100AED149AF0C00333483FB4D1730
                    49DEFF4D255086F41708A40C0034C213F6C0030F442B57AECC7B3EEC003441A2
                    057C66607C7FFAD39F9A5FFFFAD79D9E3EB9ADF40C3062C40873FEF9E757D5F3
                    4C35EA741216DE2DEB7A5EF219679C2169CEBC58F25F14F60081EAE5F7F49467
                    A6A73D3E459AE60DB1C85FBD42D08C196B8BC917CA8185E407BD6A3C8F50FAB9
                    8807FCFCE73FEFF463E6B6D233C0473EF21173C20927BCD7E1029E1F9F9E3E7D
                    3A6E4F0978F9525F0DDF028B443AA20DDA71CF22BF432C0408E45CA389414CDC
                    E09E7BEE9145F639F7596F19E4757D176938842BF4D65B6F2D7564B8AB19C054
                    F2FB0F34813C7FA4DA473FFA513376EC5889EC22F17D0620D1AD8CEECB76DDD3
                    14643A1F02298DA7882A136801DF3E4A5DBBDD3240E2F04F7B8438AEBBEE3A59
                    8C53D6566A0640127DE2139F900870D2E16A0620EABB6FE683D9F390FE471F7D
                    B4A87AF5F8E0E5D000982E58EF86D69350CC2DA39403A8A89E21C688E018F942
                    39D70383DECAEA27F49D77DE697EF9CB5F767AF882ADD40C3079F264F3B9CF7D
                    2E0BF6F0C902176A78EEEDFEAE92522C04C1ED49EA34929E70BF4220E8A286AF
                    E9026337A76F85FAC8399A22611920760C201E212A4B9031CA5AE8C0EF6FB2C7
                    9A2C08A49F7FF7777FD7E9A9146C5DCB00A692F6E01BBF552F7BDF7DF78DD11E
                    4837853D3E0422DDA1B7E08DD265F10265F5D1A5490804727101F1086DDEBC99
                    155FD1EBAFBF1EBA165728E911C9A2191F02D1FA19A0C976CC31C798534E39A5
                    C6F3E3FE96A4371358E44E49F4430E394416AE2BFCE11308D44285E51E696580
                    618CA9EF11420B40C3182C9CC9716792354892DC9BE967E9678016DB37BEF18D
                    A43E66D2E10A3DD0617FB62BAA914CAC783AF7DC73634D78B3935E608FE6FCD4
                    F3FC981249F156FAD6E8BDF108A9110C04D29469568DDD74D34D79BF4F0589AA
                    C8B00F81162D5A64588C5FC6566A06407244AE086CD26197F7638F89961E9CF5
                    22274E9C187DEA539F1298E3E37E757DF635A893D3CF86FA452E90BA419501DC
                    C21961000B8342D7526077759C2AB9AEDD212AFCC31FFEB0D3D329B3751D0348
                    A7A308C37762E603D97359E07EF0C1071B97DB9F6C2ED1E206136D6965803B79
                    7DD39563C0200E0D8C3DF9E49318C3A14BC91F7F3576BB54A69F9578C00F7EF0
                    834E3F5E662B2D031C7AE8A1E6D39FFE74480380FD47664923DC78D6F88D468E
                    1CA92BBD0402A9EFDF2F11687AC037DF09A813A29BF97D72847C08A4F181D5AB
                    57C7B834B5F274C6B5AFD9B1DDA4EFC867F47E0668A25D70C105C9A676191A80
                    B4E73D4CC624C173643580B84155EA6FD9B24518C0D5CFEFDA155E8DF6AD997B
                    F3671A02914CC80E35F7DE7BAFEC5013F84D16CD57A5906A37713EDC75D75DE6
                    E9A79FEEF4B4AA69A565800B2FBC30B3E8956DBB59AC3A35F361EC79AC1823F8
                    A5F0473D3FD0CEF7DF6BADAC70A75EBFF00629FC51284423A0459DD140C30DFA
                    62FAFED0041C7FF18B5F489A75D95AA9190069AE1AC0C1113EF7B00CB0BFD7FF
                    441A21F5717F5AFCEF1BBD0904D245EEA644123DAF3FADF6ADD97E694C000DE0
                    18414A2DE2C92128C682A2401F61809A4A72FD0CD044F319A0AAC35144DAF358
                    4757BD3C36AFA0D4C9B871E38401D4FF0F042217A8E86A2FD3654C12B2559AFD
                    4DAD22E14785098A91D363277264054AE6B5767C252D226D03F43340130D1B20
                    0B0245959227C3B3AEA1C0150BE7C1B059C1AFDE802465833DCDF427722BC680
                    40EA1182C60DCAC6187C061A655336F85FA83BB49F011A6C3040860620EB93F4
                    0701A569093469D2A4F8539FFA9418BA48291F02E9EA2653026F8F6952A2374A
                    B7D22FAD1DE46C00A1112277DC7147B466CD9AD07D30845747197941FD0CD060
                    5306904E3A26B003C9DADF09F6D8DDEB7FF2F266CE9C19933E4D81276500CDFF
                    C949E6EA3AD8D3D3360034E9D0CA009A2447547EC9922552663DD0AFAD16EEAC
                    B2E755D5950102517DAE9F011A680106C8ADFB8301CCFA6124957A7E1C03F468
                    AD9FB2C19E76F40943D88740C457F88E899C93D64062DC4AFB8EAA2A46F0D9CF
                    000D3618808DE9521008E8830D2019A069E975F2C927C71FF8C007245843C157
                    B503B4D29BF7CCA5833D4AB7F3775BE917F95418BE0A81D0004484D98172E9D2
                    A5A17BB2F7308BE5F9AC2A9F0804626D41D95AE919403AF91EA6A4FA03497099
                    9B5D9C71C619F1C4891365F71618406D00205056C93F53B24870BBFBD34A5FC8
                    FFF153A36100E203CF3EFBAC2C950C5CBBDDD9006FA76D0034403F0334D07C06
                    F0FA3A2CAAD4FF1918BA86CDF25C06680281F8EC09985236E8D3CEFE80F7352D
                    5A21100CB062C50A73FBEDB7872EA38EFC6BA6B2422CE94C3F0334D1A80491D2
                    00081976751FADFD4E4BA08B2FBE58FCD6AC00F38D60AA3DFB52B62C12BDA7FB
                    D38A81ADC57435150283180658B3664DB470E1C2D06FCADA004B6EF67E4B1800
                    FCDFCF000D349F01BCBEEA2218FFBBE4E55D76D96512C5ACC700A68393324DD7
                    EB4F2B30AC95BE901AED330070884CD10D1B36443FFAD18F426386A7619DA92C
                    8EE9678056DA79E79D57C300B6B119F0A8AC7EA325D83906D54D16A89F02CDD1
                    AED697618FDF184FBF6C221E2118E0CD37DF34DFFFFEF74397A1015818435668
                    55C7FA19A0C10603ECBF7F25E5C7412082606C79342AD5FF44027DF5AB5F8DDD
                    DEBE5581B05616C174DA97DF0ADD4A5F7C0DE0D70BB20C105D77DD75A17B0A03
                    D8DB6CF2EE996880871E7AA8D3D3AAA6751503980A041AA5EF34FDD2AFB8E20A
                    F9338B014C17C19E76F5A7957EF1BDBA41FD0AD230C0B5D75E1BB4012CB9C131
                    40D5F248A47F3F0334D0CE3DF7DC2A063095C5EFC200A17E03819C0D50E50502
                    12B5D2CA067B7AA34F0A81FC5C2020107940A1C52DCE0806026103D430C0C30F
                    3FDCE961AB7DCE4E7720D4CE39E79C2A2F90A9B83E473806F0FB9F48AFCB2FBF
                    5C3C159D8440A6041AC6A39B36B01502A906502F100B626EB8E1862004B21074
                    9DF302250C002C45FA97B140566919E0ACB3CE4AA7425009822A1030404D1974
                    75830E1B362C61006FEBA3E004EDCBB6412B7DC9B201D0002B57AE8C162C5810
                    BA27710018E02D0787A4C1006880471E79A4D3D3AAA6959A01BC5488C80D309B
                    5EEF1B55AAC2D534D6108C1D3B36C90552F8D36C20AC6CD0A737FB8337CD8740
                    1C6880FFFBBFFF0B06C2E24A249838C0DB69064003F4334003ED8FFEE88F1206
                    882A5C0003EC655F0C8B61325321EC35B2269854088540BA05AAE60275B3446F
                    A23F4DF74B73817451BC42A0A79E7A2ABAFBEEBB33AF6537797BACB6EF689B0F
                    81484404FEF43340030D06C008F61860801DD4C17670C7DB3F83C9701FFCE007
                    25192E0D81FC64B8BE0C7B7CBA592F14A7C1007E912C6892E1AC211B59699EF9
                    9B768CB7D96395BD7687FB5E3ED00018C03965553AD64ACB006C89E433806D03
                    76ECD831D0B609F6D83DEB9A3973E6484A34BB9EAB174837C228920E5D36C8D3
                    C93EE14DD32098C22018805D5F9E79E699CC6BACE079C76ADF55F6FC9D95AE57
                    3ACFD8C300EC455CB6565A0660579734036CD9B2658035C426EC8E35F65EFF13
                    E93563C60C5911463D7B5D14AFE510EB2D88E90689DE447F9A5D4853552651E3
                    007C7FD34D37452B56ACC8FC4D3BC66FD96315EB894D6537C944030081FA19A0
                    81F6877FF887C200AE36A8402024BB95FEE3EC31443A9F7A792C89C478C683A1
                    B540FD2D50F3DC7E7D05F6F874A3B0C767005D11E633005AF5965B6E092E89B4
                    139DAD60D6C695A0650D033CF6D8639D9E5635ADB40C70FAE9A78B11AC0C8006
                    30951735CA32C0C8AC6BC68C19238CB3CF3EFB54EDFC0E042238966E65843C65
                    E8170C809225F8A55BA972AC5CB99235C1C12D8FAC805A6BDF17FFC45E1306D0
                    4D4880408F3FFE78479F2BF3593BDD815003CAE0D1A14487CF007690F7B6D269
                    9C743E2581860E1D1A534E7DCA942949294485408D944569567216BD676F6998
                    66EFAD65517C0844CDA5FFFDDFFF95BD02D0AE59D75A0DF1B2BD8EB07BC200FC
                    1BCD8D0628E38E91A5650036B7A034A2CF008CF7C68D1B771B356AD464AFFFC9
                    4BA77813FB891D71C411C9FEBFFE8EF0BC88DE9E88A6B34CD270BF8CDB2C23CD
                    00EC16832F7FE9D2A5C1E7B630F3057B2D06F0805D2CC1731A808A7C30C0534F
                    3DD5E96955D34ACB004C642A3CC300607A650053794F93ED7799DBA2B2289E8D
                    F17897FE8EF07C76BA3274A8751AF2A41BFE7EF5FC280462FCEEBEFB6EC326DA
                    596DE7CE9DEFD831A74234FEFFC8497FA9C6C7D6B46C97CA8E93656BA5650076
                    750706A534C02E3EEDA08EB3126988C9906A18CEA79E7AAAC0218F014403B8E2
                    58A55CBD954737DBB7667E933F75BF30CD00451BAC5FBF3E66CBD3D75F7F3DF3
                    F7EDF8BE61196783C700BBD400C676B8EDB6DB3A3DA5325B691980F6A52F7D49
                    18807E3A2DC0600FD8BC79F3F01123468CC9BA86974726E9840913C4F0F58D60
                    E866CBA338B850B315689AEE440BF5AD997E39F8635C856891FEF8FF7FF7BBDF
                    C99EBFA18DB3EDFF574F9D3AF52D9F013897F15EB56A55DE3AE28EB65233C025
                    975C2283EF62010281DCE7607BB043CCC02C4976ECB1C7461FF9C84704F36B2A
                    849647274DA29BA4782B74337DB4133F91FAA4424013155EBC78B114C7CDBA36
                    AE24C1B151DEBBEE1934355AF03F1A60C992259D9E4E99ADD40C40721BAE385C
                    A1569A0C74708801DFCD7E8EB7CCB147D68B1C33664CF4852F7C415787553140
                    DEFAE04E30464F3249A3BFAF19A03E03A051092C7EF7BBDF8DC1F259D7DA71DD
                    6AC9D7ECFBD9E92026EF6B27820BD809FE7FE185173A3D9D325BA91960C68C19
                    66FEFCF9A201EC4B180823D8036C3FD04A9651B66516C9E5FC4B2FBD54E202BA
                    4F009A4061109A21AB9511DEA4FBD79330CC9545AF82406860F60ABEF9E69B83
                    DDB2EF62A3FD7CC3F64118401D40FC93F1BEFEFAEB3B3D74C1566A06183F7E7C
                    6208DB492B6B009C57081834C4BE1CEC80CCB501471F7D74FCB18F7D4C26051A
                    803880338A9B8E09749B4BB4913E225C28889B86405CB268D1A268F9F2E5A104
                    383BFFB713007BC7C7FDF63D8911CC22FA050B16747A2A055BA91980DC7EDDEC
                    1A066070915230809DC8BB597834CEBE34AD135AF552ADF48F49A8430BB04006
                    2F90C22168DD2CA36C50A7133600BFAFC12F853D1AFC7AF5D557F1E0441B376E
                    CCECAF7D2F9200C7DE62C01EE0927B4FBBD403C4F648656DA5660026FEECD9B3
                    CDF4E9D38132039C64212D772030C6BEB031F61896752D2F9478C0873EF421A3
                    C6B006C6F8C4382B0BB4F15B276058E436C956E8A33008AD40F08BBA9E21EF8F
                    7D2F1BEDFF707F22F9112CE2012228C97DEFBBEFBED2E27F79F64E77A05E23BF
                    9F7DBFC8F1271DDABE945D642A5A093360FDFAF583274F9E2CDBA56649382014
                    5A60E4C891551088C438B40165D4CBE8BD6995F6FA56A8BF447991FABE06000E
                    AD5BB72EBEE9A69B641D70E077E2E79E7BEEE549932621ED11FF78DE38651750
                    8AD3F0FEBCF6DA6B9D9E46C1567A0638E8A0838401D8DE1418C4F893A9886B8E
                    5D0BED04DFCF4AFBC1599301A946529D35A6657778F502C10CD040A3ACA2B9DD
                    8CFB7DBA487FF99EC9AA0CA03600A5117FF9CB5FCACE9026C0E0C09F679E7966
                    E5D4A953651C4939474B730A8CB466CD1AA9094A1CA6ACADF40CC0CBF8F0873F
                    2C2FC70EAEA4D9C200566A0D60EB4E3BE8C30E39E4907D43D71319BEE8A28B04
                    42A847C84DFE5C8F503B5B9EF7A6D34D035F4EEA0BFC41700079BEFDED6F8B11
                    1B6A0F3FFCF06B56436F06F6D871DC050320A86000A2C8EC2859C60438BF959E
                    016873E7CE95FA94C6D96CBC34FBB206A0BA2D3E1D64A5FC58FBF71E0169674E
                    3CF1C4E8B8E38E13CF0F1A400D6285430EDF761CBAB41B8615317C1126AA01D4
                    0B04F6FFF9CF7F1E59E91DEC9795EA6FDF71C71D6BEDD8EED2C96F0FB2406535
                    18F760E5189B6497B9750503E00D9A32658AAC52221A663F450BD863C05D77DD
                    151F7FFCF1FB58A8B44FF2502906B01855F60E609D009160CD0B526670FB0777
                    7CA2F700930419C441C964D23B2358326AC1EC37DF7CB3D80059BF09DCB7D27D
                    E3EAD5ABDF3CECB0C318531860178E0A0C606C01D60C3CF1C4139D9E3A755B57
                    3000ED88238E909785F16B5FD22E34004C8084B103BFFBBC79F3D00283B2AE45
                    D2B177189A84F7E84320971ED12B50A8D3CD87606851C700027B1402E97E5E78
                    7F4279535BB66CD976FFFDF7AFB1D87FC7A851A3183F040A0C20B6007F93FF53
                    76E92F63D1E90E64358A5B71B0EDA995EEF21D1B33108AB72F913000F0076FD0
                    00FCD30F3CF0C080934E3A69D8B469D3A46A5C5A03F0F7C8912363B7CC52D607
                    AB06C02086C620CED900BA3492BE552398C94F1C111FBF0F7BA0317C9F7DF6D9
                    F8273FF98964D086EEFDE4934FAEB5D87E8B153ABB860E1DAAF89F25AB1800BB
                    602EB4B6FD9F0C209E249AD528992BF33AD94AC5003367CE94894F2A34475C49
                    AA1289852701B56A272D0131A010034D408C721B922AFAE94F7F7ABFDD700F65
                    30007F134F38E79C73E44F650027BD8401D41EE876376888018CC3E640499F01
                    A089B9300614BE5DBB766DF0DE76926FBFF1C61B5FB5D23F9E356B164203C883
                    1D20F00708854661A71E776DF27E318A31AA5F79E5154380AD0CAD140C70F6D9
                    67CB27515B3C12DA7C4F8957EA04093EC049325EE8C0A79F7E3AB647E4B4C0E8
                    D0EF00852C9318702BEA5D17C9380648E8465A9E87A74CDE1EED0FB047A18F7E
                    72C018409F9FFDEC6779CFBAEBE1871F5E6F35C096430F3D34B6078CB1D305BF
                    B83FD0546B0955FDAEDF366DDA248CB070E1C24E0F49E71860BFFDF613894FA0
                    2B6FF2E80443323BA9CDE74055E7F618F0E28B2FC6CB962D1B60B5C7C0934F3E
                    79CCF0E1C3F7AC7A484F8211143BFDF4D3638C6A348906C57C6D40D0AD4486AC
                    D0EDD0004C4EC70089E18B36E0342B404859908262A1FB6DD8B061EB3DF7DCB3
                    DE5EB7D38E33B93E5AFE443A8956D688B25BC75135F943C2C14258D10A40A4DE
                    6EBDCE004C7CE08D1AA4F5A4A77F0E52DB496A8141C6793A6002D69BDA89BBFB
                    E4C99387D9DFD83B35F05529BF76F24BFDA0D1A3475705C860003C421873D809
                    7187025879B469C20D1AB93A3FC01327F9130600F75B381213B1B5866BF0F711
                    F356D06CB613758BFDFA5D524C4CA5047A1215B6E853EFEF8F7D151D7AD76805
                    72867A1B1AF52A030075C0F85642173A3F0D1F7481B5F33610141B60071D5DBB
                    279E20FB8966C040160F51E8BEA87B0B95641F32BDA70F819C1630CE3DDA352D
                    3DB974F2619482F1D3B087EF112A37DC708379E9A59772E11ACE025C9DC01CEC
                    8021438690FDB9D55E0F6654E35799AA66E217699D80463DCE000C34D81E3724
                    5E9DAC975444031837B9ED84A53E28EE85BDECDFA41C1A97821BB95C14A151F7
                    9E1ACE946CB64FD1FCF9F3A50A824A7DC700091CF2F3854C1718BE4AD34F3E09
                    1632F9D5F055D88336004E2E5EBC38B2DA33F77E8C270CC078E2632021518B15
                    909B654FC5B5F3961DABB7A80A61FFDEE1DDE7BDC956C056521A831968D4D35E
                    A31E67808F7FFCE382F5430F5A6050F0ED23DD45D2DBEF07C76ED511A7E17776
                    4C20700689C6A4650280459D9D90F962F7DE7BEFE884134E88A924011470D14C
                    F1862833B824BCE4F2A2DEA14EC3271C044C56650034A27A7B60008405A54AAC
                    E12BC1C0D0FDF81378C89F4C7AC60949EF1627C9EFE8F9F683C0017581D89590
                    0420546812606984016830019088CF9E6A3DC6004C7A0EF07E938D893FC20EC6
                    5E51A51A7452064507483584A7058CD300F2E95E7CAE0A66C9250B6748B8E33A
                    07B11208A47F73BF504A7056CB63EE9E6E4C549E5D835D3A0E6EF2CBFFA9D389
                    C7272F512D764143C6857B3906D045495AB52F195F6F9C7950263EF528592E49
                    B5B8E283E735B4149AA0A798A0471880A82D096C3A28799C9EFA6E10B0C692C3
                    2DBD775CA931996B10BAE577A201906A4C523400521BDA61DFBA52F38C33CE88
                    66CD9A257008A98F0660D2AB3680566DA0BFDD2963D7E4A43738BCAF925FA08E
                    4A7D2437CFF1E4934F46B7DF7E7BDDDF07F6B87AAC027BDC6224A1BD9295B19B
                    F85519A6A97BA219364595AD93D46668481BC0043D915AD1760640EA9F7CF2C9
                    851FCE7D02D6F770931E7C3FA0E8245135ED3380CB4E1438C4DFD4B7F7557508
                    0E7DF4A31F8D8911001DB89E97AFB681D30691A6FC7A5EA89A89D8098F904E52
                    853B4C769F017826EC9A5FFDEA572C70C9757742234480464C741FF7F33B2EFE
                    E2DB1A45FB0E9614463015ED509801A0A92FDAEE205A5B1980C9EF52971BB90C
                    894FF08A4257038BF6290D83140A313979E1789A80377662CB79E4A5D4CB4BE7
                    7CDCB3A45FC4CEEDEAC321A705AA6056BA3FBD0D7BF80D679C26DE1EE08EFEAD
                    5E19DA9D77DE29E9C9F5360EC7533771E2C464AB295250366FDE9CC01E1FFA64
                    C09FBAAFCE54CAA7C0041B1A7D5E3C45D4186A57CCA06D0CD008EC713470077F
                    FDA87A50278FD6EA6548F0B163C7C6A3478F161A09AE81338CB8D5AB57C7EC6F
                    05A4A977DFA38F3E3A9A376F9E648F6270732FD500AA191466C1082E12DAB2E1
                    6B0A421DE3A4AE2F9915E2B8492F1088FF731DD99DF7DE7B6FF4FCF3CFD7ED0B
                    15F570118F1A352AC9117259B8D46565E24979748D9DE419D00568AC6BB6557D
                    C7C1A45E87436D618046618FA9C01D263E5E9D818D0E1C2F1797AA3DA2F1E3C7
                    C723468C9045DCD8030A5BB40E90DB2B58FE26C7855D0E15C7877E838973E081
                    07C694649932658ADCD719C80904F219C0B739E240E9C576D1EA7971123EC1E6
                    D0CA003A6139D7E2FD98BDB90872D5DB278D31648F05F278FCD2887ECA34BF03
                    03E2AFB70C21828571A5646293FBB0ED7446F226E33C4645E61141B37618C66D
                    6100025C05BD3D487AA00E99520DE1241AD985A4304C9D3A55E00A0783E12472
                    12C4F217BFFBA51191E2A8732462BD1289DC170DC0C27A6B1C27E9180A831402
                    F97048FFAF5EA976B5A892F724877A6014E238C334F1FAE8DF8C037B7291D60C
                    8CA9D798E8C01E854FFEE278A53590A61E257E87E7654CD10ECB972F372C836C
                    A2083183B5C51EE09A4279E9EDF20EB5C4000C08B047FDFC751A599A232D1753
                    C5213172F3244454595A2795DE0E3FFCF098145BE3F9FE91C89ACE0CAD793D68
                    005D04AFA550F89F96FEA0BE3D2FAA081C42E21D72C821F1B1C71E4B1A87FC4B
                    618F5B02281A408370BE310EAD5E2A5F339854ACC0A4608F1A95FC969BF489E1
                    A9C6AE1F94520DC039F46DC58A15D1FDF7DF1FF3594412037B4851E11E684A9E
                    0318A555E2346354F388349EA0B47A87B82DE3CDEF3EF3CC333178BDC8187BF4
                    BB968409DE2A6A3B11356EC5286E89011834B624720F115457A662DCEEE3604F
                    6EC296EF950186B04B8C8539F272FD49AF29114A677DAF599E605526222F90A5
                    957846F8FE95575E096EF690A6B12DD877807DC8A0F9971F79762541125A1980
                    6B7D68A4B7F599819F5042194027943372E5F97D2F8CCF003006975B2822EB70
                    2D3E8EDE78E38D427581749C351D5A77D7E4F7D506D089AE0C0004559AB1F469
                    ED23E34F39743B39236B7B35B23703AAF935FB271E8B5D711D38C4A61D946DEF
                    08035C70C10592DE50A7E1E519613B3DC231426EE345608439434CD4B1C21B4D
                    5F5638C3A1DFF981ABACDC1E5E0C6A1CAF90AA746012DE21547891C63D98FC94
                    6C041AD17CEF930F85F4D0FFFBDE2ABD2E7909A97401853C4A6B6E8D1F885228
                    A410D04A7C8120168B17DE11134F199B90301E0A17190BC6C5698104EE3863B8
                    2AB0E6A755FBE7E977F4917B22A1D91E89BE156C4490D7DB3EE229AAAB0AFEF5
                    5FFFB5E87D6B5AD30C407E0F0CA0BEFCAA9BBEE7E31F688FD1961EEEBE0F662C
                    3278E3C68D8BE6CE9D2B4618FF0262A8044735EBC2151FF6F8B46FA07A0132E3
                    6AD5489E3A1AC0AF7B8F178389635F7C5E20A786B6F681945F8451C92AC50075
                    BF57959ED18806503A1D6442A2462E1501C94C3F79663C32CF3DF75C0CD6CF5A
                    C195E76D42A2035D59D1E5EDA6231A009BC92D3AAA4A79F08D6DF50EF9F9454A
                    A7EB0B713E636035416419410CE802CE028265EB881BE81C4BC322FD1E237CF1
                    E2C5B9152CDACE006C64ADABB674D2FB0C602A06EF304BEFEB9D93F9929890AC
                    0B983E7DBA0C9CABE496ECF4E87B75B4CCA1421DB0BD06A6FC17AC134F03634C
                    4A5E082A5F77402740C64B46555BCC9A544468C48B814638F8E083A3C993270B
                    8E1E366C58CD44AFC7003EE3E9A4F7F64348BE87DEB06183A42FD3E7E79F7F3E
                    295998275CFCEFB432868596C2009CA65BCAC2005610241088B109F545036469
                    06F0EB0BF91B6DB8140C8169C422B0130A788D5065EC3AB34D27BC3FF97D618B
                    A7AB999DE89B62002000C1221E300A0440ECF743EC81D53A28EF5E4C44DC8DD4
                    EF41C2A5777754D5AC06AD5FCF47257CBAF930C3CF13E2FE788E74E307685E1E
                    CC4490C8458D4595373488760CB81701246C16BC54400BCD8B4FBFB8281020CB
                    1022D2188F175F7C11092ADB0C21E91883A286A236AD8BC4D8E1B6A6BFEAC561
                    ACF91F012F1D2B1F8AA5FBA47FEB398C995F5FC8DF5DD23F380FAF140B709E7C
                    F2C922DDC620C626C8CC4DD731E83506E0E198FCACAFF5A04EDA48A152DB044B
                    0E3681E00E52C5DA0F7857E4D3E1799140EE65249249A57E3A3D394FC52B9D86
                    25487D249273A38A36A0EF563547BFFBDDEFE41ACE419A35AA0DD234710AAB21
                    444B60C8E36D711B7E249E1C2EF16308C038D63EAF5EBD5ACA92AC5FBF5EFCED
                    CDF4212DF5194F9E096F961D77796EFD9E31070632FE2AF5813DEA913205E021
                    E7A87748B5ACBFD91EE36D3570ECEA8E8AA788D40CDE759646F468E204D420DD
                    AE8C97A50D28E14E31DE1E65007CC5C09F74477CE9601F0ED833226FC09810BC
                    042609308617602543C2001ABC8206EA684A72A393505D90CA00A86A5E824B93
                    901705B65DB3664DB474E95281599C8FA7C3F9BEDB16CC523B0428A0F538F92D
                    AD56AD3BDC37F39C015A6C2427F5E56B9EF5431FFA9040367E53713F5299F167
                    CC15F72B1C6BF4F7B996E7533B4B37DC860110026EFF61391FADB66CD93279EF
                    39F7C41E58EF36E2AE9AF8698F902BE5D8730C70DE79E789019CDCA0562D027D
                    C69B1C8F0F03C092448C5D54306A1735CC4B80760C2087429D669A0F85140ED1
                    5F3C410A5934D8C3EF634C52CF46BD36915B440E2C62E2744BA3EF8C1BE3A755
                    B015CA10DC3BEEB8E364EC6176CED1F1E7802972D29C1B6A0A8D74BC1947A5F5
                    A001EFF216E3BBC61AD5DFC71993C1FFEACA2BAF6CA88F0D3FD997BFFCE5CC81
                    7134B36482A5F70C4989112346C4AC0E9B306182487ED42E353EDD0B88ECCB10
                    69D4C6C2B5F2956F80026F781118ACA86737C1452563A0E151F203588C31D27A
                    F8F0E1025D7A6ABFE15669F544612833B67A8A421AFE8FB3E1B0C30E93EF55EB
                    EAF8A30D8C1788330D78C5EAF5CB8740AA7DEDF8C7CEE692556960F83A0509C8
                    1BDA909EF43EFDDFFFFDDF54B3EE190638E49043CC49279D949EF4096D0FDC9D
                    63A2407E0F7062F6ECD9F212C0E54CF62C06D0ED4C4D817CF87AB476C3B8C82B
                    F7E585C0009619453DBBFD7025C9EBC1071F24E3B06A9D81320F70EDE0830F8E
                    F16783CBEBE514F5168D96C2154BF12F767324C0E7267E82E361009E75CE9C39
                    18E802BB9401ECF3C66801269F3280DEBED5F1571A7B87F70F0462EC95019466
                    2C59A1B67CF9F23CEF10DEA055F6B326955AFF26E6B068D1A29E61002AABE1EA
                    CB9AFCB60D725E9F21A1EBF1996340A3161970BC194C7C3E550DB77B0DA80F83
                    F413D5CCA42789CEBD0051C74876302486941FCC5248C479F3E6CD930012FD25
                    A788A353D5CEE8B34B0A943C29B03E1BD26144AB77C63F380F01C6750EF3CB73
                    703EB4EF51F32150BB1AF7D3602407E348BF35751DC94D921B7945A1D7692A01
                    B28DA65AC0F51E036004FB03A43FEC16AA8F77FFAB91523CF885175E28E1725E
                    141214C96F5F8084ED79013DB185A9F79C3A6009A44103208578090484D00C6C
                    08C73A59CD00F5F37990A2471C7184683063DE5B8D4626241E1B725FFCF22AC6
                    B467A18C1A95080EFCEAC048EC30FA1F79813382622C75C4E075B943490E1134
                    813BD2D631B69DF6850122DBFFD8AD1148A47E4F692CE3D66A23F5790E570653
                    68DE89D560D1DD77DF9DE70820D36EA525B7A78D606504C680A3AD0CC0C6D327
                    9E78A2188EC9C5D59E1FD241F7F4EE5BA502A923439E3D934353697D067052B4
                    471820F5B7D0A864A2B930802BD522B60113C1E2C8A44CA2EF42857908206144
                    A2CE7D98C433C230EA4A5457AE4659610C5C9C45FA0DA4D13DBA9C3F5DE08B62
                    67DF3DA90CC0A467430B20907A70FCE58BD0E79C738EAC71C0BE62CC91FE8C3F
                    C13460673B717F1EED34B04C7AA70122DB2F8143F473C18205B1C3F12158B5C6
                    8EF99B3A077D08A40CF0D8638FB59701ECE495FDBA020630999E538CDBB131DD
                    187436BBC3F3A0D0071CADD087A3594F4F334D2587D628E253E110DF531C1655
                    CA79BAAC520FA0933E8B06D8D4C3947E119A36ADABC874AF324D9B76932EC99B
                    71383959D9A59F7E9D1D97F856036FD03EF7DC738FC019FF7BCD19221641DA3A
                    FD42DB0233187F0EAED131E9AD46BF74ECF964FC3960F8E79F7F5E9E25674EBC
                    65C7B02A05B457188023C000E4F7E31BADE1567CDEC71C734C7CD4514709C441
                    F230E8782AD000F668762145531AC0A7317C9142BC00D5064C460B25A2FBEEBB
                    2F762ED82A0D405F593679F8E18767A63DFB4673ECE5BB28F4F28DF2F4589914
                    04F1C7D0A4B24455AAAB84B7D04DFAECE7EEF8C1ACF9F3E7477FF0077F20929E
                    31E73DC034F6B370466CBB69E030638F06C080770C21B108DCA2A44B84C6C9DE
                    869DF792B503695BE0B6DB6E1397768F3180C704F8FBC75B7A48D68382533FFE
                    F18FC7E3C68D330A779C0610EF43DECEED6DA283FFC3F56907BD8A01D00230E7
                    4F7FFA5389C8A6273734EB12CE3DF7DCAA25913E93F80CA0AEDC38B51E203429
                    D20CE04FFA3403E81A0034C5EDB7DFCE5E0955412C6500A0D3A9A79E2A1177A4
                    3F0C00EE8701F0782934EBA1F10FD2F4CD19C30903305FC823224DE2A1871ECA
                    838D6B4C6515598D0DC0C1BAE1B6310069C9A87DD4550603B0BC11E37770D6B5
                    E4C47CF2939F14B58FDA75524768CD3BE9548B5C508C81E7199D3412C8C26A23
                    AB09AA529A9566925D7CF1C50287FC5468854B214894965259FDD1CF34ADC129
                    1FD6E8AA2CFAFB1FFFF11FC66D5057B5709D4FDEC109279C20F002E1C33B0082
                    F2C93B68E7EAB5461B1A17E8034CD6F1E7C006B04248E64A568B2BA9D2ABD2E3
                    D9230C80017CDA69A7D5B8C61C8D2B82152268821A4E3FE59453C4778E518864
                    450338061055D7D3AAB6DE79189ABC001681AB36206043608672E1EA99F2253A
                    13E6F8E38F8FE6CC9953A5017CAF919F0EED4323F79232A5A26A00DFC055A9EF
                    AF08535A350098F7FEFBEFAFF2F9BB6BC5B3C56AB6238F3C52A08EC21ED5007E
                    1E4E6F4320358831EC31829D1D20DA00C658B26449B290DFD46A926DF672127F
                    B6A71980B674E95249B86B3B0378139FC648B32BCB3E191D14B7DDA5975E2A2F
                    014903ECF1190008D16906A06F683665005E022A99B45D24107DF627AEC2A183
                    0E3A283AF3CC33635760B6CA1E80CEB207F45A1380409AEB9F5E0FA0135A575B
                    290D03F05BB7DE7AABA446FBCC635C6D506C1C323F89BC033915F658612450B4
                    53A5E0D3B618935E19C0BE0B094EFEF6B7BF1597688001480E6303E2AAD54CAA
                    0138AEBEFAEAF630001B4EFB1AC06300BC3F2C091B9A751D41B373CE3947BC1D
                    0CBC1D7451691CFC5D86C66403230381DCE4170F0FCF78C71D77480A721ABAF0
                    C9B96ECBA51A4F5156102D0487A2EA584AF29D0F7DB2BC3A91DBE70B6FD52DB7
                    DC2290320B42D13FFA49F32128EF82384027E18F369E8931576F10EF42037B39
                    9318FEC157FABAF745D5F8B68D0108FCA046D36E320C79FB41646C5016771335
                    3DE6986304EA30F840207CCE1A30E29C4E6B0068B0311A002358E11059A26417
                    DE79E79D55DE1B2590C4279E78A2C4048C31C15560E945F14A9B262050E4AD0E
                    532D81EF9F35B15A1098FBA826E1965AED8EF146EAFB108809D629A99FA675EC
                    5503C00CA4555F77DD756CCC11BA1629BAC1925595249401FEF33FFFB33D0C70
                    C9259764497F1A757DF6D37797F666B01DD1942953243084D4B1864DC2009AD7
                    5F06064092E2055208445E0D81278273D75C738D26962593552F67813CD2150C
                    9BC6FA5910C8EB53F2BDC215ED8F49558588325C9F91F31481DF172D5A24BBBB
                    A4EFC3CD6116FBEE6297FA10D9F18F9DF615062853521F4989CA00ACA18026D8
                    88370E4114B876AB8341C962195F0BB48D01F07864AD0C8A2AC96FE3B2AEC1BB
                    C2E42064AFC1162C7B3EF9BB93DE9F9A41B0CFA3DE07065ED53186D882050BA4
                    1EA56F68E90073EEE73EF739B191F43B37F193BF1502F9FFF75F9442A028C3F3
                    A374BA14A1FE6FF5EAD5E6FAEBAF178F4E54EB9C10E8CABA6DBC440A419D0D90
                    04BFCAD25C6A8A7102483EB103584C4F7E53A0610013104B0A11F963DC5606C8
                    90FEB90B5FECA488717F926383E10B04C2A04403B8ED4E4BA301A009CDAB1708
                    0884F148FE92953E91854135BB472ACDBA86134E382133E015A7825F2AF54DC0
                    37EE6B00FD09257C5ACF79F0C1074503643D17E77CEC631F93E0171E38357C3B
                    1DFC0AD104F47C0804CDDCB1C227A6F64F1C58446F2A79416FB9EFAB048CD5DE
                    ED6180CF7FFEF38981A63FE43EC1FF43BC7B252FF5031FF8002F40709C7A7E80
                    40D0BC90B2310039E9CA004020680C31EC162699F347D7D4EB9C3C79B2B9E28A
                    2B32E18DD2FEF7695AFBA0B027441B636ABEBFF2CA2B2336085486F1FB46DAF1
                    99679E2970020F5C9A018AE625F5168D8D83370E28AA0C40549824438C7CBF6A
                    47EA59592F9C78547C0620968313A32D0C10D000934D65F7969A66258F6C8B44
                    47D4F3A310A85E75E24E34E78F4E20907A8434459A2CD1AC86FDF0B77FFBB772
                    BEB62CB894F59DDFA25A0743F03BAE6522FFC33FFC4370877B52CF1140B8A275
                    EF2DC6BF0CC1AF7AE38F1788C01834FD25378BB4F3407BDD8EC7BAACF125AD9D
                    620779AD3003E80BF0AFB5ED20EF1E55AA9CF5BE788EF03E007B9CEB2DC9FCF4
                    2459293400B406C5D84A550D620CDC5FFFFAD73185A7088A990C29646190A47B
                    D4E947D3690359F7C4F373C71D77649E8F36B3C22726F88503C2F7FDFB1EB89E
                    1AF36668FE04F3A3013426004D362D93F885175E088D13BB56D6847C9501585F
                    D032035C74D14555D2C7751AD7E7812138C1DE5BE49EA3BA1402C100046334F5
                    B66C0C40500CD8E307C5C0A4AC1423B41EAACE403D232B24744FB21E9F2CB895
                    AFBBEE3A593D95750E0C7CDA69A7C5141ED0A4373FF855A4B2466FD3CC596C2E
                    DF0680017023A381098A05AEDD66CF59E1E82ACDDA7606A8BAD00A4CFB3139EB
                    7C2602EA97F8817A809C116C9C0BB4C8CFF67A8B5C7D1F3F28862AE67BA2AD21
                    3CC9F9175E78A1B1764FAFF4939C7FB636C5AB93D50E3AE820B67C92C9A0C12F
                    F502A5577E95A9E10962BC75FCA10992E105A27C4AA0E1097A31FD25CF4E2E50
                    5B1800579F9C5CED6AC3F8250650A396800D9FF8C427622684A6DE6A208C9548
                    B8E5CAA801A0615E1F02411314A3E82C199759CF4B4A02CFCB8E98F8DE7BF279
                    882D901E409A06291859FD21F393FDCE8813E0EF57DF3F50B44CC1AFB406D0C2
                    0368006703C8D89393456668004E32D99F4F4F7E1A0C50AF706E430C50756114
                    B1346C7CD60BE021EC4B100F091E07DF0680015C0C2089569A26B17141BAA16B
                    74A598CF00543200B67DE73BDFA9098A293D73E6CC189F3BD7F6E464613CADF4
                    97E05056FF895D5C7EF9E562CF003FD30C901AFB52D1F45D19402110014916CB
                    3FF0C003C9BA1153CB00BF375E304C5B8F3280A9943BCF2C0D8D178520186B00
                    D403A4F92765F440A49B9F96EB07C56EBCF146A9269DD5804E76E2C9061E3DD9
                    A8A1631931E849E3F76144CDBF52D8A947999BEEEDE643505CA3C01F16C8B875
                    D6352D4E2D8E71DF49A0B02D0CF0277FF227595B9A8E8A2A959F6BA4D4D8B163
                    A3B3CE3A4BB818C3D13782A942E6F2D64B0981A05983EB6B00683C14189DC404
                    FCFEFBD75271C13E778F3ECF82050B228B8983BE74040F46B94B7DAE5AF852B6
                    E0579A8601F0FD6B2A04DA801CA1A79E7A8A892CC67FE0DA97ECB12D6D04B309
                    4A5B18E0B39FFD6CED8515E94F1A748D5AA2CC390BB0F1EBFA0C402418B79CF6
                    DD94100241F82BC59401904430F0C2850B63677CD65C8BE4FAD6B7BED5630BCB
                    711E7CFDEB5F4F2A42A7FBC0C461C312BC582C374D3380BFC7710F8F79533431
                    151840219056ED00EE599B2761E08C6B57D8E179273D47D100AC2DCE6B851920
                    430350036844D603917B7EEEB9E78A5B2BCD0068003FADA08C1A408B48695A84
                    3203DDBDEBAEBB6257D538F365FED55FFD556461488F3C0F3B237EEF7BDF0B4E
                    A2238F3C52A2EF9CEFDC9F89EF9F64B87654DAEB491A0620FDC1D7008C3D2BF3
                    887968FDD08CB17F25AEEC485FA301DAC200B8F86A2EAC2C831C96753EEB00B8
                    860702836AFE3F91C87A7BF596A5E9523DB50138D0687883F0C084369E23059C
                    67F75347DAD190FE24BE854A80D337F292A8DEA79537D40660FC9BD8B8AED71B
                    0E0817874912E33870FB120DCED900837CA09A6D7E881EB7CC001855E4BC6768
                    006A800ECDE2E8FDF7DF3FFACC673E23392A691B205DFDB88C1A009AE42CCD4D
                    510D804A460AFDF8C73F96F2E559D74E9C3831FAE217BF4810AAADCFB362C58A
                    98EC46FB5283BF7BFEF9E78B1B174F1101475CD0C025977D5B1A491FA25503E8
                    7A00C69BA4441C0FB7DD769BCCA3C0B5ABEDF1666A7E8A06A8572DBA2E03B098
                    5AD37D538D2D138905D4A8A5030E3820B286B3188BCA002E10D3350CC0B3E0D9
                    C106D0C51A3003A53C962C592225BDB39E9DE57DD83F6882763E8F7D919214A6
                    F53BD3BF3B77EE5C49C740D27B632E3680D3BAA599E8211A0DA03680CF006C0A
                    72EBADB7066D1F18C07ED6A807B74178EB0C803B33AA8D041304CBAC038AFF9F
                    FC21F732AADCA0654C840B35BC120A81D006D03005037BD5555705AF3BFCF0C3
                    8DD580725D3B1A3086D407E7FBAF69C02DAA76133C72C5071208C4F887DC8765
                    6B9A10C77A008DC22378F0E7DF74D34DC1C8B76D6BE34ABDD0AAC67BAA5776BD
                    2E0390D1893A4F5FE718602F93218D58306E0D6789F8EA42785F03E80DCAAC01
                    A07921EA8950972869C6A86A52915961957E7668CEF9CA57BE426A445B9EE1E9
                    A79F8EACF19B48F2F498A3A12FBBEC324971F66B2EA101F80CAD65281B8D0620
                    8BC0F702512D829C1ECB0062D0678D771E03DC77DF7DAD33001A20D5589737D1
                    1E7B653D109BC659433061005E82DA00EACBF51EA2746E509FE685A45DA284EC
                    29A06B0DACE0CB242670C10517B465825C7BEDB5D1830F3E183C878205B367CF
                    96CC4967F82636408EE7A474B4CF000A81600034C0C2850B1381933106C20069
                    1BA06D0CE07668F79B3080A968809A6619405CA73E04D264AC6E8240348D4EBA
                    D229F289A782C1FDD18F7E14DCFB1609F64FFFF44F9218D84A63F5DC9FFDD99F
                    05610CD29FCA1BE9BAABBA06A05BE00F4D21901629532F10DBA0B23495CF4063
                    77F99A17C13B228D3DAFD565800F7FF8C3090344EFAD5FA508D6849006983163
                    4664A55F6290A90640327513048226B98D5C20AD1DA470086374F1E2C5121308
                    5DFBC52F7E51F63D6EA50FE4C213FDCD3A877805F747DB9024E7A4BE8CB3DB74
                    A4F4BE7F9F560DE09749440330F17FFCE31F4BADA6C0B5990CC0756D6500AF51
                    0F08C320D306F8E0073F189D77DE79698F4457320034B52A3528A6E5D4A91EC7
                    42196A07E9D642E97198356B5674F9E5974B40B099DF05F37EF7BBDF959AF959
                    F7A70FA79F7EBAEC57C064D7C257CA0094412FCBE46E2703F863602A5EA02003
                    E42CA82FC600ECE8926600DB5FD90BCCBCB71F40556339249BE9B1F2CBF702A1
                    9A290FDE6DCDF9A7C52BE1367410D5CCB3E425C8A1CE494CCBAAA954AF61B8E2
                    C160417868CC809AE79F7FBE049034EFDFEDBD906C78D74DCD2F52968640ECFD
                    9507812C13D430C0BA75EBDAC3006CAD2327BF07817C06A8E14ACB008906F0BD
                    40D0E984A66ED000FCE9B6544AF28230884939A606A5854241E38EFAA1D84304
                    781AF95D34E735D75C238960E97B2A4D856AAA3EC0201AFC72AE4F1DE7D248F7
                    22B4D60955235837CE2083C00A9AC862FA9001CDB6491BD246300CC3C2F8B631
                    80D77277838401884AF6150680D6C51A3E0368F1AC6F7EF39BC93A81F4B5D80F
                    7FF9977FC9EEF10DFDAE8557D177BEF39DAAF5D3FE3968A3BFF88BBF908835D2
                    5E6D2DB7024F5CA29D9ED0CD32800F810884811C6080D5AB5787AE4D768FF41B
                    0CF08B5FFCA27506F0F7055606882A3BC16742A0430F3D54F261FA0A04D2A6DE
                    20972291AC1360BDF0430F3D14BC0E8CFED77FFDD7857F87BC9FBFFFFBBF97DC
                    FFACC64439F5D4538D2B3A9014BAE2D01D77BAB1A5219006C398373FFCE10F25
                    B521AB85180008D4360688BD5CA0221048BD407D450340EB3A01D500BAE5E7AB
                    AFBE1A7DFFFBDF8FDDC4CBAC92FD8D6F7C23B25AA0D06FB157F13FFFF33F0761
                    15D992C02AB66D65859DBFE71AE3AC25DD3B2DD11BA5F334806500294E90351E
                    260702B19CB2650620349D6AB910888D98FB2203B04E4077955406E045916866
                    B540CCBE54A16BC9D5F9D297BE2451E4BCDF6242FFFBBFFFBBB1D83FE8FA9C37
                    6F5ECC862569D727D7BA15777D92011A85406880B63180379F642EE44120BC40
                    E4C2F43508845421B0E518208143FCCDC66E786C423B9AA84768FEFCF9C15469
                    04066E55205568EF61DE85357E49384C3619D49C1FFEEEE6F10D412002A83FF8
                    C10F9A82406C7C9ED70A31001DCA8040C13800108874E8BEA601A0313A9D4B34
                    890920A9388784ADC71F7F3C085D58386FB5009032F3FED421BDEAAAAB72B708
                    B5D25F7CFFD80918BB0A7BC8FB4103F8159F3B2DD11BA5435E2026721108949E
                    BB8C63CB0C80C48201520D1116CC05B22F5A0A45F981308D04773B0330F0EA12
                    5506801928DFC112BC7FF9977F095E4BE12D566C59FC9E790ECB29D99AC90999
                    9A7308A87DED6B5F13E845629CE27EF5FC30B6FEB59D9ED0ED6200521A600075
                    83665C2B7180B40D00E3E0A66E0B03A42050C20059D74C9F3E9DAD918CD30049
                    2E1074B7E50265355E14AA194DA041313E3176D102ACDA4A8D5755BBECB2CBCC
                    9C3973A410148D3159B468916CED196ADC9BFD16B80E78A4D0473D3F652B39DF
                    ECB8A603618C33D00708140A84C58148300C90E79DA3156200F0AE0F814C7532
                    5C8D5A2217888D19D21A00BA1B5321B26824951AC1AA0D78797884AEBFFEFAD8
                    25C965C218522AA89AC14A3B728A28BF4ECE0FDBC89A007CB2422526E98D809A
                    7A7E803D680018C08E6B4D3F3B2DD11BA5896893DE91CE06251DFA861B6E08A6
                    4298403A3410A865066065130C906AA201420C403A341E8FBE920B944553FF54
                    3D42402098012D809786B225AC440A15D385C6BBC1BECB8C89C5FEB1D38CC19C
                    9F33CE38436AAD52D85627BDDA002EEDA14F3040562E102BC26080D0FA0B5329
                    91FE461A02B58D015043190D08B477D63FD897F64FFFF44F6BF606462A76CBA2
                    F87A2DF23C421A14C3D30313C0F8A4EFE2CF6FC7EFB0CB2387EEF4E22F7AE7B3
                    1B16BC17698E01AA0A63F1494D5652CF994B592D0E2C89C47BD43203B0CB206E
                    CD9A0BDFAB0A51C39593274F4E7CDE6923B85BD60417A1F108B99AF649CA3486
                    1BD9A3489FABAFBE5A3678488F4F23B45B5B2146B6EEF4A21048777A09ADF8EA
                    B4446F94D645F1FE96A9041E972F5F2E29E1BA283E639C5E8DDD2E31DE3B170D
                    F0F0C30FB7C60034C2EE196D5C54D9232C9369BEF0852F185717A82A0E102A27
                    D2ADCDE50889E4421BB83D052445020D406CA059AD3771E24459EC82CF1F8804
                    D4510DA074372D78A9D734EB563728512DF09BDFFC46C63194E26127FFCBF6A3
                    C6BB8206680B03506FC6FBB1CA855134C61E23B3387ABFFDF6132398CE23A5BA
                    AD3056B306B1AF0D78919CB66CD932D9CC22B4B74088663D31B89F1A4BE07E96
                    36BA499F447CEB6D74D16989DE28ADA511318235BE829D4584FD965B6E91B913
                    B8F6254BD6440E11B86D638038AEAD0D6A3FC891A8514B6CCC70D14517C56491
                    A6198017D9D718801409324399F440206506188372846C634A65B31C232EF6BB
                    8A0D458D51AB01645D358B5D74D2EB3A5FB48AA63CF4450650088430C1974F5D
                    A06DDBB685C6EF457BF9F6B411DC360660B7C78C16AC0E4DF21CC95A40217F67
                    F832ED4EDEEE06E4C10DAA10081A29E656834966279A80327FA1E7C7A8C6CF8F
                    7B14E1C1E467A233F1818EEAFBE7BBB26E32D24AF3AB43AB01CC58B23068F1E2
                    C5C138475CD920A30A0B32E6CC374AABE7B5C20C90D600B6E101C2155AC39570
                    2EEB0166CC98212ADBAF0C87F4EACD707D4FDD374D1BB7C103120C6D000360D0
                    61BC1239C66DCA252B56AC308F3EFA68B46AD5AA9849CD9A6334065067FEFCF9
                    E2F6E3B62CB324B2CB644703A8D4470314DDE1B1D312BDD1F173E528ABE20014
                    2263F2DF7BEFBD21AD8934A9D9BA4735405B19C0719B7EBD87FD91034298F8EC
                    B3CF8E8F3AEA2879617E5994B2EF10D30A4D24939469188049CF38C0006801BE
                    670519AE3E62059430614CD80D1D358F0108A461130822BD14B385019CF12BDE
                    1E18A69175BE6599DC4519000D986600CEB9F9E69B99C8A16BDF75368089529B
                    85B78D014E39E594ACAF07D9E3C0CC7FB8B03D2555FC90BD562CEB4B9E8B7483
                    09D00430005A804F5E2C4CC0F7483926BB6384643779D43BE3824F1F0660E273
                    20F599F87CF6157F7F5663C23256BA29897A811803D6036347051A45715766FD
                    030F64DB18204303D0E9A9F6EF818EAEE2507689840908F5FB6551749B544EEB
                    6B1A4069E316C110C145EAC300EC446FBF93EF319A498C830918024A97000B19
                    2BE00D139DD406B4846384A4B67F23FD298B742F42B3B907785FB748520D40FA
                    C37FFDD77F511E3174ED86D865826669805035ED7631C024FBF79E590F44ADFA
                    3FFEE33F16ECEB7B81A035ECDF571940699E9D498FF4A7686E8801803D3000DB
                    972A03E0E28401A0EB797BFA020368356E26BDA6426043BDF4D24BB24028C7E5
                    4B65E8CD3AE96367ABD2D01AAFBEFA6AEB0CC0EAA340D34D326ADAD4A953656B
                    25D4981F08030EE109F219A92F375E069007F8C327074CC0E4770C20F0C73180
                    719A406050B7677736D234A0A819A07C028990E0AC070EB49D76FC98E1EF4419
                    6567EAED124F2BCC00010D402AC438EF5E89958E2148DA2F691118BE5AAE434B
                    77E866CD7D5903A469FE04F7A30190783000D21D08C46427A10D6DE0A458CBBF
                    5B96E7AE47E314D0B51578D15403587B492A63B029497A7E391A288106D8E1EE
                    59356FEBED11DC0E06D8C3FE4D95E801590FC7D2BDE38F3F5EBC199A0EAD0B38
                    F072BCDF18C0A7194AF7C2E4FB764DFA6E6300C68089AEC506B001C894C51EC0
                    E3F5F5AF7F5DDCBF81FB6C8A2A3640C2003E046A1B0350EF9FAD77321A9E20D6
                    066756809D366D9AF9EA57BF2ADE0BDD319E4F3DFA6230A7BF35D69CB320595C
                    A4256780444480C9020D34FCFFAC1DDD183AA16D0C805B6AF6ECD942A734C06E
                    F66F52228687389D5D0D09E963F8A20180439AD3826F1BB5DF93055C7BEABEDD
                    4077FAF7B368E3600CB0070F190E02BC6504033578088D80BCEAAAABA2975F7E
                    39744F7CE9AB2DF9B6BEEAC80BD432C7EAA542B78301F89B8C5012E306663D34
                    E540D83112ECAB895C748ED54F78395073E478E80EE6FD0CD0F718C038B8078D
                    ED832300D8E3BB8809066AFE142E516A7A923FC51C09DC9FB4E23596DC91C500
                    CB962D0BAE1F68890132DA60538141BB67FD136B9E72203367CE94921D4C7E02
                    3B1C6805BC1D40240E670826C1213E7D862B43732FB2A1F3DBD55A1D8B76E660
                    659576D167E57F3EED1F401E3D98FC401D3E357F8A4021AE4BB684A2C8404ECB
                    5C07ACEDD1471F6D1F03D00E3AE82039323400A4AC0D0849802953A6484C60D2
                    A44922ED61048C6068D500D803EA05714C20D0C831817CEFF539A1EBC127F712
                    EA2E402127A7DE39D048A7BCDF4BD37A7EDE3D8BD26E0237AD01743CDBD11737
                    C9339F95F1E65FCC0F68BED71410E21FCE152C0B8798F0C4484819E1FBB56BD7
                    46DFFEF6B7654151CEF3E12A7B2135077B4E03146000F282F6F73A52D3718C68
                    563661E133D9096C30F159374B61597CDFCA00BC680DFEE84BCF62006592220C
                    C057F518A0C8C4D2175B74B234CA3079B40A8306266CBA8E7E5BF60B5306083D
                    ABCF008C2BB48B7B241008060002C100D0BC47963E5269FB85175EA8D707EA00
                    BD1E6200E24D04C18A14096B170340EF67E9BD421DE7DCE9D3A74B5127563831
                    C109EF13FE570DA0C960BE064833807F6FCEF1267A708F305F038406B5280334
                    3AA195F1DA85A9FD676E4603B4930142CFAA93DE6700CE5706F0A3E19C83E063
                    B71D16BEE028A923D4DEB5E42A4BBE1B620018C93251A179DD1040C50EC8A810
                    A12DD725AA0DBCC77DB4DC0A5E003AADF85FB1BFD302891DA05151FF818BDA08
                    3E6E0FA94C2454A1016BD006F0F170AB4DC7A3D9D64E9B2ACB06D067D5FF29AD
                    9F7A20ECB001A9F3F3CC33CF88BBB3E052593C3FAFD923783248E2D9679F3594
                    5229D21A6600BF42446A32C1A178844647018F904F531ED06A9498BAF993274F
                    8E594403164C4B3ABD54A582C950EB59DF7B7495FB2D741E5AA2118F46CEEFD5
                    ACF0AA77CF46354091DF35811D38DBA501B2C6C07F56E3695C20AED631A2BA1B
                    139FE4362BA925C5BB813E60F852FE645796108BDC22183449D1D6100310ACA0
                    267D4E430BB04C7258D17BA211087B6B4530B6648519A03538D2EA4E8BED6A4C
                    1E2D401BD2243E8DD672691F6DF97DC683FC987ABF1B791151FF3BB42DE3D96A
                    D3DD3F69E9C9C7B3F2CCBA820D6316CF1FDE3EE7FC90CF2634D12653097CE50E
                    26BEFF46F647685837CF9D3BD7B805DFA11700B38EB7F41047B7C5576D99A246
                    D2A13108A1A7BF4FD1B22E39673DA9D0EBD6AD2B85CFBC9D74A77FBF4D34D817
                    A9BF29AE04BF828CCFC4AFB706B8650600B753D12CAF23961E6469B0D2B07A70
                    A8A707B1042FB09F019AA7717722F5B75A7A7B3DCD57D4F5D91203E0C2A2F82D
                    356BEA34E010EB86C734F33BFDED7DDF583505E6A7A8525DBC84D14B01AD46E1
                    66531393C98F5F1F7756013C3A38AEE40BED15557287FA3540BF0608D1BB9CA4
                    6785D75BFE6BCC995FE2F961F25BC3BAE1B9DCB464860966CD9A55D42063438D
                    DD2D3D2CAEC40A06F633403F03383A76931E49CFC2166A6756A537D7A3D94AB6
                    99C9DF1203D0086801871A6838DB6106980078B4BBFBAEBFBDBF1AD14D0259F8
                    F3DF7634DF35BC040EC94FA999665B4B0C80370806E0B3201C4AD36882414E2B
                    ECE1201251145D601399C0629BA27433D7E4D0C6935A459F316E704CF2E8A891
                    F333BE8B4C01CF5C417A57CEB342EE72E3B4CBD144702961C284DF11E5F8F27B
                    1AF6B48D01B4350887F25ED220F792067ACCA0706960C63D06B87382BFE3FED6
                    9790D79F9D05FA1CE7BCFCD0F93A11DAC1003A16CD32800A9756FBC21F3B33BE
                    DFE99E75A77BEE5D6E0C76B6F8DC5534939E9843AB935FEEDBF21D5CC33D0A23
                    14F00E35DB766BB1FFF53C09FDCBD34ADE084292E6D0CED584FF0F5B0C2733B2
                    CBB1120000000049454E44AE426082}
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
          object lbUsername: TcxLabel
            Left = 76
            Top = 100
            Caption = 'Username dispon'#237'vel.'
            Style.HotTrack = False
            Style.LookAndFeel.SkinName = ''
            Style.TextColor = clGreen
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            OnEnter = lbUsernameEnter
            OnExit = lbUsernameExit
          end
          object lbIdade: TcxLabel
            Left = 233
            Top = 153
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
          object lcFichaGroup_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object lcFichaGroup6: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup_Root
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object lcFichaGroup1: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup6
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object lcFichaItem2: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = 'C'#243'digo'
            Parent = lcFichaGroup1
            Control = edCodigo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem3: TdxLayoutItem
            CaptionOptions.Text = 'Nome'
            Parent = lcFichaGroup1
            Control = edNome
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaGroup13: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup2
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object lcUsername: TdxLayoutItem
            CaptionOptions.Text = 'Username'
            Parent = lcFichaGroup13
            Control = edUsername
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcApelido: TdxLayoutItem
            CaptionOptions.Text = 'Apelido'
            Parent = lcFichaGroup18
            Control = edApelido
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lclbUsername: TdxLayoutItem
            CaptionOptions.Text = 'cxLabel6'
            CaptionOptions.Visible = False
            Offsets.Left = 66
            Parent = lcFichaGroup2
            Visible = False
            Control = lbUsername
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaGroup4: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup2
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 2
          end
          object lcSenha: TdxLayoutItem
            CaptionOptions.Text = 'Senha'
            Parent = lcFichaGroup13
            Control = edSenha
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaItem11: TdxLayoutItem
            CaptionOptions.Text = 'Data Nasc.'
            Parent = lcFichaGroup3
            Control = edNasc
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaGroup8: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup4
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object lcFichaGroup7: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup8
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object lcFichaItem8: TdxLayoutItem
            CaptionOptions.Text = 'Telefone'
            Parent = lcFichaGroup7
            Control = edTelefone
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem9: TdxLayoutItem
            CaptionOptions.Text = 'Celular'
            Parent = lcFichaGroup7
            Control = edCelular
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaGroup5: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup8
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object lcFichaGroup15: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup5
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object lcFichaItem10: TdxLayoutItem
            CaptionOptions.Text = 'RG'
            Parent = lcFichaGroup15
            Control = edRG
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem12: TdxLayoutItem
            CaptionOptions.Text = 'CPF'
            Parent = lcFichaGroup15
            Control = edCPF
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaGroup16: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup5
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object lcFichaItem15: TdxLayoutItem
            CaptionOptions.Text = 'T'#237't.Eleitor'
            Parent = lcFichaGroup16
            Control = edTitEleitor
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem6: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Sexo'
            CaptionOptions.Width = 34
            Parent = lcFichaGroup16
            Control = edSexo
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaItem24: TdxLayoutItem
            CaptionOptions.Text = 'cxPageControl2'
            CaptionOptions.Visible = False
            Offsets.Left = 10
            Parent = lcFichaGroup6
            Control = pagFoto
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaGroup9: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup_Root
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object lcFichaGroup10: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup9
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object lcFichaItem17: TdxLayoutItem
            CaptionOptions.Text = 'Endere'#231'o'
            Parent = lcFichaGroup10
            Control = edEndereco
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem18: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Bairro'
            Parent = lcFichaGroup10
            Control = edBairro
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaGroup11: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup10
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 2
          end
          object lcFichaItem19: TdxLayoutItem
            CaptionOptions.Text = 'Cidade'
            Parent = lcFichaGroup11
            Control = edCidade
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem20: TdxLayoutItem
            CaptionOptions.Text = 'UF'
            CaptionOptions.Width = 22
            Parent = lcFichaGroup11
            Control = edUF
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaItem21: TdxLayoutItem
            CaptionOptions.Text = 'CEP'
            Parent = lcFichaGroup11
            Control = edCEP
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object lcEscola: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Escola'
            Parent = lcFichaGroup10
            Control = edEscola
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object lcFichaGroup12: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup9
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object lcFichaItem14: TdxLayoutItem
            CaptionOptions.Text = 'Pai'
            Parent = lcFichaGroup12
            Control = edPai
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem13: TdxLayoutItem
            CaptionOptions.Text = 'M'#227'e'
            Parent = lcFichaGroup12
            Control = edMae
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaItem22: TdxLayoutItem
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'E-mail'
            Parent = lcFichaGroup_Root
            Control = edEmail
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object lcFichaItem23: TdxLayoutItem
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Observa'#231#245'es'
            Parent = lcFichaGroup_Root
            Control = edObs
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object lcFichaGroup18: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = lcFichaGroup4
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object lcFichaGroup2: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = lcFichaGroup1
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 2
          end
          object lcFichaGroup3: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = lcFichaGroup18
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object lcFichaItem1: TdxLayoutItem
            CaptionOptions.Text = 'cxLabel2'
            CaptionOptions.Visible = False
            Parent = lcFichaGroup3
            Control = lbIdade
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object tsCensura: TcxTabSheet
        Caption = 'Censura'
        ImageIndex = 1
        object LMDSimplePanel2: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 671
          Height = 511
          Align = alClient
          Bevel.Mode = bmEdge
          TabOrder = 0
          object lbCH1: TcxLabel
            Left = 37
            Top = 124
            Caption = 
              'Marque de verde os hor'#225'rios permitidos e de vermelho os hor'#225'rios' +
              ' n'#227'o permitidos.'
          end
          object lbCH2: TcxLabel
            Left = 37
            Top = 144
            Caption = 
              '- Clique no hor'#225'rio para trocar de verde para vermelho ou vice-v' +
              'ersa;'
          end
          object lbCH3: TcxLabel
            Left = 37
            Top = 161
            Caption = 
              '- Mantenha a tecla CTRL pressionada e mova o mouse em cima dos h' +
              'or'#225'rios que deseja pintar de verde;'
          end
          object lbCH4: TcxLabel
            Left = 37
            Top = 179
            Caption = 
              '- Mantenha a tecla ALT pressionada e mova o mouse em cima dos ho' +
              'r'#225'rios que deseja pintar de vermelho.'
          end
          object panHorarios: TLMDSimplePanel
            Left = 37
            Top = 208
            Width = 620
            Height = 217
            Bevel.Mode = bmStandard
            Bevel.StandardStyle = lsNone
            TabOrder = 4
            object panDiasHoras: TLMDSimplePanel
              Left = 0
              Top = 0
              Width = 620
              Height = 217
              Align = alLeft
              Bevel.Mode = bmStandard
              Bevel.StandardStyle = lsSingle
              TabOrder = 0
              object LMDSimplePanel7: TLMDSimplePanel
                Tag = 7
                Left = 1
                Top = 189
                Width = 618
                Height = 27
                Align = alTop
                Bevel.StyleOuter = bvNormal
                Bevel.WidthInner = 0
                Bevel.BorderSides = [fsBottom]
                Bevel.Mode = bmCustom
                Bevel.StandardStyle = lsSingle
                TabOrder = 0
                object hora723: TLMDSpeedButton
                  Tag = 23
                  Left = 593
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '23'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora722: TLMDSpeedButton
                  Tag = 22
                  Left = 569
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '22'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora721: TLMDSpeedButton
                  Tag = 21
                  Left = 545
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '21'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora720: TLMDSpeedButton
                  Tag = 20
                  Left = 521
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '20'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora719: TLMDSpeedButton
                  Tag = 19
                  Left = 497
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '19'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora718: TLMDSpeedButton
                  Tag = 18
                  Left = 473
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '18'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora717: TLMDSpeedButton
                  Tag = 17
                  Left = 449
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '17'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora716: TLMDSpeedButton
                  Tag = 16
                  Left = 425
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '16'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora715: TLMDSpeedButton
                  Tag = 15
                  Left = 401
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '15'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora714: TLMDSpeedButton
                  Tag = 14
                  Left = 377
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '14'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora70: TLMDSpeedButton
                  Left = 41
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '0'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora71: TLMDSpeedButton
                  Tag = 1
                  Left = 65
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '1'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora72: TLMDSpeedButton
                  Tag = 2
                  Left = 89
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '2'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora73: TLMDSpeedButton
                  Tag = 3
                  Left = 113
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '3'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora74: TLMDSpeedButton
                  Tag = 4
                  Left = 137
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '4'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora75: TLMDSpeedButton
                  Tag = 5
                  Left = 161
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '5'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora76: TLMDSpeedButton
                  Tag = 6
                  Left = 185
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '6'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora77: TLMDSpeedButton
                  Tag = 7
                  Left = 209
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '7'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora78: TLMDSpeedButton
                  Tag = 8
                  Left = 233
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '8'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora79: TLMDSpeedButton
                  Tag = 9
                  Left = 257
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '9'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora710: TLMDSpeedButton
                  Tag = 10
                  Left = 281
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '10'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora711: TLMDSpeedButton
                  Tag = 11
                  Left = 305
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '11'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora712: TLMDSpeedButton
                  Tag = 12
                  Left = 329
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '12'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora713: TLMDSpeedButton
                  Tag = 13
                  Left = 353
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '13'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object LMDLabel5: TLMDLabel
                  Left = 1
                  Top = 1
                  Width = 40
                  Height = 25
                  Bevel.BorderSides = [fsRight]
                  Bevel.Mode = bmStandard
                  Bevel.StandardStyle = lsNone
                  Align = alLeft
                  Alignment = agCenter
                  AutoSize = False
                  Color = 6118749
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Options = []
                  ParentColor = False
                  ParentFont = False
                  Transparent = False
                  Caption = 'Sab'
                end
              end
              object LMDSimplePanel3: TLMDSimplePanel
                Tag = 6
                Left = 1
                Top = 162
                Width = 618
                Height = 27
                Align = alTop
                Bevel.StyleOuter = bvNormal
                Bevel.WidthInner = 0
                Bevel.BorderSides = [fsBottom]
                Bevel.Mode = bmCustom
                TabOrder = 1
                object hora623: TLMDSpeedButton
                  Tag = 23
                  Left = 593
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '23'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora622: TLMDSpeedButton
                  Tag = 22
                  Left = 569
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '22'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora621: TLMDSpeedButton
                  Tag = 21
                  Left = 545
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '21'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora620: TLMDSpeedButton
                  Tag = 20
                  Left = 521
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '20'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora619: TLMDSpeedButton
                  Tag = 19
                  Left = 497
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '19'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora618: TLMDSpeedButton
                  Tag = 18
                  Left = 473
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '18'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora617: TLMDSpeedButton
                  Tag = 17
                  Left = 449
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '17'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora616: TLMDSpeedButton
                  Tag = 16
                  Left = 425
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '16'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora615: TLMDSpeedButton
                  Tag = 15
                  Left = 401
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '15'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora614: TLMDSpeedButton
                  Tag = 14
                  Left = 377
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '14'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora60: TLMDSpeedButton
                  Left = 41
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '0'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora61: TLMDSpeedButton
                  Tag = 1
                  Left = 65
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '1'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora62: TLMDSpeedButton
                  Tag = 2
                  Left = 89
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '2'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora63: TLMDSpeedButton
                  Tag = 3
                  Left = 113
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '3'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora64: TLMDSpeedButton
                  Tag = 4
                  Left = 137
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '4'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora65: TLMDSpeedButton
                  Tag = 5
                  Left = 161
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '5'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora66: TLMDSpeedButton
                  Tag = 6
                  Left = 185
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '6'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora67: TLMDSpeedButton
                  Tag = 7
                  Left = 209
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '7'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora68: TLMDSpeedButton
                  Tag = 8
                  Left = 233
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '8'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora69: TLMDSpeedButton
                  Tag = 9
                  Left = 257
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '9'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora610: TLMDSpeedButton
                  Tag = 10
                  Left = 281
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '10'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora611: TLMDSpeedButton
                  Tag = 11
                  Left = 305
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '11'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora612: TLMDSpeedButton
                  Tag = 12
                  Left = 329
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '12'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora613: TLMDSpeedButton
                  Tag = 13
                  Left = 353
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '13'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object LMDLabel1: TLMDLabel
                  Left = 1
                  Top = 1
                  Width = 40
                  Height = 25
                  Bevel.BorderSides = [fsRight]
                  Bevel.Mode = bmStandard
                  Bevel.StandardStyle = lsNone
                  Align = alLeft
                  Alignment = agCenter
                  AutoSize = False
                  Color = 6118749
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Options = []
                  ParentColor = False
                  ParentFont = False
                  Transparent = False
                  Caption = 'Sex'
                end
              end
              object LMDSimplePanel4: TLMDSimplePanel
                Tag = 5
                Left = 1
                Top = 135
                Width = 618
                Height = 27
                Align = alTop
                Bevel.StyleOuter = bvNormal
                Bevel.WidthInner = 0
                Bevel.BorderSides = [fsBottom]
                Bevel.Mode = bmCustom
                TabOrder = 2
                object hora523: TLMDSpeedButton
                  Tag = 23
                  Left = 593
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '23'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora522: TLMDSpeedButton
                  Tag = 22
                  Left = 569
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '22'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora521: TLMDSpeedButton
                  Tag = 21
                  Left = 545
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '21'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora520: TLMDSpeedButton
                  Tag = 20
                  Left = 521
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '20'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora519: TLMDSpeedButton
                  Tag = 19
                  Left = 497
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '19'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora518: TLMDSpeedButton
                  Tag = 18
                  Left = 473
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '18'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora517: TLMDSpeedButton
                  Tag = 17
                  Left = 449
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '17'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora516: TLMDSpeedButton
                  Tag = 16
                  Left = 425
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '16'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora515: TLMDSpeedButton
                  Tag = 15
                  Left = 401
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '15'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora514: TLMDSpeedButton
                  Tag = 14
                  Left = 377
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '14'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora50: TLMDSpeedButton
                  Left = 41
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '0'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora51: TLMDSpeedButton
                  Tag = 1
                  Left = 65
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '1'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora52: TLMDSpeedButton
                  Tag = 2
                  Left = 89
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '2'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora53: TLMDSpeedButton
                  Tag = 3
                  Left = 113
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '3'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora54: TLMDSpeedButton
                  Tag = 4
                  Left = 137
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '4'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora55: TLMDSpeedButton
                  Tag = 5
                  Left = 161
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '5'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora56: TLMDSpeedButton
                  Tag = 6
                  Left = 185
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '6'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora57: TLMDSpeedButton
                  Tag = 7
                  Left = 209
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '7'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora58: TLMDSpeedButton
                  Tag = 8
                  Left = 233
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '8'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora59: TLMDSpeedButton
                  Tag = 9
                  Left = 257
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '9'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora510: TLMDSpeedButton
                  Tag = 10
                  Left = 281
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '10'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora511: TLMDSpeedButton
                  Tag = 11
                  Left = 305
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '11'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora512: TLMDSpeedButton
                  Tag = 12
                  Left = 329
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '12'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora513: TLMDSpeedButton
                  Tag = 13
                  Left = 353
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '13'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object LMDLabel2: TLMDLabel
                  Left = 1
                  Top = 1
                  Width = 40
                  Height = 25
                  Bevel.BorderSides = [fsRight]
                  Bevel.Mode = bmStandard
                  Bevel.StandardStyle = lsNone
                  Align = alLeft
                  Alignment = agCenter
                  AutoSize = False
                  Color = 6118749
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Options = []
                  ParentColor = False
                  ParentFont = False
                  Transparent = False
                  Caption = 'Qui'
                end
              end
              object LMDSimplePanel5: TLMDSimplePanel
                Tag = 4
                Left = 1
                Top = 108
                Width = 618
                Height = 27
                Align = alTop
                Bevel.StyleOuter = bvNormal
                Bevel.WidthInner = 0
                Bevel.BorderSides = [fsBottom]
                Bevel.Mode = bmCustom
                TabOrder = 3
                object hora423: TLMDSpeedButton
                  Tag = 23
                  Left = 593
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '23'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora422: TLMDSpeedButton
                  Tag = 22
                  Left = 569
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '22'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora421: TLMDSpeedButton
                  Tag = 21
                  Left = 545
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '21'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora420: TLMDSpeedButton
                  Tag = 20
                  Left = 521
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '20'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora419: TLMDSpeedButton
                  Tag = 19
                  Left = 497
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '19'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora418: TLMDSpeedButton
                  Tag = 18
                  Left = 473
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '18'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora417: TLMDSpeedButton
                  Tag = 17
                  Left = 449
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '17'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora416: TLMDSpeedButton
                  Tag = 16
                  Left = 425
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '16'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora415: TLMDSpeedButton
                  Tag = 15
                  Left = 401
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '15'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                  ExplicitLeft = 400
                end
                object hora414: TLMDSpeedButton
                  Tag = 14
                  Left = 377
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '14'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora40: TLMDSpeedButton
                  Left = 41
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '0'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora41: TLMDSpeedButton
                  Tag = 1
                  Left = 65
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '1'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora42: TLMDSpeedButton
                  Tag = 2
                  Left = 89
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '2'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora43: TLMDSpeedButton
                  Tag = 3
                  Left = 113
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '3'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora44: TLMDSpeedButton
                  Tag = 4
                  Left = 137
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '4'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora45: TLMDSpeedButton
                  Tag = 5
                  Left = 161
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '5'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora46: TLMDSpeedButton
                  Tag = 6
                  Left = 185
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '6'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora47: TLMDSpeedButton
                  Tag = 7
                  Left = 209
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '7'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora48: TLMDSpeedButton
                  Tag = 8
                  Left = 233
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '8'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora49: TLMDSpeedButton
                  Tag = 9
                  Left = 257
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '9'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora410: TLMDSpeedButton
                  Tag = 10
                  Left = 281
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '10'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora411: TLMDSpeedButton
                  Tag = 11
                  Left = 305
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '11'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora412: TLMDSpeedButton
                  Tag = 12
                  Left = 329
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '12'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora413: TLMDSpeedButton
                  Tag = 13
                  Left = 353
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '13'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object LMDLabel3: TLMDLabel
                  Left = 1
                  Top = 1
                  Width = 40
                  Height = 25
                  Bevel.BorderSides = [fsRight]
                  Bevel.Mode = bmStandard
                  Bevel.StandardStyle = lsNone
                  Align = alLeft
                  Alignment = agCenter
                  AutoSize = False
                  Color = 6118749
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Options = []
                  ParentColor = False
                  ParentFont = False
                  Transparent = False
                  Caption = 'Qua'
                end
              end
              object LMDSimplePanel6: TLMDSimplePanel
                Tag = 3
                Left = 1
                Top = 81
                Width = 618
                Height = 27
                Align = alTop
                Bevel.StyleOuter = bvNormal
                Bevel.WidthInner = 0
                Bevel.BorderSides = [fsBottom]
                Bevel.Mode = bmCustom
                TabOrder = 4
                object hora323: TLMDSpeedButton
                  Tag = 23
                  Left = 593
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '23'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora322: TLMDSpeedButton
                  Tag = 22
                  Left = 569
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '22'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora321: TLMDSpeedButton
                  Tag = 21
                  Left = 545
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '21'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora320: TLMDSpeedButton
                  Tag = 20
                  Left = 521
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '20'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora319: TLMDSpeedButton
                  Tag = 19
                  Left = 497
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '19'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora318: TLMDSpeedButton
                  Tag = 18
                  Left = 473
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '18'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora317: TLMDSpeedButton
                  Tag = 17
                  Left = 449
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '17'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora316: TLMDSpeedButton
                  Tag = 16
                  Left = 425
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '16'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora315: TLMDSpeedButton
                  Tag = 15
                  Left = 401
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '15'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora314: TLMDSpeedButton
                  Tag = 14
                  Left = 377
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '14'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora30: TLMDSpeedButton
                  Left = 41
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '0'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora31: TLMDSpeedButton
                  Tag = 1
                  Left = 65
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '1'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora32: TLMDSpeedButton
                  Tag = 2
                  Left = 89
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '2'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora33: TLMDSpeedButton
                  Tag = 3
                  Left = 113
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '3'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora34: TLMDSpeedButton
                  Tag = 4
                  Left = 137
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '4'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora35: TLMDSpeedButton
                  Tag = 5
                  Left = 161
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '5'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora36: TLMDSpeedButton
                  Tag = 6
                  Left = 185
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '6'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora37: TLMDSpeedButton
                  Tag = 7
                  Left = 209
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '7'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora38: TLMDSpeedButton
                  Tag = 8
                  Left = 233
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '8'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora39: TLMDSpeedButton
                  Tag = 9
                  Left = 257
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '9'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora310: TLMDSpeedButton
                  Tag = 10
                  Left = 281
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '10'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora311: TLMDSpeedButton
                  Tag = 11
                  Left = 305
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '11'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora312: TLMDSpeedButton
                  Tag = 12
                  Left = 329
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '12'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora313: TLMDSpeedButton
                  Tag = 13
                  Left = 353
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '13'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object LMDLabel4: TLMDLabel
                  Left = 1
                  Top = 1
                  Width = 40
                  Height = 25
                  Bevel.BorderSides = [fsRight]
                  Bevel.Mode = bmStandard
                  Bevel.StandardStyle = lsNone
                  Align = alLeft
                  Alignment = agCenter
                  AutoSize = False
                  Color = 6118749
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Options = []
                  ParentColor = False
                  ParentFont = False
                  Transparent = False
                  Caption = 'Ter'
                end
              end
              object LMDSimplePanel8: TLMDSimplePanel
                Tag = 2
                Left = 1
                Top = 54
                Width = 618
                Height = 27
                Align = alTop
                Bevel.StyleOuter = bvNormal
                Bevel.WidthInner = 0
                Bevel.BorderSides = [fsBottom]
                Bevel.Mode = bmCustom
                TabOrder = 5
                object hora223: TLMDSpeedButton
                  Tag = 23
                  Left = 593
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '23'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora222: TLMDSpeedButton
                  Tag = 22
                  Left = 569
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '22'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora221: TLMDSpeedButton
                  Tag = 21
                  Left = 545
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '21'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora220: TLMDSpeedButton
                  Tag = 20
                  Left = 521
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '20'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora219: TLMDSpeedButton
                  Tag = 19
                  Left = 497
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '19'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora218: TLMDSpeedButton
                  Tag = 18
                  Left = 473
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '18'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora217: TLMDSpeedButton
                  Tag = 17
                  Left = 449
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '17'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora216: TLMDSpeedButton
                  Tag = 16
                  Left = 425
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '16'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora215: TLMDSpeedButton
                  Tag = 15
                  Left = 401
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '15'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora214: TLMDSpeedButton
                  Tag = 14
                  Left = 377
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '14'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora20: TLMDSpeedButton
                  Left = 41
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '0'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora21: TLMDSpeedButton
                  Tag = 1
                  Left = 65
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '1'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora22: TLMDSpeedButton
                  Tag = 2
                  Left = 89
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '2'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora23: TLMDSpeedButton
                  Tag = 3
                  Left = 113
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '3'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora24: TLMDSpeedButton
                  Tag = 4
                  Left = 137
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '4'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora25: TLMDSpeedButton
                  Tag = 5
                  Left = 161
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '5'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora26: TLMDSpeedButton
                  Tag = 6
                  Left = 185
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '6'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora27: TLMDSpeedButton
                  Tag = 7
                  Left = 209
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '7'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora28: TLMDSpeedButton
                  Tag = 8
                  Left = 233
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '8'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora29: TLMDSpeedButton
                  Tag = 9
                  Left = 257
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '9'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora210: TLMDSpeedButton
                  Tag = 10
                  Left = 281
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '10'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora211: TLMDSpeedButton
                  Tag = 11
                  Left = 305
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '11'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora212: TLMDSpeedButton
                  Tag = 12
                  Left = 329
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '12'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora213: TLMDSpeedButton
                  Tag = 13
                  Left = 353
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '13'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object LMDLabel6: TLMDLabel
                  Left = 1
                  Top = 1
                  Width = 40
                  Height = 25
                  Bevel.BorderSides = [fsRight]
                  Bevel.Mode = bmStandard
                  Bevel.StandardStyle = lsNone
                  Align = alLeft
                  Alignment = agCenter
                  AutoSize = False
                  Color = 6118749
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Options = []
                  ParentColor = False
                  ParentFont = False
                  Transparent = False
                  Caption = 'Seg'
                end
              end
              object LMDSimplePanel9: TLMDSimplePanel
                Tag = 1
                Left = 1
                Top = 27
                Width = 618
                Height = 27
                Align = alTop
                Bevel.StyleOuter = bvNormal
                Bevel.WidthInner = 0
                Bevel.BorderSides = [fsBottom]
                Bevel.Mode = bmCustom
                TabOrder = 6
                object hora123: TLMDSpeedButton
                  Tag = 23
                  Left = 593
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '23'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora122: TLMDSpeedButton
                  Tag = 22
                  Left = 569
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '22'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora121: TLMDSpeedButton
                  Tag = 21
                  Left = 545
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '21'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora120: TLMDSpeedButton
                  Tag = 20
                  Left = 521
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '20'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora119: TLMDSpeedButton
                  Tag = 19
                  Left = 497
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '19'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora118: TLMDSpeedButton
                  Tag = 18
                  Left = 473
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '18'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora117: TLMDSpeedButton
                  Tag = 17
                  Left = 449
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '17'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora116: TLMDSpeedButton
                  Tag = 16
                  Left = 425
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '16'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora115: TLMDSpeedButton
                  Tag = 15
                  Left = 401
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '15'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora114: TLMDSpeedButton
                  Tag = 14
                  Left = 377
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '14'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora10: TLMDSpeedButton
                  Left = 41
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '0'
                  Color = clRed
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora11: TLMDSpeedButton
                  Tag = 1
                  Left = 65
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '1'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora12: TLMDSpeedButton
                  Tag = 2
                  Left = 89
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '2'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora13: TLMDSpeedButton
                  Tag = 3
                  Left = 113
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '3'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora14: TLMDSpeedButton
                  Tag = 4
                  Left = 137
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '4'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora15: TLMDSpeedButton
                  Tag = 5
                  Left = 161
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '5'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora16: TLMDSpeedButton
                  Tag = 6
                  Left = 185
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '6'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora17: TLMDSpeedButton
                  Tag = 7
                  Left = 209
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '7'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora18: TLMDSpeedButton
                  Tag = 8
                  Left = 233
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '8'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora19: TLMDSpeedButton
                  Tag = 9
                  Left = 257
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '9'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora110: TLMDSpeedButton
                  Tag = 10
                  Left = 281
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '10'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora111: TLMDSpeedButton
                  Tag = 11
                  Left = 305
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '11'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora112: TLMDSpeedButton
                  Tag = 12
                  Left = 329
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '12'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object hora113: TLMDSpeedButton
                  Tag = 13
                  Left = 353
                  Top = 1
                  Width = 24
                  Height = 25
                  Caption = '13'
                  Color = clSilver
                  ParentFont = False
                  AutoSize = False
                  OnClick = hora10Click
                  OnMouseMove = hora10MouseMove
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGray
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ThemeMode = ttmNone
                  Align = alLeft
                  ButtonStyle = ubsFlat
                end
                object LMDLabel7: TLMDLabel
                  Left = 1
                  Top = 1
                  Width = 40
                  Height = 25
                  Bevel.BorderSides = [fsRight]
                  Bevel.Mode = bmStandard
                  Bevel.StandardStyle = lsNone
                  Align = alLeft
                  Alignment = agCenter
                  AutoSize = False
                  Color = 6118749
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Options = []
                  ParentColor = False
                  ParentFont = False
                  Transparent = False
                  Caption = 'Dom'
                  ExplicitLeft = 22
                  ExplicitTop = 6
                end
              end
              object LMDSimplePanel13: TLMDSimplePanel
                Tag = 1
                Left = 1
                Top = 1
                Width = 618
                Height = 26
                Align = alTop
                Bevel.StyleOuter = bvNormal
                Bevel.WidthInner = 0
                Bevel.BorderSides = [fsBottom]
                Bevel.Mode = bmCustom
                TabOrder = 7
                object btnNenhum: TLMDSpeedButton
                  Left = 107
                  Top = 1
                  Width = 102
                  Height = 24
                  Cursor = crHandPoint
                  Caption = '>> Restringir todos'
                  ParentFont = False
                  AutoSize = False
                  OnClick = btnNenhumClick
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Align = alLeft
                  ButtonStyle = ubsDelphiFlat
                end
                object btnTodos: TLMDSpeedButton
                  Left = 1
                  Top = 1
                  Width = 106
                  Height = 24
                  Cursor = crHandPoint
                  Caption = '>> Permitir todos'
                  ParentFont = False
                  AutoSize = False
                  OnClick = btnTodosClick
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Align = alLeft
                  ButtonStyle = ubsDelphiFlat
                end
              end
            end
          end
          object edCHora: TcxDBPopupEdit
            Left = 275
            Top = 71
            DataBinding.DataField = 'NomeCHorario'
            DataBinding.DataSource = DS
            Enabled = False
            Properties.OnCloseUp = edCHoraPropertiesCloseUp
            Properties.OnInitPopup = edCHoraPropertiesInitPopup
            Style.BorderStyle = ebsFlat
            TabOrder = 5
            Width = 188
          end
          object cxLabel3: TcxLabel
            Left = 17
            Top = 13
            Caption = 'Restringir hor'#225'rio de uso dos computadores ?'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object rgopchSemCensura: TcxRadioButton
            Left = 18
            Top = 48
            Width = 415
            Height = 17
            Cursor = crHandPoint
            Caption = 'N'#227'o - Cliente pode usar em qualquer hor'#225'rio '
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            TabStop = True
            OnClick = rgopchSemCensuraClick
            LookAndFeel.Kind = lfFlat
          end
          object rgopchCHorario: TcxRadioButton
            Left = 19
            Top = 74
            Width = 256
            Height = 17
            Cursor = crHandPoint
            Caption = 'Sim - Seguir a seguinte faixa de hor'#225'rio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            OnClick = rgopchCHorarioClick
            LookAndFeel.Kind = lfFlat
            LookAndFeel.SkinName = 'McSkin'
          end
          object rgopchCensuraEsp: TcxRadioButton
            Left = 20
            Top = 101
            Width = 319
            Height = 17
            Cursor = crHandPoint
            Caption = 'Sim - Definir restri'#231#227'o espec'#237'fica para esse cliente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
            OnClick = rgopchCensuraEspClick
            LookAndFeel.Kind = lfFlat
          end
        end
      end
      object tsOpcoes: TcxTabSheet
        Caption = 'Op'#231#245'es'
        ImageIndex = 2
        object LMDSimplePanel10: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 671
          Height = 511
          Align = alClient
          Bevel.Mode = bmEdge
          TabOrder = 0
          object edIsento: TcxDBCheckBox
            Left = 16
            Top = 16
            Caption = '1. Acesso Gratu'#237'to'
            DataBinding.DataField = 'Isento'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.BorderStyle = ebsFlat
            TabOrder = 0
            Width = 121
          end
          object edInativo: TcxDBCheckBox
            Left = 16
            Top = 43
            Caption = '2. Conta Inativa'
            DataBinding.DataField = 'Inativo'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.BorderStyle = ebsFlat
            TabOrder = 1
            Width = 121
          end
          object edNaoGuardarCredito: TcxDBCheckBox
            Left = 16
            Top = 70
            Caption = '3. N'#227'o manter cr'#233'dito de tempo'
            DataBinding.DataField = 'NaoGuardarCredito'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.BorderStyle = ebsFlat
            TabOrder = 2
            Width = 297
          end
          object edTarifaEspecial: TcxDBImageComboBox
            Left = 117
            Top = 100
            DataBinding.DataField = 'TipoAcessoPref'
            DataBinding.DataSource = DS
            Properties.Items = <>
            Style.BorderStyle = ebsFlat
            TabOrder = 3
            Width = 121
          end
          object lbTarifaEspecial: TcxLabel
            Left = 17
            Top = 101
            Caption = '4. Grupo de Tarifas'
          end
          object lbLoginSemCred: TcxLabel
            Left = 17
            Top = 130
            Caption = '5. Cliente pode logar sem cr'#233'dito ?'
          end
          object edLoginSemCred: TcxDBImageComboBox
            Left = 19
            Top = 148
            DataBinding.DataField = 'PermiteLoginSemCred'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = 'Seguir op'#231#227'o padr'#227'o (n'#227'o)'
                ImageIndex = 0
              end
              item
                Description = 'N'#227'o'
                Value = False
              end
              item
                Description = 'Sim'
                Value = True
              end>
            Style.BorderStyle = ebsFlat
            TabOrder = 6
            Width = 205
          end
          object edCotaImpEspecial: TcxDBCheckBox
            Left = 16
            Top = 207
            Caption = '7. Esse cliente possui COTAS DE IMPRESS'#195'O diferente do padr'#227'o'
            DataBinding.DataField = 'CotaImpEspecial'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.BorderStyle = ebsFlat
            TabOrder = 8
            OnClick = edCotaImpEspecialClick
            Width = 361
          end
          object edCotaImpDia: TcxDBSpinEdit
            Left = 127
            Top = 228
            DataBinding.DataField = 'CotaImpDia'
            DataBinding.DataSource = DS
            Style.BorderStyle = ebsFlat
            TabOrder = 9
            Width = 70
          end
          object lbCotaDiaria: TcxLabel
            Left = 40
            Top = 229
            Caption = '7.1  Cota di'#225'ria'
          end
          object lbCotaDiaria2: TcxLabel
            Left = 203
            Top = 228
            Caption = '0 para n'#227'o haver limite di'#225'rio'
          end
          object lbCotaMensal2: TcxLabel
            Left = 203
            Top = 254
            Caption = '0 para n'#227'o haver limite mensal'
          end
          object edCotaImpMes: TcxDBSpinEdit
            Left = 127
            Top = 254
            DataBinding.DataField = 'CotaImpMes'
            DataBinding.DataSource = DS
            Style.BorderStyle = ebsFlat
            TabOrder = 13
            Width = 70
          end
          object lbCotaMensal: TcxLabel
            Left = 40
            Top = 254
            Caption = '7.2  Cota mensal'
          end
          object edSemFidelidade: TcxDBCheckBox
            Left = 16
            Top = 180
            Caption = '6. N'#227'o participa do programa de fideliza'#231#227'o/pontos'
            DataBinding.DataField = 'SemFidelidade'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.Kind = lfFlat
            TabOrder = 7
            Width = 273
          end
        end
      end
      object tsDebitos: TcxTabSheet
        Caption = 'Debitos'
        ImageIndex = 3
        object LMDSimplePanel11: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 671
          Height = 511
          Align = alClient
          Bevel.Mode = bmEdge
          TabOrder = 0
          object cxLabel2: TcxLabel
            Left = 12
            Top = 12
            Caption = 'Valor limite para d'#233'bitos: '
            Style.TextStyle = [fsBold]
          end
          object rbLimiteDeb_padrao: TcxRadioButton
            Left = 36
            Top = 39
            Width = 218
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
            Width = 218
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
            Width = 232
            Height = 17
            Cursor = crHandPoint
            Caption = 'Esse cliente possui um limite diferenciado:'
            TabOrder = 3
            OnClick = rbLimiteDeb_ValorClick
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
          end
          object edLimiteDeb: TcxDBCurrencyEdit
            Left = 272
            Top = 90
            DataBinding.DataField = 'LimiteDebito'
            DataBinding.DataSource = DS
            Enabled = False
            Style.BorderStyle = ebsFlat
            Style.Color = clWindow
            TabOrder = 4
            Width = 121
          end
          object btnAlterarLimiteDeb: TcxButton
            Left = 272
            Top = 37
            Width = 120
            Height = 21
            Cursor = crHandPoint
            Caption = 'Alterar limite padr'#227'o'
            TabOrder = 5
            OnClick = btnAlterarLimiteDebClick
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
          end
        end
      end
      object tsPass: TcxTabSheet
        Caption = 'Creditos'
        ImageIndex = 4
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
      UseOwnFont = False
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
        Name = 'EscolaHI'
        DataType = ftDateTime
      end
      item
        Name = 'EscolaHF'
        DataType = ftDateTime
      end
      item
        Name = 'Inativo'
        DataType = ftBoolean
      end
      item
        Name = 'LimiteDebito'
        DataType = ftCurrency
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Nasc'
        DataType = ftDateTime
      end
      item
        Name = 'Sexo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Obs'
        DataType = ftMemo
      end
      item
        Name = 'Cpf'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Rg'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Telefone'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Email'
        DataType = ftMemo
      end
      item
        Name = 'Isento'
        DataType = ftBoolean
      end
      item
        Name = 'Username'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Senha'
        DataType = ftString
        Size = 10
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
        Name = 'TipoAcessoPref'
        DataType = ftInteger
      end
      item
        Name = 'IncluidoEm'
        DataType = ftTimeStamp
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
        Name = 'Foto'
        DataType = ftGraphic
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.02b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterInsert = MTAfterInsert
    AfterEdit = MTAfterEdit
    OnCalcFields = MTCalcFields
    Left = 200
    Top = 430
    object MTOpCHorario: TWordField
      FieldName = 'OpCHorario'
    end
    object MTCHorario: TIntegerField
      FieldName = 'CHorario'
    end
    object MTSemFidelidade: TBooleanField
      FieldName = 'SemFidelidade'
    end
    object MTCotaImpEspecial: TBooleanField
      FieldName = 'CotaImpEspecial'
    end
    object MTCotaImpDia: TIntegerField
      FieldName = 'CotaImpDia'
    end
    object MTCotaImpMes: TIntegerField
      FieldName = 'CotaImpMes'
    end
    object MTTitEleitor: TStringField
      FieldName = 'TitEleitor'
      Size = 13
    end
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
      Size = 2
    end
    object MTPai: TStringField
      FieldName = 'Pai'
      Size = 40
    end
    object MTHP1: TIntegerField
      FieldName = 'HP1'
    end
    object MTHP2: TIntegerField
      FieldName = 'HP2'
    end
    object MTHP3: TIntegerField
      FieldName = 'HP3'
    end
    object MTHP4: TIntegerField
      FieldName = 'HP4'
    end
    object MTHP5: TIntegerField
      FieldName = 'HP5'
    end
    object MTHP6: TIntegerField
      FieldName = 'HP6'
    end
    object MTHP7: TIntegerField
      FieldName = 'HP7'
    end
    object MTMae: TStringField
      FieldName = 'Mae'
      Size = 40
    end
    object MTEscolaHI: TDateTimeField
      FieldName = 'EscolaHI'
    end
    object MTEscolaHF: TDateTimeField
      FieldName = 'EscolaHF'
    end
    object MTInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object MTLimiteDebito: TCurrencyField
      Alignment = taLeftJustify
      FieldName = 'LimiteDebito'
    end
    object MTCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object MTNasc: TDateTimeField
      FieldName = 'Nasc'
    end
    object MTSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object MTObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object MTCpf: TStringField
      FieldName = 'Cpf'
      Size = 14
    end
    object MTRg: TStringField
      FieldName = 'Rg'
      Size = 14
    end
    object MTTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object MTEmail: TMemoField
      FieldName = 'Email'
      BlobType = ftMemo
    end
    object MTIsento: TBooleanField
      FieldName = 'Isento'
    end
    object MTUsername: TStringField
      FieldName = 'Username'
      Size = 40
    end
    object MTSenha: TStringField
      FieldName = 'Senha'
      Size = 10
    end
    object MTUltVisita: TDateTimeField
      FieldName = 'UltVisita'
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
    object MTTipoAcessoPref: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'TipoAcessoPref'
    end
    object MTIncluidoEm: TSQLTimeStampField
      FieldName = 'IncluidoEm'
    end
    object MTAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object MTIncluidoPor: TStringField
      FieldName = 'IncluidoPor'
      Size = 10
    end
    object MTNomeCHorario: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCHorario'
      LookupDataSet = Dados.tbCHora
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'CHorario'
      Size = 40
      Lookup = True
    end
    object MTAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 10
    end
    object MTFoto: TGraphicField
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object MTID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
    end
    object MTNaoGuardarCredito: TBooleanField
      FieldName = 'NaoGuardarCredito'
    end
    object MTPermiteLoginSemCred: TBooleanField
      FieldName = 'PermiteLoginSemCred'
    end
    object MTIdade: TIntegerField
      Alignment = taLeftJustify
      FieldKind = fkCalculated
      FieldName = 'Idade'
      Calculated = True
    end
  end
  object L: TcxLookAndFeelController
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
