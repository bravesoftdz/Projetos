object FrmGMParam: TFrmGMParam
  Left = 0
  Top = 0
  Caption = 'Par'#226'metros para o documento'
  ClientHeight = 455
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object panTop: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 628
    Height = 40
    Hint = ''
    Align = alTop
    Bevel.BorderColor = clYellow
    Bevel.BorderSides = [fsLeft, fsRight, fsTop]
    Bevel.Mode = bmStandard
    Bevel.ShadowColor = 33023
    Bevel.StandardStyle = lsNone
    TabOrder = 0
    object btnSalvar: TcxButton
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 75
      Height = 30
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Salvar - F2'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvarClick
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 90
      Top = 5
      Width = 75
      Height = 30
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Cancel = True
      Caption = 'Cancelar'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnCancelarClick
    end
  end
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 40
    Width = 628
    Height = 415
    Hint = ''
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 1
    object VG: TcxDBVerticalGrid
      Left = 0
      Top = 0
      Width = 628
      Height = 415
      BorderStyle = cxcbsNone
      Align = alClient
      OptionsView.CellAutoHeight = True
      OptionsView.CellTextMaxLineCount = 5
      OptionsView.ShowEditButtons = ecsbFocused
      OptionsView.RowHeaderWidth = 149
      OptionsBehavior.AlwaysShowEditor = False
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.GoToNextCellOnTab = True
      OptionsBehavior.RowSizing = True
      OptionsBehavior.AllowChangeRecord = False
      OptionsData.CancelOnExit = False
      OptionsData.Appending = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      Navigator.Buttons.CustomButtons = <>
      Styles.Content = cxStyle2
      Styles.Selection = cxStyle1
      TabOrder = 0
      DataController.DataSource = DS
      DataController.GridMode = True
      Version = 1
      object erRecNomeLoja: TcxDBEditorRow
        Properties.Caption = 'Nome da empresa'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'RecNomeLoja'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object erTel1: TcxDBEditorRow
        Properties.Caption = 'Telefone'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_Tel'
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object erTel2: TcxDBEditorRow
        Properties.Caption = 'Telefone 2'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_Tel2'
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object erLogo: TcxDBEditorRow
        Height = 128
        Properties.Caption = 'Logo da empresa'
        Properties.HeaderAlignmentVert = vaTop
        Properties.EditPropertiesClassName = 'TcxImageProperties'
        Properties.EditProperties.GraphicClassName = 'TdxSmartImage'
        Properties.EditProperties.GraphicTransparency = gtTransparent
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.PopupMenuLayout.MenuItems = [pmiLoad, pmiSave]
        Properties.EditProperties.OnChange = erLogoEditPropertiesChange
        Properties.EditProperties.OnEditValueChanged = erLogoEditPropertiesEditValueChanged
        Properties.DataBinding.FieldName = 'DocParam_Logo'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object erLogo2: TcxDBEditorRow
        Height = 128
        Properties.Caption = 'Logo da empresa 2'
        Properties.HeaderAlignmentVert = vaTop
        Properties.EditPropertiesClassName = 'TcxImageProperties'
        Properties.EditProperties.GraphicClassName = 'TdxSmartImage'
        Properties.EditProperties.ImmediatePost = True
        Properties.DataBinding.FieldName = 'DocParam_Logo2'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object erEnd: TcxDBEditorRow
        Properties.Caption = 'Endere'#231'o'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_End'
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object erCidade: TcxDBEditorRow
        Properties.Caption = 'Cidade'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_Cidade'
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object erCEP: TcxDBEditorRow
        Properties.Caption = 'CEP'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_CEP'
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
      object erCNPJ: TcxDBEditorRow
        Properties.Caption = 'CNPJ'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_CNPJ'
        ID = 8
        ParentID = -1
        Index = 8
        Version = 1
      end
      object erSite: TcxDBEditorRow
        Properties.Caption = 'Site'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_Site'
        ID = 9
        ParentID = -1
        Index = 9
        Version = 1
      end
      object erIE: TcxDBEditorRow
        Properties.Caption = 'Inscri'#231#227'o Estadual'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_IE'
        ID = 10
        ParentID = -1
        Index = 10
        Version = 1
      end
      object erFacebook: TcxDBEditorRow
        Properties.Caption = 'Facebook'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_Facebook'
        ID = 11
        ParentID = -1
        Index = 11
        Version = 1
      end
      object erWhatsApp: TcxDBEditorRow
        Properties.Caption = 'WhatsApp'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_Whats'
        ID = 12
        ParentID = -1
        Index = 12
        Version = 1
      end
      object erWhatsApp2: TcxDBEditorRow
        Properties.Caption = 'WhatsApp 2'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_Whats2'
        ID = 13
        ParentID = -1
        Index = 13
        Version = 1
      end
      object erInstagram: TcxDBEditorRow
        Properties.Caption = 'Instagram'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_Instagram'
        ID = 14
        ParentID = -1
        Index = 14
        Version = 1
      end
      object erInfoExtra: TcxDBEditorRow
        Properties.Caption = 'Informa'#231#245'es Extras'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_InfoExtra'
        ID = 15
        ParentID = -1
        Index = 15
        Version = 1
      end
      object erRecRodape: TcxDBEditorRow
        Height = 90
        Properties.Caption = 'Rodap'#233
        Properties.HeaderAlignmentVert = vaTop
        Properties.EditPropertiesClassName = 'TcxMemoProperties'
        Properties.EditProperties.ScrollBars = ssVertical
        Properties.DataBinding.FieldName = 'RecRodape'
        ID = 16
        ParentID = -1
        Index = 16
        Version = 1
      end
      object erEmail: TcxDBEditorRow
        Properties.Caption = 'E-mail'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DocParam_Email'
        ID = 17
        ParentID = -1
        Index = 17
        Version = 1
      end
      object erMeioPagto: TcxDBEditorRow
        Height = 42
        Properties.Caption = 'Imprimir meio'#13#10'de pagamento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.MultiLine = True
        Properties.EditProperties.NullStyle = nssUnchecked
        Properties.DataBinding.FieldName = 'RecImprimeMeioPagto'
        ID = 18
        ParentID = -1
        Index = 18
        Version = 1
      end
      object erPrefixoMeioPagto: TcxDBEditorRow
        Height = 42
        Properties.Caption = 'Texto que antecede'#13#10'meio de pagamento'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'RecPrefixoMeioPagto'
        ID = 19
        ParentID = -1
        Index = 19
        Version = 1
      end
    end
    object btnDel: TcxButton
      Left = 155
      Top = 164
      Width = 28
      Height = 28
      Cursor = crHandPoint
      Caption = 'btnDel'
      Colors.Default = clWhite
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.Data = {
        72020000424D720200000000000036000000280000000B0000000D0000000100
        2000000000003C02000000000000000000000000000000000000000000000000
        00A0000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00A00000000000000000000000FF00000080000000FF00000080000000FF0000
        0080000000FF00000080000000FF0000000000000000000000FF000000800000
        00FF00000080000000FF00000080000000FF00000080000000FF000000000000
        0000000000FF00000080000000FF00000080000000FF00000080000000FF0000
        0080000000FF0000000000000000000000FF00000080000000FF000000800000
        00FF00000080000000FF00000080000000FF0000000000000000000000FF0000
        0080000000FF00000080000000FF00000080000000FF00000080000000FF0000
        000000000000000000FF00000080000000FF00000080000000FF000000800000
        00FF00000080000000FF0000000000000000000000FF00000080000000FF0000
        0080000000FF00000080000000FF00000080000000FF00000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000FF000000000000000000000000000000FF0000
        00000000000000000000000000000000000000000000000000A0000000FF0000
        00FF000000FF000000A0000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      TabOrder = 1
      Visible = False
      OnClick = btnDelClick
    end
    object btnSelImg2: TcxButton
      Left = 183
      Top = 164
      Width = 28
      Height = 28
      Cursor = crHandPoint
      Caption = 'btnDel'
      Colors.Default = clWhite
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.Data = {
        76020000424D760200000000000036000000280000000C0000000C0000000100
        2000000000004002000000000000000000000000000000000000000000000000
        00D00000001000000060000000B0000000F0000000E0000000B0000000600000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000F0000000FF000000FF000000D00000001000000000000000000000
        00FF000000FF000000FF00000070000000100000000000000030000000C00000
        00FF000000D00000000000000000000000FF000000FF000000FF000000D00000
        0000000000000000000000000000000000C0000000FF00000060000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0030000000FF000000C000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000F0000000F0000000E00000
        00F0000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000C0000000FF0000003000000000000000000000
        0000000000000000000000000000000000000000000000000000000000600000
        00FF000000C000000000000000000000000000000000000000D0000000FF0000
        00FF000000FF0000000000000000000000D0000000FF000000C0000000300000
        00000000001000000070000000FF000000FF000000FF00000000000000000000
        0010000000D0000000FF000000FF000000F0000000FF000000FF000000FF0000
        00FF000000FF0000000000000000000000000000000000000060000000C00000
        00F0000000F0000000B00000006000000010000000D000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      TabOrder = 2
      Visible = False
      OnClick = btnSelImgClick
    end
    object btnDel2: TcxButton
      Left = 155
      Top = 293
      Width = 28
      Height = 28
      Cursor = crHandPoint
      Caption = 'btnDel'
      Colors.Default = clWhite
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.Data = {
        72020000424D720200000000000036000000280000000B0000000D0000000100
        2000000000003C02000000000000000000000000000000000000000000000000
        00A0000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00A00000000000000000000000FF00000080000000FF00000080000000FF0000
        0080000000FF00000080000000FF0000000000000000000000FF000000800000
        00FF00000080000000FF00000080000000FF00000080000000FF000000000000
        0000000000FF00000080000000FF00000080000000FF00000080000000FF0000
        0080000000FF0000000000000000000000FF00000080000000FF000000800000
        00FF00000080000000FF00000080000000FF0000000000000000000000FF0000
        0080000000FF00000080000000FF00000080000000FF00000080000000FF0000
        000000000000000000FF00000080000000FF00000080000000FF000000800000
        00FF00000080000000FF0000000000000000000000FF00000080000000FF0000
        0080000000FF00000080000000FF00000080000000FF00000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000FF000000000000000000000000000000FF0000
        00000000000000000000000000000000000000000000000000A0000000FF0000
        00FF000000FF000000A0000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      TabOrder = 3
      Visible = False
      OnClick = btnDel2Click
    end
    object btnSelImg4: TcxButton
      Left = 183
      Top = 293
      Width = 28
      Height = 28
      Cursor = crHandPoint
      Caption = 'btnDel'
      Colors.Default = clWhite
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.Data = {
        76020000424D760200000000000036000000280000000C0000000C0000000100
        2000000000004002000000000000000000000000000000000000000000000000
        00D00000001000000060000000B0000000F0000000E0000000B0000000600000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000F0000000FF000000FF000000D00000001000000000000000000000
        00FF000000FF000000FF00000070000000100000000000000030000000C00000
        00FF000000D00000000000000000000000FF000000FF000000FF000000D00000
        0000000000000000000000000000000000C0000000FF00000060000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0030000000FF000000C000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000F0000000F0000000E00000
        00F0000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000C0000000FF0000003000000000000000000000
        0000000000000000000000000000000000000000000000000000000000600000
        00FF000000C000000000000000000000000000000000000000D0000000FF0000
        00FF000000FF0000000000000000000000D0000000FF000000C0000000300000
        00000000001000000070000000FF000000FF000000FF00000000000000000000
        0010000000D0000000FF000000FF000000F0000000FF000000FF000000FF0000
        00FF000000FF0000000000000000000000000000000000000060000000C00000
        00F0000000F0000000B00000006000000010000000D000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      TabOrder = 4
      Visible = False
      OnClick = btnSelImg3Click
    end
    object btnSelImg: TcxButton
      AlignWithMargins = True
      Left = 155
      Top = 68
      Width = 140
      Height = 23
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Selecionar uma imagem'
      Colors.DefaultText = clHighlight
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = btnSelImgClick
    end
    object btnSelImg3: TcxButton
      AlignWithMargins = True
      Left = 155
      Top = 198
      Width = 140
      Height = 23
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Selecionar uma imagem'
      Colors.DefaultText = clHighlight
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = btnSelImg3Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 216
    Top = 56
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 9699327
      TextColor = clBlue
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
    end
  end
  object MT: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'RecRodape'
        DataType = ftMemo
      end
      item
        Name = 'RecNomeLoja'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DocParam_Email'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DocParam_Tel'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DocParam_Tel2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DocParam_Cidade'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DocParam_End'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DocParam_CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'DocParam_CNPJ'
        DataType = ftString
        Size = 19
      end
      item
        Name = 'DocParam_IE'
        DataType = ftString
        Size = 19
      end
      item
        Name = 'DocParam_Site'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DocParam_Facebook'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DocParam_Instagram'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DocParam_Whats'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DocParam_Whats2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DocParam_InfoExtra'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DocParam_Logo'
        DataType = ftGraphic
      end
      item
        Name = 'DocParam_Logo2'
        DataType = ftGraphic
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.64.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 208
    Top = 192
    object MTRecImprimeMeioPagto: TBooleanField
      FieldName = 'RecImprimeMeioPagto'
    end
    object MTRecPrefixoMeioPagto: TStringField
      FieldName = 'RecPrefixoMeioPagto'
      Size = 30
    end
    object MTRecNomeLoja: TStringField
      FieldName = 'RecNomeLoja'
      Size = 40
    end
    object MTDocParam_Email: TStringField
      FieldName = 'DocParam_Email'
      Size = 100
    end
    object MTDocParam_Tel: TStringField
      FieldName = 'DocParam_Tel'
      Size = 15
    end
    object MTDocParam_Tel2: TStringField
      FieldName = 'DocParam_Tel2'
      Size = 15
    end
    object MTDocParam_Cidade: TStringField
      FieldName = 'DocParam_Cidade'
      Size = 50
    end
    object MTDocParam_End: TStringField
      FieldName = 'DocParam_End'
      Size = 100
    end
    object MTDocParam_CEP: TStringField
      FieldName = 'DocParam_CEP'
      Size = 9
    end
    object MTDocParam_CNPJ: TStringField
      FieldName = 'DocParam_CNPJ'
      Size = 19
    end
    object MTDocParam_IE: TStringField
      FieldName = 'DocParam_IE'
      Size = 19
    end
    object MTDocParam_Site: TStringField
      FieldName = 'DocParam_Site'
      Size = 50
    end
    object MTDocParam_Facebook: TStringField
      FieldName = 'DocParam_Facebook'
      Size = 100
    end
    object MTDocParam_Instagram: TStringField
      FieldName = 'DocParam_Instagram'
      Size = 50
    end
    object MTDocParam_Whats: TStringField
      FieldName = 'DocParam_Whats'
      Size = 15
    end
    object MTDocParam_Whats2: TStringField
      FieldName = 'DocParam_Whats2'
      Size = 15
    end
    object MTDocParam_InfoExtra: TStringField
      FieldName = 'DocParam_InfoExtra'
      Size = 100
    end
    object MTDocParam_Logo: TGraphicField
      FieldName = 'DocParam_Logo'
      BlobType = ftGraphic
    end
    object MTDocParam_Logo2: TGraphicField
      FieldName = 'DocParam_Logo2'
      BlobType = ftGraphic
    end
    object MTRecRodape: TMemoField
      FieldName = 'RecRodape'
      BlobType = ftMemo
    end
  end
  object DS: TDataSource
    DataSet = MT
    Left = 272
    Top = 128
  end
  object Open: TOpenDialog
    Filter = 'Imagens (PNG e Jpeg)|*.png;*.jpg'
    FilterIndex = 0
    Options = [ofEnableSizing]
    Left = 488
    Top = 144
  end
end
