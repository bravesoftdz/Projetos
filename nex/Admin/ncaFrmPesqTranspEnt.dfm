object FrmPesqTranspEnt: TFrmPesqTranspEnt
  Left = 300
  Top = 420
  BorderWidth = 7
  Caption = 'Selecione um entregador ou transportadora'
  ClientHeight = 389
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 192
    Top = 288
    Width = 38
    Height = 17
    Caption = 'Label1'
  end
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 74
    Width = 529
    Height = 315
    Hint = ''
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 0
    object panGrid: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 529
      Height = 315
      Hint = ''
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 7
      Margins.Bottom = 7
      Align = alClient
      Bevel.Mode = bmStandard
      Color = clWhite
      TabOrder = 0
      object Grid: TcxGrid
        Left = 1
        Top = 25
        Width = 527
        Height = 289
        Margins.Left = 7
        Margins.Top = 0
        Margins.Right = 7
        Margins.Bottom = 7
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
        RootLevelOptions.DetailFrameColor = clSilver
        object TV: TcxGridDBTableView
          OnDblClick = TVDblClick
          OnKeyDown = TVKeyDown
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          OnCustomDrawCell = TVCustomDrawCell
          OnFocusedRecordChanged = TVFocusedRecordChanged
          DataController.DataSource = DS
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.SupportedLike = False
          DataController.KeyFieldNames = 'ID'
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
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = TVNome
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.NoDataToDisplayInfoText = '< ainda n'#227'o foi cadastrado nenhum entregador ou transportadora>'
          OptionsView.ColumnAutoWidth = True
          OptionsView.DataRowHeight = 36
          OptionsView.GridLineColor = 15724527
          OptionsView.GridLines = glHorizontal
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.Header = False
          OptionsView.IndicatorWidth = 0
          Preview.AutoHeight = False
          Styles.Header = cxStyle3
          object TVTipo: TcxGridDBColumn
            DataBinding.FieldName = 'TipoFor'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = dmImagens.im24
            Properties.ImmediateDropDownWhenActivated = True
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = 'Transportadora'
                ImageIndex = 60
                Value = 1
              end
              item
                Description = 'Entregador'
                ImageIndex = 66
                Value = 2
              end
              item
                ImageIndex = 4
                Value = 0
              end>
            Properties.ShowDescriptions = False
            Width = 38
          end
          object TVNome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
            OnGetDisplayText = TVNomeGetDisplayText
          end
        end
        object TVFor: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.GridMode = True
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.NoDataToDisplayInfoText = '<Ainda n'#227'o foi cadastrado nenhum fornecedor>'
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object TVForNome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
          end
        end
        object GL: TcxGridLevel
          GridView = TV
        end
      end
      object panBusca: TLMDSimplePanel
        Left = 1
        Top = 1
        Width = 527
        Height = 24
        Hint = ''
        Margins.Left = 7
        Margins.Top = 7
        Margins.Right = 7
        Margins.Bottom = 7
        Align = alTop
        Bevel.BorderSides = [fsBottom]
        Bevel.EdgeStyle = etSunken
        Bevel.Mode = bmStandard
        Bevel.StandardStyle = lsNone
        Color = clWhite
        TabOrder = 1
        object lbEditar: TcxLabel
          AlignWithMargins = True
          Left = 80
          Top = 0
          Cursor = crHandPoint
          Margins.Left = 20
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          Align = alLeft
          Caption = '&Editar (F9)'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.HotTrack = True
          Style.TextColor = clHotLight
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clHotLight
          StyleHot.TextStyle = [fsUnderline]
          Properties.Alignment.Vert = taVCenter
          OnClick = lbEditarClick
          AnchorY = 12
        end
        object lbNovo: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 0
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          Align = alLeft
          Caption = '&Novo (F4)'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.HotTrack = True
          Style.TextColor = clHotLight
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clHotLight
          StyleHot.TextStyle = [fsUnderline]
          Properties.Alignment.Vert = taVCenter
          OnClick = lbNovoClick
          AnchorY = 12
        end
        object lbExcluir: TcxLabel
          AlignWithMargins = True
          Left = 157
          Top = 0
          Cursor = crHandPoint
          Margins.Left = 20
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          Align = alLeft
          Caption = 'E&xcluir'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.HotTrack = True
          Style.TextColor = clHotLight
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clHotLight
          StyleHot.TextStyle = [fsUnderline]
          Properties.Alignment.Vert = taVCenter
          OnClick = lbExcluirClick
          AnchorY = 12
        end
        object lbSalvarPadrao: TcxLabel
          Left = 387
          Top = 0
          Cursor = crHandPoint
          Align = alRight
          Caption = 'Salvar como op'#231#227'o padr'#227'o'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.HotTrack = True
          Style.TextColor = 10658466
          Style.TextStyle = [fsUnderline]
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clHotLight
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          OnClick = lbSalvarPadraoClick
          AnchorY = 12
        end
      end
    end
  end
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 529
    Height = 31
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 7
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 1
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 96
      Top = 0
      Width = 74
      Height = 31
      Cursor = crHandPoint
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Cancel = True
      Caption = 'Cancelar'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 2
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = btnCancelarClick
    end
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 81
      Height = 31
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object cxLabel1: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 43
    Margins.Left = 0
    Margins.Top = 5
    Margins.Right = 0
    Margins.Bottom = 10
    Align = alTop
    Caption = 
      'Escolha o entregador ou transportador PREFERENCIAL desse cliente' +
      ':'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.TextColor = clBlack
    Style.TextStyle = [fsBold, fsUnderline]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    AnchorX = 265
    AnchorY = 54
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 128
    Top = 248
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clGray
    end
  end
  object Tab: TnxTable
    Database = Dados.db
    TableName = 'Cliente'
    IndexName = 'ITranspEntNome'
    Left = 136
    Top = 112
    object TabID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object TabTipoFor: TByteField
      FieldName = 'TipoFor'
    end
    object TabNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object TabTranspEnt: TBooleanField
      FieldName = 'TranspEnt'
    end
    object TabFornecedor: TBooleanField
      FieldName = 'Fornecedor'
    end
    object TabCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object TabCodigoKey: TStringField
      FieldName = 'CodigoKey'
      Size = 15
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
    object TabNaoContribICMS: TBooleanField
      FieldName = 'NaoContribICMS'
    end
    object TabIsentoIE: TBooleanField
      FieldName = 'IsentoIE'
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
    object TabInfoExtra: TWideStringField
      FieldName = 'InfoExtra'
      Size = 50
    end
    object TabTranspEntPadrao: TLongWordField
      FieldName = 'TranspEntPadrao'
    end
    object TabPJuridica: TBooleanField
      FieldName = 'PJuridica'
    end
    object TabConsumidor: TBooleanField
      FieldName = 'Consumidor'
    end
    object TabInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object TabValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
    object TabRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object DS: TDataSource
    DataSet = MT
    Left = 224
    Top = 112
  end
  object MT: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexName = 'MTIndex1'
    IndexDefs = <
      item
        Name = 'MTIndex1'
        Fields = 'Nome'
      end
      item
        Name = 'MTIndex2'
        Fields = 'ID'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.72.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    OnCalcFields = MTCalcFields
    Left = 224
    Top = 80
    object MTID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object MTTipoFor: TByteField
      FieldName = 'TipoFor'
    end
    object MTNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object MTPref: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Pref'
      Calculated = True
    end
  end
end
