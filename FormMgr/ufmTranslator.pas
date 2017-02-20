unit ufmTranslator;

interface

uses
  Classes, Types, windows, SysUtils, Controls, ufmFrmBasePai, ufmTranslatorIgnoreList;


type
  TcadTranslatePropertyProc = procedure (const aObj: TObject; const aFormName, aObjName, aPropertyName: String; var TextToTranslate: WideString; var Translated:boolean) of Object;
  TcadTranslateResourcePropertyProc = procedure (const aUnit, aVersion, aConstName, aOriginalLang: String; var TextToTranslate: String; var Translated:boolean) of Object;
  TcadChangeCharsetPropertyProc = procedure (const aObj: TObject) of Object;

  {ErrnoTranslation = class(Exception)
    constructor Create(const aComponent:TComponent); reintroduce;
  end;}
  TNoTranslationEvent = procedure (Sender:TObject; const aComponent:TComponent) of Object;

  TcadCompTranslator = class
  protected
    function DuplicatedObjName(aObjName:string):boolean;
    function OriginalObjName(aObjName:string):string;
    procedure ChangeCharsetProp(const aObj: TObject);
    function GetOwnerClassName(const aObj: TObject):string;
  public
    function TranslateProp(const aObj: TObject; const aFormName, aObjName, aPropertyName: String; TextToTranslate: WideString; var Translated:boolean): WideString;
    function Translate(const aObj: TObject; var Translated:boolean):boolean; virtual; abstract;
    class function Supports(const aObj: TObject): Boolean; virtual; abstract;
  end;

  TcadResourceTranslator = class
  protected
    function  TranslateProp(const aUnit, aVersion, aConstName, aOriginalLang: String; TextToTranslate: String; var Translated:boolean): String; virtual; abstract;
    procedure HookResourceString(ResStringRec: pResStringRec; s: string);
  public
    function Translate(const aObj: TObject; var translator:boolean):boolean; virtual; abstract;
  end;

  TcadResourceTranslatorEN = class(TcadResourceTranslator)
  protected
    function  TranslateProp(const aUnit, aVersion, aConstName, aOriginalLang: String; TextToTranslate: String; var Translated:boolean): String; override;
  end;

  TcadResourceTranslatorPT = class(TcadResourceTranslator)
  protected
    function  TranslateProp(const aUnit, aVersion, aConstName, aOriginalLang: String; TextToTranslate: String; var Translated:boolean): String; override;
  end;

  TcadCompTranslatorClass     = class of TcadCompTranslator;
  TcadResourceTranslatorClass = class of TcadResourceTranslator;

  TcadResourceTranslatorReg = class
    FClass : TcadResourceTranslatorClass;
    FInstance : TcadResourceTranslator;

    constructor Create;
    destructor Destroy; override;

    function GetInstance: TcadResourceTranslator;
  end;
  
  TcadCompTranslatorReg = class
    FClass : TcadCompTranslatorClass;
    FInstance : TcadCompTranslator;

    constructor Create;
    destructor Destroy; override;

    function GetInstance: TcadCompTranslator;
  end;

  TcadFormTranslatorReg = Record
  public
    FClass     : TFrmBasePaiClass;
    FOwnerName : TComponentName;
  end;
  PcadFormTranslatorReg = ^TcadFormTranslatorReg;

  TcadTranslator = class
  private
    FOnNoTranslation : TNoTranslationEvent;
    FTranslators : TList;
    FResourceTranslators : TList;
    FFormToTraslate : TList;
    FTranslateProc : TcadTranslatePropertyProc;
    FTranslateResourceProc : TcadTranslateResourcePropertyProc;
    FChangeCharsetProc : TcadChangeCharsetPropertyProc;
  public
    constructor Create;
    destructor Destroy; override;

    function  inClassIgnoreList (aClass: TClass):boolean;
    procedure TranslateObj(const aObj: TObject);
    function TranslateResources(const aObj: TObject; var translated:boolean):boolean;

    procedure RegisterClass(const aClass: TcadCompTranslatorClass);
    procedure RegisterResource(const aClass: TcadResourceTranslatorClass);
    procedure RegisterFormForTranslate(const aClass:TFrmBasePaiClass);
    //procedure CreateFormsToTranslate;
    function isFormRegistered(const aObj:TObject):boolean;
    property OnNoTranslation: TNoTranslationEvent
      read FOnNoTranslation write FOnNoTranslation;
    property FormToTraslate: TList
      read FFormToTraslate;
    property ResourceTranslators: TList
      read FResourceTranslators;
    property TranslateProc: TcadTranslatePropertyProc
      read FTranslateProc write FTranslateProc;
    property TranslateResourceProc: TcadTranslateResourcePropertyProc
      read FTranslateResourceProc write FTranslateResourceProc;
    property ChangeCharsetProc: TcadChangeCharsetPropertyProc
      read FChangeCharsetProc write FChangeCharsetProc;

  end;

  procedure RegisterTranslators(const aClasses : Array of TcadCompTranslatorClass);
  procedure RegisterResourceTranslators(const aResources : Array of TcadResourceTranslatorClass);

