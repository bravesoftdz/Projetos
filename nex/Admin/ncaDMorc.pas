unit ncaDMorc;

interface

uses
  SysUtils, Classes, DB, Forms, frxClass, frxDBSet, nxdb, kbmMemTable, frxExportPDF,
  LMDCustomComponent, LMDBaseController, LMDCustomContainer, LMDStringList,
  frxDMPExport;

type
  TdmOrc = class(TDataModule)
    Tab: TnxTable;
    TabUID: TGuidField;
    TabIDSeq: TAutoIncField;
    TabCriadoEm: TDateTimeField;
    TabAtualizadoEm: TDateTimeField;
    TabVendidoEm: TDateTimeField;
    TabFunc: TStringField;
    TabTotal: TCurrencyField;
    TabDesconto: TCurrencyField;
    TabTotalFinal: TCurrencyField;
    TabObs: TnxMemoField;
    TabNomeFunc: TStringField;
    dbOrcamento: TfrxDBDataset;
    tItens: TnxTable;
    tItensOrcamento_UID: TGuidField;
    tItensUID: TGuidField;
    tItensItem: TWordField;
    tItensDescr: TnxMemoField;
    tItensUnitario: TCurrencyField;
    tItensTotal: TCurrencyField;
    tItensDesconto: TCurrencyField;
    tItensTotalFinal: TCurrencyField;
    dsTab: TDataSource;
    TabNomeStatus: TStringField;
    dbItens: TfrxDBDataset;
    dsItens: TDataSource;
    tProduto: TnxTable;
    dbProduto: TfrxDBDataset;
    tCliente: TnxTable;
    tProdutoID: TAutoIncField;
    tProdutoPreco: TCurrencyField;
    tProdutoPrecoAuto: TBooleanField;
    tProdutoMargem: TFloatField;
    tProdutoImagem: TGraphicField;
    tProdutoCustoUnitario: TCurrencyField;
    tProdutoPodeAlterarPreco: TBooleanField;
    tProdutoPermiteVendaFracionada: TBooleanField;
    tProdutoNaoControlaEstoque: TBooleanField;
    tProdutoAbaixoMin: TBooleanField;
    tProdutoAbaixoMinDesde: TDateTimeField;
    tProdutoComissaoPerc: TFloatField;
    tProdutoComissaoLucro: TBooleanField;
    tProdutoAtivo: TBooleanField;
    tProdutoFidelidade: TBooleanField;
    tProdutoFidPontos: TIntegerField;
    tProdutoCadastroRapido: TBooleanField;
    tProdutoIncluidoEm: TDateTimeField;
    tProdutoNomeFornecedor: TStringField;
    dbCliente: TfrxDBDataset;
    repOrcamento: TfrxReport;
    mtTot: TkbmMemTable;
    mtTotDescr: TStringField;
    mtTotValor: TCurrencyField;
    dbTotal: TfrxDBDataset;
    dbConfig: TfrxDBDataset;
    expPDF: TfrxPDFExport;
    slFieldMap: TLMDStringList;
    repCustom: TfrxReport;
    TabNomeCliente: TWideStringField;
    TabIDVenda: TLongWordField;
    TabCliente: TLongWordField;
    TabStatus: TByteField;
    TabAprovadoEm: TDateTimeField;
    TabRecusadoEm: TDateTimeField;
    TabExpiradoEm: TDateTimeField;
    TabStatusAlteradoEm: TDateTimeField;
    TabVendido: TBooleanField;
    TabValData: TDateTimeField;
    TabValModo: TByteField;
    TabValTempo: TWordField;
    TabValUTempo: TByteField;
    tProdutoFornecedor: TLongWordField;
    tProdutoEstoqueAtual: TFloatField;
    tProdutoEstoqueMin: TFloatField;
    tProdutoEstoqueMax: TFloatField;
    tProdutoEstoqueRepor: TFloatField;
    tItensProduto: TLongWordField;
    tItensQuant: TFloatField;
    dmExp: TfrxDotMatrixExport;
    tProdutoEstoquePend: TFloatField;
    tProdutoEstoqueTot: TFloatField;
    tProdutoNCM: TStringField;
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
    tClienteNaoContribICMS: TBooleanField;
    tClienteIsentoIE: TBooleanField;
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
    tClienteConsumidor: TBooleanField;
    tClienteInativo: TBooleanField;
    tClienteFornecedor: TBooleanField;
    tClienteValorCred: TCurrencyField;
    tClienteRecVer: TLongWordField;
    tClienteEndNumComp: TStringField;
    tProdutoUID: TGuidField;
    tProdutoMarca: TGuidField;
    tProdutoCodigo: TWideStringField;
    tProdutoDescricao: TWideStringField;
    tProdutoUnid: TWideStringField;
    tProdutoObs: TWideMemoField;
    tProdutoCategoria: TWideStringField;
    tProdutobrtrib: TWordField;
    tProdutoPesoBruto: TFloatField;
    tProdutoPesoLiq: TFloatField;
    tProdutotax_id: TLongWordField;
    tProdutoNCM_Ex: TStringField;
    tProdutocest: TLongWordField;
    tProdutomodST: TByteField;
    tProdutoMVA: TnxMemoField;
    tProdutoPauta: TnxMemoField;
    tProdutoAlteradoEm: TDateTimeField;
    tProdutoAlteradoPor: TStringField;
    tProdutoNomeMarca: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure tClienteCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    function Preparar(aUID: String): Boolean;
    function GetTableFieldMap(aTable: String): TStrings;
  public
    { Public declarations }
    procedure Imprime(aUID: String);
    procedure EnviarEmail(aUID, aFromName, aFromEmail, aToName, aToEmail, aAssunto, aBody: String);

    function TranslateFields(aText: String; aDefaultTable: String = ''): String;
    function TranslateFields2(aText: String; aDefaultTable: String = ''): String;

    function CreateReport(aArq: String): TfrxReport;

    procedure ImportarModelos;

    procedure AddDatasets(R: TfrxReport);

    procedure Personalizar(aArq: String; aBobina, aSomenteTexto: Boolean);
    function ObtemParams(aArq: String): String;
    
  end;

  procedure CriaDMOrc;

