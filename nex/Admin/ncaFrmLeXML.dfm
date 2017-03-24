object FrmLeXML: TFrmLeXML
  Left = 0
  Top = 0
  BorderWidth = 10
  Caption = 'Leitura de XML / NF-e'
  ClientHeight = 529
  ClientWidth = 752
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 752
    Height = 529
    Hint = ''
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 0
    object pgPri: TcxPageControl
      Left = 0
      Top = 0
      Width = 752
      Height = 489
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tsArq
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.NativeStyle = False
      OnChange = pgPriChange
      ClientRectBottom = 489
      ClientRectRight = 752
      ClientRectTop = 28
      object tsArq: TcxTabSheet
        Caption = 'tsArq'
        Color = clBtnFace
        ImageIndex = 1
        ParentColor = False
        object LMDSimplePanel6: TLMDSimplePanel
          Left = 0
          Top = 30
          Width = 752
          Height = 431
          Hint = ''
          Align = alClient
          Bevel.Mode = bmEdge
          TabOrder = 0
          object edArq: TcxTextEdit
            AlignWithMargins = True
            Left = 12
            Top = 12
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 10
            TabStop = False
            Align = alTop
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfFlat
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.Kind = lfFlat
            TabOrder = 0
            Width = 728
          end
          object LMDSimplePanel7: TLMDSimplePanel
            AlignWithMargins = True
            Left = 12
            Top = 47
            Width = 728
            Height = 32
            Hint = ''
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 10
            Align = alTop
            Bevel.Mode = bmCustom
            TabOrder = 1
            object btnSelArq: TcxButton
              Left = 0
              Top = 0
              Width = 201
              Height = 32
              Align = alLeft
              Caption = 'Selecionar Arquivo'
              Default = True
              LookAndFeel.Kind = lfFlat
              OptionsImage.ImageIndex = 29
              OptionsImage.Images = dmImagens.im24
              TabOrder = 0
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnSelArqClick
            end
          end
          object lbErro: TcxLabel
            AlignWithMargins = True
            Left = 12
            Top = 89
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Arquivo inv'#225'lido!'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.TextColor = clRed
            Style.IsFontAssigned = True
            Visible = False
          end
        end
        object cxLabel6: TcxLabel
          Left = 0
          Top = 0
          Margins.Left = 6
          Margins.Top = 0
          Margins.Bottom = 2
          Align = alTop
          AutoSize = False
          Caption = '1. Selecione o arquivo XML da NF-e'
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.TextColor = clHotLight
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
          Height = 30
          Width = 752
        end
      end
      object tsFor: TcxTabSheet
        Caption = 'tsFor'
        ImageIndex = 2
        object cxLabel8: TcxLabel
          Left = 0
          Top = 0
          Margins.Left = 6
          Margins.Top = 0
          Margins.Bottom = 2
          Align = alTop
          AutoSize = False
          Caption = '2. Identifique o Fornecedor'
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.TextColor = clHotLight
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
          Height = 30
          Width = 752
        end
        object LMDSimplePanel8: TLMDSimplePanel
          Left = 0
          Top = 30
          Width = 752
          Height = 431
          Hint = ''
          Align = alClient
          Bevel.Mode = bmEdge
          TabOrder = 1
          object edFor: TcxTextEdit
            AlignWithMargins = True
            Left = 12
            Top = 12
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 10
            TabStop = False
            Align = alTop
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.Kind = lfFlat
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.Kind = lfFlat
            TabOrder = 0
            Width = 728
          end
          object panNewFor: TLMDSimplePanel
            AlignWithMargins = True
            Left = 12
            Top = 51
            Width = 728
            Height = 86
            Hint = ''
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 10
            Align = alTop
            Bevel.Mode = bmCustom
            TabOrder = 1
            object btnPesqFor: TcxButton
              Left = 0
              Top = 0
              Width = 321
              Height = 32
              Caption = 'Selecionar um fornecedor j'#225' cadastrado'
              Default = True
              LookAndFeel.Kind = lfFlat
              OptionsImage.ImageIndex = 59
              OptionsImage.Images = dmImagens.im24
              TabOrder = 0
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnPesqForClick
            end
            object btnCadFor: TcxButton
              AlignWithMargins = True
              Left = 0
              Top = 42
              Width = 321
              Height = 32
              Margins.Left = 10
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Caption = 'Cadastrar como novo fornecedor'
              LookAndFeel.Kind = lfFlat
              OptionsImage.Images = dmImagens.im24
              TabOrder = 1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnCadForClick
            end
          end
        end
      end
      object tsProd: TcxTabSheet
        Caption = 'tsProd'
        ImageIndex = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Splitter: TLMDSplitterPanel
          Left = 0
          Top = 30
          Width = 752
          Height = 431
          Hint = ''
          Bevel.Mode = bmCustom
          Bars = <
            item
              OldPosition = -1
              Position = 372
              ResizeButtonStyle = rbsFlatGripOnly
              Width = 7
            end>
          Align = alClient
          TabOrder = 0
          object spGrid: TLMDSplitterPane
            Color = clWhite
            ParentColor = False
            Bevel.Mode = bmEdge
            object lbTitItens: TcxLabel
              AlignWithMargins = True
              Left = 7
              Top = 0
              Margins.Left = 7
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'Produtos da NF-e / XML:'
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clSilver
              Style.BorderStyle = ebsNone
              Style.Color = clWhite
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI Semibold'
              Style.Font.Style = [fsBold]
              Style.TextStyle = [fsBold, fsUnderline]
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Height = 29
              Width = 361
              AnchorY = 15
            end
            object grid: TcxGrid
              AlignWithMargins = True
              Left = 0
              Top = 30
              Width = 368
              Height = 368
              Margins.Left = 0
              Margins.Top = 1
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              BorderStyle = cxcbsNone
              TabOrder = 1
              LookAndFeel.Kind = lfFlat
              object TV: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                OnFocusedRecordChanged = TVFocusedRecordChanged
                DataController.DataModeController.GridMode = True
                DataController.DataSource = ds
                DataController.KeyFieldNames = 'NumSeq'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                EditForm.UseDefaultLayout = False
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsSelection.HideFocusRectOnExit = False
                OptionsSelection.UnselectFocusedRecordOnExit = False
                OptionsView.CellEndEllipsis = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.DataRowHeight = 28
                OptionsView.GridLines = glNone
                OptionsView.GroupByBox = False
                OptionsView.Header = False
                object TVStatus: TcxGridDBColumn
                  DataBinding.FieldName = 'Status'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Images = dmImagens.im16
                  Properties.ImmediateDropDownWhenActivated = True
                  Properties.ImmediatePost = True
                  Properties.ImmediateUpdateText = True
                  Properties.Items = <
                    item
                      Description = 'Sugest'#227'o'
                      ImageIndex = 67
                      Value = 0
                    end
                    item
                      Description = 'Sem produto'
                      ImageIndex = 29
                      Value = 1
                    end
                    item
                      Description = 'Sem unidade'
                      ImageIndex = 18
                      Value = 2
                    end
                    item
                      Description = 'Convers'#227'o Unidade'
                      ImageIndex = 43
                      Value = 3
                    end
                    item
                      Description = 'OK'
                      ImageIndex = 4
                      Value = 4
                    end>
                  Properties.ShowDescriptions = False
                  BestFitMaxWidth = 24
                  LayoutItem = TVLayoutItem1.Owner
                  MinWidth = 24
                  Width = 52
                end
                object TVDescrXML: TcxGridDBColumn
                  DataBinding.FieldName = 'DescrXML'
                  PropertiesClassName = 'TcxTextEditProperties'
                  OnCustomDrawCell = TVDescrXMLCustomDrawCell
                  LayoutItem = TVLayoutItem2.Owner
                  Styles.Content = FrmPri.cxStyle57
                end
                object TVOk: TcxGridDBColumn
                  DataBinding.FieldName = 'OK'
                  Visible = False
                  VisibleForCustomization = False
                  VisibleForEditForm = bFalse
                end
                object TVRootGroup: TcxGridInplaceEditFormGroup
                  AlignHorz = ahLeft
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ItemIndex = 1
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  Index = -1
                end
                object TVLayoutItem1: TcxGridInplaceEditFormLayoutItem
                  Parent = TVRootGroup
                  AlignHorz = ahLeft
                  AlignVert = avClient
                  Index = 0
                end
                object TVLayoutItem2: TcxGridInplaceEditFormLayoutItem
                  Parent = TVRootGroup
                  AlignHorz = ahLeft
                  AlignVert = avClient
                  Index = 1
                end
              end
              object GL: TcxGridLevel
                GridView = TV
              end
            end
            object lbPend: TcxLabel
              AlignWithMargins = True
              Left = 7
              Top = 398
              Margins.Left = 7
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alBottom
              AutoSize = False
              Caption = '...'
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clSilver
              Style.BorderStyle = ebsNone
              Style.Color = clWhite
              Style.TextStyle = [fsBold]
              Style.TransparentBorder = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Height = 29
              Width = 361
              AnchorY = 413
            end
          end
          object spLC: TLMDSplitterPane
            ParentBackground = True
            Bevel.Mode = bmStandard
            Bevel.StandardStyle = lsNone
            object Paginas: TcxPageControl
              AlignWithMargins = True
              Left = 52
              Top = 68
              Width = 321
              Height = 363
              Margins.Left = 52
              Margins.Top = 20
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              TabOrder = 0
              Properties.ActivePage = tsConvUnid
              Properties.CustomButtons.Buttons = <>
              LookAndFeel.Kind = lfUltraFlat
              ClientRectBottom = 363
              ClientRectRight = 321
              ClientRectTop = 28
              object tsSugestao: TcxTabSheet
                Caption = 'tsSugestao'
                ImageIndex = 0
                object cxGroupBox1: TcxGroupBox
                  Left = 0
                  Top = 0
                  Align = alTop
                  Caption = ' Produto Sugerido: '
                  ParentFont = False
                  Style.LookAndFeel.Kind = lfFlat
                  StyleDisabled.LookAndFeel.Kind = lfFlat
                  TabOrder = 0
                  Height = 305
                  Width = 321
                  object btnPesquisar: TLMDButton
                    AlignWithMargins = True
                    Left = 12
                    Top = 205
                    Width = 297
                    Height = 32
                    Hint = ''
                    Margins.Left = 10
                    Margins.Top = 10
                    Margins.Right = 10
                    Margins.Bottom = 0
                    Align = alTop
                    Caption = '  F5 - Pesquisar se produto j'#225' existe'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ImageIndex = 3
                    Images = dmImagens.im16
                    ParentFont = False
                    TabOrder = 0
                    WordWrap = True
                    OnClick = btnPesquisarClick
                    ButtonLayout.Alignment = agCenterLeft
                    ButtonStyle = ubsWin40Ext
                    ThemeMode = ttmNone
                  end
                  object btnNovo: TLMDButton
                    AlignWithMargins = True
                    Left = 12
                    Top = 163
                    Width = 297
                    Height = 32
                    Hint = ''
                    Margins.Left = 10
                    Margins.Top = 0
                    Margins.Right = 10
                    Margins.Bottom = 0
                    Align = alTop
                    Caption = '  F4 - Cadastrar um novo produto'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ImageIndex = 3
                    Images = dmImagens.im16
                    ParentFont = False
                    TabOrder = 1
                    WordWrap = True
                    OnClick = btnNovoClick
                    ButtonLayout.Alignment = agCenterLeft
                    ButtonStyle = ubsWin40Ext
                    ThemeMode = ttmNone
                  end
                  object cxLabel3: TcxLabel
                    AlignWithMargins = True
                    Left = 12
                    Top = 142
                    Margins.Left = 10
                    Margins.Top = 20
                    Margins.Right = 10
                    Margins.Bottom = 0
                    Align = alTop
                    Caption = 'N'#227'o '#233' esse?'
                    ParentFont = False
                    Style.TextStyle = [fsItalic]
                    ExplicitTop = 136
                  end
                  object btnAceitarSug: TLMDButton
                    AlignWithMargins = True
                    Left = 12
                    Top = 90
                    Width = 297
                    Height = 32
                    Hint = ''
                    Margins.Left = 10
                    Margins.Top = 0
                    Margins.Right = 10
                    Margins.Bottom = 0
                    Align = alTop
                    Caption = '  F3 - Aceitar Sugest'#227'o'
                    Constraints.MaxWidth = 483
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clGreen
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ImageIndex = 3
                    Images = dmImagens.im16
                    ParentFont = False
                    TabOrder = 3
                    WordWrap = True
                    OnClick = btnAceitarSugClick
                    ButtonLayout.Alignment = agCenterLeft
                    ButtonStyle = ubsWin40Ext
                    MultiLine = True
                    ThemeMode = ttmNone
                  end
                  object cxLabel2: TcxLabel
                    AlignWithMargins = True
                    Left = 12
                    Top = 69
                    Margins.Left = 10
                    Margins.Top = 20
                    Margins.Right = 10
                    Margins.Bottom = 0
                    Align = alTop
                    Caption = #201' esse mesmo?'
                    ParentFont = False
                    Style.TextStyle = [fsItalic]
                    ExplicitTop = 63
                  end
                  object lbProdutoSugerido: TcxLabel
                    AlignWithMargins = True
                    Left = 12
                    Top = 22
                    Margins.Left = 10
                    Margins.Top = 0
                    Margins.Right = 10
                    Margins.Bottom = 0
                    Align = alTop
                    Caption = 'Coca-cola lata 300ml'
                    Constraints.MinHeight = 27
                    ParentColor = False
                    ParentFont = False
                    Style.BorderStyle = ebsFlat
                    Style.Color = clWhite
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -13
                    Style.Font.Name = 'Segoe UI'
                    Style.Font.Style = [fsBold]
                    Style.IsFontAssigned = True
                    Properties.Alignment.Vert = taVCenter
                    Properties.WordWrap = True
                    Width = 297
                    AnchorY = 36
                  end
                end
              end
              object tsSemProd: TcxTabSheet
                Caption = 'tsSemProd'
                ImageIndex = 1
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
                object btnNovo2: TLMDButton
                  Left = 0
                  Top = 0
                  Width = 321
                  Height = 32
                  Hint = ''
                  Margins.Left = 0
                  Margins.Top = 10
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alTop
                  Caption = '  F4 - Cadastrar como novo produto'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ImageIndex = 3
                  Images = dmImagens.im16
                  ParentFont = False
                  TabOrder = 0
                  WordWrap = True
                  OnClick = btnNovoClick
                  ButtonLayout.Alignment = agCenterLeft
                  ButtonStyle = ubsWin40Ext
                  ThemeMode = ttmNone
                end
                object btnPesquisar2: TLMDButton
                  AlignWithMargins = True
                  Left = 0
                  Top = 42
                  Width = 321
                  Height = 32
                  Hint = ''
                  Margins.Left = 0
                  Margins.Top = 10
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alTop
                  Caption = '  F5 - Pesquisar se produto j'#225' existe'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ImageIndex = 3
                  Images = dmImagens.im16
                  ParentFont = False
                  TabOrder = 1
                  WordWrap = True
                  OnClick = btnPesquisarClick
                  ButtonLayout.Alignment = agCenterLeft
                  ButtonStyle = ubsWin40Ext
                  ThemeMode = ttmNone
                end
              end
              object tsSemUnid: TcxTabSheet
                Caption = 'tsSemUnid'
                ImageIndex = 2
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
                object LMDHTMLLabel2: TLMDHTMLLabel
                  Left = 0
                  Top = 0
                  Width = 312
                  Height = 38
                  Margins.Left = 0
                  Margins.Top = 10
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alTop
                  AutoSize = True
                  Bevel.Mode = bmCustom
                  Alignment = taLeftJustify
                  Caption = #201' necess'#225'rio informar a Unidade no cadastro desse produto:'
                  Layout = tlTop
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  ExplicitTop = 10
                  ExplicitWidth = 363
                  ExplicitHeight = 21
                end
                object LMDSimplePanel3: TLMDSimplePanel
                  Left = 0
                  Top = 38
                  Width = 321
                  Height = 32
                  Hint = ''
                  Align = alTop
                  Bevel.Mode = bmCustom
                  TabOrder = 0
                  object btnAddUnid: TcxButton
                    Left = 0
                    Top = 0
                    Width = 177
                    Height = 32
                    Align = alLeft
                    Caption = 'Cadastrar Unidade'
                    LookAndFeel.Kind = lfFlat
                    LookAndFeel.NativeStyle = False
                    OptionsImage.ImageIndex = 0
                    OptionsImage.Images = dmImagens.im16
                    OptionsImage.Spacing = 8
                    TabOrder = 0
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                    OnClick = btnAddUnidClick
                  end
                end
              end
              object tsConvUnid: TcxTabSheet
                Caption = 'tsConvUnid'
                ImageIndex = 3
                object lbUnidProd: TLMDHTMLLabel
                  Left = 0
                  Top = 46
                  Width = 321
                  Height = 25
                  Margins.Left = 0
                  Margins.Right = 0
                  Align = alTop
                  Bevel.Mode = bmCustom
                  Alignment = taLeftJustify
                  Caption = 
                    'No cadastro do produto = <strong><FONT COLOR="#0080FF">%s</stron' +
                    'g>'
                  Layout = tlTop
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  ExplicitTop = 53
                  ExplicitWidth = 311
                end
                object lbUnidXML: TLMDHTMLLabel
                  Left = 0
                  Top = 21
                  Width = 321
                  Height = 25
                  Margins.Left = 0
                  Margins.Right = 0
                  Align = alTop
                  Bevel.Mode = bmCustom
                  Alignment = taLeftJustify
                  Caption = 
                    'Na NF-e/XML veio como = <strong><FONT COLOR="#0080FF">%s</strong' +
                    '>'
                  Layout = tlTop
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  ExplicitTop = 31
                  ExplicitWidth = 369
                end
                object cxLabel4: TcxLabel
                  Left = 0
                  Top = 0
                  Margins.Left = 0
                  Margins.Top = 10
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alTop
                  Caption = 'Unidades Diferentes!'
                  ParentFont = False
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Segoe UI Semibold'
                  Style.Font.Style = [fsBold]
                  Style.TextColor = clBlack
                  Style.TextStyle = [fsBold, fsUnderline]
                  Style.IsFontAssigned = True
                end
                object cxLabel5: TcxLabel
                  AlignWithMargins = True
                  Left = 0
                  Top = 91
                  Margins.Left = 0
                  Margins.Top = 20
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alTop
                  Caption = 'Como converter de uma unidade para outra?'
                  ParentFont = False
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Segoe UI'
                  Style.Font.Style = []
                  Style.TextStyle = [fsUnderline]
                  Style.IsFontAssigned = True
                end
                object panRegra: TLMDSimplePanel
                  Left = 0
                  Top = 112
                  Width = 321
                  Height = 34
                  Hint = ''
                  Margins.Left = 0
                  Margins.Top = 2
                  Margins.Right = 0
                  Margins.Bottom = 0
                  AutoSize = True
                  Align = alTop
                  Bevel.Mode = bmCustom
                  TabOrder = 2
                  object LMDSimplePanel5: TLMDSimplePanel
                    AlignWithMargins = True
                    Left = 0
                    Top = 3
                    Width = 321
                    Height = 31
                    Hint = ''
                    Margins.Left = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alTop
                    Bevel.Mode = bmCustom
                    TabOrder = 0
                    object lbDe: TcxLabel
                      Left = 0
                      Top = 0
                      Align = alLeft
                      Caption = '1 CX = '
                      ParentFont = False
                      Style.Font.Charset = ANSI_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -16
                      Style.Font.Name = 'Segoe UI Semibold'
                      Style.Font.Style = [fsBold]
                      Style.TextStyle = [fsBold]
                      Style.IsFontAssigned = True
                      Properties.Alignment.Vert = taVCenter
                      AnchorY = 16
                    end
                    object edPara: TcxDBCurrencyEdit
                      Left = 53
                      Top = 0
                      Align = alLeft
                      DataBinding.DataField = 'NewFator'
                      DataBinding.DataSource = ds
                      ParentFont = False
                      Properties.DisplayFormat = '#.####'
                      Properties.OnChange = edParaPropertiesChange
                      Style.BorderStyle = ebsFlat
                      Style.Font.Charset = ANSI_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -16
                      Style.Font.Name = 'Segoe UI'
                      Style.Font.Style = [fsBold]
                      Style.LookAndFeel.Kind = lfFlat
                      Style.TextColor = clHotLight
                      Style.TransparentBorder = False
                      Style.IsFontAssigned = True
                      StyleDisabled.LookAndFeel.Kind = lfFlat
                      StyleFocused.BorderStyle = ebsFlat
                      StyleFocused.Color = clInfoBk
                      StyleFocused.LookAndFeel.Kind = lfFlat
                      StyleFocused.TextStyle = [fsBold]
                      StyleHot.LookAndFeel.Kind = lfFlat
                      TabOrder = 1
                      OnEnter = edParaEnter
                      ExplicitHeight = 21
                      Width = 50
                    end
                    object lbPara: TcxLabel
                      Left = 103
                      Top = 0
                      Align = alLeft
                      Caption = ' PC'
                      ParentFont = False
                      Style.Font.Charset = ANSI_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -16
                      Style.Font.Name = 'Segoe UI Semibold'
                      Style.Font.Style = [fsBold]
                      Style.TextStyle = [fsBold]
                      Style.IsFontAssigned = True
                      Properties.Alignment.Vert = taVCenter
                      AnchorY = 16
                    end
                    object lbInverter: TcxLabel
                      AlignWithMargins = True
                      Left = 220
                      Top = 5
                      Cursor = crHandPoint
                      Margins.Left = 20
                      Margins.Top = 0
                      Margins.Right = 0
                      Margins.Bottom = 0
                      Caption = 'Inverter'
                      ParentFont = False
                      Style.Font.Charset = ANSI_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -13
                      Style.Font.Name = 'Segoe UI'
                      Style.Font.Style = []
                      Style.TextColor = 6052956
                      Style.TextStyle = [fsUnderline]
                      Style.IsFontAssigned = True
                      Properties.Alignment.Vert = taVCenter
                      OnClick = lbInverterClick
                      AnchorY = 16
                    end
                  end
                end
                object cxLabel9: TcxLabel
                  AlignWithMargins = True
                  Left = 228
                  Top = 5
                  Cursor = crHandPoint
                  Margins.Left = 20
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Caption = 'Inverter'
                  ParentFont = False
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Segoe UI'
                  Style.Font.Style = []
                  Style.TextColor = 6052956
                  Style.TextStyle = [fsUnderline]
                  Style.IsFontAssigned = True
                  Properties.Alignment.Vert = taVCenter
                  OnClick = lbInverterClick
                  AnchorY = 16
                end
                object edUniv: TcxDBCheckBox
                  Left = 0
                  Top = 314
                  Cursor = crHandPoint
                  Align = alBottom
                  Caption = 'A convers'#227'o de CX para PC '#233' sempre igual, para TODOS produtos.'
                  DataBinding.DataField = 'NewFatorUniv'
                  DataBinding.DataSource = ds
                  ParentFont = False
                  Properties.ImmediatePost = True
                  Properties.MultiLine = True
                  Properties.NullStyle = nssUnchecked
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Segoe UI'
                  Style.Font.Style = []
                  Style.LookAndFeel.Kind = lfFlat
                  Style.IsFontAssigned = True
                  StyleDisabled.LookAndFeel.Kind = lfFlat
                  StyleFocused.LookAndFeel.Kind = lfFlat
                  StyleHot.LookAndFeel.Kind = lfFlat
                  TabOrder = 4
                  Width = 321
                end
              end
              object tsOk: TcxTabSheet
                Caption = 'tsOk'
                ImageIndex = 4
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
              end
            end
            object LMDSimplePanel1: TLMDSimplePanel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 373
              Height = 48
              Hint = ''
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              Bevel.Mode = bmCustom
              TabOrder = 1
              object LMDSimplePanel2: TLMDSimplePanel
                Left = 52
                Top = 0
                Width = 321
                Height = 48
                Hint = ''
                Align = alClient
                Bevel.Mode = bmCustom
                TabOrder = 0
                object cxLabel1: TcxLabel
                  AlignWithMargins = True
                  Left = 0
                  Top = 0
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alTop
                  Caption = 'Produto corresponte na sua loja:'
                  ParentColor = False
                  ParentFont = False
                  Style.BorderColor = clSilver
                  Style.BorderStyle = ebsNone
                  Style.Color = clBtnFace
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Segoe UI Semibold'
                  Style.Font.Style = [fsBold]
                  Style.TextStyle = [fsBold]
                  Style.TransparentBorder = False
                  Style.IsFontAssigned = True
                  Properties.Alignment.Horz = taLeftJustify
                end
                object LMDSimplePanel4: TLMDSimplePanel
                  Left = 0
                  Top = 17
                  Width = 321
                  Height = 31
                  Hint = ''
                  Align = alClient
                  Bevel.Mode = bmCustom
                  TabOrder = 1
                  object edProduto: TcxDBButtonEdit
                    Left = 0
                    Top = 0
                    Margins.Left = 0
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alClient
                    DataBinding.DataField = 'NomeProd'
                    DataBinding.DataSource = ds
                    ParentFont = False
                    Properties.Buttons = <
                      item
                        Default = True
                        ImageIndex = 73
                        Kind = bkGlyph
                        Width = 26
                      end>
                    Properties.Images = dmImagens.im16
                    Properties.ReadOnly = True
                    Properties.OnButtonClick = edProdutoPropertiesButtonClick
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -13
                    Style.Font.Name = 'Segoe UI'
                    Style.Font.Style = [fsBold]
                    Style.HotTrack = False
                    Style.LookAndFeel.Kind = lfFlat
                    Style.IsFontAssigned = True
                    StyleDisabled.LookAndFeel.Kind = lfFlat
                    StyleFocused.LookAndFeel.Kind = lfFlat
                    StyleHot.LookAndFeel.Kind = lfFlat
                    TabOrder = 0
                    Width = 291
                  end
                  object btnEditar: TcxButton
                    AlignWithMargins = True
                    Left = 294
                    Top = 0
                    Width = 27
                    Height = 31
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alRight
                    Caption = 'Editar'
                    LookAndFeel.Kind = lfFlat
                    OptionsImage.ImageIndex = 75
                    OptionsImage.Images = dmImagens.im16
                    PaintStyle = bpsGlyph
                    TabOrder = 1
                    Visible = False
                    OnClick = btnEditarClick
                  end
                end
              end
              object panImg: TLMDSimplePanel
                Left = 0
                Top = 0
                Width = 52
                Height = 48
                Hint = ''
                Align = alLeft
                Bevel.Mode = bmCustom
                TabOrder = 1
                object imgStatus: TMyImage
                  AlignWithMargins = True
                  Left = 0
                  Top = 0
                  Width = 42
                  Height = 48
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 10
                  Margins.Bottom = 0
                  Align = alTop
                  MouseOverDrawMode = idmNormal
                  MouseOffDrawMode = idmNormal
                  MouseDownDrawMode = idmNormal
                  ImageList = imgs
                  ImageIndex = 3
                  Colorize = False
                end
              end
            end
          end
        end
        object lbSelModelo: TcxLabel
          Left = 0
          Top = 0
          Margins.Left = 6
          Margins.Top = 0
          Margins.Bottom = 2
          Align = alTop
          AutoSize = False
          Caption = 
            '3. Identifique os produtos vindos na NFe/ XML e clique em conclu' +
            'ir'
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.TextColor = clHotLight
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
          Height = 30
          Width = 752
        end
      end
      object tsFrete: TcxTabSheet
        Caption = 'tsFrete'
        ImageIndex = 3
        object cxLabel7: TcxLabel
          Left = 0
          Top = 0
          Margins.Left = 6
          Margins.Top = 0
          Margins.Bottom = 2
          Align = alTop
          AutoSize = False
          Caption = '4. Informe o valor do frete (se houver)'
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.TextColor = clHotLight
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
          Height = 30
          Width = 752
        end
        object panFrete: TLMDSimplePanel
          Left = 0
          Top = 30
          Width = 752
          Height = 431
          Hint = ''
          Align = alClient
          Bevel.Mode = bmEdge
          TabOrder = 1
          object edFrete: TcxCurrencyEdit
            AlignWithMargins = True
            Left = 12
            Top = 32
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 10
            Align = alTop
            Constraints.MaxWidth = 150
            ParentFont = False
            Style.BorderStyle = ebsFlat
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.StyleController = FrmPri.escFlat
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 728
          end
          object cxLabel10: TcxLabel
            AlignWithMargins = True
            Left = 10
            Top = 7
            Margins.Left = 8
            Margins.Top = 5
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Frete:'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.TextColor = clBlack
            Style.TextStyle = []
            Style.IsFontAssigned = True
            Properties.WordWrap = True
            Width = 730
          end
          object cxLabel11: TcxLabel
            AlignWithMargins = True
            Left = 12
            Top = 63
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alTop
            Caption = 
              'O valor do Frete ser'#225' lan'#231'ado como parte do custo de cada produt' +
              'o, sendo rateado proporcionalmente entre todos itens dessa NF.'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.TextColor = 5329233
            Style.TextStyle = []
            Style.IsFontAssigned = True
            Properties.WordWrap = True
            Width = 728
          end
          object cbEntrada: TcxCheckBox
            AlignWithMargins = True
            Left = 12
            Top = 129
            Margins.Left = 10
            Margins.Top = 20
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alTop
            Caption = 
              'N'#227'o atualizar o pre'#231'o de custo dos produtos (apenas dar entrada ' +
              'no estoque)'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfFlat
            Style.TextStyle = []
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.Kind = lfFlat
            TabOrder = 3
            ExplicitTop = 137
            ExplicitWidth = 121
          end
        end
      end
    end
    object panBottom: TLMDSimplePanel
      AlignWithMargins = True
      Left = 0
      Top = 499
      Width = 752
      Height = 30
      Hint = ''
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alBottom
      Bevel.Mode = bmCustom
      TabOrder = 1
      object btnAvancar: TcxButton
        AlignWithMargins = True
        Left = 124
        Top = 0
        Width = 117
        Height = 30
        Cursor = crHandPoint
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Avan'#231'ar >>'
        Default = True
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clHotLight
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnAvancarClick
      end
      object btnVoltar: TcxButton
        Left = 0
        Top = 0
        Width = 114
        Height = 30
        Cursor = crHandPoint
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = '<< Voltar'
        Enabled = False
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnVoltarClick
      end
    end
  end
  object mt: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'item'
        DataType = ftWord
      end
      item
        Name = 'DescrXML'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'UnidXML'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Produto'
        DataType = ftInteger
      end
      item
        Name = 'OK'
        DataType = ftBoolean
      end
      item
        Name = 'FatorUniv'
        DataType = ftBoolean
      end
      item
        Name = 'Fator'
        DataType = ftFloat
      end
      item
        Name = 'NomeProd'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Quant'
        DataType = ftFloat
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end
      item
        Name = 'UnidProd'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FatorMult'
        DataType = ftBoolean
      end
      item
        Name = 'ProdutoSugerido'
        DataType = ftInteger
      end
      item
        Name = 'NomeProdSug'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Status'
        DataType = ftByte
      end
      item
        Name = 'Inverter'
        DataType = ftBoolean
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
    OnCalcFields = mtCalcFields
    Left = 176
    Top = 367
    object mtitem: TWordField
      FieldName = 'item'
    end
    object mtDescrXML: TStringField
      FieldName = 'DescrXML'
      Size = 100
    end
    object mtUnidXML: TStringField
      FieldName = 'UnidXML'
      Size = 30
    end
    object mtProduto: TIntegerField
      FieldName = 'Produto'
    end
    object mtOK: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'OK'
      Calculated = True
    end
    object mtFatorUniv: TBooleanField
      FieldName = 'FatorUniv'
    end
    object mtFator: TFloatField
      FieldName = 'Fator'
    end
    object mtNomeProd: TStringField
      FieldName = 'NomeProd'
      KeyFields = 'Produto'
      Size = 100
    end
    object mtQuant: TFloatField
      FieldName = 'Quant'
    end
    object mtTotal: TCurrencyField
      FieldName = 'Total'
    end
    object mtUnidProd: TStringField
      FieldName = 'UnidProd'
      KeyFields = 'Produto'
      Size = 10
    end
    object mtNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object mtCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object mtProdutoSugerido: TIntegerField
      FieldName = 'ProdutoSugerido'
    end
    object mtNomeProdSug: TStringField
      FieldName = 'NomeProdSug'
      Size = 100
    end
    object mtStatus: TByteField
      FieldKind = fkCalculated
      FieldName = 'Status'
      Calculated = True
    end
    object mtNumSeq: TAutoIncField
      FieldName = 'NumSeq'
    end
    object mtNewFator: TFloatField
      FieldName = 'NewFator'
    end
    object mtNewFatorUniv: TBooleanField
      FieldName = 'NewFatorUniv'
    end
    object mtFatorInvertido: TBooleanField
      FieldName = 'FatorInvertido'
    end
    object mtNewFatorInvertido: TBooleanField
      FieldName = 'NewFatorInvertido'
    end
    object mtDadosFiscais: TMemoField
      FieldName = 'DadosFiscais'
      BlobType = ftMemo
    end
    object mtUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
  end
  object ds: TDataSource
    DataSet = mt
    Left = 232
    Top = 303
  end
  object imgs: TcxImageList
    Height = 48
    Width = 48
    FormatVersion = 1
    DesignInfo = 14156272
    ImageInfo = <
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          00021D130A29422C175F6040218A764F29A880562CB885592EBF7F552CB5714C
          27A25A3C1F813A271453140D071C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001C130A286241218C9A67
          35DDB2773EFDB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFAF753CFA8F6031CD51371C740F0A0515000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000022170C3079512AADB2773EFDB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFAB733BF465442390110B
          0618000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000906030D65442391AE743CF9B1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFA56E
          38EC4A31196A0201010300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001F150B2D976534D7B1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFE80562CB60D080412000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002F20
          1043A8713AF0B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFF986635D8191009230000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000033221149AD74
          3CF6B1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFECBA27BFFCFAB87FECFAB87FED0AC88FFC091
          63FEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFE9C6936E01810082200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000024180C33AA723BF2B378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB57C44FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFE9D8
          C7FFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF976534D70B080410000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000C080411996634DBB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB57D46FEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFE8D8
          C8FEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFF785029AC010100020000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000724D28A3B1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB57D46FEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFE8D8
          C8FEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFE472F18650000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002D1E0F40B2783EFEB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB47C44FEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFE8D7
          C6FEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEA46E38EB0F0A
          0515000000000000000000000000000000000000000000000000000000000000
          00000000000000000000010100028C5E30C7B3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFC89E75FFCFAA86FFCFAA86FFCFAA86FFBF8E
          5EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF6241
          228B000000000000000000000000000000000000000000000000000000000000
          000000000000000000002E1F1042B1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEAA72
          3BF20B0704100000000000000000000000000000000000000000000000000000
          00000000000000000000754E28A7B1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEECDED0FFF6F0EAFEF6F0EAFEF6F0E9FFC9A0
          79FEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFF493119690000000000000000000000000000000000000000000000000000
          0000000000000906030DA9713BF1B3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFFCF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFD7B9
          9BFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFF875B2FC10000000000000000000000000000000000000000000000000000
          00000000000033221249B1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEF8F2EDFFFDFDFDFEFDFDFDFEFFFFFFFFDABE
          A3FEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFAC733BF70D09051300000000000000000000000000000000000000000000
          0000000000005C3E2083B1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEEFE2D6FFFDFDFDFEFDFDFDFEFFFFFFFFE6D4
          C3FEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFE3121114600000000000000000000000000000000000000000000
          0000000000007D542BB2B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFDEC4ABFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC
          FBFFC4976AFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFF51371C7400000000000000000000000000000000000000000000
          000000000000936333D2B1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEC39467FFFDFCFCFEFDFDFDFEFFFFFFFFFDFD
          FDFEF8F4F0FEC4976AFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFE6846249500000000000000000000000000000000000000000000
          000000000000A16C38E6B1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFE3CEB9FEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFCF9F7FFCDA782FEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFE764F28A900000000000000000000000000000000000000000000
          000000000000A7703AEEB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB67E46FFEDDFD2FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFDFDFFD8BA9DFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFF7C532BB100000000000000000000000000000000000000000000
          000000000000A46E39E9B1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB67F4AFEEDE0D3FFFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEDBBFA4FFB2783EFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFE785029AC00000000000000000000000000000000000000000000
          000000000000986635D8B1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB77F49FFE9DA
          CAFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFEFEFEFFD2B08EFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFE6C48259B00000000000000000000000000000000000000000000
          00000000000083582DBBB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB57B
          43FFE2CBB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F5FFBB8652FFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFF583B1E7D00000000000000000000000000000000000000000000
          00000000000065442390B1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB2793FFEE3CDB8FFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFED9BC9FFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFE3A27145300000000000000000000000000000000000000000000
          0000000000003E2A1659B1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB98451FEBE8C5AFFBD8B5AFEBD8B
          5AFEB57B43FFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB1773DFEB9844FFFFBFAF8FEFDFDFDFEFFFFFFFFFDFDFDFEECDDCFFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFAF753CFB150E071E00000000000000000000000000000000000000000000
          000000000000120C0619AF753DF9B3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB8814BFFFCFAF9FFFFFFFFFFFFFFFFFFFFFF
          FFFFE4D0BCFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB47940FFF7F1ECFFFFFFFFFFFFFFFFFFFFFFFFFFF4EBE3FFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFF956434D40000000000000000000000000000000000000000000000000000
          0000000000000000000085592EBFB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB47B43FEF9F5F1FEFFFFFFFFFDFDFDFEFDFD
          FDFEF8F2EDFFB47B43FEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB1773DFEB67E47FFFAF8F5FEFDFDFDFEFFFFFFFFFDFDFDFEF2E8DFFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFF5A3C1F810000000000000000000000000000000000000000000000000000
          00000000000000000000412B165CB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFE9D9C9FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFEFFCEA984FFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFCEA984FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D2BEFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB177
          3DFC171008210000000000000000000000000000000000000000000000000000
          00000000000000000000060402089C6835DFB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFECBA47FFEFFFFFFFFFDFDFDFEFDFD
          FDFEFFFFFFFFF9F5F1FEC5996EFEB3783EFFB1773DFEB1773DFEB3783EFFB278
          3EFEC39569FEF9F4F0FFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFECEA883FFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFE7750
          29AA000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000462F1864B3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB2793FFEEFE3D8FFFDFDFDFEFDFD
          FDFEFFFFFFFFFDFDFDFEFCFBFAFEE8D6C5FFD7B89BFED2B08FFEDABDA1FFEDE0
          D3FEFDFCFCFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFF2E9E0FEB57C43FFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEAE743CF91F15
          0B2C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020101038D5F31C9B3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFBE8B5AFFF9F4EFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F6FFC39568FFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF6443238F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001D130A29A8703AF1B1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFBE8D5EFEF1E7
          DEFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEF4EDE6FEC49669FFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFF926232D10805030B0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000412B165DB0763CFCB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB57D
          45FED7B89AFFF5EEE8FEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEF6F0EAFFD8BB9EFEB67F49FEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEA9713BF11E140A2B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000583B1F7EB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB47B42FFC39568FFD4B292FFDDC2A8FFDFC7AFFFDCC1A6FFD3B1
          8FFFC39568FFB47B42FFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFAD743CF73322124800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005A3C
          1F80B1763DFDB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFAA713AF33523124C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000432D1760AB723BF3B1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFE9F6A37E2261A0D37000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000020150B2D916132CFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB278
          3EFE79512AAC0F0A051600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000030201054C331A6D9E6A36E3B3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFE916132CE3423
          124A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000705020A483019678D5E30CAB076
          3CFCB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEAC733BF77F552CB53523124C010100020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010000011810
          0822452F18636E4A269D8B5D30C6A36D38E8AF763DFAB2783EFEAD743CF79E6A
          37E184582EBC664423913A2714530F0A05150000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000030201044A31196A6946249526190D36000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000020101036F4A269FB1773DFEB3783EFFAA723AF4322111470000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002010103714C27A1B3783EFFB3783EFFB3783EFFB3783EFFAD743CF63221
          1147000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000201
          01036F4A269FB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEAB73
          3BF4322211480000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003B28
          1455B1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFAA723AF43221114700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004C33
          1A6CB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFAD743CF632211147000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000D09
          0513976534D8B3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFAA723AF4322211480000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000140D071C996735DAB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEAA723AF43221114700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000140D071C986635D8B3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFAD743CF632211147000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000140E071D976534D8B3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEAB733BF4322211480000
          000000000000000000000000000000000000000000000A07030E291C0E3B442E
          1762573A1E7C5F4021875B3D1F824E341B703725134E18100822010000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000140D071C996735DAB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFAB733BF43221
          1147000000000000000006040209432D176083582DBAAB733BF4B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB1773DFC9A6835DC6241
          228B1C130A280000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000140D071C976534D8B1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEAC73
          3BF63624134D4F351B71A36D38E9B3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB0763CFC7A522AAE1B120927000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000140E071D976534D8B378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB2783EFEB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFAC733BF6573A1E7C0302010400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000140D071C9967
          35DAB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB2783EFFB3783EFFB2783EFFB2783EFFB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFE82572DB90A07030E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000140D
          071C986635D8B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB2783EFEB68351F7D4B494FEE4D1
          BEFEEFE5DAFEF4EDE6FEF5ECE5FFEBDDD0FEDEC6AEFECCA47DFFB77E47FFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF916132CE0F0A05160000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000140E071D986635D8B1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB98A5DF5E8D7C7FEFCFBFBFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFF7F3EFFED8BB
          9EFEB67E48FFB3783EFFB1773DFEB1773DFEB3783EFFB1773DFE8B5D30C70805
          030B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000140D071C986634DAB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB0773EFBD8BEA3FCFEFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF6EEE7FFC6996EFFB2783EFFB1773DFEB3783EFFB1773DFEB1773DFE6E4A
          269D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000018100822AD743CF7B3783EFFB3783EFFB3783EFFB378
          3EFFB07941F8E8D8C7FEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFEFCFBFFCEA984FFB3793FFFB3783EFFB3783EFFB3783EFFB278
          3EFE3725134E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000472F1865B1773DFEB1773DFEB3783EFFB1773DFEB177
          3EFCE8D8C7FEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFFFFFFFFFCFBFAFECBA37DFFB3783EFFB1773DFEB1773DFEB378
          3EFF986634DA0604020800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000030201049C6936E0B1773DFEB1773DFEB3783EFFB1773DFED6B8
          9CFBFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEF9F5F2FEBE8B59FFB2783EFFB1773DFEB378
          3EFFB1773DFE452E186300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000038261350B3783EFFB3783EFFB3783EFFB3783EFFB68555F5FDFC
          FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D8C8FFB3793FFFB3783EFFB378
          3EFFB3783EFF916132CE01010002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000764F29A8B1773DFEB1773DFEB1773DFEB2783EFEE1CCB7FEFFFF
          FFFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFC39567FFB2783EFFB378
          3EFFB1773DFEB1763DFD1E140A2B000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000003020105A46E39EAB1773DFEB1773DFEB1773DFEB47D48F9FAF8F6FEFFFF
          FFFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFDFC8B1FEB2783EFFB378
          3EFFB1773DFEB1773DFE50361C72000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001C130A28B2783EFEB3783EFFB3783EFFB3783EFFCBA57FFCFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F2EDFFB47B42FFB378
          3EFFB3783EFFB3783EFF775029AA000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003725134FB3783EFFB1773DFEB1773DFEB1773DFEDDC3AAFEFDFDFDFEFFFF
          FFFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFCFCFEBD8B59FFB378
          3EFFB1773DFEB1773DFE936333D2000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000048301967B3783EFFB1773DFEB1773DFEB1773DFEE6D4C3FEFDFDFDFEFFFF
          FFFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEC79C71FFB378
          3EFFB1773DFEB1773DFEA56F39EB000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004F351B70B3783EFFB3783EFFB3783EFFB3783EFFEADBCDFEFDFDFDFEFFFF
          FFFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFECBA37CFFB378
          3EFFB3783EFFB3783EFFAC733CF5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004B321A6BB3783EFFB1773DFEB1773DFEB2783EFFEAD9C9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC89E75FFB378
          3EFFB2783EFFB1773DFEA9713BF1000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003D291557B3783EFFB1773DFEB1773DFEB2783EFFE0C9B2FEFDFDFDFEFFFF
          FFFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEC09061FFB378
          3EFFB2783EFFB1773DFE9C6836DE000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000024180C33B2783EFEB3783EFFB3783EFFB3783EFFD2B08FFFFDFDFDFEFFFF
          FFFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFF9F6F3FEB67E46FFB378
          3EFFB3783EFFB3783EFF84582EBC000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000806030CAB723BF3B1773DFEB1773DFEB1773DFEBF8D5CFFFEFEFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8D7C6FFB2783EFFB378
          3EFFB1773DFEB1773DFE6141228A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000085592EBEB3783EFFB3783EFFB3783EFFB47940FFEBDDD0FEFFFF
          FFFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFCDA680FFB3783EFFB378
          3EFFB3783EFFB3783EFF33221249000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004A311A69B1773DFEB1773DFEB1773DFEB3783EFFC99F77FFFFFF
          FFFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEF4EBE2FFB37940FFB2783EFFB378
          3EFFB1773DFEA46E38EB06040209000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000B080410AA713AF3B1773DFEB1773DFEB3783EFFB3783FFFE8D6
          C4FFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEFCFCFBFEC99F75FFB2783EFFB2783EFFB378
          3EFFB1773DFE6543229000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006241228BB3783EFFB3783EFFB3783EFFB3783EFFBA84
          4FFFF6EFE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC1A6FFB3793FFFB3783EFFB3783EFFB378
          3EFFAD743CF61710082100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000D090513A26C37E8B1773DFEB3783EFFB1773DFEB278
          3EFFBF8E5EFFF5EFE9FEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFDFDFDFEFFFFFFFFE0C9B3FEB3793FFFB3783EFFB2783EFFB1773DFEB378
          3EFF6040218A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003D291557B1763DFDB3783EFFB1773DFEB177
          3DFEB3783EFFBC8A57FFEDE1D5FEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFCFBFAFEDABDA0FFB3793FFFB2783EFFB3783EFFB1773DFEB1773DFE9866
          35D90805030B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000068462494B3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB57C44FFD7B99AFFFBF7F4FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE2
          D6FFC5976BFFB3793FFFB3783EFFB3783EFFB3783EFFB3783EFFAB723BF32318
          0C32000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000302010479512AADB1773DFEB177
          3DFEB3783EFFB1773DFEB2783EFFB3783EFFB77F49FFD2B08EFFEBDBCCFFF8F4
          F1FEFCFCFBFEFDFDFDFEFFFFFFFFFBFAF8FEF3EBE3FEE1CAB4FFC69A6FFFB278
          3EFFB2783EFFB3783EFFB2783EFFB1773DFEB3783EFFAC733BF73523124C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000040301066F4A269FB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB2783EFFB2783EFFB3783EFFB47A
          42FFBA8652FFBF8E5DFFBD8B59FFB8814BFFB3793FFFB2783EFFB3783EFFB278
          3EFFB2783EFFB3783EFFB1773DFEB1773DFEA9713BF131211146000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010100025137
          1C74AF753DF9B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFF936333D21F150B2C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000020150B2D83582DBCB1763DFDB3783EFFB1773DFEB1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFFB177
          3DFEB1773DFEAA723BF2573A1E7C060402080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000010000012B1C0F3D79512AACAA723AF4B1773DFEB3783EFFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB3783EFF9A67
          35DD593C1F80100B061700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000D080412382613506342228D8056
          2CB7936333D29C6836DE986635D98C5E31C8754F29A754381D77271A0D370302
          0104000000000000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
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
          00000000000000000000050A0D0E19303E44182F3D43182F3D43182F3D43182F
          3D43182F3D43182F3D43182F3D43182F3D43182F3D43182F3D43182F3D43182F
          3D43182F3D43182F3D43182F3D43182F3D43182F3D43182F3D43182F3D43182F
          3D43182F3D43182F3D43182F3D43182F3D43182F3D43182F3D43182F3D43182F
          3D43182F3D43182F3D43182F3D43182F3D43182F3D43182F3D43182F3D43182F
          3D4319303F45070D111300000000000000000000000000000000000000000000
          0000000000001E394A515DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF203E5058000000000000000000000000000000000000
          0000000000005DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF000000000000000000000000000000000000
          0000030506075DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5EB5ECFF61BCF5FF61BCF7FF61BCF7FF61BC
          F5FF5EB5ECFF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF000101010000000000000000000000000000
          0000000000005DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5EB5ECFF4F95C2FF222F36FF223037FF223037FF222F
          37FF4E93BEFF5EB5ECFF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF000000000000000000000000000000000000
          0000000000002B536C765DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF60BAF3FF304C5FFF15110EFF181615FF181615FF1511
          0FFF2D4759FF60BAF3FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF2A516A74000000000000000000000000000000000000
          000000000000000000005DB2E8FE5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF60BAF3FF315065FF171412FF191919FF191919FF1714
          13FF2F4B5DFF60BAF3FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF00000000000000000000000000000000000000000000
          00000000000000000000234358605DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF60BAF3FF314F63FF171412FF191919FF191919FF1714
          13FF2F4B5CFF60BAF3FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF24465B6400000000000000000000000000000000000000000000
          000000000000000000000000000056A6D9ED5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF60BAF2FF314F62FF140E0BFF161412FF161412FF140F
          0BFF2F4A5CFF60BAF3FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF58A9DCF10000000000000000000000000000000000000000000000000000
          000000000000000000000000000019303E445DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB4EBFF57A6D9FF335468FF325468FF325468FF3354
          67FF57A5D7FF5DB4EBFF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF1C35454C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004E97C4D75DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB4EBFF60B9F2FF60BAF2FF60BAF2FF60B9
          F2FF5DB4EBFF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF519C
          CBDE000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000F1D25295DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF1324
          2F33000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004382A9B95DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF60BAF3FF61BCF7FF61BCF7FF60BB
          F4FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF488AB4C50000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000060B0F105DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF60BAF4FF2D4857FF212D35FF222F36FF293E
          4BFF5EB8EFFF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF081015170000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000396E8F9C5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5EB5ECFF519AC8FF120A05FF181615FF181615FF130C
          07FF4A87AFFF5EB6EDFF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF3D7599A7000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5EB6EDFF4B8BB3FF15100DFF191919FF191919FF1511
          0EFF457B9EFF5FB7EFFF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF01030404000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002E58
          727D5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5EB7EEFF467FA3FF15110EFF191919FF191919FF1612
          0FFF3F7191FF5FB8F0FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF32617E8A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005DB2E8FE5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5FB8F0FF3F7292FF16120FFF191919FF191919FF1612
          10FF3B6782FF5FB9F1FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002343575F5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5FB9F1FF3B6782FF161210FF191919FF191919FF1613
          11FF365C74FF60B9F2FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF284D646D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000055A4D6EA5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF60B9F2FF365A72FF161311FF191919FF191919FF1614
          12FF325167FF60BAF2FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF59ACE0F5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000182E3B415DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF60BAF3FF304D60FF171413FF191919FF191919FF1715
          13FF2D4858FF60BBF3FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF1C37474E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004D93C0D25DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF60BBF4FF2A4350FF171514FF191919FF191919FF1715
          14FF283C49FF60BBF4FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF519DCCDF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000D1921245DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF61BCF5FF263641FF171615FF191919FF191919FF1716
          15FF23333BFF61BCF5FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF12222D3100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000427FA5B55DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF61BDF7FF20292FFF181716FF191919FF191919FF1817
          16FF20272CFF61BDF7FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF478AB3C40000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000005090C0D5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF61BDF8FF1A1E1FFF181717FF191919FF191919FF1817
          17FF1A1E1FFF61BDF8FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF081015170000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000376B8B985DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF62C0FAFF15110FFF181818FF191919FF191919FF1818
          18FF151311FF62BEFAFF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF3C73
          96A4000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5EB7EEFF130C06FF191919FF191919FF191919FF1919
          19FF130B06FF61BBF4FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF0101
          0202000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002C556F795DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF61BCF5FF130E0BFF16120FFF161310FF161310FF1612
          0FFF15110FFF60BDF5FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF315E7A860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005CB2E7FD5DB3
          E9FF5DB3E9FF5DB3E9FF5EB6EDFF4D8FB8FF39627DFF3B6581FF3B6581FF3961
          7CFF4E91BCFF5EB6EDFF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002241545C5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5EB6EDFF5FB9F1FF5FB9F1FF5FB9F1FF5FB9
          F1FF5EB6EDFF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF26495F68000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000055A4
          D6EA5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF58AADDF200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000172C
          3A3F5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF1B33434900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004C92BED05DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF509AC8DB0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D1921245DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF5DB3E9FF101E272B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004280A6B65DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF4686AFBF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000050B0E0F5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF5DB3E9FF080F1315000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000396E8F9D5DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF3C7396A400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000005DB3E9FF5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF5DB3E9FF0102030300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000033627F8B5DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF33627F8B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005DB3E9FF5DB3E9FF5DB3E9FF5DB3
          E9FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000101F282C509AC9DC4F98C5D80D19
          2124000000000000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
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
          000000000000000000000000000023232357636363F2636363F2636363F25252
          52CA000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003B3B3B91686868FF686868FF686868FF6767
          67FD0606060E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001010103000000000000000000000000000000000000
          0000000000000000000000000000515151C6686868FF686868FF686868FF6868
          68FF1A1A1A400000000000000000000000000000000000000000000000000000
          00000404040B0202020400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000010101028565656D33232327B0000000000000000000000000000
          0000000000000000000002020205656565F7686868FF686868FF686868FF6868
          68FF2F2F2F740000000000000000000000000000000000000000000000000909
          0915535353CB535353CB11111129000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002525255A636363F3686868FF686868FF3C3C3C9200000001000000000000
          0000000000000000000015151533686868FF686868FF686868FF686868FF6868
          68FF444444A700000000000000000000000000000000000000000C0C0C1E5858
          58D8686868FF686868FF646464F62E2E2E710101010200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001212
          122B686868FF686868FF686868FF686868FF686868FF444444A7020202060000
          000000000000000000002B2B2B69686868FF686868FF686868FF686868FF6868
          68FF595959DB000000000000000000000000000000001111112A5D5D5DE36868
          68FF686868FF686868FF686868FF5D5D5DE50303030800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000515151C7686868FF686868FF686868FF686868FF686868FF4B4B4BB90505
          050C0707071029292964575757D6686868FF686868FF686868FF686868FF6868
          68FF686868FE3A3A3A8E171717390000000117171738606060EC686868FF6868
          68FF686868FF686868FF686868FF2E2E2E710000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000021212151686868FF686868FF686868FF686868FF686868FF686868FF5C5C
          5CE1656565F8686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF5D5D5DE3646464F4686868FF686868FF6868
          68FF686868FF686868FF5F5F5FE80404040A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001010102585858D8686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF2F2F2F74000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000028282863686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF606060EB0404040B000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000030303075D5D5DE5686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF3333337C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000070707105D5D5DE4686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF4E4E4EC001010103000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001A1A1A3F0F0F0F250303030800000000000000000000
          000000000000434343A5686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF35353582000000000000000000000000000000000606
          060E1111112A1919193D00000000000000000000000000000000000000000000
          00000000000011111129686868FF686868FF686868FE5E5E5EE7525252CA4646
          46AB424242A1686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF626262F1545454CF545454CF6363
          63F2686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF676767FC434343A44C4C4CBA575757D5626262F16868
          68FF686868FF676767FD0C0C0C1E000000000000000000000000000000000000
          0000000000003232327B686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF494949B21919193D0101010200000000000000000101
          01021A1A1A404A4A4AB5686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF2F2F2F74000000000000000000000000000000000000
          000000000000545454CD686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF666666F92929296400000000000000000000000000000000000000000000
          0000000000000000000029292964666666FB686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF535353CC000000000000000000000000000000000000
          0000020202044B4B4BB7686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF2727275F0000000000000000000000000000000000000000000000000000
          000000000000000000000000000029292965686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF626262F030303076000000000000000000000000000000000000
          000000000000000000001D1D1D47565656D3686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF4949
          49B2000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004B4B4BB8686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6666
          66FA3D3D3D950909091500000000000000000000000000000000000000000000
          0000000000000000000000000000010101032A2A2A665E5E5EE7686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF1818
          183B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001B1B1B42686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF494949B31010
          1028000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000505050D3D3D3D966868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF616161EF0101
          0102000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000002020204636363F3686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF23232355000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001E1E1E4A6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF545454CE0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000565656D4686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF11111129000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000222222546868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF545454CE0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000565656D4686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF1313132E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000D0D0D214B4B4BB76868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF616161EF0000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001010103636363F3686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF474747AE0C0C0C1D0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000505050D36363685656565F7686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF1818
          183C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001B1B1B43686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF646464F43333
          337C030303080000000000000000000000000000000000000000000000000000
          00000000000001010102282828615E5E5EE6686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF4B4B
          4BB9000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004B4B4BB9686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF5A5A5ADC2020204E00000000000000000000000000000000000000000000
          000001010103525252CA686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF272727600000000000000000000000000000000000000000000000000000
          00000000000000000000000000002A2A2A67686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF434343A5000000000000000000000000000000000000
          000000000000505050C4686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF666666FA2828286200000000000000000000000000000000000000000000
          000000000000000000002A2A2A67666666FB686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF3E3E3E98000000000000000000000000000000000000
          0000000000002D2D2D6F686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF4A4A4AB51A1A1A3F0101010300000000000000000101
          01031B1B1B424B4B4BB8686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF1C1C1C44000000000000000000000000000000000000
          0000000000000B0B0B1C676767FD666666F95B5B5BE0515151C6464646AB3B3B
          3B9136363684666666FB686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF636363F3555555D1565656D26363
          63F3686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF5E5E5EE729292965353535814141419F4D4D4DBD5959
          59DB656565F85F5F5FEA01010103000000000000000000000000000000000000
          0000000000000000000007070712000000000000000000000000000000000000
          0000000000003333337E686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FE1E1E1E4A000000000000000000000000000000000000
          0000000000010606060F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001010103505050C3686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF424242A300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004D4D4DBE686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF565656D400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001A1A1A40686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF21212150000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004F4F4FC1686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF525252C9000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001B1B1B43686868FF686868FF686868FF686868FF686868FF686868FF5454
          54CD4D4D4DBC666666FA686868FF686868FF686868FF686868FF686868FF6868
          68FF686868FF686868FF656565F8474747AE4A4A4AB5686868FF686868FF6868
          68FF686868FF686868FF686868FF1C1C1C440000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000505050C4686868FF686868FF686868FF686868FF686868FF4D4D4DBD0505
          050C000000000707071031313177686868FF686868FF686868FF686868FF6868
          68FF686868FF3B3B3B910707071100000000010101033E3E3E99686868FF6868
          68FF686868FF686868FF686868FF4D4D4DBD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001010
          1028676767FC686868FF686868FF686868FF686868FF484848B0030303080000
          000000000000000000000606060E676767FD686868FF686868FF686868FF6868
          68FF686868FF1414143100000000000000000000000000000000353535836868
          68FF686868FF686868FF686868FF656565F80B0B0B1C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001919193D5B5B5BE0686868FF686868FF424242A302020204000000000000
          0000000000000000000000000000585858D7686868FF686868FF686868FF6868
          68FF646464F60202020500000000000000000000000000000000000000002C2C
          2C6D676767FD686868FF535353CC1212122D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000606060F434343A43C3C3C940000000100000000000000000000
          0000000000000000000000000000424242A2686868FF686868FF686868FF6868
          68FF515151C70000000000000000000000000000000000000000000000000000
          0000242424583333337C02020204000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002C2C2C6C686868FF686868FF686868FF6868
          68FF3C3C3C930000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000017171738686868FF686868FF686868FF6868
          68FF2626265E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000003030308575757D6585858D8585858D85858
          58D8101010270000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000809050E1E2613383340205F45572B804D6130904E6231924A5E2F8A3D4D
          26722933194C12170B2201010102000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000A0C06123948246B6580
          3FBE84A653F587AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE87AB55FC77974BE0516632972029143C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000010140A1E5065329584A753F689AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF708D46D02F3B1D570101
          0102000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000030402064253297B81A351F287AB55FE89AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE89AD56FF6985
          42C51A2010300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000011150A1F698542C487AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE89AD56FF87AB
          55FE83A652F63D4D267200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E25
          13377D9E4FE989AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF546A359C030302050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000212A153E81A4
          51F187AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE5B7339AB0304020600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000181F0F2D80A150EE89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF8AAD57FF92B363FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF546B359D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000090C0611749349DA87AB55FE89AD
          56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
          55FE8AAE58FFCDDCB8FEEDF2E6FE96B669FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF3A4A246D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000556C369F87AB55FE87AB55FE89AD
          56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE89AC
          57FECFDDBAFFFDFDFDFEFDFDFDFEECF2E4FF94B467FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF83A552F5171E0F2C0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002129143D88AC55FD87AB55FE87AB55FE89AD
          56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF89AC57FECDDC
          B9FEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFE9F0E1FE92B365FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE65803FBE0101
          0102000000000000000000000000000000000000000000000000000000000000
          00000000000000000000010101026D8944CA89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF8AAE58FFCFDEBBFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF0E1FF92B363FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF2A35
          1A4E000000000000000000000000000000000000000000000000000000000000
          000000000000000000002631184887AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FE89AD56FF87AB55FE87AB55FE89AC57FECFDEBBFFFDFDFDFEFDFD
          FDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEE8EFDEFF92B2
          64FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE6B87
          43C7000000000000000000000000000000000000000000000000000000000000
          000000000000000000005D763AAF87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FE89AD56FF87AB55FE89AC57FECEDDBAFEFFFFFFFFFDFDFDFEFDFD
          FDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFE7EE
          DDFE91B264FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE88AC
          56FE1A2110310000000000000000000000000000000000000000000000000000
          0000000000000A0D061384A753F689AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF8AAE58FFD0DEBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE9F0E0FF93B464FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF4B5E2F8B0000000000000000000000000000000000000000000000000000
          0000000000002D391C5487AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FE8AAD57FFCFDDBBFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEE9F0E0FF92B365FE87AB55FE89AD56FF87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF729047D60000000000000000000000000000000000000000000000000000
          0000000000004E63319287AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF89AC57FED0DEBCFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFD
          FDFEFFFFFFFFF4F7F0FEF0F4EAFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFFFFFFFFE8EFDFFE92B365FE89AD56FF87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF85A953FA0D10081800000000000000000000000000000000000000000000
          000000000000688441C289AD56FF89AD56FF89AD56FF89AD56FF89AD56FF8AAE
          58FFD1DFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF5F8F1FFA0BC76FF98B76CFFF0F4EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF1E2FF94B465FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF242D174300000000000000000000000000000000000000000000
          0000000000007A9B4DE487AB55FE87AB55FE89AD56FF87AB55FE89AC58FED1DF
          BEFFFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEF5F7
          F1FEA0BD77FF87AB55FE87AB55FE99B86DFFEEF3E8FEFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEEAF0E1FF93B466FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FE3644226500000000000000000000000000000000000000000000
          00000000000086AA54FA87AB55FE87AB55FE89AD56FF87AB55FE9BB971FEF9FB
          F7FFFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFDFDFDFEFFFFFFFFF5F7F1FE9FBC
          78FE89AD56FF87AB55FE87AB55FE89AD56FF97B76CFEEEF3E8FEFFFFFFFFFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFE9F0E1FE94B566FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FE4253297B00000000000000000000000000000000000000000000
          00000203010489AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FFA6C1
          80FFF8FAF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F8F2FFA0BD77FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF97B76BFFEFF4E9FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF2E4FF94B5
          66FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF475A2D8400000000000000000000000000000000000000000000
          00000101000188AC56FE87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FFA5C07FFEF8FAF5FFFDFDFDFEFDFDFDFEF5F8F2FEA1BD78FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE98B76CFFEEF3
          E7FEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFFFFFFFFEAF0
          E2FE94B468FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FE45572B8100000000000000000000000000000000000000000000
          00000000000081A451F187AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FEA5C07EFFF7F9F5FEF5F8F2FEA0BD79FE89AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF97B6
          6CFEEEF3E7FEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFFFFFFFFFDFD
          FDFEEBF0E2FE95B567FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FE3D4D267200000000000000000000000000000000000000000000
          000000000000729047D489AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FFA3BF7BFFA1BD78FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF97B76AFFEFF4E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEDF2E5FF95B568FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF2E3A1D5600000000000000000000000000000000000000000000
          0000000000005C753AAC87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE98B76BFFEDF2E6FEFDFDFDFEFFFFFFFFFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFFFFFFFFEBF1E3FE95B569FE89AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FE181E0F2D00000000000000000000000000000000000000000000
          0000000000003F4F277587AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF97B66BFEEEF2E7FEFFFFFFFFFDFDFDFEFFFFFFFFFDFD
          FDFEFDFDFDFEFFFFFFFFFDFDFDFEEAF0E2FE8DAF5BFF87AB55FE87AB55FE89AD
          56FF7FA14FEE0405030800000000000000000000000000000000000000000000
          0000000000001B22113288AC56FE89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF97B66AFFEFF3E8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFDFDFCFFB6CC96FF89AD56FF89AD56FF89AD56FF89AD
          56FF60793CB30000000000000000000000000000000000000000000000000000
          00000000000002020103759449DB87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE97B76BFFEDF2E6FEFFFFFFFFFDFD
          FDFEFDFDFDFEFEFEFDFFB7CC98FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
          56FF334120600000000000000000000000000000000000000000000000000000
          0000000000000000000044552A7E89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF97B76BFFEEF3E7FFFFFF
          FFFFFEFEFDFFBACF9DFF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF82A4
          52F20709040D0000000000000000000000000000000000000000000000000000
          000000000000000000000D10081882A451F389AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE96B669FFECF1
          E5FEBBCF9EFE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE4C60
          308D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000495C2D8889AD56FF87AB55FE87AB55FE89AD
          56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE89AD56FF8EB0
          5EFE88AC56FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE80A250F00E12
          091A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000608040C7A9A4DE389AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF3F5028760000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002832194A86A954FB87AB55FE89AD
          56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF678240C1030302050000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000485B2D8787AB55FE89AD
          56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE7D9E4FE90F140A1D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000020301045B7339AA89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF83A552F32028143B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000030402065A71
          38A787AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF7FA14FEE222A153F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000203
          01044B5F2F8D88AC55FD87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE89AD56FF87AB
          55FE87AB55FE78974BDF1A201030000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002D381C537D9D4EE889AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
          56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF88AC
          56FE5B7339AA0B0E071400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000090B06114E62319283A552F589AD56FF87AB55FE87AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE718E47D22933
          194C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000F140A1D4A5D2E8979984BE287AB
          55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB
          55FE87AB55FE89AD56FF87AB55FE85A853F9637E3EB92B371B51020201030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000003040206212A
          153E46582C8265803FBC7B9B4DE588AC55FD88AC56FE88AC56FE89AD56FF84A6
          53F5718E47D2566D36A1344120600F13091C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020301040A0C06120A0D06130608040C0000
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
      end>
  end
  object tConvUnid: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'ConvUnid'
    IndexName = 'IABUniv'
    Left = 408
    Top = 368
    object tConvUnidUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tConvUnidA: TStringField
      FieldName = 'A'
      Size = 10
    end
    object tConvUnidB: TStringField
      FieldName = 'B'
      Size = 10
    end
    object tConvUnidFator: TFloatField
      FieldName = 'Fator'
    end
    object tConvUnidUniversal: TBooleanField
      FieldName = 'Universal'
    end
    object tConvUnidProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tConvUnidMult: TBooleanField
      FieldName = 'Mult'
    end
  end
  object tProdFor: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'ProdFor'
    IndexName = 'IForRef'
    Left = 272
    Top = 304
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
    object tProdForRef: TStringField
      FieldName = 'Ref'
    end
    object tProdForPos: TWordField
      FieldName = 'Pos'
    end
  end
  object OpenXML: TOpenDialog
    Filter = 'XML|*.XML'
    Left = 128
    Top = 300
  end
  object tLinkXML: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'LinkXML'
    IndexName = 'IForLink'
    Left = 269
    Top = 362
    object tLinkXMLUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tLinkXMLProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tLinkXMLFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tLinkXMLLink: TStringField
      FieldName = 'Link'
    end
  end
  object tTran: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'Tran'
    IndexName = 'IChaveNFE'
    Left = 184
    Top = 298
    object tTranChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object tTranCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tTranID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tTranDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tTranCaixa: TLongWordField
      FieldName = 'Caixa'
    end
  end
  object tDF: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'DadosFiscais'
    IndexName = 'IChaveNFEnItem'
    Left = 420
    Top = 314
    object tDFID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tDFUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tDFChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object tDFNomeFor: TStringField
      FieldName = 'NomeFor'
      Size = 50
    end
    object tDFnItem: TWordField
      FieldName = 'nItem'
    end
    object tDFProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tDFDataNF: TDateTimeField
      FieldName = 'DataNF'
    end
    object tDFCNPJFor: TStringField
      FieldName = 'CNPJFor'
      Size = 19
    end
    object tDFQuant: TFloatField
      FieldName = 'Quant'
    end
    object tDFQuantOrig: TFloatField
      FieldName = 'QuantOrig'
    end
    object tDFDadosFiscais: TnxMemoField
      FieldName = 'DadosFiscais'
      BlobType = ftMemo
    end
    object tDFCustoU: TCurrencyField
      FieldName = 'CustoU'
    end
  end
end
