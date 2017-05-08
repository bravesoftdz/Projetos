unit ncDMproc_sped;

interface

uses
  System.SysUtils, System.Classes, System.DateUtils, nxdb, nxsdServerEngine,
  nxreRemoteServerEngine, nxllComponent, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, Data.DB, ncDMdanfe_nfe, ncDMdanfe_SAT;

type
  TdmProcDados_Sped = class(TDataModule)
    tXMLCompra: TnxTable;
    tXMLCompraChaveNFE: TStringField;
    tXMLCompraID: TUnsignedAutoIncField;
    tXMLCompraUID: TGuidField;
    tXMLCompraxml: TnxMemoField;
    tXMLCompraTran: TLongWordField;
    tC190Sped: TnxTable;
    tC190SpedID: TUnsignedAutoIncField;
    tC190SpedTran: TLongWordField;
    tC190SpedCST_ICMS: TStringField;
    tC190SpedCFOP: TStringField;
    tC190SpedALIQ_ICMS: TCurrencyField;
    tC190SpedVl_OPER: TCurrencyField;
    tC190SpedVL_BC_ICMS: TCurrencyField;
    tC190SpedVL_ICMS: TCurrencyField;
    tC190SpedVL_BC_ICMS_ST: TCurrencyField;
    tC190SpedVL_ICMS_ST: TCurrencyField;
    tC190SpedVL_RED_BC: TCurrencyField;
    tC190SpedVL_IPI: TCurrencyField;
    tC190SpedCOD_OBS: TStringField;
    tE210Sped: TnxTable;
    tE210SpedID: TUnsignedAutoIncField;
    tE210SpedID_UF: TLongWordField;
    tE210SpedDT_APURACAO: TDateField;
    tE210SpedIND_MOV_ST: TCurrencyField;
    tE210SpedVL_SLD_CRED_ANT_ST: TCurrencyField;
    tE210SpedVL_DEVOL_ST: TCurrencyField;
    tE210SpedVL_RESSARC_ST: TCurrencyField;
    tE210SpedVL_OUT_CRED_ST: TCurrencyField;
    tE210SpedVL_AJ_CREDITOS_ST: TCurrencyField;
    tE210SpedVL_RETENCAO_ST: TCurrencyField;
    tE210SpedVL_OUT_DEB_ST: TCurrencyField;
    tE210SpedVL_AJ_DEBITOS_ST: TCurrencyField;
    tE210SpedVL_SLD_DEV_ANT_ST: TCurrencyField;
    tE210SpedVL_DEDUCOES_ST: TCurrencyField;
    tE210SpedVL_ICMS_RECOL_ST: TCurrencyField;
    tE210SpedVL_SLD_CRED_ST_TRAN: TCurrencyField;
    tE210SpedDEB_ESP_ST: TCurrencyField;
    tE210SpedTran: TLongWordField;
    tMovEstSped: TnxTable;
    tMovEstSpedID: TUnsignedAutoIncField;
    tMovEstSpedTran: TLongWordField;
    tMovEstSpedMovEst: TLongWordField;
    tMovEstSpedProduto: TLongWordField;
    tMovEstSpedData: TDateField;
    tMovEstSpedNum_Item: TLongWordField;
    tMovEstSpedNum_Item_XML: TLongWordField;
    tMovEstSpedCod_Item: TStringField;
    tMovEstSpedDescr_compl: TStringField;
    tMovEstSpedQTD: TCurrencyField;
    tMovEstSpedUnid: TStringField;
    tMovEstSpedvl_item: TCurrencyField;
    tMovEstSpedvl_desc: TCurrencyField;
    tMovEstSpedind_mov: TStringField;
    tMovEstSpedcst_icms: TStringField;
    tMovEstSpedcfop: TStringField;
    tMovEstSpedcod_nat: TStringField;
    tMovEstSpedvl_bc_icms: TCurrencyField;
    tMovEstSpedaliq_icms: TCurrencyField;
    tMovEstSpedvl_icms: TCurrencyField;
    tMovEstSpedvl_bc_icms_st: TCurrencyField;
    tMovEstSpedaliq_st: TCurrencyField;
    tMovEstSpedvl_icms_st: TCurrencyField;
    tMovEstSpedind_apur: TStringField;
    tMovEstSpedcst_ipi: TStringField;
    tMovEstSpedcod_enq: TStringField;
    tMovEstSpedvl_bc_ipi: TCurrencyField;
    tMovEstSpedaliq_ipi: TCurrencyField;
    tMovEstSpedvl_ipi: TCurrencyField;
    tMovEstSpedcst_pis: TCurrencyField;
    tMovEstSpedvl_bc_pis: TCurrencyField;
    tMovEstSpedaliq_pis_perc: TCurrencyField;
    tMovEstSpedquant_bc_pis: TCurrencyField;
    tMovEstSpedaliq_pis: TCurrencyField;
    tMovEstSpedvl_pis: TCurrencyField;
    tMovEstSpedcst_cofins: TCurrencyField;
    tMovEstSpedvl_bc_cofins: TCurrencyField;
    tMovEstSpedaliq_cofins_perc: TCurrencyField;
    tMovEstSpedquant_bc_cofins: TCurrencyField;
    tMovEstSpedaliq_cofins: TCurrencyField;
    tMovEstSpedvl_cofins: TCurrencyField;
    tMovEstSpedcod_cta: TStringField;
    tMovEst: TnxTable;
    tMovEstFator: TIntegerField;
    tMovEstSaldoPost: TFloatField;
    tMovEstID: TUnsignedAutoIncField;
    tMovEstTran: TLongWordField;
    tMovEstProduto: TLongWordField;
    tMovEstQuant: TFloatField;
    tMovEstUnitario: TCurrencyField;
    tMovEstTotal: TCurrencyField;
    tMovEstCustoU: TCurrencyField;
    tMovEstItem: TByteField;
    tMovEstDesconto: TCurrencyField;
    tMovEstPago: TCurrencyField;
    tMovEstPagoPost: TCurrencyField;
    tMovEstDescPost: TCurrencyField;
    tMovEstDataHora: TDateTimeField;
    tMovEstEntrada: TBooleanField;
    tMovEstCancelado: TBooleanField;
    tMovEstAjustaCusto: TBooleanField;
    tMovEstEstoqueAnt: TFloatField;
    tMovEstCliente: TLongWordField;
    tMovEstCaixa: TIntegerField;
    tMovEstCategoria: TStringField;
    tMovEstNaoControlaEstoque: TBooleanField;
    tMovEstITran: TIntegerField;
    tMovEstTipoTran: TByteField;
    tMovEstSessao: TIntegerField;
    tMovEstComissao: TCurrencyField;
    tMovEstComissaoPerc: TFloatField;
    tMovEstComissaoLucro: TBooleanField;
    tMovEstPermSemEstoque: TBooleanField;
    tMovEstFidResgate: TBooleanField;
    tMovEstFidPontos: TFloatField;
    tMovEstRecVer: TLongWordField;
    tMovEstID_ref: TLongWordField;
    tMovEstIncluidoEm: TDateTimeField;
    tMovEstPend: TBooleanField;
    tMovEstUnitarioLiq: TCurrencyField;
    tMovEsttax_id: TLongWordField;
    tMovEsttax_incluido: TCurrencyField;
    tMovEsttax_incluir: TCurrencyField;
    tMovEstTotalFinal: TCurrencyField;
    tMovEstDescr: TWideStringField;
    tMovEstDebDev: TCurrencyField;
    tMovEstValorProdLiq: TCurrencyField;
    tMovEstTotLiq: TCurrencyField;
    tMovEstCustoT: TCurrencyField;
    tMovEstLucro: TCurrencyField;
    tMovEstVenDev: TBooleanField;
    tMovEstObs: TWideMemoField;
    tMovEstUID: TGuidField;
    tMovEstDadosFiscais: TnxMemoField;
    tMovEstDataSped: TDateField;
    tProduto: TnxTable;
    tProdutoID: TUnsignedAutoIncField;
    tProdutoPreco: TCurrencyField;
    tProdutoPrecoAuto: TBooleanField;
    tProdutoMargem: TFloatField;
    tProdutoImagem: TGraphicField;
    tProdutoFornecedor: TLongWordField;
    tProdutoCustoUnitario: TCurrencyField;
    tProdutoPodeAlterarPreco: TBooleanField;
    tProdutoPermiteVendaFracionada: TBooleanField;
    tProdutoNaoControlaEstoque: TBooleanField;
    tProdutoEstoqueMin: TFloatField;
    tProdutoEstoqueMax: TFloatField;
    tProdutoAbaixoMin: TBooleanField;
    tProdutoAbaixoMinDesde: TDateTimeField;
    tProdutoEstoqueRepor: TFloatField;
    tProdutoComissaoPerc: TFloatField;
    tProdutoComissaoLucro: TBooleanField;
    tProdutoAtivo: TBooleanField;
    tProdutoFidelidade: TBooleanField;
    tProdutoFidPontos: TIntegerField;
    tProdutoCadastroRapido: TBooleanField;
    tProdutoIncluidoEm: TDateTimeField;
    tProdutoEstoqueAtual: TFloatField;
    tProdutoEstoquePend: TFloatField;
    tProdutoEstoqueTot: TFloatField;
    tProdutoNCM: TStringField;
    tProdutoNCM_Ex: TStringField;
    tProdutobrtrib: TWordField;
    tProdutocest: TLongWordField;
    tProdutoPesoBruto: TFloatField;
    tProdutoPesoLiq: TFloatField;
    tProdutotax_id: TLongWordField;
    tProdutomodST: TByteField;
    tProdutoMVA: TnxMemoField;
    tProdutoPauta: TnxMemoField;
    su: TLongWordField;
    tProdutoUID: TGuidField;
    tProdutoMarca: TGuidField;
    tProdutoCodigo: TWideStringField;
    tProdutoDescricao: TWideStringField;
    tProdutoAlteradoEm: TDateTimeField;
    tProdutoAlteradoPor: TStringField;
    tProdutoCategoria: TWideStringField;
    tProdutoUnid: TWideStringField;
    tProdutoObs: TWideMemoField;
    tTran: TnxTable;
    tTranID: TUnsignedAutoIncField;
    tTranUID: TGuidField;
    tTranDataHora: TDateTimeField;
    tTranCliente: TLongWordField;
    tTranTipo: TByteField;
    tTranFunc: TStringField;
    tTranTotal: TCurrencyField;
    tTranDesconto: TCurrencyField;
    tTranDescPerc: TFloatField;
    tTranDescPorPerc: TBooleanField;
    tTranTotLiq: TCurrencyField;
    tTranPagEsp: TWordField;
    tTranPago: TCurrencyField;
    tTranDebitoAnt: TCurrencyField;
    tTranDebitoPago: TCurrencyField;
    tTranCreditoAnt: TCurrencyField;
    tTranCredito: TCurrencyField;
    tTranCreditoUsado: TCurrencyField;
    tTranTroco: TCurrencyField;
    tTranObs: TnxMemoField;
    tTranCancelado: TBooleanField;
    tTranCanceladoPor: TStringField;
    tTranCanceladoEm: TDateTimeField;
    tTranCaixa: TLongWordField;
    tTranCaixaPag: TLongWordField;
    tTranMaq: TWordField;
    tTranSessao: TLongWordField;
    tTranQtdTempo: TFloatField;
    tTranCredValor: TBooleanField;
    tTranFidResgate: TBooleanField;
    tTranPagFunc: TStringField;
    tTranPagPend: TBooleanField;
    tTranRecVer: TLongWordField;
    tTranDebito: TCurrencyField;
    tTranUID_ref: TGuidField;
    tTranOpDevValor: TByteField;
    tTranIncluidoEm: TDateTimeField;
    tTranStatusNFE: TByteField;
    tTranTipoNFE: TByteField;
    tTranChaveNFE: TStringField;
    tTranExtra: TnxMemoField;
    tTranAmbNFe: TByteField;
    tTranStatusCanc: TByteField;
    tTrantax_incluido: TCurrencyField;
    tTrantax_incluir: TCurrencyField;
    tTranTotalFinal: TCurrencyField;
    tTranDescricao: TWideMemoField;
    tTranids_pagto: TStringField;
    tTranComissao: TCurrencyField;
    tTranVendedor: TStringField;
    tTranNomeCliente: TWideStringField;
    tTranEntregar: TBooleanField;
    tTranendereco_entrega: TGuidField;
    tTranTranspEnt: TLongWordField;
    tTranFrete: TCurrencyField;
    tTranVenDev: TBooleanField;
    tTranHora: TByteField;
    tTrantranest: TBooleanField;
    tTrantrancx: TBooleanField;
    tTranTranspVol: TWordField;
    tTranTranspPesoB: TFloatField;
    tTranTranspPesoL: TFloatField;
    tTranTranspPesoVol: TByteField;
    tTranUpdID: TGuidField;
    tTranDataNF: TDateField;
    nxTCPIP: TnxWinsockTransport;
    nxRSE: TnxRemoteServerEngine;
    nxDB: TnxDatabase;
    nxSession: TnxSession;
    tConfig: TnxTable;
    tTranprocessaSped: TByteField;
    tNFE: TnxTable;
    tNFENumSeq: TUnsignedAutoIncField;
    tNFEModelo: TStringField;
    tNFESerie: TStringField;
    tNFENumero: TLongWordField;
    tNFEChave: TStringField;
    tNFEEntrada: TBooleanField;
    tNFETipoDoc: TByteField;
    tNFEDataHora: TDateTimeField;
    tNFECFOP: TWordField;
    tNFETran: TGuidField;
    tNFERecibo: TStringField;
    tNFEProtocolo: TStringField;
    tNFEContingencia: TBooleanField;
    tNFEStatus: TByteField;
    tNFEStatusNF: TIntegerField;
    tNFEIncluidoEm: TDateTimeField;
    tNFEEmitidoEm: TDateTimeField;
    tNFEContingenciaEM: TDateTimeField;
    tNFEValor: TCurrencyField;
    tNFEXMLdest: TnxMemoField;
    tNFEXMLret: TnxMemoField;
    tNFEXMLtransCont: TnxMemoField;
    tNFExMotivo: TnxMemoField;
    tNFEXMLtrans: TnxMemoField;
    tNFEtpAmb: TByteField;
    tNFECPF: TStringField;
    tNFEEmail: TStringField;
    tNFEStatusInut: TByteField;
    tNFEStatusCanc: TByteField;
    tNFEProtocoloCanc: TStringField;
    tNFEStatusCancNF: TIntegerField;
    tNFEJustCanc: TnxMemoField;
    tNFExMotivoCanc: TnxMemoField;
    tNFECanceladoPor: TStringField;
    tNFECanceladoEm: TDateTimeField;
    tNFExmlRetCanc: TnxMemoField;
    tNFEStatusInutNF: TIntegerField;
    tNFEProtocoloInut: TStringField;
    tNFExMotivoInut: TnxMemoField;
    tNFExmlRetInut: TnxMemoField;
    tNFEUID: TGuidField;
    tNFEChaveCont: TStringField;
    tNFEConsultouChave: TBooleanField;
    tNFELogRec: TnxMemoField;
    tNFELogEnvio: TnxMemoField;
    tNFETotalNF: TCurrencyField;
    tTranErroProcSped: TMemoField;
    tTranvSped: TWordField;
    procedure DataModuleCreate(Sender: TObject);
  private

    dmDanfe : TdmDanfe_NFE;
    dmSat   : TdmDanfe_SAT;
    dmProcDados_Sped: TdmProcDados_Sped;
    procedure _geraDadosSped;
    procedure openDB;
  public
    procedure reprocessaAntigo;
    function geraDadosSped(aFind: Boolean = True): Boolean; //(iTran :integer);
    procedure ProcessaDados;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ncServBD, ncClassesBase, ncDebug;