var
  Translator : TcadTranslator;

implementation

{ TcadTranslator }
uses uLogs, ufmTranslatorDM;

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

constructor TcadTranslator.Create;
begin
  FTranslators := TList.Create;
  FResourceTranslators := TList.Create;
  FFormToTraslate      := TList.Create;
  FTranslateProc := nil;
  FTranslateResourceProc := nil;
  FChangeCharsetProc := nil;
  FChangeCharsetProc := nil;
end;

destructor TcadTranslator.Destroy;
begin
  while FTranslators.Count>0 do begin
    TObject(FTranslators[0]).Free;
    FTranslators.Delete(0);
  end;
  FTranslators.Free;

  while FResourceTranslators.Count>0 do begin
    TObject(FResourceTranslators[0]).Free;
    FResourceTranslators.Delete(0);
  end;
  FResourceTranslators.Free;

  FFormToTraslate.Free;

  inherited;
end;

procedure TcadTranslator.RegisterResource(const aClass: TcadResourceTranslatorClass);
var
  I: Integer;
  NewReg : TcadResourceTranslatorReg;
begin
  for I := 0 to FResourceTranslators.Count - 1 do with TcadResourceTranslatorReg(FResourceTranslators[I]) do
    if FClass = aClass then Exit;
  NewReg := TcadResourceTranslatorReg.Create;
  NewReg.FClass := aClass;
  FResourceTranslators.Add(NewReg);
end;

procedure TcadTranslator.RegisterClass(const aClass: TcadCompTranslatorClass);
var
  I: Integer;
  NewReg : TcadCompTranslatorReg;
begin
  for I := 0 to FTranslators.Count - 1 do with TcadCompTranslatorReg(FTranslators[I]) do
    if FClass = aClass then Exit;
  NewReg := TcadCompTranslatorReg.Create;
  NewReg.FClass := aClass;
  FTranslators.Add(NewReg);
end;

procedure TcadTranslator.RegisterFormForTranslate(const aClass:TFrmBasePaiClass);
var
  I: Integer;
  FromReg : PcadFormTranslatorReg;
begin
  for I := 0 to FFormToTraslate.Count - 1 do
    if FFormToTraslate[i] = aClass then exit;

  gLog.Log(Self, [lcFrm2Xlate], 'RegisterFormForTranslate: '+aClass.ClassName);
  FromReg := new(PcadFormTranslatorReg);
  FromReg.FClass     := aClass;
  FromReg.FOwnerName := 'arggg';   // <- que piada é esta? Porq eu fiz isto? Dario
  FFormToTraslate.Add(FromReg);
end;

function  TcadTranslator.inClassIgnoreList(aClass: TClass):boolean;
var
    k : integer;
begin
    result := false;
    k:=0;
    while k<=maxIgnoreCompTranslatorClassArray do begin
        if aClass.InheritsFrom(ignoreCompTranslatorClassArray[k]) then begin
            result := true;
            break;
        end;
        inc(k);
    end;

end;


function TcadTranslator.isFormRegistered(
  const  aObj:TObject): boolean;
var
    i : integer;
    compowner : TComponent;
