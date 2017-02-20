object Form16: TForm16
  Left = 0
  Top = 0
  Caption = 'Importar CSV - ESTOQUE'
  ClientHeight = 415
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PB: TProgressBar
    Left = 0
    Top = 0
    Width = 598
    Height = 16
    Align = alTop
    TabOrder = 0
  end
  object Button1: TButton
    Left = 0
    Top = 16
    Width = 598
    Height = 25
    Align = alTop
    Caption = 'Importar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 598
    Height = 374
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object nxSession1: TnxSession
    ServerEngine = nxSE
    Left = 24
    Top = 24
  end
  object nxDB: TnxDatabase
    Session = nxSession1
    AliasPath = 'c:\nex\dados'
    Left = 64
    Top = 24
  end
  object nxTCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1:16200'
    Left = 104
    Top = 24
  end
  object nxSE: TnxServerEngine
    ServerName = 'Nextar'
    Options = []
    TableExtension = 'nx1'
    Left = 64
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = tMun
    Left = 184
    Top = 72
  end
  object tMun: TnxTable
    Database = nxDB
    TableName = 'MunBr'
    Exclusive = True
    Left = 120
    Top = 72
    object tMunUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object tMunNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tMunCodigo: TStringField
      FieldName = 'Codigo'
      Size = 7
    end
  end
end
