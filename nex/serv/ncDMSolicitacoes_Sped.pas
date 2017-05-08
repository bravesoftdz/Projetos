unit ncDMSolicitacoes_Sped;

interface

uses
  System.SysUtils, System.Classes, Data.DB, kbmMemTable, nxdb, nxsdServerEngine,
  nxreRemoteServerEngine, nxllComponent, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, system.StrUtils, ncDMdanfe_SAT;

type
  TdmSolicitacoes_Sped = class(TDataModule)
    tbEstabelecimento: TnxTable;
    bl0200: TkbmMemTable;
    bl0200cod_item: TIntegerField;
    bl0200descr_item: TStringField;
    bl0200cod_barra: TStringField;
    bl0200cod_ant_item: TIntegerField;
    bl0200unid_inv: TStringField;
    bl0200tipo_item: TStringField;
    bl0200cod_ncm: TStringField;
    bl0200ex_IPI: TStringField;
    bl0200cod_gen: TStringField;
    bl0200cod_lst: TStringField;
    bl0200aliq_icms: TFloatField;
    bl0200cod_CEST: TStringField;
    tbMovEst: TnxTable;
    tbProduto: TnxTable;
    bl0190: TkbmMemTable;
    bl0190unid: TStringField;
    bl0190descr: TStringField;
    tbMovEstSped: TnxTable;
    tbTran: TnxTable;
    tbNFe: TnxTable;
    bl0150: TkbmMemTable;
    bl0150codPart: TStringField;
    bl0150nome: TStringField;
    bl0150codPais: TStringField;
    bl0150CNPJ: TStringField;
    bl0150CPF: TStringField;
    bl0150IE: TStringField;
    bl0150codMun: TStringField;
    bl0150suframa: TStringField;
    bl0150endereco: TStringField;
    bl0150num: TStringField;
    bl0150compl: TStringField;
    bl0150bairro: TStringField;
    tbCliente: TnxTable;
    tbSpedC190: TnxTable;
    tbSpedE210: TnxTable;
    nxTCPIP: TnxWinsockTransport;
    nxRSE: TnxRemoteServerEngine;
    nxDB: TnxDatabase;
    nxSession: TnxSession;
    tbSolicitacoesSped: TnxTable;
    tbSolicitacoesSpedID: TUnsignedAutoIncField;
    tbSolicitacoesSpeddataIni: TDateField;
    tbSolicitacoesSpeddataFim: TDateField;
    tbSolicitacoesSpeddataInclusao: TDateTimeField;
    tbSolicitacoesSpeddataConclusao: TDateTimeField;
    tbSolicitacoesSpedusuario: TStringField;
    tbSolicitacoesSpedcnpj_emissor: TStringField;
    tbSolicitacoesSpedstatus: TLongWordField;
    tbSolicitacoesSpedresultado: TnxMemoField;
    tbSolicitacoesSpedspedGerado: TnxMemoField;
    tbSpedC190ID: TUnsignedAutoIncField;
    tbSpedC190Tran: TLongWordField;
    tbSpedC190CST_ICMS: TStringField;
    tbSpedC190CFOP: TStringField;
    tbSpedC190ALIQ_ICMS: TCurrencyField;
    tbSpedC190Vl_OPER: TCurrencyField;
    tbSpedC190VL_BC_ICMS: TCurrencyField;
    tbSpedC190VL_ICMS: TCurrencyField;
    tbSpedC190VL_BC_ICMS_ST: TCurrencyField;
    tbSpedC190VL_ICMS_ST: TCurrencyField;
    tbSpedC190VL_RED_BC: TCurrencyField;
    tbSpedC190VL_IPI: TCurrencyField;
    tbSpedC190COD_OBS: TStringField;
    tbSpedE210ID: TUnsignedAutoIncField;
    tbSpedE210Tran: TLongWordField;
    tbSpedE210ID_UF: TLongWordField;
    tbSpedE210DT_APURACAO: TDateField;
    tbSpedE210IND_MOV_ST: TCurrencyField;
    tbSpedE210VL_SLD_CRED_ANT_ST: TCurrencyField;
    tbSpedE210VL_DEVOL_ST: TCurrencyField;
    tbSpedE210VL_RESSARC_ST: TCurrencyField;
    tbSpedE210VL_OUT_CRED_ST: TCurrencyField;
    tbSpedE210VL_AJ_CREDITOS_ST: TCurrencyField;
    tbSpedE210VL_RETENCAO_ST: TCurrencyField;
    tbSpedE210VL_OUT_DEB_ST: TCurrencyField;
    tbSpedE210VL_AJ_DEBITOS_ST: TCurrencyField;
    tbSpedE210VL_SLD_DEV_ANT_ST: TCurrencyField;
    tbSpedE210VL_DEDUCOES_ST: TCurrencyField;
    tbSpedE210VL_ICMS_RECOL_ST: TCurrencyField;
    tbSpedE210VL_SLD_CRED_ST_TRAN: TCurrencyField;
    tbSpedE210DEB_ESP_ST: TCurrencyField;
    tbProdutoID: TUnsignedAutoIncField;
    tbProdutoUID: TGuidField;
    tbProdutoMarca: TGuidField;
    tbProdutoCodigo: TWideStringField;
    tbProdutoCodigoNum: TLongWordField;
    tbProdutoCodigo2: TWideStringField;
    tbProdutoCodigo2Num: TLongWordField;
    tbProdutoDescricao: TWideStringField;
    tbProdutoUnid: TWideStringField;
    tbProdutoPreco: TCurrencyField;
    tbProdutoPrecoAuto: TBooleanField;
    tbProdutoMargem: TFloatField;
    tbProdutoObs: TWideMemoField;
    tbProdutoImagem: TGraphicField;
    tbProdutoCategoria: TWideStringField;
    tbProdutoFornecedor: TLongWordField;
    tbProdutoEstoqueAtual: TFloatField;
    tbProdutoEstoquePend: TFloatField;
    tbProdutoEstoqueTot: TFloatField;
    tbProdutobrtrib: TWordField;
    tbProdutoCustoUnitario: TCurrencyField;
    tbProdutoPodeAlterarPreco: TBooleanField;
    tbProdutoPermiteVendaFracionada: TBooleanField;
    tbProdutoNaoControlaEstoque: TBooleanField;
    tbProdutoEstoqueMin: TFloatField;
    tbProdutoEstoqueMax: TFloatField;
    tbProdutoAbaixoMin: TBooleanField;
    tbProdutoAbaixoMinDesde: TDateTimeField;
    tbProdutoEstoqueRepor: TFloatField;
    tbProdutoComissaoPerc: TFloatField;
    tbProdutoComissaoLucro: TBooleanField;
    tbProdutoPesoBruto: TFloatField;
    tbProdutoPesoLiq: TFloatField;
    tbProdutotax_id: TLongWordField;
    tbProdutoAtivo: TBooleanField;
    tbProdutoFidelidade: TBooleanField;
    tbProdutoFidPontos: TIntegerField;
    tbProdutoNCM: TStringField;
    tbProdutoNCM_Ex: TStringField;
    tbProdutocest: TLongWordField;
    tbProdutomodST: TByteField;
    tbProdutoMVA: TnxMemoField;
    tbProdutoPauta: TnxMemoField;
    tbProdutoCadastroRapido: TBooleanField;
    tbProdutoIncluidoEm: TDateTimeField;
    tbProdutoAlteradoEm: TDateTimeField;
    tbProdutoAlteradoPor: TStringField;
    tbProdutoRecVer: TLongWordField;
    tbMovEstID: TUnsignedAutoIncField;
    tbMovEstUID: TGuidField;
    tbMovEstID_ref: TLongWordField;
    tbMovEstTran: TLongWordField;
    tbMovEstItem: TByteField;
    tbMovEsttax_id: TLongWordField;
    tbMovEsttax_incluido: TCurrencyField;
    tbMovEsttax_incluir: TCurrencyField;
    tbMovEstProduto: TLongWordField;
    tbMovEstQuant: TFloatField;
    tbMovEstUnitario: TCurrencyField;
    tbMovEstTotal: TCurrencyField;
    tbMovEstTotLiq: TCurrencyField;
    tbMovEstCustoU: TCurrencyField;
    tbMovEstCustoT: TCurrencyField;
    tbMovEstLucro: TCurrencyField;
    tbMovEstDesconto: TCurrencyField;
    tbMovEstDescr: TWideStringField;
    tbMovEstObs: TWideMemoField;
    tbMovEstTotalFinal: TCurrencyField;
    tbMovEstPago: TCurrencyField;
    tbMovEstPagoPost: TCurrencyField;
    tbMovEstDescPost: TCurrencyField;
    tbMovEstDataHora: TDateTimeField;
    tbMovEstPend: TBooleanField;
    tbMovEstIncluidoEm: TDateTimeField;
    tbMovEstEntrada: TBooleanField;
    tbMovEstCancelado: TBooleanField;
    tbMovEstAjustaCusto: TBooleanField;
    tbMovEstEstoqueAnt: TFloatField;
    tbMovEstCliente: TLongWordField;
    tbMovEstCaixa: TIntegerField;
    tbMovEstCategoria: TStringField;
    tbMovEstNaoControlaEstoque: TBooleanField;
    tbMovEstITran: TIntegerField;
    tbMovEstTipoTran: TByteField;
    tbMovEstSessao: TIntegerField;
    tbMovEstDebDev: TCurrencyField;
    tbMovEstComissao: TCurrencyField;
    tbMovEstComissaoPerc: TFloatField;
    tbMovEstComissaoLucro: TBooleanField;
    tbMovEstVenDev: TBooleanField;
    tbMovEstDadosFiscais: TnxMemoField;
    tbMovEstDataSped: TDateField;
    tbMovEstPermSemEstoque: TBooleanField;
    tbMovEstFidResgate: TBooleanField;
    tbMovEstFidPontos: TFloatField;
    tbMovEstRecVer: TLongWordField;
    tbClienteID: TUnsignedAutoIncField;
    tbClienteCodigo: TStringField;
    tbClienteCodigoKey: TStringField;
    tbClienteNome: TWideStringField;
    tbClienteEndereco: TWideStringField;
    tbClienteEndereco2: TWideStringField;
    tbClienteEnd_Numero: TWideStringField;
    tbClienteEnd_CodMun: TWideStringField;
    tbClienteEnd_Dest: TWideStringField;
    tbClienteEnd_Obs: TWideStringField;
    tbClienteendereco_id: TGuidField;
    tbClientePais: TWideStringField;
    tbClienteBairro: TWideStringField;
    tbClienteCidade: TWideStringField;
    tbClienteUF: TWideStringField;
    tbClienteCEP: TWideStringField;
    tbClienteNaoContribICMS: TBooleanField;
    tbClienteIsentoIE: TBooleanField;
    tbClienteNFE_CredIcms: TBooleanField;
    tbClienteSexo: TStringField;
    tbClienteObs: TWideMemoField;
    tbClienteCpf: TWideStringField;
    tbClienteCPF_sodig: TWideStringField;
    tbClienteRg: TWideStringField;
    tbClienteTelefone: TWideStringField;
    tbClienteEmail: TWideMemoField;
    tbClientePassaportes: TFloatField;
    tbClientePai: TWideStringField;
    tbClienteMae: TWideStringField;
    tbClienteUltVisita: TDateTimeField;
    tbClienteDebito: TCurrencyField;
    tbClienteDataNasc: TDateTimeField;
    tbClienteCelular: TWideStringField;
    tbClienteTemDebito: TBooleanField;
    tbClienteLimiteDebito: TCurrencyField;
    tbClienteFoto: TGraphicField;
    tbClienteIncluidoEm: TDateTimeField;
    tbClienteAlteradoEm: TDateTimeField;
    tbClienteIncluidoPor: TStringField;
    tbClienteAlteradoPor: TStringField;
    tbClienteFidPontos: TFloatField;
    tbClienteFidTotal: TFloatField;
    tbClienteFidResg: TFloatField;
    tbClienteAniversario: TStringField;
    tbClienteSemFidelidade: TBooleanField;
    tbClienteTemCredito: TBooleanField;
    tbClienteInfoExtra: TWideStringField;
    tbClienteTranspEntPadrao: TLongWordField;
    tbClienteUID: TGuidField;
    tbClienteTranspEnt: TBooleanField;
    tbClienteTipoFor: TByteField;
    tbClientePJuridica: TBooleanField;
    tbClienteConsumidor: TBooleanField;
    tbClienteInativo: TBooleanField;
    tbClienteFornecedor: TBooleanField;
    tbClienteValorCred: TCurrencyField;
    tbClienteRecVer: TLongWordField;
    tbEstabelecimentoID: TUnsignedAutoIncField;
    tbEstabelecimentoUID: TGuidField;
    tbEstabelecimentoEmitirNFCe: TBooleanField;
    tbEstabelecimentonfe_pedido_na_obs: TBooleanField;
    tbEstabelecimentoTipo: TByteField;
    tbEstabelecimentoRemoverNFCe: TBooleanField;
    tbEstabelecimentoUsarPautaMaiorMVA: TBooleanField;
    tbEstabelecimentoEmitirNFE: TBooleanField;
    tbEstabelecimentoCertificadoDig: TStringField;
    tbEstabelecimentosat_modelo: TByteField;
    tbEstabelecimentosat_config: TStringField;
    tbEstabelecimentosat_esq: TByteField;
    tbEstabelecimentonfe_permite_cred_icms: TBooleanField;
    tbEstabelecimentonfe_perc_cred_icms: TFloatField;
    tbEstabelecimentoContabilidade: TStringField;
    tbEstabelecimentoexigir_peso_vol: TBooleanField;
    tbEstabelecimentoenviar_peso_vol_def: TBooleanField;
    tbEstabelecimentoauto_calc_peso_def: TBooleanField;
    tbEstabelecimentonfe_venda: TBooleanField;
    tbEstabelecimentotipodoc_padrao: TByteField;
    tbEstabelecimentoPinCert: TStringField;
    tbEstabelecimentoDependNFCEOk: TBooleanField;
    tbEstabelecimentoDependSATOk: TBooleanField;
    tbEstabelecimentoDependNFEOk: TBooleanField;
    tbEstabelecimentoTipoCert: TByteField;
    tbEstabelecimentoAutoPrintNFCe: TBooleanField;
    tbEstabelecimentoCRT: TByteField;
    tbEstabelecimentoNCM_Padrao: TStringField;
    tbEstabelecimentoTrib_Padrao: TWordField;
    tbEstabelecimentoMostrarDadosNFE: TBooleanField;
    tbEstabelecimentoModeloNFE: TStringField;
    tbEstabelecimentoModeloNFCe: TStringField;
    tbEstabelecimentoSerieNFCe: TStringField;
    tbEstabelecimentoSerieNFe: TStringField;
    tbEstabelecimentoNomeDllSat: TStringField;
    tbEstabelecimentoSignACSat: TStringField;
    tbEstabelecimentoCodigoAtivacao: TStringField;
    tbEstabelecimentoAssociarSignAC: TBooleanField;
    tbEstabelecimentoInicioNFe: TLongWordField;
    tbEstabelecimentoInicioNFCe: TLongWordField;
    tbEstabelecimentoRazaoSocial: TStringField;
    tbEstabelecimentoNomeFantasia: TStringField;
    tbEstabelecimentoCNPJ: TStringField;
    tbEstabelecimentoIE: TStringField;
    tbEstabelecimentoEnd_Logradouro: TStringField;
    tbEstabelecimentoEnd_Numero: TStringField;
    tbEstabelecimentoEnd_Complemento: TStringField;
    tbEstabelecimentoEnd_Bairro: TStringField;
    tbEstabelecimentoEnd_UF: TStringField;
    tbEstabelecimentoEnd_CEP: TStringField;
    tbEstabelecimentoEnd_Municipio: TStringField;
    tbEstabelecimentoEnd_CodMun: TStringField;
    tbEstabelecimentoEnd_CodUF: TByteField;
    tbEstabelecimentoTelefone: TStringField;
    tbEstabelecimentotpAmb: TByteField;
    tbEstabelecimentotpAmbNFE: TByteField;
    tbEstabelecimentoCSC: TStringField;
    tbEstabelecimentoIdCSC: TStringField;
    tbEstabelecimentoPedirEmail: TByteField;
    tbEstabelecimentoPedirCPF: TByteField;
    tbEstabelecimentoFromEmail: TStringField;
    tbEstabelecimentoAssuntoEmail: TStringField;
    tbEstabelecimentoFromName: TStringField;
    tbEstabelecimentoCorpoEmail: TnxMemoField;
    tbEstabelecimentoModeloNFCe_Email: TGuidField;
    tbEstabelecimentoModeloSAT_Email: TGuidField;
    tbEstabelecimentoModeloNFE_Email: TGuidField;
    tbEstabelecimentourls_qrcode_hom: TnxMemoField;
    tbEstabelecimentourls_qrcode_prod: TnxMemoField;
    tbEstabelecimentourls_consulta: TnxMemoField;
    tbEstabelecimentoconfig_nfe: TnxMemoField;
    tbEstabelecimentoObsFisco: TnxMemoField;
    tbTranID: TUnsignedAutoIncField;
    tbTranUID: TGuidField;
    tbTranUID_ref: TGuidField;
    tbTranStatusNFE: TByteField;
    tbTranChaveNFE: TStringField;
    tbTranTipoNFE: TByteField;
    tbTranDataHora: TDateTimeField;
    tbTranEntregar: TBooleanField;
    tbTranVenDev: TBooleanField;
    tbTranendereco_entrega: TGuidField;
    tbTranIncluidoEm: TDateTimeField;
    tbTranCliente: TLongWordField;
    tbTranTipo: TByteField;
    tbTranOpDevValor: TByteField;
    tbTranFunc: TStringField;
    tbTranTotal: TCurrencyField;
    tbTranDesconto: TCurrencyField;
    tbTranDescPerc: TFloatField;
    tbTranids_pagto: TStringField;
    tbTranHora: TByteField;
    tbTranDescPorPerc: TBooleanField;
    tbTranTotLiq: TCurrencyField;
    tbTranPagEsp: TWordField;
    tbTranPago: TCurrencyField;
    tbTranDebitoAnt: TCurrencyField;
    tbTranDebito: TCurrencyField;
    tbTranDebitoPago: TCurrencyField;
    tbTranCreditoAnt: TCurrencyField;
    tbTranCredito: TCurrencyField;
    tbTranCreditoUsado: TCurrencyField;
    tbTranTroco: TCurrencyField;
    tbTranObs: TnxMemoField;
    tbTranCancelado: TBooleanField;
    tbTranCanceladoPor: TStringField;
    tbTranCanceladoEm: TDateTimeField;
    tbTranCaixa: TLongWordField;
    tbTranCaixaPag: TLongWordField;
    tbTranMaq: TWordField;
    tbTranNomeCliente: TWideStringField;
    tbTranSessao: TLongWordField;
    tbTranDescricao: TWideMemoField;
    tbTranQtdTempo: TFloatField;
    tbTranCredValor: TBooleanField;
    tbTranFidResgate: TBooleanField;
    tbTranAmbNFe: TByteField;
    tbTranStatusCanc: TByteField;
    tbTranExtra: TnxMemoField;
    tbTranPagFunc: TStringField;
    tbTranVendedor: TStringField;
    tbTranComissao: TCurrencyField;
    tbTranFrete: TCurrencyField;
    tbTrantax_incluido: TCurrencyField;
    tbTrantax_incluir: TCurrencyField;
    tbTranTotalFinal: TCurrencyField;
    tbTrantranest: TBooleanField;
    tbTrantrancx: TBooleanField;
    tbTranTranspEnt: TLongWordField;
    tbTranTranspVol: TWordField;
    tbTranTranspPesoB: TFloatField;
    tbTranTranspPesoL: TFloatField;
    tbTranTranspPesoVol: TByteField;
    tbTranUpdID: TGuidField;
    tbTranDataNF: TDateField;
    tbTranPagPend: TBooleanField;
    tbTranRecVer: TLongWordField;
    tbTranprocessaSped: TByteField;
    tbTranErroProcSped: TnxMemoField;
    tbMovEstSpedID: TUnsignedAutoIncField;
    tbMovEstSpedTran: TLongWordField;
    tbMovEstSpedMovEst: TLongWordField;
    tbMovEstSpedProduto: TLongWordField;
    tbMovEstSpedData: TDateField;
    tbMovEstSpedNum_Item: TLongWordField;
    tbMovEstSpedNum_Item_XML: TLongWordField;
    tbMovEstSpedCod_Item: TStringField;
    tbMovEstSpedDescr_compl: TStringField;
    tbMovEstSpedQTD: TCurrencyField;
    tbMovEstSpedUnid: TStringField;
    tbMovEstSpedvl_item: TCurrencyField;
    tbMovEstSpedvl_desc: TCurrencyField;
    tbMovEstSpedind_mov: TStringField;
    tbMovEstSpedcst_icms: TStringField;
    tbMovEstSpedcfop: TStringField;
    tbMovEstSpedcod_nat: TStringField;
    tbMovEstSpedvl_bc_icms: TCurrencyField;
    tbMovEstSpedaliq_icms: TCurrencyField;
    tbMovEstSpedvl_icms: TCurrencyField;
    tbMovEstSpedvl_bc_icms_st: TCurrencyField;
    tbMovEstSpedaliq_st: TCurrencyField;
    tbMovEstSpedvl_icms_st: TCurrencyField;
    tbMovEstSpedind_apur: TStringField;
    tbMovEstSpedcst_ipi: TStringField;
    tbMovEstSpedcod_enq: TStringField;
    tbMovEstSpedvl_bc_ipi: TCurrencyField;
    tbMovEstSpedaliq_ipi: TCurrencyField;
    tbMovEstSpedvl_ipi: TCurrencyField;
    tbMovEstSpedcst_pis: TCurrencyField;
    tbMovEstSpedvl_bc_pis: TCurrencyField;
    tbMovEstSpedaliq_pis_perc: TCurrencyField;
    tbMovEstSpedquant_bc_pis: TCurrencyField;
    tbMovEstSpedaliq_pis: TCurrencyField;
    tbMovEstSpedvl_pis: TCurrencyField;
    tbMovEstSpedcst_cofins: TCurrencyField;
    tbMovEstSpedvl_bc_cofins: TCurrencyField;
    tbMovEstSpedaliq_cofins_perc: TCurrencyField;
    tbMovEstSpedquant_bc_cofins: TCurrencyField;
    tbMovEstSpedaliq_cofins: TCurrencyField;
    tbMovEstSpedvl_cofins: TCurrencyField;
    tbMovEstSpedcod_cta: TStringField;
    tbNFeUID: TGuidField;
    tbNFeNumSeq: TUnsignedAutoIncField;
    tbNFeModelo: TStringField;
    tbNFeSerie: TStringField;
    tbNFeNumero: TLongWordField;
    tbNFeTicksConsulta: TLongWordField;
    tbNFeChave: TStringField;
    tbNFeChaveCont: TStringField;
    tbNFeConsultouChave: TBooleanField;
    tbNFeEntrada: TBooleanField;
    tbNFeTipoDoc: TByteField;
    tbNFeDataHora: TDateTimeField;
    tbNFeCFOP: TWordField;
    tbNFeTran: TGuidField;
    tbNFeRecibo: TStringField;
    tbNFeProtocolo: TStringField;
    tbNFeContingencia: TBooleanField;
    tbNFeStatus: TByteField;
    tbNFetpAmb: TByteField;
    tbNFeStatusNF: TIntegerField;
    tbNFeXMLdest: TnxMemoField;
    tbNFeXMLret: TnxMemoField;
    tbNFeXMLtrans: TnxMemoField;
    tbNFeXMLtransCont: TnxMemoField;
    tbNFexMotivo: TnxMemoField;
    tbNFeLogEnvio: TnxMemoField;
    tbNFeLogRec: TnxMemoField;
    tbNFeProtocoloCanc: TStringField;
    tbNFeStatusCanc: TByteField;
    tbNFeStatusCancNF: TIntegerField;
    tbNFeJustCanc: TnxMemoField;
    tbNFexMotivoCanc: TnxMemoField;
    tbNFexmlRetCanc: TnxMemoField;
    tbNFeCanceladoPor: TStringField;
    tbNFeCanceladoEm: TDateTimeField;
    tbNFeStatusInut: TByteField;
    tbNFeStatusInutNF: TIntegerField;
    tbNFeProtocoloInut: TStringField;
    tbNFexMotivoInut: TnxMemoField;
    tbNFexmlRetInut: TnxMemoField;
    tbNFeCPF: TStringField;
    tbNFeEmail: TStringField;
    tbNFeIncluidoEm: TDateTimeField;
    tbNFeEmitidoEm: TDateTimeField;
    tbNFeContingenciaEM: TDateTimeField;
    tbNFeValor: TCurrencyField;
    tbNFeTotalNF: TCurrencyField;
    tbSolicitacoesSpedGerar: TnxTable;
    tbSolicitacoesSpedGerarID: TUnsignedAutoIncField;
    tbSolicitacoesSpedGerardataIni: TDateField;
    tbSolicitacoesSpedGerardataFim: TDateField;
    tbSolicitacoesSpedGerardataInclusao: TDateTimeField;
    tbSolicitacoesSpedGerardataConclusao: TDateTimeField;
    tbSolicitacoesSpedGerarusuario: TStringField;
    tbSolicitacoesSpedGerarcnpj_emissor: TStringField;
    tbSolicitacoesSpedGerarstatus: TLongWordField;
    tbSolicitacoesSpedGerarresultado: TnxMemoField;
    tbSolicitacoesSpedGerarspedGerado: TnxMemoField;
    tbSolicitacoesSpedUID: TGuidField;
    tbSolicitacoesSpedGerarUID: TGuidField;
    blC860: TkbmMemTable;
    blC890: TkbmMemTable;
    blC860cod_mod: TStringField;
    blC860nr_sat: TStringField;
    blC860dt_doc: TStringField;
    blC860doc_ini: TStringField;
    blC860doc_fim: TStringField;
    blC890cst_icms: TStringField;
    blC890cfop: TStringField;
    blC890aliqICMS: TFloatField;
    blC890vlOpr: TFloatField;
    blC890vlBcIcms: TFloatField;
    blC890vlICMS: TFloatField;
    blC890codObs: TStringField;
    tConfig: TnxTable;
    tbTran2: TnxTable;
    tbTran2ID: TUnsignedAutoIncField;
    tbTran2UID: TGuidField;
    tbTran2UID_ref: TGuidField;
    tbTran2StatusNFE: TByteField;
    tbTran2ChaveNFE: TStringField;
    tbTran2TipoNFE: TByteField;
    tbTran2DataHora: TDateTimeField;
    tbTran2Entregar: TBooleanField;
    tbTran2VenDev: TBooleanField;
    tbTran2endereco_entrega: TGuidField;
    tbTran2IncluidoEm: TDateTimeField;
    tbTran2Cliente: TLongWordField;
    tbTran2Tipo: TByteField;
    tbTran2OpDevValor: TByteField;
    tbTran2Func: TStringField;
    tbTran2Total: TCurrencyField;
    tbTran2Desconto: TCurrencyField;
    tbTran2DescPerc: TFloatField;
    tbTran2ids_pagto: TStringField;
    tbTran2Hora: TByteField;
    tbTran2DescPorPerc: TBooleanField;
    tbTran2TotLiq: TCurrencyField;
    tbTran2PagEsp: TWordField;
    tbTran2Pago: TCurrencyField;
    tbTran2DebitoAnt: TCurrencyField;
    tbTran2Debito: TCurrencyField;
    tbTran2DebitoPago: TCurrencyField;
    tbTran2CreditoAnt: TCurrencyField;
    tbTran2Credito: TCurrencyField;
    tbTran2CreditoUsado: TCurrencyField;
    tbTran2Troco: TCurrencyField;
    tbTran2Obs: TnxMemoField;
    tbTran2Cancelado: TBooleanField;
    tbTran2CanceladoPor: TStringField;
    tbTran2CanceladoEm: TDateTimeField;
    tbTran2Caixa: TLongWordField;
    tbTran2CaixaPag: TLongWordField;
    tbTran2Maq: TWordField;
    tbTran2NomeCliente: TWideStringField;
    tbTran2Sessao: TLongWordField;
    tbTran2Descricao: TWideMemoField;
    tbTran2QtdTempo: TFloatField;
    tbTran2CredValor: TBooleanField;
    tbTran2FidResgate: TBooleanField;
    tbTran2AmbNFe: TByteField;
    tbTran2StatusCanc: TByteField;
    tbTran2Extra: TnxMemoField;
    tbTran2PagFunc: TStringField;
    tbTran2Vendedor: TStringField;
    tbTran2Comissao: TCurrencyField;
    tbTran2Frete: TCurrencyField;
    tbTran2tax_incluido: TCurrencyField;
    tbTran2tax_incluir: TCurrencyField;
    tbTran2TotalFinal: TCurrencyField;
    tbTran2tranest: TBooleanField;
    tbTran2trancx: TBooleanField;
    tbTran2TranspEnt: TLongWordField;
    tbTran2TranspVol: TWordField;
    tbTran2TranspPesoB: TFloatField;
    tbTran2TranspPesoL: TFloatField;
    tbTran2TranspPesoVol: TByteField;
    tbTran2UpdID: TGuidField;
    tbTran2DataNF: TDateField;
    tbTran2vSped: TWordField;
    tbTran2PagPend: TBooleanField;
    tbTran2RecVer: TLongWordField;
    tbTran2processaSped: TByteField;
    tbTran2ErroProcSped: TnxMemoField;
    procedure DataModuleCreate(Sender: TObject);
  private

    procedure geraBloco0000;
    procedure geraBloco0001;
    procedure geraBloco0005;
    procedure geraBloco0100;
    procedure geraBloco0150;
    procedure geraBloco0190;
    procedure geraBloco0200;
    procedure geraBloco0990;

    procedure geraBlocoC001;
    procedure geraBlocoC100;
    procedure geraBlocoC170;
    procedure geraBlocoC190;
    procedure geraBlocoC860;
    procedure geraBlocoC890;
    procedure geraBlocoC990;

    procedure geraBlocoD001;
    procedure geraBlocoD990;

    procedure geraBlocoE001;
    procedure geraBlocoE100;
    procedure geraBlocoE110;
    procedure geraBlocoE200;
    procedure geraBlocoE210;
    procedure geraBlocoE990;

    procedure geraBlocoG001;
    procedure geraBlocoG990;

    procedure geraBlocoH001;
    procedure geraBlocoH990;

    procedure geraBlocoK001;
    procedure geraBlocoK990;

    procedure geraBloco1001;
    procedure geraBloco1010;
    procedure geraBloco1990;

    //bloco dos totais de campos
    procedure geraBlocoT0000;
    procedure geraBlocoT0001;
    procedure geraBlocoT0005;
    procedure geraBlocoT0100;
    procedure geraBlocoT0150;
    procedure geraBlocoT0190;
    procedure geraBlocoT0200;
    procedure geraBlocoT0990;
    procedure geraBlocoT9990;
    procedure geraBlocoT9999;
    procedure geraBlocoTC001;
    procedure geraBlocoTC100;
    procedure geraBlocoTC170;
    procedure geraBlocoTC190;
    procedure geraBlocoTC860;
    procedure geraBlocoTC890;
    procedure geraBlocoTC990;
    procedure geraBlocoTD001;
    procedure geraBlocoTD990;
    procedure geraBlocoTE001;
    procedure geraBlocoTE100;
    procedure geraBlocoTE110;
    procedure geraBlocoTE200;
    procedure geraBlocoTE210;
    procedure geraBlocoTE990;
    procedure geraBlocoTG001;
    procedure geraBlocoTG990;
    procedure geraBlocoTH001;
    procedure geraBlocoTH990;
    procedure geraBlocoTK001;
    procedure geraBlocoTK990;
    procedure geraBlocoT1001;
    procedure geraBlocoT1010;
    procedure geraBlocoT1990;
    procedure geraBlocoT9001;
    procedure geraBlco9001;
    procedure geraBlocoT9900_;
    procedure geraBloco9900;
    procedure geraBloco9999;
    procedure openDB;

    procedure somaTotaisBlocoE;
    procedure _gerarSped (dataIni, dataFim, sCnpjEmissor : string);
  public
    function gerarSped :boolean;
    procedure processaSped;
  end;

