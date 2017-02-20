object FrmUsuario: TFrmUsuario
  Left = 171
  Top = 161
  ActiveControl = edUsername
  Caption = 'Usu'#225'rio'
  ClientHeight = 547
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object lbDir: TcxLabel
    AlignWithMargins = True
    Left = 5
    Top = 258
    Margins.Left = 5
    Margins.Top = 7
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Direitos de Acesso:'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clNavy
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cbItens: TcxCheckListBox
    AlignWithMargins = True
    Left = 5
    Top = 282
    Width = 780
    Height = 262
    Margins.Left = 5
    Margins.Right = 5
    Align = alClient
    Items = <
      item
        State = cbsChecked
        Text = 'zxczxczxczxc'
      end>
    ParentFont = False
    Style.BorderStyle = cbsFlat
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfFlat
    Style.LookAndFeel.NativeStyle = False
    Style.StyleController = FrmPri.cxEditStyleController1
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    OnClickCheck = cbItensClickCheck
  end
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 5
    Top = 41
    Width = 780
    Height = 96
    Hint = ''
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 2
    object edNome: TcxDBTextEdit
      Left = 114
      Top = 31
      DataBinding.DataField = 'Nome'
      DataBinding.DataSource = dsUsuario
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
      TabOrder = 1
      Width = 305
    end
    object cbAdmin: TcxDBCheckBox
      Left = 0
      Top = 59
      Cursor = crHandPoint
      Caption = 
        'Administrador (Marque esta op'#231#227'o para que este usu'#225'rio tenha ace' +
        'sso total ao sistema)'
      DataBinding.DataField = 'Admin'
      DataBinding.DataSource = dsUsuario
      ParentFont = False
      Properties.FullFocusRect = True
      Properties.ImmediatePost = True
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnClick = cbAdminClick
      Width = 777
    end
    object cxLabel3: TcxLabel
      Left = 2
      Top = 33
      Caption = 'Nome Completo'
      ParentFont = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
    object edUsername: TcxDBTextEdit
      Left = 114
      Top = 1
      DataBinding.DataField = 'Username'
      DataBinding.DataSource = dsUsuario
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
      Width = 305
    end
    object cxLabel2: TcxLabel
      Left = 2
      Top = 2
      Caption = 'Username'
      ParentFont = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
  end
  object gbManut: TcxGroupBox
    AlignWithMargins = True
    Left = 5
    Top = 147
    Margins.Left = 5
    Margins.Top = 10
    Margins.Right = 5
    Margins.Bottom = 10
    Align = alTop
    Caption = ' Acesso das M'#225'quinas Clientes com Login de Funcion'#225'rio'
    ParentFont = False
    Style.BorderStyle = ebs3D
    Style.LookAndFeel.Kind = lfFlat
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 7
    Height = 94
    Width = 780
    object cxLabel1: TcxLabel
      Left = 10
      Top = 26
      Caption = 'Limite de m'#225'quinas simult'#226'neas (0=Sem Limite)'
      ParentFont = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
    object cxLabel4: TcxLabel
      Left = 10
      Top = 57
      Caption = 'Limite de Tempo por Sess'#227'o (Em Minutos / 0=Sem Limite)'
      ParentFont = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
    end
    object edMaxMaq: TcxDBSpinEdit
      Left = 363
      Top = 24
      DataBinding.DataField = 'MaxMaqManut'
      DataBinding.DataSource = dsUsuario
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
      TabOrder = 2
      Width = 73
    end
    object edMaxTempo: TcxDBSpinEdit
      Left = 363
      Top = 56
      DataBinding.DataField = 'MaxTempoManut'
      DataBinding.DataSource = dsUsuario
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
      TabOrder = 3
      Width = 73
    end
  end
  object BarMgr: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = dmImagens.im24
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    SunkenBorder = True
    UseSystemFont = False
    Left = 248
    Top = 224
    DockControlHeights = (
      0
      0
      36
      0)
    object BarMgrBar1: TdxBar
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
      FloatLeft = 67
      FloatTop = 344
      FloatClientWidth = 69
      FloatClientHeight = 44
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmGravar'
        end
        item
          Visible = True
          ItemName = 'cmCancelar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmAlteraSenha'
        end>
      OldName = 'Controles'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object cmGravar: TdxBarLargeButton
      Caption = '&Salvar - F2'
      Category = 0
      Hint = 'Salvar - F2'
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = cmGravarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
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
    object cmAlteraSenha: TdxBarLargeButton
      Caption = 'Alterar Senha'
      Category = 0
      Hint = 'Alterar Senha'
      Visible = ivAlways
      LargeImageIndex = 23
      OnClick = cmAlteraSenhaClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      SyncImageIndex = False
      ImageIndex = 28
    end
  end
  object mtUsuario: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    AutoIncMinValue = -1
    FieldDefs = <
      item
        Name = 'Username'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Admin'
        DataType = ftBoolean
      end
      item
        Name = 'Senha'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Direitos'
        DataType = ftMemo
      end
      item
        Name = 'MaxTempoManut'
        DataType = ftInteger
      end
      item
        Name = 'MaxMaqManut'
        DataType = ftInteger
      end>
    IndexFieldNames = 'Username'
    IndexName = 'mtUsuariosIndex1'
    IndexDefs = <
      item
        Name = 'mtUsuariosIndex1'
        Fields = 'Username'
        Options = [ixPrimary, ixCaseInsensitive]
      end>
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
    Left = 184
    Top = 224
    object mtUsuarioUsername: TStringField
      FieldName = 'Username'
      Required = True
      Size = 10
    end
    object mtUsuarioNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
    object mtUsuarioAdmin: TBooleanField
      FieldName = 'Admin'
    end
    object mtUsuarioSenha: TStringField
      FieldName = 'Senha'
      Size = 10
    end
    object mtUsuarioDireitos: TMemoField
      FieldName = 'Direitos'
      BlobType = ftMemo
    end
    object mtUsuarioMaxTempoManut: TIntegerField
      FieldName = 'MaxTempoManut'
    end
    object mtUsuarioMaxMaqManut: TIntegerField
      FieldName = 'MaxMaqManut'
    end
  end
  object dsUsuario: TDataSource
    DataSet = mtUsuario
    Left = 216
    Top = 224
  end
end
