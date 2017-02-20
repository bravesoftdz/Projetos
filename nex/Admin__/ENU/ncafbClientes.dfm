inherited fbClientes: TfbClientes
  Left = 300
  Top = 420
  Caption = 'Clientes'
  ClientHeight = 442
  ClientWidth = 1114
  Font.Height = -13
  OldCreateOrder = True
  Position = poDesigned
  OnDestroy = FrmBasePaiDestroy
  ExplicitWidth = 1130
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 16
  inherited panPri: TLMDSimplePanel
    Width = 1114
    Height = 442
    ExplicitWidth = 1114
    ExplicitHeight = 442
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 1114
      Height = 44
      ExplicitWidth = 1114
      ExplicitHeight = 44
    end
    object PB: TcxProgressBar
      Left = 0
      Top = 44
      Align = alTop
      ParentFont = False
      Style.BorderStyle = ebsFlat
      TabOrder = 1
      Visible = False
      Width = 1114
    end
    object LMDSimplePanel1: TLMDSimplePanel
      Left = 0
      Top = 69
      Width = 1114
      Height = 373
      Hint = ''
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      TabOrder = 2
      object Grid: TcxGrid
        Left = 0
        Top = 0
        Width = 1114
        Height = 373
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        object TV: TcxGridDBTableView
          OnDblClick = cmEditarClick
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
          OnFocusedRecordChanged = TVFocusedRecordChanged
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dsCli
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = TVDataControllerFilterChanged
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.SupportedLike = False
          DataController.KeyFieldNames = 'ID'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '$0.00'
              Kind = skSum
              OnGetText = TVTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
              Column = TVDebito
            end
            item
              Kind = skSum
              OnGetText = TVTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText
              FieldName = 'ID'
              Column = TVNome
            end
            item
              Kind = skSum
              OnGetText = TVTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText
              Column = TVValorCred
            end
            item
              Kind = skSum
              OnGetText = TVTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText
              Column = TVPassaportes
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
          DataController.OnFilterRecord = TVDataControllerFilterRecord
          Filtering.ColumnPopup.MaxDropDownItemCount = 12
          OptionsBehavior.CellHints = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = TVNome
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16053492
          OptionsView.GroupByHeaderLayout = ghlHorizontal
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.HeaderHeight = 64
          OptionsView.Indicator = True
          Preview.Column = TVObs
          Preview.MaxLineCount = 0
          Styles.Header = FrmPri.cxsHeader
          OnColumnHeaderClick = TVColumnHeaderClick
          OnCustomDrawColumnHeader = TVCustomDrawColumnHeader
          OnCustomDrawIndicatorCell = TVCustomDrawIndicatorCell
          object TVCodigo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CodigoKey'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            OnGetDisplayText = TVCodigoGetDisplayText
            HeaderAlignmentHorz = taCenter
            Width = 71
          end
          object TVNome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 40
            Properties.ReadOnly = False
            FooterAlignmentHorz = taCenter
            Options.Grouping = False
            Width = 169
          end
          object TVDebito: TcxGridDBColumn
            Caption = 'D'#233'bito'
            DataBinding.FieldName = 'Debito'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ReadOnly = False
            OnCustomDrawCell = TVDebitoCustomDrawCell
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 69
            Options.Editing = False
            Options.Focusing = False
            Options.IncSearch = False
            Options.Grouping = False
            Width = 69
          end
          object TVValorCred: TcxGridDBColumn
            Caption = 'Cr'#233'dito'
            DataBinding.FieldName = 'ValorCred'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object TVPassaportes: TcxGridDBColumn
            Caption = 'Cr'#233'ditos Promocionais'
            DataBinding.FieldName = 'Passaportes'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Visible = False
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 118
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
            Width = 72
          end
          object TVRg: TcxGridDBColumn
            Caption = 'RG / I.E.'
            DataBinding.FieldName = 'Rg'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 14
            Properties.ReadOnly = False
            Width = 93
          end
          object TVCPF: TcxGridDBColumn
            Caption = 'CPF / CNPJ'
            DataBinding.FieldName = 'Cpf'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 119
          end
          object TVEndereco: TcxGridDBColumn
            DataBinding.FieldName = 'Endereco'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 50
            Properties.ReadOnly = False
            Width = 154
          end
          object TVBairro: TcxGridDBColumn
            DataBinding.FieldName = 'Bairro'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 20
            Properties.ReadOnly = False
            Width = 82
          end
          object TVCidade: TcxGridDBColumn
            DataBinding.FieldName = 'Cidade'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 30
            Properties.ReadOnly = False
            Width = 130
          end
          object TVUVisita: TcxGridDBColumn
            DataBinding.FieldName = 'UltVisita'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DateButtons = [btnClear, btnToday]
            Properties.DateOnError = deToday
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
          object TVUF: TcxGridDBColumn
            Caption = 'Estado'
            DataBinding.FieldName = 'UF'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 2
            Properties.ReadOnly = False
            Width = 74
          end
          object TVCEP: TcxGridDBColumn
            DataBinding.FieldName = 'CEP'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 10
            Properties.ReadOnly = False
            Width = 67
          end
          object TVSexo: TcxGridDBColumn
            DataBinding.FieldName = 'Sexo'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.MaxLength = 1
            Properties.ReadOnly = False
            HeaderAlignmentHorz = taCenter
            Width = 37
          end
          object TVObs: TcxGridDBColumn
            DataBinding.FieldName = 'Obs'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.Alignment = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Width = 73
          end
          object TVemail: TcxGridDBColumn
            Caption = 'E-mail'
            DataBinding.FieldName = 'email'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.Alignment = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Width = 115
          end
          object TVTelefone: TcxGridDBColumn
            DataBinding.FieldName = 'Telefone'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 15
            Properties.ReadOnly = False
            Width = 83
          end
          object TVCelular: TcxGridDBColumn
            DataBinding.FieldName = 'Celular'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 15
            Properties.ReadOnly = False
            Width = 78
          end
          object TVTemDebito: TcxGridDBColumn
            Caption = 'Tem D'#233'bito'
            DataBinding.FieldName = 'TemDebito'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = False
            Properties.ValueChecked = 'True'
            Properties.ValueGrayed = ''
            Properties.ValueUnchecked = 'False'
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 16
            Options.Editing = False
            Options.Grouping = False
            Options.Moving = False
            Width = 101
          end
          object TVIncluidoEm: TcxGridDBColumn
            Caption = 'Inclu'#237'do Em'
            DataBinding.FieldName = 'IncluidoEm'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object TVLimDebito: TcxGridDBColumn
            Caption = 'Limite D'#233'bito'
            DataBinding.FieldName = 'LimiteDebito'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 96
          end
          object TVIncluidoPor: TcxGridDBColumn
            Caption = 'Inclu'#237'do Por'
            DataBinding.FieldName = 'IncluidoPor'
          end
          object TVAlteradoEm: TcxGridDBColumn
            Caption = 'Alterado Em'
            DataBinding.FieldName = 'AlteradoEm'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object TVAlteradoPor: TcxGridDBColumn
            Caption = 'Alterado Por'
            DataBinding.FieldName = 'AlteradoPor'
          end
          object TVPai: TcxGridDBColumn
            DataBinding.FieldName = 'Pai'
          end
          object TVFidPontos: TcxGridDBColumn
            Caption = 'P.Dispon'#237'veis'
            DataBinding.FieldName = 'FidPontos'
            PropertiesClassName = 'TcxMaskEditProperties'
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
            Width = 93
          end
          object TVFidTotal: TcxGridDBColumn
            Caption = 'P. Acumulados'
            DataBinding.FieldName = 'FidTotal'
            PropertiesClassName = 'TcxMaskEditProperties'
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
            Width = 97
          end
          object TVFidResg: TcxGridDBColumn
            Caption = 'P. Resgatados'
            DataBinding.FieldName = 'FidResg'
            PropertiesClassName = 'TcxMaskEditProperties'
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
            Width = 99
          end
          object TVMae: TcxGridDBColumn
            Caption = 'M'#227'e'
            DataBinding.FieldName = 'Mae'
          end
          object TVFornecedor: TcxGridDBColumn
            DataBinding.FieldName = 'Fornecedor'
            Visible = False
            VisibleForCustomization = False
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
            Width = 48
          end
          object TVID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object TVCod: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object GL: TcxGridLevel
          GridView = TV
        end
      end
      object LMDSimplePanel2: TLMDSimplePanel
        Left = 12
        Top = 58
        Width = 558
        Height = 44
        Hint = ''
        Margins.Left = 0
        Bevel.BorderColor = clWhite
        Bevel.Mode = bmCustom
        Color = clWhite
        TabOrder = 1
        object LMDSimplePanel3: TLMDSimplePanel
          AlignWithMargins = True
          Left = 0
          Top = 6
          Width = 497
          Height = 32
          Hint = ''
          Margins.Left = 0
          Margins.Top = 6
          Margins.Bottom = 6
          Align = alLeft
          Bevel.BorderColor = clBtnShadow
          Bevel.BorderWidth = 1
          Bevel.Mode = bmCustom
          Bevel.StandardStyle = lsSingle
          Color = clWhite
          TabOrder = 0
          OnEnter = edBuscaEnter
          object Image2: TImage
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
            TabOrder = 1
            OnEnter = edBuscaEnter
            OnKeyUp = edBuscaKeyUp
            OnMouseUp = edBuscaMouseUp
            Width = 455
          end
          object lbLocalizar: TcxLabel
            Left = 43
            Top = 5
            Cursor = crHandPoint
            Caption = 'Digite o nome, c'#243'digo, rg ou cpf do cliente'
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.TextColor = clSilver
            Style.IsFontAssigned = True
            StyleFocused.TextColor = clBlue
            Transparent = True
            OnClick = Image1Click
          end
          object cbSuperBusca: TcxCheckBox
            Left = 384
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
      end
    end
  end
  inherited BarMgr: TdxBarManager
    Font.Charset = ANSI_CHARSET
    Font.Name = 'Tahoma'
    ImageOptions.StretchGlyphs = False
    ImageOptions.UseLargeImagesForLargeIcons = True
    UseSystemFont = False
    Left = 80
    Top = 232
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BarMgrBar1: TdxBar
      Caption = 'BarraComum'
      Font.Charset = ANSI_CHARSET
      Font.Height = -13
      Font.Name = 'Tahoma'
      IsMainMenu = True
      ItemLinks = <
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'cmNovo'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'cmEditar'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'cmApagar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmPagarDebito'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmSubCredito'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmSubExibir'
        end
        item
          Visible = True
          ItemName = 'cmCfg'
        end>
      MultiLine = True
      UseOwnFont = True
      UseRecentItems = False
      UseRestSpace = True
    end
    inherited cmNovo: TdxBarLargeButton
      OnClick = cmNovoClick
      GlyphLayout = glTop
      ImageIndex = -1
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
      PaintStyle = psCaptionGlyph
      GlyphLayout = glTop
    end
    inherited cmExportar: TdxBarLargeButton
      LargeImageIndex = 47
      GlyphLayout = glTop
    end
    inherited cmImprimir: TdxBarLargeButton
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
    inherited cmCfg: TdxBarLargeButton
      Align = iaRight
      OnClick = cmCfgClick
    end
    object cmTempo: TdxBarSubItem
      Caption = 'Tempo'
      Category = 0
      Visible = ivAlways
      ImageIndex = 25
      ItemLinks = <>
    end
    object cmPagarDebito: TdxBarLargeButton
      Caption = 'D'#233'bito'
      Category = 0
      Hint = 'D'#233'bito'
      Visible = ivAlways
      LargeImageIndex = 27
      OnClick = cmPagarDebitoClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmCorrigirCred: TdxBarLargeButton
      Caption = 'Corrigir cr'#233'dito do cliente'
      Category = 0
      Hint = 'Corrigir cr'#233'dito do cliente'
      Visible = ivAlways
      OnClick = cmCorrigirCredClick
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = -1
    end
    object cmSubCredito: TdxBarLargeButton
      Caption = '&Cr'#233'dito'
      Category = 0
      Hint = 'Cr'#233'dito'
      Visible = ivAlways
      LargeImageIndex = 137
      OnClick = cmSubCreditoClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmEtq: TdxBarLargeButton
      Caption = 
        'Imprimir etiqueta com c'#243'digo de barras (para uso em carteirinhas' +
        ')'
      Category = 0
      Hint = 
        'Imprimir etiqueta com c'#243'digo de barras (para uso em carteirinhas' +
        ')'
      Visible = ivAlways
      LargeImageIndex = 70
      UnclickAfterDoing = False
      OnClick = cmEtqClick
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = -1
    end
    object cmListaEmail: TdxBarLargeButton
      Caption = 'Salvar e-mails dos clientes em arquivo texto'
      Category = 0
      Hint = 'Salvar e-mails dos clientes em arquivo texto'
      Visible = ivAlways
      LargeImageIndex = 71
      OnClick = cmListaEmailClick
      AutoGrayScale = False
      SyncImageIndex = False
      ImageIndex = -1
    end
    object cmResgProduto: TdxBarButton
      Caption = 'Resgatar produto pr'#234'mio'
      Category = 0
      Hint = 'Resgatar produto pr'#234'mio'
      Visible = ivAlways
      OnClick = cmResgProdutoClick
    end
    object cmCorrigirFid: TdxBarButton
      Caption = 'Corrigir quantidade de pontos fidelidade'
      Category = 0
      Hint = 'Corrigir quantidade de pontos fidelidade'
      Visible = ivAlways
      OnClick = cmCorrigirFidClick
    end
    object cmZerarTudo: TdxBarButton
      Caption = 'Zerar pontos de todos os clientes'
      Category = 0
      Hint = 'Zerar pontos de todos os clientes'
      Visible = ivAlways
      OnClick = cmZerarTudoClick
    end
    object cmExibir: TdxBarLargeButton
      Caption = 'Exibir'
      Category = 0
      Hint = 'Exibir'
      Visible = ivAlways
      LargeImageIndex = 17
      OnClick = cmExibirClick
      AutoGrayScale = False
    end
    object cmFiltroCli: TdxBarListItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemIndex = 0
      Items.Strings = (
        'Todos Clientes'
        'Clientes com D'#233'bito'
        'Clientes com Cr'#233'dito')
      ShowCheck = True
    end
    object cmObs: TdxBarButton
      Caption = 'Mostrar campo de Observa'#231#245'es na lista de clientes'
      Category = 0
      Hint = 'Mostrar campo de Observa'#231#245'es na lista de clientes'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 50
      ImageIndex = 76
      PaintStyle = psCaptionGlyph
      OnClick = cbObsClick
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Ferramentas'
      Category = 0
      Hint = 'Ferramentas'
      Visible = ivAlways
      LargeImageIndex = 101
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object dxBarSubItem2: TdxBarSubItem
      Align = iaRight
      Caption = 'Ferramentas'
      Category = 0
      Visible = ivNever
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmEtq'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmListaEmail'
        end>
    end
    object cmSubExibir: TdxBarSubItem
      Caption = 'Exibir: Todos Clientes'
      Category = 0
      Style = cxStyle2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmTodos'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmComDebito'
        end
        item
          Visible = True
          ItemName = 'cmComCredito'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmSubAniver'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmAtivo'
        end
        item
          Visible = True
          ItemName = 'cmInativo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmObs'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmSubFid'
        end>
    end
    object cmTodos: TdxBarButton
      Caption = 'Todos clientes'
      Category = 0
      Hint = 'Todos clientes'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      OnClick = cmAniverHojeClick
    end
    object cmComDebito: TdxBarButton
      Tag = 1
      Caption = 'Clientes com d'#233'bito'
      Category = 0
      Hint = 'Clientes com d'#233'bito'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      OnClick = cmAniverHojeClick
    end
    object cmComCredito: TdxBarButton
      Tag = 2
      Caption = 'Clientes com cr'#233'dito'
      Category = 0
      Hint = 'Clientes com cr'#233'dito'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      OnClick = cmAniverHojeClick
    end
    object cmSubAniver: TdxBarSubItem
      Caption = 'Aniversariantes'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmAniverHoje'
        end
        item
          Visible = True
          ItemName = 'cmAniverAmanha'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmAniverSemana'
        end
        item
          Visible = True
          ItemName = 'cmAniverProxSemana'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmAniverMes'
        end
        item
          Visible = True
          ItemName = 'cmAniverProxMes'
        end>
    end
    object cmAniverHoje: TdxBarButton
      Tag = 3
      Caption = 'De hoje'
      Category = 0
      Hint = 'De hoje'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      OnClick = cmAniverHojeClick
    end
    object cmAniverSemana: TdxBarButton
      Tag = 5
      Caption = 'Dessa semana'
      Category = 0
      Hint = 'Dessa semana'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      OnClick = cmAniverHojeClick
    end
    object cmAniverProxSemana: TdxBarButton
      Tag = 6
      Caption = 'Da semana que vem'
      Category = 0
      Hint = 'Da semana que vem'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      Down = True
      OnClick = cmAniverHojeClick
    end
    object cmAniverMes: TdxBarButton
      Tag = 7
      Caption = 'Desse m'#234's'
      Category = 0
      Hint = 'Desse m'#234's'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      OnClick = cmAniverHojeClick
    end
    object cmAniverProxMes: TdxBarButton
      Tag = 8
      Caption = 'Do m'#234's que vem'
      Category = 0
      Hint = 'Do m'#234's que vem'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      OnClick = cmAniverHojeClick
    end
    object cmPorNome: TdxBarButton
      Caption = 'Nome'
      Category = 0
      Hint = 'Nome'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = cmPorNomeClick
    end
    object cmPorUsername: TdxBarButton
      Tag = 1
      Caption = 'Username'
      Category = 0
      Hint = 'Username'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = cmPorNomeClick
    end
    object cmPorCodigo: TdxBarButton
      Tag = 1
      Caption = 'C'#243'digo'
      Category = 0
      Hint = 'C'#243'digo'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = cmPorNomeClick
    end
    object cmAniverAmanha: TdxBarButton
      Tag = 4
      Caption = 'De amanh'#227
      Category = 0
      Hint = 'De amanh'#227
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      OnClick = cmAniverHojeClick
    end
    object cmAtivo: TdxBarButton
      Caption = 'Clientes ativos (que vieram recentemente na loja)'
      Category = 0
      Hint = 'Clientes ativos (que vieram recentemente na loja)'
      Visible = ivAlways
      OnClick = cmAtivoClick
    end
    object cmInativo: TdxBarButton
      Caption = 'Clientes inativos (que n'#227'o vieram recentemente na loja)'
      Category = 0
      Hint = 'Clientes inativos (que n'#227'o vieram recentemente na loja)'
      Visible = ivAlways
      OnClick = cmInativoClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Configurar sistema de fideliza'#231#227'o de clientes'
      Category = 0
      Hint = 'Configurar sistema de fideliza'#231#227'o de clientes'
      Visible = ivAlways
      ImageIndex = 69
      OnClick = dxBarButton1Click
    end
    object cmPagarDeb: TdxBarButton
      Caption = 'Pagar d'#233'bito do cliente '
      Category = 0
      Hint = 'Pagar d'#233'bito do cliente '
      Visible = ivAlways
      ImageIndex = 92
      OnClick = cmPagarDebClick
    end
    object cmDemonstrativo: TdxBarButton
      Caption = 'Imprimir demonstrativo de d'#233'bitos do cliente'
      Category = 0
      Hint = 'Imprimir demonstrativo de d'#233'bitos do cliente'
      Visible = ivAlways
      ImageIndex = 22
      OnClick = cmDemonstrativoClick
    end
    object cmSubFid: TdxBarSubItem
      Caption = 'Fidelidade'
      Category = 0
      Visible = ivAlways
      ImageIndex = 31
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmResgProduto'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmCorrigirFid'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmZerarTudo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Grid = Grid
    Left = 0
    Top = 225
  end
  inherited CP: TdxComponentPrinter
    Left = 640
    Top = 162
  end
  inherited pmLay: TdxBarPopupMenu
    Left = 432
    Top = 316
  end
  inherited pmPeriodo: TdxBarPopupMenu
    Left = 496
    Top = 292
  end
  object Tab: TnxTable
    Database = Dados.db
    Timeout = 10000
    FilterOptions = [foCaseInsensitive]
    OnFilterRecord = TabFilterRecord
    TableName = 'Cliente'
    IndexName = 'IFornecedorNome'
    Left = 32
    Top = 176
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
    object TabUF: TStringField
      FieldName = 'UF'
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
    object TabCodigoKey: TStringField
      FieldName = 'CodigoKey'
      Size = 15
    end
  end
  object dsCli: TDataSource
    DataSet = Tab
    Left = 144
    Top = 176
  end
  object pmCredito: TdxBarPopupMenu
    BarManager = BarMgr
    ItemLinks = <
      item
        Visible = True
        ItemName = 'cmCorrigirCred'
      end>
    UseOwnFont = False
    Left = 392
    Top = 180
  end
  object rpDesigner: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10
    DefaultRightMargin = 10
    DefaultTopMargin = 10
    DefaultBottomMargin = 10
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 584
    Top = 232
  end
  object frEtq: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39510.491274594900000000
    ReportOptions.LastChange = 39510.695072696800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure BarCode1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  BarCode1.Visible := (<dbClientes."Nome"> > '#39#39');'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 456
    Top = 264
    Datasets = <
      item
        DataSet = dbClientes
        DataSetName = 'dbClientes'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 256
      LeftMargin = 7.200000000000000000
      RightMargin = 7.200000000000000000
      TopMargin = 9.100000000000000000
      BottomMargin = 5
      Columns = 3
      ColumnWidth = 65.200000000000000000
      ColumnPositions.Strings = (
        '0'
        '65,20'
        '130,40')
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 175.748031500000000000
        Top = 18.897650000000000000
        Width = 739.276068000000000000
        DataSet = dbClientes
        DataSetName = 'dbClientes'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 15.118120000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'Nome'
          DataSet = dbClientes
          DataSetName = 'dbClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbClientes."Nome"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Left = 71.263884000000000000
          Top = 45.354360000000000000
          Width = 129
          Height = 75.590600000000000000
          OnBeforePrint = 'BarCode1OnBeforePrint'
          BarType = bcCode39
          DataField = 'Codigo'
          DataSet = dbClientes
          DataSetName = 'dbClientes'
          Expression = '<frxDBDataset1."ID">'
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2
          Zoom = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 132.283550000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'Username'
          DataSet = dbClientes
          DataSetName = 'dbClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbClientes."Username"]')
          ParentFont = False
        end
      end
    end
  end
  object dbClientes: TfrxDBDataset
    Description = 'Dados de Clientes'
    UserName = 'dbClientes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Nome=Nome'
      'Endereco=Endereco'
      'Bairro=Bairro'
      'Cidade=Cidade'
      'UF=UF'
      'CEP=CEP'
      'Nasc=Nasc'
      'Sexo=Sexo'
      'Obs=Obs'
      'Cpf=Cpf'
      'Rg=Rg'
      'email=Email'
      'UltVisita=UltVisita'
      'Isento=Isento'
      'Username=Username'
      'Senha=Senha'
      'Telefone=Telefone'
      'Debito=Debito'
      'Escola=Escola'
      'NickName=NickName'
      'DataNasc=DataNasc'
      'Celular=Celular'
      'IncluidoEm=IncluidoEm'
      'Pai=Pai'
      'Mae=Mae'
      'EscolaHI=EscolaHI'
      'EscolaHF=EscolaHF'
      'Inativo=Inativo'
      'Foto=Foto'
      'ID=ID'
      'Minutos=Minutos'
      'MinutosUsados=MinutosUsados'
      'ValorCred=ValorCred'
      'Codigo=Codigo')
    DataSet = mtEtq
    BCDToCurrency = False
    Left = 552
    Top = 232
  end
  object mtEtq: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftAutoInc
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Endereco'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Sexo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Obs'
        DataType = ftMemo
      end
      item
        Name = 'Cpf'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Rg'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Telefone'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Email'
        DataType = ftMemo
      end
      item
        Name = 'Passaportes'
        DataType = ftFloat
      end
      item
        Name = 'Pai'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Mae'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Senha'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UltVisita'
        DataType = ftDateTime
      end
      item
        Name = 'Debito'
        DataType = ftCurrency
      end
      item
        Name = 'Escola'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NickName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DataNasc'
        DataType = ftDateTime
      end
      item
        Name = 'Celular'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TemDebito'
        DataType = ftBoolean
      end
      item
        Name = 'LimiteDebito'
        DataType = ftCurrency
      end
      item
        Name = 'Foto'
        DataType = ftGraphic
      end
      item
        Name = 'IncluidoEm'
        DataType = ftDateTime
      end
      item
        Name = 'AlteradoEm'
        DataType = ftDateTime
      end
      item
        Name = 'IncluidoPor'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'AlteradoPor'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TitEleitor'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'FidPontos'
        DataType = ftFloat
      end
      item
        Name = 'FidTotal'
        DataType = ftFloat
      end
      item
        Name = 'FidResg'
        DataType = ftFloat
      end
      item
        Name = 'Aniversario'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'SemFidelidade'
        DataType = ftBoolean
      end
      item
        Name = 'TemCredito'
        DataType = ftBoolean
      end
      item
        Name = 'PJuridica'
        DataType = ftBoolean
      end
      item
        Name = 'Inativo'
        DataType = ftBoolean
      end
      item
        Name = 'Fornecedor'
        DataType = ftBoolean
      end
      item
        Name = 'ValorCred'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.65.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    OnCalcFields = mtEtqCalcFields
    Left = 296
    Top = 248
    object mtEtqStringField: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object mtEtqStringField2: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object mtEtqStringField3: TStringField
      FieldName = 'Bairro'
    end
    object mtEtqStringField4: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object mtEtqStringField5: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mtEtqStringField6: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object mtEtqStringField7: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object mtEtqStringField8: TStringField
      FieldName = 'Cpf'
    end
    object mtEtqStringField9: TStringField
      FieldName = 'Rg'
    end
    object mtEtqStringField10: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object mtEtqFloatField: TFloatField
      FieldName = 'Passaportes'
    end
    object mtEtqStringField11: TStringField
      FieldName = 'Pai'
      Size = 40
    end
    object mtEtqStringField12: TStringField
      FieldName = 'Mae'
      Size = 40
    end
    object mtEtqStringField13: TStringField
      FieldName = 'Senha'
    end
    object mtEtqDateTimeField: TDateTimeField
      FieldName = 'UltVisita'
    end
    object mtEtqCurrencyField: TCurrencyField
      FieldName = 'Debito'
    end
    object mtEtqStringField14: TStringField
      FieldName = 'Escola'
      Size = 40
    end
    object mtEtqStringField15: TStringField
      FieldName = 'NickName'
      Size = 30
    end
    object mtEtqDateTimeField2: TDateTimeField
      FieldName = 'DataNasc'
    end
    object mtEtqStringField16: TStringField
      FieldName = 'Celular'
      Size = 15
    end
    object mtEtqBooleanField: TBooleanField
      FieldName = 'TemDebito'
    end
    object mtEtqCurrencyField2: TCurrencyField
      FieldName = 'LimiteDebito'
    end
    object mtEtqGraphicField: TGraphicField
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object mtEtqDateTimeField3: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object mtEtqDateTimeField4: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object mtEtqStringField17: TStringField
      FieldName = 'IncluidoPor'
      Size = 10
    end
    object mtEtqStringField18: TStringField
      FieldName = 'AlteradoPor'
      Size = 10
    end
    object mtEtqStringField19: TStringField
      FieldName = 'TitEleitor'
      Size = 13
    end
    object mtEtqFloatField2: TFloatField
      FieldName = 'FidPontos'
    end
    object mtEtqFloatField3: TFloatField
      FieldName = 'FidTotal'
    end
    object mtEtqFloatField4: TFloatField
      FieldName = 'FidResg'
    end
    object mtEtqStringField20: TStringField
      FieldName = 'Aniversario'
      Size = 4
    end
    object mtEtqBooleanField2: TBooleanField
      FieldName = 'SemFidelidade'
    end
    object mtEtqBooleanField3: TBooleanField
      FieldName = 'TemCredito'
    end
    object mtEtqBooleanField4: TBooleanField
      FieldName = 'PJuridica'
    end
    object mtEtqBooleanField5: TBooleanField
      FieldName = 'Inativo'
    end
    object mtEtqBooleanField6: TBooleanField
      FieldName = 'Fornecedor'
    end
    object mtEtqCurrencyField3: TCurrencyField
      FieldName = 'ValorCred'
    end
    object mtEtqID: TIntegerField
      FieldName = 'ID'
    end
    object mtEtqCodigo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Codigo'
      Size = 6
      Calculated = True
    end
    object mtEtqEmail: TMemoField
      FieldName = 'Email'
      BlobType = ftMemo
    end
    object mtEtqObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
  end
  object frxRichObject1: TfrxRichObject
    Left = 584
    Top = 200
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 552
    Top = 200
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 520
    Top = 200
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 488
    Top = 200
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 456
    Top = 200
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 456
    Top = 232
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 488
    Top = 232
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 112
    Top = 296
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer2Timer
    Left = 208
    Top = 344
  end
  object pmExibir: TdxBarPopupMenu
    BarManager = BarMgr
    ItemLinks = <
      item
        Visible = True
        ItemName = 'cmFiltroCli'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'cmObs'
      end>
    UseOwnFont = False
    Left = 400
    Top = 316
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 248
    Top = 264
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 11796479
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlue
    end
  end
  object pmBusca: TdxBarPopupMenu
    BarManager = BarMgr
    ItemLinks = <
      item
        Visible = True
        ItemName = 'cmPorNome'
      end
      item
        Visible = True
        ItemName = 'cmPorCodigo'
      end>
    UseOwnFont = False
    Left = 200
    Top = 184
  end
  object TimerSelBusca: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerSelBuscaTimer
    Left = 624
    Top = 200
  end
  object tAux: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'Cliente'
    Left = 176
    Top = 256
    object tAuxID: TAutoIncField
      FieldName = 'ID'
    end
    object tAuxCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tAuxCodigoKey: TStringField
      FieldName = 'CodigoKey'
      Size = 15
    end
    object tAuxNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tAuxCpf: TStringField
      FieldName = 'Cpf'
    end
    object tAuxRg: TStringField
      FieldName = 'Rg'
    end
    object tAuxFornecedor: TBooleanField
      FieldName = 'Fornecedor'
    end
  end
  object pmDebito: TdxBarPopupMenu
    BarManager = BarMgr
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'cmPagarDeb'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'cmDemonstrativo'
      end>
    UseOwnFont = True
    OnPopup = pmDebitoPopup
    Left = 736
    Top = 221
  end
end
