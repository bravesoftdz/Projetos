inherited fbPesqCli: TfbPesqCli
  Left = 300
  Top = 420
  Caption = '&Localizar Cliente'
  ClientHeight = 308
  ClientWidth = 671
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesigned
  OnDestroy = FrmBasePaiDestroy
  OnKeyUp = FrmBasePaiKeyUp
  ExplicitWidth = 679
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  inherited panPri: TLMDSimplePanel
    Width = 671
    Height = 308
    ExplicitWidth = 671
    ExplicitHeight = 308
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 671
      Height = 55
      ExplicitWidth = 671
      ExplicitHeight = 55
    end
    object Grid: TcxGrid
      Left = 0
      Top = 60
      Width = 671
      Height = 248
      Align = alClient
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
        DataController.DataSource = dsCli
        DataController.Filter.MaxValueListCount = 1000
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Filter.SupportedLike = False
        DataController.KeyFieldNames = 'Codigo'
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
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsData.Appending = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.Indicator = True
        Preview.AutoHeight = False
        OnColumnPosChanged = TVColumnPosChanged
        OnColumnSizeChanged = TVColumnPosChanged
        object TVNome: TcxGridDBColumn
          DataBinding.FieldName = 'Nome'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.MaxLength = 40
          Properties.ReadOnly = False
          FooterAlignmentHorz = taCenter
          Width = 174
        end
        object TVCodigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.MaxLength = 0
          Properties.ReadOnly = False
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object TVValorCred: TcxGridDBColumn
          Caption = 'Cred. Valor'
          DataBinding.FieldName = 'ValorCred'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 73
        end
        object TVInativo: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'Inativo'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = 'Ativo'
              Value = False
            end
            item
              Description = 'Inativo'
              Value = True
            end>
          OnCustomDrawCell = TVInativoCustomDrawCell
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Width = 59
        end
        object TVDebito: TcxGridDBColumn
          Caption = 'D'#233'bito'
          DataBinding.FieldName = 'Debito'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Properties.ReadOnly = False
          OnCustomDrawCell = TVDebitoCustomDrawCell
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 69
          Options.Editing = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Width = 69
        end
        object TVDataNasc: TcxGridDBColumn
          Caption = 'Data Nasc.'
          DataBinding.FieldName = 'DataNasc'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnClear, btnToday]
          Properties.DateOnError = deToday
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
        end
        object TVTelefone: TcxGridDBColumn
          DataBinding.FieldName = 'Telefone'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.MaxLength = 15
          Properties.ReadOnly = False
          Width = 98
        end
        object TVCelular: TcxGridDBColumn
          DataBinding.FieldName = 'Celular'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.MaxLength = 15
          Properties.ReadOnly = False
        end
      end
      object GL: TcxGridLevel
        GridView = TV
      end
    end
    object LMDSimplePanel1: TLMDSimplePanel
      Left = 0
      Top = 55
      Width = 671
      Height = 5
      Hint = ''
      Align = alTop
      Bevel.Mode = bmCustom
      TabOrder = 1
    end
    object panBusca: TPanel
      Left = 85
      Top = 94
      Width = 268
      Height = 49
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      object edBusca: TcxMaskEdit
        Left = 11
        Top = 22
        BeepOnEnter = False
        ParentFont = False
        Properties.AutoSelect = False
        Properties.MaskKind = emkRegExpr
        Properties.MaxLength = 0
        Properties.ValidateOnEnter = False
        Properties.OnChange = edBuscaPropertiesChange
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        OnEnter = edBuscaEnter
        OnExit = edBuscaExit
        OnKeyUp = edBuscaKeyUp
        Width = 245
      end
      object rgCod: TcxRadioButton
        Left = 126
        Top = 5
        Width = 54
        Height = 17
        Cursor = crHandPoint
        Caption = 'C'#243'&digo'
        TabOrder = 1
        OnClick = rgNomeClick
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
      end
      object rgNome: TcxRadioButton
        Left = 71
        Top = 5
        Width = 49
        Height = 17
        Cursor = crHandPoint
        Caption = '&Nome'
        Checked = True
        TabOrder = 2
        TabStop = True
        OnClick = rgNomeClick
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
      end
      object cxLabel1: TcxLabel
        Left = 11
        Top = 4
        Caption = 'Busca por:'
        ParentFont = False
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
          ItemName = 'container_panBusca'
        end
        item
          BeginGroup = True
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
          ItemName = 'cmNovo'
        end
        item
          Visible = True
          ItemName = 'cmEditar'
        end>
    end
    inherited cmNovo: TdxBarLargeButton
      LargeImageIndex = 6
      OnClick = cmNovoClick
      AutoGrayScale = True
      GlyphLayout = glTop
      ImageIndex = -1
    end
    inherited cmEditar: TdxBarLargeButton
      LargeImageIndex = 2
      OnClick = cmEditarClick
      AutoGrayScale = True
      GlyphLayout = glTop
      ImageIndex = 20
    end
    inherited cmApagar: TdxBarLargeButton
      GlyphLayout = glTop
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
      GlyphLayout = glLeft
    end
    object cmCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = btnCancelarClick
      GlyphLayout = glLeft
    end
    object container_panBusca: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = panBusca
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Left = 0
    Top = 225
  end
  inherited pmLay: TdxBarPopupMenu
    Left = 392
    Top = 178
  end
  object Tab: TnxTable
    Database = Dados.db
    Timeout = 10000
    Filter = 'Fornecedor = False'
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Cliente'
    IndexName = 'INome'
    Left = 40
    Top = 176
    object TabID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object TabCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object TabCodigoKey: TStringField
      FieldName = 'CodigoKey'
      Size = 15
    end
    object TabNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object TabEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object TabEndereco2: TWideStringField
      FieldName = 'Endereco2'
      Size = 60
    end
    object TabEnd_Numero: TWideStringField
      FieldName = 'End_Numero'
    end
    object TabEnd_CodMun: TWideStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object TabEnd_Dest: TWideStringField
      FieldName = 'End_Dest'
      Size = 40
    end
    object TabEnd_Obs: TWideStringField
      FieldName = 'End_Obs'
      Size = 40
    end
    object Tabendereco_id: TGuidField
      FieldName = 'endereco_id'
      Size = 38
    end
    object TabPais: TWideStringField
      FieldName = 'Pais'
      Size = 2
    end
    object TabBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object TabCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object TabUF: TWideStringField
      FieldName = 'UF'
      Size = 30
    end
    object TabCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object TabNFE_CredIcms: TBooleanField
      FieldName = 'NFE_CredIcms'
    end
    object TabSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object TabObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object TabCpf: TWideStringField
      FieldName = 'Cpf'
    end
    object TabRg: TWideStringField
      FieldName = 'Rg'
    end
    object TabTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object TabEmail: TWideMemoField
      FieldName = 'Email'
      BlobType = ftWideMemo
    end
    object TabPassaportes: TFloatField
      FieldName = 'Passaportes'
    end
    object TabPai: TWideStringField
      FieldName = 'Pai'
      Size = 40
    end
    object TabMae: TWideStringField
      FieldName = 'Mae'
      Size = 40
    end
    object TabUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object TabDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object TabDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object TabCelular: TWideStringField
      FieldName = 'Celular'
      Size = 15
    end
    object TabTemDebito: TBooleanField
      FieldName = 'TemDebito'
    end
    object TabLimiteDebito: TCurrencyField
      FieldName = 'LimiteDebito'
    end
    object TabFoto: TGraphicField
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object TabIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object TabAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object TabIncluidoPor: TStringField
      FieldName = 'IncluidoPor'
    end
    object TabAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
    end
    object TabFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object TabFidTotal: TFloatField
      FieldName = 'FidTotal'
    end
    object TabFidResg: TFloatField
      FieldName = 'FidResg'
    end
    object TabAniversario: TStringField
      FieldName = 'Aniversario'
      Size = 4
    end
    object TabSemFidelidade: TBooleanField
      FieldName = 'SemFidelidade'
    end
    object TabTemCredito: TBooleanField
      FieldName = 'TemCredito'
    end
    object TabPJuridica: TBooleanField
      FieldName = 'PJuridica'
    end
    object TabInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object TabFornecedor: TBooleanField
      FieldName = 'Fornecedor'
    end
    object TabValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
    object TabRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object dsCli: TDataSource
    DataSet = Tab
    Left = 72
    Top = 176
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
    OnTimer = Timer1Timer
    Left = 152
    Top = 152
  end
  object Timer2: TTimer
    Interval = 100
    OnTimer = Timer2Timer
    Left = 256
    Top = 168
  end
end
