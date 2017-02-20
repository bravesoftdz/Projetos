unit ncDM_post_bk;

interface

uses
  System.SysUtils, System.Classes, Data.DB, nxdb, nxllTransport, SyncObjs, Windows,
  nxptBasePooledTransport, nxtwWinsockTransport, nxllComponent, idHttp,
  nxsdServerEngine, nxreRemoteServerEngine, json, dialogs, kbmMemTable;

type
  TTerminateEvent = function : Boolean of object;
  
  Tdm_post_nexapp = class(TDataModule)
    RSE: TnxRemoteServerEngine;
    TCP: TnxWinsockTransport;
    Session: TnxSession;
    DB: TnxDatabase;
    tPost: TnxTable;
    tPostID: TUnsignedAutoIncField;
    tPostContentType: TWideStringField;
    tPostDados: TBlobField;
    tPostQtd: TWordField;
    tPostResp: TWideMemoField;
    tPostDH: TDateTimeField;
    tPostMethod: TByteField;
    tPostcard_array: TByteField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FTerm  : TTerminateEvent;
    FHttpError : Integer;
    

    function _Term: Boolean;
  public
    procedure Open;
    { Public declarations }

    procedure Processa;

    property OnTerminateEvent: TTerminateEvent read FTerm write FTerm;
  end;

  TThread_post_nexapp = class ( TThread )
  private
    FEvent : TEvent;

    function onterm: Boolean;
  protected
    procedure Execute; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  public
    procedure Terminar;
    procedure Sinaliza;
  end;

  procedure Sinaliza_post_nexapp;

var
  dm_post_nexapp: Tdm_post_nexapp;
  gThread_post_nexapp : TThread_post_nexapp;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ncClassesBase, ncServBD, ncDebug, nexUrls;

{$R *.dfm}

{ TdmNexApp }

function nexapp_upload(aURL: String; aMethod: Byte; aDados: TStream; var aRes: String; var aError: Integer): Boolean;
var 
  H: TIdHTTP;
  C: Cardinal;
begin
  aRes := '';
  aError := 0;
  Result := False;
  H := TIdHTTP.Create;
  try
    H.HandleRedirects := True;
    H.Request.Accept := 'application/json';
    H.Request.ContentType := 'application/json';
    try
      DebugMsg('nexapp_upload2 - aUrl: '+aUrl+' - aMethod: '+IntToStr(aMethod)+' - Size: '+IntToStr(aDados.Size));
      C := GetTickCount;
      case aMethod of
        http_method_delete     : aRes := H.Delete(aUrl);
        http_method_put        : aRes := H.Put(aUrl, aDados);
        http_method_post       : aRes := H.Post(aUrl, aDados);
      end;
      Result := True; 
      aError := H.ResponseCode;
      DebugMsg('nexapp_upload - aUrl: '+aUrl+' - aMethod: '+IntToStr(aMethod)+' - Tempo: '+IntToStr(GetTickCount-C)+'ms - Ok: '+aRes);
    except
      on E: EidHttpProtocolException do begin
        aRes := E.Message;
        aError := E.ErrorCode;
        DebugEx(nil, 'nexapp_upload - aUrl: '+aUrl+' - aMethod: '+IntToStr(aMethod)+' - Tempo: '+IntToStr(GetTickCount-C)+'ms', E);
      end;
      on E: Exception do begin
        aRes := E.Message;
        DebugEx(nil, 'nexapp_upload - aUrl: '+aUrl+' - aMethod: '+IntToStr(aMethod)+' - Tempo: '+IntToStr(GetTickCount-C)+'ms', E);
      end;
    end;
  finally
    H.Free;
  end;
end;


procedure Tdm_post_nexapp.DataModuleCreate(Sender: TObject);
begin
  DebugMsg(Self, 'DataModuleCreate 1');
  FTerm := nil;
  FHttpError := 0;
  Session.ServerEngine := ncServBD.dmServidorBD.ServerEngine;
  TCP.Free;
  RSE.Free;
  DebugMsg(Self, 'DataModuleCreate 2');
end;

procedure Tdm_post_nexapp.Open;
begin
  tPost.Open;
  DebugMsg(Self, 'Open');
end;

procedure Tdm_post_nexapp.Processa;
const maxRetry = 60 * 60 * 1000;

var m: byte;

function Upload: Boolean;
var 
  S: TStream;
  IncMS, NextTry: Cardinal;
  sRes: String;
begin
  S := TMemoryStream.Create;
  try
    tPostDados.SaveToStream(S);
    IncMS := 5000;
    NextTry := 0;
    Result := False;
    DebugMsg('Tdm_post_nexapp.Processa - upload 1');
    
    repeat
      if GetTickCount>=NextTry then begin
        DebugMsg('Tdm_post_nexapp.Processa - upload 2');
        S.Position := 0;
        if tPostMethod.Value=http_method_reset_store then
          Result := nexapp_upload(gUrls.Url('nexapp_reset'), http_method_post, S, sRes, FHttpError) else
          Result := nexapp_upload(gUrls.Url('nexapp_'+card_array_name[tPostcard_array.Value]), tPostMethod.Value, S, sRes, FHttpError);
        DebugMsg('Tdm_post_nexapp.Processa - Res: '+sRes);
        if not Result then begin
          TMemoryStream(S).SaveToFile(ExtractFilePath(ParamStr(0))+'nexapp_post_erro.json');
          if (not (tPostMethod.Value in [http_method_reset_store, http_method_post])) and (FHttpError>=400) and (FHttpError<500)  then Exit;
          if IncMS<maxRetry then IncMS := IncMS * 2;
          NextTry := GetTickCount+IncMS;
        end;
      end else
        Sleep(200);
      DebugMsg('Tdm_post_nexapp.Processa - upload 3');
    until Result or _Term;
    DebugMsg('Tdm_post_nexapp.Processa - upload ok');
  finally
    S.Free;
  end;
