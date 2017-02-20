object dm_bk_process: Tdm_bk_process
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 212
  Width = 270
  object RSE: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = TCP
    Left = 64
    Top = 16
  end
  object TCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    Timeout = 120000
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 120
    Top = 16
  end
  object Session: TnxSession
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    BeepOnLoginError = False
    ServerEngine = RSE
    Left = 16
    Top = 16
  end
  object DB: TnxDatabase
    ActiveDesigntime = True
    Session = Session
    Timeout = 120000
    AliasName = 'NexCafe'
    Left = 168
    Top = 16
  end
  object tProc: TnxTable
    Database = DB
    TableName = 'bk_process'
    IndexName = 'I_status_update_on'
    Left = 32
    Top = 96
    object tProcid: TUnsignedAutoIncField
      FieldName = 'id'
    end
    object tProcmethod: TByteField
      FieldName = 'method'
    end
    object tProctable: TByteField
      FieldName = 'table'
    end
    object tProcstatus: TByteField
      FieldName = 'status'
    end
    object tProcupdated_on: TDateTimeField
      FieldName = 'updated_on'
    end
    object tProcnex_id: TLongWordField
      FieldName = 'nex_id'
    end
    object tProcjson: TWideMemoField
      FieldName = 'json'
      BlobType = ftWideMemo
    end
  end
  object tUpload: TnxTable
    Database = DB
    TableName = 'bk_upload'
    Left = 96
    Top = 96
    object tUploadTable: TByteField
      FieldName = 'Table'
    end
    object tUploadID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tUploadContentType: TWideStringField
      FieldName = 'ContentType'
      Size = 100
    end
    object tUploadDados: TBlobField
      FieldName = 'Dados'
    end
    object tUploadQtd: TWordField
      FieldName = 'Qtd'
    end
    object tUploadMethod: TByteField
      FieldName = 'Method'
    end
    object tUploadResp: TWideMemoField
      FieldName = 'Resp'
      BlobType = ftWideMemo
    end
    object tUploadDH: TDateTimeField
      FieldName = 'DH'
    end
  end
  object tFrom: TnxTable
    Database = DB
    Left = 168
    Top = 96
  end
end
