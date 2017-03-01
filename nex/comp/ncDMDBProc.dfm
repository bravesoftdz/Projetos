object dmDBProc: TdmDBProc
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 102
  Width = 200
  object nxDB: TnxDatabase
    Session = nxSession
    AliasName = 'NexCafe'
    Left = 72
    Top = 16
  end
  object nxSession: TnxSession
    UserName = 'admin'
    Password = 'delphi9856'
    Left = 24
    Top = 16
  end
  object tCli: TnxTable
    Database = nxDB
    TableName = 'Cliente'
    IndexName = 'IID'
    Left = 120
    Top = 16
    object tCliID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tCliCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tCliCodigoKey: TStringField
      FieldName = 'CodigoKey'
      Size = 15
    end
    object tCliNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tCliEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object tCliEndereco2: TWideStringField
      FieldName = 'Endereco2'
      Size = 60
    end
    object tCliEnd_Numero: TWideStringField
      FieldName = 'End_Numero'
    end
    object tCliEnd_CodMun: TWideStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object tCliEnd_Dest: TWideStringField
      FieldName = 'End_Dest'
      Size = 40
    end
    object tCliEnd_Obs: TWideStringField
      FieldName = 'End_Obs'
      Size = 40
    end
    object tCliendereco_id: TGuidField
      FieldName = 'endereco_id'
      Size = 38
    end
    object tCliPais: TWideStringField
      FieldName = 'Pais'
      Size = 2
    end
    object tCliBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object tCliCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object tCliUF: TWideStringField
      FieldName = 'UF'
      Size = 30
    end
    object tCliCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tCliNaoContribICMS: TBooleanField
      FieldName = 'NaoContribICMS'
    end
    object tCliIsentoIE: TBooleanField
      FieldName = 'IsentoIE'
    end
    object tCliNFE_CredIcms: TBooleanField
      FieldName = 'NFE_CredIcms'
    end
    object tCliSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object tCliObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tCliCpf: TWideStringField
      FieldName = 'Cpf'
    end
    object tCliRg: TWideStringField
      FieldName = 'Rg'
    end
    object tCliTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tCliEmail: TWideMemoField
      FieldName = 'Email'
      BlobType = ftWideMemo
    end
    object tCliPassaportes: TFloatField
      FieldName = 'Passaportes'
    end
    object tCliPai: TWideStringField
      FieldName = 'Pai'
      Size = 40
    end
    object tCliMae: TWideStringField
      FieldName = 'Mae'
      Size = 40
    end
    object tCliUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object tCliDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tCliDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object tCliCelular: TWideStringField
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
    end
    object tCliAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
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
    object tCliInfoExtra: TWideStringField
      FieldName = 'InfoExtra'
      Size = 50
    end
    object tCliTranspEntPadrao: TLongWordField
      FieldName = 'TranspEntPadrao'
    end
    object tCliUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tCliTranspEnt: TBooleanField
      FieldName = 'TranspEnt'
    end
    object tCliTipoFor: TByteField
      FieldName = 'TipoFor'
    end
    object tCliPJuridica: TBooleanField
      FieldName = 'PJuridica'
    end
    object tCliConsumidor: TBooleanField
      FieldName = 'Consumidor'
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
    object tCliRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
end
