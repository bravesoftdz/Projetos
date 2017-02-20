object dmSignAC: TdmSignAC
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 240
  Width = 378
  object H: TIdHTTPServer
    Bindings = <>
    DefaultPort = 16333
    ReuseSocket = rsTrue
    UseNagle = False
    OnCommandGet = HCommandGet
    Left = 152
    Top = 64
  end
end
