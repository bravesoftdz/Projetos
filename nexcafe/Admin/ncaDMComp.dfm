�
 TDMCOMP 0�< TPF0TdmCompdmCompOldCreateOrderOnCreateDataModuleCreate	OnDestroyDataModuleDestroyHeight5Width TfrxDBDatasetdbTran
RangeBegin	rbCurrentRangeEnd	reCurrentUserNamedbTranCloseDataSourceFieldAliases.StringsID=IDDataHora=DataHoraCliente=Cliente	Tipo=Tipo	Func=FuncTotal=TotalDesconto=Desconto	Pago=PagoDebito=DebitoObs=ObsCancelado=CanceladoCanceladoPor=CanceladoPorCanceladoEm=CanceladoEmCaixa=CaixaMaq=MaqNomeCliente=NomeClienteSessao=SessaoDescr=DescrNomeTipo=NomeTipoTotLiq=TotLiqDebitoAnt=DebitoAntDebitoPago=DebitoPagoCreditoAnt=CreditoAntCredito=CreditoCreditoUsado=CreditoUsadoTroco=TrocoCaixaPag=CaixaPagQtdTempo=QtdTempoCredValor=CredValorPagPend=PagPend DataSettTranBCDToCurrencyLeftTop�   TfrxDBDatasetdbITranUserNamedbITranCloseDataSourceDataSettITranBCDToCurrencyLeftPTop�   TDataSourcedsItranDataSetDados.tbTranLeftPTopP  TDataSourcedsTranDataSetDados.tbTranLeftTopP  TnxTabletTranDatabaseDados.dbOnCalcFieldstTranCalcFields	TableNameTran	IndexNameIIDLeftTop TAutoIncFieldtTranID	FieldNameID  TDateTimeFieldtTranDataHora	FieldNameDataHora  TIntegerFieldtTranCliente	FieldNameCliente  
TWordField	tTranTipo	FieldNameTipo  TStringField	tTranFunc	FieldNameFunc  TCurrencyField
tTranTotal	FieldNameTotal  TCurrencyFieldtTranDesconto	FieldNameDesconto  TCurrencyField	tTranPago	FieldNamePago  TCurrencyFieldtTranDebito	FieldNameDebito  
TMemoFieldtTranObs	FieldNameObsBlobTypeftMemo  TBooleanFieldtTranCancelado	FieldName	Cancelado  TStringFieldtTranCanceladoPor	FieldNameCanceladoPorSize  TDateTimeFieldtTranCanceladoEm	FieldNameCanceladoEm  TIntegerField
tTranCaixa	FieldNameCaixa  
TWordFieldtTranMaq	FieldNameMaq  TStringFieldtTranNomeCliente	FieldNameNomeClienteSize2  TIntegerFieldtTranSessao	FieldNameSessao  TStringField
tTranDescr	FieldNameDescrSize2  TStringFieldtTranNomeTipo	FieldKindfkCalculated	FieldNameNomeTipoSize2
Calculated	  TCurrencyFieldtTranTotLiq	FieldNameTotLiq  TCurrencyFieldtTranDebitoAnt	FieldName	DebitoAnt  TCurrencyFieldtTranDebitoPago	FieldName
DebitoPago  TCurrencyFieldtTranCreditoAnt	FieldName
CreditoAnt  TCurrencyFieldtTranCredito	FieldNameCredito  TCurrencyFieldtTranCreditoUsado	FieldNameCreditoUsado  TCurrencyField
tTranTroco	FieldNameTroco  TIntegerFieldtTranCaixaPag	FieldNameCaixaPag  TFloatFieldtTranQtdTempo	FieldNameQtdTempo  TBooleanFieldtTranCredValor	FieldName	CredValor  TBooleanFieldtTranPagPend	FieldNamePagPend   TnxTabletITranDatabaseDados.dbOnCalcFieldstITranCalcFields	TableNameITran	IndexNameITranIDLeftPTop TAutoIncFieldtITranID	FieldNameID  TIntegerField
tITranTran	FieldNameTran  TIntegerFieldtITranCaixa	FieldNameCaixa  TIntegerFieldtITranSessao	FieldNameSessao  TDateTimeFieldtITranDataHora	FieldNameDataHora  
TWordFieldtITranTipoTran	FieldNameTipoTran  
TWordFieldtITranTipoItem	FieldNameTipoItem  
TWordFieldtITranSubTipo	FieldNameSubTipo  TIntegerFieldtITranItemID	FieldNameItemID  TIntegerFieldtITranSubItemID	FieldName	SubItemID  
TWordFieldtITranItemPos	FieldNameItemPos  TCurrencyFieldtITranTotal	FieldNameTotal  TCurrencyFieldtITranDesconto	FieldNameDesconto  TCurrencyFieldtITranDebito	FieldNameDebito  TCurrencyField
tITranPago	FieldNamePago  TBooleanFieldtITranCancelado	FieldName	Cancelado  TStringFieldtITranNomeTipoItem	FieldKindfkCalculated	FieldNameNomeTipoItemSize
Calculated	  TCurrencyFieldtITranPgAnt	FieldKindfkCalculated	FieldNamePgAnt
Calculated	  TStringFieldtITranDescrItem	FieldKindfkCalculated	FieldName	DescrItemSized
Calculated	  TStringFieldtITranDescrPg	FieldKindfkCalculated	FieldNameDescrPgSizeP
Calculated	  TCurrencyFieldtITranValorOriginal	FieldKindfkCalculated	FieldNameValorOriginal
Calculated	  TCurrencyFieldtITranDescAnt	FieldKindfkCalculated	FieldNameDescAnt
Calculated	  TDateTimeFieldtITranDataOrig	FieldKindfkCalculated	FieldNameDataOrig
Calculated	  TStringFieldtITranQuant	FieldKindfkCalculated	FieldNameQuantSize2
Calculated	  TStringFieldtITranQuantUnid	FieldKindfkCalculated	FieldName	QuantUnidSize<
Calculated	  TCurrencyFieldtITranUnitario	FieldKindfkCalculated	FieldNameUnitario
Calculated	   
TfrxReport	repSerialVersion5.1.1DotMatrixReport	IniFile\Software\Fast ReportsPreviewOptions.ButtonspbPrintpbLoadpbSavepbExportpbZoompbFind	pbOutlinepbPageSetuppbToolspbEditpbNavigator PreviewOptions.Zoom       ��?PrintOptions.PrinterGeneric TextPrintOptions.PrintOnSheet ReportOptions.CreateDate ս���@ReportOptions.LastChange (�QL���@ScriptLanguagePascalScriptScriptText.Strings=procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);begin'  if <dbTran."Troco"> < 0.01 then begin    meTrocoP.Visible := False;    meTroco.Visible := False;  end;)  if <dbTran."Credito"> < 0.01 then begin     meCreditoP.Visible := False;    meCredito.Visible := False;  end;      (  if <dbTran."Debito"> < 0.01 then begin!    meDebitadoP.Visible := False;     meDebitado.Visible := False;  end;  end; begin end. ShowProgressLefthTop DatasetsDataSet	dbClienteDataSetName	dbCliente DataSetdbConfigDataSetNamedbConfig DataSetdbITranDataSetNamedbITran DataSet	dbProdutoDataSetName	dbProduto DataSetdbTranDataSetNamedbTran  	Variables Style  TfrxDataPageDataHeight       �@Width       �@  TfrxDMPPagePage1
PaperWidthG��]����@PaperHeight��18��@	PaperSize 
LeftMargin�'��GU�� @RightMargin�'��GU�� @EndlessHeight		FontStyle  TfrxMasterDataMasterData1FillTypeftBrushHeight       �@Top       �@Width��������@DataSetdbITranDataSetNamedbITranRowCount 	Stretched	 TfrxDMPMemoView	DMPMemo13AlignbaLeftWidth��������@Height       �@	Memo.UTF8-[dbITran."QuantUnid"] X [dbITran."DescrItem"] WordWrapTruncOutboundText	  TfrxDMPMemoView	DMPMemo15Left��������@Widthgffffff�@Height       �@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumeric	FontStyle 	Memo.UTF8 = [dbITran."Total"] 
ParentFontWordWrapTruncOutboundText   TfrxReportTitleReportTitle1FillTypeftBrushHeight       �@Top       �@Width��������@ TfrxDMPMemoView	DMPMemo16AlignbaLeftWidthgffffff�@Height       �@	FontStyle 	Memo.UTF8[dbConfig."RecNomeLoja"] 
ParentFontTruncOutboundText  TfrxDMPMemoView	DMPMemo17AlignbaLeftLeftgffffff�@Width������̬@Height       �@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStrdd/mm/yyyy hh:mmDisplayFormat.Kind
fkDateTime	FontStyle 	Memo.UTF8 [dbTran."DataHora"] 
ParentFontWordWrapTruncOutboundText  TfrxDMPMemoView	DMPMemo18Top       �@Width��������@Height       �@	Memo.UTF8CLIENTE: [dbTran."NomeCliente"] TruncOutboundText  TfrxDMPMemoView	DMPMemo19Top       �@Width��������@Height       �@	Memo.UTF8FUNC---: [dbTran."Func"] TruncOutboundText  TfrxDMPMemoView	DMPMemo20AlignbaWidthTop       �@Width��������@Height       �@	Memo.UTF8.============================================== WordWrapTruncOutboundText	  TfrxDMPMemoView	DMPMemo21AlignbaWidthTop       �@Width��������@Height       �@	FontStyle 	Memo.UTF8'[dbTran."NomeTipo"] - No.:[dbTran."ID"] 
ParentFontTruncOutboundText  TfrxDMPMemoView	DMPMemo23AlignbaWidthTop       �@Width��������@Height       �@	Memo.UTF8.============================================== WordWrapTruncOutboundText	  TfrxDMPMemoView	DMPMemo24Top       �@Width��������@Height       �@	Memo.UTF8Quant. X Produto TruncOutboundText  TfrxDMPMemoView	DMPMemo25Leftgffffff�@Top       �@Width��������@Height       �@	FontStyle 	Memo.UTF8VALOR 
ParentFontTruncOutboundText   TfrxReportSummaryReportSummary1FillTypeftBrushHeight       �@Top       �@Width��������@OnBeforePrintReportSummary1OnBeforePrint	Stretched	 TfrxDMPMemoViewDMPMemo2AlignbaWidthTop       �@Width��������@Height       �@	Memo.UTF8Y========================================================================================= TruncOutboundText  TfrxDMPMemoViewDMPMemo3AlignbaLeftTop       �@Width��������@Height       �@	Memo.UTF8SUB-TOTAL ====== WordWrapTruncOutboundText  TfrxDMPMemoViewDMPMemo4AlignbaLeftTop       �@Width��������@Height       �@	Memo.UTF8DESCONTOS ====== WordWrapTruncOutboundText  TfrxDMPMemoViewDMPMemo5AlignbaLeftTop       �@Width��������@Height       �@	Memo.UTF8TOTAL PAGO ===== WordWrapTruncOutboundText  TfrxDMPMemoViewDMPMemo6AlignbaLeftTop       �@Width��������@Height       �@	Memo.UTF8TOTAL A PAGAR == WordWrapTruncOutboundText  TfrxDMPMemoViewmeDebitadoPAlignbaLeftTop       �@Width��������@Height       �@	Memo.UTF8VALOR DEBITADO = WordWrapTruncOutboundText  TfrxDMPMemoViewDMPMemo8Left��������@Top       �@Widthgffffff�@Height       �@DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumeric	FontStyle 	Memo.UTF8[dbTran."Total"] 
ParentFontTruncOutboundText  TfrxDMPMemoViewDMPMemo9Left��������@Top       �@Widthgffffff�@Height       �@DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumeric	FontStyle 	Memo.UTF8[dbTran."Desconto"] 
ParentFontTruncOutboundText  TfrxDMPMemoView	DMPMemo10Left��������@Top       �@Widthgffffff�@Height       �@DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumeric	FontStyle 	Memo.UTF8[dbTran."Total"] 
ParentFontTruncOutboundText  TfrxDMPMemoView	DMPMemo26Left��������@Top       �@Widthgffffff�@Height       �@DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumeric	FontStyle 	Memo.UTF8[dbTran."Pago"] 
ParentFontTruncOutboundText  TfrxDMPMemoView
meDebitadoLeft��������@Top       �@Widthgffffff�@Height       �@DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumeric	FontStyle 	Memo.UTF8[dbTran."Debito"] 
ParentFontTruncOutboundText  TfrxDMPMemoViewDMPMemo1Top       �@Width       �@Height       �@StretchModesmActualHeight	Memo.UTF8[dbConfig."RecRodape"] WordWrapTruncOutboundText  TfrxDMPMemoView	DMPMemo11AlignbaWidthWidth��������@Height       �@	Memo.UTF8Y========================================================================================= TruncOutboundText  TfrxDMPMemoViewmeTrocoPAlignbaLeftTop       �@Width��������@Height       �@	Memo.UTF8TROCO ========== WordWrapTruncOutboundText  TfrxDMPMemoViewmeTrocoLeft��������@Top       �@Widthgffffff�@Height       �@DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumeric	FontStyle 	Memo.UTF8[dbTran."Troco"] 
ParentFontTruncOutboundText  TfrxDMPMemoView
meCreditoPAlignbaLeftTop       �@Width��������@Height       �@	Memo.UTF8CREDITADO ====== WordWrapTruncOutboundText  TfrxDMPMemoView	meCreditoLeft��������@Top       �@Widthgffffff�@Height       �@DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumeric	FontStyle 	Memo.UTF8[dbTran."Credito"] 
ParentFontTruncOutboundText     TTimerTimer1OnTimerTimer1TimerLeft� TopX  TnxTabletRecDatabaseDados.db	TableNameRecibo	IndexNameIClienteLeft� Top�  TAutoIncFieldtRecID	FieldNameID  TIntegerFieldtRecCliente	FieldNameCliente  TIntegerFieldtRecTran	FieldNameTran   TnxTabletAuxTranDatabaseDados.db	TableNameTran	IndexNameIIDLeftTop�  TAutoIncField
tAuxTranID	FieldNameID  TDateTimeFieldtAuxTranDataHora	FieldNameDataHora  TIntegerFieldtAuxTranCliente	FieldNameCliente  
TWordFieldtAuxTranTipo	FieldNameTipo  TStringFieldtAuxTranFunc	FieldNameFunc  TCurrencyFieldtAuxTranTotal	FieldNameTotal  TCurrencyFieldtAuxTranDesconto	FieldNameDesconto  TCurrencyFieldtAuxTranPago	FieldNamePago  TCurrencyFieldtAuxTranDebito	FieldNameDebito  
TMemoFieldtAuxTranObs	FieldNameObsBlobTypeftMemo  TBooleanFieldtAuxTranCancelado	FieldName	Cancelado  TStringFieldtAuxTranCanceladoPor	FieldNameCanceladoPorSize  TDateTimeFieldtAuxTranCanceladoEm	FieldNameCanceladoEm  TIntegerFieldtAuxTranCaixa	FieldNameCaixa  
TWordFieldtAuxTranMaq	FieldNameMaq  TStringFieldtAuxTranNomeCliente	FieldNameNomeClienteSize2  TIntegerFieldtAuxTranSessao	FieldNameSessao  TStringFieldtAuxTranDescr	FieldNameDescrSize2   TfrxTXTExporttxtExp
ShowDialogFileName/C:\Documents and Settings\IBM\Desktop\teste.prnUseFileCache	ShowProgressOverwritePromptDataOnly
ScaleWidth       ��?ScaleHeight       ��?BordersPseudogrpahic
PageBreaksOEMCodepage
EmptyLines
LeadSpaces
PrintAfterPrinterDialog	UseSavedProps	Left� Top�   TnxTabletSessaoDatabaseDados.db	TableNameSessao	IndexNameIIDLeft� Top�  TAutoIncField	tSessaoID	FieldNameID  TDateTimeFieldtSessaoInicio	FieldNameInicio  TDateTimeFieldtSessaoTermino	FieldNameTermino  TFloatFieldtSessaoMinutosR	FieldNameMinutosR  TFloatFieldtSessaoMinutosC	FieldNameMinutosC  
TWordField
tSessaoMaq	FieldNameMaq  
TWordFieldtSessaoMaqI	FieldNameMaqI  TBooleanFieldtSessaoEncerrou	FieldNameEncerrou  TIntegerFieldtSessaoCliente	FieldNameCliente  TBooleanFieldtSessaoTransfMaq	FieldName	TransfMaq  
TWordFieldtSessaoTipoCli	FieldNameTipoCli  TBooleanFieldtSessaoCancelado	FieldName	Cancelado  TCurrencyFieldtSessaoTotal	FieldNameTotal  TCurrencyFieldtSessaoDesconto	FieldNameDesconto  TCurrencyFieldtSessaoPagoPost	FieldNamePagoPost  TCurrencyFieldtSessaoDescPost	FieldNameDescPost  TCurrencyFieldtSessaoPago	FieldNamePago  TStringFieldtSessaoNomeCliente	FieldNameNomeClienteSize2  TStringFieldtSessaoFuncI	FieldNameFuncISize  TStringFieldtSessaoFuncF	FieldNameFuncFSize  
TMemoField
tSessaoObs	FieldNameObsBlobTypeftMemo  TIntegerFieldtSessaoTipoAcesso	FieldName
TipoAcesso  TIntegerFieldtSessaoCaixaI	FieldNameCaixaI  TIntegerFieldtSessaoCaixaF	FieldNameCaixaF  TIntegerFieldtSessaoTicksI	FieldNameTicksI  TBooleanFieldtSessaoPausado	FieldNamePausado  TIntegerFieldtSessaoInicioPausa	FieldNameInicioPausa  TIntegerFieldtSessaoMinTicksUsados	FieldNameMinTicksUsados  TIntegerFieldtSessaoMinTicksTotal	FieldNameMinTicksTotal  TIntegerFieldtSessaoFimTicksUsados	FieldNameFimTicksUsados  TIntegerFieldtSessaoFimTicksTotal	FieldNameFimTicksTotal  
TMemoFieldtSessaoStrPausas	FieldName	StrPausasBlobTypeftMemo  
TMemoFieldtSessaoStrTransfMaq	FieldNameStrTransfMaqBlobTypeftMemo  
TMemoFieldtSessaoStrFechamentoCaixa	FieldNameStrFechamentoCaixaBlobTypeftMemo  TFloatFieldtSessaoMinutosCli	FieldName
MinutosCli  TFloatFieldtSessaoMinutosPrev	FieldNameMinutosPrev  TFloatFieldtSessaoMinutosMax	FieldName
MinutosMax  TFloatFieldtSessaoMinutosCliU	FieldNameMinutosCliU  TCurrencyFieldtSessaoValorCli	FieldNameValorCli  TFloatFieldtSessaoValorCliU	FieldName	ValorCliU  TIntegerFieldtSessaoTranI	FieldNameTranI  TIntegerFieldtSessaoTranF	FieldNameTranF   TnxTabletMovEstDatabaseDados.db	TableNameMovEst	IndexNameIIDLeft� Top�  TAutoIncField	tMovEstID	FieldNameID  TIntegerFieldtMovEstTran	FieldNameTran  TIntegerFieldtMovEstProduto	FieldNameProduto  TFloatFieldtMovEstQuant	FieldNameQuant  TCurrencyFieldtMovEstUnitario	FieldNameUnitario  TCurrencyFieldtMovEstTotal	FieldNameTotal  TCurrencyFieldtMovEstCustoU	FieldNameCustoU  
TWordFieldtMovEstItem	FieldNameItem  TCurrencyFieldtMovEstDesconto	FieldNameDesconto  TCurrencyFieldtMovEstPago	FieldNamePago  TCurrencyFieldtMovEstPagoPost	FieldNamePagoPost  TCurrencyFieldtMovEstDescPost	FieldNameDescPost  TDateTimeFieldtMovEstDataHora	FieldNameDataHora  TBooleanFieldtMovEstEntrada	FieldNameEntrada  TBooleanFieldtMovEstCancelado	FieldName	Cancelado  TFloatFieldtMovEstEstoqueAnt	FieldName
EstoqueAnt  TIntegerFieldtMovEstCliente	FieldNameCliente  TIntegerFieldtMovEstCaixa	FieldNameCaixa  TStringFieldtMovEstCategoria	FieldName	Categoria  TBooleanFieldtMovEstNaoControlaEstoque	FieldNameNaoControlaEstoque  TIntegerFieldtMovEstITran	FieldNameITran  
TWordFieldtMovEstTipoTran	FieldNameTipoTran  TIntegerFieldtMovEstSessao	FieldNameSessao   TnxTabletTempoDatabaseDados.db	TableNameTempo	IndexNameIIDLeft� TopP TAutoIncFieldtTempoID	FieldNameID  TDateTimeFieldtTempoDataHora	FieldNameDataHora  TStringField
tTempoFunc	FieldNameFunc  
TWordField
tTempoTipo	FieldNameTipo  TFloatFieldtTempoMinutos	FieldNameMinutos  TIntegerFieldtTempoIDPacPass	FieldName	IDPacPass  TIntegerFieldtTempoPassaporte	FieldName
Passaporte  TCurrencyFieldtTempoTotal	FieldNameTotal  TCurrencyFieldtTempoDesconto	FieldNameDesconto  TCurrencyFieldtTempoPagoPost	FieldNamePagoPost  TCurrencyFieldtTempoDescPost	FieldNameDescPost  TCurrencyField
tTempoPago	FieldNamePago  TIntegerFieldtTempoCliente	FieldNameCliente  
TWordField	tTempoMaq	FieldNameMaq  TIntegerFieldtTempoSessao	FieldNameSessao  TBooleanFieldtTempoCancelado	FieldName	Cancelado  TIntegerField
tTempoTran	FieldNameTran  TIntegerFieldtTempoCaixa	FieldNameCaixa   TnxTabletImpDatabaseDados.db	TableName	Impressao	IndexNameIIDLeft� Top TAutoIncFieldtImpID	FieldNameID  TIntegerFieldtImpTran	FieldNameTran  TIntegerField	tImpCaixa	FieldNameCaixa  TBooleanField
tImpManual	FieldNameManual  TDateTimeFieldtImpDataHora	FieldNameDataHora  TStringFieldtImpComputador	FieldName
ComputadorSize�   
TWordFieldtImpMaquina	FieldNameMaquina  
TWordFieldtImpPaginas	FieldNamePaginas  TStringFieldtImpImpressora	FieldName
ImpressoraSize�   
TMemoFieldtImpDocumento	FieldName	DocumentoBlobTypeftMemo  TIntegerField
tImpSessao	FieldNameSessao  
TWordFieldtImpResultado	FieldName	Resultado  
TWordFieldtImpq1	FieldNameq1  
TWordFieldtImpq2	FieldNameq2  
TWordFieldtImpq3	FieldNameq3  
TWordFieldtImpq4	FieldNameq4  
TWordFieldtImpq5	FieldNameq5  
TWordFieldtImpq6	FieldNameq6  
TWordFieldtImpq7	FieldNameq7  
TWordFieldtImpq8	FieldNameq8  
TWordFieldtImpq9	FieldNameq9  
TWordFieldtImpq10	FieldNameq10  TCurrencyFieldtImpv1	FieldNamev1  TCurrencyFieldtImpv2	FieldNamev2  TCurrencyFieldtImpv3	FieldNamev3  TCurrencyFieldtImpv4	FieldNamev4  TCurrencyFieldtImpv5	FieldNamev5  TCurrencyFieldtImpv6	FieldNamev6  TCurrencyFieldtImpv7	FieldNamev7  TCurrencyFieldtImpv8	FieldNamev8  TCurrencyFieldtImpv9	FieldNamev9  TCurrencyFieldtImpv10	FieldNamev10  TCurrencyField	tImpTotal	FieldNameTotal  TCurrencyFieldtImpDesconto	FieldNameDesconto  TCurrencyFieldtImpPagoPost	FieldNamePagoPost  TCurrencyFieldtImpDescPost	FieldNameDescPost  TCurrencyFieldtImpPago	FieldNamePago  TStringFieldtImpFunc	FieldNameFunc  TIntegerFieldtImpCliente	FieldNameCliente  TBooleanFieldtImpCancelado	FieldName	Cancelado   TnxTable	tAuxITranDatabaseDados.db	TableNameITranIndexFieldNamesTipoItem;ItemID;TranLeftTop TAutoIncFieldtAuxITranID	FieldNameID  TIntegerFieldtAuxITranTran	FieldNameTran  TIntegerFieldtAuxITranCaixa	FieldNameCaixa  TIntegerFieldtAuxITranSessao	FieldNameSessao  TDateTimeFieldtAuxITranDataHora	FieldNameDataHora  
TWordFieldtAuxITranTipoTran	FieldNameTipoTran  
TWordFieldtAuxITranTipoItem	FieldNameTipoItem  
TWordFieldtAuxITranSubTipo	FieldNameSubTipo  TIntegerFieldtAuxITranItemID	FieldNameItemID  TIntegerFieldtAuxITranSubItemID	FieldName	SubItemID  
TWordFieldtAuxITranItemPos	FieldNameItemPos  TCurrencyFieldtAuxITranTotal	FieldNameTotal  TCurrencyFieldtAuxITranDesconto	FieldNameDesconto  TCurrencyFieldtAuxITranDebito	FieldNameDebito  TCurrencyFieldtAuxITranPago	FieldNamePago  TBooleanFieldtAuxITranCancelado	FieldName	Cancelado   TnxTabletProDatabaseDados.dbTimeout'Filtered	FilterOptionsfoCaseInsensitive 	TableNameProduto	IndexNameIIDLeftPTop�  TStringField
tProCodigoDisplayLabel   Código	FieldNameCodigoSize  TStringFieldtProUnidDisplayLabelUnidade	FieldNameUnidSize  TCurrencyField	tProPrecoDisplayLabel   Preço	FieldNamePreco  
TMemoFieldtProObsDisplayLabel   Observação	FieldNameObsBlobTypeftMemo  TGraphicField
tProImagem	FieldNameImagemBlobType	ftGraphic  TFloatFieldtProEstoqueAtual	FieldNameEstoqueAtual  TCurrencyFieldtProCustoUnitario	FieldNameCustoUnitario  TFloatFieldtProEstoqueACE	FieldName
EstoqueACE  TFloatFieldtProEstoqueACS	FieldName
EstoqueACS  TFloatFieldtProEstoqueFinal	FieldKindfkCalculated	FieldNameEstoqueFinal
Calculated	  TStringFieldtProDescricao	FieldName	DescricaoSized  TStringFieldtProCategoria	FieldName	CategoriaSize#  TStringFieldtProSubCateg	FieldNameSubCategSize#  TBooleanFieldtProPodeAlterarPreco	FieldNamePodeAlterarPreco  TBooleanFieldtProNaoControlaEstoque	FieldNameNaoControlaEstoque  TAutoIncFieldtProID	FieldNameID   TfrxDBDatasetdbConfigUserNamedbConfigCloseDataSourceDataSetDados.tbConfigBCDToCurrencyLeftXTop  
TfrxReportrepWinVersion5.1.1DotMatrixReportIniFile\Software\Fast ReportsPreviewOptions.ButtonspbPrintpbLoadpbSavepbExportpbZoompbFind	pbOutlinepbPageSetuppbToolspbEditpbNavigator PreviewOptions.Zoom       ��?PrintOptions.PrinterDefaultPrintOptions.PrintOnSheet PrintOptions.ShowDialogReportOptions.CreateDate �+y����@ReportOptions.NameNEXCAFE_RECIBOReportOptions.LastChange  Ea��U�@ScriptLanguagePascalScriptScriptText.Strings5procedure Memo13OnBeforePrint(Sender: TfrxComponent);begin  if ((<Line> mod 2) = 1) then"    Memo13.Color := $00F5F5F5 else    Memo13.Color := $00E9E9E9;end; =procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);begin$  if <dbTran."Troco"> = 0 then begin //    meTrocoP.Visible := False;//    meTroco.Visible := False;o//    lineTroco.Visible := False;                                                                                end;&  if <dbTran."Credito"> = 0 then begin     meCreditoP.Visible := False;    meCredito.Visible := False;o    lineCredito.Visible := False;                                                                                end;      %  if <dbTran."Debito"> = 0 then begin!    meDebitadoP.Visible := False;     meDebitado.Visible := False;p    lineDebitado.Visible := False;                                                                                end;      end; begin end. Left� TopDatasetsDataSet	dbClienteDataSetName	dbCliente DataSetdbConfigDataSetNamedbConfig DataSetdbITranDataSetNamedbITran DataSet	dbProdutoDataSetName	dbProduto DataSetdbTranDataSetNamedbTran  	Variables Style  TfrxDataPageDataHeight       �@Width       �@  TfrxReportPagePage1
PaperWidth       �@PaperHeight      ��@	PaperSize	
LeftMargin       �@RightMargin       �@	TopMargin       �@BottomMargin       �@ TfrxPageHeaderPageHeader1FillTypeftBrushHeight.�&�@Top�	�c.�@Widthh��s���@ TfrxMemoViewMemo1Width�\��ʾۭ@Height����W��@	AutoWidth	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8[dbConfig."RecNomeLoja"] 
ParentFontVAlignvaCenter  TfrxMemoViewMemo2Top�	�c.�@Width���u��@Height�	�c.�@	Memo.UTF8	Cliente:    TfrxMemoViewMemo3Left����W��@Top�	�c.�@WidthI�L���n�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 	Memo.UTF8[dbTran."NomeCliente"] 
ParentFont  TfrxMemoViewMemo5AlignbaRightLeft,����V�@Top�	�c.�@WidthI�L���n�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style HAlignhaRight	Memo.UTF8   FuncionÃ¡rio: [dbTran."Func"] 
ParentFont  TfrxMemoViewMemo6Top֨�ht��@Width���u��@Height����W��@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsUnderline Frame.Width       ��?	Memo.UTF8[dbTran."NomeTipo"] 
ParentFontVAlignvaCenter  TfrxMemoViewMemo7AlignbaRightLeftԇ.�o���@Top�!�&�@Width��M�#��@Height�	�c.�@HAlignhaRight	Memo.UTF8    N.TransaÃ§Ã£o: [dbTran."ID"]   TfrxMemoViewMemo8AlignbaRightLeftt�,&6��@Top }���� @Width\���4��@Height�	�c.�@HAlignhaRight	Memo.UTF83   Data / Hora da TransaÃ§Ã£o: [dbTran."DataHora"]   TfrxMemoViewMemo9TopL�O����@Width����=�T�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 	Frame.TypftBottom 	Memo.UTF8   Quantidade X DescriÃ§Ã£o 
ParentFont  TfrxMemoViewMemo10AlignbaRightLeft�	�c.�@TopL�O����@WidthM�O����@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 	Frame.TypftBottom HAlignhaRight	Memo.UTF8Valor Total 
ParentFont  TfrxMemoViewMemo11LeftQ1�߄B�@TopL�O����@Width֨�ht��@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 	Frame.TypftBottom HAlignhaRight	Memo.UTF8   Valor UnitÃ¡rio 
ParentFont   TfrxMasterDataMasterData1FillTypeftBrushHeight����W��@TopI�L���n�@Widthh��s���@DataSetdbITranDataSetNamedbITranRowCount  TfrxMemoViewMemo13AlignbaClientWidthh��s���@Height����W��@OnBeforePrintMemo13OnBeforePrint  TfrxMemoViewMemo15AlignbaRightLeft��?x�E�@Top ����� @Width֨�ht��@Height�	�c.�@	AutoWidth		DataFieldUnitarioDataSetdbITranDataSetNamedbITranFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style HAlignhaRight	Memo.UTF8[dbITran."Unitario"] 
ParentFont  TfrxMemoViewMemo17AlignbaRightLeft��A֮d.�@Top ����� @Width��G�4���@Height�	�c.�@	DataFieldTotalDataSetdbITranDataSetNamedbITranHAlignhaRight	Memo.UTF8[dbITran."Total"]   TfrxRichViewRich1Top k���� @Width�we��r8�@Height�	�c.�@StretchModesmActualHeightGapX       � @GapY       ��?RichEdit
�   {\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Tahoma;}}
{\*\generator Msftedit 5.41.21.2510;}\viewkind4\uc1\pard\fs20 [dbITran."QuantUnid"] \b X\b0  [dbITran."DescrItem"]\f1\fs16\par
}
    TfrxReportSummaryReportSummary1FillTypeftBrushHeightE*�-9�@Top�	�c.�@Widthh��s���@OnBeforePrintReportSummary1OnBeforePrint	Stretched	 TfrxLineViewLine2Left��N@a+�@Top��	K<�L�@Width�J�h��@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxLineViewLine3Left��N@a+�@Top0�&�@Width�J�h��@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxLineViewLine4Left��N@a��@Top�C�l����@Width�J�h��@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxMemoViewMemo19LeftUގpZ�r�@Top�	�c.�@Width.�&�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8	Sub-Total 