end;

begin
  DebugMsg(Self, 'Processa 1');
  try
    tPost.IndexName := 'IMethodID';

    for m := 0 to http_method_delete do begin
      DebugMsg(Self, 'Processa 2 - '+m.ToString);
      tPost.SetRange([m], [m]);
      tPost.Refresh;
      tPost.First;
      while (not _Term) and (not tPost.IsEmpty) do begin
        if not Upload then Exit;
        tPost.Delete;
        Sleep(0);
        DebugMsg(Self, 'Processa 3');
      end;
      DebugMsg(Self, 'Processa 4');
    end;
    DebugMsg(Self, 'Processa 5');
  except
    on E: Exception do 
      DebugEx(Self, 'Processa', E);
  end;
end;

function Tdm_post_nexapp._Term: Boolean;
begin
  Result := Assigned(FTerm) and FTerm;
end;

{ TThread_post_nexapp }

procedure TThread_post_nexapp.AfterConstruction;
begin
  inherited;
  FEvent := TEvent.Create;
  FreeOnTerminate := True;
  gThread_post_nexapp := self;
  DebugMsg(Self, 'AfterConstruction');
end;

procedure TThread_post_nexapp.BeforeDestruction;
begin
  inherited;
  FEvent.Free;
  if gThread_post_nexapp=Self then gThread_post_nexapp := nil;
  DebugMsg(Self, 'BeforeConstruction');
end;

procedure TThread_post_nexapp.Execute;
var dm : Tdm_post_nexapp;
begin
  DebugMsg(Self, 'Execute 1');
  dm := Tdm_post_nexapp.Create(nil);
  try
    DebugMsg(Self, 'Execute 2');
    dm.OnTerminateEvent := onterm;
    dm.Open;
    DebugMsg(Self, 'Execute 3');
    while not Terminated do begin
      DebugMsg(Self, 'Execute 4');
      FEvent.ResetEvent;
      dm.Processa;
      FEvent.WaitFor(30000);
    end;
  except
  end;
  dm.Free;
end;

function TThread_post_nexapp.onterm: Boolean;
begin
  Result := Terminated;
end;

procedure TThread_post_nexapp.Sinaliza;
begin
  DebugMsg(Self, 'Sinaliza');
  FEvent.SetEvent;
end;

procedure TThread_post_nexapp.Terminar;
begin
  Sinaliza;
  Terminate;

  if gThread_post_nexapp=Self then gThread_post_nexapp := nil;
end;

procedure Sinaliza_post_nexapp;
begin
  if Assigned(gThread_post_nexapp) then 
    gThread_post_nexapp.Sinaliza else
    DebugMsg('Sinaliza_post_nexapp - NIL');
end;

initialization
  gThread_post_nexapp := nil;

finalization
  if Assigned(gThread_post_nexapp) then gThread_post_nexapp.Terminar;
    
end.



{ 
    "_id" : ObjectId("577bc714988f3624bc365bec"), //gerado automaticamente
    "Code" : NumberInt(160719), // codigo na tabela Cards local
    "CreationDate" : ISODate("2016-07-05T14:31:29.980+0000"), //data em que o card foi criado
    "Type" : NumberInt(0), //tipo do Card {0 = Venda, 1 = Fechamento de Caixa, 2 = Alerta de Estoque, 3 = Faturamento }
    "IdRef" : NumberInt(88535), //código da Venda
    "Info" : {        
        "SaleCode" : NumberInt(88535), 
        "SaleDate" : ISODate("2016-06-09T02:24:51.835+0000"), //data da Venda 
        "ShopCode" : "230", //codigo da loja que devera ser unificado entre Nex, MinhaLoja e NexApp
        "CustomerCode" : "0", 
        "VendorCode" : null, 
        "CustomerName" : "", 
        "VendorName" : "admin", 
        "TotalNet" : 23.0,  // total Liquido
        "TotalGross" : 23.0, //total Bruto
        "Discount" : 0.0, // desconto
        "Items" : [
            {
                "ProductCode" : NumberInt(234), 
                "ProductName" : "CORONA CERVEZA 355CM", 
                "Quantity" : NumberLong(2), 
                "UnitValue" : 6.5, 
                "TotalValue" : 13.0, 
                "SaleCode" : NumberInt(88535)
            }, 
            {
                "ProductCode" : NumberInt(1094), 
                "ProductName" : "BATIDINHA DE COCO BAIANINHA", 
                "Quantity" : NumberLong(1), 
                "UnitValue" : 10.0, 
                "TotalValue" : 10.0, 
                "SaleCode" : NumberInt(88535)
            }
        ], 
        "Payments" : [
            {
                "PaymentCode" : NumberInt(2), 
                "PaymentDescription" : "Dinheiro", 
                "Value" : 10.0               
            }, 
            {
                "PaymentCode" : NumberInt(3), 
                "PaymentDescription" : "Cartão de Credito - Visa", 
                "Value" : 13.0        
            }
        ],             
        "Comment" : "" //Observacao
    }, 
    "Updated" : true, 
    "ShopCode" : "shopCodeMaybeForever", 
    "EventDate" : ISODate("2016-06-09T02:24:51.835+0000") //data da Venda
}

