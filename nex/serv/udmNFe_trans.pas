unit udmNFe_trans;

interface

uses
  System.SysUtils, System.Classes, System.IniFiles, Vcl.OleCtrls, System.Contnrs, SyncObjs,
  Data.DB, nxdb, nxllComponent, nxsdServerEngine,
  nxreRemoteServerEngine, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, madTools, Vcl.ExtCtrls, Windows, Messages,
  uObjPool, ActiveX, Xml.xmldom, Xml.XMLIntf, Xml.omnixmldom,
  Xml.XMLDoc, DateUtils, spdNFe, spdNFeType;

type
  TGetDMEv = procedure (var aDM: TObject) of object;
  
  TdmNFE_trans = class(TDataModule)
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
    tTranSessao: TLongWordField;
    tTranQtdTempo: TFloatField;
    tTranCredValor: TBooleanField;
    tTranFidResgate: TBooleanField;
    tTranPagFunc: TStringField;
    tTranPagPend: TBooleanField;
    tTranRecVer: TLongWordField;
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
    tConfig: TnxTable;
    tDoc: TnxTable;
    tDocID: TUnsignedAutoIncField;
    tDocUID: TGuidField;
    tDocTipo: TByteField;
    tDocBobina: TBooleanField;
    tDocFree: TBooleanField;
    tDocTextOnly: TBooleanField;
    tDocTamanho: TStringField;
    tDocParams: TnxMemoField;
    tDocDoc: TBlobField;
    tDocImg: TGraphicField;
    tDocCustom: TBooleanField;
    tDocMinVer: TWordField;
    tDocSRECVER: TLongWordField;
    tDocRECVER: TLongWordField;
    tTranExtra: TnxMemoField;
    tNFEtpAmb: TByteField;
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
    tNFEUID: TGuidField;
    tNFEChaveCont: TStringField;
    tNFEConsultouChave: TBooleanField;
    tNFELogEnvio: TnxMemoField;
    tNFELogRec: TnxMemoField;
    tTranDescricao: TWideMemoField;
    tDocNome: TWideStringField;
    tDocObs: TWideMemoField;
    nfeComp: TspdNFe;
    tNFETicksConsulta: TLongWordField;
    tNFConfigModeloSAT_Email: TGuidField;
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
    tNFConfigTipo: TByteField;
    tNFConfigNomeDllSat: TStringField;
    tNFConfigSignACSat: TStringField;
    tNFConfigDependSATOk: TBooleanField;
    tNFConfigEnd_CodUF: TByteField;
    tNFConfigTelefone: TStringField;
    tNFConfigtpAmb: TByteField;
    tNFConfigCSC: TStringField;
    tNFConfigIdCSC: TStringField;
    tNFConfigFromEmail: TStringField;
    tNFConfigFromName: TStringField;
    tNFConfigTrib_Padrao: TWordField;
    tNFConfigPedirEmail: TByteField;
    tNFConfigPedirCPF: TByteField;
    tNFConfigEnd_Complemento: TStringField;
    tNFConfigModeloNFCe_Email: TGuidField;
    tNFConfigTipoCert: TByteField;
    tNFConfigurls_consulta: TnxMemoField;
    tNFConfigurls_qrcode_hom: TnxMemoField;
    tNFConfigurls_qrcode_prod: TnxMemoField;
    tNFConfigAssuntoEmail: TStringField;
    tNFConfigRemoverNFCe: TBooleanField;
    tNFConfigDependNFCEOk: TBooleanField;
    tNFConfigCorpoEmail: TnxMemoField;
    tNFConfigPinCert: TStringField;
    tNFConfigConfig_nfe: TnxMemoField;
    tNFConfigsat_modelo: TByteField;
    tNFConfigsat_config: TStringField;
    tNFConfignfe_permite_cred_icms: TBooleanField;
    tNFConfignfe_perc_cred_icms: TFloatField;
    tNFConfigDependNFEOk: TBooleanField;
    tNFConfigCodigoAtivacao: TStringField;
    tNFConfigAssociarSignAC: TBooleanField;
    tNFConfigtpAmbNFE: TByteField;
    tNFConfigModeloNFE_Email: TGuidField;
    tNFConfigObsFisco: TnxMemoField;
    tNFConfignfe_venda: TBooleanField;
    tNFConfigtipodoc_padrao: TByteField;
    tNFConfigcontabilidade: TStringField;
    tCCE: TnxTable;
    tCCEUID: TGuidField;
    tCCENumSeq: TUnsignedAutoIncField;
    tCCEChave: TStringField;
    tCCEDataHora: TDateTimeField;
    tCCEtran_uid: TGuidField;
    tCCEtran_id: TLongWordField;
    tCCEnfe_serie: TStringField;
    tCCEnfe_numero: TLongWordField;
    tCCEtpAmbNFE: TByteField;
    tCCETexto: TnxMemoField;
    tCCEStatus: TByteField;
    tCCEStatusCCE: TIntegerField;
    tCCEXMLdest: TnxMemoField;
    tCCEXMLret: TnxMemoField;
    tCCExMotivo: TnxMemoField;
    tCCELogEnvio: TnxMemoField;
    tCCELogRec: TnxMemoField;
    tCCEUsuario: TStringField;
    tCCEProtocolo: TStringField;
    tAuxCCE: TnxTable;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure nfeCompLog(const aNome, aID, aFileName: string);
    procedure nfeCompXmlDestinatario(const aFileName: string);
  private
    _Dir  : String;
    serie : String;
    sXML : String;
    slRet : TStrings;
    FHoraCanc : TDateTime;
    FOnGetDM : TGetDMEv;
    FlastConfig : Cardinal;
    FLastConsulta : Cardinal;
    FNoNet : Boolean;
    FCCE: Boolean;
    
    function CancelaNFe: Boolean;
    function EnviarNFE: Boolean;
    function EnviarCCE: Boolean;
    function InutilizarNFE: Boolean;
    function ConsultarNFE: Boolean;
    function SeqEvento: Integer;
    
    procedure SalvaRetornoTrans;
    procedure SalvaRetornoCanc;
    procedure SalvaRetornoInut;
    procedure SalvaRetornoConsulta;
    procedure SalvaRetornoCCE(D: TDateTime);

    procedure IniciaTicksConsulta;

    function ProxTicksConsulta: Cardinal;
    
    procedure GeraEmail;
    procedure GeraEmailCCE;
    procedure RefreshConfig;
  public
    procedure OpenDB;
    function Enviar(aTran: TGUID): Boolean;
    function ProcessaProxCancelamentoNFE: Boolean;
    function ProcessaProxCancelamentoTran: Boolean;
    function ProcessaProxInut: Boolean;
    function ProcessaProxConsulta: Boolean;
    function ProcessaProxTransmitir: Boolean;
    function ProcessaProxCCe: Boolean;

    function Inutilizar(aAno: word; aInicio, aFim: Cardinal; aJust: String): String;

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

  TncProcessaInutNFe = class ( TThread  )
  protected 
    procedure Execute; override;
  public 
    constructor Create; 
  end;

  TncProcessaTransmitirNFe = class ( TThread  )
  protected 
    procedure Execute; override;
  public 
    constructor Create; 
  end;  

  TncProcessaCCE = class ( TThread  )
  protected 
    procedure Execute; override;
  public 
    constructor Create; 
  end;    

  TncProcessaConsultarNFe = class ( TThread  )
  protected 
    procedure Execute; override;
  public 
    constructor Create; 
  end;  
         
  TncProcessaCancelamentosNFe = class ( TThread  )
  private 
    FOnGetDM : TGetDMEv;
  protected 
    procedure Execute; override;
  public 
    constructor Create(aGetDM: TGetDMEv); 
  end;  
       
  procedure InitProcessosNFE(aOnGetDM : TGetDMEv);
  procedure FinalizaProcessosNFE;

  procedure IncCanc_NFe;
  function GetCanc_NFe: Cardinal;

  procedure IncConfig_NFe;
  function GetConfig_NFe: Cardinal;

  procedure IncTrans_NFe;
  function GetTrans_NFe: Cardinal;

  procedure IncCCE;
  function GetCCE: Cardinal;

  procedure IncConsulta_NFe;
  function GetConsulta_NFe: Cardinal;

  procedure IncGerar_NFe;
  function GetGerar_NFe: Cardinal;

  function ArqLogEnvio(aChave: String): String;
  function ArqLogRec(aChave: String): String;
  
   
