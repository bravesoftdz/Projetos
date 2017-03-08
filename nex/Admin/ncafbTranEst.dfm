inherited fbTranEst: TfbTranEst
  Caption = 'Transa'#231#245'es de Estoque'
  ClientHeight = 442
  ClientWidth = 1212
  Font.Height = -13
  Font.Name = 'Segoe UI'
  OnDestroy = FrmBasePaiDestroy
  ExplicitWidth = 1228
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    Width = 1212
    Height = 442
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ExplicitWidth = 1212
    ExplicitHeight = 442
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 1212
      Height = 44
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitWidth = 1212
      ExplicitHeight = 44
    end
    object panGrid: TLMDSimplePanel
      Left = 0
      Top = 44
      Width = 1212
      Height = 398
      Hint = ''
      Align = alClient
      Bevel.Mode = bmStandard
      TabOrder = 1
      object pgModo: TcxPageControl
        Left = 1
        Top = 23
        Width = 1210
        Height = 374
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tsModoDetalhado
        Properties.CustomButtons.Buttons = <>
        Properties.Style = 6
        Properties.TabSlants.Positions = [spRight]
        TabSlants.Positions = [spRight]
        ClientRectBottom = 374
        ClientRectRight = 1210
        ClientRectTop = 24
        object tsModoResumido: TcxTabSheet
          Caption = 'Modo Resumido'
          ImageIndex = 0
          object Grid: TcxGrid
            Left = 0
            Top = 0
            Width = 1210
            Height = 350
            Margins.Left = 0
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            BorderStyle = cxcbsNone
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
              OnFocusedRecordChanged = tvDetFocusedRecordChanged
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
              OptionsView.NoDataToDisplayInfoText = '<nenhuma transa'#231#227'o>'
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
              object TVNomeTipo: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'NomeTipo'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.Alignment.Vert = taTopJustify
                Properties.ImmediateDropDownWhenActivated = True
                Properties.ImmediatePost = True
                Properties.KeyFieldNames = 'tipo'
                Properties.ListColumns = <
                  item
                    FieldName = 'nome'
                  end>
                HeaderAlignmentHorz = taCenter
                MinWidth = 16
                Styles.Content = FrmPri.cxStyle61
                Width = 126
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
              object TVNome: TcxGridDBColumn
                Caption = 'Cliente / Fornecedor'
                DataBinding.FieldName = 'NomeCliente'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Vert = taTopJustify
                Options.EditAutoHeight = ieahNone
                Styles.Content = cxStyle18
                Width = 140
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
              object TVNomeFunc: TcxGridDBColumn
                Caption = 'Funcion'#225'rio'
                DataBinding.FieldName = 'NomeFunc'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.Alignment.Vert = taTopJustify
                Styles.Content = cxStyle17
                Width = 170
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
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taTopJustify
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
              object TVTipoTran: TcxGridDBColumn
                DataBinding.FieldName = 'Tipo'
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
        end
        object tsModoDetalhado: TcxTabSheet
          Caption = 'Modo Detalhado'
          ImageIndex = 1
          object gridDet: TcxGrid
            Left = 0
            Top = 0
            Width = 1210
            Height = 350
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
              OnFocusedRecordChanged = tvDetFocusedRecordChanged
              DataController.DataModeController.GridMode = True
              DataController.DataSource = dsMovEst
              DataController.Filter.MaxValueListCount = 1000
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Filter.Active = True
              DataController.Filter.AutoDataSetFilter = True
              DataController.KeyFieldNames = 'ID'
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
              Preview.AutoHeight = False
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
                OnCompareRowValuesForCellMerging = tvDetNomeTipoTranCompareRowValuesForCellMerging
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
                OnCompareRowValuesForCellMerging = tvDetNomeTipoTranCompareRowValuesForCellMerging
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
              object tvDetNomeTipoTran: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'NomeTipoTran'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.Alignment.Vert = taTopJustify
                Properties.KeyFieldNames = 'tipo'
                Properties.ListColumns = <
                  item
                    FieldName = 'nome'
                  end>
                HeaderAlignmentHorz = taCenter
                MinWidth = 16
                Options.CellMerging = True
                Styles.Content = FrmPri.cxStyle61
                Width = 126
                OnCompareRowValuesForCellMerging = tvDetNomeTipoTranCompareRowValuesForCellMerging
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
                Properties.SaveTime = False
                Properties.ShowTime = False
                DateTimeGrouping = dtgByDate
                HeaderAlignmentHorz = taCenter
                Options.CellMerging = True
                Width = 97
                OnCompareRowValuesForCellMerging = tvDetNomeTipoTranCompareRowValuesForCellMerging
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
                OnCompareRowValuesForCellMerging = tvDetNomeTipoTranCompareRowValuesForCellMerging
              end
              object TVCliente: TcxGridDBColumn
                Caption = 'Cliente / Fornecedor'
                DataBinding.FieldName = 'NomeCliente'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Vert = taTopJustify
                Options.Filtering = False
                Options.CellMerging = True
                Styles.Content = cxStyle18
                Width = 140
                OnCompareRowValuesForCellMerging = tvDetNomeTipoTranCompareRowValuesForCellMerging
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
                DataBinding.FieldName = 'QuantFator'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.MaxLength = 0
                Properties.ReadOnly = False
                OnGetDisplayText = TVQuantFatorGetDisplayText
                HeaderAlignmentHorz = taCenter
                Styles.Content = cxStyle15
                Width = 57
              end
              object tvDetUnitario: TcxGridDBColumn
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
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Properties.Nullable = False
                Properties.ReadOnly = False
                OnGetDisplayText = tvDetDescontoGetDisplayText
                HeaderAlignmentHorz = taCenter
                Width = 80
              end
              object tvDetDesconto: TcxGridDBColumn
                DataBinding.FieldName = 'Desconto'
                OnGetDisplayText = tvDetDescontoGetDisplayText
                HeaderAlignmentHorz = taCenter
                Styles.Content = cxStyle11
              end
              object tvDetTotalFinal: TcxGridDBColumn
                Caption = 'Total'
                DataBinding.FieldName = 'TotalFinal'
                OnGetDisplayText = tvDetDescontoGetDisplayText
                HeaderAlignmentHorz = taCenter
                Styles.Content = cxStyle15
                Styles.OnGetContentStyle = tvDetDescrStylesGetContentStyle
              end
              object TVCanc: TcxGridDBColumn
                DataBinding.FieldName = 'Cancelado'
                Visible = False
                VisibleForCustomization = False
                Width = 39
              end
              object TVFunc: TcxGridDBColumn
                Caption = 'Funcion'#225'rio'
                DataBinding.FieldName = 'NomeFunc'
                Width = 132
                OnCompareRowValuesForCellMerging = tvDetNomeTipoTranCompareRowValuesForCellMerging
              end
              object TVValorComissao: TcxGridDBColumn
                Caption = 'Valor Comiss'#227'o'
                DataBinding.FieldName = 'Comissao'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                OnGetDisplayText = TVValorComissaoGetDisplayText
                HeaderAlignmentHorz = taCenter
                VisibleForCustomization = False
                Width = 109
              end
              object TVComissaoPerc: TcxGridDBColumn
                Caption = 'Comiss'#227'o %'
                DataBinding.FieldName = 'ComissaoPerc'
                OnGetDisplayText = TVValorComissaoGetDisplayText
                HeaderAlignmentHorz = taCenter
                VisibleForCustomization = False
              end
              object TVComissaoLucro: TcxGridDBColumn
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
                OnGetDisplayText = TVValorComissaoGetDisplayText
                HeaderAlignmentHorz = taCenter
                VisibleForCustomization = False
                Width = 92
              end
              object tvDetTipoTran: TcxGridDBColumn
                DataBinding.FieldName = 'TipoTran'
                Visible = False
                VisibleForCustomization = False
              end
              object tvDetCancelado: TcxGridDBColumn
                DataBinding.FieldName = 'Cancelado'
                Visible = False
                VisibleForCustomization = False
              end
            end
            object glDet: TcxGridLevel
              GridView = tvDet
            end
          end
        end
      end
      object bdcGrid: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 1210
        Height = 22
        Align = dalTop
        BarManager = BarMgr
        SunkenBorder = False
        UseOwnSunkenBorder = True
      end
    end
  end
  inherited BarMgr: TdxBarManager
    UseSystemFont = False
    Left = 72
    Top = 192
    inherited BarMgrBar1: TdxBar
      Font.Height = -13
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmNovo'
        end
        item
          Visible = True
          ItemName = 'cmEditar'
        end
        item
          Visible = True
          ItemName = 'cmCancelar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmImpRecibo'
        end
        item
          Visible = True
          ItemName = 'cmDanfe'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmDevFor'
        end
        item
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
      DockControl = bdcGrid
      DockedDockControl = bdcGrid
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1335
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic2'
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
          ItemName = 'cmFiltro'
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
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
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
      Visible = False
      WholeRow = True
    end
    inherited cmNovo: TdxBarLargeButton
      Caption = 'Nova transa'#231#227'o de estoque'
      Hint = 'Nova transa'#231#227'o de estoque'
      Style = cxStyle13
      DropDownEnabled = False
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
    object cmCancelar: TdxBarLargeButton [22]
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      OnClick = cmCancelarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 131
    end
    object dxBarButton3: TdxBarButton [23]
      Caption = 'Configurar'
      Category = 0
      Hint = 'Configurar'
      Visible = ivAlways
    end
    object cmFiltro: TdxBarSubItem [24]
      Caption = 'Exibir'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
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
          ItemName = 'cmCancelados'
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
    object dxBarStatic1: TdxBarStatic [25]
      Caption = 'Vendas'
      Category = 0
      Hint = 'Vendas'
      Style = cxStyle8
      Visible = ivAlways
    end
    object cmCancelados: TdxBarButton [26]
      Caption = 'Mostrar transa'#231#245'es canceladas'
      Category = 0
      Hint = 'Mostrar transa'#231#245'es canceladas'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = cmCanceladosClick
    end
    object dxBarLargeButton2: TdxBarLargeButton [27]
      Caption = 'New Button'
      Category = 0
      Enabled = False
      Hint = 'New Button'
      Visible = ivAlways
      Height = 32
      ShowCaption = False
    end
    object cmReenviaRej: TdxBarLargeButton [28]
      Caption = 'Emitir Novamente'
      Category = 0
      Hint = 'Emitir Novamente'
      Visible = ivAlways
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 171
    end
    object cmPagtoRej: TdxBarLargeButton [29]
      Caption = 'Meio de Pagamento - F2'
      Category = 0
      Hint = 'Meio de Pagamento - F2'
      Visible = ivAlways
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 137
    end
    object cmMaxItens: TcxBarEditItem [30]
      Caption = 'Quantidade de itens na lista de transa'#231#245'es:  '
      Category = 0
      Hint = 'Quantidade de itens na lista de transa'#231#245'es:  '
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
    object cmObs: TdxBarButton [31]
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
    object cmDescTot: TdxBarButton [32]
      Caption = 'Mostrar Desconto abaixo do Total'
      Category = 0
      Hint = 'Mostrar Desconto abaixo do Total'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      Down = True
      OnClick = cmDescTotClick
    end
    object cmMeioPagTot: TdxBarButton [33]
      Caption = 'Mostrar '#237'cone do Meio de Pagamento junto ao Total'
      Category = 0
      Hint = 'Mostrar '#237'cone do Meio de Pagamento junto ao Total'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      Down = True
      OnClick = cmMeioPagTotClick
    end
    object cmResumido: TdxBarButton [34]
      Caption = 
        'Visualiza'#231#227'o Resumida:  Veja os dados principais de cada transa'#231 +
        #227'o'
      Category = 0
      Hint = 
        'Visualiza'#231#227'o Resumida:  Veja os dados principais de cada transa'#231 +
        #227'o'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = cmResumidoClick
    end
    object cmDetalhado: TdxBarButton [35]
      Caption = 
        'Visualiza'#231#227'o por Produto:  Veja mais detalhes de cada item da tr' +
        'ansa'#231#227'o'
      Category = 0
      Hint = 
        'Visualiza'#231#227'o por Produto:  Veja mais detalhes de cada item da tr' +
        'ansa'#231#227'o'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = cmDetalhadoClick
    end
    object cmRes: TdxBarButton [36]
      Caption = 'Resumida'
      Category = 0
      Hint = 'Veja os dados principais de cada transa'#231#227'o'
      Style = FrmPri.styleSel
      Visible = ivAlways
      OnClick = cmResClick
    end
    object cmDet: TdxBarButton [37]
      Caption = 'por Produto'
      Category = 0
      Hint = 'Veja mais detalhes sobre cada item da transa'#231#227'o'
      Style = FrmPri.styleUnsel
      Visible = ivAlways
      OnClick = cmDetClick
    end
    object dxBarStatic2: TdxBarStatic [38]
      Caption = 'Visualiza'#231#227'o:'
      Category = 0
      Hint = 'Visualiza'#231#227'o:'
      Visible = ivAlways
    end
    object cmTipoTran: TdxBarListItem [39]
      Caption = 'Transa'#231#245'es'
      Category = 0
      Visible = ivAlways
      OnClick = cmTipoTranClick
    end
    object cmDanfe: TdxBarLargeButton
      Caption = 'Imprimir NF'
      Category = 0
      Hint = 'Imprimir NF'
      Visible = ivAlways
      OnClick = cmDanfeClick
      GlyphLayout = glLeft
      LargeImageIndex = 201
    end
    object cmImpRecibo: TdxBarLargeButton
      Caption = 'Imprime Recibo'
      Category = 0
      Hint = 'Imprime Recibo'
      Visible = ivNever
      OnClick = cmImpReciboClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 191
      SyncImageIndex = False
      ImageIndex = 191
    end
    object cmDevFor: TdxBarButton
      Caption = 'Dev. NF-e Compra'
      Category = 0
      Hint = 'Dev. NF-e Compra'
      Visible = ivNever
      OnClick = cmDevForClick
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
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
    IndexName = 'Itranest_datahora_tipo'
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
    object TabNomeTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeTipo'
      LookupDataSet = Dados.tbTipoTranEst
      LookupKeyFields = 'tipo'
      LookupResultField = 'nome'
      KeyFields = 'Tipo'
      Size = 40
      Lookup = True
    end
    object Tabtranest: TBooleanField
      FieldName = 'tranest'
    end
    object Tabtrancx: TBooleanField
      FieldName = 'trancx'
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
    Left = 152
    Top = 216
    PixelsPerInch = 96
  end
  object pmTipoTran: TdxBarPopupMenu
    BarManager = BarMgr
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ItemLinks = <
      item
        Visible = True
        ItemName = 'cmTipoTran'
      end>
    UseOwnFont = True
    Left = 416
    Top = 176
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
    Left = 561
    Top = 230
  end
  object tMovEst: TnxTable
    Database = Dados.db
    FilterType = ftSqlWhere
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
    object tMovEstUID: TGuidField
      FieldName = 'UID'
      Size = 38
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
    object tMovEstObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tMovEstVenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object tMovEstDadosFiscais: TnxMemoField
      FieldName = 'DadosFiscais'
      BlobType = ftMemo
    end
  end
  object nxSession1: TnxSession
    Left = 496
    Top = 216
  end
end
