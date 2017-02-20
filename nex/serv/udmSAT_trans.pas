unit udmSAT_trans;

interface

uses
  System.SysUtils, System.Classes, System.IniFiles, Vcl.OleCtrls, System.Contnrs, SyncObjs,
  Data.DB, nxdb, nxllComponent, nxsdServerEngine,
  nxreRemoteServerEngine, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, madTools, Vcl.ExtCtrls, Windows, Messages,
  uObjPool, ActiveX, Xml.xmldom, Xml.XMLIntf, Xml.omnixmldom,
  Xml.XMLDoc, DateUtils, spdNFCe, spdNFCeType;

type
  TGetDMEv = procedure (var aDM: TObject) of object;
  
  TdmSAT_trans = class(TDataModule)
    nxDB: TnxDatabase;
    nxSE: TnxSession;
    tTran: TnxTable;
    tNFConfig: TnxTable;
    tNFE: TnxTable;
    tTranID: TUnsignedAutoIncField;
    tTranUID: TGuidField;
    tTranUID_ref: TGuidField;
    tTranStatusNFE: TByteField;
    tTranTipoNFE: TByteField;
    tTranDataHora: TDateTimeField;
    tTranIncluidoEm: TDateTimeField;
    tTranCliente: TLongWordField;
    tTranTipo: TByteField;
    tTranOpDevValor: TByteField;
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
    tTranNomeCliente: TStringField;
    tTranSessao: TLongWordField;
    tTranDescr: TStringField;
    tTranQtdTempo: TFloatField;
    tTranCredValor: TBooleanField;
    tTranFidResgate: TBooleanField;
    tTranPagFunc: TStringField;
    tTranPagPend: TBooleanField;
    tTranRecVer: TLongWordField;
    tNFConfigEmitirNFCe: TBooleanField;
    tNFConfigEmitirNFE: TBooleanField;
    tNFConfigCertificadoDig: TStringField;
    tNFConfigAutoPrintNFCe: TBooleanField;
    tNFConfigCRT: TByteField;
    tNFConfigNCM_Padrao: TStringField;
    tNFConfigMostrarDadosNFE: TBooleanField;
    tNFConfigModeloNFE: TStringField;
    tNFConfigModeloNFCe: TStringField;
    tNFConfigSerieNFCe: TStringField;
    tNFConfigSerieNFe: TStringField;
    tNFConfigInicioNFe: TLongWordField;
    tNFConfigInicioNFCe: TLongWordField;
    tNFConfigRazaoSocial: TStringField;
    tNFConfigNomeFantasia: TStringField;
    tNFConfigCNPJ: TStringField;
    tNFConfigIE: TStringField;
    tNFConfigEnd_Logradouro: TStringField;
    tNFConfigEnd_Numero: TStringField;
    tNFConfigEnd_Bairro: TStringField;
    tNFConfigEnd_UF: TStringField;
    tNFConfigEnd_CEP: TStringField;
    tNFConfigEnd_Municipio: TStringField;
    tNFConfigEnd_CodMun: TStringField;
    tNFConfigEnd_CodUF: TByteField;
    tNFConfigTelefone: TStringField;
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
    tNFEXMLret: TnxMemoField;
    tNFEIncluidoEm: TDateTimeField;
    tNFEEmitidoEm: TDateTimeField;
    tNFEContingenciaEM: TDateTimeField;
    tNFEValor: TCurrencyField;
    tNFEXMLdest: TnxMemoField;
    tNFExMotivo: TnxMemoField;
    tTranChaveNFE: TStringField;
    tNFEXMLtransCont: TnxMemoField;
    tNFEXMLtrans: TnxMemoField;
    tNFConfigtpAmb: TByteField;
    tNFConfigCSC: TStringField;
    tNFConfigIdCSC: TStringField;
    tNFConfigFromEmail: TStringField;
    tNFConfigFromName: TStringField;
    tPost: TnxTable;
    tPostID: TAutoIncField;
    tPostParametros: TnxMemoField;
    tPostHost: TStringField;
    tPostURL: TStringField;
    tPostApagarArq: TBooleanField;
    tPostArq: TStringField;
    tPostInclusao: TDateTimeField;
    tPostEnvio: TDateTimeField;
    tPostTentativas: TWordField;
    tPostEnviar: TBooleanField;
    tPostMsgErro: TnxMemoField;
    tPostOK: TBooleanField;
    tNFConfigTrib_Padrao: TWordField;
    tNFConfigPedirEmail: TByteField;
    tNFConfigPedirCPF: TByteField;
    tConfig: TnxTable;
    tDoc: TnxTable;
    tDocID: TUnsignedAutoIncField;
    tDocUID: TGuidField;
    tDocTipo: TByteField;
    tDocBobina: TBooleanField;
    tDocFree: TBooleanField;
    tDocTextOnly: TBooleanField;
    tDocTamanho: TStringField;
    tDocNome: TStringField;
    tDocObs: TnxMemoField;
    tDocParams: TnxMemoField;
    tDocDoc: TBlobField;
    tDocImg: TGraphicField;
    tDocCustom: TBooleanField;
    tDocMinVer: TWordField;
    tDocSRECVER: TLongWordField;
    tDocRECVER: TLongWordField;
    tNFConfigModeloNFCe_Email: TGuidField;
    tTranExtra: TnxMemoField;
    tNFEtpAmb: TByteField;
    tNFConfigTipoCert: TByteField;
    tNFConfigurls_consulta: TnxMemoField;
    tNFConfigurls_qrcode_hom: TnxMemoField;
    tNFConfigurls_qrcode_prod: TnxMemoField;
    tTranAmbNFe: TByteField;
    tNFEEmail: TStringField;
    tNFECPF: TStringField;
    tNFEStatusInut: TByteField;
    tNFEStatusCanc: TByteField;
    tNFEProtocoloCanc: TStringField;
    tNFEStatusCancNF: TIntegerField;
    tNFEJustCanc: TnxMemoField;
    tTranStatusCanc: TByteField;
    tNFExMotivoCanc: TnxMemoField;
    tNFECanceladoPor: TStringField;
    tNFECanceladoEm: TDateTimeField;
    tNFExmlRetCanc: TnxMemoField;
    tNFEStatusInutNF: TIntegerField;
    tNFEProtocoloInut: TStringField;
    tNFExMotivoInut: TnxMemoField;
    tNFExmlRetInut: TnxMemoField;
    tNFConfigAssuntoEmail: TStringField;
    tNFConfigRemoverNFCe: TBooleanField;
    tNFConfigDependNFCEOk: TBooleanField;
    tNFConfigCorpoEmail: TnxMemoField;
    tNFConfigPinCert: TStringField;
    tNFEUID: TGuidField;
    tNFEChaveCont: TStringField;
    tNFEConsultouChave: TBooleanField;
    tNFELogEnvio: TnxMemoField;
    nfceComp: TspdNFCe;
    tNFELogRec: TnxMemoField;
    tNFConfigTipo: TByteField;
    tNFConfigNomeDllSat: TStringField;
    tNFConfigSignACSat: TStringField;
    tNFConfigDependSATOk: TBooleanField;
    tNFConfigModeloSAT_Email: TGuidField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure nfceCompLog(const aNome, aID, aFileName: WideString);
  private
    _Dir  : String;
    serie : String;
    sXML : String;
    slRet : TStrings;
    FHoraCanc : TDateTime;
    FOnGetDM : TGetDMEv;
    FlastConfig : Cardinal;
    
    function CancelaNFe: Boolean;
    function EnviarNFE: Boolean;
    function InutilizarNFE: Boolean;
    function ConsultarNFE: Boolean;
    
    procedure SalvaRetorno(aFalhouConex: Boolean);
    procedure SalvaRetornoCanc;
    procedure SalvaRetornoInut;
    procedure SalvaRetornoConsulta;
    
    procedure GeraEmail;
    procedure RefreshConfig;
  public
    procedure OpenDB;
    function Enviar(aTran: TGUID): Boolean;
    function ProcessaProxContingenia: Boolean;
    function ProcessaProxCancelamentoNFE: Boolean;
    function ProcessaProxCancelamentoTran: Boolean;
    function ProcessaProxInut: Boolean;
    function ProcessaProxConsulta: Boolean;
    function ProcessaProxTransmitir: Boolean;

    function GeraXMLProt(aChave: String): Integer;

    property OnGetDM : TGetDMEv 
      read FOnGetDM write FOnGetDM;
    { Public declarations }
  end;

  TncTransmiteNFe = class (TThread)
  private
    FTran : TGUID;
    FResultado : Boolean;
  protected
    procedure Execute; override;
  public
    constructor Create(aTran: TGUID); 
  end;

  TncProcessaTransmitirSAT = class ( TThread  )
  protected 
    procedure Execute; override;
  public 
    constructor Create; 
  end;  

  procedure IncTransSAT;
  function GetTransSAT: Cardinal;

  function ArqLogEnvio(aChave: String): String;
  function ArqLogRec(aChave: String): String;
  
   
