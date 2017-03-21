{$I NEX.INC}

unit ncDMCaixa;
{
    ResourceString: Dario 12/03/13
}

interface

uses
  SysUtils, Classes, DB, nxdb, kbmMemTable, nxllTransport,
  nxptBasePooledTransport, nxtwWinsockTransport, nxsdServerEngine,
  nxreRemoteServerEngine, nxllComponent, ncCaixas, 
  uNexTransResourceStrings_PT, frxDBSet, frxExportPDF, frxClass, frxDesgn;

type

  {TDadosCaixa = record
    dcID : Integer;
    dcAbertura : TDateTime;
    dcFechamento : TDateTime;
    dcSaldoInicial : Currency;
    dcUsuario : String;
  end;}

  TDadosResFin = record
    drfQtd : Integer;
    drfValor : Currency;
  end;  

  TdmCaixa = class(TDataModule)
    nxSession: TnxSession;
    nxDB: TnxDatabase;
    nxRSE: TnxRemoteServerEngine;
    nxTCPIP: TnxWinsockTransport;
    dsQVC: TDataSource;
    qVC: TnxQuery;
    tProd: TnxTable;
    tAuxME: TnxTable;
    mtEst: TkbmMemTable;
    mtEstSaldoInicial: TFloatField;
    mtEstEntradas: TFloatField;
    mtEstCompras: TFloatField;
    mtEstTransEnt : TFloatField;
    mtEstSaidas: TFloatField;
    mtEstVendas: TFloatField;
    mtEstValorVendas: TCurrencyField;
    mtEstSaldoFinal: TFloatField;
    mtEstLucro: TCurrencyField;
    dsTot: TDataSource;
    dsEst: TDataSource;
    mtTot: TkbmMemTable;
    mtTotItem: TIntegerField;
    mtTotDescricao: TStringField;
    mtTotValor: TCurrencyField;
    tProdID: TAutoIncField;
    mtEstID: TIntegerField;
    tProdCustoUnitario: TCurrencyField;
    tProdNaoControlaEstoque: TBooleanField;
    qRFFat: TnxQuery;
    qDesc: TnxQuery;
    qCanc: TnxQuery;
    tCli: TnxTable;
    qVCTotal: TCurrencyField;
    qVCDesconto: TCurrencyField;
    qVCTotFinal: TCurrencyField;
    tAuxMESaldoFinal: TFloatField;
    tCaixa: TnxTable;
    tCaixaID: TAutoIncField;
    tCaixaAberto: TBooleanField;
    tCaixaUsuario: TStringField;
    tCaixaAbertura: TDateTimeField;
    tCaixaFechamento: TDateTimeField;
    tCaixaTotalFinal: TCurrencyField;
    tCaixaDescontos: TCurrencyField;
    tCaixaCancelamentos: TCurrencyField;
    tCaixaSaldoAnt: TCurrencyField;
    tCaixaObs: TMemoField;
    qFecha: TnxQuery;
    PDFexp: TfrxPDFExport;
    frdbCaixa: TfrxDBDataset;
    frdbTot: TfrxDBDataset;
    qVCQuant: TFloatField;
    tCaixaSangria: TCurrencyField;
    tCaixaSupr: TCurrencyField;
    tCaixaReproc: TDateTimeField;
    qCorr: TnxQuery;
    qCorr2: TnxQuery;
    tTran: TnxTable;
    tITran: TnxTable;
    mtEstFidResg: TFloatField;
    tCaixaEstSessoesQtd: TIntegerField;
    tCaixaEstSessoesTempo: TFloatField;
    tCaixaEstUrls: TIntegerField;
    tCaixaEstSyncOk: TBooleanField;
    tCaixaEstBuscasEng: TMemoField;
    tCaixaEstRes: TMemoField;
    qCancQuant: TLargeintField;
    qCancTotal: TCurrencyField;
    qDescQuant: TLargeintField;
    qDescTotal: TCurrencyField;
    tCaixaSaldoF: TCurrencyField;
    tCaixaQuebra: TCurrencyField;
    frdbEst: TfrxDBDataset;
    mtEstEntradasTot: TFloatField;
    frdbTran: TfrxDBDataset;
    tRepProd: TnxTable;
    frdbProd: TfrxDBDataset;
    qRepTran: TnxQuery;
    qRepTranDataHora: TDateTimeField;
    qRepTranFunc: TStringField;
    qRepTranTotal: TCurrencyField;
    qRepTranDesconto: TCurrencyField;
    qRepTranTotLiq: TCurrencyField;
    qRepTranPago: TCurrencyField;
    qRepTranDebito: TCurrencyField;
    qRepTranObs: TnxMemoField;
    qRepTranCancelado: TBooleanField;
    qRepTranCanceladoPor: TStringField;
    qRepTranCanceladoEm: TDateTimeField;
    qRepTranQtdTempo: TFloatField;
    qRepTranCredValor: TBooleanField;
    qRepTranFidResgate: TBooleanField;
    qRepTranNomeTipo: TStringField;
    qRepTranCancFid: TStringField;
    tCaixaIDLivre: TStringField;
    tUsuario: TnxTable;
    tUsuarioUsername: TStringField;
    tUsuarioNome: TStringField;
    tUsuarioAdmin: TBooleanField;
    repCaixa_pt: TfrxReport;
    tCaixaNomeLoja: TStringField;
    qPagEsp: TnxQuery;
    tEsp: TnxTable;
    tEspID: TWordField;
    tEspNome: TStringField;
    tEspImg: TWordField;
    dsPagEsp: TDataSource;
    frdbPagEsp: TfrxDBDataset;
    qRFPag: TnxQuery;
    qRFPagCredito: TCurrencyField;
    qRFPagDebito: TCurrencyField;
    qRFPagQtd: TLargeintField;
    qRFPagCreditoUsado: TCurrencyField;
    qRFPagPago: TCurrencyField;
    qRFFatQtd: TLargeintField;
    qRFFatTotLiq: TCurrencyField;
    mtRF1: TkbmMemTable;
    mtRF1Item: TIntegerField;
    mtRF1Descricao: TStringField;
    mtRF1Total: TCurrencyField;
    dsRF1: TDataSource;
    mtRF2: TkbmMemTable;
    mtRF2Item: TIntegerField;
    mtRF2Descricao: TStringField;
    mtRF2Total: TCurrencyField;
    dsRF2: TDataSource;
    mtRF3: TkbmMemTable;
    mtRF3Item: TIntegerField;
    mtRF3Descricao: TStringField;
    mtRF3Total: TCurrencyField;
    dsRF3: TDataSource;
    dbRF1: TfrxDBDataset;
    dbRF2: TfrxDBDataset;
    dbRF3: TfrxDBDataset;
    mtRF1Bold: TBooleanField;
    mtRF1Cor: TIntegerField;
    mtRF2Bold: TBooleanField;
    mtRF2Cor: TIntegerField;
    mtRF3Bold: TBooleanField;
    mtRF3Cor: TIntegerField;
    mtObs: TkbmMemTable;
    mtObsObs: TMemoField;
    dbObs: TfrxDBDataset;
    qRFPagTroco: TCurrencyField;
    tAuxMEID: TUnsignedAutoIncField;
    tAuxMETran: TLongWordField;
    tAuxMEProduto: TLongWordField;
    tAuxMEQuant: TFloatField;
    tAuxMEUnitario: TCurrencyField;
    tAuxMETotal: TCurrencyField;
    tAuxMECustoU: TCurrencyField;
    tAuxMEItem: TByteField;
    tAuxMEDesconto: TCurrencyField;
    tAuxMEDataHora: TDateTimeField;
    tAuxMEEntrada: TBooleanField;
    tAuxMEAjustaCusto: TBooleanField;
    tAuxMEEstoqueAnt: TFloatField;
    tAuxMECaixa: TIntegerField;
    tAuxMENaoControlaEstoque: TBooleanField;
    tAuxMEITran: TIntegerField;
    tAuxMETipoTran: TByteField;
    tAuxMEFidResgate: TBooleanField;
    tITranID: TUnsignedAutoIncField;
    tITranTran: TLongWordField;
    tITranCaixa: TLongWordField;
    tITranCaixaPag: TLongWordField;
    tITranCliente: TLongWordField;
    tITranSessao: TLongWordField;
    tITranDataHora: TDateTimeField;
    tITranTipoTran: TByteField;
    tITranTipoItem: TByteField;
    tITranSubTipo: TByteField;
    tITranItemID: TLongWordField;
    tITranSubItemID: TLongWordField;
    tITranItemPos: TByteField;
    tITranTotal: TCurrencyField;
    tITranDesconto: TCurrencyField;
    tITranTotLiq: TCurrencyField;
    tITranDebito: TCurrencyField;
    tITranPago: TCurrencyField;
    tITranCancelado: TBooleanField;
    tITranPagPend: TBooleanField;
    tITranFidFator: TShortintField;
    tITranFidPontos: TFloatField;
    tITranFidMov: TBooleanField;
    tITranFidOpe: TByteField;
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
    tTranDebito: TCurrencyField;
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
    qPagEspEspecie: TWordField;
    qPagEspTotalValor: TCurrencyField;
    qPagEspTotalTroco: TCurrencyField;
    qPagEspTotalF: TCurrencyField;
    qPagEspNomeEspecie: TStringField;
    qPagEspImg: TWordField;
    tAuxMEFidPontos: TFloatField;
    qRepTranUID: TGuidField;
    qRepTranCliente: TLongWordField;
    qRepTranTipo: TByteField;
    qRepTranDescPerc: TFloatField;
    qRepTranDescPorPerc: TBooleanField;
    qRepTranPagEsp: TWordField;
    qRepTranDebitoAnt: TCurrencyField;
    qRepTranDebitoPago: TCurrencyField;
    qRepTranCreditoAnt: TCurrencyField;
    qRepTranCredito: TCurrencyField;
    qRepTranCreditoUsado: TCurrencyField;
    qRepTranTroco: TCurrencyField;
    qRepTranCaixa: TLongWordField;
    qRepTranCaixaPag: TLongWordField;
    qRepTranMaq: TWordField;
    qRepTranPagFunc: TStringField;
    qRepTranPagPend: TBooleanField;
    qRepTranID: TLongWordField;
    qRepTranSessao: TLongWordField;
    qRFFatTipo: TByteField;
    qRFPagTipo: TByteField;
    qFechaCancelado: TBooleanField;
    qFechaTipo: TByteField;
    qFechaTotal: TCurrencyField;
    qFechaDesconto: TCurrencyField;
    qFechaPago: TCurrencyField;
    qFechaTroco: TCurrencyField;
    qFechaDebito: TCurrencyField;
    qME: TnxQuery;
    qMEproduto: TLongWordField;
    qMEtipotran: TByteField;
    qMEfidresgate: TBooleanField;
    qMEquant: TFloatField;
    qMEtotal: TCurrencyField;
    qMEpago: TCurrencyField;
    qMEdesconto: TCurrencyField;
    tAuxMECancelado: TBooleanField;
    qRFPagPend: TnxQuery;
    qRFPagPendTipo: TByteField;
    qRFPagPendQtd: TLargeintField;
    qRFPagPendCredito: TCurrencyField;
    qRFPagPendDebito: TCurrencyField;
    qRFPagPendPago: TCurrencyField;
    qRFPagPendCreditoUsado: TCurrencyField;
    qRFPagPendTroco: TCurrencyField;
    mtEstDevolucoes: TFloatField;
    qDev: TnxQuery;
    qDevOpDevValor: TByteField;
    qDevQuant: TLargeintField;
    qDevTotal: TCurrencyField;
    mtRF4: TkbmMemTable;
    dsRF4: TDataSource;
    mtRF4Item: TIntegerField;
    mtRF4Descricao: TStringField;
    mtRF4Total: TCurrencyField;
    mtRF4Bold: TBooleanField;
    mtRF4Cor: TIntegerField;
    dbRF4: TfrxDBDataset;
    tTranUID_ref: TGuidField;
    tTranStatusNFE: TByteField;
    tTranChaveNFE: TStringField;
    tTranTipoNFE: TByteField;
    tTranIncluidoEm: TDateTimeField;
    tTranOpDevValor: TByteField;
    tTranAmbNFe: TByteField;
    tTranStatusCanc: TByteField;
    tTranExtra: TnxMemoField;
    tAuxTran: TnxTable;
    tAuxNFE: TnxTable;
    tNFConfig: TnxTable;
    tNFConfigtpAmb: TByteField;
    tNFConfigTipo: TByteField;
    tPostMS: TnxTable;
    tPostMSID: TUnsignedAutoIncField;
    tPostMSMS: TBlobField;
    tPostMSURL: TStringField;
    tPostMSInclusao: TDateTimeField;
    tPostMSEnvio: TDateTimeField;
    tPostMSTries: TWordField;
    tPostMSMax: TWordField;
    tPostMSNextTry: TLongWordField;
    Designer: TfrxDesigner;
    repCaixa_en: TfrxReport;
    qRepTranDescricao: TWideMemoField;
    tTranDescricao: TWideMemoField;
    qMEcustot: TExtendedField;
    mtPagEsp: TkbmMemTable;
    mtPagEspEspecie: TWordField;
    mtPagEspNomeEsp: TWideStringField;
    mtPagEspVendas: TCurrencyField;
    mtPagEspDev: TCurrencyField;
    mtPagEspSangria: TCurrencyField;
    mtPagEspSupr: TCurrencyField;
    mtPagEspTotal: TCurrencyField;
    qPagEspTipoTran: TByteField;
    mtPagEspTroco: TCurrencyField;
    mtMPObs: TkbmMemTable;
    frdbMPObs: TfrxDBDataset;
    mtMPObsAsterisco: TStringField;
    mtMPObsTotal: TCurrencyField;
    mtMPObsTroco: TCurrencyField;
    mtMPObsNomeEsp: TStringField;
    mtMPObsEspecie: TWordField;
    mtPagEspObs: TWideMemoField;
    repCaixa_es: TfrxReport;
    tTranNomeCliente: TWideStringField;
    qRepTranEntregar: TBooleanField;
    qRepTranHora: TByteField;
    qRepTranNomeCliente: TWideStringField;
    qRepTranVendedor: TStringField;
    qRepTranComissao: TCurrencyField;
    qRepTranFrete: TCurrencyField;
    qRepTranTotalFinal: TCurrencyField;
    tProdDescricao: TWideStringField;
    mtEstDescricao: TWideStringField;
    qVCCategoria: TWideStringField;
    procedure qVCCalcFields(DataSet: TDataSet);
    procedure tAuxMECalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure mtEstCalcFields(DataSet: TDataSet);
    procedure repCaixa_ptBeforePrint(Sender: TfrxReportComponent);
    procedure qRepTranCalcFields(DataSet: TDataSet);
    procedure tCaixaCalcFields(DataSet: TDataSet);
    procedure qPagEspCalcFields(DataSet: TDataSet);
    procedure mtRF1CalcFields(DataSet: TDataSet);
    procedure mtRF2CalcFields(DataSet: TDataSet);
    procedure mtRF3CalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure AddItemRF(aItem: Integer; aDescr: String; aValor: Currency; aAddZero: Boolean = True);
    procedure SaldoIF(aProduto: Cardinal; var aSaldoI, aSaldoF: Extended);

    function PodeFechar: Boolean;
    function TemVendaHomo: Boolean;

    procedure GeraEmailFechamento;
                                                     

  public
    drf : Array[1..20] of TDadosResFin;

    FCXRange : TncCaixas;

    TemSupSan : Boolean;
    FImpTran : Boolean;
    TotalTroco : Currency;

    procedure AbreConn;
    function AbreCaixa(aFunc: String; aSaldo: Currency; aManterSaldo: Boolean; var aNumCx: Integer): Integer;
    function FechaCaixa(aFunc: String; aSaldo: Currency; aNumCx: Integer; aReproc: Boolean): Integer;
    
    function Processa(aID: Integer; aCXRange: TncCaixas): Currency;
    procedure MostrarCaixa(aID: Integer);
    procedure ExportaCaixa(aID: Integer; aArquivo: String);
    procedure ExportaCaixaKite(aID: Integer; aArquivo: String; slPar: tStrings);

    procedure EmailCaixa(aID: Integer);

    function repCaixa: TfrxReport;
    
    { Public declarations }
  end;

