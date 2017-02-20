unit ncnxServerPlugin;

interface

{$I NEX.INC}

uses
  Classes,  
  Windows,
  ExtCtrls,
  nxptBasePooledTransport,
  nxllTypes,
  nxllList,
  nxllComponent,
  nxllTransport,
  nxllPluginBase,
  nxllSync,
  ncNetMsg,
  ncClassesBase;

type
  TncnxServerPlugin = class(TnxBasePluginEngine)
  private
    FNexServ : TncServidorBase;
    
    FTransp : TnxBaseTransport;
    procedure SetNexServ(const Value: TncServidorBase);
  protected
    class function bpeIsRemote: Boolean; override;

    procedure OnEnviaEvento(aMsg: Integer; aDados: Pointer);

  public
    constructor Create( aOwner: TComponent ); override;

    procedure BroadcastKeepAlive;

    function spRemoveSession( aSessionId: TnxSessionId ): TnxResult;

    function scShowUpTime: Boolean; override;

    property Transp: TnxBaseTransport read FTransp write FTransp;
  published  
    property NexServ: TncServidorBase
      read FNexServ write SetNexServ;
  end;


  {
    This is the plugin command handler that translates messages from the
    remote interface into method calls of the actual plugin engine.
  }

  TncnxCmdHandler = class(TnxBasePluginCommandHandler)
  private
    function ServUnlock: TList;
    procedure ServLock(aSessionID: TnxSessionID);
    procedure SendReply(aEventos      : TList;
                        aMsgID        : TnxMsgID;
                        aErrorCode    : TnxResult;
                        aReplyData    : Pointer;
                        aReplyDataLen : TnxWord32);
    
  protected
    function GetPluginEngine: TncnxServerPlugin;
    procedure SetPluginEngine( aEngine: TncnxServerPlugin );

    procedure bpchRemoveSession( aTransport: TnxBaseTransport;
                                 aSessionId: TnxSessionID); override;

    procedure bpchSessionFailed(aTransport : TnxBaseTransport;
                                aSessionID : TnxSessionID); override;
                                 

    function Serv: TncServidorBase;

    procedure nmLogin              (var aMsg: TnxDataMessage); 
    procedure nmLogout             (var aMsg: TnxDataMessage); 
    procedure nmNovoObj            (var aMsg: TnxDataMessage); 
    procedure nmAlteraObj          (var aMsg: TnxDataMessage); 
    procedure nmApagaObj           (var aMsg: TnxDataMessage); 
    procedure nmObtemLista         (var aMsg: TnxDataMessage); 
    procedure nmDownloadArq        (var aMsg: TnxDataMessage);
{    
    procedure nmDownloadArqInterno (var aMsg: TnxDataMessage);
}    
    procedure nmUploadArq          (var aMsg: TnxDataMessage);

    procedure nmObtemStreamConfig  (var aMsg: TnxDataMessage);

    procedure nmObtemPastaServ     (var aMsg: TnxDataMessage);

    procedure nmSalvaCredito       (var aMsg: TnxDataMessage);
    procedure nmCancelaTran        (var aMsg: TnxDataMessage);
    procedure nmSalvaMovEst        (var aMsg: TnxDataMessage);
    procedure nmSalvaDebito        (var aMsg: TnxDataMessage);
    procedure nmAbreCaixa          (var aMsg: TnxDataMessage);
    procedure nmFechaCaixa         (var aMsg: TnxDataMessage);
    
    procedure nmSalvaLancExtra     (var aMsg: TnxDataMessage);
    procedure nmCorrigeDataCaixa   (var aMsg: TnxDataMessage);
    procedure nmSalvaLic           (var aMsg: TnxDataMessage);
    procedure nmAjustaPontosFid    (var aMsg: TnxDataMessage);
    procedure nmKeepAlive          (var aMsg: TnxDataMessage);
    procedure nmGetLoginData       (var aMsg: TnxDataMessage);
    procedure nmZerarEstoque       (var aMsg: TnxDataMessage);
    procedure nmSalvaApp           (var aMsg: TnxDataMessage);
    procedure nmGetCertificados    (var aMsg: TnxDataMessage);
    procedure nmReemitirNFCe       (var aMsg: TnxDataMessage);
    procedure nmInstalaNFCeDepend  (var aMsg: TnxDataMessage);
    procedure nmInstalaNFeDepend   (var aMsg: TnxDataMessage);
    procedure nmTableUpdated       (var aMsg: TnxDataMessage);
    procedure nmGeraXMLProt        (var aMsg: TnxDataMessage);
    procedure nmConsultarSAT       (var aMsg: TnxDataMessage);
    procedure nmInutilizarNFCE     (var aMsg: TnxDataMessage);
                                 
    procedure _bpchProcess( aMsg: PnxDataMessage;
                           var aHandled: Boolean); 
    
  public
    procedure bpchProcess( aMsg: PnxDataMessage;
                           var aHandled: Boolean); override;

  published
    property PluginEngine: TncnxServerPlugin
      read GetPluginEngine
      write SetPluginEngine;

  end;

procedure Register;

implementation

uses SysUtils,
     ncServAtualizaLic_Indy,
     nxllMemoryManager,
     nxstMessages,
     nxllBDE, 
     nxllStreams, ncDebug, ncSalvaCredito, ncDebito, 
     ncLancExtra, ncMovEst, ncMsgCom, ncErros, ncServBD,
     ncsCallbackEvents, ncVersionInfo, uLicEXECryptor, ncCert;

