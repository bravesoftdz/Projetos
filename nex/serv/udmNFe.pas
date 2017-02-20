unit udmNFe;

interface

uses
  System.SysUtils, System.Classes, System.IniFiles, spdNFCe, System.Contnrs,
  spdNFCeDataSets, Data.DB, nxdb, nxllComponent, nxsdServerEngine,
  nxreRemoteServerEngine, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, madTools, Vcl.ExtCtrls, Windows, Messages,
  spdNFCeType, ncDMServ, ActiveX, DateUtils;

type
  TdmNFe = class(TDataModule)
    nfceDS: TspdNFCeDataSets;
    nfceComp: TspdNFCe;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    _NumeroLote : String;
    _Dir        : String;
    serie       : String;
    slXML       : TStrings;
    slRet       : TStrings;
    vTotImp     : Currency;
    DM          : TDM;
    sErroValid  : String;

    function Contingencia: Boolean;

    function CalcImp: Currency;

    function ProxNumNFCe: Cardinal;

    procedure ValidaXML;

    { Private declarations }
    procedure nfce_gerarxml;
    procedure nfce_criar;
  public
    procedure GerarNFE;

    procedure Init(aDM : TDM);

    function GetCertificados: TStrings;
    { Public declarations }
  end;

  function getXMLValue(aXML, aCampo: String; aCaminho: string = ''): String;

var
  dmNFe: TdmNFe;
  
  gProcessNFEWindow : Cardinal = 0;
  TerminarProcNFE : Boolean = False;
  gContingencia : Byte = 0;
  
const
  cont_null   = 0;
  cont_off    = 1;
  cont_on     = 2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ncServBD, ncDebug, ncClassesBase, udmNFe_trans, ncMsgCom, math;

{$R *.dfm}

function RetiraBrancosExcedentes(Texto: string): string;
begin
  while Pos('  ', Texto) > 0 do
    Texto := StringReplace(Texto, '  ', ' ', [rfReplaceAll]);
  Result := Texto;
end;