{$R *.dfm}

{ TdmProcDados_Sped }

procedure TdmProcDados_Sped.DataModuleCreate(Sender: TObject);
begin
  dmDanfe := TdmDanfe_NFE.Create(self);
  dmSat   := TdmDanfe_SAT.Create(self);
  openDB;
end;

function TdmProcDados_Sped.geraDadosSped(aFind: Boolean = True): Boolean;
begin
  Result := (not aFind) or tTran.FindKey([statusProcSped_Pendente]);
  if not Result then Exit;
  try
    _geraDadosSped;
  except
    on E: Exception do begin
      tTran.Edit;
      tTranprocessaSped.Value := sTatusProcSped_Erro;
      tTranErroProcSped.Value := 'Erro ao gerar Sped: ' + e.Message;
      tTranvSped.Value := versaosped;
      tTran.Post;
    end;
  end;
end;

procedure TdmProcDados_Sped.openDB;
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

procedure TdmProcDados_Sped.ProcessaDados;
begin
   tTran.Active := true;
   repeat
     Sleep(0);
   until not geraDadosSped;
end;

procedure TdmProcDados_Sped.reprocessaAntigo;
begin
   tTran.SetRange([statusProcSped_OK, 0],[statusProcSped_OK, versaoSped-1]);
   try
     while not tTran.Eof do
       geraDadosSped(false);
   finally
     tTran.CancelRange;
   end;

   tTran.SetRange([statusProcSped_Erro, 0],[statusProcSped_Erro, versaoSped-1]);
   try
     while not tTran.Eof do
       geraDadosSped(false);
   finally
     tTran.CancelRange;
   end;
   ProcessaDados;