function BoolStr(B: Boolean): String;
begin
  if B then
    Result := 'True' else
    Result := 'False';
end;

procedure Register;
begin
  RegisterComponents('NexCafe',
                       [ TncnxServerPlugin,
                         TncnxCmdHandler ]);
end;


{ TncnxServerPlugin }

procedure TncnxServerPlugin.BroadcastKeepAlive;
var 
  I : Integer;
  Dummy : Array[1..128] of Byte;
begin
  Fillchar(Dummy, SizeOf(Dummy), $FF);
  
  try
    if not ServidorAtivo then Exit;
    dmServidorBD.nxTCPIP.Broadcast(ncnmKeepAlive, 0, @Dummy, SizeOf(Dummy), 100);
//    dmServidorBD.nxSMT.Broadcast(ncnmKeepAlive, 0, @Dummy, SizeOf(Dummy), 100);
  except
  end;
end;

constructor TncnxServerPlugin.Create(aOwner: TComponent);
begin
  inherited;
  FNexServ := nil;
end;

procedure TncnxServerPlugin.OnEnviaEvento(aMsg: Integer; aDados: Pointer);
var 
  SS : TArraySessionSocket;
begin
//  DebugMsg('TncnxServerPlugin.OnEnviaEvento - 1');
  if not ServidorAtivo then Exit;
//  DebugMsg('TncnxServerPlugin.OnEnviaEvento - 2');
  FNexServ.ObtemSessionSocketArray(SS);
  try
//    DebugMsg('TncnxServerPlugin.OnEnviaEvento - 3');
    gCallbackMgr.AddEvent(TncCallbackEvent.CreateMsgCom(aMsg, aDados, SS));
//    DebugMsg('TncnxServerPlugin.OnEnviaEvento - 4');
  finally
    FreeDados(aMsg, aDados);
  end;
//  DebugMsg('TncnxServerPlugin.OnEnviaEvento - 5');
end;

function TncnxServerPlugin.spRemoveSession(aSessionId: TnxSessionId): TnxResult;
var FCEList : TList;
begin
  Result := DBIERR_NONE;
  PostMessage(CliNotifyHandle, wm_removesession, aSessionID, 0);
  gCallbackMgr.RemoveSession(aSessionID);
end;

class function TncnxServerPlugin.bpeIsRemote: Boolean;
begin
  Result := False;
end;

function TncnxServerPlugin.scShowUpTime: Boolean;
begin
  Result := True;
end;

procedure TncnxServerPlugin.SetNexServ(const Value: TncServidorBase);
begin
  if FNexServ=Value then Exit;
  if FNexServ<>nil then FNexServ.OnEnviaEvento := nil;
  FNexServ := Value;
  if FNexServ<>nil then FNexServ.OnEnviaEvento := OnEnviaEvento;
end;

{ TncnxCmdHandler }

function TncnxCmdHandler.GetPluginEngine: TncnxServerPlugin;
begin
  Result := TncnxServerPlugin(bpchPluginEngine);
end;

procedure TncnxCmdHandler.SendReply(aEventos: TList; aMsgID: TnxMsgID;
  aErrorCode: TnxResult; aReplyData: Pointer; aReplyDataLen: TnxWord32);
begin
  TnxBaseTransport.Reply(aMsgID, aErrorCode, aReplyData, aReplyDataLen);
end;

function TncnxCmdHandler.Serv: TncServidorBase;
begin
  Result := PluginEngine.NexServ;
end;

procedure TncnxCmdHandler.ServLock(aSessionID: TnxSessionID);
begin
//  DebugMsg('TncnxCmdHandle.ServLock 1');

  if not ServidorAtivo then begin
//    DebugMsg('TncnxCmdHandle.ServLock 2');
    Raise Exception.Create('Servidor Inativo');
  end;
  
//  DebugMsg('TncnxCmdHandle.ServLock 3');
  Serv.Lock;
//  DebugMsg('TncnxCmdHandle.ServLock 4');

  if not ServidorAtivo then begin
//    DebugMsg('TncnxCmdHandle.ServLock 5');
    Serv.Unlock;
    Raise Exception.Create('Servidor Inativo');
  end;
  try
//    DebugMsg('TncnxCmdHandle.ServLock 6');
    Serv.ObtemUsernameHandlePorSessionID(aSessionID, UsernameAtual, HandleCliAtual);
//    DebugMsg('TncnxCmdHandle.ServLock 7');
    if SameText(UsernameAtual, 'proxy') then
      UsernameAtual := '';
  except
    UsernameAtual := '';
    HandleCliAtual := -1;
  end;
end;

function TncnxCmdHandler.ServUnlock: TList;
begin
  try
    Result := nil;
  finally
    PluginEngine.FNexServ.Unlock;
  end;
end;

procedure TncnxCmdHandler.SetPluginEngine( aEngine: TncnxServerPlugin );
begin
  bpchSetPluginEngine(aEngine);
end;