ParentFont  TfrxLineViewLine1Left��N@a��@Top�j����@Width�J�h��@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxMemoViewMemo20LeftUގpZ�r�@Top@�
Y�j�@Width�	�c.�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8	Descontos 
ParentFont  TfrxMemoViewMemo21LeftUގpZ�r�@Top���)�D��@Width�C�l����@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8Total a Pagar 
ParentFont  TfrxMemoViewMemo22LeftUގpZ�r�@Top��u��@Width���u��@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8
Valor Pago 
ParentFont  TfrxMemoViewmeDebitadoPLeft?�S���r�@Top*oG8-x��@Width���u��@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8Valor Debitado 
ParentFont  TfrxMemoViewMemo24LeftHt*t�\.�@Top�	�c.�@Width�l���t�@Height�	�c.�@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8[dbTran."Total"] 
ParentFont  TfrxMemoViewMemo25Left�	�c.�@Top@�
Y�j�@Width�l���t�@Height�	�c.�@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8[dbTran."Desconto"] 
ParentFont  TfrxMemoViewMemo26Left�	�c.�@Top���)�D��@Width�l���t�@Height�	�c.�@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8&[<dbTran."Total">-<dbTran."Desconto">] 
ParentFont  TfrxMemoViewMemo27Left�	�c.�@Top��u��@Width�l���t�@Height�	�c.�@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8[dbTran."Pago"] 
ParentFont  TfrxMemoView
meDebitadoLeftHt*t�\.�@Top*oG8-x��@Width�l���t�@Height�	�c.�@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8[dbTran."Debito"] 
ParentFont  TfrxMemoViewMemo29AlignbaWidthTop�����@WidthUގpZ�r�@Height�	�c.�@StretchModesmActualHeight	Memo.UTF8[dbConfig."RecRodape"]   TfrxLineViewLine5Left/�o��e-�@Top k����@Width�J�h��@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxLineViewlineDebitadoLeftw����@ �@Top2��Y��f�@Width�J�h��@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxMemoViewmeTrocoPLeft?�S���r�@TopTގpZ�r�@Width���u��@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style Highlight.Font.CharsetDEFAULT_CHARSETHighlight.Font.ColorclRedHighlight.Font.Height�Highlight.Font.NameArialHighlight.Font.Style Highlight.Condition<dbTran."Troco"> <= 0Highlight.FillTypeftBrush	Memo.UTF8Troco 
ParentFont  TfrxMemoViewmeTrocoLeftHt*t�\.�@TopTގpZ�r�@Width�l���t�@Height�	�c.�@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRightHighlight.Font.CharsetDEFAULT_CHARSETHighlight.Font.ColorclRedHighlight.Font.Height�Highlight.Font.NameArialHighlight.Font.Style Highlight.Condition<dbTran."Troco"> <= 0Highlight.FillTypeftBrush	Memo.UTF8[dbTran."Troco"] 
ParentFont  TfrxLineView	lineTrocoLeft�nض(�@Top2��Y��f�@Width�J�h��@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxMemoView
meCreditoPLeft?�S���r�@Top����N��@Width���u��@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8	Creditado 
ParentFont  TfrxMemoView	meCreditoLeftHt*t�\.�@Top����N��@Width�l���t�@Height�	�c.�@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8[dbTran."Credito"] 
ParentFont  TfrxLineViewlineCreditoLeftw����@ �@Top��K���P�@Width�J�h��@ColorclBlackFrame.ColorclSilver	Frame.TypftTop      
TfrxReportrepWinFSVersion5.1.1DotMatrixReportIniFile\Software\Fast ReportsPreviewOptions.ButtonspbPrintpbLoadpbSavepbExportpbZoompbFind	pbOutlinepbPageSetuppbToolspbEditpbNavigator PreviewOptions.Zoom       ��?PrintOptions.PrinterDefaultPrintOptions.PrintOnSheet PrintOptions.ShowDialogReportOptions.CreateDate �+y����@ReportOptions.NameNEXCAFE_RECIBOReportOptions.LastChange (�dļX�@ScriptLanguagePascalScriptScriptText.Strings5procedure Memo13OnBeforePrint(Sender: TfrxComponent);begin"      if ((<Line> mod 2) = 1) then"    Memo13.Color := $00F5F5F5 else    Memo13.Color := $00E9E9E9;end; begin end. Left� TopDatasetsDataSet	dbClienteDataSetName	dbCliente DataSetdbConfigDataSetNamedbConfig DataSetdbITranDataSetNamedbITran DataSet	dbProdutoDataSetName	dbProduto DataSetdbTranDataSetNamedbTran  	Variables Style  TfrxDataPageDataHeight       �@Width       �@  TfrxReportPagePage1
PaperWidth       �@PaperHeight      ��@	PaperSize	
LeftMargin       �@RightMargin       �@	TopMargin       �@BottomMargin       �@ TfrxPageHeaderPageHeader1FillTypeftBrushHeight.�&�@Top�	�c.�@Widthh��s���@ TfrxMemoViewMemo1Width�\��ʾۭ@Height����W��@	AutoWidth	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8[dbConfig."RecNomeLoja"] 
ParentFontVAlignvaCenter  TfrxMemoViewMemo2Top�	�c.�@Width���u��@Height�	�c.�@	Memo.UTF8	Cliente:    TfrxMemoViewMemo3Left����W��@Top�	�c.�@Width��K���P�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 	Memo.UTF8[dbTran."NomeCliente"] 
ParentFont  TfrxMemoViewMemo5AlignbaRightLeftԇ.�o���@Top�	�c.�@Width��M�#��@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style HAlignhaRight	Memo.UTF8   FuncionÃ¡rio: [dbTran."Func"] 
ParentFont  TfrxMemoViewMemo6Top֨�ht��@Width���u��@Height����W��@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsUnderline Frame.Width       ��?	Memo.UTF8[dbTran."NomeTipo"] 
ParentFontVAlignvaCenter  TfrxMemoViewMemo7AlignbaRightLeftԇ.�o���@Top�!�&�@Width��M�#��@Height�	�c.�@HAlignhaRight	Memo.UTF8    N.TransaÃ§Ã£o: [dbTran."ID"]   TfrxMemoViewMemo8AlignbaRightLeftt�,&6��@Top }���� @Width\���4��@Height�	�c.�@HAlignhaRight	Memo.UTF83   Data / Hora da TransaÃ§Ã£o: [dbTran."DataHora"]   TfrxMemoViewMemo9TopL�O����@WidthQ1�߄B�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 	Frame.TypftBottom 	Memo.UTF8   Quantidade X DescriÃ§Ã£o 
ParentFont  TfrxMemoViewMemo11AlignbaRightLeft2��Y��f�@TopL�O����@Width֨�ht��@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 	Frame.TypftBottom HAlignhaCenter	Memo.UTF8Valor Total 
ParentFont   TfrxMasterDataMasterData1FillTypeftBrushHeight����W��@TopI�L���n�@Widthh��s���@DataSetdbITranDataSetNamedbITranRowCount  TfrxMemoViewMemo13AlignbaClientWidthh��s���@Height����W��@OnBeforePrintMemo13OnBeforePrint  TfrxMemoViewMemo15AlignbaRightLeft2��Y��f�@Width֨�ht��@Height�	�c.�@	DataFieldValorOriginalDataSetdbITranDataSetNamedbITranHAlignhaCenter	Memo.UTF8[dbITran."ValorOriginal"]   TfrxRichViewRich1Width�we��r8�@Height�	�c.�@StretchModesmActualHeightGapX       � @GapY       ��?RichEdit
�   {\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Tahoma;}}
{\*\generator Msftedit 5.41.21.2510;}\viewkind4\uc1\pard\fs20 [dbITran."QuantUnid"] \b X\b0  [dbITran."DescrItem"]\f1\fs16\par
}
    TfrxReportSummaryReportSummary1FillTypeftBrushHeightI�L���n�@Top�	�c.�@Widthh��s���@	Stretched	 TfrxMemoViewMemo18Left�	�c.�@Top�����@WidthB�$���@Height��ǘ��H�@  TfrxShapeViewShape1Left��� v6�@Top k����@Width��j�T��@Height�����@Frame.ColorclSilver  TfrxLineViewLine2Left��M�#��@Top��	K<�L�@Width�UH�I�׋@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxLineViewLine3Left��M�#��@Top0�&�@Width�UH�I�׋@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxLineViewLine4Left��M�#��@Top�C�l����@Width�UH�I�׋@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxMemoViewMemo19Left�-���=�@Top�	�c.�@Width.�&�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8	Sub-Total 