end;

procedure TdmProcDados_Sped._geraDadosSped;
var
  vProd, vICMS, vBCICMS, vBCST, vICMSST : Currency;
  sICMS_CST, sXML, sCFOP, sData : string;
  dData : TDate;
  iItem : integer;
  iTran : Cardinal;

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

procedure adicionaItemSpedC190;
begin
  tC190Sped.Active := true;
  tC190Sped.SetRange([iTran, sCFOP, sICMS_CST, dmDanfe.mtItempICMS.Value],
                     [iTran, sCFOP, sICMS_CST, dmDanfe.mtItempICMS.Value]);
  try
    if tC190Sped.Eof then
    begin
      tC190Sped.Append;
      tC190SpedTran.Value           := iTran;
      tC190SpedCST_ICMS.Value       := sICMS_CST;
      tC190SpedCFOP.Value           := sCFOP;
      tC190SpedALIQ_ICMS.Value      := dmDanfe.mtItempICMS.Value;
      tC190SpedVl_OPER.Value        := dmDanfe.mtItemvProd.Value;
      if dmDanfe.mtItempICMS.Value > 0 then
        tC190SpedVL_BC_ICMS.Value     := dmDanfe.mtItemvProd.Value
      else
        tC190SpedVL_BC_ICMS.Value     := 0;

      tC190SpedVL_ICMS.Value        := dmDanfe.mtItemvICMS.Value;
      tC190SpedVL_BC_ICMS_ST.Value  := dmDanfe.mtItemvBCST.Value;
      tC190SpedVL_ICMS_ST.Value     := dmDanfe.mtItemvICMSST.Value;
      tC190SpedVL_RED_BC.Value      := 0.00;
      tC190SpedVL_IPI.Value         := 0.00;
    end
    else
    begin
      vProd   := tC190SpedVl_OPER.Value;
      vICMS   := tC190SpedVL_ICMS.Value;
      vBCST   := tC190SpedVL_BC_ICMS_ST.Value;
      vICMSST := tC190SpedVL_ICMS_ST.Value;
      vBCICMS := tC190SpedVL_BC_ICMS.Value;

      tC190Sped.Edit;
      tC190SpedVl_OPER.Value        := vProd + dmDanfe.mtItemvProd.Value;
      if dmDanfe.mtItempICMS.Value > 0 then
        tC190SpedVL_BC_ICMS.Value     := vBCICMS + dmDanfe.mtItemvProd.Value
      else
        tC190SpedVL_BC_ICMS.Value     := vBCICMS;
      tC190SpedVL_ICMS.Value        := vICMS + dmDanfe.mtItemvICMS.Value;
      tC190SpedVL_BC_ICMS_ST.Value  := vBCST + dmDanfe.mtItemvBCST.Value;
      tC190SpedVL_ICMS_ST.Value     := vICMSST + dmDanfe.mtItemvICMSST.Value;
      tC190SpedVL_RED_BC.Value      := 0.00;
      tC190SpedVL_IPI.Value         := 0.00;
    end;
    tC190Sped.Post;


  finally
    tC190Sped.CancelRange;
  end;



