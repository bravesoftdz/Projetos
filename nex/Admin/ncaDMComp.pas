unit ncaDMComp;
{
    ResourceString: Dario 10/03/13
    João: TODO List!
}

interface

uses
  SysUtils, Graphics, Classes, Dialogs, frxClass, DB, nxdb, frxDBSet, ExtCtrls, frxExportTXT,
   uNexTransResourceStrings_PT, OoMisc, AdPort, frxDCtrl, frxCross, frxChBox,
  frxBarcode, frxRich, frxDesgn, frxExportMail, ncMovEst,
  kbmMemTable, frxExportPDF, frxExportRTF, frxDMPExport, frxDMPClass;

type
  TdmComp = class(TDataModule)
    dbTran: TfrxDBDataset;
    dbITran: TfrxDBDataset;
    dsItran: TDataSource;
    dsTran: TDataSource;
    tTran: TnxTable;
    tITran: TnxTable;
    tTranNomeTipo: TStringField;
    tAuxTran: TnxTable;
    tITranNomeTipoItem: TStringField;
    tITranPgAnt: TCurrencyField;
    tITranDescrItem: TStringField;
    tITranDescrPg: TStringField;
    tITranValorOriginal: TCurrencyField;
    tMovEst: TnxTable;
    tITranDescAnt: TCurrencyField;
    tITranDataOrig: TDateTimeField;
    tAuxITran: TnxTable;
    tPro: TnxTable;
    tProEstoqueFinal: TFloatField;
    dbConfig: TfrxDBDataset;
    repWin: TfrxReport;
    ApdComPort1: TApdComPort;
    repWinB: TfrxReport;
    tITranQuant: TStringField;
    tITranQuantUnid: TStringField;
    repCust: TfrxReport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    Designer: TfrxDesigner;
    frxRichObject1: TfrxRichObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxDialogControls1: TfrxDialogControls;
    tITranUnitario: TCurrencyField;
    dbProduto: TfrxDBDataset;
    tCliente: TnxTable;
    dbCliente: TfrxDBDataset;
    tPagEsp: TnxTable;
    tPagEspNomeEspecie: TStringField;
    mtPag: TkbmMemTable;
    mtPagValor: TCurrencyField;
    mtPagDescr: TStringField;
    dbTotPag: TfrxDBDataset;
    mtPagDescrCor: TIntegerField;
    mtPagDescrBold: TBooleanField;
    mtPagValorCor: TIntegerField;
    mtPagValorBold: TBooleanField;
    repSerial: TfrxReport;
    dmExp: TfrxDotMatrixExport;
    tITranUnitarioStr: TStringField;
    tITranTotalStr: TStringField;
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
    tPagEspID: TUnsignedAutoIncField;
    tPagEspCaixa: TLongWordField;
    tPagEspDataHora: TDateTimeField;
    tPagEspTran: TLongWordField;
    tPagEspEspecie: TWordField;
    tPagEspTipo: TByteField;
    tPagEspValor: TCurrencyField;
    tPagEspTroco: TCurrencyField;
    tPagEspDoc: TStringField;
    tPagEspCancelado: TBooleanField;
    tPagEspRecVer: TLongWordField;
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
    tAuxTranID: TUnsignedAutoIncField;
    tAuxTranUID: TGuidField;
    tAuxTranDataHora: TDateTimeField;
    tAuxTranCliente: TLongWordField;
    tAuxTranTipo: TByteField;
    tAuxTranFunc: TStringField;
    tAuxTranTotal: TCurrencyField;
    tAuxTranDesconto: TCurrencyField;
    tAuxTranDescPerc: TFloatField;
    tAuxTranDescPorPerc: TBooleanField;
    tAuxTranTotLiq: TCurrencyField;
    tAuxTranPagEsp: TWordField;
    tAuxTranPago: TCurrencyField;
    tAuxTranDebitoAnt: TCurrencyField;
    tAuxTranDebito: TCurrencyField;
    tAuxTranDebitoPago: TCurrencyField;
    tAuxTranCreditoAnt: TCurrencyField;
    tAuxTranCredito: TCurrencyField;
    tAuxTranCreditoUsado: TCurrencyField;
    tAuxTranTroco: TCurrencyField;
    tAuxTranObs: TnxMemoField;
    tAuxTranCancelado: TBooleanField;
    tAuxTranCanceladoPor: TStringField;
    tAuxTranCanceladoEm: TDateTimeField;
    tAuxTranCaixa: TLongWordField;
    tAuxTranCaixaPag: TLongWordField;
    tAuxTranMaq: TWordField;
    tAuxTranSessao: TLongWordField;
    tAuxTranQtdTempo: TFloatField;
    tAuxTranCredValor: TBooleanField;
    tAuxTranFidResgate: TBooleanField;
    tAuxTranPagFunc: TStringField;
    tAuxTranPagPend: TBooleanField;
    tProID: TUnsignedAutoIncField;
    tProPreco: TCurrencyField;
    tProPrecoAuto: TBooleanField;
    tProMargem: TFloatField;
    tProImagem: TGraphicField;
    tProFornecedor: TLongWordField;
    tProEstoqueAtual: TFloatField;
    tProCustoUnitario: TCurrencyField;
    tProPodeAlterarPreco: TBooleanField;
    tProPermiteVendaFracionada: TBooleanField;
    tProNaoControlaEstoque: TBooleanField;
    tProEstoqueMin: TFloatField;
    tProEstoqueMax: TFloatField;
    tProAbaixoMin: TBooleanField;
    tProAbaixoMinDesde: TDateTimeField;
    tProEstoqueRepor: TFloatField;
    tProComissaoPerc: TFloatField;
    tProComissaoLucro: TBooleanField;
    tProAtivo: TBooleanField;
    tProIncluidoEm: TDateTimeField;
    tAuxITranID: TUnsignedAutoIncField;
    tAuxITranTran: TLongWordField;
    tAuxITranCaixa: TLongWordField;
    tAuxITranCaixaPag: TLongWordField;
    tAuxITranCliente: TLongWordField;
    tAuxITranSessao: TLongWordField;
    tAuxITranDataHora: TDateTimeField;
    tAuxITranTipoTran: TByteField;
    tAuxITranTipoItem: TByteField;
    tAuxITranSubTipo: TByteField;
    tAuxITranItemID: TLongWordField;
    tAuxITranSubItemID: TLongWordField;
    tAuxITranItemPos: TByteField;
    tAuxITranTotal: TCurrencyField;
    tAuxITranDesconto: TCurrencyField;
    tAuxITranTotLiq: TCurrencyField;
    tAuxITranDebito: TCurrencyField;
    tAuxITranPago: TCurrencyField;
    tAuxITranCancelado: TBooleanField;
    tAuxITranPagPend: TBooleanField;
    tProNomeFornecedor: TStringField;
    repDebWin: TfrxReport;
    repDebWinB: TfrxReport;
    repDebSerial: TfrxReport;
    tMovEstID_ref: TLongWordField;
    tMovEstRecVer: TLongWordField;
    tTranUID_ref: TGuidField;
    tTranOpDevValor: TByteField;
    tAuxTranUID_ref: TGuidField;
    tAuxTranOpDevValor: TByteField;
    tTranIncluidoEm: TDateTimeField;
    tProEstoquePend: TFloatField;
    tProEstoqueTot: TFloatField;
    tAuxITranIncluidoEm: TDateTimeField;
    tAuxTranIncluidoEm: TDateTimeField;
    tProNCM: TStringField;
    tMETax: TnxTable;
    tMETaxmovest: TLongWordField;
    tMETaxtax_id: TLongWordField;
    tMETaxnome: TWideStringField;
    tMETaxincluido: TBooleanField;
    tMETaxperc: TFloatField;
    tMETaxvalor: TCurrencyField;
    tTranStatusNFE: TByteField;
    tTranChaveNFE: TStringField;
    tTranTipoNFE: TByteField;
    tTranAmbNFe: TByteField;
    tTranStatusCanc: TByteField;
    tTranExtra: TnxMemoField;
    tTrantax_incluido: TCurrencyField;
    tTrantax_incluir: TCurrencyField;
    tTranTotalFinal: TCurrencyField;
    tAuxITranFidFator: TShortintField;
    tAuxITranFidPontos: TFloatField;
    tAuxITranFidMov: TBooleanField;
    tAuxITranFidOpe: TByteField;
    tAuxITranRecVer: TLongWordField;
    tMovEsttax_id: TLongWordField;
    tMovEsttax_incluido: TCurrencyField;
    tMovEsttax_incluir: TCurrencyField;
    tMovEstDescr: TWideStringField;
    tMovEstTotalFinal: TCurrencyField;
    tMovEstPend: TBooleanField;
    tMovEstIncluidoEm: TDateTimeField;
    tAuxTranStatusNFE: TByteField;
    tAuxTranChaveNFE: TStringField;
    tAuxTranTipoNFE: TByteField;
    tAuxTranAmbNFe: TByteField;
    tAuxTranStatusCanc: TByteField;
    tAuxTranExtra: TnxMemoField;
    tAuxTrantax_incluido: TCurrencyField;
    tAuxTrantax_incluir: TCurrencyField;
    tAuxTranTotalFinal: TCurrencyField;
    tTranDescricao: TWideMemoField;
    tAuxTranDescricao: TWideMemoField;
    tTranids_pagto: TStringField;
    tTranVendedor: TStringField;
    tTranComissao: TCurrencyField;
    tTranNomeVendedor: TStringField;
    tTranNomeFunc: TStringField;
    tTranNomeFuncOrig: TStringField;
    tTranNomeCliente: TWideStringField;
    tClienteID: TUnsignedAutoIncField;
    tClienteCodigo: TStringField;
    tClienteCodigoKey: TStringField;
    tClienteNome: TWideStringField;
    tClienteEndereco: TWideStringField;
    tClienteEndereco2: TWideStringField;
    tClienteEnd_Numero: TWideStringField;
    tClienteEnd_CodMun: TWideStringField;
    tClienteEnd_Dest: TWideStringField;
    tClienteEnd_Obs: TWideStringField;
    tClienteendereco_id: TGuidField;
    tClientePais: TWideStringField;
    tClienteBairro: TWideStringField;
    tClienteCidade: TWideStringField;
    tClienteUF: TWideStringField;
    tClienteCEP: TWideStringField;
    tClienteNFE_CredIcms: TBooleanField;
    tClienteSexo: TStringField;
    tClienteObs: TWideMemoField;
    tClienteCpf: TWideStringField;
    tClienteRg: TWideStringField;
    tClienteTelefone: TWideStringField;
    tClienteEmail: TWideMemoField;
    tClientePassaportes: TFloatField;
    tClientePai: TWideStringField;
    tClienteMae: TWideStringField;
    tClienteUltVisita: TDateTimeField;
    tClienteDebito: TCurrencyField;
    tClienteDataNasc: TDateTimeField;
    tClienteCelular: TWideStringField;
    tClienteTemDebito: TBooleanField;
    tClienteLimiteDebito: TCurrencyField;
    tClienteFoto: TGraphicField;
    tClienteIncluidoEm: TDateTimeField;
    tClienteAlteradoEm: TDateTimeField;
    tClienteIncluidoPor: TStringField;
    tClienteAlteradoPor: TStringField;
    tClienteFidPontos: TFloatField;
    tClienteFidTotal: TFloatField;
    tClienteFidResg: TFloatField;
    tClienteAniversario: TStringField;
    tClienteSemFidelidade: TBooleanField;
    tClienteTemCredito: TBooleanField;
    tClientePJuridica: TBooleanField;
    tClienteInativo: TBooleanField;
    tClienteFornecedor: TBooleanField;
    tClienteValorCred: TCurrencyField;
    tClienteRecVer: TLongWordField;
    tAuxTranids_pagto: TStringField;
    tAuxTranNomeCliente: TWideStringField;
    tAuxTranVendedor: TStringField;
    tAuxTranComissao: TCurrencyField;
    mtEntrega: TkbmMemTable;
    tEnd: TnxTable;
    tEndendereco_id: TGuidField;
    tEndcliente_id: TLongWordField;
    tEndpos: TByteField;
    tEndnumseq: TUnsignedAutoIncField;
    tEndend_dest: TWideStringField;
    tEndendereco: TWideStringField;
    tEndendereco2: TWideStringField;
    tEndend_numero: TWideStringField;
    tEndcidade: TWideStringField;
    tEndcep: TWideStringField;
    tEndbairro: TWideStringField;
    tEndend_codmun: TWideStringField;
    tEnduf: TWideStringField;
    tEndend_obs: TWideStringField;
    tEnddef_cad: TBooleanField;
    tEnddef_ent: TBooleanField;
    tEnddef_cob: TBooleanField;
    tEndpais: TWideStringField;
    tTranEntregar: TBooleanField;
    tTranVenDev: TBooleanField;
    tTranendereco_entrega: TGuidField;
    tTrantranest: TBooleanField;
    tTrantrancx: TBooleanField;
    dbEntrega: TfrxDBDataset;
    mtEntregaendereco_id: TGuidField;
    mtEntregacliente_id: TLongWordField;
    mtEntregapos: TByteField;
    mtEntreganumseq: TUnsignedAutoIncField;
    mtEntregaend_dest: TWideStringField;
    mtEntregaendereco: TWideStringField;
    mtEntregaendereco2: TWideStringField;
    mtEntregaend_numero: TWideStringField;
    mtEntregacidade: TWideStringField;
    mtEntregacep: TWideStringField;
    mtEntregabairro: TWideStringField;
    mtEntregaend_codmun: TWideStringField;
    mtEntregauf: TWideStringField;
    mtEntregaend_obs: TWideStringField;
    mtEntregadef_cad: TBooleanField;
    mtEntregadef_ent: TBooleanField;
    mtEntregadef_cob: TBooleanField;
    mtEntregapais: TWideStringField;
    mtEntregaendereco_completo: TMemoField;
    tClienteEndNumComp: TStringField;
    tTranHora: TByteField;
    tTranFrete: TCurrencyField;
    tTranTranspEnt: TLongWordField;
    tTranRecVer: TLongWordField;
    tProUID: TGuidField;
    tProMarca: TGuidField;
    tProCodigo: TWideStringField;
    tProDescricao: TWideStringField;
    tProUnid: TWideStringField;
    tProObs: TWideMemoField;
    tProCategoria: TWideStringField;
    tProbrtrib: TWordField;
    tProPesoBruto: TFloatField;
    tProPesoLiq: TFloatField;
    tProFidelidade: TBooleanField;
    tProFidPontos: TIntegerField;
    tProNCM_Ex: TStringField;
    tProcest: TLongWordField;
    tPromodST: TByteField;
    tProMVA: TnxMemoField;
    tProPauta: TnxMemoField;
    tProNomeMarca: TWideStringField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure tTranCalcFields(DataSet: TDataSet);
    procedure tITranCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure repCustBeforePrint(Sender: TfrxReportComponent);
    procedure tClienteCalcFields(DataSet: TDataSet);
  private
    prnIniValues : TStringList;
    prnIniFileName : string;
    FTaxDescr : TncTaxDescr;
    

    function GeraReciboTXT(aLargura: Integer): String;

    procedure LoadCustomPrepare(R: TfrxReport);
    
    procedure LoadPrnIni(prnName:string);
    procedure readPrnIni(prnName:string);
    procedure savePrnIni(prnName:string);
    function  ValueToPrnIni(s:string):string;
    function  PrnIniToValue(s:string):string;
    procedure loadDefValues;
    procedure ImprimeWindows(R: TfrxReport; aVisualiza: Boolean = False);
    procedure ImprimeSerial(R: TfrxReport; aVisualiza: Boolean = False);
    procedure PreparaImpressaoTran;
    //procedure ImprimeMatricial(aTran: Integer; aVisualiza: Boolean = False);
    { Private declarations }
    procedure AddDatasets(aReport: TfrxReport);

    function tipodoc: Byte;

  public
    procedure Imprime(aID: TGUID; aVisualiza: Boolean = False);
    
    procedure RunReport(aID: TGUID; aVisualiza: Boolean = False);

    function ImportRep(aArq: String; aTipo: Byte; aNome: String; var aNovo: Boolean): String;

    function CreateReport(aArq: String): TfrxReport;

    procedure Customize(aDebito, aWindows, aBobina: Boolean);
    procedure AbreGaveta;
    procedure Personalizar(aArq: String; aTipoDoc: Byte; aBobina, aSomenteTexto: Boolean);
    function ObtemParams(aArq: String): String;
    
    procedure ImportarModelos;
    { Public declarations }
  end;

  function ParamsUsedByRep(R : TfrxReport): String;

  function Destraduz(aRep: String): String;

  procedure CriaDMComp;