var
  dmNFE_trans: TdmNFE_trans;
  NewCancNFe   : Cardinal = 1; 
  NewConfigNFe : Cardinal = 1;
  NewTransNFe  : Cardinal = 1;
  NewGerarNFe  : Cardinal = 1;
  NewConsultaNFe : Cardinal = 1;
  NewCCE : Cardinal = 1;

  csNFeTrans : TCriticalSection;
  
  gProcessaCancelamentosNFe : TncProcessaCancelamentosNFe = nil;
  gProcessaInutNFe : TncProcessaInutNFe = nil;
  gProcessaTransmitirNFe : TncProcessaTransmitirNFe = nil;
  gProcessaConsultarNFe : TncProcessaConsultarNFe = nil;
  gProcessaCCE: TncProcessaCCE = nil;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
    
uses ncServBD, ncDebug, ncClassesBase, udmNFe_gerar, ncGuidUtils, ncMsgCom,
  ncDMdanfe_NFe, ncDMServ, ncErros;

{$R *.dfm}

function ArqXML(aChave: String): String;
begin
  Result := ExtractFilePath(paramstr(0))+'NFe\XmlDestinatario\'+aChave+'-NFe.xml'
end;

function ArqCCE(aChave: String): String;
begin
  Result := ExtractFilePath(paramstr(0))+'NFe\XmlDestinatario\'+aChave+'-cce.xml'
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

procedure IncCanc_NFe;
begin
  csNFeTrans.Enter;
  try
    Inc(NewCancNFe);
  finally
    csNFeTrans.Leave;
  end;
end;

procedure IncConfig_NFe;
begin
  csNFeTrans.Enter;
  try
    Inc(NewConfigNFe);
  finally
    csNFeTrans.Leave;
  end;
end;

procedure IncTrans_NFe;
begin
  csNFeTrans.Enter;
  try
    Inc(NewTransNFe);
  finally
    csNFeTrans.Leave;
  end;
end;

procedure IncConsulta_NFe;
begin
  csNFeTrans.Enter;
  try
    Inc(NewConsultaNFe);
  finally
    csNFeTrans.Leave;
  end;
end;


procedure IncGerar_NFe;
begin
  csNFeTrans.Enter;
  try
    Inc(NewGerarNFe);
  finally
    csNFeTrans.Leave;
  end;
end;

function GetGerar_NFe: Cardinal;
begin
  csNFeTrans.Enter;
  try
    Result := NewGerarNFe;
  finally
    csNFeTrans.Leave;
  end;
end;

function GetCanc_NFe: Cardinal;
begin
  csNFeTrans.Enter;
  try
    Result := NewCancNFe;
  finally
    csNFeTrans.Leave;
  end;
end;

function GetTrans_NFe: Cardinal; 
begin
  csNFeTrans.Enter;
  try
    Result := NewTransNFe;
  finally
    csNFeTrans.Leave;
  end;
end;

procedure IncCCE;
begin
  csNFeTrans.Enter;
  try
    Inc(NewCCE);
  finally
    csNFeTrans.Leave;
  end;
end;

function GetCCE: Cardinal; 
begin
  csNFeTrans.Enter;
  try
    Result := NewCCE;
  finally
    csNFeTrans.Leave;
  end;
end;

function GetConsulta_NFe: Cardinal; 
begin
  csNFeTrans.Enter;
  try
    Result := NewConsultaNFe;
  finally
    csNFeTrans.Leave;
  end;
end;


function GetConfig_NFe: Cardinal;
begin
  csNFeTrans.Enter; 
  try
    Result := NewConfigNFe;
  finally
    csNFeTrans.Leave;
  end;
end;

procedure InitProcessosNFE(aOnGetDM : TGetDMEv);
begin
  if not Assigned(gProcessaCancelamentosNFe) then
    gProcessaCancelamentosNFe := TncProcessaCancelamentosNFe.Create(aOnGetDM);

  if not Assigned(gProcessaInutNFe) then
    gProcessaInutNFe := TncProcessaInutNFe.Create;

  if not Assigned(gProcessaTransmitirNFe) then
    gProcessaTransmitirNFe := TncProcessaTransmitirNFe.Create;

  if not Assigned(gProcessaCCE) then
    gProcessaCCE := TncProcessaCCE.Create;

  if not Assigned(gProcessaConsultarNFe) then
    gProcessaConsultarNFe := TncProcessaConsultarNFe.Create;

  if not Assigned(gProcessaGerarNFe) then
    gProcessaGerarNFe := TncProcessaGerarNFe.Create;
