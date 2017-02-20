unit ncsNFConfig;

interface

uses Sysutils, Classes, idHttp, md5, SyncObjs, ExtCtrls, Windows;

type

  TnexNFConfigRefresh = class ( TThread )
  protected
    procedure Execute; override;

    function Get_hom: Boolean;
    function Get_prod: Boolean;
    function Get_consulta: Boolean;

    function Get: Boolean;
  public
    constructor Create;
  end;
  
implementation

uses
  ncClassesBase,
  ncMsgCom,
  ncDebug;

{ TnexNFConfig }

const
  salt = '>LKHASDIUywefd7kdsf_)(*!@Tkjhasfdkxzxxx7777!38213zxc%nbv';

  maxnexttry = 60 * 60 * 1000; {1h}

  incnexttry = 30000;


{ TnexNFConfigRefresh }


function Caminho: String;
begin
  Result := ExtractFilePath(ParamStr(0))+'NFCE\';
end;

constructor TnexNFConfigRefresh.Create;
begin
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TnexNFConfigRefresh.Execute;
var NextTry, IncTry : Cardinal;
begin
  NextTry := 0;
  IncTry := 0;
  repeat
    try
      if GetTickCount>=NextTry then begin
        if Get then begin
          NextTry := GetTickCount + (24 * 60 * 60 * 1000 {24h});
          IncTry := 0;
        end
        else begin
          if IncTry < MaxNextTry then 
            IncTry := IncTry + IncNextTry;
          NextTry := GetTickCount + IncTry;
        end;
      end;   
      Sleep(50);          
    except
      On E: Exception do DebugMsg('TnexNFConfigRefresh.Execute - '+E.Message);
    end;
  until Terminated or EncerrarThreads;
end;

function TnexNFConfigRefresh.Get: Boolean;
begin
  Result := True;
  if not Get_hom  then Result := False;
  if not Get_prod then Result := False;
  if not Get_consulta then Result := False;
  if Result then
    PostMessage(CliNotifyHandle, wm_updatenfconfig, 0, 0);
end;

function TnexNFConfigRefresh.Get_Hom: Boolean;
var 
  h: TidHttp; sl: TStrings; S: String;
begin
  H := TidHttp.Create(nil);
  try
    Result := False;
    H.HandleRedirects := True;
    sl := TStringList.Create;
    try
      try
        sl.Text := H.Get('http://setup.contas.nextar.com.br/nfce/servhom.ini');
        DebugMsg('TnexNFConfigRefresh.Get_Hom - ' + sl.Text);
      except
        on E: Exception do begin
          DebugMsg('TnexNFConfigRefresh.Get_Hom - Exception:' + sl.Text);
          Exit;
        end;
      end;
      if sl.IndexOfName('chave')>=0 then begin
{      S := sl.Values['chave'];
      if S='' then Exit;
      sl.Delete(sl.IndexOfName('chave'));
      if not sameText(S, getmd5str(sl.Text+salt)) then 
      begin
        DebugMsg('TnexNFConfigRefresh.Get_Hom - Chave Invalida: '+S+' - Chave servidor: '+getmd5str(sl.Text+salt));
        Exit;
      end;}
        Result := True;
        ForceDirectories(Caminho);
        sl.SaveToFile(Caminho+'nfceServidoresHom.ini');
      end;  
    finally
      sl.Free;
    end;
  finally
    H.Free;
  end;
end;

function TnexNFConfigRefresh.Get_Prod: Boolean;
var 
  h: TidHttp; sl: TStrings; S: String;
begin
  H := TidHttp.Create(nil);
  try
    result := False;
    H.HandleRedirects := True;
    sl := TStringList.Create;
    try
      try
        sl.Text := H.Get('http://setup.contas.nextar.com.br/nfce/servprod.ini');
        DebugMsg('TnexNFConfigRefresh.Get_Prod - ' + sl.Text);
      except
        on E: Exception do begin
          DebugMsg('TnexNFConfigRefresh.Get_Prod - Exception:' + sl.Text);
          Exit;
        end;
      end;
      if sl.IndexOfName('chave')>=0 then begin
{      S := sl.Values['chave'];
      if S='' then Exit;
      sl.Delete(sl.IndexOfName('chave'));
      if not sameText(S, getmd5str(sl.Text+salt)) then 
      begin
        DebugMsg('TnexNFConfigRefresh.Get_Prod - Chave Invalida: '+S+' - Chave servidor: '+getmd5str(sl.Text+salt));
        Exit;
      end;    }
        ForceDirectories(Caminho);
        sl.SaveToFile(Caminho+'nfceServidoresProd.ini');
        Result := True;
      end;  
    finally
      sl.Free;
    end;
  finally
    H.Free;
  end;
end;

function TnexNFConfigRefresh.Get_Consulta: Boolean;
var 
  h: TidHttp; sl: TStrings; S, sServ: String;
begin
  H := TidHttp.Create(nil);
  try
    Result := False;
    H.HandleRedirects := True;
    sl := TStringList.Create;
    try
      try
        sl.Text := H.Get('http://setup.contas.nextar.com.br/nfce/urlconsulta.ini');
        DebugMsg('TnexNFConfigRefresh.Get_Consulta - ' + sl.Text);
      except
        on E: Exception do begin
          DebugMsg('TnexNFConfigRefresh.Get_Consulta - Exception:' + sl.Text);
          Exit;
        end;
      end;
      if sl.IndexOfName('chave')>=0 then begin
{      S := sl.Values['chave'];
      if S='' then Exit;
      sl.Delete(sl.IndexOfName('chave'));
      sServ := getmd5str(sl.Text+salt);
      if not SameText(S, sServ) then
      begin
        DebugMsg('TnexNFConfigRefresh.Get_Consulta - Chave Invalida: '+S+' - Chave servidor: '+sServ);
        Exit;
      end;}
        Result := True;
        ForceDirectories(Caminho);
        sl.SaveToFile(Caminho+'nfceUrlConsulta.ini');
      end;
    finally
      sl.Free;
    end;
  finally
    H.Free;
  end;
end;

initialization
  TnexNFConfigRefresh.Create;

end.
