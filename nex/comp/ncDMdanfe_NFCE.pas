unit ncDMdanfe_NFCE;

interface

uses
  System.SysUtils, System.Classes, 
  frxClass,
  frxDBSet, frxDMPExport, frxDesgn, frxBarcode, Data.DB, kbmMemTable, LbCipher,
  LbClass, frxExportPDF, LMDCustomComponent, LMDStrList, frxDMPClass,
  idHttp, IdMultipartFormData, web.httpApp;

type
  TdmDanfe_NFCE = class(TDataModule)
    mtIDE: TkbmMemTable;
    mtIDEcUF: TWordField;
    mtIDEcNF: TIntegerField;
    mtIDEnatOp: TStringField;
    mtIDEindPag: TWordField;
    mtIDEmod: TWordField;
    mtIDEserie: TWordField;
    mtIDEnNF: TIntegerField;
    mtIDEdhEmi: TStringField;
    mtIDEtpNF: TWordField;
    mtIDEidDest: TWordField;
    mtIDEcMunFG: TIntegerField;
    mtIDEtpImp: TWordField;
    mtIDEtpEmis: TWordField;
    mtIDEcDV: TWordField;
    mtIDEtpAmb: TWordField;
    mtIDEfinNFe: TWordField;
    mtIDEindFinal: TWordField;
    mtIDEindPres: TWordField;
    mtIDEprocEmi: TWordField;
    mtIDEverProc: TStringField;
    mtIDEid: TStringField;
    mtEmit: TkbmMemTable;
    mtEmitCNPJ: TStringField;
    mtEmitxNome: TStringField;
    mtEmitxFant: TStringField;
    mtEmitxLgr: TStringField;
    mtEmitxBairro: TStringField;
    mtEmitcMun: TStringField;
    mtEmitxMun: TStringField;
    mtEmitUF: TStringField;
    mtEmitCEP: TStringField;
    mtEmitcPais: TStringField;
    mtEmitxPais: TStringField;
    mtEmitfone: TStringField;
    mtEmitIE: TStringField;
    mtEmitCRT: TWordField;
    mtItem: TkbmMemTable;
    mtItemnItem: TWordField;
    mtItemcProd: TStringField;
    mtItemcEAN: TStringField;
    mtItemxProd: TStringField;
    mtItemCFOP: TWordField;
    mtItemuCom: TStringField;
    mtItemqCom: TFloatField;
    mtItemvUnCom: TFloatField;
    mtItemvProd: TFloatField;
    mtItemcEANTrib: TStringField;
    mtItemuTrib: TFloatField;
    mtItemqTrib: TFloatField;
    mtItemvUnTrib: TFloatField;
    mtItemindTot: TWordField;
    mtItemvTotTrib: TFloatField;
    mtItemorig: TWordField;
    mtItemCST: TWordField;
    mtItemCSOSN: TWordField;
    mtTotal: TkbmMemTable;
    mtTotalvBC: TFloatField;
    mtTotalvICMS: TFloatField;
    mtTotalvICMSDeson: TFloatField;
    mtTotalvBCST: TFloatField;
    mtTotalvST: TFloatField;
    mtTotalvProd: TFloatField;
    mtTotalvFrete: TFloatField;
    mtTotalvSeg: TFloatField;
    mtTotalvDesc: TFloatField;
    mtTotalvII: TFloatField;
    mtTotalvIPI: TFloatField;
    mtTotalvPIS: TFloatField;
    mtTotalvCOFINS: TFloatField;
    mtTotalvOutro: TFloatField;
    mtTotalvNF: TFloatField;
    mtTotalvTotTrib: TFloatField;
    mtPag: TkbmMemTable;
    mtPagtPag: TWordField;
    mtPagvPag: TFloatField;
    frBarCode: TfrxBarCodeObject;
    frDes: TfrxDesigner;
    frMatrixExp: TfrxDotMatrixExport;
    dbIDE: TfrxDBDataset;
    dbPag: TfrxDBDataset;
    dbItem: TfrxDBDataset;
    dbTotal: TfrxDBDataset;
    dbEmit: TfrxDBDataset;
    mtPagNomePag: TStringField;
    frRep: TfrxReport;
    mtIDEqrCode: TMemoField;
    mtIDEchNFe: TStringField;
    mtIDEDigestValue: TStringField;
    mtEmitnro: TStringField;
    lbSha1: TLbSHA1;
    mtItemCodigo: TStringField;
    mtDest: TkbmMemTable;
    mtIDEmsg_emissao: TStringField;
    mtDestCPF: TStringField;
    mtDestCNPJ: TStringField;
    mtDestidEstrangeiro: TStringField;
    mtDestxNome: TStringField;
    mtDestxLgr: TStringField;
    mtDestnro: TStringField;
    mtDestxBairro: TStringField;
    mtDestcMun: TStringField;
    mtDestxMun: TStringField;
    mtDestCEP: TStringField;
    mtDestfone: TStringField;
    mtDestid_consumidor: TStringField;
    mtDestindIEDest: TWordField;
    mtDestmostrar_end: TSmallintField;
    mtDestend_consumidor: TStringField;
    mtDestxCpl: TStringField;
    mtDestUF: TStringField;
    dbDest: TfrxDBDataset;
    mtIDEvia: TStringField;
    mtIDEdata_emissao: TStringField;
    mtIDEchave_acesso: TStringField;
    mtIDEnomefunc: TStringField;
    mtIDEnumtran: TStringField;
    mtIDEmsg_prot: TStringField;
    mtIDEnProt: TStringField;
    mtIDEdhRecbto: TStringField;
    mtEmitIM: TStringField;
    mtEmitend_loja: TStringField;
    mtEmitxCpl: TStringField;
    expPDF: TfrxPDFExport;
    mtDestemail: TStringField;
    repBobina: TfrxReport;
    repFolha: TfrxReport;
    frCustom: TfrxReport;
    xmlPreview: TLMDStrList;
    dbConfig: TfrxDBDataset;
    mtIDEurlconsulta: TStringField;
    mtTot: TkbmMemTable;
    mtTotNome: TStringField;
    mtTotValor: TStringField;
    dbTot: TfrxDBDataset;
    mtItemvlUnitario: TStringField;
    mtItemvlTotal: TStringField;
    mtTotalVlTotTrib: TStringField;
    mtItemNCM: TStringField;
    mtInfCpl: TkbmMemTable;
    mtInfCplinfCpl: TMemoField;
    dbInfCpl: TfrxDBDataset;
    mtItemvICMSST: TFloatField;
    mtItemvIPI: TFloatField;
    mtItemvDesc: TFloatField;
    procedure mtPagCalcFields(DataSet: TDataSet);
    procedure l(Sender: TObject);
    procedure mtItemCalcFields(DataSet: TDataSet);
    procedure mtTotalCalcFields(DataSet: TDataSet);
    procedure frCustomBeforePrint(Sender: TfrxReportComponent);
    
  private
    FXML : String;
    FCSC : String;
    FIdCSC : String;
    FurlQRCode : String;
    FCancelado : Boolean;
    { Private declarations }
    procedure LoadFields(D: TDataset; aCaminho: String; aXML: String = '');
    procedure LoopFields(D: TDataset; aCaminho, aChave: String);

    function XMLsha1: String;

    function HashQRCode(S: String): String;

    function getQRCode: String;
  public
    { Public declarations }
    procedure LoadXML(aXML: String; aTroco: Double; aNomeFunc, aTran, aIdCSC, aCSC: String; aTabConfig: TDataset; aUrls_qrcode_hom, aUrls_qrcode_prod, aUrls_Consulta: String; aCancelado: Boolean);
    procedure geraPDF(aArq: String);
    procedure EnviaEmail(aFromEmail, aFromName, aAssunto: String; aDest: String = '');

    function GetMSEmail(aFromEmail, aFromName, aAssunto: String; aDest: String = ''): TIdMultiPartFormDataStream;

    procedure LoadXMLExemplo;

    procedure AjustaImgLogo(R: TfrxReport);
    
    function ObtemParams(aArq: String): String;

    procedure Personalizar(aArq: String; aBobina: Boolean);

    function CreateReport(aArq: String): TfrxReport;

    procedure PreparaReport(R: TfrxReport);

    procedure LoadReport(aDoc: TBlobField; aPrinter: String);
  end;