end;

procedure FinalizaProcessosNFE;
begin
  if Assigned(gProcessaCancelamentosNFe) then begin
    gProcessaCancelamentosNFe.Terminate;
    gProcessaCancelamentosNFe := nil;
  end;

  if Assigned(gProcessaInutNFe) then begin
    gProcessaInutNFe.Terminate;
    gProcessaInutNFe := nil;
  end;

  if Assigned(gProcessaCCE) then begin
    gProcessaCCE.Terminate;
    gProcessaCCE := nil;
  end;

  if Assigned(gProcessaConsultarNFe) then begin
    gProcessaConsultarNFe.Terminate;
    gProcessaConsultarNFe := nil;
  end;
  
  if Assigned(gProcessaTransmitirNFe) then begin
    gProcessaTransmitirNFe.Terminate;
    gProcessaTransmitirNFe := nil;
  end;

  if Assigned(gProcessaGerarNFe) then begin
    gProcessaGerarNFe.Terminate;
    gProcessaGerarNFe := nil;
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

function TdmNFE_trans.CancelaNFe: Boolean;
var S: String;
begin
  try  
    DebugMsg(Self, 'CancelaNFe - Chave: '+tNFEChave.Value+' - Protocolo: '+tNFEProtocolo.Value+' - JustCanc: '+tNFEJustCanc.Value);
    slRet.Text := NFeComp.CancelarNFeEvento(tNFEChave.Value, tNFEProtocolo.Value, tNFEJustCanc.Value, FormatDateTime('YYYY-mm-dd"T"HH:mm:ss', Now), 1, TimeZoneStr);
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
      DebugEx(Self, 'CancelaNFe', E);
    end;
  end;  
  if Result then SalvaRetornoCanc;
end;

function TdmNFE_trans.ConsultarNFE: Boolean;
var 
  sXML, sChave: String;
begin
  try      
    sXML := tNFEXMLtrans.Value;
    sChave := ChaveFromXML(sXML);
      
    DebugMsg(Self, 'ConsultarNFE - Recibo: '+tNFERecibo.Value+' - Chave: '+sChave);
    slRet.Text := NFeComp.ConsultarRecibo(tNFERecibo.Value);
    DebugMsg(Self, 'ConsultarNFE - Retorno: '+sLineBreak+slRet.Text);
//    slRet.Text := NFeComp.ConsultarNF(ChaveFromXML(sXML));
    FNoNet := False;
    Result := True;
  except
    on E: Exception do begin
      if SameText(E.ClassName, 'EOleException') and (Pos('URL', E.Message)>0) then begin
        FNoNet := True;
        Result := False;
      end
      else begin
        Result := True;
        slRet.Values['errosw'] := E.Message;
      end;
      DebugMsg('TdmNFe_trans.ConsultarNFE - Exception: ' + E.Message);
    end;
  end;  
  if Result then SalvaRetornoConsulta;
end;

procedure TdmNFE_trans.DataModuleCreate(Sender: TObject);
begin
  FNoNet := False;
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

procedure TdmNFE_trans.DataModuleDestroy(Sender: TObject);
begin
  slRet.Free;
  NFeComp.Free;
end;

function TdmNFE_trans.Enviar(aTran: TGUID): Boolean;
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

function ObsToTextoCorrecao(S: String): String;
var
  a: TStrings;
  i : integer;
begin
  Result := '';
  a := TStringList.Create;
  try
    a.Text := S;
    for I := 0 to a.Count-1 do
    if Trim(a[i])>'' then begin
      if Result>'' then Result := Result + '; ';
      Result := Result + Trim(FmtNfe(a[i]));
    end;
  finally
    a.Free;
  end;
end;
                                                           
function TdmNFE_trans.EnviarCCE: Boolean;
var 
  S: String;
  D: TDateTime;
begin
  try
    FCCE := True;
    DebugMsg(Self, 'EnviarCCE - '+ChaveFromXML(sXML)); 
    if tCCEtpAmbNFe.Value=2 then
      NFeComp.Ambiente := akHomologacao else
      NFeComp.Ambiente := akProducao;   
    D := Now;
    slRet.Text := NFeComp.EnviarCCe(tCCEChave.Value, ObsToTextoCorrecao(tCCETexto.Value), FormatDateTime('YYYY-mm-dd"T"HH:mm:ss', D), tNFConfigEnd_CodUF.AsString, '001', SeqEvento, TimeZoneStr);
    FNoNet := False;
    DebugMsg(Self, 'EnviarCCE - Retorno: '+sLineBreak+slRet.Text);
    Result := True;
  except
    on E: Exception do begin
      S := E.ClassName;
      if SameText(S, 'EOleException') and (Pos('URL', E.Message)>0) then begin
        FNoNet := True;
        Result := False;
      end
      else begin
        Result := True;
        slRet.Values['errosw'] := E.Message;
      end;  
      DebugEx(Self, 'EnviarCCE', E);
    end;
  end;  
  
  SalvaRetornoCCE(D);
end;

function TdmNFE_trans.EnviarNFE: Boolean;
var S: String;
begin
  try
    if tNFEContingencia.Value then
      sXML := tNFEXMLtransCont.Value else
      sXML := tNFEXMLtrans.Value;

    DebugMsg(Self, 'EnviarNFE - '+ChaveFromXML(sXML));  
    slRet.Text := NFeComp.EnviarNF('1', sXML, False);
    FNoNet := False;
    DebugMsg(Self, 'EnviarNFE - Retorno: '+sLineBreak+slRet.Text);
    Result := True;
  except
    on E: Exception do begin
      S := E.ClassName;
      if SameText(S, 'EOleException') and (Pos('URL', E.Message)>0) then begin
        FNoNet := True;
        Result := False;
      end
      else begin
        Result := True;
        slRet.Values['errosw'] := E.Message;
      end;  
      DebugEx(Self, 'EnviarNFE', E);
    end;
  end;  
  
  SalvaRetornoTrans;
end;