var
  dmComp: TdmComp = nil;

implementation

uses ncClassesBase, ncaDM, ncDebug, inifiles, ncaConfigRecibo, ncPrintFile,
  ncGuidUtils, ncaFrmRecursoPRO, ncaFrmPri, Forms, Printers, WinSpool,
  ncEndereco;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30

resourcestring

  rsRecursoPro = 'A impressão de comprovantes em impressoras de BOBINA é um recurso exclusivo para assinantes do plano PRO.';

  rsInicioSessao  = 'INICIO DE SESSÃO';
  rsFimSessao     = 'RECIBO DE USO DE COMPUTADOR';
  rsAddCredito    = 'ADICIONAR CRÉDITO';
  rsRemCredito    = 'REMOVER CRÉDITO';
  rsEstVenda      = 'VENDA DE PRODUTOS';
  rsEstCompra     = 'COMPRA';
  rsEstEntrada    = 'ENTRADA DE ESTOQUE';
  rsEstDevolucao  = 'DEVOLUÇÃO';
  rsEstSaida      = 'SAIDA DE ESTOQUE';
  rsPagDebito     = 'PAGAMENTO DE DEBITOS';
  rsCaixaEnt      = 'SUPRIMENTO DE CAIXA';
  rsCaixaSai      = 'SANGRIA DE CAIXA'; 
  rsImpressao     = 'IMPRESSÃO'; 
  rsTransfMaq     = 'TRANSFERÊNCIA DE MÁQUINA'; 
  rsZerarEstoque  = 'ZERAR ESTOQUE';