var
  dmDanfe_NFCE: TdmDanfe_NFCE;

implementation

uses nexUrls, Windows, ncDebug, ncClassesBase, htmlCodec, ncHttp;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule13 }

function StrToHex(S: AnsiString): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do 
    Result := Result + IntToHex(Byte(S[I]), 2);

  Result := LowerCase(Result);
end;

function MeuStrToFloat(S: String): Extended;
var Code: Integer;
begin
  Val(S, REsult, Code);
end;

function getXMLValue(aXML, aCampo: String; aCaminho: string = ''): String;
var
  sCaminho: String;
  P : Integer;
  
function GetProxCaminho: Boolean;
begin
  Result := False;
  aCaminho := Trim(aCaminho);
  if aCaminho='' then Exit;

  P := Pos(',', aCaminho);
  if P>0 then begin
    sCaminho := Copy(aCaminho, 1, P-1);
    Delete(aCaminho, 1, P);
  end else begin
    sCaminho := aCaminho;
    aCaminho := '';
  end;  
  Result := (sCaminho>'');
end;

begin
  Result := '';
  if aCaminho>'' then begin
    while GetProxCaminho do begin
      P := Pos('<'+sCaminho+'>', aXML);
      if P=0 then 
        P := Pos('<'+sCaminho+' ', aXML);
      if P>0 then 
        Delete(aXML, 1, P + 1 + Length(sCaminho));                        
    end;
  
    P := Pos('</'+sCaminho+'>', aXML);
    if P > 0 then
      Delete(aXml, P, High(Integer)) else
      Exit;
  end;

  P := Pos('<'+aCampo+'>', aXML);
  if P > 0 then begin
    Delete(aXML, 1, P + 1 + Length(aCampo));
    P := Pos('</'+aCampo+'>', aXML);
    if P>0 then 
      Result := Trim(Copy(aXML, 1, P-1)) else
      Result := aXML;
  end;
  Result := htmlCodec.htmlDecodeStr(Result);