procedure TdmNFE_trans.GeraEmail;
var 
  dmDanfe: TdmDanfe_nfe;
  S : String;
begin

  if tNFConfigFromEmail.Value = '' then Exit;
  if tNFConfigNomeFantasia.Value = '' then Exit;
  if tNFEEmail.Value = '' then Exit;
  
  dmDanfe := TdmDanfe_nfe.Create(nil);
  try
    S := ExtractFilePath(ParamStr(0))+'Email\';

    try
      DebugMsg('TdmNFe_trans.GeraEmail - tDocUID.Value = '+tNFConfigModeloNFe_Email.Value+' - Email: '+tNFEEmail.Value);
      if tDoc.FindKey([tNFConfigModeloNFe_Email.Value]) then begin
        dmDanfe.LoadXML(tNFEXMLdest.Value, 
                        tTranTroco.Value, 
                        tTranFunc.Value, 
                        tTranID.AsString,
                        tConfig,
                        tTranCancelado.Value);
        dmDanfe.LoadReport(tDocDoc, '');
        dmDanfe.EnviaEmail(tNFConfigFromEmail.Value, tNFConfigNomeFantasia.Value, tNFConfigAssuntoEmail.Value, tNFEEmail.Value);
      end;  
    except
      on E: Exception do 
        DebugEx(Self, 'GeraEmail', E);
    end;
  finally
    dmDanfe.Free;
  end;
end;

procedure TdmNFE_trans.GeraEmailCCE;
var S, PDF, sEmail: String;
begin
  tNFE.Active := True;
  if not tNFE.Locate('Chave', tCCEChave.Value, []) then Exit;

  if tNFConfigFromEmail.Value = '' then Exit;
  if tNFConfigNomeFantasia.Value = '' then Exit;
  if tCCEXMLDest.Value='' then Exit;

  sEmail := tNFEEmail.Value;
  if sEmail = '' then 
    sEmail := getXMlValue(tNFEXMLDest.Value, 'email', 'nfeProc,NFe,infNFe,dest');
    
  if sEmail='' then Exit;
  
  
  S := ExtractFilePath(ParamStr(0))+'Email\cce_'+tCCEChave.Value+'.xml';
  tCCEXMLDest.SaveToFile(S);

  PDF := ExtractFilePath(ParamStr(0))+'NFE\CCE_'+tCCEChave.Value+'.pdf';;

  if Not FileExists(PDF) then Exit;

  DebugMsg(Self, 'GeraEmailCCE - Email: '+tNFEEmail.Value);
  TdmDanfe_nfe.EnviaEmailCCE(tNFConfigFromEmail.Value, tNFConfigNomeFantasia.Value, S, PDF, sEmail);
end;

function TdmNFE_trans.GeraXMLProt(aChave: String): Integer;
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
  NFeComp.GerarXMLEnvioDestinatario(aChave, ArqLogEnvio(aChave), ArqLogRec(aChave), ArqXML(aChave));
  tNFeXMLDest.LoadFromFile(ArqXML(aChave));
  if tNFEProtocolo.Value='' then
    tNFEProtocolo.Value := getXMLValue(tNFeLogRec.Value, 'nProt');  
  if tNFERecibo.Value='' then
    tNFERecibo.Value := getXMLValue(tNFeLogRec.Text, 'nRec');
  tNFe.Post;
  Result := 0;
end;

procedure TdmNFE_trans.IniciaTicksConsulta;

begin
  tNFE.SetRange([tiponfe_NFe, tNFConfigtpAmbNfe.Value, nfestatus_consultar, 1],
                [tiponfe_NFe, tNFConfigtpAmbNFe.Value, nfestatus_consultar, High(Cardinal)]);
  try                
    while not tNFE.IsEmpty do begin
      tNFE.Edit;
      tNFETicksConsulta.Value := 0;
      tNFE.Post;
      tNFE.First;
    end;
  finally
    tNFE.CancelRange;
  end;

  tNFE.SetRange([tiponfe_NFe, tNFConfigtpAmbNFe.Value, nfestatus_consultar, 0],
                [tiponfe_NFe, tNFConfigtpAmbNFe.Value, nfestatus_consultar, 0]);
  try                
    tNFE.First;
    while not tNFE.IsEmpty do begin
      tNFE.Edit;
      tNFETicksConsulta.Value := GetTickCount;
      tNFE.Post;
      Sleep(1);
      tNFE.First;
    end;
  finally
    tNFE.CancelRange;
  end;
  
end;

function TdmNFE_trans.Inutilizar(aAno: Word; aInicio, aFim: Cardinal;
  aJust: String): String;
var cStat : Integer;
begin
  DebugMsg(Self, 'Inutilizar');
  try
    RefreshConfig;
    DebugMsg(Self, 'Inutilizar 2');
    slRet.Text := NFeComp.InutilizarNF('', Copy(IntToStr(aAno), 3, 2), SoDig(tNFConfigCNPJ.Value), '55', tNFConfigSerieNFe.Value, IntToStr(aInicio), IntToStr(aFim), aJust);
    DebugMsg(Self, 'Inutilizar - Retorno: '+slRet.Text);
    cStat := StrToIntDef(getXMLValue(slRet.Text, 'cStat'), 0);
    DebugMsg(Self, 'Inutilizar - cStat: '+IntToStr(cStat));
    if (cStat=102) or (cStat=206) then 
      result := 'Inutilização realizada com sucesso.'+sLineBreak+'xMotivo = '+getXMLValue(slRet.Text, 'xMotivo') else
      result := 'Inutilização rejeitada.'+sLineBreak+'xMotivo = '+getXMLValue(slRet.Text, 'xMotivo');
  except
    on E: Exception do begin
      Result := E.Message;
      DebugEx(Self, 'Inutilizar', E);
    end;
  end;
end;