var
  dmCaixa: TdmCaixa;

const
  irfFaturamento    = 1;
  irfDevolucaoCred  = 2;
  irfDevolucaoDin   = 3;
  irfDebitado       = 4;
  irfCredUsado      = 5;
  irfDescontos      = 6;
  irfCancelamentos  = 7;
  irfVendasRec      = 8;
  irfVendasRecPend  = 9;
  irfDebPagos       = 10;
  irfTrocoCred      = 11;
  irfTotalRec       = 12;
  irfSaldoInicial   = 13;
  irfTotalRec2      = 14;
  irfValorDev       = 15;
  irfDinAdd         = 16;
  irfDinRem         = 17;
  irfSaldoFinal     = 18;
  irfSaldoInformado = 19;
  irfQuebraCaixa    = 20;  

implementation

uses
  ncClassesBase, ncErros, Graphics, ncDebug, IdMultipartFormData, nexUrls,
  ncHttp;

// START resource string wizard section

{$R *.dfm}

resourcestring
  rsInfoTroco = '* Total recebido com vendas foi de %s mas houve troco de %s.';
  rsTroco = 'Troco';
  rsTotal = 'Total';

const
  sqlCanc = 'select Count(ID) as Quant, Sum(Total) as Total  from tran where (cancelado=true) and %s';
  sqlDev = 
    'select OpDevValor, Count(ID) as Quant, Sum(Total) as Total from Tran where (tipo=18) and (cancelado<>true) and %s group by OpDevValor';
  
  sqlDesc = 'select Count(ID) as Quant, Sum(Desconto) as Total from tran where (cancelado<>true) and (desconto>0.001) and %s';
  sqlVC =
    'select P.Categoria, Sum(I.Total) as Total, Sum(I.Desconto) as Desconto, Sum(I.Quant) as Quant  from MovEst I, Produto P'+
    ' WHERE %s and '+
    '     (P.ID=I.Produto) and '+
    '     (I.TipoTran=4) and '+
    '     ((not Cancelado) or (Cancelado is Null)) and '+
    '     ((not FidResgate) or (FidResgate is null)) '+
    '  GROUP BY P.Categoria';
  sqlPagEsp = 
    'select Especie, TipoTran, Sum(Valor) as TotalValor, Sum(Troco) as TotalTroco from PagEspecies '+
    'where %s and ((Cancelado is Null) or (not Cancelado)) '+
    'group by Especie, TipoTran Order by Especie';
  sqlRFFat = 
    'select Tipo, Count(*) as Qtd, Sum(TotLiq) as TotLiq from Tran '+
    'where %s and ((Cancelado is Null) or (not Cancelado)) ' +
    'group by Tipo';
  sqlRFPag = 
    'select Tipo, Count(*) as Qtd, Sum(Credito) as Credito, Sum(Debito) as Debito, Sum(Pago) as Pago, Sum(CreditoUsado) as CreditoUsado,  Sum(Troco) as Troco '+
    'from tran where %s and ((Cancelado is Null) or (not Cancelado)) and (CaixaPag=Caixa) group by Tipo';
    
  sqlRFPagPend = 
    'select Tipo, Count(*) as Qtd, Sum(Credito) as Credito, Sum(Debito) as Debito, Sum(Pago) as Pago, Sum(CreditoUsado) as CreditoUsado,  Sum(Troco) as Troco '+
    'from tran where %s and ((Cancelado is Null) or (not Cancelado)) and (CaixaPag<>Caixa) group by Tipo';
    
  sqlME = 
    'select produto, tipotran, fidresgate, sum(quant) as quant, sum(total) as total, sum(pago) as pago, sum(desconto) as desconto, sum(custou * quant) as custot from movest '+
    'where %s and (cancelado <> true) group by produto, tipotran, fidresgate';
  