procedure TncnxCmdHandler.nmAbreCaixa(var aMsg: TnxDataMessage);
var 
  Erro : TnxResult; CEList : TList;
  R : TnmAbreCaixaRpy;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg, TnmAbreCaixaReq(dmData^) do 
  try
    try
      DebugMsg('TncnxCmdHandler.nmAbreCaixa - nmFunc: ' + nmFunc); 
      Erro := Serv.AbreCaixa(nmFunc, nmSaldo, R.nmID);
      DebugMsg('TncnxCmdHandler.nmAbreCaixa - Res: ' + IntToStr(Erro) + ' - nmID: ' + IntToStr(R.nmID));
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmAbreCaixa - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, @R, SizeOf(R));
end;

procedure TncnxCmdHandler.nmCancelaTran(var aMsg: TnxDataMessage);
var Erro : TnxResult; CEList : TList;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg, TnmCancelaTranReq(dmData^) do 
  try
    try
      DebugMsg('TncnxCmdHandler.nmCancelaTran - nmTran: ' + IntToStr(nmTran) + ' - nmFunc: ' + nmFunc);
      Erro := Serv.CancelaTran(nmTran, nmFunc);
      DebugMsg('TncnxCmdHandler.nmCancelaTran - Res: ' + IntToStr(Erro));
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmCancelaTran - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmConsultarSAT(var aMsg: TnxDataMessage);
var 
  S: TnxMemoryStream;
  sl : TStrings;
  erro : integer;
begin
  S := nil;
  try
    sl := TStringList.Create;
    try
      erro := Serv.ConsultarSAT(sl);
      if erro=0 then begin
        S := TnxMemoryStream.Create;
        sl.SaveToStream(S);
      end;  
      S.Position := 0;
    except
      on E: Exception do begin
        DebugMsgEsp('TncnxCmdHandler.nmConsultarSAT - Exception: '+E.Message, False, True);
        erro := 2;
      end;  
    end;
    if Erro=0 then
      SendReply(nil, ncnmConsultarSAT, 0, S.Memory, S.Size) else
      SendReply(nil, ncnmConsultarSAT, Erro, nil, 0);
  finally
    if Assigned(S) then S.free;
  end;  
end;

procedure TncnxCmdHandler.nmCorrigeDataCaixa(var aMsg: TnxDataMessage);
var Erro : TnxResult; CEList : TList;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg, TnmCorrigeDataCaixaReq(dmData^) do 
  try
    try
      DebugMsg('TncnxCmdHandler.nmCorrigeDataCaixa - nmFunc: ' + nmFunc + 
        ' - nmCaixa: ' + IntToStr(nmCaixa) +
        ' - nmNovaAbertura: '   + FormatDateTime('dd/mm/yyyy hh:mm:ss', nmNovaAbertura) +
        ' - nmNovoFechamento: ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', nmNovoFechamento));
      Erro := Serv.CorrigeDataCaixa(nmFunc, nmCaixa, nmNovaAbertura, nmNovoFechamento);
      DebugMsg('TncnxCmdHandler.nmCorrigeDataCaixa - Res: ' +  IntToStr(Erro));
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmCorrigeDataCaixa - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmDownloadArq(var aMsg: TnxDataMessage);
var 
  S: TnxMemoryStream;
  Str: String;
  Erro : TnxResult;
  CEList : TList;
begin
  S := TnxMemoryStream.Create;
  try
    ServLock(aMsg.dmSessionID);
    try
      with aMsg, TnmNomeArq(aMsg.dmData^) do 
      try
        DebugMsg('TncnxCmdHandler.nmDownloadArq - NomeArq: ' + nmNomeArq);
        Str := ExtractFilePath(ParamStr(0)) + nmNomeArq;
        if FileExists(Str) then begin
          Erro := 0;
          S.LoadFromFile(Str);
        end else  
          Erro := ncerrArqNaoEncontrado;
          
        DebugMsg('TncnxCmdHandler.nmDownloadArq - Res: ' + IntToStr(Erro));
      except
        on E: Exception do begin
          Erro := 2;
          DebugMsg('TncnxCmdHandler.nmDownloadArq - Exception: ' + E.Message);
        end;
      end;
    finally
      CEList := ServUnlock;
    end;
    SendReply(CEList, aMsg.dmMsg, Erro, S.Memory, S.Size);
  finally
    S.Free;
  end;
end;

{
procedure TncnxCmdHandler.nmDownloadArqInterno(var aMsg: TnxDataMessage);
var 
  S: TnxMemoryStream;
  Erro : TnxResult;
  DM : TdmArqInt;
begin
  S := TnxMemoryStream.Create;
  try
    with aMsg, TnmDownArqInt(aMsg.dmData^) do 
    try
      DebugMsg('TncnxCmdHandler.nmDownloadArqInterno - nmArq: ' + nmArq + ' - nmVer: ' + IntToStr(nmVer));

      DM := TdmArqInt.Create(nil);
      try
        Erro := DM.getArq(nmArq, nmVer, S)
      finally
        DM.Free;
      end;
          
      DebugMsg('TncnxCmdHandler.nmDownloadArqInterno - Res: ' + IntToStr(Erro));
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmDownloadArqInterno - Exception: ' + E.Message);
      end;
    end;
    if (Erro<10000) then
      SendReply(nil, aMsg.dmMsg, Erro, nil, 0) else
      SendReply(nil, aMsg.dmMsg, Erro, S.Memory, S.Size);
  finally
    S.Free;
  end;
end;
}

