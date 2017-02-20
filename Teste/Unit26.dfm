object Form26: TForm26
  Left = 0
  Top = 0
  Caption = 'Form26'
  ClientHeight = 319
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LMDEditDBLookup1: TLMDEditDBLookup
    Left = 40
    Top = 24
    Width = 337
    Height = 21
    Hint = ''
    Bevel.Mode = bmWindows
    Caret.BlinkRate = 530
    TabOrder = 0
    CueBanner = 'Teste'
    Options = [eoUserLocale, eoAllowCopy, eoAllowCut, eoAllowPaste]
    CustomButtons = <>
    LookupDataField = 'Nome'
    LookupDataSource = DataSource1
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 64
    Width = 517
    Height = 217
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object nxRemoteServerEngine1: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = nxWinsockTransport1
    Left = 176
    Top = 168
  end
  object nxSession1: TnxSession
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRemoteServerEngine1
    Left = 296
    Top = 160
  end
  object nxWinsockTransport1: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 416
    Top = 112
  end
  object nxTable1: TnxTable
    ActiveRuntime = True
    ActiveDesigntime = True
    Session = nxSession1
    AliasName = 'NexCafe'
    TableName = 'Cliente'
    Left = 432
    Top = 216
  end
  object nxDatabase1: TnxDatabase
    Session = nxSession1
    Left = 328
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = nxTable1
    Left = 272
    Top = 216
  end
end