function InitTran(aDB: TnxDatabase;
                  const aTables : array of TnxTable;
                  aWith : Boolean): Boolean;
var I : Integer;
begin
  Result := False;
  if aDB.InTransaction then Exit; 
  I := 10;
  while I > 0 do begin
    try
      if aWith then
        aDB.StartTransactionWith(aTables)
      else
        aDB.StartTransaction;
      I := 0;
    except
      Dec(I);
      Random(500);
    end
  end;
  Result := True;
end;


function TdmCaixa.AbreCaixa(aFunc: String; aSaldo: Currency; aManterSaldo: Boolean; var aNumCx: Integer): Integer;
var SaldoAnt: Currency;
begin
  tCaixa.Active := True;
  tTran.IndexName := 'IID'; // do not localize
  tTran.Open;
  tITran.Open;
  InitTran(nxDB, [tCaixa, tTran, tITran], True);
  try
    tCaixa.IndexName := 'IAberto'; // do not localize
    try
      if tCaixa.FindKey([True]) then begin
        nxDB.Rollback;
        Result := ncerrJaTemCaixaAberto;
        Exit;
      end;
    finally
      tCaixa.IndexName := 'IID'; // do not localize
    end;

    
    if aManterSaldo then begin
      if tCaixa.IsEmpty then 
        SaldoAnt := 0 
      else begin
        tCaixa.Last;
        SaldoAnt := tCaixaTotalFinal.Value + tCaixaSaldoAnt.Value + tCaixaSupr.Value - tCaixaSangria.Value;
      end;
    end else
      SaldoAnt := aSaldo;
      
    tCaixa.Insert;
    tCaixaAbertura.Value := Now;
    tCaixaAberto.Value := True;
    tCaixaUsuario.Value := aFunc;
    if aManterSaldo or gConfig.PedirSaldoI then
      tCaixaSaldoAnt.Value := SaldoAnt;
      
    tCaixaEstSyncOk.Value := False;
    tCaixa.Post;
                                       
    aNumCx := tCaixaID.Value;
    Result := 0;

    nxDB.Commit;
  except
    on e: exception do begin
        nxDB.Rollback;
        Result := ncerrExcecaoNaoTratada_TdmCaixa_AbreCaixa;
        DebugMsgEsp(Self, E.Message, False, True);
    end;
  end;
end;

procedure TdmCaixa.AbreConn;
begin
  nxDB.AliasPath := '';
  nxDB.AliasName := 'NexCafe'; // do not localize
  nxDB.Active := True;
  tCli.Open;
  tProd.Open;
  tCaixa.Open;
  tPostMS.Open;
end;

