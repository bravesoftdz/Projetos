inherited fbFornecedores: TfbFornecedores
  Caption = 'fbFornecedores'
  Font.Height = -13
  Font.Name = 'Segoe UI'
  ExplicitWidth = 684
  ExplicitHeight = 389
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    inherited dxBarDockControl1: TdxBarDockControl
      Height = 76
      ExplicitHeight = 76
    end
    object Grid: TcxGrid
      Left = 0
      Top = 76
      Width = 668
      Height = 275
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      object TV: TcxGridDBTableView
        OnDblClick = cmEditarFornecedorClick
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
        DataController.DataSource = dsTab
        DataController.Filter.MaxValueListCount = 1000
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.KeyFieldNames = 'ID'
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
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
        OptionsBehavior.CellHints = True
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.GridLineColor = 16053492
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.Indicator = True
        Preview.Column = TVObs
        Preview.MaxLineCount = 0
        Preview.Visible = True
        Styles.Header = FrmPri.cxsHeader
        OnCustomDrawColumnHeader = TVCustomDrawColumnHeader
        OnCustomDrawIndicatorCell = TVCustomDrawIndicatorCell
        object TVID: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          Visible = False
          VisibleForCustomization = False
        end
        object TVNome: TcxGridDBColumn
          DataBinding.FieldName = 'Nome'
        end
        object TVEndereco: TcxGridDBColumn
          DataBinding.FieldName = 'Endereco'
        end
        object TVBairro: TcxGridDBColumn
          DataBinding.FieldName = 'Bairro'
        end
        object TVCidade: TcxGridDBColumn
          DataBinding.FieldName = 'Cidade'
        end
        object TVUF: TcxGridDBColumn
          DataBinding.FieldName = 'UF'
        end
        object TVCEP: TcxGridDBColumn
          DataBinding.FieldName = 'CEP'
        end
        object TVObs: TcxGridDBColumn
          DataBinding.FieldName = 'Obs'
        end
        object TVCpf: TcxGridDBColumn
          Caption = 'CNPJ'
          DataBinding.FieldName = 'Cpf'
        end
        object TVRg: TcxGridDBColumn
          Caption = 'IE'
          DataBinding.FieldName = 'Rg'
        end
        object TVTelefone: TcxGridDBColumn
          DataBinding.FieldName = 'Telefone'
        end
        object TVEmail: TcxGridDBColumn
          DataBinding.FieldName = 'Email'
        end
        object TVCelular: TcxGridDBColumn
          DataBinding.FieldName = 'Celular'
        end
        object TVIncluidoEm: TcxGridDBColumn
          DataBinding.FieldName = 'IncluidoEm'
        end
        object TVAlteradoEm: TcxGridDBColumn
          DataBinding.FieldName = 'AlteradoEm'
        end
        object TVIncluidoPor: TcxGridDBColumn
          DataBinding.FieldName = 'IncluidoPor'
        end
        object TVAlteradoPor: TcxGridDBColumn
          DataBinding.FieldName = 'AlteradoPor'
        end
      end
      object GL: TcxGridLevel
        GridView = TV
      end
    end
    object panBusca2: TLMDSimplePanel
      AlignWithMargins = True
      Left = 8
      Top = 219
      Width = 305
      Height = 32
      Hint = ''
      Margins.Left = 0
      Margins.Right = 0
      Margins.Bottom = 4
      Bevel.BorderColor = clBtnShadow
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Color = clWhite
      TabOrder = 2
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 34
        Height = 32
        Cursor = crHandPoint
        Align = alLeft
        Center = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
          000000180806000000E0773DF8000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000B0C00000B0C013F4022C800
          0001B849444154484BA5D55B2F034118C6F15187444923697127A8531B2E5C38
          571DE218222242E27421F8FEDF60FD9FDD9D76BA7D5B8B37F955BB9E99773A66
          978BA2C8444D60115778440D9318B6F2BD745F706E0AE778C757C6276E319F1D
          D74BE707E756614D6C6962301C6F69BF49260F2778C13EB435CBD8C43DC2CC21
          FA36495E92BD0D577E84B1AEB0734358C7077CB696CD85540338831F708CFEAB
          726E2DCDCA1346AC9CA84AF0ABD7B614AD60882AE01ABE49D5CA89AA9A86A469
          852CD45230AE616544B59586A46E852C54053AB61A77616544B59786A4EF1F2C
          4495E11B5C5A1951855F75C70A59A8B960DC8195119556E28F9D1E09B91E05D4
          493A4656AC8CA874B66FE0C31B563044CDC22F4A276FD4CA49F2E2DC0CFC7EEA
          A76EA642369C6635F91BFC82D4A06C65A5FDC6B9DD7480A76F55C73474A72FE0
          147E2121DD6C9570E2D6BCAD37C9CDD34076705E66938E0FF185E4543DC09A44
          B425E11685BA9A744CDEBAC84982F67A1BDA163DABF4EDD4BC086DD9337E6CD2
          35795E54AE26E6E0BCA87E4DE2D3650EFC0DAA5713FD732A99837E8BCA36B9C3
          78FCBB6CF8AF28357985561E4F1E5F0F43FF45E9115E6A5F8BDC37AD801B54BD
          572B5B0000000049454E44AE426082}
        OnClick = lbLocalizarClick
        ExplicitLeft = -8
        ExplicitTop = -3
      end
      object edBusca: TcxMaskEdit
        AlignWithMargins = True
        Left = 37
        Top = 3
        Cursor = crHandPoint
        Align = alClient
        ParentFont = False
        Properties.MaskKind = emkRegExpr
        Properties.MaxLength = 0
        Properties.OnChange = edBuscaPropertiesChange
        Style.BorderStyle = ebsNone
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = clBlack
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.BorderStyle = ebsNone
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.TextColor = clBlue
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnKeyUp = edBuscaKeyUp
        Width = 265
      end
      object lbLocalizar: TcxLabel
        Left = 43
        Top = 7
        Cursor = crHandPoint
        AutoSize = False
        Caption = 'Localizar fornecedor'
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clSilver
        Style.IsFontAssigned = True
        StyleFocused.TextColor = clBlue
        Transparent = True
        OnClick = lbLocalizarClick
        Height = 17
        Width = 252
      end
    end
  end
  inherited BarMgr: TdxBarManager
    Font.Charset = ANSI_CHARSET
    Font.Name = 'Tahoma'
    UseSystemFont = False
    Left = 48
    Top = 152
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BarMgrBar1: TdxBar
      Font.Charset = ANSI_CHARSET
      Font.Height = -13
      Font.Name = 'Tahoma'
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmNovoFornecedor'
        end
        item
          Visible = True
          ItemName = 'cmEditarFornecedor'
        end
        item
          Visible = True
          ItemName = 'cmApagarFornecedor'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmImprimir'
        end>
      UseOwnFont = True
    end
    object BarMgrBar2: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'BarBusca'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 42
      FloatLeft = 702
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmObs'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    inherited cmNovo: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited cmEditar: TdxBarLargeButton
      ImageIndex = 20
    end
    inherited cmApagar: TdxBarLargeButton
      ImageIndex = 12
    end
    inherited cmImprimir: TdxBarLargeButton
      LargeImageIndex = 7
    end
    inherited cmLayout: TdxBarLargeButton
      ImageIndex = -1
    end
    inherited cmPeriodo: TdxBarLargeButton
      ImageIndex = -1
    end
    object cmNovoFornecedor: TdxBarLargeButton
      Caption = '&Novo'
      Category = 0
      Hint = 'Novo'
      Visible = ivAlways
      LargeImageIndex = 37
      OnClick = cmNovoFornecedorClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      SyncImageIndex = False
      ImageIndex = 0
    end
    object cmEditarFornecedor: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      LargeImageIndex = 38
      OnClick = cmEditarFornecedorClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmApagarFornecedor: TdxBarLargeButton
      Caption = '&Apagar'
      Category = 0
      Hint = 'Apagar'
      Visible = ivAlways
      LargeImageIndex = 40
      OnClick = cmApagarFornecedorClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = panBusca2
    end
    object cmObs: TdxBarButton
      Caption = 'Observa'#231#245'es'
      Category = 0
      Hint = 'Observa'#231#245'es'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      ImageIndex = 76
      OnClick = cmObsClick
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Top = 153
  end
  object Tab: TnxTable
    Database = Dados.db
    Timeout = 10000
    Filter = 'fornecedor = true'
    Filtered = True
    TableName = 'Cliente'
    IndexName = 'IFornecedorNome'
    Left = 72
    Top = 88
    object TabID: TAutoIncField
      FieldName = 'ID'
    end
    object TabNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object TabEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object TabBairro: TStringField
      FieldName = 'Bairro'
    end
    object TabCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object TabCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object TabSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object TabObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object TabCpf: TStringField
      FieldName = 'Cpf'
    end
    object TabRg: TStringField
      FieldName = 'Rg'
    end
    object TabTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object TabEmail: TnxMemoField
      FieldName = 'Email'
      BlobType = ftMemo
    end
    object TabPassaportes: TFloatField
      FieldName = 'Passaportes'
    end
    object TabPai: TStringField
      FieldName = 'Pai'
      Size = 40
    end
    object TabMae: TStringField
      FieldName = 'Mae'
      Size = 40
    end
    object TabSenha: TStringField
      FieldName = 'Senha'
    end
    object TabUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object TabDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object TabEscola: TStringField
      FieldName = 'Escola'
      Size = 40
    end
    object TabNickName: TStringField
      FieldName = 'NickName'
      Size = 30
    end
    object TabDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object TabCelular: TStringField
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
      Size = 10
    end
    object TabAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 10
    end
    object TabTitEleitor: TStringField
      FieldName = 'TitEleitor'
      Size = 13
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
    object TabCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object TabUF: TStringField
      FieldName = 'UF'
      Size = 30
    end
  end
  object dsTab: TDataSource
    DataSet = Tab
    Left = 104
    Top = 88
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer2Timer
    Left = 200
    Top = 264
  end
end
