unit ncsDMPost;

interface

uses
  System.SysUtils, System.Classes, Vcl.ExtCtrls, nxllTransport,
  nxptBasePooledTransport, nxtwWinsockTransport, nxdb, nxsdServerEngine,
  nxreRemoteServerEngine, nxllComponent, Data.DB;

type
  TdmPosts = class(TDataModule)
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
    nxSession: TnxSession;
    nxRSE: TnxRemoteServerEngine;
    nxDB: TnxDatabase;
    nxTCPIP: TnxWinsockTransport;
    Timer1: TTimer;
  private
    { Private declarations }
    function _Post: String;
  public
    { Public declarations }
    procedure ProcessaPosts;
  end;

var
  dmPosts: TdmPosts;

  TerminarProcPosts : Boolean = True;
  

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses nexUrls, ncDebug, ncClassesBase;

{$R *.dfm}

{ TdmPosts }

procedure TdmPosts.ProcessaPosts;
var 
  S: String;
  Enviar : Boolean;
begin
  tPost.SetRange([True], [True]);
  tPost.Refresh;
  tPost.First;

  DebugMsg('TdmPosts.ProcessaPosts 1');

  while (not tPost.Eof) and (not TerminarProcPosts) do begin  

    DebugMsg('TdmPosts.ProcessaPosts 2');
  
    S := _Post;  
    tPost.Edit;
    if tPostTentativas.Value < High(Word) then 
      tPostTentativas.Value := tPostTentativas.Value + 1;
    tPostEnvio.Value := Now;
    tPostOK.Value := SameText(S, 'ok');
    Enviar := (not tPostOk.Value) and (tPostTentativas.Value<30);
    tPostEnviar.Value := Enviar;
    tPost.Post;

    if Enviar then tPost.Next;

    Sleep(10);
  end;
end;

function TdmPosts._Post: String;
begin
  Result := httpPostArq(tPostUrl.Value, tPostParams.Value, tPostArq.Value, tPostHost.Value, tPostUrl.Value);
    finally
      sl.Free;
    end;
  except 
    on E: Exception do 
      Result := E.Message;
  end;
end;

end.