var
  dmSAT_trans: TdmSAT_trans;
  NewTransSAT  : Cardinal = 1;

  csSATTrans : TCriticalSection;
  
  gProcessaTransmitirSAT : TncProcessaTransmitirSAT = nil;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ncServBD, ncDebug, ncClassesBase, udmNFe_gerar, ncGuidUtils, ncMsgCom,
  ncDMdanfe_NFCE, ncDMServ, ncErros;

{$R *.dfm}

function ArqXML(aChave: String): String;
begin
  Result := ExtractFilePath(paramstr(0))+'NFCE\XmlDestinatario\'+aChave+'-nfce.xml'
end;

function ChaveFromXML(aXML: String): String;
var P : Integer;
begin
  P := Pos('Id="NFe', aXML);
  if P>0 then begin
    Delete(aXML, 1, P+6);
    Result := Copy(aXML, 1, Pos('"', aXML)-1);
  end else
    Result := 'erro_chave';
end;

procedure ProcessMessages;
var Msg : TMsg;
begin
  while PeekMessage(Msg, 0, 0, 0, PM_REMOVE) do  begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
  end;
end;

function TdmSAT_trans.CancelaNFe: Boolean;
var S: String;
begin
  try      
    FHoraCanc := Now;
    slRet.Text := nfceComp.CancelarNF(tNFEChave.Value, tNFEProtocolo.Value, tNFEJustCanc.Value, 
                                      FormatDateTime('YYYY-mm-dd"T"HH:mm:ss', FHoraCanc), 1, TimeZoneStr, '0001');
    Result := True;
  except
    on E: Exception do begin
      S := E.ClassName;
      if SameText(S, 'EOleException') and (Pos('URL', E.Message)>0) then 
        Result := False
      else begin
        Result := True;
        slRet.Values['errosw'] := E.Message;
      end;
      DebugMsg('TdmNFe.CancelarNF - Exception: ' + E.Message);
    end;
  end;  
  if Result then SalvaRetornoCanc;
