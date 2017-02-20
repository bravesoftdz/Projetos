unit udmPostMS;

interface

uses
  SyncObjs, System.SysUtils, System.Classes, Data.DB, nxdb, nxsdServerEngine,
  nxreRemoteServerEngine, nxllComponent, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport;

type
  TdmPostMS = class(TDataModule)
    nxTCPIP: TnxWinsockTransport;
    nxRSE: TnxRemoteServerEngine;
    nxDB: TnxDatabase;
    nxSession: TnxSession;
    T: TnxTable;
    TID: TUnsignedAutoIncField;
    TMS: TBlobField;
    TURL: TStringField;
    TInclusao: TDateTimeField;
    TEnvio: TDateTimeField;
    TTries: TWordField;
    TMax: TWordField;
    TNextTry: TLongWordField;
  private
    procedure ZeraNextTry;
    { Private declarations }
    function _Post: Boolean;
  public
    procedure OpenDB;
    function ProcessaProxPost: Cardinal;
    { Public declarations }
  end;

  TncProcessaPostMS = class ( TThread  )
  protected 
    procedure Execute; override;
  public 
    constructor Create; 
  end; 

  procedure IncPostSeq;

  procedure IniciaThreadPostMS;
  procedure FinalizaThreadPostMS;

var
  dmPostMS: TdmPostMS;
  gPostSeq : Cardinal = 1;
  csPost : TCriticalSection = nil;
  gProcessaPostMS : TncProcessaPostMS = nil;

implementation

uses  ncDebug, Windows, idHttp, IdMultipartFormData, ncServBD, udmNFCe_trans;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmPostMS }

const
  MaxInterval = 1000 * 60 * 60; //1h
{ TdmPostMS }

procedure IniciaThreadPostMS;
begin
  if not Assigned(gProcessaPostMS) then
    gProcessaPostMS := TncProcessaPostMS.Create;
end;

procedure FinalizaThreadPostMS;
begin
  if Assigned(gProcessaPostMS) then begin
    gProcessaPostMS.Terminate;
    gProcessaPostMS := nil;
  end;
end;

function GetPostSeq: Cardinal;
begin
  csPost.Enter;
  try
    Result := gPostSeq;
  finally
    csPost.Leave;
  end;
end;

procedure IncPostSeq;
begin
  csPost.Enter;
  try
    Inc(gPostSeq);
  finally
    csPost.Leave;
  end;
end;

procedure TdmPostMS.OpenDB;
begin
  if T.Active then Exit;
  nxSession.ServerEngine := dmServidorBD.ServerEngine;
  T.Open;
  T.IndexName := 'INextTryID';
  nxTCPIP.Free;
  nxRSE.Free;
  ZeraNextTry;
end;

function TdmPostMS.ProcessaProxPost: Cardinal;
var C: Cardinal;
begin
  DebugMsg('TncPostMS.ProcessaProxPost 1');
  Result := GetTickCount+30000;
  if T.IsEmpty then Exit;
  DebugMsg('TncPostMS.ProcessaProxPost 2');
  T.First;
  if TNextTry.Value > GetTickCount then begin
    Result := TNextTry.Value;
    Exit;
  end;
  DebugMsg('TncPostMS.ProcessaProxPost 3');
  if _Post or ((TTries.Value>=TMax.Value) and (TMax.Value>0)) then begin
    T.Delete;
    Result := 0;
    DebugMsg('TncPostMS.ProcessaProxPost 4');
  end else begin
    T.Edit;
    TTries.Value := TTries.Value + 1;
    C := TTries.Value * 5000;
    if C>MaxInterval then C:=MaxInterval;
    TNextTry.Value := GetTickCount + C;
    T.Post;  
    DebugMsg('TncPostMS.ProcessaProxPost 5');
  end;
end;

procedure TdmPostMS.ZeraNextTry;
var Q: TnxQuery;
begin
  Q := TnxQuery.Create(nil);
  try
    Q.Database := nxDB;
    Q.SQL.Text := 'update postms set nexttry = 0';
    Q.ExecSQL;
  finally
    Q.Free;
  end;
end;

function TdmPostMS._Post: Boolean;
var 
  H : TidHttp;
  MS : TIdMultiPartFormDataStream;
begin
  DebugMsg('TncPostMS._Post');
  Result := False;

  H := TidHttp.Create(nil);
  MS := TIdMultiPartFormDataStream.Create;
  try
    TMS.SaveToStream(MS);
    MS.Position := 0;
    H.HandleRedirects := True;
    DebugMsg('TdmPostMS._Post - Retorno: '+H.Post(TURL.Value, MS));
    Result := True;
  except
    on E: Exception do begin
      Result := False;
      DebugMsgEsp('TdmPostMS._Post - '+E.ClassName+': '+E.Message, False, True);
    end;
  end;
  H.Free;
  MS.Free;
end;

{ TncProcessaPostMS }

constructor TncProcessaPostMS.Create;
begin
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TncProcessaPostMS.Execute;
var 
  dm : TdmPostMS;
  lastPost, aNewPost, NextMS : Cardinal;
begin
  DebugMsg('TncProcessaPostMS.Execute');
  Sleep(10);
  try
    dm := TdmPostMS.Create(nil);
    try
      NextMS := 0;
      lastPost := 0;
      dm.OpenDB;
      while (not Terminated) do begin
        try
          aNewPost := GetPostSeq;
          if (aNewPost<>lastPost) or (GetTickCount>=NextMS) then begin
            lastPost := aNewPost;
            NextMS := dm.ProcessaProxPost;
          end;
          Sleep(5);
        except
          on E: Exception do 
            DebugMsg('TncProcessaPostMS - ' + E.ClassName+': '+E.Message);
        end;
      end;
    finally
      dm.Free;
    end;
  except
    on E: Exception do 
      DebugMsgEsp('TncProcessaPostMS - '+E.ClassName+': '+E.Message, False, True);
  end;
end;

initialization
  csPost := TCriticalSection.Create;

finalization
  csPost.Free;  

end.
