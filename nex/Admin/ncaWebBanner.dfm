object FrmWebBanner: TFrmWebBanner
  Left = 0
  Top = 0
  Caption = 'FrmWebBanner'
  ClientHeight = 345
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object panBanner: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 635
    Height = 145
    Hint = ''
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 0
    object WB: TMyBrowser
      Left = 24
      Top = 11
      Width = 300
      Height = 78
      TabOrder = 0
      OnDocumentComplete = WBDocumentComplete
      OnNavigateError = WBNavigateError
      OnGetWebApi = WBGetWebApi
      ControlData = {
        4C000000021F0000810F00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object TimerErro: TTimer
    Enabled = False
    Interval = 30000
    OnTimer = TimerErroTimer
    Left = 64
    Top = 48
  end
end