end;

function TdmSAT_trans.ConsultarNFE: Boolean;
var sXML: String;
begin
  try      
    if tNFEContingencia.Value then
      sXML := tNFEXMLtransCont.Value else
      sXML := tNFEXMLtrans.Value;


    slRet.Text := nfceComp.ConsultarNF(ChaveFromXML(sXML));
    Result := True;
  except
    on E: Exception do begin
      if SameText(E.ClassName, 'EOleException') and (Pos('URL', E.Message)>0) then 
        Result := False
      else begin
        Result := True;
        slRet.Values['errosw'] := E.Message;
      end;
      DebugMsg('TdmNFe.ConsultarNFE - Exception: ' + E.Message);
    end;
  end;  
  if Result then SalvaRetornoConsulta;
end;

procedure TdmSAT_trans.DataModuleCreate(Sender: TObject);
begin
  nxSe.ServerEngine := ncServBD.dmServidorBD.ServerEngine;
  slRet := TStringList.Create;
  FOnGetDM := nil;
  FlastConfig := 0;
end;

{ TncProcessaNFe }

constructor TncTransmiteNFe.Create(aTran: TGUID);
begin
  FTran := aTran;
  inherited Create(False);
end;

procedure TncTransmiteNFe.Execute;
var dm : TdmNFe_trans;
begin
  coInitialize(nil);
  try 
    Sleep(5);
    DM := TdmNFe_trans.Create(nil);
    try
      DM.RefreshConfig;
      DM.Enviar(FTran);
    finally
      dm.Free;
    end;  
  except
    on E: Exception do 
      DebugMsgEsp('TncTransmiteNFe.Execute - Exception: '+E.Message, False, True);
  end;
  CoUninitialize;
end;

procedure TdmSAT_trans.DataModuleDestroy(Sender: TObject);
begin
  slRet.Free;
  nfceComp.Free;
end;

function TdmSAT_trans.Enviar(aTran: TGUID): Boolean;
var 
  AchouTran : Boolean;
  AchouNFE  : Boolean;
  S : String;
begin
  OpenDB;
  tTran.IndexName := 'IUID';
  AchouTran := tTran.FindKey([aTran.ToString]);
  AchouNFE  := AchouTran and tNFE.Locate('Chave', tTranChaveNFE.Value, []);
  if AchouTran and AchouNFE then 
    Result := EnviarNFE 
  else
  begin
    Result := True;
    if AchouTran then begin
      tTran.Edit;
      tTranStatusNFE.Value := nfetran_erro;
      S := tTranObs.Value;
      if S>'' then S := S + sLineBreak + sLineBreak;
      tTranObs.Value := S + 'NFe ' + tTranChaveNFE.Value + ' não foi encontrada no banco de dados';
      tTran.Post;
    end;
  end;  
end;
                                                           
function TdmSAT_trans.EnviarNFE: Boolean;
var S: String;

procedure _ConsultaChave;
begin
  try
    S := nfceComp.ConsultarNF(ChaveFromXML(sXML));
    if StrToIntDef(getXMLValue(S, 'cStat', 'infProt'), 0)=100 then slRet.Text := S;
  except
  end;
end;

begin
  try
    if tNFEContingencia.Value then
      sXML := tNFEXMLtransCont.Value else
      sXML := tNFEXMLtrans.Value;

    DebugMsg('TdmNFE_trans.EnviarNFESincrono - '+ChaveFromXML(sXML));  
    slRet.Text := nfceComp.EnviarNFSincrono('1', sXML, False);
    if StrToIntDef(getXMLValue(slRet.Text, 'cStat', 'infProt'), 0)=204 then _ConsultaChave;
    DebugMsg('TdmNFE_trans.EnviarNFESincrono - Retorno: '+sLineBreak+slRet.Text);
    Result := True;
  except
    on E: Exception do begin
      S := E.ClassName;
      if SameText(S, 'EOleException') and (Pos('URL', E.Message)>0) then begin
        gContingencia := cont_on;
        Result := False;
      end else begin
        Result := True;
        slRet.Values['errosw'] := E.Message;
      end;  
      DebugMsg('TdmNFe.EnviarNFE - ' + E.ClassName + ': ' + E.Message);
    end;
  end;  
  if tNFEContingencia.Value and (not Result) then Exit;
  
  SalvaRetorno(not Result);
end;

procedure TdmSAT_trans.GeraEmail;
var 
  dmDanfe: TdmDanfe_NFCE;
  S : String;
