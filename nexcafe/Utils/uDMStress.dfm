object dm: Tdm
  OldCreateOrder = False
  Height = 352
  Width = 514
  object nxSession: TnxSimpleSession
    Transport = nxTCPIP
    UserName = 'admin'
    Password = 'delphi9856'
    Timeout = 5000
    Left = 88
    Top = 176
  end
  object nxTCPIP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    EventLogEnabled = True
    CommandHandler = nxCmdH
    EventLogOptions = [nxtpLogErrors, nxtpLogRequests, nxtpLogReplies]
    Timeout = 10000
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    HeartbeatInterval = 3000
    CallbackThreadCount = 2
    Left = 40
    Top = 226
  end
  object nxCmdH: TnxSimpleCommandHandler
    EventLogEnabled = True
    ActiveDesigntime = True
    Left = 32
    Top = 176
  end
  object ServCom: TncNXServRemoto
    Ativo = False
    EventLogEnabled = False
    Transp = nxTCPIP
    CmdHandler = nxCmdH
    Session = nxSession
    Left = 16
    Top = 120
  end
  object Cli: TClienteNexCafe
    Servidor = ServCom
    Ativo = False
    Username = 'proxy'
    Senha = 'proxypass'
    Maquina = 0
    FuncAtual = False
    AutoAtualizar = False
    Programa = 'ncguard.exe'
    CacheConexao = True
    Left = 112
    Top = 120
  end
end
