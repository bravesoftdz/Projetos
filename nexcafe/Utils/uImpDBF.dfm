object Form16: TForm16
  Left = 0
  Top = 0
  Caption = 'Importar DBF'
  ClientHeight = 305
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PB: TProgressBar
    Left = 0
    Top = 0
    Width = 629
    Height = 16
    Align = alTop
    TabOrder = 0
  end
  object Button1: TButton
    Left = 168
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Importar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 120
    Width = 629
    Height = 185
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object nxSession1: TnxSession
    ActiveDesigntime = True
    ServerEngine = nxSE
    Left = 24
    Top = 24
  end
  object nxDB: TnxDatabase
    Session = nxSession1
    AliasPath = 'c:\meus programas\nexcafe\dados'
    Left = 64
    Top = 24
  end
  object tCli: TnxTable
    Database = nxDB
    TableName = 'Cliente'
    Exclusive = True
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
    object tCliNasc: TDateTimeField
      FieldName = 'Nasc'
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
  end
  object nxTCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1:16200'
    MaxBytesPerSecond = 0
    PingTime = 0
    Left = 104
    Top = 24
  end
  object nxSE: TnxServerEngine
    ActiveDesigntime = True
    ServerName = 'Nextar'
    Options = []
    Left = 64
    Top = 64
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'c:\meus programas\nexcafe'
    TableName = 'adrena_itajai.dbf'
    Left = 112
    Top = 160
    object Table1NOME: TStringField
      FieldName = 'NOME'
      Size = 34
    end
    object Table1USERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 19
    end
    object Table1COD: TFloatField
      FieldName = 'COD'
    end
    object Table1DATANASC: TStringField
      FieldName = 'DATANASC'
      Size = 16
    end
    object Table1SENHA: TStringField
      FieldName = 'SENHA'
      Size = 15
    end
    object Table1RG: TStringField
      FieldName = 'RG'
      Size = 13
    end
    object Table1ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 47
    end
    object Table1SEXO: TStringField
      FieldName = 'SEXO'
      Size = 8
    end
    object Table1EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 36
    end
    object Table1TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object Table1CELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 19
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 192
    Top = 168
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'C:\Meus Programas\NexCafe\Dados_Clientes\sgl\Sgl.gdb'
    Params.Strings = (
      'user_name=sysdba')
    Left = 336
    Top = 32
  end
end
