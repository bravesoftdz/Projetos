object FrmLeXML: TFrmLeXML
  Left = 0
  Top = 0
  Caption = 'FrmLeXML'
  ClientHeight = 547
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 1012
    Height = 547
    Hint = ''
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 0
    object panTop: TLMDSimplePanel
      AlignWithMargins = True
      Left = 0
      Top = 3
      Width = 1012
      Height = 39
      Hint = ''
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Bevel.Mode = bmEdge
      Bevel.StandardStyle = lsNone
      TabOrder = 0
      object lbNome: TcxLabel
        AlignWithMargins = True
        Left = 85
        Top = 5
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Fornecedor'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.TextColor = clBlack
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleFocused.TextColor = clGray
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clBlue
        StyleHot.TextStyle = [fsUnderline]
        Properties.Alignment.Vert = taVCenter
        AnchorY = 20
      end
      object lbPromptFornecedor: TcxLabel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Fornecedor:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.TextColor = 5131854
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleFocused.TextColor = clGray
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clBlue
        StyleHot.TextStyle = [fsUnderline]
        Properties.Alignment.Vert = taVCenter
        AnchorY = 20
      end
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 0
      Top = 0
      Width = 1012
      Align = dalTop
      BarManager = dxBarManager1
    end
    object Splitter: TLMDSplitterPanel
      Left = 0
      Top = 42
      Width = 1012
      Height = 505
      Hint = ''
      Bevel.Mode = bmCustom
      Bars = <
        item
          OldPosition = -1
          Position = 502
          ResizeButtonStyle = rbsFlatGripOnly
          Width = 7
        end>
      Align = alClient
      TabOrder = 2
      object spGrid: TLMDSplitterPane
        Color = clWhite
        ParentColor = False
        Bevel.Mode = bmStandard
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
          Width = 493
          AnchorY = 15
        end
        object grid: TcxGrid
          AlignWithMargins = True
          Left = 0
          Top = 30
          Width = 500
          Height = 473
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
            DataController.DataSource = ds
            DataController.KeyFieldNames = 'item'
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
            object TVOk: TcxGridDBColumn
              DataBinding.FieldName = 'OK'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Images = dmImagens.im16
              Properties.ImmediateDropDownWhenActivated = True
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = 'Revisar'
                  ImageIndex = 94
                  Value = False
                end
                item
                  Description = 'OK!'
                  ImageIndex = 4
                  Value = True
                end>
              Properties.ShowDescriptions = False
              BestFitMaxWidth = 32
              LayoutItem = TVLayoutItem1.Owner
              Width = 32
            end
            object TVDescrXML: TcxGridDBColumn
              DataBinding.FieldName = 'DescrXML'
              PropertiesClassName = 'TcxTextEditProperties'
              LayoutItem = TVLayoutItem2.Owner
              Styles.Content = FrmPri.cxStyle57
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
      end
      object spLC: TLMDSplitterPane
        ParentBackground = True
        Bevel.Mode = bmStandard
        Bevel.StandardStyle = lsNone
        object panLC1: TLMDSimplePanel
          Left = 0
          Top = 29
          Width = 503
          Height = 476
          Hint = ''
          Margins.Left = 0
          Margins.Top = 7
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Bevel.Mode = bmCustom
          TabOrder = 0
          object panLC2: TLMDSimplePanel
            AlignWithMargins = True
            Left = 0
            Top = 1
            Width = 503
            Height = 475
            Hint = ''
            Margins.Left = 0
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Bevel.BorderColor = clBtnShadow
            Bevel.Mode = bmStandard
            Bevel.StandardStyle = lsNone
            TabOrder = 0
            object LC: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 503
              Height = 475
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = FrmPri.lfDefault
              object lbUnidDif: TLMDHTMLLabel
                Left = 10
                Top = 340
                Width = 482
                Height = 38
                AutoSize = True
                Bevel.Mode = bmCustom
                Alignment = taLeftJustify
                Caption = 
                  'Esse produto veio em <strong>KG</strong> na NF-e, mas voc'#234' vende' +
                  ' em <strong>GR</strong>. Como deve ser feito a convers'#227'o de quan' +
                  'tidade?'
                Layout = tlTop
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object LMDHTMLLabel2: TLMDHTMLLabel
                Left = 10
                Top = 251
                Width = 393
                Height = 21
                AutoSize = True
                Bevel.Mode = bmCustom
                Alignment = taLeftJustify
                Caption = 'Voc'#234' ainda n'#227'o cadastrou a unidade de venda para esse produto.'
                Layout = tlTop
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object lbSemProd: TLMDHTMLLabel
                Left = 10
                Top = 43
                Width = 460
                Height = 38
                AutoSize = True
                Bevel.Mode = bmCustom
                Alignment = taLeftJustify
                Caption = 
                  'N'#227'o foi poss'#237'vel encontrar automaticamente o produto corresponde' +
                  'nte para "%s". '
                Layout = tlTop
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object edProduto: TcxDBButtonEdit
                Left = 10
                Top = 10
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
                Width = 572
              end
              object edFatorUniv: TcxDBCheckBox
                Left = 10
                Top = 444
                Cursor = crHandPoint
                Caption = 
                  'Aplicar o mesmo fator em todos produtos sempre que converter de ' +
                  'KG para GR '
                DataBinding.DataField = 'FatorUniv'
                DataBinding.DataSource = ds
                ParentFont = False
                Properties.ImmediatePost = True
                Properties.NullStyle = nssUnchecked
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Segoe UI'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfFlat
                Style.LookAndFeel.NativeStyle = False
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.Kind = lfFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.Kind = lfFlat
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 8
                Transparent = True
                Width = 572
              end
              object rbMultiplicar: TcxRadioButton
                Left = 10
                Top = 386
                Width = 116
                Height = 17
                Cursor = crHandPoint
                Caption = 'Multiplicar por'
                Checked = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsUnderline]
                ParentFont = False
                TabOrder = 5
                TabStop = True
                OnClick = rbMultiplicarClick
              end
              object edFator: TcxDBCurrencyEdit
                Left = 10
                Top = 411
                DataBinding.DataField = 'Fator'
                DataBinding.DataSource = ds
                ParentFont = False
                Properties.DisplayFormat = '#.#####'
                Properties.EditFormat = '#.#####'
                Properties.OnChange = edFatorPropertiesChange
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Segoe UI'
                Style.Font.Style = [fsBold]
                Style.HotTrack = False
                Style.StyleController = FrmPri.escFlat
                Style.TextStyle = [fsBold]
                Style.IsFontAssigned = True
                TabOrder = 7
                Width = 119
              end
              object rbDiv: TcxRadioButton
                Left = 134
                Top = 386
                Width = 113
                Height = 17
                Cursor = crHandPoint
                Caption = 'Dividir por'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
                OnClick = rbDivClick
              end
              object btnCadUnid: TcxButton
                Left = 10
                Top = 280
                Width = 258
                Height = 32
                Caption = 'Cadastrar Unidade de Venda (F3)'
                LookAndFeel.Kind = lfFlat
                OptionsImage.Images = dmImagens.im16
                TabOrder = 4
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LMDButton1: TLMDButton
                Left = 10
                Top = 169
                Width = 466
                Height = 54
                Hint = ''
                Caption = 
                  '  F7 - Coca-Cola sakdjfhskdfjh sdf ksdkjhds fksdjhfkjds hfkjhsdf' +
                  ' ksdjhsdkf sdfsdf'
                Font.Charset = ANSI_CHARSET
                Font.Color = clHotLight
                Font.Height = -13
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ImageIndex = 3
                Images = dmImagens.im16
                ParentFont = False
                TabOrder = 3
                WordWrap = True
                ButtonLayout.Alignment = agCenterLeft
                ButtonStyle = ubsWin40Ext
                MultiLine = True
                ThemeMode = ttmNone
              end
              object btnPesquisar: TLMDButton
                Left = 10
                Top = 129
                Width = 298
                Height = 32
                Hint = ''
                Caption = '  F5 - Selecionar um produto j'#225' existente'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ImageIndex = 3
                Images = dmImagens.im16
                ParentFont = False
                TabOrder = 2
                WordWrap = True
                OnClick = btnPesquisarClick
                ButtonLayout.Alignment = agCenterLeft
                ButtonStyle = ubsWin40Ext
                ThemeMode = ttmNone
              end
              object btnNovo: TLMDButton
                Left = 10
                Top = 89
                Width = 298
                Height = 32
                Hint = ''
                Caption = '  F3 - Criar um cadastro para esse produto'
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
              object LCGroup_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object lgUnid: TdxLayoutGroup
                Parent = LCGroup_Root
                CaptionOptions.Text = 'New Group'
                Offsets.Top = 20
                Visible = False
                ButtonOptions.Buttons = <>
                ShowBorder = False
                Index = 6
              end
              object lcProduto: TdxLayoutItem
                Parent = LCGroup_Root
                Control = edProduto
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object lcUnidDif: TdxLayoutItem
                Parent = lgUnid
                CaptionOptions.Visible = False
                Control = lbUnidDif
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object LCGroup1: TdxLayoutAutoCreatedGroup
                Parent = lgUnid
                LayoutDirection = ldHorizontal
                Index = 1
                AutoCreated = True
              end
              object lcFatorUniv: TdxLayoutItem
                Parent = lgUnid
                CaptionOptions.Visible = False
                Control = edFatorUniv
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object LCItem1: TdxLayoutItem
                Parent = LCGroup1
                AlignHorz = ahLeft
                AlignVert = avCenter
                CaptionOptions.Text = 'cxRadioButton1'
                CaptionOptions.Visible = False
                Control = rbMultiplicar
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object lcFator: TdxLayoutItem
                Parent = lgUnid
                AlignHorz = ahLeft
                Control = edFator
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object LCItem2: TdxLayoutItem
                Parent = LCGroup1
                CaptionOptions.Text = 'cxRadioButton1'
                CaptionOptions.Visible = False
                Control = rbDiv
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object lgCadUnid: TdxLayoutGroup
                Parent = LCGroup_Root
                AlignHorz = ahLeft
                CaptionOptions.Text = 'New Group'
                Offsets.Top = 20
                Visible = False
                ButtonOptions.Buttons = <>
                ShowBorder = False
                Index = 5
              end
              object LCItem4: TdxLayoutItem
                Parent = lgCadUnid
                CaptionOptions.Visible = False
                Control = LMDHTMLLabel2
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object LCItem5: TdxLayoutItem
                Parent = lgCadUnid
                AlignHorz = ahLeft
                CaptionOptions.Visible = False
                Control = btnCadUnid
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object lcSemProd: TdxLayoutItem
                Parent = LCGroup_Root
                AlignHorz = ahClient
                CaptionOptions.Visible = False
                Control = lbSemProd
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object LCItem3: TdxLayoutItem
                Parent = LCGroup_Root
                AlignHorz = ahClient
                CaptionOptions.Text = 'LMDButton1'
                CaptionOptions.Visible = False
                Control = LMDButton1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Index = 4
              end
              object lcPesquisar: TdxLayoutItem
                Parent = LCGroup_Root
                AlignHorz = ahClient
                CaptionOptions.Visible = False
                Control = btnPesquisar
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object lcNovo: TdxLayoutItem
                Parent = LCGroup_Root
                AlignHorz = ahClient
                CaptionOptions.Visible = False
                Control = btnNovo
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Index = 2
              end
            end
          end
        end
        object cxLabel1: TcxLabel
          AlignWithMargins = True
          Left = 8
          Top = 0
          Margins.Left = 8
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          AutoSize = False
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
          Style.TextStyle = [fsBold, fsUnderline]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Height = 29
          Width = 495
          AnchorY = 15
        end
      end
    end
  end
  object mt: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
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
    OnCalcFields = mtCalcFields
    Left = 72
    Top = 119
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
    object mtVinculoAnterior: TBooleanField
      FieldName = 'VinculoAnterior'
    end
    object mtFatorMult: TBooleanField
      FieldName = 'FatorMult'
    end
  end
  object ds: TDataSource
    DataSet = mt
    Left = 120
    Top = 119
  end
  object imgs: TcxImageList
    Height = 48
    Width = 48
    FormatVersion = 1
    DesignInfo = 8388768
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000040201057B522BAFB3783EFFB378
          3EFF8A5D30C5140E071D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000C08041183582DBBB3783EFFB3783EFF83582DBB0C0804110000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020104B3783EFFB3783EFFB07338FFB073
          37FFB2773DFFB3783EFF19110924000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D080412B3783EFFB2773DFFB07337FFB07337FFB2773DFFB3783EFF0D08
          0412000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000714C27A2B3773DFFAE7032FFCFA985FFD4B5
          96FFAF7135FFB2773DFF966433D7000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000083582CBCB2773DFFAF7033FFD2B08EFFD2B08EFFAF7033FFB2773DFF8358
          2CBC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A56C34EFB07438FFCBA57FFFFFFFFFFFFFFF
          FFFFDCC1A6FFAF7235FFB2763BFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B17539FFB07337FFD3B291FFFFFFFFFFFFFFFFFFD3B291FFB07337FFB175
          3AFF000000000000000000000000000000000000000000000000000000000000
          000097622EDCCAA27CFFFFFFFFFFB67F48FFB07236FFCBA57FFFFFFFFFFFFFFF
          FFFFDCC1A6FFAF7235FFAB6A2BFFFFFFFFFF6B523A8C00000000B17539FFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783DFFAF7135FFCEA985FFFFFF
          FFFFAE7133FFB07236FFD3B291FFFFFFFFFFFFFFFFFFD3B291FFB07236FFAE71
          33FFFFFFFFFFCFAB87FFAF7033FFB2773DFF0000000000000000000000000000
          0000B2763BFFB9834DFFFFFFFFFFCEA782FFAF7236FFAE7032FFCEA984FFD4B5
          96FFAF7135FFB17439FFBE8B5AFFFFFFFFFFB27941FC00000000B1753AFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB1753BFFBD8957FFFFFF
          FFFFC59A6FFFB07337FFAF7033FFD2AE8EFFD2AE8EFFAF7033FFB07337FFC59A
          6FFFFFFFFFFFBD8957FFB1753BFFB3783EFF0000000000000000000000000000
          0000B3783EFFAD6E2FFFF0E6DCFFFFFFFFFFB1753AFFB07236FFB07337FFB072
          36FFB07438FFAB6C2DFFF7F1EBFFF1E7DDFFAC6D2EFF00000000B2763BFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFAD6D2EFFF3EC
          E4FFFBF8F5FFAD6F32FFB07337FFB07336FFB07336FFB07337FFAD6F32FFFBF8
          F5FFF3ECE4FFAD6D2EFFB3783EFFB3783EFF0000000000000000000000000000
          0000B3783EFFB2763BFFB57D46FFFFFFFFFFFFFFFFFFCAA279FFB07438FFAE6F
          32FFC39569FFF8F3EEFFFFFFFFFFB57D46FFB1753AFF00000000B2773CFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB2763BFFB882
          4DFFFFFFFFFFFBF8F5FFC79C70FFAF7135FFAF7135FFC79C70FFFBF8F5FFFFFF
          FFFFB8824DFFB2763BFFB3783EFFB3783EFF0000000000000000000000000000
          0000B3783EFFB3783EFFB17539FFB47C43FFEFE4D8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF0E4D9FFB47C43FFB17539FFB2773DFF00000000B2773DFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB174
          38FFB8804AFFF5EEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EEE8FFB880
          4AFFB17438FFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000B3783EFFB3783EFFB3783EFFB2763CFFAD6E30FFB87F4AFFC9A179FFC9A1
          79FFB87F4AFFAD6E30FFB2763CFFB3783EFFB3783EFF00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB2763BFFAD6D2EFFBB8855FFCDA882FFCDA882FFBB8855FFAD6D2EFFB276
          3BFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB2763BFFB17438FFB174
          38FFB2763BFFB3783EFFB3783EFFB3783EFFB3783EFF00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB1763BFFB07338FFB07338FFB1763BFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000B3783EFFB2763CFFAC6C2DFFAC6C2DFFAC6C2DFFAC6C2DFFAC6C2DFFAC6C
          2DFFAC6C2DFFAC6C2DFFAC6C2DFFB3783EFFB3783EFF00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000B2763CFFB57D46FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAC6C2DFFB3783EFF00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          00008E5F30CCB07336FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAC6C2DFFB3783EFF00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          000021170D2FAF7133FFDCC2A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAC6C2DFFB3783EFF00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          000000000000916132CFB47C42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAC6C2DFFB3783EFF00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000000000002A1D113AAD6E30FFE7D6C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAC6C2DFFB3783EFF00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          000000000000000000009D6833E2BD8B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAC6C2DFFB3783EFF00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          000000000000000000003827174DB17439FFAC6C2DFFAC6C2DFFAC6C2DFFAC6C
          2DFFAC6C2DFFAC6C2DFFAC6C2DFFB3783EFFB3783EFF00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000000000000000000000000000946434D4B3773DFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF9A6835DC00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002B1D0F3DB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFF2B1D0F3D0000000000000000000000000000
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
      end>
  end
  object dxBarManager1: TdxBarManager
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 224
    Top = 239
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object tConvUnid: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'ConvUnid'
    IndexName = 'IABUniv'
    Left = 408
    Top = 144
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
    object tConvUnidFator: TExtendedField
      FieldName = 'Fator'
      Precision = 19
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
    Left = 328
    Top = 144
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
end
