object FrmDadosTot: TFrmDadosTot
  Left = 141
  Top = 76
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsDialog
  Caption = 'Par'#226'metros para totaliza'#231#227'o'
  ClientHeight = 404
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 28
    Height = 13
    Caption = 'T'#237'tulo'
  end
  object LMDGroupBox1: TLMDGroupBox
    Left = 8
    Top = 37
    Width = 237
    Height = 81
    BackFX.AlphaBlend.Strength = 0.600000023841857900
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsFrameInset
    Caption = 'Eixo Y'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'MS Sans Serif'
    CaptionFont.Style = []
    TabOrder = 0
    object LMDSimpleLabel1: TLMDSimpleLabel
      Left = 8
      Top = 21
      Width = 11
      Height = 15
      Caption = '1.'
      Options = []
    end
    object LMDSimpleLabel2: TLMDSimpleLabel
      Left = 8
      Top = 47
      Width = 11
      Height = 15
      Caption = '2.'
      Options = []
    end
    object cbCampo2: TComboBox
      Tag = 2
      Left = 20
      Top = 44
      Width = 204
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbCampo1Change
    end
    object cbCampo1: TComboBox
      Tag = 1
      Left = 20
      Top = 18
      Width = 204
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbCampo1Change
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 125
    Width = 237
    Height = 145
    Caption = ' Eixo X '
    TabOrder = 1
    object LMDSimpleLabel4: TLMDSimpleLabel
      Left = 12
      Top = 15
      Width = 35
      Height = 15
      Caption = 'Campo'
      Options = []
    end
    object LMDSimpleLabel5: TLMDSimpleLabel
      Left = 12
      Top = 58
      Width = 150
      Height = 15
      Caption = 'Quantidade m'#225'xima de colunas'
      Options = []
    end
    object LMDSimpleLabel6: TLMDSimpleLabel
      Left = 12
      Top = 77
      Width = 98
      Height = 15
      Caption = 'Ordenar colunas por'
      Options = []
    end
    object cbChave: TComboBox
      Left = 12
      Top = 30
      Width = 214
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbChaveChange
    end
    object cbMostraOutros: TCheckBox
      Left = 12
      Top = 120
      Width = 97
      Height = 17
      Caption = 'Mostrar Outros'
      TabOrder = 1
      OnClick = cbMostraOutrosClick
    end
    object cbMostraMedia: TCheckBox
      Left = 138
      Top = 120
      Width = 87
      Height = 17
      Caption = 'Mostrar M'#233'dia'
      TabOrder = 2
      OnClick = cbMostraMediaClick
    end
    object edMaxCol: TLMDSpinEdit
      Left = 167
      Top = 55
      Width = 59
      Height = 21
      MaxValue = 25
      MinValue = 1
      TabOrder = 3
      OnChange = edMaxColChange
      Value = 25
    end
    object cbOrdem: TComboBox
      Left = 12
      Top = 92
      Width = 213
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      OnChange = cbOrdemChange
      Items.Strings = (
        'Ordem Alfab'#233'tica'
        'Totaliza'#231#227'o'
        'Customizar')
    end
  end
  object GridCust: TdxDBGrid
    Left = 256
    Top = 43
    Width = 193
    Height = 318
    Bands = <
      item
        Caption = 'Ordem das Colunas'
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Pos'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 2
    Visible = False
    OnEnter = GridCustEnter
    DataSource = dsCol
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    ShowBands = True
    object GridCustPos: TdxDBGridMaskColumn
      DisableCustomizing = True
      DisableDragging = True
      DisableEditor = True
      ReadOnly = True
      TabStop = False
      Width = 28
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Pos'
      DisableFilter = True
    end
    object GridCustColuna: TdxDBGridMaskColumn
      Width = 151
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Coluna'
    end
  end
  object btnOk: TBitBtn
    Left = 9
    Top = 370
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = btnOkClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object btnCancelar: TBitBtn
    Left = 113
    Top = 370
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 4
    Kind = bkCancel
  end
  object edTitulo: TEdit
    Left = 40
    Top = 9
    Width = 409
    Height = 21
    TabOrder = 5
    OnChange = edTituloChange
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 278
    Width = 237
    Height = 83
    Caption = ' Totaliza'#231#227'o '
    TabOrder = 6
    object Label2: TLabel
      Left = 9
      Top = 20
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object Label3: TLabel
      Left = 9
      Top = 52
      Width = 33
      Height = 13
      Caption = 'Campo'
    end
    object cbTipoTot: TComboBox
      Left = 49
      Top = 16
      Width = 176
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbTipoTotChange
      Items.Strings = (
        'Contar'
        'Somar'
        'M'#237'nimo'
        'M'#225'ximo'
        'M'#233'dia')
    end
    object cbCampoTot: TComboBox
      Left = 49
      Top = 48
      Width = 176
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbCampoTotChange
    end
  end
  object mtCol: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoIncMinValue = -1
    FieldDefs = <
      item
        Name = 'Pos'
        DataType = ftInteger
      end
      item
        Name = 'Coluna'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 288
    Top = 104
    object mtColPos: TIntegerField
      FieldName = 'Pos'
    end
    object mtColColuna: TStringField
      FieldName = 'Coluna'
      Size = 50
    end
  end
  object dsCol: TDataSource
    DataSet = mtCol
    Left = 296
    Top = 152
  end
end
