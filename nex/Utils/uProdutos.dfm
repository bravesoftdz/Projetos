object Form15: TForm15
  Left = 0
  Top = 0
  Caption = 'Form15'
  ClientHeight = 384
  ClientWidth = 715
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 40
    Width = 715
    Height = 344
    Align = alClient
    DataSource = DS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 715
    Height = 40
    Hint = ''
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 1
    ExplicitLeft = 48
    ExplicitTop = 80
    ExplicitWidth = 100
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 177
      Height = 25
      Caption = 'Pode alterar preco de venda '
      TabOrder = 0
      OnClick = cxButton1Click
    end
  end
  object nxRSE: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = nxTCP
    Left = 432
    Top = 16
  end
  object nxSession: TnxSession
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRSE
    Left = 392
    Top = 16
  end
  object nxDB: TnxDatabase
    ActiveDesigntime = True
    Session = nxSession
    AliasName = 'NexCafe'
    Left = 352
    Top = 16
  end
  object T: TnxTable
    ActiveRuntime = True
    Database = nxDB
    TableName = 'Produto'
    IndexName = 'IID'
    Left = 392
    Top = 64
  end
  object nxTCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 352
    Top = 64
  end
  object DS: TDataSource
    DataSet = T
    Left = 480
    Top = 72
  end
  object Q: TnxQuery
    Database = nxDB
    Left = 160
    Top = 152
  end
end
