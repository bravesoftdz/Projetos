object Form16: TForm16
  Left = 0
  Top = 0
  Caption = 'Importar CSV'
  ClientHeight = 415
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 58
    Width = 864
    Height = 357
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object PB: TProgressBar
    Left = 0
    Top = 41
    Width = 864
    Height = 17
    Align = alTop
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 864
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Button1: TButton
      Left = 8
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object nxSession1: TnxSession
    ActiveRuntime = True
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxServerEngine1
    Left = 24
    Top = 24
  end
  object nxDB: TnxDatabase
    ActiveDesigntime = True
    Session = nxSession1
    AliasPath = 'c:\nex\dados'
    Left = 96
    Top = 24
  end
  object tCli: TnxTable
    ActiveRuntime = True
    ActiveDesigntime = True
    Database = nxDB
    TableName = 'Cliente'
    Left = 24
    Top = 80
    object tCliID: TUnsignedAutoIncField
      DisplayWidth = 12
      FieldName = 'ID'
    end
    object tCliCodigo: TStringField
      DisplayWidth = 18
      FieldName = 'Codigo'
      Size = 15
    end
    object tCliCodigoKey: TStringField
      DisplayWidth = 31
      FieldName = 'CodigoKey'
      Size = 15
    end
    object tCliBairro: TStringField
      DisplayWidth = 24
      FieldName = 'Bairro'
    end
    object tCliCidade: TStringField
      DisplayWidth = 36
      FieldName = 'Cidade'
      Size = 30
    end
    object tCliUF: TStringField
      DisplayWidth = 36
      FieldName = 'UF'
      Size = 30
    end
    object tCliCEP: TStringField
      DisplayWidth = 12
      FieldName = 'CEP'
      Size = 10
    end
    object tCliSexo: TStringField
      DisplayWidth = 5
      FieldName = 'Sexo'
      Size = 1
    end
    object tCliObs: TnxMemoField
      DisplayWidth = 12
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tCliCpf: TStringField
      DisplayWidth = 24
      FieldName = 'Cpf'
    end
    object tCliRg: TStringField
      DisplayWidth = 24
      FieldName = 'Rg'
    end
    object tCliTelefone: TStringField
      DisplayWidth = 18
      FieldName = 'Telefone'
      Size = 15
    end
    object tCliEmail: TnxMemoField
      DisplayWidth = 12
      FieldName = 'Email'
      BlobType = ftMemo
    end
    object tCliPassaportes: TFloatField
      DisplayWidth = 12
      FieldName = 'Passaportes'
    end
    object tCliPai: TStringField
      DisplayWidth = 48
      FieldName = 'Pai'
      Size = 40
    end
    object tCliMae: TStringField
      DisplayWidth = 48
      FieldName = 'Mae'
      Size = 40
    end
    object tCliSenha: TStringField
      DisplayWidth = 24
      FieldName = 'Senha'
    end
    object tCliUltVisita: TDateTimeField
      DisplayWidth = 22
      FieldName = 'UltVisita'
    end
    object tCliDebito: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Debito'
    end
    object tCliEscola: TStringField
      DisplayWidth = 48
      FieldName = 'Escola'
      Size = 40
    end
    object tCliNickName: TStringField
      DisplayWidth = 36
      FieldName = 'NickName'
      Size = 30
    end
    object tCliDataNasc: TDateTimeField
      DisplayWidth = 22
      FieldName = 'DataNasc'
    end
    object tCliCelular: TStringField
      DisplayWidth = 18
      FieldName = 'Celular'
      Size = 15
    end
    object tCliTemDebito: TBooleanField
      DisplayWidth = 10
      FieldName = 'TemDebito'
    end
    object tCliLimiteDebito: TCurrencyField
      DisplayWidth = 12
      FieldName = 'LimiteDebito'
    end
    object tCliFoto: TGraphicField
      DisplayWidth = 12
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object tCliIncluidoEm: TDateTimeField
      DisplayWidth = 22
      FieldName = 'IncluidoEm'
    end
    object tCliAlteradoEm: TDateTimeField
      DisplayWidth = 22
      FieldName = 'AlteradoEm'
    end
    object tCliIncluidoPor: TStringField
      DisplayWidth = 12
      FieldName = 'IncluidoPor'
      Size = 10
    end
    object tCliAlteradoPor: TStringField
      DisplayWidth = 12
      FieldName = 'AlteradoPor'
      Size = 10
    end
    object tCliTitEleitor: TStringField
      DisplayWidth = 16
      FieldName = 'TitEleitor'
      Size = 13
    end
    object tCliFidPontos: TFloatField
      DisplayWidth = 12
      FieldName = 'FidPontos'
    end
    object tCliFidTotal: TFloatField
      DisplayWidth = 12
      FieldName = 'FidTotal'
    end
    object tCliFidResg: TFloatField
      DisplayWidth = 12
      FieldName = 'FidResg'
    end
    object tCliAniversario: TStringField
      DisplayWidth = 11
      FieldName = 'Aniversario'
      Size = 4
    end
    object tCliSemFidelidade: TBooleanField
      DisplayWidth = 14
      FieldName = 'SemFidelidade'
    end
    object tCliTemCredito: TBooleanField
      DisplayWidth = 11
      FieldName = 'TemCredito'
    end
    object tCliPJuridica: TBooleanField
      DisplayWidth = 9
      FieldName = 'PJuridica'
    end
    object tCliInativo: TBooleanField
      DisplayWidth = 7
      FieldName = 'Inativo'
    end
    object tCliFornecedor: TBooleanField
      DisplayWidth = 11
      FieldName = 'Fornecedor'
    end
    object tCliValorCred: TCurrencyField
      DisplayWidth = 12
      FieldName = 'ValorCred'
    end
    object tCliRecVer: TLongWordField
      DisplayWidth = 12
      FieldName = 'RecVer'
    end
    object tCliNome: TStringField
      DisplayWidth = 48
      FieldName = 'Nome'
      Size = 40
    end
    object tCliEndereco: TStringField
      DisplayWidth = 60
      FieldName = 'Endereco'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = tCli
    Left = 168
    Top = 80
  end
  object nxServerEngine1: TnxServerEngine
    ActiveDesigntime = True
    ServerName = ''
    Options = []
    TableExtension = 'nx1'
    Left = 288
    Top = 96
  end
end
