// ***************************************************************
//  HookTerminateAPIs.dll     version:  1.0   �  date: 2003-06-15
//  -------------------------------------------------------------
//  hook (Nt)TerminateProcess and notify application about calls
//  -------------------------------------------------------------
//  Copyright (C) 1999 - 2003 www.madshi.net, All Rights Reserved
// ***************************************************************

// 2003-06-15 1.0  initial release

library guardshield;

{$IMAGEBASE $5a800000}

uses
  Windows,
  madCodeHook,
  madRemote,
  madStrings;

// ***************************************************************


type 
 PClientID = ^TClientID; 
 TClientID = packed record 
 UniqueProcess: DWORD; 
 UniqueThread:  DWORD; 
end; 

  PTHREAD_BASIC_INFORMATION = ^THREAD_BASIC_INFORMATION; 
  THREAD_BASIC_INFORMATION = packed record 
  ExitStatus:     DWORD; 
  TebBaseAddress: Pointer; 
  ClientId:       TClientID; 
  AffinityMask:   DWORD; 
  Priority:       DWORD; 
  BasePriority:   DWORD; 
 end; 

  NTSTATUS = ULONG; 


function NtQueryInformationThread(hThread: ULONG; 
                   ThreadInformationClass: ULONG; 
                        ThreadInformation: Pointer; 
                  ThreadInformationLength: ULONG; 
                             ReturnLength: PULONG): ULONG; stdcall; external 'ntdll.dll'; 


const 
  ProcessBasicInformation   = $00000000; 
  ThreadBasicInformation    = ProcessBasicInformation; 
  PROCESS_QUERY_INFORMATION = $00000400; 
  THREAD_QUERY_INFORMATION  = PROCESS_QUERY_INFORMATION shr 4; 


function THtoPID(const hThread: ULONG): ULONG; stdcall; 
var 
    Status: NTSTATUS; 
       tbi: THREAD_BASIC_INFORMATION; 
      hDup: ULONG; 
       ret: ULONG; 
begin 
   result := 0; 
    if not DuplicateHandle(DWORD(-1), 
                           hThread, 
                           DWORD(-1), 
                           @hDup, 
                           THREAD_QUERY_INFORMATION, 
                           False, 
                           0) then exit; 
    ZeroMemory(@tbi, sizeof(tbi)); 
    Status := NtQueryInformationThread(hDup, 
                                      ThreadBasicInformation, 
                                      @tbi, 
                                      sizeof(tbi), 
                                      @ret); 
    CloseHandle(hDup); 
     if (status = 0) and (ret = sizeof(tbi)) then 
       result := tbi.ClientId.UniqueProcess; 
end;   

function StrPos(const Str1, Str2: PChar): PChar; assembler;
asm
        PUSH    EDI
        PUSH    ESI
        PUSH    EBX
        OR      EAX,EAX
        JE      @@2
        OR      EDX,EDX
        JE      @@2
        MOV     EBX,EAX
        MOV     EDI,EDX
        XOR     AL,AL
        MOV     ECX,0FFFFFFFFH
        REPNE   SCASB
        NOT     ECX
        DEC     ECX
        JE      @@2
        MOV     ESI,ECX
        MOV     EDI,EBX
        MOV     ECX,0FFFFFFFFH
        REPNE   SCASB
        NOT     ECX
        SUB     ECX,ESI
        JBE     @@2
        MOV     EDI,EBX
        LEA     EBX,[ESI-1]
@@1:    MOV     ESI,EDX
        LODSB
        REPNE   SCASB
        JNE     @@2
        MOV     EAX,ECX
        PUSH    EDI
        MOV     ECX,EBX
        REPE    CMPSB
        POP     EDI
        MOV     ECX,EAX
        JNE     @@1
        LEA     EAX,[EDI-1]
        JMP     @@3
@@2:    XOR     EAX,EAX
@@3:    POP     EBX
        POP     ESI
        POP     EDI
end;

function StrUpper(Str: PChar): PChar; assembler;
asm
        PUSH    ESI
        MOV     ESI,Str
        MOV     EDX,Str
@@1:    LODSB
        OR      AL,AL
        JE      @@2
        CMP     AL,'a'
        JB      @@1
        CMP     AL,'z'
        JA      @@1
        SUB     AL,20H
        MOV     [ESI-1],AL
        JMP     @@1
@@2:    XCHG    EAX,EDX
        POP     ESI
