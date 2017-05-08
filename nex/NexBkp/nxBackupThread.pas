{****************************************************************************}
{                                                                            }
{ nxBackupThread.pas          Version 1.00                August, 16th 2003  }
{                                                                            }
{ Simple Thread allowing background backup of a NexusDB database             }
{                                                                            }
{ Created by Stefan Paege, elektronik-labor Carls GmbH & Co. KG, GERMANY     }
{                                                                            }
{ This code and all related rights are hereby released to the Public Domain  }
{                                                                            }
{ Feel free to adjust or add functionality. It would be nice if your code    }
{ would remain Public Domain.                                                }
{                                                                            }
{****************************************************************************}

unit nxBackupThread;

interface

uses
  // Delphi units
  Classes,
  SysUtils,
  // Nexus units
  nxdb,
  nxdbBase,
  nxllConst,
  nxllTypes,
  nxllComponent,
  nxllThread,
  nxsdServerEngine,
  nxdbBackupController;

type
  { Exception notification event }
  TnxNotifyBackupExceptionEvent = procedure(Sender: TObject; E: Exception) of object;

  { TnxBackupThread descends from TnxInitThread which is defined in nxllThread }
  TnxBackupThread = class(TnxInitThread)
  private
    { Exception handling }
    btBackupException      : Exception;
    btBackupExceptionEvent : TnxNotifyBackupExceptionEvent;

    { Database properties }
    btServerEngine         : TnxBaseServerEngine;
    btSourceAlias          : string;
    btTargetAlias          : string;

    { Necessary components to create the backup component chain }
    btBackupSession        : TnxSession;
    btSourceDatabase       : TnxDatabase;
    btTargetDatabase       : TnxDatabase;
    btBackupController     : TnxBackupController;
  protected
    procedure AnnounceException; virtual;                   { Called via nxSynchronize }

    procedure DoBeforeExecute; override;
    procedure DoAfterExecute; override;
    procedure InnerExecute; override;

    procedure DoHandleException(E: Exception); override;
  public
    constructor CreateBackupThread(aTerminateEvent       : TNotifyEvent;
                                   aBackupExceptionEvent : TnxNotifyBackupExceptionEvent;
                                   aServerEngine         : TnxBaseServerEngine;
                             const aSourceAlias          : string;
                             const aTargetAlias          : string); virtual;
  end;

implementation

{ The main thread is notified about Exceptions during the Backup process by
  this procedure. This procedure and the btBackupExceptionEvent are executed
  in the context of the main thread. See DoHandleException for more details. }
procedure TnxBackupThread.AnnounceException;
begin
  try
    btBackupExceptionEvent(Self, btBackupException);
  except
    { We are not interested in Exceptions generated in the btBackupExceptionEvent }
  end;
end;

{ Creation of the Backup thread. The call to this method should be covered by a
  try/except block. Exceptions during the execution of this constructor's code
  AND also exceptions in DoBeforeExecute are returned as a Exception generated
  within the CreateBackupThread constructor. }
constructor TnxBackupThread.CreateBackupThread(aTerminateEvent       : TNotifyEvent;
                                               aBackupExceptionEvent : TnxNotifyBackupExceptionEvent;
                                               aServerEngine         : TnxBaseServerEngine;
                                         const aSourceAlias          : string;
                                         const aTargetAlias          : string);
begin
  { Create the thread with a lower process priority, adjust to your needs }
  inherited Create(tpLower);

  { On termination automatically free resources occupied by the thread }
  FreeOnTerminate := True;

  { Report here when the thread execution is completed }
  OnTerminate := aTerminateEvent;

  { Report here any Exception occuring during Execute }
  btBackupExceptionEvent := aBackupExceptionEvent;

  { Store the parameters for later use in the DoBeforeExecute method }
  btServerEngine := aServerEngine;
  btSourceAlias := aSourceAlias;
  btTargetAlias := aTargetAlias;
end;

{ Finalization of all internal objects created in DoBeforeExecute }
procedure TnxBackupThread.DoAfterExecute;
begin
  nxFreeAndNil(btBackupController);
  nxFreeAndNil(btTargetDatabase);
  nxFreeAndNil(btSourceDatabase);
  nxFreeAndNil(btBackupSession);
end;

{ Creation of all necessary internal objects. Exceptions during this process are
  announced to the main thread at the point where CreateBackupThread is called }
procedure TnxBackupThread.DoBeforeExecute;
begin
  { Create the components in the context of the thread }
  btBackupSession := TnxSession.Create(nil);
  btSourceDatabase := TnxDatabase.Create(nil);
  btTargetDatabase := TnxDatabase.Create(nil);
  btBackupController := TnxBackupController.Create(nil);

  try
    { Setup and activation of the component chain }
    btBackupSession.ServerEngine := btServerEngine;
    btBackupSession.Active := True;

    btSourceDatabase.Session := btBackupSession;
    btSourceDatabase.AliasName := btSourceAlias;
    btSourceDatabase.Active := True;

    btTargetDatabase.Session := btBackupSession;
    btTargetDatabase.AliasName := btTargetAlias;
    btTargetDatabase.Active := True;

    btBackupController.OriginalDatabase := btSourceDatabase;
    btBackupController.CloneDatabase := btTargetDatabase;
    btBackupController.Active := True;
  except
    nxFreeAndNil(btBackupController);
    nxFreeAndNil(btTargetDatabase);
    nxFreeAndNil(btSourceDatabase);
    nxFreeAndNil(btBackupSession);
    { Raise that Exception again so that the main thread can be notified }
    raise;
  end;
end;

{ If a btBackupExceptionEvent is defined it is called in the context of the main
 thread. nxSynchronize is used to provide a threadsafe calling mechanism }
procedure TnxBackupThread.DoHandleException(E: Exception);
begin
  btBackupException := E;
  if Assigned(btBackupExceptionEvent) then
    nxSynchronize(AnnounceException);
  btBackupException := nil;
end;

{ The "real work" is done here }
procedure TnxBackupThread.InnerExecute;
begin
  { Start the backup process }
  btBackupController.Backup;
end;

end.

