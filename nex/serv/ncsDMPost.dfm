object dmPosts: TdmPosts
  OldCreateOrder = False
  Height = 160
  Width = 306
  object tPost: TnxTable
    Database = nxDB
    TableName = 'Post'
    IndexName = 'IEnviar'
    Left = 224
    Top = 16
    object tPostID: TAutoIncField
      FieldName = 'ID'
    end
    object tPostParametros: TnxMemoField
      FieldName = 'Parametros'
      BlobType = ftMemo
    end
    object tPostHost: TStringField
      FieldName = 'Host'
      Size = 255
    end
    object tPostURL: TStringField
      FieldName = 'URL'
      Size = 255
    end
    object tPostApagarArq: TBooleanField
      FieldName = 'ApagarArq'
    end
    object tPostArq: TStringField
      FieldName = 'Arq'
      Size = 255
    end
    object tPostInclusao: TDateTimeField
      FieldName = 'Inclusao'
    end
    object tPostEnvio: TDateTimeField
      FieldName = 'Envio'
    end
    object tPostTentativas: TWordField
      FieldName = 'Tentativas'
    end
    object tPostEnviar: TBooleanField
      FieldName = 'Enviar'
    end
    object tPostMsgErro: TnxMemoField
      FieldName = 'MsgErro'
      BlobType = ftMemo
    end
    object tPostOK: TBooleanField
      FieldName = 'OK'
    end
  end
  object nxSession: TnxSession
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRSE
    Left = 64
    Top = 16
  end
  object nxRSE: TnxRemoteServerEngine
    Transport = nxTCPIP
    Left = 16
    Top = 16
  end
  object nxDB: TnxDatabase
    Session = nxSession
    AliasPath = 'c:\meus programas\nexcafe\dados'
    Left = 120
    Top = 16
  end
  object nxTCPIP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 168
    Top = 16
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10000
    Left = 16
    Top = 72
  end
end