end;

function FiltraCaminho(aXML : String; aCaminho: string = ''): String;
var
  sCaminho: String;
  P : Integer;
  
function GetProxCaminho: Boolean;
begin
  Result := False;
  aCaminho := Trim(aCaminho);
  if aCaminho='' then Exit;

  P := Pos(',', aCaminho);
  if P>0 then begin
    sCaminho := Copy(aCaminho, 1, P-1);
    Delete(aCaminho, 1, P);
  end else begin
    sCaminho := aCaminho;
    aCaminho := '';
  end;  
  Result := (sCaminho>'');
end;

begin
  Result := '';
  while GetProxCaminho do begin
    P := Pos('<'+sCaminho+'>', aXML);
    if P=0 then 
      P := Pos('<'+sCaminho+' ', aXML);
    if P>0 then 
      Delete(aXML, 1, P + 1 + Length(sCaminho));                        
  end;

  P := Pos('</'+sCaminho+'>', aXML);
  if P > 0 then
    Delete(aXml, P, High(Integer));

  Result := aXml;  
end;

function getXMLAttrib(aXML, aAttrib: String; aCaminho: string = ''): String;
var
  sCaminho: String;
  P : Integer;
  
function GetProxCaminho: Boolean;
begin
  Result := False;
  aCaminho := Trim(aCaminho);
  if aCaminho='' then Exit;
  
  P := Pos(',', aCaminho);
  if P>0 then begin
    sCaminho := Copy(aCaminho, 1, P-1);
    Delete(aCaminho, 1, P);
  end else begin
    sCaminho := aCaminho;
    aCaminho := '';
  end;  
  Result := (sCaminho>'');
end;

begin
  Result := '';
  while GetProxCaminho do begin
    P := Pos('<'+sCaminho+'>', aXML);
    if P=0 then 
      P := Pos('<'+sCaminho+' ', aXML);
    if P>0 then 
      Delete(aXML, 1, P + 1 + Length(sCaminho));     
  end;

  P := Pos(aAttrib+'=', aXML);
  if P > 0 then begin
    Delete(aXML, 1, P+Length(aAttrib)+1);
    if P>0 then begin
      P := Pos('"', aXML);
      if P>0 then 
        Result := Trim(Copy(aXML, 1, P-1));
    end;  
  end;
end;

procedure TdmDanfe_NFCE.AjustaImgLogo(R: TfrxReport);
var 
  P : TfrxPictureView;
  F : TField;
begin
  P := nil;
  if R.FindObject('imgLogo')<>nil then
    P := TfrxPictureView(R.FindObject('imgLogo'));
  if P=nil then Exit;
  F := dbConfig.DataSet.FindField('DocParam_Logo');
  if (F<>nil) and (F.IsNull) then 
    P.DataField := '' else
    P.DataField := 'DocParam_Logo';
end;

function TdmDanfe_NFCE.CreateReport(aArq: String): TfrxReport;
begin
  Result := TfrxReport.Create(Self);
  try
    LoadXMLExemplo;
    Result.LoadFromFile(aArq);
    PreparaReport(Result);
  except
    Result.Free;
    raise;
  end;
end;

procedure TdmDanfe_NFCE.l(Sender: TObject);
begin
  FIdCSC := '000001';
  FCSC := '0123456789';
  LoadXMLExemplo;
end;

function FmtFloat(E: Extended): String;
begin
  Str(E:0:2, Result);
end;

function TdmDanfe_NFCE.GetMSEmail(aFromEmail, aFromName, aAssunto: String; aDest: String = ''): TIdMultiPartFormDataStream;
var
  ms : TIdMultiPartFormDataStream;
  i : integer;
  S, aRes, sArqXML, sArqPDF: String;
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