var
  dmOrc: TdmOrc = nil;
  gOrcFields : TStrings;

implementation

uses ncaDM, ncClassesBase, idHttp, IdMultipartFormData, ncDebug, Windows,
  ncaFrmMeuPreview, ncaFrmSendEmailOrc, ncaDMComp, ncaConfigRecibo, nexUrls,
  ncaFrmConfigDocOrc, ncPrintFile, ncaFrmConfig_Orcamento;

{$R *.dfm}

{ TdmOrc }

resourcestring
  rsTotalFinal = 'Total Final';
  rsTotal = 'Total';
  rsSubTotal = 'Sub-total';
  rsDesconto = 'Desconto';

  rsCampoNumero = 'numero';
  rsCampoTotalFinal = 'totalfinal';

procedure CriaDMOrc;
begin  
  Application.CreateForm(TdmOrc, dmOrc);
end;

function repFileName: String;
begin
  Result := ExtractFilePath(ParamStr(0))+'custom\orcamento.fr3';
end;

procedure TdmOrc.AddDatasets(R: TfrxReport);

procedure AddDS(aDB: TfrxDBDataset);
begin
   if R.DataSets.Find(aDB)=nil then
     R.DataSets.Add(aDB);
end;

begin
  AddDS(dbOrcamento);
  AddDS(dbCliente);
  AddDS(dbItens);
  AddDS(dbProduto);
  AddDS(dbTotal);
  AddDS(dbConfig);
end;

function TdmOrc.CreateReport(aArq: String): TfrxReport;
begin
  Result := TfrxReport.Create(Self);
  try
    AddDatasets(Result);
    Result.LoadFromFile(aArq);
    Result.PrepareReport(True);
  except
    Result.Free;
    raise;
  end;
end;

procedure TdmOrc.DataModuleCreate(Sender: TObject);
begin
  dmExp.FileName := ExtractFilePath(ParamStr(0))+'orcamento.txt';
end;

procedure TdmOrc.EnviarEmail(aUID, aFromName, aFromEmail, aToName, aToEmail, aAssunto, aBody: String);
var
    h: TIdHTTP;
    ms : TIdMultiPartFormDataStream;
    i : integer;
    aRes: String;
    slDebug: TStrings;

procedure AddParam(aName, aValue: String);
begin
  slDebug.Add(aName+'='+AnsiToUTF8(aValue));
  ms.AddFormField(aName, AnsiToUtf8(aValue), 'utf-8').ContentTransfer := '8bit';
end;

procedure AddArq(aArqField, aArq, aArqContentType: String);
begin
  ms.AddFile(aArqField, aArq, aArqContentType);
end;  

function BRBody: String;
var sl : TStrings; k: Integer;
begin
  sl := TStringList.Create;
  try
    sl.Text := aBody;
    Result := '';
    for k := 0 to sl.count - 1 do
      Result := Result + sl[k] + '\n';
  finally
    sl.Free;
  end;
end;