end;

procedure adicionaItemSpedE210;
begin
  tE210Sped.Append;
  tE210SpedID_UF.Value                  := Estados.porUF(dmDanfe.mtEmitUF.Value);
  tE210SpedDT_APURACAO.Value            := tTranDataNF.Value;
  tE210SpedTran.Value                   := iTran;
  tE210SpedIND_MOV_ST.Value             := 1;
  tE210SpedVL_SLD_CRED_ANT_ST.Value     := 0;
  tE210SpedVL_DEVOL_ST.Value            := 0;
  tE210SpedVL_RESSARC_ST.Value          := 0;
  tE210SpedVL_OUT_CRED_ST.Value         := 0;
  tE210SpedVL_AJ_CREDITOS_ST.Value      := 0;
  tE210SpedVL_RETENCAO_ST.Value         := 0;
  tE210SpedVL_OUT_DEB_ST.Value          := 0;
  tE210SpedVL_AJ_DEBITOS_ST.Value       := 0;
  tE210SpedVL_SLD_DEV_ANT_ST.Value      := 0;
  tE210SpedVL_DEDUCOES_ST.Value         := 0;
  tE210SpedVL_ICMS_RECOL_ST.Value       := 0;
  tE210SpedVL_SLD_CRED_ST_TRAN.Value    := 0;
  tE210SpedDEB_ESP_ST.Value             := 0;

  if  ((tMovEstSpedcfop.value = '1410') or
       (tMovEstSpedcfop.value = '1411') or
       (tMovEstSpedcfop.value = '1414') or
       (tMovEstSpedcfop.value = '1415') or
       (tMovEstSpedcfop.value = '1660') or
       (tMovEstSpedcfop.value = '1661') or
       (tMovEstSpedcfop.value = '1662') or
       (tMovEstSpedcfop.value = '2410') or
       (tMovEstSpedcfop.value = '2411') or
       (tMovEstSpedcfop.value = '2414') or
       (tMovEstSpedcfop.value = '2415') or
       (tMovEstSpedcfop.value = '2660') or
       (tMovEstSpedcfop.value = '2661') or
       (tMovEstSpedcfop.value = '2662')) then
    tE210SpedVL_DEVOL_ST.Value            := tMovEstSpedvl_icms_st.Value;

  if  ((tMovEstSpedcfop.value = '1400') or
       (tMovEstSpedcfop.value = '1401') or
       (tMovEstSpedcfop.value = '1403') or
       (tMovEstSpedcfop.value = '1406') or
       (tMovEstSpedcfop.value = '1407') or
       (tMovEstSpedcfop.value = '1408') or
       (tMovEstSpedcfop.value = '1409') or
       (tMovEstSpedcfop.value = '1603') or
       (tMovEstSpedcfop.value = '2400') or
       (tMovEstSpedcfop.value = '2401') or
       (tMovEstSpedcfop.value = '2403') or
       (tMovEstSpedcfop.value = '2406') or
       (tMovEstSpedcfop.value = '2407') or
       (tMovEstSpedcfop.value = '2408') or
       (tMovEstSpedcfop.value = '2409') or
       (tMovEstSpedcfop.value = '2603') )then
    tE210SpedVL_OUT_CRED_ST.Value := tMovEstSpedvl_icms_st.Value;

  if ((tMovEstSpedcfop.value = '1101') and (tMovEstSpedvl_icms_st.Value > 0)) then
        tE210SpedVL_OUT_CRED_ST.Value := tMovEstSpedvl_icms_st.Value;
  if ((tMovEstSpedcfop.value = '2101') and (tMovEstSpedvl_icms_st.Value > 0)) then
        tE210SpedVL_OUT_CRED_ST.Value := tMovEstSpedvl_icms_st.Value;
  if ((tMovEstSpedcfop.value = '1102') and (tMovEstSpedvl_icms_st.Value > 0)) then
        tE210SpedVL_OUT_CRED_ST.Value := tMovEstSpedvl_icms_st.Value;
  if ((tMovEstSpedcfop.value = '2102') and (tMovEstSpedvl_icms_st.Value > 0)) then
        tE210SpedVL_OUT_CRED_ST.Value := tMovEstSpedvl_icms_st.Value;

  if  ((tMovEstSpedcfop.value = '5400') or
       (tMovEstSpedcfop.value = '5401') or
       (tMovEstSpedcfop.value = '5402') or
       (tMovEstSpedcfop.value = '5403') or
       (tMovEstSpedcfop.value = '5405') or
       (tMovEstSpedcfop.value = '5408') or
       (tMovEstSpedcfop.value = '5409') or
       (tMovEstSpedcfop.value = '5410') or
       (tMovEstSpedcfop.value = '5411') or
       (tMovEstSpedcfop.value = '5412') or
       (tMovEstSpedcfop.value = '5413') or
       (tMovEstSpedcfop.value = '5414') or
       (tMovEstSpedcfop.value = '5415') or
       (tMovEstSpedcfop.value = '5603') or
       (tMovEstSpedcfop.value = '6400') or
       (tMovEstSpedcfop.value = '6401') or
       (tMovEstSpedcfop.value = '6402') or
       (tMovEstSpedcfop.value = '6403') or
       (tMovEstSpedcfop.value = '6405') or
       (tMovEstSpedcfop.value = '6408') or
       (tMovEstSpedcfop.value = '6409') or
       (tMovEstSpedcfop.value = '6410') or
       (tMovEstSpedcfop.value = '6411') or
       (tMovEstSpedcfop.value = '6412') or
       (tMovEstSpedcfop.value = '6413') or
       (tMovEstSpedcfop.value = '6414') or
       (tMovEstSpedcfop.value = '6415')) then
    tE210SpedVL_RETENCAO_ST.Value         := tMovEstSpedvl_icms_st.Value;

  tE210Sped.Post;
