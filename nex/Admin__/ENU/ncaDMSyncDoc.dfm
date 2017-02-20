object dmDocUpdate: TdmDocUpdate
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 225
  Width = 404
  object nxRemDB: TnxDatabase
    Session = nxRemSession
    Timeout = 120000
    AliasName = 'NexCafe'
    Left = 146
    Top = 16
  end
  object nxRemSession: TnxSession
    UserName = 'admin'
    Password = 'delphi9856'
    BeepOnLoginError = False
    Timeout = 120000
    ServerEngine = nxRSE
    Left = 232
    Top = 16
  end
  object nxRSE: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = nxTCP
    Left = 32
    Top = 16
  end
  object nxTCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    Timeout = 120000
    ServerNameRuntime = 'docserver.nextar.com.br'
    ServerNameDesigntime = 'docserver.nextar.com.br'
    Port = 17200
    CompressType = 10
    Left = 88
    Top = 16
  end
  object tR: TnxTable
    Database = nxRemDB
    Timeout = 120000
    TableName = 'Doc'
    IndexName = 'IRecVer'
    Left = 320
    Top = 16
  end
  object tL: TnxTable
    Database = nxLocalDB
    TableName = 'Doc'
    IndexName = 'ISRecVer'
    Left = 208
    Top = 96
  end
  object nxLocalSession: TnxSession
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = Dados.RSE
    Left = 40
    Top = 96
  end
  object nxLocalDB: TnxDatabase
    ActiveDesigntime = True
    Session = nxLocalSession
    AliasName = 'NexCafe'
    Left = 130
    Top = 96
  end
end