ParentFont  TfrxLineViewLine1Left��M�#��@Top~5���@Width�UH�I�׋@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxMemoViewMemo20Left�-���=�@Top h��n��@Width�	�c.�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8	Descontos 
ParentFont  TfrxMemoViewMemo21Left�-���=�@Top���)�D��@Width��ǘ��H�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8Total Final a Pagar 
ParentFont  TfrxMemoViewMemo22Left�-���=�@Topxۅ�:�D�@Width�UH�I�׋@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8Total Final Pago 
ParentFont  TfrxMemoViewMemo23Left�-���=�@Top*oG8-x��@Width���u��@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8Valor Debitado 
ParentFont  TfrxMemoViewMemo24Leftg��k�D��@Top�	�c.�@Width�S���9��@Height�	�c.�@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8,[SUM(<dbITran."ValorOriginal">,MasterData1)] 
ParentFont  TfrxMemoViewMemo25LeftIV�F��@Top h��n��@Width�S���9��@Height�	�c.�@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8N[SUM(<dbITran."DescAnt">,MasterData1) + SUM(<dbITran."Desconto">,MasterData1)] 
ParentFont  TfrxMemoViewMemo26LeftIV�F��@Top���)�D��@Width�S���9��@Height�	�c.�@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8�[SUM(<dbITran."ValorOriginal">,MasterData1) - SUM(<dbITran."DescAnt">,MasterData1) - SUM(<dbITran."Desconto">,MasterData1) - SUM(<dbITran."PgAnt">,MasterData1)] 
ParentFont  TfrxMemoViewMemo27LeftIV�F��@Topxۅ�:�D�@Width�S���9��@Height�	�c.�@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8#[SUM(<dbITran."Pago">,MasterData1)] 
ParentFont  TfrxMemoViewMemo28LeftIV�F��@Top*oG8-x��@Width�S���9��@Height�	�c.�@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8[dbTran."Debito"] 
ParentFont  TfrxMemoViewMemo29AlignbaWidthTop�����@Width��� v6�@Height�	�c.�@StretchModesmActualHeight	Memo.UTF8[dbConfig."RecRodape"]   TfrxLineViewLine5Left��� v6�@Top���)�D��@Width�UH�I�׋@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxMemoViewMemo4Left�-���=�@Top��u��@Width2��Y��f�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8Pago Antecipadamente 
ParentFont  TfrxMemoViewMemo12LeftIV�F��@Top��u��@Width�S���9��@Height�	�c.�@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8$[SUM(<dbITran."PgAnt">,MasterData1)] 
ParentFont     
TfrxReportrepSerialFSVersion5.1.1DotMatrixReport	IniFile\Software\Fast ReportsPreviewOptions.ButtonspbPrintpbLoadpbSavepbExportpbZoompbFind	pbOutlinepbPageSetuppbToolspbEditpbNavigator PreviewOptions.Zoom       ��?PrintOptions.PrinterDefaultPrintOptions.PrintOnSheet PrintOptions.ShowDialogReportOptions.CreateDate ս���@ReportOptions.LastChange (�!p�ȡ@ScriptLanguagePascalScriptScriptText.Stringsbegin end. ShowProgressLeft TopDatasetsDataSetdbConfigDataSetNamedbConfig DataSetdbITranDataSetNamedbITran DataSetdbTranDataSetNamedbTran  	Variables Style  TfrxDataPageDataHeight       �@Width       �@  TfrxDMPPagePage1
PaperWidth�o�x�*3�@PaperHeight��18��@	PaperSize 	FontStyle  TfrxMasterDataMasterData1FillTypeftBrushHeight       �@Top       �@Width       �@DataSetdbITranDataSetNamedbITranRowCount  TfrxDMPMemoView	DMPMemo11AlignbaWidthTop       �@Width       �@Height       �@	Memo.UTF8q----------------------------------------------------------------------------------------------------------------- TruncOutboundText  TfrxDMPMemoView	DMPMemo12AlignbaRightLeft��������@Top       �@Width������̬@Height       �@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericHAlignhaRight	Memo.UTF8 [dbITran."ValorOriginal"] TruncOutboundText  TfrxDMPMemoView	DMPMemo14AlignbaWidthWidth       �@Height       �@	Memo.UTF8[dbITran."DescrItem"] TruncOutboundText   TfrxReportTitleReportTitle1FillTypeftBrushHeight       �@Top       �@Width       �@ TfrxDMPMemoView	DMPMemo16AlignbaWidthWidth��������@Height       �@	FontStylefsxBold 	Memo.UTF8[dbConfig."RecNomeLoja"] 
ParentFontTruncOutboundText  TfrxDMPMemoView	DMPMemo17AlignbaRightLeft��������@Width������̬@Height       �@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStrdd/mm/yyyy hh:mmDisplayFormat.Kind
fkDateTimeHAlignhaRight	Memo.UTF8 [dbTran."DataHora"] TruncOutboundText  TfrxDMPMemoView	DMPMemo18Top       �@Width       �@Height       �@	Memo.UTF8CLIENTE: [dbTran."NomeCliente"] TruncOutboundText  TfrxDMPMemoView	DMPMemo19Top       �@Width       �@Height       �@	Memo.UTF8FUNC---: [dbTran."Func"] TruncOutboundText  TfrxDMPMemoView	DMPMemo20AlignbaWidthTop       �@Width       �@Height       �@	Memo.UTF8n============================================================================================================== TruncOutboundText  TfrxDMPMemoView	DMPMemo21AlignbaWidthTop       �@Width��������@Height       �@	FontStylefsxBold 	Memo.UTF8[dbTran."NomeTipo"] 
ParentFontTruncOutboundText  TfrxDMPMemoView	DMPMemo22AlignbaRightLeft��������@Top       �@Widthgffffff�@Height       �@HAlignhaRight	Memo.UTF8 #[dbTran."ID"] TruncOutboundText  TfrxDMPMemoView	DMPMemo23AlignbaWidthTop       �@Width       �@Height       �@	Memo.UTF8Y========================================================================================= TruncOutboundText  TfrxDMPMemoView	DMPMemo24Top       �@Width       �@Height       �@	Memo.UTF8	DESCRICAO TruncOutboundText  TfrxDMPMemoView	DMPMemo25AlignbaRightLeft��������@Top       �@Widthgffffff�@Height       �@HAlignhaRight	Memo.UTF8VL.PAGAR TruncOutboundText   TfrxReportSummaryReportSummary1FillTypeftBrushHeight       �@Top       �@Width       �@	Stretched	 TfrxDMPMemoViewDMPMemo2AlignbaWidthTop       �@Width       �@Height       �@	Memo.UTF8Y========================================================================================= TruncOutboundText  TfrxDMPMemoViewDMPMemo3AlignbaWidthWidth      �@Height       �@	Memo.UTF8SUB-TOTAL --------------: WordWrapTruncOutboundText  TfrxDMPMemoViewDMPMemo4AlignbaWidthTop       �@Width      �@Height       �@	Memo.UTF8DESCONTOS --------------: WordWrapTruncOutboundText  TfrxDMPMemoViewDMPMemo5AlignbaWidthTop       �@Width      �@Height       �@	Memo.UTF8TOTAL FINAL PAGO -------: WordWrapTruncOutboundText  TfrxDMPMemoViewDMPMemo6AlignbaWidthTop       �@Width      �@Height       �@	Memo.UTF8TOTAL FINAL A PAGAR ----: WordWrapTruncOutboundText  TfrxDMPMemoViewDMPMemo7AlignbaWidthTop       �@Width      �@Height       �@	Memo.UTF8VALOR DEBITADO ---------: WordWrapTruncOutboundText  TfrxDMPMemoViewDMPMemo8AlignbaRightLeft      �@Widthgffffff�@Height       �@DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericHAlignhaRight	Memo.UTF8,[SUM(<dbITran."ValorOriginal">,MasterData1)] TruncOutboundText  TfrxDMPMemoViewDMPMemo9AlignbaRightLeft      �@Top       �@Widthgffffff�@Height       �@DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericHAlignhaRight	Memo.UTF8N[SUM(<dbITran."DescAnt">,MasterData1) + SUM(<dbITran."Desconto">,MasterData1)] TruncOutboundText  TfrxDMPMemoView	DMPMemo10AlignbaRightLeft      �@Top       �@Widthgffffff�@Height       �@DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericHAlignhaRight	Memo.UTF8�[SUM(<dbITran."ValorOriginal">,MasterData1) - SUM(<dbITran."DescAnt">,MasterData1) - SUM(<dbITran."Desconto">,MasterData1) - SUM(<dbITran."PgAnt">,MasterData1)] TruncOutboundText  TfrxDMPMemoView	DMPMemo26AlignbaRightLeft      �@Top       �@Widthgffffff�@Height       �@DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericHAlignhaRight	Memo.UTF8#[SUM(<dbITran."Pago">,MasterData1)] TruncOutboundText  TfrxDMPMemoView	DMPMemo27AlignbaRightLeft      �@Top       �@Widthgffffff�@Height       �@DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericHAlignhaRight	Memo.UTF8[dbTran."Debito"] TruncOutboundText  TfrxDMPMemoViewDMPMemo1Top       �@Width       �@Height       �@StretchModesmActualHeight	Memo.UTF8[dbConfig."RecRodape"] WordWrapTruncOutboundText  TfrxDMPMemoView	DMPMemo13AlignbaWidthTop       �@Width      �@Height       �@	Memo.UTF8PAGAMENTOS ANTECIPADOS -: WordWrapTruncOutboundText  TfrxDMPMemoView	DMPMemo15AlignbaRightLeft      �@Top       �@Widthgffffff�@Height       �@DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericHAlignhaRight	Memo.UTF8$[SUM(<dbITran."PgAnt">,MasterData1)] TruncOutboundText     TApdComPortApdComPort1	TraceNameAPRO.TRCLogNameAPRO.LOGLeft Toph  
TfrxReportrepWinBFS_OLDVersion5.1.1DotMatrixReportIniFile\Software\Fast ReportsPreviewOptions.ButtonspbPrintpbLoadpbSavepbExportpbZoompbFind	pbOutlinepbPageSetuppbToolspbEditpbNavigator PreviewOptions.Zoom       ��?PrintOptions.Printer
MP-4200 THPrintOptions.PrintModepmScalePrintOptions.PrintOnSheet PrintOptions.ShowDialogReportOptions.CreateDate ս���@ReportOptions.LastChange ���9ɡ@ScriptLanguagePascalScriptScriptText.Stringsbegin end. ShowProgressLeft(Top� DatasetsDataSetdbConfigDataSetNamedbConfig DataSetdbITranDataSetNamedbITran DataSetdbTranDataSetNamedbTran  	Variables Style  TfrxDataPageDataFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style Height       �@Width       �@  TfrxReportPagePage1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 
PaperWidth       �@PaperHeight       �@	PaperSizew
LeftMargin       � @RightMargin       � @	TopMargin       � @BottomMargin       � @BackPictureVisibleBackPicturePrintableEndlessHeight	LargeDesignHeight	TitleBeforeHeader TfrxMasterDataMasterData1FillTypeftBrushHeight���d���@Top:#J{�/�@Width��ǘ��H�@DataSetdbITranDataSetNamedbITranRowCount  TfrxMemoView	DMPMemo14AlignbaWidthWidth��ǘ��H�@Heightڟ�!����@	Memo.UTF8[dbITran."DescrItem"]   TfrxMemoView	DMPMemo12AlignbaRightLeftn���T���@Top�r�!����@Width������̬@Heightڟ�!����@	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericHAlignhaRight	Memo.UTF8 [dbITran."ValorOriginal"] WordWrap  TfrxMemoView	DMPMemo11AlignbaWidthTopx�<����@Width��ǘ��H�@Height�v<���� @GapY       ��	Memo.UTF8q----------------------------------------------------------------------------------------------------------------- WordWrap   TfrxReportTitleReportTitle1FillTypeftBrushHeightX�V��j�@Top�	�c.�@Width��ǘ��H�@ TfrxMemoView	DMPMemo16AlignbaWidthWidth��(~�W�@Heightڟ�!����@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8[dbConfig."RecNomeLoja"] 
ParentFont  TfrxMemoView	DMPMemo17AlignbaRightLeft��(~�W�@WidthY��f�Xs�@Height�0�I#,��@DisplayFormat.DecimalSeparator,DisplayFormat.FormatStrdd/mm/yyyy hh:mmDisplayFormat.Kind
fkDateTimeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style HAlignhaRight	Memo.UTF8 [dbTran."DataHora"] 
ParentFont  TfrxMemoView	DMPMemo18Topܟ�!����@Width       �@Heightڟ�!����@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8CLIENTE: [dbTran."NomeCliente"] 
ParentFont  TfrxMemoView	DMPMemo19Top��]ʎ���@Width       �@Heightڟ�!����@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8FUNC---: [dbTran."Func"] 
ParentFont  TfrxMemoView	DMPMemo20AlignbaWidthTop��]ʎ���@Width��ǘ��H�@Heightڟ�!����@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style GapY       ��	Memo.UTF8n============================================================================================================== 
ParentFontWordWrap  TfrxMemoView	DMPMemo21AlignbaWidthTopр�m��j�@Widthё\�C�]�@Heightڟ�!����@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8[dbTran."NomeTipo"] 
ParentFont  TfrxMemoView	DMPMemo22AlignbaRightLeftё\�C�]�@Topр�m��j�@Widthfffffff�@Heightڟ�!����@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style HAlignhaRight	Memo.UTF8 #[dbTran."ID"] 
ParentFontWordWrap  TfrxMemoView	DMPMemo23AlignbaWidthTop��k2�L�@Width��ǘ��H�@Heightڟ�!����@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style GapY       ��	Memo.UTF8Y========================================================================================= 
ParentFontWordWrap  TfrxMemoView	DMPMemo24Left�������?Top�BNg@ �@Width       �@Heightڟ�!����@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8   DESCRIÃ‡ÃƒO 
ParentFont  TfrxMemoView	DMPMemo25AlignbaRightLeftё\�C�]�@Top�BNg@ �@Widthfffffff�@Heightڟ�!����@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style HAlignhaRight	Memo.UTF8VL.PAGAR 
ParentFontWordWrap   TfrxReportSummaryReportSummary1FillTypeftBrushHeight��|\*�@Top�ŧ �d�@Width��ǘ��H�@	Stretched	 TfrxMemoViewDMPMemo2AlignbaWidthTop       �@Width��ǘ��H�@Height       �@	Memo.UTF8Y========================================================================================= WordWrapWysiwyg  TfrxMemoViewDMPMemo3AlignbaWidthWidth�^)��*�@Heightڟ�!����@	Memo.UTF8$SUB-TOTAL -------------------------- WordWrapWysiwyg  TfrxMemoViewDMPMemo4AlignbaWidthTop���!����@Width�^)��*�@Heightڟ�!����@	Memo.UTF8&DESCONTOS ---------------------------- WordWrapWysiwyg  TfrxMemoViewDMPMemo5AlignbaWidthTopЀ�m��j�@Width�^)��*�@Heightڟ�!����@	Memo.UTF83TOTAL PAGO ---------------------------------------- WordWrapWysiwyg  TfrxMemoViewDMPMemo6AlignbaWidthTop��]ʎ���@Width�^)��*�@Heightڟ�!����@	Memo.UTF8*TOTAL A PAGAR ---------------------------- WordWrapWysiwyg  TfrxMemoViewDMPMemo7AlignbaWidthTop��]ʎ���@Width�^)��*�@Heightڟ�!����@	Memo.UTF87VALOR DEBITADO ---------------------------------------- WordWrapWysiwyg  TfrxMemoViewDMPMemo8AlignbaRightLeft�^)��*�@Widthfffffff�@Heightڟ�!����@	AutoWidth	DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericHAlignhaRight	Memo.UTF8,[SUM(<dbITran."ValorOriginal">,MasterData1)] WordWrap  TfrxMemoViewDMPMemo9AlignbaRightLeft�^)��*�@Top���!����@Widthfffffff�@Heightڟ�!����@	AutoWidth	DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericHAlignhaRight	Memo.UTF8N[SUM(<dbITran."DescAnt">,MasterData1) + SUM(<dbITran."Desconto">,MasterData1)] WordWrap  TfrxMemoView	DMPMemo10AlignbaRightLeft�^)��*�@Top��]ʎ���@Widthfffffff�@Heightڟ�!����@	AutoWidth	DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericHAlignhaRight	Memo.UTF8{[SUM(<dbITran."ValorOriginal">,MasterData1) - SUM(<dbITran."DescAnt">,MasterData1) - SUM(<dbITran."Desconto">,MasterData1)] WordWrap  TfrxMemoView	DMPMemo26AlignbaRightLeft�^)��*�@TopЀ�m��j�@Widthfffffff�@Heightڟ�!����@	AutoWidth	DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericHAlignhaRight	Memo.UTF8H[SUM(<dbITran."PgAnt">,MasterData1) + SUM(<dbITran."Pago">,MasterData1)] WordWrap  TfrxMemoView	DMPMemo27AlignbaRightLeft�^)��*�@Top��]ʎ���@Widthfffffff�@Heightڟ�!����@	AutoWidth	DataSetdbTranDataSetNamedbTranDisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericHAlignhaRight	Memo.UTF8[dbTran."Debito"] WordWrap  TfrxMemoViewDMPMemo1Top       �@Width       �@Height       �@StretchModesmActualHeight	Memo.UTF8[dbConfig."RecRodape"]      
TfrxReportrepWinBVersion5.1.1DotMatrixReportIniFile\Software\Fast ReportsPreviewOptions.ButtonspbPrintpbLoadpbSavepbExportpbZoompbFind	pbOutlinepbPageSetuppbToolspbEditpbNavigator PreviewOptions.Zoom       ��?PrintOptions.PrinterDefaultPrintOptions.PrintOnSheet PrintOptions.ShowDialogReportOptions.CreateDate �+y����@ReportOptions.NameNEXCAFE_RECIBOReportOptions.LastChange 8��*�O�@ScriptLanguagePascalScriptScriptText.Strings=procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);begin'  if <dbTran."Troco"> < 0.01 then begin    meTrocoP.Visible := False;    meTroco.Visible := False;m    lineTroco.Visible := False;                                                                                end;)  if <dbTran."Credito"> < 0.01 then begin     meCreditoP.Visible := False;    meCredito.Visible := False;o    lineCredito.Visible := False;                                                                                end;      (  if <dbTran."Debito"> < 0.01 then begin!    meDebitadoP.Visible := False;     meDebitado.Visible := False;p    lineDebitado.Visible := False;                                                                                end;  end; begin end. Left0Top� DatasetsDataSet	dbClienteDataSetName	dbCliente DataSetdbConfigDataSetNamedbConfig DataSetdbITranDataSetNamedbITran DataSet	dbProdutoDataSetName	dbProduto DataSetdbTranDataSetNamedbTran  	Variables Style  TfrxDataPageDataHeight       �@Width       �@  TfrxReportPagePage1
PaperWidth       �@PaperHeight      ��@	PaperSize 	TopMargin       �@BottomMargin       �@EndlessHeight	 TfrxPageHeaderPageHeader1FillTypeftBrushHeight�UH�I�׋@Top�	�c.�@Width�UH�I�׋@ TfrxMemoViewMemo1AlignbaLeftWidth�Gqm,Q��@Height����W��@	AutoWidth	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8[dbConfig."RecNomeLoja"] 
ParentFont  TfrxMemoViewMemo2Top���u��@Width���u��@Height�	�c.�@	Memo.UTF8	Cliente:    TfrxMemoViewMemo3Left����W��@Top�?�\�@WidthI�L���n�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 	Memo.UTF8[dbTran."NomeCliente"] 
ParentFont  TfrxMemoViewMemo5AlignbaLeftTopyO����@WidthI�L���n�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8   FuncionÃ¡rio: [dbTran."Func"] 
ParentFont  TfrxMemoViewMemo6Left       ��?Top֨�ht��@Width���u��@Height����W��@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsUnderline Frame.Width       ��?	Memo.UTF8[dbTran."NomeTipo"] 
ParentFontVAlignvaCenter  TfrxMemoViewMemo7AlignbaRightLeft��M�#���Top�!�&�@Width��M�#��@Height�	�c.�@HAlignhaRight	Memo.UTF8    N.TransaÃ§Ã£o: [dbTran."ID"]   TfrxMemoViewMemo8AlignbaRightLeftL����n�@Width�R�G��@Height����W��@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style HAlignhaRight	Memo.UTF8[dbTran."DataHora"] 
ParentFont  TfrxMemoViewMemo9AlignbaWidthTop����=�T�@Width��	K<�L�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 	Frame.TypftBottom 	Memo.UTF8   Qtd. X DescriÃ§Ã£o 
ParentFont  TfrxMemoViewMemo10AlignbaRightLeft��	K<�L�@Top��u��@WidthM�O����@Height����W��@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 	Frame.TypftBottom HAlignhaRight	Memo.UTF8   UnitÃ¡rioTotal 
ParentFont   TfrxMasterDataMasterData1FillTypeftBrushHeight���S��@Top��� v6�@Width�UH�I�׋@DataSetdbITranDataSetNamedbITranRowCount 	Stretched	 TfrxLineViewLine6AlignbaWidthTop�	�c.�@Width�UH�I�׋@ColorclBlack	Frame.TypftTop   TfrxMemoViewMemo4AlignbaRightLeft���u��@Width��	K<�L�@Height�	�c.�@StretchModesmActualHeight	AutoWidth		DataFieldUnitarioDataSetdbITranDataSetNamedbITranFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style HAlignhaRight	Memo.UTF8[dbITran."Unitario"] 
ParentFont  TfrxRichViewRich1AlignbaWidthWidth���u��@Height�	�c.�@StretchModesmActualHeightGapX       � @GapY       ��?RichEdit
�   {\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil Tahoma;}}
{\*\generator Msftedit 5.41.21.2510;}\viewkind4\uc1\pard\f0\fs16 [dbITran."QuantUnid"] \b X\b0  [dbITran."DescrItem"]\par
}
   TfrxMemoViewMemo11AlignbaRightLeft���u��@Top�	�c.�@Width��	K<�L�@Height�	�c.�@StretchModesmActualHeight	AutoWidth		DataFieldTotalDataSetdbITranDataSetNamedbITranFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8[dbITran."Total"] 
