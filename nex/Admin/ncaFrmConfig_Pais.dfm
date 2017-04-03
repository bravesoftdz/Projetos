object FrmPais: TFrmPais
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pa'#237's'
  ClientHeight = 314
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 267
    Width = 381
    Height = 32
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitTop = 201
    ExplicitWidth = 332
    object btnOk: TcxButton
      Left = 0
      Top = 0
      Width = 75
      Height = 32
      Align = alLeft
      Caption = '&Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnOkClick
      ExplicitLeft = 24
      ExplicitTop = 15
      ExplicitHeight = 25
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 90
      Top = 0
      Width = 97
      Height = 32
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '&Cancelar'
      LookAndFeel.Kind = lfFlat
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = btnCancelarClick
      ExplicitLeft = 128
      ExplicitTop = 15
      ExplicitHeight = 25
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 411
    Height = 252
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = FrmPri.lfFlat
    ExplicitLeft = 5
    ExplicitWidth = 362
    ExplicitHeight = 279
    object edSeguirWindows: TcxCheckBox
      Left = 13
      Top = 69
      Cursor = crHandPoint
      Caption = 'Seguir par'#226'metros de moeda do Windows'
      ParentFont = False
      State = cbsChecked
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 1
      OnClick = edSeguirWindowsClick
    end
    object edPais: TcxImageComboBox
      Left = 13
      Top = 36
      RepositoryItem = Dados.erPaisImg
      ParentFont = False
      Properties.Items = <>
      Style.HotTrack = False
      Style.StyleController = FrmPri.escFlat
      TabOrder = 0
      Width = 340
    end
    object edSimbMoeda: TcxTextEdit
      Left = 194
      Top = 102
      Enabled = False
      ParentFont = False
      Style.HotTrack = False
      TabOrder = 2
      Width = 85
    end
    object edCasasDec: TcxSpinEdit
      Left = 194
      Top = 135
      Enabled = False
      ParentFont = False
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 3
      OnClick = edCasasDecClick
      Width = 85
    end
    object edSepDec: TcxTextEdit
      Left = 194
      Top = 168
      Enabled = False
      ParentFont = False
      Properties.MaxLength = 1
      Style.HotTrack = False
      TabOrder = 4
      Width = 85
    end
    object edSepMil: TcxTextEdit
      Left = 194
      Top = 201
      Enabled = False
      ParentFont = False
      Properties.MaxLength = 1
      Style.HotTrack = False
      TabOrder = 5
      Width = 85
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lcSeguirWindows: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Visible = False
      Control = edSeguirWindows
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 274
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcPais: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Pa'#237's onde a loja est'#225' localizada:'
      CaptionOptions.Layout = clTop
      Control = edPais
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 340
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcSimbMoeda: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'S'#237'mbolo da Moeda'
      Control = edSimbMoeda
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object lcCasasDec: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Casas Decimais'
      Control = edCasasDec
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object lcSepDec: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Separador de Casas Decimais'
      Control = edSepDec
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 4
    end
    object lcSepMil: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Separador de Milhares'
      Control = edSepMil
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 5
    end
  end
end
