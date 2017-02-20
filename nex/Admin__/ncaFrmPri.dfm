object FrmPri: TFrmPri
  Left = 290
  Top = 271
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'NEX Admin'
  ClientHeight = 614
  ClientWidth = 1020
  Color = 16118503
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pgMaq: TcxPageControl
    Left = 0
    Top = 0
    Width = 1020
    Height = 614
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Color = clWindowFrame
    Font.Charset = ANSI_CHARSET
    Font.Color = 7895160
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tsNexAdmin
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    Properties.HotTrack = True
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoCloseButton, pcoFixedTabWidthWhenRotated, pcoGoDialog, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
    Properties.Style = 9
    Properties.TabSlants.Positions = [spLeft, spRight]
    Properties.TabWidth = 175
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    TabSlants.Positions = [spLeft, spRight]
    OnCanClose = pgMaqCanClose
    ClientRectBottom = 614
    ClientRectRight = 1020
    ClientRectTop = 0
    object tsNexAdmin: TcxTabSheet
      Caption = 'Gerenciador'
      Color = clBtnFace
      ImageIndex = 0
      ParentColor = False
      DesignSize = (
        1020
        614)
      object dsPri: TdxDockSite
        Left = 91
        Top = 33
        Width = 929
        Height = 581
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Color = clBtnFace
        ManagerColor = False
        Align = alClient
        DockingType = 5
        OriginalWidth = 929
        OriginalHeight = 581
        object dxLayoutDockSite1: TdxLayoutDockSite
          Left = 109
          Top = 0
          Width = 796
          Height = 581
          Color = clBtnFace
          ManagerColor = False
          ParentShowHint = False
          ShowHint = False
          DockingType = 0
          OriginalWidth = 300
          OriginalHeight = 200
          object dxLayoutDockSite4: TdxLayoutDockSite
            Left = 0
            Top = 0
            Width = 796
            Height = 581
            DockingType = 0
            OriginalWidth = 300
            OriginalHeight = 200
            object dxLayoutDockSite3: TdxLayoutDockSite
              Left = 0
              Top = 0
              Width = 472
              Height = 581
              DockingType = 0
              OriginalWidth = 300
              OriginalHeight = 200
              object dxLayoutDockSite2: TdxLayoutDockSite
                Left = 0
                Top = 0
                Width = 472
                Height = 581
                DockingType = 0
                OriginalWidth = 300
                OriginalHeight = 200
              end
              object dpPaginas: TdxDockPanel
                Left = 0
                Top = 0
                Width = 472
                Height = 581
                Color = clBtnFace
                ManagerColor = False
                AllowDock = [dtClient]
                AllowDockClients = []
                AllowFloating = False
                AutoHide = False
                Caption = 'P'#225'ginas'
                CaptionButtons = []
                CustomCaptionButtons.Buttons = <>
                ShowCaption = False
                TabsProperties.CustomButtons.Buttons = <>
                DockingType = 0
                OriginalWidth = 185
                OriginalHeight = 140
                object btnChat: TLMDSpeedButton
                  Left = 78
                  Top = 362
                  Width = 60
                  Height = 24
                  Caption = 'CHAT'
                  Color = clYellow
                  ParentFont = False
                  AutoSize = False
                  ButtonLayout.Spacing = 0
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ButtonStyle = ubsFlat
                end
                object Paginas: TcxPageControl
                  Left = 0
                  Top = 0
                  Width = 468
                  Height = 577
                  Align = alClient
                  Color = clBtnFace
                  ParentBackground = False
                  ParentColor = False
                  TabOrder = 0
                  Properties.CustomButtons.Buttons = <>
                  Properties.HideTabs = True
                  Properties.HotTrack = True
                  Properties.Style = 5
                  LookAndFeel.Kind = lfStandard
                  LookAndFeel.NativeStyle = False
                  ClientRectBottom = 577
                  ClientRectRight = 468
                  ClientRectTop = 0
                end
                object panPlanos: TLMDSimplePanel
                  Left = 4
                  Top = 280
                  Width = 346
                  Height = 33
                  Hint = ''
                  AutoSize = True
                  Bevel.Mode = bmCustom
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  object imgConta: TImage
                    AlignWithMargins = True
                    Left = 29
                    Top = 3
                    Width = 20
                    Height = 27
                    Align = alRight
                    AutoSize = True
                    Center = True
                    Picture.Data = {
                      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000014
                      0000001408060000008D891D0D0000000467414D410000B18F0BFC6105000000
                      097048597300000EBC00000EBC0195BC72490000012349444154384FAD94C1AE
                      44401045FD362248EC2C7C815FB0B2F201AC2DD9DA49FC8044D7AB5BB4E99EE9
                      CCF31E37B9746EDD3A98C57844F4A89DE11D3BC33BF67CDFA720081E31581E0E
                      59962916E102F1932E09556D660854804551A8344D8525978B3AFAC4BB60BC80
                      08ABAA524992FC85277BBC835D395B40B8AE6B8AA2888FBF43D1E1AEECE87D0B
                      A84B4DD3A8300CCFD2BB748E0E77CF0EEE1F4088CFAA6D5B19227719337470D6
                      D2B9004DF140ADEB4A6559521CC7340C83656498A16302212770DB3695E739CD
                      F34CCBB2C8EF641A1966E870F7D8DAF501C413519CA6E948F6CCB4163AE89A99
                      05C40085711CEDEFF822EE5A500B8841DFF7185E06A28A1DEC42271041D77560
                      7D93005CE65D6108F0F13F077ED347ED0CEFD819FEDFE4FD00617322D189D10E
                      730000000049454E44AE426082}
                    Visible = False
                  end
                  object Shape1: TShape
                    AlignWithMargins = True
                    Left = 19
                    Top = 3
                    Width = 1
                    Height = 27
                    Margins.Left = 6
                    Margins.Right = 6
                    Align = alRight
                    Pen.Color = clSilver
                    Pen.Style = psDash
                    Shape = stRoundRect
                  end
                  object Shape2: TShape
                    AlignWithMargins = True
                    Left = 6
                    Top = 3
                    Width = 1
                    Height = 27
                    Margins.Left = 6
                    Margins.Right = 6
                    Align = alRight
                    Pen.Color = clSilver
                    Pen.Style = psDash
                    Shape = stRoundRect
                  end
                  object lbConta: TcxLabel
                    Left = 318
                    Top = 0
                    Cursor = crHandPoint
                    Align = alRight
                    Caption = 'XXX'
                    ParentFont = False
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -13
                    Style.Font.Name = 'Segoe UI Semibold'
                    Style.Font.Style = [fsBold]
                    Style.HotTrack = True
                    Style.TextStyle = [fsBold]
                    Style.IsFontAssigned = True
                    StyleHot.BorderStyle = ebsNone
                    StyleHot.TextColor = clBlue
                    StyleHot.TextStyle = [fsBold, fsUnderline]
                    Properties.Alignment.Vert = taVCenter
                    Transparent = True
                    OnClick = lbContaClick
                    AnchorY = 17
                  end
                  object lbVersao: TcxLabel
                    Left = 290
                    Top = 0
                    Align = alRight
                    Caption = 'XXX'
                    ParentFont = False
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -13
                    Style.Font.Name = 'Segoe UI Semibold'
                    Style.Font.Style = [fsBold]
                    Style.TextStyle = [fsBold]
                    Style.IsFontAssigned = True
                    Properties.Alignment.Vert = taVCenter
                    AnchorY = 17
                  end
                  object lbPromptVersao: TcxLabel
                    Left = 239
                    Top = 0
                    Align = alRight
                    Caption = 'Vers'#227'o: '
                    ParentFont = False
                    Style.TextColor = 3947580
                    Properties.Alignment.Vert = taVCenter
                    AnchorY = 17
                  end
                  object lbPlano: TcxLabel
                    Left = 125
                    Top = 0
                    Cursor = crHandPoint
                    Hint = 
                      'Clique aqui para ver detalhes do seu plano, renovar assinatura o' +
                      'u mudar de plano.'
                    Align = alRight
                    Caption = 'XXX'
                    ParentFont = False
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -13
                    Style.Font.Name = 'Segoe UI Semibold'
                    Style.Font.Style = [fsBold]
                    Style.HotTrack = True
                    Style.TextStyle = [fsBold]
                    Style.IsFontAssigned = True
                    StyleHot.BorderStyle = ebsNone
                    StyleHot.TextStyle = [fsBold, fsUnderline]
                    Properties.Alignment.Vert = taVCenter
                    OnClick = lbPromptPlanoClick
                    AnchorY = 17
                  end
                  object lbPromptPlano: TcxLabel
                    Left = 86
                    Top = 0
                    Cursor = crHandPoint
                    Hint = 
                      'Clique aqui para ver detalhes do seu plano, renovar assinatura o' +
                      'u mudar de plano.'
                    Align = alRight
                    Caption = 'Plano:'
                    ParentFont = False
                    Style.HotTrack = True
                    Style.TextColor = 3947580
                    StyleHot.BorderStyle = ebsNone
                    StyleHot.TextStyle = [fsUnderline]
                    Properties.Alignment.Vert = taVCenter
                    OnClick = lbPromptPlanoClick
                    AnchorY = 17
                  end
                  object lbVenc: TcxLabel
                    Left = 175
                    Top = 0
                    Cursor = crHandPoint
                    Hint = 
                      'Clique aqui para ver detalhes do seu plano, renovar assinatura o' +
                      'u mudar de plano.'
                    Margins.Top = 0
                    Margins.Bottom = 0
                    Align = alRight
                    Caption = '20/08/2014'
                    ParentColor = False
                    ParentFont = False
                    Style.Color = clBtnFace
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -13
                    Style.Font.Name = 'Segoe UI Semibold'
                    Style.Font.Style = [fsBold]
                    Style.HotTrack = True
                    Style.TextColor = clRed
                    Style.TextStyle = [fsBold]
                    Style.TransparentBorder = False
                    Style.IsFontAssigned = True
                    StyleHot.BorderStyle = ebsNone
                    StyleHot.TextStyle = [fsBold, fsUnderline]
                    Properties.Alignment.Vert = taVCenter
                    OnClick = lbPromptPlanoClick
                    AnchorY = 17
                  end
                  object lbPromptVenc: TcxLabel
                    Left = 153
                    Top = 0
                    Cursor = crHandPoint
                    Hint = 
                      'Clique aqui para ver detalhes do seu plano, renovar assinatura o' +
                      'u mudar de plano.'
                    Align = alRight
                    Caption = 'at'#233
                    ParentFont = False
                    Style.HotTrack = False
                    Style.TextColor = 3947580
                    Style.TextStyle = []
                    StyleHot.BorderStyle = ebsNone
                    StyleHot.TextStyle = []
                    Properties.Alignment.Vert = taVCenter
                    OnClick = lbPromptPlanoClick
                    AnchorY = 17
                  end
                  object btnPais: TcxButton
                    Left = 52
                    Top = 0
                    Width = 34
                    Height = 33
                    Cursor = crHandPoint
                    Align = alRight
                    Caption = 'Pa'#237's'
                    OptionsImage.ImageIndex = 28
                    OptionsImage.Images = Dados.imgPais
                    PaintStyle = bpsGlyph
                    SpeedButtonOptions.CanBeFocused = False
                    SpeedButtonOptions.AllowAllUp = True
                    SpeedButtonOptions.Flat = True
                    SpeedButtonOptions.Transparent = True
                    TabOrder = 7
                    OnClick = btnPaisClick
                  end
                end
              end
            end
            object dpAtalhosDir2: TdxDockPanel
              Left = 472
              Top = 0
              Width = 324
              Height = 581
              Color = clBtnFace
              ManagerColor = False
              Visible = False
              OnVisibleChanged = dpAtalhosDir2VisibleChanged
              AllowFloating = False
              AutoHide = False
              Caption = 'Atalhos'
              CaptionButtons = [cbMaximize, cbHide]
              CustomCaptionButtons.Buttons = <>
              TabsProperties.CustomButtons.Buttons = <>
              OnResize = dpAtalhosDir2Resize
              OnRestoreDockPosition = dpAtalhosDir2RestoreDockPosition
              DockingType = 3
              OriginalWidth = 324
              OriginalHeight = 140
            end
          end
          object dpRevisarProduto: TdxDockPanel
            Left = 0
            Top = 0
            Width = 252
            Height = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ManagerFont = False
            Visible = False
            AllowFloating = True
            AutoHide = True
            Caption = 'Revisar produtos'
            CaptionButtons = [cbMaximize, cbHide]
            CustomCaptionButtons.Buttons = <>
            TabsProperties.CustomButtons.Buttons = <>
            AutoHidePosition = 2
            DockingType = 3
            OriginalWidth = 252
            OriginalHeight = 140
          end
        end
        object dpAtalhos: TdxDockPanel
          Left = 0
          Top = 0
          Width = 109
          Height = 581
          Margins.Left = 1
          Color = clBtnFace
          ManagerColor = False
          Visible = False
          AllowDock = [dtLeft]
          AllowDockClients = []
          AllowFloating = False
          AutoHide = False
          Caption = 'Exibir'
          CaptionButtons = [cbHide]
          CustomCaptionButtons.Buttons = <>
          ImageIndex = 27
          ShowCaption = False
          TabsProperties.CustomButtons.Buttons = <>
          DockingType = 1
          OriginalWidth = 101
          OriginalHeight = 140
        end
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1020
        Height = 33
        Margins.Left = 0
        Margins.Top = 4
        Margins.Right = 0
        Margins.Bottom = 2
        Align = dalTop
        BarManager = BarMgr
        Color = 16118503
        ParentColor = False
        SunkenBorder = False
        UseOwnColor = True
        UseOwnSunkenBorder = True
      end
      object dxBarDockControl2: TdxBarDockControl
        AlignWithMargins = True
        Left = 5
        Top = 35
        Width = 81
        Height = 579
        Margins.Left = 5
        Margins.Top = 2
        Margins.Right = 5
        Margins.Bottom = 0
        Align = dalLeft
        BarManager = BarMgr
        Color = clBtnFace
        ParentColor = False
        SunkenBorder = False
        UseOwnColor = True
        UseOwnSunkenBorder = True
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Maq 15 - Acesso Remoto'
      Color = 12895428
      Font.Charset = ANSI_CHARSET
      Font.Color = 8289918
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 1
      ParentColor = False
      ParentFont = False
    end
  end
  object BarMgr: TdxBarManager
    AllowCallFromAnotherForm = True
    AutoAlignBars = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'Caixa')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = dmImagens.im16
    ImageOptions.LargeImages = dmImagens.im32
    ImageOptions.StretchGlyphs = False
    ImageOptions.UseLargeImagesForLargeIcons = True
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    MenusShowRecentItemsFirst = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    ShowFullMenusAfterDelay = False
    UseBarHintWindow = False
    UseSystemFont = False
    Left = 272
    Top = 120
    DockControlHeights = (
      0
      0
      0
      0)
    object BarMgrBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'MenuPri'
      CaptionButtons = <>
      Color = clBtnFace
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 276
      FloatTop = 213
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem4'
        end
        item
          Visible = True
          ItemName = 'cmSubExibir'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'cmAlterarSenha'
        end
        item
          Visible = True
          ItemName = 'cmAssineAqui'
        end
        item
          Visible = True
          ItemName = 'cmDocMgr'
        end
        item
          Visible = True
          ItemName = 'cmDEV'
        end
        item
          Visible = True
          ItemName = 'cmPlano'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'MenuPri'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object BarMgrBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'BarraComum'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 28
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 213
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <>
      OldName = 'BarraComum'
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = False
      WholeRow = True
    end
    object BarMgrBar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      Color = clBtnFace
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 935
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmVendas'
        end
        item
          Visible = True
          ItemName = 'cmOrcamentos'
        end
        item
          Visible = True
          ItemName = 'cmClientes'
        end
        item
          Visible = True
          ItemName = 'cmProdutos'
        end
        item
          Visible = True
          ItemName = 'cmFornecedores'
        end
        item
          Visible = True
          ItemName = 'cmCaixa'
        end
        item
          Visible = True
          ItemName = 'cmUsuarios'
        end
        item
          Visible = True
          ItemName = 'cmEstatisticas'
        end
        item
          Visible = True
          ItemName = 'cmNFe'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = '&Arquivo'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmTrocarUsuario'
        end>
      ItemOptions.Size = misNormal
    end
    object cmTrocarUsuario: TdxBarButton
      Caption = 'Login'
      Category = 0
      Hint = 'Login'
      Visible = ivNever
      OnClick = cmTrocarUsuarioClick
    end
    object cmAlterarSenha: TdxBarButton
      Caption = 'Alterar Senha'
      Category = 0
      Hint = 'Alterar Senha'
      Visible = ivAlways
      OnClick = cmAlterarSenhaClick
    end
    object dxBarButton3: TdxBarButton
      Caption = '&Op'#231#245'es'
      Category = 0
      Hint = 'Op'#231#245'es'
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Caption = '&Tarifas'
      Category = 0
      Hint = 'Tarifas'
      Visible = ivAlways
    end
    object cmSair: TdxBarButton
      Align = iaRight
      Caption = '&Sair'
      Category = 0
      Hint = 'Sair'
      Visible = ivAlways
      OnClick = cmSairClick
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Ajuda'
      Category = 0
      Style = cxStyle52
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmTutoriais'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmSuporteRemoto'
        end
        item
          Visible = True
          ItemName = 'cmTelefones'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmAtualizarNex'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmComprarAss'
        end
        item
          Visible = True
          ItemName = 'cmMigrar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem6'
        end>
      ItemOptions.ShowShortCuts = True
      ItemOptions.Size = misNormal
    end
    object cmTelefones: TdxBarButton
      Caption = '&3. Telefones e informa'#231#245'es de contato'
      Category = 0
      Hint = '3. Telefones e informa'#231#245'es de contato'
      Visible = ivAlways
      OnClick = cmTelefonesClick
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = '&Exibir'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object cmExibir: TdxBarImageCombo
      Caption = 'E&xibir'
      Category = 0
      Hint = 'Exibir'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888800000000000000080FFFFFFFFFFFFF080FDEBFFFFFFFFF080FB6DF00F00F
        0F080F9ACFFFFFFFFF080FFFFFFFFFFFFF080C9D6CCCCCCCCC080C46BCFFFFCF
        FC080CBAECCCCCCCCC080FFFFFFFFFFFFF080F64AFFFFFFFFF080F496F00F000
        0F080F94BFFFFFFFFF080FFFFFFFFFFFFF080000000000000008}
      ShowCaption = True
      Items.Strings = (
        'M'#225'quinas'
        'Clientes'
        'Produtos'
        'Impress'#245'es'
        'Caixa'
        'Op'#231#245'es'
        'Tarifas'
        'Usu'#225'rios')
      ItemIndex = -1
      ImageIndexes = (
        0
        1
        10
        7
        9
        17
        18
        19)
    end
    object cmExportar: TdxBarButton
      Caption = 'Exportar'
      Category = 0
      Enabled = False
      Hint = 'Exportar'
      Visible = ivAlways
      ShortCut = 16453
      OnClick = cmExportarClick
    end
    object cmImprimir: TdxBarButton
      Caption = 'Imprimir'
      Category = 0
      Enabled = False
      Hint = 'Imprimir'
      Visible = ivAlways
      ImageIndex = 22
      ShortCut = 16464
      OnClick = cmImprimirClick
    end
    object cmSubExibir: TdxBarSubItem
      Caption = 'E&xibir'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmVendas'
        end
        item
          Visible = True
          ItemName = 'cmOrcamentos'
        end
        item
          Visible = True
          ItemName = 'cmClientes'
        end
        item
          Visible = True
          ItemName = 'cmProdutos'
        end
        item
          Visible = True
          ItemName = 'cmFornecedores'
        end
        item
          Visible = True
          ItemName = 'cmCaixa'
        end
        item
          Visible = True
          ItemName = 'cmUsuarios'
        end
        item
          Visible = True
          ItemName = 'cmEstatisticas'
        end
        item
          Visible = True
          ItemName = 'cmNFe'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmMostrarTextoBotoes'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmReativarNF'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmAbreGaveta'
        end>
    end
    object cmMostrarTextoBotoes: TdxBarButton
      Caption = 'Mostrar Texto dos Bot'#245'es'
      Category = 0
      Hint = 'Mostrar Texto dos Bot'#245'es'
      Visible = ivAlways
      OnClick = cmMostrarTextoBotoesClick
    end
    object cmSuporteRemoto: TdxBarButton
      Caption = '&2. Suporte T'#233'cnico Online (F8)'
      Category = 0
      Hint = 'Clique aqui para falar ao vivo com um de nossos t'#233'cnicos :-)'
      Visible = ivAlways
      ShortCut = 119
      OnClick = cmSuporteRemotoClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Senha de Suporte'
      Category = 0
      Hint = 'Senha de Suporte'
      Visible = ivAlways
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'Arquivo'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmImprimir'
        end
        item
          Visible = True
          ItemName = 'cmExportar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmSair'
        end>
      ItemOptions.Size = misNormal
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = 'Layout'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmLayoutAddRemCols'
        end
        item
          Visible = True
          ItemName = 'cmLaySalvar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmLayRestaurar'
        end>
    end
    object cmLayoutAddRemCols: TdxBarButton
      Caption = 'Adicionar ou remover colunas'
      Category = 0
      Hint = 'Adicionar ou remover colunas'
      Visible = ivAlways
      ImageIndex = 21
      OnClick = cmLayoutAddRemColsClick
    end
    object cmLaySalvar: TdxBarButton
      Caption = 'Salvar'
      Category = 0
      Hint = 'Salvar'
      Visible = ivAlways
      ImageIndex = 34
      OnClick = cmLaySalvarClick
    end
    object cmLayRestaurar: TdxBarButton
      Caption = 'Restaurar layout padr'#227'o'
      Category = 0
      Hint = 'Restaurar layout padr'#227'o'
      Visible = ivAlways
      OnClick = cmLayRestaurarClick
    end
    object cmClientes: TdxBarLargeButton
      Tag = 1
      Caption = 'Clientes'
      Category = 0
      Hint = 'Gerenciar clientes'
      Style = cxStyle1
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      LargeImageIndex = 1
      OnClick = cmMaquinasClick
      Width = 80
      SyncImageIndex = False
      ImageIndex = -1
    end
    object cmProdutos: TdxBarLargeButton
      Tag = 2
      Caption = 'Produtos'
      Category = 0
      Hint = 'Gerenciar produtos'
      Style = cxStyle1
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      LargeImageIndex = 2
      OnClick = cmMaquinasClick
      Width = 80
      SyncImageIndex = False
      ImageIndex = -1
    end
    object cmCaixa: TdxBarLargeButton
      Tag = 5
      Caption = 'Caixa'
      Category = 0
      Hint = 'Caixa: abrir, fechar, corrigir ...'
      Style = cxStyle1
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      LargeImageIndex = 9
      OnClick = cmMaquinasClick
      Width = 80
      SyncImageIndex = False
      ImageIndex = -1
    end
    object cmUsuarios: TdxBarLargeButton
      Tag = 6
      Caption = 'Usu'#225'rios'
      Category = 0
      Hint = 'Gerenciamento de funcion'#225'rios'
      Style = cxStyle1
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      LargeImageIndex = 194
      OnClick = cmMaquinasClick
      Width = 80
      SyncImageIndex = False
      ImageIndex = -1
    end
    object cmEstatisticas: TdxBarLargeButton
      Tag = 7
      Caption = 'Estat'#237'sticas'
      Category = 0
      Hint = 'Estat'#237'sticas da loja'
      Style = cxStyle1
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      LargeImageIndex = 88
      OnClick = cmMaquinasClick
      Width = 80
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Config.Maq.'
      Category = 0
      Hint = 'Configura'#231#227'o das M'#225'quinas Clientes'
      Visible = ivAlways
      ButtonStyle = bsChecked
      LargeImageIndex = 110
      AutoGrayScale = False
    end
    object cmAbrirServ: TdxBarButton
      Caption = 'Abrir servidor Nex (NexServ)'
      Category = 0
      Hint = 'Abrir servidor Nex (NexServ)'
      Visible = ivAlways
      OnClick = cmAbrirServClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Logoff     (trocar funcion'#225'rio)'
      Category = 0
      Hint = 'Trocar funcion'#225'rio'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton7: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object cmComprarAss: TdxBarButton
      Caption = '&6. Comprar ou renovar Assinatura'
      Category = 0
      Visible = ivAlways
      ImageIndex = 85
      PaintStyle = psCaptionGlyph
      OnClick = cmComprarAssClick
    end
    object cmVendas: TdxBarLargeButton
      Caption = 'Vendas'
      Category = 0
      Hint = 'Vendas'
      Style = styleSelecionado
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      LargeImageIndex = 10
      OnClick = cmMaquinasClick
      AutoGrayScale = False
      Width = 80
      SyncImageIndex = False
      ImageIndex = -1
    end
    object cmFornecedores: TdxBarLargeButton
      Tag = 3
      Caption = 'Fornecedores'
      Category = 0
      Hint = 'Fornecedores'
      Style = cxStyle1
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      LargeImageIndex = 130
      OnClick = cmMaquinasClick
      Width = 80
    end
    object cmDebitos: TdxBarLargeButton
      Tag = 4
      Caption = 'D'#233'bitos'
      Category = 0
      Hint = 'D'#233'bitos'
      Style = cxStyle1
      Visible = ivNever
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = cmMaquinasClick
      Width = 80
    end
    object cmTutoriais: TdxBarButton
      Caption = '&1. Tutoriais: Aprenda a usar o programa Nex!'
      Category = 0
      Hint = '1. Tutoriais: Aprenda a usar o programa Nex!'
      Style = cxStyle52
      Visible = ivAlways
      OnClick = cmTutoriaisClick
    end
    object cmEspaco: TdxBarButton
      Category = 0
      Enabled = False
      Visible = ivAlways
    end
    object cmAtualizarNex: TdxBarButton
      Caption = '&5. Atualizar o NEX'
      Category = 0
      Hint = '5. Atualizar o NEX'
      Style = cxStyle52
      Visible = ivAlways
      OnClick = cmAtualizarNexClick
    end
    object dxBarButton5: TdxBarButton
      Caption = '&4. Termos de servi'#231'o'
      Category = 0
      Hint = '4. Termos de servi'#231'o'
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
    object cmNovoReg: TdxBarButton
      Caption = 'Fazer novo registro com outro e-mail'
      Category = 0
      Hint = 'Fazer novo registro com outro e-mail'
      Style = cxStyle53
      Visible = ivAlways
      OnClick = cmNovoRegClick
    end
    object cmOutroReg: TdxBarButton
      Caption = 'Usar outro registro j'#225' existente'
      Category = 0
      Hint = 'Usar outro registro j'#225' existente'
      Style = cxStyle53
      Visible = ivAlways
      OnClick = cmOutroRegClick
    end
    object cmOrcamentos: TdxBarLargeButton
      Tag = 8
      Caption = 'Or'#231'amentos'
      Category = 0
      Hint = 'Or'#231'amentos'
      Style = cxStyle1
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      LargeImageIndex = 142
      OnClick = cmMaquinasClick
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = '&8. Registro '
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmNovoReg'
        end
        item
          Visible = True
          ItemName = 'cmOutroReg'
        end>
    end
    object cmPlano: TdxBarControlContainerItem
      Align = iaRight
      Caption = 'panPlanos'
      Category = 0
      Visible = ivAlways
      Control = panPlanos
    end
    object cmAbreGaveta: TdxBarButton
      Caption = 'Abrir Gaveta de Dinheiro (F11)'
      Category = 0
      Hint = 'GAVETA'
      Visible = ivNever
      OnClick = cmAbreGavetaClick
    end
    object cmDocMgr: TdxBarButton
      Caption = 'Doc-Manager'
      Category = 0
      Hint = 'Doc-Manager'
      Visible = ivNever
      OnClick = cmDocMgrClick
    end
    object cmDEV: TdxBarButton
      Caption = 'DEV'
      Category = 0
      Hint = 'DEV'
      Visible = ivNever
      OnClick = cmDEVClick
    end
    object cmRefreshApp: TdxBarButton
      Caption = '3. Atualizar dados do seu plano'
      Category = 0
      Hint = 
        'Checar se existe uma altera'#231#227'o de plano ou de vencimento do seu ' +
        'plano'
      Visible = ivAlways
      Glyph.Data = {
        76020000424D760200000000000036000000280000000C0000000C0000000100
        2000000000004002000000000000000000000000000000000000000000000000
        008400000008000000390000006B000000940000008C0000006B000000390000
        00000000000000000000000000000000009C0000009C0000009C0000009C0000
        009C000000940000009C0000009C000000840000000800000000000000000000
        009C0000009C0000009C000000420000000800000000000000180000007B0000
        009C0000008400000000000000000000009C0000009C0000009C000000840000
        00000000000000000000000000000000007B0000009C00000039000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00180000009C0000007B00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000094000000940000008C0000
        0094000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000007B0000009C0000001800000000000000000000
        0000000000000000000000000000000000000000000000000000000000390000
        009C0000007B00000000000000000000000000000000000000840000009C0000
        009C0000009C0000000000000000000000840000009C0000007B000000180000
        000000000008000000420000009C0000009C0000009C00000000000000000000
        0008000000840000009C0000009C000000940000009C0000009C0000009C0000
        009C0000009C00000000000000000000000000000000000000390000007B0000
        0094000000940000006B00000039000000080000008400000000}
      OnClick = cmRefreshAppClick
    end
    object cmNFe: TdxBarLargeButton
      Tag = 9
      Caption = 'Nota Fiscal'
      Category = 0
      Hint = 'Nota Fiscal'
      Style = cxStyle1
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      LargeImageIndex = 161
      OnClick = cmNFeClick
      Width = 80
    end
    object cmReativarNF: TdxBarButton
      Caption = 'Reativar a op'#231#227'o "Nota Fiscal"'
      Category = 0
      Hint = 'Reativar a op'#231#227'o "Nota Fiscal"'
      Visible = ivNever
      OnClick = cmReativarNFClick
    end
    object cmMigrar: TdxBarButton
      Caption = '&7. Migrar para o plano PREMIUM'
      Category = 0
      Hint = '7. Migrar para o plano PREMIUM'
      Visible = ivAlways
      OnClick = cmMigrarClick
    end
    object dxBarButton6: TdxBarButton
      Caption = '9. Acesso restrito equipe suporte'
      Category = 0
      Hint = '9. Acesso restrito equipe suporte'
      Visible = ivAlways
    end
    object cmAssineAqui: TdxBarButton
      Caption = 'Assinar'
      Category = 0
      Hint = 'Assinar'
      Style = cxStyle58
      Visible = ivAlways
      ImageIndex = 85
      PaintStyle = psCaptionGlyph
      OnClick = cmComprarAssClick
    end
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.BorderStyle = ebsThick
    StyleFocused.Color = 7471103
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.TextStyle = [fsBold]
    StyleHot.LookAndFeel.NativeStyle = False
    Left = 312
    Top = 392
    PixelsPerInch = 96
  end
  object HC: TcxHintStyleController
    HintStyleClassName = 'TcxHintStyle'
    HintStyle.Animate = cxhaFadeIn
    HintStyle.CaptionFont.Charset = ANSI_CHARSET
    HintStyle.CaptionFont.Color = clWindowText
    HintStyle.CaptionFont.Height = -13
    HintStyle.CaptionFont.Name = 'Tahoma'
    HintStyle.CaptionFont.Style = [fsBold]
    HintStyle.Font.Charset = ANSI_CHARSET
    HintStyle.Font.Color = clWindowText
    HintStyle.Font.Height = -13
    HintStyle.Font.Name = 'Tahoma'
    HintStyle.Font.Style = []
    HintStyle.Rounded = True
    HintPause = 200
    HintHidePause = 3500
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    Left = 200
    Top = 152
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 232
    Top = 120
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15329769
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11055248
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14211272
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14738136
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7897176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 524288
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = 524288
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4194368
      Font.Charset = ANSI_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11055248
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11055248
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7897176
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = 7897176
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      TextColor = 4802889
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 11055248
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 8292193
      TextColor = clWhite
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9279343
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7897176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14150898
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 14150898
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12615680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle31: TcxStyle
      Tag = 9
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 5723991
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clBackground
      TextColor = clWhite
    end
    object cxStyle36: TcxStyle
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12582911
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clGray
    end
    object cxStyle40: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clGray
    end
    object cxStyle41: TcxStyle
    end
    object cxStyle42: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle43: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clBackground
      TextColor = clWhite
    end
    object cxStyle44: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clWindow
    end
    object cxStyle45: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle46: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 15934
    end
    object cxStyle47: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle48: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      TextColor = clBlue
    end
    object styleSelecionado: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
    end
    object cxStyle49: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxsHeader: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clGray
    end
    object cxStyle50: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle51: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle52: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = 10639375
    end
    object cxStyle53: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object cxStyle54: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object cxStyle55: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object cxStyle56: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      TextColor = clHotLight
    end
    object cxStyle57: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
    end
    object cxStyle58: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object cxStyle59: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
    end
    object GridTableViewStyleSheetEggplant: TcxGridTableViewStyleSheet
      Caption = 'Eggplant'
      Styles.Content = cxStyle1
      Styles.ContentEven = cxStyle2
      Styles.ContentOdd = cxStyle3
      Styles.Inactive = cxStyle8
      Styles.Selection = cxStyle11
      Styles.Footer = cxStyle4
      Styles.Group = cxStyle5
      Styles.GroupByBox = cxStyle6
      Styles.Header = cxStyle7
      Styles.Indicator = cxStyle9
      Styles.Preview = cxStyle10
      BuiltIn = True
    end
    object cxVerticalGridStyleSheetEggplant: TcxVerticalGridStyleSheet
      Caption = 'Eggplant'
      Styles.Background = cxStyle12
      Styles.Content = cxStyle14
      Styles.Inactive = cxStyle16
      Styles.Selection = cxStyle17
      Styles.Category = cxStyle13
      Styles.Header = cxStyle15
      BuiltIn = True
    end
    object GridTableViewStyleSheetMaple: TcxGridTableViewStyleSheet
      Caption = 'Maple'
      Styles.Content = cxStyle18
      Styles.ContentEven = cxStyle19
      Styles.ContentOdd = cxStyle20
      Styles.Inactive = cxStyle25
      Styles.Selection = cxStyle28
      Styles.Footer = cxStyle21
      Styles.Group = cxStyle22
      Styles.GroupByBox = cxStyle23
      Styles.Header = cxStyle24
      Styles.Indicator = cxStyle26
      Styles.Preview = cxStyle27
      BuiltIn = True
    end
  end
  object dckMgr: TdxDockingManager
    AutoHideInterval = 0
    AutoHideMovingInterval = 0
    AutoShowInterval = 0
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.AllowFloating = False
    DefaultHorizContainerSiteProperties.CaptionButtons = [cbMaximize, cbHide]
    DefaultHorizContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.AllowFloating = False
    DefaultVertContainerSiteProperties.CaptionButtons = [cbMaximize, cbHide]
    DefaultVertContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.AllowFloating = False
    DefaultTabContainerSiteProperties.CaptionButtons = [cbMaximize, cbHide]
    DefaultTabContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.TabsProperties.CustomButtons.Buttons = <>
    DefaultTabContainerSiteProperties.TabsProperties.TabPosition = tpTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    Options = [doActivateAfterDocking, doDblClickDocking, doFloatingOnTop, doTabContainerHasCaption, doTabContainerCanAutoHide, doSideContainerHasCaption, doSideContainerCanAutoHide, doTabContainerCanInSideContainer, doImmediatelyHideOnAutoHide, doHideAutoHideIfActive, doRedrawOnResize]
    Left = 168
    Top = 152
    PixelsPerInch = 96
  end
  object MT: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'DataHora'
        DataType = ftDateTime
      end
      item
        Name = 'Texto'
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
    Left = 168
    Top = 120
    object MTDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object MTTexto: TMemoField
      FieldName = 'Texto'
      BlobType = ftMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = MT
    Left = 200
    Top = 120
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 336
    Top = 128
  end
  object TimerAvisoAss: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = TimerAvisoAssTimer
    Left = 520
    Top = 192
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer2Timer
    Left = 432
    Top = 184
  end
  object TimerHint: TTimer
    Enabled = False
    Interval = 4000
    OnTimer = TimerHintTimer
    Left = 408
    Top = 40
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 336
    Top = 232
    object lfPadrao: TdxLayoutStandardLookAndFeel
      GroupOptions.Padding.AssignedValues = [lpavBottom]
      GroupOptions.Padding.Bottom = 0
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -13
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.Padding.AssignedValues = [lpavRight]
      ItemOptions.Padding.Right = 0
    end
  end
  object TimerFirewall: TTimer
    Interval = 5000
    OnTimer = TimerFirewallTimer
    Left = 352
    Top = 176
  end
  object TimerRevisarCadProduto: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerRevisarCadProdutoTimer
    Left = 448
    Top = 128
  end
  object cxEditStyleControllerTahoma10: TcxEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.BorderColor = 16962
    StyleFocused.BorderStyle = ebsThick
    StyleFocused.Color = 7471103
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.TextStyle = [fsBold]
    StyleHot.LookAndFeel.NativeStyle = False
    Left = 192
    Top = 456
    PixelsPerInch = 96
  end
  object escFlat: TcxEditStyleController
    Style.BorderStyle = ebsFlat
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.Kind = lfFlat
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.BorderStyle = ebsFlat
    StyleFocused.Color = 7471103
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleFocused.TextColor = clHotLight
    StyleFocused.TextStyle = [fsBold]
    StyleHot.LookAndFeel.Kind = lfFlat
    Left = 208
    Top = 352
    PixelsPerInch = 96
  end
  object nxSession1: TnxSession
    Left = 336
    Top = 64
  end
  object pmRegistro: TdxBarPopupMenu
    BarManager = BarMgr
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'cmNovoReg'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'cmOutroReg'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'cmRefreshApp'
      end>
    UseOwnFont = True
    Left = 168
    Top = 224
  end
  object imgsIndicator: TcxImageList
    Height = 12
    Width = 12
    FormatVersion = 1
    DesignInfo = 3670176
    ImageInfo = <
      item
        Image.Data = {
          76020000424D760200000000000036000000280000000C0000000C0000000100
          2000000000004002000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF00000000666666FF666666FF6666
          66FF666666FF666666FF666666FF666666FF666666FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001919
          19FF00000000666666FF666666FF666666FF666666FF666666FF666666FF6666
          66FF666666FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF00000000666666FF666666FF6666
          66FF666666FF666666FF666666FF666666FF666666FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF00000000666666FF666666FF666666FF666666FF666666FF666666FF6666
          66FF666666FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          76020000424D760200000000000036000000280000000C0000000C0000000100
          2000000000004002000000000000000000000000000000000000000000000000
          0000000000000000000000000004000000400000004D0000000E000000000000
          0000000000000000000000000000000000000000002E0000002F000000250000
          008C0000008C000000440000001F0000003A0000000300000000000000000000
          002E0000008C0000008C0000007A0000008C0000008C0000007F000000850000
          008C0000004D000000000000000000000030000000890000008C0000008C0000
          0087000000850000008C0000008C0000008B0000005000000000000000030000
          00250000007B0000008C0000006500000018000000120000004F0000008C0000
          0088000000370000000B000000580000008C0000008C00000087000000160000
          00000000000000000005000000760000008C0000008C0000005B000000720000
          008C0000008C000000850000000F000000000000000000000000000000700000
          008C0000008C000000670000000D000000450000007F0000008C000000510000
          000600000004000000370000008900000089000000500000001E000000000000
          001E000000830000008C0000008C00000077000000710000008C0000008C0000
          008A0000003A00000000000000000000003D0000008C0000008C000000890000
          008C0000008C0000008A0000008C0000008C0000005B00000000000000000000
          00050000004E00000050000000380000008C0000008C000000520000003D0000
          005B0000000000000000000000000000000000000000000000000000000A0000
          005B000000650000001C00000000000000000000000000000000}
      end>
  end
  object cxDefaultEditStyleController1: TcxDefaultEditStyleController
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = False
    Left = 615
    Top = 302
    PixelsPerInch = 96
  end
  object FM: TFormManager
    BarMgr = BarMgr
    PageControl = Paginas
    OnChange = FMChange
    Left = 479
    Top = 49
  end
  object LayoutLF: TdxLayoutLookAndFeelList
    Left = 632
    Top = 210
    object lfDefault: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -13
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.HotTrack = True
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderStyle = lbsFlat
      Offsets.ControlOffsetVert = 0
      Offsets.RootItemsAreaOffsetHorz = 5
      Offsets.RootItemsAreaOffsetVert = 5
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
    end
    object lfDestaque: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -13
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI Semibold'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderStyle = lbsFlat
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
    end
  end
  object AE: TApplicationEvents
    OnException = AEException
    OnShortCut = AEShortCut
    Left = 106
    Top = 153
  end
end