end;
  
function IsAllowed(processHandle: dword) : boolean;
var arrCh : array [0..MAX_PATH] of char;
begin
  if (processHandle <> 0) and (processHandle <> GetCurrentProcess) then begin
    Result := False;
    ProcessIdToFileName(ProcessHandleToId(processHandle), arrCh);
    Result := (LStrCmpI(arrCh, pchar('NEXGUARD.EXE'))<>0) and
              (LStrCmpI(arrCh, pchar('GUARDIS.EXE'))<>0); 
  end else  
    // our process may terminate itself
    // this happens during normal closing, so we have to allow it
    result := true;
end;


function IsThreadAllowed(thHandle: dword) : boolean;
var 
  arrCh : array [0..MAX_PATH] of char;
  Pid : DWORD;
begin
  Result := True;
  if (thHandle <> 0) then begin
    pid := ThtoPid(thHandle);
    if (pid<>0) and (pid <> GetCurrentProcessID) then begin
      ProcessIdToFileName(pid, arrCh);
      Result := (LStrCmpI(arrCh, pchar('NEXGUARD.EXE'))<>0);
    end;
  end;
end;


// ***************************************************************

var TerminateProcessNext   : function (processHandle, exitCode: dword) : bool;  stdcall;
    NtTerminateProcessNext : function (processHandle, exitCode: dword) : dword; stdcall;
    NtTerminateThreadNext  : function (threadHandle, exitCode: dword) : dword; stdcall;
    NTSuspendProcessNext   : function (pHandle: dword): dword; stdcall;
    NTSuspendThreadNext    : function (ThreadHandle : dword; PreviousSuspendCount : PULONG): dword; stdcall;
    
function TerminateProcessCallback(processHandle, exitCode: dword) : bool; stdcall;
begin
  if not IsAllowed(processHandle) then begin
    // the user doesn't like this TerminateProcess call, so we block it
    result := false;
    SetLastError(ERROR_ACCESS_DENIED);
  end else 
    // the user gave his okay
    result := TerminateProcessNext(processHandle, exitCode); 
end;

function NTTerminateThreadCallback(threadHandle, exitCode: dword) : DWORD; stdcall;
const STATUS_ACCESS_DENIED = $C0000022;
begin
//  if not IsThreadAllowed(threadHandle) then 
    result := STATUS_ACCESS_DENIED;
{  else 
    // the user gave his okay
    result := NTTerminateThreadNext(threadHandle, exitCode); }
end;

function NTSuspendThreadCallback(threadHandle: dword; PreviousSuspendCount : PULONG) : DWORD; stdcall;
const STATUS_ACCESS_DENIED = $C0000022;
begin
//  if not IsThreadAllowed(threadHandle) then 
    result := STATUS_ACCESS_DENIED; 
{  else 
    // the user gave his okay
    result := NTTerminateThreadNext(threadHandle, exitCode); }
end;

function NtTerminateProcessCallback(processHandle, exitCode: dword) : dword; stdcall;
const STATUS_ACCESS_DENIED = $C0000022;
begin
  if not IsAllowed(processHandle) then
       result := STATUS_ACCESS_DENIED 
  else result := NtTerminateProcessNext(processHandle, exitCode);
end;

function NtSuspendProcessCallback(pHandle: dword) : dword; stdcall;
const STATUS_ACCESS_DENIED = $C0000022;
begin
  if not IsAllowed(pHandle) then
       result := STATUS_ACCESS_DENIED
  else result := NtSuspendProcessNext(pHandle);
end;

{unction NTSuspendThreadCallback(hThread: THandle): dword; stdcall;
const STATUS_ACCESS_DENIED = $C0000022;
begin
  if not IsThreadAllowed(hThread) then
       result := STATUS_ACCESS_DENIED
  else result := SuspendThreadNext(hThread); 
end;                                        }


