object Form16: TForm16
  Left = 0
  Top = 0
  Caption = 'Importar OptiCyber'
  ClientHeight = 439
  ClientWidth = 819
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
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
    Width = 819
    Height = 16
    Align = alTop
    TabOrder = 0
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
    Width = 819
    Height = 9
  end
  object G: TDBGrid
    Left = 0
    Top = 319
    Width = 819
    Height = 120
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object nxSession1: TnxSession
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRSE
    Left = 24
    Top = 24
  end
  object nxDB: TnxDatabase
    ActiveDesigntime = True
    Session = nxSession1
    AliasName = 'NexCafe'
    Left = 64
    Top = 24
  end
  object tCli: TnxTable
    ActiveRuntime = True
    ActiveDesigntime = True
    Database = nxDB
    TableName = 'Cliente'
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
      Size = 30
    end
    object tCliCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tCliSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object tCliObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tCliCpf: TStringField
      FieldName = 'Cpf'
    end
    object tCliRg: TStringField
      FieldName = 'Rg'
    end
    object tCliTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tCliEmail: TnxMemoField
      FieldName = 'Email'
      BlobType = ftMemo
    end
    object tCliPassaportes: TFloatField
      FieldName = 'Passaportes'
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
    object tCliSemFidelidade: TBooleanField
      FieldName = 'SemFidelidade'
    end
    object tCliTemCredito: TBooleanField
      FieldName = 'TemCredito'
    end
    object tCliPJuridica: TBooleanField
      FieldName = 'PJuridica'
    end
    object tCliInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tCliFornecedor: TBooleanField
      FieldName = 'Fornecedor'
    end
    object tCliValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
    object tCliRecVer: TIntegerField
      FieldName = 'RecVer'
    end
    object tCliCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tCliCodigoKey: TStringField
      FieldName = 'CodigoKey'
      Size = 15
    end
  end
  object nxTCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 104
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = tCli
    Left = 64
    Top = 120
  end
  object adoConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;Data Source=C:\s' +
      'ystem\atTagataPcard\d\db_Customer.mdb;Mode=Read;Extended Propert' +
      'ies="";Persist Security Info=False;Jet OLEDB:System database="";' +
      'Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OL' +
      'EDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Gl' +
      'obal Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet' +
      ' OLEDB:New Database Password=attagata;Jet OLEDB:Create System Da' +
      'tabase=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Co' +
      'py Locale on Compact=False;Jet OLEDB:Compact Without Replica Rep' +
      'air=False;Jet OLEDB:SFP=False;Jet OLEDB:Support Complex Data=Fal' +
      'se;Jet OLEDB:Bypass UserInfo Validation=False'
    IsolationLevel = ilChaos
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
    TableName = 'Tb_Customer'
    Left = 128
    Top = 120
    object tFIDCustomer: TIntegerField
      DisplayWidth = 12
      FieldName = 'IDCustomer'
    end
    object tFIDUser: TIntegerField
      DisplayWidth = 12
      FieldName = 'IDUser'
    end
    object tFNmFirstName: TWideStringField
      DisplayWidth = 48
      FieldName = 'NmFirstName'
      Size = 40
    end
    object tFNmSecondName: TWideStringField
      DisplayWidth = 84
      FieldName = 'NmSecondName'
      Size = 70
    end
    object tFNmAddress: TWideStringField
      DisplayWidth = 306
      FieldName = 'NmAddress'
      Size = 255
    end
    object tFNmPlace: TWideStringField
      DisplayWidth = 120
      FieldName = 'NmPlace'
      Size = 100
    end
    object tFNrCity: TIntegerField
      DisplayWidth = 12
      FieldName = 'NrCity'
    end
    object tFNmCity: TWideStringField
      DisplayWidth = 60
      FieldName = 'NmCity'
      Size = 50
    end
    object tFNrState: TIntegerField
      DisplayWidth = 12
      FieldName = 'NrState'
    end
    object tFNmState: TWideStringField
      DisplayWidth = 60
      FieldName = 'NmState'
      Size = 50
    end
    object tFNmZip: TWideStringField
      DisplayWidth = 24
      FieldName = 'NmZip'
    end
    object tFNrCountry: TIntegerField
      DisplayWidth = 12
      FieldName = 'NrCountry'
    end
    object tFNmCountry: TWideStringField
      DisplayWidth = 60
      FieldName = 'NmCountry'
      Size = 50
    end
    object tFNmPhone1: TWideStringField
      DisplayWidth = 24
      FieldName = 'NmPhone1'
    end
    object tFNmPhone2: TWideStringField
      DisplayWidth = 24
      FieldName = 'NmPhone2'
    end
    object tFNmFax: TWideStringField
      DisplayWidth = 24
      FieldName = 'NmFax'
    end
    object tFNmEmail: TWideStringField
      DisplayWidth = 60
      FieldName = 'NmEmail'
      Size = 50
    end
    object tFNmMaritalStatus: TWideStringField
      DisplayWidth = 36
      FieldName = 'NmMaritalStatus'
      Size = 30
    end
    object tFDtBirthday: TDateTimeField
      DisplayWidth = 22
      FieldName = 'DtBirthday'
    end
    object tFNmOccupation: TWideStringField
      DisplayWidth = 60
      FieldName = 'NmOccupation'
      Size = 50
    end
    object tFNmNationality: TWideStringField
      DisplayWidth = 60
      FieldName = 'NmNationality'
      Size = 50
    end
    object tFNmGender: TWideStringField
      DisplayWidth = 10
      FieldName = 'NmGender'
      Size = 5
    end
    object tFNmCustomerShip: TWideStringField
      DisplayWidth = 60
      FieldName = 'NmCustomerShip'
      Size = 50
    end
    object tFNmAddressShip: TWideStringField
      DisplayWidth = 306
      FieldName = 'NmAddressShip'
      Size = 255
    end
    object tFNmPlaceShip: TWideStringField
      DisplayWidth = 120
      FieldName = 'NmPlaceShip'
      Size = 100
    end
    object tFNrCityShip: TIntegerField
      DisplayWidth = 12
      FieldName = 'NrCityShip'
    end
    object tFNmCityShip: TWideStringField
      DisplayWidth = 60
      FieldName = 'NmCityShip'
      Size = 50
    end
    object tFNrStateShip: TIntegerField
      DisplayWidth = 12
      FieldName = 'NrStateShip'
    end
    object tFNmStateShip: TWideStringField
      DisplayWidth = 60
      FieldName = 'NmStateShip'
      Size = 50
    end
    object tFNmTpPerson: TWideStringField
      DisplayWidth = 24
      FieldName = 'NmTpPerson'
    end
    object tFNmZipShip: TWideStringField
      DisplayWidth = 24
      FieldName = 'NmZipShip'
    end
    object tFNrCountryShip: TIntegerField
      DisplayWidth = 14
      FieldName = 'NrCountryShip'
    end
    object tFNmCountryShip: TWideStringField
      DisplayWidth = 60
      FieldName = 'NmCountryShip'
      Size = 50
    end
    object tFNrTpCustomer: TSmallintField
      DisplayWidth = 14
      FieldName = 'NrTpCustomer'
    end
    object tFNmCompany: TWideStringField
      DisplayWidth = 96
      FieldName = 'NmCompany'
      Size = 80
    end
    object tFNmLinkWebsite: TWideStringField
      DisplayWidth = 306
      FieldName = 'NmLinkWebsite'
      Size = 255
    end
    object tFNmLinkPic1: TWideStringField
      DisplayWidth = 306
      FieldName = 'NmLinkPic1'
      Size = 255
    end
    object tFNmLinkPic2: TWideStringField
      DisplayWidth = 306
      FieldName = 'NmLinkPic2'
      Size = 255
    end
    object tFNrDoc1: TIntegerField
      DisplayWidth = 12
      FieldName = 'NrDoc1'
    end
    object tFNrDoc2: TIntegerField
      DisplayWidth = 12
      FieldName = 'NrDoc2'
    end
    object tFfAllowEmkt: TBooleanField
      DisplayWidth = 11
      FieldName = 'fAllowEmkt'
    end
    object tFNmKanji: TWideStringField
      DisplayWidth = 60
      FieldName = 'NmKanji'
      Size = 50
    end
    object tFNmKana: TWideStringField
      DisplayWidth = 306
      FieldName = 'NmKana'
      Size = 255
    end
    object tFNmAddressKanji: TWideStringField
      DisplayWidth = 306
      FieldName = 'NmAddressKanji'
      Size = 255
    end
    object tFNmCityKanji: TWideStringField
      DisplayWidth = 60
      FieldName = 'NmCityKanji'
      Size = 50
    end
    object tFNmStateKanji: TWideStringField
      DisplayWidth = 60
      FieldName = 'NmStateKanji'
      Size = 50
    end
    object tFNmAddressShipKanji: TWideStringField
      DisplayWidth = 306
      FieldName = 'NmAddressShipKanji'
      Size = 255
    end
    object tFNmCityShipKanji: TWideStringField
      DisplayWidth = 66
      FieldName = 'NmCityShipKanji'
      Size = 55
    end
    object tFNrStateShipKanji: TIntegerField
      DisplayWidth = 16
      FieldName = 'NrStateShipKanji'
    end
    object tFDsCustomer: TWideMemoField
      DisplayWidth = 18
      FieldName = 'DsCustomer'
      BlobType = ftWideMemo
    end
    object tFDtRegister: TDateTimeField
      DisplayWidth = 22
      FieldName = 'DtRegister'
    end
    object tFNmRegister: TWideStringField
      DisplayWidth = 24
      FieldName = 'NmRegister'
    end
    object tFDtUpdate: TDateTimeField
      DisplayWidth = 22
      FieldName = 'DtUpdate'
    end
    object tFNmUpdate: TWideStringField
      DisplayWidth = 24
      FieldName = 'NmUpdate'
    end
    object tFfRecordEnabled: TBooleanField
      DisplayWidth = 15
      FieldName = 'fRecordEnabled'
    end
  end
  object nxRSE: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = nxTCP
    Left = 80
    Top = 64
  end
  object tPC: TADOTable
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    IndexName = 'IDCustomer'
    TableName = 'tb_Point_Card'
    Left = 232
    Top = 112
    object tPCIDPointCard: TIntegerField
      FieldName = 'IDPointCard'
    end
    object tPCNmBarCodePointCard: TWideStringField
      FieldName = 'NmBarCodePointCard'
      Size = 13
    end
    object tPCIDCustomer: TIntegerField
      FieldName = 'IDCustomer'
    end
    object tPCNrPointCardAmount: TIntegerField
      FieldName = 'NrPointCardAmount'
    end
    object tPCDtLastTransaction: TDateTimeField
      FieldName = 'DtLastTransaction'
    end
    object tPCNrTpLastTransaction: TWordField
      FieldName = 'NrTpLastTransaction'
    end
    object tPCNrPointLastTransaction: TIntegerField
      FieldName = 'NrPointLastTransaction'
    end
    object tPCNmLastTransaction: TWideStringField
      FieldName = 'NmLastTransaction'
      Size = 30
    end
    object tPCNmSourceLastTransaction: TWideStringField
      FieldName = 'NmSourceLastTransaction'
      Size = 30
    end
    object tPCDtRegister: TDateTimeField
      FieldName = 'DtRegister'
    end
    object tPCNmRegister: TWideStringField
      FieldName = 'NmRegister'
    end
    object tPCDtUpdate: TDateTimeField
      FieldName = 'DtUpdate'
    end
    object tPCNmUpdate: TWideStringField
      FieldName = 'NmUpdate'
    end
    object tPCfRecordEnabled: TBooleanField
      FieldName = 'fRecordEnabled'
    end
  end
  object tEstado: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Tb_System_Aux_State'
    Left = 280
    Top = 112
    object tEstadoNrState: TIntegerField
      FieldName = 'NrState'
    end
    object tEstadoNrCountry: TIntegerField
      FieldName = 'NrCountry'
    end
    object tEstadoRfState: TWideStringField
      FieldName = 'RfState'
    end
    object tEstadoNmState: TWideStringField
      FieldName = 'NmState'
      Size = 50
    end
    object tEstadoDsState: TWideStringField
      FieldName = 'DsState'
      Size = 255
    end
    object tEstadoNmState_lang1: TWideStringField
      FieldName = 'NmState_lang1'
      Size = 50
    end
    object tEstadoDsState_lang1: TWideStringField
      FieldName = 'DsState_lang1'
      Size = 255
    end
    object tEstadoDtRegister: TDateTimeField
      FieldName = 'DtRegister'
    end
    object tEstadoNmRegister: TWideStringField
      FieldName = 'NmRegister'
    end
    object tEstadoDtUpdate: TDateTimeField
      FieldName = 'DtUpdate'
    end
    object tEstadoNmUpdate: TWideStringField
      FieldName = 'NmUpdate'
    end
    object tEstadofRecordEnabled: TBooleanField
      FieldName = 'fRecordEnabled'
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;Data Source=C:\s' +
      'ystem\atTagataPcard\d\db_System_Aux.mdb;Mode=Read;Persist Securi' +
      'ty Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Pa' +
      'th="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet' +
      ' OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial Bulk Ops' +
      '=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database P' +
      'assword=attagata;Jet OLEDB:Create System Database=False;Jet OLED' +
      'B:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=' +
      'False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:S' +
      'FP=False;Jet OLEDB:Support Complex Data=False;Jet OLEDB:Bypass U' +
      'serInfo Validation=False'
    IsolationLevel = ilChaos
    LoginPrompt = False
    Mode = cmRead
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 408
    Top = 128
  end
  object tCidade: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexName = 'PrimaryKey'
    TableName = 'Tb_System_Aux_City'
    Left = 296
    Top = 168
    object tCidadeNrCity: TIntegerField
      FieldName = 'NrCity'
    end
    object tCidadeNrState: TIntegerField
      FieldName = 'NrState'
    end
    object tCidadeRfCity: TWideStringField
      FieldName = 'RfCity'
    end
    object tCidadeNmCity: TWideStringField
      FieldName = 'NmCity'
      Size = 50
    end
    object tCidadeDsCity: TWideStringField
      FieldName = 'DsCity'
      Size = 255
    end
    object tCidadeNmCity_lang1: TWideStringField
      FieldName = 'NmCity_lang1'
      Size = 50
    end
    object tCidadeDsCity_lang1: TWideStringField
      FieldName = 'DsCity_lang1'
      Size = 255
    end
    object tCidadeDtRegister: TDateTimeField
      FieldName = 'DtRegister'
    end
    object tCidadeNmRegister: TWideStringField
      FieldName = 'NmRegister'
    end
    object tCidadeDtUpdate: TDateTimeField
      FieldName = 'DtUpdate'
    end
    object tCidadeNmUpdate: TWideStringField
      FieldName = 'NmUpdate'
    end
    object tCidadefRecordEnabled: TBooleanField
      FieldName = 'fRecordEnabled'
    end
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;Data Source=C:\s' +
      'ystem\atTagataPcard\d\db_PointCardControl.mdb;Mode=Read;Persist ' +
      'Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Regis' +
      'try Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type' +
      '=5;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial Bu' +
      'lk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Data' +
      'base Password=attagata;Jet OLEDB:Create System Database=False;Je' +
      't OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Co' +
      'mpact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet O' +
      'LEDB:SFP=False;Jet OLEDB:Support Complex Data=False;Jet OLEDB:By' +
      'pass UserInfo Validation=False'
    IsolationLevel = ilChaos
    LoginPrompt = False
    Mode = cmRead
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 320
    Top = 72
  end
end
