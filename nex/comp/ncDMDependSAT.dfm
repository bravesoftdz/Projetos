object dmDependSAT: TdmDependSAT
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 178
  Width = 343
  object G: TLMDWebHTTPGet
    URL = 'http://baixar.programanex.com.br/extras/setup_sat_depend4.exe'
    DownloadDir = 'c:\nex'
    DestinationName = 'setup_sat_depend4.exe'
    DownloadParams.SizeLimit = 0
    OnProgress = GProgress
    OnProcessed = GProcessed
    InternetOptions.SocksProxy = False
    InternetOptions.SocksVersion = sv4
    InternetOptions.UseProxyAuth = False
    InternetOptions.UserAgent = 'Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)'
    InternetOptions.ModemConnection = False
    InternetOptions.AutoDial = False
    InternetOptions.AutoClose = False
    RangeStart = 0
    RangeEnd = 0
    Resume = False
    Left = 80
    Top = 48
  end
  object G2: TLMDWebHTTPGet
    URL = 'http://baixar.programanex.com.br/extras/setup_sat_arqs4.exe'
    DownloadDir = 'c:\nex'
    DestinationName = 'setup_sat_arqs4.exe'
    DownloadParams.SizeLimit = 0
    OnProgress = G2Progress
    OnProcessed = G2Processed
    InternetOptions.SocksProxy = False
    InternetOptions.SocksVersion = sv4
    InternetOptions.UseProxyAuth = False
    InternetOptions.UserAgent = 'Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)'
    InternetOptions.ModemConnection = False
    InternetOptions.AutoDial = False
    InternetOptions.AutoClose = False
    RangeStart = 0
    RangeEnd = 0
    Resume = False
    Left = 160
    Top = 48
  end
  object TimerFree: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerFreeTimer
    Left = 256
    Top = 48
  end
end
