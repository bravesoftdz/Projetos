object FrmQtdDevolver: TFrmQtdDevolver
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Devolver produto'
  ClientHeight = 208
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 21
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 159
    Width = 357
    Height = 34
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    ExplicitTop = 127
    ExplicitWidth = 364
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 89
      Height = 34
      Cursor = crHandPoint
      Align = alLeft
      Caption = '&Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 104
      Top = 0
      Width = 89
      Height = 34
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
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
      ExplicitLeft = 120
    end
  end
  object panPerc: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 55
    Width = 357
    Height = 31
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 1
    ExplicitTop = 61
    ExplicitWidth = 364
    object edQtd: TcxCurrencyEdit
      Left = 208
      Top = 0
      Align = alClient
      EditValue = 35.000000000000000000
      ParentFont = False
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 5
      Properties.HideSelection = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.StyleController = FrmPri.cxEditStyleController1
      Style.IsFontAssigned = True
      TabOrder = 1
      ExplicitLeft = 136
      ExplicitWidth = 228
      Width = 149
    end
    object cxLabel2: TcxLabel
      AlignWithMargins = True
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 15
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Quantidade a ser devolvida'
      FocusControl = edQtd
      Properties.Alignment.Vert = taVCenter
      AnchorY = 16
    end
  end
  object lbProduto: TcxLabel
    AlignWithMargins = True
    Left = 15
    Top = 15
    Cursor = crHandPoint
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alTop
    Caption = 'Coca-cola LT 200ml'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Properties.Alignment.Vert = taVCenter
    ExplicitWidth = 417
    AnchorY = 28
  end
end