function TdmNFE_trans.InutilizarNFE: Boolean;
var J: String;
begin
  try      
    FHoraCanc := Now;   
    if tNFEStatusNF.Value=9999 then
      J := 'Falha de software ao gerar NF' else
      J := 'NF rejeitada pela SEFAZ';

    slRet.Text := '';  
    if tNFENumero.Value>0 then
      slRet.Text := NFeComp.InutilizarNF('', Copy(IntToStr(YearOf(tNFEDataHora.Value)), 3, 2), 
                                          SoDig(tNFConfigCNPJ.Value), '55', 
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
      DebugMsg('TdmNFe_trans.InutilizaNF - Exception: ' + E.Message);
    end;
  end;  
  if Result then SalvaRetornoInut;
end;

procedure TdmNFE_trans.nfeCompLog(const aNome, aID, aFileName: string);
var sl : TStrings;
begin
  DebugMsg(Self, 'nfeCompLog - aNome: ' + aNome + ' - aID: ' + aID + ' - aFileName: ' + aFileName);

  if Sametext('env-sinc-lot', aNome) or SameText('rec-sinc', aNome) or SameText('env-lot', aNome) or SameText('rec', aNome) then begin
    sl := TStringList.Create;
    try
      sl.LoadFromFile(aFileName);

      if FCCE then begin
        InitTran(nxDB, [tCCE], True);
        try
          tCCE.Edit;
          if SameText('rec', aNome) then
            tCCELogRec.Value := sl.Text else
            tCCELogEnvio.Value := sl.Text;
          tCCE.Post;
          nxDB.Commit;
        finally
          if nxDB.InTransaction then nxDB.Rollback;
        end;      
      end else begin
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
      end;
    except
      on E: Exception do 
        DebugEx(Self, 'nfeCompLog', E);
    end;                                       
    sl.Free;
  end;
end;

procedure TdmNFE_trans.nfeCompXmlDestinatario(const aFileName: string);
begin
  DebugMsg(Self, 'nfeCompXmlDestinatario - aFileName: '+aFileName);
end;

procedure TdmNFE_trans.OpenDB;
begin
  tNFConfig.Open;
  tTran.Open;
  tNFE.Open;                  
  tConfig.Open;
  tDoc.Open;
end;

function TdmNFE_trans.ProcessaProxCancelamentoNFE: Boolean;
begin
  DebugMsg(Self, 'ProcessaProxCancelamentoNFE - 1');
  try
    RefreshConfig;
    Result := False;
    DebugMsg(Self, 'ProcessaProxCancelamentoNFE - 2');
    
    if not tNFE.FindKey([tiponfe_NFe, statuscanc_nfe_processarnfe]) then Exit;

    DebugMsg(Self, 'ProcessaProxCancelamentoNFE - 3');
    
  
    if tTran.FindKey([tNFETran.Value]) then 
      Result := CancelaNFe
    else begin  
      DebugMsg(Self, 'ProcessaProxCancelamentoNFE - 4');
      tNFE.Edit;
      tNFEStatusCanc.Value := statuscanc_nfe_erro;
      tNFExMotivoCanc.Value := 'Transação não encontrada para essa NFE';
      tNFE.Post;
    end;
    DebugMsg(Self, 'ProcessaProxCancelamentoNFE - 5');
  except  
    on E: Exception do 
      DebugEx(Self, 'ProcessaProxCancelamentoNFE', E);
  end;
end;

function TdmNFE_trans.ProcessaProxCancelamentoTran: Boolean;
var 
  dm: Tdm;
  O : TObject;
  S : String;
begin
  DebugMsg(Self, 'ProcessaProxCancelamentoTran 1');
  try
    RefreshConfig;

    DebugMsg(Self, 'ProcessaProxCancelamentoTran 2');
    if not tNFE.FindKey([tiponfe_NFe, statuscanc_nfe_processatran]) then
    begin
      Result := False;
      Exit;
    end;
    Result := True;

    DebugMsg(Self, 'ProcessaProxCancelamentoTran 3');
    

    TncServidorBase.Lock;
    try
      FOnGetDM(O);
      if O=nil then Exit;

      dm := tDM(O);

      DebugMsg(Self, 'ProcessaProxCancelamentoTran 4');
      S := dm.CancelaTranNFe(tNFEChave.Value);
      if S>'' then
        DebugMsg(Self, 'ProcessaProxCancelamentoTran - Erro: '+S);
    finally
      TncServidorBase.Unlock;
    end;
  except  
    on E: Exception do 
      DebugEx(Self, 'ProcessaProxCancelamento', E);
  end;
end;

function TdmNFE_trans.ProcessaProxCCE: Boolean;
begin
  try
    DebugMsg(Self, 'ProcessaProxCCE');
    RefreshConfig;

    Result := False;
    if not tCCE.FindKey([statuscce_enviar]) then Exit;
    
    DebugMsg(Self, 'ProcessaProxCCE 2');

    Result := EnviarCCE;
  except
    on E: Exception do 
      DebugEx(Self, 'ProcessaProxCCE', E);
  end;
end;

function TdmNFE_trans.ProcessaProxConsulta: Boolean;
begin
  REsult := False;
  DebugMsg('TdmNFe_trans.ProcessaProxConsulta - 1');
  try
    RefreshConfig;

    DebugMsg('TdmNFe_trans.ProcessaProxConsulta - 2');
    

    tNFE.SetRange([tiponfe_NFe, tNFConfigtpAmbNFe.Value, nfestatus_consultar, 1],
                  [tiponfe_nfe, tNFConfigtpAmbNFe.Value, nfestatus_consultar, GetTickCount]);
    try
      DebugMsg('TdmNFe_trans.ProcessaProxConsulta - 3');
      tNFE.Refresh;
      tNFE.First;
      if tNFE.IsEmpty then Exit;
      if not tTran.FindKey([tNFEChave.Value]) then begin
        DebugMsg('TdmNFe_trans.ProcessaProxConsulta - 4');
        tNFE.Edit;
        tNFEStatus.Value := nfetran_erro;
        tNFExMotivo.Value := 'Transação não encontrada no banco de dados';
        tNFE.Post;
        Result := True;
        Exit;
      end;
    
      Result := ConsultarNFE;
      DebugMsg('TdmNFe_trans.ProcessaProxConsulta - 5');
    finally
      tNFE.CancelRange;
    end;
  except
    on E: Exception do 
      DebugMsgEsp('TdmNFe_trans.ProcessaProxConsulta - Exception: '+E.Message, False, True);
  end;
  DebugMsg('TdmNFe_trans.ProcessaProxConsulta - 6');
end;

function TdmNFE_trans.ProcessaProxInut: Boolean;
begin
  try
    RefreshConfig;

    tNFE.IndexName := 'ITipoDoctpAmbStatusInut';    
  
    Result := False;
    if not tNFE.FindKey([tiponfe_NFe, tNFConfigtpAmbNFe.Value, statusinut_nfe_processar]) then Exit;
      
    Result := InutilizarNFE;
  except
    on E: Exception do 
      DebugMsgEsp('TdmNFe_trans.ProcessaProxInut - Exception: '+E.Message, False, True);
  end;
end;

function TdmNFE_trans.ProcessaProxTransmitir: Boolean;
begin
  try
    DebugMsg('TdmNFe_trans.ProcessaProxTransmitir');
    RefreshConfig;

    Result := False;
    if not tNFE.FindKey([tiponfe_NFe, tNFConfigtpAmbNFe.Value, nfetran_transmitir]) then Exit;
    if not tTran.FindKey([tNFEChave.Value]) then begin
      DebugMsg('TdmNFe_trans.ProcessaProxTransmitir - 2');
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

function TdmNFE_trans.ProxTicksConsulta: Cardinal;
begin
  if FNoNet then begin
    Result := GetTickCount+10000;
    Exit;
  end;
  
  tNFE.SetRange([tiponfe_NFe, tNFConfigtpAmbNFe.Value, nfestatus_consultar, 1],
                [tiponfe_nfe, tNFConfigtpAmbNFe.Value, nfestatus_consultar, High(Cardinal)]);
  try
    tNFE.First;
    if tNFE.isEmpty then
      Result := GetTickCount + 15000 else
      Result := tNFETicksConsulta.Value;
  finally
    tNFE.CancelRange;
  end;
end;

procedure TdmNFE_trans.RefreshConfig;
var 
  aNewConfig : Cardinal;
  S : String;
begin
  aNewConfig := getConfig_NFE;
  if aNewConfig=FlastConfig then Exit;

  DebugMsg('TdmNFe_trans.RefreshConfig - 1');

  try
  
    tNFConfig.Active := True;
    tNFConfig.Refresh;
    FlastConfig := aNewConfig;

    S := ExtractFilePath(ParamStr(0))+'NFe\';

    NFeComp.UF := tNFConfigEnd_UF.Value;
    NFeComp.CNPJ := SoDig(tNFConfigCNPJ.Value);
    NFeComp.DiretorioEsquemas := S+'Esquemas\';
    NFeComp.DiretorioTemplates := S+'Templates\';
    NFeComp.DiretorioLog := S+'Log';
    NFeComp.TimeOut := 60000;
    if FileExists(S+'NFeServidoresDes.ini') then
      NFeComp.ArquivoServidoresHom := S+'NFeServidoresDes.ini' else
      NFeComp.ArquivoServidoresHom := S+'NFeServidoresHom.ini';
    NFeComp.ArquivoServidoresProd := S+'NFeServidoresProd.ini';
    NFeComp.DiretorioXmlDestinatario := S+'XmlDestinatario\';
    NFeComp.DiretorioLogErro := S+'Erros\';
    NFeComp.DiretorioTemporario := S+'Temp\';
    NFeComp.VersaoManual := vm50a;
    NFeComp.ConexaoSegura := True;
    NFeComp.ValidarEsquemaAntesEnvio := False;

    if tNFConfigTipoCert.Value=tipocert_a1 then
      NFeComp.TipoCertificado := ckFile
    else begin
      NFeComp.TipoCertificado := ckSmartCard;
      NFeComp.PinCode := tNFConfigPinCert.Value;
    end;

    if tNFConfigtpAmbNFe.Value=2 then
      NFeComp.Ambiente := akHomologacao else
      NFeComp.Ambiente := akProducao;

    NFeComp.NomeCertificado.Text := tNFConfigCertificadoDig.Value;
  except
    on E: Exception do begin
      DebugMsg('TdmNFe_trans.RefreshConfig - Exception - '+E.ClassName+': '+E.Message);
      raise;
    end;
  end;
end;

function ArqLogEnvio(aChave: String): String;
begin
  Result :=ExtractFilePath(paramstr(0))+'NFe\Log\'+aChave+'env-sinc-lot.xml';
end;

function ArqLogRec(aChave: String): String;
begin
  Result :=ExtractFilePath(paramstr(0))+'NFe\Log\'+aChave+'env-sinc-ret.xml';
end;

procedure TdmNFE_trans.SalvaRetornoTrans;
var 
  S : String;
  P : PmsgNFEUpdated;
begin
  DebugMsg(Self, 'TdmNFe_trans.SalvaRetornoTrans 1');

  try
    InitTran(nxDB, [tNFE, tTran], True);
    try
      DebugMsg(Self, 'SalvaRetornoTrans 2');
    
      tNFE.Edit;

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
        tNFEStatusNF.Value := StrToIntDef(getXMLValue(slRet.Text, 'cStat'), 0);
        tNFEProtocolo.Value := getXMLValue(slRet.Text, 'nProt');
        if (tNFEStatusNF.Value in [103, 104, 105]) then begin
          tNFEStatus.Value := nfestatus_consultar;
          tNFETicksConsulta.value := GetTickCount+3000;
        end else begin
          tNFEStatus.Value := nfestatus_erro;
          if (tNFEStatusNF.Value=205) or (tNFEStatusNF.Value=218) or (tNFEStatusNF.Value=539) then
            tNFEStatusInut.Value := statusinut_nfe_ok else
            tNFEStatusInut.Value := statusinut_nfe_processar;
          tNFExMotivo.Value := getXMLValue(slRet.Text, 'xMotivo', 'infProt');  
        end;
      end;  
      tTran.Edit;
      tTranStatusNFE.Value := tNFEStatus.Value;
      tTranChaveNFE.Value := tNFEChave.Value;
      tTran.Post;
      
      tNFE.Post;

      DebugMsg(Self, 'SalvaRetornoTrans 3');

      nxDB.Commit;

      DebugMsg(Self, 'SalvaRetornoTrans 4');

      New(P);
      P^.msgCCE := False;
      P^.msgUID := tTranUID.AsGuid;
      PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);

      DebugMsg(Self, 'SalvaRetornoTrans 5');
    finally
      if nxDB.InTransaction then nxDB.Rollback;
    end;  
  except
    on E: Exception do 
      DebugEx(Self, 'SalvaRetornoTrans', E);
  end;  