function LimpaXML(S: String): String;
begin
  S := RetiraBrancosExcedentes(S); // deixa apenas 1 espaço
  S := StringReplace(S, '> <', '><', [rfIgnoreCase, rfReplaceAll]);
  S := StringReplace(S, ' </', '</', [rfIgnoreCase, rfReplaceAll]);
  S := StringReplace(S, '> ', '>', [rfIgnoreCase, rfReplaceAll]);
  S := StringReplace(S, #$D#$A, '', [rfIgnoreCase, rfReplaceAll]);
  S := StringReplace(S, #$D, '', [rfIgnoreCase, rfReplaceAll]);
  Result := S;
end;

function getXMLValue(aXML, aCampo: String; aCaminho: string = ''): String;
var
  sCaminho: String;
  P : Integer;
  
function GetProxCaminho: Boolean;
begin
  aCaminho := Trim(aCaminho);
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
    if P=0 then P := Pos('<'+sCaminho+' ', aXML);
    if P>0 then 
      Delete(aXML, 1, P + 1 + Length(sCaminho));                        
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

procedure ProcessMessages;
var Msg : TMsg;
begin
  while PeekMessage(Msg, 0, 0, 0, PM_REMOVE) do  begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
  end;
end;

function getImp(aValor, aImp: Currency): Currency;
begin
  Result := aValor * aImp / 100;
end;


function TdmNFe.CalcImp: Currency;
var V: Currency;
begin
  with DM do begin
    V := tMovEstTotal.Value - tMovEstDesconto.Value;

    if tBRTribOrigem.Value in [1, 2, 6, 7] then
      Result := getImp(V, tNCMImpostoFed_Imp.Value) else
      Result := getImp(V, tNCMImpostoFed_Nac.Value);
    
    Result := Result + getImp(V, tNCMImpostoEst.Value) + getImp(V, tNCMImpostoMun.Value);
  end;
end;


function CSOSN_ST(aCod: Word): Boolean;
begin
  Result := (aCod=201) and (aCod=202) and (aCod=203);
end;

function CST_ST(aCod: Word): Boolean;
begin
  Result := (aCod=30) and (aCod=60) and (aCod=70);
end;

function TdmNFe.Contingencia: Boolean;
begin
  with DM do begin
    tAuxNFE.IndexName := 'ItpAmbStatus';
    if gContingencia=cont_null then 
      if tAuxNFE.FindKey([tNFConfigtpAmb.Value, nfestatus_contingencia]) then
        gContingencia := cont_on else
        gContingencia := cont_off;
  end;      
  Result := (gContingencia=cont_on);    
end;

procedure TdmNFe.DataModuleCreate(Sender: TObject);
begin
  slXML := TStringList.Create;
  slRet := TStringList.Create;
end;

procedure TdmNFe.DataModuleDestroy(Sender: TObject);
begin
  slXML.Free;
  slRet.Free;
end;

procedure TdmNFe.GerarNFE;
var
  Save1, Save2: String;
  P : PmsgNFEUpdated;
begin
  Save1 := DM.tMovEst.IndexName;
  Save2 := DM.tPagEsp.IndexName;
  
  with DM do 
  try
    tNFE.Append;
    nfce_criar;
    nfce_gerarxml;

    ValidaXML;

    if sErroValid>'' then begin
      tNFEStatus.Value := nfetran_erro;
      tNFEStatusNF.Value := 9999;
      tNFENumero.Clear;
      tNFExMotivo.Value := sErroValid;
    end;

    tNFE.Post;

    tTran.Edit;
    tTranTipoNFE.Value   := tiponfe_nfce;
    tTranStatusNFE.Value := tNFEStatus.Value;
    tTranChaveNFE.Value  := tNFEChave.Value;
    tTranAmbNFe.Value    := tNFEtpAmb.Value;
    tTran.Post;

    case tNFEStatus.Value of
      nfestatus_transmitir : {TncTransmiteNFe.Create(tTranUID.AsGuid)};
      
      nfestatus_erro, nfestatus_contingencia : begin
        New(P);
        P^.msgTran := tTranUID.AsGuid;
        PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);
      end;  
    end;
  finally
    tMovEst.IndexName := Save1;
    tPagEsp.IndexName := Save2;
  end;  
end;

function TdmNFe.GetCertificados: TStrings;
begin
  Result := TStringList.Create;
  nfceComp.ListarCertificados(Result);
end;

procedure TdmNFe.Init(aDM: TDM);
var S: String;
begin
  DM := aDM;
  with DM do begin
    nfceComp.UF := tNFConfigEnd_UF.Value;
    nfceComp.CNPJ := tNFConfigCNPJ.Value;
    S := ExtractFilePath(ParamStr(0));
    nfceComp.DiretorioEsquemas := S+'NFCE\Esquemas\';
    nfceComp.DiretorioTemplates := S+'NFCE\Templates\';
    nfceComp.DiretorioLog := S+'NFCE\Log';
    nfceComp.ArquivoServidoresHom := S+'NFCE\nfceServidoresHom.ini';
    nfceComp.ArquivoServidoresProd := S+'NFCE\nfceServidoresProd.ini';
    nfceComp.DiretorioXmlDestinatario := S+'NFCE\XmlDestinatario\';
    nfceComp.DiretorioLogErro := S+'NFCE\Erros\';
    nfceComp.DiretorioTemporario := S+'NFCE\Temp\';
    nfceComp.VersaoManual := vm50a;
    nfceComp.ConexaoSegura := True;
    nfceComp.ValidarEsquemaAntesEnvio := True;

    DebugMsg('TdmNFe.Init - S: '+S);

    S := ExtractFilePath(ParamStr(0))+'NFCE\Templates\vm50a\Conversor\NFCeDataSets.xml';
    nfceDS.XMLDicionario := S;
    
    if tNFConfigTipoCert.Value=tipocert_a1 then
      nfceComp.TipoCertificado := ckFile
    else begin
      nfceComp.TipoCertificado := ckSmartCard;
      nfceComp.PinCode := tNFConfigPinCert.Value;
    end;
      
    if tNFConfigtpAmb.Value=2 then
      nfceComp.Ambiente := akHomologacao else
      nfceComp.Ambiente := akProducao;

    nfceComp.NomeCertificado.Text := tNFConfigCertificadoDig.Value;
  end;  
end;

procedure TdmNFe.nfce_criar;
begin
  with DM do begin
    tNFEModelo.Value := '65';
    tNFESerie.Value := tNFConfigSerieNFCe.Value;
    tNFEtpAmb.Value := tNFConfigtpAmb.Value;
    tNFENumero.Value := ProxNumNFCe;
    tNFEEntrada.Value := False;
    tNFETipoDoc.Value := tiponfe_nfce;
    tNFEDataHora.Value := Now; //tTranDataHora.Value;
    tNFETran.Value := tTranUID.Value;
    tNFEStatus.Value := nfestatus_transmitir;
    tNFEValor.Value := tTranTotLiq.Value;
  end;  
end;

function FormatValor(aValor: Extended; aDecimais: Integer): String;
begin
  Str(aValor:0:aDecimais, Result);
end;

function ZeroPad(S: String; T: Integer): String;
begin
  Result := S;
  while Length(Result)<T do Result := '0'+Result;
end;

procedure TdmNFe.nfce_gerarxml;
var 
  S: String;
  sl : TStrings;
  FExtraEmail : Boolean;
  FExtraCPF : Boolean;
  aChaveNormal, aChaveCont : String;
  sXML : String;

procedure DadosDoNFCe;
var
  _NRNota : String;
begin
  with DM do begin
    nfceDS.campo('versao_A02').Value   := '3.10'; //Versão do leiaute
    nfceDS.Campo('cUF_B02').Value      := tNFConfigEnd_CodUF.AsString;
    nfceDS.Campo('cNF_B03').Value      := IntToStr(Random(99999999)); //Código Numérico que compõe a Chave de Acesso
    nfceDS.Campo('natOp_B04').Value    := 'VENDA MERC.ADQ.REC.TERC'; //Descrição da Natureza da Operação
    nfceDS.Campo('indPag_B05').Value   := '0'; //Indicador da forma de pagamento: 0 – pagamento à vista; 1 – pagamento à prazo; 2 - outros.
    nfceDS.Campo('mod_B06').Value      := '65'; //Modelo do Documento Fiscal
    nfceDS.Campo('serie_B07').Value    := '1';//tNFESerie.Value;

    nfceDS.Campo('nNF_B08').Value      := tNFENumero.AsString;
    nfceDS.Campo('dhEmi_B09').Value    := FormatDateTime('YYYY-mm-dd"T"HH:mm:ss', tNFEDataHora.Value) + TimeZoneStr; //Data e Hora de emissão do Documento Fiscal
    nfceDS.Campo('tpNF_B11').Value     := '1'; //Tipo de Operação: 0-entrada / 1-saída.
    nfceDS.Campo('idDest_B11a').Value  := '1'; //Identificador de local de destino da operação: 1- Operação interna; 2- Operação interestadual; 3- Operação com exterior.
    nfceDS.Campo('cMunFG_B12').Value   := tNFConfigEnd_CodMun.Value;
    nfceDS.Campo('tpImp_B21').Value    := '4';
    nfceDS.Campo('tpEmis_B22').Value   := '1';
    nfceDS.Campo('cDV_B23').Value      := ''; //Dígito Verificador da Chave de Acesso
    nfceDS.Campo('tpAmb_B24').Value    := tNFConfigtpAmb.AsString;
    nfceDS.Campo('finNFe_B25').Value   := '1'; //Finalidade de emissão da NF-e: 1- NF-e normal/ 2-NF-e complementar / 3 – NF-e de ajuste.
    nfceDS.Campo('indFinal_B25a').Value   := '1'; //Indica operação com Consumidor final: 0- Não; 1- Consumidor final;
    nfceDS.Campo('indPres_B25b').Value   := '1';
    nfceDS.Campo('procEmi_B26').Value  := '0';
    nfceDS.Campo('verProc_B27').Value  := '000'; //Versão do Processo de emissão da NF-e
  end;
end;

procedure DadosDoEmitente;
begin
  with DM do begin
    nfceDS.Campo('CNPJ_C02').Value     := tNFConfigCNPJ.Value;
    nfceDS.Campo('xNome_C03').Value    := tNFConfigRazaoSocial.Value;
    nfceDS.Campo('xFant_C04').Value    := tNFConfigNomeFantasia.Value;
    nfceDS.Campo('xLgr_C06').Value     := tNFConfigEnd_Logradouro.Value;
    nfceDS.Campo('xCpl_C08').Value     := tNFConfigEnd_Complemento.Value;
    nfceDS.Campo('nro_C07').Value      := tNFConfigEnd_Numero.Value;
    nfceDS.Campo('xBairro_C09').Value  := tNFConfigEnd_Bairro.Value;
    nfceDS.Campo('cMun_C10').Value     := tNFConfigEnd_CodMun.Value;
    nfceDS.Campo('xMun_C11').Value     := tNFConfigEnd_Municipio.Value;
    nfceDS.Campo('UF_C12').Value       := tNFConfigEnd_UF.Value;
    nfceDS.Campo('CEP_C13').Value      := tNFConfigEnd_CEP.Value;
    nfceDS.Campo('cPais_C14').Value    := '1058'; //Código do País
    nfceDS.Campo('xPais_C15').Value    := 'BRASIL'; //Nome do País
    nfceDS.Campo('fone_C16').Value     := tNFConfigTelefone.Value;
    nfceDS.Campo('IE_C17').Value       := tNFConfigIE.Value;
    nfceDS.Campo('CRT_C21').Value      := tNFConfigCRT.AsString;
  end;  
end;

function SoDig(S: String): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do 
    if S[I] in ['0'..'9']  then
      Result := Result + S[I];
end;

procedure AddNomeEmail;
begin
  with DM do begin
    if tNFConfigtpAmb.Value=2 then
      nfceDS.Campo('xNome_E04').Value := '' 
    else begin
      if (Length(SoDig(tCliCPF.Value))=11) or (Length(sl.Values['cpfnf'])=11) then 
        nfceDS.Campo('xNome_E04').Value := tCliNome.Value else
        nfceDS.Campo('xNome_E04').Value := '';
    end;    
    if (not FExtraEmail) and EmailValido(tCliEmail.Value) then begin 
      nfceDS.Campo('email_E19').Value := tCliEmail.Value;
      DM.tNFEEmail.Value := tCliEmail.Value;
    end else begin  
      if Trim(DM.tCliEmail.Value)='' then begin
        DM.tCli.Edit;
        DM.tCliEmail.Value := sl.Values['emailnf'];
        DM.tCli.Post;
      end;
    end;
  end;
end;

procedure AddExtraEmail;
var S: String;
begin
  S := sl.Values['emailnf'];
  if (trim(S)>'') then begin
    nfceDS.Campo('email_E19').Value := S;
    DM.tNFEEmail.Value := S;
    FExtraEmail := True;
  end else 
    FExtraEmail := False;
end;

procedure AddExtraCPF;
var S: String;
begin
  S := sl.Values['cpfnf'];
  if (trim(S)>'') then begin
    nfceDS.Campo('CPF_E03').Value := SoDig(S);
    DM.tNFECPF.Value := S;
    FExtraCPF := True;
  end else 
    FExtraCPF := False;
end;

procedure DadosDoDestinatario;
begin
  nfceDS.Campo('CPF_E03').Value := '';
  nfceDS.Campo('email_E19').Value := '';
  nfceDS.Campo('xNome_E04').Value    := '';
  nfceDS.Campo('xLgr_E06').Value     := '';
  nfceDS.Campo('nro_E07').Value      := '';
  nfceDS.Campo('xBairro_E09').Value  := '';
  nfceDS.Campo('cMun_E10').Value     := '';
  nfceDS.Campo('xMun_E11').Value     := '';
  nfceDS.Campo('UF_E12').Value       := '';
  nfceDS.Campo('CEP_E13').Value      := '';
  nfceDS.Campo('cPais_E14').Value    := '';
  nfceDS.Campo('xPais_E15').Value    := '';
  nfceDS.Campo('indIEDest_E16a').Value := '9';
  nfceDS.Campo('fone_E16').Value     := '';

  AddExtraEmail;
  AddExtraCPF;
  with DM do 
  if (tTranCliente.Value>0) and (tCliID.Value=tTranCliente.Value) then begin
    if tCliPJuridica.Value and (Length(SoDig(tCliCPF.Value))>12) then begin
      nfceDS.Campo('CNPJ_E02').Value := SoDig(tCliCPF.Value);
      tNFECPF.Value := SoDig(tCliCPF.Value);
      AddNomeEmail;
    end else begin
      if not FExtraCPF then begin
        nfceDS.Campo('CPF_E03').Value := SoDig(tCliCPF.Value);
        tNFECPF.Value := SoDig(tCliCPF.Value);
      end else 
      if SoDig(tCliCPF.Value)<>SoDig(sl.Values['cpfnf']) then
      begin
        tCli.Edit;
        tCliCPF.Value := sl.Values['cpfnf'];
        tCli.Post;
      end;  
      AddNomeEmail;
    end;  
  end;  
end;

function EAN13(S: String ): integer;
     var i: integer;
begin
  Result := 0;
  S := copy(S, 1, 12);
  { Soma todos Números e Multiplica os Pares por 3 }
  for i := 0 to Length( S ) -1 do
      Result := Result + StrToInt( S[ i +1 ] ) * (( i mod 2 ) * 2 + 1);
  { 10 menos o Resto da divisão da soma por 10 }
  Result := ( ( Ceil (Result / 10) * 10 ) - Result );
end;

function EAN_OK(S: String): Boolean;
begin
  Result := (IntToStr(EAN13(S)) = Copy(S, 13, 1));
end;

procedure AdicionaItens;
var 
  aItem: Integer;
  vImp : currency;
  Q : Extended;
begin
  aItem := 0;
  vTotImp := 0;
  DM.tMovEst.IndexName := 'ITranItem';
  DM.tMovEst.SetRange([DM.tTranID.Value], [DM.tTranID.Value]);
  with DM do
  try
    tNCM.IndexName := 'INCM';
    tMovEst.First;
    while not tMovEst.Eof do begin
      tProduto.FindKey([tMovEstProduto.Value]);
      
      if tProdutobrtrib.IsNull then
        tBRTrib.FindKey([dm.tNFConfigTrib_Padrao.Value]) else
        tBRTrib.FindKey([tProdutoBRTrib.Value]);

      if tProdutoNCM.IsNull then
        tNCM.FindKey([tNFConfigNCM_Padrao.Value{, tNFConfigNCMEx_Padrao}]) else
        tNCM.FindKey([tProdutoNCM.Value, tProdutoNCM_Ex.Value]);

      nfceDS.IncluirItem;
      Inc(aItem);
      nfceDS.Campo('cProd_I02').Value    := tProdutoID.AsString;
      nfceDS.Campo('nItem_H02').Value    := IntToStr(aItem);
      if (Length(tProdutoCodigo.Value)=13) and EAN_OK(tProdutoCodigo.Value) then begin
        nfceDS.Campo('cEAN_I03').Value   := tProdutoCodigo.Value;
        nfceDS.Campo('cEANTrib_I12').Value := tProdutoCodigo.Value;
      end;
      nfceDS.Campo('xProd_I04').Value    := Trim(tProdutoDescricao.Value);

      nfceDS.Campo('NCM_I05').Value      := tNCMNCM.Value;
      nfceDS.Campo('CFOP_I08').Value     := tBRTribCFOP_nfce.AsString;
      nfceDS.Campo('uCom_I09').Value     := tProdutoUnid.Value;

      if (tMovEstTotal.Value>0) and (Frac(tMovEstQuant.Value)>0.00001) then
        Q := tMovEstTotal.Value/tMovEstUnitario.Value else
        Q := tMovEstQuant.Value;


      nfceDS.Campo('qCom_I10').Value     := FormatValor(Q, 4);
      nfceDS.Campo('vUnCom_I10a').Value  := FormatValor(tMovEstUnitario.Value, 4);
      nfceDS.Campo('vProd_I11').Value    := FormatValor(tMovEstTotal.Value, 2);
      nfceDS.Campo('uTrib_I13').Value    := tProdutoUnid.Value;
      nfceDS.Campo('qTrib_I14').Value    := FormatValor(Q, 4);
      nfceDS.Campo('vUnTrib_I14a').Value := FormatValor(tMovEstUnitario.Value, 4);
      if tMovEstDesconto.Value>=0.01 then
        nfceDS.Campo('vDesc_I17').Value    := FormatValor(tMovEstDesconto.Value, 2);
      nfceDS.Campo('indTot_I17b').Value  := '1'; //Indica se valor do Item (vProd) entra no valor total da NF-e (vProd)
  											//0 – o valor do item (vProd) não compõe o valor total da NF-e (vProd) 1 – o valor do item (vProd) compõe o valor total da NF-e (vProd)
  
      vImp := CalcImp;                                 
      vTotImp := vTotImp + vImp;
      nfceDS.Campo('vTotTrib_M02').Value := FormatValor(vImp, 2);

      nfceDS.Campo('orig_N11').Value     := tBRTribOrigem.AsString;
      if tNFConfigCRT.Value=3 then
        nfceDS.Campo('CST_N12').Value      := ZeroPad(tBRTribCST.AsString, 2) else
        nfceDS.Campo('CSOSN_N12a').Value   := tBRTribCSOSN.AsString;

      nfceDS.SalvarItem;

      tMovEst.Next;
    end; 
  finally
    tMovEst.CancelRange;  
  end;  
end;

Procedure DadosTotalizadores;
begin
  with DM do begin
    nfceDS.Campo('vBC_W03').Value := '0.00';
    nfceDS.Campo('vICMS_W04').Value := '0.00';
    nfceDS.Campo('vICMSDeson_W04a').Value := '0.00';
    nfceDS.Campo('vBCST_W05').Value := '0.00'; //Base de Cálculo do ICMS ST
    nfceDS.Campo('vST_W06').Value := '0.00'; //Valor Total do ICMS ST
    nfceDS.Campo('vProd_W07').Value := FormatValor(tTranTotal.Value, 2);
    nfceDS.Campo('vFrete_W08').Value := '0.00'; //Valor Total do Frete
    nfceDS.Campo('vSeg_W09').Value := '0.00'; //Valor Total do Seguro
    if tTranDesconto.Value>=0.01 then
      nfceDS.Campo('vDesc_W10').Value := FormatValor(tTranDesconto.Value, 2) else
      nfceDS.Campo('vDesc_W10').Value := '0.00';
    nfceDS.Campo('vII_W11').Value := '0.00'; //Valor Total do II
    nfceDS.Campo('vIPI_W12').Value := '0.00'; //Valor Total do IPI
    nfceDS.Campo('vPIS_W13').Value := '0.00'; //Valor do PIS
    nfceDS.Campo('vCOFINS_W14').Value := '0.00'; //Valor do COFINS
    nfceDS.Campo('vOutro_W15').Value := '0.00'; //Outras Despesas acessórias
    nfceDS.Campo('vNF_W16').Value := FormatValor(tTranTotLiq.Value, 2);
    nfceDS.Campo('vTotTrib_W16a').Value := FormatValor(vTotImp, 2);
    nfceDS.Campo('modFrete_X02').Value := '9'; //Modalidade do frete: 0- Por conta do emitente; 1- Por conta do destinatário/remetente; 2- Por conta de terceiros; 9- Sem frete.
  end;    
end;

procedure DadosPagamento;
var 
  V, Cred   : Currency;
  TotEsp : Array[1..99] of Currency;
  T      : Byte;
begin
  DM.tPagEsp.IndexName := 'ITranID';
  DM.tPagEsp.SetRange([DM.tTranID.Value], [DM.tTranID.Value]);
  with DM do
  try
    Fillchar(TotEsp, SizeOf(TotEsp), 0);
    Cred := tTranCredito.Value;
    tPagEsp.First;
    while not tPagEsp.Eof do begin
      if tEspecie.FindKey([tPagEspEspecie.Value]) and (tEspecieTipoPagNFE.Value in [1..99]) then
        T := tEspecieTipoPagNFE.Value else
        T := 1;

      V := tPagEspValor.Value-tPagEspTroco.Value;

      if Cred>0 then begin
        if Cred>=V then begin
          Cred := Cred - V;
          V := 0;
        end else begin
          V := V - Cred;
          Cred := 0;
        end;
      end;
    
      TotEsp[T] := TotEsp[T] + V;
      tPagEsp.Next;
    end;
  
    TotEsp[5] := tTranDebito.Value + tTranCreditoUsado.Value;
  
    for T := 1 to 99 do 
    if TotEsp[T]>0.009 then begin
      nfceDS.IncluirPart('YA');
        nfceDS.Campo('tPag_YA02').Value := ZeroPad(IntToStr(T), 2);
        nfceDS.Campo('vPag_YA03').Value := FormatValor(TotEsp[T], 2);
      nfceDS.SalvarPart('YA');
    end;  
  finally
    tPagEsp.CancelRange;
  end;  
end;

procedure Gera(aCont: Boolean);
begin
  nfceDS.LoteNFCe.Clear;
  nfceDS.Incluir;
    DadosDoNFCe;
    DadosDoEmitente;
    DadosDoDestinatario;
    AdicionaItens;
    DadosTotalizadores;
    DadosPagamento;
    if aCont then begin
      nfceDS.Campo('dhCont_B28').Value := FormatDateTime('YYYY-mm-dd"T"HH:mm:ss',now) + TimeZoneStr;
      nfceDS.Campo('xJust_B29').Value := 'Sem internet ou sem comunicacao com SEFAZ';  
      nfceDS.Campo('tpEmis_B22').Value := '9';  
    end;  
  nfceDS.Salvar;
  
  if aCont then begin
    aChaveCont := Copy(nfceDS.Campo('Id_A03').AsString,4,44);
    DM.tNFEXMLtransCont.Value := nfceComp.AssinarNota(nfceDS.LoteNFCe.GetText);
  end else begin
    aChaveNormal := Copy(nfceDS.Campo('Id_A03').AsString,4,44);
    DM.tNFEXMLtrans.Value := nfceComp.AssinarNota(nfceDS.LoteNFCe.GetText)
  end;  
end;


begin
  sl := TStringList.Create;

  try
    sl.Text := DM.tTranExtra.Value;
    
    _Dir := ExtractFilePath(ParamStr(0))+'NFCe\Templates\vm50a\Conversor\NFCeDataSets.xml';

    nfceDS.VersaoEsquema := pl_008d;
    nfceDS.XMLDicionario := _Dir;
    nfceDS.LoteNFCe.Clear;

    Gera(False);
    Gera(True);


    if Contingencia then begin
      DM.tNFEContingencia.Value := True;
      DM.tNFEStatus.Value := nfestatus_contingencia;
      DM.tNFEChave.Value := aChaveCont;
    end else begin
      DM.tNFEStatus.Value := nfestatus_transmitir;   
      DM.tNFEContingencia.Value := False;
      DM.tNFEChave.Value := aChaveNormal;
    end;
    
  finally
    sl.Free;
  end;

end;

function TdmNFe.ProxNumNFCe: Cardinal;
var 
  C: Cardinal;
  aSerie: String;
begin
  with DM do begin
    tAuxNFE.Active := True;
    tAuxNFE.IndexName := 'ItpAmbModeloSerieNumero';
    aSerie := tNFConfigSerieNFCe.Value;
    tAuxNFE.SetRange([tNFConfigtpAmb.Value, '65', aSerie], [tNFConfigtpAmb.Value, '65', aSerie]);
    if tAuxNFE.IsEmpty then
      C := 0 
    else begin
      tAuxNFE.Last;
      C := tAuxNFENumero.Value;
    end;
      
    if (C<tNFConfigInicioNFCe.Value) then
      Result := tNFConfigInicioNFCe.Value 
    else begin
      tAuxNFE.Last;
      C := tAuxNFENumero.Value;
      Result := C + 1;
    end;
  end;    
end;

procedure TdmNFe.ValidaXML;
var S: String;
begin
  sErroValid := '';

  if Contingencia then
    S := DM.tNFEXMLtransCont.Value else
    S := DM.tNFEXMLtrans.Value;

  try
    nfceComp.ValidarLoteParaEnvio('0001', S);
  except
    on E: Exception do sErroValid := E.Message;
  end;
end;

end.