begin

  if tNFConfigFromEmail.Value = '' then Exit;
  if tNFConfigNomeFantasia.Value = '' then Exit;
  if tNFEEmail.Value = '' then Exit;
  
  dmDanfe := TdmDanfe_NFCE.Create(nil);
  try
    S := ExtractFilePath(ParamStr(0))+'Email\';

    if tDoc.FindKey([tNFConfigModeloNFCe_Email.Value]) then begin
      dmDanfe.LoadReport(tDocDoc, '');
      dmDanfe.LoadXML(tNFEXMLdest.Value, 
                      tTranTroco.Value, 
                      tTranFunc.Value, 
                      tTranID.AsString, 
                      tNFConfigIdCSC.Value, 
                      tNFConfigCSC.Value, 
                      tConfig,
                      tNFConfigurls_qrcode_hom.Value,
                      tNFConfigurls_qrcode_prod.Value,
                      tNFConfigurls_consulta.Value);
      dmDanfe.EnviaEmail(tNFConfigFromEmail.Value, tNFConfigNomeFantasia.Value, tNFConfigAssuntoEmail.Value, tNFEEmail.Value);
    end;  
  finally
    dmDanfe.Free;
  end;
end;

function TdmSAT_trans.GeraXMLProt(aChave: String): Integer;
begin
  OpenDB;
  RefreshConfig;
  
  if not tNFE.Locate('Chave', aChave, []) then begin
    Result := ncerrItemInexistente;
    Exit;
  end;
  if tNFELogREc.Value='' then begin
    Result := ncerrItemInexistente;
    Exit;
  end;
  if tNFELogEnvio.Value='' then begin
    Result := ncerrItemInexistente;
    Exit;
  end;
  tNFeLogRec.SaveToFile(ArqLogRec(aChave));
  tNFeLogEnvio.SaveToFile(ArqLogEnvio(aChave));
  tNFe.Edit;
  nfceComp.GerarXMLEnvioDestinatario(aChave, ArqLogEnvio(aChave), ArqLogRec(aChave), ArqXML(aChave));
  tNFeXMLDest.LoadFromFile(ArqXML(aChave));
  if tNFEProtocolo.Value='' then
    tNFEProtocolo.Value := getXMLValue(tNFeLogRec.Value, 'nProt');  
  if tNFERecibo.Value='' then
    tNFERecibo.Value := getXMLValue(tNFeLogRec.Text, 'nRec');
  tNFe.Post;
  Result := 0;
end;

function TdmSAT_trans.InutilizarNFE: Boolean;
var J: String;
begin
  try      
    FHoraCanc := Now;   
    if tNFEStatusNF.Value=9999 then
      J := 'Falha de software ao gerar NF' else
      J := 'NF rejeitada pela SEFAZ';

    slRet.Text := '';  
    if tNFENumero.Value>0 then
      slRet.Text := nfceComp.InutilizarNF('', Copy(IntToStr(YearOf(tNFEDataHora.Value)), 3, 2), 
                                          SoDig(tNFConfigCNPJ.Value), '65', 
                                          tNFESerie.Value, 
                                          tNFENumero.AsString, 
                                          tNFENumero.AsString, J);
    Result := True;
  except
    on E: Exception do begin
      if SameText(E.ClassName, 'EOleException') and (Pos('URL', E.Message)>0) then 
        Result := False
      else begin
        Result := True;
        slRet.Values['errosw'] := E.Message;
      end;
      DebugMsg('TdmNFe.InutilizaNF - Exception: ' + E.Message);
    end;
  end;  
  if Result then SalvaRetornoInut;
end;

procedure TdmSAT_trans.nfceCompLog(const aNome, aID, aFileName: WideString);
var sl : TStrings;
begin
  DebugMsg('TdmNFE_trans.nfceCompLog - aNome: ' + aNome);
  DebugMsg('TdmNFE_trans.nfceCompLog - aID: ' + aID);
  DebugMsg('TdmNFE_trans.nfceCompLog - aFileName: ' + aFileName);
  
  if Sametext('env-sinc-lot', aNome) or SameText('rec-sinc', aNome) then begin
    sl := TStringList.Create;
    try
      sl.LoadFromFile(aFileName);

      InitTran(nxDB, [tNFe], True);
      try
        tNFe.Edit;
        if SameText('rec-sinc', aNome) then
          tNFeLogRec.Value := sl.Text else
          tNFeLogEnvio.Value := sl.Text;
        tNFe.Post;
        nxDB.Commit;
      finally
        if nxDB.InTransaction then nxDB.Rollback;
      end;
    except
      on E: Exception do 
        DebugMsg('TdmNFE_trans.nfceCompLog - Exception '+E.ClassName+': '+E.Message);
    end;
    sl.Free;
  end;
  
end;

procedure TdmSAT_trans.OpenDB;
begin
  tNFConfig.Open;
  tTran.Open;
  tNFE.Open;                  
  tPost.Open;
  tConfig.Open;
  tDoc.Open;
end;

function TdmSAT_trans.ProcessaProxCancelamentoNFE: Boolean;
begin
  try
    RefreshConfig;
    Result := False;
    if not tNFE.FindKey([tNFConfigtpAmb.Value, statuscanc_nfe_processarnfe]) then Exit;
  
    if tTran.FindKey([tNFETran.Value]) then 
      Result := CancelaNFe
    else begin  
      tNFE.Edit;
      tNFEStatusCanc.Value := statuscanc_nfe_erro;
      tNFExMotivoCanc.Value := 'Transação não encontrada para essa NFE';
      tNFE.Post;
    end;
  except  
    on E: Exception do 
      DebugMsgEsp('TdmNFE_trans.ProcessaProxCancelamento - Exception: '+E.Message, False, True);
  end;
end;

