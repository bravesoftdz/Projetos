unit ncDMdanfe;

interface

uses
  System.SysUtils, System.Classes, 
  frxClass,
  frxDBSet, frxDMPExport, frxDesgn, frxBarcode, Data.DB, kbmMemTable, LbCipher,
  LbClass;

type
  TdmXML_nfce = class(TDataModule)
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
    procedure mtPagCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure mtItemCalcFields(DataSet: TDataSet);
    
  private
    FXML : String;
    FCSC : String;
    FIdCSC : String;
    { Private declarations }
    procedure LoadFields(D: TDataset; aCaminho: String; aXML: String = '');
    procedure LoopFields(D: TDataset; aCaminho, aChave: String);

    function XMLsha1: String;

    function urlQRCode: String;

    function HashQRCode(S: String): String;

    function getQRCode: String;
  public
    { Public declarations }
    procedure LoadXML(aXML: String; aTroco: Double; aNomeFunc, aTran: String);
    
  end;

var
  dmXML_nfce: TdmXML_nfce;

implementation

uses Dialogs;

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

procedure TdmXML_nfce.DataModuleCreate(Sender: TObject);
begin
  FIdCSC := '000001';
  FCSC := '0123456789';
end;

function FmtFloat(E: Extended): String;
begin
  Str(E:0:2, Result);
end;

function TdmXML_nfce.getQRCode: String;
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

   Result := urlQRCode+S;
end;

function TdmXML_nfce.HashQRCode(S: String): String;
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

procedure TdmXML_nfce.LoadFields(D: TDataset; aCaminho: String; aXML: String = '');
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

procedure TdmXML_nfce.LoadXML(aXML: String; aTroco: Double; aNomeFunc, aTran: String);
var 
  S: String;
  I, P : Integer;    

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

begin
  FXML := aXML;
  
  mtIDE.Active := False;
  mtIDE.Active := True;
  mtIDE.Append;
  LoadFields(mtIDE, 'nfeProc,NFe,infNFe,ide');
  S := getXMLAttrib(aXML, 'Id', 'nfeProc,NFe,infNFe');
  Delete(S, 1, 3);
  mtIDEchNFe.Value := S;
  S := getXMLValue(aXML, 'DigestValue', 'nfeProc,NFe,infNFe,Signature,SignedInfo,Reference');
  mtIDEDigestValue.Value := S;

  if mtIDEtpEmis.Value<>9 then begin
    mtIDEnProt.Value := getXMLValue(aXML, 'nProt',    'nfeProc,protNFe,infProt');
    mtIDEdhRecbto.Value := getXMLValue(aXML, 'dhRecbto', 'nfeProc,protNFe,infProt');
    mtIDEmsg_prot.Value := 'Protocolo de autorização: '+mtIDEnProt.Value+'   '+fmt_dhEmi(mtIDEdhRecbto.Value);
  end;  

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
  while Pos('<'+DetStr+'>', aXML)>0 do begin
    mtItem.Append;
    mtItemnItem.Value := I;
    LoadFields(mtItem, 'nfeProc,NFe,infNFe,'+DetStr+',prod');
    LoadFields(mtItem, 'nfeProc,NFe,infNFe,'+DetStr+',prod,imposto');
    LoadFields(mtItem, 'nfeProc,NFe,infNFe,'+DetStr+',prod,ICMS,ICMS40');
    mtItem.Post;
    Inc(I);
  end;

  mtTotal.Active := False;
  mtTotal.Active := True;
  mtTotal.Append;
  LoadFields(mtTotal, 'nfeProc,NFe,infNFe,total,ICMSTot');
  mtTotal.Post;  

  mtPag.Active := False;
  mtPag.Active := True;
  LoopFields(mtPag, 'nfeProc,NFe,infNFe', 'pag');

  mtIDE.Edit;
  mtIDEqrCode.Value := getQRCode;
  mtIDE.Post;
end;

procedure TdmXML_nfce.LoopFields(D: TDataset; aCaminho, aChave: String);
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

procedure TdmXML_nfce.mtItemCalcFields(DataSet: TDataSet);
begin
  if Trim(mtItemcEAN.Value)='' then
    mtItemCodigo.Value := mtItemcProd.Value else
    mtItemCodigo.Value := mtItemcEAN.Value;
end;

procedure TdmXML_nfce.mtPagCalcFields(DataSet: TDataSet);
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

function TdmXML_nfce.urlQRCode: String;
begin
  Result := 'http://homnfce.sefaz.am.gov.br/nfceweb/consultarNFCe.jsp?';
end;

function TdmXML_nfce.XMLsha1: String;
begin
  lbSha1.HashString(FXML);
end;

end.