procedure TncnxCmdHandler.nmFechaCaixa(var aMsg: TnxDataMessage);
var Erro : TnxResult; CEList : TList;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg, TnmFechaCaixaReq(dmData^) do 
  try
    try
      DebugMsg('TncnxCmdHandler.nmFechaCaixa - nmFunc: ' + nmFunc + 
        ' - nmID: ' + IntToStr(nmID));
      Erro := Serv.FechaCaixa(nmFunc, nmSaldo, nmID);
      DebugMsg('TncnxCmdHandler.nmFechaCaixa - Res: ' +  IntToStr(Erro));
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmFechaCaixa - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmGeraXMLProt(var aMsg: TnxDataMessage);
var Erro : TnxResult; CEList : TList;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg, TnmNFCeReq(dmData^) do 
  try
    try
      DebugMsg('TncnxCmdHandler.nmGeraXMLProt - nmChave: ' + nmChave);
      Erro := Serv.GeraXMLProt(nmChave);
      DebugMsg('TncnxCmdHandler.nmGeraXMLProt - Res: ' +  IntToStr(Erro));
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmFechaCaixa - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmGetCertificados(var aMsg: TnxDataMessage);
var 
  S: TnxMemoryStream;
  sl : TStrings;
  erro : integer;
begin
  S := nil;
  try
    sl := TStringList.Create;
    try
      sl.Text := ListaCertificados;
      S := TnxMemoryStream.Create;
      sl.SaveToStream(S);
      S.Position := 0;
      erro := 0;
    except
      on E: Exception do begin
        DebugMsgEsp('TncnxCmdHandler.nmGetCertificados - Exception: '+E.Message, False, True);
        erro := ncerrExcecaoNaoTratada_GetCertificados;
      end;  
    end;
    if Erro=0 then
      SendReply(nil, ncnmObtemCertificados, 0, S.Memory, S.Size) else
      SendReply(nil, ncnmObtemCertificados, Erro, nil, 0);
  finally
    if Assigned(S) then S.free;
  end;  
end;

procedure TncnxCmdHandler.nmGetLoginData(var aMsg: TnxDataMessage);
var 
  Erro : TnxResult; CEList : TList;
  I : Integer;
  U : TncListaUsuarios;
  S : TnxMemoryStream;
  SL : TStrings;
