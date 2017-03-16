object FrmAjustaTamCod: TFrmAjustaTamCod
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Ajustando c'#243'digo dos produtos'
  ClientHeight = 79
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object PB: TcxProgressBar
    Left = 0
    Top = 0
    Align = alTop
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = 24
    ExplicitWidth = 433
    Width = 451
  end
  object cxLabel1: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 40
    Margins.Left = 0
    Margins.Top = 15
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Aguarde ...'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    ExplicitLeft = 128
    ExplicitTop = 104
    ExplicitWidth = 67
    AnchorX = 226
    AnchorY = 51
  end
  object tPro: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Timeout = 120000
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Produto'
    IndexName = 'IID'
    Left = 119
    Top = 16
    object tProID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tProCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tProCodigo2: TWideStringField
      FieldName = 'Codigo2'
      Size = 30
    end
    object tProCodigoNum: TLongWordField
      FieldName = 'CodigoNum'
    end
    object tProCodigo2Num: TLongWordField
      FieldName = 'Codigo2Num'
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 288
    Top = 32
  end
end