procedure TdmCaixa.AddItemRF(aItem: Integer; aDescr: String; aValor: Currency; aAddZero: Boolean = True);
begin
  if (aValor<0.01) and (not aAddZero) then Exit;

  mtTot.Append;
  mtTotDescricao.Value := aDescr;
  if aItem<>99 then
    mtTotValor.Value := aValor;
  mtTotItem.Value := aItem;
  mtTot.Post;

  if (aItem<>99) then 
  case aItem of
    irfFaturamento..irfCancelamentos: begin
      mtRF1.Append;
      mtRF1Descricao.Value := aDescr;
      mtRF1Total.Value := aValor;
      mtRF1Item.Value := aItem;
      mtRF1.Post
    end;

    irfVendasRec..irfTotalRec: begin
      mtRF2.Append;
      mtRF2Descricao.Value := aDescr;
      mtRF2Total.Value := aValor;
      mtRF2Item.Value := aItem;
      mtRF2.Post
    end;  

    irfSaldoInicial..irfQuebraCaixa: begin
      mtRF3.Append;
      mtRF3Descricao.Value := aDescr;
      mtRF3Total.Value := aValor;
      mtRF3Item.Value := aItem;
      mtRF3.Post
    end;
    
  end;
end;

procedure TdmCaixa.DataModuleCreate(Sender: TObject);
begin
  nxTCPIP.Port := 17200;
  TemSupSan := False;
  FImpTran := False;
  TotalTroco := 0;
  FCXRange := TncCaixas.Create;
end;

procedure TdmCaixa.DataModuleDestroy(Sender: TObject);
begin
  FCXRange.Free;
end;

procedure TdmCaixa.EmailCaixa(aID: Integer);
begin
  Processa(aID, nil);
  GeraEmailFechamento;
end;

procedure TdmCaixa.ExportaCaixa(aID: Integer; aArquivo: String);
begin
  ExportaCaixaKite(aID, aArquivo, nil);
end;

procedure TdmCaixa.ExportaCaixaKite(aID: Integer; aArquivo: String;
  slPar: tStrings);
var sIdent: String;  
begin
  DebugMsg('TdmCaixa.ExportaCaixa - aID: ' + IntToStr(aID) + ' - aArquivo: ' + aArquivo); // do not localize
  Processa(aID, nil);
  DebugMsg('TdmCaixa.ExportaCaixa - 2'); // do not localize

  tUsuario.Active := True;

  if slPar<>nil then begin
    slPar.Add('timestamp_de_abertura='+formatDateTime('YYYY-MM-DD HH:NN:SS', tCaixaAbertura.Value)); // do not localize
    slPar.Add('timestamp_de_fechamento='+formatDateTime('YYYY-MM-DD HH:NN:SS', tCaixaFechamento.Value)); // do not localize
    slPar.Add('username_funcionario='+tCaixaUsuario.Value); // do not localize
    slPar.Add('numero_do_caxa='+tCaixaID.AsString); // do not localize
    slPar.Add('conta_da_loja='+gConfig.Conta); // do not localize
    if tUsuario.FindKey([tCaixaUsuario.Value]) then
      slPar.Add('nome_funcionario='+tUsuarioNome.Value) else // do not localize
      slPar.Add('nome_funcionario='); // do not localize
    if Trim(gConfig.EmailIdent)>'' then 
      sIdent:= gConfig.EmailIdent + ' - ' else
      sIdent:= '';
    slPar.Add('subject='+sIdent+rsCaixa+' #' + tCaixaID.AsString+ // do not localize
                           ' - ' + tCaixaAbertura.AsString + 
                           ' a ' + tCaixaFechamento.AsString);
    
  end;
  
  pdfExp.FileName := aArquivo;
  DebugMsg('TdmCaixa.ExportaCaixa - 3'); // do not localize
  pdfExp.DefaultPath := '';
  DebugMsg('TdmCaixa.ExportaCaixa - 4'); // do not localize
  
  repCaixa.PrepareReport;
  DebugMsg('TdmCaixa.ExportaCaixa - 5'); // do not localize
  repCaixa.Export(PDFexp);
  DebugMsg('TdmCaixa.ExportaCaixa - 6'); // do not localize
end;

function TdmCaixa.FechaCaixa(aFunc: String; aSaldo: Currency; aNumCx: Integer; aReproc: Boolean): Integer;
var 
  SAnt: Currency;
  SL : TStrings;
begin
  InitTran(nxDB, [], False);
  try
    tCaixa.IndexName := 'IID'; // do not localize
    if not tCaixa.FindKey([aNumCx]) then begin
      nxDB.Rollback;
      Result := ncerrItemInexistente;
      Exit;
    end;
    SAnt := 0;

    if aReproc then begin
      if tCaixaAberto.Value then begin
        nxDB.Rollback;
        Raise ENexCafe.Create(SncDMCaixa_OReprocessamentoDeCaixaSóPodeSer);
      end;
      if gConfig.ManterSaldoCaixa then begin
        tCaixa.Prior;
        if (tCaixaID.Value < aNumCx) then
        if not tCaixaSaldoF.IsNull then
          SAnt := tCaixaSaldoF.Value else
          SAnt := tCaixaTotalFinal.Value + tCaixaSaldoAnt.Value + tCaixaSupr.Value - tCaixaSangria.Value;
        tCaixa.FindKey([aNumCx]);
      end else
        SAnt := tCaixaSaldoAnt.Value;
    end else
    if not tCaixaAberto.Value then begin
      nxDB.Rollback;
      Result := ncerrCaixaJaFoiFechado;
      Exit;
    end;

    if (not aReproc) then begin
      if (not PodeFechar) then begin
        Result := ncerrNFCeImpedeFecharCaixa;
        nxDB.Rollback;
        Exit;
      end;

      if TemVendaHomo then begin
        Result := ncerrNFCeCancelarModoHomo;
        nxDB.Rollback;
        Exit;
      end;
    end;

{    if aReproc then begin
      qCorr.Active := False;
      qCorr.ParamByName('Caixa').AsInteger := aNumCx; // do not localize
      qCorr.ExecSQL;

      qCorr2.Active := False;
      qCorr2.SQL.Text := 'update itran '+ // do not localize
                         'set caixa = ' + IntToStr(aNumCx) + // do not localize
                         ' where tran in (select id from tran where caixa = ' + IntToStr(aNumCx) +')'; // do not localize
      qCorr2.ExecSQL;     

      qCorr2.Active := False;
      qCorr2.SQL.Text := 'update movest '+ // do not localize
                         'set caixa = ' + IntToStr(aNumCx) + // do not localize
                         ' where tran in (select id from tran where caixa = ' + IntToStr(aNumCx) +')'; // do not localize
      qCorr2.ExecSQL;                         
    end;}

    qFecha.Params[0].AsInteger := aNumCx; // do not localize

    qFecha.Active := True;
    tCaixa.Edit;
    tCaixaCancelamentos.Value := 0;
    tCaixaDescontos.Value := 0;
    tCaixaTotalFinal.Value := 0;
    tCaixaSangria.Value := 0;
    tCaixaSupr.Value := 0;
    
    if aReproc then
      tCaixaSaldoAnt.Value := SAnt;
      
    while not qFecha.Eof do begin
      if qFechaCancelado.Value then
        tCaixaCancelamentos.Value := tCaixaCancelamentos.Value + qFechaTotal.Value 
      else 
      case qFechaTipo.Value of
        trCaixaEnt : tCaixaSupr.Value := tCaixaSupr.Value + qFechaTotal.Value;
        trCaixaSai : tCaixaSangria.Value := tCaixaSangria.Value + qFechaTotal.Value;
        trEstDevolucao : tCaixaTotalFinal.Value := tCaixaTotalFinal.Value - qFechaTotal.Value;
        trEstCompra,
        trEstTransfEnt,
        trEstTransf,
        trEstSaida,
        trEstEntrada,
        trCorrDataCx : ;
      else  
        tCaixaTotalFinal.Value := tCaixaTotalFinal.Value + (qFechaPago.Value-qFechaTroco.Value);
      end;
      tCaixaDescontos.Value := tCaixaDescontos.Value + qFechaDesconto.Value;
      qFecha.Next;
    end;
    tCaixaAberto.Value := False;
    if aReproc then
      tCaixaReproc.Value := Now else
      tCaixaFechamento.Value := Now;
    tCaixaEstSyncOk.Value := True;  
    if gConfig.PedirSaldoF then begin
      if (not aReproc) then
        tCaixaSaldoF.Value := aSaldo;
      tCaixaQuebra.Value := 
        tCaixaSaldoF.Value - 
        (tCaixaTotalFinal.Value + tCaixaSaldoAnt.Value + tCaixaSupr.Value - tCaixaSangria.Value);
    end;
      
    tCaixa.Post;
    Result := 0;
    nxDB.Commit;
    Self.GeraEmailFechamento;
  except
    on e: exception do begin
       nxDB.Rollback;
       DebugMsgEsp('TdmCaixa.FechaCaixa - Exception: '+E.Message, False, True);
       Result := ncerrExcecaoNaoTratada_TdmCaixa_FechaCaixa;
    end;
  end;
