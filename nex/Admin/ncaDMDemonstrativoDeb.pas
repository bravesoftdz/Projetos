unit ncaDMDemonstrativoDeb;

interface

uses
  Forms, System.SysUtils, System.Classes, frxClass, frxDBSet, Data.DB, kbmMemTable, ncDebito,
  nxdb, frxDMPExport, Windows, frxDesgn;

type
  TdmDemonstrativoDeb = class(TDataModule)
    mtCab: TkbmMemTable;
    mtItem: TkbmMemTable;
    mtItemCodigo: TStringField;
    mtItemDescr: TStringField;
    mtItemDataCompra: TDateTimeField;
    mtItemQuant: TFloatField;
    mtItemValorCompra: TCurrencyField;
    mtItemValorDeb: TCurrencyField;
    mtCabCliente: TStringField;
    repBob_pt: TfrxReport;
    dbCab: TfrxDBDataset;
    dbItem: TfrxDBDataset;
    tMovEst: TnxTable;
    tMovEstID: TUnsignedAutoIncField;
    tMovEstID_ref: TLongWordField;
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
    tMovEstPend: TBooleanField;
    tMovEstIncluidoEm: TDateTimeField;
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
    dmExp: TfrxDotMatrixExport;
    repFolha_pt: TfrxReport;
    Designer: TfrxDesigner;
    repBob_en: TfrxReport;
    repBob_es: TfrxReport;
    repFolha_en: TfrxReport;
    repFolha_es: TfrxReport;
  private
    { Private declarations }
    procedure Load(aDeb: TncDebito);
    procedure ImprimeBob;
    procedure _Imprime(aDeb: TncDebito; aBobina: Boolean);
  public
    class procedure Imprime(aDeb: TncDebito);

    function repBob: TfrxReport;
    function repfolha: TfrxReport;
    { Public declarations }
  end;

var
  dmDemonstrativoDeb: TdmDemonstrativoDeb;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ncaDM, ncPrintFile, ncaConfigRecibo, ncClassesBase,
  uNexTransResourceStrings_PT;

{$R *.dfm}

{ TdmDemonstrativoDeb }

class procedure TdmDemonstrativoDeb.Imprime(aDeb: TncDebito);
begin
  if not Assigned(dmDemonstrativoDeb) then 
    Application.CreateForm(TdmDemonstrativoDeb, dmDemonstrativoDeb);
  dmDemonstrativoDeb._Imprime(aDeb, gRecibo.DemDebBob);  
end;


procedure TdmDemonstrativoDeb._Imprime(aDeb: TncDebito; aBobina: Boolean);
begin
  Load(aDeb);
  if aBobina then 
    ImprimeBob
  else begin
    repFolha.ReportOptions.Name := 'Débitos de '+mtCabCliente.Value;
    repFolha.PrintOptions.Printer := gRecibo.Impressora[tipodoc_demdeb];
    repFolha.PrepareReport;
    repFolha.Print;
  end;
end;

procedure TdmDemonstrativoDeb.ImprimeBob;
begin
  repBob.PrepareReport;
  dmExp.FileName := ExtractFilePath(ParamStr(0))+'Debitos_temp_'+IntToStr(Random(9999999))+'.txt';
  repBob.Export(dmExp);
  PrintFile(gRecibo.Impressora[tipodoc_demdeb], dmExp.FileName, gRecibo.DirectPrintFormat);
  Windows.DeleteFile(PChar(dmExp.FileName));
end;

procedure TdmDemonstrativoDeb.Load(aDeb: TncDebito);
var I : Integer;
var S1, S2 : String;
begin
  mtCab.Active := False;
  mtItem.Active := False;
  mtCab.Open;
  mtItem.Open;
  mtCab.Append;
  if dados.tbCli.Locate('ID', aDeb.Cliente, []) then
    mtCabCliente.Value := dados.tbCliNome.Value;
  mtCab.Post;

  S1 := Dados.tbPro.IndexName;
  S2 := Dados.tbMovEst.IndexName;

  with Dados, aDeb do
  try
    tbPro.IndexName := 'IID';
    tbMovEst.IndexName := 'IID';
    for I := 0 to Itens.Count-1 do begin
      mtItem.Append;
      mtItemDataCompra.Value := itens[I].idDataCompra;
      mtItemValorDeb.Value := itens[i].idTotal;
      if itens[i].idTipoItem=itFrete then begin
        mtItemQuant.Value := 1;
        mtItemDescr.Value := rsTaxaEntregaFrete;
        if tbTran.Locate('ID', itens[i].idItemID, []) then
          mtItemValorCompra.Value := tbTranFrete.Value;
      end else
      if tbMovEst.FindKey([itens[i].idItemID]) then begin
        mtItemQuant.Value := tbMovEstQuant.Value;
        mtItemValorCompra.Value := tbMovEstTotal.Value - tbMovEstDesconto.Value;
        if tbPro.FindKey([tbMovEstProduto.Value]) then
          mtItemDescr.Value := tbProDescricao.Value;
      end;
      mtItem.Post;
    end;
  finally
    Dados.tbPro.IndexName := S1;
    Dados.tbMovEst.IndexName := S2;
  end;
  mtItem.First;
end;

function TdmDemonstrativoDeb.repBob: TfrxReport;
begin
  if LinguaPT then
    Result := repBob_pt
  else
  if SameText(SLingua, 'es') then
    Result := repBob_es
  else
    Result := repBob_en;
end;

function TdmDemonstrativoDeb.repfolha: TfrxReport;
begin
  if LinguaPT then
    Result := repFolha_pt
  else
  if SameText(SLingua, 'es') then
    Result := repFolha_es
  else
    Result := repFolha_en;
end;

end.
