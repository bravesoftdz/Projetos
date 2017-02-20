object Form16: TForm16
  Left = 0
  Top = 0
  Caption = 'Corrigir d'#233'bitos'
  ClientHeight = 371
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object PB: TProgressBar
    Left = 0
    Top = 0
    Width = 474
    Height = 16
    Align = alTop
    TabOrder = 0
  end
  object Button1: TButton
    Left = 0
    Top = 16
    Width = 474
    Height = 25
    Align = alTop
    Caption = 'Corrigir!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
    ExplicitLeft = 20
    ExplicitTop = 35
    ExplicitWidth = 75
  end
  object Memo1: TMemo
    Left = 0
    Top = 41
    Width = 474
    Height = 330
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    ExplicitLeft = 32
    ExplicitTop = 152
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object nxSession1: TnxSession
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRemoteServerEngine1
    Left = 176
    Top = 32
  end
  object nxDB: TnxDatabase
    ActiveDesigntime = True
    Session = nxSession1
    AliasName = 'NexCafe'
    Left = 200
    Top = 32
  end
  object nxTCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 232
    Top = 32
  end
  object nxRemoteServerEngine1: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = nxTCP
    Left = 344
    Top = 32
  end
  object tProd: TnxTable
    Database = nxDB
    TableName = 'Produto'
    Left = 72
    Top = 104
    object tProdID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tProdCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tProdDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
  end
  object tMovEst: TnxTable
    Database = nxDB
    TableName = 'MovEst'
    IndexName = 'IProdAjustaCustoData'
    Left = 176
    Top = 104
    object tMovEstProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tMovEstDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tMovEstCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tMovEstAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tMovEstTipoTran: TByteField
      FieldName = 'TipoTran'
    end
  end
end