var
  dmSolicitacoes_Sped: TdmSolicitacoes_Sped;
  dmSat : TdmDanfe_SAT;

  //Variaveis totalizadoras de registros
  iTotalRegistros, iTot0000, iTot0001, iTot0005, iTot0100, iTot0150,
  iTot0190, iTot0200, iTot0990, iTot9999, iTotC001, iTotC100, iTotC170,
  iTotC190, iTotC990, iTotD001, iTotD990, iTotE001, iTotE100, iTotE110,
  iTotE990, iTotG001, iTotG990, iTotH001, iTotH990, iTotK001, iTotK990,
  iTot1001, iTot1010, iTot1990, iTot9001, iTot9900, iTot9900_,
  iTotE200, iTotE210, iTotC860, iTotC890 : integer;

  //variaveis totalizadora dos impostos dos itens Registro C100 Entrada
  VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_IPI, VL_PIS,
  VL_COFINS, VL_PIS_ST, VL_COFINS_ST : Currency;

  //variaveis totalizadora dos impostos dos itens Registro C100 saida
  _VL_BC_ICMS, _VL_ICMS, _VL_BC_ICMS_ST, _VL_ICMS_ST, _VL_IPI, _VL_PIS,
  _VL_COFINS, _VL_PIS_ST, _VL_COFINS_ST : Currency;

  //Totais para calculo de ICMS - Registro E110
  VL_TOT_DEBITOS, VL_AJ_DEBITOS, VL_TOT_AJ_DEBITOS, VL_ESTORNOS_CRED,
  VL_TOT_CREDITOS, VL_AJ_CREDITOS, VL_TOT_AJ_CREDITOS, VL_ESTORNOS_DEB,
  VL_SLD_CREDOR_ANT, VL_SLD_APURADO, VL_TOT_DED, VL_ICMS_RECOLHER,
  VL_SLD_CREDOR_TRANSPORTAR, DEB_ESP : Currency;

  sDataIni, sDataFim, sCnpj_Emissor :String;

  mSped : TStringList;
implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ncClassesBase, ncDebug, ncServBD;

{$R *.dfm}

procedure TdmSolicitacoes_Sped.DataModuleCreate(Sender: TObject);
begin
  dmSat := TdmDanfe_SAT.Create(self);
  openDB;
  iTotalRegistros := 0;
  iTot0000        := 0;
  iTot0001        := 0;
  iTot0005        := 0;
  iTot0100        := 0;
  iTot0150        := 0;
  iTot0190        := 0;
  iTot0200        := 0;
  iTot0990        := 0;
  iTot9999        := 0;
end;

procedure TdmSolicitacoes_Sped.geraBlco9001;
begin
  mSped.Add ('|9001|0|');
  iTot9001 := iTot9001 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBloco0000;
var
  sRegistro, sCodVer, sCodFin, sDtIni, sDtFim, sNome, sCNPJ, sCPF, sUF, sIE,
  sCodMun, sIM, sSuframa, sIndPerfil, sIndAtiv :string;
begin
  sRegistro  := '|0000';
  sCodVer    := '|011'; //Parametrizar no sistema a versão do layout do Sped conforme Ato COTEPE
  sCodFin    := '|0'; //Ver se sempre vai ser o código 1 mesmo.
  sDtIni     := '|' + sodig(sDataIni);
  sDtFim     := '|' + sodig(sDataFim);
  sNome      := '|' + copy(tbEstabelecimentoRazaoSocial.Text,1,100);
  if Length(soDig(sCnpj_Emissor)) > 11 then
  begin
    sCNPJ      := '|' + soDig(sCnpj_Emissor);
    sCPF       := '|';
  end
  else
  begin
    sCNPJ      := '|';
    sCPF       := '|' + soDig(sCnpj_Emissor);
  end;
  sUF        := '|' + tbEstabelecimentoEnd_UF.AsString;
  sIE        := '|' + tbEstabelecimentoIE.AsString;
  sCodMun    := '|' + tbEstabelecimentoEnd_CodMun.AsString;
  sIM        := '|';
  sSuframa   := '|';
  sIndPerfil := '|B';
  sIndAtiv   := '|1|';//Ver se tem essa configuração para os nossos clientes

  mSped.Add(sRegistro  +
            sCodVer    +
            sCodFin    +
            sDtIni     +
            sDtFim     +
            sNome      +
            sCNPJ      +
            sCPF       +
            sUF        +
            sIE        +
            sCodMun    +
            sIM        +
            sSuframa   +
            sIndPerfil +
            sIndAtiv   );
  iTot0000 := iTot0000 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBloco0001;
var
  sRegistro, sIndMov :String;
begin
  sRegistro := '|0001';
  sIndMov   := '|0|';
  iTot0001 := iTot0001 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  mSped.Add(sRegistro +
            sIndMov   );
end;

procedure TdmSolicitacoes_Sped.geraBloco0005;
var
  sRegistro, sFantasia, sCEP, sEnd, sNum, sCompl, sBairro, sFone, sFax, sEmail :string;
begin

  sRegistro  := '|0005';
  sFantasia  := '|' + Copy(tbEstabelecimentoNomeFantasia.Value,1,60);
  sCep       := '|' + SoDig(tbEstabelecimentoEnd_CEP.Value);
  sEnd       := '|' + copy(tbEstabelecimentoEnd_Logradouro.Value,1,60);
  sNum       := '|' + tbEstabelecimentoEnd_Numero.Value;
  sCompl     := '|' + copy(tbEstabelecimentoEnd_Complemento.Value,1,60);
  sBairro    := '|' + copy(tbEstabelecimentoEnd_Bairro.Value,1,60);
  sFone      := '|' + soDig(copy(tbEstabelecimentoTelefone.Value,1,11));
  sFax       := '|';
  sEmail     := '|' + tbEstabelecimentoFromEmail.Value + '|';
  mSped.Add(sRegistro +
            sFantasia +
            sCep      +
            sEnd      +
            sNum      +
            sCompl    +
            sBairro   +
            sFone     +
            sFax      +
            sEmail    );
  iTot0005 := iTot0005 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBloco0100;
var
  sRegistro, sNome, sCPF, sCRC, sCNPJ, sCEP, sEnd, sNum, sCompl, sBairro,
  sFone, sFax, sEmail, sCodMun : string;
begin
  sRegistro   := '|0100';
  sNome       := '|Rodrigo Nepomuceno';
  sCPF        := '|00719120020';
  sCRC        := '|123435';
  sCNPJ       := '|88618921000163';
  sCEP        := '|95190000';
  sEnd        := '|Rua Padre Feijó';
  sNum        := '|1024';
  sCompl      := '|';
  sBairro     := '|Centro';
  sFone       := '|5432919400';
  sFax        := '|';
  sEmail      := '|rodrigo@nextar.com.br';
  sCodMun     := '|4319000|';
  iTot0100 := iTot0100 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  mSped.Add(sRegistro   +
            sNome       +
            sCPF        +
            sCRC        +
            sCNPJ       +
            sCEP        +
            sEnd        +
            sNum        +
            sCompl      +
            sBairro     +
            sFone       +
            sFax        +
            sEmail      +
            sCodMun     );
end;

procedure TdmSolicitacoes_Sped.geraBloco0150;

procedure geraCliFor;
begin
  while not tbTran.Eof do
  begin
    if not bl0150.FindKey([tbTranCliente.AsString]) then
    begin
      if tbCliente.FindKey([tbTranCliente]) then
      begin
        bl0150.append;
        bl0150codPart.Value := tbClienteID.AsString;
        bl0150nome.Value := tbClienteNome.Value;
        bl0150codPais.Value := '1058'; //Rodrigo
        if Length(tbClienteCPF_sodig.AsString) > 13 then
        begin
          bl0150CNPJ.Value := tbClienteCPF_sodig.AsString;
          bl0150CPF.Value := '';
        end
        else
        begin
          bl0150CNPJ.Value := '';
          bl0150CPF.Value := tbClienteCPF_sodig.AsString;
        end;
        bl0150IE.Value := '';
        bl0150codMun.Value := tbClienteEnd_CodMun.Value;
        bl0150suframa.Value := '';
        bl0150endereco.Value := copy(tbClienteEndereco.Value,1,60);
        bl0150num.Value := tbClienteEnd_Numero.AsString;
        bl0150compl.Value := copy(tbClienteBairro.Value,1,60);
        bl0150bairro.Value := copy(tbClienteEndereco2.Value,1,60);
        bl0150.post;
      end;
    end;
    tbTran.next;
  end;
end;

begin
  //Gerar bloco de clientes e fornecedores aqui

  tbTran.Active := true;
  tbTran.SetRange([false, tiponfe_nenhum, trEstCompra, strToDate(sDataIni)],[false, tiponfe_nenhum, trEstCompra, strToDate(sDataFim)]);
  tbTran.First;
  bl0150.Active := False;
  bl0150.Active := True;
  geraCliFor;

  tbTran.Active := true;
  tbTran.SetRange([false, tiponfe_nenhum, trEstTransfEnt,strToDate(sDataIni)],[false, tiponfe_nenhum, trEstTransfEnt, strToDate(sDataFim)]);
  tbTran.First;
  geraCliFor;

  tbTran.Active := true;
  tbTran.SetRange([false, tiponfe_nfe, trEstOutEntr, strToDate(sDataIni)],[false, tiponfe_nfe, trEstOutEntr, strToDate(sDataFim)]);
  tbTran.First;
  geraCliFor;

  tbTran.Active := true;
  tbTran.SetRange([false, tiponfe_nfe, trEstTransf, strToDate(sDataIni)],[false, tiponfe_nfe, trEstTransf, strToDate(sDataFim)]);
  tbTran.First;
  bl0150.First;
  geraCliFor;

  tbTran.Active := true;
  tbTran.SetRange([false, tiponfe_nfe, trEstDevFor, strToDate(sDataIni)],[false, tiponfe_nfe, trEstDevFor, strToDate(sDataFim)]);
  tbTran.First;
  bl0150.First;
  geraCliFor;

  tbTran.Active := true;
  tbTran.SetRange([false, tiponfe_nfe, trEstVenda, strToDate(sDataIni)],[false, tiponfe_nfe, trEstVenda, strToDate(sDataFim)]);
  tbTran.First;
  geraCliFor;

  bl0150.First;

  while not bl0150.Eof do
  begin
    mSped.add('|0150'+
              '|'+bl0150codPart.Value+
              '|'+bl0150nome.Value+
              '|'+bl0150codPais.Value+
              '|'+bl0150CNPJ.Value+
              '|'+bl0150CPF.Value+
              '|'+bl0150IE.Value+
              '|'+bl0150codMun.value+
              '|'+bl0150suframa.Value+
              '|'+bl0150endereco.Value+
              '|'+bl0150num.Value+
              '|'+bl0150compl.Value+
              '|'+bl0150bairro.Value+'|');
    iTot0150 := iTot0150 + 1;
    iTotalRegistros := iTotalRegistros + 1;
    bl0150.next;
  end;
end;

procedure TdmSolicitacoes_Sped.geraBloco0190;
var
  sRegistro, sUnid, sDescr : String;
begin
  try
    tbMovEst.Open;
    tbMovEst.SetRange([false, strToDate(sDataIni)], [false, strToDate(sDataFim)]);
    tbMovEst.First;

    bl0190.Active := False;
    bl0190.Active := True;

    while not tbMovEst.Eof do
    begin
      if tbProduto.FindKey([tbMovEstProduto]) then
      begin
        if not bl0190.FindKey([tbProdutoUnid]) then begin
          bl0190.append;
          bl0190unid.Value  := tbProdutoUnid.Value;
          bl0190descr.Value := tbProdutoUnid.Value;
          bl0190.post;
        end;
      end;
      tbMovEst.Next;
    end;

    bl0190.First;

    while not bl0190.Eof do
    begin

      sRegistro := '|0190';
      sUnid     := '|' + bl0190unid.AsString;
      sDescr    := '|' + bl0190descr.Value + '_|';

      mSped.Add(sRegistro +
                sUnid     +
                sDescr   );
      iTot0190 := iTot0190 + 1;
      iTotalRegistros := iTotalRegistros + 1;
      bl0190.Next;
    end;
  finally
    tbMovEst.CancelRange;
  end;
end;

procedure TdmSolicitacoes_Sped.geraBloco0200;
var
  sRegistro, sCodItem, sDescrItem, sCodBarra, sCodAntItem, sUnidInv, sTipoItem,
  sCodNCM, sExIPI, sCodGen, sCodLST, sAliqICMS, sCEST : String;
