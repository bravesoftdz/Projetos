object FrmPesqEtq: TFrmPesqEtq
  Left = 0
  Top = 0
  Caption = 'FrmPesqEtq'
  ClientHeight = 229
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 447
    Height = 229
    Hint = ''
    Align = alClient
    Bevel.Mode = bmCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Grid: TcxGrid
      AlignWithMargins = True
      Left = 5
      Top = 29
      Width = 437
      Height = 195
      Margins.Left = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      ExplicitLeft = 0
      ExplicitTop = 26
      ExplicitWidth = 447
      ExplicitHeight = 206
      object TV: TcxGridDBTableView
        OnDblClick = btnOkClick
        Navigator.Buttons.CustomButtons = <>
        OnEditKeyDown = TVEditKeyDown
        DataController.DataSource = dsEtiqueta
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
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLineColor = 15329769
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        OptionsView.Indicator = True
        Preview.Column = TVObs
        Preview.Visible = True
        Styles.Preview = fbProdutos.cxStyle3
        object TVNome: TcxGridDBColumn
          DataBinding.FieldName = 'Nome'
        end
        object TVObs: TcxGridDBColumn
          DataBinding.FieldName = 'Obs'
        end
      end
      object GL: TcxGridLevel
        GridView = TV
      end
    end
    object panLookup: TLMDSimplePanel
      AlignWithMargins = True
      Left = 5
      Top = 3
      Width = 437
      Height = 23
      Hint = ''
      Margins.Left = 5
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alTop
      Bevel.BorderSides = []
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = -3
      ExplicitWidth = 447
      object btnAdicionar: TcxButton
        Left = 0
        Top = 0
        Width = 86
        Height = 23
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Novo Modelo'
        Colors.DefaultText = 5789784
        Colors.HotText = clBlue
        Default = True
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Images = dmImagens.im16
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object btnOk: TcxButton
        AlignWithMargins = True
        Left = 382
        Top = 0
        Width = 55
        Height = 23
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alRight
        Caption = '&Ok'
        Default = True
        LookAndFeel.Kind = lfFlat
        TabOrder = 1
        OnClick = btnOkClick
        ExplicitLeft = 392
      end
      object cxButton1: TcxButton
        Left = 206
        Top = 0
        Width = 52
        Height = 23
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Mais'
        Colors.DefaultText = 5789784
        Colors.HotText = clBlue
        Default = True
        DropDownMenu = PopupMenu1
        Kind = cxbkOfficeDropDown
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object btnEditar: TcxButton
        Left = 86
        Top = 0
        Width = 60
        Height = 23
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Editar'
        Colors.DefaultText = 5789784
        Colors.HotText = clBlue
        Default = True
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
        TabOrder = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = btnEditarClick
      end
      object btnApagar: TcxButton
        Left = 146
        Top = 0
        Width = 60
        Height = 23
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Apagar'
        Colors.DefaultText = 5789784
        Colors.HotText = clBlue
        Default = True
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
        TabOrder = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = btnApagarClick
      end
    end
  end
  object dsEtiqueta: TDataSource
    Left = 112
    Top = 88
  end
  object Open: TOpenDialog
    Filter = 'Etiqueta programa NEX|*.labelnex'
    Left = 288
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    TrackButton = tbLeftButton
    Left = 264
    Top = 128
    object miRenomear: TMenuItem
      Caption = 'Renomear modelo de etiqueta'
      OnClick = miRenomearClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miImportar: TMenuItem
      Caption = 'Importar modelo de etiqueta de um arquivo'
      OnClick = miImportarClick
    end
  end
end