end;

procedure adicionaItemMovEstSped;

function acertaCSTIPI(cfop :string) : string;
begin
  if (copy(cfop,1,1) = '1') or
     (copy(cfop,1,1) = '2') then
    result := '49'
  else
    result := '99';
end;
begin
  tMovEstSped.Append;
  tMovEstSpedTran.Value := iTran;
  tMovEstSpedMovEst.Value := tMovEstID.Value;
  tMovEstSpedProduto.Value := tMovEstProduto.Value;
  tMovEstSpedData.Value := dData;
  tMovEstSpedNum_Item.Value := iItem;
  tMovEstSpedNum_Item_XML.Value := iItem;
  iItem := iItem + 1;
  tMovEstSpedCod_Item.Value := dmDanfe.mtItemcProd.AsString;
  tMovEstSpedDescr_compl.Value := tMovEstDescr.Value;
  tMovEstSpedQTD.Value := tMovEstQuant.Value;
  tMovEstSpedUnid.Value := tProdutoUnid.Value;
  tMovEstSpedvl_item.Value := dmDanfe.mtItemvProd.Value;
  tMovEstSpedvl_desc.Value := dmDanfe.mtItemvDesc.Value;
  tMovEstSpedind_mov.Value := '0';
  tMovEstSpedcst_icms.Value := sICMS_CST;
  tMovEstSpedcfop.Value := sCFOP;

  if dmDanfe.mtItempICMS.Value > 0 then
    tMovEstSpedvl_bc_icms.Value := dmDanfe.mtItemvProd.Value;

  tMovEstSpedaliq_icms.Value := dmDanfe.mtItempICMS.Value;
  tMovEstSpedvl_icms.Value := dmDanfe.mtItemvICMS.Value;
  tMovEstSpedvl_bc_icms_st.Value := dmDanfe.mtItemvBCST.Value;
  tMovEstSpedaliq_st.Value := dmDanfe.mtItempICMSST.Value;
  tMovEstSpedvl_icms_st.Value := dmDanfe.mtItemvICMSST.Value;

  tMovEstSpedcst_ipi.Value := acertaCSTIPI(sCfop);
  tMovEstSpedvl_bc_ipi.Value := 0;
  tMovEstSpedaliq_ipi.Value := 0;
  tMovEstSpedvl_ipi.Value := 0;

  tMovEstSpedcst_pis.Value := dmDanfe.mtItemPIS_CST.Value;
  tMovEstSpedvl_bc_pis.Value := dmDanfe.mtItemPIS_vBC.Value;
  tMovEstSpedaliq_pis_perc.Value := dmDanfe.mtItemPIS_pPIS.Value;
  tMovEstSpedvl_pis.Value := dmDanfe.mtItemPIS_vPIS.Value;

  tMovEstSpedcst_cofins.Value := dmDanfe.mtItemCOFINS_CST.Value;
  tMovEstSpedvl_bc_cofins.Value := dmDanfe.mtItemCOFINS_vBC.Value;
  tMovEstSpedaliq_cofins_perc.Value := dmDanfe.mtItemCOFINS_pCOFINS.Value;
  tMovEstSpedvl_cofins.Value := dmDanfe.mtItemCOFINS_vCOFINS.Value;
  tMovEstSped.Post;