begin
  if not gRecibo.DocEmailOrcOk then begin
    if not tFrmConfig_Orcamento.Create(Self).Editar(True) then Exit;
    if not gRecibo.DocEmailOrcOk then Exit;
  end;
  Dados.LoadReportFromDoc(repCustom);
  if not Preparar(aUID) then Exit;
  
  expPDF.Filename := ExtractFilePath(ParamStr(0))+'orcamento'+TabIDSeq.AsString+'.pdf';
  repCustom.Export(expPDF);

  h := TIdHTTP.create(nil);
  ms := TIdMultiPartFormDataStream.Create;
  try
    H.HandleRedirects := True;
    try
      slDebug := TStringList.Create;
      try
        AddParam('from_name', aFromName);
        AddParam('from_email', aFromEmail);
        AddParam('to[][email]', aToEmail);
        AddParam('to[][name]', aToName);
        AddParam('subject', aAssunto);
        AddParam('body', BRBody);
        AddParam('tags', 'orcamento');
        AddArq('file',  expPDF.Filename, 'application/pdf');
        DebugMsg('TdmOrc.EnviarEmail - Parametros: '+sLineBreak+slDebug.Text);
      finally  
        slDebug.Free;
      end;
      
      ms.Seek(0,0);

      aRes := TFrmSendEmail.Create(Self).Enviar(H, gUrls.Url('mailer'), MS);
      if aRes<>'' then raise exception.Create(aRes);
      DebugMsg('TdmOrc.EnviarEmail - OK!');
    except
      on e:exception do begin
        DebugMsg('TdmOrc.EnviarEmail - Exception: '+e.Message); // do not localize
        raise;
      end;
    end;
  finally
    if FileExists(expPDF.FileName) then Windows.DeleteFile(PChar(expPDF.FileName));
    h.free;
    ms.Free;
  end;
end;

function TdmOrc.GetTableFieldMap(aTable: String): TStrings;
var I : Integer;
begin
  for I := 0 to slFieldMap.Count - 1 do
    if SameText(slFieldMap.Items[I].Description, aTable) then begin
      Result := slFieldMap.Items[I].Items;
      Exit;
    end;
  Result := nil;  
end;

procedure TdmOrc.ImportarModelos;
var aNovo: Boolean;
begin
{  gRecibo.Impressora[tipodoc_orcamento] := slConfig.Values['orc_impressora'];
  gRecibo.Copias[tipodoc_orcamento] := StrToIntDef(slConfig.Values['orc_copias'], 1);
  if FileExists(repFileName) then 
    gRecibo.Modelo[tipodoc_orcamento] := dmComp.ImportRep(repFileName, tipodoc_orcamento, ' Modelo Customizado', aNovo) 
  else
  if slConfig.Values['orc_impressora']>'' then
    gRecibo.Modelo[tipodoc_orcamento] := ModeloPadrao(tipodoc_orcamento, False, False);}
end;

procedure TdmOrc.Imprime(aUID: String);
begin
  if not gRecibo.DocOk(tipodoc_orcamento) then Exit;
  Dados.LoadReportFromDoc(repCustom);
  
  Preparar(aUID);
  repCustom.PrintOptions.Copies := gRecibo.Copias[tipodoc_orcamento];

  if Dados.IsDotMatrixRep then begin
    repCustom.Export(dmExp);
    PrintFile(gRecibo.Impressora[tipodoc_orcamento], dmExp.FileName, gRecibo.DirectPrintFormat);
  end else begin
    repCustom.PrintOptions.Printer := gRecibo.Impressora[tipodoc_orcamento];
    repCustom.Print;
  end;  
end;

function TdmOrc.ObtemParams(aArq: String): String;
begin
  Result := '';
  if not FileExists(aArq) then Exit;
  AddDatasets(repCustom);
  try
    repCustom.LoadFromFile(aArq);
  except
  end;
  repCustom.FileName := aArq;
  AddDatasets(repCustom);
  Result := ParamsUsedByRep(repCustom);
end;

procedure TdmOrc.Personalizar(aArq: String; aBobina, aSomenteTexto: Boolean);
var R : TfrxReport;  
begin
  if not FileExists(aArq) then begin
    if aBobina then begin
{      if aSomenteTexto then
        R := repSerial else
        R := repWinB;}
    end else
      R := repOrcamento;

    R.SaveToFile(aArq); 
  end;

  try
    repCustom.LoadFromFile(aArq);
  except
  end;
  AddDatasets(repCustom);
  repCustom.FileName := aArq;
  repCustom.DesignReport;    
end;

function TdmOrc.Preparar(aUID: String): Boolean;