begin
  //itens que tiveram movimentação no período
  try
    tbMovEst.Open;
    tbMovEst.SetRange([false, strToDate(sDataIni)], [false, strToDate(sDataFim)]);
    tbMovEst.First;

    bl0200.Active := False;
    bl0200.Active := True;

    while not tbMovEst.Eof do begin
      if not bl0200.FindKey([tbMovEstProduto.value]) then begin
        if tbProduto.FindKey([tbMovEstProduto.value]) then
        begin
          bl0200.append;
          bl0200Cod_item.Value := tbMovEstProduto.AsInteger;
          bl0200descr_item.Value := Trim(tbProdutoDescricao.Value);
          bl0200cod_barra.Value := tbProdutoCodigo.Value;
          bl0200unid_inv.Value := tbProdutoUnid.Value;
          bl0200tipo_item.Value := '00';
          bl0200cod_ncm.Value := tbProdutoNCM.AsString;
          bl0200cod_gen.Value := copy(tbProdutoNCM.Value,1,2);
          bl0200aliq_icms.Value := 0.00;
          if (Length(tbProdutoCest.AsString) < 7) and (tbProdutocest.AsString <> '') then
            bl0200cod_CEST.Value := '0'+tbProdutocest.AsString
          else
            bl0200cod_CEST.Value := tbProdutocest.AsString;
          bl0200.post;
        end;
      end;
      tbMovEst.Next;
    end;

    bl0200.First;

    while not bl0200.Eof do
    begin

      sRegistro   := '|0200';
      sCodItem    := '|' + bl0200cod_item.AsString;
      sDescrItem  := '|' + Trim(bl0200descr_item.Value);
      sCodBarra   := '|' + bl0200cod_barra.Value;
      sCodAntItem := '|';
      sUnidInv    := '|' + bl0200unid_inv.Value;
      sTipoItem   := '|' + bl0200tipo_item.Value;
      sCodNCM     := '|' + bl0200cod_ncm.Value;
      sExIPI      := '|000';
      sCodGen     := '|' + bl0200cod_gen.Value;
      sCodLST     := '|';
      sAliqICMS   := '|' + bl0200aliq_icms.AsString;
      sCEST       := '|' + bl0200cod_CEST.asstring + '|';

      mSped.Add(sRegistro   +
                sCodItem    +
                sDescrItem  +
                sCodBarra   +
                sCodAntItem +
                sUnidInv    +
                sTipoItem   +
                sCodNCM     +
                sExIPI      +
                sCodGen     +
                sCodLST     +
                sAliqICMS   +
                sCEST       );
      iTot0200 := iTot0200 + 1;
      iTotalRegistros := iTotalRegistros + 1;
      bl0200.Next;
    end;
  finally
    tbMovEst.CancelRange;
  end;
end;

procedure TdmSolicitacoes_Sped.geraBloco0990;
var
  sRegistro, sTotalRegistro : string;
begin

  iTot0990 := iTot0000 + iTot0001 + iTot0005 + iTot0100 + iTot0150 +
              iTot0190 + iTot0200 + 1;
  iTot9900_ := iTot9900_ + 1;
  iTotalRegistros := iTotalRegistros + 1;
  sRegistro      := '|0990';
  sTotalRegistro := '|'+intToStr(iTot0990)+'|';

  mSped.Add(sRegistro      +
            sTotalRegistro );
end;

procedure TdmSolicitacoes_Sped.geraBloco1001;
var
  sRegistro : string ;
begin
  sRegistro := '|1001|0|';
  iTot1001 := iTot1001 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  mSped.Add(sRegistro);
end;

procedure TdmSolicitacoes_Sped.geraBloco1010;
var
  sRegistro :string;
begin
  sRegistro := '|1010|N|N|N|N|N|N|N|N|N|';
  iTot1010 := iTot1010 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  mSped.Add(sRegistro);
end;

procedure TdmSolicitacoes_Sped.geraBloco1990;
var
  sRegistro : string ;
begin
  iTot1990 := iTot1001 + iTot1010 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  sRegistro := '|1990|'+intToStr(iTot1990)+'|';
  mSped.Add(sRegistro);

end;

procedure TdmSolicitacoes_Sped.geraBloco9900;
begin
  mSped.Add('|9990|'+intToStr(iTot9900 + 4)+'|');
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBloco9999;
begin
    mSped.Add('|9999|'+ intToStr (iTotalRegistros + 1)+ '|') ;
end;

procedure TdmSolicitacoes_Sped.geraBLocoC001;
var
  sRegistro, sIndMov : string;
  bExisteNf : boolean;
function existeNFPeriodo(iTipoNfe, tran :integer; sDataIni, sDataFim :string): Boolean;
var
  iCont: integer;
begin
  try
    iCont := 0;
    tbTran.Active := true;
    tbTran.SetRange([false, iTipoNfe,  tran, strToDate(sDataIni)],[false, iTipoNfe, tran, strToDate(sDataFim)]);
    tbTran.First;

    if not tbTran.Eof then
      iCont := 1;

    tbTran.Active := true;
    tbTran.SetRange([true, iTipoNfe, tran, strToDate(sDataIni)],[true, iTipoNfe, tran, strToDate(sDataFim)]);
    tbTran.First;

    if iCont = 0 then
      Result := false
    else
    begin
      Result := True;
      exit;
    end;
  finally
    tbTran.CancelRange;
  end;
end;

begin
  bExisteNf := existeNFPeriodo(tiponfe_nenhum, trEstCompra, tbSolicitacoesSpedDataIni.AsString,
                                tbSolicitacoesSpeddataFim.AsString);
  bExisteNf := existeNFPeriodo(tiponfe_nfe, trEstVenda, tbSolicitacoesSpedDataIni.AsString,
                                tbSolicitacoesSpeddataFim.AsString);
  bExisteNf := existeNFPeriodo(tiponfe_nfce, trEstVenda, tbSolicitacoesSpedDataIni.AsString,
                                tbSolicitacoesSpeddataFim.AsString);
  bExisteNf := existeNFPeriodo(tiponfe_nfe, trEstDevFor, tbSolicitacoesSpedDataIni.AsString,
                                tbSolicitacoesSpeddataFim.AsString);
  bExisteNf := existeNFPeriodo(tiponfe_nfe, trEstTransf, tbSolicitacoesSpedDataIni.AsString,
                                tbSolicitacoesSpeddataFim.AsString);
  bExisteNf := existeNFPeriodo(tiponfe_nenhum, trEstTransfEnt, tbSolicitacoesSpedDataIni.AsString,
                                tbSolicitacoesSpeddataFim.AsString);
  bExisteNf := existeNFPeriodo(tiponfe_nfe, trEstOutEntr, tbSolicitacoesSpedDataIni.AsString,
                                tbSolicitacoesSpeddataFim.AsString);
  bExisteNf := existeNFPeriodo(tiponfe_SAT, trEstVenda, tbSolicitacoesSpedDataIni.AsString,
                                tbSolicitacoesSpeddataFim.AsString);
  sRegistro := '|C001';

  if bExisteNf = true then
    sIndMov   := '|0|'
  else
    sIndMov   := '|1|';

  iTotC001 := iTotC001 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  mSped.Add(sRegistro      +
            sIndMov );
end;

procedure TdmSolicitacoes_Sped.geraBlocoC100;
var
  sRegistro, sIndOper, sIndEmit, sCodPart, sCodMod, sCodSit, sSer,
  sNumDoc, sChaveNfe, sDtDoc, sDtEs, sVlDoc, sIndPgto, sVlDesc, sVlAbatNt,
  sVlMerc, sIndFrt, sVlFrt, sVlSeg, sVlOutDA, sVlBcIcms, sVlICMS, sVlBcIcmsSt,
  sVlIcmsSt, sVlIPI, sVlPis, sVlCofins, sVlPisSt, sVlCofinsSt :string;
  iNroNf :integer;

procedure zeraVariaveis;
begin
  VL_BC_ICMS    := 0;
  VL_ICMS       := 0;
  VL_BC_ICMS_ST := 0;
  VL_ICMS_ST    := 0;
  VL_IPI        := 0;
  VL_PIS        := 0;
  VL_COFINS     := 0;
  VL_PIS_ST     := 0;
  VL_COFINS_ST  := 0;
end;

procedure geraC100Entrada;
begin
  while not tbTran.Eof do
  begin
    tbMovEstSped.Active := true;
    tbMovEstSped.SetRange([tbTranID.value],[tbTranID.value]);
    tbMovEstSped.First;
    zeraVariaveis;

    while not tbMovEstSped.Eof do
    begin
      VL_BC_ICMS    := VL_BC_ICMS     + tbMovEstSpedvl_bc_icms.Value;
      VL_ICMS       := VL_ICMS        + tbMovEstSpedvl_icms.Value;
      VL_BC_ICMS_ST := VL_BC_ICMS_ST  + tbMovEstSpedvl_bc_icms_st.Value;
      VL_ICMS_ST    := VL_ICMS_ST     + tbMovEstSpedvl_icms_st.Value;
      VL_IPI        := VL_IPI         + tbMovEstSpedvl_ipi.Value;
      VL_PIS        := VL_PIS         + tbMovEstSpedvl_pis.Value;
      VL_COFINS     := VL_COFINS      + tbMovEstSpedvl_cofins.Value;
      VL_PIS_ST     := VL_PIS_ST      + 0;    //Rodrigo ver estas duas variaveis
      VL_COFINS_ST  := VL_COFINS_ST   + 0;
      tbMovEstSped.Next;
    end;

    iNroNf      := strToInt(copy(tbTranChaveNFE.Value,26,9));  //pega nro da NF-e pela chave armazenada na tabela de transações.
    sRegistro   := '|C100';                                                                //01
    sIndOper    := '|0';                                                                   //02
    sIndEmit    := '|1';                                                                   //03
    sCodPart    := '|' + tbTranCliente.AsString;                                           //04
    sCodMod     := '|' + copy(tbTranChaveNFE.Value,21,2);                                  //05
    sCodSit     := '|00';                                                                  //06
    sSer        := '|'+ copy(tbTranChaveNFE.Value,23,3);                                   //07
    sNumDoc     := '|'+ intToStr(iNroNf);                                                  //08
    sChaveNfe   := '|'+ tbTranChaveNFE.Value;                                              //09
    sDtDoc      := '|'+ SoDig(tbTranDataNF.AsString);                                      //10
    sDtEs       := '|'+ SoDig(tbTranDataNF.AsString);                                      //11
    sVlDoc      := '|'+ ReplaceStr(FormatValorSped(tbTranTotalFinal.Value,2),'.',',');     //12
    sIndPgto    := '|0';                                                                   //13
    sVlDesc     := '|'+ReplaceStr(FormatValorSped(tbTranDesconto.Value,2),'.',',');        //14
    sVlAbatNt   := '|0,00';                                                                //15
    sVlMerc     := '|'+ReplaceStr(FormatValorSped(tbTranTotal.Value,2),'.',',');           //16
    sIndFrt     := '|9';                                                                   //17
    sVlFrt      := '|'+ReplaceStr(FormatValorSped(tbTranFrete.Value,2),'.',',');           //18
    sVlSeg      := '|';                                                                    //19
    sVlOutDA    := '|';                                                                    //20
    sVlBcIcms   := '|' + ReplaceStr(FormatValorSped(VL_BC_ICMS,2),'.',',');                //21 Ver se pega do banco ou do XML
    sVlICMS     := '|' + ReplaceStr(FormatValorSped(VL_ICMS,2),'.',',');                   //22 Ver se pega do banco ou do XML
    sVlBcIcmsSt := '|' + ReplaceStr(FormatValorSped(VL_BC_ICMS_ST,2),'.',',');             //23 Ver se pega do banco ou do XML
    sVlIcmsSt   := '|' + ReplaceStr(FormatValorSped(VL_ICMS_ST,2),'.',',');                //24 Ver se pega do banco ou do XML
    sVlIPI      := '|' + ReplaceStr(FormatValorSped(VL_IPI,2),'.',',');                    //25 Ver se pega do banco ou do XML
    sVlPis      := '|' + ReplaceStr(FormatValorSped(VL_PIS,2),'.',',');                    //26 Ver se pega do banco ou do XML
    sVlCofins   := '|' + ReplaceStr(FormatValorSped(VL_COFINS,2),'.',',');                 //27 Ver se pega do banco ou do XML
    sVlPisSt    := '|' + ReplaceStr(FormatValorSped(VL_PIS_ST,2),'.',',');                 //28 Ver se pega do banco ou do XML
    sVlCofinsSt := '|' + ReplaceStr(FormatValorSped(VL_COFINS_ST,2),'.',',') +'|';         //29 Ver se pega do banco ou do XML

    somaTotaisBlocoE;

    mSped.Add( sRegistro    +
               sIndOper     +
               sIndEmit     +
               sCodPart     +
               sCodMod      +
               sCodSit      +
               sSer         +
               sNumDoc      +
               sChaveNfe    +
               sDtDoc       +
               sDtEs        +
               sVlDoc       +
               sIndPgto     +
               sVlDesc      +
               sVlAbatNt    +
               sVlMerc      +
               sIndFrt      +
               sVlFrt       +
               sVlSeg       +
               sVlOutDA     +
               sVlBcIcms    +
               sVlICMS      +
               sVlBcIcmsSt  +
               sVlIcmsSt    +
               sVlIPI       +
               sVlPis       +
               sVlCofins    +
               sVlPisSt     +
               sVlCofinsSt );
    geraBlocoC170;
    geraBlocoC190;
    iTotC100 := iTotC100 + 1;
    iTotalRegistros := iTotalRegistros + 1;
    tbTran.Next;
  end;
end;

