unit uNexSignAC_Svc;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, SvcMgr, ncDebug;

type

  TSvcThread = class (TThread)
    protected
      procedure ProcessMessages;
    public
      constructor Create;
      destructor Destroy; override;
      procedure Execute; override;
  end;

  TNexSignAC = class(TService)
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceExecute(Sender: TService);
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  NexSignAC: TNexSignAC;
  SvcThread : TSvcThread = nil;

implementation


{$R *.DFM}

uses uDMGeraSignAC;

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  NexSignAC.Controller(CtrlCode);
end;

function TNexSignAC.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

{ TSvcThread }

constructor TSvcThread.Create;
begin
  inherited Create(True);
  SvcThread := Self;               
end;

destructor TSvcThread.Destroy;
begin
  SvcThread := nil;
  inherited;
end;

procedure TSvcThread.Execute;
var Dummy: Integer;
begin
  dmSignAC := nil;
  try
    try
      dmSignAC := TDMSignAC.Create(nil);
      while (not Terminated) do begin
        MsgWaitForMultipleObjects(0, Dummy, False, 500, QS_ALLINPUT);
        try
          ProcessMessages;
        except
        end;
      end;        
    except
      on E: Exception do
        DebugMsgEsp('TSvcThread.Execute - E.Message: ' + E.Message, False, True);
    end;
    if dmSignAC<>nil then
      FreeAndNil(dmSignAC);
  except
    on E: Exception do 
      DebugMsgEsp('TSvcThread.Execute - E.Message: ' + E.Message, False, True);
  end;
end;

procedure TSvcThread.ProcessMessages;
var Msg : TMsg;
begin
  while PeekMessage(Msg, 0, 0, 0, PM_REMOVE) do  begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
  end;  
end;

procedure TNexSignAC.ServiceExecute(Sender: TService);
begin
  try SvcThread.Resume; except end;
  while not Terminated do begin
    ServiceThread.ProcessRequests(False);
    Sleep(5);
  end;
  try  SvcThread.Suspend; except end;
end;

procedure TNexSignAC.ServiceStart(Sender: TService;
  var Started: Boolean);
begin
  SvcThread := TSvcThread.Create;
  Started := True;
end;

procedure TNexSignAC.ServiceStop(Sender: TService;
  var Stopped: Boolean);
begin
  if SvcThread <> nil then 
    SvcThread.Resume;

  if SvcThread <> nil then  
    SvcThread.Terminate;

  if SvcThread <> nil then  
    SvcThread.WaitFor;
    
  Stopped := True;
end;

end.
