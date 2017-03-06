object FrmListaFornecedores: TFrmListaFornecedores
  Left = 0
  Top = 0
  Caption = 'FrmListaFornecedores'
  ClientHeight = 359
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 922
    Height = 61
    Hint = ''
    AutoSize = True
    Align = alTop
    Bevel.Mode = bmCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    object panItens: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 922
      Height = 41
      Hint = ''
      Align = alTop
      Bevel.Mode = bmCustom
      ParentColor = True
      TabOrder = 0
    end
    object lbAdd: TcxLabel
      Left = 0
      Top = 40
      Cursor = crHandPoint
      Caption = 'Adicionar Fornecedor'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.TextColor = 3947580
      Style.TextStyle = [fsUnderline]
      Style.IsFontAssigned = True
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clBlack
      StyleHot.TextStyle = [fsUnderline]
      OnClick = lbAddClick
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 168
    Top = 112
  end
  object Fly: TLMDFlyoutController
    Active = False
    Destination = fopBottom
    TriggerDistance = 10
    Step = 10
    Left = 192
    Top = 208
  end
  object cxEditStyleController1: TcxEditStyleController
    Left = 96
    Top = 160
    PixelsPerInch = 96
  end
end