function strTotalPagar: String;
begin
  if LinguaPT then
    Result := 'Total a Pagar' else
    Result := 'Total';
end;

function strTotProdutos: String;
begin
  if LinguaPT then
    Result := 'Total Produtos' else
    Result := 'Items Total';
end;


function strTotalDevolvido: String;
begin
  if LinguaPT then
    Result := 'Total devolvido' else
    Result := 'Total refunded';
end;

function strDevolucaoCred: String;
begin
  if LinguaPT then
    Result := 'Creditado em conta' else
    Result := 'Credited on account';
end;

function strTroco: String;
begin
  if LinguaPT then
    Result := 'Troco' else
    Result := 'Change';
end;

function strTotalPago: String;
begin
  if LinguaPT then
    Result := 'Total Pago' else
    Result := 'Total paid';
end;

function strCreditado: String;
begin
  if LinguaPT then
    Result := 'Creditado' else
    Result := 'Credited';
end;

function strCreditoUsado: String;
begin
  if LinguaPT then
    Result := 'Créditos' else
    Result := 'Credits';
end;

function strDebitado: String;
begin
  if LinguaPT then
    Result := 'Valor Debitado' else
    Result := 'Amount Debted';
end;

function strSubTotal: String;
begin
  if LinguaPT then
    Result := 'Sub-Total' else
    Result := 'Subtotal';
end;

function strDesconto: String;
begin
  if LinguaPT then
    Result := 'Desconto' else
    Result := 'Discount';
end;
  
procedure TrocaTudo(var s: String; a, b: String);
var 
  p, l : integer;
  us, ua : String;
begin
  if SameText(a, b) then Exit;
  us := UpperCase(s);
  ua := UpperCase(a);
  repeat
    p := Pos(ua, us);
    if p>0 then begin
      delete(s, p, length(a));
      s := copy(s, 1, (p-1)) + b + copy(s, p, high(integer)); 
      us := UpperCase(s);
    end;
  until (P=0);
end;

function Destraduz(aRep: String): String;  
const
  aspas = '&#34;';
var
  sPT, sEN : String;
  sl         : TStrings;

procedure TraduzDb(dbPT, dbEN: String);  
var  i, p : Integer;
begin    
  sl := tStringList.Create;
  try
    sl.LoadFromFile(ExtractFilePath(ParamStr(0))+dbPT+'.txt');
    for I := 0 to sl.Count-1 do begin
      sPT := sl.Names[I];
      sEN := sl.ValueFromIndex[I];
      if not Sametext(sPT, sEN) then begin
        sPT := dbPT+'.'+aspas+sPT+aspas;
        sEN := dbEN+'.'+aspas+sEN+aspas;
        TrocaTudo(Result, sEN, sPT);
      end;
    end;
  finally
    sl.Free;
  end;
end;

begin
  Result := aRep;
  TraduzDb('dbProduto', 'dbProduct');
  TraduzDb('dbCliente', 'dbCustomer');
  TraduzDb('dbTran', 'dbTran');
  TraduzDb('dbITran', 'dbITran');
  TraduzDb('dbConfig', 'dbConfig');
  TraduzDb('dbTotPag', 'dbTotPag');
end;


procedure PrintAnsiString(const sPrinter: string; const sStr: AnsiString; aDataType: String = 'TEXT');
const
  iBufferSize = 32768;
var
  Count, BytesWritten: Cardinal;
  hPrinter, hDeviceMode: THandle;
  sDevice : array[0..255] of char;
  sDriver : array[0..255] of char;
  sPort   : array[0..255] of char;
  pBuf    : array of byte;
  I       : Integer;
  DocInfo: TDocInfo1;
  f: File;
