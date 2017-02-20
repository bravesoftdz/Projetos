unit ncMWNex;

// =========================================================================
// kbmMW - An advanced and extendable middleware framework.
// by Components4Developers (http://www.components4developers.com)
//
// Service generated by kbmMW service wizard.
//
// INSTRUCTIONS FOR REGISTRATION/USAGE
// -----------------------------------
// Please update the uses clause of the datamodule/form the TkbmMWServer is placed on by adding 
// kbmMWQueryService to it. Eg.
// 
//     uses ...,kbmMWServer,kbmMWQueryService;
// 
// Somewhere in your application, make sure to register the serviceclass to the TkbmMWServer instance. Eg.
// 
// var
//    sd:TkbmMWCustomServiceDefinition;
// ..
//    sd:=kbmMWServer1.RegisterService(yourserviceclassname,false);
// 
// Set the last parameter to true if this is the default service.
// 



{$I kbmMW.inc}

interface

uses
  SysUtils, Variants, Windows, kbmMemTable, kbmMWStreamFormat,
  kbmMWBinaryStreamFormat, DB, kbmMWCustomConnectionPool, Dialogs,
  kbmMWCustomDataset, kbmMWNexusDB, Classes, kbmMWResolvers, 
  kbmMWSecurity, idTCPServer, 
  kbmMWGlobal,
  kbmMWServer,
  kbmMWQueryService, kbmMWX, ncClassesBase;

type
  TmwNex = class(TkbmMWQueryService)
  private
     { Private declarations }
    function ObtemSenhaCli(const Args: Array of Variant): Variant;
    function SalvaCredTempo(const Args: Array of variant): Variant;
    function SalvaMovEst(const Args: Array of variant): Variant;
    function SalvaDebito(const Args: Array of variant): Variant;
    function SalvaLancExtra(const Args: Array of variant): Variant;
    function SalvaDebTempo(const Args: Array of variant): Variant;
    function SalvaImpressao(const Args: Array of variant): Variant;
    function AbreCaixa(const Args: Array of variant): Variant;
    function ObtemSitesBloqueados: Variant;
    function ObtemPastaServ: Variant;
    function SalvaLogAppUrl(const Args: Array of variant): Variant;
    
    function SalvaStreamObj(const Args: Array of variant): Variant;
    function ObtemStreamAvisos: Variant;
    function ObtemStreamConfig: Variant;
    function ObtemStreamListaObj(const Args: Array of variant): Variant;
    function Login(const Args: Array of variant; aIP: String; aThreadID: Cardinal): Variant;

    function LoginMaq(const Args: Array of variant): Variant;
    function AlteraSessao(const Args: Array of variant): Variant;
    function SalvaProcessos(const Args: Array of variant): Variant;
    function ObtemPatrocinios(const Args: Array of variant): Variant;

    function CapturaTelaMaq(const Args: Array of variant): Variant;
    function SalvaTelaMaq(const Args: Array of variant): Variant;

    function ObtemVersaoGuard: Variant;
  protected
     { Private declarations }
    function ProcessRequest(const Func:string; const ClientIdent:TkbmMWClientIdentity; const Args:array of Variant):Variant; override;
  public
     { Public declarations }
{$IFNDEF CPP}class{$ENDIF} function GetPrefServiceName:string; override;
{$IFNDEF CPP}class{$ENDIF} function GetFlags:TkbmMWServiceFlags; override;
{$IFNDEF CPP}class{$ENDIF} function GetVersion:string; override;
  end;

var
  Servidor : TncServidorBase;  

implementation

uses 
  ncServBase,
  ncSessao, 
  ncCredTempo, 
  ncDebTempo, 
  ncImpressao, 
  ncLancExtra, 
  ncMovEst,
  ncDebito, ncMWServer, ncDebug;

{$R *.dfm}


// Service definitions.
//---------------------

function TmwNex.AbreCaixa(const Args: array of variant): Variant;
var NovoCx: Integer;
begin
  Result := VarArrayOf([Servidor.AbreCaixa(Args[0], NovoCx), NovoCx]);
end;

function TmwNex.AlteraSessao(const Args: array of variant): Variant;
var
  S: TStream;
  Sessao: TncSessao;
