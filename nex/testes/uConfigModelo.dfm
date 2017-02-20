object Form2: TForm2
  Left = 0
  Top = 0
  ActiveControl = VG
  Caption = 'Par'#226'metros para impress'#227'o do recibo'
  ClientHeight = 392
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 17
  object LMDSimplePanel1: TLMDSimplePanel
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
    object cxButton1: TcxButton
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
      Caption = 'Salvar'
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Button1Click
    end
    object cxButton2: TcxButton
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
      Caption = 'Cancelar'
      LookAndFeel.Kind = lfUltraFlat
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
      OnClick = cxButton2Click
    end
  end
  object VG: TcxVerticalGrid
    Left = 0
    Top = 40
    Width = 628
    Height = 352
    Align = alClient
    OptionsView.RowHeaderWidth = 149
    OptionsBehavior.AlwaysShowEditor = False
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsBehavior.GoToNextCellOnTab = True
    OptionsBehavior.RowSizing = True
    OptionsData.CancelOnExit = False
    Styles.Content = cxStyle2
    TabOrder = 1
    Version = 1
    object VGEditorRow1: TcxEditorRow
      Properties.Caption = 'Nome da empresa'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object VGEditorRow2: TcxEditorRow
      Properties.Caption = 'Endere'#231'o'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object VGEditorRow3: TcxEditorRow
      Properties.Caption = 'Telefone'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object erOpcao4: TcxEditorRow
      Properties.Caption = 'CNPJ'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
    object erLogo: TcxEditorRow
      Height = 128
      Properties.Caption = 'Logo da empresa'
      Properties.HeaderAlignmentVert = vaTop
      Properties.EditPropertiesClassName = 'TcxImageProperties'
      Properties.EditProperties.FitMode = ifmProportionalStretch
      Properties.EditProperties.GraphicClassName = 'TdxSmartImage'
      Properties.EditProperties.GraphicTransparency = gtTransparent
      Properties.EditProperties.ImmediatePost = True
      Properties.EditProperties.PopupMenuLayout.MenuItems = [pmiLoad, pmiSave]
      Properties.EditProperties.OnChange = erLogoEditPropertiesChange
      Properties.EditProperties.OnEditValueChanged = erLogoEditPropertiesEditValueChanged
      Properties.DataBinding.ValueType = 'BLOB'
      Properties.Value = Null
      ID = 4
      ParentID = -1
      Index = 4
      Version = 1
    end
    object VGEditorRow4: TcxEditorRow
      Properties.Caption = 'Inscri'#231#227'o Estadual'
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 5
      ParentID = -1
      Index = 5
      Version = 1
    end
    object VGEditorRow6: TcxEditorRow
      Properties.Caption = 'XYZ 7 z'#233'ber'
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 6
      ParentID = -1
      Index = 6
      Version = 1
    end
  end
  object btnSelImg: TcxButton
    AlignWithMargins = True
    Left = 317
    Top = 175
    Width = 140
    Height = 23
    Cursor = crHandPoint
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Selecionar uma imagem'
    Colors.DefaultText = clHighlight
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    SpeedButtonOptions.CanBeFocused = False
    SpeedButtonOptions.Flat = True
    SpeedButtonOptions.Transparent = True
    TabOrder = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = btnSelImgClick
  end
  object btnDel: TcxButton
    Left = 155
    Top = 227
    Width = 28
    Height = 28
    Cursor = crHandPoint
    Caption = 'btnDel'
    Colors.Default = clWhite
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
    OnClick = btnDelClick
  end
  object btnSelImg2: TcxButton
    Left = 183
    Top = 227
    Width = 28
    Height = 28
    Cursor = crHandPoint
    Caption = 'btnDel'
    Colors.Default = clWhite
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
    OnClick = btnSelImgClick
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 216
    Top = 56
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clYellow
      TextColor = clBlue
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
end
