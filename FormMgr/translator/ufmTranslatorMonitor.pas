unit ufmTranslatorMonitor;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  DB,
  nxdb,
  nxsdServerEngine,
  nxsrServerEngine,
  nxllComponent,
  nxlltypes,
  nxllBDE,
  nxsdSimpleMonitor,
  nxsdTypes,
  nxsdDataDictionary;


type
  TDefTextModifiedEvent = procedure (Sender:TObject; aMd5Trad_old, aMd5Trad_new:string ) of Object;
  TDefTextNewEvent      = procedure (Sender:TObject; aMd5Text, aMd5Path, aMd5DefLang:string; aText:string ) of Object;
  TDefTextDeleteEvent   = procedure (Sender:TObject; aMd5Text, aMd5Path:string ) of Object;
  TConstNewEvent        = procedure (Sender:TObject; aMd5Path, aUnit, aVersion, aConstName, aOriginalLang, aTradText:string ) of Object;
  TConstDeleteEvent     = procedure (Sender:TObject; aMd5Path:string ) of Object;
  TErrorMessageEvent    = procedure (Sender:TObject; msg:string ) of Object;

  TnxExtenderTranslatorMonitor = class(TnxBaseEngineExtender)
  private
    FOnDefTextModified : TDefTextModifiedEvent;
    FOnDefTextNew    : TDefTextNewEvent;
    FOnDefTextDelete : TDefTextDeleteEvent;
    FOnConstNew      : TConstNewEvent;
    FOnConstDelete   : TConstDeleteEvent;
    FOnError         : TErrorMessageEvent;
    FProgramLangCode:string;
  public
    // this method is called whenever the action aAction is performed on the
    // object the extender is attached to. it is called BEFORE (aBefore=true)
    // *and/or* AFTER (aBefore=false) the default action is executed.
    // If you want to avoid the default action use the abort command in
    // the BEFORE call. aArgs is a predefined array of parameters for this
    // action. please look at TnxEngineAction in nxsdServerEngine.pas for the
    // defintion and at the event handlers in nxsdSimpleMonitor.pas for the
    // correct mapping to pascal types.
    // this is the place for the actual implementation of a extended functionality
    function Notify(aAction : TnxEngineAction; aBefore : Boolean;
              const aArgs : array of const) : TnxResult; override;
    constructor Create( aMonitor: TnxBaseEngineMonitor;
                        aExtendableObject: TnxExtendableServerObject;
                        aProgramLangCode:string;
                        aOnDefTextModified : TDefTextModifiedEvent;
                        aOnDefTextNew : TDefTextNewEvent;
                        aOnDefTextDelete : TDefTextDeleteEvent;
                        aOnConstNew      : TConstNewEvent;
                        aOnConstDelete   : TConstDeleteEvent;
                        aOnError : TErrorMessageEvent );
    destructor  Destroy; override;
  end;

  TnxTranslatorMonitor = class(TnxBaseEngineMonitor)
  private
    FOnDefTextModified : TDefTextModifiedEvent;
    FOnDefTextNew      : TDefTextNewEvent;
    FOnDefTextDelete   : TDefTextDeleteEvent;
    FOnConstNew        : TConstNewEvent;
    FOnConstDelete     : TConstDeleteEvent;
    FOnError           : TErrorMessageEvent;
    FProgramLangCode:string;
  public
    // once a monitor is attached to a serverengine and set to active,
    // this method is called for each object (dependend of the same serverengine)
    // created. This is the point where we have to create an extender for this
    // object.
    property  ProgramLangCode:string write FProgramLangCode;
    property  OnDefTextModified    :TDefTextModifiedEvent    read FOnDefTextModified    write FOnDefTextModified;
    property  OnDefTextNew         :TDefTextNewEvent         read FOnDefTextNew         write FOnDefTextNew;
    property  OnDefTextDelete      :TDefTextDeleteEvent      read FOnDefTextDelete      write FOnDefTextDelete;
    property  OnConstNew           :TConstNewEvent           read FOnConstNew         write FOnConstNew;
    property  OnConstDelete        :TConstDeleteEvent        read FOnConstDelete      write FOnConstDelete;
    property  OnError              :TErrorMessageEvent       read FOnError              write FOnError;
    procedure ExtendableObjectCreated(aExtendableObject: TnxExtendableServerObject); override;
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
  end;

