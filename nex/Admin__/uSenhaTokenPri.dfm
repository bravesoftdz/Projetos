object Form1: TForm1
  Left = 0
  Top = 0
  ActiveControl = Edit1
  BorderStyle = bsDialog
  Caption = 'Senha Token'
  ClientHeight = 219
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI Semibold'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 21
  object cxLabel1: TLabel
    Left = 98
    Top = 67
    Width = 43
    Height = 21
    Caption = 'Token'
  end
  object cxLabel2: TLabel
    Left = 98
    Top = 115
    Width = 44
    Height = 21
    Caption = 'Senha'
  end
  object lbInfo: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 10
    Width = 476
    Height = 21
    Margins.Top = 10
    Margins.Bottom = 10
    Align = alTop
    Alignment = taCenter
    Caption = 'Senha j'#225' foi copiada ... basta usar o CTRL-V agora   :-)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    WordWrap = True
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 383
  end
  object Edit1: TEdit
    Left = 151
    Top = 66
    Width = 204
    Height = 29
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 151
    Top = 114
    Width = 204
    Height = 29
    ReadOnly = True
    TabOrder = 0
  end
end