ParentFont   TfrxReportSummaryReportSummary1FillTypeftBrushHeightQ1�߄B�@Top��	K<�L�@Width�UH�I�׋@OnBeforePrintReportSummary1OnBeforePrint	Stretched	 TfrxLineViewLine2AlignbaWidthTop ��x@��@Width�UH�I�׋@StretchModesmActualHeightColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxMemoViewMemo19AlignbaLeftTop X`��V��?Width.�&�@Height�	�c.�@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8	Sub-Total 
ParentFont  TfrxMemoViewtextoDescontoAlignbaLeftTop�?�\�@Width�	�c.�@Height�	�c.�@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8	Descontos 
ParentFont  TfrxMemoViewMemo21AlignbaLeftTophF���@Width�C�l����@Height�	�c.�@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8Total a Pagar 
ParentFont  TfrxMemoViewMemo22AlignbaLeftTop@�
Y�j�@Width���u��@Height�	�c.�@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8
Valor Pago 
ParentFont  TfrxMemoViewmeDebitadoPAlignbaLeftTop:#J{�/�@Width���u��@Height�	�c.�@VisibleStretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8Valor Debitado 
ParentFont  TfrxMemoViewMemo24AlignbaRightLeftEuB>�t�@Top       � @Width�l���t�@Height�	�c.�@StretchModesmActualHeight	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8[dbTran."Total"] 
ParentFont  TfrxMemoViewcampoDescontoAlignbaRightLeftEuB>�t�@Top  �x@��@Width�l���t�@Height�	�c.�@StretchModesmActualHeight	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8[dbTran."Desconto"] 
ParentFont  TfrxMemoViewMemo26AlignbaRightLeftEuB>�t�@TopH�S"�>�@Width�l���t�@Height�	�c.�@StretchModesmActualHeight	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8&[<dbTran."Total">-<dbTran."Desconto">] 
ParentFont  TfrxMemoViewMemo27AlignbaRightLeftEuB>�t�@Top@�
Y�j�@Width�l���t�@Height�	�c.�@StretchModesmActualHeight	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8[dbTran."Pago"] 
ParentFont  TfrxMemoView
meDebitadoAlignbaRightLeftEuB>�t�@Top����N��@Width�l���t�@Height�	�c.�@VisibleStretchModesmActualHeight	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.Style HAlignhaRight	Memo.UTF8[dbTran."Debito"] 
ParentFont  TfrxMemoViewMemo29AlignbaWidthTop����W��@Width�UH�I�׋@Height����W��@StretchModesmActualHeight	AutoWidth		Memo.UTF8[dbConfig."RecRodape"]   TfrxLineViewseparadorDescontoAlignbaWidthTopyO��ž@Width�UH�I�׋@StretchModesmActualHeightColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxLineViewLine3AlignbaWidthTop��	K<�L�@Width�UH�I�׋@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxLineViewLine4AlignbaWidthTopL�O����@Width�UH�I�׋@StretchModesmActualHeightColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxLineViewlineDebitadoAlignbaWidthTop@}˜.���@Width�UH�I�׋@VisibleOnBeforePrint#separadorValorDebitadoOnBeforePrintColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxMemoViewmeTrocoPAlignbaLeftTopD*�-9�@Width���u��@Height�	�c.�@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8Troco 
ParentFont  TfrxLineView	lineTrocoAlignbaWidthTopTގpZ�r�@Width�UH�I�׋@StretchModesmActualHeightColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxMemoViewmeTrocoAlignbaRightLeftEuB>�t�@TopD*�-9�@Width�l���t�@Height�	�c.�@StretchModesmActualHeight	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8[dbTran."Troco"] 
ParentFont  TfrxMemoView
meCreditoPAlignbaLeftTopTގpZ�r�@Width���u��@Height�	�c.�@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8	Creditado 
ParentFont  TfrxLineViewlineCreditoAlignbaWidthTop2��Y��f�@Width�UH�I�׋@StretchModesmActualHeightColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxMemoView	meCreditoAlignbaRightLeftEuB>�t�@TopTގpZ�r�@Width�l���t�@Height�	�c.�@StretchModesmActualHeight	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8[dbTran."Credito"] 
ParentFont     
TfrxReport	repCustomVersion5.1.1DotMatrixReportIniFile\Software\Fast ReportsPreviewOptions.ButtonspbPrintpbLoadpbSavepbExportpbZoompbFind	pbOutlinepbPageSetuppbToolspbEditpbNavigatorpbExportQuick PreviewOptions.Zoom       ��?PrintOptions.PrinterDefaultPrintOptions.PrintOnSheet PrintOptions.ShowDialogReportOptions.CreateDate ��Lm�O�@ReportOptions.LastChange ��Lm�O�@ScriptLanguagePascalScriptScriptText.Stringsbegin end. LeftxTop`DatasetsDataSet	dbClienteDataSetName	dbCliente DataSetdbConfigDataSetNamedbConfig DataSetdbITranDataSetNamedbITran DataSet	dbProdutoDataSetName	dbProduto DataSetdbTranDataSetNamedbTran  	Variables Style  TfrxDataPageDataHeight       �@Width       �@  TfrxReportPagePage1
PaperWidth       �@PaperHeight      ��@	PaperSize	
LeftMargin       �@RightMargin       �@	TopMargin       �@BottomMargin       �@   TfrxRTFExportfrxRTFExport1UseFileCache	ShowProgress	OverwritePromptDataOnlyPictureTypegpPNGWysiwyg	Creator%FastReport http://www.fast-report.comSuppressPageHeadersFootersHeaderFooterModehfTextAutoSizeLeft�TopX  TfrxMailExportfrxMailExport1UseFileCache	ShowProgress	OverwritePromptDataOnlyShowExportDialog	SmtpPort
UseIniFile	TimeOut<ConfurmReadingUseMAPIc:opendocument:xmlns:svg-compatible:1.0    ����   xmlns:chart ����/   urn:oasis:names:tc:opendocumeLeftTopX  TfrxPDFExportfrxPDFExport1UseFileCache	ShowProgress	OverwritePromptDataOnlyPrintOptimizedOutline
BackgroundHTMLTags	Quality_Author
FastReportSubjectFastReport PDF exportCreator'FastReport (http://www.fast-report.com)ProtectionFlagsePrinteModifyeCopyeAnnot HideToolbarHideMenubarHideWindowUI	FitWindowCenterWindowPrintScalingLeft�TopP  TfrxDesignerDesignerDefaultScriptLanguagePascalScriptDefaultFont.CharsetDEFAULT_CHARSETDefaultFont.ColorclWindowTextDefaultFont.Height�DefaultFont.NameArialDefaultFont.Style DefaultLeftMargin       �@DefaultRightMargin       �@DefaultTopMargin       �@DefaultBottomMargin       �@DefaultPaperSize	DefaultOrientation
poPortraitGradientEnd�ֶ GradientStartclWindowTemplatesExtfr3Restrictions RTLLanguageMemoParentFontLeft�Top�   TfrxRichObjectfrxRichObject1Left8Top�   TfrxBarCodeObjectfrxBarCodeObject1LeftTop�   TfrxCheckBoxObjectfrxCheckBoxObject1Left�Top�   TfrxCrossObjectfrxCrossObject1Left�Top�   TfrxDialogControlsfrxDialogControls1Left�Top�   TfrxDBDataset	dbProduto
RangeBegin	rbCurrentRangeEnd	reCurrentUserName	dbProdutoCloseDataSourceFieldAliases.StringsCodigo=Codigo	Unid=UnidPreco=PrecoObs=ObsImagem=ImagemEstoqueAtual=EstoqueAtualCustoUnitario=CustoUnitarioEstoqueACE=EstoqueACEEstoqueACS=EstoqueACSEstoqueFinal=EstoqueFinalDescricao=DescricaoCategoria=CategoriaSubCateg=SubCateg!PodeAlterarPreco=PodeAlterarPreco%NaoControlaEstoque=NaoControlaEstoqueID=ID DataSettProBCDToCurrencyLeft� Topp  
TfrxReport	repWinBFSVersion5.1.1DotMatrixReportIniFile\Software\Fast ReportsPreviewOptions.ButtonspbPrintpbLoadpbSavepbExportpbZoompbFind	pbOutlinepbPageSetuppbToolspbEditpbNavigator PreviewOptions.Zoom       ��?PrintOptions.PrinterDefaultPrintOptions.PrintOnSheet PrintOptions.ShowDialogReportOptions.CreateDate �+y����@ReportOptions.NameNEXCAFE_RECIBOReportOptions.LastChange �:K#yr�@ScriptLanguagePascalScriptScriptText.StringsEprocedure separadorValorDebitadoOnBeforePrint(Sender: TfrxComponent);begin&  if <dbTran."Debito"><0.01 then begin(    campoValorDebitado.Visible := False;(    textoValorDebitado.Visible := False;�    separadorValorDebitado.Visible := False;                                                                                          end;            end; begin end. LeftTopXDatasetsDataSet	dbClienteDataSetName	dbCliente DataSetdbConfigDataSetNamedbConfig DataSetdbITranDataSetNamedbITran DataSet	dbProdutoDataSetName	dbProduto DataSetdbTranDataSetNamedbTran  	Variables Style  TfrxDataPageDataHeight       �@Width       �@  TfrxReportPagePage1
PaperWidth       �@PaperHeight      ��@	PaperSize 	TopMargin       �@BottomMargin       �@EndlessHeight	 TfrxPageHeaderPageHeader1FillTypeftBrushHeight�UH�I�׋@Top�	�c.�@Width�UH�I�׋@ TfrxMemoViewMemo1AlignbaLeftWidth�Gqm,Q��@Height����W��@	AutoWidth	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8[dbConfig."RecNomeLoja"] 
ParentFont  TfrxMemoViewMemo2Top���u��@Width���u��@Height�	�c.�@	Memo.UTF8	Cliente:    TfrxMemoViewMemo3Left����W��@Top�?�\�@WidthI�L���n�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 	Memo.UTF8[dbTran."NomeCliente"] 
ParentFont  TfrxMemoViewMemo5AlignbaLeftTopyO����@WidthI�L���n�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8   FuncionÃ¡rio: [dbTran."Func"] 
ParentFont  TfrxMemoViewMemo6Left       ��?Top֨�ht��@Width���u��@Height����W��@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsUnderline Frame.Width       ��?	Memo.UTF8[dbTran."NomeTipo"] 
ParentFontVAlignvaCenter  TfrxMemoViewMemo7AlignbaRightLeft��M�#���Top�!�&�@Width��M�#��@Height�	�c.�@HAlignhaRight	Memo.UTF8    N.TransaÃ§Ã£o: [dbTran."ID"]   TfrxMemoViewMemo8AlignbaRightLeftL����n�@Width�R�G��@Height����W��@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style HAlignhaRight	Memo.UTF8[dbTran."DataHora"] 
ParentFont  TfrxMemoViewMemo9AlignbaWidthTop����=�T�@Width��	K<�L�@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 	Frame.TypftBottom 	Memo.UTF8   DescriÃ§Ã£o 
ParentFont  TfrxMemoViewMemo10AlignbaRightLeft��	K<�L�@Top����W��@WidthM�O����@Height�	�c.�@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 	Frame.TypftBottom HAlignhaRight	Memo.UTF8Valor 
ParentFont   TfrxMasterDataMasterData1FillTypeftBrushHeight��ƜN��@Top��� v6�@Width�UH�I�׋@DataSetdbITranDataSetNamedbITranRowCount 	Stretched	 TfrxLineViewLine6AlignbaWidthTop�?�\�@Width�UH�I�׋@ColorclBlack	Frame.TypftTop   TfrxMemoViewMemo4AlignbaRightLeft���u��@Width��	K<�L�@Height�	�c.�@StretchModesmActualHeight	AutoWidth		DataFieldValorOriginalDataSetdbITranDataSetNamedbITranFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style HAlignhaRight	Memo.UTF8[dbITran."ValorOriginal"] 
ParentFont  TfrxRichViewRich1AlignbaWidthWidth���u��@Height�	�c.�@StretchModesmActualHeight	DataField	DescrItemDataSetdbITranDataSetNamedbITranGapX       � @GapY       ��?RichEdit
�   {\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil Tahoma;}}
{\*\generator Msftedit 5.41.21.2510;}\viewkind4\uc1\pard\f0\fs16 [dbITran."DescrItem"]\par
}
    TfrxReportSummaryReportSummary1FillTypeftBrushHeightA}˜.���@Top�)"�*�@Width�UH�I�׋@	Stretched	 TfrxLineViewLine2AlignbaWidthTop ��x@��@Width�UH�I�׋@StretchModesmActualHeightColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxMemoViewMemo19AlignbaLeftTop X`��V��?Width.�&�@Height�	�c.�@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8	Sub-Total 
