object FrmTarifa: TFrmTarifa
  Left = 0
  Top = 0
  ActiveControl = Paginas
  Caption = 'Tarifa'
  ClientHeight = 491
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Paginas: TcxPageControl
    Left = 0
    Top = 0
    Width = 680
    Height = 435
    ActivePage = tsHoras
    Align = alClient
    TabOrder = 0
    OnChange = PaginasChange
    ClientRectBottom = 435
    ClientRectRight = 680
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = '1. Valor inicial'
      ImageIndex = 2
      object LMDSimplePanel5: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 680
        Height = 153
        Align = alTop
        Bevel.Mode = bmCustom
        TabOrder = 0
        object cxLabel6: TcxLabel
          Left = 14
          Top = 61
          AutoSize = False
          Caption = 
            'Informe o valor, e o tempo correspondente, a ser cobrado do clie' +
            'nte no inicio do acesso. Esse '#233' o valor m'#237'nimo que o cliente vai' +
            ' pagar pelo acesso. '
          Style.TextColor = clGray
          Properties.WordWrap = True
          Height = 36
          Width = 395
        end
        object cxLabel4: TcxLabel
          Left = 220
          Top = 35
          Caption = 'minutos de acesso.'
        end
        object edTempoI: TcxSpinEdit
          Left = 166
          Top = 34
          ParentFont = False
          Properties.AssignedValues.MinValue = True
          Properties.ImmediatePost = True
          Properties.MaxValue = 60.000000000000000000
          Style.BorderStyle = ebs3D
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          StyleFocused.Color = 12582911
          TabOrder = 3
          OnKeyUp = edTempoIKeyUp
          Width = 51
        end
        object cxLabel3: TcxLabel
          Left = 137
          Top = 35
          Caption = 'por'
        end
        object edValorI: TcxCurrencyEdit
          Left = 50
          Top = 34
          EditValue = 0c
          Properties.Alignment.Vert = taVCenter
          Style.BorderStyle = ebs3D
          Style.TextColor = clNavy
          Style.TextStyle = [fsBold]
          StyleFocused.Color = 12582911
          TabOrder = 2
          OnKeyUp = edValorIKeyUp
          Width = 84
        end
        object cxLabel9: TcxLabel
          Left = 14
          Top = 11
          Caption = 'Tarifa'#231#227'o inicial'
          Style.TextStyle = [fsBold]
        end
        object cxLabel7: TcxLabel
          Left = 15
          Top = 34
          Caption = 'Valor'
        end
        object btnOkInicio: TcxButton
          Left = 345
          Top = 30
          Width = 75
          Height = 25
          Caption = '&Avan'#231'ar >>'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = btnOkInicioClick
          LookAndFeel.Kind = lfFlat
        end
      end
    end
    object tsHoras: TcxTabSheet
      Caption = '2. Valor por Hora'
      Enabled = False
      ImageIndex = 4
      object panHoras: TLMDSimplePanel
        AlignWithMargins = True
        Left = 15
        Top = 66
        Width = 650
        Height = 330
        Margins.Left = 15
        Margins.Top = 5
        Margins.Right = 15
        Margins.Bottom = 15
        Align = alClient
        Bevel.Mode = bmStandard
        Bevel.StandardStyle = lsNone
        TabOrder = 0
        Visible = False
        object LMDSimplePanel3: TLMDSimplePanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 321
          Height = 330
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Bevel.BorderSides = [fsTop]
          Bevel.Mode = bmStandard
          Color = clWhite
          TabOrder = 0
          object gridH: TcxGrid
            Left = 1
            Top = 1
            Width = 319
            Height = 328
            Align = alClient
            BorderStyle = cxcbsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfFlat
            object tvH: TcxGridTableView
              NavigatorButtons.ConfirmDelete = False
              OnCustomDrawCell = tvHCustomDrawCell
              OnEditing = tvHEditing
              OnInitEdit = tvMinInitEdit
              OnInitEditValue = tvMinInitEditValue
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              DataController.OnRecordChanged = tvHDataControllerRecordChanged
              OptionsBehavior.AlwaysShowEditor = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnHidingOnGrouping = False
              OptionsCustomize.ColumnHorzSizing = False
              OptionsCustomize.ColumnMoving = False
              OptionsCustomize.ColumnSorting = False
              OptionsData.CancelOnExit = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.FocusRect = False
              OptionsView.CellAutoHeight = True
              OptionsView.CellTextMaxLineCount = 5
              OptionsView.ColumnAutoWidth = True
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GridLines = glNone
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.Content = FrmPri.cxStyle39
              Styles.Selection = FrmPri.cxStyle38
              object tvHTempoUso: TcxGridColumn
                Caption = 'Tempo de Uso'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Focusing = False
                Width = 40
              end
              object tvHCobrar: TcxGridColumn
                Caption = 'Cobrar (valor total)'
                DataBinding.ValueType = 'Currency'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Header = FrmPri.cxStyle39
              end
              object tvHTarifa: TcxGridColumn
                Caption = 'Tarifa'
                DataBinding.ValueType = 'Currency'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Options.Focusing = False
                VisibleForCustomization = False
                Width = 40
              end
            end
            object glH: TcxGridLevel
              GridView = tvH
            end
          end
        end
        object LMDSimplePanel9: TLMDSimplePanel
          Left = 321
          Top = 0
          Width = 329
          Height = 330
          Align = alClient
          Bevel.Mode = bmCustom
          TabOrder = 1
          object cxGroupBox1: TcxGroupBox
            AlignWithMargins = True
            Left = 15
            Top = 0
            Margins.Left = 15
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Op'#231#245'es'
            Style.BorderStyle = ebs3D
            TabOrder = 0
            Height = 201
            Width = 314
            object lbComoTarifar: TcxLabel
              Left = 16
              Top = 88
              Caption = 'Como tarifar tempo de uso maior que 2h ?'
              Style.TextColor = clBlack
              Style.TextStyle = []
            end
            object rbRepetirUltima: TcxRadioButton
              Left = 29
              Top = 110
              Width = 252
              Height = 17
              Caption = 'Aplicar a tarifa da 2a. hora nas demais horas'
              Checked = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 5460819
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              TabStop = True
              OnClick = rbRepetirUltimaClick
              LookAndFeel.Kind = lfStandard
            end
            object rbRepetirTodas: TcxRadioButton
              Tag = 1
              Left = 29
              Top = 132
              Width = 244
              Height = 17
              Caption = 'Repetir todas tarifas desde o inicio'
              Font.Charset = ANSI_CHARSET
              Font.Color = 5460819
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = rbRepetirTodasClick
              LookAndFeel.Kind = lfStandard
            end
            object rbRepetirDesde: TcxRadioButton
              Tag = 2
              Left = 29
              Top = 154
              Width = 139
              Height = 17
              Caption = 'Repetir tarifas da hora'
              Font.Charset = ANSI_CHARSET
              Font.Color = 5460819
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = rbRepetirDesdeClick
              LookAndFeel.Kind = lfStandard
            end
            object edRepetirHora: TcxSpinEdit
              Left = 174
              Top = 152
              Enabled = False
              Properties.ImmediatePost = True
              Properties.MaxValue = 24.000000000000000000
              Properties.MinValue = 1.000000000000000000
              Properties.OnChange = edRepetirHoraPropertiesChange
              Style.BorderStyle = ebs3D
              StyleFocused.Color = 12582911
              StyleFocused.TextStyle = [fsBold]
              TabOrder = 4
              Value = 2
              Width = 43
            end
            object cxLabel14: TcxLabel
              Left = 219
              Top = 154
              Caption = 'em diante'
              Style.TextColor = 5460819
            end
            object cxLabel2: TcxLabel
              Left = 16
              Top = 21
              Caption = 'Configurar tarifas para tempo de uso de at'#233':'
              Style.TextColor = clBlack
            end
            object edNumH: TcxSpinEdit
              Left = 33
              Top = 44
              Properties.ImmediatePost = True
              Properties.MaxValue = 24.000000000000000000
              Properties.MinValue = 1.000000000000000000
              Properties.OnChange = edNumHPropertiesChange
              Style.BorderStyle = ebs3D
              Style.TextStyle = [fsBold]
              StyleFocused.Color = 12582911
              TabOrder = 7
              Value = 2
              Width = 47
            end
            object cxLabel5: TcxLabel
              Left = 84
              Top = 47
              Caption = 'horas'
              Style.TextColor = 5460819
            end
          end
        end
      end
      object LMDSimplePanel4: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 680
        Height = 61
        Align = alTop
        Bevel.Mode = bmCustom
        TabOrder = 1
        object lbPromptHora: TcxLabel
          AlignWithMargins = True
          Left = 15
          Top = 41
          Margins.Left = 15
          Align = alBottom
          Caption = 
            'Informe o valor a ser cobrado do cliente por 1 hora de acesso e ' +
            'clique em Aplicar. '
          Style.TextColor = clGray
          StyleFocused.TextColor = clGray
          Properties.WordWrap = True
          ExplicitTop = 37
          Width = 662
        end
        object edValor1h: TcxCurrencyEdit
          Left = 118
          Top = 10
          EditValue = 0c
          ParentFont = False
          Properties.Alignment.Vert = taVCenter
          Style.BorderStyle = ebs3D
          Style.TextColor = clNavy
          Style.TextStyle = [fsBold]
          StyleFocused.Color = 12582911
          TabOrder = 1
          OnKeyUp = edValor1hKeyUp
          Width = 94
        end
        object cxLabel1: TcxLabel
          Left = 14
          Top = 11
          Caption = '1 hora de acesso ='
          Style.TextStyle = [fsBold]
        end
        object btnOkHoras: TcxButton
          Left = 224
          Top = 10
          Width = 72
          Height = 22
          Caption = '&Aplicar'
          TabOrder = 3
          OnClick = btnOkHorasClick
          LookAndFeel.Kind = lfFlat
        end
      end
    end
    object tsMinutos: TcxTabSheet
      Caption = '3. Valor dos Minutos'
      Enabled = False
      ImageIndex = 3
      object panMin: TLMDSimplePanel
        AlignWithMargins = True
        Left = 8
        Top = 46
        Width = 657
        Height = 350
        Margins.Left = 8
        Margins.Top = 5
        Margins.Right = 15
        Margins.Bottom = 15
        Align = alClient
        Bevel.Mode = bmStandard
        Bevel.StandardStyle = lsNone
        TabOrder = 0
        object LMDSimplePanel2: TLMDSimplePanel
          AlignWithMargins = True
          Left = 10
          Top = 0
          Width = 647
          Height = 350
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          TabOrder = 0
          object LMDSimplePanel6: TLMDSimplePanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 275
            Height = 350
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Bevel.BorderSides = [fsTop]
            Bevel.Mode = bmStandard
            Color = clWhite
            TabOrder = 0
            object Grid: TcxGrid
              Left = 1
              Top = 1
              Width = 273
              Height = 348
              Align = alClient
              BorderStyle = cxcbsNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LookAndFeel.Kind = lfFlat
              OnMouseLeave = GridMouseLeave
              object tvMin: TcxGridTableView
                OnMouseDown = tvMinMouseDown
                OnMouseLeave = tvMinMouseLeave
                OnMouseMove = tvMinMouseMove
                NavigatorButtons.ConfirmDelete = False
                OnCanFocusRecord = tvMinCanFocusRecord
                OnCustomDrawCell = tvMinCustomDrawCell
                OnEditing = tvMinEditing
                OnInitEdit = tvMinInitEdit
                OnInitEditValue = tvMinInitEditValue
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.AlwaysShowEditor = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsBehavior.FocusCellOnCycle = True
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnHidingOnGrouping = False
                OptionsCustomize.ColumnHorzSizing = False
                OptionsCustomize.ColumnMoving = False
                OptionsCustomize.ColumnSorting = False
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsSelection.HideFocusRectOnExit = False
                OptionsSelection.UnselectFocusedRecordOnExit = False
                OptionsView.CellAutoHeight = True
                OptionsView.CellTextMaxLineCount = 5
                OptionsView.ColumnAutoWidth = True
                OptionsView.ExpandButtonsForEmptyDetails = False
                OptionsView.GridLines = glNone
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                Styles.Selection = FrmPri.cxStyle38
                object tvMinTempoStr: TcxGridColumn
                  Caption = 'Tempo de Uso'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  OnCustomDrawCell = tvMinTempoStrCustomDrawCell
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Options.Editing = False
                  Options.Focusing = False
                  Width = 60
                end
                object tvMinValor: TcxGridColumn
                  Caption = 'Cobrar (Valor Total)'
                  DataBinding.ValueType = 'Currency'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  Styles.Header = FrmPri.cxStyle39
                end
                object tvMinTempo: TcxGridColumn
                  DataBinding.ValueType = 'Integer'
                  Visible = False
                  VisibleForCustomization = False
                end
              end
              object GL: TcxGridLevel
                GridView = tvMin
              end
            end
          end
          object LMDSimplePanel8: TLMDSimplePanel
            Left = 275
            Top = 0
            Width = 372
            Height = 350
            Align = alClient
            Bevel.Mode = bmCustom
            TabOrder = 1
            object cxGroupBox2: TcxGroupBox
              AlignWithMargins = True
              Left = 15
              Top = 0
              Margins.Left = 15
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Op'#231#245'es'
              Style.BorderStyle = ebs3D
              TabOrder = 0
              Height = 54
              Width = 357
              object edArr: TcxComboBox
                Left = 133
                Top = 19
                Properties.DropDownListStyle = lsEditFixedList
                Properties.ImmediatePost = True
                Properties.ImmediateUpdateText = True
                Properties.Items.Strings = (
                  '1'
                  '5'
                  '10'
                  '25'
                  '50')
                Properties.EditMask = '99;1; '
                Properties.MaxLength = 0
                Properties.OnCloseUp = edArrPropertiesCloseUp
                Style.BorderStyle = ebs3D
                Style.TextStyle = [fsBold]
                TabOrder = 0
                Text = '  '
                Width = 57
              end
              object cxLabel11: TcxLabel
                Left = 14
                Top = 20
                Caption = 'Arredondar valor em '
                Style.TextStyle = []
              end
              object cxLabel12: TcxLabel
                Left = 196
                Top = 20
                Caption = 'centavos.'
              end
            end
          end
        end
      end
      object LMDSimplePanel7: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 680
        Height = 41
        Align = alTop
        Bevel.Mode = bmStandard
        Bevel.StandardStyle = lsNone
        TabOrder = 1
        object edDivMin: TcxComboBox
          Left = 102
          Top = 10
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items.Strings = (
            '1'
            '5'
            '10'
            '15'
            '20'
            '30'
            '60')
          Properties.EditMask = '99;1; '
          Properties.MaxLength = 0
          Style.BorderStyle = ebs3D
          Style.TextColor = clNavy
          Style.TextStyle = [fsBold]
          TabOrder = 0
          Text = '15'
          Width = 66
        end
        object cxLabel8: TcxLabel
          Left = 14
          Top = 11
          Caption = 'Tarifar a cada'
          Style.TextStyle = [fsBold]
        end
        object cxLabel10: TcxLabel
          Left = 169
          Top = 12
          Caption = 'minutos'
        end
        object btnAplicarMin: TcxButton
          Left = 224
          Top = 10
          Width = 72
          Height = 22
          Caption = '&Aplicar'
          TabOrder = 3
          OnClick = btnAplicarMinClick
          LookAndFeel.Kind = lfFlat
        end
      end
    end
  end
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 435
    Width = 680
    Height = 56
    Align = alBottom
    Bevel.BorderSides = [fsTop]
    Bevel.Mode = bmEdge
    TabOrder = 5
    object btnAvancar: TcxButton
      AlignWithMargins = True
      Left = 579
      Top = 14
      Width = 84
      Height = 28
      Margins.Left = 15
      Margins.Top = 12
      Margins.Right = 15
      Margins.Bottom = 12
      Align = alRight
      Caption = 'Avan'#231'ar >>'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = btnAvancarClick
      LookAndFeel.Kind = lfFlat
    end
    object btnVoltar: TcxButton
      AlignWithMargins = True
      Left = 17
      Top = 14
      Width = 75
      Height = 28
      Margins.Left = 15
      Margins.Top = 12
      Margins.Right = 15
      Margins.Bottom = 12
      Align = alLeft
      Caption = '<< Voltar'
      TabOrder = 1
      Visible = False
      OnClick = btnVoltarClick
      LookAndFeel.Kind = lfFlat
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmImagens.Imagens
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 464
    Top = 168
    DockControlHeights = (
      0
      0
      0
      0)
    object cmTM1: TdxBarButton
      Tag = 1
      Caption = '1m'
      Category = 0
      Hint = '1m'
      Visible = ivAlways
    end
    object cmTM5: TdxBarButton
      Tag = 5
      Caption = '5m'
      Category = 0
      Hint = '5m'
      Visible = ivAlways
    end
    object cmTM10: TdxBarButton
      Tag = 10
      Caption = '10m'
      Category = 0
      Hint = '10m'
      Visible = ivAlways
    end
    object cmTM15: TdxBarButton
      Tag = 15
      Caption = '15m'
      Category = 0
      Hint = '15m'
      Visible = ivAlways
    end
    object cmTM20: TdxBarButton
      Tag = 20
      Caption = '20m'
      Category = 0
      Hint = '20m'
      Visible = ivAlways
    end
    object cmTM25: TdxBarButton
      Tag = 25
      Caption = '25m'
      Category = 0
      Hint = '25m'
      Visible = ivAlways
    end
    object cmTM30: TdxBarButton
      Tag = 30
      Caption = '30m'
      Category = 0
      Hint = '30m'
      Visible = ivAlways
    end
    object cmTM60: TdxBarButton
      Tag = 60
      Caption = '1h'
      Category = 0
      Hint = '1h'
      Visible = ivAlways
    end
    object cm1c: TdxBarButton
      Tag = 1
      Caption = '1 centavo'
      Category = 0
      Hint = '1 centavo'
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Tag = 5
      Caption = '5 centavos'
      Category = 0
      Hint = '5 centavos'
      Visible = ivAlways
    end
    object cm10c: TdxBarButton
      Tag = 10
      Caption = '10 centavos'
      Category = 0
      Hint = '10 centavos'
      Visible = ivAlways
    end
    object cm25c: TdxBarButton
      Tag = 25
      Caption = '25 centavos'
      Category = 0
      Hint = '25 centavos'
      Visible = ivAlways
    end
    object cm50c: TdxBarButton
      Tag = 50
      Caption = '50 centavos'
      Category = 0
      Hint = '50 centavos'
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'N'#227'o arrendondar'
      Category = 0
      Hint = 'N'#227'o arrendondar'
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Repetir a mesma tarifa'#231#227'o'
      Category = 0
      Hint = 'Repetir a mesma tarifa'#231#227'o'
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton8: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton9: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton10: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton11: TdxBarButton
      Caption = '1 centavo'
      Category = 0
      Hint = '1 centavo'
      Visible = ivAlways
    end
    object dxBarButton12: TdxBarButton
      Caption = '5 centavos'
      Category = 0
      Hint = '5 centavos'
      Visible = ivAlways
    end
    object dxBarButton13: TdxBarButton
      Caption = '10 centavos'
      Category = 0
      Hint = '10 centavos'
      Visible = ivAlways
    end
    object dxBarButton14: TdxBarButton
      Caption = '25 centavos'
      Category = 0
      Hint = '25 centavos'
      Visible = ivAlways
    end
    object dxBarButton15: TdxBarButton
      Caption = '50 centavos'
      Category = 0
      Hint = '50 centavos'
      Visible = ivAlways
    end
  end
  object SC: TcxEditStyleController
    Style.Color = 12582911
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = clBlack
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    StyleFocused.BorderStyle = ebsThick
    StyleFocused.Color = 12582911
    StyleFocused.TextColor = clBlack
    StyleFocused.TextStyle = [fsBold]
    Left = 296
    Top = 336
  end
  object cxEditRepository1: TcxEditRepository
    Left = 48
    Top = 128
    object tvCurEdit_ReadOnly: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
    end
    object tvCurEdit: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Vert = taVCenter
      Properties.UseDisplayFormatWhenEditing = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 56
    Top = 168
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = 8750469
    end
  end
  object HC: TcxHintStyleController
    Global = True
    HintStyle.Animate = cxhaFadeIn
    HintStyle.CaptionFont.Charset = DEFAULT_CHARSET
    HintStyle.CaptionFont.Color = clWindowText
    HintStyle.CaptionFont.Height = -11
    HintStyle.CaptionFont.Name = 'MS Sans Serif'
    HintStyle.CaptionFont.Style = []
    HintStyle.Font.Charset = ANSI_CHARSET
    HintStyle.Font.Color = clWindowText
    HintStyle.Font.Height = -11
    HintStyle.Font.Name = 'Tahoma'
    HintStyle.Font.Style = [fsBold]
    Left = 336
    Top = 192
  end
end
