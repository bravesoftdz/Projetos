object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Importa'#231#227'o do Tina Soft'
  ClientHeight = 518
  ClientWidth = 1056
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 1056
    Height = 453
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 1056
    Height = 49
    Align = alTop
    Bevel.Mode = bmEdge
    TabOrder = 1
    object Button1: TButton
      Left = 3
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Importar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 101
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object PB: TProgressBar
    Left = 0
    Top = 49
    Width = 1056
    Height = 16
    Align = alTop
    TabOrder = 2
  end
  object Tab: TTable
    Active = True
    DatabaseName = 'c:\nexcafe'
    SessionName = 'SessionBDE'
    ReadOnly = True
    TableName = 'maindbex.DB'
    Left = 128
    Top = 96
    object TabKULLANICIKODU: TStringField
      FieldName = 'KULLANICIKODU'
      Size = 15
    end
    object TabSIFRE: TStringField
      FieldName = 'SIFRE'
      Size = 15
    end
    object TabADI: TStringField
      FieldName = 'ADI'
      Size = 15
    end
    object TabSOYADI: TStringField
      FieldName = 'SOYADI'
      Size = 25
    end
    object TabADRES1: TMemoField
      FieldName = 'ADRES1'
      BlobType = ftMemo
      Size = 50
    end
    object TabSEMT: TStringField
      FieldName = 'SEMT'
    end
    object TabPOSTAKODU: TStringField
      FieldName = 'POSTAKODU'
      Size = 5
    end
    object TabSEHIR: TStringField
      FieldName = 'SEHIR'
      Size = 25
    end
    object TabTEL: TStringField
      FieldName = 'TEL'
    end
    object TabACILISTARIHI: TDateField
      FieldName = 'ACILISTARIHI'
    end
    object TabBITISTARIHI: TDateField
      FieldName = 'BITISTARIHI'
    end
    object TabEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object TabWEB: TStringField
      FieldName = 'WEB'
      Size = 255
    end
    object TabFOTO: TGraphicField
      FieldName = 'FOTO'
      BlobType = ftGraphic
      Size = 20
    end
    object TabDESCRIPTION: TMemoField
      FieldName = 'DESCRIPTION'
      BlobType = ftMemo
      Size = 50
    end
    object TabEXT1: TStringField
      FieldName = 'EXT1'
      Size = 25
    end
    object TabEXT2: TCurrencyField
      FieldName = 'EXT2'
    end
    object TabSAATUCRETI: TCurrencyField
      FieldName = 'SAATUCRETI'
    end
    object TabDAKIKAHAKKI: TFloatField
      FieldName = 'DAKIKAHAKKI'
    end
    object TabKULLANILANSURE: TFloatField
      FieldName = 'KULLANILANSURE'
    end
    object TabAKTIF: TBooleanField
      FieldName = 'AKTIF'
    end
    object TabKREDI: TCurrencyField
      FieldName = 'KREDI'
    end
    object TabICQ: TFloatField
      FieldName = 'ICQ'
    end
    object TabUCRETTIPI: TStringField
      FieldName = 'UCRETTIPI'
      Size = 1
    end
    object TabISKONTO: TFloatField
      FieldName = 'ISKONTO'
    end
    object TabRESERVED1STR: TStringField
      FieldName = 'RESERVED1STR'
      Size = 30
    end
    object TabRESERVED2STR: TStringField
      FieldName = 'RESERVED2STR'
    end
    object TabRESERVED3STR: TStringField
      FieldName = 'RESERVED3STR'
      Size = 30
    end
    object TabRESERVED1NUM: TFloatField
      FieldName = 'RESERVED1NUM'
    end
    object TabRESERVED2NUM: TFloatField
      FieldName = 'RESERVED2NUM'
    end
    object TabRESERVED3NUM: TFloatField
      FieldName = 'RESERVED3NUM'
    end
    object TabRESERVED1CUR: TCurrencyField
      FieldName = 'RESERVED1CUR'
    end
    object TabRESERVED2CUR: TCurrencyField
      FieldName = 'RESERVED2CUR'
    end
    object TabRESERVED3CUR: TCurrencyField
      FieldName = 'RESERVED3CUR'
    end
    object TabRESERVED1DATE: TDateField
      FieldName = 'RESERVED1DATE'
    end
    object TabRESERVED2DATE: TDateField
      FieldName = 'RESERVED2DATE'
    end
    object TabRESERVED1TIME: TDateField
      FieldName = 'RESERVED1TIME'
    end
  end
  object DataSource1: TDataSource
    DataSet = Tab
    Left = 168
    Top = 96
  end
  object nxSession1: TnxSession
    ServerEngine = nxSE
    Left = 288
    Top = 336
  end
  object nxDB: TnxDatabase
    Session = nxSession1
    AliasPath = 'c:\nexcafe\dados'
    Left = 328
    Top = 336
  end
  object nxTCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1:16200'
    Left = 368
    Top = 336
  end
  object nxSE: TnxServerEngine
    ServerName = 'Nextar'
    Options = []
    TableExtension = 'nx1'
    Left = 328
    Top = 376
  end
  object tCli: TnxTable
    Database = nxDB
    TableName = 'Cliente'
    Exclusive = True
    IndexName = 'IID'
    Left = 288
    Top = 376
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
  object Database1: TDatabase
    SessionName = 'Default'
    Left = 104
    Top = 280
  end
  object Session1: TSession
    Active = True
    NetFileDir = 'C:\MEUS PROGRAMAS\NEXCAFE'
    SessionName = 'SessionBDE'
    Left = 272
    Top = 176
  end
end