begin
  S := TMemoryStream.Create;
  try
    kbmmwVariantToStream(Args[0], S);
    S.Position := 0;
    Sessao := TncSessao.Create(False);
    try
      Sessao.LeStream(S);
      Servidor.AlteraSessao(Sessao);
    finally
      Sessao.Free;
    end;
  finally
    S.Free;
  end;
end;

function TmwNex.CapturaTelaMaq(const Args: array of variant): Variant;
var 
  S: TMemoryStream;
  Erro: Integer;
  V: Variant;
begin
  S := TMemoryStream.Create;
  try
    Erro := Servidor.CapturaTelaMaq(Args[0]);
    if Erro=0 then begin
      V := kbmMWStreamToVariant(S);
      Result := VarArrayOf([0, V]);
    end else 
      Result := Erro;
  finally
    S.Free;
  end;
end;

class function TmwNex.GetFlags: TkbmMWServiceFlags;
begin

end;

class function TmwNex.GetPrefServiceName:string;
begin
     Result:='NexServ';
end;

class function TmwNex.GetVersion: string;
begin
  Result := '1';
end;

function TmwNex.Login(const Args: array of variant; aIP: String; aThreadID: Cardinal): Variant;
var aHandle: Integer;
begin
  Result := VarArrayOf([Servidor.Login(Args[0], Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], aThreadID, 0, aIP, aHandle), aHandle]);
end;

function TmwNex.LoginMaq(const Args: array of variant): Variant;
var
  S: TStream;
  Sessao: TncSessao;
begin
  S := TMemoryStream.Create;
  try
    kbmmwVariantToStream(Args[0], S);
    S.Position := 0;
    Sessao := TncSessao.Create(False);
    try
      Sessao.LeStream(S);
      Result := Servidor.LoginMaq(Sessao);
    finally
      Sessao.Free;
    end;
  finally
    S.Free;
  end;
end;

function TmwNex.ObtemPastaServ: Variant;
var Pasta: String;
begin
  Result := VarArrayOf([Servidor.ObtemPastaServ(Pasta), Pasta]);
end;

function TmwNex.ObtemPatrocinios(const Args: array of variant): Variant;
var SL: TStrings;
begin
  SL := TStringList.Create;
  try
    Result := VarArrayOf([Servidor.ObtemPatrocinios(SL), SL.Text]);
  finally
    SL.Free;
  end;
end;

function TmwNex.ObtemSenhaCli(const Args: array of Variant): Variant;
var Senha : String;
begin
  Senha := '';
  Result := VarArrayOf([Servidor.ObtemSenhaCli(Args[0], Senha), Senha]);
end;

function TmwNex.ObtemSitesBloqueados: Variant;
var S: String;
begin
  S := '';
  Result := VarArrayOf([Servidor.ObtemSitesBloqueados(S), S]);
end;

function TmwNex.ObtemStreamAvisos: Variant;
var 
  S: TStream;
  Erro: Integer;
begin
  S := TMemoryStream.Create;
  try
    Erro := Servidor.ObtemStreamAvisos(S);
    if Erro=0 then 
      Result := VarArrayOf([0, kbmMWStreamToVariant(S)]) else
      Result := Erro;
  finally
    S.Free;
  end;                       
end;

function TmwNex.ObtemStreamConfig: Variant;
var 
  S: TStream;
  Erro: Integer;
begin
  S := TMemoryStream.Create;
  try
    Erro := Servidor.ObtemStreamConfig(S);
    if Erro=0 then 
      Result := VarArrayOf([0, kbmMWStreamToVariant(S)]) else
      Result := Erro;
  finally
    S.Free;
  end;                       
end;

function TmwNex.ObtemStreamListaObj(const Args: array of variant): Variant;
var 
  S : TMemoryStream;
  Erro : Integer;
begin
  S := TMemoryStream.Create;
  try
    Erro := Servidor.ObtemStreamListaObj(Args[0], Args[1], S);
    if Erro=0 then
      Result := VarArrayOf([0, kbmMWStreamToVariant(S)]) else
      Result := Erro;
  finally
    S.Free;
  end;
end;

