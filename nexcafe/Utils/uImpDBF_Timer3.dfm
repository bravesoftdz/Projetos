object Form16: TForm16
  Left = 0
  Top = 0
  Caption = 'Importar DBF'
  ClientHeight = 603
  ClientWidth = 1059
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
    Width = 1059
    Height = 16
    Align = alTop
    TabOrder = 0
  end
  object Button1: TButton
    Left = 168
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Importar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 418
    Width = 1059
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
    Left = 104
    Top = 24
  end
  object nxSE: TnxServerEngine
    ServerName = 'Nextar'
    Options = []
    TableExtension = 'nx1'
    Left = 64
    Top = 64
  end
  object TF: TDbf
    FilePath = 'C:\Meus Programas\NexCafe\'
    IndexDefs = <
      item
        IndexFile = 'CODIGOINDE'
        SortField = 'CODIGO'
        Options = [ixUnique, ixExpression]
      end>
    TableName = 'Clientes.DBF'
    TableLevel = 3
    Active = True
    Left = 144
    Top = 136
    object TFCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TFNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object TFDATA_NASC: TStringField
      FieldName = 'DATA_NASC'
      Size = 10
    end
    object TFRUA: TStringField
      FieldName = 'RUA'
      Size = 33
    end
    object TFNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object TFCOMPLEMENT: TStringField
      FieldName = 'COMPLEMENT'
      Size = 13
    end
    object TFBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 33
    end
    object TFCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 33
    end
    object TFUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object TFTEL_RESIDE: TStringField
      FieldName = 'TEL_RESIDE'
      Size = 17
    end
    object TFTEL_COMERC: TStringField
      FieldName = 'TEL_COMERC'
      Size = 17
    end
    object TFTEL_CELULA: TStringField
      FieldName = 'TEL_CELULA'
      Size = 17
    end
    object TFE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 60
    end
    object TFOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object TFCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object TFGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object TFNICK: TStringField
      FieldName = 'NICK'
      Size = 35
    end
    object TFFILIACAO: TStringField
      FieldName = 'FILIACAO'
      Size = 255
    end
    object TFDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object TFAUTORIZADO: TStringField
      FieldName = 'AUTORIZADO'
      Size = 5
    end
    object TFCAMINHOFOT: TStringField
      FieldName = 'CAMINHOFOT'
      Size = 255
    end
    object TFMSGOBS: TStringField
      FieldName = 'MSGOBS'
      Size = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = TF
    Left = 360
    Top = 80
  end
end
