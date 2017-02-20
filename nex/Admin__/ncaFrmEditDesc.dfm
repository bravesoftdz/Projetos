object FrmEditDesc: TFrmEditDesc
  Left = 0
  Top = 0
  ActiveControl = edValor
  BorderStyle = bsToolWindow
  Caption = 'Desconto'
  ClientHeight = 176
  ClientWidth = 394
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
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 127
    Width = 364
    Height = 34
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 105
      Height = 34
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Salvar - F2'
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
      Left = 120
      Top = 0
      Width = 74
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
  end
  object panValor: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 15
    Width = 364
    Height = 31
    Hint = ''
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 1
    object cxLabel1: TcxLabel
      AlignWithMargins = True
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 15
      Margins.Bottom = 0
      Align = alLeft
      AutoSize = False
      Caption = 'Desconto'
      FocusControl = edValor
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Height = 31
      Width = 71
      AnchorY = 16
    end
    object edValor: TcxCurrencyEdit
      Left = 86
      Top = 0
      Align = alClient
      ParentFont = False
      Properties.OnChange = edValorPropertiesChange
      Properties.OnEditValueChanged = edValorPropertiesEditValueChanged
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.StyleController = FrmPri.cxEditStyleController1
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyDown = edValorKeyDown
      Width = 278
    end
  end
  object panPerc: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 61
    Width = 364
    Height = 31
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 2
    object edPerc: TcxCurrencyEdit
      Left = 79
      Top = 0
      Align = alClient
      EditValue = 35.000000000000000000
      ParentFont = False
      Properties.DisplayFormat = '0.00%'
      Properties.OnChange = edPercPropertiesChange
      Properties.OnEditValueChanged = edPercPropertiesEditValueChanged
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.StyleController = FrmPri.cxEditStyleController1
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyDown = edPercKeyDown
      ExplicitWidth = 284
      Width = 285
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
      Caption = 'Percentual'
      FocusControl = edPerc
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      AnchorY = 16
    end
  end
end