procedure geraC100Saida;
begin
  while not tbTran.Eof do
  begin
    tbMovEstSped.Active := true;
    tbMovEstSped.SetRange([tbTranID.value],[tbTranID.value]);
    tbMovEstSped.First;

    tbNFe.Active := true;
    tbNFe.SetRange([tbTranUID.value],[tbTranUID.value]);
    tbNFe.First;

    zeraVariaveis;

    while (not tbMovEstSped.Eof) and (tbTranCancelado.Value = False) and (tbNFeProtocoloInut.Value = '')  do
    begin
      VL_BC_ICMS    := VL_BC_ICMS     + tbMovEstSpedvl_bc_icms.Value;
      VL_ICMS       := VL_ICMS        + tbMovEstSpedvl_icms.Value;
      VL_BC_ICMS_ST := VL_BC_ICMS_ST  + tbMovEstSpedvl_bc_icms_st.Value;
      VL_ICMS_ST    := VL_ICMS_ST     + tbMovEstSpedvl_icms_st.Value;
      VL_IPI        := VL_IPI         + tbMovEstSpedvl_ipi.Value;
      VL_PIS        := VL_PIS         + tbMovEstSpedvl_pis.Value;
      VL_COFINS     := VL_COFINS      + tbMovEstSpedvl_cofins.Value;
      VL_PIS_ST     := VL_PIS_ST      + 0;    //Rodrigo ver estas duas variaveis
      VL_COFINS_ST  := VL_COFINS_ST   + 0;
      tbMovEstSped.Next;
    end;

    //Adiciona Notas Inutilizdas que não foram emitidas novamente
    while not tbNFe.Eof do
    begin
      if (tbTranChaveNFE.Value <> tbNfeChave.Value) and (tbNFeProtocoloInut.Value <> '') then
      begin
          iNroNf      := strToInt(copy(tbTranChaveNFE.Value,26,9));  //pega nro da NF-e pela chave armazenada na tabela de transações.
          sRegistro   := '|C100';                                    //01
          sIndOper    := '|1';                                       //02
          sIndEmit    := '|0';                                       //03
          sCodPart    := '|';                                        //04
          sCodMod     := '|' + copy(tbTranChaveNFE.Value,21,2);      //05
          sCodSit     := '|05';                                      //06
          sSer        := '|'+ copy(tbTranChaveNFE.Value,23,3);       //07
          sNumDoc     := '|'+ tbNFeNumero.AsString;                  //08
          sChaveNfe   := '|';                                        //09
          sDtDoc      := '|';                                        //10
          sDtEs       := '|';                                        //11
          sVlDoc      := '|';                                        //12
          sIndPgto    := '|';                                        //13
          sVlDesc     := '|';                                        //14
          sVlAbatNt   := '|';                                        //15
          sVlMerc     := '|';                                        //16
          sIndFrt     := '|';                                        //17
          sVlFrt      := '|';                                        //18
          sVlSeg      := '|';                                        //19
          sVlOutDA    := '|';                                        //20
          sVlBcIcms   := '|';                                        //21 Ver se pega do banco ou do XML
          sVlICMS     := '|';                                        //22 Ver se pega do banco ou do XML
          sVlBcIcmsSt := '|';                                        //23 Ver se pega do banco ou do XML
          sVlIcmsSt   := '|';                                        //24 Ver se pega do banco ou do XML
          sVlIPI      := '|';                                        //25 Ver se pega do banco ou do XML
          sVlPis      := '|';                                        //26 Ver se pega do banco ou do XML
          sVlCofins   := '|';                                        //27 Ver se pega do banco ou do XML
          sVlPisSt    := '|';                                        //28 Ver se pega do banco ou do XML
          sVlCofinsSt := '||';                                       //29 Ver se pega do banco ou do XML
          somaTotaisBlocoE;
      end
      else
      begin
        if tbTranCancelado.Value = true then
        begin
          iNroNf      := strToInt(copy(tbTranChaveNFE.Value,26,9));  //pega nro da NF-e pela chave armazenada na tabela de transações.
          sRegistro   := '|C100';                                    //01
          sIndOper    := '|1';                                       //02
          sIndEmit    := '|0';                                       //03
          sCodPart    := '|';                                        //04
          sCodMod     := '|' + copy(tbTranChaveNFE.Value,21,2);      //05
          sCodSit     := '|02';                                      //06
          sSer        := '|'+ copy(tbTranChaveNFE.Value,23,3);       //07
          sNumDoc     := '|'+ tbNFeNumero.AsString;                  //08
          sChaveNfe   := '|'+ tbTranChaveNFE.Value;                  //09
          sDtDoc      := '|';                                        //10
          sDtEs       := '|';                                        //11
          sVlDoc      := '|';                                        //12
          sIndPgto    := '|';                                        //13
          sVlDesc     := '|';                                        //14
          sVlAbatNt   := '|';                                        //15
          sVlMerc     := '|';                                        //16
          sIndFrt     := '|';                                        //17
          sVlFrt      := '|';                                        //18
          sVlSeg      := '|';                                        //19
          sVlOutDA    := '|';                                        //20
          sVlBcIcms   := '|';                                        //21 Ver se pega do banco ou do XML
          sVlICMS     := '|';                                        //22 Ver se pega do banco ou do XML
          sVlBcIcmsSt := '|';                                        //23 Ver se pega do banco ou do XML
          sVlIcmsSt   := '|';                                        //24 Ver se pega do banco ou do XML
          sVlIPI      := '|';                                        //25 Ver se pega do banco ou do XML
          sVlPis      := '|';                                        //26 Ver se pega do banco ou do XML
          sVlCofins   := '|';                                        //27 Ver se pega do banco ou do XML
          sVlPisSt    := '|';                                        //28 Ver se pega do banco ou do XML
          sVlCofinsSt := '||';                                       //29 Ver se pega do banco ou do XML
          somaTotaisBlocoE;
        end
        else
        begin
          while not tbMovEstSped.Eof do
          begin
            VL_BC_ICMS    := VL_BC_ICMS     + tbMovEstSpedvl_bc_icms.Value;
            VL_ICMS       := VL_ICMS        + tbMovEstSpedvl_icms.Value;
            VL_BC_ICMS_ST := VL_BC_ICMS_ST  + tbMovEstSpedvl_bc_icms_st.Value;
            VL_ICMS_ST    := VL_ICMS_ST     + tbMovEstSpedvl_icms_st.Value;
            VL_IPI        := VL_IPI         + tbMovEstSpedvl_ipi.Value;
            VL_PIS        := VL_PIS         + tbMovEstSpedvl_pis.Value;
            VL_COFINS     := VL_COFINS      + tbMovEstSpedvl_cofins.Value;
            VL_PIS_ST     := VL_PIS_ST      + 0;    //Rodrigo ver estas duas variaveis
            VL_COFINS_ST  := VL_COFINS_ST   + 0;
            tbMovEstSped.Next;
          end;

          iNroNf      := strToInt(copy(tbTranChaveNFE.Value,26,9));  //pega nro da NF-e pela chave armazenada na tabela de transações.
          sRegistro   := '|C100';                                                                //01
          sIndOper    := '|1';                                                                   //02
          sIndEmit    := '|0';                                                                   //03
          sCodPart    := '|' + tbTranCliente.AsString;                                           //04
          sCodMod     := '|' + copy(tbTranChaveNFE.Value,21,2);                                  //05
          sCodSit     := '|00';                                                                  //06
          sSer        := '|'+ copy(tbTranChaveNFE.Value,23,3);                                   //07
          sNumDoc     := '|'+ tbNFeNumero.AsString;                                              //08
          sChaveNfe   := '|'+ tbTranChaveNFE.Value;                                              //09
          sDtDoc      := '|'+ SoDig(tbTranDataNF.AsString);                                      //10
          sDtEs       := '|'+ SoDig(tbTranDataNF.AsString);                                      //11
          sVlDoc      := '|'+ ReplaceStr(FormatValorSped(tbTranTotalFinal.Value,2),'.',',');     //12
          sIndPgto    := '|0';                                                                   //13
          sVlDesc     := '|'+ReplaceStr(FormatValorSped(tbTranDesconto.Value,2),'.',',');        //14
          sVlAbatNt   := '|0,00';                                                                //15
          sVlMerc     := '|'+ReplaceStr(FormatValorSped(tbTranTotal.Value,2),'.',',');           //16
          sIndFrt     := '|9';                                                                   //17
          sVlFrt      := '|'+ReplaceStr(FormatValorSped(tbTranFrete.Value,2),'.',',');           //18
          sVlSeg      := '|';                                                                    //19
          sVlOutDA    := '|';                                                                    //20
          sVlBcIcms   := '|' + ReplaceStr(FormatValorSped(VL_BC_ICMS,2),'.',',');                //21 Ver se pega do banco ou do XML
          sVlICMS     := '|' + ReplaceStr(FormatValorSped(VL_ICMS,2),'.',',');                   //22 Ver se pega do banco ou do XML
          sVlBcIcmsSt := '|' + ReplaceStr(FormatValorSped(VL_BC_ICMS_ST,2),'.',',');             //23 Ver se pega do banco ou do XML
          sVlIcmsSt   := '|' + ReplaceStr(FormatValorSped(VL_ICMS_ST,2),'.',',');                //24 Ver se pega do banco ou do XML
          sVlIPI      := '|' + ReplaceStr(FormatValorSped(VL_IPI,2),'.',',');                    //25 Ver se pega do banco ou do XML
          sVlPis      := '|' + ReplaceStr(FormatValorSped(VL_PIS,2),'.',',');                    //26 Ver se pega do banco ou do XML
          sVlCofins   := '|' + ReplaceStr(FormatValorSped(VL_COFINS,2),'.',',');                 //27 Ver se pega do banco ou do XML
          sVlPisSt    := '|' + ReplaceStr(FormatValorSped(VL_PIS_ST,2),'.',',');                 //28 Ver se pega do banco ou do XML
          sVlCofinsSt := '|' + ReplaceStr(FormatValorSped(VL_COFINS_ST,2),'.',',') +'|';         //29 Ver se pega do banco ou do XML
          somaTotaisBlocoE;
        end;
      end;
      mSped.Add( sRegistro    +
                 sIndOper     +
                 sIndEmit     +
                 sCodPart     +
                 sCodMod      +
                 sCodSit      +
                 sSer         +
                 sNumDoc      +
                 sChaveNfe    +
                 sDtDoc       +
                 sDtEs        +
                 sVlDoc       +
                 sIndPgto     +
                 sVlDesc      +
                 sVlAbatNt    +
                 sVlMerc      +
                 sIndFrt      +
                 sVlFrt       +
                 sVlSeg       +
                 sVlOutDA     +
                 sVlBcIcms    +
                 sVlICMS      +
                 sVlBcIcmsSt  +
                 sVlIcmsSt    +
                 sVlIPI       +
                 sVlPis       +
                 sVlCofins    +
                 sVlPisSt     +
                 sVlCofinsSt );
      iTotC100 := iTotC100 + 1;
      iTotalRegistros := iTotalRegistros + 1;
      if (tbTranCancelado.Value = False) and (tbNFeProtocoloInut.Value = '') then
        geraBlocoC190;
      tbNfe.next;
    end;
    tbTran.Next;
  end;
end;

begin
  tbTran.IndexName := 'ICanceladoTipoNFETipoDataNF';
  try
    //gerar entrada Transferencia Filial Recebimento
    tbTran.Active := true;
    tbTran.SetRange([False, tiponfe_nenhum, trEstTransfEnt, strToDate(sDataIni)],[False, tiponfe_nenhum, trEstTransfEnt, strToDate(sDataFim)]);
    geraC100Entrada;
  finally
    tbTran.CancelRange;
  end;

  try
    //gerar Entrada Compra
    tbTran.Active := true;
    tbTran.SetRange([False, tiponfe_nenhum, trEstCompra, strToDate(sDataIni)],[False, tiponfe_nenhum, trEstCompra, strToDate(sDataFim)]);
    geraC100Entrada;
  finally
    tbTran.CancelRange;
  end;

  try
    //gerar saida - Vendas Realizadas NF-e
    tbTran.Active := true;
    tbTran.SetRange([False, tiponfe_nfe, trEstVenda, strToDate(sDataIni)],[False, tiponfe_nfe, trEstVenda, strToDate(sDataFim)]);
    geraC100Saida;
  finally
    tbTran.CancelRange;
  end;

  try
    //gerar saida - Vendas Canceladas NF-e
    tbTran.Active := true;
    tbTran.SetRange([True, tiponfe_nfe, trEstVenda, strToDate(sDataIni)],[true, tiponfe_nfe, trEstVenda, strToDate(sDataFim)]);
    geraC100Saida;
  finally
    tbTran.CancelRange;
  end;

    try
    //gerar saida - Vendas Realizadas NFC-e
    tbTran.Active := true;
    tbTran.SetRange([False, tiponfe_nfce, trEstVenda, strToDate(sDataIni)],[False, tiponfe_nfce, trEstVenda, strToDate(sDataFim)]);
    geraC100Saida;
  finally
    tbTran.CancelRange;
  end;

  try
    //gerar saida - Vendas Canceladas NFC-e
    tbTran.Active := true;
    tbTran.SetRange([True, tiponfe_nfce, trEstVenda, strToDate(sDataIni)],[true, tiponfe_nfce, trEstVenda, strToDate(sDataFim)]);
    geraC100Saida;
  finally
    tbTran.CancelRange;
  end;

    try
    //gerar Saidas - Vendas Realizadas DevFor
    tbTran.Active := true;
    tbTran.SetRange([False, tiponfe_nfe, trEstDevFor, strToDate(sDataIni)],[False, tiponfe_nfe, trEstDevFor, strToDate(sDataFim)]);
    geraC100Saida;
  finally
    tbTran.CancelRange;
  end;

  try
    //gerar Saida - Vendas canceladas DevFor
    tbTran.Active := true;
    tbTran.SetRange([True,tiponfe_nfe, trEstDevFor, strToDate(sDataIni) ],[true, tiponfe_nfe, trEstDevFor, strToDate(sDataFim)]);
    geraC100Saida;
  finally
    tbTran.CancelRange;
  end;

    try
    //gerar Saida - Vendas Realizadas Transferencias Emissao
    tbTran.Active := true;
    tbTran.SetRange([False, tiponfe_nfe, trEstTransf, strToDate(sDataIni)],[False, tiponfe_nfe, trEstTransf, strToDate(sDataFim)]);
    geraC100Saida;
  finally
    tbTran.CancelRange;
  end;

  try
    //gerar Saida - Vendas Canceldas Transferencias Emissao
    tbTran.Active := true;
    tbTran.SetRange([True, tiponfe_nfe, trEstTransf, strToDate(sDataIni) ],[True, tiponfe_nfe, trEstTransf, strToDate(sDataFim)]);
    geraC100Saida;
  finally
    tbTran.CancelRange;
  end;

    try
    //gerar saida - Vendas Realizadas Outras Entradas Emissao
    tbTran.Active := true;
    tbTran.SetRange([False, tiponfe_nfe, trEstOutEntr, strToDate(sDataIni)],[False, tiponfe_nfe, trEstOutEntr, strToDate(sDataFim)]);
    geraC100Saida;
  finally
    tbTran.CancelRange;
  end;

  try
    //gerar saidas - Vendas Canceladas Outras Entradas Emissao
    tbTran.Active := true;
    tbTran.SetRange([True, tiponfe_nfe, trEstOutEntr, strToDate(sDataIni)], [True, tiponfe_nfe, trEstOutEntr, strToDate(sDataFim) ]);
    geraC100Saida;
  finally
    tbTran.CancelRange;
  end;

end;

procedure TdmSolicitacoes_Sped.geraBlocoC170;
var
  sRegistro, sNumItem, sCodItem, sDescrCompl, sQTD, sUnid, sVlitem, sVlDesc,
  sIndMov, sCstIcms, sCFOP, sCodNat, sVlBcICMS, sAliqICMS, sVlICMS, sVlBcIcmsSt,
  sAliqSt, sVlIcmsSt, sIndApur, sCstIPI, sCodEnq, sVlBcIPI, sAliqIPI, sVlIPI,
  sCstPIS, sVlBcPIS, sAliqPisPerc, sQuantBcPis, sAliqPis, sVlPis, sCstCOFINS,
  sVlBcCofins, sAliqCofinsPerc, sQuantBcCOFINS, sAliqCofins, sVlCofins,
  sCodcta : String;
