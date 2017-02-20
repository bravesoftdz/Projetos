object FrmFromEmail: TFrmFromEmail
  Left = 0
  Top = 0
  ActiveControl = edEmail
  BorderStyle = bsDialog
  Caption = 'Endere'#231'o de E-mail'
  ClientHeight = 345
  ClientWidth = 485
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 17
  object LMDSimplePanel3: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 300
    Width = 455
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    object btnOk: TcxButton
      Left = 0
      Top = 0
      Width = 75
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = '&Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 90
      Top = 0
      Width = 86
      Height = 30
      Cursor = crHandPoint
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '&Cancelar'
      Default = True
      LookAndFeel.Kind = lfFlat
      ModalResult = 2
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
    end
  end
  object panNome: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 134
    Width = 455
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 2
    object lbValidoPor: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      AutoSize = False
      Caption = 'Nome'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      OnClick = lbValidoPorClick
      Height = 30
      Width = 75
      AnchorY = 15
    end
    object edNome: TcxTextEdit
      Left = 75
      Top = 0
      Align = alClient
      OnFocusChanged = edNomeFocusChanged
      ParentFont = False
      Style.LookAndFeel.Kind = lfFlat
      Style.StyleController = FrmPri.escFlat
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 1
      Width = 380
    end
  end
  object panEmail: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 51
    Width = 455
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 1
    object lbEmail: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      AutoSize = False
      Caption = 'E-mail'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      OnClick = lbEmailClick
      Height = 30
      Width = 75
      AnchorY = 15
    end
    object edEmail: TcxTextEdit
      Left = 75
      Top = 0
      Align = alClient
      OnFocusChanged = edEmailFocusChanged
      ParentFont = False
      Style.LookAndFeel.Kind = lfFlat
      Style.StyleController = FrmPri.escFlat
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 1
      Width = 380
    end
  end
  object cxLabel1: TcxLabel
    AlignWithMargins = True
    Left = 15
    Top = 15
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Endere'#231'o de e-mail de resposta:'
    ParentFont = False
    Style.TextStyle = []
  end
  object lbInfo: TcxLabel
    AlignWithMargins = True
    Left = 90
    Top = 81
    Margins.Left = 90
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 0
    Align = alTop
    Caption = 
      'Esse '#233' o endere'#231'o que vai aparecer para seus clientes quando rec' +
      'eberem o e-mail com o or'#231'amento.'
    ParentFont = False
    Style.TextColor = clGray
    Style.TextStyle = []
    Properties.WordWrap = True
    Width = 380
  end
  object lbInfo2: TcxLabel
    AlignWithMargins = True
    Left = 90
    Top = 164
    Margins.Left = 90
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alTop
    Caption = 
      'O nome aparece junto ao endere'#231'o de e-mail quando o cliente rece' +
      'be o or'#231'amento. Pode ser o nome da loja ou o seu nome. Isso faci' +
      'lita que seu cliente identifique que foi a sua loja que enviou o' +
      ' e-mail e sinta-se seguro para abri-lo.'
    ParentFont = False
    Style.TextColor = clGray
    Style.TextStyle = []
    Properties.WordWrap = True
    Width = 380
  end
end
