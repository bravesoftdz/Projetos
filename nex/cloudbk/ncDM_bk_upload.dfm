object dm_bk_upload: Tdm_bk_upload
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 297
  Width = 424
  object RSE: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = TCP
    Left = 80
    Top = 40
  end
  object TCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    Timeout = 120000
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 144
    Top = 40
  end
  object Session: TnxSession
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    BeepOnLoginError = False
    Timeout = 120000
    ServerEngine = RSE
    Left = 80
    Top = 120
  end
  object DB: TnxDatabase
    ActiveDesigntime = True
    Session = Session
    Timeout = 120000
    AliasName = 'NexCafe'
    Left = 208
    Top = 40
  end
  object tPost: TnxTable
    Database = DB
    Timeout = 120000
    TableName = 'bk_upload'
    IndexName = 'IID'
    Left = 144
    Top = 120
    object tPostID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tPostContentType: TWideStringField
      FieldName = 'ContentType'
      Size = 100
    end
    object tPostDados: TBlobField
      FieldName = 'Dados'
    end
    object tPostQtd: TWordField
      FieldName = 'Qtd'
    end
    object tPostMethod: TByteField
      FieldName = 'Method'
    end
    object tPostResp: TWideMemoField
      FieldName = 'Resp'
      BlobType = ftWideMemo
    end
    object tPostDH: TDateTimeField
      FieldName = 'DH'
    end
    object tPostTable: TByteField
      FieldName = 'Table'
    end
  end
end
