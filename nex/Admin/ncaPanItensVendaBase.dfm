object panItensVendaBase: TpanItensVendaBase
  Left = 0
  Top = 0
  Caption = 'PanItensVendaBase'
  ClientHeight = 311
  ClientWidth = 935
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 935
    Height = 311
    Hint = ''
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 0
    object panTot: TLMDSimplePanel
      Left = 0
      Top = 264
      Width = 935
      Height = 47
      Hint = ''
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 2
      Align = alBottom
      Bevel.Mode = bmCustom
      TabOrder = 0
    end
  end
  object tbPro: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Timeout = 10000
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Produto'
    IndexName = 'IID'
    Left = 136
    Top = 88
    object tbProID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbProCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tbProDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
  end
end
