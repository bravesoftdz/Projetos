object FrmPeriodo: TFrmPeriodo
  Left = 0
  Top = 0
  ActiveControl = edInicio
  BorderStyle = bsDialog
  Caption = 'Exportar XML'#39's'
  ClientHeight = 238
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object lbInicio: TcxLabel
    Left = 24
    Top = 21
    Caption = 'Data Inicial:'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object lbFinal: TcxLabel
    Left = 24
    Top = 64
    Caption = 'Data Final:'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object edInicio: TcxDateEdit
    Left = 121
    Top = 20
    ParentFont = False
    Properties.DisplayFormat = 'dd/mm/yyyy'
    Properties.EditFormat = 'dd/mm/yyyy'
    Properties.ImmediateDropDownWhenActivated = True
    Properties.ImmediateDropDownWhenKeyPressed = True
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.BorderStyle = ebsFlat
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 137
  end
  object edFim: TcxDateEdit
    Left = 121
    Top = 63
    ParentFont = False
    Properties.DisplayFormat = 'dd/mm/yyyy'
    Properties.EditFormat = 'dd/mm/yyyy'
    Properties.ImmediateDropDownWhenActivated = True
    Properties.ImmediateDropDownWhenKeyPressed = True
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.BorderStyle = ebsFlat
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 137
  end
  object btnOk: TcxButton
    Left = 24
    Top = 174
    Width = 97
    Height = 33
    Caption = 'Ok'
    Default = True
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 4
    OnClick = btnOkClick
  end
  object btnCancelar: TcxButton
    Left = 161
    Top = 174
    Width = 97
    Height = 33
    Cancel = True
    Caption = 'Cancelar'
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    ModalResult = 2
    TabOrder = 5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object cbExpCanc: TcxCheckBox
    Left = 24
    Top = 112
    Caption = 'Exportar NF'#39's canceladas'
    ParentFont = False
    State = cbsChecked
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 6
  end
end
