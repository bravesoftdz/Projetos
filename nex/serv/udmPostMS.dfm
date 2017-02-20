object dmPostMS: TdmPostMS
  OldCreateOrder = False
  Height = 234
  Width = 259
  object nxTCPIP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 168
    Top = 24
  end
  object nxRSE: TnxRemoteServerEngine
    Transport = nxTCPIP
    Left = 120
    Top = 24
  end
  object nxDB: TnxDatabase
    Session = nxSession
    AliasName = 'NexCafe'
    Left = 72
    Top = 24
  end
  object nxSession: TnxSession
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRSE
    Left = 24
    Top = 24
  end
  object T: TnxTable
    Database = nxDB
    TableName = 'PostMS'
    Left = 24
    Top = 104
    object TID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object TMS: TBlobField
      FieldName = 'MS'
    end
    object TURL: TStringField
      FieldName = 'URL'
      Size = 255
    end
    object TInclusao: TDateTimeField
      FieldName = 'Inclusao'
    end
    object TEnvio: TDateTimeField
      FieldName = 'Envio'
    end
    object TTries: TWordField
      FieldName = 'Tries'
    end
    object TMax: TWordField
      FieldName = 'Max'
    end
    object TNextTry: TLongWordField
      FieldName = 'NextTry'
    end
  end
end