begin
  if aDest='' then aDest := mtDestemail.Value;
  if aDest='' then Exit;
  S := ExtractFilePath(ParamStr(0))+'Email\';
  try
    sArqPDF := S+'DANFE_'+mtIDEchNFe.Value+'.pdf';
    geraPDF(sArqPDF);
  
    sArqXML := S+'NFCe_'+mtIDEchNFe.Value+'.xml';
  
    slDebug := TStringList.Create;
    try
      slDebug.Text := FXML;
      slDebug.SaveToFile(sArqXML);
    finally
      slDebug.Free;
    end;  

    ms := TIdMultiPartFormDataStream.Create;
    try
      slDebug := TStringList.Create;
      try
        AddParam('from_name', aFromName);
        AddParam('from_email', aFromEmail);
        AddParam('to[][email]', aDest);
        AddParam('to[][name]', '');
        AddParam('subject', aAssunto);
        AddParam('body', 'Segue anexa nota fiscal da sua compra realizada em '+mtIDEdata_emissao.Value+' na loja '+aFromName+'.');
        AddParam('tags', 'nfce');
        AddArq('file', sArqPDF, 'application/pdf');
        AddArq('file2', sArqXML, 'application/xml');
        DebugMsg('ncDMdanfe_NFCE.GeraMSEmail - Parametros: '+sLineBreak+slDebug.Text);
      finally  
        slDebug.Free;
      end;

      ms.Seek(0,0);
      Result := ms;
    except
      ms.Free;
      raise;
    end;
  finally  
    if FileExists(sArqPDF) then Windows.DeleteFile(PChar(sArqPDF));
    if FileExists(sArqXML) then Windows.DeleteFile(PChar(sArqXML));
  end;  
end;

procedure TdmDanfe_NFCE.EnviaEmail(aFromEmail, aFromName, aAssunto: String; aDest: String = '');
var
  ms : TIdMultiPartFormDataStream;
  i : integer;
  S, aRes, sArqXML, sArqPDF: String;
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

begin
  S := ExtractFilePath(ParamStr(0))+'Email\';

  if aDest='' then aDest := mtDestemail.Value;
  if aDest='' then Exit;

  sArqPDF := S+'DANFE_'+mtIDEchNFe.Value+'.pdf';
  geraPDF(sArqPDF);
  
  sArqXML := S+'NFCe_'+mtIDEchNFe.Value+'.xml';
  
  slDebug := TStringList.Create;
  try
    slDebug.Text := FXML;
    slDebug.SaveToFile(sArqXML);
  finally
    slDebug.Free;
  end;  

  ms := TIdMultiPartFormDataStream.Create;
  try
    try
      slDebug := TStringList.Create;
      try
        AddParam('from_name', aFromName);
        AddParam('from_email', aFromEmail);
        AddParam('to[][email]', aDest);
        AddParam('to[][name]', '');
        AddParam('subject', aAssunto);
        AddParam('body', 'Segue anexa nota fiscal da sua compra realizada em '+mtIDEdata_emissao.Value+' na loja '+aFromName+'.');
        AddParam('tags', 'nfce');
        AddArq('file', sArqPDF, 'application/pdf');
        AddArq('file2', sArqXML, 'application/xml');
        DebugMsg('ncDMdanfe_NFCE.EnviarEmail - Parametros: '+sLineBreak+slDebug.Text);
      finally  
        slDebug.Free;
      end;

      ms.Seek(0,0);

      with ThttpThreadPost.Create(gUrls.Url('mailer'), ms, 5) do Resume;
      ms := nil;
      
      DebugMsg('ncDMdanfe_NFCE.EnviarEmail - OK!');
    except
      on e:exception do begin
        DebugMsg('ncDMdanfe_NFCE.EnviarEmail - Exception: '+e.Message); // do not localize
        raise;
      end;
    end;
  finally
    if FileExists(sArqPDF) then Windows.DeleteFile(PChar(sArqPDF));
    if FileExists(sArqXML) then Windows.DeleteFile(PChar(sArqXML));
    if ms<>nil then ms.Free;
  end;
end;

procedure TdmDanfe_NFCE.frCustomBeforePrint(Sender: TfrxReportComponent);
var 
  P : TfrxPictureView;
  S : String;
begin
  if Sender is TfrxPictureView then begin
    P := Sender as TfrxPictureView;
    S := P.DataField;
    with dbConfig do 
    if (S>'') and (DataSet.FindField(S)<>nil) then
     if DataSet.FieldByName(S).IsNull then 
       P.DataField := '';
  end;

  if SameText(Sender.Name, 'msgcan') and FCancelado then
    Sender.Visible := True;
end;