begin
  S := TnxMemoryStream.Create;
  try
    ServLock(aMsg.dmSessionID);
    with aMsg do 
    try
      try
        Erro := 0;
        DebugMsg('TncnxCmdHandler.nmGetLoginData');
        SL := TStringList.Create;
        try
          sl.Add(Trim(prefixo_versao+Copy(SelfVersion, 7, 20)));


          if gConfig.StatusConta in [scFree, scPremium, scPremiumVenc, scAnt] then 
            sl.Add(gConfig.Conta) else
            sl.Add('');

          U := TncListaUsuarios(Serv.ObtemLista(tcUsuario));

          for I := 0 to U.Count - 1 do
            if not U.Itens[I].Inativo then
              SL.Add(U.Itens[I].Username+'='+U.Itens[I].Senha+#255+U.Itens[i].Email);

          SL.SaveToStream(S);
        finally
          SL.Free;
        end;
        DebugMsg('TncnxCmdHandler.nmGetLoginData - Res: ' +  IntToStr(Erro));
      except
        on E: Exception do begin
          Erro := 2;
          DebugMsg('TncnxCmdHandler.nmGetLoginData - Exception: ' + E.Message);
        end;
      end;
    finally
      CEList := ServUnlock;
    end;
    SendReply(CEList, aMsg.dmMsg, Erro, S.Memory, S.Size);
  finally
    S.Free;
  end;
end;

procedure TncnxCmdHandler.nmInstalaNFCeDepend(var aMsg: TnxDataMessage);
var Erro : TnxResult; CEList : TList;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg do 
  try
    try
      DebugMsg('TncnxCmdHandler.nmInstalaNFCeDepend');
      Erro := Serv.InstalaNFCeDepend;
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmInstalaNFCeDepend - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmInstalaNFeDepend(var aMsg: TnxDataMessage);
var Erro : TnxResult; CEList : TList;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg do 
  try
    try
      DebugMsg('TncnxCmdHandler.nmInstalaNFeDepend');
      Erro := Serv.InstalaNFeDepend;
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmInstalaNFeDepend - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmInutilizarNFCE(var aMsg: TnxDataMessage);
var 
  S: TnxMemoryStream;
  sl : TStrings;
  erro : integer;
begin
  S := nil;
  sl := nil;
  try
    sl := TStringList.Create;
    with aMsg, TnmInutilizarNFCE_Req(dmData^) do
    try
      erro := Serv.InutilizarNFCE(nmNFe, nmAno, nmInicio, nmFim, nmJust, sl);
      if erro=0 then begin
        S := TnxMemoryStream.Create;
        sl.SaveToStream(S);
        S.Position := 0;
      end;
    except
      on E: Exception do begin
        DebugMsgEsp('TncnxCmdHandler.nmInutilizarNFCE - Exception: '+E.Message, False, True);
        erro := 2;
      end;  
    end;
    if Erro=0 then
      SendReply(nil, ncnmInutilizarNFCE, 0, S.Memory, S.Size) else
      SendReply(nil, ncnmInutilizarNFCE, Erro, nil, 0);
  finally
    if Assigned(S) then S.free;
    if Assigned(sl) then sl.Free;
  end;  
end;

procedure TncnxCmdHandler.nmAjustaPontosFid(var aMsg: TnxDataMessage);
var Erro : TnxResult; CEList : TList;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg, TnmAjustaPontosFid(dmData^) do
  try
    try
      DebugMsg('TncnxCmdHandler.nmAjustaPontosFid - nmFunc: ' + nmFunc + 
        ' - nmCliente: ' + IntToStr(nmCliente) + 
        ' - nmFator: ' + IntToStr(nmFator) + 
        ' - nmPontos: ' + FloatToStr(nmPontos) + 
        ' - nmObs: ' + nmObs);

      Erro := Serv.AjustaPontosFid(nmFunc, nmCliente, nmFator, nmPontos, nmObs);
      DebugMsg('TncnxCmdHandler.nmAjustaPontosFid - Res: ' +  IntToStr(Erro));
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmAjustaPontosFid - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmAlteraObj(var aMsg: TnxDataMessage);
var 
  Erro : TnxResult; CEList : TList;
  sCmd : String;
begin
  ServLock(aMsg.dmSessionID);
  try
    with aMsg, TnxDataMessageStream.Create(aMsg) do try
      try
        if dmMsg=ncnmAlteraObj then
          sCmd := 'TncnxCmdHandler.nmAlteraObj' else
          sCmd := 'TncnxCmdHandler.nmNovoObj';
        DebugMsg(sCmd);
        Erro := Serv.SalvaStreamObj((dmMsg=ncnmNovoObj), TheStream);
        DebugMsg(sCmd + ' - Res: ' + IntToStr(Erro));
      except
        on E: Exception do begin
          Erro := 2;
          DebugMsg(sCmd + ' - Exception: ' + E.Message);
        end;
      end;
    finally
      Free;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmApagaObj(var aMsg: TnxDataMessage);
var Erro : TnxResult; CEList : TList;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg, PnmObj(dmData)^ do 
  try
    try
      DebugMsg('TncnxCmdHandler.nmApagaObj - nmCliente: ' + IntToStr(nmCliente) + 
        ' - nmTipoClasse: ' + IntToStr(nmTipoClasse) + 
        ' - nmChave: ' + nmChave);
      Erro := Serv.ApagaObj(nmCliente, nmTipoClasse, nmChave);
      DebugMsg('TncnxCmdHandler.nmApagaObj - Res: ' +  IntToStr(Erro));
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmApagaObj - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmReemitirNFCe(var aMsg: TnxDataMessage);
var Erro : TnxResult; CEList : TList;
begin
  ServLock(aMsg.dmSessionID);
  try
    try
      DebugMsg('TncnxCmdHandler.nmReemitirNFCe');
      Erro := Serv.ReemitirNFCe(TGuid(aMsg.dmData^));
      DebugMsg('TncnxCmdHandler.nmReemitirNFCe');
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmReemitirNFCe - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmSalvaApp(var aMsg: TnxDataMessage);
var 
  Erro : TnxResult; CEList : TList;
  SL: TStrings;
begin
  ServLock(aMsg.dmSessionID);
  try
    with aMsg, TnxDataMessageStream.Create(aMsg) do try
      try
        SL := TStringList.Create;
        try
          SL.LoadFromStream(TheStream);
          DebugMsg('TncnxCmdHandler.nmSalvaApp - ' + sl.Text);
          PostAppUpdate(sl);
          Erro := 0;
          DebugMsg('TncnxCmdHandler.nmSalvaApp - Res: ' + IntToStr(Erro));
        finally
          SL.Free;
        end;
      except
        on E: Exception do begin
          Erro := 2;
          DebugMsg('TncnxCmdHandler.nmSalvaApp - Exception: ' + E.Message);
        end;
      end;
    finally
      Free;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmSalvaCredito(var aMsg: TnxDataMessage);
var 
  Erro : TnxResult; CEList : TList;
  C : TncSalvaCredito;
begin
  ServLock(aMsg.dmSessionID);
  try
    with aMsg, TnxDataMessageStream.Create(aMsg) do try
      try
        DebugMsg('TncnxCmdHandler.nmSalvaCredito');
        C := TncSalvaCredito.Create;
        try
          C.LeStream(TheStream);
          Erro := Serv.SalvaCredito(C);
        finally
          C.Free;
        end;
        DebugMsg('TncnxCmdHandler.nmSalvaCredito - Res: ' +  IntToStr(Erro));
      except
        on E: Exception do begin
          Erro := 2;
          DebugMsg('TncnxCmdHandler.nmSalvaCredito - Exception: ' + E.Message);
        end;
      end;
    finally
      Free;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmSalvaDebito(var aMsg: TnxDataMessage);
var 
  Erro : TnxResult; CEList : TList;
  Deb : TncDebito;
begin
  ServLock(aMsg.dmSessionID);
  try
    with aMsg, TnxDataMessageStream.Create(aMsg) do try
      try
        DebugMsg('TncnxCmdHandler.nmSalvaDebito');
        Deb := TncDebito.Create;
        try
          Deb.LeStream(TheStream);
          Erro := Serv.SalvaDebito(Deb);
        finally
          Deb.Free;
        end;
        DebugMsg('TncnxCmdHandler.nmSalvaDebito - Res: ' +  IntToStr(Erro));
      except
        on E: Exception do begin
          Erro := 2;
          DebugMsg('TncnxCmdHandler.nmSalvaDebito - Exception: ' + E.Message);
        end;
      end;
    finally
      Free;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmSalvaLancExtra(var aMsg: TnxDataMessage);
var 
  Erro : TnxResult; CEList : TList;
  Le  : TncLancExtra;
begin
  ServLock(aMsg.dmSessionID);
  try
    with aMsg, TnxDataMessageStream.Create(aMsg) do try
      try
        DebugMsg('TncnxCmdHandler.nmSalvaLancExtra');
        LE := TncLancExtra.Create;
        try
          LE.LeStream(TheStream);
          Erro := Serv.SalvaLancExtra(LE);
        finally
          LE.Free;
        end;
        DebugMsg('TncnxCmdHandler.nmSalvaLancExtra - Res: ' +  IntToStr(Erro));
      except
        on E: Exception do begin
          Erro := 2;
          DebugMsg('TncnxCmdHandler.nmSalvaLancExtra - Exception: ' + E.Message);
        end;
      end;
    finally
      Free;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmSalvaLic(var aMsg: TnxDataMessage);
var 
  Erro : TnxResult; CEList : TList;
  SL  : TStrings;
begin
  ServLock(aMsg.dmSessionID);
  try
    with aMsg, TnxDataMessageStream.Create(aMsg) do try
      try
        SL := TStringList.Create;
        try
          SL.LoadFromStream(TheStream);
          DebugMsg('TncnxCmdHandler.nmSalvaLic - Lic: '+SL.Text);
          Erro := Serv.SalvaLic(SL.Text);
        finally
          SL.Free;
        end;
        DebugMsg('TncnxCmdHandler.nmSalvaLic - Res: ' +  IntToStr(Erro));
      except
        on E: Exception do begin
          Erro := 2;
          DebugMsg('TncnxCmdHandler.nmSalvaLic - Exception: ' + E.Message);
        end;
      end;
    finally
      Free;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmSalvaMovEst(var aMsg: TnxDataMessage);
var 
  Erro : TnxResult; CEList : TList;
  ME : TncMovEst;
begin
  ServLock(aMsg.dmSessionID);
  try
    with aMsg, TnxDataMessageStream.Create(aMsg) do try
      try
        DebugMsg('TncnxCmdHandler.nmSalvaMovEst - HandleCliAtual: '+IntToStr(HandleCliAtual));
        ME := TncMovEst.Create;
        try
          ME.LeStream(TheStream);
          Erro := Serv.SalvaMovEst(ME);
        finally
          ME.Free;
        end;
        DebugMsg('TncnxCmdHandler.nmSalvaMovEst - Res: ' +  IntToStr(Erro));
      except
        on E: Exception do begin
          Erro := 2;
          DebugMsg('TncnxCmdHandler.nmSalvaMovEst - Exception: ' + E.ClassName + '-' + E.Message);
        end;
      end;
    finally
      Free;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmTableUpdated(var aMsg: TnxDataMessage);
var Erro : TnxResult; CEList : TList;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg, TnmTableUpdated(dmData^) do
  try
    try
      DebugMsg('TncnxCmdHandler.nmTableUpdated - nmIDTab: ' + IntToStr(nmIDTab));
      Erro := Serv.TableUpdated(nmIDTab);
      DebugMsg('TncnxCmdHandler.nmTableUpdated - Res: ' +  IntToStr(Erro));
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmTableUpdated - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmUploadArq(var aMsg: TnxDataMessage);
var 
  S: TnxMemoryStream;
  Str: String;
  Erro : TnxResult;
  CEList : TList;
begin
  S := TnxMemoryStream.Create;
  try
    ServLock(aMsg.dmSessionID);
    try
      with aMsg, TnmUpload(aMsg.dmData^) do 
      try
        DebugMsg('TncnxCmdHandler.nmUploadArq - NomeArq: ' + nmNomeArq +
                 ' - Tamanho: ' + IntToStr(nmTamanho));
        Str := ExtractFilePath(ParamStr(0)) + nmNomeArq;
        if FileExists(Str) then 
          DeleteFile(Str);
          
        S.SetSize(nmTamanho);
        Move(nmArq, S.Memory^, nmTamanho);
        S.SaveToFile(Str);
          
        Erro := 0;
        DebugMsg('TncnxCmdHandler.nmUploadArq - Res: ' + IntToStr(Erro));
      except
        on E: Exception do begin
          Erro := 2;
          DebugMsg('TncnxCmdHandler.nmUploadArq - Exception: ' + E.Message);
        end;
      end;
    finally
      CEList := ServUnlock;
    end;
    SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
  finally
    S.Free;
  end;
end;

procedure TncnxCmdHandler.nmZerarEstoque(var aMsg: TnxDataMessage);
var Erro : TnxResult; CEList : TList;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg, TnmZerarEstoqueReq(dmData^) do
  try
    try
      DebugMsg('TncnxCmdHandler.nmZerarEstoque - nmFunc: ' + nmFunc);

      Erro := Serv.ZerarEstoque(nmFunc);
      DebugMsg('TncnxCmdHandler.nmZerarEstoque - Res: ' +  IntToStr(Erro));
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmZerarEstoque - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmKeepAlive(var aMsg: TnxDataMessage);
var Erro : Integer;
begin
  if {getPluginEngine.SessaoTerminou(aMsg.dmSessionID)} not gCallbackMgr.SessionExists(aMsg.dmSessionID) then
    Erro := 1 else {qualquer resultado diferente de zero força a cliente a desconectar}
    Erro := 0;
    
  TnxBaseTransport.Reply(aMsg.dmMsg, Erro, nil, 0);
end;


type
  THackTransp = Class (TnxBasePooledTransport )
    function GetRemoteAddress(aSessionID: TnxSessionID): String;
  End;

  
  
procedure TncnxCmdHandler.nmLogin(var aMsg: TnxDataMessage);
var 
  Erro : TnxResult; CEList : TList;
  R    : TnmLoginRpy;
  I : Integer;
  S : String;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg, TnmLoginReq(dmData^) do
  try
    try
      DebugMsg(
        'TncnxCmdHandler.nmLogin - dmSessionID: ' + IntToStr(aMsg.dmSessionID) +
        ' - nmUsername: ' + nmUsername +
        ' - nmSenha: ' + nmSenha +
        ' - nmFuncAtual: ' + BoolStr(nmFuncAtual) + 
        ' - nmProxyHandle: ' + IntToStr(nmProxyHandle));

      S := '';  
      I := Integer(TnxBaseTransport.CurrentTransport);
      try
        S := dmServidorBD.GetSessionIP(aMsg.dmSessionID);
        if Pos(':', S)>0 then Delete(S, Pos(':', S), 100);
      except
        S := '';
      end;
      
      try
        gCallbackMgr.AddSession(TncSessionCallback.Create(aMsg.dmSessionID, TnxBaseTransport.CurrentTransport));
        Erro := Serv.Login(nmUsername, nmSenha, nmFuncAtual, True, 0, nmProxyHandle, 
                           I, aMsg.dmSessionID, S, R.nmHandle);
      except
        gCallbackMgr.RemoveSession(aMsg.dmSessionID);
        raise;
      end;
      DebugMsg('TncnxCmdHandler.nmLogin - Handle Cliente: ' + IntToStr(R.nmHandle)+ ' - Res: ' +  IntToStr(Erro));
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmLogin - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, @R, SizeOf(R));
end;

