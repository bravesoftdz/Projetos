inherited fbCXLetra: TfbCXLetra
  Left = 300
  Top = 420
  Caption = 'Configura'#231#227'o de letras'
  ClientHeight = 370
  ClientWidth = 415
  OldCreateOrder = True
  Position = poDesigned
  OnDestroy = FrmBasePaiDestroy
  ExplicitWidth = 431
  ExplicitHeight = 406
  PixelsPerInch = 96
  TextHeight = 13
  inherited panPri: TLMDSimplePanel
    Width = 415
    Height = 370
    ExplicitWidth = 415
    ExplicitHeight = 370
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 415
      Height = 36
      ExplicitWidth = 415
      ExplicitHeight = 36
    end
    object LMDSimplePanel1: TLMDSimplePanel
      Left = 0
      Top = 36
      Width = 415
      Height = 5
      Align = alTop
      Bevel.Mode = bmCustom
      TabOrder = 0
    end
    object LMDSimplePanel2: TLMDSimplePanel
      Left = 0
      Top = 41
      Width = 415
      Height = 329
      Align = alClient
      Bevel.Mode = bmStandard
      Color = clWhite
      TabOrder = 2
      object Grid: TcxGrid
        Left = 1
        Top = 1
        Width = 413
        Height = 327
        Align = alClient
        BorderStyle = cxcbsNone
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        object TV: TcxGridDBTableView
          OnDblClick = btnOKClick
          OnKeyUp = TVKeyUp
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DS
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.SupportedLike = False
          DataController.KeyFieldNames = 'Caixa'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.NoDataToDisplayInfoText = '<Nenhum fornecedor foi cadastrado ainda>'
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Preview.AutoHeight = False
          object TVNome: TcxGridDBColumn
            Caption = 'Campo'
            DataBinding.FieldName = 'Nome'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 40
            Properties.ReadOnly = False
            FooterAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 107
          end
          object TVCaixa: TcxGridDBColumn
            Caption = 'Padronizar campos em'
            DataBinding.FieldName = 'Caixa'
            PropertiesClassName = 'TcxRadioGroupProperties'
            Properties.Columns = 3
            Properties.ImmediatePost = True
            Properties.Items = <
              item
                Caption = 'Livre'
                Value = 0
              end
              item
                Caption = 'MAI'#218'SCULA'
                Value = 1
              end
              item
                Caption = 'min'#250'scula'
                Value = 2
              end>
            Width = 296
          end
        end
        object GL: TcxGridLevel
          GridView = TV
        end
      end
    end
  end
  inherited BarMgr: TdxBarManager
    ImageOptions.LargeImages = dmImagens.im24
    ImageOptions.UseLargeImagesForLargeIcons = True
    Left = 72
    Top = 232
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BarMgrBar1: TdxBar
      Caption = 'BarraComum'
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmOk'
        end
        item
          Visible = True
          ItemName = 'cmCancelar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmApplyNow'
        end>
    end
    inherited cmNovo: TdxBarLargeButton
      LargeImageIndex = 6
      AutoGrayScale = True
      ShowCaption = True
      ImageIndex = -1
    end
    inherited cmEditar: TdxBarLargeButton
      LargeImageIndex = 2
      AutoGrayScale = True
      ShowCaption = True
      ImageIndex = 20
    end
    inherited cmApagar: TdxBarLargeButton
      LargeImageIndex = 7
      AutoGrayScale = True
      ShowCaption = True
      ImageIndex = 12
    end
    inherited cmAtualizar: TdxBarLargeButton
      Visible = ivNever
      PaintStyle = psCaptionGlyph
      GlyphLayout = glTop
    end
    inherited cmExportar: TdxBarLargeButton
      Visible = ivNever
      LargeImageIndex = 47
      GlyphLayout = glTop
    end
    inherited cmImprimir: TdxBarLargeButton
      Visible = ivNever
      LargeImageIndex = 7
      GlyphLayout = glTop
      SyncImageIndex = False
      ImageIndex = 22
    end
    inherited cmLayout: TdxBarLargeButton
      ImageIndex = -1
    end
    inherited cmPeriodo: TdxBarLargeButton
      ImageIndex = -1
    end
    object cmOk: TdxBarLargeButton
      Caption = '&Ok'
      Category = 0
      Hint = 'Ok'
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = btnOKClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = btnCancelarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmApplyNow: TdxBarButton
      Caption = 'Padronizar agora o banco de dados'
      Category = 0
      Hint = 'Padronizar agora o banco de dados'
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = cmApplyNowClick
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Top = 225
  end
  inherited pmLay: TdxBarPopupMenu
    Left = 392
    Top = 178
  end
  object pmTempo: TdxBarPopupMenu
    BarManager = BarMgr
    ItemLinks = <>
    UseOwnFont = False
    Left = 128
    Top = 228
  end
  object pmSenha: TdxBarPopupMenu
    BarManager = BarMgr
    ItemLinks = <>
    UseOwnFont = False
    Left = 240
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 544
    Top = 408
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    Left = 152
    Top = 152
  end
  object Tab: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Campo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Caixa'
        DataType = ftWord
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
    Version = '5.02b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 48
    Top = 104
    object TabCampo: TStringField
      FieldName = 'Campo'
      Size = 30
    end
    object TabCaixa: TWordField
      Alignment = taLeftJustify
      FieldName = 'Caixa'
    end
    object TabNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object DS: TDataSource
    DataSet = Tab
    Left = 80
    Top = 64
  end
end