function TmwNex.ObtemVersaoGuard: Variant;
var Versao: Integer;
begin
  Result := VarArrayOf([Servidor.ObtemVersaoGuard(Versao), Versao]);  
end;

function TmwNex.ProcessRequest(const Func: string;
  const ClientIdent: TkbmMWClientIdentity;
  const Args: array of Variant): Variant;
var 
  C: Cardinal;  
  Cli: TncCliente;
  Maq : Integer;
begin
  if SameText(Func, 'KeepAlive') then begin
    Result := 0;
    Exit;
  end;
  DebugMsg('LOCK - ' + Func);
  
  TncServidor(Servidor).Lock;
  try
    DebugMsg('LOCK - OK');
    try
      C := TidPeerThread(TkbmMWServerTransportInfo(RequestTransportStream.Info).Client).ThreadID;
      Cli := Servidor.ObtemClientePorSocket(C);
    except
      on E: Exception do begin
        Cli := nil;
        DebugMsg('TmwNex.ProcessRequest - Exception: ' + E.Message);
      end;
    end;

    if Cli<>nil then begin
      HandleCliAtual := Cli.Handle;
      Maq := Cli.Maquina;
      UsernameAtual := Cli.UserName;
    end else begin
      HandleCliAtual := 0;
      Maq := 0;
      UsernameAtual := '';
    end;

    DebugMsg('TmwNex.ProcessRequest - ThreadID: ' + IntToStr(C) + 
             ' - Handle: ' + IntToStr(HandleCliAtual) + 
             ' - Maq: ' + IntToStr(Maq) + ' - IP: ' + ClientIdent.RemoteLocation);

    if SameText(Func, 'ArqFundoEnviado') then begin
      dmMWServer.mwFilePool.GarbageCollect;
      Result := Servidor.ArqFundoEnviado(Args[0]);
    end else
    if SameText(Func, 'ObtemSenhaCli') then
      Result := ObtemSenhaCli(Args) 
    else
    if SameText(Func, 'SalvaSenhaCli') then
      Result := Servidor.SalvaSenhaCli(Args[0], Args[1])
    else
    if SameText(Func, 'LimpaFundo') then
      Result := Servidor.LimpaFundo(Args[0])
    else
    if SameText(Func, 'SalvaCredTempo') then
      Result := SalvaCredTempo(Args[0])
    else
    if SameText(Func, 'SalvaMovEst') then
      Result := SalvaMovEst(Args[0])
    else
    if SameText(Func, 'SalvaDebito') then
      Result := SalvaDebito(Args[0])
    else
    if SameText(Func, 'SalvaLancExtra') then
      Result := SalvaLancExtra(Args[0])
    else
    if SameText(Func, 'SalvaDebTempo') then
      Result := SalvaDebTempo(Args[0])
    else
    if SameText(Func, 'SalvaImpressao') then
      Result := SalvaImpressao(Args[0])
    else
    if SameText(Func, 'AbreCaixa') then
      Result := AbreCaixa(Args)
    else
    if SameText(Func, 'FechaCaixa') then
      Result := Servidor.FechaCaixa(Args[0], Args[1])
    else
    if SameText(Func, 'ReprocCaixa') then
      Result := Servidor.ReprocCaixa(Args[0], Args[1])
    else
    if SameText(Func, 'CorrigeDataCaixa') then
      Result := Servidor.CorrigeDataCaixa(Args[0], Args[1], Args[2], Args[3])
    else
    if SameText(Func, 'AjustaPontosFid') then
      Result := Servidor.AjustaPontosFid(Args[0], Args[1], Args[2], Args[3], Args[4])
    else
    if SameText(Func, 'ObtemSitesBloqueados') then
      Result := ObtemSitesBloqueados
    else
    if SameText(Func, 'SalvaLogAppUrl') then
      Result := SalvaLogAppUrl(Args[0])
    else
    if SameText(Func, 'SalvaStreamObj') then
      Result := SalvaStreamObj(Args)
    else
    if SameText(Func, 'ObtemStreamAvisos') then
      Result := ObtemStreamAvisos
    else  
    if SameText(Func, 'ObtemStreamConfig') then
      Result := ObtemStreamConfig
    else
    if SameText(Func, 'ObtemStreamListaObj') then
      Result := ObtemStreamListaObj(Args)
    else
    if SameText(Func, 'ApagaObj') then
      Result := Servidor.ApagaObj(Args[0], Args[1], Args[2])
    else
    if SameText(Func, 'Login') then begin
      Result := Login(Args, Copy(ClientIdent.RemoteLocation, 1, Pos(':', ClientIdent.RemoteLocation)-1), C);
    end else
    if SameText(Func, 'LoginMaq') then
      Result := Self.LoginMaq(Args)
    else
    if SameText(Func, 'AlteraSessao') then
      Result := AlteraSessao(Args)
    else
    if SameText(Func, 'CancelaTran') then
      Result := Servidor.CancelaTran(Args[0], Args[1])
    else
    if SameText(Func, 'ObtemPastaServ') then
      Result := ObtemPastaServ
    else  
    if SameText(Func, 'ObtemProcessos') then
      Result := Servidor.ObtemProcessos(Args[0], Args[1], Args[2])
    else
    if SameText(Func, 'FinalizaProcesso') then
      Result := Servidor.FinalizaProcesso(Args[0], Args[1])
    else
    if SameText(Func, 'SalvaProcessos') then
      Result := SalvaProcessos(Args)
    else
    if SameText(Func, 'ForceRefreshSessao') then
      Result := Servidor.ForceRefreshSessao(Args[0])
    else
    if SameText(Func, 'SalvaLic') then
      Result := Servidor.SalvaLic(Args[0])
    else
    if SameText(Func, 'ObtemPatrocinios') then
      Result := ObtemPatrocinios(Args)
    else
    if SameText(Func, 'RefreshEspera') then
      Result := Servidor.RefreshEspera
    else
    if SameText(Func, 'PermitirDownload') then
      Result := Servidor.PermitirDownload(Args[0], Args[1])
    else
    if SameText(Func, 'AdicionaPassaporte') then
      Result := Servidor.AdicionaPassaporte(Args[0], Args[1])
    else
    if SameText(Func, 'RegistraPaginasImpressas') then
      Result := Servidor.RegistraPaginasImpressas(Args[0], Args[1], ARgs[2], Args[3])
    else
    if SameText(Func, 'PararTempoMaq') then
      Result := Servidor.PararTempoMaq(Args[0], Args[1])
    else
    if SameText(Func, 'TransferirMaq') then
      Result := Servidor.TransferirMaq(Args[0], Args[1])
    else
    if SameText(Func, 'ModoManutencao') then
      Result := Servidor.ModoManutencao(Args[0], Args[1], Args[2], Args[3])
    else
    if SameText(Func, 'SuporteRem') then
      Result := Servidor.SuporteRem(Args[0], Args[1])
    else
    if SameText(Func, 'LogoutMaq') then
      Result := Servidor.LogoutMaq(Args[0])
    else
    if SameText(Func, 'PreLogoutMaq') then
      Result := Servidor.PreLogoutMaq(Args[0])
    else
    if SameText(Func, 'CancLogoutMaq') then
      Result := Servidor.CancLogoutMaq(Args[0])
    else
    if SameText(Func, 'ObtemVersaoGuard') then
      Result := ObtemVersaoGuard
    else
    if SameText(Func, 'CapturaTelaMaq') then
      Result := CapturaTelaMaq(Args)
    else
    if SameText(Func, 'SalvaTelaMaq') then
      Result := SalvaTelaMaq(Args)
    else
    if SameText(Func, 'RefreshPrecos') then
      Result := Servidor.RefreshPrecos
    else
    if SameText(Func, 'ShutdownMaq') then
      Result := Servidor.ShutdownMaq(Args[0], Args[1])
    else
    if SameText(Func, 'EnviarMsg') then
      Result := Servidor.EnviarMsg(Args[0], Args[1], Args[2])
    else
      Result:= inherited ProcessRequest(Func, ClientIdent, Args);
  finally
    DebugMsg('UNLOCK - ' + Func);
    TncServidor(Servidor).Unlock;
  end;