procedure TncnxCmdHandler.nmLogout(var aMsg: TnxDataMessage);
var Erro : TnxResult; CEList : TList;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg do 
  try
    try
      DebugMsg('TncnxCmdHandler.nmLogout - nmCliente: ' + IntToStr(Integer(dmData^)));
      Serv.Logout(Integer(dmData^));
      Erro := 0;
      DebugMsg('TncnxCmdHandler.nmLogout - Res: ' +  IntToStr(Erro));
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmLogout - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, nil, 0);
end;

procedure TncnxCmdHandler.nmNovoObj(var aMsg: TnxDataMessage);
begin
  nmAlteraObj(aMsg);
end;

procedure TncnxCmdHandler.nmObtemLista(var aMsg: TnxDataMessage);
var 
  Erro : TnxResult; CEList : TList;
  S : TnxMemoryStream;
begin  
  S := TnxMemoryStream.Create;
  try
    ServLock(aMsg.dmSessionID);
    with aMsg, TnmObtemListaReq(dmData^) do 
    try
      try
        DebugMsg('TncnxCmdHandler.nmObtemLista - nmCliente: '+IntToStr(nmCliente) + 
          ' - nmTipoClasse: ' + IntToStr(nmTipoClasse));
        Erro := Serv.ObtemStreamListaObj(nmCliente, nmTipoClasse, S);
        DebugMsg('TncnxCmdHandler.nmObtemLista - Res: ' +  IntToStr(Erro));
      except
        on E: Exception do begin
          Erro := 2;
          DebugMsg('TncnxCmdHandler.nmObtemLista - Exception: ' + E.Message);
        end;
      end;
    finally
      CEList := ServUnlock;
    end;
    SendReply(CEList, aMsg.dmMsg, Erro, S.Memory, S.Size);
  finally
    S.Free;
  end;
