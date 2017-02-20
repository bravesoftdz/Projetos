inherited FrmConfigEspecies: TFrmConfigEspecies
  Caption = 'Meios de pagamento'
  ClientHeight = 465
  ClientWidth = 754
  Font.Height = -16
  OnDestroy = FormDestroy
  ExplicitTop = -95
  ExplicitWidth = 760
  ExplicitHeight = 494
  PixelsPerInch = 96
  TextHeight = 19
  inherited panPri: TLMDSimplePanel
    Width = 734
    Height = 393
    AutoSize = False
    ExplicitWidth = 734
    ExplicitHeight = 393
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 48
      Height = 48
      AutoSize = True
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F9870000000467414D410000B18F0BFC6105000000
        097048597300000EBC00000EBC0195BC724900000196494441546843EDD8BD4A
        03411007F0A8A879010B1F22AFA0084A4A2DF4297C010B2D445B2BB111AC050B
        53C8A548215AA5D126124811104505A322A84540749C15EE98DB1D0EC31D991D
        D9851FC94DF663FE69EE921200A8C61635618B9AB0454DD8A2266C5113A730B3
        76B28CDAE8138127BED11DDA4463B45FBBF939F485B84D7CB1457BB6031C5993
        7DD4A33DDB01B8053E9AD01E603204101602480B01A48907A8D3730785EB47E2
        F7F607DC6145ABD033F34A5D308715EDF79BC7D70AFA20F5419907CDEAD00314
        7D8ED94B34C0C2460487E75DB8EC3EC15ED4865932F72FCC5EA2018E9BD7A696
        8C9D5ACB599305876C809BDEBBA925E3ECEAC1599305876C80D3D6BDA925E3A0
        D171D664C1211B6069BB01CDCE23BCBCF5A17E710BF3EB91B3268BD94B34405E
        66AFA10640F43E90E74F03F3237F452280A1FA4E1CCBF52C44A52E98837C151E
        A7A58500D2420069FF3740CD9AE8A357DAB31D60D19AECA35DDA732A80811356
        D13359E08B3EDA4765DA6FAAF9184E1A455368DA23E35CAF4E411BB6A8095BD4
        842D6AC21635618B7A40E90716036D07A6B170C70000000049454E44AE426082}
    end
    object Grid: TcxGrid
      AlignWithMargins = True
      Left = 64
      Top = 28
      Width = 663
      Height = 318
      Margins.Left = 64
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TV: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 52
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 1
        object TVImg: TcxGridColumn
          Caption = #205'cone'
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Images = dmImgEsp.imgs48
          Properties.ImmediateDropDownWhenActivated = True
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <>
          Properties.LargeImages = dmImgEsp.imgs48
          Properties.ShowDescriptions = False
          OnGetPropertiesForEdit = TVImgGetPropertiesForEdit
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle1
          Width = 74
        end
        object TVNome: TcxGridColumn
          Caption = 'Nome'
          PropertiesClassName = 'TcxTextEditProperties'
          Styles.Header = cxStyle1
          Width = 186
        end
        object TVTroco: TcxGridColumn
          Caption = 'Pode voltar troco?'
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle1
          Width = 78
        end
        object TVCred: TcxGridColumn
          Caption = 'Pode deixar troco como cr'#233'dito em conta?'
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle1
          Width = 139
        end
        object TVObj: TcxGridColumn
          Visible = False
          VisibleForCustomization = False
        end
        object TVTPag: TcxGridColumn
          Caption = 'Forma de pagto. correspondente na emiss'#227'o da NF'
          DataBinding.ValueType = 'Smallint'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.ImmediateDropDownWhenActivated = True
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = 'Dinheiro'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Cheque'
              Value = 2
            end
            item
              Description = 'Cart'#227'o de Cr'#233'dito'
              Value = 3
            end
            item
              Description = 'Cart'#227'o de D'#233'bito'
              Value = 4
            end
            item
              Description = 'Cr'#233'dito da Loja'
              Value = 5
            end
            item
              Description = 'Vale Alimenta'#231#227'o'
              Value = 10
            end
            item
              Description = 'Vale Refei'#231#227'o'
              Value = 11
            end
            item
              Description = 'Vale Presente'
              Value = 12
            end
            item
              Description = 'Vale Combust'#237'vel'
              Value = 13
            end
            item
              Description = 'Outros'
              Value = 99
            end>
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle1
          Width = 178
        end
      end
      object gl: TcxGridLevel
        GridView = TV
      end
    end
    object LMDSimplePanel2: TLMDSimplePanel
      AlignWithMargins = True
      Left = 64
      Top = 0
      Width = 670
      Height = 28
      Hint = ''
      Margins.Left = 64
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Bevel.Mode = bmCustom
      ParentColor = True
      TabOrder = 1
      object lbApagar: TcxLabel
        AlignWithMargins = True
        Left = 198
        Top = 0
        Cursor = crHandPoint
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Apagar'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.TextColor = clBlue
        Style.TextStyle = [fsUnderline]
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clBlue
        StyleHot.TextStyle = [fsUnderline]
        Properties.Alignment.Vert = taVCenter
        OnClick = lbApagarClick
        ExplicitLeft = 262
        AnchorY = 14
      end
      object lbNovo: TcxLabel
        AlignWithMargins = True
        Left = 146
        Top = 0
        Cursor = crHandPoint
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Novo'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.TextColor = clBlue
        Style.TextStyle = [fsUnderline]
        Style.IsFontAssigned = True
        StyleHot.BorderStyle = ebsNone
        StyleHot.TextColor = clBlue
        StyleHot.TextStyle = [fsUnderline]
        Properties.Alignment.Vert = taVCenter
        OnClick = lbNovoClick
        ExplicitLeft = 131
        AnchorY = 14
      end
      object lbMeios: TcxLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Meios de pagamento:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Vert = taVCenter
        AnchorY = 14
      end
    end
    object lbTrocoMax: TcxLabel
      Left = 64
      Top = 356
      Caption = 'Troco M'#225'ximo Permitido'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
    object edTrocoMax: TcxCurrencyEdit
      Left = 246
      Top = 352
      EditValue = 1000.000000000000000000
      ParentFont = False
      Properties.HideSelection = False
      Properties.OnChange = edTrocoMaxPropertiesChange
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.StyleController = FrmPri.escFlat
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 132
    end
  end
  inherited LMDSimplePanel1: TLMDSimplePanel
    Top = 423
    Width = 734
    ExplicitTop = 423
    ExplicitWidth = 734
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
end