end;

function TmwNex.SalvaCredTempo(const Args: array of variant): Variant;
var 
  CT: TncCredTempo;
  S: TMemoryStream;
begin
  CT := TncCredTempo.Create;
  try
    S := TMemoryStream.Create;
    try
      kbmMWVariantToStream(Args[0], S);
      CT.LoadFromStream(S);
      Result := Servidor.SalvaCredTempo(CT);
    finally
      S.Free;
    end;
  finally
    CT.Free;
  end;
end;

function TmwNex.SalvaDebito(const Args: array of variant): Variant;
var
  D: TncDebito;
  S: TMemoryStream;
begin
  D := TncDebito.Create;
  try
    S := TMemoryStream.Create;
    try
      kbmMWVariantToStream(Args[0], S);
      D.LeStream(S);
      Result := Servidor.SalvaDebito(D);
    finally
      S.Free;
    end;
  finally
    D.Free;
  end;
end;

function TmwNex.SalvaDebTempo(const Args: array of variant): Variant;
var 
  D: TncDebTempo;
  S: TMemoryStream;
begin
  D := TncDebTempo.Create;
  try
    S := TMemoryStream.Create;
    try
      kbmMWVariantToStream(Args[0], S);
      D.LeStream(S);
      Result := Servidor.SalvaDebTempo(D);
    finally
      S.Free;
    end;
  finally
    D.Free;
  end;