end;

function PosDelim(S: String): Integer;
begin
  for Result := 1 to Length(S) do 
    if S[Result] in [',', ';'] then Exit;

  Result := 0;
end;

procedure ObtemDestinos(aDestino: TStrings);
var 
  P, I : Integer;
  S : String;
  SL : TStrings;
begin    
  SL := TStringList.Create;
  try
    S := aDestino.Text;
    SL.Text := '';
    for I := 0 to aDestino.Count - 1 do begin
      S := aDestino[I];
      while Length(S)>0 do begin 
        P := PosDelim(S);
        if P>0 then begin
          SL.Add(Trim(Copy(S, 1, P-1)));
          Delete(S, 1, P);
        end else begin
          if Trim(S)>'' then
            SL.Add(S);
          S := '';  
        end;
      end;
    end;
    aDestino.Text := SL.Text;
  finally
    SL.Free;
  end;
end;


procedure TdmCaixa.GeraEmailFechamento;
var 
  S, sDest: String;
  I : Integer;
  slPar, slDest : TStrings;
  ms : TIdMultiPartFormDataStream;
begin
  if not gConfig.EmailEnviarCaixa then Exit;
  tPostMS.Open;
  slPar := TStringList.Create;
  slDest := TStringList.Create;
  ms := TidMultipartFormDataStream.Create;
  try
    S := ExtractFilePath(ParamStr(0)) + 'Email\Caixa' + tCaixaID.AsString + '.pdf';
    ExportaCaixaKite(tCaixaID.Value, S, slPar);
    slDest.Text := gConfig.EmailDestino;
    ObtemDestinos(slDest);
    sDest := '';
    for I := 0 to slDest.Count-1 do begin
      if I>0 then sDest := sDest + ', ';
      sDest := sDest + slDest[i];
    end;
    slPar.Add('destinatarios='+sDest);

    for i := 0 to slPar.Count-1 do
       ms.AddFormField(slPar.Names[i], slPar.ValueFromIndex[i]);
       
    ms.AddFile('pdf', S, 'application/pdf');
    ms.Seek(0,0); 

    with ThttpThreadPost.Create(gUrls.Url('kapi_emailcaixa'), ms, 10) do Resume;
    ms := nil;
  finally
    if ms<>nil then ms.Free;
    slPar.Free;
    slDest.Free;
  end;
end;

procedure TdmCaixa.MostrarCaixa(aID: Integer);
begin
  Processa(aID, nil);
  repCaixa.ShowReport;
end;

procedure TdmCaixa.mtEstCalcFields(DataSet: TDataSet);
begin
  mtEstEntradasTot.Value := mtEstEntradas.Value + mtEstCompras.Value + mtEstDevolucoes.Value;
end;

function GetCor(aItem: Integer): TColor;
begin
  case aItem of
    irfCancelamentos, irfDescontos, irfQuebraCaixa  : Result := clRed;
    irfSaldoFinal, irfSaldoInformado : Result := clBlue;
  else
    Result := clBlack;  
  end;
end;

function GetBold(aItem: Integer): Boolean;
begin
  case aItem of
    irfTotalRec,
    irfSaldoFinal,
    irfSaldoInformado,
    irfQuebraCaixa,
    irfFaturamento : Result := True;
  else
    Result := False;  
  end;
end;

procedure TdmCaixa.mtRF1CalcFields(DataSet: TDataSet);
begin
  mtRF1Bold.Value := GetBold(mtRF1Item.Value);
  mtRF1Cor.Value := GetCor(mtRF1Item.Value);
end;

procedure TdmCaixa.mtRF2CalcFields(DataSet: TDataSet);
begin
  mtRF2Bold.Value := GetBold(mtRF2Item.Value);
  mtRF2Cor.Value := GetCor(mtRF2Item.Value);
end;

procedure TdmCaixa.mtRF3CalcFields(DataSet: TDataSet);
begin
  mtRF3Bold.Value := GetBold(mtRF3Item.Value);
  mtRF3Cor.Value := GetCor(mtRF3Item.Value);
end;

function V2Casas(C: Currency): Currency;
begin
  Result := Int(C * 100) / 100;
end;

function TdmCaixa.PodeFechar: Boolean;
begin
{- Cancelamento: Evitar fechamento de caixa ou Processar imediatamente
- Impedir fechamento do caixa quando houver rejeição de NFC-e
- Impedir fechamentp de cx com nfce por transmitir
- Contigencia nao fechar cx}
  Result := False;
  tNFConfig.Open;
  tAuxNFE.Open;
  tAuxNFE.IndexName := 'IStatusCancNumSeq';
  tAuxTran.Open;
  if tAuxNFE.FindKey([statuscanc_nfe_processarnfe]) then Exit;
  if tAuxNFE.FindKey([statuscanc_nfe_processatran]) then Exit;
  tAuxTran.IndexName := 'ICanceladoStatusNFE';
  if tAuxTran.FindKey([False, nfetran_transmitir]) then Exit;
  if tAuxTran.FindKey([False, nfetran_contingencia]) then Exit;
  if tAuxTran.FindKey([False, nfetran_erro]) then Exit;
  Result := True;
end;

function Asterisco(I: integer): String;
begin
  Result := '';
  while Length(Result)<I do Result := Result + '*';
end;


function TdmCaixa.Processa(aID: Integer; aCXRange: TncCaixas): Currency;
var
  Q: TnxQuery;
  I, Num, IDCli : Integer;
  CustoU, TotFinal, PercDesc, Desc, DescT : Double;
  S: String;
  Incluir: Boolean;
  PagDet, PagReg : Integer;
  ValorI : Currency;
  qItem: Integer;
  DataI, DataF: TDateTime;
  SaldoI, SaldoF : Extended;
  totVendas, totDev, totSupr, totSangria: Currency;
begin
  Fillchar(DRF, SizeOf(DRF), 0);
  Result := 0;
  mtRF1.EmptyTable;
  mtRF2.EmptyTable;
  mtRF3.EmptyTable;

  mtObs.Active := False;
  mtObs.Active := True;
  
  qVC.Active := False;
  qDesc.Active := False;
  qCanc.Active := False;
  qRFFat.Active := False;
  qRFPag.Active := False;
  qRFPagPend.Active := False;
