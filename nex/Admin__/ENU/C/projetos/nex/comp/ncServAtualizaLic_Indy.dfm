object dmAtualizaLic: TdmAtualizaLic
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 187
  Width = 570
  object Timer1: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = Timer1Timer
    Left = 136
    Top = 16
  end
end
