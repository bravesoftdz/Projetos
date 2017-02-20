inherited fbVendas2: TfbVendas2
  Caption = 'Vendas'
  ClientHeight = 564
  ClientWidth = 1020
  Font.Height = -13
  Font.Name = 'Segoe UI'
  ExplicitWidth = 1036
  ExplicitHeight = 603
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    Width = 1020
    Height = 564
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ExplicitWidth = 1020
    ExplicitHeight = 564
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 1020
      Height = 44
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitWidth = 1020
      ExplicitHeight = 44
    end
    object Paginas: TcxPageControl
      Left = 0
      Top = 44
      Width = 1020
      Height = 520
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Properties.ActivePage = tsVendas
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dmImagens.im16
      Properties.ShowFrame = True
      Properties.Style = 6
      Properties.TabHeight = 32
      OnChange = PaginasChange
      OnDrawTabEx = PaginasDrawTabEx
      ClientRectBottom = 519
      ClientRectLeft = 1
      ClientRectRight = 1019
      ClientRectTop = 34
      object tsVendas: TcxTabSheet
        Cursor = crHandPoint
        Caption = 'Vendas do caixa atual'
        object Grid: TcxGrid
          Left = 0
          Top = 0
          Width = 805
          Height = 485
          Margins.Left = 0
          Margins.Top = 5
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
          OnResize = GridResize
          LevelTabs.CaptionAlignment = taLeftJustify
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          object TV: TcxGridDBTableView
            OnDblClick = cmEditarClick
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Enabled = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Enabled = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Enabled = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            OnFocusedRecordChanged = TVFocusedRecordChanged
            DataController.DataModeController.GridMode = True
            DataController.DataSource = dsTab
            DataController.Filter.MaxValueListCount = 1000
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.Active = True
            DataController.Filter.AutoDataSetFilter = True
            DataController.Filter.SupportedLike = False
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = 'Debitado=0.00'
                Kind = skSum
                FieldName = 'Debito'
                DisplayText = 'D'#233'bito'
              end
              item
                Format = 'Desconto=0.00'
                Kind = skSum
                FieldName = 'Desconto'
                DisplayText = 'Desconto'
              end
              item
                Format = 'Total Final=0.00'
                Kind = skSum
                FieldName = 'TotalFinal'
                DisplayText = 'Tota-Final'
              end
              item
                Format = 'Pago=0.00'
                Kind = skSum
                FieldName = 'Pago'
                DisplayText = 'Pago'
              end>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <
              item
                Links = <>
                SummaryItems.Separator = ', '
                SummaryItems = <
                  item
                    Kind = skCount
                  end>
              end>
            DateTimeHandling.MonthFormat = 'mm'
            DateTimeHandling.YearFormat = 'yyyy'
            DateTimeHandling.DateFormat = 'dd/mm/yyyy'
            DateTimeHandling.Grouping = dtgByDate
            DateTimeHandling.HourFormat = 'hh:mm:ss'
            Filtering.ColumnPopup.MaxDropDownItemCount = 12
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnSorting = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.NoDataToDisplayInfoText = '<Ainda n'#227'o foi realizada nenhuma venda>'
            OptionsView.GridLineColor = 16053492
            OptionsView.GroupFooters = gfVisibleWhenExpanded
            Preview.Column = TVObs
            Preview.MaxLineCount = 0
            Preview.Visible = True
            Styles.Header = cxStyle9
            OnCustomDrawColumnHeader = tvPendCustomDrawColumnHeader
            object TVStatusNF: TcxGridDBColumn
              Caption = 'NFC-e'
              DataBinding.FieldName = 'StatusNFE'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Images = dmImagens.im16
              Properties.Items = <
                item
                  Description = 'Gerar NF'
                  ImageIndex = 94
                  Value = 1
                end
                item
                  Description = 'Transmitindo'
                  ImageIndex = 99
                  Value = 2
                end
                item
                  Description = 'Em conting'#234'ncia'
                  ImageIndex = 18
                  Value = 20
                end
                item
                  Description = 'Rejeitada'
                  ImageIndex = 53
                  Value = 50
                end
                item
                  Description = 'Aprovada'
                  ImageIndex = 4
                  Value = 100
                end
                item
                  Description = 'Aprovada em conting'#234'ncia'
                  ImageIndex = 3
                  Value = 101
                end
                item
                end>
              Properties.ShowDescriptions = False
              HeaderAlignmentHorz = taCenter
              Width = 44
            end
            object TVImg: TcxGridDBColumn
              AlternateCaption = 'Fidelidade?'
              DataBinding.FieldName = 'Img'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = 'Fidelidade'
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = 'Venda Plus'
                  ImageIndex = 1
                  Value = 1
                end>
              Properties.ShowDescriptions = False
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              VisibleForCustomization = False
              Width = 24
              IsCaptionAssigned = True
            end
            object TVID: TcxGridDBColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'ID'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 73
            end
            object TVMaquina: TcxGridDBColumn
              DataBinding.FieldName = 'Maq'
              PropertiesClassName = 'TcxMaskEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.MaxLength = 0
              Properties.ReadOnly = False
              Visible = False
              HeaderAlignmentHorz = taCenter
              VisibleForCustomization = False
              Width = 53
            end
            object TVData: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'DataHora'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              Width = 82
            end
            object TVInicio: TcxGridDBColumn
              Caption = 'Hora'
              DataBinding.FieldName = 'DataHora'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = False
              Properties.TimeFormat = tfHourMin
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Grouping = False
              Width = 77
            end
            object TVTipo: TcxGridDBColumn
              DataBinding.FieldName = 'Tipo'
              RepositoryItem = Dados.erTipoTran
              Visible = False
              HeaderAlignmentHorz = taCenter
              MinWidth = 16
              VisibleForCustomization = False
              Width = 118
            end
            object TVDescr: TcxGridDBColumn
              Caption = 'Itens vendidos'
              DataBinding.FieldName = 'Descr'
              PropertiesClassName = 'TcxTextEditProperties'
              Options.Filtering = False
              Options.Grouping = False
              Styles.OnGetContentStyle = TVDebitoStylesGetContentStyle
              Width = 164
            end
            object TVNome: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'NomeCliente'
              PropertiesClassName = 'TcxMaskEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.MaxLength = 40
              Properties.ReadOnly = False
              Width = 143
            end
            object TVTotal: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'Total'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.MaxLength = 0
              Properties.ReadOnly = False
              OnGetDisplayText = TVTotalGetDisplayText
              HeaderAlignmentHorz = taCenter
              Styles.OnGetContentStyle = TVDebitoStylesGetContentStyle
              Width = 72
            end
            object TVDesconto: TcxGridDBColumn
              DataBinding.FieldName = 'Desconto'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Nullable = False
              Properties.ReadOnly = False
              OnCustomDrawCell = TVDebitoCustomDrawCell
              OnGetDisplayText = TVTotalGetDisplayText
              HeaderAlignmentHorz = taCenter
              Styles.OnGetContentStyle = TVDebitoStylesGetContentStyle
              Width = 75
            end
            object TVTotalFinal: TcxGridDBColumn
              Caption = 'Total Final'
              DataBinding.FieldName = 'TotalFinal'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              OnGetDisplayText = TVTotalGetDisplayText
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Styles.OnGetContentStyle = TVDebitoStylesGetContentStyle
              Width = 80
            end
            object TVPago: TcxGridDBColumn
              Caption = 'Valor Pago'
              DataBinding.FieldName = 'Pago'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              OnCustomDrawCell = TVPagoCustomDrawCell
              OnGetDisplayText = TVPagoGetDisplayText
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Styles.OnGetContentStyle = TVDebitoStylesGetContentStyle
              Width = 83
            end
            object TVMeioPagto: TcxGridDBColumn
              Caption = 'Meio Pagto'
              DataBinding.FieldName = 'NomePagEsp'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'Nome'
                end>
              HeaderAlignmentHorz = taCenter
            end
            object TVCredUsado: TcxGridDBColumn
              Caption = 'Cr'#233'dito Usado'
              DataBinding.FieldName = 'CreditoUsado'
              OnGetDisplayText = TVTotalGetDisplayText
              HeaderAlignmentHorz = taCenter
              Width = 94
            end
            object TVDebito: TcxGridDBColumn
              Caption = 'Debitado'
              DataBinding.FieldName = 'Debito'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              OnCustomDrawCell = TVDebitoCustomDrawCell
              OnGetDisplayText = TVTotalGetDisplayText
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Styles.OnGetContentStyle = TVDebitoStylesGetContentStyle
              Width = 87
            end
            object TVTroco: TcxGridDBColumn
              DataBinding.FieldName = 'Troco'
              OnGetDisplayText = TVTotalGetDisplayText
              HeaderAlignmentHorz = taCenter
              Width = 89
            end
            object TVNomeFuncI: TcxGridDBColumn
              Caption = 'Funcion'#225'rio'
              DataBinding.FieldName = 'Func'
              PropertiesClassName = 'TcxMaskEditProperties'
              Width = 91
            end
            object TVSessao: TcxGridDBColumn
              Caption = 'Sess'#227'o'
              DataBinding.FieldName = 'Sessao'
              PropertiesClassName = 'TcxMaskEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              VisibleForCustomization = False
            end
            object TVCancelado: TcxGridDBColumn
              DataBinding.FieldName = 'Cancelado'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Items = <
                item
                  Description = 'N'#227'o'
                  ImageIndex = 0
                  Value = False
                end
                item
                  Description = 'Sim'
                  Value = True
                end>
              HeaderAlignmentHorz = taCenter
              Width = 76
            end
            object TVCanceladoPor: TcxGridDBColumn
              Caption = 'Cancelado por'
              DataBinding.FieldName = 'CanceladoPor'
              HeaderAlignmentHorz = taCenter
              Width = 96
            end
            object TVCanceladoEm: TcxGridDBColumn
              Caption = 'Cancelado Em'
              DataBinding.FieldName = 'CanceladoEm'
              HeaderAlignmentHorz = taCenter
            end
            object TVObs: TcxGridDBColumn
              DataBinding.FieldName = 'Obs'
              PropertiesClassName = 'TcxMemoProperties'
              Width = 164
            end
            object TVCredito: TcxGridDBColumn
              Caption = 'Creditado'
              DataBinding.FieldName = 'Credito'
              HeaderAlignmentHorz = taCenter
            end
            object TVPagPend: TcxGridDBColumn
              DataBinding.FieldName = 'PagPend'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object GL: TcxGridLevel
            Caption = 'Vendas'
            GridView = TV
            Options.DetailTabsPosition = dtpTop
          end
        end
        object btnExibir: TcxButton
          Left = 599
          Top = 8
          Width = 200
          Height = 25
          Caption = 'Exibir: Vendas do caixa atual'
          DropDownMenu = pmExibir
          Kind = cxbkDropDown
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.ImageIndex = 96
          OptionsImage.Images = dmImagens.im16
          OptionsImage.Layout = blGlyphRight
          PopupMenu = FrmPri.pmRegistro
          TabOrder = 2
        end
        object dsPag: TdxDockSite
          Left = 805
          Top = 0
          Width = 213
          Height = 485
          Align = alRight
          AutoSize = True
          DockingType = 5
          OriginalWidth = 253
          OriginalHeight = 520
          object dxLayoutDockSite1: TdxLayoutDockSite
            Left = 0
            Top = 0
            Width = 213
            Height = 485
            DockingType = 0
            OriginalWidth = 213
            OriginalHeight = 200
          end
          object dpPag: TdxDockPanel
            Left = 0
            Top = 0
            Width = 213
            Height = 485
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ManagerFont = False
            AllowFloating = True
            AutoHide = False
            Caption = 'Pagamento'
            CaptionButtons = [cbMaximize, cbHide]
            CustomCaptionButtons.Buttons = <>
            TabsProperties.CustomButtons.Buttons = <>
            DockingType = 0
            OriginalWidth = 213
            OriginalHeight = 140
          end
        end
      end
      object tsPend: TcxTabSheet
        Cursor = crHandPoint
        Caption = 'Vendas Pendentes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object gridPend: TcxGrid
          Left = 0
          Top = 40
          Width = 1018
          Height = 445
          Align = alClient
          BorderStyle = cxcbsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          object tvPend: TcxGridDBTableView
            OnDblClick = cmEditarClick
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Enabled = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Enabled = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Enabled = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            OnFocusedRecordChanged = TVFocusedRecordChanged
            DataController.DataModeController.GridMode = True
            DataController.DataSource = dsPend
            DataController.KeyFieldNames = 'ID'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DateTimeHandling.MonthFormat = 'mm'
            DateTimeHandling.YearFormat = 'yyyy'
            DateTimeHandling.DateFormat = 'dd/mm/yyyy'
            DateTimeHandling.Grouping = dtgByDate
            DateTimeHandling.HourFormat = 'hh:mm:ss'
            Filtering.ColumnPopup.MaxDropDownItemCount = 12
            OptionsBehavior.ImmediateEditor = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' vendas aguardando pagamento>'
            OptionsView.ColumnAutoWidth = True
            OptionsView.EditAutoHeightBorderColor = 16053492
            OptionsView.GridLineColor = 16053492
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfVisibleWhenExpanded
            OptionsView.RowSeparatorColor = 16053492
            Preview.Column = tvPendObs
            Preview.MaxLineCount = 0
            Preview.Visible = True
            OnCustomDrawColumnHeader = tvPendCustomDrawColumnHeader
            object tvPendID: TcxGridDBColumn
              AlternateCaption = 'N'#250'mero da Transa'#231#227'o'
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'ID'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Header = cxStyle9
            end
            object tvPendDataHora: TcxGridDBColumn
              Caption = 'Data / Hora'
              DataBinding.FieldName = 'IncluidoEm'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Header = cxStyle9
              Width = 130
            end
            object tvPendTotalFinal: TcxGridDBColumn
              Caption = 'Valor '#224' Pagar'
              DataBinding.FieldName = 'TotalFinal'
              OnCustomDrawCell = tvPendTotalFinalCustomDrawCell
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Header = cxStyle9
              Width = 109
            end
            object tvPendDescr: TcxGridDBColumn
              Caption = 'Itens'
              DataBinding.FieldName = 'Descr'
              Styles.Header = cxStyle9
              Width = 306
            end
            object tvPendNomeCliente: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'NomeCliente'
              Styles.Header = cxStyle9
              Width = 188
            end
            object tvPendTotal: TcxGridDBColumn
              DataBinding.FieldName = 'Total'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object tvPendDesconto: TcxGridDBColumn
              DataBinding.FieldName = 'Desconto'
              Visible = False
              OnCustomDrawCell = TVDebitoCustomDrawCell
              OnGetDisplayText = TVTotalGetDisplayText
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object tvPendFunc: TcxGridDBColumn
              Caption = 'Vendido por'
              DataBinding.FieldName = 'NomeFunc'
              Styles.Header = cxStyle9
              Width = 181
            end
            object tvPendObs: TcxGridDBColumn
              DataBinding.FieldName = 'Obs'
            end
          end
          object glPend: TcxGridLevel
            Caption = 'Aguardando Pagamento'
            GridView = tvPend
          end
        end
        object LMDSimplePanel1: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 1018
          Height = 40
          Hint = ''
          Align = alTop
          Bevel.Mode = bmCustom
          TabOrder = 1
          object LMDSimplePanel2: TLMDSimplePanel
            Left = 0
            Top = 0
            Width = 808
            Height = 40
            Hint = ''
            Align = alClient
            Bevel.Mode = bmCustom
            TabOrder = 0
            object dxBarDockControl2: TdxBarDockControl
              Left = 0
              Top = 0
              Width = 808
              Height = 38
              Margins.Bottom = 7
              Align = dalTop
              BarManager = BarMgr
              SunkenBorder = False
              UseOwnSunkenBorder = True
            end
          end
          object cbFecharAuto: TcxCheckBox
            Left = 808
            Top = 0
            Cursor = crHandPoint
            Align = alRight
            Caption = 'Fechar Automaticamente'
            ParentFont = False
            Properties.Alignment = taLeftJustify
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            State = cbsChecked
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -13
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.TextColor = clBlack
            Style.IsFontAssigned = True
            TabOrder = 1
            OnClick = cbFecharAutoClick
            ExplicitHeight = 0
            Width = 210
          end
        end
      end
      object tsRej: TcxTabSheet
        Caption = 'NFC-e Rejeitada '
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ImageIndex = 53
        ParentFont = False
        object bdcRej: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1018
          Height = 38
          Align = dalTop
          BarManager = BarMgr
        end
        object gridRej: TcxGrid
          Left = 0
          Top = 38
          Width = 1018
          Height = 447
          Align = alClient
          BorderStyle = cxcbsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          object tvRej: TcxGridDBTableView
            OnDblClick = cmEditarClick
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Enabled = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Enabled = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Enabled = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            OnFocusedRecordChanged = TVFocusedRecordChanged
            DataController.DataModeController.GridMode = True
            DataController.DataSource = dsRej
            DataController.KeyFieldNames = 'ID'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DateTimeHandling.MonthFormat = 'mm'
            DateTimeHandling.YearFormat = 'yyyy'
            DateTimeHandling.DateFormat = 'dd/mm/yyyy'
            DateTimeHandling.Grouping = dtgByDate
            DateTimeHandling.HourFormat = 'hh:mm:ss'
            Filtering.ColumnPopup.MaxDropDownItemCount = 12
            OptionsBehavior.ImmediateEditor = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' vendas aguardando pagamento>'
            OptionsView.CellAutoHeight = True
            OptionsView.EditAutoHeightBorderColor = 16053492
            OptionsView.GridLineColor = 16053492
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfVisibleWhenExpanded
            OptionsView.RowSeparatorColor = 16053492
            Preview.MaxLineCount = 0
            OnCustomDrawColumnHeader = tvPendCustomDrawColumnHeader
            object cxGridDBColumn1: TcxGridDBColumn
              AlternateCaption = 'N'#250'mero da Transa'#231#227'o'
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'ID'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taTopJustify
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Header = cxStyle9
              Width = 66
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Data / Hora'
              DataBinding.FieldName = 'IncluidoEm'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taTopJustify
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Header = cxStyle9
              Width = 141
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'TotLiq'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Vert = taTopJustify
              OnCustomDrawCell = tvPendTotalFinalCustomDrawCell
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Header = cxStyle9
              Width = 110
            end
            object tvRejColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'MsgRej'
              Visible = False
              VisibleForCustomization = False
              Width = 730
            end
            object tvRejxMotivo: TcxGridDBColumn
              Caption = 'Motivo da Rejei'#231#227'o'
              DataBinding.FieldName = 'MsgRej'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taTopJustify
              Styles.Content = cxStyle11
              Styles.Header = cxStyle9
              Width = 386
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Vendido por'
              DataBinding.FieldName = 'NomeFunc'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taTopJustify
              Styles.Header = cxStyle9
              Width = 109
            end
            object tvRejCliente: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'DadosCli'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.Alignment.Vert = taTopJustify
              Properties.ListColumns = <>
              Styles.Header = cxStyle9
              Width = 242
            end
            object cxGridDBColumn6: TcxGridDBColumn
              DataBinding.FieldName = 'Total'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGridDBColumn7: TcxGridDBColumn
              DataBinding.FieldName = 'Desconto'
              Visible = False
              OnCustomDrawCell = TVDebitoCustomDrawCell
              OnGetDisplayText = TVTotalGetDisplayText
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object tvRejAmb: TcxGridDBColumn
              Caption = 'Ambiente'
              DataBinding.FieldName = 'AmbNFe'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.ImmediateDropDownWhenActivated = True
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = 'Produ'#231#227'o'
                  ImageIndex = 0
                  Value = '1'
                end
                item
                  Description = 'Homologa'#231#227'o'
                  Value = '2'
                end>
              Styles.Header = cxStyle9
            end
          end
          object glRej: TcxGridLevel
            Caption = 'Aguardando Pagamento'
            GridView = tvRej
          end
        end
      end
      object tsCont: TcxTabSheet
        Caption = 'NFC-e em Conting'#234'ncia'
        ImageIndex = 18
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object gridCont: TcxGrid
          Left = 0
          Top = 0
          Width = 1018
          Height = 485
          Align = alClient
          BorderStyle = cxcbsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          object tvCont: TcxGridDBTableView
            OnDblClick = cmEditarClick
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Enabled = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Enabled = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Enabled = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            OnFocusedRecordChanged = TVFocusedRecordChanged
            DataController.DataModeController.GridMode = True
            DataController.DataSource = dsCont
            DataController.KeyFieldNames = 'ID'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DateTimeHandling.MonthFormat = 'mm'
            DateTimeHandling.YearFormat = 'yyyy'
            DateTimeHandling.DateFormat = 'dd/mm/yyyy'
            DateTimeHandling.Grouping = dtgByDate
            DateTimeHandling.HourFormat = 'hh:mm:ss'
            Filtering.ColumnPopup.MaxDropDownItemCount = 12
            OptionsBehavior.ImmediateEditor = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' vendas aguardando pagamento>'
            OptionsView.ColumnAutoWidth = True
            OptionsView.EditAutoHeightBorderColor = 16053492
            OptionsView.GridLineColor = 16053492
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfVisibleWhenExpanded
            OptionsView.RowSeparatorColor = 16053492
            Preview.Column = cxGridDBColumn17
            Preview.MaxLineCount = 0
            Preview.Visible = True
            OnCustomDrawColumnHeader = tvPendCustomDrawColumnHeader
            object cxGridDBColumn9: TcxGridDBColumn
              AlternateCaption = 'N'#250'mero da Transa'#231#227'o'
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'ID'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Header = cxStyle9
              Width = 80
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'Data / Hora'
              DataBinding.FieldName = 'IncluidoEm'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Header = cxStyle9
              Width = 161
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'TotLiq'
              OnCustomDrawCell = tvPendTotalFinalCustomDrawCell
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Header = cxStyle9
              Width = 106
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = 'Itens'
              DataBinding.FieldName = 'Descr'
              Styles.Header = cxStyle9
              Width = 318
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'NomeCliente'
              Styles.Header = cxStyle9
              Width = 169
            end
            object cxGridDBColumn14: TcxGridDBColumn
              DataBinding.FieldName = 'Total'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGridDBColumn15: TcxGridDBColumn
              DataBinding.FieldName = 'Desconto'
              Visible = False
              OnCustomDrawCell = TVDebitoCustomDrawCell
              OnGetDisplayText = TVTotalGetDisplayText
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGridDBColumn16: TcxGridDBColumn
              Caption = 'Vendido por'
              DataBinding.FieldName = 'NomeFunc'
              Styles.Header = cxStyle9
              Width = 167
            end
            object cxGridDBColumn17: TcxGridDBColumn
              DataBinding.FieldName = 'Obs'
            end
            object tvContAmbiente: TcxGridDBColumn
              Caption = 'Ambiente'
              DataBinding.FieldName = 'AmbNFe'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Produ'#231#227'o'
                  ImageIndex = 0
                  Value = '1'
                end
                item
                  Description = 'Homologa'#231#227'o'
                  Value = '2'
                end>
              Styles.Header = cxStyle9
            end
          end
          object glCont: TcxGridLevel
            Caption = 'Aguardando Pagamento'
            GridView = tvCont
          end
        end
      end
    end
  end
  inherited BarMgr: TdxBarManager
    UseSystemFont = False
    Left = 32
    Top = 200
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BarMgrBar1: TdxBar
      Font.Height = -13
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmVendaCaixa'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmNovo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmEditar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmDevolucao'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmCancelar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmImpRecibo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmDanfe'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmCfg'
        end>
      UseOwnFont = True
      UseRestSpace = True
    end
    object BarMgrBar2: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1335
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmPagamento'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object BarMgrBar3: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'barRej'
      CaptionButtons = <>
      DockControl = bdcRej
      DockedDockControl = bdcRej
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 637
      FloatTop = 263
      FloatClientWidth = 51
      FloatClientHeight = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmReenviaRej'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmPagtoRej'
        end>
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    inherited cmNovo: TdxBarLargeButton
      Caption = '&Venda Balc'#227'o (F4)'
      Hint = 'Venda Balc'#227'o (F4)'
      LargeImageIndex = 132
      ShortCut = 115
      OnClick = cmNovoClick
      ShowCaption = True
      ImageIndex = 0
    end
    inherited cmEditar: TdxBarLargeButton
      Hint = 'Editar Venda'
      OnClick = cmEditarClick
      ShowCaption = True
      ImageIndex = 20
    end
    inherited cmApagar: TdxBarLargeButton
      ImageIndex = 12
    end
    inherited cmLayout: TdxBarLargeButton
      ImageIndex = -1
    end
    inherited cmPeriodo: TdxBarLargeButton
      ImageIndex = -1
    end
    inherited cmCfg: TdxBarLargeButton
      Align = iaRight
      OnClick = cmCfgClick
      AutoGrayScale = True
    end
    object cmCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 155
      OnClick = cmCancelarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmImpRecibo: TdxBarLargeButton
      Caption = 'Emitir Recibo'
      Category = 0
      Hint = 'Emitir Recibo'
      Visible = ivAlways
      LargeImageIndex = 134
      OnClick = cmImpReciboClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Configurar'
      Category = 0
      Hint = 'Configurar'
      Visible = ivAlways
    end
    object cmVendaCaixa: TdxBarLargeButton
      Caption = 'Venda Caixa (F3)'
      Category = 0
      Hint = 'Venda Caixa (F3)'
      Visible = ivAlways
      LargeImageIndex = 9
      ShortCut = 114
      OnClick = cmVendaCaixaClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmFiltro: TdxBarSubItem
      Align = iaRight
      Caption = 'Exibir: Vendas do caixa atual'
      Category = 0
      Style = cxStyle6
      Visible = ivAlways
      ItemLinks = <>
    end
    object cmSoCaixaAtual: TdxBarButton
      Caption = 'Vendas do caixa atual'
      Category = 0
      Hint = 'Vendas do caixa atual'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = cmSoCaixaAtualClick
    end
    object cmTodosCaixas: TdxBarButton
      Caption = 'Todas vendas'
      Category = 0
      Hint = 'Todas vendas'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = cmSoCaixaAtualClick
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'Vendas'
      Category = 0
      Hint = 'Vendas'
      Style = cxStyle8
      Visible = ivAlways
    end
    object cmPagamento: TdxBarLargeButton
      Caption = 'Pagar / Concluir (F2)'
      Category = 0
      Hint = 'Pagar / Concluir (F2)'
      Visible = ivAlways
      LargeImageIndex = 137
      OnClick = cmPagamentoClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmSoPendente: TdxBarButton
      Caption = 'Apenas vendas Pendentes'
      Category = 0
      Hint = 'Apenas vendas Pendentes'
      Visible = ivNever
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = cmSoCaixaAtualClick
    end
    object cmCancelados: TdxBarButton
      Caption = 'Mostrar vendas canceladas'
      Category = 0
      Hint = 'Mostrar vendas canceladas'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = cmCanceladosClick
    end
    object cmDevolucao: TdxBarLargeButton
      Caption = 'Troca ou Devolu'#231#227'o'
      Category = 0
      Hint = 'Troca ou Devolu'#231#227'o'
      Visible = ivAlways
      LargeImageIndex = 154
      OnClick = cmDevolucaoClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Enabled = False
      Hint = 'New Button'
      Visible = ivAlways
      Height = 32
      ShowCaption = False
    end
    object cmDanfe: TdxBarLargeButton
      Caption = 'Imprimir Danfce'
      Category = 0
      Hint = 'Imprimir Danfce'
      Visible = ivAlways
      LargeImageIndex = 168
      OnClick = cmDanfeClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmReenviaRej: TdxBarLargeButton
      Caption = 'Emitir Novamente'
      Category = 0
      Hint = 'Emitir Novamente'
      Visible = ivAlways
      LargeImageIndex = 171
      OnClick = cmReenviaRejClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object cmPagtoRej: TdxBarLargeButton
      Caption = 'Meio de Pagamento - F2'
      Category = 0
      Hint = 'Meio de Pagamento - F2'
      Visible = ivAlways
      LargeImageIndex = 137
      OnClick = cmPagtoRejClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Grid = Grid
    Left = 152
    Top = 217
  end
  inherited CP: TdxComponentPrinter
    Left = 72
    Top = 146
  end
  inherited dlgExp: TSaveDialog
    Left = 32
  end
  inherited pmLay: TdxBarPopupMenu
    Left = 168
    Top = 154
  end
  inherited pmPeriodo: TdxBarPopupMenu
    Left = 112
    Top = 148
  end
  object dsTab: TDataSource
    DataSet = Tab
    Left = 86
    Top = 331
  end
  object Tab: TnxTable
    Database = Dados.db
    Filter = '(PagPend=False)'
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    FlipOrder = True
    OnCalcFields = TabCalcFields
    OnFilterRecord = TabFilterRecord
    TableName = 'Tran'
    IndexName = 'ICaixaID'
    Left = 80
    Top = 283
    object TabID: TAutoIncField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object TabDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object TabFunc: TStringField
      FieldName = 'Func'
    end
    object TabTotal: TCurrencyField
      FieldName = 'Total'
    end
    object TabDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object TabPago: TCurrencyField
      FieldName = 'Pago'
    end
    object TabObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object TabCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object TabCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object TabCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object TabMaq: TWordField
      FieldName = 'Maq'
    end
    object TabTotalFinal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalFinal'
      Calculated = True
    end
    object TabNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object TabDescr: TStringField
      FieldName = 'Descr'
      Size = 100
    end
    object TabDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object TabQtdTempo: TFloatField
      FieldName = 'QtdTempo'
    end
    object TabCredValor: TBooleanField
      FieldName = 'CredValor'
    end
    object TabFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object TabImg: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'Img'
      Calculated = True
    end
    object TabTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object TabDebitoAnt: TCurrencyField
      FieldName = 'DebitoAnt'
    end
    object TabDebitoPago: TCurrencyField
      FieldName = 'DebitoPago'
    end
    object TabCreditoAnt: TCurrencyField
      FieldName = 'CreditoAnt'
    end
    object TabCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object TabCreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object TabTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object TabPagFunc: TStringField
      FieldName = 'PagFunc'
    end
    object TabPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object TabDescPerc: TFloatField
      FieldName = 'DescPerc'
    end
    object TabDescPorPerc: TBooleanField
      FieldName = 'DescPorPerc'
    end
    object TabPagEsp: TWordField
      FieldName = 'PagEsp'
    end
    object TabNomePagEsp: TStringField
      FieldKind = fkLookup
      FieldName = 'NomePagEsp'
      LookupDataSet = Dados.mtEsp
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'PagEsp'
      Size = 40
      Lookup = True
    end
    object TabUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object TabCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object TabTipo: TByteField
      FieldName = 'Tipo'
    end
    object TabCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object TabCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object TabSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object TabUID_ref: TGuidField
      FieldName = 'UID_ref'
      Size = 38
    end
    object TabIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object TabOpDevValor: TByteField
      FieldName = 'OpDevValor'
    end
    object TabStatusNFE: TByteField
      FieldName = 'StatusNFE'
    end
    object TabChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object TabTipoNFE: TByteField
      FieldName = 'TipoNFE'
    end
    object TabAmbNFe: TByteField
      FieldName = 'AmbNFe'
    end
    object TabStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object TabExtra: TnxMemoField
      FieldName = 'Extra'
      BlobType = ftMemo
    end
    object TabRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 280
    Top = 160
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clRed
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsStrikeOut]
      TextColor = clRed
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 5066061
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clGreen
      TextColor = 4210752
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 4934475
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clHighlight
      TextColor = clWhite
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clGray
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      TextColor = 3361996
    end
  end
  object tbME: TnxTable
    Database = Dados.db
    TableName = 'MovEst'
    IndexName = 'ICaixaMov'
    Left = 160
    Top = 280
    object tbMEID: TAutoIncField
      FieldName = 'ID'
    end
    object tbMEQuant: TFloatField
      FieldName = 'Quant'
    end
    object tbMEUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tbMETotal: TCurrencyField
      FieldName = 'Total'
    end
    object tbMECustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object tbMEDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tbMEPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tbMEPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tbMEDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tbMEDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tbMEEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tbMECancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tbMEEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object tbMECategoria: TStringField
      FieldName = 'Categoria'
    end
    object tbMENaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tbMEITran: TIntegerField
      FieldName = 'ITran'
    end
    object tbMEPermSemEstoque: TBooleanField
      FieldName = 'PermSemEstoque'
    end
    object tbMEFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tbMEFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tbMEComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tbMEComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tbMEComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tbMETran: TLongWordField
      FieldName = 'Tran'
    end
    object tbMEAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tbMECliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tbMECaixa: TIntegerField
      FieldName = 'Caixa'
    end
    object tbMETipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tbMESessao: TIntegerField
      FieldName = 'Sessao'
    end
    object tbMEProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tbMEItem: TByteField
      FieldName = 'Item'
    end
    object tbMEID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object tbMEIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
  end
  object dckMgr: TdxDockingManager
    AutoHideInterval = 0
    AutoHideMovingInterval = 0
    AutoShowInterval = 50
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
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    Options = [doActivateAfterDocking, doDblClickDocking, doFloatingOnTop, doTabContainerHasCaption, doTabContainerCanAutoHide, doSideContainerHasCaption, doSideContainerCanAutoHide, doTabContainerCanInSideContainer, doImmediatelyHideOnAutoHide, doHideAutoHideIfActive, doRedrawOnResize]
    Left = 72
    Top = 208
    PixelsPerInch = 96
  end
  object tPend: TnxTable
    Database = Dados.db
    FilterOptions = [foCaseInsensitive]
    FlipOrder = True
    OnCalcFields = tPendCalcFields
    TableName = 'Tran'
    IndexName = 'IPagPendID'
    Left = 120
    Top = 283
    object tPendID: TAutoIncField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object tPendDataHora: TDateTimeField
      FieldName = 'DataHora'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object tPendFunc: TStringField
      FieldName = 'Func'
    end
    object tPendTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tPendDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tPendTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tPendPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tPendDebitoAnt: TCurrencyField
      FieldName = 'DebitoAnt'
    end
    object tPendDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tPendDebitoPago: TCurrencyField
      FieldName = 'DebitoPago'
    end
    object tPendCreditoAnt: TCurrencyField
      FieldName = 'CreditoAnt'
    end
    object tPendCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object tPendCreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object tPendTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object tPendObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tPendCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tPendCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tPendCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tPendMaq: TWordField
      FieldName = 'Maq'
    end
    object tPendNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tPendDescr: TStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tPendQtdTempo: TFloatField
      FieldName = 'QtdTempo'
    end
    object tPendCredValor: TBooleanField
      FieldName = 'CredValor'
    end
    object tPendFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tPendPagFunc: TStringField
      FieldName = 'PagFunc'
    end
    object tPendPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tPendTotalFinal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalFinal'
      Calculated = True
    end
    object tPendNomeFunc: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFunc'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Func'
      Size = 40
      Lookup = True
    end
    object tPendDescPerc: TFloatField
      FieldName = 'DescPerc'
    end
    object tPendDescPorPerc: TBooleanField
      FieldName = 'DescPorPerc'
    end
    object tPendUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tPendPagEsp: TWordField
      FieldName = 'PagEsp'
    end
    object tPendCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tPendTipo: TByteField
      FieldName = 'Tipo'
    end
    object tPendCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tPendSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tPendCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object tPendUID_ref: TGuidField
      FieldName = 'UID_ref'
      Size = 38
    end
    object tPendIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tPendOpDevValor: TByteField
      FieldName = 'OpDevValor'
    end
    object tPendStatusNFE: TByteField
      FieldName = 'StatusNFE'
    end
    object tPendChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object tPendTipoNFE: TByteField
      FieldName = 'TipoNFE'
    end
    object tPendAmbNFe: TByteField
      FieldName = 'AmbNFe'
    end
    object tPendStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object tPendExtra: TnxMemoField
      FieldName = 'Extra'
      BlobType = ftMemo
    end
    object tPendRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object dsPend: TDataSource
    DataSet = tPend
    Left = 120
    Top = 336
  end
  object pmExibir: TdxBarPopupMenu
    BarManager = BarMgr
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'cmSoCaixaAtual'
      end
      item
        Visible = True
        ItemName = 'cmTodosCaixas'
      end
      item
        Visible = True
        ItemName = 'cmSoPendente'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'cmCancelados'
      end>
    UseOwnFont = True
    Left = 416
    Top = 176
  end
  object tRej: TnxTable
    Database = Dados.db
    OnCalcFields = tRejCalcFields
    TableName = 'Tran'
    IndexName = 'ICanceladoStatusNFE'
    Left = 537
    Top = 198
    object tRejID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tRejUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tRejUID_ref: TGuidField
      FieldName = 'UID_ref'
      Size = 38
    end
    object tRejStatusNFE: TByteField
      FieldName = 'StatusNFE'
    end
    object tRejChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object tRejTipoNFE: TByteField
      FieldName = 'TipoNFE'
    end
    object tRejDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tRejIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tRejCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tRejTipo: TByteField
      FieldName = 'Tipo'
    end
    object tRejOpDevValor: TByteField
      FieldName = 'OpDevValor'
    end
    object tRejFunc: TStringField
      FieldName = 'Func'
    end
    object tRejTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tRejDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tRejDescPerc: TFloatField
      FieldName = 'DescPerc'
    end
    object tRejDescPorPerc: TBooleanField
      FieldName = 'DescPorPerc'
    end
    object tRejTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tRejPagEsp: TWordField
      FieldName = 'PagEsp'
    end
    object tRejPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tRejDebitoAnt: TCurrencyField
      FieldName = 'DebitoAnt'
    end
    object tRejDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tRejDebitoPago: TCurrencyField
      FieldName = 'DebitoPago'
    end
    object tRejCreditoAnt: TCurrencyField
      FieldName = 'CreditoAnt'
    end
    object tRejCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object tRejCreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object tRejTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object tRejObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tRejCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tRejCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tRejCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tRejCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tRejCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object tRejMaq: TWordField
      FieldName = 'Maq'
    end
    object tRejNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tRejSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tRejDescr: TStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tRejQtdTempo: TFloatField
      FieldName = 'QtdTempo'
    end
    object tRejCredValor: TBooleanField
      FieldName = 'CredValor'
    end
    object tRejFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tRejExtra: TnxMemoField
      FieldName = 'Extra'
      BlobType = ftMemo
    end
    object tRejPagFunc: TStringField
      FieldName = 'PagFunc'
    end
    object tRejPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tRejRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tRejMsgRej: TStringField
      FieldKind = fkLookup
      FieldName = 'MsgRej'
      LookupDataSet = Dados.tbNFE
      LookupKeyFields = 'Chave'
      LookupResultField = 'xMotivo'
      KeyFields = 'ChaveNFE'
      Size = 500
      Lookup = True
    end
    object tRejNomeFunc: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFunc'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Func'
      Size = 40
      Lookup = True
    end
    object tRejDadosCli: TStringField
      FieldKind = fkCalculated
      FieldName = 'DadosCli'
      Size = 200
      Calculated = True
    end
    object tRejAmbNFe: TByteField
      Alignment = taLeftJustify
      FieldName = 'AmbNFe'
    end
    object tRejStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
  end
  object tCont: TnxTable
    Database = Dados.db
    TableName = 'Tran'
    IndexName = 'ICanceladoStatusNFE'
    Left = 633
    Top = 174
    object tContID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tContUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tContUID_ref: TGuidField
      FieldName = 'UID_ref'
      Size = 38
    end
    object tContStatusNFE: TByteField
      FieldName = 'StatusNFE'
    end
    object tContChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object tContTipoNFE: TByteField
      FieldName = 'TipoNFE'
    end
    object tContDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tContIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tContCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tContTipo: TByteField
      FieldName = 'Tipo'
    end
    object tContOpDevValor: TByteField
      FieldName = 'OpDevValor'
    end
    object tContFunc: TStringField
      FieldName = 'Func'
    end
    object tContTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tContDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tContDescPerc: TFloatField
      FieldName = 'DescPerc'
    end
    object tContDescPorPerc: TBooleanField
      FieldName = 'DescPorPerc'
    end
    object tContTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tContPagEsp: TWordField
      FieldName = 'PagEsp'
    end
    object tContPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tContDebitoAnt: TCurrencyField
      FieldName = 'DebitoAnt'
    end
    object tContDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tContDebitoPago: TCurrencyField
      FieldName = 'DebitoPago'
    end
    object tContCreditoAnt: TCurrencyField
      FieldName = 'CreditoAnt'
    end
    object tContCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object tContCreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object tContTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object tContObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tContCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tContCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tContCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tContCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tContCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object tContMaq: TWordField
      FieldName = 'Maq'
    end
    object tContNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tContSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tContDescr: TStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tContQtdTempo: TFloatField
      FieldName = 'QtdTempo'
    end
    object tContCredValor: TBooleanField
      FieldName = 'CredValor'
    end
    object tContFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tContExtra: TnxMemoField
      FieldName = 'Extra'
      BlobType = ftMemo
    end
    object tContPagFunc: TStringField
      FieldName = 'PagFunc'
    end
    object tContPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tContNomeFunc: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFunc'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Func'
      Size = 40
      Lookup = True
    end
    object tContRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tContAmbNFe: TByteField
      Alignment = taLeftJustify
      FieldName = 'AmbNFe'
    end
    object tContStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
  end
  object dsCont: TDataSource
    DataSet = tCont
    Left = 697
    Top = 174
  end
  object dsRej: TDataSource
    DataSet = tRej
    Left = 569
    Top = 270
  end
end