begin
  Printer.PrinterIndex := Printer.Printers.IndexOf(sPrinter);
  Printer.GetPrinter(sDevice, sDriver, sPort, hDeviceMode);

  if not WinSpool.OpenPrinter(@sDevice, hPrinter, nil) then begin
     exit;
  end;   

  DocInfo.pDocName := PChar('NEX');
  DocInfo.pDatatype := PChar(aDataType);
  DocInfo.pOutputFile := nil;

  if StartDocPrinter(hPrinter, 1, @DocInfo) = 0 then
  begin
    if SameText(aDataType, 'TEXT') then
      aDataType := 'RAW' else
      aDataType := 'TEXT';
    DocInfo.pDatatype := PChar(aDataType);
    if StartDocPrinter(hPrinter, 1, @DocInfo) = 0 then begin
      WinSpool.ClosePrinter(hPrinter);
      exit;
    end else
  end;

  if not StartPagePrinter(hPrinter) then
  begin
    EndDocPrinter(hPrinter);
    WinSpool.ClosePrinter(hPrinter);
    exit;
  end;

  try
    setlength(pbuf, Length(sStr));
  
    for I := 1 to Length(sStr) do 
      pBuf[I-1] := Byte(sStr[I]);
    if not WritePrinter(hPrinter, Pointer(pBuf), Length(sStr), BytesWritten) then
    begin
      EndPagePrinter(hPrinter);
      EndDocPrinter(hPrinter);
      WinSpool.ClosePrinter(hPrinter);
      exit;
    end;
    EndDocPrinter(hPrinter);
    WinSpool.ClosePrinter(hPrinter);
  finally
  end;
end;
  
procedure CriaDMComp;
begin
  if not Assigned(dmComp) then 
    Application.CreateForm(TdmComp, dmComp);
end;
  
function FolderBaseComp: String;
begin
  Result := ExtractFilePath(ParamStr(0))+'custom\';
end;

Const
    S_ReciboTxt = 'recibo.txt';  // do not localize
    S_prnIni    = 'NexPrn.ini';  // do not localize
    SPrnCmd_SetCodePage                 = #27+#116; // +n       // do not localize
    SPrnCmd_AtivaModoNormal             = #27+'H';              // do not localize
    SPrnCmd_AtivaModoCondensado         = #27+#15;              // do not localize
    SPrnCmd_DesativaModoCondensado      = #27+#18;              // do not localize
    SPrnCmd_AtivaModoExpandido          = #27+'W';  // +n       // do not localize
    SPrnCmd_DesativaModoExpandido       = #27+'W';  // +n       // do not localize
    SPrnCmd_AtivaItalico                = #27+#4;               // do not localize
    SPrnCmd_DesativaItalico             = #27+#5;               // do not localize
    SPrnCmd_AtivaRealce                 = #27+'E';              // do not localize
    SPrnCmd_DesativaRealce              = #27+'F';              // do not localize
    SPrnCmd_AcionarCortePapel           = #27+'w';              // do not localize

    S_SetCodePage                 = 'SetCodePage';              // do not localize
    S_AtivaModoNormal             = 'AtivaModoNormal';          // do not localize
    S_AtivaModoCondensado         = 'AtivaModoCondensado';      // do not localize
    S_DesativaModoCondensado      = 'DesativaModoCondensado';   // do not localize
    S_AtivaModoExpandido          = 'AtivaModoExpandido';       // do not localize
    S_DesativaModoExpandido       = 'DesativaModoExpandido';    // do not localize
    S_AtivaItalico                = 'AtivaItalico';             // do not localize
    S_DesativaItalico             = 'DesativaItalico';          // do not localize
    S_AtivaRealce                 = 'AtivaRealce';              // do not localize
    S_DesativaRealce              = 'DesativaRealce';           // do not localize
    S_AcionarCortePapel           = 'AcionarCortePapel';        // do not localize


resourcestring
  rsErroProdutoNaoExiste = '## Erro: produto não existe';    

{$R *.dfm}

function ParamsUsedByRep(R : TfrxReport): String;
var 
  i, j : integer;
  sl : TStrings;                           
  S : String;
  O : TObject;

procedure addparam(aParam: String);
begin
  if sl.IndexOf(aParam)<0 then sl.Add(aParam);
end;

function IsMemoView: Boolean;
begin
  if O is TfrxMemoView then begin
    S := TfrxMemoView(O).Memo.Text;
    Result := True;
  end else
  if O is TfrxDMPMemoView then begin
    S := TfrxDMPMemoView(O).Memo.Text;
    Result := True;
  end else
    Result := False;
end;

begin
  Result := '';
  sl := TStringList.Create;
  try
    for i := 0 to R.AllObjects.Count-1 do begin
      O := TObject(R.AllObjects[i]);
      if IsMemoView then begin
        for j := Low(DocParams) to High(DocParams) do begin 
          if Pos('dbConfig."'+DocParams[j]+'"', S)>0 then 
            AddParam(DocParams[j])
          else
          if Pos('dbTotPag.', S) > 0 then begin
            AddParam('RecPrefixoMeioPagto');
            AddParam('RecImprimeMeioPagto');
          end;
        end;    
      end else
      if O is TfrxPictureView then with TfrxPictureView(O) do 
      if (Dataset <> nil) and SameText(Dataset.Name, 'dbConfig') then
      if SameText(DataField, 'DocParam_Logo') then 
        AddParam('DocParam_Logo') 
      else
      if SameText(DataField, 'DocParam_Logo2') then
        AddParam('DocParam_Logo2');
    end;
    Result := sl.Text;
  finally
    sl.Free;
  end;    
end;

procedure TdmComp.DataModuleDestroy(Sender: TObject);
begin
  prnIniValues.Free;
  FTaxDescr.Free;
end;

function TdmComp.GeraReciboTXT(aLargura: Integer): String;

function Pad(S: String; L: Integer): String;
begin
  Result := S;
  while length(Result) < L do Result := Result + ' ';
end;

function PadCopy(S: String; aMax, aGap: Integer): String;
begin
  Result := Pad(Copy(S, 1, aMax-aGap), aMax);
end;

function EsqDir(aDir, aEsq: String): String;
begin
  Result := PadCopy(aDir, aLargura - Length(aEsq), 2) + aEsq;;
end;

function CharStr(C: Char; L: Integer): String;
begin
  Result := C;
  while Length(Result)<L do Result := Result + C;
end;

function LinhaSimples: String;
begin
  Result := CharStr('-', aLargura);
end;

function LinhaDupla: String;
begin
  Result := CharStr('=', aLargura);
end;

procedure AddLine(S: String);
begin
  while S>'' do begin
    result := Result + Copy(S, 1, aLargura) + sLineBreak;
    Delete(S, 1, aLargura);
  end;
end;

begin
  Result := '';
  AddLine(EsqDir(gConfig.RecNomeLoja, tTranDataHora.AsString));
  AddLine('');
  AddLine('Cliente: ');
end;

procedure TdmComp.AbreGaveta;
var S: AnsiString;
begin
  S := gRecibo.StrAbreGaveta;
  DebugMsg('TdmComp.AbreGaveta '+S);
  if S>'' then 
    PrintAnsiString(gRecibo.Values['imp_gaveta'], S, 'TEXT');
end;

procedure TdmComp.AddDatasets(aReport: TfrxReport);

procedure AddDS(aDB: TfrxDBDataset);
begin
   if aReport.DataSets.Find(aDB)=nil then
     aReport.DataSets.Add(aDB);
end;

begin
  AddDS(dbTran);
  AddDS(dbITran);
  AddDS(dbProduto);
  AddDS(dbCliente);
  AddDS(dbCOnfig);
  AddDS(dbTotPag);
  AddDS(dbEntrega);
end;

function TdmComp.CreateReport(aArq: String): TfrxReport;
begin
  Result := TfrxReport.Create(Self);
  try
    PreparaImpressaoTran;
    AddDatasets(Result);
    Result.LoadFromFile(aArq);
    Result.PrepareReport(True);
  except
    Result.Free;
    raise;
  end;
end;

procedure TdmComp.Customize(aDebito, aWindows, aBobina: Boolean);
var 
  R, newR: TfrxReport; S: String;