//  qCliValor.Active := False;
  
  mtEst.Active := False;
  mtEst.Active := True;

  mtTot.Active := False;
  mtTot.Active := True;

  tCaixa.Open;
  tProd.Open;

  FillChar(drf, SizeOf(drf), 0);
  Num := aID;

  if Num > 0 then begin
    tCaixa.Locate('ID', Num, []); // do not localize

    FCXRange.DataI := tCaixaAbertura.Value;
    if tCaixaAberto.Value then 
       FCXRange.DataF := Date+1 else
       FCXRange.DataF := tCaixaFechamento.Value;
       
    FCXRange.StartNewRange(Num, Num);

    if Trim(tCaixaObs.Value)>'' then begin
      mtObs.Append;
      mtObsObs.Value := tCaixaObs.Value;
      mtObs.Post;
    end;
  end else
    FCXRange.Assign(aCXRange);

  tRepProd.Open;
  tRepProd.SetRange([True], [True]);

  qRepTran.Active := False;
  qRepTran.SQL.Text := 'select * from Tran'; // do not localize

  if gConfig.cce(cceTodasTran) then
    S := 'all'
  else begin
    if gConfig.cce(cceTransacoesCanc) then
      S := '(Cancelado=True)' else // do not localize
      S := '';

    if gConfig.cce(cceTransacoesDesc) then
      if S>'' then
        S := '(Cancelado=True) or (Desconto>0)' else // do not localize
        S := '(Desconto>0)'; // do not localize

    if gConfig.cce(cceTransacoesObs) then
      if S>'' then
        S := S + ' or (Trim(Obs)>'+QuotedStr('')+')' else // do not localize
        S := '(Trim(Obs)>'+QuotedStr('')+')'; // do not localize
  end;

  if (gConfig.EmailEnviarCaixa) and (S>'') then begin
    FImpTran := True;
    if S='all' then
      S := 'where (Caixa='+IntToStr(Num)+') order by ID' else
      S := 'where (Caixa='+IntToStr(Num)+') and ('+S+') order by ID'; // do not localize
    qRepTran.SQL.Text := 'select * from Tran ' + S; // do not localize
    qRepTran.Open;    
  end else begin
//    qRepTran.Open;
    FImpTran := False;
  end;

  qDev.SQL.Text := Format(sqlDev, [FCXRange.SQL]);
  qDev.Active := True;
  
  qCanc.SQL.Text := Format(sqlCanc, ['('+FCXRange.SQL+' or '+FCXRange.SQL('CaixaPag')+')']);
  qCanc.Active := True;

  qDesc.SQL.Text := Format(sqlDesc, ['('+FCXRange.SQL+' or '+FCXRange.SQL('CaixaPag')+')']);
  qDesc.Active := True;

  qVC.SQL.Text := Format(sqlVC, [FCXRange.SQL]);
  qVC.Active := True;  

  qPagEsp.Active := False;
  qPagEsp.SQL.Text := Format(sqlPagEsp, [FCXRange.SQL]);
  qPagEsp.Active := True;
  qPagEsp.First;

  TotalTroco := qPagEsp.RecordCount;

  if TotalTroco=0 then TotalTroco := 1;
  
  TotalTroco := 0;
  while not qPagEsp.Eof do begin
    TotalTroco := TotalTroco + qPagEspTotalTroco.Value;
    qPagEsp.Next;
  end;
  qPagEsp.First;

  mtPagEsp.Active := False;
  mtPagEsp.Active := True;
  
  totVendas := 0;
  totDev := 0;
  totSupr := 0;
  totSangria := 0;

  mtMPObs.Active := False;
  mtMPObs.Active := True;

  qPagEsp.First;
  while not qPagEsp.Eof do begin
    if mtPagEsp.FindKey([qPagEspEspecie.Value]) then
      mtPagEsp.Edit else
      mtPagEsp.Append;
    mtPagEspNomeEsp.Value := qPagEspNomeEspecie.Value;
    mtPagEspEspecie.Value := qPagEspEspecie.Value;
    case qPagEspTipoTran.Value of
      trEstVenda, trPagDebito : begin
        mtPagEspVendas.Value := mtPagEspVendas.Value + qPagEspTotalF.Value;
        mtPagEspTroco.Value := mtPagEspTroco.Value + qPagEspTotalTroco.Value;
        mtPagEspNomeEsp.Value := qPagEspNomeEspecie.Value;
        totVendas := totVendas + qPagEspTotalF.Value;
      end;
      trEstDevolucao : begin
        mtPagEspDev.Value := qPagEspTotalValor.Value;
        totDev := totDev + mtPagEspDev.Value;
      end;
      trCaixaEnt : begin
        mtPagEspSupr.Value := qPagEspTotalValor.Value;
        totSupr := totSupr + mtPagEspSupr.Value;
      end;
      trCaixaSai : begin
        mtPagEspSangria.Value := qPagEspTotalValor.Value;
        totSangria := totSangria + mtPagEspSangria.Value;
      end;
    end;
    mtPagEspTotal.Value := mtPagEspVendas.Value + mtPagEspDev.Value + mtPagEspSupr.Value + mtPagEspSangria.Value;
    if mtPagEspTroco.Value>0 then 
      mtPagEspObs.Value := Format(rsInfoTroco, [CurrencyToStr(mtPagEspVendas.Value+mtPagEspTroco.Value), 
                                                CurrencyToStr(mtPagEspTroco.Value)]);
    mtPagEsp.Post; 
    qPagEsp.Next;
  end;

  mtPagEsp.First;
  while not mtPagEsp.Eof do begin
    if mtPagEspTroco.Value>0 then begin
      mtMPObs.Append;
      mtMPObsNomeEsp.Value := mtPagEspNomeEsp.Value;
      mtMPObsEspecie.Value := mtPagEspEspecie.Value;
      mtMPObsTotal.Value := mtPagEspTotal.Value + mtPagEspTroco.Value;
      mtMPObsTroco.Value := mtPagEspTroco.Value;
      mtMPObsAsterisco.Value := Asterisco(mtMPObs.RecordCount+1);
      mtMPObs.Post;

      mtPagEsp.Edit;
      mtPagEspNomeEsp.Value := mtMPObsAsterisco.Value + ' ' + mtPagEspNomeEsp.Value;
      mtPagEsp.Post;
    end;
    
    mtPagEsp.Next;
  end;

  mtMPObs.First;

  if mtPagEsp.RecordCount>1 then begin
    mtPagEsp.Append;
    mtPagEspEspecie.Value := 65535;
    mtPagEspNomeEsp.Value := UpperCase(rsTotal);
    mtPagEspVendas.Value := totVendas;
    mtPagEspDev.Value := totDev;
    mtPagEspSupr.Value := totSupr;
    mtPagEspSangria.Value := totSangria;
    mtPagEspTotal.Value := totVendas + totDev + totSupr + totSangria;
    mtPagEsp.Post;
  end;

  mtPagEsp.First;

  qRFFat.Active := False;
  qRFFat.SQL.Text := Format(sqlRFFat, [FCXRange.SQL]);
  qRFFat.Active := True;
  qRFFat.First;

  qRFPag.Active := False;
  qRFPag.SQL.Text := Format(sqlRFPag, [FCXRange.SQL('CaixaPag')]);
  qRFPag.Active := True;
  qRFPag.First;

  qRFPagPend.Active := False;
  qRFPagPend.SQL.Text := Format(sqlRFPagPend, [FCXRange.SQL('CaixaPag')]);
  qRFPagPend.Active := True;
  qRFPagPend.First;  

  qME.Active := False;
  qME.SQL.Text := Format(sqlME, [FCXRange.SQL]);
  qME.Active := True;

  qDev.First;
  while not qDev.Eof do 
  begin
    case qDevOpDevValor.Value of
      0 : begin
        DRF[irfDevolucaoCred].drfValor := DRF[irfDevolucaoCred].drfValor + qDevTotal.Value;
        DRF[irfDevolucaoCred].drfQtd   := DRF[irfDevolucaoCred].drfQtd + qDevQuant.Value;
      end;

      1 : begin
        DRF[irfDevolucaoDin].drfValor := DRF[irfDevolucaoDin].drfValor + qDevTotal.Value;
        DRF[irfDevolucaoDin].drfQtd   := DRF[irfDevolucaoDin].drfQtd + qDevQuant.Value;
      end;
    end;
    qDev.next;                      
  end;

  while not qRFFat.Eof do begin
    case qRFFatTipo.Value of
      trEstVenda : begin
        drf[irfFaturamento].drfQtd := drf[irfFaturamento].drfQtd + qRFFatQtd.Value;
        drf[irfFaturamento].drfValor := drf[irfFaturamento].drfValor + qRFFatTotLiq.Value;
      end;
      
      trCaixaEnt : begin
        drf[irfDinAdd].drfQtd := qRFFatQtd.Value;
        drf[irfDinAdd].drfValor := qRFFatTotLiq.Value;
      end;
      
      trCaixaSai : begin
        drf[irfDinRem].drfQtd := qRFFatQtd.Value;
        drf[irfDinRem].drfValor := qRFFatTotLiq.Value;
      end;
    end;
    qRFFat.Next;
  end;

  while not qRFPag.Eof do begin
    case qRFPagTipo.Value of
      trEstVenda :
        drf[irfVendasRec].drfValor := drf[irfVendasRec].drfValor + (qRFPagPago.Value - qRFPagTroco.Value - qRFPagCredito.Value);
      
      trPagDebito     : begin
        drf[irfDebPagos].drfQtd := qRFPagQtd.Value;
        drf[irfDebPagos].drfValor := qRFPagPago.Value;
      end;
      
    end;
    drf[irfTrocoCred].drfValor := drf[irfTrocoCred].drfValor + qRFPagCredito.Value;
    drf[irfDebitado].drfValor := drf[irfDebitado].drfValor + qRFPagDebito.Value;
    drf[irfCredUsado].drfValor := drf[irfCredUsado].drfValor + qRFPagCreditoUsado.Value;    
      
    qRFPag.Next;
  end;

  while not qRFPagPend.Eof do begin
    case qRFPagPendTipo.Value of
      trEstVenda:
        drf[irfVendasRecPend].drfValor := drf[irfVendasRecPend].drfValor + (qRFPagPendPago.Value - qRFPagPendTroco.Value - qRFPagPendCredito.Value);
      
      trPagDebito     : begin
        drf[irfDebPagos].drfQtd := qRFPagPendQtd.Value;
        drf[irfDebPagos].drfValor := qRFPagPendPago.Value;
      end;
      
    end;
    drf[irfTrocoCred].drfValor := drf[irfTrocoCred].drfValor + qRFPagPendCredito.Value;
    drf[irfDebitado].drfValor := drf[irfDebitado].drfValor + qRFPagPendDebito.Value;
    drf[irfCredUsado].drfValor := drf[irfCredUsado].drfValor + qRFPagPendCreditoUsado.Value;    
      
    qRFPagPend.Next;
  end;  
  