end;        

function TdmNFE_trans.SeqEvento: Integer;
begin
  tAuxCCE.Active := True;
  tAuxCCE.SetRange([tCCEChave.Value, statuscce_ok], [tCCEChave.Value, statuscce_ok]);
  Result := tAuxCCE.RecordCount+1;
end;

procedure TdmNFE_trans.SalvaRetornoCanc;
var 
  S : String;
  P : PmsgNFEUpdated;
begin
  DebugMsg(Self, 'SalvaRetornoCanc - 1');
  try
    InitTran(nxDB, [tNFE, tTran], True);
    try
      tNFE.Edit;

      DebugMsg(Self, 'SalvaRetornoCanc - 2');
      

      if slRet.Values['errosw']='' then begin
        DebugMsg(Self, 'SalvaRetornoCanc - 3 - slRet.Text: '+slRet.Text);
        
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
        DebugMsg(Self, 'SalvaRetornoCanc - 4');
      
        tNFEStatusCancNF.Value := 9999;
        tNFEStatusCanc.Value := statuscanc_nfe_erro;
        tNFExMotivoCanc.Value := slRet.Values['errosw'];
      end;
      
      tTran.Edit;
      tTranStatusCanc.Value := tNFEStatusCanc.Value;
      tTran.Post;
      
      tNFE.Post;

      nxDB.Commit;

      if tNFEStatusCanc.Value <> statuscanc_nfe_processatran then begin
        New(P);
        P^.msgCCE := False;
        P^.msgUID := tTranUID.AsGuid;
        PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);
      end;  

      DebugMsg(Self, 'SalvaRetornoCanc - 5');
    finally
      if nxDB.InTransaction then nxDB.Rollback;
    end;  
  except
    on E: Exception do 
        DebugEx(Self, 'SalvaRetorno', E);
  end;  
