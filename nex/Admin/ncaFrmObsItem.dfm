object FrmObsItem: TFrmObsItem
  Left = 0
  Top = 0
  ActiveControl = meObs
  BorderStyle = bsToolWindow
  BorderWidth = 5
  Caption = 'Complemento'
  ClientHeight = 259
  ClientWidth = 521
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 17
  object meObs: TcxMemo
    AlignWithMargins = True
    Left = 15
    Top = 72
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alClient
    Lines.Strings = (
      'meObs')
    ParentFont = False
    Properties.ScrollBars = ssVertical
    Style.BorderStyle = ebsFlat
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 0
    ExplicitTop = 15
    ExplicitHeight = 98
    Height = 127
    Width = 491
  end
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 214
    Width = 491
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    ExplicitTop = 132
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 113
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Salvar - F2'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 128
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
  end
  object cxLabel1: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Complemento / observa'#231#245'es sobre o item:'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsUnderline]
    Style.TextStyle = [fsUnderline]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    ExplicitLeft = 24
    ExplicitWidth = 197
    AnchorX = 261
    AnchorY = 11
  end
  object lbProd: TcxLabel
    AlignWithMargins = True
    Left = 15
    Top = 36
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 0
    Align = alTop
    Caption = 'COCA-COLA LATA 300ML'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold, fsUnderline]
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taLeftJustify
    Properties.Alignment.Vert = taVCenter
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 8
    AnchorY = 47
  end
end