function TdmSAT_trans.ProcessaProxCancelamentoTran: Boolean;
var 
  dm: Tdm;
  O : TObject;
  S : String;
begin
  try
    RefreshConfig;
  
    if not tNFE.FindKey([tNFConfigtpAmb.Value, statuscanc_nfe_processatran]) then
    begin
      Result := False;
      Exit;
    end;
    Result := True;

    TncServidorBase.Lock;
    try
      FOnGetDM(O);
      if O=nil then Exit;

      dm := tDM(O);
      
      S := dm.CancelaTranNFe(tNFEChave.Value);
      if S>'' then
        DebugMsgEsp('TdmNFE_trans.ProcessaProxCancelamentoTran - Erro: '+S, False, True);
    finally
      TncServidorBase.Unlock;
    end;
  except  
    on E: Exception do 
      DebugMsgEsp('TdmNFE_trans.ProcessaProxCancelamento - Exception: '+E.Message, False, True);
  end;
end;

function TdmSAT_trans.ProcessaProxConsulta: Boolean;
begin
  try
    RefreshConfig;

    tNFE.IndexName := 'IConsulta';
  
    Result := False;
    if not tNFE.FindKey([tNFConfigtpAmb.Value, False, 204]) then Exit;

    Result := ConsultarNFE;
  except
    on E: Exception do 
      DebugMsgEsp('TdmNFe_trans.ProcessaProxConsulta - Exception: '+E.Message, False, True);
  end;
end;

function TdmSAT_trans.ProcessaProxContingenia: Boolean;
begin
  try
    RefreshConfig;
  
    Result := False;
    if not tNFE.FindKey([tNFConfigtpAmb.Value, nfestatus_contingencia]) then begin
      gContingencia := cont_off;
      Exit;
    end;  
      
    if tTran.FindKey([tNFETran.Value]) then begin
      Result := EnviarNFE;
    end else begin
      Result := True;
      tNFE.Edit;
      tNFEStatus.Value := nfestatus_erro;
      tNFEStatusNF.Value := 998;
      tNFE.Post;
    end;
  except
    on E: Exception do 
      DebugMsgEsp('TdmNFe_trans.ProcessaContingencias - Exception: '+E.Message, False, True);
  end;
end;
    
function TdmSAT_trans.ProcessaProxInut: Boolean;
begin
  try
    RefreshConfig;

    tNFE.IndexName := 'ItpAmbStatusInut';    
  
    Result := False;
    if not tNFE.FindKey([tNFConfigtpAmb.Value, statusinut_nfe_processar]) then Exit;
      
    Result := InutilizarNFE;
  except
    on E: Exception do 
      DebugMsgEsp('TdmNFe_trans.ProcessaProxInut - Exception: '+E.Message, False, True);
  end;
end;

function TdmSAT_trans.ProcessaProxTransmitir: Boolean;
begin
  try
    DebugMsg('TdmNFE_trans.ProcessaProxTransmitir');
    RefreshConfig;

    Result := False;
    if not tNFE.FindKey([tNFConfigtpAmb.Value, nfetran_transmitir]) then Exit;
    if not tTran.FindKey([tNFEChave.Value]) then begin
      DebugMsg('TdmNFE_trans.ProcessaProxTransmitir - 2');
      tNFE.Edit;
      tNFEStatus.Value := nfetran_erro;
      tNFExMotivo.Value := 'Transação não encontrada no banco de dados';
      tNFE.Post;
      Result := True;
      Exit;
    end;

    Result := EnviarNFE;
  except
    on E: Exception do 
      DebugMsgEsp('TdmNFe_trans.ProcessaProxTransmitir - Exception: '+E.Message, False, True);
  end;
end;

procedure TdmSAT_trans.RefreshConfig;
var 
  aNewConfig : Cardinal;
  S : String;
begin
  aNewConfig := getConfigNFE;
  if aNewConfig=FlastConfig then Exit;

  DebugMsg('TdmNFe_trans.RefreshConfig - 1');

  try
  
    tNFConfig.Active := True;
    tNFConfig.Refresh;
    FlastConfig := aNewConfig;

    S := ExtractFilePath(ParamStr(0))+'NFCE\';

    nfceComp.UF := tNFConfigEnd_UF.Value;
    nfceComp.CNPJ := SoDig(tNFConfigCNPJ.Value);
    nfceComp.DiretorioEsquemas := S+'Esquemas\';
    nfceComp.DiretorioTemplates := S+'Templates\';
    nfceComp.DiretorioLog := S+'Log';
    nfceComp.TimeOut := 60000;
    if FileExists(S+'nfceServidoresDes.ini') then
      nfceComp.ArquivoServidoresHom := S+'nfceServidoresDes.ini' else
      nfceComp.ArquivoServidoresHom := S+'nfceServidoresHom.ini';
    nfceComp.ArquivoServidoresProd := S+'nfceServidoresProd.ini';
    nfceComp.DiretorioXmlDestinatario := S+'XmlDestinatario\';
    nfceComp.DiretorioLogErro := S+'Erros\';
    nfceComp.DiretorioTemporario := S+'Temp\';
    nfceComp.VersaoManual := vm50a;
    nfceComp.ConexaoSegura := True;
    nfceComp.ValidarEsquemaAntesEnvio := False;

  
    
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
  except
    on E: Exception do begin
      DebugMsg('TdmNFe_trans.RefreshConfig - Exception - '+E.ClassName+': '+E.Message);
      raise;
    end;
  end;
