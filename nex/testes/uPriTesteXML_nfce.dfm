object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'NFCe - Report Designer'
  ClientHeight = 384
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 623
    Height = 40
    Hint = ''
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 0
    object Button2: TButton
      Left = 136
      Top = 8
      Width = 169
      Height = 25
      Caption = 'Editar Relat'#243'rio'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Load XML'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button3'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object meXML: TcxMemo
    Left = 0
    Top = 40
    Align = alClient
    Properties.ScrollBars = ssBoth
    TabOrder = 1
    ExplicitHeight = 344
    Height = 255
    Width = 623
  end
  object meQRCode: TcxMemo
    Left = 0
    Top = 295
    Align = alBottom
    Lines.Strings = (
      'QRCode')
    Properties.ScrollBars = ssBoth
    TabOrder = 2
    ExplicitLeft = 128
    ExplicitTop = 280
    ExplicitWidth = 185
    Height = 89
    Width = 623
  end
  object OpenDlg: TOpenDialog
    Filter = 'XML|*.xml'
    Left = 24
    Top = 88
  end
  object lbSha1: TLbSHA1
    Left = 216
    Top = 120
  end
end
