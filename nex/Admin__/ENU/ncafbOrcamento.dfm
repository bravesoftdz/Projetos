inherited fbOrcamento: TfbOrcamento
  Caption = 'Or'#231'amento'
  ClientHeight = 380
  ClientWidth = 852
  ExplicitWidth = 868
  ExplicitHeight = 418
  PixelsPerInch = 96
  TextHeight = 13
  inherited panPri: TLMDSimplePanel
    Width = 852
    Height = 380
    ExplicitWidth = 852
    ExplicitHeight = 380
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 852
      Height = 44
      ExplicitWidth = 852
      ExplicitHeight = 44
    end
    object Grid: TcxGrid
      Left = 0
      Top = 44
      Width = 852
      Height = 336
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfFlat
      object TV: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
        Navigator.Visible = True
        DataController.DataSource = DS
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.AutoDataSetFilter = True
        DataController.KeyFieldNames = 'UID'
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'Qtd: 0'
            Kind = skCount
            FieldName = 'IDSeq'
            Column = TVStatusAlteradoEm
          end
          item
            Format = 'R$ 0.00'
            Kind = skSum
            FieldName = 'TotalFinal'
            Column = TVTotalFinal
          end
          item
            Format = 'R$ 0.00'
            Kind = skSum
            FieldName = 'Desconto'
            Column = TVDesconto
          end
          item
            Format = 'R$ 0.00'
            Kind = skSum
            FieldName = 'Total'
            Column = TVTotal
          end>
        FooterSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'TotalFinal'
            Column = TVTotalFinal
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.NoDataToDisplayInfoText = 'Voc'#234' ainda n'#227'o criou nenhum or'#231'amento'
        OptionsView.GridLineColor = 16053492
        OptionsView.GroupByHeaderLayout = ghlHorizontal
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        Preview.Column = TVObs
        Preview.Visible = True
        Styles.Header = FrmPri.cxsHeader
        OnCustomDrawColumnHeader = TVCustomDrawColumnHeader
        object TVIDSeq: TcxGridDBColumn
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'IDSeq'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
        end
        object TVCriadoEm: TcxGridDBColumn
          Caption = 'Criado em'
          DataBinding.FieldName = 'CriadoEm'
        end
        object TVStatus: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'Status'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Images = dmImagens.im16
          Properties.ImmediateDropDownWhenActivated = True
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = 'Pendente'
              ImageIndex = 94
              Value = 0
            end
            item
              Description = 'Aprovado'
              ImageIndex = 4
              Tag = 1
              Value = 1
            end
            item
              Description = 'Vendido'
              ImageIndex = 92
              Tag = 2
              Value = 2
            end
            item
              Description = 'Recusado'
              ImageIndex = 12
              Value = 3
            end
            item
              Description = 'Expirado'
              ImageIndex = 91
              Tag = 3
              Value = 4
            end>
          OnCustomDrawCell = TVStatusCustomDrawCell
          Width = 84
        end
        object TVStatusAlteradoEm: TcxGridDBColumn
          Caption = 'Situa'#231#227'o em'
          DataBinding.FieldName = 'StatusAlteradoEm'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 138
        end
        object TVTotalFinal: TcxGridDBColumn
          Caption = 'Total Final'
          DataBinding.FieldName = 'TotalFinal'
          OnCustomDrawCell = TVTotalFinalCustomDrawCell
          HeaderAlignmentHorz = taCenter
          Width = 87
        end
        object TVNomeCliente: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'NomeCliente'
          Width = 210
        end
        object TVValData: TcxGridDBColumn
          Caption = 'Valido at'#233
          DataBinding.FieldName = 'ValData'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 89
        end
        object TVIDVenda: TcxGridDBColumn
          Caption = 'Num.Venda'
          DataBinding.FieldName = 'IDVenda'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          OnGetDisplayText = TVIDVendaGetDisplayText
          HeaderAlignmentHorz = taCenter
        end
        object TVTotal: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
        end
        object TVDesconto: TcxGridDBColumn
          DataBinding.FieldName = 'Desconto'
          OnCustomDrawCell = TVDescontoCustomDrawCell
          OnGetDisplayText = TVDescontoGetDisplayText
        end
        object TVObs: TcxGridDBColumn
          DataBinding.FieldName = 'Obs'
        end
        object TVUID: TcxGridDBColumn
          DataBinding.FieldName = 'UID'
          Visible = False
          VisibleForCustomization = False
        end
        object TVNomeFunc: TcxGridDBColumn
          Caption = 'Funcion'#225'rio'
          DataBinding.FieldName = 'NomeFunc'
          Width = 162
        end
        object TVAprovadoEm: TcxGridDBColumn
          DataBinding.FieldName = 'AprovadoEm'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object TVVendidoEm: TcxGridDBColumn
          Caption = 'Vendido em'
          DataBinding.FieldName = 'VendidoEm'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
        end
        object TVRecusadoEm: TcxGridDBColumn
          DataBinding.FieldName = 'RecusadoEm'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object TVExpiradoEm: TcxGridDBColumn
          DataBinding.FieldName = 'ExpiradoEm'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object TVAtualizadoEm: TcxGridDBColumn
          Caption = 'Atualizado em'
          DataBinding.FieldName = 'AtualizadoEm'
          Visible = False
        end
      end
      object GL: TcxGridLevel
        GridView = TV
      end
    end
  end
  inherited BarMgr: TdxBarManager
    UseSystemFont = False
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
          ItemName = 'cmNovo'
        end
        item
          Visible = True
          ItemName = 'cmEditar'
        end
        item
          Visible = True
          ItemName = 'cmApagar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmImprime'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmAprovar'
        end
        item
          Visible = True
          ItemName = 'cmRecusar'
        end
        item
          Visible = True
          ItemName = 'cmVender'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmEmail'
        end>
      UseOwnFont = True
      UseRestSpace = True
    end
    inherited cmNovo: TdxBarLargeButton
      OnClick = cmNovoClick
      ImageIndex = 0
    end
    inherited cmEditar: TdxBarLargeButton
      OnClick = cmEditarClick
      ImageIndex = 20
    end
    inherited cmApagar: TdxBarLargeButton
      OnClick = cmApagarClick
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
    end
    object cmAprovar: TdxBarLargeButton
      Caption = 'Aprovar (F2)'
      Category = 0
      Hint = 'Aprovar (F2)'
      Visible = ivAlways
      LargeImageIndex = 148
      PaintStyle = psCaptionGlyph
      OnClick = cmAprovarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmRecusar: TdxBarLargeButton
      Caption = 'Recusar (F3)'
      Category = 0
      Hint = 'Recusar (F3)'
      Visible = ivAlways
      LargeImageIndex = 149
      OnClick = cmRecusarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmVender: TdxBarLargeButton
      Caption = 'Vender (F4)'
      Category = 0
      Hint = 'Vender (F4)'
      Visible = ivAlways
      LargeImageIndex = 150
      OnClick = cmVenderClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmImprime: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      LargeImageIndex = 7
      OnClick = cmImprimeClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      ShowCaption = False
    end
    object cmEmail: TdxBarLargeButton
      Caption = 'Enviar por e-mail'
      Category = 0
      Hint = 'Enviar por e-mail'
      Visible = ivAlways
      LargeImageIndex = 153
      OnClick = cmEmailClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
  end
  inherited CP: TdxComponentPrinter
    Top = 202
  end
  object Tab: TnxTable
    Database = Dados.db
    FilterOptions = [foCaseInsensitive]
    FlipOrder = True
    TableName = 'Orcamento'
    IndexName = 'IAtualizadoEm'
    Left = 288
    Top = 160
    object TabUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object TabIDSeq: TAutoIncField
      FieldName = 'IDSeq'
    end
    object TabCriadoEm: TDateTimeField
      FieldName = 'CriadoEm'
    end
    object TabAtualizadoEm: TDateTimeField
      FieldName = 'AtualizadoEm'
    end
    object TabVendidoEm: TDateTimeField
      FieldName = 'VendidoEm'
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
    object TabTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object TabObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
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
    object TabNomeFunc: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFunc'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Func'
      Size = 40
      Lookup = True
    end
    object TabAprovadoEm: TDateTimeField
      FieldName = 'AprovadoEm'
    end
    object TabRecusadoEm: TDateTimeField
      FieldName = 'RecusadoEm'
    end
    object TabExpiradoEm: TDateTimeField
      FieldName = 'ExpiradoEm'
    end
    object TabVendido: TBooleanField
      FieldName = 'Vendido'
    end
    object TabStatusAlteradoEm: TDateTimeField
      FieldName = 'StatusAlteradoEm'
    end
    object TabStatus: TByteField
      FieldName = 'Status'
    end
    object TabIDVenda: TLongWordField
      FieldName = 'IDVenda'
    end
    object TabCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object TabValData: TDateTimeField
      FieldName = 'ValData'
    end
    object TabValModo: TByteField
      FieldName = 'ValModo'
    end
    object TabValTempo: TWordField
      FieldName = 'ValTempo'
    end
    object TabValUTempo: TByteField
      FieldName = 'ValUTempo'
    end
  end
  object DS: TDataSource
    DataSet = Tab
    Left = 200
    Top = 224
  end
  object tItens: TnxTable
    Database = Dados.db
    TableName = 'IOrcamento'
    IndexName = 'IOrcamento_UID'
    Left = 408
    Top = 152
  end
end