end;

function ArqLogEnvio(aChave: String): String;
begin
  Result :=ExtractFilePath(paramstr(0))+'NFCE\Log\'+aChave+'env-sinc-lot.xml';
end;

function ArqLogRec(aChave: String): String;
begin
  Result :=ExtractFilePath(paramstr(0))+'NFCE\Log\'+aChave+'env-sinc-ret.xml';
end;

procedure TdmSAT_trans.SalvaRetorno(aFalhouConex: Boolean);
var 
  S : String;
  P : PmsgNFEUpdated;
begin
  if aFalhouConex and (tNFEStatus.Value=nfestatus_contingencia) then Exit;

  try
    InitTran(nxDB, [tNFE, tTran], True);
    try
      tNFE.Edit;

      if aFalhouConex then begin
        tNFEContingenciaEM.Value := now;
        tNFEContingencia.Value := True;
        tNFEStatus.Value := nfestatus_contingencia;
        
        S := ChaveFromXML(tNFEXMLtransCont.Value);
        tNFEChave.Value := S;
      end else 
      if slRet.Values['errosw']>'' then
      begin
        tNFEStatusNF.Value := 9999;
        tNFEStatus.Value := nfestatus_erro;
        tNFExMotivo.Value := slRet.Values['errosw'];
        tNFEStatusInut.Value := statusinut_nfe_processar;
      end 
      else begin
        tNFEXMLret.Value := slRet.Text;
        tNFERecibo.Value := getXMLValue(slRet.Text, 'nRec');
        tNFEStatusNF.Value := StrToIntDef(getXMLValue(slRet.Text, 'cStat', 'infProt'), 0);
        tNFEProtocolo.Value := getXMLValue(slRet.Text, 'nProt');
        if (tNFEStatusNF.Value=100) or (tNFEStatusNF.Value=204) then begin
          if tNFEContingencia.Value then 
            tNFEStatus.Value := nfestatus_ok_cont else
            tNFEStatus.Value := nfestatus_ok;
            
          S := ArqXML(tNFeChave.Value);  
            
          if FileExists(S) then 
            tNFEXMLdest.LoadFromFile(S)
          else 
          if (tNFeLogRec.Value>'') and (tNFeLogEnvio.Value>'') then begin
            tNFeLogEnvio.SaveToFile(ArqLogEnvio(tNFeChave.Value));
            tNFeLogRec.SaveToFile(ArqLogRec(tNFeChave.Value));
            nfceComp.GerarXMLEnvioDestinatario(
              tNFeChave.Value, 
              ArqLogEnvio(tNFeChave.Value), 
              ArqLogRec(tNFeChave.Value), S);

            if FileExists(S) then begin
              tNFEXMLdest.LoadFromFile(ArqXML(tNFeChave.Value));
              if tNFEProtocolo.Value='' then
                tNFEProtocolo.Value := getXMLValue(tNFeLogRec.Value, 'nProt');

              if tNFERecibo.Value='' then
                tNFERecibo.Value := getXMLValue(tNFeLogRec.Text, 'nRec');
            end;
              
          end;
          
        end else begin
          tNFEStatus.Value := nfestatus_erro;
          if (tNFEStatusNF.Value=205) or (tNFEStatusNF.Value=218) or (tNFEStatusNF.Value=539) then
            tNFEStatusInut.Value := statusinut_nfe_ok else
            tNFEStatusInut.Value := statusinut_nfe_processar;
        end;  

        tNFExMotivo.Value := getXMLValue(slRet.Text, 'xMotivo', 'infProt');  
      end;  
      tNFE.Post;

      tTran.Edit;
      tTranStatusNFE.Value := tNFEStatus.Value;
      tTranChaveNFE.Value := tNFEChave.Value;
      tTran.Post;
      nxDB.Commit;

      New(P);
      P^.msgTran := tTranUID.AsGuid;
      PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);

      if tNFEStatusNF.Value=100 then
        GeraEmail;
    finally
      if nxDB.InTransaction then nxDB.Rollback;
    end;  
  except
    on E: Exception do 
      DebugMsgEsp('TdmNFe.SalvaRetorno - Exception: '+E.Message, False, True);
  end;  
end;

procedure TdmSAT_trans.SalvaRetornoCanc;
var 
  S : String;
  P : PmsgNFEUpdated;
begin
  try
    InitTran(nxDB, [tNFE, tTran], True);
    try
      tNFE.Edit;

      if slRet.Values['errosw']='' then begin
        tNFEStatusCancNF.Value := StrToIntDef(getXMLValue(slRet.Text, 'cStat', 'infEvento'), 0);
        tNFEProtocoloCanc.Value := getXMLValue(slRet.Text, 'nProt');

        tNFExmlRetCanc.Value := slRet.Text;
        
        if (tNFEStatusCancNF.Value=135) or (tNFEStatusCancNF.Value=573) or (tNFEtpAmb.Value=2) then begin
          tNFECanceladoEm.Value := FHoraCanc;
          tNFEStatusCanc.Value := statuscanc_nfe_processatran;
        end else  
          tNFEStatusCanc.Value := statuscanc_nfe_rej;
            
        tNFExMotivoCanc.Value := getXMLValue(slRet.Text, 'xMotivo', 'infEvento');  
      end else begin
        tNFEStatusCancNF.Value := 9999;
        tNFEStatusCanc.Value := statuscanc_nfe_erro;
        tNFExMotivoCanc.Value := slRet.Values['errosw'];
      end;
      
      tNFE.Post;

      tTran.Edit;
      tTranStatusCanc.Value := tNFEStatusCanc.Value;
      tTran.Post;
      nxDB.Commit;

      if tNFEStatusCanc.Value <> statuscanc_nfe_processatran then begin
        New(P);
        P^.msgTran := tTranUID.AsGuid;
        PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);
      end;  
    finally
      if nxDB.InTransaction then nxDB.Rollback;
    end;  
  except
    on E: Exception do 
        DebugMsgEsp('TdmNFe.SalvaRetorno - Exception: '+E.Message, False, True);
  end;  