begin
  tbMovEstSped.Active := false;
  tbMovEstSped.Active := true;
  tbMovEstSped.SetRange([tbTranId.Value], [tbTranId.Value]);
  tbMovEstSped.First;

  while not tbMovEstSped.Eof do
  begin
      sRegistro       := '|C170';
      sNumItem        := '|' + intToStr(tbMovEstSpedNum_Item.Value);
      sCodItem        := '|' + tbMovEstSpedProduto.AsString;
      sDescrCompl     := '|' + tbMovEstSpedDescr_compl.Value;
      sQTD            := '|' + replaceStr(FormatValorSped(tbMovEstSpedQTD.Value,5),'.',',');
      sUnid           := '|' + tbMovEstSpedUnid.Value;
      sVlitem         := '|' + replaceStr(FormatValorSped(tbMovEstSpedvl_item.Value,2),'.',',');
      sVlDesc         := '|' + replaceStr(FormatValorSped(tbMovEstSpedvl_desc.Value,2),'.',',');
      sIndMov         := '|' + tbMovEstSpedind_mov.Value;
      sCstIcms        := '|' + tbMovEstSpedcst_icms.Value;
      sCFOP           := '|' + tbMovEstSpedcfop.Value;
      sCodNat         := '|' + tbMovEstSpedcod_nat.Value;
      sVlBcICMS       := '|' + replaceStr(FormatValorSped(tbMovEstSpedvl_bc_icms.Value,2),'.',',');
      sAliqICMS       := '|' + replaceStr(FormatValorSped(tbMovEstSpedaliq_icms.Value,2),'.',',');
      sVlICMS         := '|' + replaceStr(FormatValorSped(tbMovEstSpedvl_icms.Value,2),'.',',');
      sVlBcIcmsSt     := '|' + replaceStr(FormatValorSped(tbMovEstSpedvl_bc_icms_st.Value,2),'.',',');
      sAliqSt         := '|' + replaceStr(formatValorSped(tbMovEstSpedaliq_st.Value,2),'.',',');
      sVlIcmsSt       := '|' + replaceStr(formatValorSped(tbMovEstSpedvl_icms_st.Value,2),'.',',');
      sIndApur        := '|' + tbMovEstSpedind_apur.Value;
      sCstIPI         := '|' + tbMovEstSpedcst_ipi.Value;
      sCodEnq         := '|' + tbMovEstSpedcod_enq.Value;
      sVlBcIPI        := '|' + replaceStr(formatValorSped(tbMovEstSpedvl_bc_ipi.Value,2),'.',',');
      sAliqIPI        := '|' + replaceStr(formatValorSped(tbMovEstSpedaliq_ipi.Value,2),'.',',');
      sVlIPI          := '|' + replaceStr(formatValorSped(tbMovEstSpedvl_ipi.Value,2),'.',',');
      if Length(tbMovEstSpedcst_pis.AsString) = 1 then
        sCstPIS         := '|0' + tbMovEstSpedcst_pis.AsString
      else
        sCstPIS         := '|' + tbMovEstSpedcst_pis.AsString;
      sVlBcPIS        := '|' + replaceStr(formatValorSped(tbMovEstSpedvl_bc_pis.Value,2),'.',',');
      sAliqPisPerc    := '|' + replaceStr(formatValorSped(tbMovEstSpedaliq_pis_perc.Value,2),'.',',');
      sQuantBcPis     := '|' + replaceStr(FormatValorSped(tbMovEstSpedquant_bc_pis.Value,3),'.',',');
      sAliqPis        := '|' + replaceStr(FormatValorSped(tbMovEstSpedaliq_pis.Value,2),'.',',');
      sVlPis          := '|' + replaceStr(FormatValorSped(tbMovEstSpedvl_pis.Value,2),'.',',');
      if Length(tbMovEstSpedcst_Cofins.AsString) = 1 then
        sCstCOFINS         := '|0' + tbMovEstSpedcst_Cofins.AsString
      else
        sCstCOFINS         := '|' + tbMovEstSpedcst_Cofins.AsString;
      sVlBcCofins     := '|' + replaceStr(formatValorSped(tbMovEstSpedvl_bc_cofins.Value,2),'.',',');
      sAliqCofinsPerc := '|' + replaceStr(formatValorSped(tbMovEstSpedaliq_cofins_perc.Value,2),'.',',');
      sQuantBcCOFINS  := '|' + replaceStr(FormatValorSped(tbMovEstSpedquant_bc_cofins.Value,3),'.',',');
      sAliqCofins     := '|' + replaceStr(FormatValorSped(tbMovEstSpedaliq_cofins.Value,2),'.',',');
      sVlCofins       := '|' + replaceStr(FormatValorSped(tbMovEstSpedvl_cofins.Value,2),'.',',');
      sCodcta         := '|' + tbMovEstSpedcod_cta.Value+'|';

      //gerar itens somente das entradas
       mSped.Add(sRegistro  +    //1
                sNumItem +       //2
                sCodItem +       //3
                sDescrCompl +    //4
                sQTD +           //5
                sUnid +          //6
                sVlitem +        //7
                sVlDesc +        //8
                sIndMov +        //9
                sCstIcms +       //10
                sCFOP +          //11
                sCodNat +        //12
                sVlBcICMS +      //13
                sAliqICMS +      //14
                sVlICMS +        //15
                sVlBcIcmsSt +    //16
                sAliqSt +        //17
                sVlIcmsSt +      //18
                sIndApur +       //19
                sCstIPI +        //20
                sCodEnq +        //21
                sVlBcIPI +       //22
                sAliqIPI +       //23
                sVlIPI +         //24
                sCstPIS +        //25
                sVlBcPIS +       //26
                sAliqPisPerc +   //27
                sQuantBcPis +    //28
                sAliqPis +       //29
                sVlPis +         //30
                sCstCOFINS +     //31
                sVlBcCofins +    //32
                sAliqCofinsPerc +//33
                sQuantBcCOFINS + //34
                sAliqCofins +    //35
                sVlCofins +      //36
                sCodcta);        //37
      iTotC170 := iTotC170 + 1;
      iTotalRegistros := iTotalRegistros + 1;
      tbMovEstSped.Next;
  end;
end;

procedure TdmSolicitacoes_Sped.geraBlocoC190;
begin

  tbSpedC190.Active := true;
  tbSpedC190.SetRange([tbTranId.Value], [tbTranId.Value]);

  while not tbSpedC190.Eof do
  begin
    mSped.Add('|C190'+                                                                        //1
              '|' + tbSpedC190CST_ICMS.Value +                                                //2
              '|' + tbSpedC190CFOP.Value +                                                    //3
              '|' + ReplaceStr(FormatValorSped(tbSpedC190ALIQ_ICMS.Value,2),'.',',')+         //4
              '|' + ReplaceStr(FormatValorSped(tbSpedC190Vl_OPER.Value,2),'.',',')+           //5
              '|' + ReplaceStr(FormatValorSped(tbSpedC190VL_BC_ICMS.Value,2),'.',',')+        //6
              '|' + ReplaceStr(FormatValorSped(tbSpedC190VL_ICMS.Value,2),'.',',')+           //7
              '|' + ReplaceStr(FormatValorSped(tbSpedC190VL_BC_ICMS_ST.Value,2),'.',',')+     //8
              '|' + ReplaceStr(FormatValorSped(tbSpedC190VL_ICMS_ST.Value,2),'.',',')+        //9
              '|' + ReplaceStr(FormatValorSped(tbSpedC190VL_RED_BC.Value,2),'.',',')+         //10
              '|' + ReplaceStr(FormatValorSped(tbSpedC190VL_IPI.Value,2),'.',',')+            //11
              '|' + tbSpedC190COD_OBS.Value +'|');                                            //12
    iTotC190 := iTotC190 + 1;
    iTotalRegistros := iTotalRegistros + 1;
    tbSpedC190.Next;
  end;
end;

procedure TdmSolicitacoes_Sped.geraBlocoC860;
var
  sDocIni, sDocFim, dtIni, dtFim :string;
begin
  try
    tbTran.Active := true;
    tbTran.IndexName := 'ITipoNFeDataNF';
    tbTran.SetRange([tiponfe_sat, sDataIni],[tiponfe_sat, sDataFim]);
    tbTran.Open;

    while not tbTran.Eof do
    begin
      tbNfe.Active := true;
      tbNFe.IndexName := 'ITran';
      tbNFe.FindKey([tbTranUID.value]);
      tbNFe.Open;

      dmSat.LoadXML(tbNFEXMLDest.Value, '', 0, tbTranFunc.Value, tbTranID.AsString, tConfig);
      blC860.Active := true;
      blC860.FindKey([dmSat.mtIDEnserieSAT.Value]);
      blC860.Open;

      if (blC860.Eof) or
         ((blC860nr_sat.Value = dmSat.mtIDEnserieSAT.asString) and
          (blC860dt_doc.Value <> soDig(tbTranDataNF.AsString))) then
      begin
        blC860.Append;
        blC860cod_mod.Value := '59';
        blC860nr_sat.Value := dmSat.mtIDEnserieSAT.AsString;
        blC860dt_doc.Value := soDig(tbTranDataNF.AsString);

        tbNFE.Active := true;
        tbNFe.IndexName := 'ITipoDocDataHora';
        tbNFE.setRange([tiponfe_sat, (tbTranDataNf.asString + ' 00:00:01')],[tiponfe_sat, (tbTranDataNf.asString + ' 23:59:59')]);
        tbNFE.Open;
        blC860doc_ini.Value := tbNFeNumero.AsString;
        tbNFE.Last;
        blC860doc_fim.Value := tbNFeNumero.AsString;
        blC860.Post;
      end;
      tbTran.Next;
    end;
    blc860.Open;
    blC860.First;
    while not blC860.Eof do
    begin
      mSped.Add('|C860'+
                '|'    + blC860cod_mod.Value +
                '|'    + blC860nr_sat.Value  +
                '|'    + blC860dt_doc.Value  +
                '|'    + blC860doc_ini.Value +
                '|'    + blC860doc_fim.Value +'|');
      iTotC860 := iTotC860 + 1;
      iTotalRegistros := iTotalRegistros + 1;
      geraBlocoC890;
      blC860.Next;
    end;
    tbTran.IndexName := 'ICanceladoTipoNFeTipoDataNF';
    tbNFe.IndexName := 'ITran';
  finally
    tbTran.CancelRange;
  end;
end;

procedure TdmSolicitacoes_Sped.geraBlocoC890;
var
  sICMS_CST :string;
  vProd, vIcms, vBcICMS : double;
  aux :integer;
  bAchou :boolean;

  function acertaICMS_ST(s :string) :string;
begin
  if Length(s) = 1 then
    result := '00'+s
  else
    if Length(s) = 2 then
      result := '0'+s
    else
      result := s;
end;

procedure insereRegistro;
begin
  blC890.Append;
  blC890cst_icms.Value  := sICMS_CST;
  blC890cfop.Value      := dmSat.mtItemCFOP.AsString;
  blC890aliqICMS.Value  := dmSat.mtItempICMS.value;
  blC890vlOpr.Value     := dmSat.mtItemvProd.Value;

  if dmSat.mtItempICMS.Value > 0 then
  begin
    blC890vlBcIcms.Value  := dmSat.mtItemvProd.Value;
    blC890vlICMS.Value    := dmSat.mtItemvICMS.Value;
  end
  else
  begin
    blC890vlBcIcms.Value  := 0;
    blC890vlICMS.Value    := 0;
  end;
  blC890.Post;
end;

procedure atualizaRegistro;
begin
  vProd   := blC890vlOpr.Value;
  vIcms   := blC890vlICMS.Value;
  vBcICMS := blC890vlBcIcms.Value;

  blC890.Edit;
  blC890vlOpr.Value     := vProd   + dmSat.mtItemvProd.Value;
  blC890vlICMS.Value    := vIcms   + dmSat.mtItemvICMS.Value;
  blC890vlBcIcms.Value  := vBcICMS + dmSat.mtItemvProd.Value;
  blC890.Post;
end;

begin
  vProd   := 0;
  vIcms   := 0;
  vBcICMS := 0;

  tbTran2.Active := true;
  tbTran2.SetRange([false, tiponfe_sat, trEstVenda, sDataIni],[false, tiponfe_sat, trEstVenda, sDataFim]);

  while not tbTran2.Eof do
  begin
    tbNfe.Active := true;
    tbNFe.IndexName := 'ITran';
    tbNFe.FindKey([tbTran2UID.value]);
    tbNFe.Open;

    dmSat.LoadXML(tbNFEXMLDest.Value, '', 0, tbTran2Func.Value, tbTran2ID.AsString, tConfig);
    dmSat.mtItem.First;

    aux := tbTran2ID.AsInteger;
    bAchou := false;

    while not dmSat.mtItem.eof do
    begin
      if dmSat.mtItemCSOSN.AsString <> '' then
        sICMS_CST := acertaICMS_ST(dmSat.mtItemCSOSN.AsString)
      else
        sICMS_CST := acertaICMS_ST(dmSat.mtItemCST.AsString);

      blC890.Active := true;
      blC890.SetRange([dmSat.mtItemCFOP.asString], [dmSat.mtItemCFOP.asString]);
      blC890.First;

      if blC890.Eof then
        insereRegistro
      else
      begin
        while not blC890.Eof do
        begin
          if sICMS_CST = blC890cst_icms.Value then
          begin
            if dmSat.mtItempICMS.Value = blC890aliqICMS.Value then
            begin
              bAchou := true;
              blC890.Last;
            end;
          end;
          blC890.Next;
        end;

        if bAchou = true then
          atualizaRegistro
        else
          insereRegistro;
      end;
      dmSat.mtItem.Next;
    end;
    tbTran2.Next;
  end;

  blC890.First;

  while not blC890.Eof do
  begin
    mSped.Add('|C890' +
              '|'     + blC890cst_icms.Value  +
              '|'     + blC890cfop.Value      +
              '|'     + ReplaceStr(FormatValorSped(blC890aliqICMS.Value,2),'.',',')  +
              '|'     + ReplaceStr(FormatValorSped(blC890vlOpr.Value,2),'.',',')     +
              '|'     + '0,00'  +
              '|'     + ReplaceStr(FormatValorSped(blC890vlICMS.Value,2),'.',',')    +
              '||');
    iTotC890 := iTotC890 + 1;
    iTotalRegistros := iTotalRegistros + 1;
    blC890.Next;
  end;
end;

procedure TdmSolicitacoes_Sped.geraBlocoC990;
var
  sRegistro, sQtdLinC :String;
begin
  iTotC990 := iTotC001 + iTotC100 + iTotC170 + iTotC190 + iTotC860 + iTotC890 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  sRegistro := '|C990';
  sQtdLinC  := '|'+intToStr( iTotC990)+'|';

  mSped.Add(sRegistro      +
            sQtdLinC );
end;

procedure TdmSolicitacoes_Sped.geraBlocoD001;
var
  sRegistro, sIndMov : string;
begin

  sRegistro := '|D001';
  sIndMov   := '|1|';

  iTotD001 := iTotD001 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  mSped.Add(sRegistro      +
            sIndMov );

end;

procedure TdmSolicitacoes_Sped.geraBlocoD990;
var
  sRegistro, sQtdLinC :String;
begin
  iTotD990 := iTotD001 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  sRegistro := '|D990';
  sQtdLinC   := '|'+intToStr( iTotD990 )+'|';

  mSped.Add(sRegistro      +
            sQtdLinC );

end;

procedure TdmSolicitacoes_Sped.geraBlocoE001;
var
  sRegistro, sIndMov : string;
begin

  sRegistro := '|E001';
  sIndMov   := '|0|';

  iTotE001 := iTotE001 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  mSped.Add(sRegistro      +
            sIndMov );

end;

procedure TdmSolicitacoes_Sped.geraBlocoE100;
var
  sRegistro, sDtIni, sDtFim : string;
begin

  sRegistro := '|E100';
  sDtIni    := '|' + soDig(sDataIni);
  sDtFim    := '|'+ soDig(sDataFim) +'|';

  iTotE100 := iTotE100 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  mSped.Add(sRegistro  +
            sDtIni   +
            sDtFim   );

end;