begin
    result := false;
    if aObj.ClassType.InheritsFrom(TFrmBasePai) then begin
        for i := 0 to Translator.FormToTraslate.Count - 1 do
               if TFrmBasePaiClass(Translator.FormToTraslate[i]^) = TFrmBasePaiClass(aObj.ClassType) then begin
                   result := true;
                   exit;
               end;
    end else begin
        compowner := TComponent(aObj).Owner;
        while (compowner<>nil) do begin
            if compowner.ClassType.InheritsFrom(TFrmBasePai) then begin
                for i := 0 to Translator.FormToTraslate.Count - 1 do
                       if TFrmBasePaiClass(Translator.FormToTraslate[i]^) = TFrmBasePaiClass(compowner.ClassType) then begin
                           result := true;
                           exit;
                       end;
            end;
            compowner := compowner.Owner;
        end;
    end;
end;

procedure TcadTranslator.TranslateObj(const aObj: TObject);
var
   I: Integer;
   //ok : boolean;
   //compowner : TComponent;
   Translated: boolean;
   supported: boolean;
   //isInClassIgnoreList : boolean;

   {function compoName(const bObj: TObject):string;
   begin
            result := '';
            compowner := TComponent(bObj).Owner;
            while (compowner<>nil) do begin
                if compowner.name<>'' then
                   result := compowner.name + '.' + result
                else
                   result := '(' + compowner.classname + ').' + result;
                compowner := compowner.Owner;
            end;
            result := result + TComponent(bObj).name + ' ('+TComponent(bObj).classname+')';
   end;}

begin
    if not GTranslatorInitiated then exit;

    supported := false;

    if not inClassIgnoreList(TComponent(aObj).ClassType) then begin

        for I := 0 to FTranslators.Count - 1 do begin
            with TcadCompTranslatorReg(FTranslators[I]) do begin

               if FClass.Supports(aObj) then begin
                  supported := true;
                  try
                       GetInstance.Translate(aObj, Translated);
                       if Translated then
                        Break;
                  except
                     on e:exception do
                        gLog.Log(Self, [lcExcept], 'TranslateObj: ' +e.message);
                  end;
                  //Break;  nao para, estou barrendo por herança
               end;
            end;
        end;

        if not supported then begin

            if assigned(OnNoTranslation) then
                OnNoTranslation(self, TComponent(aObj));

            gLog.Log(Self, [lcXNoSuppor], 'No support for '+DMfmTranslator.componentPath(aObj)+ ' ('+TComponent(aObj).classname+')');

        end else begin

            if not (Translated) and (Translator.isFormRegistered(aObj)) then
                gLog.Log(Self, [lcXNoTrnslt], 'No translation for '+DMfmTranslator.componentPath(aObj)+ ' ('+TComponent(aObj).classname+')');

        end;
    end;


end;

function TcadTranslator.TranslateResources(const aObj: TObject; var translated:boolean):boolean;
var I: Integer;
begin
  translated := false;
  result := false;
  for I := 0 to FResourceTranslators.Count - 1 do with
   TcadResourceTranslatorReg(FResourceTranslators[I]) do
      result := GetInstance.Translate(aObj, translated);
end;


{ TcadCompTranslator }

function TcadCompTranslator.GetOwnerClassName(const aObj: TObject):string;
begin
  if TComponent(aObj).Owner<>nil then
      result := TComponent(aObj).ClassName
  else
      result := '';
end;

function TcadCompTranslator.DuplicatedObjName(aObjName:string):boolean;
var
    s:string;
begin
    result := false;
    if pos('_', aObjName) =0  then exit;
    s := copy(aObjName, pos('_', aObjName) + 1, maxint);
    result := isnumeric(s);
end;

function TcadCompTranslator.OriginalObjName(aObjName:string):string;
begin
    result := aObjName;
    if pos('_', aObjName) =0  then exit;
    result := copy(aObjName, 1, pos('_', aObjName) - 1);
end;

function TcadCompTranslator.TranslateProp(const aObj: TObject; const aFormName, aObjName,
  aPropertyName: String; TextToTranslate: WideString; var Translated:boolean): WideString;
var
  ObjName : string;
begin
  translated := false;
  Result := TextToTranslate;
  if DuplicatedObjName(aObjName) then
      ObjName := OriginalObjName(aObjName)
  else
      ObjName := aObjName;

  if Assigned(Translator.FTranslateProc) then
      Translator.FTranslateProc(aObj, aFormName, ObjName, aPropertyName, Result, Translated);