end;

procedure TdmNFE_trans.SalvaRetornoCCE(D: TDateTime);
var 
  S : String;
  P : PmsgNFEUpdated;
begin
  DebugMsg(Self, 'SalvaRetornoCCE 1');

  try
    InitTran(nxDB, [tCCE], True);
    try
      DebugMsg(Self, 'SalvaRetornoCCE 2');
    
      tCCE.Edit;
      tCCEDataHora.Value := D;

      if slRet.Values['errosw']>'' then
      begin
        tCCEStatusCCE.Value := 9999;
        tCCEStatus.Value := statuscce_erro;
        tCCExMotivo.Value := slRet.Values['errosw'];
      end 
      else begin
        tCCEXMLret.Value := slRet.Text;
        tCCEStatusCCE.Value := StrToIntDef(getXMLValue(slRet.Text, 'cStat', 'infEvento'), 0);
        tCCEProtocolo.Value := getXMLValue(slRet.Text, 'nProt');
        tCCExMotivo.Value := getXMLValue(slRet.Text, 'xMotivo', 'infEvento');  
        if tCCEStatusCCE.Value in [135, 136] then begin
          tCCEStatus.Value := statuscce_ok;
          
          S := ArqCCE(tCCEChave.Value);
          if FileExists(S) then 
            tCCEXMLdest.LoadFromFile(S)
          else 
          if (tCCELogRec.Value>'') and (tCCELogEnvio.Value>'') then begin
            tCCELogEnvio.SaveToFile(ArqLogEnvio(tCCEChave.Value+'-cce'));
            tCCELogRec.SaveToFile(ArqLogRec(tCCEChave.Value+'-cce'));
            NFeComp.GerarXMLCCeDestinatario(
              tCCEChave.Value, 
              ArqLogEnvio(tCCEChave.Value)+'-cce', 
              ArqLogRec(tCCEChave.Value)+'-cce', S);

            if FileExists(S) then begin
              tCCEXMLdest.LoadFromFile(S);
              if tCCEProtocolo.Value='' then
                tCCEProtocolo.Value := getXMLValue(tCCELogRec.Value, 'nProt');
            end;
          end;
        end else begin
          tCCEStatus.Value := statuscce_erro;
        end;
      end;  
      tCCE.Post;

      DebugMsg(Self, 'SalvaRetornoCCE 3');

      nxDB.Commit;

      DebugMsg(Self, 'SalvaRetornoCCE 4');
      
      if tCCEStatus.Value=statuscce_ok then GeraEmailCCE;

      DebugMsg(Self, 'SalvaRetornoCCE 5');

      New(P);
      P^.msgCCE := True;
      P^.msgUID := tCCEUID.AsGuid;
      PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);

      DebugMsg(Self, 'SalvaRetornoCCE 6');
    finally
      if nxDB.InTransaction then nxDB.Rollback;
    end;  
  except
    on E: Exception do 
      DebugEx(Self, 'SalvaRetornoCCE', E);
  end;  
end;

procedure TdmNFE_trans.SalvaRetornoConsulta;
var 
  S, sInfProt : String;
  P : PmsgNFEUpdated;
  cStat : Word;
