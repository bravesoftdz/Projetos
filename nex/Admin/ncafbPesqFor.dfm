inherited fbPesqFor: TfbPesqFor
  Left = 300
  Top = 420
  Caption = 'Fornecedores'
  ClientHeight = 344
  ClientWidth = 557
  OldCreateOrder = True
  Position = poDesigned
  OnDestroy = FrmBasePaiDestroy
  ExplicitWidth = 565
  ExplicitHeight = 375
  PixelsPerInch = 96
  TextHeight = 13
  inherited panPri: TLMDSimplePanel
    Width = 557
    Height = 344
    ExplicitWidth = 557
    ExplicitHeight = 344
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 557
      Height = 36
      ExplicitWidth = 557
      ExplicitHeight = 36
    end
    object LMDSimplePanel1: TLMDSimplePanel
      Left = 0
      Top = 36
      Width = 557
      Height = 5
      Hint = ''
      Align = alTop
      Bevel.Mode = bmCustom
      TabOrder = 0
    end
    object LMDSimplePanel2: TLMDSimplePanel
      Left = 0
      Top = 41
      Width = 557
      Height = 303
      Hint = ''
      Align = alClient
      Bevel.Mode = bmStandard
      Color = clWhite
      TabOrder = 3
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 555
        Height = 30
        Align = dalTop
        BarManager = BarMgr
      end
      object Grid: TcxGrid
        Left = 1
        Top = 31
        Width = 555
        Height = 271
        Align = alClient
        BorderStyle = cxcbsNone
        TabOrder = 1
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
          OptionsView.NoDataToDisplayInfoText = '<Nenhum fornecedor foi cadastrado ainda>'
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.Header = False
          Preview.AutoHeight = False
          object TVNome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 40
            Properties.ReadOnly = False
            FooterAlignmentHorz = taCenter
            Width = 174
          end
        end
        object GL: TcxGridLevel
          GridView = TV
        end
      end
    end
    object panMostrar: TPanel
      Left = 37
      Top = 110
      Width = 268
      Height = 29
      BevelOuter = bvNone
      TabOrder = 2
      object edBusca: TcxMaskEdit
        Left = 49
        Top = 4
        ParentFont = False
        Properties.MaskKind = emkRegExpr
        Properties.MaxLength = 0
        Properties.OnChange = edBuscaPropertiesChange
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        OnKeyUp = edBuscaKeyUp
        Width = 215
      end
      object cxLabel1: TcxLabel
        Left = 3
        Top = 5
        Caption = 'Localizar'
        ParentFont = False
      end
    end
  end
  inherited BarMgr: TdxBarManager
    ImageOptions.LargeImages = dmImagens.im24
    ImageOptions.UseLargeImagesForLargeIcons = True
    Left = 72
    Top = 232
    inherited BarMgrBar1: TdxBar
      Caption = 'BarraComum'
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmOk'
        end
        item
          Visible = True
          ItemName = 'cmCancelar'
        end>
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
      FloatLeft = 563
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
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
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    inherited cmNovo: TdxBarLargeButton
      OnClick = cmNovoClick
      AutoGrayScale = True
      LargeImageIndex = 6
      ShowCaption = True
      ImageIndex = -1
    end
    inherited cmEditar: TdxBarLargeButton
      OnClick = cmEditarClick
      AutoGrayScale = True
      LargeImageIndex = 2
      ShowCaption = True
      ImageIndex = 20
    end
    inherited cmApagar: TdxBarLargeButton
      AutoGrayScale = True
      LargeImageIndex = 7
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
      GlyphLayout = glTop
      LargeImageIndex = 47
    end
    inherited cmImprimir: TdxBarLargeButton
      Visible = ivNever
      GlyphLayout = glTop
      LargeImageIndex = 7
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
      OnClick = btnOKClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 5
    end
    object cmCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      OnClick = btnCancelarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 4
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = panMostrar
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Top = 225
  end
  inherited pmLay: TdxBarPopupMenu
    Left = 392
    Top = 178
  end
  object Tab: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Timeout = 10000
    Filter = 'TipoFor=0'
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    AfterOpen = TabAfterOpen
    BeforePost = TabBeforePost
    TableName = 'Cliente'
    IndexName = 'IFornecedorNome'
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
    object TabNaoContribICMS: TBooleanField
      FieldName = 'NaoContribICMS'
    end
    object TabIsentoIE: TBooleanField
      FieldName = 'IsentoIE'
    end
    object TabInfoExtra: TWideStringField
      FieldName = 'InfoExtra'
      Size = 50
    end
    object TabTranspEntPadrao: TLongWordField
      FieldName = 'TranspEntPadrao'
    end
    object TabTranspEnt: TBooleanField
      FieldName = 'TranspEnt'
    end
    object TabTipoFor: TByteField
      FieldName = 'TipoFor'
    end
    object TabConsumidor: TBooleanField
      FieldName = 'Consumidor'
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
end