procedure TdmDanfe_NFCE.geraPDF(aArq: String);
begin
  try
    DebugMsg('TdmDanfe_NFCE.geraPDF - aArq: '+aArq);
    frRep.EngineOptions.SilentMode := True;
    frRep.EngineOptions.newSilentMode := simReThrow;
    if frRep.PrepareReport then begin
      expPDF.FileName := aArq;
      frRep.Export(expPDF);
    end;  
    DebugMsg('TdmDanfe_NFCE.geraPDF Ok');
  except
    on E: Exception do begin
      DebugMsg('TdmDanfe_NFCE - Exception: '+E.Message);
      raise;                   
    end;
  end;  
end;

function TdmDanfe_NFCE.getQRCode: String;
var S, cDest: String;

procedure addpar(aName, aValue: String);
begin
  if S>'' then S := S+'&';
  S := S + aName + '=' + aValue;
end;

begin
  if mtDestCPF.Value > '' then 
    cDest := mtDestCPF.Value 
  else
  if mtDestCNPJ.Value > '' then
    cDest  := mtDestCNPJ.Value
  else
  if mtDestidEstrangeiro.Value > '' then
    cDest := mtDestidEstrangeiro.Value
  else
    cDest := '';
    
   S := '';
   addpar('chNFe', mtIDEchNFe.Value);
   addpar('nVersao', '100');
   addpar('tpAmb', mtIDEtpAmb.AsString);
   if cDest>'' then addpar('cDest', cDest);
   addpar('dhEmi', StrToHex(mtIDEdhEmi.Value));
   addpar('vNF', FmtFloat(mtTotalvNF.Value));
   addpar('vICMS', FmtFloat(mtTotalvICMS.Value));
   addpar('digVal', StrToHex(mtIDEDigestValue.Value));
   addpar('cIdToken', FIdCSC);

   addpar('cHashQRCode', HashQRCode(S));

   Result := FurlQRCode;

   if Pos('?', Result)>0 then
     Result := Result + '&' + S else
     Result := Result + '?' + S;
end;

function TdmDanfe_NFCE.HashQRCode(S: String): String;
var 
  Digest : TSHA1Digest;
  I : Integer;
begin
  lbSha1.HashString(S+FCSC);
  lbSha1.GetDigest(Digest);
  Result := '';
  for I := 0 to 19 do
    Result := Result + IntToHex(Digest[I], 2);
end;

procedure TdmDanfe_NFCE.LoadFields(D: TDataset; aCaminho: String; aXML: String = '');
var 
  I : Integer;
  S : String;
  F : TField;
begin
  if aXML='' then aXML := FXML;
  for i := 0 to D.Fields.Count-1 do begin
    F := D.Fields[I];
    S := getXMLValue(aXML, F.FieldName, aCaminho);
    if S>'' then
    if F.DataType in [ftFloat, ftCurrency] then
      F.AsFloat := MeuStrToFloat(S) else
      F.AsString := S;
  end;  
end;

procedure TdmDanfe_NFCE.LoadReport(aDoc: TBlobField; aPrinter: String);
var S: TMemoryStream;
begin
  DebugMsg('TdmDanfe_NFCE.LoadReport 1');
  S := TMemoryStream.Create;
  try
    aDoc.SaveToStream(S);
    S.Position := 0;
    frRep.LoadFromStream(S);
    if aPrinter>'' then begin
      frRep.PrintOptions.Printer := aPrinter;
      frRep.PrintOptions.ShowDialog := False;
      PreparaReport(frRep);
      frRep.Print;
    end;
  finally
    S.Free;
  end;
  DebugMsg('TdmDanfe_NFCE.LoadReport 2');
end;

function fmt_cpf(S: String): String;
begin
  Result := copy(S, 1, 3)+'.'+copy(S, 4, 3)+'.'+copy(S, 7, 3)+'-'+copy(S, 10, 2);
end;

function fmt_cnpj(S: String): String;
begin
  case Length(s) of
    13 : result := copy(S, 1, 1)+'.'+copy(s, 2, 3)+'.'+copy(S, 5, 3)+'/'+copy(s, 8, 4)+'-'+copy(s, 12, 2);
    14 : result := copy(S, 1, 2)+'.'+copy(s, 3, 3)+'.'+copy(S, 6, 3)+'/'+copy(s, 9, 4)+'-'+copy(s, 13, 2);
    15 : result := copy(S, 1, 3)+'.'+copy(s, 4, 3)+'.'+copy(S, 7, 3)+'/'+copy(s, 10, 4)+'-'+copy(s, 14, 2);
  else
    Result := S;
  end;   
end;

function fmt_dhEmi(S: String): String;
begin
  Result := copy(S, 9, 2)+'/'+copy(S, 6, 2)+'/'+copy(S, 1, 4)+' '+copy(S, 12, 8);
end;

