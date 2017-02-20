unit ufmTranslatorDM;

interface

uses
  SysUtils, Windows, Classes, nxseAutoComponent, nxdb, nxllComponent,
  nxsdServerEngine, nxsrServerEngine, nxsrSqlEngineBase, nxsqlEngine, DB,
  IdCookieManager, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, nxsdDataDictionary,nxsrDataDictionary,nxllTypes,
  nxsdFieldMapperDescriptor, nxsdTableMapperDescriptor, nxdbBase,
  nxllBdeStrings, nxsdTypes, StrUtils, {uDBParams,} ufmTranslatorMonitor,
  nxllTransport, nxchCommandHandler, nxptBasePooledTransport,
  nxtmSharedMemoryTransport, nxBaseServerComp, nxServerManager,
  nxsrSecurityMonitor, nxreRemoteServerEngine, {JclSimpleXml,}
  IdAntiFreezeBase, IdAntiFreeze, nxtnNamedPipeTransport,
  nxpvPlatformImplementation, LMDCustomComponent, LMDBaseController,
  LMDCustomContainer, LMDGenericList, kbmMemTable,
  ufmFrmBasePai, AppEvnts, uLogs, nxtwWinsockTransport, IdIOHandler,
  IdIOHandlerSocket, IdSSLOpenSSL;

const
   kAPIkey = 'AIzaSyCoN7jF3lpz_Z7ESPanCIuA98rIHdvK6Dc';
   
type
  eLCIDnaoimplementado = class(exception);


  TLanguageInfo = class(TObject)
      LCID : dword;
      GCode : string;
      LCode, LangCode : string;
      groupdefault : boolean;
      isoCharSet, CharSetName : string;
      CharSetValue : byte;
      Name : string;
   end;

  TLanguageInfoList = class(TStringList)
     protected
       FSelected : TLanguageInfo;
       function  GetLI(Index: Integer): TLanguageInfo;
       procedure PutLI(Index: Integer; Item: TLanguageInfo);
      public
       function  SelectByIndex(i:integer):boolean;
       function  ExistsColumnName(aColumnNameCode:string):boolean;
       function  ExistsLangCode(aLangCode:string):boolean;
       function  LanguageInfobyLangCode(aLangCode:string):TLanguageInfo;
       function  LanguageInfobyLCID(aLCID:dword):TLanguageInfo;
       procedure Clear; override;
       property LanguageInfo[Index: Integer]: TLanguageInfo read GetLI write PutLI; default;
       property Selected: TLanguageInfo read FSelected write FSelected;
       destructor Destroy; override;
    end;

  TDMfmTranslator = class(TDataModule)
    nxSElmTranslate: TnxServerEngine;
    nxDBlmTranslate: TnxDatabase;
    nxSession1: TnxSession;
    nx1xAllEngines1: Tnx1xAllEngines;
    nxSqlEngine1: TnxSqlEngine;
    nxQuery1: TnxQuery;
    IdCookieManager1: TIdCookieManager;
    nxSecurityMonitor1: TnxSecurityMonitor;
    nxSharedMemoryTransport1: TnxSharedMemoryTransport;
    nxSharedMemoryTransport2: TnxSharedMemoryTransport;
    nxServerCommandHandler1: TnxServerCommandHandler;
    nxTable1: TnxTable;
    nxRemoteServerEngine1: TnxRemoteServerEngine;
    IdAntiFreeze1: TIdAntiFreeze;
    LMDGenericList1: TLMDGenericList;
    dsActiveLaguages: TDataSource;
    kbmMemTableActiveLaguages: TkbmMemTable;
    kbmMemTableActiveLaguagesLangCode: TStringField;
    kbmMemTableActiveLaguagesNome: TStringField;
    ApplicationEvents1: TApplicationEvents;
    IdHTTP1: TIdHTTP;
    nxWinsockTransport1: TnxWinsockTransport;
    nxWinsockTransport2: TnxWinsockTransport;
    IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FnxTranslatorMonitor : TnxTranslatorMonitor;
    FTranslateFromLangCode : string;
    FTranslateToLangCode   : string;
    procedure applicationOnException(Sender: TObject; E: Exception);
    //procedure InicarLog;
    procedure RestructureTable(aTablename:string; newdict : TnxServerDataDict);
    procedure checkDBInstalation(aAliasPath:string);
    procedure checkTanslationDB;
    procedure checkAdditionalTables;
    procedure createTranslationTable(aLangCode:string);
    procedure createTranslationConstTable(aLangCode:string);
    function  __trnslt_classes(aDatabase : TnxDatabase): TnxDataDictionary;
    function  __trnslt_error(aDatabase : TnxDatabase): TnxDataDictionary;
    function  __trnslt_path(aDatabase : TnxDatabase): TnxDataDictionary;
    function  __trnslt_pt_br(aDatabase : TnxDatabase; aLangCode:string): TnxDataDictionary;
    function  __trnslt_(aDatabase : TnxDatabase; aLangCode:string): TnxDataDictionary;
    function  __trnslt_C_(aDatabase : TnxDatabase; aLangCode:string): TnxDataDictionary;
    procedure SetDefaultTranslation(const aPath, aMd5A, aTextToTranslate:string);
    procedure SetDefaultConstTranslation(const amd5ConstPath, aUnit, aVersion, aConstName, aOriginalLang, aTextToTranslate:string);
    procedure InsertConstTranslationRecord(const aLangCode, amd5ConstPath, aUnit, aVersion, aConstName, aOriginalLang, aTextToTranslate:string);
    procedure UpdateConstTranslationRecord(const aLangCode, amd5ConstPath, aUnit, aVersion, aConstName, aOriginalLang, aTextToTranslate:string);
    function  GetTranslationByMd5DefLang(const aMD5, aTranslateToLangCode, aTextToTranslate:string; var Translated:boolean):WideString;
    function  GetTranslationByMd5CompPath(const aPath, aTranslateToLangCode, aTextToTranslate:string):WideString;
    function  MakeClassPath(const aObj: TObject):string;
    procedure SaveClass(const aObj: TObject);
    function  getFullPathFromCompName(const aObj: TObject; const aFormName, aObjName, aPropertyName: String): String;
    function  SavePath(const aObj: TObject; const aFormName, aObjName, aPropertyName: String; TextToTranslate: WideString): String;
    procedure checkTranslationDBValues(const aObj: TObject; const aFormName, aObjName, aPropertyName: String; var TextToTranslate: WideString; var Translated:boolean);
    procedure nexTranslator(const aObj: TObject; const aFormName, aObjName, aPropertyName: String; var TextToTranslate: WideString; var Translated:boolean);
    function  nexTranslatorPath(const aPath: String; var TextToTranslate: WideString; var Translated:boolean):boolean;
    procedure nexTranslatorResource(const aUnit, aVersion, aConstName, aOriginalLang: String; var TextToTranslate: String; var Translated:boolean);
    procedure cadChangeCharset(const aObj: TObject);
    function LangCodeForLCID(aLcid:integer):string;
    function CharSetValueForLangCode(aLangCode:string):integer;
    procedure nxTranslatorMonitorDefTextModified(Sender:TObject; aMd5Trad_old, aMd5Trad_new:string );
    procedure nxTranslatorMonitorOnDefTextNew(Sender:TObject; aMd5Text, aMd5Path, aMd5DefLang:string; aText:string );
    procedure nxTranslatorMonitorOnDefTextDelete(Sender:TObject; aMd5Text, aMd5Path:string);
    procedure nxTranslatorMonitorOnConstNew(Sender:TObject; aMd5Path, aUnit, aVersion, aConstName, aOriginalLang, aTradText:string);
    procedure nxTranslatorMonitorOnConstDelete(Sender:TObject; aMd5Path:string);
    procedure nxTranslatorMonitorOnError(Sender:TObject; msg:string );
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
     { Private declarations }
  public
    procedure doLogError(s:string);
    procedure checkTanslationTable(aLangCode:string);
    function  ForceTableColumn(table, column:string; aLocale:integer):boolean;
    procedure DeleteTableColumn(table, column:string);
    procedure CopyDefaultTextValues(aLangCode:string);
    procedure CopyDefaultConstValues(aLangCode:string);
    function  lcidForLangCode(aLangCode:string):integer;
    function  GCodeForLCID(aLcid:integer):string;
    function  unicode2cpStr (s:WideString):WideString;
    function  traduzGoogle(var s:WideString; aFromGCode, aToGCode:string):boolean;
    function  GetLangCodeByName(aLangName:string):string;
    function  GetInstalledLanguagesButNotEnglish(aLangCode:string):TLanguageInfoList;
    function  GetInstalledLanguagesButNotDefault(aLangCode:string):TLanguageInfoList;
    function  GetActiveLanguagesButNotDefault(aLangCode:string):TLanguageInfoList;
    function  GetActiveLanguagesButNotEnglish(aLangCode:string):TLanguageInfoList;
    function  GetActiveLanguages(aLangCode:string):TLanguageInfoList;
    function  GetInstalledLanguages(aLangCode:string):TLanguageInfoList;
    function  GetAllLanguages(aLangCode:string):TLanguageInfoList;
    function  GetLanguages(aLangCode:string; const installed:boolean = false; const all:boolean = false; const default:boolean = true; const english:boolean = true):TLanguageInfoList;
    procedure ChangeLanguage(aLangCode:string);
    procedure ActiveLanguagesMemTable;
    function  TranslateResources(const aObj: TObject; var Translated:boolean):boolean;
    procedure InitTranslator;
    procedure CreateFormsToTranslate;
    procedure doOnNoTranslation(Sender:TObject; const aComponent:TComponent);
    function  GetOriginalTextForCompPath (const aMd5Path:string):WideString;
    function  GetOriginalConstTextForCompPath (const aMd5Path, langCode:string):WideString;
    class function getComponentPathFromObject(const bObj: TObject):string;

    //function cadTrans(S: String; const Parameters: String = ''): WideString;
    { Public declarations }
  end;

  //function cadTrans(S: String; const Parameters: String = ''): WideString;
  function UrlEncode(aString:string):String;
  function urlencodeUTF8(aString:string):String;

  function UrlDecode(aString: string): string;
  function urldecodeUTF8(aString: widestring): widestring;
  procedure RegisterFormForTranslate(const aClass:TFrmBasePaiClass);

type
  THtmlCodeRec = packed record
    Ch: Char;
    Html: PChar;
  end;

Const
  GDBlmTranslatePath = '.\DBlmTranslate';
  GDefaultLangCode = 'pt-br';


var
  DMfmTranslator: TDMfmTranslator;
  GisTranslatorManager : boolean;
  GActiveLanguagesButNotDefault : TLanguageInfoList;
  GActiveLanguages : TLanguageInfoList;
  GInstalledLanguages : TLanguageInfoList;
  GInstalledLanguagesButNotDefault : TLanguageInfoList;
  GInstalledLanguagesButNotEnglish : TLanguageInfoList;
  GAllLanguages       : TLanguageInfoList;
  GStartUpLocaleId : LCID;
  GStartUpLangCode : String;
  GProgramLangCode : String;
  GActiveLangCode  : String;
  GActiveLangName  : String;
  GTranslatorInitiated : boolean;
  
implementation

{$R *.dfm}

uses
   ufmTranslator, forms, Controls, StdCtrls, Graphics, umd5,
   uVersionInfo, variants, extCtrls, messages, Registry,
   dialogs, nxsrSystemStorage{, translator_Tables, cadGlobalVars}, uJson;


function UrlEncode(aString:string):String;
var
  j: integer;
begin
  result := '';
  for j := 1 to length(aString) do
    if aString[j]=#32 then
      result:=result+'+'
    else
    if (not (Ord(aString[j]) in [Ord('a')..Ord('z'), Ord('A')..Ord('Z')])) then
      result:=result+'%'+format('%2x',[byte(aString[j])])
    else
      result:=result+aString[j];
end;

function urlencodeUTF8(aString:string):String;
var
  j: integer;
begin
  result := '';
  for j := 1 to length(aString) do
    if aString[j]=#32 then
      result:=result+'+'
    else
    if (not (aString[j] in [ 'a'..'z', 'A'..'Z', '0'..'9'])) then
      result:=result+'%'+format('%2x',[byte(aString[j])])
    else
      result:=result+aString[j];
end;


function urldecode(aString: String): String;
var
  i: Integer;
  ESC: string[2];
  CharCode: integer;
begin
  Result := ''; { do not localize }
  aString := StringReplace(aString, '+', ' ', [rfReplaceAll]); {do not localize}
  i := 1;
  while i <= Length(aString) do
  begin
    if aString[i] <> '%' then { do not localize }
    begin {do not localize}
      Result := Result + aString[i]
    end
    else
    begin
      Inc(i);
      ESC := Copy(aString, i, 2);
      Inc(i, 1);
      try
        CharCode := StrToInt('$' + ESC); {do not localize}
        if (CharCode > 0) and (CharCode < 256) then
          Result := Result + Char(CharCode);
      except
      end;                                            
    end;
    Inc(i);
  end;
end;

{$HINTS OFF}
function IsNumeric(const AString: string): Boolean;
var
  LCode: Integer;
  LVoid: Integer;
begin
  Val(AString, LVoid, LCode);
  Result := LCode = 0;
end;
{$HINTS ON}

function urldecodeUTF8(aString: widestring): widestring;
var
  i, j, k: Integer;
  ESC: string[2];
  CharCode: integer;
  ok : boolean;
begin
  Result := ''; { do not localize }
  aString := StringReplace(aString, '+', ' ', [rfReplaceAll]); {do not localize}
  i := 1;
  while i <= Length(aString) do begin
    if aString[i] <> '%' then begin {do not localize}
      Result := Result + aString[i]
    end else begin
      ok := false;
      j := i;
      Inc(i);
      if not IsNumeric(aString[i]) then Inc(i);
      if IsNumeric(aString[i]) then begin
          ESC := Copy(aString, i, 2);
          Inc(i, 1);
          try
            CharCode := StrToInt('$' + ESC); {do not localize}
            if (CharCode > 0) and (CharCode < 256) then
              Result := Result + Char(CharCode);
            ok := true;
          except
          end;
      end;
      if not ok then
          for k:=j to i do
              Result := Result + aString[k];
    end;
    Inc(i);
  end;
end;

procedure RegisterFormForTranslate(const aClass:TFrmBasePaiClass);
begin
    Translator.RegisterFormForTranslate(aClass);
end;

// ------------------------------------------ T L a n g u a g e I n f o L i s t

destructor TLanguageInfoList.Destroy;
begin
    Clear;
    inherited;
end;

function  TLanguageInfoList.GetLI(Index: Integer): TLanguageInfo;
begin
    result := TLanguageInfo( inherited GetObject(Index));
end;

procedure TLanguageInfoList.PutLI(Index: Integer; Item: TLanguageInfo);
begin
    inherited PutObject(Index, Item);
end;

procedure TLanguageInfoList.Clear;
var
    i : integer;
begin
    for i:=count-1 downto 0 do begin
        TLanguageInfo(Objects[i]).Free;
        delete(i);
    end;
end;

function  TLanguageInfoList.SelectByIndex(i:integer):boolean;
begin
    result := false;
    if (i>=0) and (i<count) then begin
        FSelected :=  TLanguageInfo(Objects[i]);
        result := true;
    end;
end;


function  TLanguageInfoList.ExistsColumnName(aColumnNameCode:string):boolean;
var
    i : integer;
