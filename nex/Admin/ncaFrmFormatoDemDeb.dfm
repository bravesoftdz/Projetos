object FrmFormatoDemDeb: TFrmFormatoDemDeb
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Editar layout'
  ClientHeight = 181
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 17
  object lbModelo: TcxLabel
    AlignWithMargins = True
    Left = 25
    Top = 15
    Margins.Left = 25
    Margins.Top = 15
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Qual layout voc'#234' deseja editar?'
    ParentFont = False
    Style.TextStyle = [fsUnderline]
    ExplicitTop = 127
  end
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 25
    Top = 127
    Width = 400
    Height = 29
    Hint = ''
    Margins.Left = 25
    Margins.Right = 25
    Margins.Bottom = 25
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    ExplicitTop = 265
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 98
      Top = 0
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Cancel = True
      Caption = '&Cancelar'
      LookAndFeel.Kind = lfFlat
      ModalResult = 2
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = btnCancelarClick
      ExplicitLeft = 122
    end
    object btnOk: TcxButton
      Left = 0
      Top = 0
      Width = 73
      Height = 29
      Align = alLeft
      Caption = '&Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      ModalResult = 1
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object rbFolha: TcxRadioButton
    AlignWithMargins = True
    Left = 25
    Top = 46
    Width = 400
    Height = 17
    Margins.Left = 25
    Margins.Top = 10
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Folha A4 '
    Checked = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 162
  end
  object rbBobina: TcxRadioButton
    AlignWithMargins = True
    Left = 25
    Top = 73
    Width = 400
    Height = 17
    Margins.Left = 25
    Margins.Top = 10
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Bobina'
    TabOrder = 3
    ExplicitTop = 189
  end
end
