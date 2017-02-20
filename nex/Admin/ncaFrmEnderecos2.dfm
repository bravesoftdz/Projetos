object FrmEnderecos: TFrmEnderecos
  Left = 0
  Top = 0
  Caption = 'FrmEnderecos'
  ClientHeight = 231
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 17
  object P: TcxPageControl
    Left = 0
    Top = 0
    Width = 642
    Height = 231
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tsAdd
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dmImagens.im16
    Properties.Style = 3
    OnPageChanging = PPageChanging
    ClientRectBottom = 231
    ClientRectRight = 642
    ClientRectTop = 24
    object tsAdd: TcxTabSheet
      Caption = 'Adicionar Endere'#231'o'
      ImageIndex = 101
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 640
      ExplicitHeight = 208
    end
  end
end