end;

function acertaCFOP(cfop:string):string;
var
  sCfop :string;
begin
  if ((tTranTipo.Value = trEstCompra) and (tTranTipoNFE.Value = tiponfe_nenhum)) or
     (tTranTipo.Value = trEstTransfEnt) then
  begin
    if copy(cfop,1,1) = '5' then
      scfop := '1'+copy(cfop,2,3)
    else
      scfop := '2'+copy(cfop,2,3);

    if cfop = '5929' then
      scfop := '1102';
    if cfop = '6929' then
      scfop := '2102';
  end
  else
    sCfop := cfop;
  result := scfop;
    {if (tTranTipo.Value = trEstCompra) or
       (tTranTipo.Value = trEstTransfEnt) then
    begin
      if copy(dmDanfe.mtItemCFOP.AsString,1,1) = '5' then
        sCFOP := '1'+copy(dmDanfe.mtItemCFOP.AsString,2,3)
      else
        sCFOP := '2'+copy(dmDanfe.mtItemCFOP.AsString,2,3);
      if dmDanfe.mtItemCFOP.AsString = '5929' then
        sCFOP := '1102';
      if dmDanfe.mtItemCFOP.AsString = '6929' then
        sCFOP := '2102';
    end
    else
      sCfop := dmDanfe.mtItemCFOP.AsString; }