begin
    result := false;
    for i:=count-1 downto 0 do begin
        if 'LD' + inttostr(TLanguageInfo(Objects[i]).LCID) + TLanguageInfo(Objects[i]).LangCode = aColumnNameCode then begin
            result :=true;
            break;
        end;
    end;
end;

function  TLanguageInfoList.ExistsLangCode(aLangCode:string):boolean;
var
    i : integer;
begin
    result := false;
    for i:=count-1 downto 0 do begin
        if TLanguageInfo(Objects[i]).LangCode = aLangCode then begin
            result :=true;
            break;
        end;
    end;
end;

function  TLanguageInfoList.LanguageInfobyLCID(aLCID:dword):TLanguageInfo;
var
    i : integer;
begin
    result := nil;
    for i:=count-1 downto 0 do begin
        if TLanguageInfo(Objects[i]).LCID = aLCID then begin
            result :=TLanguageInfo(Objects[i]);
            break;
        end;
    end;
end;

function  TLanguageInfoList.LanguageInfobyLangCode(aLangCode:string):TLanguageInfo;
var
    i : integer;
begin
    result := nil;
    for i:=count-1 downto 0 do begin
        if TLanguageInfo(Objects[i]).LangCode = aLangCode then begin
            result :=TLanguageInfo(Objects[i]);
            break;
        end;
    end;
end;

// ------------------------------------------ T D M c a d T r a n s l a t o r


function TDMfmTranslator.lcidForLangCode(aLangCode:string):integer;
begin
    result := 0;
    nxQuery1.SQL.Text := 'SELECT lcid FROM "trnslt_languages" where LangCode=:LangCode';
    nxQuery1.ParamByName('LangCode').Value := aLangCode;
    nxQuery1.Open;
    if nxQuery1.RecordCount=1 then
        result := nxQuery1.Fields[0].AsInteger;
    nxQuery1.Close;
end;

function TDMfmTranslator.CharSetValueForLangCode(aLangCode:string):integer;
begin
    result := 0; 
    nxQuery1.SQL.Text := 'SELECT CharSetValue FROM "trnslt_languages" where LangCode=:LangCode';
    nxQuery1.ParamByName('LangCode').Value := aLangCode;
    nxQuery1.Open;
    if nxQuery1.RecordCount=1 then
        result := nxQuery1.Fields[0].AsInteger;
    nxQuery1.Close;
    if result=0 then
       result := DEFAULT_CHARSET;
end;

function TDMfmTranslator.GCodeForLCID(aLcid:integer):string;
begin
    result := '';
    nxQuery1.SQL.Text := 'SELECT GCode FROM "trnslt_languages" where "lcid"=:lcid';
    nxQuery1.ParamByName('lcid').Value := aLcid;
    nxQuery1.Open;
    if nxQuery1.RecordCount=1 then
        result := nxQuery1.Fields[0].AsString;
    nxQuery1.Close;
end;

function TDMfmTranslator.LangCodeForLCID(aLcid:integer):string;
begin
    result := '';
    nxQuery1.SQL.Text := 'SELECT LangCode FROM "trnslt_languages" where "lcid"=:lcid';
    nxQuery1.ParamByName('lcid').Value := aLcid;
    nxQuery1.Open;
    if nxQuery1.RecordCount=1 then
        result := nxQuery1.Fields[0].AsString;
    nxQuery1.Close;
end;

type
   Tcp2unicode = record
      cp : byte;
      uni : word;
   end;

const
   // http://www.unicode.org/Public/MAPPINGS/VENDORS/MICSFT/WINDOWS/
   cp1251toUnicodeA : array[0..255] of Tcp2unicode = (
     (cp:$00;uni:$0000), (cp:$01;uni:$0001), (cp:$02;uni:$0002), (cp:$03;uni:$0003), (cp:$04;uni:$0004), (cp:$05;uni:$0005), (cp:$06;uni:$0006), (cp:$07;uni:$0007), (cp:$08;uni:$0008),
     (cp:$09;uni:$0009), (cp:$0A;uni:$000A), (cp:$0B;uni:$000B), (cp:$0C;uni:$000C), (cp:$0D;uni:$000D), (cp:$0E;uni:$000E), (cp:$0F;uni:$000F), (cp:$10;uni:$0010), (cp:$11;uni:$0011),
     (cp:$12;uni:$0012), (cp:$13;uni:$0013), (cp:$14;uni:$0014), (cp:$15;uni:$0015), (cp:$16;uni:$0016), (cp:$17;uni:$0017), (cp:$18;uni:$0018), (cp:$19;uni:$0019), (cp:$1A;uni:$001A),
     (cp:$1B;uni:$001B), (cp:$1C;uni:$001C), (cp:$1D;uni:$001D), (cp:$1E;uni:$001E), (cp:$1F;uni:$001F), (cp:$20;uni:$0020), (cp:$21;uni:$0021), (cp:$22;uni:$0022), (cp:$23;uni:$0023),
     (cp:$24;uni:$0024), (cp:$25;uni:$0025), (cp:$26;uni:$0026), (cp:$27;uni:$0027), (cp:$28;uni:$0028), (cp:$29;uni:$0029), (cp:$2A;uni:$002A), (cp:$2B;uni:$002B), (cp:$2C;uni:$002C),
     (cp:$2D;uni:$002D), (cp:$2E;uni:$002E), (cp:$2F;uni:$002F), (cp:$30;uni:$0030), (cp:$31;uni:$0031), (cp:$32;uni:$0032), (cp:$33;uni:$0033), (cp:$34;uni:$0034), (cp:$35;uni:$0035),
     (cp:$36;uni:$0036), (cp:$37;uni:$0037), (cp:$38;uni:$0038), (cp:$39;uni:$0039), (cp:$3A;uni:$003A), (cp:$3B;uni:$003B), (cp:$3C;uni:$003C), (cp:$3D;uni:$003D), (cp:$3E;uni:$003E),
     (cp:$3F;uni:$003F), (cp:$40;uni:$0040), (cp:$41;uni:$0041), (cp:$42;uni:$0042), (cp:$43;uni:$0043), (cp:$44;uni:$0044), (cp:$45;uni:$0045), (cp:$46;uni:$0046), (cp:$47;uni:$0047),
     (cp:$48;uni:$0048), (cp:$49;uni:$0049), (cp:$4A;uni:$004A), (cp:$4B;uni:$004B), (cp:$4C;uni:$004C), (cp:$4D;uni:$004D), (cp:$4E;uni:$004E), (cp:$4F;uni:$004F), (cp:$50;uni:$0050),
     (cp:$51;uni:$0051), (cp:$52;uni:$0052), (cp:$53;uni:$0053), (cp:$54;uni:$0054), (cp:$55;uni:$0055), (cp:$56;uni:$0056), (cp:$57;uni:$0057), (cp:$58;uni:$0058), (cp:$59;uni:$0059),
     (cp:$5A;uni:$005A), (cp:$5B;uni:$005B), (cp:$5C;uni:$005C), (cp:$5D;uni:$005D), (cp:$5E;uni:$005E), (cp:$5F;uni:$005F), (cp:$60;uni:$0060), (cp:$61;uni:$0061), (cp:$62;uni:$0062),
     (cp:$63;uni:$0063), (cp:$64;uni:$0064), (cp:$65;uni:$0065), (cp:$66;uni:$0066), (cp:$67;uni:$0067), (cp:$68;uni:$0068), (cp:$69;uni:$0069), (cp:$6A;uni:$006A), (cp:$6B;uni:$006B),
     (cp:$6C;uni:$006C), (cp:$6D;uni:$006D), (cp:$6E;uni:$006E), (cp:$6F;uni:$006F), (cp:$70;uni:$0070), (cp:$71;uni:$0071), (cp:$72;uni:$0072), (cp:$73;uni:$0073), (cp:$74;uni:$0074),
     (cp:$75;uni:$0075), (cp:$76;uni:$0076), (cp:$77;uni:$0077), (cp:$78;uni:$0078), (cp:$79;uni:$0079), (cp:$7A;uni:$007A), (cp:$7B;uni:$007B), (cp:$7C;uni:$007C), (cp:$7D;uni:$007D),
     (cp:$7E;uni:$007E), (cp:$7F;uni:$007F), (cp:$80;uni:$0402), (cp:$81;uni:$0403), (cp:$82;uni:$201A), (cp:$83;uni:$0453), (cp:$84;uni:$201E), (cp:$85;uni:$2026), (cp:$86;uni:$2020),
     (cp:$87;uni:$2021), (cp:$88;uni:$20AC), (cp:$89;uni:$2030), (cp:$8A;uni:$0409), (cp:$8B;uni:$2039), (cp:$8C;uni:$040A), (cp:$8D;uni:$040C), (cp:$8E;uni:$040B), (cp:$8F;uni:$040F),
     (cp:$90;uni:$0452), (cp:$91;uni:$2018), (cp:$92;uni:$2019), (cp:$93;uni:$201C), (cp:$94;uni:$201D), (cp:$95;uni:$2022), (cp:$96;uni:$2013), (cp:$97;uni:$2014), (cp:$98;uni:$0000),
     (cp:$99;uni:$2122), (cp:$9A;uni:$0459), (cp:$9B;uni:$203A), (cp:$9C;uni:$045A), (cp:$9D;uni:$045C), (cp:$9E;uni:$045B), (cp:$9F;uni:$045F), (cp:$A0;uni:$00A0), (cp:$A1;uni:$040E),
     (cp:$A2;uni:$045E), (cp:$A3;uni:$0408), (cp:$A4;uni:$00A4), (cp:$A5;uni:$0490), (cp:$A6;uni:$00A6), (cp:$A7;uni:$00A7), (cp:$A8;uni:$0401), (cp:$A9;uni:$00A9), (cp:$AA;uni:$0404),
     (cp:$AB;uni:$00AB), (cp:$AC;uni:$00AC), (cp:$AD;uni:$00AD), (cp:$AE;uni:$00AE), (cp:$AF;uni:$0407), (cp:$B0;uni:$00B0), (cp:$B1;uni:$00B1), (cp:$B2;uni:$0406), (cp:$B3;uni:$0456),
     (cp:$B4;uni:$0491), (cp:$B5;uni:$00B5), (cp:$B6;uni:$00B6), (cp:$B7;uni:$00B7), (cp:$B8;uni:$0451), (cp:$B9;uni:$2116), (cp:$BA;uni:$0454), (cp:$BB;uni:$00BB), (cp:$BC;uni:$0458),
     (cp:$BD;uni:$0405), (cp:$BE;uni:$0455), (cp:$BF;uni:$0457), (cp:$C0;uni:$0410), (cp:$C1;uni:$0411), (cp:$C2;uni:$0412), (cp:$C3;uni:$0413), (cp:$C4;uni:$0414), (cp:$C5;uni:$0415),
     (cp:$C6;uni:$0416), (cp:$C7;uni:$0417), (cp:$C8;uni:$0418), (cp:$C9;uni:$0419), (cp:$CA;uni:$041A), (cp:$CB;uni:$041B), (cp:$CC;uni:$041C), (cp:$CD;uni:$041D), (cp:$CE;uni:$041E),
     (cp:$CF;uni:$041F), (cp:$D0;uni:$0420), (cp:$D1;uni:$0421), (cp:$D2;uni:$0422), (cp:$D3;uni:$0423), (cp:$D4;uni:$0424), (cp:$D5;uni:$0425), (cp:$D6;uni:$0426), (cp:$D7;uni:$0427),
     (cp:$D8;uni:$0428), (cp:$D9;uni:$0429), (cp:$DA;uni:$042A), (cp:$DB;uni:$042B), (cp:$DC;uni:$042C), (cp:$DD;uni:$042D), (cp:$DE;uni:$042E), (cp:$DF;uni:$042F), (cp:$E0;uni:$0430),
     (cp:$E1;uni:$0431), (cp:$E2;uni:$0432), (cp:$E3;uni:$0433), (cp:$E4;uni:$0434), (cp:$E5;uni:$0435), (cp:$E6;uni:$0436), (cp:$E7;uni:$0437), (cp:$E8;uni:$0438), (cp:$E9;uni:$0439),
     (cp:$EA;uni:$043A), (cp:$EB;uni:$043B), (cp:$EC;uni:$043C), (cp:$ED;uni:$043D), (cp:$EE;uni:$043E), (cp:$EF;uni:$043F), (cp:$F0;uni:$0440), (cp:$F1;uni:$0441), (cp:$F2;uni:$0442),
     (cp:$F3;uni:$0443), (cp:$F4;uni:$0444), (cp:$F5;uni:$0445), (cp:$F6;uni:$0446), (cp:$F7;uni:$0447), (cp:$F8;uni:$0448), (cp:$F9;uni:$0449), (cp:$FA;uni:$044A), (cp:$FB;uni:$044B),
     (cp:$FC;uni:$044C), (cp:$FD;uni:$044D), (cp:$FE;uni:$044E), (cp:$FF;uni:$044F)
   );

   cp1253toUnicodeA : array[0..255] of Tcp2unicode = (
     (cp:$00;uni:$0000), (cp:$01;uni:$0001), (cp:$02;uni:$0002), (cp:$03;uni:$0003), (cp:$04;uni:$0004), (cp:$05;uni:$0005), (cp:$06;uni:$0006), (cp:$07;uni:$0007), (cp:$08;uni:$0008),
     (cp:$09;uni:$0009), (cp:$0A;uni:$000A), (cp:$0B;uni:$000B), (cp:$0C;uni:$000C), (cp:$0D;uni:$000D), (cp:$0E;uni:$000E), (cp:$0F;uni:$000F), (cp:$10;uni:$0010), (cp:$11;uni:$0011),
     (cp:$12;uni:$0012), (cp:$13;uni:$0013), (cp:$14;uni:$0014), (cp:$15;uni:$0015), (cp:$16;uni:$0016), (cp:$17;uni:$0017), (cp:$18;uni:$0018), (cp:$19;uni:$0019), (cp:$1A;uni:$001A),
     (cp:$1B;uni:$001B), (cp:$1C;uni:$001C), (cp:$1D;uni:$001D), (cp:$1E;uni:$001E), (cp:$1F;uni:$001F), (cp:$20;uni:$0020), (cp:$21;uni:$0021), (cp:$22;uni:$0022), (cp:$23;uni:$0023),
     (cp:$24;uni:$0024), (cp:$25;uni:$0025), (cp:$26;uni:$0026), (cp:$27;uni:$0027), (cp:$28;uni:$0028), (cp:$29;uni:$0029), (cp:$2A;uni:$002A), (cp:$2B;uni:$002B), (cp:$2C;uni:$002C),
     (cp:$2D;uni:$002D), (cp:$2E;uni:$002E), (cp:$2F;uni:$002F), (cp:$30;uni:$0030), (cp:$31;uni:$0031), (cp:$32;uni:$0032), (cp:$33;uni:$0033), (cp:$34;uni:$0034), (cp:$35;uni:$0035),
     (cp:$36;uni:$0036), (cp:$37;uni:$0037), (cp:$38;uni:$0038), (cp:$39;uni:$0039), (cp:$3A;uni:$003A), (cp:$3B;uni:$003B), (cp:$3C;uni:$003C), (cp:$3D;uni:$003D), (cp:$3E;uni:$003E),
     (cp:$3F;uni:$003F), (cp:$40;uni:$0040), (cp:$41;uni:$0041), (cp:$42;uni:$0042), (cp:$43;uni:$0043), (cp:$44;uni:$0044), (cp:$45;uni:$0045), (cp:$46;uni:$0046), (cp:$47;uni:$0047),
     (cp:$48;uni:$0048), (cp:$49;uni:$0049), (cp:$4A;uni:$004A), (cp:$4B;uni:$004B), (cp:$4C;uni:$004C), (cp:$4D;uni:$004D), (cp:$4E;uni:$004E), (cp:$4F;uni:$004F), (cp:$50;uni:$0050),
     (cp:$51;uni:$0051), (cp:$52;uni:$0052), (cp:$53;uni:$0053), (cp:$54;uni:$0054), (cp:$55;uni:$0055), (cp:$56;uni:$0056), (cp:$57;uni:$0057), (cp:$58;uni:$0058), (cp:$59;uni:$0059),
     (cp:$5A;uni:$005A), (cp:$5B;uni:$005B), (cp:$5C;uni:$005C), (cp:$5D;uni:$005D), (cp:$5E;uni:$005E), (cp:$5F;uni:$005F), (cp:$60;uni:$0060), (cp:$61;uni:$0061), (cp:$62;uni:$0062),
     (cp:$63;uni:$0063), (cp:$64;uni:$0064), (cp:$65;uni:$0065), (cp:$66;uni:$0066), (cp:$67;uni:$0067), (cp:$68;uni:$0068), (cp:$69;uni:$0069), (cp:$6A;uni:$006A), (cp:$6B;uni:$006B),
     (cp:$6C;uni:$006C), (cp:$6D;uni:$006D), (cp:$6E;uni:$006E), (cp:$6F;uni:$006F), (cp:$70;uni:$0070), (cp:$71;uni:$0071), (cp:$72;uni:$0072), (cp:$73;uni:$0073), (cp:$74;uni:$0074),
     (cp:$75;uni:$0075), (cp:$76;uni:$0076), (cp:$77;uni:$0077), (cp:$78;uni:$0078), (cp:$79;uni:$0079), (cp:$7A;uni:$007A), (cp:$7B;uni:$007B), (cp:$7C;uni:$007C), (cp:$7D;uni:$007D),
     (cp:$7E;uni:$007E), (cp:$7F;uni:$007F), (cp:$80;uni:$20AC), (cp:$81;uni:$0000), (cp:$82;uni:$201A), (cp:$83;uni:$0192), (cp:$84;uni:$201E), (cp:$85;uni:$2026), (cp:$86;uni:$2020),
     (cp:$87;uni:$2021), (cp:$88;uni:$0000), (cp:$89;uni:$2030), (cp:$8A;uni:$0000), (cp:$8B;uni:$2039), (cp:$8C;uni:$0000), (cp:$8D;uni:$0000), (cp:$8E;uni:$0000), (cp:$8F;uni:$0000),
     (cp:$90;uni:$0000), (cp:$91;uni:$2018), (cp:$92;uni:$2019), (cp:$93;uni:$201C), (cp:$94;uni:$201D), (cp:$95;uni:$2022), (cp:$96;uni:$2013), (cp:$97;uni:$2014), (cp:$98;uni:$0000),
     (cp:$99;uni:$2122), (cp:$9A;uni:$0000), (cp:$9B;uni:$203A), (cp:$9C;uni:$0000), (cp:$9D;uni:$0000), (cp:$9E;uni:$0000), (cp:$9F;uni:$0000), (cp:$A0;uni:$00A0), (cp:$A1;uni:$0385),
     (cp:$A2;uni:$0386), (cp:$A3;uni:$00A3), (cp:$A4;uni:$00A4), (cp:$A5;uni:$00A5), (cp:$A6;uni:$00A6), (cp:$A7;uni:$00A7), (cp:$A8;uni:$00A8), (cp:$A9;uni:$00A9), (cp:$AA;uni:$0000),
     (cp:$AB;uni:$00AB), (cp:$AC;uni:$00AC), (cp:$AD;uni:$00AD), (cp:$AE;uni:$00AE), (cp:$AF;uni:$2015), (cp:$B0;uni:$00B0), (cp:$B1;uni:$00B1), (cp:$B2;uni:$00B2), (cp:$B3;uni:$00B3),
     (cp:$B4;uni:$0384), (cp:$B5;uni:$00B5), (cp:$B6;uni:$00B6), (cp:$B7;uni:$00B7), (cp:$B8;uni:$0388), (cp:$B9;uni:$0389), (cp:$BA;uni:$038A), (cp:$BB;uni:$00BB), (cp:$BC;uni:$038C),
     (cp:$BD;uni:$00BD), (cp:$BE;uni:$038E), (cp:$BF;uni:$038F), (cp:$C0;uni:$0390), (cp:$C1;uni:$0391), (cp:$C2;uni:$0392), (cp:$C3;uni:$0393), (cp:$C4;uni:$0394), (cp:$C5;uni:$0395),
     (cp:$C6;uni:$0396), (cp:$C7;uni:$0397), (cp:$C8;uni:$0398), (cp:$C9;uni:$0399), (cp:$CA;uni:$039A), (cp:$CB;uni:$039B), (cp:$CC;uni:$039C), (cp:$CD;uni:$039D), (cp:$CE;uni:$039E),
     (cp:$CF;uni:$039F), (cp:$D0;uni:$03A0), (cp:$D1;uni:$03A1), (cp:$D2;uni:$0000), (cp:$D3;uni:$03A3), (cp:$D4;uni:$03A4), (cp:$D5;uni:$03A5), (cp:$D6;uni:$03A6), (cp:$D7;uni:$03A7),
     (cp:$D8;uni:$03A8), (cp:$D9;uni:$03A9), (cp:$DA;uni:$03AA), (cp:$DB;uni:$03AB), (cp:$DC;uni:$03AC), (cp:$DD;uni:$03AD), (cp:$DE;uni:$03AE), (cp:$DF;uni:$03AF), (cp:$E0;uni:$03B0),
     (cp:$E1;uni:$03B1), (cp:$E2;uni:$03B2), (cp:$E3;uni:$03B3), (cp:$E4;uni:$03B4), (cp:$E5;uni:$03B5), (cp:$E6;uni:$03B6), (cp:$E7;uni:$03B7), (cp:$E8;uni:$03B8), (cp:$E9;uni:$03B9),
     (cp:$EA;uni:$03BA), (cp:$EB;uni:$03BB), (cp:$EC;uni:$03BC), (cp:$ED;uni:$03BD), (cp:$EE;uni:$03BE), (cp:$EF;uni:$03BF), (cp:$F0;uni:$03C0), (cp:$F1;uni:$03C1), (cp:$F2;uni:$03C2),
     (cp:$F3;uni:$03C3), (cp:$F4;uni:$03C4), (cp:$F5;uni:$03C5), (cp:$F6;uni:$03C6), (cp:$F7;uni:$03C7), (cp:$F8;uni:$03C8), (cp:$F9;uni:$03C9), (cp:$FA;uni:$03CA), (cp:$FB;uni:$03CB),
     (cp:$FC;uni:$03CC), (cp:$FD;uni:$03CD), (cp:$FE;uni:$03CE), (cp:$FF;uni:$0000)
   );

