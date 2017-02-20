object FrmPri: TFrmPri
  Left = 0
  Top = 0
  BorderWidth = 15
  Caption = 'FrmPri'
  ClientHeight = 444
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 605
    Height = 345
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 62
      Width = 36
      Height = 21
      Caption = 'CNPJ'
    end
    object Label3: TLabel
      Left = 24
      Top = 21
      Width = 29
      Height = 21
      Caption = 'Loja'
    end
    object Label4: TLabel
      Left = 24
      Top = 101
      Width = 43
      Height = 21
      Caption = 'Chave'
    end
    object edLoja: TEdit
      Left = 80
      Top = 18
      Width = 473
      Height = 29
      TabOrder = 0
      OnChange = edLojaChange
    end
    object edCNPJ: TEdit
      Left = 80
      Top = 59
      Width = 473
      Height = 29
      TabOrder = 1
      OnChange = edCNPJChange
    end
    object edChave: TEdit
      Left = 80
      Top = 98
      Width = 473
      Height = 29
      ReadOnly = True
      TabOrder = 2
    end
    object Memo1: TMemo
      Left = 32
      Top = 152
      Width = 521
      Height = 153
      ReadOnly = True
      TabOrder = 3
    end
  end
  object H: TIdHTTPServer
    Bindings = <>
    DefaultPort = 8080
    ReuseSocket = rsTrue
    UseNagle = False
    OnCommandGet = HCommandGet
    Left = 416
    Top = 56
  end
end