end;

procedure deletaRegistrosTabelas;
begin
  try
    tMovEstSped.Active := true;
    tMovEstSped.SetRange([iTran],[iTran]);
    tMovEstSped.Open;
    tMovEstSped.DeleteRecords;

    tE210Sped.Active := true;
    tE210Sped.setRange([Estados.porUF(dmDanfe.mtEmitUF.Value), dData], [Estados.porUF(dmDanfe.mtEmitUF.Value), dData]);
    tE210Sped.Open;
    tE210Sped.DeleteRecords;

    tC190Sped.Active := true;
    tC190Sped.SetRange([iTran],
                       [iTran]);
    tC190Sped.DeleteRecords;
  finally
    tMovEstSped.CancelRange;
    tE210Sped.CancelRange;
    tC190Sped.CancelRange;
  end;
end;

begin
  iItem := 1;
  iTran := tTranID.Value;
  sXML := '';

  if ((tTranTipo.Value = trEstOutEntr) and (tTranTipoNFE.Value = tiponfe_nfe)) or
     ((tTranTipo.Value = trEstVenda) and (tTranTipoNFE.Value <> tiponfe_sat)) or
     (tTranTipo.Value = trEstDevFor) or
     (tTranTipo.Value = trEstTransf) then
  begin
    dData := 0;
    tNFE.Active := true;
    tNFE.FindKey([tTranUID.Value]);
    tNFE.Open;
    if not tNfe.Eof  then
      sXml  := tNFEXMLtrans.Value;
  end
  else
  begin
    if ((tTranTipo.Value = trEstCompra) and (tTranTipoNFE.Value = tiponfe_nenhum)) or
       (tTranTipo.Value = trEstTransfEnt) then
    begin
      try
        dData := tTranDataHora.AsDateTime;
        tXMLCompra.Active := true;
        tXMLCompra.SetRange([iTran],[iTran]);
        tXMLCompra.First;
        sXML := tXMLCompraxml.Value;
       finally
        tXMLCompra.CancelRange;
       end;
    end
    else
    begin
      if (tTranTipo.Value = trEstVenda) and (tTranTipoNFE.Value = tiponfe_sat) then
      begin
        dData := 0;
        tNFE.Active := true;
        tNFE.FindKey([tTranUID.Value]);
        tNFE.Open;
        if not tNfe.Eof  then
          sXml  := tNFEXMLdest.Value;

        if sXML='' then begin
          tTran.Edit;
          tTranprocessaSped.Value := sTatusProcSped_Erro;
          tTranErroProcSped.Value := 'Falta XML para este SAT. Documento fiscal de emissão não encontrado.';
          tTranvSped.Value := versaosped;
          tTran.Post;
          exit;
        end;

        dmSat.LoadXML(sXML, '', 0, tTranFunc.Value, tTranID.AsString, tConfig);

        sData := copy(dmSat.mtIDEdEmi.Value,7,2)+'/'+
                 copy(dmSat.mtIDEdEmi.Value,5,2)+'/'+
                 copy(dmSat.mtIDEdEmi.Value,1,4);
        dData := strToDate(sData);

        tTran.Edit;
        tTranprocessaSped.Value := statusProcSped_OK;
        tTranErroProcSped.Value := 'Processado: SAT - Registro gerado no Bloco C860 e C890';
        tTranDataNF.Value := dData;
        tTranvSped.Value := versaoSped;
        tTran.Post;
        exit;
      end
      else
      begin
        tTran.Edit;
        tTranprocessaSped.Value := statusProcSped_NaoGera;
        tTranErroProcSped.Value := 'Transação não fiscal. Não deve ser relacionada na geração do Arquivo SPED.';
        tTranvSped.Value := versaosped;
        tTran.Post;
        exit
      end;
    end;
  end;

  if sXML='' then begin
    tTran.Edit;
    tTranprocessaSped.Value := sTatusProcSped_Erro;
    tTranErroProcSped.Value := 'Falta XML. Documento fiscal de emissão não encontrado.';
    tTranvSped.Value := versaosped;
    tTran.Post;
    exit;
  end;

  dmDanfe.LoadXML(sXML, 0,'','', tConfig, false);

  if dData = 0 then
  begin
    sData := copy(dmDanfe.mtIDEdhEmi.Value,9,2)+'/'+
             copy(dmDanfe.mtIDEdhEmi.Value,6,2)+'/'+
             copy(dmDanfe.mtIDEdhEmi.Value,1,4);
    dData := strToDate(sData);
  end
  else
  begin
    sData := copy(tTranDataHora.AsString,1,10);
    dData := strToDate(sData);
  end;

  deletaRegistrosTabelas;
  dmDanfe.mtItem.First;

  while not dmDanfe.mtItem.Eof do
  begin

    if dmDanfe.mtItemICMS_CST.AsString <> '' then
      sICMS_CST := acertaICMS_ST(dmDanfe.mtItemICMS_CST.AsString)
    else
      sICMS_CST := acertaICMS_ST(dmDanfe.mtItemCSOSN.AsString);

    sCfop := acertaCFOP(dmDanfe.mtItemCFOP.AsString);

    try
      tMovEst.Active := true;
      tMovEst.SetRange([itran, dmDanfe.mtItemnItem.Value],[iTran, dmDanfe.mtItemnItem.Value]);
    finally
      tMovEst.CancelRange;
    end;

    if (tTranTipo.Value = trEstCompra) and (tTranTipoNFE.Value = tiponfe_nenhum) or
       (tTranTipo.Value = trEstTransfEnt) then
    begin
      tMovEst.Edit;
      tMovEstDataSped.Value := dData;
      tMovEst.Post;
    end;

    try
      tProduto.Active := true;
      tProduto.SetRange([tMovEstProduto.Value],[tMovEstProduto.Value]);
      tProduto.First;
    finally
      tProduto.CancelRange;
    end;

    adicionaItemSpedC190;

    if ( (tTranTipo.Value = trEstCompra) and (tTranTipoNFE.Value = tiponfe_nenhum)) or
       (tTranTipo.Value = trEstTransfEnt) then
    adicionaItemMovEstSped;

    if dmDanfe.mtItemvICMSST.Value > 0 then
      adicionaItemSpedE210;

    dmDanfe.mtItem.Next;
  end;

  tTran.Edit;
  tTranprocessaSped.Value := statusProcSped_OK;
  tTranErroProcSped.Value := 'Transação processada com sucesso. Alimentado registros na tabela MovEstSped, SpedC190 e SpedE210 (somente quando houver ST)';
  tTranDataNF.Value := dData;
  tTranvSped.Value := versaoSped;
  tTran.Post;
end;

end.