function  unicode2cp1251(w:word):byte;
var
    i : integer;
begin
    result := 0;
    for i:=0 to 255 do
      if w = cp1251toUnicodeA[i].uni then begin
         result := i;
         break;
    end;
end;

function  unicode2cp1253(w:word):byte;
var
    i : integer;
begin
    result := 0;
    for i:=0 to 255 do
      if w = cp1253toUnicodeA[i].uni then begin
         result := i;
         break;
    end;
end;

function  unicode2cp(w:word):byte;
begin
    if hi(w)=0 then
       result := lo(w)
    else begin
       // russo
       result := unicode2cp1251(w);
       if result = 0 then
       // grego
       result := unicode2cp1253(w);
    end;
end;

function TDMfmTranslator.unicode2cpStr (s:WideString):WideString;
var
   i : integer;
begin
   result := '';
   for i:= 1 to length(s) do
       result := result + char(unicode2cp(ord(s[i])));
end;

function TDMfmTranslator.traduzGoogle(var s:WideString; aFromGCode, aToGCode:string):boolean;
var
   sGetLine : WideString;
   line     : WideString;
   intento,i  : integer;
   jo, jodata, jotranslatedText : TJSONObject;
   jatranslations : TJSONArray;
   retry : integer;
   ok : boolean;
   
   function html2ws(s:WideString):WideString;
   var
       a : string;
       b : integer;
   begin
       result := '';
       while length(s)>0 do begin
           if AnsiPos('&#',s) = 1  then begin
              a := copy(s,3, AnsiPos(';',s)-3);
              s := copy(s, length(a)+4, maxint);
              if TryStrToInt(a,b) then
                 result := result + char(unicode2cp(b))
              else begin
                 result := result + '&#' + copy(a, 1, 1);
                 s := copy(s, 2, maxint);
              end;
           end else
           if AnsiPos('%',s) = 1  then begin
              a := copy(s,2, 2);
              s := copy(s, 3, maxint);
              if TryStrToInt(a,b) then
                 result := result + char(b)
              else begin
                 result := result + '%' + copy(a, 1, 1);
                 s := copy(s, 1, maxint);
              end;
           end else begin
              result := result + copy(s, 1, 1);
              s := copy(s, 2, maxint);
           end;
       end;
   end;

   function ws2html(s:WideString):WideString;
    var
      j: integer;
    begin
      result := '';
      for j := 1 to length(s) do    // Iterate
        if (not (Ord(s[j]) in [Ord('a')..Ord('z'), Ord('A')..Ord('Z')])) then
          result:=result+'&#'+format('%2x',[byte(s[j])])
        else
          result:=result+s[j];
    end;

   function ExtractSpan(s:WideString):WideString;
   var
      qspan : integer;
      ispan : integer;
      fspan : integer;
      ts : string;
   begin
      result := '';
      ts := s;
      qspan :=  0;
      ispan :=  ansiPos('<span', ts);
      fspan :=  ansiPos('</span>', ts);
      repeat
          if ispan < fspan then begin
              ts  := AnsiMidStr(ts, ispan+5, maxint);
              ts  := AnsiMidStr(ts, ansiPos('>', ts) +1, maxint);
              inc(qspan);
          end else begin
              result := result + AnsiMidStr(ts, 1, fspan - 1);
              ts  := AnsiMidStr(ts, fspan + 7, maxint);
              dec(qspan);
          end;
          ispan :=  ansiPos('<span', ts);
          fspan :=  ansiPos('</span>', ts);
      until qspan = 0;
   end;

   function FiltraVar(s:string):string;
   var
       i : integer;
       isVar : boolean;
   begin

       result := '';
       if s='' then exit;

       isVar := false;
       i := 1;
       while i<length(s) do begin

           if (s[i]='%') and (s[i+1]in['a'..'z','A'..'Z']) then begin
              isVar:=true;
              inc(i);
           end;

           if not isVar then
               result := result + s[i];

           inc(i);
       end;
       if not isVar then
           result := result + s[i];
   end;