end;

procedure TncnxCmdHandler.nmObtemPastaServ(var aMsg: TnxDataMessage);
var 
  Erro : TnxResult; CEList : TList;
  R : TnmNomeArq;
  S : String;
begin
  ServLock(aMsg.dmSessionID);
  with aMsg do 
  try
    try
      Erro := Serv.ObtemPastaServ(S);
      R.nmNomeArq := S;
      DebugMsg('TncnxCmdHandler.nmObtemPastaServ - Res: ' +  IntToStr(Erro));
    except
      on E: Exception do begin
        Erro := 2;
        DebugMsg('TncnxCmdHandler.nmObtemPastaServ - Exception: ' + E.Message);
      end;
    end;
  finally
    CEList := ServUnlock;
  end;
  SendReply(CEList, aMsg.dmMsg, Erro, @R, SizeOf(R));
end;

procedure TncnxCmdHandler.nmObtemStreamConfig(var aMsg: TnxDataMessage);
var 
  Erro : TnxResult; CEList : TList;
  S : TnxMemoryStream;
begin
  S := TnxMemoryStream.Create;
  try
    ServLock(aMsg.dmSessionID);
    with aMsg do 
    try
      try
        DebugMsg('TncnxCmdHandler.nmObtemStreamConfig');
        Erro := Serv.ObtemStreamConfig(S);
        DebugMsg('TncnxCmdHandler.nmObtemStreamConfig - Res: ' +  IntToStr(Erro));
      except
        on E: Exception do begin
          Erro := 2;
          DebugMsg('TncnxCmdHandler.nmObtemStreamConfig - Exception: ' + E.Message);
        end;
      end;
    finally
      CEList := ServUnlock;
    end;
    SendReply(CEList, aMsg.dmMsg, Erro, S.Memory, S.Size);
  finally
    S.Free;
  end;
