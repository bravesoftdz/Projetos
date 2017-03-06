object FrmDev: TFrmDev
  Left = 0
  Top = 0
  BorderWidth = 10
  Caption = 'Troca / Devolu'#231#227'o'
  ClientHeight = 499
  ClientWidth = 772
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
  object panBottom: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 469
    Width = 772
    Height = 30
    Hint = ''
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
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
      Font.Color = clBlue
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
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 40
    Width = 772
    Height = 419
    Hint = ''
    Align = alClient
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 1
    object Paginas: TcxPageControl
      Left = 0
      Top = 0
      Width = 772
      Height = 419
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tsItens
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      OnChange = PaginasChange
      ClientRectBottom = 419
      ClientRectRight = 772
      ClientRectTop = 28
      object tsLocalizar: TcxTabSheet
        Caption = 'Localizar a venda:'
        ImageIndex = 0
        object LMDSimplePanel7: TLMDSimplePanel
          Left = 0
          Top = 32
          Width = 772
          Height = 359
          Hint = ''
          Align = alClient
          Bevel.Mode = bmEdge
          TabOrder = 0
          object edCli: TcxButtonEdit
            Left = 195
            Top = 61
            Cursor = crHandPoint
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Glyph.Data = {
                  76020000424D760200000000000036000000280000000C0000000C0000000100
                  2000000000004002000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0030000000F0000000D000000000000000000000000000000000000000000000
                  0000000000000000000000000030000000F0000000FF000000F0000000000000
                  000000000060000000D0000000FF000000F0000000A000000070000000F00000
                  00FF000000F00000003000000000000000A0000000FF000000FF000000FF0000
                  00FF000000FF000000FF000000FF000000F00000003000000000000000600000
                  00FF000000F000000060000000000000000000000060000000F0000000FF0000
                  00700000000000000000000000D0000000FF0000006000000000000000000000
                  00000000000000000060000000FF000000A00000000000000000000000FF0000
                  00FF000000000000000000000000000000000000000000000000000000FF0000
                  00F00000000000000000000000FF000000FF0000000000000000000000000000
                  00000000000000000000000000FF000000FF0000000000000000000000D00000
                  00FF000000600000000000000000000000000000000000000060000000FF0000
                  00D0000000000000000000000060000000FF000000F000000060000000000000
                  000000000060000000F0000000FF000000600000000000000000000000000000
                  00A0000000FF000000FF000000FF000000FF000000FF000000FF000000A00000
                  00000000000000000000000000000000000000000060000000D0000000FF0000
                  00FF000000D00000006000000000000000000000000000000000}
                Kind = bkGlyph
                Width = 24
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = edCliPropertiesButtonClick
            Style.LookAndFeel.Kind = lfFlat
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.Kind = lfFlat
            TabOrder = 0
            OnEnter = edCliEnter
            Width = 377
          end
          object edVenda: TcxSpinEdit
            Left = 195
            Top = 19
            Cursor = crHandPoint
            ParentFont = False
            Properties.ImmediatePost = True
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = False
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = edVendaEnter
            Width = 81
          end
          object rbFindVenda: TcxRadioButton
            Left = 16
            Top = 23
            Width = 180
            Height = 17
            Cursor = crHandPoint
            Caption = '1. Por n'#250'mero da venda:'
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            TabStop = True
            OnClick = rbFindVendaClick
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object rbFindCliente: TcxRadioButton
            Left = 16
            Top = 65
            Width = 137
            Height = 17
            Cursor = crHandPoint
            Caption = '2. Por cliente (F5): '
            TabOrder = 3
            OnClick = rbFindClienteClick
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object rbFindData: TcxRadioButton
            Left = 16
            Top = 105
            Width = 180
            Height = 17
            Cursor = crHandPoint
            Caption = '3. Por data:'
            TabOrder = 4
            OnClick = rbFindDataClick
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object edData: TcxDateEdit
            Left = 195
            Top = 101
            ParentFont = False
            Properties.AssignedValues.EditFormat = True
            Properties.SaveTime = False
            Style.LookAndFeel.Kind = lfFlat
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.Kind = lfFlat
            TabOrder = 5
            OnEnter = edDataEnter
            Width = 121
          end
          object edProd: TcxButtonEdit
            Left = 195
            Top = 141
            Cursor = crHandPoint
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Glyph.Data = {
                  76020000424D760200000000000036000000280000000C0000000C0000000100
                  2000000000004002000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0030000000F0000000D000000000000000000000000000000000000000000000
                  0000000000000000000000000030000000F0000000FF000000F0000000000000
                  000000000060000000D0000000FF000000F0000000A000000070000000F00000
                  00FF000000F00000003000000000000000A0000000FF000000FF000000FF0000
                  00FF000000FF000000FF000000FF000000F00000003000000000000000600000
                  00FF000000F000000060000000000000000000000060000000F0000000FF0000
                  00700000000000000000000000D0000000FF0000006000000000000000000000
                  00000000000000000060000000FF000000A00000000000000000000000FF0000
                  00FF000000000000000000000000000000000000000000000000000000FF0000
                  00F00000000000000000000000FF000000FF0000000000000000000000000000
                  00000000000000000000000000FF000000FF0000000000000000000000D00000
                  00FF000000600000000000000000000000000000000000000060000000FF0000
                  00D0000000000000000000000060000000FF000000F000000060000000000000
                  000000000060000000F0000000FF000000600000000000000000000000000000
                  00A0000000FF000000FF000000FF000000FF000000FF000000FF000000A00000
                  00000000000000000000000000000000000000000060000000D0000000FF0000
                  00FF000000D00000006000000000000000000000000000000000}
                Kind = bkGlyph
                Width = 24
              end>
            Properties.OnButtonClick = edProdPropertiesButtonClick
            Style.LookAndFeel.Kind = lfFlat
            Style.StyleController = FrmPri.escFlat
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.Kind = lfFlat
            TabOrder = 6
            OnEnter = edProdEnter
            Width = 377
          end
          object rbFindProduto: TcxRadioButton
            Left = 16
            Top = 145
            Width = 180
            Height = 17
            Cursor = crHandPoint
            Caption = '4. Por produto:'
            TabOrder = 7
            OnClick = rbFindProdutoClick
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
        end
        object lbLocalize: TcxLabel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 7
          Align = alTop
          Caption = 'Localize a venda:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
      end
      object tsSelecionar: TcxTabSheet
        Caption = '2. Selecionar a venda'
        ImageIndex = 3
        object LMDSimplePanel3: TLMDSimplePanel
          Left = 0
          Top = 32
          Width = 772
          Height = 359
          Hint = ''
          Margins.Left = 7
          Margins.Top = 7
          Margins.Right = 7
          Margins.Bottom = 7
          Align = alClient
          Bevel.BorderColor = clBtnShadow
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Color = clWhite
          TabOrder = 0
          object Grid: TcxGrid
            Left = 0
            Top = 0
            Width = 772
            Height = 359
            Margins.Left = 7
            Margins.Top = 7
            Margins.Right = 7
            Margins.Bottom = 7
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            object TV: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataModeController.GridMode = True
              DataController.DataSource = DS
              DataController.KeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsSelection.CellSelect = False
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GridLineColor = 15790320
              OptionsView.GroupByBox = False
              Preview.Column = TVObs
              Styles.Header = FrmPri.cxsHeader
              OnCustomDrawColumnHeader = TVCustomDrawColumnHeader
              object TVID: TcxGridDBColumn
                Caption = 'Num.'
                DataBinding.FieldName = 'ID'
                HeaderAlignmentHorz = taCenter
              end
              object TVDataHora: TcxGridDBColumn
                Caption = 'Data e Hora'
                DataBinding.FieldName = 'DataHora'
                HeaderAlignmentHorz = taCenter
                Width = 118
              end
              object TVNomeCliente: TcxGridDBColumn
                Caption = 'Cliente'
                DataBinding.FieldName = 'NomeCliente'
                Width = 155
              end
              object TVTotal: TcxGridDBColumn
                DataBinding.FieldName = 'Total'
              end
              object TVDesconto: TcxGridDBColumn
                DataBinding.FieldName = 'Desconto'
              end
              object TVTotLiq: TcxGridDBColumn
                Caption = 'T.Final'
                DataBinding.FieldName = 'TotLiq'
                HeaderAlignmentHorz = taCenter
                Styles.Content = FrmPri.cxStyle54
              end
              object TVFunc: TcxGridDBColumn
                Caption = 'Funcion'#225'rio'
                DataBinding.FieldName = 'Func'
                Width = 87
              end
              object TVObs: TcxGridDBColumn
                DataBinding.FieldName = 'Obs'
              end
              object TVCancelado: TcxGridDBColumn
                DataBinding.FieldName = 'Cancelado'
                Visible = False
                VisibleForCustomization = False
              end
            end
            object GL: TcxGridLevel
              GridView = TV
              MaxDetailHeight = 140
              Options.DetailFrameColor = 15658734
            end
          end
        end
        object LMDSimplePanel2: TLMDSimplePanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 772
          Height = 25
          Hint = ''
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 7
          Align = alTop
          Bevel.Mode = bmCustom
          TabOrder = 1
          object cxLabel1: TcxLabel
            Left = 0
            Top = 0
            Align = alLeft
            Caption = 'Escolha a venda que deseja devolver:'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            AnchorY = 13
          end
          object cxLabel2: TcxLabel
            Left = 591
            Top = 0
            Cursor = crHandPoint
            Align = alRight
            Caption = 'Ver detalhes da venda selecionada'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.HotTrack = True
            Style.TextColor = 5197647
            Style.TextStyle = [fsUnderline]
            Style.IsFontAssigned = True
            StyleHot.BorderStyle = ebsNone
            StyleHot.TextColor = clHighlight
            Properties.Alignment.Vert = taVCenter
            AnchorY = 13
          end
        end
      end
      object tsItens: TcxTabSheet
        Caption = 'Itens Devolvidos'
        Color = clBtnFace
        ImageIndex = 1
        ParentColor = False
        object LMDSimplePanel4: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 772
          Height = 391
          Hint = ''
          Margins.Left = 7
          Margins.Top = 7
          Margins.Right = 7
          Margins.Bottom = 7
          Align = alClient
          Bevel.BorderColor = clBtnShadow
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          TabOrder = 0
          object LMDSimplePanel6: TLMDSimplePanel
            Left = 0
            Top = 32
            Width = 772
            Height = 359
            Hint = ''
            Align = alClient
            Bevel.Mode = bmStandard
            Color = clWhite
            TabOrder = 0
            object gridItens: TcxGrid
              Left = 1
              Top = 1
              Width = 770
              Height = 317
              Align = alClient
              BorderStyle = cxcbsNone
              TabOrder = 0
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              object tvItens: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                OnCustomDrawCell = tvItensCustomDrawCell
                OnEditChanged = tvItensEditChanged
                DataController.DataSource = dsMT
                DataController.KeyFieldNames = 'id'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '$0.00'
                    Kind = skSum
                    Column = tvItenstotal_dev
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.ColumnHeaderHints = False
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnHidingOnGrouping = False
                OptionsCustomize.ColumnSorting = False
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsSelection.HideFocusRectOnExit = False
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                Styles.Header = FrmPri.cxsHeader
                object tvItenssel: TcxGridDBColumn
                  Caption = 'Devolver?'
                  DataBinding.FieldName = 'sel'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.Alignment = taCenter
                  Properties.FullFocusRect = True
                  Properties.ImmediatePost = True
                  Properties.NullStyle = nssUnchecked
                  HeaderAlignmentHorz = taCenter
                  VisibleForCustomization = False
                  Width = 70
                end
                object tvItensproduto: TcxGridDBColumn
                  DataBinding.FieldName = 'produto'
                  Visible = False
                  Options.Editing = False
                  Options.Focusing = False
                  VisibleForCustomization = False
                end
                object tvItensdescr: TcxGridDBColumn
                  Caption = 'Produto'
                  DataBinding.FieldName = 'descr'
                  Options.Editing = False
                  Options.Focusing = False
                  Width = 222
                end
                object tvItensquant: TcxGridDBColumn
                  Caption = 'Qtd.Venda'
                  DataBinding.FieldName = 'quant'
                  PropertiesClassName = 'TcxMaskEditProperties'
                  Properties.Alignment.Horz = taCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Focusing = False
                  Width = 75
                end
                object tvItensunitario: TcxGridDBColumn
                  Caption = 'Vl. Unit'#225'rio'
                  DataBinding.FieldName = 'unitario'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Focusing = False
                  Width = 73
                end
                object tvItenstotal: TcxGridDBColumn
                  Caption = 'Vl.Total'
                  DataBinding.FieldName = 'total'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Focusing = False
                  Width = 75
                end
                object tvItensquant_dev: TcxGridDBColumn
                  Caption = 'Qtd. Dev.'
                  DataBinding.FieldName = 'quant_dev'
                  PropertiesClassName = 'TcxMaskEditProperties'
                  Properties.Alignment.Horz = taCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Focusing = False
                  Width = 76
                end
                object tvItensvalordeb: TcxGridDBColumn
                  Caption = 'Em d'#233'bito'
                  DataBinding.FieldName = 'valor_deb'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  HeaderAlignmentHorz = taCenter
                  Width = 75
                end
                object tvItenstotal_dev: TcxGridDBColumn
                  Caption = 'Valor Devolu'#231#227'o'
                  DataBinding.FieldName = 'total_dev'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Focusing = False
                  Styles.Footer = FrmPri.cxStyle55
                  Width = 104
                end
              end
              object glItens: TcxGridLevel
                GridView = tvItens
              end
            end
            object panTotal: TLMDSimplePanel
              Left = 1
              Top = 318
              Width = 770
              Height = 40
              Hint = ''
              Align = alBottom
              Bevel.Mode = bmCustom
              Color = 16119285
              TabOrder = 1
              object lbTotal: TcxLabel
                AlignWithMargins = True
                Left = 631
                Top = 3
                Align = alRight
                Caption = 'Total = R$ 0,00'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -19
                Style.Font.Name = 'Segoe UI'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Properties.Alignment.Vert = taVCenter
                AnchorY = 20
              end
            end
          end
          object panTopItens: TLMDSimplePanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 772
            Height = 25
            Hint = ''
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 7
            Align = alTop
            Bevel.Mode = bmCustom
            TabOrder = 1
            object cxLabel4: TcxLabel
              Left = 0
              Top = 0
              Align = alLeft
              Caption = 'Selecione os ITENS que deseja devolver: '
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI Semibold'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Vert = taVCenter
              AnchorY = 13
            end
            object rbTotal: TcxRadioButton
              AlignWithMargins = True
              Left = 323
              Top = 0
              Width = 99
              Height = 25
              Cursor = crHandPoint
              Margins.Left = 20
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = 'Todos itens'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = rbTotalClick
              LookAndFeel.NativeStyle = False
            end
            object rbParcial: TcxRadioButton
              AlignWithMargins = True
              Left = 432
              Top = 0
              Width = 78
              Height = 25
              Cursor = crHandPoint
              Margins.Left = 10
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = 'Parcial'
              Checked = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clHotLight
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              TabOrder = 2
              TabStop = True
              OnClick = rbParcialClick
              LookAndFeel.NativeStyle = False
            end
            object cbMostrarCod: TcxCheckBox
              Left = 606
              Top = 0
              Cursor = crHandPoint
              Align = alRight
              Caption = 'Mostrar c'#243'digo do produto'
              ParentFont = False
              Properties.FullFocusRect = True
              Properties.ImmediatePost = True
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
              TabOrder = 3
              OnClick = cbMostrarCodClick
              ExplicitLeft = 651
            end
          end
        end
      end
      object tsDevolucaoDin: TcxTabSheet
        Caption = 'Forma de Devolu'#231#227'o'
        ImageIndex = 2
        object LMDSimplePanel8: TLMDSimplePanel
          Left = 0
          Top = 32
          Width = 772
          Height = 359
          Hint = ''
          Align = alClient
          Bevel.Mode = bmEdge
          TabOrder = 0
          object rbCreditar: TcxRadioButton
            Left = 25
            Top = 23
            Width = 529
            Height = 24
            Cursor = crHandPoint
            Caption = '1. Cr'#233'dito para compras futuras'
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clHotLight
            Font.Height = -16
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnClick = rbCreditarClick
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object rbDevolver: TcxRadioButton
            Left = 25
            Top = 106
            Width = 273
            Height = 24
            Cursor = crHandPoint
            Caption = '2. Devolver o valor pago:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = rbDevolverClick
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object gridEsp: TcxGrid
            Left = 44
            Top = 134
            Width = 476
            Height = 194
            TabOrder = 2
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            object tvEsp: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsEsp
              DataController.KeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnSorting = False
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.Background = FrmPri.cxStyle37
              object tvEspNome: TcxGridDBColumn
                Caption = 'Forma de Devolu'#231#227'o:'
                DataBinding.FieldName = 'Nome'
                HeaderAlignmentHorz = taCenter
                Styles.Header = FrmPri.cxStyle11
              end
            end
            object glEsp: TcxGridLevel
              GridView = tvEsp
            end
          end
          object panCli: TLMDSimplePanel
            Left = 44
            Top = 52
            Width = 476
            Height = 38
            Hint = ''
            Bevel.Mode = bmStandard
            Color = clWhite
            TabOrder = 3
          end
        end
        object panTopDin: TLMDSimplePanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 772
          Height = 25
          Hint = ''
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 7
          Align = alTop
          Bevel.Mode = bmCustom
          TabOrder = 1
          object cxLabel3: TcxLabel
            Left = 0
            Top = 0
            Align = alLeft
            Caption = 'Forma de Devolu'#231#227'o'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            AnchorY = 13
          end
          object lbTotal2: TcxLabel
            AlignWithMargins = True
            Left = 721
            Top = 0
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alRight
            Caption = 'Valor'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            AnchorY = 13
          end
        end
      end
    end
  end
  object panEdit: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 772
    Height = 30
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 10
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 2
    Visible = False
    object btnOk: TcxButton
      Left = 0
      Top = 0
      Width = 81
      Height = 30
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '&Ok'
      Default = True
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnOkClick
    end
  end
  object Q: TnxQuery
    Database = Dados.db
    Timeout = 240000
    SQL.Strings = (
      'select * from Tran'
      'where (tipo = 4) and (PagPend=False)')
    Left = 100
    Top = 292
    object QID: TLongWordField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object QUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object QDataHora: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data / Hora'
      FieldName = 'DataHora'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object QCliente: TLongWordField
      Alignment = taCenter
      FieldName = 'Cliente'
    end
    object QTipo: TByteField
      FieldName = 'Tipo'
    end
    object QFunc: TStringField
      FieldName = 'Func'
    end
    object QTotal: TCurrencyField
      FieldName = 'Total'
    end
    object QDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object QDescPerc: TFloatField
      FieldName = 'DescPerc'
    end
    object QDescPorPerc: TBooleanField
      FieldName = 'DescPorPerc'
    end
    object QTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object QPagEsp: TWordField
      FieldName = 'PagEsp'
    end
    object QPago: TCurrencyField
      FieldName = 'Pago'
    end
    object QDebitoAnt: TCurrencyField
      FieldName = 'DebitoAnt'
    end
    object QDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object QDebitoPago: TCurrencyField
      FieldName = 'DebitoPago'
    end
    object QCreditoAnt: TCurrencyField
      FieldName = 'CreditoAnt'
    end
    object QCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object QCreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object QTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object QObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object QCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object QCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object QCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object QCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object QCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object QMaq: TWordField
      FieldName = 'Maq'
    end
    object QNomeCliente: TWideStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object QSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object QQtdTempo: TFloatField
      FieldName = 'QtdTempo'
    end
    object QCredValor: TBooleanField
      FieldName = 'CredValor'
    end
    object QFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object QPagFunc: TStringField
      FieldName = 'PagFunc'
    end
    object QPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object QRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object QUID_ref: TGuidField
      FieldName = 'UID_ref'
      Size = 38
    end
    object QOpDevValor: TByteField
      FieldName = 'OpDevValor'
    end
    object QDescricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
    object QVendedor: TStringField
      FieldName = 'Vendedor'
    end
  end
  object DS: TDataSource
    DataSet = Q
    Left = 348
    Top = 308
  end
  object tItens: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    OnCalcFields = tItensCalcFields
    TableName = 'MovEst'
    IndexName = 'ITranItem'
    MasterFields = 'ID'
    MasterSource = DS
    Left = 164
    Top = 292
    object tItensID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tItensTran: TLongWordField
      FieldName = 'Tran'
    end
    object tItensProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tItensQuant: TFloatField
      FieldName = 'Quant'
    end
    object tItensUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tItensTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tItensCustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object tItensItem: TByteField
      FieldName = 'Item'
    end
    object tItensDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tItensPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tItensPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tItensDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tItensDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tItensEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tItensCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tItensAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tItensEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object tItensCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tItensCaixa: TIntegerField
      FieldName = 'Caixa'
    end
    object tItensCategoria: TStringField
      FieldName = 'Categoria'
    end
    object tItensNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tItensITran: TIntegerField
      FieldName = 'ITran'
    end
    object tItensTipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tItensSessao: TIntegerField
      FieldName = 'Sessao'
    end
    object tItensComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tItensComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tItensComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tItensPermSemEstoque: TBooleanField
      FieldName = 'PermSemEstoque'
    end
    object tItensFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tItensFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tItensRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tItensNomeProd: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProd'
      LookupDataSet = Dados.tbPro
      LookupKeyFields = 'ID'
      LookupResultField = 'Descricao'
      KeyFields = 'Produto'
      Size = 100
      Lookup = True
    end
    object tItensID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object tItenstax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tItenstax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tItenstax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tItensTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tItensPend: TBooleanField
      FieldName = 'Pend'
    end
    object tItensIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tItensDescr: TWideStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tItensDescr2: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'Descr2'
      Calculated = True
    end
    object tItensTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tItensCustoT: TCurrencyField
      FieldName = 'CustoT'
    end
    object tItensLucro: TCurrencyField
      FieldName = 'Lucro'
    end
    object tItensDebDev: TCurrencyField
      FieldName = 'DebDev'
    end
    object tItensVenDev: TBooleanField
      FieldName = 'VenDev'
    end
  end
  object dsItens: TDataSource
    DataSet = tItens
    Left = 200
    Top = 288
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 600
    Top = 296
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsUnderline]
    end
  end
  object MT: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'item'
        DataType = ftInteger
      end
      item
        Name = 'sel'
        DataType = ftBoolean
      end
      item
        Name = 'produto'
        DataType = ftInteger
      end
      item
        Name = 'descr'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'quant'
        DataType = ftFloat
      end
      item
        Name = 'quant_dev'
        DataType = ftFloat
      end
      item
        Name = 'unitario'
        DataType = ftCurrency
      end
      item
        Name = 'total'
        DataType = ftCurrency
      end
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'total_dev'
        DataType = ftCurrency
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
    OnCalcFields = MTCalcFields
    Left = 432
    Top = 269
    object MTitem: TIntegerField
      FieldName = 'item'
    end
    object MTsel: TBooleanField
      FieldName = 'sel'
    end
    object MTproduto: TIntegerField
      FieldName = 'produto'
    end
    object MTdescr: TStringField
      FieldName = 'descr'
      Size = 100
    end
    object MTquant: TFloatField
      FieldName = 'quant'
    end
    object MTquant_dev: TFloatField
      FieldName = 'quant_dev'
    end
    object MTunitario: TCurrencyField
      FieldName = 'unitario'
    end
    object MTtotal: TCurrencyField
      FieldName = 'total'
    end
    object MTid: TIntegerField
      FieldName = 'id'
    end
    object MTtotal_dev: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total_dev'
      Calculated = True
    end
    object MTvalor_pago: TCurrencyField
      FieldName = 'valor_pago'
    end
    object MTvalor_deb: TCurrencyField
      FieldName = 'valor_deb'
    end
    object MTvalor_debdev: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'valor_debdev'
      Calculated = True
    end
    object MTdebdev: TCurrencyField
      FieldName = 'debdev'
    end
    object MTcoddescr: TStringField
      FieldName = 'coddescr'
      Size = 100
    end
  end
  object dsMT: TDataSource
    DataSet = MT
    Left = 312
    Top = 147
  end
  object mtEsp: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
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
    Left = 520
    Top = 205
    object mtEspID: TIntegerField
      FieldName = 'ID'
    end
    object mtEspNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object dsEsp: TDataSource
    DataSet = mtEsp
    Left = 576
    Top = 205
  end
  object tOK: TnxTable
    Database = Dados.db
    TableName = 'MovEst'
    IndexName = 'IID_ref'
    Left = 584
    Top = 116
    object tOKID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object tOKQuant: TFloatField
      FieldName = 'Quant'
    end
    object tOKCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tOKTipoTran: TByteField
      FieldName = 'TipoTran'
    end
  end
  object tDeb: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'Debito'
    IndexName = 'ITipoID'
    Left = 464
    Top = 116
    object tDebData: TDateTimeField
      FieldName = 'Data'
    end
    object tDebCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tDebValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tDebTipo: TByteField
      FieldName = 'Tipo'
    end
    object tDebID: TLongWordField
      FieldName = 'ID'
    end
    object tDebRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tPagEsp: TnxTable
    Database = Dados.db
    TableName = 'PagEspecies'
    IndexName = 'ITranID'
    Left = 640
    Top = 172
    object tPagEspID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tPagEspCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tPagEspDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tPagEspTran: TLongWordField
      FieldName = 'Tran'
    end
    object tPagEspEspecie: TWordField
      FieldName = 'Especie'
    end
    object tPagEspTipo: TByteField
      FieldName = 'Tipo'
    end
    object tPagEspValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tPagEspTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object tPagEspDoc: TStringField
      FieldName = 'Doc'
      Size = 50
    end
    object tPagEspCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tPagEspDevolucao: TBooleanField
      FieldName = 'Devolucao'
    end
    object tPagEspRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
end
