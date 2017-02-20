object FrmCadFornecedor: TFrmCadFornecedor
  Left = 483
  Top = 54
  Caption = 'Dados do Fornecedor'
  ClientHeight = 483
  ClientWidth = 1238
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 36
    Width = 1238
    Height = 447
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
      Height = 442
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      BorderStyle = bsSingle
      Color = 16250871
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
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
            Item = nbiTran
          end
          item
            Item = nbiProdutos
          end>
      end
      object nbiFicha: TdxNavBarItem
        Caption = 'Cadastro'
        LargeImageIndex = 91
      end
      object nbiTran: TdxNavBarItem
        Caption = 'Transa'#231#245'es'
        LargeImageIndex = 92
      end
      object nbiProdutos: TdxNavBarItem
        Caption = 'Produtos'
        LargeImageIndex = 2
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
      Width = 1144
      Height = 442
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = tsDados
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 442
      ClientRectRight = 1144
      ClientRectTop = 27
      object tsDados: TcxTabSheet
        Caption = 'Ficha'
        ImageIndex = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object lcFicha: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 1144
          Height = 415
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          BevelKind = bkTile
          TabOrder = 0
          LayoutLookAndFeel = FrmPri.lfPadrao
          object edNome: TcxDBTextEdit
            Left = 88
            Top = 10
            DataBinding.DataField = 'Nome'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.escFlat
            Style.TextStyle = [fsBold]
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 0
            Width = 531
          end
          object edTelefone: TcxDBTextEdit
            Left = 88
            Top = 41
            DataBinding.DataField = 'Telefone'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 1
            Width = 150
          end
          object edCelular: TcxDBTextEdit
            Left = 298
            Top = 41
            DataBinding.DataField = 'Celular'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 2
            Width = 150
          end
          object edEndereco: TcxDBTextEdit
            Left = 88
            Top = 103
            DataBinding.DataField = 'Endereco'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 5
            Width = 531
          end
          object edBairro: TcxDBComboBox
            Left = 88
            Top = 134
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
            Style.StyleController = FrmPri.escFlat
            Style.ButtonStyle = btsFlat
            Style.PopupBorderStyle = epbsFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 6
            Width = 250
          end
          object edCidade: TcxDBComboBox
            Left = 88
            Top = 165
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
            Style.StyleController = FrmPri.escFlat
            Style.ButtonStyle = btsFlat
            Style.PopupBorderStyle = epbsFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 7
            Width = 531
          end
          object edUF: TcxDBTextEdit
            Left = 88
            Top = 196
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
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 8
            Width = 250
          end
          object edCEP: TcxDBMaskEdit
            Left = 383
            Top = 196
            DataBinding.DataField = 'CEP'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 9
            Width = 95
          end
          object edEmail: TcxDBMemo
            Left = 88
            Top = 227
            DataBinding.DataField = 'Email'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 10
            Height = 36
            Width = 531
          end
          object edObs: TcxDBMemo
            Left = 88
            Top = 269
            DataBinding.DataField = 'Obs'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 11
            Height = 65
            Width = 531
          end
          object edCNPJ: TcxDBTextEdit
            Left = 88
            Top = 72
            DataBinding.DataField = 'Cpf'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 3
            Width = 150
          end
          object edIE: TcxDBTextEdit
            Left = 298
            Top = 72
            DataBinding.DataField = 'Rg'
            DataBinding.DataSource = DS
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsFlat
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 4
            Width = 150
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
            Parent = lcFichaGroup_Root
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object lcFichaItem3: TdxLayoutItem
            Parent = lcFichaGroup6
            CaptionOptions.Text = 'Nome'
            Control = edNome
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaGroup8: TdxLayoutGroup
            Parent = lcFichaGroup6
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
            CaptionOptions.Width = 50
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
          object lcFichaItem12: TdxLayoutItem
            Parent = lcFichaGroup5
            CaptionOptions.Text = 'CNPJ'
            Control = edCNPJ
            ControlOptions.ShowBorder = False
            Index = 0
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
          object lcFichaItem17: TdxLayoutItem
            Parent = lcFichaGroup9
            CaptionOptions.Text = 'Endere'#231'o'
            Control = edEndereco
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem18: TdxLayoutItem
            Parent = lcFichaGroup9
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Bairro'
            Control = edBairro
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaGroup11: TdxLayoutGroup
            Parent = lcFichaGroup9
            CaptionOptions.Text = 'Hidden Group'
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 2
          end
          object lcFichaItem19: TdxLayoutItem
            Parent = lcFichaGroup11
            CaptionOptions.Text = 'Cidade'
            Control = edCidade
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem20: TdxLayoutItem
            Parent = lcFichaGroup2
            CaptionOptions.Text = 'Estado'
            Control = edUF
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lcFichaItem21: TdxLayoutItem
            Parent = lcFichaGroup2
            CaptionOptions.Text = 'CEP'
            CaptionOptions.Width = 35
            Control = edCEP
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
          object lcFichaItem13: TdxLayoutItem
            Parent = lcFichaGroup5
            CaptionOptions.Text = 'IE'
            CaptionOptions.Width = 50
            Control = edIE
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lcFichaGroup2: TdxLayoutGroup
            Parent = lcFichaGroup11
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
        end
      end
      object tsTran: TcxTabSheet
        Caption = 'Transa'#231#245'es'
        ImageIndex = 1
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tsProdutos: TcxTabSheet
        Caption = 'Produtos'
        ImageIndex = 2
        ExplicitHeight = 399
        object gridProd: TcxGrid
          AlignWithMargins = True
          Left = 0
          Top = 40
          Width = 1144
          Height = 375
          Margins.Left = 0
          Margins.Top = 4
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object tvProd: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsProdFor
            DataController.KeyFieldNames = 'UID'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnGrouping = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.GroupByBox = False
            object tvProdCodigo: TcxGridDBColumn
              Caption = 'C'#243'digo Loja'
              DataBinding.FieldName = 'CodigoLoja'
              Width = 114
            end
            object tvProdRef: TcxGridDBColumn
              Caption = 'C'#243'digo Ref.'
              DataBinding.FieldName = 'Ref'
              Width = 124
            end
            object tvProdNomeProduto: TcxGridDBColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'NomeProduto'
              SortIndex = 0
              SortOrder = soAscending
              Width = 390
            end
            object tvProdEstoque: TcxGridDBColumn
              DataBinding.FieldName = 'Estoque'
              HeaderAlignmentHorz = taCenter
            end
            object tvProdColumn1: TcxGridDBColumn
              Caption = 'Estoque Min.'
              DataBinding.FieldName = 'EstoqueMin'
              HeaderAlignmentHorz = taCenter
              Width = 96
            end
            object tvProdColumn2: TcxGridDBColumn
              Caption = 'Estoque Max.'
              DataBinding.FieldName = 'EstoqueMax'
              HeaderAlignmentHorz = taCenter
              Width = 92
            end
            object tvProdColumn3: TcxGridDBColumn
              Caption = 'Repor'
              DataBinding.FieldName = 'EstoqueRepor'
              HeaderAlignmentHorz = taCenter
            end
          end
          object glProd: TcxGridLevel
            GridView = tvProd
          end
        end
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1144
          Height = 36
          Align = dalTop
          BarManager = BarMgr
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
    IndexName = 'IRg'
    Left = 376
    Top = 32
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
    Left = 328
    Top = 32
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
    object BarMgrBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Produtos'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1272
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
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
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      LargeImageIndex = 17
      OnClick = dxBarLargeButton1Click
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Exportar'
      Category = 0
      Hint = 'Exportar'
      Visible = ivAlways
      LargeImageIndex = 31
      OnClick = dxBarLargeButton2Click
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
  end
  object DS: TDataSource
    DataSet = MT
    OnStateChange = DSStateChange
    Left = 296
    Top = 24
  end
  object FMgr: TFormManager
    BarMgr = BarMgr
    PageControl = Paginas
    OnPageControlChange = FMgrPageControlChange
    OnGetTabSheet = FMgrGetTabSheet
    Left = 256
    Top = 30
  end
  object L: TcxLookAndFeelController
    Left = 424
    Top = 24
  end
  object OpenDlg: TOpenDialog
    Filter = 'Imagens|*.jpeg;*.jpg;*.bmp'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 592
    Top = 192
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
    Left = 520
    Top = 46
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
  end
  object tProdFor: TnxTable
    Database = Dados.db
    TableName = 'ProdFor'
    IndexName = 'IForRef'
    Left = 270
    Top = 148
    object tProdForUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tProdForProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tProdForFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tProdForPos: TWordField
      FieldName = 'Pos'
    end
    object tProdForRef: TStringField
      FieldName = 'Ref'
    end
    object tProdForNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = Dados.tbPro
      LookupKeyFields = 'ID'
      LookupResultField = 'Descricao'
      KeyFields = 'Produto'
      Size = 100
      Lookup = True
    end
    object tProdForEstoque: TFloatField
      FieldKind = fkLookup
      FieldName = 'Estoque'
      LookupDataSet = Dados.tbPro
      LookupKeyFields = 'ID'
      LookupResultField = 'EstoqueAtual'
      KeyFields = 'Produto'
      Lookup = True
    end
    object tProdForCodigoLoja: TStringField
      FieldKind = fkLookup
      FieldName = 'CodigoLoja'
      LookupDataSet = Dados.tbPro
      LookupKeyFields = 'ID'
      LookupResultField = 'Codigo'
      KeyFields = 'Produto'
      Size = 30
      Lookup = True
    end
    object tProdForEstoqueMax: TFloatField
      FieldKind = fkLookup
      FieldName = 'EstoqueMax'
      LookupDataSet = Dados.tbPro
      LookupKeyFields = 'ID'
      LookupResultField = 'EstoqueMax'
      KeyFields = 'Produto'
      Lookup = True
    end
    object tProdForEstoqueMin: TFloatField
      FieldKind = fkLookup
      FieldName = 'EstoqueMin'
      LookupDataSet = Dados.tbPro
      LookupKeyFields = 'ID'
      LookupResultField = 'EstoqueMin'
      KeyFields = 'Produto'
      Lookup = True
    end
    object tProdForEstoqueRepor: TFloatField
      FieldKind = fkLookup
      FieldName = 'EstoqueRepor'
      LookupDataSet = Dados.tbPro
      LookupKeyFields = 'ID'
      LookupResultField = 'EstoqueRepor'
      KeyFields = 'Produto'
      Lookup = True
    end
  end
  object dsProdFor: TDataSource
    DataSet = tProdFor
    Left = 374
    Top = 172
  end
  object dlgExp: TSaveDialog
    FileName = 'Exportar'
    Filter = 'Excel|*.xls'
    FilterIndex = 0
    Left = 160
    Top = 193
  end
  object CP: TdxComponentPrinter
    CurrentLink = cplGridProd
    PreviewOptions.Caption = 'Visualiza'#231#227'o de Impress'#227'o'
    PrintTitle = 'Produtos'
    Version = 0
    Left = 232
    Top = 314
    object cplGridProd: TdxGridReportLink
      Active = True
      Component = gridProd
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42291.773186088000000000
      ReportTitle.Text = 'Produtos'
      OptionsOnEveryPage.FilterBar = False
      OptionsView.FilterBar = False
      BuiltInReportLink = True
    end
  end
end