procedure TdmSolicitacoes_Sped.geraBlocoE110;
var
  sRegistro, sVL_TOT_DEBITOS, sVL_AJ_DEBITOS, sVL_TOT_AJ_DEBITOS, sVL_ESTORNOS_CRED,
  sVL_TOT_CREDITOS, sVL_AJ_CREDITOS, sVL_TOT_AJ_CREDITOS, sVL_ESTORNOS_DEB,
  sVL_SLD_CREDOR_ANT, sVL_SLD_APURADO, sVL_TOT_DED, sVL_ICMS_RECOLHER,
  sVL_SLD_CREDOR_TRANSPORTAR, sDEB_ESP :string;
begin

  sRegistro                  := '|E110';                                                                 //01
  sVL_TOT_DEBITOS            := '|' + ReplaceStr(FormatValorSped(VL_TOT_DEBITOS,2),'.',',');             //02
  sVL_AJ_DEBITOS             := '|' + ReplaceStr(FormatValorSped(VL_AJ_DEBITOS,2),'.',',');              //03
  sVL_TOT_AJ_DEBITOS         := '|' + ReplaceStr(FormatValorSped(VL_TOT_AJ_DEBITOS,2),'.',',');          //04
  sVL_ESTORNOS_CRED          := '|' + ReplaceStr(FormatValorSped(VL_ESTORNOS_CRED,2),'.',',');           //05
  sVL_TOT_CREDITOS           := '|' + ReplaceStr(FormatValorSped(VL_TOT_CREDITOS,2),'.',',');            //06
  sVL_AJ_CREDITOS            := '|' + ReplaceStr(FormatValorSped(VL_AJ_CREDITOS,2),'.',',');             //07
  sVL_TOT_AJ_CREDITOS        := '|' + ReplaceStr(FormatValorSped(VL_TOT_AJ_CREDITOS,2),'.',',');         //08
  sVL_ESTORNOS_DEB           := '|' + ReplaceStr(FormatValorSped(VL_ESTORNOS_DEB,2),'.',',');            //09
  sVL_SLD_CREDOR_ANT         := '|' + ReplaceStr(FormatValorSped(VL_SLD_CREDOR_ANT,2),'.',',');          //10
  sVL_SLD_APURADO            := '|' + ReplaceStr(FormatValorSped(VL_SLD_APURADO,2),'.',',');             //11
  sVL_TOT_DED                := '|' + ReplaceStr(FormatValorSped(VL_TOT_DED,2),'.',',');                 //12
  sVL_ICMS_RECOLHER          := '|' + ReplaceStr(FormatValorSped(VL_ICMS_RECOLHER,2),'.',',');           //13
  sVL_SLD_CREDOR_TRANSPORTAR := '|' + ReplaceStr(FormatValorSped(VL_SLD_CREDOR_TRANSPORTAR,2),'.',',');  //14
  sDEB_ESP                   := '|' + ReplaceStr(FormatValorSped(DEB_ESP,2),'.',',')+'|';                //15

  iTotE110 := iTotE110 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  mSped.Add(sRegistro                   +
            sVL_TOT_DEBITOS             +
            sVL_AJ_DEBITOS              +
            sVL_TOT_AJ_DEBITOS          +
            sVL_ESTORNOS_CRED           +
            sVL_TOT_CREDITOS            +
            sVL_AJ_CREDITOS             +
            sVL_TOT_AJ_CREDITOS         +
            sVL_ESTORNOS_DEB            +
            sVL_SLD_CREDOR_ANT          +
            sVL_SLD_APURADO             +
            sVL_TOT_DED                 +
            sVL_ICMS_RECOLHER           +
            sVL_SLD_CREDOR_TRANSPORTAR  +
            sDEB_ESP );

end;

procedure TdmSolicitacoes_Sped.geraBlocoE200;
var
  sRegistro, sUF, sDtIni, sDtFim : string;
  i :integer;
begin
  for I := 1 to 27 do
  begin
    sRegistro := '|E200';
    sUF       := '|' + Estados.porID(i);
    sDtIni  := '|' + soDig(sDataIni);
    sDtFim  := '|' + soDig(sDataFim) +'|';

    mSped.Add( sRegistro +
               sUF       +
               sDtIni  +
               sDtFim  );

    tbSpedE210.Active := true;
    tbSpedE210.SetRange([i,sDataIni],[i,sDataFim]);
    tbSpedE210.First;

    geraBlocoE210;
    iTotE200 := iTotE200 + 1;
    iTotalRegistros := iTotalRegistros + 1;
  end;
end;

procedure TdmSolicitacoes_Sped.geraBlocoE210;
var
  sRegistro, sIND_MOV_ST,sVL_SLD_CRED_ANT_ST, sVL_DEVOL_ST, sVL_RESSARC_ST,
  sVL_OUT_CRED_ST, sVL_AJ_CREDITOS_ST, sVL_RETENCAO_ST, sVL_OUT_DEB_ST,
  sVL_AJ_DEBITOS_ST, sVL_SLD_DEV_ANT_ST, sVL_DEDUCOES_ST, sVL_ICMS_RECOL_ST,
  sVL_SLD_CRED_ST_TRANSPORTAR, sDEB_ESP_ST :string;

  fVL_SLD_CRED_ANT_ST, fVL_DEVOL_ST, fVL_RESSARC_ST, fDEB_ESP_ST,
  fVL_OUT_CRED_ST, fVL_AJ_CREDITOS_ST, fVL_RETENCAO_ST, fVL_OUT_DEB_ST,
  fVL_AJ_DEBITOS_ST, fVL_SLD_DEV_ANT_ST, fVL_DEDUCOES_ST, fVL_ICMS_RECOL_ST,
  fVL_SLD_CRED_ST_TRANSPORTAR  : Currency;

procedure zeraVariaveis;
begin
  fVL_SLD_CRED_ANT_ST := 0;
  fVL_DEVOL_ST := 0;
  fVL_RESSARC_ST  := 0;
  fDEB_ESP_ST := 0;
  fVL_OUT_CRED_ST := 0;
  fVL_AJ_CREDITOS_ST := 0;
  fVL_RETENCAO_ST := 0;
  fVL_OUT_DEB_ST := 0;
  fVL_AJ_DEBITOS_ST := 0;
  fVL_SLD_DEV_ANT_ST := 0;
  fVL_DEDUCOES_ST := 0;
  fVL_ICMS_RECOL_ST := 0;
  fVL_SLD_CRED_ST_TRANSPORTAR := 0;
end;

begin

  zeraVariaveis;

  sRegistro := '|E210';      //1
  if   (tbSpedE210IND_MOV_ST.Value = 1 ) and
     ( (tbSpedE210VL_DEVOL_ST.Value         > 0) or
       (tbSpedE210VL_SLD_CRED_ST_TRAN.Value > 0) or
       (tbSpedE210VL_OUT_CRED_ST.Value      > 0) )then
  begin
    while not tbSpedE210.Eof do
    begin
      fVL_SLD_CRED_ANT_ST := fVL_SLD_CRED_ANT_ST + tbSpedE210VL_SLD_CRED_ANT_ST.Value;
      fVL_DEVOL_ST  := fVL_DEVOL_ST + tbSpedE210VL_DEVOL_ST.Value;
      fVL_RESSARC_ST  := fVL_RESSARC_ST + tbSpedE210VL_RESSARC_ST.Value;
      fVL_OUT_CRED_ST := fVL_OUT_CRED_ST + tbSpedE210VL_OUT_CRED_ST.Value;
      fVL_AJ_CREDITOS_ST  := fVL_AJ_CREDITOS_ST + tbSpedE210VL_AJ_CREDITOS_ST.Value;
      fVL_RETENCAO_ST := fVL_RETENCAO_ST + tbSpedE210VL_RETENCAO_ST.Value;
      fVL_OUT_DEB_ST  := fVL_OUT_DEB_ST + tbSpedE210VL_OUT_DEB_ST.Value;
      fVL_AJ_DEBITOS_ST := fVL_AJ_DEBITOS_ST + tbSpedE210VL_AJ_DEBITOS_ST.Value;
      fVL_SLD_DEV_ANT_ST  := fVL_SLD_DEV_ANT_ST + tbSpedE210VL_SLD_DEV_ANT_ST.Value;
      fVL_DEDUCOES_ST := fVL_DEDUCOES_ST + tbSpedE210VL_DEDUCOES_ST.Value;
      fDEB_ESP_ST := fDEB_ESP_ST + tbSpedE210DEB_ESP_ST.Value;
      tbSpedE210.Next;
    end;

    fVL_ICMS_RECOL_ST := fVL_SLD_DEV_ANT_ST - fVL_DEDUCOES_ST;
    fVL_SLD_CRED_ST_TRANSPORTAR := (fVL_SLD_CRED_ANT_ST +
                                    fVL_DEVOL_ST +
                                    fVL_RESSARC_ST +
                                    fVL_OUT_CRED_ST +
                                    fVL_AJ_CREDITOS_ST) -
                                    (fVL_RETENCAO_ST +
                                    fVL_OUT_DEB_ST +
                                    fVL_AJ_DEBITOS_ST);

    sIND_MOV_ST                 := '|1';                                                                      //2
    sVL_SLD_CRED_ANT_ST         := '|' + ReplaceStr(FormatValorSped(fVL_SLD_CRED_ANT_ST,2),'.',',');          //3
    sVL_DEVOL_ST                := '|' + ReplaceStr(FormatValorSped(fVL_DEVOL_ST,2),'.',',');                 //4
    sVL_RESSARC_ST              := '|' + ReplaceStr(FormatValorSped(fVL_RESSARC_ST,2),'.',',');               //5
    sVL_OUT_CRED_ST             := '|' + ReplaceStr(FormatValorSped(fVL_OUT_CRED_ST,2),'.',',');              //6
    sVL_AJ_CREDITOS_ST          := '|' + ReplaceStr(FormatValorSped(fVL_AJ_CREDITOS_ST,2),'.',',');           //7
    sVL_RETENCAO_ST             := '|' + ReplaceStr(FormatValorSped(fVL_RETENCAO_ST,2),'.',',');              //8
    sVL_OUT_DEB_ST              := '|' + ReplaceStr(FormatValorSped(fVL_OUT_DEB_ST,2),'.',',');               //9
    sVL_AJ_DEBITOS_ST           := '|' + ReplaceStr(FormatValorSped(fVL_AJ_DEBITOS_ST,2),'.',',');            //10
    sVL_SLD_DEV_ANT_ST          := '|' + ReplaceStr(FormatValorSped(fVL_SLD_DEV_ANT_ST,2),'.',',');           //11
    sVL_DEDUCOES_ST             := '|' + ReplaceStr(FormatValorSped(fVL_DEDUCOES_ST,2),'.',',');              //12
    sVL_ICMS_RECOL_ST           := '|' + ReplaceStr(FormatValorSped(fVL_ICMS_RECOL_ST,2),'.',',');            //13
    sVL_SLD_CRED_ST_TRANSPORTAR := '|' + ReplaceStr(FormatValorSped(fVL_SLD_CRED_ST_TRANSPORTAR,2),'.',',');  //14
    sDEB_ESP_ST                 := '|' + ReplaceStr(FormatValorSped(fDEB_ESP_ST,2),'.',',')+'|';              //15
  end
  else
  begin
    sIND_MOV_ST                 := '|0';      //2
    sVL_SLD_CRED_ANT_ST         := '|0,00';   //3
    sVL_DEVOL_ST                := '|0,00';   //4
    sVL_RESSARC_ST              := '|0,00';   //5
    sVL_OUT_CRED_ST             := '|0,00';   //6
    sVL_AJ_CREDITOS_ST          := '|0,00';   //7
    sVL_RETENCAO_ST             := '|0,00';   //8
    sVL_OUT_DEB_ST              := '|0,00';   //9
    sVL_AJ_DEBITOS_ST           := '|0,00';   //10
    sVL_SLD_DEV_ANT_ST          := '|0,00';   //11
    sVL_DEDUCOES_ST             := '|0,00';   //12
    sVL_ICMS_RECOL_ST           := '|0,00';   //13
    sVL_SLD_CRED_ST_TRANSPORTAR := '|0,00';   //14
    sDEB_ESP_ST                 := '|0,00|';  //15
  end;

  mSped.Add( sRegistro                    +
             sIND_MOV_ST                  +
             sVL_SLD_CRED_ANT_ST          +
             sVL_DEVOL_ST                 +
             sVL_RESSARC_ST               +
             sVL_OUT_CRED_ST              +
             sVL_AJ_CREDITOS_ST            +
             sVL_RETENCAO_ST              +
             sVL_OUT_DEB_ST               +
             sVL_AJ_DEBITOS_ST            +
             sVL_SLD_DEV_ANT_ST           +
             sVL_DEDUCOES_ST              +
             sVL_ICMS_RECOL_ST            +
             sVL_SLD_CRED_ST_TRANSPORTAR  +
             sDEB_ESP_ST                  );

  iTotE210 := iTotE210 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoE990;
var
  sRegistro, sQtdLinC :String;
begin
  iTotE990 := iTotE001 + iTotE100 + iTotE110 + iTotE200 + iTotE210 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  sRegistro := '|E990';
  sQtdLinC   := '|'+intToStr( iTotE990)+'|';

  mSped.Add(sRegistro      +
            sQtdLinC );
end;


procedure TdmSolicitacoes_Sped.geraBlocoG001;
var
  sRegistro : string ;
begin
  sRegistro := '|G001|1|';
  iTotG001 := iTotG001 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  mSped.Add(sRegistro);

end;

procedure TdmSolicitacoes_Sped.geraBlocoG990;
var
  sRegistro : string ;
begin
  iTotG990 := iTotG001 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  sRegistro := '|G990|'+intToStr(iTotG990)+'|';
  mSped.Add(sRegistro);

end;

procedure TdmSolicitacoes_Sped.geraBlocoH001;
var
  sRegistro : string ;
begin
  sRegistro := '|H001|1|';
  iTotH001 := iTotH001 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  mSped.Add(sRegistro);
end;

procedure TdmSolicitacoes_Sped.geraBlocoH990;
var
  sRegistro : string ;
begin
  iTotH990 := iTotH001 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  sRegistro := '|H990|'+intToStr(iTotH990)+'|';
  mSped.Add(sRegistro);
end;

procedure TdmSolicitacoes_Sped.geraBlocoK001;
var
  sRegistro : string ;
begin
  sRegistro := '|K001|1|';
  iTotK001 := iTotK001 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  mSped.Add(sRegistro);
end;

procedure TdmSolicitacoes_Sped.geraBlocoK990;
var
  sRegistro : string ;
begin
  iTotK990 := iTotK001 + 1;
  iTotalRegistros := iTotalRegistros + 1;
  sRegistro := '|K990|'+intToStr(iTotK990)+'|';
  mSped.Add(sRegistro);
end;