begin
  if aDebito then begin
    if aWindows then begin
      if aBobina then 
        R := repDebWinB else
        R := repDebWin;
    end else
      R := repDebSerial;
  end else begin
    if aWindows then begin
      if aBobina then 
        R := repWinB else
        R := repWin;
    end else
      R := repSerial;
  end;    

  CreateDir(FolderBaseComp);

  S := FolderBaseComp+R.Name+'.fr3';
  if not FileExists(S) then 
    R.SaveToFile(S);

  newR := TfrxReport.Create(nil);
  try  
    AddDatasets(newR);
    try
      newR.LoadFromFile(S);
    except
    end;
    newR.FileName := S;
    AddDatasets(newR);
    newR.DesignReport;  
  finally
    newR.Free;
  end;
end;

procedure TdmComp.DataModuleCreate(Sender: TObject);
begin
{  dbProduto.FieldAliases.SaveToFile('dbProduto.txt');
  dbTran.FieldAliases.SaveToFile('dbTran.txt');
  dbITran.FieldAliases.SaveToFile('dbITran.txt');
  dbConfig.FieldAliases.SaveToFile('dbConfig.txt');
  dbCliente.FieldAliases.SaveToFile('dbCliente.txt');
  dbTotPag.FieldAliases.SaveToFile('dbTotPag.txt');}
  
  FTaxDescr := TncTaxDescr.Create;
  tAuxTran.Open;
  tPro.Open;
  tTran.Open;
  tMovEst.Open;
  tAuxITran.Open;
  tITran.Open;
  mtPag.Open;
  tMETax.Open;

  prnIniValues := TStringList.create;
  dmExp.FileName := ExtractFilePath(ParamStr(0))+S_ReciboTxt;
  prnIniFileName  := ExtractFilePath(ParamStr(0))+S_prnIni;
end;

procedure TdmComp.LoadPrnIni(prnName:string);
begin
    if FileExists(prnIniFileName) then
        readPrnIni(prnName)
    else begin
        loadDefValues;
        savePrnIni(prnName)
    end;

end;

function TdmComp.ObtemParams(aArq: String): String;
begin
  Result := '';
  if not FileExists(aArq) then Exit;
  AddDatasets(repCust);
  try
    repCust.LoadFromFile(aArq);
  except
  end;
  repCust.FileName := aArq;
  AddDatasets(repCust);
  Result := ParamsUsedByRep(repCust);
end;

procedure TdmComp.readPrnIni(prnName:string);
var
    sections : TStringList;
    inif : TIniFile;
begin
    inif := TIniFile.create(prnIniFileName);
    sections := TStringList.create;
    try
        if inif.SectionExists(prnName) then begin
            prnIniValues.add(S_SetCodePage+'='+PrnIniToValue(inif.ReadString(prnName, S_SetCodePage, SPrnCmd_SetCodePage)));
            prnIniValues.add(S_AtivaModoNormal+'='+PrnIniToValue(inif.ReadString(prnName, S_AtivaModoNormal, SPrnCmd_AtivaModoNormal)));
            prnIniValues.add(S_AtivaModoCondensado+'='+PrnIniToValue(inif.ReadString(prnName, S_AtivaModoCondensado, SPrnCmd_AtivaModoCondensado)));
            prnIniValues.add(S_DesativaModoCondensado+'='+PrnIniToValue(inif.ReadString(prnName, S_DesativaModoCondensado, SPrnCmd_DesativaModoCondensado)));
            prnIniValues.add(S_AtivaModoExpandido+'='+PrnIniToValue(inif.ReadString(prnName, S_AtivaModoExpandido, SPrnCmd_AtivaModoExpandido)));
            prnIniValues.add(S_DesativaModoExpandido+'='+PrnIniToValue(inif.ReadString(prnName, S_DesativaModoExpandido, SPrnCmd_DesativaModoExpandido)));
            prnIniValues.add(S_AtivaItalico+'='+PrnIniToValue(inif.ReadString(prnName, S_AtivaItalico, SPrnCmd_AtivaItalico)));
            prnIniValues.add(S_DesativaItalico+'='+PrnIniToValue(inif.ReadString(prnName, S_DesativaItalico, SPrnCmd_DesativaItalico)));
            prnIniValues.add(S_AtivaRealce+'='+PrnIniToValue(inif.ReadString(prnName, S_AtivaRealce, SPrnCmd_AtivaRealce)));
            prnIniValues.add(S_DesativaRealce+'='+PrnIniToValue(inif.ReadString(prnName, S_DesativaRealce, SPrnCmd_DesativaRealce)));
            prnIniValues.add(S_AcionarCortePapel+'='+PrnIniToValue(inif.ReadString(prnName, S_AcionarCortePapel, SPrnCmd_AcionarCortePapel)));
        end else begin
            loadDefValues;
            savePrnIni(prnName);
        end;
    finally
        sections.free;
        inif.free;
    end;
end;

procedure TdmComp.repCustBeforePrint(Sender: TfrxReportComponent);
begin
  if SameText('msgfiscal', Sender.Name) then
    Sender.Visible := Dados.NFAtivo;
end;

procedure TdmComp.RunReport(aID: TGUID; aVisualiza: Boolean);
begin

end;

procedure TdmComp.savePrnIni(prnName:string);
var
    inif : TIniFile;
begin
    inif := TIniFile.create(prnIniFileName);
    try
        inif.WriteString(prnName, S_SetCodePage, ValueToPrnIni(prnIniValues.Values[S_SetCodePage]));
        inif.WriteString(prnName, S_AtivaModoNormal, ValueToPrnIni(prnIniValues.Values[S_AtivaModoNormal]));
        inif.WriteString(prnName, S_AtivaModoCondensado, ValueToPrnIni(prnIniValues.Values[S_AtivaModoCondensado]));
        inif.WriteString(prnName, S_DesativaModoCondensado, ValueToPrnIni(prnIniValues.Values[S_DesativaModoCondensado]));
        inif.WriteString(prnName, S_AtivaModoExpandido, ValueToPrnIni(prnIniValues.Values[S_AtivaModoExpandido]));
        inif.WriteString(prnName, S_DesativaModoExpandido, ValueToPrnIni(prnIniValues.Values[S_DesativaModoExpandido]));
        inif.WriteString(prnName, S_AtivaItalico, ValueToPrnIni(prnIniValues.Values[S_AtivaItalico]));
        inif.WriteString(prnName, S_DesativaItalico, ValueToPrnIni(prnIniValues.Values[S_DesativaItalico]));
        inif.WriteString(prnName, S_AtivaRealce, ValueToPrnIni(prnIniValues.Values[S_AtivaRealce]));
        inif.WriteString(prnName, S_DesativaRealce, ValueToPrnIni(prnIniValues.Values[S_DesativaRealce]));
        inif.WriteString(prnName, S_AcionarCortePapel, ValueToPrnIni(prnIniValues.Values[S_AcionarCortePapel]));
    finally
        inif.free;
    end;
end;

procedure TdmComp.loadDefValues;
begin
    prnIniValues.add(S_SetCodePage+'='+SPrnCmd_SetCodePage);
    prnIniValues.add(S_AtivaModoNormal+'='+SPrnCmd_AtivaModoNormal);
    prnIniValues.add(S_AtivaModoCondensado+'='+SPrnCmd_AtivaModoCondensado);
    prnIniValues.add(S_DesativaModoCondensado+'='+SPrnCmd_DesativaModoCondensado);
    prnIniValues.add(S_AtivaModoExpandido+'='+SPrnCmd_AtivaModoExpandido);
    prnIniValues.add(S_DesativaModoExpandido+'='+SPrnCmd_DesativaModoExpandido);
    prnIniValues.add(S_AtivaItalico+'='+SPrnCmd_AtivaItalico);
    prnIniValues.add(S_DesativaItalico+'='+SPrnCmd_DesativaItalico);
    prnIniValues.add(S_AtivaRealce+'='+SPrnCmd_AtivaRealce);
    prnIniValues.add(S_DesativaRealce+'='+SPrnCmd_DesativaRealce);
    prnIniValues.add(S_AcionarCortePapel+'='+SPrnCmd_AcionarCortePapel);