procedure AddTot(aDescr: String; aValor: Currency);
begin
  mtTot.Append;
  mtTotDescr.Value := aDescr;
  mtTotValor.Value := aValor;
  mtTot.Post;
end;

begin
  Result := False;
  if not Tab.FindKey([aUID]) then Exit;

  mtTot.Active := False;
  mtTot.Active := True;

  if TabDesconto.Value<0.0001 then 
    AddTot(rsTotal, TabTotal.Value)
  else begin
    AddTot(rsSubTotal, TabTotal.Value);
    AddTot(rsDesconto, TabDesconto.Value);
    AddTot(rsTotalFinal, TabTotalFinal.Value);
  end;

  mtTot.First;

  repCustom.PrepareReport;
  Result := True;
end;

procedure TdmOrc.tClienteCalcFields(DataSet: TDataSet);
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

function TdmOrc.TranslateFields(aText, aDefaultTable: String): String;
var P: Integer;

procedure TranslateValue(aName, aValue: String);

function Existe: Boolean; 
begin
  P := Pos(aName, aText);
  Result := (P>0);
end;

begin
  aName := '['+aName+']';
  while Existe do begin
    Delete(aText, P, Length(aName));
    aText := Copy(aText, 1, P-1) + aValue + Copy(aText, P, High(Integer));
  end;
end;

procedure TranslateField(F: TField; aAlternateFieldName, aTableName, aAlternateTableName: String);
var S: String;
begin
  if F.IsNull then
    S := '' else
    S := F.AsString;

  if aTableName=aDefaultTable then begin
    TranslateValue(F.FieldName, S);
    if aAlternateFieldName>'' then
      TranslateValue(aAlternateFieldName, S);
  end;

  TranslateValue(aTableName+'.'+F.FieldName, S);
  if aAlternateFieldName>'' then
    TranslateValue(aTableName+'.'+aAlternateFieldName, S);
end;

procedure TranslateTable(T: TnxTable; aTableNameB: String);
var 
  I : Integer;
  aFieldNameB : String;
  sl : TStrings;
begin
  sl := GetTableFieldMap(T.TableName);
  
  for I := 0 to T.FieldCount-1 do with T.Fields[I] do begin
    if sl<>nil then
      aFieldNameB := sl.Values[FieldName] else
      aFieldNameB := '';
    TranslateField(T.Fields[I], aFieldNameB, T.TableName, aTableNameB);
  end;
end;

begin
  TranslateTable(Tab, '');
  TranslateTable(tCliente, '');
  Result := aText;
end;


function TdmOrc.TranslateFields2(aText, aDefaultTable: String): String;
var 
  P, pInicio: Integer;

function GetTable(S: String): TnxTable;
begin
  if SameText('Orcamento', S) then
    Result := Tab
  else
  if SameText('IOrcamento', S) then
    Result := tItens
  else
  if SameText('Cliente', S) then
    Result := tCliente
  else
    Result := nil;
end;  

procedure TranslateItem;
var 
  S: String;
  aTableName: String;
  T: TnxTable;
  F: TField;
  i : Integer;
  sl : TStrings;
begin
  S := Copy(aText, pInicio+1, (P-pInicio-1));
  I := Pos('.', S);
  if I>0 then begin
    aTableName := Copy(S, 1, I-1);
    Delete(S, 1, I);
  end else
    aTableName := aDefaultTable;
  T := GetTable(aTableName);    
  if T=nil then Exit;
  F := T.FindField(S);
  if F=nil then begin
    sl := GetTableFieldMap(aTableName);
    if sl=nil then Exit;
    S := sl.Values[S];
    if S>'' then
      F := T.FindField(S);
  end;
  if F<>nil then begin
    if F.IsNull then
      S := ''
    else
    case F.DataType of
      ftCurrency : S := CurrencyToStr(F.AsCurrency);
    else
      S := F.AsString;
    end;
    Delete(aText, pInicio, (P-pInicio)+1);  
    aText := Copy(aText, 1, pInicio-1) + S + Copy(aText, pInicio, High(Integer));
    P := pInicio + Length(S);
  end;
end;  

begin
  P := 0;
  pInicio := 0;
  while P<Length(aText) do begin
    Inc(P);

    if aText[P]='[' then begin
      if pInicio=0 then
        pInicio := P;
    end else
    if (pInicio>0) and (aText[p]=']') then begin
      TranslateItem;
      pInicio := 0;
    end;
  end; 
  Result := aText;
end;

initialization
  gOrcFields := TStringList.Create;

finalization
  gOrcFields.Free;  

end.





