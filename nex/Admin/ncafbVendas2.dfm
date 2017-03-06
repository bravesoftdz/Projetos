inherited fbVendas2: TfbVendas2
  Caption = 'Vendas'
  ClientHeight = 553
  ClientWidth = 1008
  Font.Height = -13
  Font.Name = 'Segoe UI'
  OnDestroy = FrmBasePaiDestroy
  ExplicitWidth = 1024
  ExplicitHeight = 592
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    Width = 1008
    Height = 553
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ExplicitWidth = 1008
    ExplicitHeight = 553
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 1008
      Height = 44
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitWidth = 1008
      ExplicitHeight = 44
    end
    object Paginas: TcxPageControl
      Left = 0
      Top = 44
      Width = 1008
      Height = 509
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
      ClientRectBottom = 508
      ClientRectLeft = 1
      ClientRectRight = 1007
      ClientRectTop = 34
      object tsVendas: TcxTabSheet
        Cursor = crHandPoint
        Caption = 'Vendas do caixa atual'
        object Shape1: TShape
          Left = 464
          Top = 184
          Width = 65
          Height = 65
        end
        object Shape2: TShape
          Left = 80
          Top = 162
          Width = 65
          Height = 65
        end
        object bdcVendas: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1006
          Height = 22
          Align = dalTop
          BarManager = BarMgr
          SunkenBorder = False
          UseOwnSunkenBorder = True
        end
        object pgModo: TcxPageControl
          Left = 0
          Top = 22
          Width = 793
          Height = 452
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Properties.ActivePage = tsDetalhado
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 448
          ClientRectLeft = 4
          ClientRectRight = 789
          ClientRectTop = 24
          object tsResumido: TcxTabSheet
            Caption = 'Modo Resumido'
            ImageIndex = 0
            object Grid: TcxGrid
              Left = 0
              Top = 0
              Width = 785
              Height = 424
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
              Images = dmImagens.im16
              ParentFont = False
              TabOrder = 0
              OnResize = GridResize
              LevelTabs.CaptionAlignment = taLeftJustify
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              object TV: TcxGridDBTableView
                OnDblClick = cmEditarClick
                OnMouseMove = TVMouseMove
                OnMouseUp = TVMouseUp
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
                FindPanel.InfoText = 'Localizar venda'
                FindPanel.ShowClearButton = False
                FindPanel.ShowFindButton = False
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
                DateTimeHandling.IgnoreTimeForFiltering = True
                DateTimeHandling.MonthFormat = 'mm'
                DateTimeHandling.YearFormat = 'yyyy'
                DateTimeHandling.DateFormat = 'dd/mm/yyyy'
                DateTimeHandling.Grouping = dtgByDate
                DateTimeHandling.HourFormat = 'hh:mm:ss'
                Filtering.ColumnPopup.MaxDropDownItemCount = 12
                Images = dmImagens.im16
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
                OptionsView.CellEndEllipsis = True
                OptionsView.NoDataToDisplayInfoText = '<Ainda n'#227'o foi realizada nenhuma venda>'
                OptionsView.CellAutoHeight = True
                OptionsView.GridLineColor = 15066597
                OptionsView.GroupFooters = gfVisibleWhenExpanded
                OptionsView.HeaderFilterButtonShowMode = fbmButton
                OptionsView.HeaderHeight = 22
                Preview.MaxLineCount = 0
                Styles.Header = FrmPri.cxsHeader
                OnCustomDrawColumnHeader = tvPendCustomDrawColumnHeader
                object TVStatusNF: TcxGridDBColumn
                  Caption = 'NF'
                  DataBinding.FieldName = 'StatusNFE'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Images = dmImagens.im16
                  Properties.ImmediateDropDownWhenActivated = True
                  Properties.ImmediatePost = True
                  Properties.ImmediateUpdateText = True
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
                      Description = 'Consultando'
                      ImageIndex = 104
                      Value = 30
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
                object TVTipoNFE: TcxGridDBColumn
                  AlternateCaption = 'Tipo de nota fiscal'
                  Caption = 'T.NF'
                  DataBinding.FieldName = 'TipoNFE'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.ImmediateDropDownWhenActivated = True
                  Properties.ImmediatePost = True
                  Properties.ImmediateUpdateText = True
                  Properties.Items = <
                    item
                      ImageIndex = 0
                      Value = 0
                    end
                    item
                      Description = 'NFCe'
                      Value = 1
                    end
                    item
                      Description = 'SAT'
                      Value = 2
                    end
                    item
                      Description = 'NFe'
                      Value = 3
                    end>
                  HeaderAlignmentHorz = taCenter
                  HeaderHint = 'Tipo de nota fiscal'
                  Width = 42
                end
                object TVEntrega: TcxGridDBColumn
                  AlternateCaption = 'Entregar'
                  Caption = 'Ent'
                  DataBinding.FieldName = 'Entregar'
                  RepositoryItem = Dados.erEntregar
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  HeaderHint = 'Entregar'
                  Width = 32
                end
                object TVTipo: TcxGridDBColumn
                  DataBinding.FieldName = 'Tipo'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Alignment.Vert = taTopJustify
                  Properties.ImmediateDropDownWhenActivated = True
                  Properties.ImmediatePost = True
                  Properties.ImmediateUpdateText = True
                  Properties.Items = <
                    item
                      Description = 'Venda'
                      ImageIndex = 0
                      Value = 4
                    end
                    item
                      Description = 'Devolu'#231#227'o'
                      Value = 18
                    end>
                  HeaderAlignmentHorz = taCenter
                  MinWidth = 16
                  Styles.OnGetContentStyle = TVDebitoStylesGetContentStyle
                  Width = 86
                end
                object TVID: TcxGridDBColumn
                  Caption = 'N'#250'mero'
                  DataBinding.FieldName = 'ID'
                  PropertiesClassName = 'TcxSpinEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taTopJustify
                  HeaderAlignmentHorz = taCenter
                  Width = 55
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
                  Properties.Alignment.Vert = taTopJustify
                  Properties.ImmediateDropDownWhenActivated = True
                  Properties.ImmediateDropDownWhenKeyPressed = True
                  Properties.ImmediatePost = True
                  Properties.SaveTime = False
                  Properties.ShowTime = False
                  DateTimeGrouping = dtgByDate
                  HeaderAlignmentHorz = taCenter
                  Width = 97
                end
                object TVInicio: TcxGridDBColumn
                  Caption = 'Hora'
                  DataBinding.FieldName = 'DataHora'
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taTopJustify
                  Properties.ReadOnly = False
                  Properties.TimeFormat = tfHourMin
                  DateTimeGrouping = dtgByHour
                  HeaderAlignmentHorz = taCenter
                  Options.Filtering = False
                  Width = 45
                end
                object TVDescr: TcxGridDBColumn
                  Caption = 'Itens'
                  DataBinding.FieldName = 'Descricao'
                  PropertiesClassName = 'TcxMemoProperties'
                  Properties.WordWrap = False
                  OnCustomDrawCell = TVDescrCustomDrawCell
                  OnGetDisplayText = TVDescrGetDisplayText
                  OnGetProperties = TVDescrGetProperties
                  HeaderGlyphAlignmentHorz = taRightJustify
                  Options.Filtering = False
                  Options.Grouping = False
                  Styles.OnGetContentStyle = TVDebitoStylesGetContentStyle
                  Width = 213
                end
                object TVNome: TcxGridDBColumn
                  Caption = 'Cliente'
                  DataBinding.FieldName = 'NomeCliente'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Vert = taTopJustify
                  Options.EditAutoHeight = ieahNone
                  Styles.Content = cxStyle18
                  Width = 143
                end
                object TVTotalFinal: TcxGridDBColumn
                  Caption = 'Total'
                  DataBinding.FieldName = 'TotalFinal'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Vert = taTopJustify
                  OnCustomDrawCell = TVTotalFinalCustomDrawCell
                  OnGetDisplayText = TVTotalFinalGetDisplayText
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  Styles.Content = cxStyle15
                  Width = 104
                end
                object TVObs: TcxGridDBColumn
                  Caption = 'Observa'#231#245'es'
                  DataBinding.FieldName = 'Obs'
                  PropertiesClassName = 'TcxMemoProperties'
                  Styles.Content = FrmPri.cxStyle52
                  Width = 164
                end
                object TVVendedor: TcxGridDBColumn
                  Caption = 'Vendedor'
                  DataBinding.FieldName = 'NomeVendedor'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.Alignment.Vert = taTopJustify
                  Properties.KeyFieldNames = 'Username'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Nome'
                    end>
                  MinWidth = 40
                  Width = 148
                end
                object TVTotal: TcxGridDBColumn
                  Caption = 'Subtotal'
                  DataBinding.FieldName = 'Total'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  OnGetDisplayText = TVTotalGetDisplayText
                  HeaderAlignmentHorz = taCenter
                  Styles.OnGetContentStyle = TVDebitoStylesGetContentStyle
                  Width = 72
                end
                object TVDesconto: TcxGridDBColumn
                  DataBinding.FieldName = 'Desconto'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Alignment.Vert = taTopJustify
                  Properties.Nullable = False
                  Properties.ReadOnly = False
                  OnGetDisplayText = TVTotalGetDisplayText
                  HeaderAlignmentHorz = taCenter
                  Styles.Content = cxStyle12
                  Styles.OnGetContentStyle = TVDebitoStylesGetContentStyle
                  Width = 75
                end
                object TVSubTotal: TcxGridDBColumn
                  Caption = 'Subtotal'
                  DataBinding.FieldName = 'Total'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                end
                object TVtax_total: TcxGridDBColumn
                  Caption = 'Tributa'#231#227'o'
                  DataBinding.FieldName = 'tax_incluir'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                end
                object TVPago: TcxGridDBColumn
                  Caption = 'Valor Pago'
                  DataBinding.FieldName = 'Pago'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Vert = taTopJustify
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
                  Properties.Alignment.Vert = taTopJustify
                  Properties.ImmediateDropDownWhenActivated = True
                  Properties.ImmediatePost = True
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Nome'
                    end>
                  HeaderAlignmentHorz = taCenter
                  Options.EditAutoHeight = ieahNone
                  Styles.Content = cxStyle17
                  Width = 135
                end
                object TVCredUsado: TcxGridDBColumn
                  Caption = 'Cr'#233'dito Usado'
                  DataBinding.FieldName = 'CreditoUsado'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Vert = taTopJustify
                  OnGetDisplayText = TVTotalGetDisplayText
                  HeaderAlignmentHorz = taCenter
                  Width = 94
                end
                object TVDebito: TcxGridDBColumn
                  Caption = 'Debitado'
                  DataBinding.FieldName = 'Debito'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Vert = taTopJustify
                  OnCustomDrawCell = TVDescontoCustomDrawCell
                  OnGetDisplayText = TVTotalGetDisplayText
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  Styles.Content = cxStyle12
                  Styles.OnGetContentStyle = TVDebitoStylesGetContentStyle
                  Width = 87
                end
                object TVTroco: TcxGridDBColumn
                  DataBinding.FieldName = 'Troco'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Vert = taTopJustify
                  OnGetDisplayText = TVTotalGetDisplayText
                  HeaderAlignmentHorz = taCenter
                  Width = 89
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
                object TVFrete: TcxGridDBColumn
                  Caption = 'Tx.Ent/Frete'
                  DataBinding.FieldName = 'Frete'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Vert = taTopJustify
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 81
                end
                object TVTransp: TcxGridDBColumn
                  Caption = 'Transp/Entregador'
                  DataBinding.FieldName = 'NomeTransp'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Nome'
                    end>
                  Width = 197
                end
                object TVCancelado: TcxGridDBColumn
                  DataBinding.FieldName = 'Cancelado'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taTopJustify
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
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Vert = taTopJustify
                  HeaderAlignmentHorz = taCenter
                  Width = 96
                end
                object TVCanceladoEm: TcxGridDBColumn
                  Caption = 'Cancelado Em'
                  DataBinding.FieldName = 'CanceladoEm'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.Alignment.Vert = taTopJustify
                  HeaderAlignmentHorz = taCenter
                end
                object TVCredito: TcxGridDBColumn
                  Caption = 'Creditado'
                  DataBinding.FieldName = 'Credito'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Vert = taTopJustify
                  HeaderAlignmentHorz = taCenter
                end
                object TVPagPend: TcxGridDBColumn
                  DataBinding.FieldName = 'PagPend'
                  Visible = False
                  VisibleForCustomization = False
                end
                object TVids_pagto: TcxGridDBColumn
                  DataBinding.FieldName = 'ids_pagto'
                  Visible = False
                  VisibleForCustomization = False
                end
                object TVNomeFunc: TcxGridDBColumn
                  Caption = 'Funcion'#225'rio'
                  DataBinding.FieldName = 'NomeFunc'
                  PropertiesClassName = 'TcxMaskEditProperties'
                  Properties.Alignment.Vert = taTopJustify
                  Styles.Content = cxStyle17
                  Width = 129
                end
              end
              object GL: TcxGridLevel
                Caption = 'Vendas'
                GridView = TV
                Options.DetailTabsPosition = dtpTop
              end
            end
          end
          object tsDetalhado: TcxTabSheet
            Caption = 'Modo Detalhado'
            ImageIndex = 1
            object gridDet: TcxGrid
              Left = 0
              Top = 0
              Width = 785
              Height = 424
              Align = alClient
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              object tvDet: TcxGridDBTableView
                OnDblClick = cmEditarClick
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.First.Visible = True
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Post.Visible = False
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Buttons.SaveBookmark.Enabled = False
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.Visible = False
                Navigator.InfoPanel.Width = 100
                Navigator.Visible = True
                OnFocusedRecordChanged = TVFocusedRecordChanged
                DataController.DataModeController.GridMode = True
                DataController.DataSource = dsMovEst
                DataController.Filter.MaxValueListCount = 1000
                DataController.Filter.Options = [fcoCaseInsensitive]
                DataController.Filter.OnChanged = tvDetDataControllerFilterChanged
                DataController.Filter.Active = True
                DataController.Filter.AutoDataSetFilter = True
                DataController.Filter.DateTimeFormat = 'yyyy-mm-dd hh:mm:ss'
                DataController.Filter.SupportedLike = False
                DataController.Filter.OnFormatFilterTextValue = tvDetDataControllerFilterFormatFilterTextValue
                DataController.KeyFieldNames = 'ID'
                DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                DataController.Summary.DefaultGroupSummaryItems = <
                  item
                    Format = '0.0'
                    Kind = skSum
                    Position = spFooter
                    Column = TVQuantFator
                  end
                  item
                    Format = '0.0'
                    Kind = skSum
                    Column = TVQuantFator
                  end>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '0.0'
                    Kind = skSum
                    Column = TVQuantFator
                  end>
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
                DateTimeHandling.DateFormat = 'yyyy-mm-dd'
                DateTimeHandling.Grouping = dtgByDate
                DateTimeHandling.HourFormat = 'hh'
                Filtering.ColumnPopup.MaxDropDownItemCount = 12
                OptionsBehavior.IncSearch = True
                OptionsBehavior.IncSearchItem = tvDetDescr
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsSelection.HideFocusRectOnExit = False
                OptionsSelection.UnselectFocusedRecordOnExit = False
                OptionsView.NoDataToDisplayInfoText = '<nenhuma transa'#231#227'o>'
                OptionsView.GridLineColor = 15000804
                OptionsView.GroupFooters = gfVisibleWhenExpanded
                OptionsView.HeaderHeight = 22
                Preview.Column = tvDetOBS
                Preview.MaxLineCount = 0
                Styles.Header = FrmPri.cxsHeader
                OnCustomDrawColumnHeader = tvPendCustomDrawColumnHeader
                object tvDetStatusNFE: TcxGridDBColumn
                  Caption = 'NF'
                  DataBinding.FieldName = 'StatusNFE'
                  RepositoryItem = Dados.erStatusNFE
                  OnGetDisplayText = tvDetStatusNFEGetDisplayText
                  OnGetProperties = tvDetStatusNFEGetProperties
                  HeaderAlignmentHorz = taCenter
                  Options.Filtering = False
                  Options.CellMerging = True
                  Width = 44
                  OnCompareRowValuesForCellMerging = tvDetStatusNFECompareRowValuesForCellMerging
                end
                object tvDetEntregar: TcxGridDBColumn
                  AlternateCaption = 'Entregar'
                  Caption = 'Ent'
                  DataBinding.FieldName = 'Entregar'
                  RepositoryItem = Dados.erEntregar
                  HeaderAlignmentHorz = taCenter
                  Options.Filtering = False
                  Options.CellMerging = True
                  Width = 32
                  OnCompareRowValuesForCellMerging = tvDetStatusNFECompareRowValuesForCellMerging
                end
                object TVFidResgate: TcxGridDBColumn
                  AlternateCaption = 'Resgate de pr'#234'mio fidelidade'
                  DataBinding.FieldName = 'FidResgate'
                  RepositoryItem = Dados.erFidelidade
                  Visible = False
                  HeaderGlyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000098CD290085BBA70082B7E7007EB3ED0078
                    ABBA007DB5450000000000000000000000000000000000000000000000000000
                    0000000000000000000000AAE248069CCEF42AC6EAFF4BE5FFFF4BE5FFFF0EB3
                    E1FF0084B8FD0083BD6E00000000000000000000000000000000000000000000
                    00000000000000B6F81B08A7D7F14DE9FFFF34CAECFF25B3DAFF20ADD6FF52CA
                    E1FF36DCFDFF007FB5FB0089C12A000000000000000000000000000000000000
                    00000000000000B3EA7F39D2F3FF1DC3EDFF2BC0E5FF4BE6FFFF32DFFFFF18AC
                    D7FF2FB1D4FF08ABDBFF0083BA87000000000000000000000000000000000000
                    00000000000000B9F2AC43DFFCFF2AD7FEFF43D6F3FF57EAFFFF42E4FFFF1CC1
                    EBFF73ECF9FF20C5EDFF0085BFAB000000000000000000000000000000000000
                    00000000000000BFF89F42DEFBFF10C6F3FF4EDCF5FF68EFFFFF52E9FFFF24C6
                    EDFF28B1D7FF1CC0EAFF008DC794000000000000000000000000000000000000
                    00000000000000C8FC5532D1F2FF26DBFFFF15CBF7FF45D7F5FF34CFF2FF36CC
                    EFFF5FF2FFFF03A0D1FE009DD742000000000000000000000000000000000000
                    0000000000000089FF0200BEEDB941DAF7FF2ED9FEFF28D7FEFF37DCFEFF45DE
                    FBFF18B8E2FF00A3D8A000000000000000000000000000000000000000000000
                    0000000000000000000000CAFF0A00BFF79B0DC8F7FA26D2FAFF20CCF6FF00B2
                    E8ED00A8E37C0058BF0300000000000000000000000000000000000000000000
                    0000000000000000000000000000A8615D3982585ACF646871FF665662FF8130
                    39D7256C0E500000000000000000000000000000000000000000000000000000
                    00000000000000000000B67F7F48A36E6DF9BE7876FFC47378FF5D8F47FF0D96
                    15FF0E7A15FE088A185E00000000000000000000000000000000000000000000
                    000000000000C1C9C903B07B7AE1DA8786FFD58183FFAA8670FF07B529FF11AD
                    25FF0B9B16FF0B7F17EB00680008000000000000000000000000000000000000
                    000000000000CA909031CB8C89FFF39091FFE9888BFF939A6BFF12BA38FF18B3
                    31FF14B129FF0B8516FF0F901D3A000000000000000000000000000000000000
                    000000000000D59E9E23C28F8EECBB8986F9B57F7EF8A07B71F5339F48F31BA1
                    3AF1189B32F1149229DA108D2021000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.ShowCaption = False
                  Width = 23
                  IsCaptionAssigned = True
                end
                object TVCaixa: TcxGridDBColumn
                  DataBinding.FieldName = 'Caixa'
                  PropertiesClassName = 'TcxSpinEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.ImmediatePost = True
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  VisibleForCustomization = False
                  Width = 51
                end
                object tvDetTipoTran: TcxGridDBColumn
                  Caption = 'Tipo'
                  DataBinding.FieldName = 'TipoTran'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Alignment.Vert = taTopJustify
                  Properties.ImmediateDropDownWhenActivated = True
                  Properties.ImmediatePost = True
                  Properties.Items = <
                    item
                      Description = 'Venda'
                      ImageIndex = 0
                      Value = 4
                    end
                    item
                      Description = 'Devolu'#231#227'o'
                      Value = 18
                    end>
                  HeaderAlignmentHorz = taCenter
                  MinWidth = 16
                  Options.CellMerging = True
                  Styles.OnGetContentStyle = tvDetDescrStylesGetContentStyle
                  Width = 86
                  OnCompareRowValuesForCellMerging = tvDetStatusNFECompareRowValuesForCellMerging
                end
                object TVTran: TcxGridDBColumn
                  Caption = 'N'#250'mero'
                  DataBinding.FieldName = 'Tran'
                  PropertiesClassName = 'TcxSpinEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taTopJustify
                  Properties.ImmediatePost = True
                  HeaderAlignmentHorz = taCenter
                  Options.CellMerging = True
                  Width = 55
                  OnCompareRowValuesForCellMerging = tvDetStatusNFECompareRowValuesForCellMerging
                end
                object TVDataMov: TcxGridDBColumn
                  Caption = 'Data'
                  DataBinding.FieldName = 'DataHora'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taTopJustify
                  Properties.AssignedValues.DisplayFormat = True
                  Properties.DateButtons = [btnClear, btnToday]
                  Properties.DateOnError = deToday
                  Properties.ImmediateDropDownWhenActivated = True
                  Properties.ImmediateDropDownWhenKeyPressed = True
                  Properties.ImmediatePost = True
                  Properties.ShowTime = False
                  Properties.View = cavClassic
                  DateTimeGrouping = dtgByDate
                  HeaderAlignmentHorz = taCenter
                  Options.IgnoreTimeForFiltering = False
                  Options.CellMerging = True
                  Width = 97
                  OnCompareRowValuesForCellMerging = tvDetStatusNFECompareRowValuesForCellMerging
                end
                object tvDetHora: TcxGridDBColumn
                  Caption = 'Hora'
                  DataBinding.FieldName = 'DataHora'
                  PropertiesClassName = 'TcxTimeEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taTopJustify
                  Properties.TimeFormat = tfHourMin
                  DateTimeGrouping = dtgByHour
                  HeaderAlignmentHorz = taCenter
                  Options.CellMerging = True
                  Width = 45
                  OnCompareRowValuesForCellMerging = tvDetStatusNFECompareRowValuesForCellMerging
                end
                object TVCliente: TcxGridDBColumn
                  Caption = 'Cliente'
                  DataBinding.FieldName = 'NomeCliente'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Vert = taTopJustify
                  Options.Filtering = False
                  Options.CellMerging = True
                  Styles.Content = cxStyle18
                  Width = 140
                  OnCompareRowValuesForCellMerging = tvDetStatusNFECompareRowValuesForCellMerging
                end
                object tvDetDescr: TcxGridDBColumn
                  Caption = 'Produto'
                  DataBinding.FieldName = 'NomeProd'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.ImmediateDropDownWhenActivated = True
                  Properties.ImmediatePost = True
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Descricao'
                    end>
                  Properties.ListOptions.CaseInsensitive = True
                  OnGetDisplayText = tvDetDescrGetDisplayText
                  Styles.Content = FrmPri.cxStyle56
                  Styles.OnGetContentStyle = tvDetDescrStylesGetContentStyle
                  Styles.Header = FrmPri.cxStyle63
                  Width = 213
                end
                object tvDetDescrOrig: TcxGridDBColumn
                  AlternateCaption = 'Descri'#231#227'o original do produto'
                  Caption = 'Descri'#231#227'o original'
                  DataBinding.FieldName = 'Descr'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Visible = False
                  HeaderHint = 
                    'Descri'#231#227'o original que o produto tinha no momento da venda. O ca' +
                    'dastro do mesmo produto pode ter sido alterado e sua descri'#231#227'o a' +
                    'tual ser diferente.'
                  Width = 247
                end
                object TVQuantFator: TcxGridDBColumn
                  Caption = 'Quant.'
                  DataBinding.FieldName = 'Quant'
                  PropertiesClassName = 'TcxMaskEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.MaxLength = 0
                  Properties.ReadOnly = False
                  HeaderAlignmentHorz = taCenter
                  Styles.Content = cxStyle15
                  Width = 57
                end
                object TVUnitarioFinal: TcxGridDBColumn
                  Caption = 'Vl. Unit'#225'rio'
                  DataBinding.FieldName = 'Unitario'
                  PropertiesClassName = 'TcxMaskEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.MaxLength = 0
                  Properties.ReadOnly = False
                  OnGetDisplayText = TVTotalGetDisplayText
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
                object TVEstoquePost: TcxGridDBColumn
                  Caption = 'Saldo Estoque'
                  DataBinding.FieldName = 'EstoquePost'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Width = 97
                end
                object tvDetSubTotal: TcxGridDBColumn
                  Caption = 'Sub-Total'
                  DataBinding.FieldName = 'Total'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Nullable = False
                  Properties.ReadOnly = False
                  HeaderAlignmentHorz = taCenter
                  Width = 80
                end
                object tvDetDesconto: TcxGridDBColumn
                  DataBinding.FieldName = 'Desconto'
                  HeaderAlignmentHorz = taCenter
                  Styles.Content = cxStyle11
                end
                object tvDetTotalFinal: TcxGridDBColumn
                  Caption = 'Total Item'
                  DataBinding.FieldName = 'TotalFinal'
                  HeaderAlignmentHorz = taCenter
                  Styles.Content = cxStyle15
                  Width = 79
                end
                object TVCanc: TcxGridDBColumn
                  DataBinding.FieldName = 'Cancelado'
                  Visible = False
                  VisibleForCustomization = False
                  Width = 39
                end
                object tvDetNomeVendedor: TcxGridDBColumn
                  Caption = 'Vendedor'
                  DataBinding.FieldName = 'NomeVendedor'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Vert = taTopJustify
                  Options.CellMerging = True
                  Width = 132
                  OnCompareRowValuesForCellMerging = tvDetStatusNFECompareRowValuesForCellMerging
                end
                object tvDetValorComissao: TcxGridDBColumn
                  Caption = 'Valor Comiss'#227'o'
                  DataBinding.FieldName = 'Comissao'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  VisibleForCustomization = False
                  Width = 109
                end
                object tvDetComissaoPerc: TcxGridDBColumn
                  Caption = 'Comiss'#227'o %'
                  DataBinding.FieldName = 'ComissaoPerc'
                  HeaderAlignmentHorz = taCenter
                  VisibleForCustomization = False
                end
                object tvDetComissaoLucro: TcxGridDBColumn
                  Caption = 'Calc.Comiss'#227'o'
                  DataBinding.FieldName = 'ComissaoLucro'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.ImmediateDropDownWhenActivated = True
                  Properties.ImmediatePost = True
                  Properties.ImmediateUpdateText = True
                  Properties.Items = <
                    item
                      Description = 'Sob.Total'
                      Value = False
                    end
                    item
                      Description = 'Sob.Lucro'
                      Value = True
                    end
                    item
                    end>
                  HeaderAlignmentHorz = taCenter
                  VisibleForCustomization = False
                  Width = 92
                end
                object tvDetMeioPag: TcxGridDBColumn
                  Caption = 'Meio Pagto.'
                  DataBinding.FieldName = 'NomePagEsp'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Vert = taTopJustify
                  GroupSummaryAlignment = taCenter
                  HeaderAlignmentHorz = taCenter
                  Options.CellMerging = True
                  Width = 100
                  OnCompareRowValuesForCellMerging = tvDetStatusNFECompareRowValuesForCellMerging
                end
                object TVFunc: TcxGridDBColumn
                  Caption = 'Funcion'#225'rio'
                  DataBinding.FieldName = 'NomeFunc'
                  Width = 132
                  OnCompareRowValuesForCellMerging = tvDetStatusNFECompareRowValuesForCellMerging
                end
                object tvDetCancelado: TcxGridDBColumn
                  DataBinding.FieldName = 'Cancelado'
                  Visible = False
                  VisibleForCustomization = False
                end
                object tvDetCusto: TcxGridDBColumn
                  Caption = 'Custo'
                  DataBinding.FieldName = 'CustoT'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  HeaderAlignmentHorz = taCenter
                end
                object tvDetLucro: TcxGridDBColumn
                  DataBinding.FieldName = 'Lucro'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  HeaderAlignmentHorz = taCenter
                end
                object tvDetOBS: TcxGridDBColumn
                  DataBinding.FieldName = 'Obs'
                end
              end
              object glDet: TcxGridLevel
                GridView = tvDet
              end
            end
          end
        end
        object dsPag: TdxDockSite
          Left = 793
          Top = 22
          Width = 213
          Height = 452
          Align = alRight
          AutoSize = True
          DockingType = 5
          OriginalWidth = 253
          OriginalHeight = 520
          object dxLayoutDockSite1: TdxLayoutDockSite
            Left = 0
            Top = 0
            Width = 213
            Height = 452
            DockingType = 0
            OriginalWidth = 213
            OriginalHeight = 200
          end
          object dpPag: TdxDockPanel
            Left = 0
            Top = 0
            Width = 213
            Height = 452
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ManagerColor = False
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
        Caption = 'Pedidos em aberto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object gridPend: TcxGrid
          Left = 0
          Top = 40
          Width = 1006
          Height = 434
          Align = alClient
          BorderStyle = cxcbsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
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
            OnFocusedRecordChanged = tvPendFocusedRecordChanged
            DataController.DataModeController.GridMode = True
            DataController.DataSource = dsPend
            DataController.Filter.Active = True
            DataController.Filter.AutoDataSetFilter = True
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0.00'
                Kind = skSum
                Column = tvPendTotalFinal
              end>
            DataController.Summary.SummaryGroups = <>
            DateTimeHandling.MonthFormat = 'mm'
            DateTimeHandling.YearFormat = 'yyyy'
            DateTimeHandling.DateFormat = 'dd/mm/yyyy'
            DateTimeHandling.Grouping = dtgByDate
            DateTimeHandling.HourFormat = 'hh:mm:ss'
            Filtering.ColumnPopup.MaxDropDownItemCount = 12
            OptionsBehavior.ImmediateEditor = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' vendas aguardando pagamento>'
            OptionsView.CellAutoHeight = True
            OptionsView.CellTextMaxLineCount = 4
            OptionsView.ColumnAutoWidth = True
            OptionsView.EditAutoHeightBorderColor = 16053492
            OptionsView.Footer = True
            OptionsView.GridLineColor = 16053492
            OptionsView.GroupFooters = gfVisibleWhenExpanded
            OptionsView.RowSeparatorColor = 16053492
            Preview.Column = tvPendObs
            Preview.MaxLineCount = 0
            Preview.Visible = True
            Styles.Header = cxStyle9
            OnCustomDrawColumnHeader = tvPendCustomDrawColumnHeader
            object tvPendEntregar: TcxGridDBColumn
              AlternateCaption = 'Entregar'
              Caption = 'Ent'
              DataBinding.FieldName = 'Entregar'
              RepositoryItem = Dados.erEntregar
              HeaderAlignmentHorz = taCenter
              HeaderHint = 'Entregar'
              Width = 27
            end
            object tvPendID: TcxGridDBColumn
              AlternateCaption = 'N'#250'mero da Transa'#231#227'o'
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'ID'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taTopJustify
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Header = cxStyle9
              Width = 63
            end
            object tvPendDataHora: TcxGridDBColumn
              Caption = 'Data / Hora'
              DataBinding.FieldName = 'IncluidoEm'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taTopJustify
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Header = cxStyle9
              Width = 111
            end
            object tvPendTotalFinal: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'TotalFinal'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Vert = taTopJustify
              OnCustomDrawCell = tvPendTotalFinalCustomDrawCell
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Content = cxStyle15
              Styles.Footer = cxStyle15
              Styles.Header = cxStyle9
              Width = 95
            end
            object tvPendFrete: TcxGridDBColumn
              Caption = 'Tx.Ent/Frete'
              DataBinding.FieldName = 'Frete'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Vert = taTopJustify
              HeaderAlignmentHorz = taCenter
              Width = 73
            end
            object tvPendDescr: TcxGridDBColumn
              Caption = 'Itens'
              DataBinding.FieldName = 'Descricao'
              PropertiesClassName = 'TcxMemoProperties'
              Options.Filtering = False
              Styles.Header = cxStyle9
              Width = 260
            end
            object tvPendNomeCliente: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'NomeCliente'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taTopJustify
              Styles.Content = cxStyle18
              Styles.Header = cxStyle9
              Width = 160
            end
            object tvPendTotal: TcxGridDBColumn
              DataBinding.FieldName = 'Total'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Vert = taTopJustify
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object tvPendDesconto: TcxGridDBColumn
              DataBinding.FieldName = 'Desconto'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Vert = taTopJustify
              Visible = False
              OnGetDisplayText = TVTotalGetDisplayText
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object tvPendTransp: TcxGridDBColumn
              Caption = 'Transp/Entregador'
              DataBinding.FieldName = 'NomeTransp'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'Nome'
                end>
              Width = 133
            end
            object tvPendFunc: TcxGridDBColumn
              Caption = 'Vendido por'
              DataBinding.FieldName = 'NomeVendedor'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taTopJustify
              Styles.Header = cxStyle9
              Width = 84
            end
            object tvPendObs: TcxGridDBColumn
              DataBinding.FieldName = 'Obs'
            end
          end
          object tvPend2: TcxGridDBTableView
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
            OptionsView.CellTextMaxLineCount = 1
            OptionsView.EditAutoHeightBorderColor = 16053492
            OptionsView.Footer = True
            OptionsView.GridLineColor = 16053492
            OptionsView.GroupFooters = gfVisibleWhenExpanded
            OptionsView.RowSeparatorColor = 16053492
            Preview.MaxLineCount = 0
            Preview.Visible = True
            Styles.Header = cxStyle9
            OnCustomDrawColumnHeader = tvPendCustomDrawColumnHeader
            object tvPend2Entrega: TcxGridDBColumn
              Caption = 'Ent'
              DataBinding.FieldName = 'Entregar'
              RepositoryItem = Dados.erEntregar
              HeaderAlignmentHorz = taCenter
              Width = 27
            end
            object tvPend2ID: TcxGridDBColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'ID'
              HeaderAlignmentHorz = taCenter
              Width = 62
            end
            object tvPend2DataHora: TcxGridDBColumn
              Caption = 'Data / Hora'
              DataBinding.FieldName = 'IncluidoEm'
              HeaderAlignmentHorz = taCenter
              Width = 110
            end
            object tvPend2TotalFinal: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'TotalFinal'
              HeaderAlignmentHorz = taCenter
              Width = 97
            end
            object tvPend2Frete: TcxGridDBColumn
              Caption = 'Tx.Ent/Frete'
              DataBinding.FieldName = 'Frete'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Vert = taTopJustify
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object tvPend2Descricao: TcxGridDBColumn
              Caption = 'Itens'
              DataBinding.FieldName = 'Descricao'
              Width = 216
            end
            object tvPend2NomeCliente: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'NomeCliente'
              Width = 188
            end
            object tvPend2NomeTransp: TcxGridDBColumn
              Caption = 'Transp/Entregador'
              DataBinding.FieldName = 'NomeTransp'
              Width = 116
            end
            object tvPend2Endereco: TcxGridDBColumn
              Caption = 'Endere'#231'o'
              DataBinding.FieldName = 'Endereco'
              Width = 217
            end
            object tvPend2Bairro: TcxGridDBColumn
              DataBinding.FieldName = 'Bairro'
              Width = 101
            end
            object tvPend2Cidade: TcxGridDBColumn
              DataBinding.FieldName = 'Cidade'
              Width = 149
            end
            object tvPend2UF: TcxGridDBColumn
              DataBinding.FieldName = 'UF'
            end
            object tvPend2NomeVendedor: TcxGridDBColumn
              Caption = 'Vendedor'
              DataBinding.FieldName = 'NomeVendedor'
              Width = 119
            end
            object tvPend2Obs: TcxGridDBColumn
              DataBinding.FieldName = 'Obs'
              Width = 216
            end
          end
          object glPend: TcxGridLevel
            Caption = 'Aguardando Pagamento'
            GridView = tvPend
          end
          object glPend2: TcxGridLevel
          end
        end
        object LMDSimplePanel1: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 1006
          Height = 40
          Hint = ''
          Align = alTop
          Bevel.Mode = bmCustom
          TabOrder = 1
          object LMDSimplePanel2: TLMDSimplePanel
            Left = 0
            Top = 0
            Width = 892
            Height = 40
            Hint = ''
            Align = alClient
            Bevel.Mode = bmCustom
            TabOrder = 0
            object dxBarDockControl2: TdxBarDockControl
              Left = 0
              Top = 0
              Width = 892
              Height = 38
              Margins.Bottom = 7
              Align = dalTop
              BarManager = BarMgr
              SunkenBorder = False
              UseOwnSunkenBorder = True
            end
          end
          object cbFecharAuto: TcxCheckBox
            Left = 892
            Top = 0
            Cursor = crHandPoint
            Align = alRight
            AutoSize = False
            Caption = 'Fechar Autom.'
            ParentFont = False
            Properties.Alignment = taLeftJustify
            Properties.ImmediatePost = True
            Properties.MultiLine = True
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
            Height = 40
            Width = 114
          end
        end
      end
      object tsRej: TcxTabSheet
        Caption = 'NF Rejeitada '
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
          Width = 1006
          Height = 38
          Align = dalTop
          BarManager = BarMgr
        end
        object gridRej: TcxGrid
          Left = 0
          Top = 38
          Width = 1006
          Height = 436
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
              OnGetDisplayText = tvRejxMotivoGetDisplayText
              Styles.Content = cxStyle11
              Styles.Header = cxStyle9
              Width = 304
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Vendido por'
              DataBinding.FieldName = 'NomeFunc'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taTopJustify
              Styles.Header = cxStyle9
              Width = 109
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
              OnGetDisplayText = TVTotalGetDisplayText
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object tvRejCli: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'DadosCli'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taTopJustify
              Styles.Header = cxStyle9
              Width = 314
            end
            object tvRejAmb: TcxGridDBColumn
              Caption = 'Ambiente'
              DataBinding.FieldName = 'AmbNFe'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Vert = taTopJustify
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
            object tvRejTipoNFE: TcxGridDBColumn
              DataBinding.FieldName = 'TipoNFE'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object glRej: TcxGridLevel
            Caption = 'Aguardando Pagamento'
            GridView = tvRej
          end
        end
      end
      object tsCont: TcxTabSheet
        Caption = 'NF em Conting'#234'ncia'
        ImageIndex = 18
        object gridCont: TcxGrid
          Left = 0
          Top = 0
          Width = 1006
          Height = 474
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
              DataBinding.FieldName = 'Descricao'
              PropertiesClassName = 'TcxMemoProperties'
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
    Left = 224
    Top = 424
    inherited BarMgrBar1: TdxBar
      Font.Height = -13
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmVendaCaixa'
        end
        item
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
          ItemName = 'cmImpPedido'
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmEntrega'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmTodos'
        end
        item
          Visible = True
          ItemName = 'cmComEntrega'
        end
        item
          Visible = True
          ItemName = 'cmSemEntrega'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmEndereco'
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
    object barVendas: TdxBar [3]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'barVendas'
      CaptionButtons = <>
      DockControl = bdcVendas
      DockedDockControl = bdcVendas
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1238
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic3'
        end
        item
          Visible = True
          ItemName = 'cmRes'
        end
        item
          Visible = True
          ItemName = 'cmDet'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic2'
        end
        item
          Visible = True
          ItemName = 'cmExibir'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    inherited cmNovo: TdxBarLargeButton
      Caption = '&Pedido - F4'
      Hint = 'Pedido - F4'
      Style = cxStyle13
      ShortCut = 115
      OnClick = cmNovoClick
      LargeImageIndex = 189
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
      OnClick = cmCancelarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 155
    end
    object cmImpRecibo: TdxBarLargeButton
      Caption = 'Imprimir Recibo'
      Category = 0
      Hint = 'Imprimir Recibo'
      Visible = ivAlways
      OnClick = cmImpReciboClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 191
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Configurar'
      Category = 0
      Hint = 'Configurar'
      Visible = ivAlways
    end
    object cmVendaCaixa: TdxBarLargeButton
      Caption = 'Venda Caixa (PDV) - F3'
      Category = 0
      Hint = 'Venda Caixa (PDV) - F3'
      Style = cxStyle13
      Visible = ivAlways
      ShortCut = 114
      OnClick = cmVendaCaixaClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 190
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
      Caption = 'Pagar (Concluir Venda) - F2'
      Category = 0
      Hint = 'Pagar (Concluir Venda) - F2'
      Visible = ivAlways
      OnClick = cmPagamentoClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 137
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
      OnClick = cmDevolucaoClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 154
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
      Caption = 'Imprimir NF'
      Category = 0
      Hint = 'Imprimir NF'
      Visible = ivAlways
      OnClick = cmDanfeClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 188
    end
    object cmReenviaRej: TdxBarLargeButton
      Caption = 'Emitir Novamente'
      Category = 0
      Hint = 'Emitir Novamente'
      Visible = ivAlways
      OnClick = cmReenviaRejClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 171
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
      OnClick = cmPagtoRejClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 137
    end
    object cmMaxItens: TcxBarEditItem
      Caption = 'Quantidade de itens na lista de vendas:  '
      Category = 0
      Hint = 'Quantidade de itens na lista de vendas:  '
      Visible = ivAlways
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
      Properties.MaxValue = 999.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnEditValueChanged = cmMaxItensPropertiesEditValueChanged
      StyleEdit = cxStyle15
      InternalEditValue = 3
    end
    object cmObs: TdxBarButton
      Caption = 'Mostrar Observa'#231#245'es'
      Category = 0
      Hint = 'Mostrar Observa'#231#245'es'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 2
      Down = True
      OnClick = cmObsClick
    end
    object cmDescTot: TdxBarButton
      Caption = 'Mostrar Desconto abaixo do Total'
      Category = 0
      Hint = 'Mostrar Desconto abaixo do Total'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      Down = True
      OnClick = cmDescTotClick
    end
    object cmMeioPagTot: TdxBarButton
      Caption = 'Mostrar '#237'cone do Meio de Pagamento junto ao Total'
      Category = 0
      Hint = 'Mostrar '#237'cone do Meio de Pagamento junto ao Total'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      Down = True
      OnClick = cmMeioPagTotClick
    end
    object cmImpPedido: TdxBarLargeButton
      Caption = 'Imprimir Pedido'
      Category = 0
      Hint = 'Imprimir Pedido'
      Visible = ivAlways
      OnClick = cmImpPedidoClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 192
    end
    object cmDet: TdxBarButton
      Caption = 'por Produto'
      Category = 0
      Hint = 'Veja mais detalhes sobre cada item vendido'
      Style = FrmPri.styleUnsel
      Visible = ivAlways
      OnClick = cmDetClick
    end
    object dxBarStatic3: TdxBarStatic
      Caption = 'Visualiza'#231#227'o:'
      Category = 0
      Hint = 'Visualiza'#231#227'o:'
      Visible = ivAlways
    end
    object cmExibir: TdxBarSubItem
      Caption = 'Vendas do caixa atual'
      Category = 0
      Style = FrmPri.styleUnsel
      Visible = ivAlways
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
          BeginGroup = True
          Visible = True
          ItemName = 'cmResumido'
        end
        item
          Visible = True
          ItemName = 'cmDetalhado'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmMostrarDev'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmCancelados'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmMostrarFin'
        end
        item
          Visible = True
          ItemName = 'cmMostrarComissao'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmObs'
        end
        item
          Visible = True
          ItemName = 'cmDescTot'
        end
        item
          Visible = True
          ItemName = 'cmMeioPagTot'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmMaxItens'
        end>
    end
    object cmDetalhado: TdxBarButton
      Caption = 
        'Visualiza'#231#227'o por Produto:  Veja mais detalhes de cada item da ve' +
        'nda'
      Category = 0
      Hint = 
        'Visualiza'#231#227'o por Produto:  Veja mais detalhes de cada item da ve' +
        'nda'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 150
      OnClick = cmDetalhadoClick
    end
    object cmResumido: TdxBarButton
      Caption = 'Visualiza'#231#227'o Resumida:  Veja os dados principais de cada venda'
      Category = 0
      Hint = 'Visualiza'#231#227'o Resumida:  Veja os dados principais de cada venda'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 150
      Down = True
      OnClick = cmResumidoClick
    end
    object cmMostrarDev: TdxBarButton
      Caption = 'Mostrar devolu'#231#245'es na lista de vendas'
      Category = 0
      Hint = 'Mostrar devolu'#231#245'es na lista de vendas'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      Down = True
      OnClick = cmMostrarDevClick
    end
    object cmRes: TdxBarButton
      Caption = 'Resumida'
      Category = 0
      Hint = 'Veja os dados principais de cada venda'
      Style = FrmPri.styleSel
      Visible = ivAlways
      OnClick = cmResClick
    end
    object dxBarStatic2: TdxBarStatic
      Caption = 'Exibir:'
      Category = 0
      Hint = 'Exibir:'
      Visible = ivAlways
    end
    object cmMostrarFin: TdxBarButton
      Caption = 'Mostrar informa'#231#245'es de custo / lucro'
      Category = 0
      Hint = 'Mostrar informa'#231#245'es de custo / lucro'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      Down = True
      OnClick = cmMostrarFinClick
    end
    object cmMostrarComissao: TdxBarButton
      Caption = 'Mostrar informa'#231#245'es de comiss'#227'o'
      Category = 0
      Hint = 'Mostrar informa'#231#245'es de comiss'#227'o'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      Down = True
      OnClick = cmMostrarComissaoClick
    end
    object cmTodos: TdxBarButton
      Caption = 'Todos'
      Category = 0
      Hint = 'Todos'
      Style = cxsSelecionado
      Visible = ivAlways
      OnClick = cmTodosClick
    end
    object cmComEntrega: TdxBarButton
      Tag = 1
      Caption = 'Com Entrega'
      Category = 0
      Hint = 'Com Entrega'
      Visible = ivAlways
      OnClick = cmTodosClick
    end
    object cmSemEntrega: TdxBarButton
      Tag = 2
      Caption = 'Sem Entrega'
      Category = 0
      Hint = 'Sem Entrega'
      Visible = ivAlways
      OnClick = cmTodosClick
    end
    object cmEndereco: TdxBarSubItem
      Caption = 'Endere'#231'o'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmMapa'
        end
        item
          Visible = True
          ItemName = 'cmRota'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmCopiarEnd'
        end>
    end
    object cmMapa: TdxBarButton
      Caption = 'Ver no Mapa'
      Category = 0
      Hint = 'Ver no Mapa'
      Visible = ivAlways
      ShortCut = 16461
      OnClick = cmMapaClick
    end
    object cmRota: TdxBarButton
      Caption = 'Ver Rota'
      Category = 0
      Hint = 'Ver Rota'
      Visible = ivAlways
      ShortCut = 16466
      OnClick = cmRotaClick
    end
    object cmCopiarEnd: TdxBarButton
      Caption = 'Copiar Endere'#231'o'
      Category = 0
      Hint = 'Copiar Endere'#231'o'
      Visible = ivAlways
      ShortCut = 16453
      OnClick = cmCopiarEndClick
    end
    object cmEntrega: TdxBarLargeButton
      Caption = 'Editar Entrega - F5'
      Category = 0
      Hint = 'Editar Entrega - F5'
      Visible = ivAlways
      OnClick = cmEntregaClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 203
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Left = 152
    Top = 217
  end
  inherited CP: TdxComponentPrinter
    Left = 64
    Top = 194
  end
  inherited dlgExp: TSaveDialog
    Left = 16
    Top = 193
  end
  inherited pmLay: TdxBarPopupMenu
    Left = 176
    Top = 242
  end
  inherited pmPeriodo: TdxBarPopupMenu
    Left = 112
    Top = 212
  end
  object dsTab: TDataSource
    DataSet = Tab
    Left = 398
    Top = 339
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
    Left = 72
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
    object TabNomeCliente: TWideStringField
      FieldName = 'NomeCliente'
      Size = 50
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
      Alignment = taLeftJustify
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
      Alignment = taLeftJustify
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
    object Tabtax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object Tabtax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object TabTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object Tabtax_total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'tax_total'
      Calculated = True
    end
    object TabNomeFunc: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFunc'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Func'
      Size = 50
      Lookup = True
    end
    object TabImgMeioPag: TStringField
      FieldKind = fkCalculated
      FieldName = 'ImgMeioPag'
      Calculated = True
    end
    object Tabids_pagto: TStringField
      FieldName = 'ids_pagto'
    end
    object TabDescricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
    object TabPedido: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Pedido'
      Calculated = True
    end
    object TabImpRec: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'ImpRec'
      Calculated = True
    end
    object TabImpNF: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'ImpNF'
      Calculated = True
    end
    object TabVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object TabComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object TabNomeVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeVendedor'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Vendedor'
      Size = 40
      Lookup = True
    end
    object TabEntregar: TBooleanField
      FieldName = 'Entregar'
    end
    object Tabendereco_entrega: TGuidField
      FieldName = 'endereco_entrega'
      Size = 38
    end
    object TabVenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object Tabtranest: TBooleanField
      FieldName = 'tranest'
    end
    object Tabtrancx: TBooleanField
      FieldName = 'trancx'
    end
    object TabHora: TByteField
      FieldName = 'Hora'
    end
    object TabFrete: TCurrencyField
      FieldName = 'Frete'
    end
    object TabTranspEnt: TLongWordField
      FieldName = 'TranspEnt'
    end
    object TabNomeTransp: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeTransp'
      LookupDataSet = Dados.mtTransp
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'TranspEnt'
      Size = 50
      Lookup = True
    end
    object TabTranspVol: TWordField
      FieldName = 'TranspVol'
    end
    object TabTranspPesoB: TFloatField
      FieldName = 'TranspPesoB'
    end
    object TabTranspPesoL: TFloatField
      FieldName = 'TranspPesoL'
    end
    object TabTranspPesoVol: TByteField
      FieldName = 'TranspPesoVol'
    end
    object TabUpdID: TGuidField
      FieldName = 'UpdID'
      Size = 38
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 264
    Top = 232
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsStrikeOut]
      TextColor = 3359692
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
    object cxStyle12: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      TextColor = 3359692
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clGray
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 3618615
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 3359692
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clGreen
    end
    object cxsSelecionado: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsUnderline]
    end
  end
  object tbME: TnxTable
    Database = Dados.db
    TableName = 'MovEst'
    IndexName = 'ICaixaMov'
    Left = 184
    Top = 304
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
    object tbMEtax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tbMEtax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tbMEtax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tbMEDescr: TWideStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tbMETotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tbMEPend: TBooleanField
      FieldName = 'Pend'
    end
    object tbMETotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tbMECustoT: TCurrencyField
      FieldName = 'CustoT'
    end
    object tbMELucro: TCurrencyField
      FieldName = 'Lucro'
    end
    object tbMEDebDev: TCurrencyField
      FieldName = 'DebDev'
    end
    object tbMEVenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object tbMERecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tbMEUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tbMEObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
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
    Left = 40
    Top = 312
    PixelsPerInch = 96
  end
  object tPend: TnxTable
    Database = Dados.db
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
    object tPendNomeCliente: TWideStringField
      FieldName = 'NomeCliente'
      Size = 50
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
    object tPendtax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tPendtax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tPendids_pagto: TStringField
      FieldName = 'ids_pagto'
    end
    object tPendDescricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
    object tPendVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object tPendComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tPendNomeVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeVendedor'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Vendedor'
      Size = 40
      Lookup = True
    end
    object tPendEntregar: TBooleanField
      FieldName = 'Entregar'
    end
    object tPendendereco_entrega: TGuidField
      FieldName = 'endereco_entrega'
      Size = 38
    end
    object tPendVenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object tPendHora: TByteField
      FieldName = 'Hora'
    end
    object tPendFrete: TCurrencyField
      FieldName = 'Frete'
    end
    object tPendtranest: TBooleanField
      FieldName = 'tranest'
    end
    object tPendtrancx: TBooleanField
      FieldName = 'trancx'
    end
    object tPendTranspEnt: TLongWordField
      FieldName = 'TranspEnt'
    end
    object tPendNomeTransp: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeTransp'
      LookupDataSet = Dados.mtTransp
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'TranspEnt'
      Size = 50
      Lookup = True
    end
    object tPendTranspVol: TWordField
      FieldName = 'TranspVol'
    end
    object tPendTranspPesoB: TFloatField
      FieldName = 'TranspPesoB'
    end
    object tPendTranspPesoL: TFloatField
      FieldName = 'TranspPesoL'
    end
    object tPendTranspPesoVol: TByteField
      FieldName = 'TranspPesoVol'
    end
    object tPendEndereco: TStringField
      FieldKind = fkCalculated
      FieldName = 'Endereco'
      Size = 100
      Calculated = True
    end
    object tPendBairro: TStringField
      FieldKind = fkCalculated
      FieldName = 'Bairro'
      Size = 50
      Calculated = True
    end
    object tPendCidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cidade'
      Size = 50
      Calculated = True
    end
    object tPendUF: TStringField
      FieldKind = fkCalculated
      FieldName = 'UF'
      Size = 2
      Calculated = True
    end
    object tPendUpdID: TGuidField
      FieldName = 'UpdID'
      Size = 38
    end
  end
  object dsPend: TDataSource
    DataSet = tPend
    Left = 120
    Top = 336
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
    object tRejNomeCliente: TWideStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tRejSessao: TLongWordField
      FieldName = 'Sessao'
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
    object tRejtax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tRejtax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tRejTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tRejids_pagto: TStringField
      FieldName = 'ids_pagto'
    end
    object tRejDescricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
    object tRejEntregar: TBooleanField
      FieldName = 'Entregar'
    end
    object tRejendereco_entrega: TGuidField
      FieldName = 'endereco_entrega'
      Size = 38
    end
    object tRejVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object tRejComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tRejVenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object tRejHora: TByteField
      FieldName = 'Hora'
    end
    object tRejFrete: TCurrencyField
      FieldName = 'Frete'
    end
    object tRejtranest: TBooleanField
      FieldName = 'tranest'
    end
    object tRejtrancx: TBooleanField
      FieldName = 'trancx'
    end
    object tRejTranspEnt: TLongWordField
      FieldName = 'TranspEnt'
    end
    object tRejTranspVol: TWordField
      FieldName = 'TranspVol'
    end
    object tRejTranspPesoB: TFloatField
      FieldName = 'TranspPesoB'
    end
    object tRejTranspPesoL: TFloatField
      FieldName = 'TranspPesoL'
    end
    object tRejTranspPesoVol: TByteField
      FieldName = 'TranspPesoVol'
    end
    object tRejUpdID: TGuidField
      FieldName = 'UpdID'
      Size = 38
    end
  end
  object tCont: TnxTable
    Database = Dados.db
    TableName = 'Tran'
    IndexName = 'ICanceladoStatusNFE'
    Left = 585
    Top = 198
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
    object tContNomeCliente: TWideStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tContSessao: TLongWordField
      FieldName = 'Sessao'
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
    object tConttax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tConttax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tContTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tContids_pagto: TStringField
      FieldName = 'ids_pagto'
    end
    object tContDescricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
    object tContEntregar: TBooleanField
      FieldName = 'Entregar'
    end
    object tContendereco_entrega: TGuidField
      FieldName = 'endereco_entrega'
      Size = 38
    end
    object tContVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object tContComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tContVenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object tContHora: TByteField
      FieldName = 'Hora'
    end
    object tContFrete: TCurrencyField
      FieldName = 'Frete'
    end
    object tConttranest: TBooleanField
      FieldName = 'tranest'
    end
    object tConttrancx: TBooleanField
      FieldName = 'trancx'
    end
    object tContTranspEnt: TLongWordField
      FieldName = 'TranspEnt'
    end
    object tContTranspVol: TWordField
      FieldName = 'TranspVol'
    end
    object tContTranspPesoB: TFloatField
      FieldName = 'TranspPesoB'
    end
    object tContTranspPesoL: TFloatField
      FieldName = 'TranspPesoL'
    end
    object tContTranspPesoVol: TByteField
      FieldName = 'TranspPesoVol'
    end
    object tContUpdID: TGuidField
      FieldName = 'UpdID'
      Size = 38
    end
  end
  object dsCont: TDataSource
    DataSet = tCont
    Left = 633
    Top = 198
  end
  object dsRej: TDataSource
    DataSet = tRej
    Left = 569
    Top = 270
  end
  object img3p: TcxImageList
    Height = 7
    Width = 17
    FormatVersion = 1
    DesignInfo = 19792153
    ImageInfo = <
      item
        Image.Data = {
          12020000424D1202000000000000360000002800000011000000070000000100
          200000000000DC01000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000064000000E20000006400000000000000000000
          0064000000E200000064000000000000000000000064000000E2000000640000
          0000000000000000000000000000000000E2000000E2000000E2000000000000
          0000000000E2000000E2000000E20000000000000000000000E2000000E20000
          00E20000000000000000000000000000000000000064000000E2000000640000
          00000000000000000064000000E2000000640000000000000000000000640000
          00E2000000640000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          12020000424D1202000000000000360000002800000011000000070000000100
          200000000000DC01000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004F351B71B3783EFF4F351B7100000000000000004F35
          1B71B3783EFF4F351B7100000000000000004F351B71B3783EFF4F351B710000
          0000000000000000000000000000B3783EFFB3783EFFB3783EFF000000000000
          0000B3783EFFB3783EFFB3783EFF0000000000000000B3783EFFB3783EFFB378
          3EFF000000000000000000000000000000004F351B71B3783EFF4F351B710000
          0000000000004F351B71B3783EFF4F351B7100000000000000004F351B71B378
          3EFF4F351B710000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          12020000424D1202000000000000360000002800000011000000070000000100
          200000000000DC01000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000071717171FFFFFFFF7171717100000000000000007171
          7171FFFFFFFF71717171000000000000000071717171FFFFFFFF717171710000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFF0000000000000000000000000000000071717171FFFFFFFF717171710000
          00000000000071717171FFFFFFFF71717171000000000000000071717171FFFF
          FFFF717171710000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000}
      end>
  end
  object imgMais: TcxImageList
    Height = 11
    Width = 11
    FormatVersion = 1
    DesignInfo = 15073577
    ImageInfo = <
      item
        Image.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000888888E2999999FF999999FF999999FF999999FF9999
          99FF999999FF999999FF888888E20000000000000000999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FF000000000000
          0000999999FFFFFFFFFFFFFFFFFFFFFFFFFF817157FFFFFFFFFFFFFFFFFFFFFF
          FFFF999999FF0000000000000000999999FFFFFFFFFFFFFFFFFFFFFFFFFF8171
          57FFFFFFFFFFFFFFFFFFFFFFFFFF999999FF0000000000000000999999FFFFFF
          FFFF817157FF817157FF817157FF817157FF817157FFFFFFFFFF999999FF0000
          000000000000999999FFFFFFFFFFFFFFFFFFFFFFFFFF817157FFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FF0000000000000000999999FFFFFFFFFFFFFFFFFFFFFF
          FFFF817157FFFFFFFFFFFFFFFFFFFFFFFFFF999999FF00000000000000009999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FF0000000000000000888888E2999999FF999999FF999999FF999999FF9999
          99FF999999FF999999FF888888E2000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBEBEBEBF0000000000000000BFBFBFBF000000000000
          00000000000000000000000000000000000000000000BFBFBFBF000000000000
          0000BFBFBFBF000000000000000000000000BFBFBFBF00000000000000000000
          0000BFBFBFBF0000000000000000BFBFBFBF000000000000000000000000BFBF
          BFBF000000000000000000000000BFBFBFBF0000000000000000BFBFBFBF0000
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000BFBFBFBF0000
          000000000000BFBFBFBF000000000000000000000000BFBFBFBF000000000000
          000000000000BFBFBFBF0000000000000000BFBFBFBF00000000000000000000
          0000BFBFBFBF000000000000000000000000BFBFBFBF0000000000000000BFBF
          BFBF00000000000000000000000000000000000000000000000000000000BFBF
          BFBF0000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBEBEBEBF000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000007C4D00B2B16E00FFB16E00FFB16E00FFB16E00FFB16E
          00FFB16E00FFB16E00FF7C4D00B20000000000000000B16E00FFB16E00FFB16E
          00FFB16E00FFB16E00FFB16E00FFB16E00FFB16E00FFB16E00FF000000000000
          0000B16E00FFB16E00FFB16E00FFB16E00FFB16E00FFB16E00FFB16E00FFB16E
          00FFB16E00FF0000000000000000B16E00FFB16E00FFD4B074FFD4B074FFD4B0
          74FFD4B074FFD4B074FFB16E00FFB16E00FF0000000000000000B16E00FFD4B0
          74FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4B074FFB16E00FF0000
          000000000000B16E00FFB16E00FFD4B074FFD4B074FFD4B074FFD4B074FFD4B0
          74FFB16E00FFB16E00FF0000000000000000B16E00FFB16E00FFB16E00FFB16E
          00FFB16E00FFB16E00FFB16E00FFB16E00FFB16E00FF0000000000000000B16E
          00FFB16E00FFB16E00FFB16E00FFB16E00FFB16E00FFB16E00FFB16E00FFB16E
          00FF00000000000000007C4D00B2B16E00FFB16E00FFB16E00FFB16E00FFB16E
          00FFB16E00FFB16E00FF7C4D00B2000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000F8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF8F8F8F80000000000000000FFFFFFFF000000000000
          00000000000000000000000000000000000000000000FFFFFFFF000000000000
          0000FFFFFFFF0000000000000000000000000000000000000000000000000000
          0000FFFFFFFF0000000000000000FFFFFFFF0000000034343434444444444444
          4444444444443434343400000000FFFFFFFF0000000000000000FFFFFFFF0000
          0000F1F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F100000000FFFFFFFF0000
          000000000000FFFFFFFF00000000343434344444444444444444444444443434
          343400000000FFFFFFFF0000000000000000FFFFFFFF00000000000000000000
          000000000000000000000000000000000000FFFFFFFF0000000000000000FFFF
          FFFF00000000000000000000000000000000000000000000000000000000FFFF
          FFFF0000000000000000F8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF8F8F8F8000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          1A020000424D1A0200000000000036000000280000000B0000000B0000000100
          200000000000E401000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000888888E2999999FF999999FF999999FF999999FF9999
          99FF999999FF999999FF888888E20000000000000000999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FF000000000000
          0000999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF999999FF0000000000000000999999FFFFFFFFFFF5F4F2FFF5F4F2FFF5F4
          F2FFF5F4F2FFF5F4F2FFFFFFFFFF999999FF0000000000000000999999FFFFFF
          FFFF333333FF333333FF333333FF333333FF333333FFFFFFFFFF999999FF0000
          000000000000999999FFFFFFFFFFF5F4F2FFF5F4F2FFF5F4F2FFF5F4F2FFF5F4
          F2FFFFFFFFFF999999FF0000000000000000999999FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FF00000000000000009999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FF0000000000000000888888E2999999FF999999FF999999FF999999FF9999
          99FF999999FF999999FF888888E2000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000}
      end>
  end
  object dsMovEst: TDataSource
    DataSet = tMovEst
    Left = 473
    Top = 230
  end
  object tMovEst: TnxTable
    Database = Dados.db
    FilterOptions = [foCaseInsensitive]
    FlipOrder = True
    OnCalcFields = tMovEstCalcFields
    TableName = 'MovEst'
    IndexName = 'IDataHora'
    Left = 425
    Top = 230
    object tMovEstID: TAutoIncField
      FieldName = 'ID'
    end
    object tMovEstQuant: TFloatField
      FieldName = 'Quant'
    end
    object tMovEstUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tMovEstTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tMovEstCustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object tMovEstDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tMovEstPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tMovEstDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tMovEstEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tMovEstCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tMovEstEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object tMovEstCategoria: TStringField
      FieldName = 'Categoria'
    end
    object tMovEstNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tMovEstITran: TIntegerField
      FieldName = 'ITran'
    end
    object tMovEstSessao: TIntegerField
      FieldName = 'Sessao'
    end
    object tMovEstEstoquePost: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EstoquePost'
      DisplayFormat = '0.####'
      Calculated = True
    end
    object tMovEstPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tMovEstDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tMovEstFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tMovEstTran: TLongWordField
      FieldName = 'Tran'
    end
    object tMovEstAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tMovEstCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tMovEstCaixa: TIntegerField
      FieldName = 'Caixa'
    end
    object tMovEstTipoTran: TByteField
      Alignment = taLeftJustify
      FieldName = 'TipoTran'
    end
    object tMovEstPermSemEstoque: TBooleanField
      FieldName = 'PermSemEstoque'
    end
    object tMovEstFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tMovEstProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tMovEstItem: TByteField
      FieldName = 'Item'
    end
    object tMovEstQuantFator: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QuantFator'
      Calculated = True
    end
    object tMovEstID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object tMovEstComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tMovEstComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tMovEstComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tMovEstNomeCliente: TWideStringField
      FieldKind = fkLookup
      FieldName = 'NomeCliente'
      LookupDataSet = Dados.tbCli
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 50
      Lookup = True
    end
    object tMovEstFunc: TStringField
      FieldKind = fkLookup
      FieldName = 'Func'
      LookupDataSet = Dados.tbTran
      LookupKeyFields = 'ID'
      LookupResultField = 'Func'
      KeyFields = 'Tran'
      Lookup = True
    end
    object tMovEstNomeFunc: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFunc'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Func'
      Size = 40
      Lookup = True
    end
    object tMovEstNomeTipoTran: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeTipoTran'
      LookupDataSet = Dados.tbTipoTranEst
      LookupKeyFields = 'tipo'
      LookupResultField = 'nome'
      KeyFields = 'TipoTran'
      Size = 40
      Lookup = True
    end
    object tMovEsttax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tMovEsttax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tMovEsttax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tMovEstDescr: TWideStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tMovEstTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tMovEstPend: TBooleanField
      FieldName = 'Pend'
    end
    object tMovEstIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tMovEstDebDev: TCurrencyField
      FieldName = 'DebDev'
    end
    object tMovEstNomeProd: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProd'
      LookupDataSet = Dados.tbPro
      LookupKeyFields = 'ID'
      LookupResultField = 'Descricao'
      KeyFields = 'Produto'
      Size = 100
      Lookup = True
    end
    object tMovEstStatusNFE: TByteField
      FieldKind = fkLookup
      FieldName = 'StatusNFE'
      LookupDataSet = Dados.tbTran
      LookupKeyFields = 'ID'
      LookupResultField = 'StatusNFE'
      KeyFields = 'Tran'
      Lookup = True
    end
    object tMovEstEntregar: TBooleanField
      FieldKind = fkLookup
      FieldName = 'Entregar'
      LookupDataSet = Dados.tbTran
      LookupKeyFields = 'ID'
      LookupResultField = 'Entregar'
      KeyFields = 'Tran'
      Lookup = True
    end
    object tMovEstVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'Vendedor'
      LookupDataSet = Dados.tbTran
      LookupKeyFields = 'ID'
      LookupResultField = 'Vendedor'
      KeyFields = 'Tran'
      Lookup = True
    end
    object tMovEstNomeVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeVendedor'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Vendedor'
      Size = 40
      Lookup = True
    end
    object tMovEstNomePagEsp: TStringField
      FieldKind = fkLookup
      FieldName = 'NomePagEsp'
      LookupDataSet = Dados.tbTran
      LookupKeyFields = 'ID'
      LookupResultField = 'NomePagEsp'
      KeyFields = 'Tran'
      Size = 40
      Lookup = True
    end
    object tMovEstTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tMovEstCustoT: TCurrencyField
      FieldName = 'CustoT'
    end
    object tMovEstLucro: TCurrencyField
      FieldName = 'Lucro'
    end
    object tMovEstVenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object tMovEstUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tMovEstRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tMovEstObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
  end
  object tAuxPend: TnxTable
    Database = Dados.db
    FlipOrder = True
    OnCalcFields = tPendCalcFields
    TableName = 'Tran'
    IndexName = 'IPagPendID'
    Left = 104
    Top = 427
  end
  object tEnd: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'endereco'
    IndexName = 'I_endereco_id'
    Left = 625
    Top = 382
    object tEndendereco_id: TGuidField
      FieldName = 'endereco_id'
      Size = 38
    end
    object tEndcliente_id: TLongWordField
      FieldName = 'cliente_id'
    end
    object tEndpos: TByteField
      FieldName = 'pos'
    end
    object tEndnumseq: TUnsignedAutoIncField
      FieldName = 'numseq'
    end
    object tEndend_dest: TWideStringField
      FieldName = 'end_dest'
      Size = 50
    end
    object tEndendereco: TWideStringField
      FieldName = 'endereco'
      Size = 60
    end
    object tEndendereco2: TWideStringField
      FieldName = 'endereco2'
      Size = 60
    end
    object tEndend_numero: TWideStringField
      FieldName = 'end_numero'
    end
    object tEndcidade: TWideStringField
      FieldName = 'cidade'
      Size = 40
    end
    object tEndcep: TWideStringField
      FieldName = 'cep'
      Size = 10
    end
    object tEndbairro: TWideStringField
      FieldName = 'bairro'
      Size = 30
    end
    object tEndend_codmun: TWideStringField
      FieldName = 'end_codmun'
      Size = 7
    end
    object tEnduf: TWideStringField
      FieldName = 'uf'
      Size = 30
    end
    object tEndend_obs: TWideStringField
      FieldName = 'end_obs'
      Size = 40
    end
    object tEnddef_cad: TBooleanField
      FieldName = 'def_cad'
    end
    object tEnddef_ent: TBooleanField
      FieldName = 'def_ent'
    end
    object tEnddef_cob: TBooleanField
      FieldName = 'def_cob'
    end
    object tEndpais: TWideStringField
      FieldName = 'pais'
      Size = 2
    end
  end
  object TimerFiltraDados: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerFiltraDadosTimer
    Left = 345
    Top = 214
  end
end
