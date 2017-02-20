object FrmToken: TFrmToken
  Left = 0
  Top = 0
  ActiveControl = edSenha
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Senha de acesso'
  ClientHeight = 190
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 21
  object btnLogin: TcxButton
    Left = 0
    Top = 156
    Width = 89
    Height = 29
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
    OnClick = btnLoginClick
  end
  object edSenha: TcxTextEdit
    AlignWithMargins = True
    Left = 48
    Top = 86
    ParentFont = False
    Style.BorderStyle = ebsFlat
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.StyleController = FrmPri.escFlat
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 112
  end
  object cxLabel3: TcxLabel
    AlignWithMargins = True
    Left = -2
    Top = 90
    Margins.Left = 10
    Caption = 'Senha'
    ParentFont = False
    Properties.Alignment.Vert = taVCenter
    AnchorY = 101
  end
  object edToken: TcxMaskEdit
    AlignWithMargins = True
    Left = 48
    Top = 50
    ParentFont = False
    Properties.EditMask = '99 99 99 99;0;_'
    Properties.ReadOnly = True
    Style.BorderStyle = ebsFlat
    Style.Color = clBtnFace
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 3
    Text = '01023040'
    Width = 112
  end
  object lbToken: TcxLabel
    Left = -2
    Top = 52
    Caption = 'Token'
    ParentFont = False
    Properties.Alignment.Vert = taVCenter
    AnchorY = 63
  end
  object cxLabel1: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Acesso restrido '#224' equipe de suporte NEX'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.TextStyle = [fsBold, fsUnderline]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.WordWrap = True
    ExplicitWidth = 8
    Width = 413
    AnchorX = 207
  end
  object btnCancelar: TcxButton
    AlignWithMargins = True
    Left = 107
    Top = 156
    Width = 86
    Height = 29
    Cursor = crHandPoint
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Cancel = True
    Caption = 'Cancelar'
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    ModalResult = 2
    SpeedButtonOptions.CanBeFocused = False
    SpeedButtonOptions.AllowAllUp = True
    SpeedButtonOptions.Flat = True
    TabOrder = 6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
end
