inherited fbRevisarProduto: TfbRevisarProduto
  Caption = 'Revisar produtos cadastrados rapidamente'
  ExplicitWidth = 684
  ExplicitHeight = 390
  PixelsPerInch = 96
  TextHeight = 13
  inherited panPri: TLMDSimplePanel
    inherited dxBarDockControl1: TdxBarDockControl
      Height = 36
      ExplicitHeight = 36
    end
    object Grid: TcxGrid
      Left = 0
      Top = 36
      Width = 668
      Height = 315
      Align = alClient
      TabOrder = 1
      object TV: TcxGridDBTableView
        OnDblClick = cmEditarClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSource1
        DataController.KeyFieldNames = 'ID'
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        OptionsView.Indicator = True
        object TVColumnID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object TVColumnDescricao: TcxGridDBColumn
          DataBinding.FieldName = 'Descricao'
        end
      end
      object GL: TcxGridLevel
        GridView = TV
      end
    end
  end
  inherited BarMgr: TdxBarManager
    ImageOptions.Images = nil
    ImageOptions.LargeImages = dmImagens.im24
    Left = 264
    Top = 96
    inherited BarMgrBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmEditar'
        end>
    end
    inherited cmNovo: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited cmEditar: TdxBarLargeButton
      Caption = '&Editar / Concluir Cadastro'
      Hint = 'Editar / Concluir Cadastro'
      OnClick = cmEditarClick
      LargeImageIndex = 2
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
  end
  inherited MenuGrid: TcxGridPopupMenu
    Left = 88
    Top = 177
  end
  inherited CP: TdxComponentPrinter
    Left = 56
  end
  inherited dlgExp: TSaveDialog
    Left = 16
    Top = 81
  end
  inherited pmLay: TdxBarPopupMenu
    Left = 96
    Top = 50
  end
  inherited pmPeriodo: TdxBarPopupMenu
    Left = 96
    Top = 84
  end
  object Tab: TnxTable
    Database = Dados.db
    TableName = 'Produto'
    IndexName = 'ICadastroRapido'
    Left = 96
    Top = 136
    object TabID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object TabUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object TabCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object TabDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object TabCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
  end
  object DataSource1: TDataSource
    DataSet = Tab
    Left = 192
    Top = 136
  end
end
