object dmProcDados_Sped: TdmProcDados_Sped
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 257
  Width = 390
  object tXMLCompra: TnxTable
    Database = nxDB
    TableName = 'xmls_compra'
    IndexName = 'ITran'
    Left = 232
    Top = 143
    object tXMLCompraChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object tXMLCompraID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tXMLCompraUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tXMLCompraxml: TnxMemoField
      FieldName = 'xml'
      BlobType = ftMemo
    end
    object tXMLCompraTran: TLongWordField
      FieldName = 'Tran'
    end
  end
  object tC190Sped: TnxTable
    Database = nxDB
    TableName = 'Sped_C190'
    IndexName = 'ITranCfopCstAliq'
    Left = 168
    Top = 144
    object tC190SpedID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tC190SpedTran: TLongWordField
      FieldName = 'Tran'
    end
    object tC190SpedCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Size = 5
    end
    object tC190SpedCFOP: TStringField
      FieldName = 'CFOP'
      Size = 8
    end
    object tC190SpedALIQ_ICMS: TCurrencyField
      FieldName = 'ALIQ_ICMS'
    end
    object tC190SpedVl_OPER: TCurrencyField
      FieldName = 'Vl_OPER'
    end
    object tC190SpedVL_BC_ICMS: TCurrencyField
      FieldName = 'VL_BC_ICMS'
    end
    object tC190SpedVL_ICMS: TCurrencyField
      FieldName = 'VL_ICMS'
    end
    object tC190SpedVL_BC_ICMS_ST: TCurrencyField
      FieldName = 'VL_BC_ICMS_ST'
    end
    object tC190SpedVL_ICMS_ST: TCurrencyField
      FieldName = 'VL_ICMS_ST'
    end
    object tC190SpedVL_RED_BC: TCurrencyField
      FieldName = 'VL_RED_BC'
    end
    object tC190SpedVL_IPI: TCurrencyField
      FieldName = 'VL_IPI'
    end
    object tC190SpedCOD_OBS: TStringField
      FieldName = 'COD_OBS'
      Size = 6
    end
  end
  object tE210Sped: TnxTable
    Database = nxDB
    TableName = 'Sped_E210'
    IndexName = 'IdUFDataApuracao'
    Left = 104
    Top = 144
    object tE210SpedID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tE210SpedID_UF: TLongWordField
      FieldName = 'ID_UF'
    end
    object tE210SpedDT_APURACAO: TDateField
      FieldName = 'DT_APURACAO'
    end
    object tE210SpedIND_MOV_ST: TCurrencyField
      FieldName = 'IND_MOV_ST'
    end
    object tE210SpedVL_SLD_CRED_ANT_ST: TCurrencyField
      FieldName = 'VL_SLD_CRED_ANT_ST'
    end
    object tE210SpedVL_DEVOL_ST: TCurrencyField
      FieldName = 'VL_DEVOL_ST'
    end
    object tE210SpedVL_RESSARC_ST: TCurrencyField
      FieldName = 'VL_RESSARC_ST'
    end
    object tE210SpedVL_OUT_CRED_ST: TCurrencyField
      FieldName = 'VL_OUT_CRED_ST'
    end
    object tE210SpedVL_AJ_CREDITOS_ST: TCurrencyField
      FieldName = 'VL_AJ_CREDITOS_ST'
    end
    object tE210SpedVL_RETENCAO_ST: TCurrencyField
      FieldName = 'VL_RETENCAO_ST'
    end
    object tE210SpedVL_OUT_DEB_ST: TCurrencyField
      FieldName = 'VL_OUT_DEB_ST'
    end
    object tE210SpedVL_AJ_DEBITOS_ST: TCurrencyField
      FieldName = 'VL_AJ_DEBITOS_ST'
    end
    object tE210SpedVL_SLD_DEV_ANT_ST: TCurrencyField
      FieldName = 'VL_SLD_DEV_ANT_ST'
    end
    object tE210SpedVL_DEDUCOES_ST: TCurrencyField
      FieldName = 'VL_DEDUCOES_ST'
    end
    object tE210SpedVL_ICMS_RECOL_ST: TCurrencyField
      FieldName = 'VL_ICMS_RECOL_ST'
    end
    object tE210SpedVL_SLD_CRED_ST_TRAN: TCurrencyField
      FieldName = 'VL_SLD_CRED_ST_TRAN'
    end
    object tE210SpedDEB_ESP_ST: TCurrencyField
      FieldName = 'DEB_ESP_ST'
    end
    object tE210SpedTran: TLongWordField
      FieldName = 'Tran'
    end
  end
  object tMovEstSped: TnxTable
    Database = nxDB
    TableName = 'movEst_Sped'
    IndexName = 'TranProd'
    Left = 32
    Top = 144
    object tMovEstSpedID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tMovEstSpedTran: TLongWordField
      FieldName = 'Tran'
    end
    object tMovEstSpedMovEst: TLongWordField
      FieldName = 'MovEst'
    end
    object tMovEstSpedProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tMovEstSpedData: TDateField
      FieldName = 'Data'
    end
    object tMovEstSpedNum_Item: TLongWordField
      FieldName = 'Num_Item'
    end
    object tMovEstSpedNum_Item_XML: TLongWordField
      FieldName = 'Num_Item_XML'
    end
    object tMovEstSpedCod_Item: TStringField
      FieldName = 'Cod_Item'
      Size = 15
    end
    object tMovEstSpedDescr_compl: TStringField
      FieldName = 'Descr_compl'
      Size = 100
    end
    object tMovEstSpedQTD: TCurrencyField
      FieldName = 'QTD'
    end
    object tMovEstSpedUnid: TStringField
      FieldName = 'Unid'
      Size = 6
    end
    object tMovEstSpedvl_item: TCurrencyField
      FieldName = 'vl_item'
    end
    object tMovEstSpedvl_desc: TCurrencyField
      FieldName = 'vl_desc'
    end
    object tMovEstSpedind_mov: TStringField
      FieldName = 'ind_mov'
      Size = 2
    end
    object tMovEstSpedcst_icms: TStringField
      FieldName = 'cst_icms'
      Size = 3
    end
    object tMovEstSpedcfop: TStringField
      FieldName = 'cfop'
      Size = 4
    end
    object tMovEstSpedcod_nat: TStringField
      FieldName = 'cod_nat'
      Size = 10
    end
    object tMovEstSpedvl_bc_icms: TCurrencyField
      FieldName = 'vl_bc_icms'
    end
    object tMovEstSpedaliq_icms: TCurrencyField
      FieldName = 'aliq_icms'
    end
    object tMovEstSpedvl_icms: TCurrencyField
      FieldName = 'vl_icms'
    end
    object tMovEstSpedvl_bc_icms_st: TCurrencyField
      FieldName = 'vl_bc_icms_st'
    end
    object tMovEstSpedaliq_st: TCurrencyField
      FieldName = 'aliq_st'
    end
    object tMovEstSpedvl_icms_st: TCurrencyField
      FieldName = 'vl_icms_st'
    end
    object tMovEstSpedind_apur: TStringField
      FieldName = 'ind_apur'
      Size = 1
    end
    object tMovEstSpedcst_ipi: TStringField
      FieldName = 'cst_ipi'
      Size = 2
    end
    object tMovEstSpedcod_enq: TStringField
      FieldName = 'cod_enq'
      Size = 3
    end
    object tMovEstSpedvl_bc_ipi: TCurrencyField
      FieldName = 'vl_bc_ipi'
    end
    object tMovEstSpedaliq_ipi: TCurrencyField
      FieldName = 'aliq_ipi'
    end
    object tMovEstSpedvl_ipi: TCurrencyField
      FieldName = 'vl_ipi'
    end
    object tMovEstSpedcst_pis: TCurrencyField
      FieldName = 'cst_pis'
    end
    object tMovEstSpedvl_bc_pis: TCurrencyField
      FieldName = 'vl_bc_pis'
    end
    object tMovEstSpedaliq_pis_perc: TCurrencyField
      FieldName = 'aliq_pis_perc'
    end
    object tMovEstSpedquant_bc_pis: TCurrencyField
      FieldName = 'quant_bc_pis'
    end
    object tMovEstSpedaliq_pis: TCurrencyField
      FieldName = 'aliq_pis'
    end
    object tMovEstSpedvl_pis: TCurrencyField
      FieldName = 'vl_pis'
    end
    object tMovEstSpedcst_cofins: TCurrencyField
      FieldName = 'cst_cofins'
    end
    object tMovEstSpedvl_bc_cofins: TCurrencyField
      FieldName = 'vl_bc_cofins'
    end
    object tMovEstSpedaliq_cofins_perc: TCurrencyField
      FieldName = 'aliq_cofins_perc'
    end
    object tMovEstSpedquant_bc_cofins: TCurrencyField
      FieldName = 'quant_bc_cofins'
    end
    object tMovEstSpedaliq_cofins: TCurrencyField
      FieldName = 'aliq_cofins'
    end
    object tMovEstSpedvl_cofins: TCurrencyField
      FieldName = 'vl_cofins'
    end
    object tMovEstSpedcod_cta: TStringField
      FieldName = 'cod_cta'
    end
  end
  object tMovEst: TnxTable
    Database = nxDB
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
    object tMovEstObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tMovEstUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tMovEstDadosFiscais: TnxMemoField
      FieldName = 'DadosFiscais'
      BlobType = ftMemo
    end
    object tMovEstDataSped: TDateField
      FieldName = 'DataSped'
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
    object tProdutoPreco: TCurrencyField
      FieldName = 'Preco'
    end
    object tProdutoPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object tProdutoMargem: TFloatField
      FieldName = 'Margem'
    end
    object tProdutoImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tProdutoFornecedor: TLongWordField
      FieldName = 'Fornecedor'
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
    object su: TLongWordField
      FieldName = 'RecVer'
    end
    object tProdutoUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tProdutoMarca: TGuidField
      FieldName = 'Marca'
      Size = 38
    end
    object tProdutoCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tProdutoDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tProdutoAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tProdutoAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 30
    end
    object tProdutoCategoria: TWideStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object tProdutoUnid: TWideStringField
      FieldName = 'Unid'
      Size = 5
    end
    object tProdutoObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
  end
  object tTran: TnxTable
    Database = nxDB
    TableName = 'Tran'
    IndexName = 'IprocessaSpedvSped'
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
    object tTranDataNF: TDateField
      FieldName = 'DataNF'
    end
    object tTranprocessaSped: TByteField
      FieldName = 'processaSped'
    end
    object tTranErroProcSped: TMemoField
      FieldName = 'ErroProcSped'
      BlobType = ftMemo
      Size = 500
    end
    object tTranvSped: TWordField
      FieldName = 'vSped'
    end
  end
  object nxTCPIP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 168
    Top = 16
  end
  object nxRSE: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = nxTCPIP
    Left = 120
    Top = 16
  end
  object nxDB: TnxDatabase
    ActiveDesigntime = True
    Session = nxSession
    AliasName = 'NexCafe'
    Left = 72
    Top = 16
  end
  object nxSession: TnxSession
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRSE
    Left = 24
    Top = 16
  end
  object tConfig: TnxTable
    Database = nxDB
    TableName = 'Config'
    Left = 120
    Top = 72
  end
  object tNFE: TnxTable
    Database = nxDB
    TableName = 'NFE'
    IndexName = 'ITran'
    Left = 287
    Top = 143
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
end
