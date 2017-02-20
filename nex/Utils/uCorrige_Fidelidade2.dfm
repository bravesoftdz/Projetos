object Form21: TForm21
  Left = 0
  Top = 0
  Caption = 'Corrige Fidelidade'
  ClientHeight = 307
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 248
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 24
    Top = 24
    Width = 449
    Height = 17
    TabOrder = 1
  end
  object tTran: TnxTable
    Database = nxDB
    TableName = 'Tran'
    IndexName = 'IID'
    Left = 88
    Top = 40
  end
  object nxServerEng: TnxServerEngine
    ServerName = ''
    Options = [seoCloseInactiveFolders, seoCloseInactiveTables]
    TableExtension = 'nx1'
    Left = 184
    Top = 48
  end
  object nxSession: TnxSession
    ServerEngine = nxServerEng
    Left = 288
    Top = 40
  end
  object nxDB: TnxDatabase
    Session = nxSession
    AliasPath = 'c:\nex\dados'
    Left = 424
    Top = 40
  end
  object tTran2: TnxTable
    Database = nxDB
    TableName = 'Tran2'
    IndexName = 'IID'
    Left = 88
    Top = 96
  end
  object tITran: TnxTable
    Database = nxDB
    TableName = 'ITran'
    IndexName = 'ITranID'
    Left = 88
    Top = 160
  end
  object tITran2: TnxTable
    Database = nxDB
    TableName = 'ITran2'
    IndexName = 'ITranID'
    Left = 88
    Top = 216
  end
end
