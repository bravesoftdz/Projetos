inherited fbProdutos: TfbProdutos
  Left = 252
  Top = 186
  Caption = 'fbProdutos'
  ClientHeight = 519
  ClientWidth = 1020
  Font.Height = -13
  OldCreateOrder = True
  Scaled = False
  ExplicitWidth = 1036
  ExplicitHeight = 558
  PixelsPerInch = 96
  TextHeight = 16
  inherited panPri: TLMDSimplePanel
    Width = 1020
    Height = 519
    ParentFont = True
    ExplicitWidth = 1020
    ExplicitHeight = 519
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 1020
      Height = 3
      Visible = False
      ExplicitWidth = 1020
      ExplicitHeight = 3
    end
    object PB: TcxProgressBar
      Left = 0
      Top = 495
      Align = alBottom
      ParentFont = False
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      Style.StyleController = FrmPri.cxEditStyleController1
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Visible = False
      ExplicitTop = 498
      Width = 1020
    end
    object Paginas: TcxPageControl
      Left = 0
      Top = 3
      Width = 1020
      Height = 492
      Align = alClient
      TabOrder = 2
      Properties.ActivePage = tsProd
      Properties.CustomButtons.Buttons = <>
      Properties.HideTabs = True
      ExplicitHeight = 495
      ClientRectBottom = 488
      ClientRectLeft = 4
      ClientRectRight = 1016
      ClientRectTop = 4
      object tsProd: TcxTabSheet
        Caption = 'Produtos'
        ImageIndex = 0
        ExplicitHeight = 487
        object panGrid: TLMDSplitterPanel
          Left = 0
          Top = 44
          Width = 1012
          Height = 440
          Hint = ''
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Bars = <
            item
              OldPosition = -1
              Position = 733
              PosPercent = 73
              Width = 7
            end>
          Align = alClient
          Color = clWhite
          TabOrder = 0
          object LMDSplitterPane1: TLMDSplitterPane
            Bevel.Mode = bmStandard
            object Grid: TcxGrid
              Left = 0
              Top = 38
              Width = 731
              Height = 400
              Align = alClient
              BorderStyle = cxcbsNone
              Font.Charset = ANSI_CHARSET
              Font.Color = 8553090
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              object TVprod: TcxGridDBTableView
                OnDblClick = TVprodDblClick
                OnKeyDown = TVprodKeyDown
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
                    Column = TVprodPrecoTotal
                  end
                  item
                    Format = '0.00'
                    Kind = skSum
                    Column = TVprodCustoTotal
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    Column = TVprodEstoqueAtual
                  end
                  item
                    Format = '0 itens'
                    Kind = skCount
                    Column = TVDescr
                  end>
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
                OptionsBehavior.CellHints = True
                OptionsBehavior.IncSearch = True
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsSelection.HideFocusRectOnExit = False
                OptionsSelection.UnselectFocusedRecordOnExit = False
                OptionsView.GridLineColor = 16053492
                OptionsView.GroupFooters = gfVisibleWhenExpanded
                OptionsView.HeaderHeight = 72
                OptionsView.Indicator = True
                OptionsView.IndicatorWidth = 14
                Preview.Column = TVprodObs
                Preview.Visible = True
                Styles.Header = FrmPri.cxsHeader
                OnColumnHeaderClick = TVprodColumnHeaderClick
                OnCustomDrawColumnHeader = TVprodCustomDrawColumnHeader
                OnCustomDrawIndicatorCell = TVprodCustomDrawIndicatorCell
                object TVseq: TcxGridDBColumn
                  AlternateCaption = 'Seq: Ordem sequ'#234'ncial de cadastro'
                  Caption = 'Seq.'
                  DataBinding.FieldName = 'ID'
                  PropertiesClassName = 'TcxSpinEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  HeaderHint = 'Ordem sequ'#234'ncial de cadastro'
                  Width = 49
                end
                object TVDescr: TcxGridDBColumn
                  Caption = 'Descri'#231#227'o'
                  DataBinding.FieldName = 'Descricao'
                  PropertiesClassName = 'TcxTextEditProperties'
                  OnGetDisplayText = TVDescrGetDisplayText
                  Styles.Content = FrmPri.cxStyle31
                  Width = 273
                end
                object TVprodDescr: TcxGridDBColumn
                  DataBinding.FieldName = 'Descricao'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Items = <
                    item
                      Description = 'xxx'
                      ImageIndex = 83
                      Value = 'web/plus'
                    end>
                  Visible = False
                  SortIndex = 0
                  SortOrder = soAscending
                  VisibleForCustomization = False
                  Width = 206
                end
                object TVprodCodigo: TcxGridDBColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'Codigo'
                  HeaderAlignmentVert = vaTop
                end
                object tvProdEstoqueTot: TcxGridDBColumn
                  Caption = 'Estoque Atual'
                  DataBinding.FieldName = 'EstoqueTot'
                  HeaderAlignmentHorz = taCenter
                  Width = 68
                end
                object tvProdEstoquePend: TcxGridDBColumn
                  Caption = 'Estoque Reservado'
                  DataBinding.FieldName = 'EstoquePend'
                  HeaderAlignmentHorz = taCenter
                  Width = 68
                end
                object TVprodEstoqueAtual: TcxGridDBColumn
                  Caption = 'Estoque Dispon'#237'vel'
                  DataBinding.FieldName = 'EstoqueAtual'
                  OnCustomDrawCell = TVprodEstoqueAtualCustomDrawCell
                  HeaderAlignmentHorz = taCenter
                  Width = 59
                end
                object TVprodPreco: TcxGridDBColumn
                  DataBinding.FieldName = 'Preco'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Nullable = False
                  Properties.ReadOnly = True
                  HeaderAlignmentHorz = taCenter
                  Width = 109
                end
                object TVprodMargemLucro: TcxGridDBColumn
                  Caption = 'Markup %'
                  DataBinding.FieldName = 'Margem'
                  PropertiesClassName = 'TcxMaskEditProperties'
                  Properties.Alignment.Horz = taCenter
                  OnGetDisplayText = TVprodMargemLucroGetDisplayText
                  HeaderAlignmentHorz = taCenter
                  Styles.Content = cxStyle1
                  VisibleForCustomization = False
                end
                object TVprodCustoUnitario: TcxGridDBColumn
                  Caption = 'Custo Unit'#225'rio'
                  DataBinding.FieldName = 'CustoUnitario'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.Nullable = False
                  Properties.ReadOnly = True
                  HeaderAlignmentHorz = taCenter
                  Styles.Content = cxStyle1
                  VisibleForCustomization = False
                  Width = 91
                end
                object TVprodCustoTotal: TcxGridDBColumn
                  Caption = 'Custo Total'
                  DataBinding.FieldName = 'CustoTotal'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taCenter
                  HeaderAlignmentHorz = taCenter
                  Styles.Content = cxStyle1
                  VisibleForCustomization = False
                  Width = 91
                end
                object TVprodPrecoTotal: TcxGridDBColumn
                  Caption = 'Pre'#231'o Total'
                  DataBinding.FieldName = 'PrecoTotal'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taCenter
                  HeaderAlignmentHorz = taCenter
                  Styles.Content = cxStyle1
                  VisibleForCustomization = False
                  Width = 84
                end
                object TVprodCategoria: TcxGridDBColumn
                  DataBinding.FieldName = 'Categoria'
                  PropertiesClassName = 'TcxMaskEditProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.MaxLength = 20
                  Properties.ReadOnly = True
                end
                object TVprodUnid: TcxGridDBColumn
                  DataBinding.FieldName = 'Unid'
                  Width = 78
                end
                object TVprodFornecedor: TcxGridDBColumn
                  Caption = 'Fornecedor Principal'
                  DataBinding.FieldName = 'NomeFor'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.GridMode = True
                  Properties.ImmediatePost = True
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Nome'
                    end>
                  Width = 189
                end
                object TVprodEstoqueMin: TcxGridDBColumn
                  Caption = 'Estoque Min.'
                  DataBinding.FieldName = 'EstoqueMin'
                  PropertiesClassName = 'TcxMaskEditProperties'
                  HeaderAlignmentHorz = taCenter
                  Width = 79
                end
                object TVprodEstoqueMax: TcxGridDBColumn
                  Caption = 'Estoque Max.'
                  DataBinding.FieldName = 'EstoqueMax'
                  PropertiesClassName = 'TcxMaskEditProperties'
                  HeaderAlignmentHorz = taCenter
                  Width = 91
                end
                object TVprodAbaixoMin: TcxGridDBColumn
                  Caption = 'Abaixo Min.'
                  DataBinding.FieldName = 'AbaixoMin'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.ImmediatePost = True
                  Properties.ImmediateUpdateText = True
                  Properties.Items = <
                    item
                      Description = 'Sem m'#237'nimo'
                      ImageIndex = 0
                    end
                    item
                      Description = 'N'#227'o'
                      Value = False
                    end
                    item
                      Description = 'Sim'
                      Value = True
                    end>
                  OnCustomDrawCell = TVprodAbaixoMinCustomDrawCell
                  OnGetDisplayText = TVprodAbaixoMinGetDisplayText
                  Width = 77
                end
                object TVprodRepor: TcxGridDBColumn
                  Caption = 'Repor'
                  DataBinding.FieldName = 'EstoqueRepor'
                  PropertiesClassName = 'TcxMaskEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Width = 75
                end
                object TVprodFidelidade: TcxGridDBColumn
                  AlternateCaption = 'Pr'#234'mio Fidelidade ?'
                  Caption = 'Pr'#234'mio ?'
                  DataBinding.FieldName = 'Fidelidade'
                  RepositoryItem = Dados.erSimNao
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000098CD290085BBA70082B7E7007EB3ED0078
                    ABBA007DB5450000000000000000000000000000000000000000000000000000
                    0000000000000000000000AAE248069CCEF42AC6EAFF4BE5FFFF4BE5FFFF0EB3
                    E1FF0084B8FD0083BD6E00000000000000000000000000000000000000000000
                    00000000000000B6F81B08A7D7F14DE9FFFF34CAECFF25B3DAFF20ADD6FF52CA
                    E1FF36DCFDFF007FB5FB0089C12A000000000000000000000000000000000000
                    00000000000000B3EA7F39D2F3FF1DC3EDFF2BC0E5FF4BE6FFFF32DFFFFF18AC
                    D7FF2FB1D4FF08ABDBFF0083BA87000000000000000000000000000000000000
                    00000000000000B9F2AC43DFFCFF2AD7FEFF43D6F3FF57EAFFFF42E4FFFF1CC1
                    EBFF73ECF9FF20C5EDFF0085BFAB000000000000000000000000000000000000
                    00000000000000BFF89F42DEFBFF10C6F3FF4EDCF5FF68EFFFFF52E9FFFF24C6
                    EDFF28B1D7FF1CC0EAFF008DC794000000000000000000000000000000000000
                    00000000000000C8FC5532D1F2FF26DBFFFF15CBF7FF45D7F5FF34CFF2FF36CC
                    EFFF5FF2FFFF03A0D1FE009DD742000000000000000000000000000000000000
                    0000000000000089FF0200BEEDB941DAF7FF2ED9FEFF28D7FEFF37DCFEFF45DE
                    FBFF18B8E2FF00A3D8A000000000000000000000000000000000000000000000
                    0000000000000000000000CAFF0A00BFF79B0DC8F7FA26D2FAFF20CCF6FF00B2
                    E8ED00A8E37C0058BF0300000000000000000000000000000000000000000000
                    0000000000000000000000000000A8615D3982585ACF646871FF665662FF8130
                    39D7256C0E500000000000000000000000000000000000000000000000000000
                    00000000000000000000B67F7F48A36E6DF9BE7876FFC47378FF5D8F47FF0D96
                    15FF0E7A15FE088A185E00000000000000000000000000000000000000000000
                    000000000000C1C9C903B07B7AE1DA8786FFD58183FFAA8670FF07B529FF11AD
                    25FF0B9B16FF0B7F17EB00680008000000000000000000000000000000000000
                    000000000000CA909031CB8C89FFF39091FFE9888BFF939A6BFF12BA38FF18B3
                    31FF14B129FF0B8516FF0F901D3A000000000000000000000000000000000000
                    000000000000D59E9E23C28F8EECBB8986F9B57F7EF8A07B71F5339F48F31BA1
                    3AF1189B32F1149229DA108D2021000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 76
                end
                object TVprodFidPontos: TcxGridDBColumn
                  AlternateCaption = 'Pontos necess'#225'rios'
                  Caption = 'Pontos Nec.'
                  DataBinding.FieldName = 'FidPontos'
                  PropertiesClassName = 'TcxSpinEditProperties'
                  Properties.Alignment.Horz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000098CD290085BBA70082B7E7007EB3ED0078
                    ABBA007DB5450000000000000000000000000000000000000000000000000000
                    0000000000000000000000AAE248069CCEF42AC6EAFF4BE5FFFF4BE5FFFF0EB3
                    E1FF0084B8FD0083BD6E00000000000000000000000000000000000000000000
                    00000000000000B6F81B08A7D7F14DE9FFFF34CAECFF25B3DAFF20ADD6FF52CA
                    E1FF36DCFDFF007FB5FB0089C12A000000000000000000000000000000000000
                    00000000000000B3EA7F39D2F3FF1DC3EDFF2BC0E5FF4BE6FFFF32DFFFFF18AC
                    D7FF2FB1D4FF08ABDBFF0083BA87000000000000000000000000000000000000
                    00000000000000B9F2AC43DFFCFF2AD7FEFF43D6F3FF57EAFFFF42E4FFFF1CC1
                    EBFF73ECF9FF20C5EDFF0085BFAB000000000000000000000000000000000000
                    00000000000000BFF89F42DEFBFF10C6F3FF4EDCF5FF68EFFFFF52E9FFFF24C6
                    EDFF28B1D7FF1CC0EAFF008DC794000000000000000000000000000000000000
                    00000000000000C8FC5532D1F2FF26DBFFFF15CBF7FF45D7F5FF34CFF2FF36CC
                    EFFF5FF2FFFF03A0D1FE009DD742000000000000000000000000000000000000
                    0000000000000089FF0200BEEDB941DAF7FF2ED9FEFF28D7FEFF37DCFEFF45DE
                    FBFF18B8E2FF00A3D8A000000000000000000000000000000000000000000000
                    0000000000000000000000CAFF0A00BFF79B0DC8F7FA26D2FAFF20CCF6FF00B2
                    E8ED00A8E37C0058BF0300000000000000000000000000000000000000000000
                    0000000000000000000000000000A8615D3982585ACF646871FF665662FF8130
                    39D7256C0E500000000000000000000000000000000000000000000000000000
                    00000000000000000000B67F7F48A36E6DF9BE7876FFC47378FF5D8F47FF0D96
                    15FF0E7A15FE088A185E00000000000000000000000000000000000000000000
                    000000000000C1C9C903B07B7AE1DA8786FFD58183FFAA8670FF07B529FF11AD
                    25FF0B9B16FF0B7F17EB00680008000000000000000000000000000000000000
                    000000000000CA909031CB8C89FFF39091FFE9888BFF939A6BFF12BA38FF18B3
                    31FF14B129FF0B8516FF0F901D3A000000000000000000000000000000000000
                    000000000000D59E9E23C28F8EECBB8986F9B57F7EF8A07B71F5339F48F31BA1
                    3AF1189B32F1149229DA108D2021000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 95
                end
                object TVprodObs: TcxGridDBColumn
                  DataBinding.FieldName = 'Obs'
                end
                object TVprodColumn1: TcxGridDBColumn
                  Caption = 'Tributa'#231#227'o'
                  DataBinding.FieldName = 'Nome_brtrib'
                end
                object TVprodNCM: TcxGridDBColumn
                  Caption = 'NCM'
                  DataBinding.FieldName = 'NCMDescr'
                  Width = 530
                end
                object TVPrecoAuto: TcxGridDBColumn
                  DataBinding.FieldName = 'PrecoAuto'
                  Visible = False
                  VisibleForCustomization = False
                end
                object TVprodIncluidoEm: TcxGridDBColumn
                  Caption = 'Inclu'#237'do em'
                  DataBinding.FieldName = 'IncluidoEm'
                end
                object TVprodAlteradoEm: TcxGridDBColumn
                  Caption = 'Alterado em'
                  DataBinding.FieldName = 'AlteradoEm'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.AssignedValues.DisplayFormat = True
                  Properties.ImmediateDropDownWhenActivated = True
                  Properties.ImmediateDropDownWhenKeyPressed = True
                  Properties.ImmediatePost = True
                  HeaderAlignmentHorz = taCenter
                end
                object TVprodAlteradoPor: TcxGridDBColumn
                  Caption = 'Alterado por'
                  DataBinding.FieldName = 'AlteradoPor'
                  Width = 182
                end
              end
              object GL: TcxGridLevel
                GridView = TVprod
              end
            end
            object LMDSimplePanel2: TLMDSimplePanel
              Left = 13
              Top = 66
              Width = 558
              Height = 44
              Hint = ''
              Margins.Left = 0
              Bevel.BorderColor = clWhite
              Bevel.Mode = bmCustom
              Color = clWhite
              TabOrder = 1
              object panBusca2: TLMDSimplePanel
                AlignWithMargins = True
                Left = 0
                Top = 6
                Width = 417
                Height = 32
                Hint = ''
                Margins.Left = 0
                Margins.Top = 6
                Margins.Bottom = 6
                Align = alLeft
                Bevel.BorderColor = clSilver
                Bevel.BorderInnerWidth = 1
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsNone
                Color = clWhite
                TabOrder = 0
                OnEnter = edBuscaEnter
                object Image1: TImage
                  Left = 1
                  Top = 1
                  Width = 34
                  Height = 30
                  Cursor = crHandPoint
                  Align = alLeft
                  Center = True
                  Picture.Data = {
                    0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
                    000000180806000000E0773DF80000000467414D410000B18F0BFC6105000000
                    097048597300000B0C00000B0C013F4022C8000001B849444154484BA5D55B2F
                    034118C6F15187444923697127A8531B2E5C38571DE218222242E27421F8FEDF
                    60FD9FDD9D76BA7D5B8B37F955BB9E99773A66978BA2C8444D60115778440D93
                    18B6F2BD745F706E0AE778C757C6276E319F1DD74BE707E756614D6C6962301C
                    6F69BF49260F2778C13EB435CBD8C43DC2CC21FA36495E92BD0D577E84B1AEB0
                    734358C7077CB696CD85540338831F708CFEAB726E2DCDCA1346AC9CA84AF0AB
                    D7B614AD60882AE01ABE49D5CA89AA9A86A469852CD45230AE616544B59586A4
                    6E852C54053AB61A77616544B59786A4EF1F2C4495E11B5C5A1951855F75C70A
                    59A8B960DC8195119556E28F9D1E09B91E05D4493A4656AC8CA874B66FE0C31B
                    563044CDC22F4A276FD4CA49F2E2DC0CFC7EEAA76EA642369C6635F91BFC82D4
                    A06C65A5FDC6B9DD7480A76F55C73474A72FE0147E2121DD6C9570E2D6BCAD37
                    C9CDD34076705E66938E0FF185E4543DC09A44B425E11685BA9A744CDEBAC849
                    82F67A1BDA163DABF4EDD4BC086DD9337E6CD235795E54AE26E6E0BCA87E4DE2
                    D3650EFC0DAA5713FD732A99837E8BCA36B9C378FCBB6CF8AF28357985561E4F
                    1E5F0F43FF45E9115E6A5F8BDC37AD801B54BD572B5B0000000049454E44AE42
                    6082}
                  OnClick = Image1Click
                  ExplicitLeft = -8
                  ExplicitTop = -3
                  ExplicitHeight = 32
                end
                object edBusca: TcxMaskEdit
                  AlignWithMargins = True
                  Left = 38
                  Top = 4
                  Align = alClient
                  OnFocusChanged = edBuscaFocusChanged
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
                  Style.Font.Style = [fsBold]
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
                  StyleFocused.TextColor = clHotLight
                  StyleHot.LookAndFeel.Kind = lfFlat
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 1
                  OnEnter = edBuscaEnter
                  OnKeyDown = edBuscaKeyDown
                  OnMouseUp = edBuscaMouseUp
                  Width = 375
                end
                object lbLocalizar: TcxLabel
                  Left = 43
                  Top = 7
                  Cursor = crHandPoint
                  AutoSize = False
                  Caption = 'Localizar produto por c'#243'digo ou descri'#231#227'o'
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
                  OnClick = Image1Click
                  Height = 17
                  Width = 252
                end
                object cbSuperBusca: TcxCheckBox
                  Left = 307
                  Top = 1
                  Cursor = crHandPoint
                  AutoSize = False
                  Caption = 'Busca Avan'#231'ada'
                  ParentFont = False
                  Properties.ImmediatePost = True
                  Properties.MultiLine = True
                  State = cbsChecked
                  Style.BorderStyle = ebsSingle
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Segoe UI'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  Transparent = True
                  OnClick = cbSuperBuscaClick
                  Height = 29
                  Width = 110
                end
              end
              object btnGerarEtiqueta: TcxButton
                AlignWithMargins = True
                Left = 423
                Top = 5
                Width = 107
                Height = 34
                Cursor = crHandPoint
                Margins.Top = 5
                Margins.Bottom = 5
                Align = alLeft
                Caption = 'Gerar Etiqueta'
                LookAndFeel.Kind = lfOffice11
                OptionsImage.ImageIndex = 39
                SpeedButtonOptions.Flat = True
                TabOrder = 1
                Visible = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = btnGerarEtiquetaClick
              end
            end
            object panEtq: TLMDSimplePanel
              Left = 0
              Top = 0
              Width = 731
              Height = 38
              Hint = ''
              Align = alTop
              Bevel.Mode = bmStandard
              Bevel.StandardStyle = lsSingleRaised
              Color = 12582911
              TabOrder = 2
              Visible = False
              object Shape1: TShape
                AlignWithMargins = True
                Left = 75
                Top = 5
                Width = 1
                Height = 28
                Margins.Left = 0
                Margins.Top = 4
                Margins.Right = 0
                Margins.Bottom = 4
                Align = alLeft
                Pen.Color = 5616057
                ExplicitLeft = 78
                ExplicitTop = -1
                ExplicitHeight = 36
              end
              object lbMensagem: TcxLabel
                AlignWithMargins = True
                Left = 86
                Top = 4
                Margins.Left = 10
                Align = alLeft
                Caption = 
                  'Localize o produto desejado e clique em "Gerar Etiqueta" ou tecl' +
                  'e ENTER.'
                ParentColor = False
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.LookAndFeel.Kind = lfFlat
                Style.LookAndFeel.NativeStyle = False
                Style.TextColor = 3026478
                Style.TextStyle = []
                Style.TransparentBorder = True
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.Kind = lfFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.Kind = lfFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.Kind = lfFlat
                StyleHot.LookAndFeel.NativeStyle = False
                Properties.Alignment.Vert = taVCenter
                Transparent = True
                AnchorY = 19
              end
              object btnFechar: TcxButton
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 70
                Height = 32
                Cursor = crHandPoint
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Align = alLeft
                Caption = 'Fechar'
                LookAndFeel.Kind = lfOffice11
                OptionsImage.ImageIndex = 5
                OptionsImage.Images = dmImagens.im16
                SpeedButtonOptions.CanBeFocused = False
                SpeedButtonOptions.AllowAllUp = True
                SpeedButtonOptions.Flat = True
                SpeedButtonOptions.Transparent = True
                TabOrder = 1
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                OnClick = btnFecharClick
              end
            end
          end
          object spEtq: TLMDSplitterPane
            Color = clBtnFace
            ParentColor = False
            Visible = False
            Bevel.Mode = bmStandard
            Bevel.StandardStyle = lsNone
            object LMDSimplePanel3: TLMDSimplePanel
              Left = 0
              Top = 0
              Width = 272
              Height = 440
              Hint = ''
              Align = alClient
              Bevel.BorderColor = clSilver
              Bevel.Mode = bmStandard
              TabOrder = 0
              object gridEtq: TcxGrid
                Left = 1
                Top = 39
                Width = 270
                Height = 400
                Align = alClient
                BorderStyle = cxcbsNone
                TabOrder = 0
                object tvEtq: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = dsEtq
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnGrouping = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Inserting = False
                  OptionsSelection.HideFocusRectOnExit = False
                  OptionsSelection.UnselectFocusedRecordOnExit = False
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.GridLineColor = 16053492
                  OptionsView.GroupByBox = False
                  Styles.Header = FrmPri.cxsHeader
                  OnCustomDrawColumnHeader = TVprodCustomDrawColumnHeader
                  object qridEtqImg: TcxGridDBColumn
                    Caption = 'Gerar etiquetas para:'
                    PropertiesClassName = 'TcxImageComboBoxProperties'
                    Properties.Images = dmImagens.im24
                    Properties.ImmediateDropDownWhenActivated = True
                    Properties.ImmediatePost = True
                    Properties.ImmediateUpdateText = True
                    Properties.Items = <
                      item
                        ImageIndex = 40
                      end>
                    OnGetDisplayText = qridEtqImgGetDisplayText
                    Options.Editing = False
                    Options.Focusing = False
                    Styles.Header = cxStyle6
                    Width = 354
                  end
                  object tvEtqProduto: TcxGridDBColumn
                    Caption = 'Gerar etiquetas para:'
                    DataBinding.FieldName = 'Produto'
                    Visible = False
                    Options.Focusing = False
                    Styles.Header = cxStyle6
                    VisibleForCustomization = False
                  end
                  object tvEtqQuant: TcxGridDBColumn
                    Caption = 'Qtd'
                    DataBinding.FieldName = 'Quant'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.ImmediatePost = True
                    Properties.MaxValue = 999999.000000000000000000
                    HeaderAlignmentHorz = taCenter
                    Styles.Header = cxStyle3
                  end
                end
                object glEtq: TcxGridLevel
                  GridView = tvEtq
                end
              end
              object LMDSimplePanel1: TLMDSimplePanel
                Left = 1
                Top = 1
                Width = 270
                Height = 38
                Hint = ''
                Align = alTop
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsSingleRaised
                TabOrder = 1
                object btnImprimirEtq: TcxButton
                  AlignWithMargins = True
                  Left = 4
                  Top = 3
                  Width = 133
                  Height = 32
                  Cursor = crHandPoint
                  Margins.Top = 2
                  Margins.Bottom = 2
                  Align = alLeft
                  Caption = 'Imprimir Agora - F5'
                  LookAndFeel.Kind = lfOffice11
                  OptionsImage.ImageIndex = 39
                  SpeedButtonOptions.Flat = True
                  TabOrder = 0
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  OnClick = btnImprimirEtqClick
                end
                object btnLimpaLista: TcxButton
                  AlignWithMargins = True
                  Left = 189
                  Top = 3
                  Width = 77
                  Height = 32
                  Cursor = crHandPoint
                  Margins.Top = 2
                  Margins.Bottom = 2
                  Align = alRight
                  Caption = 'Limpar a lista'
                  LookAndFeel.Kind = lfOffice11
                  OptionsImage.ImageIndex = 90
                  SpeedButtonOptions.CanBeFocused = False
                  SpeedButtonOptions.AllowAllUp = True
                  SpeedButtonOptions.Flat = True
                  SpeedButtonOptions.Transparent = True
                  TabOrder = 1
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  OnClick = btnLimpaListaClick
                end
              end
            end
          end
        end
        object bardocProd: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1012
          Height = 44
          Align = dalTop
          BarManager = BarMgr
          SunkenBorder = True
          UseOwnSunkenBorder = True
        end
      end
    end
  end
  inherited BarMgr: TdxBarManager
    ImageOptions.SmoothGlyphs = True
    ImageOptions.StretchGlyphs = False
    MenusShowRecentItemsFirst = False
    ShowFullMenusAfterDelay = False
    UseSystemFont = False
    Left = 168
    Top = 160
    inherited BarMgrBar1: TdxBar
      DockControl = bardocProd
      DockedDockControl = bardocProd
      Font.Charset = ANSI_CHARSET
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
          ItemName = 'cmEstoque'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmEtiqueta'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmExibir'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmImprimir'
        end
        item
          Visible = True
          ItemName = 'cmCfg'
        end>
      UseOwnFont = True
      UseRestSpace = True
    end
    object BarMgrBar2: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Busca'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 42
      FloatLeft = 555
      FloatTop = 0
      FloatClientWidth = 305
      FloatClientHeight = 60
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmBusca'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmFerramentas'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      UseOwnFont = True
      UseRecentItems = False
      UseRestSpace = True
      Visible = False
      WholeRow = True
    end
    inherited cmNovo: TdxBarLargeButton
      ShortCut = 45
      OnClick = cmNovoClick
      GlyphLayout = glTop
      ImageIndex = 0
    end
    inherited cmEditar: TdxBarLargeButton
      OnClick = cmEditarClick
      GlyphLayout = glTop
      ImageIndex = 20
    end
    inherited cmApagar: TdxBarLargeButton
      OnClick = cmApagarClick
      GlyphLayout = glTop
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
      Caption = '&Imprimir lista de produtos'
      Hint = 'Imprimir lista de produtos'
      LargeImageIndex = 7
      ShowCaption = False
    end
    inherited cmLayout: TdxBarLargeButton
      ImageIndex = -1
    end
    inherited cmPeriodo: TdxBarLargeButton
      ImageIndex = -1
    end
    inherited cmCfg: TdxBarLargeButton
      Align = iaRight
      OnClick = cmCfgClick
    end
    object cmReprocessar: TdxBarButton
      Caption = 'Reprocessar Estoque'
      Category = 0
      Hint = 'Reprocessar Estoque'
      Visible = ivAlways
      OnClick = cmReprocessarClick
    end
    object cmVendaAvulsa: TdxBarLargeButton
      Caption = 'Venda'
      Category = 0
      Hint = 'Venda'
      Visible = ivAlways
      OnClick = cmVendaAvulsaClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 10
    end
    object cmCompra: TdxBarLargeButton
      Caption = 'Compra'
      Category = 0
      Hint = 'Compra'
      Visible = ivAlways
      OnClick = cmCompraClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 77
    end
    object cmFerramentas: TdxBarSubItem
      Align = iaRight
      Caption = 'Ferramentas'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmReprocessar'
        end>
    end
    object cmBusca: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object cmObs: TdxBarButton
      Caption = 'Mostrar Observa'#231#245'es'
      Category = 0
      Hint = 'Mostrar Observa'#231#245'es'
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 76
      OnClick = cmObsClick
    end
    object cmExibir: TdxBarSubItem
      Caption = 'Exibir: Todos produtos'
      Category = 0
      Style = cxStyle7
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'rgTodos'
        end
        item
          Visible = True
          ItemName = 'cmAbaixoMin'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmMostrarFin'
        end
        item
          Visible = True
          ItemName = 'cmObs'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
    end
    object rgTodos: TdxBarButton
      Caption = 'Todos produtos'
      Category = 0
      Hint = 'Todos produtos'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = rgTodosClick
    end
    object cmAbaixoMin: TdxBarButton
      Caption = 'Produtos com pouco estoque (abaixo do m'#237'nimo)'
      Category = 0
      Hint = 'Produtos com pouco estoque (abaixo do m'#237'nimo)'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 18
      OnClick = cmAbaixoMinClick
    end
    object cmMostrarFin: TdxBarButton
      Caption = 
        'Mostrar informa'#231#245'es financeiras (Custo Total e Pre'#231'o Total em Es' +
        'toque)'
      Category = 0
      Hint = 
        'Mostrar informa'#231#245'es financeiras (Custo Total e Pre'#231'o Total em Es' +
        'toque)'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = cmMostrarFinClick
    end
    object cmEstoque: TdxBarLargeButton
      Caption = 'Estoque'
      Category = 0
      Hint = 'Estoque'
      Visible = ivAlways
      OnClick = cmEstoqueClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 147
    end
    object cmEtiqueta: TdxBarLargeButton
      Caption = 'Etiqueta'
      Category = 0
      Hint = 'Etiqueta'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = cmEtiquetaClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 141
    end
    object cmEntrada: TdxBarButton
      Caption = 'Entrada de Estoque'
      Category = 0
      Hint = 'Entrada de Estoque'
      Visible = ivAlways
      ImageIndex = 70
      OnClick = cmEntradaClick
    end
    object cmSaida: TdxBarButton
      Caption = 'Sa'#237'da de Estoque'
      Category = 0
      Hint = 'Sa'#237'da de Estoque'
      Visible = ivAlways
      ImageIndex = 78
      OnClick = cmSaidaClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Ferramentas'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmReprocessar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmZerarEstoque'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmReajuste'
        end>
    end
    object cmZerarEstoque: TdxBarButton
      Caption = 'Zerar estoque atual de todos os produtos'
      Category = 0
      Hint = 'Zerar estoque atual de todos os produtos'
      Visible = ivAlways
      OnClick = cmZerarEstoqueClick
    end
    object cmReajuste: TdxBarButton
      Caption = 'Reajustar pre'#231'o de vendas dos produtos por percentual'
      Category = 0
      Hint = 'Reajustar pre'#231'o de vendas dos produtos por percentual'
      Visible = ivAlways
      OnClick = cmReajusteClick
    end
    object cmTipoTran: TdxBarListItem
      Caption = 'Transa'#231#245'es'
      Category = 0
      Visible = ivAlways
      OnClick = cmTipoTranClick
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Left = 32
    Top = 73
  end
  inherited pmLay: TdxBarPopupMenu
    Left = 552
    Top = 82
  end
  inherited pmPeriodo: TdxBarPopupMenu
    Left = 224
    Top = 188
  end
  object Tab: TnxTable
    Database = Dados.db
    Timeout = 10000
    OnCalcFields = TabCalcFields
    TableName = 'Produto'
    IndexName = 'IDescricao'
    Left = 32
    Top = 248
    object TabID: TAutoIncField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object TabUnid: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Unid'
      Size = 5
    end
    object TabPreco: TCurrencyField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'Preco'
    end
    object TabObs: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object TabImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object TabCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
    end
    object TabEstoqueFinal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EstoqueFinal'
      Calculated = True
    end
    object TabDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object TabCategoria: TStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object TabSubCateg: TStringField
      FieldName = 'SubCateg'
      Size = 35
    end
    object TabPodeAlterarPreco: TBooleanField
      FieldName = 'PodeAlterarPreco'
    end
    object TabPermiteVendaFracionada: TBooleanField
      FieldName = 'PermiteVendaFracionada'
    end
    object TabNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object TabPrecoTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PrecoTotal'
      Calculated = True
    end
    object TabCustoTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CustoTotal'
      Calculated = True
    end
    object TabFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object TabFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object TabAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object TabAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
    end
    object TabNomeFor: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFor'
      LookupDataSet = Dados.tbCli
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'Fornecedor'
      Lookup = True
    end
    object TabAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object TabCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object TabIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object TabPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object TabMargem: TFloatField
      FieldName = 'Margem'
    end
    object TabCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object TabComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object TabComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object TabFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object TabEstoqueAtual: TFloatField
      Alignment = taCenter
      FieldName = 'EstoqueAtual'
      DisplayFormat = '0.####'
    end
    object TabEstoqueMin: TFloatField
      FieldName = 'EstoqueMin'
    end
    object TabEstoqueMax: TFloatField
      FieldName = 'EstoqueMax'
    end
    object TabEstoqueRepor: TFloatField
      FieldName = 'EstoqueRepor'
    end
    object TabEstoquePend: TFloatField
      Alignment = taCenter
      FieldName = 'EstoquePend'
    end
    object TabEstoqueTot: TFloatField
      Alignment = taCenter
      FieldName = 'EstoqueTot'
    end
    object TabNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object TabNCMDescr: TStringField
      FieldKind = fkLookup
      FieldName = 'NCMDescr'
      LookupDataSet = Dados.tbNCM
      LookupKeyFields = 'NCM'
      LookupResultField = 'NCMDescr'
      KeyFields = 'NCM'
      Size = 110
      Lookup = True
    end
    object TabNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object Tabbrtrib: TWordField
      FieldName = 'brtrib'
    end
    object Tabcest: TLongWordField
      FieldName = 'cest'
    end
    object TabNome_brtrib: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_brtrib'
      LookupDataSet = Dados.tBrTrib
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'brtrib'
      Size = 50
      Lookup = True
    end
    object Tabtax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object TabmodST: TByteField
      FieldName = 'modST'
    end
    object TabMVA: TnxMemoField
      FieldName = 'MVA'
      BlobType = ftMemo
    end
    object TabPauta: TnxMemoField
      FieldName = 'Pauta'
      BlobType = ftMemo
    end
    object TabPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object TabPesoLiq: TFloatField
      FieldName = 'PesoLiq'
    end
    object TabUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object TabAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object TabAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 30
    end
  end
  object dsTab: TDataSource
    DataSet = Tab
    Left = 72
    Top = 200
  end
  object pmEstoque: TdxBarPopupMenu
    BarManager = BarMgr
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'cmEntrada'
      end
      item
        Visible = True
        ItemName = 'cmSaida'
      end>
    UseOwnFont = True
    Left = 280
    Top = 194
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer2Timer
    Left = 200
    Top = 264
  end
  object pmFerramentas: TPopupMenu
    Left = 240
    Top = 352
    object ReprocessarEstoque1: TMenuItem
      Caption = 'Reprocessar Estoque'
      OnClick = ReprocessarEstoque1Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 12582911
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = 10639375
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clBtnFace
      TextColor = clGrayText
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = 10639375
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 10639375
    end
  end
  object tAux: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'Produto'
    IndexName = 'ICodigo'
    Left = 344
    Top = 280
    object tAuxCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
  end
  object TimerSelBusca: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerSelBuscaTimer
    Left = 624
    Top = 200
  end
  object repEtq: TfrxReport
    Version = '5.5.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41851.996217534700000000
    ReportOptions.LastChange = 42096.433066736110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 368
    Top = 168
    Datasets = <
      item
        DataSet = dbProd
        DataSetName = 'db'
      end
      item
        DataSet = dbConfig
        DataSetName = 'dbConfig'
      end
      item
        DataSet = dbRef
        DataSetName = 'dbImprimir'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 7.000000000000000000
      RightMargin = 7.000000000000000000
      TopMargin = 12.500000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 196.000000000000000000
      ColumnPositions.Strings = (
        '0')
      object Etiquetas: TfrxMasterData
        FillType = ftBrush
        Height = 64.251968500000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        Columns = 7
        ColumnWidth = 99.401574803149610000
        ColumnGap = 7.559055118110236000
        DataSet = dbRef
        DataSetName = 'dbImprimir'
        RowCount = 0
        object shapeEtiqueta: TfrxShapeView
          Width = 99.401574800000000000
          Height = 52.913378500000000000
          Visible = False
          Visibility = []
          Frame.Color = clBlue
        end
      end
    end
  end
  object dbProd: TfrxDBDataset
    Description = 'Dados do Produto'
    UserName = 'db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'Codigo=Codigo'
      'Descricao=Descricao'
      'Unid=Unid'
      'Preco=Preco'
      'PrecoAuto=PrecoAuto'
      'Margem=Margem'
      'Obs=Obs'
      'Imagem=Imagem'
      'Categoria=Categoria'
      'Fornecedor=Fornecedor'
      'SubCateg=SubCateg'
      'EstoqueAtual=EstoqueAtual'
      'EstoquePend=EstoquePend'
      'EstoqueTot=EstoqueTot'
      'brtrib=brtrib'
      'CustoUnitario=CustoUnitario'
      'PodeAlterarPreco=PodeAlterarPreco'
      'PermiteVendaFracionada=PermiteVendaFracionada'
      'NaoControlaEstoque=NaoControlaEstoque'
      'EstoqueMin=EstoqueMin'
      'EstoqueMax=EstoqueMax'
      'AbaixoMin=AbaixoMin'
      'AbaixoMinDesde=AbaixoMinDesde'
      'EstoqueRepor=EstoqueRepor'
      'ComissaoPerc=ComissaoPerc'
      'ComissaoLucro=ComissaoLucro'
      'tax_id=tax_id'
      'Ativo=Ativo'
      'Fidelidade=Fidelidade'
      'FidPontos=FidPontos'
      'NCM=NCM'
      'NCM_Ex=NCM_Ex'
      'cest=cest'
      'CadastroRapido=CadastroRapido'
      'IncluidoEm=IncluidoEm'
      'PrecoComTaxa=PrecoComTaxa')
    DataSet = tEtqProd
    BCDToCurrency = False
    Left = 416
    Top = 168
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 528
    Top = 248
  end
  object mtEtq: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Produto'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Quant'
        DataType = ftInteger
      end>
    IndexDefs = <>
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
    Left = 240
    Top = 232
    object mtEtqID: TIntegerField
      FieldName = 'ID'
    end
    object mtEtqProduto: TStringField
      FieldName = 'Produto'
      Size = 50
    end
    object mtEtqQuant: TIntegerField
      FieldName = 'Quant'
    end
  end
  object dsEtq: TDataSource
    DataSet = mtEtq
    Left = 144
    Top = 272
  end
  object dbRef: TfrxDBDataset
    Description = 'Lista de produtos'
    UserName = 'dbImprimir'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID')
    DataSet = mtImprimir
    BCDToCurrency = False
    Left = 464
    Top = 168
  end
  object repDesign: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 440
    Top = 248
  end
  object repEtqCriar: TfrxReport
    Version = '5.5.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41851.996217534700000000
    ReportOptions.LastChange = 41851.996217534700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 384
    Top = 216
    Datasets = <
      item
        DataSet = dbProd
        DataSetName = 'db'
      end
      item
        DataSet = dbConfig
        DataSetName = 'dbConfig'
      end
      item
        DataSet = dbRef
        DataSetName = 'dbImprimir'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 7.000000000000000000
      RightMargin = 7.000000000000000000
      TopMargin = 12.500000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 196.000000000000000000
      ColumnPositions.Strings = (
        '0')
      object Etiquetas: TfrxMasterData
        FillType = ftBrush
        Height = 75.590551180000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        DataSet = dbRef
        DataSetName = 'dbImprimir'
        RowCount = 0
        object shapeEtiqueta: TfrxShapeView
          Width = 99.401574800000000000
          Height = 52.913378500000000000
          Visible = False
          Visibility = []
          Frame.Color = clBlue
        end
      end
    end
  end
  object repEditar: TfrxReport
    Version = '5.5.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41862.352097719910000000
    ReportOptions.LastChange = 41862.352097719910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = repEditarBeforePrint
    Left = 344
    Top = 336
    Datasets = <
      item
        DataSet = dbProd
        DataSetName = 'db'
      end
      item
        DataSet = dbConfig
        DataSetName = 'dbConfig'
      end
      item
        DataSet = dbRef
        DataSetName = 'dbImprimir'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 74.000000000000000000
      PaperHeight = 150.000000000000000000
      PaperSize = 172
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 204.094620000000000000
        RowCount = 0
        object BarCode1: TfrxBarCodeView
          Left = 49.133890000000000000
          Top = 34.015770000000010000
          Width = 64.000000000000000000
          Height = 18.897650000000000000
          BarType = bcCode_2_5_interleaved
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
    end
  end
  object tEtqProd: TnxTable
    Database = Dados.db
    OnCalcFields = tEtqProdCalcFields
    TableName = 'Produto'
    IndexName = 'IID'
    MasterFields = 'ID'
    MasterSource = dsImprimir
    Left = 216
    Top = 304
    object tEtqProdID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tEtqProdCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tEtqProdDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tEtqProdUnid: TStringField
      FieldName = 'Unid'
      Size = 5
    end
    object tEtqProdPreco: TCurrencyField
      FieldName = 'Preco'
    end
    object tEtqProdPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object tEtqProdMargem: TFloatField
      FieldName = 'Margem'
    end
    object tEtqProdObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tEtqProdImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tEtqProdCategoria: TStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object tEtqProdFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tEtqProdSubCateg: TStringField
      FieldName = 'SubCateg'
      Size = 35
    end
    object tEtqProdEstoqueAtual: TFloatField
      FieldName = 'EstoqueAtual'
    end
    object tEtqProdEstoquePend: TFloatField
      FieldName = 'EstoquePend'
    end
    object tEtqProdEstoqueTot: TFloatField
      FieldName = 'EstoqueTot'
    end
    object tEtqProdbrtrib: TWordField
      FieldName = 'brtrib'
    end
    object tEtqProdCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
    end
    object tEtqProdPodeAlterarPreco: TBooleanField
      FieldName = 'PodeAlterarPreco'
    end
    object tEtqProdPermiteVendaFracionada: TBooleanField
      FieldName = 'PermiteVendaFracionada'
    end
    object tEtqProdNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tEtqProdEstoqueMin: TFloatField
      FieldName = 'EstoqueMin'
    end
    object tEtqProdEstoqueMax: TFloatField
      FieldName = 'EstoqueMax'
    end
    object tEtqProdAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object tEtqProdAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
    end
    object tEtqProdEstoqueRepor: TFloatField
      FieldName = 'EstoqueRepor'
    end
    object tEtqProdComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tEtqProdComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tEtqProdtax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tEtqProdAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object tEtqProdFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object tEtqProdFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object tEtqProdNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object tEtqProdNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object tEtqProdcest: TLongWordField
      FieldName = 'cest'
    end
    object tEtqProdCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object tEtqProdIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tEtqProdPrecoComTaxa: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PrecoComTaxa'
      Calculated = True
    end
  end
  object mtImprimir: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
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
    Left = 88
    Top = 288
    object mtImprimirID: TIntegerField
      FieldName = 'ID'
      KeyFields = 'ID'
    end
  end
  object dsImprimir: TDataSource
    DataSet = mtImprimir
    Left = 88
    Top = 328
  end
  object dbConfig: TfrxDBDataset
    UserName = 'dbConfig'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NumSeq=NumSeq'
      'FecharProgramas=FecharProgramas'
      'AutoExecutar=AutoExecutar'
      'LimiteTempoPadrao=LimiteTempoPadrao'
      'PacoteTempoReal=PacoteTempoReal'
      'PermiteLoginSemCred=PermiteLoginSemCred'
      'AlteraLoginSemCred=AlteraLoginSemCred'
      'EncerramentoPrePago=EncerramentoPrePago'
      'EncerramentoCartao=EncerramentoCartao'
      'TempoEPrePago=TempoEPrePago'
      'TempoECartao=TempoECartao'
      'PermiteCapturaTela=PermiteCapturaTela'
      'VariosTiposAcesso=VariosTiposAcesso'
      'ModoPagtoAcesso=ModoPagtoAcesso'
      'MostraPrePagoDec=MostraPrePagoDec'
      'MostraNomeMaq=MostraNomeMaq'
      'AutoCad=AutoCad'
      'QuickCad=QuickCad'
      'CodProdutoDuplicados=CodProdutoDuplicados'
      'TempoMaxAlerta=TempoMaxAlerta'
      'Abre1=Abre1'
      'Abre2=Abre2'
      'Abre3=Abre3'
      'Abre4=Abre4'
      'Abre5=Abre5'
      'Abre6=Abre6'
      'Abre7=Abre7'
      'Fecha1=Fecha1'
      'Fecha2=Fecha2'
      'Fecha3=Fecha3'
      'Fecha4=Fecha4'
      'Fecha5=Fecha5'
      'Fecha6=Fecha6'
      'Fecha7=Fecha7'
      'CorLivre=CorLivre'
      'CorFLivre=CorFLivre'
      'CorUsoPrePago=CorUsoPrePago'
      'CorFUsoPrePago=CorFUsoPrePago'
      'CorUsoPosPago=CorUsoPosPago'
      'CorFUsoPosPago=CorFUsoPosPago'
      'CorAguardaPagto=CorAguardaPagto'
      'CorFAguardaPagto=CorFAguardaPagto'
      'CorManutencao=CorManutencao'
      'CorFManutencao=CorFManutencao'
      'CorPausado=CorPausado'
      'CorFPausado=CorFPausado'
      'CorDesktop=CorDesktop'
      'CorFDesktop=CorFDesktop'
      'CorMaqManut=CorMaqManut'
      'CorFMaqManut=CorFMaqManut'
      'CorPrevisao=CorPrevisao'
      'CorFPrevisao=CorFPrevisao'
      'CampoLocalizaCli=CampoLocalizaCli'
      'ManterSaldoCaixa=ManterSaldoCaixa'
      'NaoMostrarMsgDebito=NaoMostrarMsgDebito'
      'NaoCobrarImpFunc=NaoCobrarImpFunc'
      'Tolerancia=Tolerancia'
      'RegImp98=RegImp98'
      'LimitePadraoDebito=LimitePadraoDebito'
      'RecPorta=RecPorta'
      'RecSalto=RecSalto'
      'RecLargura=RecLargura'
      'RecRodape=RecRodape'
      'RecImprimir=RecImprimir'
      'RecMatricial=RecMatricial'
      'RecTipoImpressora=RecTipoImpressora'
      'RecNomeLoja=RecNomeLoja'
      'RecCortaFolha=RecCortaFolha'
      'RecImprimeMeioPagto=RecImprimeMeioPagto'
      'RecPrefixoMeioPagto=RecPrefixoMeioPagto'
      'MostraProgAtual=MostraProgAtual'
      'MostraObs=MostraObs'
      'EscondeTextoBotoes=EscondeTextoBotoes'
      'EscondeTipoAcesso=EscondeTipoAcesso'
      'ExigirRG=ExigirRG'
      'TipoFDesktop=TipoFDesktop'
      'TipoFLogin=TipoFLogin'
      'NumFDesktop=NumFDesktop'
      'NumFLogin=NumFLogin'
      'FundoWeb=FundoWeb'
      'FundoWebURL=FundoWebURL'
      'MostrarApenasPIN=MostrarApenasPIN'
      'TextoPIN=TextoPIN'
      'AlterarSenhaCli=AlterarSenhaCli'
      'VerSenhaCli=VerSenhaCli'
      'CliCadPadrao=CliCadPadrao'
      'ControlaImp=ControlaImp'
      'FiltrarWEB=FiltrarWEB'
      'SiteRedirFiltro=SiteRedirFiltro'
      'PastaDownload=PastaDownload'
      'MinutosDesligaMaq=MinutosDesligaMaq'
      'MinutosDesligaMon=MinutosDesligaMon'
      'BloqDownload=BloqDownload'
      'BloqDownloadExe=BloqDownloadExe'
      'BloqMenuIniciar=BloqMenuIniciar'
      'BloqPainelCtrl=BloqPainelCtrl'
      'BloqCtrlAltDel=BloqCtrlAltDel'
      'BloqExecutar=BloqExecutar'
      'BloqMeusLocaisRede=BloqMeusLocaisRede'
      'BloqMeuComputador=BloqMeuComputador'
      'BloqLixeira=BloqLixeira'
      'BloqMeusDocumentos=BloqMeusDocumentos'
      'ClassicStartMenu=ClassicStartMenu'
      'BloqTray=BloqTray'
      'BloqBotaoDir=BloqBotaoDir'
      'BloqToolbars=BloqToolbars'
      'BloqPosPago=BloqPosPago'
      'FiltrarDesktop=FiltrarDesktop'
      'FiltrarMenuIniciar=FiltrarMenuIniciar'
      'TempoB1=TempoB1'
      'TempoB2=TempoB2'
      'TempoB3=TempoB3'
      'TempoB4=TempoB4'
      'TempoB5=TempoB5'
      'TempoB6=TempoB6'
      'PaginaInicial=PaginaInicial'
      'EsconderCronometro=EsconderCronometro'
      'AposEncerrar=AposEncerrar'
      'AlinhaBarraGuard=AlinhaBarraGuard'
      'NoNet=NoNet'
      'TempoSumirLogin=TempoSumirLogin'
      'EsconderDrives=EsconderDrives'
      'EmailMetodo=EmailMetodo'
      'EmailServ=EmailServ'
      'EmailUsername=EmailUsername'
      'EmailSenha=EmailSenha'
      'EmailDestino=EmailDestino'
      'EmailIdent=EmailIdent'
      'EmailEnviarCaixa=EmailEnviarCaixa'
      'EmailConteudo=EmailConteudo'
      'AlertaAssinatura=AlertaAssinatura'
      'CredPadraoTipo=CredPadraoTipo'
      'CredPadraoCod=CredPadraoCod'
      'PgVendas=PgVendas'
      'PgVendaAvulsa=PgVendaAvulsa'
      'PgAcesso=PgAcesso'
      'PgTempo=PgTempo'
      'PgImp=PgImp'
      'BloquearUsoEmHorarioNP=BloquearUsoEmHorarioNP'
      'OpcaoChat=OpcaoChat'
      'SalvarCodUsername=SalvarCodUsername'
      'ContinuarCredTempo=ContinuarCredTempo'
      'NaoGuardarCreditoCli=NaoGuardarCreditoCli'
      'RelCaixaAuto=RelCaixaAuto'
      'SincronizarHorarios=SincronizarHorarios'
      'MostrarDebitoNoGuard=MostrarDebitoNoGuard'
      'BloquearLoginAlemMaxDeb=BloquearLoginAlemMaxDeb'
      'ClienteNaoAlteraSenha=ClienteNaoAlteraSenha'
      'NaoObrigarSenhaCliente=NaoObrigarSenhaCliente'
      'NaoVenderAlemEstoque=NaoVenderAlemEstoque'
      'CreditoComoValor=CreditoComoValor'
      'CliAvulsoNaoEncerra=CliAvulsoNaoEncerra'
      'AutoSortGridCaixa=AutoSortGridCaixa'
      'AvisoFimTempoAdminS=AvisoFimTempoAdminS'
      'DetectarImpServ=DetectarImpServ'
      'AvisoCreditos=AvisoCreditos'
      'ClientePodeVerCred=ClientePodeVerCred'
      'ChatAlertaSonoro=ChatAlertaSonoro'
      'ChatMostraNotificacao=ChatMostraNotificacao'
      'ModoCredGuard=ModoCredGuard'
      'MsgFimCred=MsgFimCred'
      'SemLogin=SemLogin'
      'AutoObsAoCancelar=AutoObsAoCancelar'
      'FidAtivo=FidAtivo'
      'FidVendaValor=FidVendaValor'
      'FidVendaPontos=FidVendaPontos'
      'FidParcial=FidParcial'
      'FidAutoPremiar=FidAutoPremiar'
      'FidAutoPremiarValor=FidAutoPremiarValor'
      'FidAutoPremiarPontos=FidAutoPremiarPontos'
      'FidMostrarSaldoAdmin=FidMostrarSaldoAdmin'
      'FidMsg=FidMsg'
      'FidMsgTitulo=FidMsgTitulo'
      'FidMsgTexto=FidMsgTexto'
      'CliCadNaoEncerra=CliCadNaoEncerra'
      'ImpedirPosPago=ImpedirPosPago'
      'AutoLigarMaqCli=AutoLigarMaqCli'
      'Biometria=Biometria'
      'PMPausaAutomatica=PMPausaAutomatica'
      'PMConfirmaImpCliente=PMConfirmaImpCliente'
      'PMConfirmaImpAdmin=PMConfirmaImpAdmin'
      'PMMostrarPaginasCli=PMMostrarPaginasCli'
      'PMMostrarValorCli=PMMostrarValorCli'
      'PMCalcValorCli=PMCalcValorCli'
      'PMPromptValorCli=PMPromptValorCli'
      'PMObsValorCli=PMObsValorCli'
      'PMPausarServ=PMPausarServ'
      'PMNaoPausar=PMNaoPausar'
      'PMCotas=PMCotas'
      'PMCotasMaxPagDia=PMCotasMaxPagDia'
      'PMCotasMaxPagMes=PMCotasMaxPagMes'
      'PMCotasOpCota=PMCotasOpCota'
      'PMCotasOpExcesso=PMCotasOpExcesso'
      'PMCotasMaxExcesso=PMCotasMaxExcesso'
      'PMCotasPorCli=PMCotasPorCli'
      'PMPDF=PMPDF'
      'PMPDFPrintEng=PMPDFPrintEng'
      'PMReviewCli=PMReviewCli'
      'PMReviewAdmin=PMReviewAdmin'
      'PubHomePage=PubHomePage'
      'PubAd=PubAd'
      'PubToolbar=PubToolbar'
      'MaxTempoSessao=MaxTempoSessao'
      'TarifaPadrao=TarifaPadrao'
      'TarifaPorHorario=TarifaPorHorario'
      'BloqueiaCliAvulso=BloqueiaCliAvulso'
      'ExigeDadosMinimos=ExigeDadosMinimos'
      'DadosMinimos=DadosMinimos'
      'CidadePadrao=CidadePadrao'
      'UFPadrao=UFPadrao'
      'PedirSaldoI=PedirSaldoI'
      'PedirSaldoF=PedirSaldoF'
      'BRT=BRT'
      'DTol=DTol'
      'DVA=DVA'
      'ProxAvisoAss=ProxAvisoAss'
      'PreLib=PreLib'
      'ExCookie=ExCookie'
      'HPOpenBef=HPOpenBef'
      'CamposCliCC=CamposCliCC'
      'CliCongelado=CliCongelado'
      'SenhaAdminOk=SenhaAdminOk'
      'QtdMaqOk=QtdMaqOk'
      'PosLogin=PosLogin'
      'HomePage_AddConta=HomePage_AddConta'
      'HomePage_Tab=HomePage_Tab'
      'HomePage_LastURL=HomePage_LastURL'
      'HomePage_URL=HomePage_URL'
      'HomePage_Params=HomePage_Params'
      'Sky_Params=Sky_Params'
      'Banners=Banners'
      'Botoes=Botoes'
      'FaixaComanda=FaixaComanda'
      'Recursos=Recursos'
      'PrecoAuto=PrecoAuto'
      'Margem=Margem'
      'ComissaoPerc=ComissaoPerc'
      'ValOrc_Tempo=ValOrc_Tempo'
      'ValOrc_UTempo=ValOrc_UTempo'
      'EmailOrc_Enviar=EmailOrc_Enviar'
      'EmailOrc_FromName=EmailOrc_FromName'
      'EmailOrc_FromEmail=EmailOrc_FromEmail'
      'EmailOrc_Subject=EmailOrc_Subject'
      'EmailOrc_Body=EmailOrc_Body'
      'DocOrc_Imprimir=DocOrc_Imprimir'
      'DocOrc_NomeLoja=DocOrc_NomeLoja'
      'ObsPadraoOrcamento=ObsPadraoOrcamento'
      'ComissaoLucro=ComissaoLucro'
      'CodBarBal=CodBarBal'
      'CodBarBalTam=CodBarBalTam'
      'CodBarBalIdent=CodBarBalIdent'
      'CodBarBalInicioCod=CodBarBalInicioCod'
      'CodBarBalTamCod=CodBarBalTamCod'
      'CodBarBalValor=CodBarBalValor'
      'CodBarBalPPInicio=CodBarBalPPInicio'
      'CodBarBalPPTam=CodBarBalPPTam'
      'CodBarBalPPDig=CodBarBalPPDig'
      'CodBarMaxQtdDig=CodBarMaxQtdDig'
      'CodBarArredondar=CodBarArredondar'
      'ComandaOff=ComandaOff'
      'MesasOff=MesasOff'
      'ConsumoAvulsoOff=ConsumoAvulsoOff'
      'ConfirmarDebito=ConfirmarDebito'
      'TelaPosVenda_Mostrar=TelaPosVenda_Mostrar'
      'TelaPosVenda_BtnDef=TelaPosVenda_BtnDef'
      'RecVer=RecVer'
      'DocParam_Email=DocParam_Email'
      'DocParam_Tel=DocParam_Tel'
      'DocParam_Tel2=DocParam_Tel2'
      'DocParam_Cidade=DocParam_Cidade'
      'DocParam_End=DocParam_End'
      'DocParam_CEP=DocParam_CEP'
      'DocParam_CNPJ=DocParam_CNPJ'
      'DocParam_IE=DocParam_IE'
      'DocParam_Site=DocParam_Site'
      'DocParam_Facebook=DocParam_Facebook'
      'DocParam_Instagram=DocParam_Instagram'
      'DocParam_Whats=DocParam_Whats'
      'DocParam_Whats2=DocParam_Whats2'
      'DocParam_InfoExtra=DocParam_InfoExtra'
      'DocParam_Logo=DocParam_Logo'
      'DocParam_Logo2=DocParam_Logo2')
    DataSet = Dados.tbConfig
    BCDToCurrency = False
    Left = 512
    Top = 172
  end
  object pmTipoTran: TdxBarPopupMenu
    BarManager = BarMgr
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ItemLinks = <
      item
        Visible = True
        ItemName = 'cmTipoTran'
      end>
    UseOwnFont = True
    Left = 488
    Top = 220
  end
end
