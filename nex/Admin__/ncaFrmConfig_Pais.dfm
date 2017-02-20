object FrmPais: TFrmPais
  Left = 0
  Top = 0
  ActiveControl = edPais
  BorderStyle = bsDialog
  Caption = 'Pa'#237's'
  ClientHeight = 174
  ClientWidth = 362
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
  object edPais: TcxImageComboBox
    Left = 24
    Top = 47
    RepositoryItem = Dados.erPaisImg
    ParentFont = False
    Properties.Items = <>
    Style.StyleController = FrmPri.escFlat
    TabOrder = 0
    Width = 313
  end
  object cxLabel1: TcxLabel
    Left = 22
    Top = 20
    Caption = 'Pa'#237's onde a loja est'#225' localizada:'
    ParentFont = False
  end
  object btnOk: TcxButton
    Left = 24
    Top = 112
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    LookAndFeel.Kind = lfFlat
    ModalResult = 1
    TabOrder = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnOkClick
  end
  object btnCancelar: TcxButton
    Left = 128
    Top = 112
    Width = 97
    Height = 25
    Caption = '&Cancelar'
    LookAndFeel.Kind = lfFlat
    SpeedButtonOptions.CanBeFocused = False
    SpeedButtonOptions.AllowAllUp = True
    SpeedButtonOptions.Flat = True
    SpeedButtonOptions.Transparent = True
    TabOrder = 3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = btnCancelarClick
  end
end