end;

procedure TdmSAT_trans.SalvaRetornoConsulta;
var 
  S : String;
  P : PmsgNFEUpdated;
begin
  try
    InitTran(nxDB, [tNFE, tTran], True);
    try
      tNFE.Edit;

      tNFEConsultouChave.Value := True;

      if StrToIntDef(getXMLValue(slRet.Text, 'cStat', 'infProt'), 0)=100 then begin
        tNFEXMLret.Value := slRet.Text;
        tNFEStatusNF.Value := 100;
        tNFEProtocolo.Value := getXMLValue(slRet.Text, 'nProt');
        tNFeLogRec.Value := slRet.Text;
        tNFExMotivo.Value := getXMLValue(slRet.Text, 'xMotivo', 'infProt');  
        if (tNFeLogRec.Value>'') and (tNFeLogEnvio.Value>'') then begin
          tNFeLogEnvio.SaveToFile(ArqLogEnvio(tNFeChave.Value));
          tNFeLogRec.SaveToFile(ArqLogRec(tNFeChave.Value));
          S := ArqXML(tNFEChave.Value);
          nfceComp.GerarXMLEnvioDestinatario(
              tNFeChave.Value, 
              ArqLogEnvio(tNFeChave.Value), 
              ArqLogRec(tNFeChave.Value), S);

          if FileExists(S) then 
            tNFEXMLdest.LoadFromFile(ArqXML(tNFeChave.Value));
        end;
      end;  
      tNFE.Post;

      nxDB.Commit;
      New(P);
      P^.msgTran := tNFeTran.AsGuid;
      PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);

      if tNFEStatusNF.Value=100 then
        if tTran.Locate('UID', tNFeTran.Value, []) then 
          GeraEmail;
    finally
      if nxDB.InTransaction then nxDB.Rollback;
    end;  
  except
    on E: Exception do 
      DebugMsgEsp('TdmNFe.SalvaRetornoConsulta - Exception: '+E.Message, False, True);
  end;  
end;

procedure TdmSAT_trans.SalvaRetornoInut;
begin
  try
    InitTran(nxDB, [tNFE], True);
    try
      tNFE.Edit;

      if slRet.Values['errosw']='' then begin
        tNFEStatusInutNF.Value := StrToIntDef(getXMLValue(slRet.Text, 'cStat'), 0);
        tNFEProtocoloInut.Value := getXMLValue(slRet.Text, 'nProt');
        tNFExmlRetInut.Value := slRet.Text;
        
        if (tNFEStatusInutNF.Value=102) or (tNFEStatusInutNF.Value=206) then 
          tNFEStatusInut.Value := statusinut_nfe_ok else  
          tNFEStatusInut.Value := statusinut_nfe_rej;
            
        tNFExMotivoInut.Value := getXMLValue(slRet.Text, 'xMotivo');
      end else begin
        tNFEStatusInutNF.Value := 9999;
        tNFEStatusInut.Value := statusinut_nfe_erro;
        tNFExMotivoInut.Value := slRet.Values['errosw'];
      end;
      
      tNFE.Post;

      nxDB.Commit;
    finally
      if nxDB.InTransaction then nxDB.Rollback;
    end;  
  except
    on E: Exception do 
        DebugMsgEsp('TdmNFe.SalvaRetornoInut - Exception: '+E.Message, False, True);
  end;  
end;

{ TncPoolDMNFe_trans }

constructor TncPoolDMNFe_trans.Create;
begin
  inherited Create;
  DestroyInUse := False;
end;

function TncPoolDMNFe_trans.CreateObj: TObject;
begin
  Result := TdmNFe_trans.Create(nil);
end;

function TncPoolDMNFe_trans.GetDMFromPool: TdmNFe_trans;
begin
  Result := TdmNFe_trans(GetObjFromPool);
end;

class procedure TncPoolDMNFe_trans.ReleaseDM(aDM: TdmNFe_trans);
begin
  if Assigned(gPoolDMTrans) then gPoolDMTrans.ReleaseObj(aDM);
end;

{ TncProcessaContingencias }

constructor TncProcessaContingencias.Create;
begin
  inherited Create(True);
  FreeOnTerminate := True;
  Resume;
end;

procedure TncProcessaContingencias.Execute;
var 
  dm : TdmNFe_trans;
  dummy : integer;
  NextMS : Cardinal;
