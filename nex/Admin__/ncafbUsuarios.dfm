inherited fbUsuarios: TfbUsuarios
  Caption = 'Usu'#225'rios'
  ClientHeight = 334
  ClientWidth = 896
  Font.Height = -13
  Font.Name = 'Segoe UI'
  ExplicitWidth = 904
  ExplicitHeight = 365
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    Width = 896
    Height = 334
    Bevel.Mode = bmStandard
    ExplicitWidth = 896
    ExplicitHeight = 334
    inherited dxBarDockControl1: TdxBarDockControl
      Left = 1
      Top = 1
      Width = 894
      Height = 42
      SunkenBorder = False
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 894
      ExplicitHeight = 42
    end
    object LMDSimplePanel1: TLMDSimplePanel
      Left = 1
      Top = 43
      Width = 894
      Height = 290
      Hint = ''
      Align = alClient
      Bevel.Mode = bmCustom
      Color = clWindow
      TabOrder = 1
      object Grid: TcxGrid
        Left = 0
        Top = 0
        Width = 894
        Height = 290
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
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        object TV: TcxGridDBTableView
          OnDblClick = cmEditarClick
          Navigator.Buttons.CustomButtons = <>
          OnFocusedRecordChanged = TVFocusedRecordChanged
          DataController.DataSource = Dados.dsUsuario
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'Username'
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLines = glNone
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.Header = False
          Preview.AutoHeight = False
          object TVImg: TcxGridDBColumn
            Caption = 'Usu'#225'rio'
            DataBinding.FieldName = 'Inativo'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = dmImagens.im32
            Properties.Items = <
              item
                ImageIndex = 193
              end
              item
                Description = 'Inativo'
                ImageIndex = 193
                Value = True
              end
              item
                Description = 'Ativo'
                ImageIndex = 194
                Value = False
              end>
            OnCustomDrawCell = TVImgCustomDrawCell
            OnGetDisplayText = TVImgGetDisplayText
            Width = 464
          end
          object TVUsername: TcxGridDBColumn
            DataBinding.FieldName = 'Username'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 10
            Properties.ReadOnly = True
            Visible = False
            VisibleForCustomization = False
            Width = 114
          end
          object TVNome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 30
            Properties.ReadOnly = True
            Visible = False
            Width = 244
          end
          object TVAdmin: TcxGridDBColumn
            DataBinding.FieldName = 'Admin'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Items = <
              item
                Description = 'Administrador de Sistema'
                ImageIndex = 0
                Value = True
              end>
            HeaderAlignmentHorz = taCenter
            MinWidth = 16
            Width = 430
          end
        end
        object GL: TcxGridLevel
          GridView = TV
        end
      end
    end
  end
  inherited BarMgr: TdxBarManager
    LookAndFeel.Kind = lfFlat
    Top = 112
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
          ItemName = 'cmInativar'
        end
        item
          Visible = True
          ItemName = 'cmReativar'
        end>
      OldName = 'BarraTabSheet1'
      UseOwnFont = True
    end
    inherited cmNovo: TdxBarLargeButton
      Caption = '&Adicionar Usu'#225'rio'
      Hint = 'Adicionar Usu'#225'rio'
      OnClick = cmNovoClick
      ShowCaption = True
      ImageIndex = 0
    end
    inherited cmEditar: TdxBarLargeButton
      Caption = '&Editar Usu'#225'rio'
      Hint = 'Editar Usu'#225'rio'
      OnClick = cmEditarClick
      ShowCaption = True
      ImageIndex = 20
    end
    inherited cmApagar: TdxBarLargeButton
      Caption = '&Apagar Usu'#225'rio'
      Hint = 'Apagar Usu'#225'rio'
      OnClick = cmApagarClick
      ShowCaption = True
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
    object cmInativar: TdxBarLargeButton
      Caption = 'Desativar Usu'#225'rio'
      Category = 0
      Hint = 'Desativar Usu'#225'rio'
      Visible = ivAlways
      LargeImageIndex = 195
      OnClick = cmInativarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmReativar: TdxBarLargeButton
      Caption = 'Reativar Usu'#225'rio'
      Category = 0
      Hint = 'Reativar Usu'#225'rio'
      Visible = ivNever
      LargeImageIndex = 196
      OnClick = cmReativarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Top = 81
  end
  inherited pmLay: TdxBarPopupMenu
    Top = 90
  end
end