end;

function  TdmComp.ValueToPrnIni(s:string):string;
var
    i : integer;
begin
    result := '';
    for I := 1 to Length(s) do
        result := result + inttostr(ord(s[i]))+';';
    if length(result)>0 then
        Setlength(result, length(result)-1);
end;

procedure TdmComp.Personalizar(aArq: String; aTipoDoc: Byte; aBobina,
  aSomenteTexto: Boolean);
var R : TfrxReport;  
begin
  if not FileExists(aArq) then begin
    if aTipoDoc=tipodoc_pgdebito then begin
      if aBobina then begin
        if aSomenteTexto then
          R := repDebSerial else
          R := repDebWinB;
      end else
        R := repDebWin;
    end else 
    if aBobina then begin
      if aSomenteTexto then
        R := repSerial else
        R := repWinB;
    end else
      R := repWin;

    R.SaveToFile(aArq); 
  end;

  AddDatasets(repCust);
  try
    repCust.LoadFromFile(aArq);
  except
  end;
  repCust.FileName := aArq;
  AddDatasets(repCust);
  repCust.DesignReport;    
end;

procedure TdmComp.PreparaImpressaoTran;
var 
  fator, I, T: Integer;
//  TotProd: Boolean;
  FonteEnd: Byte;
  E : TncEndereco;

procedure AddPag(aDescr: String; 
                 aValor: Currency; 
                 aPrefixo: Boolean;
                 aDescrCor: Integer = clBlack; 
                 aDescrBold: Boolean = False;
                 aValorCor: Integer = clBlack;
                 aValorBold: Boolean = True);
begin
  mtPag.Append;
  if aPrefixo then
    mtPagDescr.Value := gConfig.RecPrefixoMeioPagto+aDescr else
    mtPagDescr.Value := aDescr;
  mtPagValor.Value := aValor;
  mtPagDescrBold.Value := aDescrBold;
  mtPagDescrCor.Value := aDescrCor;
  mtPagValorCor.Value := aValorCor;
  mtPagValorBold.Value := aValorBold;
  mtPag.Post;
end;  

begin
    tCliente.Active := True;
    tCliente.SetRange([tTranCliente.Value], [tTranCliente.Value]);
    tCliente.Refresh;
    tITran.SetRange([tTranID.Value], [tTranID.Value]);
    mtPag.EmptyTable;

    FTaxDescr.Limpa;

    tMovEst.IndexName := 'ITranItem';
    try
      tMovEst.SetRange([tTranID.Value], [tTranID.Value]);
      try
        tMovEst.First;
        while not tMovEst.Eof do begin
          tMETax.SetRange([tMovEstID.Value], [tMovEstID.Value]);
          tMETax.First;
          while not tMETax.Eof do begin
            FTaxDescr.Add(tMETaxtax_id.Value, tMETaxnome.Value, tMETaxvalor.Value, tMETaxincluido.Value);
            tMETax.Next;
          end;
          tMovEst.Next;
        end;
      finally
        tMovEst.CancelRange;
      end;
    finally
      tMovEst.IndexName := 'IID';
    end;
    
    if (tTranDesconto.Value>0) or (tTranFrete.Value>0) or FTaxDescr.TemTaxAdd then begin
//      TotProd := tTranDesconto.Value and (FTaxDescr.TemTaxAdd or (tTranFrete.Value>0.009));
      
      AddPag(strTotProdutos, tTranTotal.Value, False);

      if tTranDesconto.Value>0 then begin
        AddPag(strDesconto, tTranDesconto.Value, False);
        AddPag(strSubTotal, tTranTotal.Value - tTranDesconto.Value, False);
      end;
    end;{ else
      TotProd := False;  }
    
    Fator := 1;
    if tTranTipo.Value=trEstDevolucao then 
    begin
      Fator := -1;
      AddPag(strTotalDevolvido, tTranTotal.Value, False, clBlack, True, clBlack, True);
      if tTranOpDevValor.Value=0 then
        AddPag(strDevolucaoCred, tTranTotal.Value, False, clBlack, True, clBlack, True) else
    end else begin 

      for I := 0 to FTaxDescr.Count-1 do 
        AddPag(FTaxDescr.Itens[I].tdxNome, FTaxDescr.Itens[I].tdxValor, False);

      if tTranFrete.Value>0.09 then 
        AddPag(rsTaxaEntFrete, tTranFrete.Value, False, clBlack, True);

      AddPag(strTotalPagar, tTranTotalFinal.Value, False, clBlack, True, clBlack, True);
    end;  
    
    mtEntrega.Active := False;
    mtEntrega.Active := True;

    if (tTranTipo.Value=trEstVenda) and (tTranEntregar.Value) then begin
      FonteEnd := 0;
      if Dados.tbEnd.Locate('endereco_id', tTranendereco_entrega.AsString, []) then 
        FonteEnd := 1
      else
      if (tClienteendereco_id.AsString=tTranendereco_entrega.Value) then 
        FonteEnd := 2;
        
      if FonteEnd>0 then begin
        E := TncEndereco.Create;
        try
          if FonteEnd=1 then
            E.LoadFromDataset(Dados.tbEnd) else
            E.LoadFromDataset(Dados.tbCli);
            
          mtEntrega.Append;
          E.SaveToDataset(mtEntrega);
          mtEntregaendereco_completo.Value := E.ResumoEntrega(nil);
          mtEntrega.Post;
        finally
          E.Free;
        end;
      end;  
    end;    

    if not tTranPagPend.Value then begin
      tPagEsp.SetRange([tTranID.Value], [tTranID.Value]);
      tPagEsp.First;
      T := 0;
      while not tPagEsp.Eof do begin
        if gConfig.RecImprimeMeioPagto then
          AddPag(tPagEspNomeEspecie.Value, Fator * tPagEspValor.Value, True);
        tPagEsp.Next;
        Inc(T);
      end;

      if tTranCreditoUsado.Value>0 then begin
        AddPag(strCreditoUsado, tTranCreditoUsado.Value, True);
        Inc(T);
      end;

      if (T>1) or (not gConfig.RecImprimeMeioPagto) then 
        AddPag(strTotalPago, tTranPago.Value+tTranCreditoUsado.Value, False, clBlack, True, clBlack, True);
        
      if tTranTroco.Value>0 then AddPag(strTroco, tTranTroco.Value, False, clGreen, False, clGreen);
      if tTranCredito.Value>0 then AddPag(strCreditado, tTranCredito.Value, False, clGreen, False, clGreen);
      if tTranDebito.Value>0 then AddPag(strDebitado, tTranDebito.Value, False, clRed, False, clRed, True);
    end;
    mtPag.First;
end;

function  TdmComp.PrnIniToValue(s:string):string;
var
    sl : TStringList;
    i : integer;

    function isInteger(s:string):boolean;
    var
        ii : integer;
    begin
        result := true;
        for ii := 1 to Length(s) do
           if not(s[ii] in ['0'..'9']) then begin
               result := false;
               exit;
           end;

    end;
