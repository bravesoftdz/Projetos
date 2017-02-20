object FrmMVAPauta: TFrmMVAPauta
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'MVA / Pauta'
  ClientHeight = 471
  ClientWidth = 256
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
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 441
    Width = 256
    Height = 30
    Hint = ''
    Margins.Left = 0
    Margins.Top = 15
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 99
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Ok - F2'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvarClick
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 175
      Top = 0
      Width = 81
      Height = 30
      Cursor = crHandPoint
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Cancel = True
      Caption = 'Cancelar'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 2
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = btnCancelarClick
    end
  end
  object Grid: TcxGrid
    Left = 0
    Top = 82
    Width = 256
    Height = 344
    Align = alClient
    TabOrder = 1
    ExplicitTop = 79
    object TV: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object TVUF: TcxGridDBColumn
        DataBinding.FieldName = 'UF'
        HeaderAlignmentHorz = taCenter
        Options.Focusing = False
        Width = 33
      end
      object TVMVA: TcxGridDBColumn
        DataBinding.FieldName = 'MVA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.##%'
        Properties.EditFormat = '#.##'
        HeaderAlignmentHorz = taCenter
      end
      object TVPauta: TcxGridDBColumn
        DataBinding.FieldName = 'Pauta'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taCenter
      end
    end
    object GL: TcxGridLevel
      GridView = TV
    end
  end
  object edModo: TcxImageComboBox
    AlignWithMargins = True
    Left = 0
    Top = 21
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alTop
    RepositoryItem = Dados.erModBCSt
    ParentFont = False
    Properties.ImmediateDropDownWhenActivated = True
    Properties.ImmediatePost = True
    Properties.ImmediateUpdateText = True
    Properties.Items = <>
    Properties.OnCloseUp = edModoPropertiesCloseUp
    Style.BorderStyle = ebsFlat
    TabOrder = 2
    Width = 256
  end
  object lbPrompt: TcxLabel
    Left = 0
    Top = 61
    Align = alTop
    Caption = 'Informe o MVA de cada estado:'
    ParentFont = False
  end
  object cxLabel2: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Base de c'#225'lculo do ICMS S.T. por:'
    ParentFont = False
  end
  object MT: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MVA'
        DataType = ftFloat
      end
      item
        Name = 'Pauta'
        DataType = ftCurrency
      end>
    IndexFieldNames = 'UF'
    IndexName = 'MTIndex1'
    IndexDefs = <
      item
        Name = 'MTIndex1'
        Fields = 'UF'
        Options = [ixPrimary, ixUnique, ixCaseInsensitive]
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
    Left = 72
    Top = 173
    object MTuf: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object MTMVA: TFloatField
      FieldName = 'MVA'
    end
    object MTPauta: TCurrencyField
      FieldName = 'Pauta'
    end
  end
  object DS: TDataSource
    DataSet = MT
    Left = 120
    Top = 173
  end
end
