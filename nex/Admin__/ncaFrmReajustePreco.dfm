object FrmReajustePreco: TFrmReajustePreco
  Left = 0
  Top = 0
  ActiveControl = edMargem
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Aumentar pre'#231'o de venda'
  ClientHeight = 272
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 238
    Width = 440
    Height = 34
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    ExplicitTop = 228
    ExplicitWidth = 450
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 81
      Height = 34
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvarClick
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 96
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
    Caption = 'Informe o percentual a ser acrescentado no pre'#231'o de venda:'
    ParentFont = False
    Style.TextStyle = [fsUnderline]
    Properties.WordWrap = True
    ExplicitWidth = 450
    Width = 440
  end
  object panMargem: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 31
    Width = 440
    Height = 50
    Hint = ''
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmCustom
    ParentColor = True
    TabOrder = 2
    ExplicitWidth = 450
    object edMargem: TcxCurrencyEdit
      Left = 0
      Top = 0
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      OnFocusChanged = edMargemFocusChanged
      EditValue = 10.000000000000000000
      ParentFont = False
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '##0.00%'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.StyleController = FrmPri.escFlat
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.Color = 11206655
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 97
    end
    object lbPerc: TcxLabel
      Left = 105
      Top = 2
      Caption = '%'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Visible = False
    end
  end
  object cxLabel3: TcxLabel
    Left = 0
    Top = 81
    Align = alTop
    Caption = 
      '* O ajuste de pre'#231'o ser'#225' aplicado em todos os produtos, EXCETO n' +
      'aqueles que estejam com a op'#231#227'o AUTOM'#193'TICO (de pre'#231'o de venda) a' +
      'tivada. Nesses casos ser'#227'o respeitados o custo e a margem de luc' +
      'ro configurados.'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Width = 440
  end
end