begin
    result := '';
    sl := TStringList.create;
    try
        sl.LineBreak := ';';
        sl.Text := s;
        for I := 0 to sl.Count - 1 do begin
            if isInteger(sl[i]) then
                result := result + char(strtoint(sl[i]))
            else
                result := result + sl[i];
        end;

    finally
        sl.free;
    end;
end;

procedure TdmComp.ImprimeSerial(R: TfrxReport; aVisualiza: Boolean);
var
    p, i : integer;
    sl : TStringList;
    s : string;


    procedure Aguardar(milisec:integer);
    begin
            while ApdComPort1.OutBuffUsed>0 do sleep(5);
             sleep(1);
    end;
    
    procedure SerialPrint(s:string);
    begin
            ApdComPort1.PutString(s);
            Aguardar(5);
    end;

    procedure SerialPrintLn(const s:string='');
    begin
            ApdComPort1.PutString(s+#13+#10);
            Aguardar(5);
    end;

    procedure SetCodePage(n:integer);
    begin
            SerialPrint(prnIniValues.Values[S_SetCodePage]+char(n));
    end;

begin
  DebugMsg('TdmComp.ImprimeSerial');
    if gRecibo.PortaSerial > 0 then begin

        LoadPrnIni(gRecibo.Impressora[tipodoc]);

        LoadCustomPrepare(R);
        R.Export(dmExp);

        ApdComPort1.ComNumber := gRecibo.PortaSerial;
        ApdComPort1.Open := true;
        sl := TStringList.create;
        try
            sl.loadFromFile(dmExp.FileName);

            S := SL.Text;
            repeat
              I := Pos(#12, S);
              if I>0 then
                Delete(S, I, 1);
            until (I<=0);
            SL.Text := S;

{            if gRecibo.LarguraBobina > 40 then
                SerialPrint(prnIniValues.Values[S_AtivaModoCondensado])
            else
                SerialPrint(prnIniValues.Values[S_AtivaModoNormal]);}


            {SetCodePage(2);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(Sl[I]);
            SetCodePage(3);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(Sl[I]);
            SetCodePage(4);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(Sl[I]);
            SetCodePage(5);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(Sl[I]);
            SetCodePage(6);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(Sl[I]);
            SetCodePage(7);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(Sl[I]);
            SetCodePage(8);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(Sl[I]);
            SetCodePage(9);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(Sl[I]);
            SetCodePage(10);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(Sl[I]);
            SetCodePage(11);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(Sl[I]);
            SetCodePage(12);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(Sl[I]);
            SetCodePage(14);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(Sl[I]);
            SetCodePage(21);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(Sl[I]); }

            SetCodePage(8);
            for I := 0 to SL.Count-1 do
                SerialPrintLn(AnsiToUtf8(Sl[I]));

            for I := 1 to gRecibo.SaltoFimRecibo do 
                SerialPrintLn;

            if gRecibo.CortarPapel then
                SerialPrint(prnIniValues.Values[S_AcionarCortePapel]);

        finally
            ApdComPort1.Open := false;
            sl.free;
        end;
    end;
end;

procedure TdmComp.ImprimeWindows(R: TfrxReport; aVisualiza: Boolean);
begin
  LoadCustomPrepare(R);
  if Dados.IsDotMatrixRep then begin
    DebugMsg('tDMComp.ImprimeWindows - IsDotMatrixRep');
    R.Export(dmExp);
    PrintFile(gRecibo.Impressora[tipodoc], dmExp.FileName, gRecibo.DirectPrintFormat);
  end else begin
    DebugMsg('tDMComp.ImprimeWindows - repCustom.Print');
    R.Print;   
  end;
end;


procedure TdmComp.LoadCustomPrepare(R: TfrxReport);
begin
  DebugMsg('TdmComp.LoadCustomPrepare - gRecibo.Impressora: ' + gRecibo.Impressora[tipodoc]);
  R.PrintOptions.Printer := gRecibo.Impressora[tipodoc];
  R.PrintOptions.ShowDialog := False;
  AddDatasets(R);
  R.PrepareReport(True);
end;

procedure TdmComp.ImportarModelos;
var
  Q : Integer;
  SID : String;


procedure Imp(aArq: String; aTipo: Byte; aAtual, aBobina, aSomenteTexto: Boolean);
var 
  aNovo: Boolean;
  S : String;
begin
  S := 'Modelo Customizado';
  if Q>0 then S := S + ' ' + IntToStr(Q+1);
  SID := ImportRep(FolderBaseComp+aArq+'.fr3', aTipo, S, aNovo);
  if aNovo then Inc(Q);

  if aAtual and gRecibo.Imprimir[aTipo] then begin 
    if SID='' then SID := ModeloPadrao(aTipo, aBobina, aSomenteTexto); 
    gRecibo.Modelo[aTipo] := SID;
  end;  
end;

begin
end;

function TdmComp.ImportRep(aArq: String; aTipo: Byte; aNome: String; var aNovo: Boolean): String;
var 
  sl: TStrings;
  aBobina: Boolean;
begin
  Result := '';
  if not FileExists(aArq) then Exit;
  sl := TStringList.Create;
  try
    sl.LoadFromFile(aArq);
    Result := Dados.FindDocByReport(aTipo, sl.Text);
    aNovo := False;
    if Result <> '' then Exit;
    repCust.LoadFromFile(aArq);
    try
      aBobina := (PageWidth(sl.Text)<140);
    except  
      aBobina := False;
    end;

    with dados do begin
      tbDoc.Insert;
      tbDocTipo.Value := aTipo;
      tbDocNome.Value := aNome;
      tbDocBobina.Value := aBobina;
      tbDocDoc.AsString := sl.Text;
      tbDocCustom.Value := True;
      Result := tbDocUID.Value;
      tbDoc.Post;
    end;
    aNovo := True;
  finally
    sl.Free;
  end;
end;

procedure TdmComp.Imprime(aID: TGuid; aVisualiza: Boolean = False);
var 
  T: Integer;
  R: TfrxReport;

procedure AddPag(aDescr: String;
                 aValor: Currency; 
                 aPrefixo: Boolean;
                 aDescrCor: Integer = clBlack; 
                 aDescrBold: Boolean = False;
                 aValorCor: Integer = clBlack;
                 aValorBold: Boolean = True);
begin
  mtPag.Append;
  if aPrefixo then
    mtPagDescr.Value := gConfig.RecPrefixoMeioPagto+aDescr else
    mtPagDescr.Value := aDescr;
  mtPagValor.Value := aValor;
  mtPagDescrBold.Value := aDescrBold;
  mtPagDescrCor.Value := aDescrCor;
  mtPagValorCor.Value := aValorCor;
  mtPagValorBold.Value := aValorBold;
  mtPag.Post;
end;                 

begin
  if not tTran.FindKey([TGuidEx.ToString(aID)]) then Exit;

  if not gRecibo.DocOk(tipodoc) then Exit;

  R := TfrxReport.Create(Self);

  try
    PreparaImpressaoTran;

    Dados.LoadReportFromDoc(R);

    if (not gConfig.IsPremium) and gRecibo.GetIntBobina(tipodoc) then 
      TFrmRecursoPro.Create(FrmPri).Mostrar(rsRecursoPRO, 'TdmComp');
  
    DebugMsg('tDMComp.Imprime - aTran: ' + TGuidEx.ToString(aID));
    
  //    if (gRecibo.CmdAbreGaveta>'') and (gRecibo.AbrirGaveta=1) then dmComp.AbreGaveta;
    if gRecibo.ImpSerial then
      ImprimeSerial(R, aVisualiza) else
      ImprimeWindows(R, aVisualiza);
  //    if (gRecibo.CmdAbreGaveta>'') and (gRecibo.AbrirGaveta=2) then dmComp.AbreGaveta;
   finally
     R.Free;
   end;
end;

{
procedure TdmComp.ImprimeMatricial(aTran: Integer; aVisualiza: Boolean = False);
var 
  SL: TStrings;
  Arq : TextFile;
  I : Integer;
  R : TfrxReport;
  S: String;
begin
  DebugMsg('tDMComp.Imprime - aTran: ' + IntToStr(aTran)); // do not localize
  if tTran.FindKey([aTran]) then begin
    tITran.SetRange([aTran], [aTran]);
    if Dados.CM.Config.RecMatricial then begin
      DebugMsg('tDMComp.Imprime - RecMatricial = True'); // do not localize
    
      case tTranTipo.Value of
        trFimSessao : R := repMatrixFS;
      else
        R := repMatrix;    
      end;
    
      R.PrepareReport(True);
      R.Export(txtExp);

      DebugMsg('TdmComp.Imprime - AssignFile: ' + ncaDM.PortaRec); // do not localize
      
      AssignFile(Arq, ncaDM.PortaRec);

      DebugMsg('TdmComp.Imprime - Rewrite'); // do not localize
      
      Rewrite(Arq);

      DebugMsg('TdmComp.Imprime - Rewrite Ok'); // do not localize

      SL := TStringList.Create;
      try
        DebugMsg('TdmComp.Imprime - SL.LoadFromFile: ' + txtExp.FileName); // do not localize
        SL.LoadFromFile(txtExp.FileName);
        DebugMsg('TdmComp.Imprime - SaveToFile'); // do not localize
        SL.SaveToFile(ExtractFilePath(ParamStr(0))+SRecibo_ultimoTxt);
        DebugMsg('TdmComp.Imprime - SaveToFile OK'); // do not localize
        S := SL.Text;
        repeat
          I := Pos(#12, S);
          if I>0 then 
            Delete(S, I, 1);
        until (I<=0);
        SL.Text := S;

        DebugMsg('TdmComp.Imprime - Imprimir!'); // do not localize
        

        for I := 0 to SL.Count-1 do 
          Writeln(Arq, Sl[I]);

        DebugMsg('TdmComp.Imprime - Saltar'); // do not localize
          
        for I := 1 to Dados.CM.Config.RecSalto do
          Writeln(Arq);
      finally
        SL.Free;
        CloseFile(Arq);
      end;
//      repMatrix.ShowReport(False);
    end else begin
      DebugMsg('TdmComp.Imprime - RecMatricial = FALSE'); // do not localize
    
      case tTranTipo.Value of
        trFimSessao : R := repJTFS
      else
        R := repJT;    
      end;

      
      R.PrepareReport(True);
      if aVisualiza then
        R.ShowReport(False) else
        R.Print;
//      repJT.ShowReport(False);
    end;
  end;
end;
}

procedure TdmComp.tClienteCalcFields(DataSet: TDataSet);
var S: String;

procedure Add(sep, s2: String);
begin
  if Trim(s2)='' then Exit;
  if Trim(S)>'' then S := S + sep;
  S := S + s2;
end;

begin
  if (tClientePais.Value='BR') or (Trim(tClientePais.Value)='') then begin
    S := tClienteEndereco.Value;
    Add(' ', tClienteEnd_Numero.Value);
    Add(' ', tClienteEndereco2.Value);
  end else begin
    S := tClienteEndereco.Value;
    Add(sLineBreak, tClienteEndereco2.Value);
  end;
  tClienteEndNumComp.Value := S;
end;

function TdmComp.tipodoc: Byte;
begin
  if tTranTipo.Value=trPagDebito then
    Result := tipodoc_pgdebito 
  else
  if tTranPagPend.Value then
    Result := tipodoc_pedido else
    Result := tipodoc_venda;
end;

procedure TdmComp.tITranCalcFields(DataSet: TDataSet);
var 
  V: Currency;
  S: String;
begin
  tITranUnitarioStr.Value := CurrencyToStr(tITranUnitario.Value);
  tITranTotalStr.Value := CurrencyToStr(tITranTotal.Value);
  
  with tITranNomeTipoItem do
  case tITranTipoItem.Value of
    itMovEst    : Value := 'PRODUTO'; // TODO : check string
    itCredito   : Value := 'CREDITO'; // TODO : check string
    itTran      : Value := 'TRANSAÇÃO'; // TODO : check string
  end;

  if (tITranTipoTran.Value = trPagDebito) then
  begin
    case tITranTipoItem.Value of
      itMovEst    : if tMovEst.FindKey([tITranItemID.Value]) then 
      begin
        tITranValorOriginal.Value := tMovEstTotal.Value;
        tITranUnitario.Value := tMovEstUnitario.Value;
        tITranPgAnt.Value := tMovEstPago.Value + tMovEstPagoPost.Value - tITranPago.Value;
        tITranDescAnt.Value := tMovEstDesconto.Value + tMovEstDescPost.Value - tITranDesconto.Value;
        tITranDataOrig.Value := tMovEstDataHora.Value;
      end;

      itFrete : if Dados.tbTran.Locate('ID', tITranItemID.Value, []) then begin
        tITranValorOriginal.Value := Dados.tbTranFrete.Value;
        tITranUnitario.Value := Dados.tbTranFrete.Value;
//        tITranPgAnt.Value := tITranValorOriginal.Value - tITranPago.Value;
        tITranDescAnt.Value := 0;
        tITranDataOrig.Value := Dados.tbTranDataHora.Value;
      end;
    end;
    V := tITranPgAnt.Value + tITranDescAnt.Value;
    if V>0.0009 then 
      tITranDescrPg.Value := FloatToStrF(V, ffCurrency, 15, 2) + SncaDMComp_PgDescAnt;
  end else
    tITranDataOrig.Value := tITranDataHora.Value;

  S := '';
  case tITranTipoItem.Value of
    itFrete : begin
      S := rsTaxaEntregaFrete;
      tITranQuant.Value := '1';
      tITranQuantUnid.Value := '1';
      if Dados.tbTran.Locate('ID', tITranItemID.Value, []) then
        tITranUnitario.Value := Dados.tbTranFrete.Value;
    end;
    itMovEst : 
    if tMovEst.FindKey([tITranItemID.Value]) then begin
      tITranQuant.Value := tMovEstQuant.AsString;
      tITranUnitario.Value := tMovEstUnitario.Value;
      
      if tPro.FindKey([tMovEstProduto.Value]) then begin
        S := tProDescricao.Value;
        if tProUnid.Value>'' then
          tITranQuantUnid.Value := tITranQuant.Value + ' ('+tProUnid.Value+')' else
          tITranQuantUnid.Value := tITranQuant.Value;
      end else begin
        S := rsErroProdutoNaoExiste;
      end;
    end else
      S := 'Produto'; // do not localize
  end;

  with FormatSettings do
  if tITranTipoTran.Value = trPagDebito then
  if tITranDescrPg.Value='' then
    tITranDescrPg.Value := FormatDateTime(ShortDateFormat, tITranDataOrig.Value) else // TODO : check string
    S := S + ' - ' + FormatDateTime(ShortDateFormat, tITranDataOrig.Value); // TODO : check string

  tITranDescrItem.Value := S;
end;

procedure TdmComp.tTranCalcFields(DataSet: TDataSet);
begin
  tTranNomeTipo.Value := TipoTranToStr(tTranTipo.Value);

  if tTranNomeVendedor.Value>'' then
    tTranNomeFunc.Value := tTranNomeVendedor.Value else
    tTranNomeFunc.Value := tTranNomeFuncOrig.Value;
end;

end.

				