function fmt_chnfe(S: String): String;
var I : integer;
begin
  Result := '';
  while (S>'') do begin
    if Result>'' then Result := Result + ' ';
    Result := Result + copy(S, 1, 4);
    Delete(S, 1, 4);
  end;
end;

function FormatValor(aValor: Extended): String;
begin
  Str(aValor:0:2, Result);
end;

function RemoveCData(S: String): String;
var P: integer;
begin
  S := Trim(S);
  if Pos('<![CDATA[', S)=1 then begin
    Delete(S, 1, 9);
    S := Copy(S, 1, Pos(']]>', S)-1);
  end;
  Result := S;
end;

procedure TdmDanfe_NFCE.LoadXML(aXML: String; aTroco: Double; aNomeFunc, aTran, aIdCSC, aCSC: String; aTabConfig: TDataset; aUrls_qrcode_hom, aUrls_qrcode_prod, aUrls_Consulta: String; aCancelado: Boolean);
var 
  S: String;
  I, P, T : Integer;    

function DetStr: String;
begin
  Result := 'det nItem="' + IntToStr(I)+'"';
end;

procedure addend(item: string);
begin
  if Trim(item)='' then Exit;
  if mtDestend_consumidor.Value > '' then
    mtDestend_consumidor.Value := mtDestend_consumidor.value + ', ';
  mtDestend_consumidor.Value := mtDestend_consumidor.Value + item;
end;

procedure addendl(item: string);
begin
  if Trim(item)='' then Exit;
  if mtEmitend_loja.Value > '' then
    mtEmitend_Loja.Value := mtEmitend_loja.value + ', ';
  mtEmitend_loja.Value := mtEmitend_loja.Value + item;
end;

procedure AddTot(aNome, aValor: String);
begin
  mtTot.Append;
  mtTotNome.Value := aNome;
  mtTotValor.Value := aValor;
  mtTot.Post;
end;

