object dmSolicitacoes_Sped: TdmSolicitacoes_Sped
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 252
  Width = 592
  object tbEstabelecimento: TnxTable
    Database = nxDB
    TableName = 'NFCONFIG'
    Left = 56
    Top = 136
    object tbEstabelecimentoID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbEstabelecimentoUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tbEstabelecimentoEmitirNFCe: TBooleanField
      FieldName = 'EmitirNFCe'
    end
    object tbEstabelecimentonfe_pedido_na_obs: TBooleanField
      FieldName = 'nfe_pedido_na_obs'
    end
    object tbEstabelecimentoTipo: TByteField
      FieldName = 'Tipo'
    end
    object tbEstabelecimentoRemoverNFCe: TBooleanField
      FieldName = 'RemoverNFCe'
    end
    object tbEstabelecimentoUsarPautaMaiorMVA: TBooleanField
      FieldName = 'UsarPautaMaiorMVA'
    end
    object tbEstabelecimentoEmitirNFE: TBooleanField
      FieldName = 'EmitirNFE'
    end
    object tbEstabelecimentoCertificadoDig: TStringField
      FieldName = 'CertificadoDig'
      Size = 300
    end
    object tbEstabelecimentosat_modelo: TByteField
      FieldName = 'sat_modelo'
    end
    object tbEstabelecimentosat_config: TStringField
      FieldName = 'sat_config'
      Size = 50
    end
    object tbEstabelecimentosat_esq: TByteField
      FieldName = 'sat_esq'
    end
    object tbEstabelecimentonfe_permite_cred_icms: TBooleanField
      FieldName = 'nfe_permite_cred_icms'
    end
    object tbEstabelecimentonfe_perc_cred_icms: TFloatField
      FieldName = 'nfe_perc_cred_icms'
    end
    object tbEstabelecimentoContabilidade: TStringField
      FieldName = 'Contabilidade'
      Size = 19
    end
    object tbEstabelecimentoexigir_peso_vol: TBooleanField
      FieldName = 'exigir_peso_vol'
    end
    object tbEstabelecimentoenviar_peso_vol_def: TBooleanField
      FieldName = 'enviar_peso_vol_def'
    end
    object tbEstabelecimentoauto_calc_peso_def: TBooleanField
      FieldName = 'auto_calc_peso_def'
    end
    object tbEstabelecimentonfe_venda: TBooleanField
      FieldName = 'nfe_venda'
    end
    object tbEstabelecimentotipodoc_padrao: TByteField
      FieldName = 'tipodoc_padrao'
    end
    object tbEstabelecimentoPinCert: TStringField
      FieldName = 'PinCert'
      Size = 50
    end
    object tbEstabelecimentoDependNFCEOk: TBooleanField
      FieldName = 'DependNFCEOk'
    end
    object tbEstabelecimentoDependSATOk: TBooleanField
      FieldName = 'DependSATOk'
    end
    object tbEstabelecimentoDependNFEOk: TBooleanField
      FieldName = 'DependNFEOk'
    end
    object tbEstabelecimentoTipoCert: TByteField
      FieldName = 'TipoCert'
    end
    object tbEstabelecimentoAutoPrintNFCe: TBooleanField
      FieldName = 'AutoPrintNFCe'
    end
    object tbEstabelecimentoCRT: TByteField
      FieldName = 'CRT'
    end
    object tbEstabelecimentoNCM_Padrao: TStringField
      FieldName = 'NCM_Padrao'
      Size = 8
    end
    object tbEstabelecimentoTrib_Padrao: TWordField
      FieldName = 'Trib_Padrao'
    end
    object tbEstabelecimentoMostrarDadosNFE: TBooleanField
      FieldName = 'MostrarDadosNFE'
    end
    object tbEstabelecimentoModeloNFE: TStringField
      FieldName = 'ModeloNFE'
      Size = 5
    end
    object tbEstabelecimentoModeloNFCe: TStringField
      FieldName = 'ModeloNFCe'
      Size = 5
    end
    object tbEstabelecimentoSerieNFCe: TStringField
      FieldName = 'SerieNFCe'
      Size = 5
    end
    object tbEstabelecimentoSerieNFe: TStringField
      FieldName = 'SerieNFe'
      Size = 5
    end
    object tbEstabelecimentoNomeDllSat: TStringField
      FieldName = 'NomeDllSat'
      Size = 200
    end
    object tbEstabelecimentoSignACSat: TStringField
      FieldName = 'SignACSat'
      Size = 344
    end
    object tbEstabelecimentoCodigoAtivacao: TStringField
      FieldName = 'CodigoAtivacao'
      Size = 50
    end
    object tbEstabelecimentoAssociarSignAC: TBooleanField
      FieldName = 'AssociarSignAC'
    end
    object tbEstabelecimentoInicioNFe: TLongWordField
      FieldName = 'InicioNFe'
    end
    object tbEstabelecimentoInicioNFCe: TLongWordField
      FieldName = 'InicioNFCe'
    end
    object tbEstabelecimentoRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Size = 100
    end
    object tbEstabelecimentoNomeFantasia: TStringField
      FieldName = 'NomeFantasia'
      Size = 50
    end
    object tbEstabelecimentoCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object tbEstabelecimentoIE: TStringField
      FieldName = 'IE'
    end
    object tbEstabelecimentoEnd_Logradouro: TStringField
      FieldName = 'End_Logradouro'
      Size = 100
    end
    object tbEstabelecimentoEnd_Numero: TStringField
      FieldName = 'End_Numero'
      Size = 10
    end
    object tbEstabelecimentoEnd_Complemento: TStringField
      FieldName = 'End_Complemento'
    end
    object tbEstabelecimentoEnd_Bairro: TStringField
      FieldName = 'End_Bairro'
      Size = 40
    end
    object tbEstabelecimentoEnd_UF: TStringField
      FieldName = 'End_UF'
      Size = 2
    end
    object tbEstabelecimentoEnd_CEP: TStringField
      FieldName = 'End_CEP'
      Size = 9
    end
    object tbEstabelecimentoEnd_Municipio: TStringField
      FieldName = 'End_Municipio'
      Size = 50
    end
    object tbEstabelecimentoEnd_CodMun: TStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object tbEstabelecimentoEnd_CodUF: TByteField
      FieldName = 'End_CodUF'
    end
    object tbEstabelecimentoTelefone: TStringField
      FieldName = 'Telefone'
    end
    object tbEstabelecimentotpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object tbEstabelecimentotpAmbNFE: TByteField
      FieldName = 'tpAmbNFE'
    end
    object tbEstabelecimentoCSC: TStringField
      FieldName = 'CSC'
      Size = 100
    end
    object tbEstabelecimentoIdCSC: TStringField
      FieldName = 'IdCSC'
      Size = 10
    end
    object tbEstabelecimentoPedirEmail: TByteField
      FieldName = 'PedirEmail'
    end
    object tbEstabelecimentoPedirCPF: TByteField
      FieldName = 'PedirCPF'
    end
    object tbEstabelecimentoFromEmail: TStringField
      FieldName = 'FromEmail'
      Size = 100
    end
    object tbEstabelecimentoAssuntoEmail: TStringField
      FieldName = 'AssuntoEmail'
      Size = 100
    end
    object tbEstabelecimentoFromName: TStringField
      FieldName = 'FromName'
      Size = 50
    end
    object tbEstabelecimentoCorpoEmail: TnxMemoField
      FieldName = 'CorpoEmail'
      BlobType = ftMemo
    end
    object tbEstabelecimentoModeloNFCe_Email: TGuidField
      FieldName = 'ModeloNFCe_Email'
      Size = 38
    end
    object tbEstabelecimentoModeloSAT_Email: TGuidField
      FieldName = 'ModeloSAT_Email'
      Size = 38
    end
    object tbEstabelecimentoModeloNFE_Email: TGuidField
      FieldName = 'ModeloNFE_Email'
      Size = 38
    end
    object tbEstabelecimentourls_qrcode_hom: TnxMemoField
      FieldName = 'urls_qrcode_hom'
      BlobType = ftMemo
    end
    object tbEstabelecimentourls_qrcode_prod: TnxMemoField
      FieldName = 'urls_qrcode_prod'
      BlobType = ftMemo
    end
    object tbEstabelecimentourls_consulta: TnxMemoField
      FieldName = 'urls_consulta'
      BlobType = ftMemo
    end
    object tbEstabelecimentoconfig_nfe: TnxMemoField
      FieldName = 'config_nfe'
      BlobType = ftMemo
    end
    object tbEstabelecimentoObsFisco: TnxMemoField
      FieldName = 'ObsFisco'
      BlobType = ftMemo
    end
  end
  object bl0200: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'cod_item'
        DataType = ftInteger
      end
      item
        Name = 'descr_item'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_barra'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_ant_item'
        DataType = ftInteger
      end
      item
        Name = 'unid_inv'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'tipo_item'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'cod_ncm'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ex_IPI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'cod_gen'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'cod_lst'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'aliq_icms'
        DataType = ftFloat
      end
      item
        Name = 'cod_CEST'
        DataType = ftString
        Size = 8
      end>
    IndexFieldNames = 'cod_item'
    IndexName = 'bl0200Index1'
    IndexDefs = <
      item
        Name = 'bl0200Index1'
        Fields = 'cod_item'
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
    Left = 328
    Top = 16
    object bl0200cod_item: TIntegerField
      FieldName = 'cod_item'
    end
    object bl0200descr_item: TStringField
      FieldName = 'descr_item'
    end
    object bl0200cod_barra: TStringField
      FieldName = 'cod_barra'
    end
    object bl0200cod_ant_item: TIntegerField
      FieldName = 'cod_ant_item'
    end
    object bl0200unid_inv: TStringField
      FieldName = 'unid_inv'
      Size = 6
    end
    object bl0200tipo_item: TStringField
      FieldName = 'tipo_item'
      Size = 2
    end
    object bl0200cod_ncm: TStringField
      FieldName = 'cod_ncm'
      Size = 8
    end
    object bl0200ex_IPI: TStringField
      FieldName = 'ex_IPI'
      Size = 3
    end
    object bl0200cod_gen: TStringField
      FieldName = 'cod_gen'
      Size = 2
    end
    object bl0200cod_lst: TStringField
      FieldName = 'cod_lst'
      Size = 4
    end
    object bl0200aliq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object bl0200cod_CEST: TStringField
      FieldName = 'cod_CEST'
      Size = 8
    end
  end
  object tbMovEst: TnxTable
    Database = nxDB
    TableName = 'MovEst'
    IndexName = 'ICanceladoDataSped'
    Left = 232
    Top = 80
    object tbMovEstID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbMovEstUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tbMovEstID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object tbMovEstTran: TLongWordField
      FieldName = 'Tran'
    end
    object tbMovEstItem: TByteField
      FieldName = 'Item'
    end
    object tbMovEsttax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tbMovEsttax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tbMovEsttax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tbMovEstProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tbMovEstQuant: TFloatField
      FieldName = 'Quant'
    end
    object tbMovEstUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tbMovEstTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tbMovEstTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tbMovEstCustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object tbMovEstCustoT: TCurrencyField
      FieldName = 'CustoT'
    end
    object tbMovEstLucro: TCurrencyField
      FieldName = 'Lucro'
    end
    object tbMovEstDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tbMovEstDescr: TWideStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tbMovEstObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tbMovEstTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tbMovEstPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tbMovEstPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tbMovEstDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tbMovEstDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tbMovEstPend: TBooleanField
      FieldName = 'Pend'
    end
    object tbMovEstIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tbMovEstEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tbMovEstCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tbMovEstAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tbMovEstEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object tbMovEstCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tbMovEstCaixa: TIntegerField
      FieldName = 'Caixa'
    end
    object tbMovEstCategoria: TStringField
      FieldName = 'Categoria'
    end
    object tbMovEstNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tbMovEstITran: TIntegerField
      FieldName = 'ITran'
    end
    object tbMovEstTipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tbMovEstSessao: TIntegerField
      FieldName = 'Sessao'
    end
    object tbMovEstDebDev: TCurrencyField
      FieldName = 'DebDev'
    end
    object tbMovEstComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tbMovEstComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tbMovEstComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tbMovEstVenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object tbMovEstDadosFiscais: TnxMemoField
      FieldName = 'DadosFiscais'
      BlobType = ftMemo
    end
    object tbMovEstDataSped: TDateField
      FieldName = 'DataSped'
    end
    object tbMovEstPermSemEstoque: TBooleanField
      FieldName = 'PermSemEstoque'
    end
    object tbMovEstFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tbMovEstFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tbMovEstRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tbProduto: TnxTable
    Database = nxDB
    TableName = 'Produto'
    IndexFieldNames = 'ID'
    Left = 168
    Top = 80
    object tbProdutoID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbProdutoUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tbProdutoMarca: TGuidField
      FieldName = 'Marca'
      Size = 38
    end
    object tbProdutoCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tbProdutoCodigoNum: TLongWordField
      FieldName = 'CodigoNum'
    end
    object tbProdutoCodigo2: TWideStringField
      FieldName = 'Codigo2'
      Size = 30
    end
    object tbProdutoCodigo2Num: TLongWordField
      FieldName = 'Codigo2Num'
    end
    object tbProdutoDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tbProdutoUnid: TWideStringField
      FieldName = 'Unid'
      Size = 5
    end
    object tbProdutoPreco: TCurrencyField
      FieldName = 'Preco'
    end
    object tbProdutoPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object tbProdutoMargem: TFloatField
      FieldName = 'Margem'
    end
    object tbProdutoObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tbProdutoImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tbProdutoCategoria: TWideStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object tbProdutoFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tbProdutoEstoqueAtual: TFloatField
      FieldName = 'EstoqueAtual'
    end
    object tbProdutoEstoquePend: TFloatField
      FieldName = 'EstoquePend'
    end
    object tbProdutoEstoqueTot: TFloatField
      FieldName = 'EstoqueTot'
    end
    object tbProdutobrtrib: TWordField
      FieldName = 'brtrib'
    end
    object tbProdutoCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
    end
    object tbProdutoPodeAlterarPreco: TBooleanField
      FieldName = 'PodeAlterarPreco'
    end
    object tbProdutoPermiteVendaFracionada: TBooleanField
      FieldName = 'PermiteVendaFracionada'
    end
    object tbProdutoNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tbProdutoEstoqueMin: TFloatField
      FieldName = 'EstoqueMin'
    end
    object tbProdutoEstoqueMax: TFloatField
      FieldName = 'EstoqueMax'
    end
    object tbProdutoAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object tbProdutoAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
    end
    object tbProdutoEstoqueRepor: TFloatField
      FieldName = 'EstoqueRepor'
    end
    object tbProdutoComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tbProdutoComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tbProdutoPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tbProdutoPesoLiq: TFloatField
      FieldName = 'PesoLiq'
    end
    object tbProdutotax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tbProdutoAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object tbProdutoFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object tbProdutoFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object tbProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object tbProdutoNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object tbProdutocest: TLongWordField
      FieldName = 'cest'
    end
    object tbProdutomodST: TByteField
      FieldName = 'modST'
    end
    object tbProdutoMVA: TnxMemoField
      FieldName = 'MVA'
      BlobType = ftMemo
    end
    object tbProdutoPauta: TnxMemoField
      FieldName = 'Pauta'
      BlobType = ftMemo
    end
    object tbProdutoCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object tbProdutoIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tbProdutoAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tbProdutoAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 30
    end
    object tbProdutoRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object bl0190: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'descr_item'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_barra'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_ant_item'
        DataType = ftInteger
      end
      item
        Name = 'unid_inv'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'tipo_item'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'cod_ncm'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ex_IPI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'cod_gen'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'cod_lst'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'aliq_icms'
        DataType = ftFloat
      end
      item
        Name = 'cod_CEST'
        DataType = ftString
        Size = 8
      end>
    IndexFieldNames = 'unid'
    IndexName = 'bl0190Index2'
    IndexDefs = <
      item
        Name = 'bl0190Index2'
        Fields = 'unid'
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
    Left = 280
    Top = 16
    object bl0190unid: TStringField
      FieldName = 'unid'
      Size = 6
    end
    object bl0190descr: TStringField
      FieldName = 'descr'
      Size = 10
    end
  end
  object tbMovEstSped: TnxTable
    Database = nxDB
    TableName = 'movEst_Sped'
    IndexName = 'TranProd'
    Left = 192
    Top = 136
    object tbMovEstSpedID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbMovEstSpedTran: TLongWordField
      FieldName = 'Tran'
    end
    object tbMovEstSpedMovEst: TLongWordField
      FieldName = 'MovEst'
    end
    object tbMovEstSpedProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tbMovEstSpedData: TDateField
      FieldName = 'Data'
    end
    object tbMovEstSpedNum_Item: TLongWordField
      FieldName = 'Num_Item'
    end
    object tbMovEstSpedNum_Item_XML: TLongWordField
      FieldName = 'Num_Item_XML'
    end
    object tbMovEstSpedCod_Item: TStringField
      FieldName = 'Cod_Item'
      Size = 15
    end
    object tbMovEstSpedDescr_compl: TStringField
      FieldName = 'Descr_compl'
      Size = 100
    end
    object tbMovEstSpedQTD: TCurrencyField
      FieldName = 'QTD'
    end
    object tbMovEstSpedUnid: TStringField
      FieldName = 'Unid'
      Size = 6
    end
    object tbMovEstSpedvl_item: TCurrencyField
      FieldName = 'vl_item'
    end
    object tbMovEstSpedvl_desc: TCurrencyField
      FieldName = 'vl_desc'
    end
    object tbMovEstSpedind_mov: TStringField
      FieldName = 'ind_mov'
      Size = 2
    end
    object tbMovEstSpedcst_icms: TStringField
      FieldName = 'cst_icms'
      Size = 3
    end
    object tbMovEstSpedcfop: TStringField
      FieldName = 'cfop'
      Size = 4
    end
    object tbMovEstSpedcod_nat: TStringField
      FieldName = 'cod_nat'
      Size = 10
    end
    object tbMovEstSpedvl_bc_icms: TCurrencyField
      FieldName = 'vl_bc_icms'
    end
    object tbMovEstSpedaliq_icms: TCurrencyField
      FieldName = 'aliq_icms'
    end
    object tbMovEstSpedvl_icms: TCurrencyField
      FieldName = 'vl_icms'
    end
    object tbMovEstSpedvl_bc_icms_st: TCurrencyField
      FieldName = 'vl_bc_icms_st'
    end
    object tbMovEstSpedaliq_st: TCurrencyField
      FieldName = 'aliq_st'
    end
    object tbMovEstSpedvl_icms_st: TCurrencyField
      FieldName = 'vl_icms_st'
    end
    object tbMovEstSpedind_apur: TStringField
      FieldName = 'ind_apur'
      Size = 1
    end
    object tbMovEstSpedcst_ipi: TStringField
      FieldName = 'cst_ipi'
      Size = 2
    end
    object tbMovEstSpedcod_enq: TStringField
      FieldName = 'cod_enq'
      Size = 3
    end
    object tbMovEstSpedvl_bc_ipi: TCurrencyField
      FieldName = 'vl_bc_ipi'
    end
    object tbMovEstSpedaliq_ipi: TCurrencyField
      FieldName = 'aliq_ipi'
    end
    object tbMovEstSpedvl_ipi: TCurrencyField
      FieldName = 'vl_ipi'
    end
    object tbMovEstSpedcst_pis: TCurrencyField
      FieldName = 'cst_pis'
    end
    object tbMovEstSpedvl_bc_pis: TCurrencyField
      FieldName = 'vl_bc_pis'
    end
    object tbMovEstSpedaliq_pis_perc: TCurrencyField
      FieldName = 'aliq_pis_perc'
    end
    object tbMovEstSpedquant_bc_pis: TCurrencyField
      FieldName = 'quant_bc_pis'
    end
    object tbMovEstSpedaliq_pis: TCurrencyField
      FieldName = 'aliq_pis'
    end
    object tbMovEstSpedvl_pis: TCurrencyField
      FieldName = 'vl_pis'
    end
    object tbMovEstSpedcst_cofins: TCurrencyField
      FieldName = 'cst_cofins'
    end
    object tbMovEstSpedvl_bc_cofins: TCurrencyField
      FieldName = 'vl_bc_cofins'
    end
    object tbMovEstSpedaliq_cofins_perc: TCurrencyField
      FieldName = 'aliq_cofins_perc'
    end
    object tbMovEstSpedquant_bc_cofins: TCurrencyField
      FieldName = 'quant_bc_cofins'
    end
    object tbMovEstSpedaliq_cofins: TCurrencyField
      FieldName = 'aliq_cofins'
    end
    object tbMovEstSpedvl_cofins: TCurrencyField
      FieldName = 'vl_cofins'
    end
    object tbMovEstSpedcod_cta: TStringField
      FieldName = 'cod_cta'
    end
  end
  object tbTran: TnxTable
    Database = nxDB
    TableName = 'Tran'
    IndexName = 'ICanceladoTipoNFETipoDataNF'
    Left = 128
    Top = 136
    object tbTranID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbTranUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tbTranUID_ref: TGuidField
      FieldName = 'UID_ref'
      Size = 38
    end
    object tbTranStatusNFE: TByteField
      FieldName = 'StatusNFE'
    end
    object tbTranChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object tbTranTipoNFE: TByteField
      FieldName = 'TipoNFE'
    end
    object tbTranDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tbTranEntregar: TBooleanField
      FieldName = 'Entregar'
    end
    object tbTranVenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object tbTranendereco_entrega: TGuidField
      FieldName = 'endereco_entrega'
      Size = 38
    end
    object tbTranIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tbTranCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tbTranTipo: TByteField
      FieldName = 'Tipo'
    end
    object tbTranOpDevValor: TByteField
      FieldName = 'OpDevValor'
    end
    object tbTranFunc: TStringField
      FieldName = 'Func'
    end
    object tbTranTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tbTranDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tbTranDescPerc: TFloatField
      FieldName = 'DescPerc'
    end
    object tbTranids_pagto: TStringField
      FieldName = 'ids_pagto'
    end
    object tbTranHora: TByteField
      FieldName = 'Hora'
    end
    object tbTranDescPorPerc: TBooleanField
      FieldName = 'DescPorPerc'
    end
    object tbTranTotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tbTranPagEsp: TWordField
      FieldName = 'PagEsp'
    end
    object tbTranPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tbTranDebitoAnt: TCurrencyField
      FieldName = 'DebitoAnt'
    end
    object tbTranDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tbTranDebitoPago: TCurrencyField
      FieldName = 'DebitoPago'
    end
    object tbTranCreditoAnt: TCurrencyField
      FieldName = 'CreditoAnt'
    end
    object tbTranCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object tbTranCreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object tbTranTroco: TCurrencyField
      FieldName = 'Troco'
    end
    object tbTranObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tbTranCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tbTranCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tbTranCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tbTranCaixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tbTranCaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object tbTranMaq: TWordField
      FieldName = 'Maq'
    end
    object tbTranNomeCliente: TWideStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tbTranSessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tbTranDescricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
    object tbTranQtdTempo: TFloatField
      FieldName = 'QtdTempo'
    end
    object tbTranCredValor: TBooleanField
      FieldName = 'CredValor'
    end
    object tbTranFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tbTranAmbNFe: TByteField
      FieldName = 'AmbNFe'
    end
    object tbTranStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object tbTranExtra: TnxMemoField
      FieldName = 'Extra'
      BlobType = ftMemo
    end
    object tbTranPagFunc: TStringField
      FieldName = 'PagFunc'
    end
    object tbTranVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object tbTranComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tbTranFrete: TCurrencyField
      FieldName = 'Frete'
    end
    object tbTrantax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tbTrantax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tbTranTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tbTrantranest: TBooleanField
      FieldName = 'tranest'
    end
    object tbTrantrancx: TBooleanField
      FieldName = 'trancx'
    end
    object tbTranTranspEnt: TLongWordField
      FieldName = 'TranspEnt'
    end
    object tbTranTranspVol: TWordField
      FieldName = 'TranspVol'
    end
    object tbTranTranspPesoB: TFloatField
      FieldName = 'TranspPesoB'
    end
    object tbTranTranspPesoL: TFloatField
      FieldName = 'TranspPesoL'
    end
    object tbTranTranspPesoVol: TByteField
      FieldName = 'TranspPesoVol'
    end
    object tbTranUpdID: TGuidField
      FieldName = 'UpdID'
      Size = 38
    end
    object tbTranDataNF: TDateField
      FieldName = 'DataNF'
    end
    object tbTranPagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tbTranRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tbTranprocessaSped: TByteField
      FieldName = 'processaSped'
    end
    object tbTranErroProcSped: TnxMemoField
      FieldName = 'ErroProcSped'
      BlobType = ftMemo
    end
  end
  object tbNFe: TnxTable
    Database = nxDB
    TableName = 'NFE'
    IndexName = 'ITran'
    Left = 264
    Top = 136
    object tbNFeUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tbNFeNumSeq: TUnsignedAutoIncField
      FieldName = 'NumSeq'
    end
    object tbNFeModelo: TStringField
      FieldName = 'Modelo'
      Size = 5
    end
    object tbNFeSerie: TStringField
      FieldName = 'Serie'
      Size = 5
    end
    object tbNFeNumero: TLongWordField
      FieldName = 'Numero'
    end
    object tbNFeTicksConsulta: TLongWordField
      FieldName = 'TicksConsulta'
    end
    object tbNFeChave: TStringField
      FieldName = 'Chave'
      Size = 44
    end
    object tbNFeChaveCont: TStringField
      FieldName = 'ChaveCont'
      Size = 44
    end
    object tbNFeConsultouChave: TBooleanField
      FieldName = 'ConsultouChave'
    end
    object tbNFeEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tbNFeTipoDoc: TByteField
      FieldName = 'TipoDoc'
    end
    object tbNFeDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tbNFeCFOP: TWordField
      FieldName = 'CFOP'
    end
    object tbNFeTran: TGuidField
      FieldName = 'Tran'
      Size = 38
    end
    object tbNFeRecibo: TStringField
      FieldName = 'Recibo'
    end
    object tbNFeProtocolo: TStringField
      FieldName = 'Protocolo'
    end
    object tbNFeContingencia: TBooleanField
      FieldName = 'Contingencia'
    end
    object tbNFeStatus: TByteField
      FieldName = 'Status'
    end
    object tbNFetpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object tbNFeStatusNF: TIntegerField
      FieldName = 'StatusNF'
    end
    object tbNFeXMLdest: TnxMemoField
      FieldName = 'XMLdest'
      BlobType = ftMemo
    end
    object tbNFeXMLret: TnxMemoField
      FieldName = 'XMLret'
      BlobType = ftMemo
    end
    object tbNFeXMLtrans: TnxMemoField
      FieldName = 'XMLtrans'
      BlobType = ftMemo
    end
    object tbNFeXMLtransCont: TnxMemoField
      FieldName = 'XMLtransCont'
      BlobType = ftMemo
    end
    object tbNFexMotivo: TnxMemoField
      FieldName = 'xMotivo'
      BlobType = ftMemo
    end
    object tbNFeLogEnvio: TnxMemoField
      FieldName = 'LogEnvio'
      BlobType = ftMemo
    end
    object tbNFeLogRec: TnxMemoField
      FieldName = 'LogRec'
      BlobType = ftMemo
    end
    object tbNFeProtocoloCanc: TStringField
      FieldName = 'ProtocoloCanc'
    end
    object tbNFeStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object tbNFeStatusCancNF: TIntegerField
      FieldName = 'StatusCancNF'
    end
    object tbNFeJustCanc: TnxMemoField
      FieldName = 'JustCanc'
      BlobType = ftMemo
    end
    object tbNFexMotivoCanc: TnxMemoField
      FieldName = 'xMotivoCanc'
      BlobType = ftMemo
    end
    object tbNFexmlRetCanc: TnxMemoField
      FieldName = 'xmlRetCanc'
      BlobType = ftMemo
    end
    object tbNFeCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tbNFeCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tbNFeStatusInut: TByteField
      FieldName = 'StatusInut'
    end
    object tbNFeStatusInutNF: TIntegerField
      FieldName = 'StatusInutNF'
    end
    object tbNFeProtocoloInut: TStringField
      FieldName = 'ProtocoloInut'
    end
    object tbNFexMotivoInut: TnxMemoField
      FieldName = 'xMotivoInut'
      BlobType = ftMemo
    end
    object tbNFexmlRetInut: TnxMemoField
      FieldName = 'xmlRetInut'
      BlobType = ftMemo
    end
    object tbNFeCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object tbNFeEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object tbNFeIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tbNFeEmitidoEm: TDateTimeField
      FieldName = 'EmitidoEm'
    end
    object tbNFeContingenciaEM: TDateTimeField
      FieldName = 'ContingenciaEM'
    end
    object tbNFeValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tbNFeTotalNF: TCurrencyField
      FieldName = 'TotalNF'
    end
  end
  object bl0150: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'cod_item'
        DataType = ftInteger
      end
      item
        Name = 'descr_item'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_barra'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_ant_item'
        DataType = ftInteger
      end
      item
        Name = 'unid_inv'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'tipo_item'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'cod_ncm'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ex_IPI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'cod_gen'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'cod_lst'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'aliq_icms'
        DataType = ftFloat
      end
      item
        Name = 'cod_CEST'
        DataType = ftString
        Size = 8
      end>
    IndexFieldNames = 'codPart'
    IndexDefs = <
      item
        Name = 'bl0150Index3'
        Fields = 'codPart'
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
    Left = 384
    Top = 16
    object bl0150codPart: TStringField
      FieldName = 'codPart'
      Size = 30
    end
    object bl0150nome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object bl0150codPais: TStringField
      FieldName = 'codPais'
      Size = 5
    end
    object bl0150CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object bl0150CPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object bl0150IE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object bl0150codMun: TStringField
      FieldName = 'codMun'
      Size = 7
    end
    object bl0150suframa: TStringField
      FieldName = 'suframa'
      Size = 9
    end
    object bl0150endereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object bl0150num: TStringField
      FieldName = 'num'
      Size = 10
    end
    object bl0150compl: TStringField
      FieldName = 'compl'
      Size = 60
    end
    object bl0150bairro: TStringField
      FieldName = 'bairro'
      Size = 60
    end
  end
  object tbCliente: TnxTable
    Database = nxDB
    TableName = 'Cliente'
    IndexFieldNames = 'ID'
    Left = 288
    Top = 80
    object tbClienteID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbClienteCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tbClienteCodigoKey: TStringField
      FieldName = 'CodigoKey'
      Size = 15
    end
    object tbClienteNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tbClienteEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object tbClienteEndereco2: TWideStringField
      FieldName = 'Endereco2'
      Size = 60
    end
    object tbClienteEnd_Numero: TWideStringField
      FieldName = 'End_Numero'
    end
    object tbClienteEnd_CodMun: TWideStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object tbClienteEnd_Dest: TWideStringField
      FieldName = 'End_Dest'
      Size = 40
    end
    object tbClienteEnd_Obs: TWideStringField
      FieldName = 'End_Obs'
      Size = 40
    end
    object tbClienteendereco_id: TGuidField
      FieldName = 'endereco_id'
      Size = 38
    end
    object tbClientePais: TWideStringField
      FieldName = 'Pais'
      Size = 2
    end
    object tbClienteBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object tbClienteCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object tbClienteUF: TWideStringField
      FieldName = 'UF'
      Size = 30
    end
    object tbClienteCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tbClienteNaoContribICMS: TBooleanField
      FieldName = 'NaoContribICMS'
    end
    object tbClienteIsentoIE: TBooleanField
      FieldName = 'IsentoIE'
    end
    object tbClienteNFE_CredIcms: TBooleanField
      FieldName = 'NFE_CredIcms'
    end
    object tbClienteSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object tbClienteObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tbClienteCpf: TWideStringField
      FieldName = 'Cpf'
    end
    object tbClienteCPF_sodig: TWideStringField
      FieldName = 'CPF_sodig'
    end
    object tbClienteRg: TWideStringField
      FieldName = 'Rg'
    end
    object tbClienteTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tbClienteEmail: TWideMemoField
      FieldName = 'Email'
      BlobType = ftWideMemo
    end
    object tbClientePassaportes: TFloatField
      FieldName = 'Passaportes'
    end
    object tbClientePai: TWideStringField
      FieldName = 'Pai'
      Size = 40
    end
    object tbClienteMae: TWideStringField
      FieldName = 'Mae'
      Size = 40
    end
    object tbClienteUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object tbClienteDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tbClienteDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object tbClienteCelular: TWideStringField
      FieldName = 'Celular'
      Size = 15
    end
    object tbClienteTemDebito: TBooleanField
      FieldName = 'TemDebito'
    end
    object tbClienteLimiteDebito: TCurrencyField
      FieldName = 'LimiteDebito'
    end
    object tbClienteFoto: TGraphicField
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object tbClienteIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tbClienteAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tbClienteIncluidoPor: TStringField
      FieldName = 'IncluidoPor'
    end
    object tbClienteAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
    end
    object tbClienteFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tbClienteFidTotal: TFloatField
      FieldName = 'FidTotal'
    end
    object tbClienteFidResg: TFloatField
      FieldName = 'FidResg'
    end
    object tbClienteAniversario: TStringField
      FieldName = 'Aniversario'
      Size = 4
    end
    object tbClienteSemFidelidade: TBooleanField
      FieldName = 'SemFidelidade'
    end
    object tbClienteTemCredito: TBooleanField
      FieldName = 'TemCredito'
    end
    object tbClienteInfoExtra: TWideStringField
      FieldName = 'InfoExtra'
      Size = 50
    end
    object tbClienteTranspEntPadrao: TLongWordField
      FieldName = 'TranspEntPadrao'
    end
    object tbClienteUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tbClienteTranspEnt: TBooleanField
      FieldName = 'TranspEnt'
    end
    object tbClienteTipoFor: TByteField
      FieldName = 'TipoFor'
    end
    object tbClientePJuridica: TBooleanField
      FieldName = 'PJuridica'
    end
    object tbClienteConsumidor: TBooleanField
      FieldName = 'Consumidor'
    end
    object tbClienteInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tbClienteFornecedor: TBooleanField
      FieldName = 'Fornecedor'
    end
    object tbClienteValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
    object tbClienteRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tbSpedC190: TnxTable
    Database = nxDB
    TableName = 'Sped_C190'
    IndexName = 'ITran'
    Left = 32
    Top = 80
    object tbSpedC190ID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbSpedC190Tran: TLongWordField
      FieldName = 'Tran'
    end
    object tbSpedC190CST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Size = 5
    end
    object tbSpedC190CFOP: TStringField
      FieldName = 'CFOP'
      Size = 8
    end
    object tbSpedC190ALIQ_ICMS: TCurrencyField
      FieldName = 'ALIQ_ICMS'
    end
    object tbSpedC190Vl_OPER: TCurrencyField
      FieldName = 'Vl_OPER'
    end
    object tbSpedC190VL_BC_ICMS: TCurrencyField
      FieldName = 'VL_BC_ICMS'
    end
    object tbSpedC190VL_ICMS: TCurrencyField
      FieldName = 'VL_ICMS'
    end
    object tbSpedC190VL_BC_ICMS_ST: TCurrencyField
      FieldName = 'VL_BC_ICMS_ST'
    end
    object tbSpedC190VL_ICMS_ST: TCurrencyField
      FieldName = 'VL_ICMS_ST'
    end
    object tbSpedC190VL_RED_BC: TCurrencyField
      FieldName = 'VL_RED_BC'
    end
    object tbSpedC190VL_IPI: TCurrencyField
      FieldName = 'VL_IPI'
    end
    object tbSpedC190COD_OBS: TStringField
      FieldName = 'COD_OBS'
      Size = 6
    end
  end
  object tbSpedE210: TnxTable
    Database = nxDB
    TableName = 'Sped_E210'
    IndexName = 'IdUFDataApuracao'
    Left = 104
    Top = 80
    object tbSpedE210ID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbSpedE210Tran: TLongWordField
      FieldName = 'Tran'
    end
    object tbSpedE210ID_UF: TLongWordField
      FieldName = 'ID_UF'
    end
    object tbSpedE210DT_APURACAO: TDateField
      FieldName = 'DT_APURACAO'
    end
    object tbSpedE210IND_MOV_ST: TCurrencyField
      FieldName = 'IND_MOV_ST'
    end
    object tbSpedE210VL_SLD_CRED_ANT_ST: TCurrencyField
      FieldName = 'VL_SLD_CRED_ANT_ST'
    end
    object tbSpedE210VL_DEVOL_ST: TCurrencyField
      FieldName = 'VL_DEVOL_ST'
    end
    object tbSpedE210VL_RESSARC_ST: TCurrencyField
      FieldName = 'VL_RESSARC_ST'
    end
    object tbSpedE210VL_OUT_CRED_ST: TCurrencyField
      FieldName = 'VL_OUT_CRED_ST'
    end
    object tbSpedE210VL_AJ_CREDITOS_ST: TCurrencyField
      FieldName = 'VL_AJ_CREDITOS_ST'
    end
    object tbSpedE210VL_RETENCAO_ST: TCurrencyField
      FieldName = 'VL_RETENCAO_ST'
    end
    object tbSpedE210VL_OUT_DEB_ST: TCurrencyField
      FieldName = 'VL_OUT_DEB_ST'
    end
    object tbSpedE210VL_AJ_DEBITOS_ST: TCurrencyField
      FieldName = 'VL_AJ_DEBITOS_ST'
    end
    object tbSpedE210VL_SLD_DEV_ANT_ST: TCurrencyField
      FieldName = 'VL_SLD_DEV_ANT_ST'
    end
    object tbSpedE210VL_DEDUCOES_ST: TCurrencyField
      FieldName = 'VL_DEDUCOES_ST'
    end
    object tbSpedE210VL_ICMS_RECOL_ST: TCurrencyField
      FieldName = 'VL_ICMS_RECOL_ST'
    end
    object tbSpedE210VL_SLD_CRED_ST_TRAN: TCurrencyField
      FieldName = 'VL_SLD_CRED_ST_TRAN'
    end
    object tbSpedE210DEB_ESP_ST: TCurrencyField
      FieldName = 'DEB_ESP_ST'
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
  object tbSolicitacoesSped: TnxTable
    Database = nxDB
    TableName = 'SolicitacoesSped'
    IndexName = 'IStatus'
    Left = 336
    Top = 136
    object tbSolicitacoesSpedID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbSolicitacoesSpeddataIni: TDateField
      FieldName = 'dataIni'
    end
    object tbSolicitacoesSpeddataFim: TDateField
      FieldName = 'dataFim'
    end
    object tbSolicitacoesSpeddataInclusao: TDateTimeField
      FieldName = 'dataInclusao'
    end
    object tbSolicitacoesSpeddataConclusao: TDateTimeField
      FieldName = 'dataConclusao'
    end
    object tbSolicitacoesSpedusuario: TStringField
      FieldName = 'usuario'
      Size = 50
    end
    object tbSolicitacoesSpedcnpj_emissor: TStringField
      FieldName = 'cnpj_emissor'
      Size = 25
    end
    object tbSolicitacoesSpedstatus: TLongWordField
      FieldName = 'status'
    end
    object tbSolicitacoesSpedresultado: TnxMemoField
      FieldName = 'resultado'
      BlobType = ftMemo
    end
    object tbSolicitacoesSpedspedGerado: TnxMemoField
      FieldName = 'spedGerado'
      BlobType = ftMemo
    end
    object tbSolicitacoesSpedUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
  end
  object tbSolicitacoesSpedGerar: TnxTable
    Database = nxDB
    TableName = 'SolicitacoesSped'
    IndexName = 'IID'
    Left = 333
    Top = 184
    object tbSolicitacoesSpedGerarID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbSolicitacoesSpedGerardataIni: TDateField
      FieldName = 'dataIni'
    end
    object tbSolicitacoesSpedGerardataFim: TDateField
      FieldName = 'dataFim'
    end
    object tbSolicitacoesSpedGerardataInclusao: TDateTimeField
      FieldName = 'dataInclusao'
    end
    object tbSolicitacoesSpedGerardataConclusao: TDateTimeField
      FieldName = 'dataConclusao'
    end
    object tbSolicitacoesSpedGerarusuario: TStringField
      FieldName = 'usuario'
      Size = 50
    end
    object tbSolicitacoesSpedGerarcnpj_emissor: TStringField
      FieldName = 'cnpj_emissor'
      Size = 25
    end
    object tbSolicitacoesSpedGerarstatus: TLongWordField
      FieldName = 'status'
    end
    object tbSolicitacoesSpedGerarresultado: TnxMemoField
      FieldName = 'resultado'
      BlobType = ftMemo
    end
    object tbSolicitacoesSpedGerarspedGerado: TnxMemoField
      FieldName = 'spedGerado'
      BlobType = ftMemo
    end
    object tbSolicitacoesSpedGerarUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
  end
  object blC860: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'descr_item'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_barra'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_ant_item'
        DataType = ftInteger
      end
      item
        Name = 'unid_inv'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'tipo_item'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'cod_ncm'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ex_IPI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'cod_gen'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'cod_lst'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'aliq_icms'
        DataType = ftFloat
      end
      item
        Name = 'cod_CEST'
        DataType = ftString
        Size = 8
      end>
    IndexFieldNames = 'nr_sat'
    IndexDefs = <
      item
        Name = 'bl0190Index2'
        Fields = 'nr_sat'
      end
      item
        Name = 'blC860Index2'
        Fields = 'dt_doc'
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
    Left = 448
    Top = 16
    object blC860cod_mod: TStringField
      FieldName = 'cod_mod'
      Size = 3
    end
    object blC860nr_sat: TStringField
      FieldName = 'nr_sat'
      Size = 50
    end
    object blC860dt_doc: TStringField
      DisplayWidth = 12
      FieldName = 'dt_doc'
      Size = 8
    end
    object blC860doc_ini: TStringField
      FieldName = 'doc_ini'
      Size = 6
    end
    object blC860doc_fim: TStringField
      FieldName = 'doc_fim'
      Size = 6
    end
  end
  object blC890: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'descr_item'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_barra'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_ant_item'
        DataType = ftInteger
      end
      item
        Name = 'unid_inv'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'tipo_item'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'cod_ncm'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ex_IPI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'cod_gen'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'cod_lst'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'aliq_icms'
        DataType = ftFloat
      end
      item
        Name = 'cod_CEST'
        DataType = ftString
        Size = 8
      end>
    IndexDefs = <
      item
        Name = 'bl0190Index2'
        Fields = 'cfop'
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
    Left = 448
    Top = 72
    object blC890cst_icms: TStringField
      FieldName = 'cst_icms'
      Size = 3
    end
    object blC890cfop: TStringField
      FieldName = 'cfop'
      Size = 4
    end
    object blC890aliqICMS: TFloatField
      FieldName = 'aliqICMS'
    end
    object blC890vlOpr: TFloatField
      FieldName = 'vlOpr'
    end
    object blC890vlBcIcms: TFloatField
      FieldName = 'vlBcIcms'
    end
    object blC890vlICMS: TFloatField
      FieldName = 'vlICMS'
    end
    object blC890codObs: TStringField
      FieldName = 'codObs'
      Size = 6
    end
  end
  object tConfig: TnxTable
    Database = nxDB
    TableName = 'Config'
    Left = 512
    Top = 16
  end
  object tbTran2: TnxTable
    Database = nxDB
    TableName = 'Tran'
    IndexName = 'ICanceladoTipoNFETipoDataNF'
    Left = 128
    Top = 192
    object tbTran2ID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbTran2UID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tbTran2UID_ref: TGuidField
      FieldName = 'UID_ref'
      Size = 38
    end
    object tbTran2StatusNFE: TByteField
      FieldName = 'StatusNFE'
    end
    object tbTran2ChaveNFE: TStringField
      FieldName = 'ChaveNFE'
      Size = 44
    end
    object tbTran2TipoNFE: TByteField
      FieldName = 'TipoNFE'
    end
    object tbTran2DataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tbTran2Entregar: TBooleanField
      FieldName = 'Entregar'
    end
    object tbTran2VenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object tbTran2endereco_entrega: TGuidField
      FieldName = 'endereco_entrega'
      Size = 38
    end
    object tbTran2IncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tbTran2Cliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tbTran2Tipo: TByteField
      FieldName = 'Tipo'
    end
    object tbTran2OpDevValor: TByteField
      FieldName = 'OpDevValor'
    end
    object tbTran2Func: TStringField
      FieldName = 'Func'
    end
    object tbTran2Total: TCurrencyField
      FieldName = 'Total'
    end
    object tbTran2Desconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tbTran2DescPerc: TFloatField
      FieldName = 'DescPerc'
    end
    object tbTran2ids_pagto: TStringField
      FieldName = 'ids_pagto'
    end
    object tbTran2Hora: TByteField
      FieldName = 'Hora'
    end
    object tbTran2DescPorPerc: TBooleanField
      FieldName = 'DescPorPerc'
    end
    object tbTran2TotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tbTran2PagEsp: TWordField
      FieldName = 'PagEsp'
    end
    object tbTran2Pago: TCurrencyField
      FieldName = 'Pago'
    end
    object tbTran2DebitoAnt: TCurrencyField
      FieldName = 'DebitoAnt'
    end
    object tbTran2Debito: TCurrencyField
      FieldName = 'Debito'
    end
    object tbTran2DebitoPago: TCurrencyField
      FieldName = 'DebitoPago'
    end
    object tbTran2CreditoAnt: TCurrencyField
      FieldName = 'CreditoAnt'
    end
    object tbTran2Credito: TCurrencyField
      FieldName = 'Credito'
    end
    object tbTran2CreditoUsado: TCurrencyField
      FieldName = 'CreditoUsado'
    end
    object tbTran2Troco: TCurrencyField
      FieldName = 'Troco'
    end
    object tbTran2Obs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tbTran2Cancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tbTran2CanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tbTran2CanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tbTran2Caixa: TLongWordField
      FieldName = 'Caixa'
    end
    object tbTran2CaixaPag: TLongWordField
      FieldName = 'CaixaPag'
    end
    object tbTran2Maq: TWordField
      FieldName = 'Maq'
    end
    object tbTran2NomeCliente: TWideStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object tbTran2Sessao: TLongWordField
      FieldName = 'Sessao'
    end
    object tbTran2Descricao: TWideMemoField
      FieldName = 'Descricao'
      BlobType = ftWideMemo
    end
    object tbTran2QtdTempo: TFloatField
      FieldName = 'QtdTempo'
    end
    object tbTran2CredValor: TBooleanField
      FieldName = 'CredValor'
    end
    object tbTran2FidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tbTran2AmbNFe: TByteField
      FieldName = 'AmbNFe'
    end
    object tbTran2StatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object tbTran2Extra: TnxMemoField
      FieldName = 'Extra'
      BlobType = ftMemo
    end
    object tbTran2PagFunc: TStringField
      FieldName = 'PagFunc'
    end
    object tbTran2Vendedor: TStringField
      FieldName = 'Vendedor'
    end
    object tbTran2Comissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tbTran2Frete: TCurrencyField
      FieldName = 'Frete'
    end
    object tbTran2tax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tbTran2tax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tbTran2TotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tbTran2tranest: TBooleanField
      FieldName = 'tranest'
    end
    object tbTran2trancx: TBooleanField
      FieldName = 'trancx'
    end
    object tbTran2TranspEnt: TLongWordField
      FieldName = 'TranspEnt'
    end
    object tbTran2TranspVol: TWordField
      FieldName = 'TranspVol'
    end
    object tbTran2TranspPesoB: TFloatField
      FieldName = 'TranspPesoB'
    end
    object tbTran2TranspPesoL: TFloatField
      FieldName = 'TranspPesoL'
    end
    object tbTran2TranspPesoVol: TByteField
      FieldName = 'TranspPesoVol'
    end
    object tbTran2UpdID: TGuidField
      FieldName = 'UpdID'
      Size = 38
    end
    object tbTran2DataNF: TDateField
      FieldName = 'DataNF'
    end
    object tbTran2vSped: TWordField
      FieldName = 'vSped'
    end
    object tbTran2PagPend: TBooleanField
      FieldName = 'PagPend'
    end
    object tbTran2RecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tbTran2processaSped: TByteField
      FieldName = 'processaSped'
    end
    object tbTran2ErroProcSped: TnxMemoField
      FieldName = 'ErroProcSped'
      BlobType = ftMemo
    end
  end
end
