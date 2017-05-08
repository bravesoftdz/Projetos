object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 130
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BtnCompactar: TButton
    Left = 239
    Top = 32
    Width = 186
    Height = 25
    Caption = 'Compactar Arquivos'
    TabOrder = 0
    OnClick = BtnCompactarClick
  end
  object ZipMaster1: TZipMaster
    ConfirmErase = False
    Version = '1.9.2.0015'
    Left = 72
    Top = 16
  end
end
