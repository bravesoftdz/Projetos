object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Teste de abertura de gaveta'
  ClientHeight = 393
  ClientWidth = 633
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
  object Label4: TLabel
    AlignWithMargins = True
    Left = 20
    Top = 46
    Width = 593
    Height = 84
    Margins.Left = 20
    Margins.Top = 5
    Margins.Right = 20
    Margins.Bottom = 0
    Align = alTop
    Caption = 
      'Selecione a impressora e clique em "Abrir Gaveta". A gaveta deve' +
      'r'#225' abrir imediatamente. Se n'#227'o abrir o comando pode estar errado' +
      '. Nesse acaso avise a Nextar para investigarmos outras op'#231#245'es de' +
      ' comando compat'#237'veis com seu modelo de impressora.'
    Font.Charset = ANSI_CHARSET
    Font.Color = 4737096
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    WordWrap = True
    ExplicitWidth = 584
  end
  object Label1: TLabel
    Left = 20
    Top = 153
    Width = 81
    Height = 21
    Caption = 'Impressora:'
  end
  object Label2: TLabel
    Left = 20
    Top = 221
    Width = 223
    Height = 21
    Caption = 'Comando de abertura da gaveta'
  end
  object Label3: TLabel
    AlignWithMargins = True
    Left = 20
    Top = 20
    Width = 593
    Height = 21
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Instru'#231#245'es:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    ExplicitWidth = 80
  end
  object edImp: TLMDPrinterComboBox
    Left = 20
    Top = 180
    Width = 393
    Height = 28
    Options = []
    TabOrder = 0
  end
  object Button1: TButton
    Left = 20
    Top = 314
    Width = 161
    Height = 33
    Caption = 'Abrir gaveta'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object edCmd: TEdit
    Left = 20
    Top = 248
    Width = 161
    Height = 29
    TabOrder = 2
    Text = '#27,#118,#140'
  end
  object Button2: TButton
    Left = 312
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    OnClick = Button2Click
  end
end