end;

function TmwNex.SalvaImpressao(const Args: array of variant): Variant;
var 
  I: TncImpressao;
  S: TMemoryStream;
begin
  I := TncImpressao.Create;
  try
    S := TMemoryStream.Create;
    try
      kbmMWVariantToStream(Args[0], S);
      I.LoadFromStream(S);
      Result := Servidor.SalvaImpressao(I);
    finally
      S.Free;
    end;
  finally
    I.Free;
  end;
end;

function TmwNex.SalvaLancExtra(const Args: array of variant): Variant;
var 
  LE: TncLancExtra;
  S: TMemoryStream;
begin
  LE := TncLancExtra.Create;
  try
    S := TMemoryStream.Create;
    try
      kbmMWVariantToStream(Args[0], S);
      LE.LeStream(S);
      Result := Servidor.SalvaLancExtra(LE);
    finally
      S.Free;
    end;
  finally
    LE.Free;
  end;
end;

function TmwNex.SalvaLogAppUrl(const Args: array of variant): Variant;
var S: TStream;
begin
  S := TMemoryStream.Create;
  try
    kbmMWVariantToStream(Args[0], S);
    S.Position := 0;
    Result := Servidor.SalvaLogAppUrl(S);
  finally
    S.Free;
  end;
end;

function TmwNex.SalvaMovEst(const Args: array of variant): Variant;
var 
  ME: TncMovEst;
  S: TMemoryStream;
begin
  ME := TncMovEst.Create;
  try
    S := TMemoryStream.Create;
    try
      kbmMWVariantToStream(Args[0], S);
      ME.LeStream(S);
      Result := Servidor.SalvaMovEst(ME);
    finally
      S.Free;
    end;
  finally
    ME.Free;
  end;
end;

function TmwNex.SalvaProcessos(const Args: array of variant): Variant;
var SL: TStrings;
begin
  SL := TStringList.Create;
  try
    SL.Text := Args[2];
    Result := Servidor.SalvaProcessos(Args[0], Args[1], SL);
  finally
    SL.Free;
  end;
end;

function TmwNex.SalvaStreamObj(const Args: array of variant): Variant;
var S: TMemoryStream;
begin
  S := TMemoryStream.Create;
  try
    kbmMWVariantToStream(Args[1], S);
    S.Position := 0;
    Result := Servidor.SalvaStreamObj(Args[0], S);
  finally
    S.Free;
  end;
end;

function TmwNex.SalvaTelaMaq(const Args: array of variant): Variant;
var 
  S : TMemoryStream;
  Maq : Byte;
begin
  S := TMemoryStream.Create;
  try
    kbmMWVariantToStream(Args[1], S);
    S.Position := 0;
    Result := Servidor.SalvaTelaMaq(Args[0], S);
  finally
    S.Free;                    
  end;
end;

end.