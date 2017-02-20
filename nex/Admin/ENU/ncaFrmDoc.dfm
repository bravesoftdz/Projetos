object FrmDoc: TFrmDoc
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Documento'
  ClientHeight = 424
  ClientWidth = 466
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 17
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 36
    Width = 466
    Height = 388
    Hint = ''
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 0
    object LC: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 466
      Height = 388
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = FrmPri.lfPadrao
      object edObs: TcxDBMemo
        Left = 13
        Top = 254
        DataBinding.DataField = 'Obs'
        DataBinding.DataSource = dsMT
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsFlat
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Height = 89
        Width = 297
      end
      object edBobina: TcxDBImageComboBox
        Left = 89
        Top = 112
        RepositoryItem = Dados.erTipoPapel
        DataBinding.DataField = 'Bobina'
        DataBinding.DataSource = dsMT
        Properties.ImmediateDropDownWhenActivated = True
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <>
        Properties.PostPopupValueOnTab = True
        Properties.OnChange = edBobinaPropertiesChange
        Properties.OnEditValueChanged = edBobinaPropertiesEditValueChanged
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsFlat
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        Style.StyleController = FrmPri.escFlat
        Style.ButtonStyle = btsFlat
        Style.PopupBorderStyle = epbsFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 104
      end
      object edNome: TcxDBTextEdit
        Left = 89
        Top = 46
        DataBinding.DataField = 'Nome'
        DataBinding.DataSource = dsMT
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsFlat
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 360
      end
      object edTextOnly: TcxDBCheckBox
        Left = 13
        Top = 145
        Caption = 'Somente Texto (Sem formata'#231#227'o)'
        DataBinding.DataField = 'TextOnly'
        DataBinding.DataSource = dsMT
        Properties.NullStyle = nssUnchecked
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsFlat
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Width = 121
      end
      object edTamanho: TcxDBComboBox
        Left = 10000
        Top = 10000
        DataBinding.DataField = 'Tamanho'
        DataBinding.DataSource = dsMT
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items.Strings = (
          'A4'
          'Carta'
          'A5'
          'Bobina 42mm'
          'Bobina 74mm'
          'Bobina 80mm')
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsFlat
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        Style.ButtonStyle = btsFlat
        Style.PopupBorderStyle = epbsFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Visible = False
        Width = 121
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 89
        Top = 79
        DataBinding.DataField = 'MinVer'
        DataBinding.DataSource = dsMT
        Properties.ImmediatePost = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsFlat
        Style.HotTrack = False
        Style.ButtonStyle = btsFlat
        TabOrder = 2
        Width = 84
      end
      object edFREE: TcxDBCheckBox
        Left = 13
        Top = 178
        Caption = 'FREE'
        DataBinding.DataField = 'Free'
        DataBinding.DataSource = dsMT
        Properties.FullFocusRect = True
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsFlat
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Width = 121
      end
      object edID: TcxDBTextEdit
        Left = 89
        Top = 13
        DataBinding.DataField = 'UID'
        DataBinding.DataSource = dsMT
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsFlat
        Style.HotTrack = False
        TabOrder = 0
        Width = 121
      end
      object LCGroup_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object lciObs: TdxLayoutItem
        Parent = LCGroup_Root
        CaptionOptions.AlignVert = tavTop
        CaptionOptions.Text = 'Observa'#231#245'es'
        CaptionOptions.Layout = clTop
        LayoutLookAndFeel = FrmPri.lfPadrao
        Padding.Top = 20
        Padding.AssignedValues = [lpavTop]
        Control = edObs
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object lciBobina: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Papel'
        LayoutLookAndFeel = FrmPri.lfPadrao
        SizeOptions.AssignedValues = [sovSizableHorz]
        SizeOptions.SizableHorz = True
        SizeOptions.Width = 134
        Control = edBobina
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object LCItem5: TdxLayoutItem
        Parent = LCGroup_Root
        CaptionOptions.Text = 'Nome'
        LayoutLookAndFeel = FrmPri.lfPadrao
        Control = edNome
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lciTextOnly: TdxLayoutItem
        Parent = LCGroup_Root
        CaptionOptions.Text = 'Somente Texto'
        CaptionOptions.Visible = False
        LayoutLookAndFeel = FrmPri.lfPadrao
        Control = edTextOnly
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object lciTamanho: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Tamanho'
        LayoutLookAndFeel = FrmPri.lfPadrao
        Control = edTamanho
        ControlOptions.ShowBorder = False
        Index = -1
      end
      object lciVerMin: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Vers'#227'o Min.'
        Control = cxDBSpinEdit1
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object lciFREE: TdxLayoutItem
        Parent = LCGroup_Root
        CaptionOptions.Text = 'cxDBCheckBox1'
        CaptionOptions.Visible = False
        Control = edFREE
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object lciID: TdxLayoutItem
        Parent = LCGroup_Root
        CaptionOptions.Text = 'ID Interno'
        Control = edID
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object mt: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Tipo'
        DataType = ftByte
      end
      item
        Name = 'Bobina'
        DataType = ftBoolean
      end
      item
        Name = 'TextOnly'
        DataType = ftBoolean
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Obs'
        DataType = ftMemo
      end
      item
        Name = 'Params'
        DataType = ftMemo
      end
      item
        Name = 'Doc'
        DataType = ftBlob
      end
      item
        Name = 'Img'
        DataType = ftGraphic
      end
      item
        Name = 'Custom'
        DataType = ftBoolean
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
    Left = 336
    Top = 56
    object mtMinVer: TWordField
      FieldName = 'MinVer'
    end
    object mtTipo: TByteField
      FieldName = 'Tipo'
    end
    object mtBobina: TBooleanField
      FieldName = 'Bobina'
    end
    object mtTextOnly: TBooleanField
      FieldName = 'TextOnly'
    end
    object mtTamanho: TStringField
      FieldName = 'Tamanho'
    end
    object mtNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object mtObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object mtFree: TBooleanField
      FieldName = 'Free'
    end
    object mtUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
  end
  object dsMT: TDataSource
    DataSet = mt
    Left = 344
    Top = 144
  end
  object BarMgr: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmImagens.im16
    ImageOptions.LargeImages = dmImagens.im24
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    SunkenBorder = True
    UseSystemFont = True
    Left = 312
    Top = 248
    DockControlHeights = (
      0
      0
      36
      0)
    object barTop: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Controles'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 164
      FloatTop = 132
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmGravar'
        end
        item
          Visible = True
          ItemName = 'cmCancelar'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Controles'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object cmGravar: TdxBarLargeButton
      Caption = '&Salvar (F2)'
      Category = 0
      Hint = 'Salvar (F2)'
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = cmGravarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      SyncImageIndex = False
      ImageIndex = 4
    end
    object cmCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = cmCancelarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
  end
end
