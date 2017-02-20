object dmEmail: TdmEmail
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 382
  Width = 435
  object nxSession: TnxSession
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRSE
    Left = 152
    Top = 16
  end
  object nxDB: TnxDatabase
    Session = nxSession
    AliasPath = 'c:\meus programas\nexcafe\dados'
    Left = 88
    Top = 80
  end
  object nxTCPIP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 16200
    Left = 24
    Top = 144
  end
  object nxRSE: TnxRemoteServerEngine
    Transport = nxTCPIP
    Left = 216
    Top = 16
  end
  object tCorpo: TnxTable
    Database = nxDB
    TableName = 'EmailCorpo'
    IndexName = 'IProcessou'
    Left = 152
    Top = 80
    object tCorpoID: TAutoIncField
      FieldName = 'ID'
    end
    object tCorpoCorpo: TMemoField
      FieldName = 'Corpo'
      BlobType = ftMemo
    end
    object tCorpoDestino: TMemoField
      FieldName = 'Destino'
      BlobType = ftMemo
    end
    object tCorpoAnexos: TMemoField
      FieldName = 'Anexos'
      BlobType = ftMemo
    end
    object tCorpoAssunto: TStringField
      FieldName = 'Assunto'
      Size = 100
    end
    object tCorpoInclusao: TDateTimeField
      FieldName = 'Inclusao'
    end
    object tCorpoProcessou: TBooleanField
      FieldName = 'Processou'
    end
    object tCorpoApagarAnexosAposEnvio: TBooleanField
      FieldName = 'ApagarAnexosAposEnvio'
    end
    object tCorpoRestam: TIntegerField
      FieldName = 'Restam'
    end
    object tCorpoEnviarEm: TDateTimeField
      FieldName = 'EnviarEm'
    end
  end
  object tEnvio: TnxTable
    Database = nxDB
    TableName = 'EmailEnvio'
    IndexName = 'IEnviar'
    Left = 216
    Top = 80
    object tEnvioID: TAutoIncField
      FieldName = 'ID'
    end
    object tEnvioCorpo: TIntegerField
      FieldName = 'Corpo'
    end
    object tEnvioDestino: TMemoField
      FieldName = 'Destino'
      BlobType = ftMemo
    end
    object tEnvioInclusao: TDateTimeField
      FieldName = 'Inclusao'
    end
    object tEnvioEnvio: TDateTimeField
      FieldName = 'Envio'
    end
    object tEnvioTentativas: TWordField
      FieldName = 'Tentativas'
    end
    object tEnvioEnviar: TBooleanField
      FieldName = 'Enviar'
    end
    object tEnvioMsgErro: TMemoField
      FieldName = 'MsgErro'
      BlobType = ftMemo
    end
    object tEnvioOK: TBooleanField
      FieldName = 'OK'
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 88
    Top = 144
  end
  object Msg: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    ContentType = 'text/plain'
    Encoding = meMIME
    FromList = <
      item
        Address = 'caixa@nexcafe.com.br'
        Text = 'caixa@nexcafe.com.br'
        Domain = 'nexcafe.com.br'
        User = 'caixa'
      end>
    From.Address = 'caixa@nexcafe.com.br'
    From.Text = 'caixa@nexcafe.com.br'
    From.Domain = 'nexcafe.com.br'
    From.User = 'caixa'
    Organization = 'NexCaf'#233
    Recipients = <
      item
      end>
    ReplyTo = <
      item
        Address = 'caixa@nexcafe.com.br'
        Text = 'caixa@nexcafe.com.br'
        Domain = 'nexcafe.com.br'
        User = 'caixa'
      end>
    Sender.Address = 'caixa@nexcafe.com.br'
    Sender.Text = 'caixa@nexcafe.com.br'
    Sender.Domain = 'nexcafe.com.br'
    Sender.User = 'caixa'
    ConvertPreamble = True
    Left = 88
    Top = 16
  end
  object SMTP: TIdSMTP
    Host = 'emailcaixa.nextar.com.br'
    Password = ')(*&^!@#$%'
    SASLMechanisms = <>
    Username = 'caixa@nexcafe.com.br'
    Left = 24
    Top = 200
  end
  object pop: TIdPOP3
    AutoLogin = True
    Host = 'pop.nextar.com.br'
    Username = 'contas@nextar.com.br'
    Password = 'delphi9856'
    SASLMechanisms = <>
    Left = 96
    Top = 200
  end
end
