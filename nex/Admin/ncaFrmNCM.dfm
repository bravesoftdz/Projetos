object FrmNCM: TFrmNCM
  Left = 0
  Top = 0
  ActiveControl = edCod
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'NCM: Nomenclatura Comum do Mercosul'
  ClientHeight = 206
  ClientWidth = 531
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 17
  object lbPrompt: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 72
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 0
    Margins.Bottom = 0
    Caption = 'Descri'#231#227'o'
  end
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 175
    Width = 531
    Height = 31
    Hint = ''
    Margins.Left = 0
    Margins.Top = 30
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    ExplicitTop = 153
    ExplicitWidth = 535
    object btnOk: TcxButton
      Left = 0
      Top = 0
      Width = 75
      Height = 31
      Align = alLeft
      Caption = '&Ok'
      LookAndFeel.Kind = lfFlat
      SpeedButtonOptions.Flat = True
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnOkClick
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 95
      Top = 0
      Width = 86
      Height = 31
      Margins.Left = 20
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Cancel = True
      Caption = '&Cancelar'
      LookAndFeel.Kind = lfFlat
      ModalResult = 1
      SpeedButtonOptions.Flat = True
      TabOrder = 1
    end
  end
  object cxLabel1: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'C'#243'digo NCM'
    ExplicitLeft = -1
    ExplicitWidth = 535
  end
  object edCod: TcxMaskEdit
    Left = 0
    Top = 25
    ParentFont = False
    Properties.EditMask = '99999999;1;_'
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.StyleController = FrmPri.escFlat
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 3
    Text = '12345678'
    Width = 121
  end
  object edDescr: TcxTextEdit
    Left = 0
    Top = 96
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.StyleController = FrmPri.escFlat
    Style.IsFontAssigned = True
    TabOrder = 4
    Text = 'EDDESCR'
    Width = 531
  end
end