{  dsEst.Dataset := nil;
  try
    tProd.First;
    while not tProd.Eof do begin
      tME.SetRange([tProdID.Value, CaixaI], [tProdID.Value, CaixaF]);
      if not (tME.Eof and tME.Bof) then begin
        mtEst.Append;
        mtEstID.Value := tProdID.Value;
        mtEstDescricao.Value := tProdDescricao.Value;
        tME.First;
        DataI := 0;
        SaldoI := 0;
        DataF := 0;
        SaldoF := 0;
        while not tME.Eof do begin
          if (DataI=0) or (tMEDataHora.Value<DataI) then  begin
            DataI := tMEDataHora.Value;
            SaldoI := tMEEstoqueAnt.Value;
          end;

          if (DataF=0) or (tMEDataHora.Value>DataF) then  begin
            DataF := tMEDataHora.Value;
            SaldoF := tMESaldoFinal.Value;
          end;
          
        
          case tMETipoTran.Value of
            trEstCompra  : mtEstCompras.Value := mtEstCompras.Value + tMEQuant.Value;
            trEstEntrada : mtEstEntradas.Value := mtEstEntradas.Value + tMEQuant.Value;
            trEstSaida   : mtEstSaidas.Value := mtEstSaidas.Value + tMEQuant.Value;
          else
            if tMEFidResgate.Value then begin
              mtEstFidResg.Value := mtEstFidResg.Value + tMEQuant.Value;
            end else begin
              mtEstVendas.Value := mtEstVendas.Value + tMEQuant.Value;
              mtEstValorVendas.Value := mtEstValorVendas.Value + tMETotal.Value - tMEDesconto.Value;
              CustoU := tMECustoU.Value;
              if (CustoU < 0.00009) then
                CustoU := tProdCustoUnitario.Value;
              mtEstLucro.Value := mtEstLucro.Value + (tMETotal.Value - (CustoU * tMEQuant.Value) - tMEDesconto.Value);
            end;
          end;
          tME.Next;
        end;
        mtEstSaldoInicial.Value := SaldoI;
        mtEstSaldoFinal.Value := SaldoF;
        mtEst.Post;
      end;
      tProd.Next;
    end;
  finally
    dsEst.Dataset := mtEst;
  end; }


  dsEst.Dataset := nil;
  try
    qME.First;
    while not qME.Eof do begin
      if not mtEst.FindKey([qMEProduto.Value]) then begin
        mtEst.Append;
        mtEstID.Value := qMEProduto.Value;
        if tProd.Locate('ID', qMEProduto.Value, []) then
          mtEstDescricao.Value := tProdDescricao.Value else
          mtEstDescricao.Value := '## PRODUTO FOI APAGADO'; 

        if tProd.FindKey([qMEProduto.Value]) and (not tProdNaoControlaEstoque.Value) then begin
          SaldoIF(qMEProduto.Value, SaldoI, SaldoF);
          mtEstSaldoInicial.Value := SaldoI;
          mtEstSaldoFinal.Value := SaldoF;
        end;
      end else
        mtEst.Edit;
        
      case qMETipoTran.Value of
        trEstCompra  : mtEstCompras.Value := mtEstCompras.Value + qMEQuant.Value;
        trEstTransfEnt  : mtEstTransEnt.Value := mtEstTransEnt.Value + qMEQuant.Value;
        trEstDevolucao : mtEstDevolucoes.Value := mtEstDevolucoes.Value + qMEQuant.Value;
        trEstEntrada : mtEstEntradas.Value := mtEstEntradas.Value + qMEQuant.Value;
        trEstSaida   : mtEstSaidas.Value := mtEstSaidas.Value + qMEQuant.Value;
      else
        if qMEFidResgate.Value then begin
          mtEstFidResg.Value := mtEstFidResg.Value + qMEQuant.Value;
        end else begin
          mtEstVendas.Value := mtEstVendas.Value + qMEQuant.Value;
          mtEstValorVendas.Value := mtEstValorVendas.Value + qMETotal.Value - qMEDesconto.Value;
          mtEstLucro.Value := mtEstLucro.Value + (qMETotal.Value - qMECustoT.Value - qMEDesconto.Value);
        end;
      end;
      
      mtEst.Post;
      qME.Next;
    end;
  finally
    dsEst.Dataset := mtEst;
  end;  

  PagDet := 0;
  PagReg := 0;
  ValorI := 0;

  mtTot.Open;
  mtTot.EmptyTable;

  drf[irfTotalRec].drfValor := drf[irfVendasRec].drfValor +
                               drf[irfVendasRecPend].drfValor +
                               drf[irfDebPagos].drfValor +
                               drf[irfTrocoCred].drfValor;

  drf[irfTotalRec2].drfValor := drf[irfTotalRec].drfValor;  
  drf[irfValorDev].drfValor := drf[irfDevolucaoDin].drfValor;

  if (Num>0) then
    drf[irfSaldoFinal].drfValor := drf[irfTotalRec].drfValor -
                                   drf[irfDevolucaoDin].drfValor +
                                   tCaixaSaldoAnt.Value +                             
                                   drf[irfDinAdd].drfValor -
                                   drf[irfDinRem].drfValor;
                               
  AddItemRF(irfFaturamento, SncDMCaixa_Faturamento, drf[irfFaturamento].drfValor);
  AddItemRF(irfDevolucaoDin, SncDMCaixa_DevolucaoDin, drf[irfDevolucaoDin].drfValor, False);
  AddItemRF(irfDevolucaoCred, SncDMCaixa_DevolucaoCred, drf[irfDevolucaoCred].drfValor, False);
  
  AddItemRF(99, '', 0);
  AddItemRF(irfDebitado, SncDMCaixa_Debitado, drf[irfDebitado].drfValor, False);
  AddItemRF(irfCredUsado, SncDMCaixa_CredUsado, drf[irfCredUsado].drfValor, False);
  AddItemRF(irfDescontos, SncDMCaixa_Descontos, qDescTotal.Value, False);
  AddItemRF(irfCancelamentos, SncDMCaixa_Cancelamentos, qCancTotal.Value, False);
  AddItemRF(99, '', 0);
  AddItemRF(99, SncDMCaixa_ValoresRecebidos, 0);
  AddItemRF(irfVendasRec, SncDMCaixa_Vendas, drf[irfVendasRec].drfValor);
  AddItemRF(irfVendasRecPend, SncDMCaixa_VendasRecPend, drf[irfVendasRecPend].drfValor, false);
  AddItemRF(irfDebPagos, SncDMCaixa_DebPagos, drf[irfDebPagos].drfValor, False);
  AddItemRF(irfTrocoCred, SncDMCaixa_TrocoCreditado, drf[irfTrocoCred].drfValor, false);
  AddItemRF(irfTotalRec, SncDMCaixa_TotalRec, drf[irfTotalRec].drfValor);
  AddItemRF(99, '', 0);
  if (Num>0) then AddItemRF(99, SncDMCaixa_SaldoCaixa, 0);
  if (Num>0) then AddItemRF(irfSaldoInicial, SncDMCaixa_SaldoInicial, tCaixaSaldoAnt.Value);
  if (Num>0) then AddItemRF(irfTotalRec2, SncDMCaixa_ValoresRecebidos, drf[irfTotalRec2].drfValor);
  AddItemRF(irfValorDev, SncDMCaixa_ValoresDevolvidos, drf[irfValorDev].drfValor, False);
  
  
  AddItemRF(irfDinAdd, '+ '+SncDMCaixa_DinheiroAdicionado, drf[irfDinAdd].drfValor, false);
  AddItemRF(irfDinRem, '- '+SncDMCaixa_DinheiroRetirado, drf[irfDinRem].drfValor, false);

  if (Num>0) then 
  begin
    AddItemRF(irfSaldoFinal, SncDMCaixa_SaldoFinal, drf[irfSaldoFinal].drfValor);
    if (not tCaixaAberto.Value) and gConfig.PedirSaldoF then begin
      AddItemRF(irfSaldoInformado, SncDMCaixa_SaldoInformado, tCaixaSaldoF.Value);
      AddItemRF(irfQuebraCaixa, SncDMCaixa_QuebraDeCaixa, tCaixaQuebra.Value, False);
    end;  
  end;
  
  Result := drf[irfSaldoFinal].drfValor;