begin
  DebugMsg(Self, 'SalvaRetornoConsulta 1');

  try
    InitTran(nxDB, [tNFE, tTran], True);
    try
      DebugMsg('SalvaRetornoConsulta 2');
    
      tNFE.Edit;

      if slRet.Values['errosw']>'' then
      begin
        tNFEStatusNF.Value := 9999;
        tNFEStatus.Value := nfestatus_erro;
        tNFExMotivo.Value := slRet.Values['errosw'];
        tNFEStatusInut.Value := statusinut_nfe_processar;
      end 
      else begin     
        if Pos('<infProt', slRet.Text)>0 then
          sInfProt := 'infProt' else
          sInfProt := '';
          
        cStat := StrToIntDef(getXMLValue(slRet.Text, 'cStat', sInfProt), 0);
        tNFEProtocolo.Value := getXMLValue(slRet.Text, 'nProt', sInfProt);
        tNFEXMLret.Value := slRet.Text;
        tNFExMotivo.Value := getXMLValue(slRet.Text, 'xMotivo', sInfProt);  
        if (cStat=100) then begin
          tNFEStatusNF.Value := 100;
          tNFEStatus.Value := nfestatus_ok;
            
          S := ArqXML(tNFeChave.Value);  
            
          if FileExists(S) then 
            tNFEXMLdest.LoadFromFile(S)
          else 
          if (tNFeLogRec.Value>'') and (tNFeLogEnvio.Value>'') then begin
            tNFeLogEnvio.SaveToFile(ArqLogEnvio(tNFeChave.Value));
            tNFeLogRec.SaveToFile(ArqLogRec(tNFeChave.Value));
            NFeComp.GerarXMLEnvioDestinatario(
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
        end else 
        if cStat in [103, 104, 105] then begin
          tNFEStatus.Value := nfestatus_consultar;
          tNFETicksConsulta.Value := GetTickCount+15000;
        end else begin
          tNFEStatus.Value := nfestatus_erro;
          tNFEStatusNF.Value := cStat;
          if (tNFEStatusNF.Value=205) or (tNFEStatusNF.Value=218) or (tNFEStatusNF.Value=539) then
            tNFEStatusInut.Value := statusinut_nfe_ok else
            tNFEStatusInut.Value := statusinut_nfe_processar;
        end;  
      end;  
      tTran.Edit;
      tTranStatusNFE.Value := tNFEStatus.Value;
      tTranChaveNFE.Value := tNFEChave.Value;
      tTran.Post;
      tNFE.Post;

      DebugMsg('TdmNFe_trans.SalvaRetornoConsulta 3');
      
      nxDB.Commit;

      DebugMsg('TdmNFe_trans.SalvaRetornoConsulta 4');

      New(P);
      P^.msgCCE := False;
      P^.msgUID := tTranUID.AsGuid;
      PostMessage(CliNotifyHandle, wm_nfeupdated, NativeUInt(P), 0);

      DebugMsg('TdmNFe_trans.SalvaRetornoConsulta 5');

      if (tNFEStatus.Value=nfestatus_ok) then 
        GeraEmail;
    finally
      if nxDB.InTransaction then nxDB.Rollback;
    end;  
  except
    on E: Exception do 
      DebugEx(Self, 'SalvaRetornoConsulta', E);
  end;  
end;

procedure TdmNFE_trans.SalvaRetornoInut;
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
        DebugMsgEsp('TdmNFe_trans.SalvaRetornoInut - Exception: '+E.Message, False, True);
  end;  
end;

{ TncProcessaCancelamentos }

constructor TncProcessaCancelamentosNFe.Create(aGetDM: TGetDMEv);
begin
  inherited Create(False);
  FOnGetDM := aGetDM;
  FreeOnTerminate := True;
end;

procedure TncProcessaCancelamentosNFe.Execute;
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
      dm.tNFE.IndexName := 'ITipoDocStatusCancNumSeq';
      while (not Terminated) and (not TerminarProcNFE) do begin
        try
          aNewCanc := GetCanc_NFe;
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

constructor TncProcessaInutNFe.Create;
begin
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TncProcessaInutNFe.Execute;
var 
  dm : TdmNFe_trans;
  NextMS : Cardinal;
begin
  Sleep(10);
  coInitialize(nil);
  try
    dm := TdmNFe_trans.Create(nil);
    try
      NextMS := 0;
      dm.OpenDB;
      dm.tNFE.IndexName := 'ITipoDoctpAmbStatusInut';
      while (not Terminated) and (not TerminarProcNFE) do begin
        try
          if (GetTickCount>=NextMS) then begin
            if dm.ProcessaProxInut then
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

constructor TncProcessaTransmitirNFe.Create;
begin
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TncProcessaTransmitirNFe.Execute;
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
      dm.tNFE.IndexName := 'ITipoDoctpAmbStatus';
      dm.tTran.IndexName := 'IChaveNFE';
      while (not Terminated) and (not TerminarProcNFE) do begin
        try
          aNewTrans := GetTrans_NFe;
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

{ TncProcessaConsultarNFe }

constructor TncProcessaConsultarNFe.Create;
begin
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TncProcessaConsultarNFe.Execute;
var 
  dm : TdmNFe_trans;
  lastConsulta, aNewConsulta, NextMS : Cardinal;
begin
  DebugMsg(Self, 'Execute - 1');
  Sleep(10);
  coInitialize(nil);
  try
    DebugMsg(Self, 'Execute - 2');
    dm := TdmNFe_trans.Create(nil);
    try
      NextMS := 0;
      lastConsulta := 0;
      dm.OpenDB;
      dm.tNFE.IndexName := 'ITipoDoctpAmbStatus';
      dm.tTran.IndexName := 'IChaveNFE';
      dm.IniciaTicksConsulta;
      while (not Terminated) and (not TerminarProcNFE) do begin
        try
          aNewConsulta := GetConsulta_NFe;
          if (aNewConsulta<>lastConsulta) or (GetTickCount>=NextMS) then begin
            lastConsulta := aNewConsulta;
            if dm.ProcessaProxConsulta then
              NextMS := 0 else
              NextMS := dm.ProxTicksConsulta;
          end;
          Sleep(5);
        except
          on E: Exception do 
            DebugEx(Self, 'Execute', E);
        end;
      end;
    finally
      dm.Free;
    end;
  except
    on E: Exception do 
      DebugEx(Self, 'Execute 2', E);
  end;
  CoUninitialize;
end;

{ TncProcessaCCE }

constructor TncProcessaCCE.Create;
begin
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TncProcessaCCE.Execute;
var 
  dm : TdmNFe_trans;
  lastCCE, aNewCCE, NextMS : Cardinal;
begin
  DebugMsg(Self, 'Execute');
  Sleep(10);
  coInitialize(nil);
  try
    DebugMsg(Self, 'Execute 2');
    dm := TdmNFe_trans.Create(nil);
    try
      NextMS := 0;
      lastCCE := 0;
      dm.tCCE.Open;
      dm.tCCE.IndexName := 'IStatusNumSeq';
      while (not Terminated) and (not TerminarProcNFE) do begin
        try
          aNewCCE := GetCCE;
          if (aNewCCE<>lastCCE) or (GetTickCount>=NextMS) then begin
            lastCCE := aNewCCE;
            if dm.ProcessaProxCCE then
              NextMS := 0 else
              NextMS := GetTickCount + 15000;
          end;
          Sleep(5);
        except
          on E: Exception do 
            DebugEx(Self, 'Execute', E);
        end;
      end;
    finally
      dm.Free;
    end;
  except
    on E: Exception do 
      DebugEx(Self, 'Execute', E);
  end;
  CoUninitialize;
end;

initialization
  csNFeTrans := TCriticalSection.Create;

finalization
  csNFeTrans.Free;  


end.
