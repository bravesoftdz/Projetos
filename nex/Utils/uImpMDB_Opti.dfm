object Form16: TForm16
  Left = 0
  Top = 0
  Caption = 'Importar OptiCyber'
  ClientHeight = 398
  ClientWidth = 586
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
  object Label1: TLabel
    Left = 17
    Top = 32
    Width = 256
    Height = 19
    Caption = 'Importar clientes do OPTIcyber'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PB: TProgressBar
    Left = 0
    Top = 0
    Width = 586
    Height = 16
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 348
  end
  object Button1: TButton
    Left = 17
    Top = 160
    Width = 177
    Height = 25
    Caption = 'Importar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object TBDock1: TTBDock
    Left = 0
    Top = 16
    Width = 586
    Height = 9
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 216
    Width = 449
    Height = 120
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object nxSession1: TnxSession
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRSE
    Left = 24
    Top = 24
  end
  object nxDB: TnxDatabase
    Session = nxSession1
    AliasName = 'NexCafe'
    Left = 64
    Top = 24
  end
  object tCli: TnxTable
    Database = nxDB
    TableName = 'Cliente'
    IndexName = 'IUsername'
    Left = 24
    Top = 64
    object tCliID: TAutoIncField
      FieldName = 'ID'
    end
    object tCliNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tCliEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object tCliBairro: TStringField
      FieldName = 'Bairro'
    end
    object tCliCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object tCliUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object tCliCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tCliSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object tCliCpf: TStringField
      FieldName = 'Cpf'
      Size = 14
    end
    object tCliRg: TStringField
      FieldName = 'Rg'
      Size = 14
    end
    object tCliTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tCliMinutos: TFloatField
      FieldName = 'Minutos'
    end
    object tCliMinutosUsados: TFloatField
      FieldName = 'MinutosUsados'
    end
    object tCliMinutosIniciais: TFloatField
      FieldName = 'MinutosIniciais'
    end
    object tCliIsento: TBooleanField
      FieldName = 'Isento'
    end
    object tCliUsername: TStringField
      FieldName = 'Username'
      Size = 40
    end
    object tCliPai: TStringField
      FieldName = 'Pai'
      Size = 40
    end
    object tCliMae: TStringField
      FieldName = 'Mae'
      Size = 40
    end
    object tCliSenha: TStringField
      FieldName = 'Senha'
    end
    object tCliUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object tCliDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tCliEscola: TStringField
      FieldName = 'Escola'
      Size = 40
    end
    object tCliEscolaHI: TDateTimeField
      FieldName = 'EscolaHI'
    end
    object tCliEscolaHF: TDateTimeField
      FieldName = 'EscolaHF'
    end
    object tCliNickName: TStringField
      FieldName = 'NickName'
      Size = 30
    end
    object tCliDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object tCliCelular: TStringField
      FieldName = 'Celular'
      Size = 15
    end
    object tCliTemDebito: TBooleanField
      FieldName = 'TemDebito'
    end
    object tCliLimiteDebito: TCurrencyField
      FieldName = 'LimiteDebito'
    end
    object tCliFoto: TGraphicField
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object tCliIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tCliAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tCliIncluidoPor: TStringField
      FieldName = 'IncluidoPor'
      Size = 10
    end
    object tCliAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 10
    end
    object tCliInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tCliTipoAcessoPref: TIntegerField
      FieldName = 'TipoAcessoPref'
    end
    object tCliValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
    object tCliObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tCliEmail: TMemoField
      FieldName = 'Email'
      BlobType = ftMemo
    end
    object tCliPassaportes: TFloatField
      FieldName = 'Passaportes'
    end
    object tCliTitEleitor: TStringField
      FieldName = 'TitEleitor'
      Size = 13
    end
    object tCliFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tCliFidTotal: TFloatField
      FieldName = 'FidTotal'
    end
    object tCliFidResg: TFloatField
      FieldName = 'FidResg'
    end
    object tCliAniversario: TStringField
      FieldName = 'Aniversario'
      Size = 4
    end
    object tCliNaoGuardarCredito: TBooleanField
      FieldName = 'NaoGuardarCredito'
    end
    object tCliPermiteLoginSemCred: TBooleanField
      FieldName = 'PermiteLoginSemCred'
    end
    object tCliHP1: TIntegerField
      FieldName = 'HP1'
    end
    object tCliHP2: TIntegerField
      FieldName = 'HP2'
    end
    object tCliHP3: TIntegerField
      FieldName = 'HP3'
    end
    object tCliHP4: TIntegerField
      FieldName = 'HP4'
    end
    object tCliHP5: TIntegerField
      FieldName = 'HP5'
    end
    object tCliHP6: TIntegerField
      FieldName = 'HP6'
    end
    object tCliHP7: TIntegerField
      FieldName = 'HP7'
    end
  end
  object nxTCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 16200
    Left = 104
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = tF
    Left = 64
    Top = 120
  end
  object adoConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;Data Source=C:\s' +
      'ystem\atTagataPOS\s\Banco de Dados.mdb;Mode=Read;Extended Proper' +
      'ties="";Persist Security Info=False;Jet OLEDB:System database=""' +
      ';Jet OLEDB:Registry Path="";Jet OLEDB:Database Password=k4hvd$$;' +
      'Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=0;Jet OL' +
      'EDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions' +
      '=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Da' +
      'tabase=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Co' +
      'py Locale on Compact=False;Jet OLEDB:Compact Without Replica Rep' +
      'air=False;Jet OLEDB:SFP=False;Jet OLEDB:Support Complex Data=Fal' +
      'se;Jet OLEDB:Bypass UserInfo Validation=False'
    LoginPrompt = False
    Mode = cmRead
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 32
    Top = 120
  end
  object tF: TADOTable
    Active = True
    Connection = adoConn
    CursorType = ctStatic
    TableName = 'qry_Product_List'
    Left = 128
    Top = 120
    object tFIdProductGroup: TIntegerField
      FieldName = 'IdProductGroup'
    end
    object tFIdProductGroupSub: TIntegerField
      FieldName = 'IdProductGroupSub'
    end
    object tFIdProduct: TIntegerField
      FieldName = 'IdProduct'
    end
    object tFIdProductBarCode: TWideStringField
      FieldName = 'IdProductBarCode'
    end
    object tFNmProduct: TWideStringField
      FieldName = 'NmProduct'
      Size = 100
    end
    object tFNrVlUnitCost: TFloatField
      FieldName = 'NrVlUnitCost'
    end
    object tFNrVlUnitPrice: TFloatField
      FieldName = 'NrVlUnitPrice'
    end
    object tFNrConvertMoney_1: TFloatField
      FieldName = 'NrConvertMoney_1'
    end
    object tFNrQtyStock: TFloatField
      FieldName = 'NrQtyStock'
    end
    object tFIdPropUMeasure: TIntegerField
      FieldName = 'IdPropUMeasure'
    end
    object tFfAuditEnabled: TBooleanField
      FieldName = 'fAuditEnabled'
    end
  end
  object tTempo: TADOTable
    Connection = adoConn
    CursorType = ctStatic
    TableName = 'TempoAgendado'
    Left = 160
    Top = 120
    object tTempoobjUsuario: TIntegerField
      FieldName = 'objUsuario'
    end
    object tTemposTempoEstimado: TWideStringField
      FieldName = 'sTempoEstimado'
      Size = 50
    end
    object tTempodInicio: TDateTimeField
      FieldName = 'dInicio'
    end
    object tTempodFim: TDateTimeField
      FieldName = 'dFim'
    end
    object tTempobCrashServer: TBooleanField
      FieldName = 'bCrashServer'
    end
  end
  object qMov: TADOQuery
    Connection = adoConn
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from Movimentacao'
      
        'where (objUsuario =151) and (bAgendado = true) and (bAtivo = Fal' +
        'se)')
    Left = 192
    Top = 120
    object qMovobjUsuario: TIntegerField
      FieldName = 'objUsuario'
    end
    object qMovobjMaquina: TIntegerField
      FieldName = 'objMaquina'
    end
    object qMovdEntrada: TDateTimeField
      FieldName = 'dEntrada'
    end
    object qMovdSaida: TDateTimeField
      FieldName = 'dSaida'
    end
    object qMovbAtivo: TBooleanField
      FieldName = 'bAtivo'
    end
    object qMovbFechado: TBooleanField
      FieldName = 'bFechado'
    end
    object qMovbAgendado: TBooleanField
      FieldName = 'bAgendado'
    end
    object qMovbCrashServer: TBooleanField
      FieldName = 'bCrashServer'
    end
    object qMovbFragNight: TBooleanField
      FieldName = 'bFragNight'
    end
  end
  object nxRSE: TnxRemoteServerEngine
    Transport = nxTCP
    Left = 80
    Top = 64
  end
end
