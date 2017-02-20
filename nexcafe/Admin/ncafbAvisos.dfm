inherited fbAvisos: TfbAvisos
  Caption = 'Avisos de Tempo Acabando'
  ClientWidth = 611
  OldCreateOrder = True
  ExplicitWidth = 619
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited panPri: TLMDSimplePanel
    Width = 611
    ExplicitWidth = 611
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 611
      Height = 44
      ExplicitWidth = 611
      ExplicitHeight = 44
    end
    object Grid: TcxGrid
      Left = 0
      Top = 44
      Width = 611
      Height = 307
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ExplicitTop = 32
      ExplicitHeight = 319
      object TV: TcxGridDBTableView
        OnDblClick = cmEditarClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.GridMode = True
        DataController.DataSource = dsTab
        DataController.Filter.MaxValueListCount = 1000
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.KeyFieldNames = 'Minutos'
        DataController.Summary.DefaultGroupSummaryItems = <>
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
        Filtering.ColumnPopup.MaxDropDownItemCount = 12
        OptionsBehavior.IncSearch = True
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.Indicator = True
        Preview.AutoHeight = False
        object VMinutos1: TcxGridDBColumn
          DataBinding.FieldName = 'Minutos'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 69
        end
        object TVTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Aviso de Texto'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Aviso Sonoro'
              Value = 1
            end
            item
              Description = 'Aviso de Texto e Som'
              Value = 2
            end>
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 138
        end
        object VAvisoTexto1: TcxGridDBColumn
          Caption = 'Aviso de Texto'
          DataBinding.FieldName = 'AvisoTexto'
          HeaderAlignmentHorz = taCenter
          Width = 213
        end
        object VSegAvisoTexto1: TcxGridDBColumn
          Caption = 'Tempo Aviso (Seg)'
          DataBinding.FieldName = 'SegAvisoTexto'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object VPiscarAvisoTexto1: TcxGridDBColumn
          Caption = 'Piscar'
          DataBinding.FieldName = 'PiscarAvisoTexto'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 71
        end
      end
      object GL: TcxGridLevel
        GridView = TV
      end
    end
  end
  inherited BarMgr: TdxBarManager
    Left = 48
    Top = 72
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BarMgrBar1: TdxBar
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
        end>
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
    inherited cmAtualizar: TdxBarLargeButton
      ShowCaption = False
    end
    inherited cmExportar: TdxBarLargeButton
      LargeImageIndex = 47
      ShowCaption = False
    end
    inherited cmImprimir: TdxBarLargeButton
      LargeImageIndex = 7
      ShowCaption = False
    end
    inherited cmLayout: TdxBarLargeButton
      ImageIndex = -1
    end
    inherited cmPeriodo: TdxBarLargeButton
      ImageIndex = -1
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Top = 73
  end
  inherited CP: TdxComponentPrinter
    Left = 48
    Top = 146
  end
  inherited dlgExp: TSaveDialog
    Left = 16
  end
  object Tab: TnxTable
    Database = Dados.db
    TableName = 'Aviso'
    Left = 16
    Top = 107
    object TabMinutos: TWordField
      FieldName = 'Minutos'
    end
    object TabAvisoTexto: TStringField
      FieldName = 'AvisoTexto'
      Size = 50
    end
    object TabSegAvisoTexto: TWordField
      FieldName = 'SegAvisoTexto'
    end
    object TabPiscarAvisoTexto: TBooleanField
      FieldName = 'PiscarAvisoTexto'
    end
    object TabSom: TBlobField
      FieldName = 'Som'
    end
    object TabTipo: TWordField
      Alignment = taLeftJustify
      FieldName = 'Tipo'
    end
  end
  object dsTab: TDataSource
    DataSet = Tab
    Left = 48
    Top = 107
  end
end