begin
  coInitialize(nil);
  try
    dm := TdmNFe_trans.Create(nil);
    try
      NextMS := 0;
      dm.OpenDB;
      dm.tNFE.IndexName := 'ItpAmbStatus';
      while (not Terminated) and (not TerminarProcNFE) do begin
        try
          if (GetTickCount>=NextMS)  then begin
            if not dm.ProcessaProxContingenia then
              NextMS := GetTickCount + 10000 + Random(2000) else
              NextMS := 0;
          end;
          Sleep(5);
        except
          on E: Exception do 
            DebugMsg('TncProcessaContingencias.Execute - Exception: ' + E.Message);
        end;
      end;
    finally
      dm.Free;
    end;
  except
    on E: Exception do 
      DebugMsgEsp('TncProcessaContingencias.Execute - Exception: '+E.Message, False, True);
  end;
  CoUninitialize;
end;

{ TncProcessaCancelamentos }

constructor TncProcessaCancelamentos.Create(aGetDM: TGetDMEv);
begin
  inherited Create(False);
  FOnGetDM := aGetDM;
  FreeOnTerminate := True;
end;

procedure TncProcessaCancelamentos.Execute;
var 
  dm : TdmNFe_trans;
  dummy : integer;
  lastCanc, aNewcanc, NextMS : Cardinal;
  aOK1, aOK2 : Boolean;
begin
  Sleep(10);
  coInitialize(nil);
  try
    dm := TdmNFe_trans.Create(nil);
    try
      NextMS := 0;
      lastCanc := 0;
      dm.OpenDB;
      dm.OnGetDM := FOnGetDM;
      dm.tNFE.IndexName := 'ItpAmbStatusCanc';
      while (not Terminated) and (not TerminarProcNFE) do begin
        try
          aNewCanc := GetCancNFe;
          if (aNewCanc<>lastCanc) or (GetTickCount>=NextMS) then begin
            lastCanc := aNewCanc;
            aOk1 := dm.ProcessaProxCancelamentoNFE;
            aOk2 := dm.ProcessaProxCancelamentoTran;
            if aOk1 or aOk2 then
              NextMS := 0 else
              NextMS := GetTickCount + 10000 + Random(2000);
          end;
          Sleep(5);
        except
          on E: Exception do 
            DebugMsg('TncProcessaCancelamentos.Execute - Exception: ' + E.Message);
        end;
      end;
    finally
      dm.Free;
    end;
  except
    on E: Exception do 
      DebugMsgEsp('TncProcessaCancelamentos.Execute - Exception: '+E.Message, False, True);
  end;
  CoUninitialize;
end;

{ TncProcessaInut }

constructor TncProcessaInut.Create;
begin
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TncProcessaInut.Execute;
var 
  dm : TdmNFe_trans;
  NextMS : Cardinal;
  OkInut, OkConsulta : Boolean;
begin
  Sleep(10);
  coInitialize(nil);
  try
    dm := TdmNFe_trans.Create(nil);
    try
      NextMS := 0;
      dm.OpenDB;
      dm.tNFE.IndexName := 'ItpAmbStatusInut';
      while (not Terminated) and (not TerminarProcNFE) do begin
        try
          if (GetTickCount>=NextMS) then begin
            OkInut := dm.ProcessaProxInut;
            OkConsulta := dm.ProcessaProxConsulta;
            if OkInut or OkConsulta then
              NextMS := 0 else
              NextMS := GetTickCount + 10000 + Random(2000);
          end;
          Sleep(5);
        except
          on E: Exception do 
            DebugMsg('TncProcessaInut.Execute - Exception: ' + E.Message);
        end;
      end;
    finally
      dm.Free;
    end;
  except
    on E: Exception do 
      DebugMsgEsp('TncProcessaInut.Execute - Exception: '+E.Message, False, True);
  end;
  CoUninitialize;
end;

{ TncProcessaTransmitir }

constructor TncProcessaTransmitir.Create;
begin
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TncProcessaTransmitir.Execute;
var 
  dm : TdmNFe_trans;
  lastTrans, aNewTrans, NextMS : Cardinal;
begin
  DebugMsg('TncProcessaTransmitir.Execute - 1');
  Sleep(10);
  coInitialize(nil);
  try
    DebugMsg('TncProcessaTransmitir.Execute - 2');
    dm := TdmNFe_trans.Create(nil);
    try
      NextMS := 0;
      lastTrans := 0;
      dm.OpenDB;
      dm.tNFE.IndexName := 'ItpAmbStatus';
      dm.tTran.IndexName := 'IChaveNFE';
      while (not Terminated) and (not TerminarProcNFE) do begin
        try
          aNewTrans := GetTransNFe;
          if (aNewTrans<>lastTrans) or (GetTickCount>=NextMS) then begin
            lastTrans := aNewTrans;
            if dm.ProcessaProxTransmitir then
              NextMS := 0 else
              NextMS := GetTickCount + 15000;
          end;
          Sleep(5);
        except
          on E: Exception do 
            DebugMsg('TncProcessaTransmitir.Execute - Exception: ' + E.Message);
        end;
      end;
    finally
      dm.Free;
    end;
  except
    on E: Exception do 
      DebugMsgEsp('TncProcessaCancelamentos.Execute - Exception: '+E.Message, False, True);
  end;
  CoUninitialize;
end;

initialization
  csNFeTrans := TCriticalSection.Create;

finalization
  csNFeTrans.Free;  


end.
