inherited fbMEPend: TfbMEPend
  Left = 144
  Top = 157
  Caption = 'fbMEPend'
  ClientHeight = 397
  ClientWidth = 741
  Font.Height = -13
  Font.Name = 'Segoe UI'
  OldCreateOrder = True
  ExplicitWidth = 757
  ExplicitHeight = 435
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    Width = 741
    Height = 397
    ExplicitWidth = 741
    ExplicitHeight = 397
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 741
      Height = 34
      SunkenBorder = False
      ExplicitWidth = 741
      ExplicitHeight = 34
    end
    object Grid: TcxGrid
      Left = 0
      Top = 34
      Width = 741
      Height = 363
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
      ExplicitTop = 3
      ExplicitHeight = 365
      object TV: TcxGridDBTableView
        OnDblClick = TVDblClick
        Navigator.Buttons.CustomButtons = <
          item
          end
          item
          end>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.InfoPanel.Width = 100
        DataController.DataModeController.GridMode = True
        DataController.DataSource = dsTab
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
            Column = TVQuant
          end
          item
            Format = '0.0'
            Kind = skSum
            Column = TVQuant
          end>
        FooterSummaryItems = <
          item
            Format = '0.0'
            Kind = skSum
            Column = TVQuant
          end>
        SummaryGroups = <
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
        OptionsSelection.CellSelect = False
        OptionsView.GridLineColor = 16053492
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        Preview.AutoHeight = False
        Styles.Header = FrmPri.cxStyle11
        OnCustomDrawColumnHeader = TVCustomDrawColumnHeader
        object TVTran: TcxGridDBColumn
          Caption = 'No.Tran'
          DataBinding.FieldName = 'Tran'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ImmediatePost = True
          HeaderAlignmentHorz = taCenter
          Width = 68
        end
        object TVCliente: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'NomeCliente'
          SortIndex = 0
          SortOrder = soAscending
          Width = 274
        end
        object TVQuant: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'Quant'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 0
          Properties.ReadOnly = False
          OnCustomDrawCell = TVQuantCustomDrawCell
          OnGetDisplayText = TVQuantGetDisplayText
          HeaderAlignmentHorz = taCenter
          Width = 76
        end
        object TVTipoTran: TcxGridDBColumn
          Caption = 'Tipo Transa'#231#227'o'
          DataBinding.FieldName = 'TipoTran'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownRows = 7
          Properties.Items = <
            item
              Description = 'Venda'
              ImageIndex = 1
              Value = 4
            end
            item
              Description = 'Compra'
              ImageIndex = 2
              Value = 5
            end
            item
              Description = 'Entrada de Estoque'
              ImageIndex = 3
              Value = 6
            end
            item
              Description = 'Saida de Estoque'
              ImageIndex = 4
              Value = 7
            end
            item
              Description = 'Corre'#231#227'o de Custo'
              Value = 16
            end
            item
              Description = 'Devolu'#231#227'o'
              Value = 18
            end>
          Properties.ReadOnly = False
          Visible = False
          HeaderAlignmentHorz = taCenter
          MinWidth = 16
          VisibleForCustomization = False
          Width = 103
        end
        object TVUnitarioFinal: TcxGridDBColumn
          Caption = 'Vl. Unit'#225'rio'
          DataBinding.FieldName = 'Unitario'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.MaxLength = 0
          Properties.ReadOnly = False
          OnGetDisplayText = TVUnitarioFinalGetDisplayText
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object TVTotal: TcxGridDBColumn
          Caption = 'Valor Total'
          DataBinding.FieldName = 'Total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Properties.Nullable = False
          Properties.ReadOnly = False
          OnGetDisplayText = TVTotalGetDisplayText
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object TVDataMov: TcxGridDBColumn
          Caption = 'Inclu'#237'do em'
          DataBinding.FieldName = 'IncluidoEm'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.DateButtons = [btnClear, btnToday]
          Properties.DateOnError = deToday
          OnGetDisplayText = TVDataMovGetDisplayText
          Width = 124
        end
      end
      object GL: TcxGridLevel
        GridView = TV
      end
    end
  end
  inherited BarMgr: TdxBarManager
    ImageOptions.LargeImages = dmImagens.im24
    LookAndFeel.Kind = lfFlat
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BarMgrBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmEditar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmImprimir'
        end>
      UseRestSpace = True
    end
    inherited cmNovo: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited cmEditar: TdxBarLargeButton
      Caption = '&Editar / Ver Detalhes'
      Hint = 'Editar / Ver Detalhes'
      LargeImageIndex = 2
      PaintStyle = psCaptionGlyph
      OnClick = TVDblClick
      ShowCaption = True
      ImageIndex = 20
    end
    inherited cmApagar: TdxBarLargeButton
      ImageIndex = 12
    end
    inherited cmExportar: TdxBarLargeButton
      LargeImageIndex = 47
    end
    inherited cmImprimir: TdxBarLargeButton
      LargeImageIndex = 21
    end
    inherited cmLayout: TdxBarLargeButton
      GlyphLayout = glLeft
      ImageIndex = -1
    end
    inherited cmPeriodo: TdxBarLargeButton
      GlyphLayout = glLeft
      ImageIndex = -1
    end
  end
  inherited CP: TdxComponentPrinter
    Left = 200
    Top = 106
  end
  object Tab: TnxTable
    Database = Dados.db
    FilterOptions = [foCaseInsensitive]
    OnCalcFields = TabCalcFields
    TableName = 'MovEst'
    IndexName = 'IProdPendCancelado'
    Left = 145
    Top = 182
    object TabID: TAutoIncField
      FieldName = 'ID'
    end
    object TabQuant: TFloatField
      Alignment = taCenter
      FieldName = 'Quant'
    end
    object TabUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object TabTotal: TCurrencyField
      FieldName = 'Total'
    end
    object TabCustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object TabDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object TabPago: TCurrencyField
      FieldName = 'Pago'
    end
    object TabDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object TabEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object TabCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object TabEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object TabCategoria: TStringField
      FieldName = 'Categoria'
    end
    object TabNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object TabITran: TIntegerField
      FieldName = 'ITran'
    end
    object TabSessao: TIntegerField
      FieldName = 'Sessao'
    end
    object TabEstoquePost: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EstoquePost'
      DisplayFormat = '0.####'
      Calculated = True
    end
    object TabPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object TabDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object TabFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object TabTran: TLongWordField
      FieldName = 'Tran'
    end
    object TabAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object TabCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object TabCaixa: TIntegerField
      FieldName = 'Caixa'
    end
    object TabTipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object TabPermSemEstoque: TBooleanField
      FieldName = 'PermSemEstoque'
    end
    object TabFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object TabProduto: TLongWordField
      FieldName = 'Produto'
    end
    object TabItem: TByteField
      FieldName = 'Item'
    end
    object TabQuantFator: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QuantFator'
      Calculated = True
    end
    object TabID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object TabComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object TabComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object TabComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object TabNomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCliente'
      LookupDataSet = Dados.tbCli
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 50
      Lookup = True
    end
    object TabIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object TabPend: TBooleanField
      FieldName = 'Pend'
    end
  end
  object dsTab: TDataSource
    DataSet = Tab
    Left = 185
    Top = 182
  end
end