end;

procedure TncnxCmdHandler.bpchProcess( aMsg: PnxDataMessage; var aHandled: Boolean );
begin
  aHandled := False;
  if (Serv=nil) or (not ServidorAtivo) then Exit;
  IncPend;
  try
    try
      if not ServidorAtivo then Exit;
      _bpchProcess(aMsg, aHandled);
    except
    end;
  finally
    DecPend;
  end;
end;

procedure TncnxCmdHandler._bpchProcess( aMsg: PnxDataMessage; var aHandled: Boolean );
begin
  aHandled := True;
  case aMsg^.dmMsg of
    ncnmLogin              : nmLogin(aMsg^);
    ncnmLogout             : nmLogout(aMsg^); 
    ncnmNovoObj            : nmNovoObj(aMsg^); 
    ncnmAlteraObj          : nmAlteraObj(aMsg^); 
    ncnmApagaObj           : nmApagaObj(aMsg^); 
    ncnmObtemLista         : nmObtemLista(aMsg^); 
    ncnmDownloadArq        : nmDownloadArq(aMsg^);
    
//    ncnmDownloadArqInterno : nmDownloadArqInterno(aMsg^);

    ncnmUploadArq          : nmUploadArq(aMsg^);
    
    ncnmObtemStreamConfig  : nmObtemStreamConfig(aMsg^);
    ncnmObtemPastaServ     : nmObtemPastaServ(aMsg^);
    ncnmCancelaTran        : nmCancelaTran(aMsg^);
    ncnmSalvaMovEst        : nmSalvaMovEst(aMsg^);
    ncnmSalvaCredito       : nmSalvaCredito(aMsg^);
    ncnmSalvaDebito        : nmSalvaDebito(aMsg^);
    ncnmAbreCaixa          : nmAbreCaixa(aMsg^);
    ncnmFechaCaixa         : nmFechaCaixa(aMsg^);
    ncnmSalvaLancExtra     : nmSalvaLancExtra(aMsg^);
    ncnmCorrigeDataCaixa   : nmCorrigeDataCaixa(aMsg^);
    ncnmSalvaLic           : nmSalvaLic(aMsg^);
    ncnmAjustaPontosFid    : nmAjustaPontosFid(aMsg^);
    ncnmKeepAlive          : nmKeepAlive(aMsg^);
    ncnmGetLoginData       : nmGetLoginData(aMsg^);
    ncnmZerarEstoque       : nmZerarEstoque(aMsg^);
    ncnmSalvaApp           : nmSalvaApp(aMsg^);
    ncnmObtemCertificados  : nmGetCertificados(aMsg^);
    ncnmReemitirNFCe       : nmReemitirNFCe(aMsg^);
    ncnmInstalaNFCeDepend  : nmInstalaNFCeDepend(aMsg^);
    ncnmInstalaNFeDepend   : nmInstalaNFeDepend(aMsg^);
    ncnmTableUpdated       : nmTableUpdated(aMsg^);

    ncnmGeraXMLProt        : nmGeraXMLProt(aMsg^);
    ncnmInutilizarNFCE     : nmInutilizarNFCE(aMsg^);
  else
    aHandled := False;
  end;
end;

procedure TncnxCmdHandler.bpchRemoveSession(aTransport: TnxBaseTransport;
                                            aSessionId: TnxSessionID);
begin
  inherited;
  if not ServidorAtivo then Exit;
  PluginEngine.spRemoveSession( aSessionID );
end;

procedure TncnxCmdHandler.bpchSessionFailed(aTransport: TnxBaseTransport;
  aSessionID: TnxSessionID);
begin
  inherited;
  if not ServidorAtivo then Exit;
  PluginEngine.spRemoveSession( aSessionID );
end;

{ THackTransp }

type
  THackSession = class ( TnxBaseRemoteSession );


  THackRemTransp = class ( TnxBaseRemoteTransport )
    function IsSessionID(aSessionID: TnxSessionID): Boolean;
  end;
  
function THackTransp.GetRemoteAddress(aSessionID: TnxSessionID): String;
var 
  i: Integer;
begin
  Result := '';
  with btRemoteTransports, BeginRead do try
    for I := 0 to Count - 1 do 
      with THackRemTransp(Items[i]) do  
        if IsSessionID(aSessionID) then begin
          Result := RemoteAddress;
          if Trim(Result)<>'' then
            Exit;
        end;
      
  finally
    EndRead;
  end
end;

{ THackRemTransp }

function THackRemTransp.IsSessionID(aSessionID: TnxSessionID): Boolean;
var i: Integer;
begin
  Result := False;
  with brtSessions, BeginRead do 
  try
    for i := 0 to Count - 1 do 
      if THackSession(Items[I]).brsSessionID=aSessionID then  begin
        Result := True;
        Exit;
      end;
  finally
    EndRead;
  end
end;

{ TncEventoFalhou }

initialization
  TncnxServerPlugin.rcRegister;
  TncnxCmdHandler.rcRegister;

finalization
  TncnxServerPlugin.rcUnregister;
  TncnxCmdHandler.rcUnregister;



end.