begin
  FCancelado := aCancelado;
  FXML := aXML;
  FCSC := aCSC;
  FIdCSC := aIdCSC;
  
  if Assigned(aTabConfig) then
    dbConfig.DataSet := aTabConfig
  else
  if Assigned(gTabConfigNF) then
    dbConfig.Dataset := gTabConfigNF;
  
  mtIDE.Active := False;
  mtIDE.Active := True;
  mtIDE.Append;
  LoadFields(mtIDE, 'nfeProc,NFe,infNFe,ide');
  S := getXMLAttrib(aXML, 'Id', 'nfeProc,NFe,infNFe');
  Delete(S, 1, 3);
  mtIDEchNFe.Value := S;
  mtIDEQrCode.value := RemoveCData(getXMLValue(aXML, 'qrCode', 'nfeProc,NFe,infNFeSupl'));
  S := getXMLValue(aXML, 'DigestValue', 'nfeProc,NFe,infNFe,Signature,SignedInfo,Reference');
  mtIDEDigestValue.Value := S;

  if mtIDEtpEmis.Value<>9 then begin
    mtIDEnProt.Value := getXMLValue(aXML, 'nProt',    'nfeProc,protNFe,infProt');
    mtIDEdhRecbto.Value := getXMLValue(aXML, 'dhRecbto', 'nfeProc,protNFe,infProt');
    mtIDEmsg_prot.Value := 'Protocolo de autorização: '+mtIDEnProt.Value+'   '+fmt_dhEmi(mtIDEdhRecbto.Value);
  end;  

  if mtIDEtpAmb.Value=2 then begin
    mtIDEMsg_Emissao.Value := 'EMITIDA EM AMBIENTE DE HOMOLOGAÇÃO - SEM VALOR FISCAL';
    if mtIDEtpEmis.Value=9 then
      mtIDEMsg_Emissao.Value := mtIDEmsg_emissao.Value + sLineBreak + 'EMITIDA EM CONTINGÊNCIA';
  end else
  if mtIDEtpEmis.Value=9 then
    mtIDEmsg_emissao.Value := 'EMITIDA EM CONTINGÊNCIA' else
    mtIDEmsg_emissao.Value := 'EMISSÃO NORMAL';

  mtIDEvia.Value := 'Via Consumidor';
  mtIDEdata_emissao.Value := fmt_dhEmi(mtIDEdhEmi.Value);  
  mtIDEchave_acesso.Value := fmt_chNFe(mtIDEchNFe.Value);
  mtIDEnomefunc.Value := aNomeFunc;
  mtIDEnumtran.Value := aTran;
  mtIDE.Post;

  mtEmit.Active := False;
  mtEmit.Active := True;
  mtEmit.Append;
  LoadFields(mtEmit, 'nfeProc,NFe,infNFe,emit');
  LoadFields(mtEmit, 'nfeProc,NFe,infNFe,emit,enderEmit');

  addendl(mtEmitxLgr.Value);
  addendl(mtEmitnro.Value);
  addendl(mtEmitxCpl.Value);
  addendl(mtEmitxBairro.Value);
  addendl(mtEmitxMun.Value);
  addendl(mtEmitUF.Value);

  if mtEmitFone.Value>'' then begin
    if mtEmitend_loja.Value>'' then mtEmitEnd_loja.Value := mtEmitend_loja.Value + ' - ';
    mtEmitend_loja.Value := mtEmitend_loja.Value + 'Tel: ' + mtEmitFone.Value;
  end;
      
  mtEmit.Post;

  mtDest.Active := False;
  mtDest.Active := True;
  mtDest.Append;
  LoadFields(mtDest, 'nfeProc,NFe,infNFe,dest');

  if mtDestindIEDest.Value<>9 then begin
    mtDestmostrar_End.Value := 1;
    addend(mtDestxLgr.Value);
    addend(mtDestnro.Value);
    addend(mtDestxCpl.Value);
    addend(mtDestxBairro.Value);
    addend(mtDestxMun.Value);
    addend(mtDestUF.Value);
  end;

  S := '';

  if mtDestCPF.Value>'' then 
    S := 'CPF: '+fmt_cpf(mtDestCPF.Value)
  else
  if mtDestCNPJ.Value>'' then 
    S := 'CNPJ: '+fmt_cnpj(mtDestCNPJ.Value)
  else
  if mtDestidEstrangeiro.Value>'' then
    S := 'Doc.Estrangeiro: '+mtDestidEstrangeiro.Value;

  if mtDestxNome.Value>'' then begin
    if S>'' then S := S + ' - ';
    S := S + mtDestxNome.Value;
  end;

  if S>'' then 
    mtDestid_consumidor.Value := S else
    mtDestid_consumidor.Value := 'Consumidor não identificado';
  mtDest.Post;  

  mtItem.Active := False;
  mtItem.Active := True;
  I := 1;
  while (I<1000) do begin
    if Pos('<'+DetStr+'>', aXML)>0 then begin
      mtItem.Append;
      mtItemnItem.Value := I;
      LoadFields(mtItem, 'nfeProc,NFe,infNFe,'+DetStr+',prod');
      LoadFields(mtItem, 'nfeProc,NFe,infNFe,'+DetStr+',prod,imposto');
      LoadFields(mtItem, 'nfeProc,NFe,infNFe,'+DetStr+',prod,ICMS,ICMS40');
      mtItem.Post;
    end;  
    Inc(I);
  end;

  mtTotal.Active := False;
  mtTotal.Active := True;
  mtTotal.Append;
  LoadFields(mtTotal, 'nfeProc,NFe,infNFe,total,ICMSTot');

  mtInfCpl.Active := False;
  mtInfCpl.Active := True;

  S := infCplToObs(getXMLValue(aXml, 'infCpl', 'nfeProc,NFe,infNFe,infAdic'));
  if Trim(S)>'' then begin
    mtInfCpl.Append;
    mtInfCplInfCpl.Value := S;
    mtInfCpl.Post;
  end;
  
  mtTotal.Post;  

  mtPag.Active := False;
  mtPag.Active := True;
  LoopFields(mtPag, 'nfeProc,NFe,infNFe', 'pag');

  if Trim(mtIDEqrCode.Value)='' then begin
    if mtIDEtpAmb.value=2 then
      FurlQRCode := GetValueFromStr(aUrls_qrcode_hom, mtEmitUF.Value) else
      FurlQRCode := GetValueFromStr(aUrls_qrcode_prod, mtEmitUF.Value); 
    DebugMsg('TdmDanfe_NFCE.LoadXML - FurlQRCode = ' + FurlQRCode);
    
    mtIDE.Edit;
    mtIDEqrCode.Value := getQRCode;
    mtIDEurlconsulta.Value := GetValueFromStr(aUrls_Consulta, mtEmitUF.Value);
    mtIDE.Post;
  end;
  DebugMsg('TdmDanfe_NFCE.LoadXML - mtIDEqrCode = '+mtIDEqrCode.Value);

  mtIDE.Edit;
  mtIDEurlconsulta.Value := GetValueFromStr(aUrls_Consulta, mtEmitUF.Value);
  mtIDE.Post;

  DebugMsg('TdmDanfe_NFCE.LoadXML - URL de consulta: ' + mtIDEurlconsulta.Value);

  mtTot.Active := False;
  mtTot.Active := True;
  AddTot('Qtd. Total de Itens', IntToStr(mtItem.RecordCount));
  
  if (mtTotalvDesc.Value>0) or (mtTotalvFrete.Value>0) then 
    AddTot('Sub-Total', FormatValor(mtTotalvProd.Value));
    
  if (mtTotalvDesc.Value>0) then 
    AddTot('Desconto', FormatValor(mtTotalvDesc.Value));
    
  if (mtTotalvFrete.Value>0) then 
    AddTot('Taxa de Entrega', FormatValor(mtTotalvFrete.Value));
    
  AddTot('Valor Total R$', FormatValor(mtTotalvNF.Value));
  AddTot('FORMA DE PAGAMENTO', 'VALOR PAGO');
  mtPag.First;

  if aTroco>0.001 then
  if not mtPag.IsEmpty then begin
    mtPag.Edit;
    mtPagvPag.Value := mtPagvPag.Value + aTroco;
    mtPag.Post;
  end;
  
  while not mtPag.Eof do begin
    AddTot(mtPagNomePag.Value, FormatValor(mtPagvPag.Value));
    mtPag.Next;
  end;

  if aTroco>0.001 then
    AddTot('Troco', FormatValor(aTroco));
    
  mtTot.First;