ParentFont  TfrxMemoViewtextoDescontoAlignbaLeftTop�	�c.�@Width�	�c.�@Height�	�c.�@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8	Descontos 
ParentFont  TfrxMemoViewMemo21AlignbaLeftTopب�ht��@Width��ǘ��H�@Height�	�c.�@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8Total Final a Pagar 
ParentFont  TfrxMemoViewMemo22AlignbaLeftTop@�
Y�j�@Width����=�T�@Height�	�c.�@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8Total Final Pago 
ParentFont  TfrxMemoViewtextoValorDebitadoAlignbaLeftTop����=�T�@Width���u��@Height�	�c.�@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8Valor Debitado 
ParentFont  TfrxMemoViewMemo24AlignbaRightLeftBȁph>�@Top       � @Width��WX"�@Height�	�c.�@StretchModesmActualHeight	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8,[SUM(<dbITran."ValorOriginal">,MasterData1)] 
ParentFont  TfrxMemoViewcampoDescontoAlignbaRightLeftBȁph>�@Top��	K<�L�@Width��WX"�@Height�	�c.�@StretchModesmActualHeight	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8N[SUM(<dbITran."DescAnt">,MasterData1) + SUM(<dbITran."Desconto">,MasterData1)] 
ParentFont  TfrxMemoViewMemo26AlignbaRightLeftBȁph>�@Top���)�D��@Width��WX"�@Height�	�c.�@StretchModesmActualHeight	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8�[SUM(<dbITran."ValorOriginal">,MasterData1) - SUM(<dbITran."DescAnt">,MasterData1) - SUM(<dbITran."Desconto">,MasterData1) - SUM(<dbITran."PgAnt">,MasterData1)] 
ParentFont  TfrxMemoViewMemo27AlignbaRightLeftBȁph>�@Top@�
Y�j�@Width��WX"�@Height�	�c.�@StretchModesmActualHeight	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8#[SUM(<dbITran."Pago">,MasterData1)] 
ParentFont  TfrxMemoViewcampoValorDebitadoAlignbaRightLeftBȁph>�@TopTގpZ�r�@Width��WX"�@Height�	�c.�@StretchModesmActualHeight	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.Style HAlignhaRight	Memo.UTF8[dbTran."Debito"] 
ParentFont  TfrxMemoViewMemo29AlignbaWidthTop��u��@Width�UH�I�׋@Height�	�c.�@StretchModesmActualHeight	AutoWidth		Memo.UTF8[dbConfig."RecRodape"]   TfrxLineViewseparadorDescontoAlignbaWidthTop(�W�b�@Width�UH�I�׋@StretchModesmActualHeightColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxLineViewLine3AlignbaWidthTop��	K<�L�@Width�UH�I�׋@ColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxLineViewLine4AlignbaWidthTopL�O����@Width�UH�I�׋@StretchModesmActualHeightColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxLineViewseparadorValorDebitadoAlignbaWidthTop�UH�I�ה@Width�UH�I�׋@OnBeforePrint#separadorValorDebitadoOnBeforePrintColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxLineViewLine1AlignbaWidthTop��u��@Width�UH�I�׋@StretchModesmActualHeightColorclBlackFrame.ColorclSilver	Frame.TypftTop   TfrxMemoViewMemo11AlignbaLeftTop����W��@Width.�&�@Height�	�c.�@StretchModesmActualHeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 	Memo.UTF8Pago Antecipamente 
ParentFont  TfrxMemoViewMemo12AlignbaRightLeftBȁph>�@Top k����@Width��WX"�@Height�	�c.�@StretchModesmActualHeight	AutoWidth	DisplayFormat.DecimalSeparator,DisplayFormat.FormatStr%2.2mDisplayFormat.Kind	fkNumericFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold HAlignhaRight	Memo.UTF8$[SUM(<dbITran."PgAnt">,MasterData1)] 
ParentFont     TnxTabletClienteDatabaseDados.db	TableNameCliente	IndexNameIIDLeftPTop`  TfrxDBDataset	dbCliente
RangeBegin	rbCurrentRangeEnd	reCurrentUserName	dbClienteCloseDataSourceDataSettClienteBCDToCurrencyLeft� Top�  TfrxDotMatrixExportdmExp
ShowDialogUseFileCache	ShowProgressOverwritePromptDataOnlyEscModel GraphicFrames
OEMConvert
PageBreaks
SaveToFile	UseIniSettings	Left� TopH   