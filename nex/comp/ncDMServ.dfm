object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 445
  Width = 777
  object nxSession: TnxSession
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRSE
    Left = 24
    Top = 16
  end
  object nxDB: TnxDatabase
    Session = nxSession
    AliasName = 'NexCafe'
    Left = 72
    Top = 16
  end
  object tTran: TnxTable
    Database = nxDB
    OnCalcFields = tTranCalcFields
    TableName = 'Tran'
    IndexName = 'ISessao'
    Left = 24
    Top = 72
    object tTranID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tTranUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tTranDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tTranCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tTranTipo: TByteField
      FieldName = 'Tipo'
    end
    object tTranFunc: TStringField
      FieldName = 'Func'
    end
    object tTranTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tTranDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tTranDescPerc: TFloatField
      FieldName = 'DescPerc'
    end
    object tTranDescPorPerc: TBooleanField
      FieldName = 'DescPorPerc'
    end
    object tTranTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tTranPagEsp: TWordField
      FieldName = 'PagEsp'
    end
    object tTranPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tTranDebitoAnt: TCurrencyField
      FieldName = 'DebitoAnt'
    end
    object tTranDebitoPago: TCurrencyField
      FieldName = 'DebitoPago'
    end
    object tTranCreditoAnt: TCurrencyField
      FieldName = 'CreditoAnt'
    end
    object tTranCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object tTranCreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object tTranTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object tTranObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tTranCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tTranCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tTranCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tTranCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tTranCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object tTranMaq: TWordField
      FieldName = 'Maq'
    end
    object tTranSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tTranQtdTempo: TFloatField
      FieldName = 'QtdTempo'
    end
    object tTranCredValor: TBooleanField
      FieldName = 'CredValor'
    end
    object tTranFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tTranPagFunc: TStringField
      FieldName = 'PagFunc'
    end
    object tTranPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tTranRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tTranDebito: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Debito'
      Calculated = True
    end
    object tTranUID_ref: TGuidField
      FieldName = 'UID_ref'
      Size = 38
    end
    object tTranOpDevValor: TByteField
      FieldName = 'OpDevValor'
    end
    object tTranIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tTranStatusNFE: TByteField
      FieldName = 'StatusNFE'
    end
    object tTranTipoNFE: TByteField
      FieldName = 'TipoNFE'
    end
    object tTranChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object tTranExtra: TnxMemoField
      FieldName = 'Extra'
      BlobType = ftMemo
    end
    object tTranAmbNFe: TByteField
      FieldName = 'AmbNFe'
    end
    object tTranStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object tTrantax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tTrantax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tTranTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tTranDescricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
    object tTranids_pagto: TStringField
      FieldName = 'ids_pagto'
    end
    object tTranComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tTranVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object tTranNomeCliente: TWideStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tTranEntregar: TBooleanField
      FieldName = 'Entregar'
    end
    object tTranendereco_entrega: TGuidField
      FieldName = 'endereco_entrega'
      Size = 38
    end
    object tTranTranspEnt: TLongWordField
      FieldName = 'TranspEnt'
    end
    object tTranFrete: TCurrencyField
      FieldName = 'Frete'
    end
    object tTranVenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object tTranHora: TByteField
      FieldName = 'Hora'
    end
    object tTrantranest: TBooleanField
      FieldName = 'tranest'
    end
    object tTrantrancx: TBooleanField
      FieldName = 'trancx'
    end
    object tTranTranspVol: TWordField
      FieldName = 'TranspVol'
    end
    object tTranTranspPesoB: TFloatField
      FieldName = 'TranspPesoB'
    end
    object tTranTranspPesoL: TFloatField
      FieldName = 'TranspPesoL'
    end
    object tTranTranspPesoVol: TByteField
      FieldName = 'TranspPesoVol'
    end
    object tTranUpdID: TGuidField
      FieldName = 'UpdID'
      Size = 38
    end
  end
  object tITran: TnxTable
    Database = nxDB
    BeforePost = tITranBeforePost
    BeforeDelete = tITranBeforeDelete
    OnCalcFields = tITranCalcFields
    TableName = 'ITran'
    IndexName = 'IID'
    Left = 72
    Top = 72
    object tITranDebito: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Debito'
      Calculated = True
    end
    object tITranID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tITranTran: TLongWordField
      FieldName = 'Tran'
    end
    object tITranCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tITranCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object tITranCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tITranSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tITranDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tITranTipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tITranTipoItem: TByteField
      FieldName = 'TipoItem'
    end
    object tITranSubTipo: TByteField
      FieldName = 'SubTipo'
    end
    object tITranItemID: TLongWordField
      FieldName = 'ItemID'
    end
    object tITranSubItemID: TLongWordField
      FieldName = 'SubItemID'
    end
    object tITranItemPos: TByteField
      FieldName = 'ItemPos'
    end
    object tITranTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tITranDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tITranTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tITranPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tITranCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tITranPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tITranFidFator: TShortintField
      FieldName = 'FidFator'
    end
    object tITranFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tITranFidMov: TBooleanField
      FieldName = 'FidMov'
    end
    object tITranFidOpe: TByteField
      FieldName = 'FidOpe'
    end
    object tITranRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tITranIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
  end
  object tUsuario: TnxTable
    Database = nxDB
    TableName = 'Usuario'
    IndexName = 'IUsername'
    Left = 24
    Top = 136
    object tUsuarioUsername: TStringField
      FieldName = 'Username'
    end
    object tUsuarioNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tUsuarioAdmin: TBooleanField
      FieldName = 'Admin'
    end
    object tUsuarioSenha: TStringField
      FieldName = 'Senha'
      Size = 30
    end
    object tUsuarioGrupos: TMemoField
      FieldName = 'Grupos'
      BlobType = ftMemo
    end
    object tUsuarioDireitos: TMemoField
      FieldName = 'Direitos'
      BlobType = ftMemo
    end
    object tUsuarioMaxTempoManut: TIntegerField
      FieldName = 'MaxTempoManut'
    end
    object tUsuarioMaxMaqManut: TIntegerField
      FieldName = 'MaxMaqManut'
    end
    object tUsuarioLimiteDesc: TFloatField
      FieldName = 'LimiteDesc'
    end
    object tUsuarioEmail: TWideStringField
      FieldName = 'Email'
      Size = 100
    end
    object tUsuarioInativo: TBooleanField
      FieldName = 'Inativo'
    end
  end
  object tConfig: TnxTable
    Database = nxDB
    TableName = 'Config'
    Left = 120
    Top = 72
  end
  object tCli: TnxTable
    Database = nxDB
    BeforePost = tCliBeforePost
    TableName = 'Cliente'
    IndexName = 'IID'
    Left = 24
    Top = 296
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
    object tCliRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tCliNaoContribICMS: TBooleanField
      FieldName = 'NaoContribICMS'
    end
    object tCliIsentoIE: TBooleanField
      FieldName = 'IsentoIE'
    end
    object tCliConsumidor: TBooleanField
      FieldName = 'Consumidor'
    end
    object tCliTipoFor: TByteField
      FieldName = 'TipoFor'
    end
    object tCliTranspEnt: TBooleanField
      FieldName = 'TranspEnt'
    end
    object tCliInfoExtra: TWideStringField
      FieldName = 'InfoExtra'
      Size = 50
    end
    object tCliTranspEntPadrao: TLongWordField
      FieldName = 'TranspEntPadrao'
    end
  end
  object tMovEst: TnxTable
    Database = nxDB
    OnCalcFields = tMovEstCalcFields
    TableName = 'MovEst'
    IndexName = 'ITranItem'
    Left = 216
    Top = 72
    object tMovEstFator: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Fator'
      Calculated = True
    end
    object tMovEstSaldoPost: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SaldoPost'
      Calculated = True
    end
    object tMovEstID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tMovEstTran: TLongWordField
      FieldName = 'Tran'
    end
    object tMovEstProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tMovEstQuant: TFloatField
      FieldName = 'Quant'
    end
    object tMovEstUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tMovEstTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tMovEstCustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object tMovEstItem: TByteField
      FieldName = 'Item'
    end
    object tMovEstDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tMovEstPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tMovEstPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tMovEstDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tMovEstDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tMovEstEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tMovEstCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tMovEstAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tMovEstEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object tMovEstCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tMovEstCaixa: TIntegerField
      FieldName = 'Caixa'
    end
    object tMovEstCategoria: TStringField
      FieldName = 'Categoria'
    end
    object tMovEstNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tMovEstITran: TIntegerField
      FieldName = 'ITran'
    end
    object tMovEstTipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tMovEstSessao: TIntegerField
      FieldName = 'Sessao'
    end
    object tMovEstComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tMovEstComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tMovEstComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tMovEstPermSemEstoque: TBooleanField
      FieldName = 'PermSemEstoque'
    end
    object tMovEstFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tMovEstFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tMovEstRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tMovEstID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object tMovEstIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tMovEstPend: TBooleanField
      FieldName = 'Pend'
    end
    object tMovEstUnitarioLiq: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'UnitarioLiq'
      Calculated = True
    end
    object tMovEsttax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tMovEsttax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tMovEsttax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tMovEstTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tMovEstDescr: TWideStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tMovEstDebDev: TCurrencyField
      FieldName = 'DebDev'
    end
    object tMovEstValorProdLiq: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorProdLiq'
      Calculated = True
    end
    object tMovEstTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tMovEstCustoT: TCurrencyField
      FieldName = 'CustoT'
    end
    object tMovEstLucro: TCurrencyField
      FieldName = 'Lucro'
    end
    object tMovEstVenDev: TBooleanField
      FieldName = 'VenDev'
    end
  end
  object tCaixa: TnxTable
    Database = nxDB
    TableName = 'Caixa'
    IndexName = 'IAberto'
    Left = 328
    Top = 192
    object tCaixaID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tCaixaIDLivre: TStringField
      FieldName = 'IDLivre'
      Size = 10
    end
    object tCaixaAberto: TBooleanField
      FieldName = 'Aberto'
    end
    object tCaixaUsuario: TStringField
      FieldName = 'Usuario'
    end
    object tCaixaAbertura: TDateTimeField
      FieldName = 'Abertura'
    end
    object tCaixaFechamento: TDateTimeField
      FieldName = 'Fechamento'
    end
    object tCaixaReproc: TDateTimeField
      FieldName = 'Reproc'
    end
    object tCaixaTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tCaixaDescontos: TCurrencyField
      FieldName = 'Descontos'
    end
    object tCaixaCancelamentos: TCurrencyField
      FieldName = 'Cancelamentos'
    end
    object tCaixaSangria: TCurrencyField
      FieldName = 'Sangria'
    end
    object tCaixaSupr: TCurrencyField
      FieldName = 'Supr'
    end
    object tCaixaSaldoAnt: TCurrencyField
      FieldName = 'SaldoAnt'
    end
    object tCaixaObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tCaixaEstSessoesQtd: TIntegerField
      FieldName = 'EstSessoesQtd'
    end
    object tCaixaEstSessoesTempo: TFloatField
      FieldName = 'EstSessoesTempo'
    end
    object tCaixaEstUrls: TIntegerField
      FieldName = 'EstUrls'
    end
    object tCaixaEstSyncOk: TBooleanField
      FieldName = 'EstSyncOk'
    end
    object tCaixaEstBuscasEng: TnxMemoField
      FieldName = 'EstBuscasEng'
      BlobType = ftMemo
    end
    object tCaixaEstRes: TnxMemoField
      FieldName = 'EstRes'
      BlobType = ftMemo
    end
    object tCaixaSaldoF: TCurrencyField
      FieldName = 'SaldoF'
    end
    object tCaixaQuebra: TCurrencyField
      FieldName = 'Quebra'
    end
    object tCaixaRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tProduto: TnxTable
    Database = nxDB
    TableName = 'Produto'
    IndexName = 'IID'
    Left = 168
    Top = 72
    object tProdutoID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tProdutoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tProdutoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tProdutoUnid: TStringField
      FieldName = 'Unid'
      Size = 5
    end
    object tProdutoPreco: TCurrencyField
      FieldName = 'Preco'
    end
    object tProdutoPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object tProdutoMargem: TFloatField
      FieldName = 'Margem'
    end
    object tProdutoObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tProdutoImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tProdutoCategoria: TStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object tProdutoFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tProdutoSubCateg: TStringField
      FieldName = 'SubCateg'
      Size = 35
    end
    object tProdutoCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
    end
    object tProdutoPodeAlterarPreco: TBooleanField
      FieldName = 'PodeAlterarPreco'
    end
    object tProdutoPermiteVendaFracionada: TBooleanField
      FieldName = 'PermiteVendaFracionada'
    end
    object tProdutoNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tProdutoEstoqueMin: TFloatField
      FieldName = 'EstoqueMin'
    end
    object tProdutoEstoqueMax: TFloatField
      FieldName = 'EstoqueMax'
    end
    object tProdutoAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object tProdutoAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
    end
    object tProdutoEstoqueRepor: TFloatField
      FieldName = 'EstoqueRepor'
    end
    object tProdutoComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tProdutoComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tProdutoAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object tProdutoFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object tProdutoFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object tProdutoCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object tProdutoIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tProdutoEstoqueAtual: TFloatField
      FieldName = 'EstoqueAtual'
    end
    object tProdutoEstoquePend: TFloatField
      FieldName = 'EstoquePend'
    end
    object tProdutoEstoqueTot: TFloatField
      FieldName = 'EstoqueTot'
    end
    object tProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object tProdutoNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object tProdutobrtrib: TWordField
      FieldName = 'brtrib'
    end
    object tProdutocest: TLongWordField
      FieldName = 'cest'
    end
    object tProdutoPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tProdutoPesoLiq: TFloatField
      FieldName = 'PesoLiq'
    end
    object tProdutotax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tProdutomodST: TByteField
      FieldName = 'modST'
    end
    object tProdutoMVA: TnxMemoField
      FieldName = 'MVA'
      BlobType = ftMemo
    end
    object tProdutoPauta: TnxMemoField
      FieldName = 'Pauta'
      BlobType = ftMemo
    end
    object tProdutoRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tAuxITran: TnxTable
    Database = nxDB
    OnCalcFields = tAuxITranCalcFields
    TableName = 'ITran'
    IndexName = 'IID'
    Left = 272
    Top = 72
    object tAuxITranDebito: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Debito'
      Calculated = True
    end
    object tAuxITranID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tAuxITranTran: TLongWordField
      FieldName = 'Tran'
    end
    object tAuxITranCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tAuxITranCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object tAuxITranCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tAuxITranSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tAuxITranDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tAuxITranTipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tAuxITranTipoItem: TByteField
      FieldName = 'TipoItem'
    end
    object tAuxITranSubTipo: TByteField
      FieldName = 'SubTipo'
    end
    object tAuxITranItemID: TLongWordField
      FieldName = 'ItemID'
    end
    object tAuxITranSubItemID: TLongWordField
      FieldName = 'SubItemID'
    end
    object tAuxITranItemPos: TByteField
      FieldName = 'ItemPos'
    end
    object tAuxITranTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tAuxITranDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tAuxITranTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tAuxITranPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tAuxITranCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tAuxITranPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tAuxITranFidFator: TShortintField
      FieldName = 'FidFator'
    end
    object tAuxITranFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tAuxITranFidMov: TBooleanField
      FieldName = 'FidMov'
    end
    object tAuxITranFidOpe: TByteField
      FieldName = 'FidOpe'
    end
  end
  object tAuxME: TnxTable
    Database = nxDB
    OnCalcFields = tAuxMECalcFields
    TableName = 'MovEst'
    IndexName = 'IProduto'
    Left = 216
    Top = 136
    object tAuxMEFator: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Fator'
      Calculated = True
    end
    object tAuxMESaldoPost: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SaldoPost'
      Calculated = True
    end
    object tAuxMEID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tAuxMETran: TLongWordField
      FieldName = 'Tran'
    end
    object tAuxMEProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tAuxMEQuant: TFloatField
      FieldName = 'Quant'
    end
    object tAuxMEUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tAuxMETotal: TCurrencyField
      FieldName = 'Total'
    end
    object tAuxMECustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object tAuxMEItem: TByteField
      FieldName = 'Item'
    end
    object tAuxMEDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tAuxMEPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tAuxMEPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tAuxMEDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tAuxMEDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tAuxMEEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tAuxMECancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tAuxMEAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tAuxMEEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object tAuxMECliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tAuxMECaixa: TIntegerField
      FieldName = 'Caixa'
    end
    object tAuxMECategoria: TStringField
      FieldName = 'Categoria'
    end
    object tAuxMENaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tAuxMEITran: TIntegerField
      FieldName = 'ITran'
    end
    object tAuxMETipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tAuxMESessao: TIntegerField
      FieldName = 'Sessao'
    end
    object tAuxMEComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tAuxMEComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tAuxMEComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tAuxMEPermSemEstoque: TBooleanField
      FieldName = 'PermSemEstoque'
    end
    object tAuxMEFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tAuxMEFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tAuxMERecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tAuxMEID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object tAuxMEIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tAuxMEPend: TBooleanField
      FieldName = 'Pend'
    end
    object tAuxMEtax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tAuxMEtax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tAuxMEtax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tAuxMETotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tAuxMEDebDev: TCurrencyField
      FieldName = 'DebDev'
    end
    object tAuxMETotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tAuxMECustoT: TCurrencyField
      FieldName = 'CustoT'
    end
    object tAuxMELucro: TCurrencyField
      FieldName = 'Lucro'
    end
    object tAuxMEDescr: TWideStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tAuxMEVenDev: TBooleanField
      FieldName = 'VenDev'
    end
  end
  object tDebito: TnxTable
    Database = nxDB
    TableName = 'Debito'
    IndexName = 'ITipoID'
    Left = 24
    Top = 248
    object tDebitoData: TDateTimeField
      FieldName = 'Data'
    end
    object tDebitoCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tDebitoValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tDebitoTipo: TByteField
      FieldName = 'Tipo'
    end
    object tDebitoID: TLongWordField
      FieldName = 'ID'
    end
  end
  object nxRSE: TnxRemoteServerEngine
    Transport = nxTCPIP
    Left = 120
    Top = 16
  end
  object nxTCPIP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 168
    Top = 16
  end
  object qAux: TnxQuery
    Database = nxDB
    Timeout = 240000
    Left = 216
    Top = 16
  end
  object tIC: TnxTable
    Database = nxDB
    TableName = 'infoCampanha'
    IndexName = 'IIP'
    Left = 72
    Top = 248
    object tICIP: TStringField
      FieldName = 'IP'
      Size = 15
    end
    object tICcampanha: TStringField
      FieldName = 'campanha'
      Size = 50
    end
    object tICutmccn: TStringField
      FieldName = 'utmccn'
      Size = 250
    end
    object tICutmctr: TStringField
      FieldName = 'utmctr'
      Size = 250
    end
    object tICutmcct: TStringField
      FieldName = 'utmcct'
      Size = 250
    end
    object tICutmcmd: TStringField
      FieldName = 'utmcmd'
      Size = 250
    end
    object tICutmcsr: TStringField
      FieldName = 'utmcsr'
      Size = 250
    end
  end
  object H: TIdHTTP
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 280
    Top = 24
  end
  object tEspecie: TnxTable
    Database = nxDB
    TableName = 'Especie'
    IndexName = 'IID'
    Left = 80
    Top = 296
    object tEspecieID: TWordField
      FieldName = 'ID'
    end
    object tEspecieTipo: TByteField
      FieldName = 'Tipo'
    end
    object tEspecieNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tEspeciePermiteTroco: TBooleanField
      FieldName = 'PermiteTroco'
    end
    object tEspeciePermiteVarios: TBooleanField
      FieldName = 'PermiteVarios'
    end
    object tEspeciePermiteCred: TBooleanField
      FieldName = 'PermiteCred'
    end
    object tEspecieImg: TWordField
      FieldName = 'Img'
    end
    object tEspecieRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tEspecieTipoPagNFE: TByteField
      FieldName = 'TipoPagNFE'
    end
  end
  object tPagEsp: TnxTable
    Database = nxDB
    TableName = 'PagEspecies'
    IndexName = 'IID'
    Left = 136
    Top = 296
    object tPagEspID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tPagEspCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tPagEspDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tPagEspTran: TLongWordField
      FieldName = 'Tran'
    end
    object tPagEspEspecie: TWordField
      FieldName = 'Especie'
    end
    object tPagEspTipo: TByteField
      FieldName = 'Tipo'
    end
    object tPagEspValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tPagEspTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object tPagEspDoc: TStringField
      FieldName = 'Doc'
      Size = 50
    end
    object tPagEspCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tPagEspDevolucao: TBooleanField
      FieldName = 'Devolucao'
    end
    object tPagEspTipoTran: TByteField
      FieldName = 'TipoTran'
    end
  end
  object tAuxTran: TnxTable
    Database = nxDB
    TableName = 'Tran'
    IndexName = 'IID'
    Left = 328
    Top = 136
    object tAuxTranUpdID: TGuidField
      FieldName = 'UpdID'
      Size = 38
    end
    object tAuxTranTranspPesoVol: TByteField
      FieldName = 'TranspPesoVol'
    end
    object tAuxTranFrete: TCurrencyField
      FieldName = 'Frete'
    end
    object tAuxTranids_pagto: TStringField
      FieldName = 'ids_pagto'
    end
    object tAuxTranID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tAuxTranUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tAuxTranDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tAuxTranCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tAuxTranTipo: TByteField
      FieldName = 'Tipo'
    end
    object tAuxTranTranspEnt: TLongWordField
      FieldName = 'TranspEnt'
    end
    object tAuxTranFunc: TStringField
      FieldName = 'Func'
    end
    object tAuxTranTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tAuxTranDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tAuxTranDescPerc: TFloatField
      FieldName = 'DescPerc'
    end
    object tAuxTranDescPorPerc: TBooleanField
      FieldName = 'DescPorPerc'
    end
    object tAuxTranTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tAuxTranPagEsp: TWordField
      FieldName = 'PagEsp'
    end
    object tAuxTranPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tAuxTranDebitoAnt: TCurrencyField
      FieldName = 'DebitoAnt'
    end
    object tAuxTranDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tAuxTranDebitoPago: TCurrencyField
      FieldName = 'DebitoPago'
    end
    object tAuxTranCreditoAnt: TCurrencyField
      FieldName = 'CreditoAnt'
    end
    object tAuxTranCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object tAuxTranCreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object tAuxTranTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object tAuxTranObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tAuxTranCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tAuxTranCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tAuxTranCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tAuxTranCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tAuxTranCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object tAuxTranMaq: TWordField
      FieldName = 'Maq'
    end
    object tAuxTranSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tAuxTranQtdTempo: TFloatField
      FieldName = 'QtdTempo'
    end
    object tAuxTranCredValor: TBooleanField
      FieldName = 'CredValor'
    end
    object tAuxTranFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tAuxTranPagFunc: TStringField
      FieldName = 'PagFunc'
    end
    object tAuxTranPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tAuxTranRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tAuxTranUID_ref: TGuidField
      FieldName = 'UID_ref'
      Size = 38
    end
    object tAuxTranOpDevValor: TByteField
      FieldName = 'OpDevValor'
    end
    object tAuxTranIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tAuxTranStatusNFE: TByteField
      FieldName = 'StatusNFE'
    end
    object tAuxTranChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object tAuxTranTipoNFE: TByteField
      FieldName = 'TipoNFE'
    end
    object tAuxTranExtra: TnxMemoField
      FieldName = 'Extra'
      BlobType = ftMemo
    end
    object tAuxTranAmbNFe: TByteField
      FieldName = 'AmbNFe'
    end
    object tAuxTranStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object tAuxTrantax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tAuxTrantax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tAuxTranTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tAuxTranDescricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
    object tAuxTranComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tAuxTranVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object tAuxTranNomeCliente: TWideStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tAuxTranEntregar: TBooleanField
      FieldName = 'Entregar'
    end
    object tAuxTranendereco_entrega: TGuidField
      FieldName = 'endereco_entrega'
      Size = 38
    end
    object tAuxTranVenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object tAuxTranHora: TByteField
      FieldName = 'Hora'
    end
    object tAuxTrantranest: TBooleanField
      FieldName = 'tranest'
    end
    object tAuxTrantrancx: TBooleanField
      FieldName = 'trancx'
    end
    object tAuxTranTranspVol: TWordField
      FieldName = 'TranspVol'
    end
    object tAuxTranTranspPesoB: TFloatField
      FieldName = 'TranspPesoB'
    end
    object tAuxTranTranspPesoL: TFloatField
      FieldName = 'TranspPesoL'
    end
  end
  object tOrc: TnxTable
    Database = nxDB
    TableName = 'Orcamento'
    IndexName = 'IStatusValData'
    Left = 376
    Top = 72
    object tOrcUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tOrcIDSeq: TUnsignedAutoIncField
      FieldName = 'IDSeq'
    end
    object tOrcCriadoEm: TDateTimeField
      FieldName = 'CriadoEm'
    end
    object tOrcStatus: TByteField
      FieldName = 'Status'
    end
    object tOrcAtualizadoEm: TDateTimeField
      FieldName = 'AtualizadoEm'
    end
    object tOrcAprovadoEm: TDateTimeField
      FieldName = 'AprovadoEm'
    end
    object tOrcRecusadoEm: TDateTimeField
      FieldName = 'RecusadoEm'
    end
    object tOrcVendidoEm: TDateTimeField
      FieldName = 'VendidoEm'
    end
    object tOrcExpiradoEm: TDateTimeField
      FieldName = 'ExpiradoEm'
    end
    object tOrcStatusAlteradoEm: TDateTimeField
      FieldName = 'StatusAlteradoEm'
    end
    object tOrcFunc: TStringField
      FieldName = 'Func'
    end
    object tOrcIDVenda: TLongWordField
      FieldName = 'IDVenda'
    end
    object tOrcCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tOrcTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tOrcDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tOrcTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tOrcVendido: TBooleanField
      FieldName = 'Vendido'
    end
    object tOrcValData: TDateTimeField
      FieldName = 'ValData'
    end
    object tOrcValModo: TByteField
      FieldName = 'ValModo'
    end
    object tOrcValTempo: TWordField
      FieldName = 'ValTempo'
    end
    object tOrcValUTempo: TByteField
      FieldName = 'ValUTempo'
    end
    object tOrcObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
  end
  object tSysLog: TnxTable
    Database = nxDB
    TableName = 'syslog'
    IndexName = 'IInfo'
    Left = 200
    Top = 192
    object tSysLogID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tSysLogDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tSysLogInfo: TStringField
      FieldName = 'Info'
      Size = 30
    end
    object tSysLogver: TWordField
      FieldName = 'ver'
    end
  end
  object mtDeb: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexName = 'mtDebIndex1'
    IndexDefs = <
      item
        Name = 'mtDebIndex1'
        Fields = 'Tipo;ID'
        Options = [ixCaseInsensitive]
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.72.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 264
    Top = 304
    object mtDebData: TDateTimeField
      FieldName = 'Data'
    end
    object mtDebValor: TCurrencyField
      FieldName = 'Valor'
    end
    object mtDebID: TLongWordField
      FieldName = 'ID'
    end
    object mtDebTipo: TByteField
      FieldName = 'Tipo'
    end
  end
  object tNFConfig: TnxTable
    Database = nxDB
    OnCalcFields = tNFConfigCalcFields
    TableName = 'NFCONFIG'
    Left = 424
    Top = 264
    object tNFConfigAssociarSignAC: TBooleanField
      FieldName = 'AssociarSignAC'
    end
    object tNFConfigEmitirNFCe: TBooleanField
      FieldName = 'EmitirNFCe'
    end
    object tNFConfigEmitirNFE: TBooleanField
      FieldName = 'EmitirNFE'
    end
    object tNFConfigCertificadoDig: TStringField
      FieldName = 'CertificadoDig'
      Size = 300
    end
    object tNFConfigAutoPrintNFCe: TBooleanField
      FieldName = 'AutoPrintNFCe'
    end
    object tNFConfigCRT: TByteField
      FieldName = 'CRT'
    end
    object tNFConfigNCM_Padrao: TStringField
      FieldName = 'NCM_Padrao'
      Size = 8
    end
    object tNFConfigMostrarDadosNFE: TBooleanField
      FieldName = 'MostrarDadosNFE'
    end
    object tNFConfigModeloNFE: TStringField
      FieldName = 'ModeloNFE'
      Size = 5
    end
    object tNFConfigModeloNFCe: TStringField
      FieldName = 'ModeloNFCe'
      Size = 5
    end
    object tNFConfigSerieNFCe: TStringField
      FieldName = 'SerieNFCe'
      Size = 5
    end
    object tNFConfigSerieNFe: TStringField
      FieldName = 'SerieNFe'
      Size = 5
    end
    object tNFConfigInicioNFe: TLongWordField
      FieldName = 'InicioNFe'
    end
    object tNFConfigInicioNFCe: TLongWordField
      FieldName = 'InicioNFCe'
    end
    object tNFConfigRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Size = 100
    end
    object tNFConfigNomeFantasia: TStringField
      FieldName = 'NomeFantasia'
      Size = 50
    end
    object tNFConfigCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object tNFConfigIE: TStringField
      FieldName = 'IE'
    end
    object tNFConfigEnd_Logradouro: TStringField
      FieldName = 'End_Logradouro'
      Size = 100
    end
    object tNFConfigEnd_Numero: TStringField
      FieldName = 'End_Numero'
      Size = 10
    end
    object tNFConfigEnd_Bairro: TStringField
      FieldName = 'End_Bairro'
      Size = 40
    end
    object tNFConfigEnd_UF: TStringField
      FieldName = 'End_UF'
      Size = 2
    end
    object tNFConfigEnd_CEP: TStringField
      FieldName = 'End_CEP'
      Size = 9
    end
    object tNFConfigEnd_Municipio: TStringField
      FieldName = 'End_Municipio'
      Size = 50
    end
    object tNFConfigEnd_CodMun: TStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object tNFConfigEnd_CodUF: TByteField
      FieldName = 'End_CodUF'
    end
    object tNFConfigTelefone: TStringField
      FieldName = 'Telefone'
    end
    object tNFConfigtpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object tNFConfigCSC: TStringField
      FieldName = 'CSC'
      Size = 100
    end
    object tNFConfigIdCSC: TStringField
      FieldName = 'IdCSC'
      Size = 10
    end
    object tNFConfigFromEmail: TStringField
      FieldName = 'FromEmail'
      Size = 100
    end
    object tNFConfigFromName: TStringField
      FieldName = 'FromName'
      Size = 50
    end
    object tNFConfigTrib_Padrao: TWordField
      FieldName = 'Trib_Padrao'
    end
    object tNFConfigPedirEmail: TByteField
      FieldName = 'PedirEmail'
    end
    object tNFConfigPedirCPF: TByteField
      FieldName = 'PedirCPF'
    end
    object tNFConfigEnd_Complemento: TStringField
      FieldName = 'End_Complemento'
    end
    object tNFConfigModeloNFCe_Email: TGuidField
      FieldName = 'ModeloNFCe_Email'
      Size = 38
    end
    object tNFConfigTipoCert: TByteField
      FieldName = 'TipoCert'
    end
    object tNFConfigUrls_Consulta: TnxMemoField
      FieldName = 'urls_consulta'
      BlobType = ftMemo
    end
    object tNFConfigUrls_qrcode_hom: TnxMemoField
      FieldName = 'urls_qrcode_hom'
      BlobType = ftMemo
    end
    object tNFConfigUrls_qrcode_prod: TnxMemoField
      FieldName = 'urls_qrcode_prod'
      BlobType = ftMemo
    end
    object tNFConfigAssuntoEmail: TStringField
      FieldName = 'AssuntoEmail'
      Size = 100
    end
    object tNFConfigRemoverNFCe: TBooleanField
      FieldName = 'RemoverNFCe'
    end
    object tNFConfigDependNFCEOk: TBooleanField
      FieldName = 'DependNFCEOk'
    end
    object tNFConfigCorpoEmail: TnxMemoField
      FieldName = 'CorpoEmail'
      BlobType = ftMemo
    end
    object tNFConfigPinCert: TStringField
      FieldName = 'PinCert'
      Size = 50
    end
    object tNFConfigTipo: TByteField
      FieldName = 'Tipo'
    end
    object tNFConfigNomeDllSat: TStringField
      FieldName = 'NomeDllSat'
      Size = 200
    end
    object tNFConfigSignACSat: TStringField
      FieldName = 'SignACSat'
      Size = 344
    end
    object tNFConfigDependSATOk: TBooleanField
      FieldName = 'DependSATOk'
    end
    object tNFConfigModeloSAT_Email: TGuidField
      FieldName = 'ModeloSAT_Email'
      Size = 38
    end
    object tNFConfigObsFisco: TnxMemoField
      FieldName = 'ObsFisco'
      BlobType = ftMemo
    end
    object tNFConfigCodigoAtivacao: TStringField
      FieldName = 'CodigoAtivacao'
      Size = 50
    end
    object tNFConfigDependNFEOk: TBooleanField
      FieldName = 'DependNFEOk'
    end
    object tNFConfigsat_modelo: TByteField
      FieldName = 'sat_modelo'
    end
    object tNFConfigsat_config: TStringField
      FieldName = 'sat_config'
      Size = 50
    end
    object tNFConfignfe_permite_cred_icms: TBooleanField
      FieldName = 'nfe_permite_cred_icms'
    end
    object tNFConfignfe_perc_cred_icms: TFloatField
      FieldName = 'nfe_perc_cred_icms'
    end
    object tNFConfigtpAmbNFE: TByteField
      FieldName = 'tpAmbNFE'
    end
    object tNFConfigModeloNFE_Email: TGuidField
      FieldName = 'ModeloNFE_Email'
      Size = 38
    end
    object tNFConfigconfig_nfe: TnxMemoField
      FieldName = 'config_nfe'
      BlobType = ftMemo
    end
    object tNFConfignfe_venda: TBooleanField
      FieldName = 'nfe_venda'
    end
    object tNFConfigtipodoc_padrao: TByteField
      FieldName = 'tipodoc_padrao'
    end
    object tNFConfignfe_venda_norm: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'nfe_venda_norm'
      Calculated = True
    end
    object tNFConfigcalc_tiponfe: TByteField
      FieldKind = fkCalculated
      FieldName = 'calc_tiponfe'
      Calculated = True
    end
    object tNFConfigESat: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'ESat'
      Calculated = True
    end
    object tNFConfigsat_esq: TByteField
      FieldName = 'sat_esq'
    end
    object tNFConfigcontabilidade: TStringField
      FieldName = 'contabilidade'
      Size = 19
    end
    object tNFConfigUsarPautaMaiorMVA: TBooleanField
      FieldName = 'UsarPautaMaiorMVA'
    end
    object tNFConfigexigir_peso_vol: TBooleanField
      FieldName = 'exigir_peso_vol'
    end
    object tNFConfigenviar_peso_vol_def: TBooleanField
      FieldName = 'enviar_peso_vol_def'
    end
    object tNFConfigauto_calc_peso_def: TBooleanField
      FieldName = 'auto_calc_peso_def'
    end
  end
  object tAuxNFE: TnxTable
    Database = nxDB
    TableName = 'NFE'
    IndexName = 'ITipoDoctpAmbModeloSerieNumero'
    Left = 472
    Top = 208
    object tAuxNFELogRec: TnxMemoField
      FieldName = 'LogRec'
      BlobType = ftMemo
    end
    object tAuxNFENumSeq: TUnsignedAutoIncField
      FieldName = 'NumSeq'
    end
    object tAuxNFEModelo: TStringField
      FieldName = 'Modelo'
      Size = 5
    end
    object tAuxNFESerie: TStringField
      FieldName = 'Serie'
      Size = 5
    end
    object tAuxNFENumero: TLongWordField
      FieldName = 'Numero'
    end
    object tAuxNFEChave: TStringField
      FieldName = 'Chave'
      Size = 44
    end
    object tAuxNFEEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tAuxNFETipoDoc: TByteField
      FieldName = 'TipoDoc'
    end
    object tAuxNFEDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tAuxNFECFOP: TWordField
      FieldName = 'CFOP'
    end
    object tAuxNFETran: TGuidField
      FieldName = 'Tran'
      Size = 38
    end
    object tAuxNFERecibo: TStringField
      DisplayWidth = 20
      FieldName = 'Recibo'
    end
    object tAuxNFEProtocolo: TStringField
      DisplayWidth = 20
      FieldName = 'Protocolo'
    end
    object tAuxNFEContingencia: TBooleanField
      FieldName = 'Contingencia'
    end
    object tAuxNFEStatus: TByteField
      FieldName = 'Status'
    end
    object tAuxNFEStatusNF: TIntegerField
      FieldName = 'StatusNF'
    end
    object tAuxNFEIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tAuxNFEEmitidoEm: TDateTimeField
      FieldName = 'EmitidoEm'
    end
    object tAuxNFEContingenciaEM: TDateTimeField
      FieldName = 'ContingenciaEM'
    end
    object tAuxNFEXMLdest: TnxMemoField
      FieldName = 'XMLdest'
      BlobType = ftMemo
    end
    object tAuxNFEXMLret: TnxMemoField
      FieldName = 'XMLret'
      BlobType = ftMemo
    end
    object tAuxNFEXMLtransCont: TnxMemoField
      FieldName = 'XMLtransCont'
      BlobType = ftMemo
    end
    object tAuxNFEXMLtrans: TnxMemoField
      FieldName = 'XMLtrans'
      BlobType = ftMemo
    end
    object tAuxNFExMotivo: TnxMemoField
      FieldName = 'xMotivo'
      BlobType = ftMemo
    end
    object tAuxNFEValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tAuxNFEtpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object tAuxNFEStatusInut: TByteField
      FieldName = 'StatusInut'
    end
    object tAuxNFEStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object tAuxNFECPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object tAuxNFEEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object tAuxNFEProtocoloCanc: TStringField
      DisplayWidth = 20
      FieldName = 'ProtocoloCanc'
    end
    object tAuxNFEStatusCancNF: TIntegerField
      FieldName = 'StatusCancNF'
    end
    object tAuxNFEJustCanc: TnxMemoField
      FieldName = 'JustCanc'
      BlobType = ftMemo
    end
    object tAuxNFExMotivoCanc: TnxMemoField
      FieldName = 'xMotivoCanc'
      BlobType = ftMemo
    end
    object tAuxNFECanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tAuxNFECanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tAuxNFExmlRetCanc: TnxMemoField
      FieldName = 'xmlRetCanc'
      BlobType = ftMemo
    end
    object tAuxNFEStatusInutNF: TIntegerField
      FieldName = 'StatusInutNF'
    end
    object tAuxNFEProtocoloInut: TStringField
      FieldName = 'ProtocoloInut'
    end
    object tAuxNFExMotivoInut: TnxMemoField
      FieldName = 'xMotivoInut'
      BlobType = ftMemo
    end
    object tAuxNFExmlRetInut: TnxMemoField
      FieldName = 'xmlRetInut'
      BlobType = ftMemo
    end
    object tAuxNFEUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tAuxNFEChaveCont: TStringField
      FieldName = 'ChaveCont'
      Size = 44
    end
    object tAuxNFEConsultouChave: TBooleanField
      FieldName = 'ConsultouChave'
    end
    object tAuxNFELogEnvio: TnxMemoField
      FieldName = 'LogEnvio'
      BlobType = ftMemo
    end
  end
  object tNCM: TnxTable
    Database = nxDB
    TableName = 'NCM'
    IndexName = 'INCM'
    Left = 424
    Top = 200
    object tNCMID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object tNCMEx: TStringField
      FieldName = 'Ex'
      Size = 2
    end
    object tNCMDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tNCMImpostoFed_Imp: TFloatField
      FieldName = 'ImpostoFed_Imp'
    end
    object tNCMImpostoFed_Nac: TFloatField
      FieldName = 'ImpostoFed_Nac'
    end
    object tNCMImpostoEst: TFloatField
      FieldName = 'ImpostoEst'
    end
    object tNCMImpostoMun: TFloatField
      FieldName = 'ImpostoMun'
    end
    object tNCMRECVER: TLongWordField
      FieldName = 'RECVER'
    end
  end
  object tNFE: TnxTable
    Database = nxDB
    TableName = 'NFE'
    IndexName = 'IChave'
    Left = 424
    Top = 152
    object tNFENumSeq: TUnsignedAutoIncField
      FieldName = 'NumSeq'
    end
    object tNFEModelo: TStringField
      FieldName = 'Modelo'
      Size = 5
    end
    object tNFESerie: TStringField
      FieldName = 'Serie'
      Size = 5
    end
    object tNFENumero: TLongWordField
      FieldName = 'Numero'
    end
    object tNFEChave: TStringField
      FieldName = 'Chave'
      Size = 44
    end
    object tNFEEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tNFETipoDoc: TByteField
      FieldName = 'TipoDoc'
    end
    object tNFEDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tNFECFOP: TWordField
      FieldName = 'CFOP'
    end
    object tNFETran: TGuidField
      FieldName = 'Tran'
      Size = 38
    end
    object tNFERecibo: TStringField
      DisplayWidth = 20
      FieldName = 'Recibo'
    end
    object tNFEProtocolo: TStringField
      DisplayWidth = 20
      FieldName = 'Protocolo'
    end
    object tNFEContingencia: TBooleanField
      FieldName = 'Contingencia'
    end
    object tNFEStatus: TByteField
      FieldName = 'Status'
    end
    object tNFEStatusNF: TIntegerField
      FieldName = 'StatusNF'
    end
    object tNFEIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tNFEEmitidoEm: TDateTimeField
      FieldName = 'EmitidoEm'
    end
    object tNFEContingenciaEM: TDateTimeField
      FieldName = 'ContingenciaEM'
    end
    object tNFEValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tNFEXMLdest: TnxMemoField
      FieldName = 'XMLdest'
      BlobType = ftMemo
    end
    object tNFEXMLret: TnxMemoField
      FieldName = 'XMLret'
      BlobType = ftMemo
    end
    object tNFEXMLtransCont: TnxMemoField
      FieldName = 'XMLtransCont'
      BlobType = ftMemo
    end
    object tNFExMotivo: TnxMemoField
      FieldName = 'xMotivo'
      BlobType = ftMemo
    end
    object tNFEXMLtrans: TnxMemoField
      FieldName = 'XMLtrans'
      BlobType = ftMemo
    end
    object tNFEtpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object tNFECPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object tNFEEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object tNFEStatusInut: TByteField
      FieldName = 'StatusInut'
    end
    object tNFEStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object tNFEProtocoloCanc: TStringField
      DisplayWidth = 20
      FieldName = 'ProtocoloCanc'
    end
    object tNFEStatusCancNF: TIntegerField
      FieldName = 'StatusCancNF'
    end
    object tNFEJustCanc: TnxMemoField
      FieldName = 'JustCanc'
      BlobType = ftMemo
    end
    object tNFExMotivoCanc: TnxMemoField
      FieldName = 'xMotivoCanc'
      BlobType = ftMemo
    end
    object tNFECanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tNFECanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tNFExmlRetCanc: TnxMemoField
      FieldName = 'xmlRetCanc'
      BlobType = ftMemo
    end
    object tNFEStatusInutNF: TIntegerField
      FieldName = 'StatusInutNF'
    end
    object tNFEProtocoloInut: TStringField
      FieldName = 'ProtocoloInut'
    end
    object tNFExMotivoInut: TnxMemoField
      FieldName = 'xMotivoInut'
      BlobType = ftMemo
    end
    object tNFExmlRetInut: TnxMemoField
      FieldName = 'xmlRetInut'
      BlobType = ftMemo
    end
    object tNFEUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tNFEChaveCont: TStringField
      FieldName = 'ChaveCont'
      Size = 44
    end
    object tNFEConsultouChave: TBooleanField
      FieldName = 'ConsultouChave'
    end
    object tNFELogRec: TnxMemoField
      FieldName = 'LogRec'
      BlobType = ftMemo
    end
    object tNFELogEnvio: TnxMemoField
      FieldName = 'LogEnvio'
      BlobType = ftMemo
    end
    object tNFETotalNF: TCurrencyField
      FieldName = 'TotalNF'
    end
  end
  object tBRTrib: TnxTable
    Database = nxDB
    TableName = 'BRTrib'
    IndexName = 'IID'
    Left = 472
    Top = 152
    object tBRTribID: TWordField
      FieldName = 'ID'
    end
    object tBRTribNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tBRTribOrigem: TByteField
      FieldName = 'Origem'
    end
    object tBRTribCST: TWordField
      FieldName = 'CST'
    end
    object tBRTribCSOSN: TWordField
      FieldName = 'CSOSN'
    end
    object tBRTribICMS: TFloatField
      FieldName = 'ICMS'
    end
    object tBRTribPadrao: TBooleanField
      FieldName = 'Padrao'
    end
    object tBRTribCFOP_nfce: TWordField
      FieldName = 'CFOP_nfce'
    end
    object tBRTribNFE_CredIcms: TBooleanField
      FieldName = 'NFE_CredIcms'
    end
    object tBRTribICMSSt: TnxMemoField
      FieldName = 'ICMSSt'
      BlobType = ftMemo
    end
  end
  object tDoc: TnxTable
    Database = nxDB
    TableName = 'Doc'
    IndexName = 'IUID'
    Left = 488
    Top = 72
    object tDocID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tDocUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tDocTipo: TByteField
      FieldName = 'Tipo'
    end
    object tDocBobina: TBooleanField
      FieldName = 'Bobina'
    end
    object tDocFree: TBooleanField
      FieldName = 'Free'
    end
    object tDocTextOnly: TBooleanField
      FieldName = 'TextOnly'
    end
    object tDocTamanho: TStringField
      FieldName = 'Tamanho'
    end
    object tDocParams: TnxMemoField
      FieldName = 'Params'
      BlobType = ftMemo
    end
    object tDocDoc: TBlobField
      FieldName = 'Doc'
    end
    object tDocImg: TGraphicField
      FieldName = 'Img'
      BlobType = ftGraphic
    end
    object tDocCustom: TBooleanField
      FieldName = 'Custom'
    end
    object tDocMinVer: TWordField
      FieldName = 'MinVer'
    end
    object tDocSRECVER: TLongWordField
      FieldName = 'SRECVER'
    end
    object tDocRECVER: TLongWordField
      FieldName = 'RECVER'
    end
    object tDocPais: TStringField
      FieldName = 'Pais'
      Size = 2
    end
    object tDocLingua: TStringField
      FieldName = 'Lingua'
      Size = 5
    end
    object tDocNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object tDocObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tDocMaxVer: TWordField
      FieldName = 'MaxVer'
    end
  end
  object tProdFor: TnxTable
    Database = nxDB
    TableName = 'ProdFor'
    IndexName = 'IProdFor'
    Left = 384
    Top = 336
    object tProdForUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tProdForProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tProdForFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tProdForRef: TStringField
      FieldName = 'Ref'
    end
    object tProdForPos: TWordField
      FieldName = 'Pos'
    end
  end
  object tCred: TnxTable
    Database = nxDB
    TableName = 'Credito'
    IndexName = 'IID'
    Left = 168
    Top = 136
    object tCredID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tCredDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tCredFunc: TStringField
      FieldName = 'Func'
    end
    object tCredAdicionar: TBooleanField
      FieldName = 'Adicionar'
    end
    object tCredTran: TLongWordField
      FieldName = 'Tran'
    end
    object tCredCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tCredCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tCredCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tCredValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tCredFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tCredFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tCredRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object TimerCest: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = TimerCestTimer
    Left = 560
    Top = 208
  end
  object tMovEstTax: TnxTable
    Database = nxDB
    TableName = 'movest_tax'
    IndexName = 'I_movest_tax_id'
    Left = 560
    Top = 56
    object tMovEstTaxmovest: TLongWordField
      FieldName = 'movest'
    end
    object tMovEstTaxtax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tMovEstTaxnome: TWideStringField
      FieldName = 'nome'
      Size = 40
    end
    object tMovEstTaxincluido: TBooleanField
      FieldName = 'incluido'
    end
    object tMovEstTaxperc: TFloatField
      FieldName = 'perc'
    end
    object tMovEstTaxvalor: TCurrencyField
      FieldName = 'valor'
    end
  end
  object tTax: TnxTable
    Database = nxDB
    TableName = 'tax'
    IndexName = 'I_tax_id'
    Left = 624
    Top = 56
    object tTaxtax_id: TUnsignedAutoIncField
      FieldName = 'tax_id'
    end
    object tTaxnome: TWideStringField
      FieldName = 'nome'
      Size = 40
    end
    object tTaxincluido: TBooleanField
      FieldName = 'incluido'
    end
    object tTaxperc: TFloatField
      FieldName = 'perc'
    end
    object tTaxgrupo: TBooleanField
      FieldName = 'grupo'
    end
  end
  object tTaxItens: TnxTable
    Database = nxDB
    TableName = 'tax_itens'
    IndexName = 'I_grupo_item'
    Left = 704
    Top = 56
    object tTaxItensgrupo: TLongWordField
      FieldName = 'grupo'
    end
    object tTaxItensitem: TLongWordField
      FieldName = 'item'
    end
  end
  object tCard: TnxTable
    Database = nxDB
    TableName = 'Card'
    IndexName = 'I_card_id'
    Left = 648
    Top = 160
  end
  object tPost_nexapp: TnxTable
    Database = nxDB
    TableName = 'post_nexapp'
    IndexName = 'IID'
    Left = 704
    Top = 160
  end
  object tBrtrib_tipo: TnxTable
    Database = nxDB
    TableName = 'brtrib_tipo'
    IndexName = 'I_tipo_brtrib'
    Left = 664
    Top = 272
    object tBrtrib_tipoid_brtrib: TWordField
      FieldName = 'id_brtrib'
    end
    object tBrtrib_tipocsosn: TLongWordField
      FieldName = 'csosn'
    end
    object tBrtrib_tipocfop: TLongWordField
      FieldName = 'cfop'
    end
    object tBrtrib_tipoobsfiscal: TWideMemoField
      FieldName = 'obsfiscal'
      BlobType = ftWideMemo
    end
    object tBrtrib_tipoicms: TFloatField
      FieldName = 'icms'
    end
    object tBrtrib_tipolocal: TByteField
      FieldName = 'local'
    end
    object tBrtrib_tipotipo: TByteField
      FieldName = 'tipo'
    end
  end
  object tTipoTran: TnxTable
    Database = nxDB
    TableName = 'tipotran'
    IndexName = 'I_tipo'
    Left = 192
    Top = 272
    object tTipoTrantipo: TByteField
      FieldName = 'tipo'
    end
    object tTipoTranuser: TBooleanField
      FieldName = 'user'
    end
    object tTipoTranestoque: TBooleanField
      FieldName = 'estoque'
    end
    object tTipoTrancaixa: TBooleanField
      FieldName = 'caixa'
    end
    object tTipoTrannome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object tTipoTranentrada: TBooleanField
      FieldName = 'entrada'
    end
    object tTipoTranemite_nfe: TBooleanField
      FieldName = 'emite_nfe'
    end
    object tTipoTranmovest: TBooleanField
      FieldName = 'movest'
    end
    object tTipoTranatualiza_custo: TBooleanField
      FieldName = 'atualiza_custo'
    end
    object tTipoTranvisivel: TBooleanField
      FieldName = 'visivel'
    end
    object tTipoTranpagto: TBooleanField
      FieldName = 'pagto'
    end
    object tTipoTransel_endereco: TBooleanField
      FieldName = 'sel_endereco'
    end
    object tTipoTrantipocad: TByteField
      FieldName = 'tipocad'
    end
    object tTipoTranprecocusto_nfe: TBooleanField
      FieldName = 'precocusto_nfe'
    end
  end
end
