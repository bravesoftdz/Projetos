object FrmDownNFCE: TFrmDownNFCE
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Aguarde'
  ClientHeight = 165
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI Semibold'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 451
    Height = 17
    Align = alTop
    Alignment = taCenter
    Caption = '. . .'
    Visible = False
    WordWrap = True
    ExplicitWidth = 17
  end
  object PB: TProgressBar
    AlignWithMargins = True
    Left = 0
    Top = 32
    Width = 451
    Height = 17
    Margins.Left = 0
    Margins.Top = 15
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    TabOrder = 0
    Visible = False
  end
  object Button1: TButton
    Left = 164
    Top = 88
    Width = 105
    Height = 33
    Caption = 'Baixar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
