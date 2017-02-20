object FrmSubject: TFrmSubject
  Left = 0
  Top = 0
  ActiveControl = edAssunto
  BorderStyle = bsDialog
  Caption = 'Assunto'
  ClientHeight = 302
  ClientWidth = 428
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
  object lbBD: TLMDHTMLLabel
    AlignWithMargins = True
    Left = 15
    Top = 81
    Width = 398
    Height = 144
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 15
    OnLinkClick = lbBDLinkClick
    Align = alTop
    Bevel.Mode = bmCustom
    Alignment = taLeftJustify
    Caption = 
      'Adicione informa'#231#245'es do banco de dados:<br>'#13#10'<a href='#39'numero'#39'>N'#250 +
      'mero do Or'#231'amento</a><br>'#13#10'<a href='#39'totalfinal'#39'>Total Final</a><' +
      'br>'#13#10'<br>'#13#10#13#10#13#10
    Layout = tlTop
    ExplicitLeft = 0
    ExplicitWidth = 485
  end
  object LMDSimplePanel3: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 257
    Width = 398
    Height = 30
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    ExplicitTop = 293
    ExplicitWidth = 455
    object btnOk: TcxButton
      Left = 0
      Top = 0
      Width = 75
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = '&Ok'
      Default = True
      TabOrder = 0
      OnClick = btnOkClick
      LookAndFeel.Kind = lfFlat
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfFlat
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
    end
  end
  object panEmail: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 36
    Width = 398
    Height = 30
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 1
    ExplicitTop = 51
    ExplicitWidth = 455
    object edAssunto: TcxTextEdit
      Left = 0
      Top = 0
      Align = alClient
      Style.LookAndFeel.Kind = lfFlat
      Style.StyleController = FrmPri.escFlat
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 0
      ExplicitTop = -3
      ExplicitWidth = 455
      Width = 398
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
    Caption = 'Assunto padr'#227'o para e-mails de or'#231'amento'
    Style.TextStyle = []
    ExplicitWidth = 455
  end
end
