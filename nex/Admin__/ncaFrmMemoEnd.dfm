object FrmMemoEnd: TFrmMemoEnd
  Left = 0
  Top = 0
  Caption = 'FrmMemoEnd'
  ClientHeight = 92
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object M: TcxRichEdit
    Left = 0
    Top = 0
    Cursor = crHandPoint
    Align = alClient
    ParentFont = False
    Properties.MemoMode = True
    Properties.ReadOnly = True
    Properties.ScrollBars = ssVertical
    Lines.Strings = (
      'Dest: Jo'#227'o Lucio Borges'
      'Rua Salvatina Feliciana dos Santos, 235 - AP907'
      'Florian'#243'polis - SC - CEP: 88034600  IBGE: 7788474'
      'Entregar at'#233' o meio dia')
    Style.BorderStyle = ebsFlat
    Style.Color = clWhite
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    StyleFocused.BorderStyle = ebsFlat
    StyleFocused.Color = 14155775
    StyleHot.BorderStyle = ebsFlat
    StyleHot.TextColor = clHotLight
    StyleHot.TextStyle = [fsBold]
    TabOrder = 0
    Height = 92
    Width = 519
  end
end
