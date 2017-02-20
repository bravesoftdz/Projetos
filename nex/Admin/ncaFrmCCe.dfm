object FrmCCe: TFrmCCe
  Left = 0
  Top = 0
  ActiveControl = meObs
  BorderStyle = bsToolWindow
  BorderWidth = 5
  Caption = 'Carta de Corre'#231#227'o'
  ClientHeight = 266
  ClientWidth = 524
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
    Top = 39
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alClient
    Lines.Strings = (
      'meObs')
    ParentFont = False
    Properties.ScrollBars = ssVertical
    Style.BorderStyle = ebsFlat
    TabOrder = 0
    ExplicitTop = 15
    ExplicitWidth = 491
    ExplicitHeight = 141
    Height = 167
    Width = 494
  end
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 221
    Width = 494
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
    ExplicitWidth = 491
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
    AlignWithMargins = True
    Left = 15
    Top = 15
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Align = alTop
    Caption = 'Informe o texto a ser enviado como Carta de Corre'#231#227'o da NF-e:'
    ParentFont = False
    Style.TextStyle = [fsBold]
    ExplicitLeft = 72
    ExplicitTop = 8
    ExplicitWidth = 54
  end
end