end;

procedure TdmDanfe_NFCE.LoadXMLExemplo;
begin
  LoadXML(xmlPreview.Items.Text, 0, 'Teste', '123456789', '000001', '0123456789', nil, '', '', '', False);
end;

procedure TdmDanfe_NFCE.LoopFields(D: TDataset; aCaminho, aChave: String);
var 
  aXML, S: String;
  P: Integer;
begin
  aXML := FiltraCaminho(FXML, aCaminho);
  P := Pos('<'+aChave+'>', aXML);
  while P>0 do begin
    Delete(aXML, 1, P+Length(aChave)+1);
    P := Pos('</'+aChave+'>', aXML);
    if P>0 then begin
      S := copy(aXML, 1, P-1);
      D.Append;
      LoadFields(D, '', S);
      D.Post;
      Delete(S, 1, P+Length(aChave)+2);
    end;
    P := Pos('<'+aChave+'>', aXML);
  end;
end;

procedure TdmDanfe_NFCE.mtItemCalcFields(DataSet: TDataSet);
begin
  if Trim(mtItemcEAN.Value)='' then
    mtItemCodigo.Value := mtItemcProd.Value else
    mtItemCodigo.Value := mtItemcEAN.Value;

  mtItemvlUnitario.Value := FormatValor(mtItemvUnCom.Value);  
  mtItemvlTotal.Value    := FormatValor(mtItemvProd.Value);
end;

procedure TdmDanfe_NFCE.mtPagCalcFields(DataSet: TDataSet);
begin
  case mtPagtPag.Value of
    01: mtPagNomePag.Value := 'Dinheiro';
    02: mtPagNomePag.Value := 'Cheque';
    03: mtPagNomePag.Value := 'Cartão de Crédito';
    04: mtPagNomePag.Value := 'Cartão de Débito';
    05: mtPagNomePag.Value := 'Crédito Loja';
    10: mtPagNomePag.Value := 'Vale Alimentação';
    11: mtPagNomePag.Value := 'Vale Refeição';
    12: mtPagNomePag.Value := 'Vale Presente';
    13: mtPagNomePag.Value := 'Vale Combustível';
    99: mtPagNomePag.Value := 'Outros';
  else
    mtPagNomePag.Value := 'tPag: '+mtPagtPag.AsString;
  end;  
end;


procedure TdmDanfe_NFCE.mtTotalCalcFields(DataSet: TDataSet);
begin
  mtTotalVlTotTrib.Value := FormatValor(mtTotalvTotTrib.Value);
end;

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


function TdmDanfe_NFCE.ObtemParams(aArq: String): String;
begin
  Result := '';
  if not FileExists(aArq) then Exit;
  frCustom.LoadFromFile(aArq);
  frCustom.FileName := aArq;
  Result := ParamsUsedByRep(frCustom);
end;

procedure TdmDanfe_NFCE.Personalizar(aArq: String; aBobina: Boolean);
var R : TfrxReport;  
begin
  if not FileExists(aArq) then begin
    if aBobina then 
      R := repBobina else
      R := repFolha;
    R.SaveToFile(aArq); 
  end;

  try
    frCustom.LoadFromFile(aArq);
  except
  end;
  frCustom.FileName := aArq;
  frCustom.DesignReport;    
end;

procedure TdmDanfe_NFCE.PreparaReport(R: TfrxReport);
begin
  DebugMsg('TdmDanfe_NFCE.PreparaReport - R.name: '+R.Name);
  AjustaImgLogo(R);
  R.OnBeforePrint := frCustomBeforePrint;
  R.PrepareReport;
end;

function TdmDanfe_NFCE.XMLsha1: String;
begin
  lbSha1.HashString(FXML);
end;


end.