Procedure EntryPoint(Reason: integer);
var buf: array[0..MAX_PATH] of char;
 begin
  case Reason of
    DLL_PROCESS_DETACH:
    begin
   // DLL is unloaded and you can get notified here
    end;
    DLL_PROCESS_ATTACH:
    begin
      GetModuleFileName(0, @buf, sizeof(buf));
      if (PosPChar(pchar('explorer.exe'), buf, 0, 0, True)>0) or
         (PosPchar(pchar('photoshop.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('fifa09.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('farcry2.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('fc2launcher.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('ragnarok.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('age3.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('rundll32.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('bf2.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('hl.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('sims2.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('ts2bodyshop.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('packageinstaller.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('deadislandgame.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('matonline.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('matlauncher.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('mat.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('undiffer.exe'), buf, 0, 0, True)>0) or
         
         
         (posPchar(pchar('rf.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('rdm.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('rfaviplayer.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('sendlog.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('fggm.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('hsupdate.exe'), buf, 0, 0, True)>0) or

         (posPchar(pchar('chrome.exe'), buf, 0, 0, True)>0) or

         (posPchar(pchar('hdeck.exe'), buf, 0, 0, True)>0) or

         (posPchar(pchar('nexguard.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('rthdcpl.exe'), buf, 0, 0, True)>0) or

         (posPchar(pchar('iw3mp.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('iw3sp.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('pnkbstrb.exe'), buf, 0, 0, True)>0) or

         (posPchar(pchar('airgcfg.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('aniwconnservice.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('lms.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('mscorsvw.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('seaport.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('uns.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('services.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('wzcsldr2.exe'), buf, 0, 0, True)>0) or

         (posPchar(pchar('svchost.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('wininit.exe'), buf, 0, 0, True)>0) or

         (posPchar(pchar('conquer.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('play.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('timedelay.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('ctfmon.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('frzstate2k.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('df5serv.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('grandchase.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('main.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('gamemon.des'), buf, 0, 0, True)>0) or

         (posPchar(pchar('tb85rtm.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('tb85run.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('tb85net.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('tbload.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('tb85main.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('wowexec'), buf, 0, 0, True)>0) or
         
         (posPchar(pchar('cstrike.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('frzstate.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('dfservex.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('avatar.exe'), buf, 0, 0, True)>0) or   
         (posPchar(pchar('combatarms.exe'), buf, 0, 0, True)>0) or               
         (posPchar(pchar('age3x.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('age3y.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('steam.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('starter.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('left4dead.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('bf1942.exe'), buf, 0, 0, True)>0) or
         (posPchar(pchar('gta4launcher.exe'), buf, 0, 0, True)>0) or
         (PosPChar(pchar('msnmsgr.exe'), buf, 0, 0, True)>0) or
         (PosPChar(pchar('theduel.exe'), buf, 0, 0, True)>0) or
         (PosPChar(pchar('elementclient.exe'), buf, 0, 0, True)>0) or
         (PosPChar(pchar('gunzlauncher.exe'), buf, 0, 0, True)>0) or
         (PosPChar(pchar('patcher.exe'), buf, 0, 0, True)>0) or
         (PosPChar(pchar('bareport.exe'), buf, 0, 0, True)>0) or
         (PosPChar(pchar('creportbugs.exe'), buf, 0, 0, True)>0) or
         (PosPChar(pchar('pwprotector.exe'), buf, 0, 0, True)>0) or
         (PosPChar(pchar('xtrap'), buf, 0, 0, True)>0) or
         (PosPChar(pchar('launcher.exe'), buf, 0, 0, True)>0) or
         (PosPChar(pchar('skype.exe'), buf, 0, 0, True)>0) or
         (PosPChar(pchar('winlogon.exe'), buf, 0, 0, True)>0)
      then
        ExitCode :=-1
      else begin 
        CollectHooks;     
        if GetVersion and $80000000 = 0 then begin
          HookAPI('ntdll.dll', 'NtTerminateProcess', @NtTerminateProcessCallback, @NtTerminateProcessNext);
          HookAPI('ntdll.dll', 'NtSuspendProcess', @NTSuspendProcessCallback, @NTSuspendProcessNext);
{          HookAPI('ntdll.dll', 'NtTerminateThread', @NTTerminateThreadCallback, @NTTerminateThreadNext);
          HookAPI('ntdll.dll', 'NtSuspendThread', @NTSuspendThreadCallback, @NTSuspendThreadNext);}
        end else
          HookAPI('kernel32.dll',   'TerminateProcess',   @TerminateProcessCallback,   @TerminateProcessNext);
        FlushHooks;
      end;
    end;
   
    DLL_THREAD_ATTACH: ;
    DLL_THREAD_DETACH: ;
  end;
end;
 
begin
  DisableThreadLibraryCalls(hInstance);
  DLLProc :=@EntryPoint;
  EntryPoint(DLL_PROCESS_ATTACH); 
  // collecting hooks can improve the hook installation performance in win9x
end.