implementation

uses
  nxsdNativeVariantConverter, nxllStreams, nxllWideString, uMD5,
  nxseHeapEngineCached;

{ TnxExtenderTranslatorMonitor }

// Result of MEMCMP is:  0=equal; negative = VAR1 is less; positive = VAR1 is greater.
{$IFDEF WIN32}

function  MemCmp(const var1, var2; length: integer): integer; register;
asm
   {
     EAX -> first block
     EDX -> second block
     ECX -> length
     DF is guaranteed to be zero on entry, and must be zero on return.
   }
   PUSH  EDI                       { 32-BIT:  save what we must }
   PUSH  ESI

   MOV   ESI,EAX                   { set up for CMPSx:  ESI = first block  ("source")      }
   MOV   EDI,EDX                   {                ... EDI = second block ("destination") }

   XOR   EAX,EAX                   { anticipate zero-result }

   OR    ECX,ECX                   { zero length? }
   JZ    @@Leave                   { yes, no-brainer, result is zero (equal) }
   JNS   @@Forward                 { if value is positive, get started right away }

   NOT    ECX                      { negative:  start to make it a positive value }
   ADD    ESI,ECX                  { .. right now it's (posvalue - 1), so use that to adjust ESI }
   ADD    EDI,ECX                  { do the same thing to the other    pointer, }
   INC    ECX                      { .. then finish making the value positive, thusly }
   STD                             { set DF=1 tell CMPSB to run backwards }
   REPE   CMPSB                    { do the backward compare }
   JE     @@Leave
   MOVZX  EAX, BYTE PTR[ESI+1]     { for backward-scan, the unequal bytes are in front of us, not behind! }
   MOVZX  EDX, BYTE PTR[EDI+1]
   SUB    EAX,EDX                  { obtain result }
   JMP    @@Leave                  { and leave through the usual door }

@@Forward:
   REPE  CMPSB                     { compare bytes now, either forward or backward }
   JE    @@Leave                   { they are all equal, return zero }
   MOVZX EAX, BYTE PTR[ESI-1]      { unequal: retrieve last bytes tested, extend to 32-bits }
   MOVZX EDX, BYTE PTR[EDI-1]
   SUB   EAX,EDX                   { subtract them to obtain the result (a 32-bit 'integer') }

@@Leave:
   CLD                             { in 32-bit mode, we are obligated to return with DF=0 }
   POP   ESI
   POP   EDI                       { restore the registers }


{$ELSE}

function  MemCmp(const var1, var2; length: integer): integer; assembler;
asm
   {
     The 16-bit version compares only within a single memory segment.
     It is not smart enough to recognize and compensate for segment
boundary
     crossings, but in our application it never has to!
   }
   PUSH  DS                        { 16-BIT:  save what we must }
   CLD                             { 16-bit mode doesn't promise, doesn't care about DF, so we have to }

   LDS   SI,var1
   LES   DI,var2                   { point to variables... set up for CMPSx }

   XOR   AX,AX                     { anticipate zero-result }
   XOR   DX,DX                     { while we're at it, set up for subtraction later }

   MOV   CX,Length
   OR    CX,CX                     { zero length? }
   JE    @@Leave                   { yes, no-brainer, go exit with AX=0 }

   JNS   @@Forward                 { if value is positive, get started  right away }

   NOT    CX                       { negative: start to make it a positive value }
   ADD    SI,CX                    { .. right now it's (posvalue - 1), so use that to adjust SI }
   ADD    DI,CX                    { also DI }
   INC    CX                       { .. then finish making the value  positive, thusly }
   STD                             { set DF=1 tell CMPSB to run backwards }
   REPE   CMPSB
   JE     @@Leave
   MOV    AL,DS:[SI+1]             { must pick up the correct  unequal-bytes! }
   MOV    DL,ES:[DI+1]
   SUB    AX,DX
   JMP    @@Leave

@@Forward:
   REPE  CMPSB                     { compare bytes }
   JE    @@Leave                   { all equal, leave now }
   MOV   AL,DS:[SI-1]              { calculate result as before (a 16-bit 'integer') }
   MOV   DL,ES:[DI-1]
   SUB   AX,DX                     { subtract those out }

@@Leave:
   CLD                             { Win16 doesn't care about DF's final setting, but hey ... }
   POP   DS                        { restore registers }
{$ENDIF}
end; {MemCmp}


constructor TnxExtenderTranslatorMonitor.Create( aMonitor: TnxBaseEngineMonitor;
                                           aExtendableObject: TnxExtendableServerObject;
                                           aProgramLangCode:string;
                                           aOnDefTextModified : TDefTextModifiedEvent;
                                           aOnDefTextNew: TDefTextNewEvent;
                                           aOnDefTextDelete : TDefTextDeleteEvent;
                                           aOnConstNew      : TConstNewEvent;
                                           aOnConstDelete   : TConstDeleteEvent;
                                           aOnError : TErrorMessageEvent );
begin
     FProgramLangCode   := aProgramLangCode;
     FOnDefTextModified := aOnDefTextModified;
     FOnDefTextNew      := aOnDefTextNew;
     FOnDefTextDelete   := aOnDefTextDelete;
     FOnConstNew        := aOnConstNew;
     FOnConstDelete     := aOnConstDelete;
     FOnError           := aOnError;
     inherited Create( aMonitor, aExtendableObject);
end;

destructor  TnxExtenderTranslatorMonitor.destroy;
begin
     inherited;
end;



function TnxExtenderTranslatorMonitor.Notify(aAction: TnxEngineAction; aBefore: Boolean;
  const aArgs: array of const): TnxResult;
var
  RecordBuffer1: PnxByteArray;
  Cursor: TnxAbstractCursor;
  TableName : string;
  md5DefLang, md5Trad_old, md5Path_old, md5Trad_new, md5Path_new: string;
  path, tradText, ltradText, sUnit, sVersion, sConstName, sOriginalLang : string;
  PWCtradText: PWideChar;

  fieldIdxUnit        : integer;
  fieldIdxVersion     : integer;
  fieldIdxConstName   : integer;

  fieldIdxPath          : integer;
  fieldIdxTradText      : integer;
  fieldIdxMd5DefLang    : integer;
  fieldIdxMd5CompPath   : integer;
  fieldIdxMd5Trad       : integer;
  fieldIdxOriginalLang  : integer;
  defTable : boolean;
  sAction  : string;
  
  function GetBoolean(aCursor: TnxAbstractCursor; afieldIdx : integer; aRecordBuffer: PnxByteArray):boolean;
  var
      Len: LongWord;
      FielfBuffer: PnxByteArray;
      isnull : boolean;
  begin
       result := false;
       Len := aCursor.TableDescriptor.FieldsDescriptor.FieldDescriptor[afieldIdx].fdLength;
       GetMem(FielfBuffer, Len);
       try
           aCursor.TableDescriptor.FieldsDescriptor.GetRecordField(
               afieldIdx, aRecordBuffer, isnull, FielfBuffer);
           if not isnull then
               result := VariantFromNative(nxtBoolean, 0, 0, 0, FielfBuffer, Len);
       finally
           FreeMem(FielfBuffer);
       end;
  end;

  function GetInteger(aCursor: TnxAbstractCursor; afieldIdx : integer; aRecordBuffer: PnxByteArray):integer;
  var
      Len: LongWord;
      FielfBuffer: PnxByteArray;
      isnull : boolean;
  begin
       result := 0;
       Len := aCursor.TableDescriptor.FieldsDescriptor.FieldDescriptor[afieldIdx].fdLength;
       GetMem(FielfBuffer, Len);
       try
           aCursor.TableDescriptor.FieldsDescriptor.GetRecordField(
               afieldIdx, aRecordBuffer, isnull, FielfBuffer);
           if not isnull then
               result := VariantFromNative(nxtInt32, 0, 0, 0, FielfBuffer, Len);
       finally
           FreeMem(FielfBuffer);
       end;
  end;

  function getShortString(aCursor: TnxAbstractCursor; afieldIdx : integer; aRecordBuffer: PnxByteArray):string;
  var
      Len: LongWord;
      FielfBuffer: PnxByteArray;
      isnull : boolean;
      s : string[255];
  begin
       result := '';
       Len := aCursor.TableDescriptor.FieldsDescriptor.FieldDescriptor[afieldIdx].fdLength;
       GetMem(FielfBuffer, Len);
       try
           aCursor.TableDescriptor.FieldsDescriptor.GetRecordField(
               afieldIdx, aRecordBuffer, isnull, FielfBuffer);
           if not isnull then begin
               s := VariantFromNative(nxtShortString, 0, 0, 0, FielfBuffer, Len);
               result := s;
           end;
       finally
           FreeMem(FielfBuffer);
       end;
  end;

  function getBlobMemoAsString(aCursor: TnxAbstractCursor; afieldIdx : integer; aRecordBuffer: PnxByteArray):String;
  var
      fdOffset: integer;
      len : cardinal;
      FieldBuffer: PnxByteArray;
      isnull : boolean;
      ss : TStringStream;
      s : string;
  begin
       result := '';
       fdOffset := aCursor.TableDescriptor.FieldsDescriptor.FieldDescriptor[afieldIdx].fdOffset;
       Len := 8000;

       try
           aCursor.BlobGetLength(afieldIdx, PnxInt64(@aRecordBuffer[fdOffset])^, Len, false);
           if Len>0 then begin
               ss := TStringStream.create(s);
               GetMem(FieldBuffer, Len);
               try
                   aCursor.TableDescriptor.FieldsDescriptor.GetRecordField(
                       afieldIdx, aRecordBuffer, isnull, FieldBuffer);
                   if not isnull then begin
                       aCursor.BlobRead(afieldIdx, PnxInt64(@aRecordBuffer[fdOffset])^, 0, Len, ss, false);
                       ss.seek(0,0);
                       result := ss.DataString;
                   end;
               finally
                   FreeMem(FieldBuffer);
                   ss.free;
               end;
           end;
       except
           on e:exception do begin
               if not (e is EnxCachedHeapEngineException)  then
                   raise;
           end;
       end;
  end;

  function ifBlobMemoModified(aCursor: TnxAbstractCursor; afieldIdx : integer; aRecordBuffer: PnxByteArray):boolean;
  var
      RefNr : PnxInt64;
      Error : TnxResult;
      Len   : TnxWord32;
  begin
      result := false;
      RefNr := Cursor.TableDescriptor.FieldsDescriptor.GetRecordFieldForFilter(afieldIdx, aRecordBuffer);
      if Assigned(RefNr) then begin
          Error := Cursor.BlobGetLength(afieldIdx, RefNr^, Len, False);
          if Error = DBIERR_NONE then
             Cursor.BlobModified(afieldIdx, RefNr^, result);
      end;
  end;

  function IsNull(aCursor: TnxAbstractCursor; afieldIdx : integer; aRecordBuffer: PnxByteArray):boolean;
  var
      Len: LongWord;
      FieldBuffer: PnxByteArray;
  begin
       Len := aCursor.TableDescriptor.FieldsDescriptor.FieldDescriptor[afieldIdx].fdLength;
       GetMem(FieldBuffer, Len);
       try
           aCursor.TableDescriptor.FieldsDescriptor.GetRecordField(
               afieldIdx, aRecordBuffer, result, FieldBuffer);
       finally
           FreeMem(FieldBuffer);
       end;
  end;

  procedure SetStringField(aCursor: TnxAbstractCursor; afieldIdx : integer; aRecordBuffer: PnxByteArray; newvalue:String);
  var
      Len: LongWord;
      FieldBuffer: PnxByteArray;
      isnull : boolean;
  begin

       Len := aCursor.TableDescriptor.FieldsDescriptor.FieldDescriptor[afieldIdx].fdLength;
       GetMem(FieldBuffer, Len);
       try
           aCursor.TableDescriptor.FieldsDescriptor.GetRecordField(
               afieldIdx, aRecordBuffer, isnull, FieldBuffer);
           newvalue := char(length(newvalue))+newvalue;
           strLCopy( Pchar(FieldBuffer), Pchar(newvalue), length(newvalue));
           aCursor.TableDescriptor.FieldsDescriptor.SetRecordField (afieldIdx, aRecordBuffer, FieldBuffer);
       finally
           FreeMem(FieldBuffer);
       end;
  end;

begin

    Result := DBIERR_NONE;
    if not(aAction in [eaRecordInsert, eaRecordModify, eaRecordDelete]) then exit;
    try
        // eaRecordInsert ArgCount: 3
        //    Before | After |
        //        LockType : TnxLockType
        //        Data : PnxByteArray
        //        RefNr : TnxInt64 -> only valid after & server side
        // eaRecordModify ArgCount: 4
        //    Before | After |
        //        NewData : PnxByteArray
        //        OldData : PnxByteArray -> nil@Before
        //        ReleaseLock : Boolean
        //        RefNr : TnxInt64 -> only valid server side
        // eaRecordDelete   ArgCount: 2
        //    Before | After |
        //        OldData : PnxByteArray
        //        RefNr : TnxInt64 -> only valid before & server side




        Cursor := TnxAbstractCursor(beeExtendableObject);
        if (TnxServerTableCursor(Cursor).Table=nil) then exit;

        TableName := TnxServerTableCursor(Cursor).Table.Name;

        if SameText(copy(TableName, 1, 7), 'trnslt_') then begin

            if SameText(TableName, 'trnslt_error') or
               SameText(TableName, 'trnslt_languages') or
               SameText(TableName, 'trnslt_classes') then
               exit;

            // -----------------------------------------------------------------

            if SameText(TableName, 'trnslt_path') then begin
                if abefore then begin
                     if (aAction in [eaRecordInsert, eaRecordModify]) then begin
                         RecordBuffer1 := PnxByteArray(aArgs[0].VString);
                         if (aAction in [eaRecordInsert]) then begin
                             sAction := 'eaRecordInsert';
                             RecordBuffer1 := PnxByteArray(aArgs[1].VString);
                         end;
                         if (aAction in [eaRecordModify]) then
                             sAction := 'eaRecordModify';
                         with Cursor.TableDescriptor.FieldsDescriptor do begin
                             fieldIdxPath := GetFieldFromName('path');
                             fieldIdxMd5CompPath := GetFieldFromName('md5CompPath');
                             fieldIdxMd5DefLang  := GetFieldFromName('md5DefLang');
                             fieldIdxTradText    := GetFieldFromName('defaultText');
                             path := getShortString(Cursor, fieldIdxPath, RecordBuffer1);
                             if path <> '' then begin
                                 md5Path_new := uMD5.H(lowercase(path));
                                 SetStringField(Cursor, fieldIdxMd5CompPath, RecordBuffer1, md5Path_new);
                                 if (aAction in [eaRecordInsert]) or
                                    ((aAction in [eaRecordModify]) and ifBlobMemoModified(Cursor, fieldIdxTradText, RecordBuffer1)) then begin
                                     tradText    :=  getBlobMemoAsString(Cursor, fieldIdxTradText, RecordBuffer1) ;
                                     ltradText := ansilowercase( tradText );
                                     md5Trad_new := uMD5.HBuffer2( @ltradText[1], Length(ltradText) );
                                     SetStringField(Cursor, fieldIdxMd5DefLang, RecordBuffer1, md5Trad_new)
                                 end;
                             end;
                         end;
                     end;
                end;

            end else

            // -----------------------------------------------------------------

            if SameText(TableName, 'trnslt_notranslator') then begin
                if abefore then begin
                     if (aAction in [eaRecordInsert, eaRecordModify]) then begin
                         RecordBuffer1 := PnxByteArray(aArgs[0].VString);
                         if (aAction in [eaRecordInsert]) then begin
                             sAction := 'eaRecordInsert';
                             RecordBuffer1 := PnxByteArray(aArgs[1].VString);
                         end;
                         if (aAction in [eaRecordModify]) then
                             sAction := 'eaRecordModify';
                         with Cursor.TableDescriptor.FieldsDescriptor do begin
                             fieldIdxPath := GetFieldFromName('path');
                             fieldIdxMd5CompPath := GetFieldFromName('md5CompPath');
                             path := getShortString(Cursor, fieldIdxPath, RecordBuffer1);
                             if path <> '' then begin
                                 md5Path_new := uMD5.H(lowercase(path));
                                 SetStringField(Cursor, fieldIdxMd5CompPath, RecordBuffer1, md5Path_new);
                             end;
                         end;
                     end;
                end;


            end else

            // -----------------------------------------------------------------

            if SameText(copy(TableName,1,9), 'trnslt_C_') then begin

                // before
                if abefore then begin
                     if (aAction in [eaRecordInsert]) then begin
                         sAction := 'eaRecordInsert';
                         RecordBuffer1 := PnxByteArray(aArgs[1].VString);

                         with Cursor.TableDescriptor.FieldsDescriptor do begin
                             fieldIdxUnit       := GetFieldFromName('Unit');
                             fieldIdxVersion    := GetFieldFromName('UVersion');
                             fieldIdxConstName  := GetFieldFromName('ConstName');
                             fieldIdxPath       := GetFieldFromName('md5ConstPath');
                             fieldIdxOriginalLang       := GetFieldFromName('originalLang');
                             fieldIdxTradText    := GetFieldFromName('tradText');

                             sUnit       :=  getShortString(Cursor, fieldIdxUnit, RecordBuffer1) ;
                             sVersion    :=  getShortString(Cursor, fieldIdxVersion, RecordBuffer1) ;
                             sConstName  :=  getShortString(Cursor, fieldIdxConstName, RecordBuffer1) ;
                             sOriginalLang  :=  getShortString(Cursor, fieldIdxOriginalLang, RecordBuffer1) ;
                             md5Path_new :=  uMD5.h(sUnit+sVersion+sConstName);
                             SetStringField(Cursor, fieldIdxPath, RecordBuffer1, md5Path_new);
                             tradText    :=  getBlobMemoAsString(Cursor, fieldIdxTradText, RecordBuffer1) ;

                             if SameText( copy(TableName,10,5), sOriginalLang) then begin
                                  if assigned(FOnConstNew)  then begin
                                      PWCtradText :=  @tradText[1];
                                      tradText := WideCharToString(PWideChar(PWCtradText));
                                      FOnConstNew(Self, md5Path_new, sUnit, sVersion, sConstName, sOriginalLang, tradText);
                                  end;
                             end;
                         end;

                     end;

                     if (aAction in [eaRecordModify]) then begin
                         sAction := 'eaRecordModify';
                         RecordBuffer1 := PnxByteArray(aArgs[0].VString);

                         with Cursor.TableDescriptor.FieldsDescriptor do begin
                             fieldIdxUnit       := GetFieldFromName('Unit');
                             fieldIdxVersion    := GetFieldFromName('UVersion');
                             fieldIdxConstName  := GetFieldFromName('ConstName');
                             fieldIdxPath       := GetFieldFromName('md5ConstPath');

                             sUnit       :=  getShortString(Cursor, fieldIdxUnit, RecordBuffer1) ;
                             sVersion    :=  getShortString(Cursor, fieldIdxVersion, RecordBuffer1) ;
                             sConstName  :=  getShortString(Cursor, fieldIdxConstName, RecordBuffer1) ;
                             md5Path_new :=  uMD5.h(sUnit+sVersion+sConstName);
                             SetStringField(Cursor, fieldIdxPath, RecordBuffer1, md5Path_new);
                         end;

                     end;

                     if (aAction in [eaRecordDelete]) then begin
                         sAction := 'eaRecordDelete';
                         RecordBuffer1 := PnxByteArray(aArgs[0].VString);

                         with Cursor.TableDescriptor.FieldsDescriptor do begin
                             fieldIdxPath := GetFieldFromName('md5ConstPath');
                             fieldIdxOriginalLang       := GetFieldFromName('originalLang');

                             md5Path_old :=  getShortString(Cursor, fieldIdxPath, RecordBuffer1);
                             sOriginalLang  :=  getShortString(Cursor, fieldIdxOriginalLang, RecordBuffer1) ;

                             if SameText( copy(TableName,10,5), sOriginalLang) then begin
                             // if defTable then begin
                                  if assigned(FOnConstNew) then begin
                                      FOnConstDelete(Self, md5Path_old);
                                  end;
                             end;
                             //   raise exception.Create('Não é possível apagar esta constanste pois ela existe no idioma padrão.');
                         end;
                     end;
                end;

            end else

            // -----------------------------------------------------------------

            if SameText(copy(TableName,1,7), 'trnslt_') then begin

                defTable := SameText( FProgramLangCode, copy(TableName, 8, maxint));

                // before
                if abefore then begin
                     if (aAction in [eaRecordInsert]) then begin
                         sAction := 'eaRecordInsert';
                         RecordBuffer1 := PnxByteArray(aArgs[1].VString);

                         fieldIdxPath := -1;
                         fieldIdxMd5Trad := -1;
                         with Cursor.TableDescriptor.FieldsDescriptor do begin
                             fieldIdxTradText   := GetFieldFromName('tradText');
                             fieldIdxMd5DefLang := GetFieldFromName('md5DefLang');
                             fieldIdxMd5CompPath := GetFieldFromName('md5CompPath');
                             if defTable then begin
                                 fieldIdxPath := GetFieldFromName('path');
                             end else begin
                                 fieldIdxMd5Trad := GetFieldFromName('md5Trad');
                             end;

                             tradText    :=  getBlobMemoAsString(Cursor, fieldIdxTradText, RecordBuffer1) ;
                             PWCtradText :=  @tradText[1];
                             ltradText := ansilowercase( tradText );
                             md5Trad_new := uMD5.HBuffer2( @ltradText[1], Length(ltradText) );

                             md5Path_new := '';
                             if defTable then begin
                                 path := getShortString(Cursor, fieldIdxPath, RecordBuffer1);
                                 if path <> '' then begin
                                     md5Path_new := uMD5.H(path);
                                     SetStringField(Cursor, fieldIdxMd5CompPath, RecordBuffer1, md5Path_new);
                                 end;
                             end else
                                 md5Path_new := getShortString(Cursor, fieldIdxMd5CompPath, RecordBuffer1);
                                 
                             if (tradText<>'') then begin
                                  if (md5Path_new='') then begin
                                      //dario inverti o de baixo
                                      if defTable then
                                          SetStringField(Cursor, fieldIdxMd5Trad, RecordBuffer1, md5Trad_new)
                                      else
                                          SetStringField(Cursor, fieldIdxMd5DefLang, RecordBuffer1, md5Trad_new);
                                  end else
                                      if defTable then
                                          md5DefLang := uMD5.HBuffer2( @ltradText[1], Length(ltradText) );
                                          //md5DefLang := getShortString(Cursor, fieldIdxMd5DefLang, RecordBuffer1);
                             end;
                             if defTable then begin
                                  if assigned(fOnDefTextNew) then begin
                                      tradText := WideCharToString(PWideChar(PWCtradText));
                                      fOnDefTextNew(Self, md5Trad_new, md5Path_new, md5DefLang, tradText);
                                  end;
                             end;
                         end;

                     end;

                     if (aAction in [eaRecordDelete]) then begin
                         sAction := 'eaRecordDelete';
                         RecordBuffer1 := PnxByteArray(aArgs[0].VString);

                         with Cursor.TableDescriptor.FieldsDescriptor do begin
                             if defTable then begin
                                 fieldIdxMd5DefLang  := GetFieldFromName('md5DefLang');
                                 fieldIdxMd5CompPath := GetFieldFromName('md5CompPath');
                                 if (fieldIdxMd5DefLang>-1) then begin
                                    md5Trad_old := getShortString(Cursor, fieldIdxMd5DefLang, RecordBuffer1) ;
                                    md5Path_old := getShortString(Cursor, fieldIdxMd5CompPath, RecordBuffer1) ;
                                    fOnDefTextDelete(Self, md5Trad_old, md5Path_old);
                                 end;
                             end;
                         end;

                     end;

                     if (aAction in [eaRecordModify]) then begin
                         sAction := 'eaRecordModify';
                         RecordBuffer1 := PnxByteArray(aArgs[0].VString);

                         with Cursor.TableDescriptor.FieldsDescriptor do begin
                             fieldIdxTradText   := GetFieldFromName('tradText');
                             fieldIdxMd5DefLang := -1;
                             fieldIdxMd5Trad    := -1;
                             if defTable then
                                 fieldIdxMd5DefLang := GetFieldFromName('md5DefLang')
                             else
                                 fieldIdxMd5Trad := GetFieldFromName('md5Trad');

                             if ifBlobMemoModified(Cursor, fieldIdxTradText, RecordBuffer1) then begin
                                 tradText  := getBlobMemoAsString(Cursor, fieldIdxTradText, RecordBuffer1);
                                 ltradText := ansilowercase( tradText );

                                 if tradText<>'' then begin
                                     if defTable then
                                         md5Trad_old := getShortString (Cursor, fieldIdxMd5DefLang, RecordBuffer1)
                                     else
                                         md5Trad_old := getShortString (Cursor, fieldIdxMd5Trad, RecordBuffer1);
                                     md5Trad_new := uMD5.HBuffer2( @ltradText[1], Length(ltradText) );
                                     if defTable then
                                         SetStringField(Cursor, fieldIdxMd5DefLang, RecordBuffer1, md5Trad_new)
                                     else
                                         SetStringField(Cursor, fieldIdxMd5Trad, RecordBuffer1, md5Trad_new);
                                 end;
                                 if defTable then
                                     if assigned(fOnDefTextModified) then
                                         fOnDefTextModified(Self, md5Trad_old, md5Trad_new);
                             end;
                         end;
                     end;
                end;
            end;
        end;
    except
        On e: exception do begin
            //result := DBIERR_NX_UNKNOWN;
            fOnError(Self, sAction + #13#0 + TableName  + #13#0 + md5Trad_old  + #13#0 + md5Trad_new + #13#0 + md5Path_old  + #13#0 + md5Path_new + #13#0 + e.Message);
        end;
    end;
end;



{ TnxTranslatorMonitor }

constructor TnxTranslatorMonitor.Create(AOwner: TComponent);
begin
     inherited Create(AOwner);
end;

destructor  TnxTranslatorMonitor.destroy;
begin
     inherited;
end;


procedure TnxTranslatorMonitor.ExtendableObjectCreated(
  aExtendableObject: TnxExtendableServerObject);
begin
  inherited;
  // create an extender if the object is a cursor, database or session
  if (aExtendableObject is TnxAbstractCursor)  then
    TnxExtenderTranslatorMonitor.Create( self, aExtendableObject,
    FProgramLangCode, FOnDefTextModified, FOnDefTextNew, FOnDefTextDelete, FOnConstNew, FOnConstDelete, FOnError);

end;

initialization
  TnxTranslatorMonitor.rcRegister;
finalization
  TnxTranslatorMonitor.rcUnRegister;
end.

