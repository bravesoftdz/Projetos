object FrmPlus: TFrmPlus
  Left = 0
  Top = 0
  Caption = 'Mensagem:'
  ClientHeight = 489
  ClientWidth = 867
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Paginas: TcxPageControl
    Left = 0
    Top = 0
    Width = 867
    Height = 489
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsWB
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    LookAndFeel.NativeStyle = False
    ExplicitHeight = 100
    ClientRectBottom = 489
    ClientRectRight = 867
    ClientRectTop = 0
    object tsWB: TcxTabSheet
      Caption = 'tsWB'
      ImageIndex = 0
      ExplicitHeight = 605
      object WB: TMyBrowser
        Left = 0
        Top = 0
        Width = 867
        Height = 489
        Align = alClient
        TabOrder = 0
        OnDocumentComplete = WBDocumentComplete
        OnNavigateError = WBNavigateError
        OnGetWebApi = WBGetWebApi
        ExplicitLeft = 200
        ExplicitTop = -50
        ExplicitWidth = 300
        ExplicitHeight = 150
        ControlData = {
          4C000000021F0000810F00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E12620A000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
end