begin
      result  := false;
      if aFromGCode = aToGCode then exit;

      intento := 0;

      IdHTTP1.Port := 443;
      IdHTTP1.IOHandler := IdSSLIOHandlerSocket1;
      with IdSSLIOHandlerSocket1 do begin
        SSLOptions.Method := sslvSSLv3;
        SSLOptions.Mode :=  sslmUnassigned;
        SSLOptions.VerifyMode := [];
        SSLOptions.VerifyDepth := 2;
      end;

      IdHTTP1.CookieManager.CookieCollection.Clear;
      IdHTTP1.Host:= 'www.googleapis.com';

      retry:=0;
      repeat
          inc(retry);
          try
              IdHTTP1.Connect(15000);
          except
          end;
          ok := true;
      until ok or (retry=4);
      if not ok then
          raise exception.create('Não foi possível conectar com www.googleapis.com');

      gLog.Log(self, [lcTrace], 'traduzGoogle: '+ s + ' from:'+ aFromGCode + ' to:' + aToGCode);

      s := utf8encode( s );
      s := AnsiReplaceStr(s, #13#10, #1 );

      // Filtrar Variaveis e Acc Keys -----------------------

      s := AnsiReplaceStr(s, '&', '' );
      s := FiltraVar(s);


      // -----------------------------------------------------

      s := urlencodeUTF8( s );
      s := AnsiReplaceStr(s, '% 1', '%0A' );

      while not result and (intento<3) do begin
          try
              inc(intento);

              sGetLine := 'https://www.googleapis.com/language/translate/v2?'+
                          'key='+kAPIkey+'&'+
                          'format=html&'+
                          'q='+ s + '&'+
                          'source='+ trim(aFromGCode) + '&'+
                          'target='+ trim(aToGCode) ;

              IdHTTP1.Request.AcceptCharSet := 'utf-8';
              gLog.Log(self, [lcHTTP_req], 'Get: '+sGetLine);
              line := IdHTTP1.Get( sGetLine );

              jo := TJSONObject.create(line);
              try
                  if jo.has('data') then begin
                      jodata := jo.getJSONObject('data');
                      if jodata.has('translations') then begin
                           jatranslations := jodata.getJSONArray('translations');
                           if jatranslations.length>0 then
                           for I := 0 to jatranslations.length - 1 do begin
                               jotranslatedText := jatranslations.getJSONObject(i);
                               line := jotranslatedText.getString('translatedText');
                               break;
                           end;

                      end;
                  end;
              finally
                  jo.Free;
              end;

               if line>'' then begin
                     s := utf8ToAnsi(line);
                     try
                        s := html2ws(s);// &#1044; &#1086; &#1084;    U00414,   U0043E, U0043C,
                     except
                     end;
                     s := AnsiReplaceStr(s, '  ', ' ' );
                     s := AnsiReplaceStr(s, '&quot;', '' );
                     s := AnsiReplaceStr(s, '&amp; ', '&' );
                     s := AnsiReplaceStr(s, '&amp;', '&' );
                     s := AnsiReplaceStr(s, '&lt;br&gt;', #13#10 );
                     s := AnsiReplaceStr(s, '<br>', #13#10 );
                     s := AnsiReplaceStr(s, '<BR>', #13#10 );
                     s := AnsiReplaceStr(s, '&lt;', '<' );
                     s := AnsiReplaceStr(s, '&gt;', '>' );
                     result := true;
              end;
              line := '';
          except
             on e:exception do
                doLogError ( 'traduzGoogle '+ #13#10 + s + #13#10 + e.Message);
          end;
      end;
      gLog.Log(self, [lcTrace], 'traduzGoogle result: '+ s);
      gLog.ForceLogWrite;
      IdHTTP1.Disconnect;
end;

procedure TDMfmTranslator.checkDBInstalation(aAliasPath:string);
begin
        forcedirectories(aAliasPath);

        if not FileExists(aAliasPath+'\trnslt_languages.nx1') then
            LMDGenericList1[0].SaveToFile(aAliasPath+'\trnslt_languages.nx1');
end;

procedure TDMfmTranslator.checkTanslationDB;
var
    i : integer;
    mLangCode : string;
    mdef1LangCode, mdef2LangCode : string;
    mlcid: integer;
    mActiveLanguages : TLanguageInfoList;
begin
    try
        mdef1LangCode := 'pt-br';
        mlcid:= lcidForLangCode(mdef1LangCode);
        ForceTableColumn('trnslt_languages', 'LD'+inttostr(mlcid)+mdef1LangCode, mlcid);

        mdef2LangCode := 'en-us';
        mlcid:= lcidForLangCode(mdef2LangCode);
        ForceTableColumn('trnslt_languages', 'LD'+inttostr(mlcid)+mdef2LangCode, mlcid);

        mActiveLanguages := GetActiveLanguages(mdef1LangCode);
        try
            mLangCode := GProgramLangCode;
            checkAdditionalTables;
            checkTanslationTable(GProgramLangCode);

            for i:=0 to mActiveLanguages.count-1 do with mActiveLanguages do
                 if LanguageInfo[i].LangCode <> GProgramLangCode then begin

                       mLangCode := LanguageInfo[i].LangCode;
                       checkTanslationTable(LanguageInfo[i].LangCode);
                       if (nxDBlmTranslate.TableExists('trnslt_'+GProgramLangCode ,'')) and
                          (nxDBlmTranslate.TableExists('trnslt_'+LanguageInfo[i].LangCode ,'')) then begin

                              CopyDefaultTextValues (LanguageInfo[i].LangCode);
                              
                       end;
                 end;
            finally
               mActiveLanguages.Free;
            end;
    except
       on e:exception do
         doLogError ( 'checkTanslationDB '+ #13#10 + mLangCode + #13#10 + e.Message);
    end;
end;

procedure TDMfmTranslator.CopyDefaultTextValues(aLangCode:string);
var
    nxTable : TnxTable;
    bs : TStream;
    f : TField;
    mMd5CompPath, mMd5DefLang, mText : string;
begin
    try
        nxTable := TnxTable.Create(nil);
        nxTable.Database  := nxDBlmTranslate;
        nxTable.TableName := 'trnslt_'+aLangCode;
        nxTable.IndexName := 'PK';
        nxTable.Open;
        nxQuery1.SQL.Text := 'select md5CompPath, tradtext from "trnslt_'+ GProgramLangCode+'" order by id' ;
        nxQuery1.Open;

        while not nxQuery1.Eof do begin
            mMd5CompPath := nxQuery1.FieldByName('md5CompPath').AsString;
            mMd5DefLang  := uMd5.h(nxQuery1.FieldByName('tradtext').AsString);
            
            if not nxTable.Locate('md5DefLang', mMd5DefLang, []) then begin
                f := nxQuery1.FieldByName('tradtext');
                bs := TStream( nxQuery1.CreateBlobStream(f,bmRead) );
                bs.Seek(0,0);
                mText := TnxMemoField(f).AsWideString;
                bs.Free;

                if not nxTable.Locate('md5CompPath', mMd5CompPath, []) then begin
                    nxTable.Insert;
                    nxTable.FieldByName('md5CompPath').value := mMd5CompPath;
                    nxTable.FieldByName('md5DefLang').value  := mMd5DefLang;

                    f := nxTable.FieldByName('tradtext');
                    bs := TStream( nxTable.CreateBlobStream(f,bmWrite) );
                    TnxMemoField(f).AsWideString := mText;
                    bs.Free;

                    nxTable.Post;
                end else begin
                    nxTable.edit;
                    nxTable.FieldByName('md5DefLang').value  := mMd5DefLang;

                    f := nxTable.FieldByName('tradtext');
                    bs := TStream( nxTable.CreateBlobStream(f,bmWrite) );
                    TnxMemoField(f).AsWideString := mText;
                    bs.Free;

                    nxTable.Post;
                end;
            end;
            nxQuery1.Next;
        end;
        nxQuery1.Close;
        nxTable.Close;
{
        nxTable := TnxTable.Create(nil);
        nxTable.Database  := nxDBlmTranslate;
        nxTable.TableName := 'trnslt_'+aLangCode;
        nxTable.IndexName := 'PK';
        nxTable.Open;
        nxQuery1.SQL.Text := 'select md5DefLang, tradtext from "trnslt_'+ GProgramLangCode+'" order by id' ;
        nxQuery1.Open;

        while not nxQuery1.Eof do begin
            mMd5 := nxQuery1.FieldByName('md5DefLang').AsString;

            if not nxTable.Locate('md5DefLang', mMd5, []) then begin
                f := nxQuery1.FieldByName('tradtext');
                bs := TStream( nxQuery1.CreateBlobStream(f,bmRead) );
                bs.Seek(0,0);
                mText := TnxMemoField(f).AsWideString;
                bs.Free;

                nxTable.Insert;
                nxTable.FieldByName('md5DefLang').value := mMd5;

                f := nxTable.FieldByName('tradtext');
                bs := TStream( nxTable.CreateBlobStream(f,bmWrite) );
                TnxMemoField(f).AsWideString := mText;
                bs.Free;

                nxTable.Post;
            end;
            nxQuery1.Next;
        end;
        nxQuery1.Close;
        nxTable.Close;
}        
    except
       on e:exception do
         doLogError ( 'CopyDefaultTextValues '+ #13#10 + aLangCode + #13#10 + e.Message);
    end;
end;

procedure TDMfmTranslator.CopyDefaultConstValues(aLangCode:string);
var
    nxTable : TnxTable;
    amd5ConstPath, aUnit, aVersion, aConstName, aOriginalLang, aTextToTranslate:string;
begin
    nxTable := TnxTable.Create(nil);
    nxTable.Database  := nxDBlmTranslate;
    nxTable.TableName := 'trnslt_C_en-us';
    nxTable.IndexName := 'PK';
    nxTable.Open;

    while not nxTable.Eof do begin
        amd5ConstPath := nxTable.FieldByName('md5ConstPath').value;
        aUnit := nxTable.FieldByName('Unit').value;
        aVersion := nxTable.FieldByName('UVersion').value;
        aConstName := nxTable.FieldByName('ConstName').value;
        aOriginalLang := nxTable.FieldByName('originalLang').value;
        aTextToTranslate := nxTable.FieldByName('tradtext').value;

        nxQuery1.SQL.Text := 'SELECT md5ConstPath FROM "trnslt_C_'+aLangCode+'" where md5ConstPath=:md5ConstPath';
        nxQuery1.ParamByName('md5ConstPath').value := amd5ConstPath;
        nxQuery1.Open;
        if nxQuery1.RecordCount=0 then begin
            nxQuery1.Close;
            InsertConstTranslationRecord(aLangCode, amd5ConstPath, aUnit, aVersion, aConstName, aOriginalLang, aTextToTranslate);
        end else begin
            nxQuery1.Close;
            UpdateConstTranslationRecord(aLangCode, amd5ConstPath, aUnit, aVersion, aConstName, aOriginalLang, aTextToTranslate);
        end;


        nxTable.next;
    end;

    nxTable.close;
end;

procedure TDMfmTranslator.checkAdditionalTables;
var
  Dict : TnxDataDictionary;
begin

    if not nxDBlmTranslate.TableExists('trnslt_error' ,'') then begin
        Dict := __trnslt_error(nxDBlmTranslate);
        if Assigned(Dict) then
        try
            nxDBlmTranslate.CreateTable(False, 'trnslt_error', '', Dict);
        finally
          Dict.Free;
        end;
    end;

    if not nxDBlmTranslate.TableExists('trnslt_path' ,'') then begin
        Dict := __trnslt_path(nxDBlmTranslate);
        if Assigned(Dict) then
        try
            nxDBlmTranslate.CreateTable(False, 'trnslt_path', '', Dict);
        finally
          Dict.Free;
        end;
    end;

    if not nxDBlmTranslate.TableExists('trnslt_classes' ,'') then begin
        Dict := __trnslt_classes(nxDBlmTranslate);
        if Assigned(Dict) then
        try
            nxDBlmTranslate.CreateTable(False, 'trnslt_classes', '', Dict);
        finally
          Dict.Free;
        end;
    end;

    if not nxDBlmTranslate.TableExists('trnslt_C_en-us' ,'') then begin
        Dict := __trnslt_C_(nxDBlmTranslate, 'en-us');
        if Assigned(Dict) then
        try
            nxDBlmTranslate.CreateTable(False, 'trnslt_C_en-us', '', Dict);
        finally
          Dict.Free;
        end;
    end;

    if not nxDBlmTranslate.TableExists('trnslt_C_pt-br' ,'') then begin
        Dict := __trnslt_C_(nxDBlmTranslate, 'pt-br');
        if Assigned(Dict) then
        try
            nxDBlmTranslate.CreateTable(False, 'trnslt_C_pt-br', '', Dict);
        finally
          Dict.Free;
        end;
    end;


end;

procedure TDMfmTranslator.checkTanslationTable(aLangCode:string);
begin
    if not nxDBlmTranslate.TableExists('trnslt_'+aLangCode ,'') then
        createTranslationTable(aLangCode);
    if not nxDBlmTranslate.TableExists('trnslt_C_'+aLangCode ,'') then
        createTranslationConstTable(aLangCode);
end;

procedure TDMfmTranslator.createTranslationTable(aLangCode:string);
var
  Dict : TnxDataDictionary;
begin
    if aLangCode = GProgramLangCode then begin
        Dict := __trnslt_pt_br(nxDBlmTranslate, aLangCode);
    end else begin
        Dict := __trnslt_(nxDBlmTranslate, aLangCode);
    end;
    if Assigned(Dict) then
      try
          nxDBlmTranslate.CreateTable(False, 'trnslt_'+aLangCode, '', Dict);
      finally
        Dict.Free;
      end;

end;

procedure TDMfmTranslator.createTranslationConstTable(aLangCode:string);
var
  Dict : TnxDataDictionary;
  //nxTable1 : TnxTable;
  //nxTable2 : TnxTable;
begin
    Dict := __trnslt_C_(nxDBlmTranslate, aLangCode);
    if Assigned(Dict) then
      try
          nxDBlmTranslate.CreateTable(False, 'trnslt_C_'+aLangCode, '', Dict);
      finally
        Dict.Free;
      end;
      {if not Sametext(aLangCode,'en-us') then begin
          nxTable1 := TnxTable.Create(nil);
          nxTable2 := TnxTable.Create(nil);
          try
              nxTable1.Database := nxDBlmTranslate;
              nxTable1.TableName := 'trnslt_C_en-us';
              nxTable2.Database := nxDBlmTranslate;
              nxTable2.TableName := 'trnslt_C_'+aLangCode;
              nxTable1.Open;
              nxTable2.Open;
              while not nxTable1.Eof do begin
                  nxTable2.Append;
                  nxTable2.FieldByName('unit').Value      := nxTable1.FieldByName('unit').Value;
                  nxTable2.FieldByName('uversion').Value  := nxTable1.FieldByName('uversion').Value;
                  nxTable2.FieldByName('ConstName').Value := nxTable1.FieldByName('ConstName').Value;
                  nxTable2.Post;
                  nxTable1.Next;
              end;
              nxTable1.Close;
              nxTable2.Close;
          finally
              nxTable1.Free;
              nxTable2.Free;
          end;
      end; }
end;

// trnslt_
function TDMfmTranslator.__trnslt_(aDatabase : TnxDatabase; aLangCode:string): TnxDataDictionary;
//var
//  fd : TnxFieldDescriptor;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('md5DefLang', '', nxtShortString, 32, 0, False);
        AddField('md5Trad', '', nxtShortString, 32, 0, False);
        AddField('md5CompPath', '', nxtShortString, 32, 0, False);
        with AddField('tradtext', '', nxtBLOBWideMemo, 0, 0, False) do
          with AddLocaleDescriptor do begin
            Locale := lcidForLangCode(aLangCode);
            Flags := $00010002;
            IgnoreKanaType := True;
            IgnoreNonSpace := True;
            OverrideStorageCodePage := CP_UTF8;
          end;
        with AddField('autoText', '', nxtBLOBWideMemo, 0, 0, False) do
          with AddLocaleDescriptor do begin
            Locale := lcidForLangCode(aLangCode);
            Flags := $00010002;
            IgnoreKanaType := True;
            IgnoreNonSpace := True;
            OverrideStorageCodePage := CP_UTF8;
          end;
        with AddField('mustTranslate', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('shouldAutoTranslate', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('haveVar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('haveAccKey', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('revision', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        with AddField('creationDatetime', '', nxtDateTime, 0, 0, False) do
          AddDefaultValue(TnxCurrentDateTimeDefaultValueDescriptor);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('PK', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('idx_md5DefLang', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('md5DefLang'), TnxTextKeyFieldDescriptor) as TnxTextKeyFieldDescriptor do
            IgnoreCase := True;
        with AddIndex('idx_md5Trad', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('md5Trad'), TnxTextKeyFieldDescriptor) as TnxTextKeyFieldDescriptor do
            IgnoreCase := True;
        with AddIndex('idx_md5CompPath', 0, idNull), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('md5CompPath'), TnxTextKeyFieldDescriptor) as TnxTextKeyFieldDescriptor do
            IgnoreCase := True;
        DefaultIndex := GetIndexFromName('PK');
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;  
end;

// trnslt_C_
function TDMfmTranslator.__trnslt_C_(aDatabase : TnxDatabase; aLangCode:string): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Version', '', nxtByteArray, 8, 0, False);
        AddField('md5ConstPath', '', nxtShortString, 32, 0, False);
        AddField('Unit', '', nxtShortString, 32, 0, True);
        AddField('UVersion', '', nxtShortString, 6, 0, True);
        AddField('originalLang', '', nxtShortString, 5, 0, True);
        AddField('ConstName', '', nxtShortString, 64, 0, True);
        with AddField('tradtext', '', nxtBLOBWideMemo, 0, 0, False) do
          with AddLocaleDescriptor do begin
            Locale := lcidForLangCode(aLangCode);
            Flags := $00010002;
            IgnoreKanaType := True;
            IgnoreNonSpace := True;
            OverrideStorageCodePage := CP_UTF8;
          end;
        with AddField('autoText', '', nxtBLOBWideMemo, 0, 0, False) do
          with AddLocaleDescriptor do begin
            Locale := lcidForLangCode(aLangCode);
            Flags := $00010002;
            IgnoreKanaType := True;
            IgnoreNonSpace := True;
            OverrideStorageCodePage := CP_UTF8;
          end;
        with AddField('mustTranslate', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('shouldAutoTranslate', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('haveVar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('haveAccKey', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('revision', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        with AddField('creationDatetime', '', nxtDateTime, 0, 0, False) do
          AddDefaultValue(TnxCurrentDateTimeDefaultValueDescriptor);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('PK', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('idx_md5ConstPath', 0, idNull), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('md5ConstPath'), TnxTextKeyFieldDescriptor) as TnxTextKeyFieldDescriptor do
            IgnoreCase := True;
        with AddIndex('idx_unit', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Unit'), TnxTextKeyFieldDescriptor) as TnxTextKeyFieldDescriptor do
            IgnoreCase := True;
        with AddIndex('idx_UVersion', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UVersion'));
        with AddIndex('idx_ConstName', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('ConstName'), TnxTextKeyFieldDescriptor) as TnxTextKeyFieldDescriptor do
            IgnoreCase := True;
        with AddIndex('idx_originalLang', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('originalLang'));
        DefaultIndex := GetIndexFromName('PK');
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;


// trnslt_path
function TDMfmTranslator.__trnslt_path(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Version', '', nxtByteArray, 8, 0, False);
        AddField('md5DefLang', '', nxtShortString, 32, 0, False);
        AddField('md5CompPath', '', nxtShortString, 32, 0, False);
        AddField('Path', '', nxtShortString, 255, 0, False);
        with AddField('defaultText', '', nxtBLOBWideMemo, 0, 0, False) do
          with AddLocaleDescriptor do begin
            Locale := $00000416; { Portuguese }
            Flags := $00010002;
            IgnoreKanaType := True;
            IgnoreNonSpace := True;
          end;
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('PK', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('idx_md5CompPath', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('md5CompPath'), TnxTextKeyFieldDescriptor) as TnxTextKeyFieldDescriptor do
            IgnoreCase := True;
        with AddIndex('idx_md5DefLang', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('md5DefLang'));
        with AddIndex('idx_path', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Path'), TnxTextKeyFieldDescriptor) as TnxTextKeyFieldDescriptor do begin
            NullBehaviour := nbBottom;
            IgnoreCase := True;
          end;
        DefaultIndex := GetIndexFromName('PK');
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// trnslt_pt-br
function TDMfmTranslator.__trnslt_pt_br(aDatabase : TnxDatabase; aLangCode:string): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('md5DefLang', '', nxtShortString, 32, 0, False);
        AddField('md5CompPath', '', nxtShortString, 32, 0, False);
        AddField('Path', '', nxtShortString, 255, 0, False);
        with AddField('tradtext', '', nxtBLOBWideMemo, 0, 0, False) do
          with AddLocaleDescriptor do begin
            Locale := $00000416; { Portuguese }
            Flags := $00010002;
            IgnoreKanaType := True;
            IgnoreNonSpace := True;
            OverrideStorageCodePage := CP_UTF8;
          end;
        with AddField('creationDatetime', '', nxtDateTime, 0, 0, False) do
          AddDefaultValue(TnxCurrentDateTimeDefaultValueDescriptor);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('PK', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('idx_md5DefLang', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('md5DefLang'), TnxTextKeyFieldDescriptor) as TnxTextKeyFieldDescriptor do
            IgnoreCase := True;
        with AddIndex('idx_md5CompPath', 0, idNull), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('md5CompPath'), TnxTextKeyFieldDescriptor) as TnxTextKeyFieldDescriptor do
            IgnoreCase := True;
        with AddIndex('idx_path', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Path'), TnxTextKeyFieldDescriptor) as TnxTextKeyFieldDescriptor do begin
            NullBehaviour := nbBottom;
            IgnoreCase := True;
          end;

        DefaultIndex := GetIndexFromName('PK');
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function TDMfmTranslator.__trnslt_error(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        with AddField('when', '', nxtDateTime, 0, 0, False) do
          AddDefaultValue(TnxCurrentDateTimeDefaultValueDescriptor);
        AddField('msg', '', nxtBLOBWideMemo, 0, 0, True);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('PK', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('ID')) do
            Ascend := False;
        DefaultIndex := GetIndexFromName('PK');
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// trnslt_classes
function TDMfmTranslator.__trnslt_classes(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('ClassName', '', nxtShortString, 64, 0, True);
        AddField('Control', '', nxtBoolean, 0, 0, True);
        AddField('WinControl', '', nxtBoolean, 0, 0, True);
        AddField('ClassPath', '', nxtNullString, 512, 0, True);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('PK', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('UK_ClassName', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('ClassName'), TnxTextKeyFieldDescriptor) as TnxTextKeyFieldDescriptor do
            IgnoreCase := True;
        DefaultIndex := GetIndexFromName('PK');
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;


procedure TDMfmTranslator.RestructureTable(aTablename:string; newdict : TnxServerDataDict);
var
  tmptable:TnxTable;
  dict : TnxDataDictionary;
  Mapper : TnxTableMapperDescriptor;
  done:boolean;
  TaskStatus : TnxTaskStatus;
  TaskInfo : TnxAbstractTaskInfo;
begin
      tmptable:=TnxTable.create(nil);
      try
          tmptable.database:=nxDBlmTranslate;
          tmptable.tablename:= aTablename;
          tmptable.open;
          dict:=TnxDataDictionary.create;
          try
              dict.assign(tmptable._Dictionary);
              tmptable.close;
              Mapper := TnxTableMapperDescriptor.Create;
              try
                 Mapper.MapAllTablesAndFieldsByName(dict, newdict, dlaBestFit);  // TnxDataLossAction = dlaFail,  dlaNull,  dlaBestFit
                 tmptable.RestructureTableEx(newdict,Mapper,taskinfo);
              finally
                 Mapper.free;
              end;
          finally
             dict.free;
          end;

          if assigned(taskinfo) then begin
              taskinfo.GetStatus(Done,TaskStatus);
              while not Done do begin
                taskinfo.GetStatus(Done,TaskStatus);
              end;
          end;
      finally
        if assigned(taskinfo) then taskinfo.free;
        tmptable.free;
      end;
end;

procedure TDMfmTranslator.DeleteTableColumn(table, column:string);
var
  dict : TnxServerDataDict;
  fdi : integer;
begin
  if not nxDBlmTranslate.TableExists(table,'') then exit;
  
  dict := TnxServerDataDict.Create;
  try
      nxDBlmTranslate.GetDataDictionary(table,'',dict);
      if dict<>nil then begin
          fdi := dict.FieldsDescriptor.GetFieldFromName(column);
          if fdi>-1 then begin
              dict.FieldsDescriptor.RemoveField(fdi);
              RestructureTable(table, dict);
          end;
      end;
  finally
      dict.free;
  end;
end;

function TDMfmTranslator.ForceTableColumn(table, column:string; aLocale:integer):boolean;
var
  newdict : TnxServerDataDict;
  fd : TnxFieldDescriptor;
begin
  result := false;   
  if not nxDBlmTranslate.TableExists(table,'') then exit;
  
  newdict := TnxServerDataDict.Create;
  try
      nxDBlmTranslate.GetDataDictionary(table,'',newdict);
      if newdict<>nil then begin
          if newdict.FieldsDescriptor.GetFieldFromName(column)=-1 then begin
              fd :=newdict.FieldsDescriptor.AddField(column, '', nxtWideString, 50, 0, False);
              with fd.AddLocaleDescriptor(TnxLocaleDescriptor) do begin
                Locale := aLocale; { Portuguese }
                Flags := $00010002;
                IgnoreKanaType := True;
                IgnoreNonSpace := True;
                OverrideStorageCodePage := CP_UTF8; 
              end;
              RestructureTable(table, newdict);
              result := true;
          end;
      end;

  finally
      newdict.free;
  end;
end;


function TDMfmTranslator.GetActiveLanguages(aLangCode:string):TLanguageInfoList;
begin
    result := GetLanguages(aLangCode);
end;

function TDMfmTranslator.GetInstalledLanguagesButNotDefault(aLangCode:string):TLanguageInfoList;
begin
    result := GetLanguages(aLangCode,true, false, false);
end;

function TDMfmTranslator.GetInstalledLanguagesButNotEnglish(aLangCode:string):TLanguageInfoList;
begin
    result := GetLanguages(aLangCode,true, false, true, false);
end;

function TDMfmTranslator.GetActiveLanguagesButNotDefault(aLangCode:string):TLanguageInfoList;
begin
    result := GetLanguages(aLangCode,false, false, false);
end;

function TDMfmTranslator.GetActiveLanguagesButNotEnglish(aLangCode:string):TLanguageInfoList;
begin
    result := GetLanguages(aLangCode,false, false, true, false);
end;

function TDMfmTranslator.GetInstalledLanguages(aLangCode:string):TLanguageInfoList;
begin
    result := GetLanguages(aLangCode, true);
end;

function TDMfmTranslator.GetAllLanguages(aLangCode:string):TLanguageInfoList;
begin
    result := GetLanguages(aLangCode, true, true);
end;

function TDMfmTranslator.GetLanguages(aLangCode:string; const installed:boolean = false; const all:boolean = false; const default:boolean = true; const english:boolean = true):TLanguageInfoList;
var
    lcid : dword;
    langIds : string;
    i, k : integer;
    fn, s : string;
    li : TLanguageInfo;
    dict : TnxServerDataDict;
    ok : boolean;
begin
    result := TLanguageInfoList.create;
    result.Duplicates := dupIgnore;
    result.Sorted := true;

    lcid := lcidForLangCode(aLangCode);
    if lcid=0 then exit;

    if not nxDBlmTranslate.TableExists('trnslt_languages','') then exit;

    if not all then begin
        dict := TnxServerDataDict.Create;
        try
            nxDBlmTranslate.GetDataDictionary('trnslt_languages','',dict);
            for i:=0 to dict.FieldsDescriptor.FieldCount - 1 do begin
                 fn := dict.FieldsDescriptor.FieldDescriptor[i].Name;
                 s := '';
                 if  copy(fn, 1,2) = 'LD' then begin
                      fn := copy(fn, 3, 50);
                      for k:=1 to length(fn) do
                          if not( fn[k] in ['0'..'9']) then break
                          else s := s + fn[k];
                      langIds := langIds + s + ', ';
                 end;
            end;
            if length(langIds)>0 then Setlength(langIds, length(langIds)-2);
        finally
            dict.free;
        end;
    end;

    ok := false;
    dict := TnxServerDataDict.Create;
    try
        nxDBlmTranslate.GetDataDictionary('trnslt_languages','',dict);
        for i:=0 to dict.FieldsDescriptor.FieldCount - 1 do begin
             fn := dict.FieldsDescriptor.FieldDescriptor[i].Name;
             s := '';
             if  sametext('LD'+inttostr(lcid)+ aLangCode, fn) then begin
                  ok := true;
                  break;
             end;
        end;
    finally
        dict.free;
    end;

    if ok then begin

        if not all then begin
            if length(langIds)=0 then begin
                GActiveLangCode := GProgramLangCode;
                exit;
            end else
            nxQuery1.SQL.Text := 'SELECT lcid, ativo, GCode, LCode, LangCode, "default", isoCharSet, CharSetName, CharSetValue, "LD'+inttostr(lcid)+ aLangCode + '" as Nome FROM "trnslt_languages" where "lcid" in ('+langIds+')'
        end else  begin
            nxQuery1.SQL.Text := 'SELECT lcid, ativo, GCode, LCode, LangCode, "default", isoCharSet, CharSetName, CharSetValue, "LD'+inttostr(lcid)+ aLangCode + '" as Nome FROM "trnslt_languages"';
        end;

        try
            nxQuery1.Open;
            while not nxQuery1.Eof do begin
                if nxQuery1.FieldByName('ativo').AsBoolean or installed then begin
                    li := TLanguageInfo.create;
                    li.LCID  := nxQuery1.FieldByName('lcid').AsInteger;
                    li.GCode := nxQuery1.FieldByName('GCode').AsString;
                    li.LCode := nxQuery1.FieldByName('LCode').AsString;
                    li.LangCode := nxQuery1.FieldByName('LangCode').AsString;
                    li.groupdefault  := nxQuery1.FieldByName('default').AsBoolean;
                    li.isoCharSet    := nxQuery1.FieldByName('isoCharSet').AsString;
                    li.CharSetName   := nxQuery1.FieldByName('CharSetName').AsString;
                    li.CharSetValue  := nxQuery1.FieldByName('CharSetValue').AsInteger;
                    li.Name          := nxQuery1.FieldByName('Nome').AsString;

                    if not sametext(li.LangCode, GProgramLangCode) or (default) then begin

                        if (english) or not(SameText(li.LangCode,'en-us')) then  begin
                            result.addObject(li.Name, li);

                            if sametext(li.LangCode, GActiveLangCode) then
                                GActiveLangName  := li.Name;
                        end;

                    end;
                end;
                nxQuery1.Next;
            end;
            nxQuery1.Close;
        except
            on e:exception do begin
                if (e is EnxDatabaseError) and (EnxDatabaseError(e).ErrorCode = 15520) then
                    gLog.Log(self, [lcXlate], 'GetLanguages: LD'+inttostr(lcid)+ aLangCode+ ' não existe')
                else
                    gLog.Log(self, [lcXlate], 'GetLanguages: '+e.message);
            end;
        end;
    end else
        raise eLCIDnaoimplementado.Create('LCID não implementado');
end;


function  TDMfmTranslator.GetLangCodeByName(aLangName:string):string;
var
    i : integer;
    newLanguage : TLanguageInfo;
begin
    newLanguage := nil;

    for i:=0 to GInstalledLanguages.count-1 do
        if SameText(TLanguageInfo(GInstalledLanguages.Objects[i]).Name, aLangName) then
             newLanguage :=  TLanguageInfo(GInstalledLanguages.Objects[i]);
    if newLanguage<>nil then begin
         result := newLanguage.LangCode;
    end;
end;

function TDMfmTranslator.TranslateResources(const aObj: TObject; var Translated:boolean):boolean;
begin
    Translated := false;
    result := Translator.TranslateResources(aObj, translated);
    gLog.ForceLogWrite;
end;

{function cadTrans(S: String; const Parameters: String = ''): WideString;
begin
  if DMfmTranslator<>nil then
     Result := DMfmTranslator.cadTrans(S, Parameters)
  else
     Result := S;
end;

function TDMfmTranslator.cadTrans(S: String; const Parameters: String = ''): WideString;
begin
  Result := S;
  nexTranslator(nil, '', '', '', Result);
end;
}

procedure  TDMfmTranslator.SetDefaultTranslation(const aPath, aMd5A, aTextToTranslate:string);
begin
    nxQuery1.SQL.Text := 'SELECT "Path" FROM "trnslt_'+ GProgramLangCode +'" where "Path" = :Path';
    nxQuery1.ParamByName('Path').value := aPath;
    nxQuery1.Open;
    if nxQuery1.RecordCount=0 then begin
        nxQuery1.Close;
        nxQuery1.SQL.Text := 'insert into "trnslt_'+ GProgramLangCode +'" (tradtext, "Path") values (:tradtext,:Path)';
        nxQuery1.ParamByName('Path').value   := aPath;
        nxQuery1.ParamByName('tradtext').value   := aTextToTranslate;
        nxQuery1.ExecSQL;
    end else
        nxQuery1.Close;
end;

procedure  TDMfmTranslator.SetDefaultConstTranslation(const amd5ConstPath, aUnit, aVersion, aConstName, aOriginalLang, aTextToTranslate:string);
begin
    nxQuery1.SQL.Text := 'SELECT md5ConstPath FROM "trnslt_C_'+aOriginalLang+'" where md5ConstPath=:md5ConstPath';
    nxQuery1.ParamByName('md5ConstPath').value := amd5ConstPath;
    nxQuery1.Open;
    if nxQuery1.RecordCount=0 then begin
        nxQuery1.Close;

        gLog.Log(self, [lcXlate], 'SetDefaultConstTranslation: '+aUnit+', '+aConstName);

        InsertConstTranslationRecord(aOriginalLang, amd5ConstPath, aUnit, aVersion, aConstName, aOriginalLang, aTextToTranslate);

    end else
        nxQuery1.Close;
end;

procedure  TDMfmTranslator.InsertConstTranslationRecord(const aLangCode, amd5ConstPath, aUnit, aVersion, aConstName, aOriginalLang, aTextToTranslate:string);
var
    fv : TVerInfo;
    fld: TBytesField;
    val: variant;
begin
        nxQuery1.SQL.Text := 'insert into "trnslt_C_'+aLangCode+'" (Version, Unit, UVersion, ConstName, originalLang, tradtext) values (:Version, :Unit, :UVersion, :ConstName, :originalLang, :tradtext)';
        fld := TBytesField.Create(self);
        try
            nxQuery1.ParamByName('Version').DataType :=  ftBytes;
            nxQuery1.ParamByName('Version').size := 8;
            val := VarArraycreate([0,7], varByte);
            fv := VersionInfo.FileVersion;
            val[0]:=lo(fv[1]);
            val[1]:=hi(fv[1]);
            val[2]:=lo(fv[2]);
            val[3]:=hi(fv[2]);
            val[4]:=lo(fv[3]);
            val[5]:=hi(fv[3]);
            val[6]:=lo(fv[4]);
            val[7]:=hi(fv[4]);
            nxQuery1.ParamByName('Version').AssignFieldValue(fld,val);
            nxQuery1.ParamByName('Unit').value   := aUnit;
            nxQuery1.ParamByName('UVersion').value   := aVersion;
            nxQuery1.ParamByName('ConstName').value  := aConstName;
            nxQuery1.ParamByName('originalLang').value  := aOriginalLang; //sametext(aOriginalLang,FTranslateToLangCode);
            nxQuery1.ParamByName('tradtext').value   := aTextToTranslate;
            nxQuery1.ExecSQL;
        finally
            fld.free;
        end;

end;

procedure  TDMfmTranslator.UpdateConstTranslationRecord(const aLangCode,  amd5ConstPath, aUnit, aVersion, aConstName, aOriginalLang, aTextToTranslate:string);
var
    fv : TVerInfo;
    fld: TBytesField;
    val: variant;
begin
        nxQuery1.SQL.Text := 'update "trnslt_C_'+aLangCode+'" set Version=:Version, Unit=:Unit, UVersion=:UVersion, ConstName=:ConstName, originalLang=:originalLang, tradtext=:tradtext where md5ConstPath=:md5ConstPath';
        fld := TBytesField.Create(self);
        try
            nxQuery1.ParamByName('Version').DataType :=  ftBytes;
            nxQuery1.ParamByName('Version').size := 8;
            val := VarArraycreate([0,7], varByte);
            fv := VersionInfo.FileVersion;
            val[0]:=lo(fv[1]);
            val[1]:=hi(fv[1]);
            val[2]:=lo(fv[2]);
            val[3]:=hi(fv[2]);
            val[4]:=lo(fv[3]);
            val[5]:=hi(fv[3]);
            val[6]:=lo(fv[4]);
            val[7]:=hi(fv[4]);
            nxQuery1.ParamByName('Version').AssignFieldValue(fld,val);
            nxQuery1.ParamByName('Unit').value   := aUnit;
            nxQuery1.ParamByName('UVersion').value   := aVersion;
            nxQuery1.ParamByName('ConstName').value  := aConstName;
            nxQuery1.ParamByName('originalLang').value  := aOriginalLang; //sametext(aOriginalLang,FTranslateToLangCode);
            nxQuery1.ParamByName('tradtext').value   := aTextToTranslate;
            nxQuery1.ParamByName('md5ConstPath').value   := amd5ConstPath;
            nxQuery1.ExecSQL;
        finally
            fld.free;
        end;

end;



function  TDMfmTranslator.GetTranslationByMd5DefLang(const aMD5, aTranslateToLangCode, aTextToTranslate:string; var Translated:boolean):WideString;
var
    //bs : TStream;
    f : TField;
    FieldBuffer: TBlobByteData;
begin
    result := '';
    nxQuery1.SQL.Text := 'SELECT tradtext FROM "trnslt_'+ aTranslateToLangCode +'" where md5DefLang = :md5DefLang';
    nxQuery1.ParamByName('md5DefLang').value := aMD5;
    nxQuery1.Open;
    if nxQuery1.RecordCount=1 then begin
        f := nxQuery1.FieldByName('tradtext');
        if not f.IsNull then begin
            nxQuery1.GetBlobFieldData(f.FieldNo, FieldBuffer);
            SetLength(FieldBuffer,Length(FieldBuffer)+1);
            FieldBuffer[Length(FieldBuffer)-1] := 0;
            result := pChar(FieldBuffer);
            Translated := true;
        end;
        //bs := TStream( nxQuery1.CreateBlobStream(f,bmRead) );
        //bs.Seek(0,0);
        //result := TnxMemoField(f).AsWideString;
        //bs.Free;
    end;
    nxQuery1.Close;
end;

function  TDMfmTranslator.GetTranslationByMd5CompPath(const aPath, aTranslateToLangCode, aTextToTranslate:string):WideString;
var
    bs : TStream;
    f : TField;
begin
    result := '';
    nxQuery1.SQL.Text := 'SELECT tradtext FROM "trnslt_'+ aTranslateToLangCode +'" where md5CompPath = :md5CompPath';
    nxQuery1.ParamByName('md5CompPath').value := uMD5.H(aPath);
    nxQuery1.Open;
    if nxQuery1.RecordCount=1 then begin
        f := nxQuery1.FieldByName('tradtext');
        bs := TStream( nxQuery1.CreateBlobStream(f,bmRead) );
        bs.Seek(0,0);
        result := TnxMemoField(f).AsWideString;
        bs.Free;
    end;
    nxQuery1.Close;
end;

function  TDMfmTranslator.GetOriginalTextForCompPath(const aMd5Path:string):WideString;
var
    bs : TStream;
    f : TField;
begin
    result := '';
    nxQuery1.SQL.Text := 'SELECT tradtext FROM "trnslt_'+ GProgramLangCode +'" where md5CompPath = :md5CompPath';
    nxQuery1.ParamByName('md5CompPath').value := aMd5Path;
    nxQuery1.Open;
    if nxQuery1.RecordCount=1 then begin
        f := nxQuery1.FieldByName('tradtext');
        bs := TStream( nxQuery1.CreateBlobStream(f,bmRead) );
        bs.Seek(0,0);
        result := TnxMemoField(f).AsWideString;
        bs.Free;
    end;
    nxQuery1.Close;
end;

function  TDMfmTranslator.GetOriginalConstTextForCompPath(const aMd5Path, langCode:string):WideString;
var
    bs : TStream;
    f : TField;
begin
    result := '';
    nxQuery1.SQL.Text := 'SELECT tradtext FROM "trnslt_C_'+ langCode +'" where md5ConstPath = :md5ConstPath';
    nxQuery1.ParamByName('md5ConstPath').value := aMd5Path;
    nxQuery1.Open;
    if nxQuery1.RecordCount=1 then begin
        f := nxQuery1.FieldByName('tradtext');
        bs := TStream( nxQuery1.CreateBlobStream(f,bmRead) );
        bs.Seek(0,0);
        result := TnxMemoField(f).AsWideString;
        bs.Free;
    end;
    nxQuery1.Close;
end;

function TDMfmTranslator.MakeClassPath(const aObj: TObject):string;
var
  ClassRef: TClass;
begin
  result := '';
  ClassRef := aObj.ClassType;
  while ClassRef <> nil do  begin
    result := result + '.' +  ClassRef.ClassName;
    ClassRef := ClassRef.ClassParent;
  end;
end;


procedure TDMfmTranslator.SaveClass(const aObj: TObject);
var
    nxTable : TnxTable;
begin
    nxTable := TnxTable.Create(nil);
    nxTable.Database  := nxDBlmTranslate;
    nxTable.TableName := 'trnslt_classes';
    try
        nxTable.Open;
        if not nxTable.Locate('ClassName', aObj.ClassName, []) then begin
            nxTable.Append;
            nxTable.FieldByName('ClassName').value  := aObj.ClassName;
            nxTable.FieldByName('Control').value    := aObj.InheritsFrom(TControl);
            nxTable.FieldByName('WinControl').value := aObj.InheritsFrom(TWinControl);
            nxTable.FieldByName('ClassPath').value  := MakeClassPath(aObj);
            nxTable.Post;
        end;
        nxTable.Close;
    finally
        nxTable.Free;
    end;
end;

class function TDMfmTranslator.getComponentPathFromObject(const bObj: TObject):string;
var
    compowner : TComponent;
begin
    result := '';
    if not bObj.InheritsFrom(TComponent) then exit;

    result := TComponent(bObj).name;
    compowner := TComponent(bObj).Owner;
    while (compowner<>nil) do begin
        if compowner.name<>'' then
           result := compowner.name + '.' + result
        else
        if compowner.classtype<>TApplication then
           result := '(' + compowner.classname + ').' + result;

        if compowner.InheritsFrom(TForm)
        then break;

        //if compowner.InheritsFrom(TForm) and Translator.isFormRegistered(compowner)
        //then break;

        compowner := compowner.Owner;
    end;
    result := lowercase(result);

end;


function TDMfmTranslator.getFullPathFromCompName(const aObj: TObject; const aFormName, aObjName, aPropertyName: String): String;
begin
    //result := '';
    //if trim(aFormName)<>'' then
    //     result := result +aFormName + '.';
    //if (trim(aObjName)<>'') and not sametext(aObjName,aFormName) then
    //     result := result + aObjName + '.';
    result := getComponentPathFromObject(aObj)+ '.';
    if trim(aPropertyName)<>'' then
        result := result  + aPropertyName + '.';
    if Length(result)>0 then
        SetLength(result, Length(result)-1);
    result := lowercase(result);
end;

function TDMfmTranslator.SavePath(const aObj: TObject; const aFormName, aObjName, aPropertyName: String; TextToTranslate: WideString): String;
var
    nxTable : TnxTable;
    bs : TStream;
    f : TField;
    fv : TVerInfo;
begin
    result := getFullPathFromCompName(aObj, aFormName, aObjName, aPropertyName);
    try
        if result <> '' then begin

            nxTable := TnxTable.Create(nil);
            nxTable.Database  := nxDBlmTranslate;
            nxTable.TableName := 'trnslt_path';
            try
                nxTable.Open;
                if not nxTable.Locate('md5CompPath', uMD5.H(result), []) then begin
                    gLog.Log(self, [lcXlate], 'SavePath: '+result);

                    nxTable.Append;
                    nxTable.FieldByName('Path').value := result;
                    //nxTable.FieldByName('md5DefLang').value := uMD5.H(result);
                    //nxTable.FieldByName('md5CompPath').value := uMD5.H(result);
                    fv := VersionInfo.FileVersion;
                    nxTable.FieldByName('Version').SetData(@fv);

                    f := nxTable.FieldByName('defaultText');
                    bs := TStream( nxTable.CreateBlobStream(f,bmWrite) );
                    TnxMemoField(f).AsWideString := TextToTranslate;
                    bs.Free;

                    try
                        nxTable.Post;
                    except
                       on e:exception do
                           gLog.Log(Self, [lcExcept], 'SavePath: ' + aFormName + '.' + aObjName + '.' + aPropertyName + ' (' + VersionInfo.AsString + ') ' + trim(result))
                    end;
                end;
                nxTable.Close;
            finally
                nxTable.Free;
            end;

        end;
    except
       on e:exception do
         doLogError ( 'SavePath '+ #13#10 + result + #13#10 + TextToTranslate + #13#10 + e.Message);
    end;
end;

procedure TDMfmTranslator.nexTranslatorResource(const aUnit, aVersion, aConstName, aOriginalLang: String; var TextToTranslate:string; var Translated:boolean);
var
    //bs : TStream;
    f : TField;
    //ok : boolean;
    Path : string;
    toLang, fromLang :String;
    FieldBuffer: TBlobByteData;
    TextToTranslateA :string;
begin
    if (trim(aUnit)='') or (trim(aVersion)='') or (trim(aConstName)='') then exit;
    toLang   := FTranslateToLangCode;
    fromLang := FTranslateFromLangCode;
    TextToTranslateA := TextToTranslate;
    
    Path := uMD5.H(aUnit + aVersion + aConstName);
    SetDefaultConstTranslation( Path, aUnit, aVersion, aConstName, aOriginalLang, TextToTranslate);

    nxQuery1.SQL.Text := 'select tradtext from "trnslt_C_'+ toLang +'" where md5ConstPath=:md5ConstPath';
    nxQuery1.ParamByName('md5ConstPath').value := Path;
    nxQuery1.Open;
    if nxQuery1.RecordCount=1 then begin
        f := nxQuery1.FieldByName('tradtext');
        if not f.IsNull then begin
            nxQuery1.GetBlobFieldData(f.FieldNo, FieldBuffer);
            SetLength(FieldBuffer,Length(FieldBuffer)+1);
            FieldBuffer[Length(FieldBuffer)-1] := 0;
            TextToTranslate := pChar(FieldBuffer);

            gLog.Log(Self, [lcXlateDetail], 'Translate Resource ->'+toLang+ ' ' + aUnit + '(' + aVersion + ').' + aConstName + ' ' + trim(TextToTranslateA) + '->' + trim(TextToTranslate));
        end;
    end;
    nxQuery1.Close;

end;

procedure TDMfmTranslator.checkTranslationDBValues(const aObj: TObject; const aFormName, aObjName, aPropertyName: String; var TextToTranslate: WideString; var Translated:boolean);
var
    md5A : TDigestStr;
    wTextToTranslate :  PWideChar;
    lTextToTranslate : WideString;
    ok : boolean;
    Path : string;
    TextToTranslateA : string;
begin
    ok := false;
    TextToTranslateA := TextToTranslate;
    try
        SaveClass(aObj);
        Path := SavePath(aObj, aFormName, aObjName, aPropertyName, TextToTranslate);

        TextToTranslate := trim(TextToTranslate);
        if TextToTranslate='' then exit;

        getmem(wTextToTranslate, length(TextToTranslate)*2+1);
        try
           lTextToTranslate := ansilowercase(TextToTranslate);
           wTextToTranslate := StringToWideChar(lTextToTranslate, wTextToTranslate, length(lTextToTranslate)*2);
           md5A := uMD5.HBuffer2(wTextToTranslate, length(TextToTranslate)*2);
        finally
           freemem(wTextToTranslate);
        end;

        ok := nexTranslatorPath(Path, TextToTranslate, Translated);
        if not ok then begin
            if (FTranslateToLangCode <> FTranslateFromLangCode) then begin
                if (FTranslateFromLangCode = GProgramLangCode) then begin
                   nxQuery1.SQL.Text := 'SELECT md5DefLang FROM "trnslt_'+ FTranslateFromLangCode +'" where md5DefLang = :md5DefLang';
                   nxQuery1.ParamByName('md5DefLang').value := md5A;
                end else begin
                   nxQuery1.SQL.Text := 'SELECT md5DefLang  FROM "trnslt_'+ FTranslateFromLangCode +'" where md5Trad = :md5Trad';
                   nxQuery1.ParamByName('md5Trad').value := md5A;
                end;
                nxQuery1.Open;
                if nxQuery1.RecordCount=0 then begin
                    nxQuery1.Close;
                end else begin
                    md5A := nxQuery1.FieldByName('md5DefLang').AsString;
                    nxQuery1.Close;
                    TextToTranslate := GetTranslationByMd5DefLang(md5A, FTranslateToLangCode, TextToTranslate, Translated);
                    if aObjName<>'' then
                       gLog.Log(Self, [lcXlateDetail], 'Translate '+FTranslateFromLangCode+'->'+FTranslateToLangCode+ ' ' + aFormName + '.' + aObjName + '.' + aPropertyName + ' ' + trim(TextToTranslateA) + '->' + trim(TextToTranslate))
                    else
                       gLog.Log(Self, [lcXlateDetail], 'Translate '+FTranslateFromLangCode+'->'+FTranslateToLangCode+ ' ' + aFormName + '.' + aPropertyName + ' ' + trim(TextToTranslateA) + '->' + trim(TextToTranslate));
                    ok := true;
                end;
            end;
            if (FTranslateToLangCode = GProgramLangCode) and (not ok) then
                SetDefaultTranslation(path, md5A, TextToTranslate);
        end;

    except
       on e:exception do
         doLogError ( 'nexTranslator '+ #13#10 + aFormName + '.' + aObjName + '.' + aPropertyName + #13#10 + TextToTranslate + #13#10 + md5A + #13#10 + e.Message);
    end;
    Translated := Translated or ok or (FTranslateToLangCode = FTranslateFromLangCode) ;
end;

procedure TDMfmTranslator.nexTranslator(const aObj: TObject; const aFormName, aObjName, aPropertyName: String; var TextToTranslate: WideString; var Translated:boolean);
var
    md5A : TDigestStr;
    wTextToTranslate :  PWideChar;
    lTextToTranslate : WideString;
    ok : boolean;
    Path : string;
    TextToTranslateA : string;
begin
    Translated := true;
    TextToTranslateA := TextToTranslate;
    try
        SaveClass(aObj);
        Path := SavePath(aObj, aFormName, aObjName, aPropertyName, TextToTranslate);

        TextToTranslate := trim(TextToTranslate);
        if TextToTranslate='' then exit;

        Translated := false;

        getmem(wTextToTranslate, length(TextToTranslate)*2+1);
        try
           lTextToTranslate := ansilowercase(TextToTranslate);
           wTextToTranslate := StringToWideChar(lTextToTranslate, wTextToTranslate, length(lTextToTranslate)*2);
           md5A := uMD5.HBuffer2(wTextToTranslate, length(TextToTranslate)*2);
        finally
           freemem(wTextToTranslate);
        end;

        ok := nexTranslatorPath(Path, TextToTranslate, Translated);
        if not ok then begin
            if (FTranslateToLangCode <> FTranslateFromLangCode) then begin
                if (FTranslateFromLangCode = GProgramLangCode) then begin
                   nxQuery1.SQL.Text := 'SELECT md5DefLang FROM "trnslt_'+ FTranslateFromLangCode +'" where md5DefLang = :md5DefLang';
                   nxQuery1.ParamByName('md5DefLang').value := md5A;
                end else begin
                   nxQuery1.SQL.Text := 'SELECT md5DefLang  FROM "trnslt_'+ FTranslateFromLangCode +'" where md5Trad = :md5Trad';
                   nxQuery1.ParamByName('md5Trad').value := md5A;
                end;
                nxQuery1.Open;
                if nxQuery1.RecordCount=0 then begin
                    nxQuery1.Close;
                end else begin
                    md5A := nxQuery1.FieldByName('md5DefLang').AsString;
                    nxQuery1.Close;
                    TextToTranslate := GetTranslationByMd5DefLang(md5A, FTranslateToLangCode, TextToTranslate, Translated);
                    if aObjName<>'' then
                       gLog.Log(Self, [lcXlateDetail], 'Translate '+FTranslateFromLangCode+'->'+FTranslateToLangCode+ ' ' + aFormName + '.' + aObjName + '.' + aPropertyName + ' ' + trim(TextToTranslateA) + '->' + trim(TextToTranslate))
                    else
                       gLog.Log(Self, [lcXlateDetail], 'Translate '+FTranslateFromLangCode+'->'+FTranslateToLangCode+ ' ' + aFormName + '.' + aPropertyName + ' ' + trim(TextToTranslateA) + '->' + trim(TextToTranslate));
                    ok := true;
                end;
            end;
            if (FTranslateToLangCode = GProgramLangCode) and (not ok) then
                SetDefaultTranslation(Path, md5A, TextToTranslate);
        end;

    except
       on e:exception do
         doLogError ( 'nexTranslator '+ #13#10 + aFormName + '.' + aObjName + '.' + aPropertyName + #13#10 + TextToTranslate + #13#10 + md5A + #13#10 + e.Message);
    end;
   //Translated := Translated or ok or (FTranslateToLangCode = FTranslateFromLangCode) ;
end;

function  TDMfmTranslator.nexTranslatorPath(const aPath: String; var TextToTranslate: WideString; var Translated:boolean):boolean;
begin
    result := false;
    Translated := false;
    if (FTranslateToLangCode = FTranslateFromLangCode) then exit;

    nxQuery1.SQL.Text := 'SELECT md5CompPath FROM "trnslt_'+ FTranslateFromLangCode +'" where md5CompPath = :md5CompPath';
    nxQuery1.ParamByName('md5CompPath').asstring := uMD5.H(aPath);
    nxQuery1.Open;
    if nxQuery1.RecordCount=0 then begin
        nxQuery1.Close;
    end else begin
        nxQuery1.Close;

        if (FTranslateFromLangCode <> GProgramLangCode) then begin
             TextToTranslate := GetOriginalTextForCompPath(uMD5.H(aPath));
             result := true;
        end else begin
             TextToTranslate := GetTranslationByMd5CompPath(aPath, FTranslateToLangCode, TextToTranslate);
             result := true;
             Translated := true;
        end;
    end;
end;

procedure TDMfmTranslator.doLogError(s:string);
begin
    gLog.Log(self, [lcExcept], 'doLogError: '+s);
    nxQuery1.SQL.Text := 'insert into "trnslt_error" (msg) values (:msg)';
    nxQuery1.ParamByName('msg').value := s;
    nxQuery1.execsql;
end;

procedure TDMfmTranslator.cadChangeCharset(const aObj: TObject);
begin
    if aObj.InheritsFrom(TControl) then
        TLabel(aObj).Font.Charset := CharSetValueForLangCode(GActiveLangCode);
end;

procedure TDMfmTranslator.nxTranslatorMonitorDefTextModified(Sender:TObject; aMd5Trad_old, aMd5Trad_new:string );
var
    ls : TLanguageInfoList;
    i : integer;
    nxQuery : TnxQuery;
    mLangCode : string;
begin
    try
        nxQuery := TnxQuery.Create(nil);
        nxQuery.Database := nxDBlmTranslate;
        ls := GetActiveLanguagesButNotDefault(GDefaultLangCode);
        try
            for i:=0 to ls.Count-1 do begin
                 mLangCode := ls.LanguageInfo[i].LangCode;
                 nxQuery.SQL.Text := 'update "trnslt_'+ mLangCode + '"' +
                                     ' set md5DefLang=:Md5Trad_new' +
                                     ' where md5DefLang=:Md5Trad_old';
                 nxQuery.ParamByName('Md5Trad_old').Value := aMd5Trad_old;
                 nxQuery.ParamByName('Md5Trad_new').Value := aMd5Trad_new;
                 nxQuery.ExecSQL;
            end;
        finally
            ls.Free;
            nxQuery.Free;
        end;
    except
       on e:exception do
         doLogError ( 'nxTranslatorMonitorDefTextModified '+ #13#10 + mLangCode + #13#10 + 'n:' +aMd5Trad_new + #13#10 + 'o:' + aMd5Trad_old + #13#10 + e.Message);
    end;
end;

procedure TDMfmTranslator.nxTranslatorMonitorOnConstNew(Sender:TObject; aMd5Path, aUnit, aVersion, aConstName, aOriginalLang, aTradText :string );
var
    ls : TLanguageInfoList;
    i : integer;
    nxTable : TnxTable;
    mLangCode : string;
begin
    try
        nxTable := TnxTable.Create(nil);
        nxTable.Database := nxDBlmTranslate;
        ls := GetActiveLanguages(GDefaultLangCode);   
        try
            for i:=0 to ls.Count-1 do begin
                 mLangCode := ls.LanguageInfo[i].LangCode;
                 if sametext(aOriginalLang, mLangCode) then continue;
                 
                 nxTable.TableName := 'trnslt_C_'+ mLangCode;
                 nxTable.Open;
                 nxTable.Append;
                 nxTable.FieldByName('Unit').value := aUnit;
                 nxTable.FieldByName('UVersion').value := aVersion;
                 nxTable.FieldByName('ConstName').value := aConstName;
                 nxTable.FieldByName('originalLang').value  := aOriginalLang; //not aOriginalLang;
                 nxTable.FieldByName('tradtext').value   := aTradText;
                 nxTable.Post;
                 nxTable.Close;
            end;
        finally
            ls.Free;
            nxTable.Free;
        end;
    except
       on e:exception do
         doLogError ( 'nxTranslatorMonitorOnConstNew '+ #13#10 + mLangCode + #13#10 + aMd5Path+ #13#10 + aUnit + ' ' + aVersion + #13#10 + aConstName + #13#10 + e.Message);
    end;
end;


procedure TDMfmTranslator.nxTranslatorMonitorOnConstDelete(Sender:TObject; aMd5Path:string );
var
    ls : TLanguageInfoList;
    i : integer;
    nxQuery : TnxQuery;
    mLangCode : string;
begin
    try
        nxQuery := TnxQuery.Create(nil);
        nxQuery.Database := nxDBlmTranslate;
        ls := GetActiveLanguagesButNotEnglish(GDefaultLangCode);
        try
            for i:=0 to ls.Count-1 do begin
                 mLangCode := ls.LanguageInfo[i].LangCode;
                 nxQuery.SQL.Text := 'delete from "trnslt_C_'+ mLangCode + '" where md5ConstPath=:aMd5Path';
                 nxQuery.ParamByName('aMd5Path').Value := aMd5Path;
                 nxQuery.ExecSQL;
            end;
        finally
            ls.Free;
            nxQuery.Free;
        end;
    except
       on e:exception do
         doLogError ( 'nxTranslatorMonitorOnConstDelete '+ #13#10 + mLangCode + #13#10 + aMd5Path + #13#10 + e.Message);
    end;
end;

procedure TDMfmTranslator.nxTranslatorMonitorOnDefTextNew(Sender:TObject; aMd5Text, aMd5Path, aMd5DefLang:string; aText:string );
var
    bs : TStream;
    f : TField;
    ls : TLanguageInfoList;
    i : integer;
    nxTable : TnxTable;
    mLangCode : string;
begin
    try
        nxTable := TnxTable.Create(nil);
        nxTable.Database := nxDBlmTranslate;
        ls := GetActiveLanguagesButNotDefault(GDefaultLangCode);
        try
            for i:=0 to ls.Count-1 do begin
                 mLangCode := ls.LanguageInfo[i].LangCode;
                 nxTable.TableName := 'trnslt_'+ mLangCode;
                 nxTable.IndexName := 'PK';
                 nxTable.Open;
                 nxTable.Append;
                 if aMd5Path='' then
                     nxTable.FieldByName('md5DefLang').value := aMd5Text
                 else
                     nxTable.FieldByName('md5DefLang').value := aMd5DefLang;
                 
                 f := nxTable.FieldByName('tradtext');
                 bs := TStream( nxTable.CreateBlobStream(f,bmWrite) );
                 TnxMemoField(f).AsWideString := aText;
                 bs.Free;

                 if aMd5Path<>'' then
                     nxTable.FieldByName('md5CompPath').value := aMd5Path;
                 nxTable.Post;
                 nxTable.Close;
            end;
        finally
            ls.Free;
            nxTable.Free;
        end;
    except
       on e:exception do
         doLogError ( 'nxTranslatorMonitorOnDefTextNew '+ #13#10 + mLangCode + #13#10 + aMd5Text + ' ' + aMd5Path + #13#10 + aMd5DefLang + #13#10 + aText + #13#10 + e.Message);
    end;
end;

procedure TDMfmTranslator.nxTranslatorMonitorOnDefTextDelete(Sender:TObject; aMd5Text, aMd5Path:string );
var
    ls : TLanguageInfoList;
    i : integer;
    nxQuery : TnxQuery;
    mLangCode : string;
begin
    try
        nxQuery := TnxQuery.Create(nil);
        nxQuery.Database := nxDBlmTranslate;
        ls := GetActiveLanguagesButNotDefault(GDefaultLangCode);
        try
            for i:=0 to ls.Count-1 do begin
                 mLangCode := ls.LanguageInfo[i].LangCode;
                 if aMd5Path <> '' then begin
                     nxQuery.SQL.Text := 'delete from "trnslt_'+ mLangCode + '" where md5CompPath=:Md5';
                     nxQuery.ParamByName('Md5').Value := aMd5Path;
                 end else begin
                     nxQuery.SQL.Text := 'delete from "trnslt_'+ mLangCode + '" where md5DefLang=:Md5';
                     nxQuery.ParamByName('Md5').Value := aMd5Text;
                 end;
                 nxQuery.ExecSQL;
            end;
        finally
            ls.Free;
            nxQuery.Free;
        end;
    except
       on e:exception do
         doLogError ( 'nxTranslatorMonitorOnDefTextDelete '+ #13#10 + mLangCode + #13#10 + aMd5Text + #13#10 + aMd5Path + #13#10 + e.Message);
    end;
end;

procedure TDMfmTranslator.nxTranslatorMonitorOnError(Sender:TObject; msg:string );
begin
    doLogError ( 'nxTranslatorMonitorOnError '+ #13#10 + msg );
end;

procedure TDMfmTranslator.applicationOnException(Sender: TObject; E: Exception);
begin
    gLog.Log(Self, [lcExcept], e.Message );
    ShowMessage(e.Message);
end;

procedure TDMfmTranslator.DataModuleCreate(Sender: TObject);
var
    retry : integer;
begin
    {$IFDEF TranslatorManager}
    GisTranslatorManager := true;
    {$ELSE}
    GisTranslatorManager := false;
    {$ENDIF}

    //GProgramLangCode := dm.tConfigProgramLangCode.AsString;
    GProgramLangCode := 'pt-br';

    //InicarLog;
    application.OnException := applicationOnException;
    FnxTranslatorMonitor    := TnxTranslatorMonitor.Create(Self);

    retry := 2;
    while retry > 0 do begin
        if not GisTranslatorManager then begin
            checkDBInstalation(GDBlmTranslatePath);

            nxSetSystemDatabaseFolder(GDBlmTranslatePath+'\sysdb');
            nxSElmTranslate.AliasHandler.Delete('nexTranslator');
            nxSElmTranslate.AliasHandler.Add('nexTranslator', GDBlmTranslatePath, True);



            FnxTranslatorMonitor.ServerEngine      := nxSElmTranslate;
            FnxTranslatorMonitor.OnDefTextModified := nxTranslatorMonitorDefTextModified;
            FnxTranslatorMonitor.OnDefTextNew      := nxTranslatorMonitorOnDefTextNew;
            FnxTranslatorMonitor.OnDefTextDelete   := nxTranslatorMonitorOnDefTextDelete;
            FnxTranslatorMonitor.OnConstNew        := nxTranslatorMonitorOnConstNew;
            FnxTranslatorMonitor.OnConstDelete     := nxTranslatorMonitorOnConstDelete;
            FnxTranslatorMonitor.OnError           := nxTranslatorMonitorOnError;

            FnxTranslatorMonitor.ProgramLangCode :=  GProgramLangCode;



            nxDBlmTranslate.aliasName := 'nexTranslator';  //2
            nxSElmTranslate.Active := true;
            nxServerCommandHandler1.ServerEngine := nxSElmTranslate;
            nxWinsockTransport1.CommandHandler := nxServerCommandHandler1;
            nxSharedMemoryTransport1.CommandHandler := nxServerCommandHandler1;
            nxSession1.ServerEngine := nxSElmTranslate;  //2

            nxSecurityMonitor1.Active := true;
            nxSession1.Active := True;
            nxDBlmTranslate.Open;
            nxServerCommandHandler1.Active := true;
            nxSharedMemoryTransport1.Active := true;

            nxWinsockTransport1.ListenAddresses.text := '127.0.0.1';
            nxWinsockTransport1.Active := true;
            FnxTranslatorMonitor.Active  := true;     //2

            nxRemoteServerEngine1.free;
            retry := 0;
        end else begin

            //nxRemoteServerEngine1.Transport := nxWinsockTransport2;
            nxRemoteServerEngine1.Transport := nxSharedMemoryTransport2;
            nxServerCommandHandler1.ServerEngine := nxRemoteServerEngine1;
            //nxWinsockTransport2.CommandHandler := nxServerCommandHandler1;
            //nxWinsockTransport2.servername := 'nexTranslator@localhost';
            nxSharedMemoryTransport2.CommandHandler := nxServerCommandHandler1;
            nxSharedMemoryTransport2.servername := '127.0.0.1';
            nxSession1.ServerEngine := nxRemoteServerEngine1;
            try
               nxRemoteServerEngine1.Active := true;
            except
               on e:exception do begin
                  if e is EnxPooledTransportException then begin
                      ForceDirectories( ExtractFilePath(application.ExeName) + 'DBlmTranslate');
                      dec(retry);
                      continue;
                  end;
                  gLog.Log(self,[lcExcept],e.message);
               end;
            end;

            nxDBlmTranslate.AliasName := 'nexTranslator';
            nxDBlmTranslate.Open;
            nxServerCommandHandler1.Active := true;
            nxSharedMemoryTransport2.Active := true;
            //nxWinsockTransport2.Active := true;
            retry := 0;
        end;
    end;

    nxSqlEngine1.Active := true;
    nxSession1.Active := true;

    //GStartUpLocaleId := 1033;
    //GStartUpLangCode := LangCodeForLCID(GStartUpLocaleId);
    //GActiveLangCode  := dm.tConfigProgramLangCode.AsString;
    //if GActiveLangCode='' then GActiveLangCode := 'pt-br';
    GActiveLangCode := 'es-mx';
    GStartUpLangCode := 'pt-br';

    //if not GisTranslatorManager then
    //    translator_Tables.BuildAndEvolveDatabase(nxDBlmTranslate);
    //else
        InitTranslator;


end;

procedure TDMfmTranslator.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
   if Msg.message = WM_TIMER then
      Handled := true;
end;


procedure TDMfmTranslator.doOnNoTranslation(Sender:TObject; const aComponent:TComponent);
//var
   //compname : string;
   //compowner : TComponent;
begin
        {compname := '';
        compowner := TComponent(aComponent).Owner;
        while (compowner<>nil) do begin
            if compowner.name<>'' then
               compname := compowner.name + '.' + compname
            else
               compname := '(' + compowner.classname + ').' + compname;
            compowner := compowner.Owner;
        end;
        compname := compname + TComponent(aComponent).name + ' ('+TComponent(aComponent).classname+')'; }

        //gLog.Log(Self, [lcXNoSuppor, lcXNoTrnslt], 'No transtalation for '+getComponentPathFromObject(aComponent)+ ' ('+aComponent.classname+')');


        //nexTranslator(TObject(aComponent), '', '', '', Result);
end;

procedure TDMfmTranslator.CreateFormsToTranslate;
var
  i,j : Integer;
  fc : TFrmBasePaiClass;
  formReg : TcadFormTranslatorReg;
  f  : TFrmBasePai;
  fl : TList;
  translated: boolean;
begin
  gLog.Log(self, [lcFrm2Xlate], 'TranslateResources '+inttostr(Translator.ResourceTranslators.Count));

  GStartUpLangCode := LangCodeForLCID(GStartUpLocaleId);
  GProgramLangCode := 'pt-br';
  if GActiveLangCode='' then GActiveLangCode := 'pt-br';
  FTranslateToLangCode := GProgramLangCode;
  FTranslateFromLangCode := GProgramLangCode;
  
  Translator.TranslateResources(nil, translated);
  ApplicationEvents1.OnMessage := ApplicationEvents1Message;

  Translator.OnNoTranslation := doOnNoTranslation;
  Translator.TranslateProc   := checkTranslationDBValues;
  fl := TList.create;
  try
      gLog.Log(self, [lcFrm2Xlate], 'CreateFormsToTranslate number of Forms: '+inttostr(Translator.FormToTraslate.Count));
      for i := 0 to Translator.FormToTraslate.Count - 1 do begin
           formReg := TcadFormTranslatorReg(Translator.FormToTraslate[i]^);
           gLog.Log(self, [lcFrm2Xlate], inttostr(i+1) + ' - CreateFormsToTranslate: '+formReg.FClass.ClassName);
           try
               fc := TFrmBasePaiClass(formReg.FClass);
               for j := 0 to TForm(fc).ComponentCount - 1 do
                   if TForm(fc).Components[j].InheritsFrom(TTimer) then begin
                       TTimer(TForm(fc).Components[j]).OnTimer := nil;
                       TTimer(TForm(fc).Components[j]).Enabled := false;
                   end;
               f := fc.Create(Application);
               fl.add(f);
               application.ProcessMessages;
               gLog.ForceLogWrite;
           except
             on e:exception do
               gLog.Log(self, [lcExcept], 'CreateFormsToTranslate Error: '+e.Message);
           end;
      end;
      gLog.Log(self, [lcFrm2Xlate], 'CreateFormsToTranslate fim');

      application.ProcessMessages;

       for I := 0 to fl.Count - 1 do begin
            f := TFrmBasePai(fl[i]);
            gLog.Log(self, [lcFrm2Xlate], inttostr(i+1) + ' - FreeFormsToTranslate: '+f.ClassName);
            gLog.ForceLogWrite;
            try
                f.free;
                application.ProcessMessages;
            except
              on e:exception do
                gLog.Log(self, [lcExcept], 'CreateFormsToTranslate Error: '+e.Message);
            end;
       end;
  finally
       fl.Free;
  end;

  //for I := 0 to nxDBlmTranslate.TableCount-1 do
  //     nxDBlmTranslate.Tables[i].Close;

  nxDBlmTranslate.Close;
  nxSElmTranslate.Close;

  //halt(1);
end;


procedure TDMfmTranslator.InitTranslator;
var
    ok : boolean;
begin

    if GisTranslatorManager then begin
        FnxTranslatorMonitor.ServerEngine := nxSession1.ServerEngine;
        FnxTranslatorMonitor.OnDefTextModified := nxTranslatorMonitorDefTextModified;
        FnxTranslatorMonitor.OnDefTextNew      := nxTranslatorMonitorOnDefTextNew;
        FnxTranslatorMonitor.OnDefTextDelete   := nxTranslatorMonitorOnDefTextDelete;
        FnxTranslatorMonitor.OnConstNew        := nxTranslatorMonitorOnConstNew;
        FnxTranslatorMonitor.OnConstDelete     := nxTranslatorMonitorOnConstDelete;
        FnxTranslatorMonitor.OnError           := nxTranslatorMonitorOnError;

        FnxTranslatorMonitor.ProgramLangCode :=  GProgramLangCode;
        FnxTranslatorMonitor.Active  := true;
        nxServerCommandHandler1.Active  := true;
        {nxSecurityMonitor1.Active  := true;
        //nxSecurityMonitor1.AddUser('admin', 'pirulo', [stAdmin, stRead, stWrite] );
        nxSession1.AddAlias('nexTranslator', '.\DBlmTranslate');}


    end;
    //end else
    //    GActiveLangCode  := GStartUpLangCode;


    ok := false;
    while not ok do
    try
        GActiveLanguagesButNotDefault     := GetActiveLanguagesButNotDefault(GActiveLangCode);
        GInstalledLanguagesButNotDefault  := GetInstalledLanguagesButNotDefault(GActiveLangCode);
        GInstalledLanguagesButNotEnglish  := GetInstalledLanguagesButNotEnglish(GActiveLangCode);
        GActiveLanguages    := GetActiveLanguages(GActiveLangCode);
        GAllLanguages       := GetAllLanguages(GActiveLangCode);
        GInstalledLanguages := GetInstalledLanguages(GActiveLangCode);
        ok := true;
    except
        on e: exception do
        if e is eLCIDnaoimplementado then begin
            GActiveLangCode := GProgramLangCode;
        end else break;
    end;

    //if not GisTranslatorManager then
    checkTanslationDB;

    ActiveLanguagesMemTable;

    FTranslateFromLangCode := GProgramLangCode;
    FTranslateToLangCode   := GActiveLangCode;


    Translator.TranslateProc         := nexTranslator;
    Translator.ChangeCharsetProc     := cadChangeCharset;
    Translator.TranslateResourceProc := nexTranslatorResource;

    GTranslatorInitiated := true;

    GLog.Log(self, [lcFrm2Xlate], 'GTranslatorInitiated := true');
end;

procedure TDMfmTranslator.ActiveLanguagesMemTable;
var
    i: integer;
begin
    kbmMemTableActiveLaguages.Close;
    kbmMemTableActiveLaguages.EmptyTable;
    kbmMemTableActiveLaguages.Open;
    for i := 0 to GActiveLanguages.Count - 1 do begin
       kbmMemTableActiveLaguages.append;
       kbmMemTableActiveLaguagesLangCode.Value := GActiveLanguages[i].LangCode;
       kbmMemTableActiveLaguagesNome.Value := GActiveLanguages[i].Name;
       kbmMemTableActiveLaguages.Post;
    end;
end;


procedure TDMfmTranslator.ChangeLanguage(aLangCode:string);
var
    i : integer;
    newLanguage : TLanguageInfo;
    translated: boolean;
begin
    newLanguage := nil;
    FTranslateFromLangCode := GActiveLangCode;
    FTranslateToLangCode   := GActiveLangCode;

    for i:=0 to GInstalledLanguages.count-1 do
        if SameText(TLanguageInfo(GInstalledLanguages.Objects[i]).LangCode, aLangCode) then
             newLanguage :=  TLanguageInfo(GInstalledLanguages.Objects[i]);
    if newLanguage<>nil then begin
         GActiveLangCode  := newLanguage.LangCode;
         GInstalledLanguages := GetInstalledLanguages(GActiveLangCode);
         FTranslateToLangCode := GActiveLangCode;
    end;

    {$IFDEF TRADUTOR}
    if FTranslateToLangCode <> FTranslateFromLangCode then begin
        Translator.TranslateResources(nil, translated);
        if (Screen.ActiveForm<>nil) then
            TFrmBasePai(Screen.ActiveForm).TranstaleComponents;
        if (Application.MainForm<>nil) and (Application.MainForm<>Screen.ActiveForm) then
            TFrmBasePai(Application.MainForm).TranstaleComponents;
    end else
    if FTranslateToLangCode = GDefaultLangCode then
        Translator.TranslateResources(nil, translated);
    {$ENDIF}

    ActiveLanguagesMemTable;
end;

{procedure TDMfmTranslator.InicarLog;
var
    reg : TRegistry;
    LogToFile : boolean;
    RegKey, LogCategories, s : string;
    RegKeyExists      : boolean;
    i : integer;
begin
     if GisTranslatorManager then
        GProgramName := 'LogicMove Translator Manager'
     else
        GProgramName := 'LogicMove Client';

     reg := TRegistry.create;
     RegKeyExists := false;
     try
         with reg do begin
              RootKey := HKEY_CURRENT_USER;
              RegKey := '\Software\LogicMove\'+GProgramName;
              if openkey (RegKey, false) then begin
                   LogToFile                 := ReadBool   ('LogToFile');
                   GLogDirPath               := readString ('LogDirPath');
                   LogCategories             := ReadString ('LogCategories');
                   if GLogDirPath<>'' then
                       forcedirectories(GLogDirPath);
                   closekey;
                   RegKeyExists := true;
              end else begin
                   LogCategories  := 'lcExcept, lcInfo';
                   GLogDirPath := 'C:\Logs\';
                   forcedirectories(GLogDirPath);
                   LogToFile := true;
              end;
              gLog.LogDirPath := GLogDirPath;
              if GisTranslatorManager then
                gLog.Prefixo := 'LmTranslatorEd'
              else
                gLog.Prefixo := 'LmClient';
              gLog.LogCategoriesStr := LogCategories;
              gLog.LogToFile := LogToFile;
              gLog.OpenLogFile;
              gLog.Log( Self, [lcTrace], GProgramName + ' Loading Configuration');

              if not RegKeyExists then begin
                 gLog.Log( Self, [lcExcept], GProgramName + ' Chave de registro inexistente: HKEY_LOCAL_MACHINE' + RegKey );
                 if openkey (RegKey, true) then begin
                     WriteBool ('LogToFile', true);
                     WriteString ('LogDirPath', 'C:\Logs\');
                     writeString ('LogCategories', gLog.LogCategoriesStr);
                     gLog.Log( Self, [lcInfo], ' Valores básicos de registro gravados em: HKEY_LOCAL_MACHINE' + RegKey );
                     closekey;
                 end;
              end;
         end;

     finally
          reg.free;
     end;

     s := '';
     for I := 1 to paramcount - 1 do
         s := s + paramstr(i) + ' ';
     if trim(s)>'' then
         gLog.Log(self,[lcInfo], 'Parámetros: '+trim(s));

     VersionInfo.LoadVersionInfo;
     if trim(VersionInfo.AsString) <> '' then
        gLog.Log(self,[lcInfo], VersionInfo.AsString);
     if trim(VersionInfo.WindowsInfo.AsString) <> '' then
        gLog.Log(self,[lcInfo], 'Computador: ' + cadVersionInfo.ComputerName + #13#10 +
                                      'Sistema Operacional: ' + VersionInfo.WindowsInfo.AsString);
     gLog.Log(self, [lcInfo], VersionInfo.ProcessorInfo.AsString);
     gLog.Log(self, [lcInfo], VersionInfo.NetWorkInfo.AsString);
     // sera corrigido comparadando contra mac da licenca
     //GNetAdapter1HWAddress := VersionInfo.NetWorkInfo.NetAdapter1MAC;
     GComputerName := cadVersionInfo.ComputerName;

     GProgTitle := GProgramName +' '+ VersionInfo.ProgramDisplayShortVersion;
     GApplicationPath    := NormalizarFilePath(ExtractFilePath(Application.ExeName));
     GApplicationExeName := copy(Application.ExeName, length(GApplicationPath)+1, maxint);
     gLog.Log(self,[lcInfo], 'ApplicationPath: '+GApplicationPath);


     gLog.ForceLogWrite;
end; }


procedure TDMfmTranslator.DataModuleDestroy(Sender: TObject);
begin
    gLog.CloseLogFile;
    if FnxTranslatorMonitor<>nil then begin
        FnxTranslatorMonitor.Active  := false;
        FnxTranslatorMonitor.Free;
    end;
end;

initialization
    GStartUpLocaleId := GetUserDefaultLangID();


end.
