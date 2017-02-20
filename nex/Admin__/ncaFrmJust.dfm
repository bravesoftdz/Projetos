object FrmJust: TFrmJust
  Left = 0
  Top = 0
  ActiveControl = edObs
  BorderStyle = bsToolWindow
  BorderWidth = 5
  Caption = 'Justificativa de cancelamento'
  ClientHeight = 233
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 188
    Width = 491
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 89
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'OK '
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvarClick
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 104
      Top = 0
      Width = 74
      Height = 30
      Cursor = crHandPoint
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Cancel = True
      Caption = 'Cancelar'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 2
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
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
    Caption = 'Justificativa para o cancelamento da NFC-e'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.TextColor = clHotLight
    Style.TextStyle = [fsBold, fsUnderline]
    Style.IsFontAssigned = True
  end
  object cxLabel2: TcxLabel
    AlignWithMargins = True
    Left = 15
    Top = 36
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 10
    Align = alTop
    Caption = 
      'Essa informa'#231#227'o ser'#225' para a SEFAZ como motivo para o cancelament' +
      'o da venda.'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.TextColor = clHotLight
    Style.TextStyle = []
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Width = 491
  end
  object edObs: TcxTextEdit
    Left = 16
    Top = 64
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI Symbol'
    Style.Font.Style = [fsBold]
    Style.StyleController = FrmPri.escFlat
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 490
  end
end