end;

procedure TcadCompTranslator.ChangeCharsetProp(const aObj: TObject);
begin
  if Assigned(Translator.FChangeCharsetProc) then
    Translator.FChangeCharsetProc(aObj);
end;

{ TcadResourceTranslator }

// Assign new value to a resource string
procedure TcadResourceTranslator.HookResourceString(ResStringRec: pResStringRec; s: string);
var
  OldProtect: DWORD;
  NewStr: PChar;
begin
  GetMem(NewStr, length(s)+1);
  StrLCopy( NewStr, Pchar(s), length(s));
  VirtualProtect(ResStringRec, SizeOf(ResStringRec^), PAGE_EXECUTE_READWRITE, @OldProtect) ;
  ResStringRec^.Identifier := Integer(NewStr) ;
  VirtualProtect(ResStringRec, SizeOf(ResStringRec^), OldProtect, @OldProtect) ;
end;

{ TcadCompTranslatorReg }

constructor TcadCompTranslatorReg.Create;
begin
  FClass := nil;
  FInstance := nil;
end;

destructor TcadCompTranslatorReg.Destroy;
begin
  if Assigned(FInstance) then FInstance.Free;

  inherited;
end;

function TcadCompTranslatorReg.GetInstance: TcadCompTranslator;
begin
  if FInstance=nil then
    FInstance := FClass.Create;
  Result := FInstance;
end;

{ TcadResourceTranslatorReg }

constructor TcadResourceTranslatorReg.Create;
begin
  FClass := nil;
  FInstance := nil;
end;

destructor TcadResourceTranslatorReg.Destroy;
begin
  if Assigned(FInstance) then FInstance.Free;

  inherited;
end;

function TcadResourceTranslatorReg.GetInstance: TcadResourceTranslator;
begin
  if FInstance=nil then
    FInstance := FClass.Create;
  Result := FInstance;
end;

procedure RegisterResourceTranslators(const aResources : Array of TcadResourceTranslatorClass);
var I: Integer;
begin
  for I := 0 to High(aResources) do
    Translator.RegisterResource(aResources[I]);
end;

procedure RegisterTranslators(const aClasses : Array of TcadCompTranslatorClass);
var I: Integer;
begin
  for I := 0 to High(aClasses) do
    Translator.RegisterClass(aClasses[I]);
end;

{ ErrnoTranslation }
{
constructor ErrnoTranslation.Create(const aComponent:TComponent);
var
   compname : string;
   compowner : TComponent;
begin
        compname := '';
        compowner := TComponent(aComponent).Owner;
        while (compowner<>nil) do begin
            if compowner.name<>'' then
               compname := compowner.name + '.' + compname
            else
               compname := '(' + compowner.classname + ').' + compname;
            compowner := compowner.Owner;
        end;
        compname := compname + TComponent(aComponent).name + ' ('+TComponent(aComponent).classname+')';

        gLog.Log(Self, [lcXlateDetail], 'No transtalation for '+compname);

        inherited create('No transtalation for '+compname);
 end;}

{ TcadResourceTranslatorEN }

function TcadResourceTranslatorEN.TranslateProp(const aUnit, aVersion,
  aConstName, aOriginalLang: String; TextToTranslate: String; var Translated:boolean): String;
begin
  translated := false;
  Result := TextToTranslate;
  if Assigned(Translator.FTranslateResourceProc) then
     Translator.FTranslateResourceProc(aUnit, aVersion, aConstName, 'en-us', Result, Translated);
end;

{ TcadResourceTranslatorPT }

function TcadResourceTranslatorPT.TranslateProp(const aUnit, aVersion,
  aConstName, aOriginalLang: String; TextToTranslate: String; var Translated:boolean): String;
begin
  translated := false;
  Result := TextToTranslate;
  if Assigned(Translator.FTranslateResourceProc) then
     Translator.FTranslateResourceProc(aUnit, aVersion, aConstName, 'pt-br', Result, Translated);
end;

initialization
  Translator := TcadTranslator.Create;

finalization
  Translator.Free;
  
end.