end;

procedure TdmCaixa.qPagEspCalcFields(DataSet: TDataSet);
begin
  qPagEspTotalF.Value := qPagEspTotalValor.Value - qPagEspTotalTroco.Value;
end;

procedure TdmCaixa.qRepTranCalcFields(DataSet: TDataSet);

function NaoSim(B: Boolean): String;
begin
  if B then
    Result := rsSim else
    Result := rsNao;
end;

begin
  qRepTranNomeTipo.Value := TipoTranToStr(qRepTranTipo.Value);
  qRepTranCancFid.Value := NaoSim(qRepTranCancelado.Value) + ' / ' + NaoSim(qRepTranFidResgate.Value);
end;

procedure TdmCaixa.qVCCalcFields(DataSet: TDataSet);
begin
  qVCTotFinal.Value := qVCTotal.Value - qVCDesconto.Value;
end;

function TdmCaixa.repCaixa: TfrxReport;
begin
  if LinguaPT then
    Result := repCaixa_pt
  else
  if SameText(SLingua, 'es') then
    Result := repCaixa_es
  else
    Result := repCaixa_en;
end;

procedure TdmCaixa.repCaixa_ptBeforePrint(Sender: TfrxReportComponent);
begin
  if SameText(Sender.Name, 'srTran') then // do not localize
    Sender.Visible := FImpTran;

  if SameText(Sender.Name, 'srMovEstoque') then // do not localize
    Sender.Visible := gConfig.cce(cceMovEstoque);

  if SameText(Sender.Name, 'srEstoqueAbaixoMin') then // do not localize
    Sender.Visible := gConfig.cce(cceEstoqueAbaixoMin); 

  if SameText(Sender.Name, 'Footer2') then // do not localize
    Sender.Visible := (Trim(tCaixaObs.Value)>'');
end;

procedure TdmCaixa.SaldoIF(aProduto: Cardinal; var aSaldoI, aSaldoF: Extended);
begin
  tAuxME.Active := True;
  tAuxME.SetRange([aProduto, FCXRange.DataI], [aProduto, FCXRange.DataF]);
  tAuxME.Filter := FCXRange.SQL;
  tAuxME.Filtered := True;
  if tAuxME.IsEmpty then begin
    aSaldoI := 0;
    aSaldoF := 0;
    Exit;
  end;
  tAuxME.First;
  aSaldoI := tAuxMEEstoqueAnt.Value;
  tAuxME.Last;
  aSaldoF := tAuxMESaldoFinal.Value;
end;

procedure TdmCaixa.tCaixaCalcFields(DataSet: TDataSet);
begin
  tCaixaNomeLoja.Value := gConfig.EmailIdent;
end;

function TdmCaixa.TemVendaHomo: Boolean;
begin
  Result := False;
  tAuxTran.Open;
  tAuxTran.IndexName := 'ITipoNFECanceladoAmbStatusNFE';
  Result := tAuxTran.FindKey([tiponfe_nfce, False, 2]) or
            tAuxTran.FindKey([tiponfe_nfe, False, 2]);
end;

procedure TdmCaixa.tAuxMECalcFields(DataSet: TDataSet);
begin
  if tAuxMENaoControlaEstoque.Value then
    tAuxMESaldoFinal.Value := 0 else
  if tAuxMECancelado.Value then
    tAuxMESaldoFinal.Value := tAuxMEEstoqueAnt.Value
  else
  if tAuxMEEntrada.Value then
    tAuxMESaldoFinal.Value := tAuxMEEstoqueAnt.Value + tAuxMEQuant.Value else
    tAuxMESaldoFinal.Value := tAuxMEEstoqueAnt.Value - tAuxMEQuant.Value; 
end;


initialization
  dmCaixa := nil;

end.