procedure TdmSolicitacoes_Sped.geraBlocoT0000;
begin
  mSped.Add('|9900|0000|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT0001;
begin
  mSped.Add('|9900|0001|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT0005;
begin
  mSped.Add('|9900|0005|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT0100;
begin
  mSped.Add('|9900|0100|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT0150;
begin
  mSped.Add('|9900|0150|'+intToStr(iTot0150)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT0190;
begin
  mSped.Add('|9900|0190|'+intToStr(iTot0190)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT0200;
begin
  mSped.Add('|9900|0200|'+intToStr(iTot0200)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT0990;
begin
  mSped.Add('|9900|0990|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT1001;
begin
  mSped.Add('|9900|1001|'+intToStr(iTot1001)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT1010;
begin
  mSped.Add('|9900|1010|'+intToStr(iTot1010)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT1990;
begin
    mSped.Add('|9900|1990|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT9001;
begin
    mSped.Add('|9900|9001|'+intToStr(iTot9001)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT9900_;
begin
    mSped.Add('|9900|9900|'+ intToStr(iTot9900 + 1)  +'|');
    iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT9990;
begin
  mSped.Add('|9900|9990|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoT9999;
begin
  mSped.Add('|9900|9999|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTC100;
begin
    mSped.Add('|9900|C100|'+intToStr(iTotC100)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTC001;
begin
    mSped.Add('|9900|C001|'+intToStr(iTotC001)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTC170;
begin
  mSped.Add('|9900|C170|'+intToStr(iTotC170)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTC190;
begin
    mSped.Add('|9900|C190|'+intToStr(iTotC190)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTC860;
begin
    mSped.Add('|9900|C860|'+intToStr(iTotC860)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTC890;
begin
    mSped.Add('|9900|C890|'+intToStr(iTotC890)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTC990;
begin
    mSped.Add('|9900|C990|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTD001;
begin
    mSped.Add('|9900|D001|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTD990;
begin
    mSped.Add('|9900|D990|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTE001;
begin
    mSped.Add('|9900|E001|'+intToStr(iTotE001)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTE100;
begin
    mSped.Add('|9900|E100|'+intToStr(iTotE100)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTE110;
begin
    mSped.Add('|9900|E110|'+intToStr(iTotE110)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTE200;
begin
  mSped.Add('|9900|E200|'+intToStr(iTotE200)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTE210;
begin
  mSped.Add('|9900|E210|'+intToStr(iTotE210)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTE990;
begin
    mSped.Add('|9900|E990|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTG001;
begin
  mSped.Add('|9900|G001|'+intToStr(iTotG001)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTG990;
begin
    mSped.Add('|9900|G990|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTH001;
begin
    mSped.Add('|9900|H001|'+intToStr(iTotH001)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTH990;
begin
    mSped.Add('|9900|H990|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTK001;
begin
    mSped.Add('|9900|K001|'+intToStr(iTotK001)+'|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

procedure TdmSolicitacoes_Sped.geraBlocoTK990;
begin
    mSped.Add('|9900|K990|1|');
  iTot9900 := iTot9900 + 1;
  iTotalRegistros := iTotalRegistros + 1;
end;

function TdmSolicitacoes_Sped.gerarSped : Boolean;
begin
  Result := tbSolicitacoesSped.FindKey([statusGeracaoSped_pendente]);
  if not Result then Exit;
  try
    _gerarSped(tbSolicitacoesSpedDataIni.AsString,
               tbSolicitacoesSpeddataFim.AsString,
               tbSolicitacoesSpedcnpj_emissor.Value);
  except
    on E: Exception do begin
      tbSolicitacoesSped.Edit;
      tbSolicitacoesSpedStatus.Value := statusGeracaoSped_erro;
      tbSolicitacoesSpedresultado.value := e.Message;
      tbSolicitacoesSped.Post;
    end;
  end;

  {tbSolicitacoesSped.Active := true;
  tbSolicitacoesSped.SetRange([statusGeracaoSped_pendente],[statusGeracaoSped_pendente]);
  tbSolicitacoesSped.Open;
  tbSolicitacoesSped.First;

  while not tbSolicitacoesSped.Eof do
  begin
    _gerarSped(tbSolicitacoesSpedDataIni.AsString,
               tbSolicitacoesSpeddataFim.AsString,
               tbSolicitacoesSpedcnpj_emissor.Value);
    tbSolicitacoesSped.Next;
  end;}
end;

procedure TdmSolicitacoes_Sped._gerarSped (dataIni, dataFim, sCnpjEmissor : string);

procedure zeraTotais;
begin
  iTotalRegistros := 0;
  iTot0000        := 0;
  iTot0001        := 0;
  iTot0005        := 0;
  iTot0100        := 0;
  iTot0150        := 0;
  iTot0190        := 0;
  iTot0200        := 0;
  iTot0990        := 0;
  iTot9999        := 0;
  iTotC001        := 0;
  iTotC100        := 0;
  iTotC170        := 0;
  iTotC190        := 0;
  iTotC860        := 0;
  iTotC890        := 0;
  iTotC990        := 0;
  iTotD001        := 0;
  iTotD990        := 0;
  iTotE001        := 0;
  iTotE100        := 0;
  iTotE110        := 0;
  iTotE990        := 0;
  iTotG001        := 0;
  iTotG990        := 0;
  iTotH001        := 0;
  iTotH990        := 0;
  iTotK001        := 0;
  iTotK990        := 0;
  iTot1001        := 0;
  iTot1010        := 0;
  iTot1990        := 0;
  iTot9001        := 0;
  iTot9900        := 0;
  iTot9900_       := 0;
  iTotE200        := 0;
  iTotE210        := 0;


  VL_BC_ICMS      := 0;
  VL_ICMS         := 0;
  VL_BC_ICMS_ST   := 0;
  VL_ICMS_ST      := 0;
  VL_IPI          := 0;
  VL_PIS          := 0;
  VL_COFINS       := 0;
  VL_PIS_ST       := 0;
  VL_COFINS_ST    := 0;

  //variaveis totalizadora dos impostos dos itens Registro C100 saida
  _VL_BC_ICMS     := 0;
  _VL_ICMS        := 0;
  _VL_BC_ICMS_ST  := 0;
  _VL_ICMS_ST     := 0;
  _VL_IPI         := 0;
  _VL_PIS         := 0;
  _VL_COFINS      := 0;
  _VL_PIS_ST      := 0;
  _VL_COFINS_ST   := 0;

  //Totais para calculo de ICMS - Registro E110
  VL_TOT_DEBITOS            := 0;
  VL_AJ_DEBITOS             := 0;
  VL_TOT_AJ_DEBITOS         := 0;
  VL_ESTORNOS_CRED          := 0;
  VL_TOT_CREDITOS           := 0;
  VL_AJ_CREDITOS            := 0;
  VL_TOT_AJ_CREDITOS        := 0;
  VL_ESTORNOS_DEB           := 0;
  VL_SLD_CREDOR_ANT         := 0;
  VL_SLD_APURADO            := 0;
  VL_TOT_DED                := 0;
  VL_ICMS_RECOLHER          := 0;
  VL_SLD_CREDOR_TRANSPORTAR := 0;
  DEB_ESP                   := 0;

end;

begin
  mSped := TStringList.Create;
  try
    mSped.Clear;
    zeraTotais;
    sDataIni := dataIni;
    sDataFim := dataFim;
    sCnpj_Emissor := sCnpjEmissor;

    geraBloco0000;  //Bloco Do Cabeçalho do Sped
    geraBloco0001;  //Abertura do bloco 0
    geraBloco0005;  //Dados Complementares do estabelecimento emissor
    geraBloco0100;  //Dados do contador
    geraBloco0150;  //Clientes e fornecedores relacionados nos documentos fiscais
    geraBloco0190;  //Unidades comercializadas dos produtos
    geraBloco0200;  //Produtos comercializados
    geraBloco0990;  //encerramento do bloco 0 com o total de linha deste bloco.

    geraBlocoC001;  //Abertura do bloco C
    geraBlocoC100;  //Geração Das notas do estabelecimento Entrada e Saída (NF, NF-e, NFC-e)
                    //Dentro deste Bloco estão os blocos C170 e C190 Onde:
                    //C170 Itens das notas (somente nas entradas)
                    //C190 totais de impostos da nota
    try
      tbTran.Active := true;
      tbTran.IndexName := 'ICanceladoTipoNFETipoDataNF';
      tbTran.SetRange([false, tiponfe_sat, trEstOutEntr, strToDate(sDataIni)],[false, tiponfe_sat, trEstOutEntr, strToDate(sDataFim)]);
      geraBlocoC860;  //Gera Bloco C860 Movimentação SAT
    finally
    end;
    geraBlocoC990;  //Encerramento do Bloco C com o total de linha deste bloco.

    geraBlocoD001;  //Abertura do bloco D
    geraBlocoD990;  //Encerramento do Bloco Dcom o total de linha deste bloco.

    geraBlocoE001;  //Abertura do bloco E
    geraBlocoE100;  //Período de apuração do ICMS
    geraBlocoE110;  //APURAÇÃO DO ICMS – OPERAÇÕES PRÓPRIAS.
    geraBlocoE200;  //PERÍODO DA APURAÇÃO DO ICMS - SUBSTITUIÇÃO TRIBUTÁRIA. Separado por UF de Emissão/destino
    geraBlocoE990;  //Encerramento do Bloco E com o total de linha deste bloco.

    geraBlocoG001;  //Abertura do bloco G
    geraBlocoG990;  //Encerramento do Bloco G com o total de linha deste bloco.

    geraBlocoH001;  //Abertura do bloco H
    geraBlocoH990;  //Encerramento do Bloco H com o total de linha deste bloco.

    geraBlocoK001;  //Abertura do bloco K
    geraBlocoK990;  //Encerramento do Bloco K com o total de linha deste bloco.

    geraBloco1001;  //Abertura do bloco 1
    geraBloco1010;  //OBRIGATORIEDADE DE REGISTROS DO BLOCO 1
    geraBloco1990; //Encerramento do Bloco 1001 com o total de linha deste bloco.

    //bloco dos totais de campos
    geraBlco9001;    //Abertura do bloco 9
    geraBlocoT0000;  //Total de registro do Registro 0000
    geraBlocoT0001;  //Total de registro do Registro 0001
    geraBlocoT0005;  //Total de registro do Registro 0005
    geraBlocoT0100;  //Total de registro do Registro 0100
    geraBlocoT0150;  //Total de registro do Registro 0150
    geraBlocoT0190;  //Total de registro do Registro 0190
    geraBlocoT0200;  //Total de registro do Registro 0200
    geraBlocoT0990;  //Total de registro do Registro 0990
    geraBlocoT9990;  //Total de registro do Registro 9900
    geraBlocoT9999;  //Total de registro do Registro 9999
    geraBlocoTC001;  //Total de registro do Registro C001
    geraBlocoTC100;  //Total de registro do Registro C100
    geraBlocoTC170;  //Total de registro do Registro C170
    geraBlocoTC190;  //Total de registro do Registro C190
    geraBlocoTC860;  //Total de registro do Registro C860
    geraBlocoTC890;  //Total de registro do Registro C890
    geraBlocoTC990;  //Total de registro do Registro C990
    geraBlocoTD001;  //Total de registro do Registro D001
    geraBlocoTD990;  //Total de registro do Registro D990
    geraBlocoTE001;  //Total de registro do Registro E001
    geraBlocoTE100;  //Total de registro do Registro E990
    geraBlocoTE110;  //Total de registro do Registro E110
    geraBlocoTE200;  //Total de registro do Registro E200
    geraBlocoTE210;  //Total de registro do Registro E210
    geraBlocoTE990;  //Total de registro do Registro E990
    gerablocoTG001;  //Total de registro do Registro G001
    geraBlocoTG990;  //Total de registro do Registro G990
    geraBlocoTH001;  //Total de registro do Registro H001
    geraBlocoTH990;  //Total de registro do Registro H990
    geraBlocoTK001;  //Total de registro do Registro K001
    geraBlocoTK990;  //Total de registro do Registro K990
    geraBlocoT1001;  //Total de registro do Registro 1001
    geraBlocoT1010;  //Total de registro do Registro 1010
    geraBlocoT1990;  //Total de registro do Registro 1990
    geraBlocoT9001;  //Total de registro do Registro 9901
    geraBlocoT9900_; //Total de registro do Registro 9900
    geraBloco9900;   //Total de registro do Registro 9900 com o total de linha deste bloco.
    geraBloco9999;   //Encerramento do BLoco 9 com o total de linha do arquivo Sped.

    tbSolicitacoesSpedGerar.Active := true;
    tbSolicitacoesSpedGerar.FindKey([tbSolicitacoesSpedId.Value]);
    tbSolicitacoesSpedGerar.Open;

    tbSolicitacoesSpedGerar.Edit;
    tbSolicitacoesSpedGerarcnpj_emissor.Value := sCnpjEmissor;
    tbSolicitacoesSpedGerarstatus.Value := statusGeracaoSped_ok;
    tbSolicitacoesSpedGerarspedGerado.Value := mSped.Text;
    tbSolicitacoesSpedGerar.Post;
  finally
    mSped.Free;
  end;
end;

procedure TdmSolicitacoes_Sped.openDB;
var I : Integer;
begin
  nxSession.ServerEngine := dmServidorBD.ServerEngine;
  nxDB.AliasPath := '';
  nxDB.AliasName := 'NexCafe';
  nxSession.Username := SessionUser;
  nxSession.Password := SessionPass;
  nxSession.Active := True;
  nxDB.Active := True;
  for I := 0 to nxDB.DataSetCount-1 do
    nxDB.DataSets[I].Active := True;
end;

procedure TdmSolicitacoes_Sped.processaSped;
begin
  tbSolicitacoesSped.Active := true;
   repeat
     Sleep(0);
   until not gerarSped;
end;

procedure TdmSolicitacoes_Sped.somaTotaisBlocoE;
begin
  VL_TOT_DEBITOS            := VL_TOT_DEBITOS + _VL_ICMS; //02 Valor total dos débitos por "Saídas e prestações com débito do imposto"
  VL_AJ_DEBITOS             := VL_AJ_DEBITOS + 0; //03 Valor total dos ajustes a débito decorrentes do documento fiscal.
  VL_TOT_AJ_DEBITOS         := VL_TOT_AJ_DEBITOS + 0; //04 Valor total de "Ajustes a débito"
  VL_ESTORNOS_CRED          := VL_ESTORNOS_CRED + 0; //05 Valor total de Ajustes “Estornos de créditos”
  VL_TOT_CREDITOS           := VL_TOT_CREDITOS + VL_ICMS; //06 Valor total dos créditos por "Entradas e aquisições com crédito do imposto
  VL_AJ_CREDITOS            := VL_AJ_CREDITOS + 0; //07 Valor total dos ajustes a crédito decorrentes do documento fiscal.
  VL_TOT_AJ_CREDITOS        := VL_TOT_AJ_CREDITOS + 0; //08 Valor total de "Ajustes a crédito"
  VL_ESTORNOS_DEB           := VL_ESTORNOS_DEB + 0; //09 Valor total de Ajustes “Estornos de Débitos
  VL_SLD_CREDOR_ANT         := VL_SLD_CREDOR_ANT + 0; //10 Valor total de "Saldo credor do período anterior"
  VL_SLD_APURADO            := VL_SLD_APURADO + 0; //11 Valor do saldo devedor apurado
  VL_TOT_DED                := VL_TOT_DED + 0; //12 Valor total de "Deduções"
  VL_ICMS_RECOLHER          := VL_ICMS_RECOLHER + 0; //13 Valor total de "ICMS a recolher (11-12)
  VL_SLD_CREDOR_TRANSPORTAR := VL_SLD_CREDOR_TRANSPORTAR + VL_ICMS; //14 Valor total de "Saldo credor a transportar para o período seguinte”
  DEB_ESP                   := DEB_ESP + 0; //15 Valores recolhidos ou a recolher, extraapuração.
end;

end.
