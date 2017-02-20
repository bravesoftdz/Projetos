unit ucadTransField;

interface

uses
   SysUtils,
   classes,
   ufmTranslator;

type


  TFieldTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TBooleanFieldTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

implementation

uses
   db;


// -----------------------------------------------------------------------------

class function TFieldTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom( TField);
end;

function TFieldTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TField(aObj) do begin
    DisplayLabel := TranslateProp(aObj, GetOwnerClassName(aObj),  Name, 'DisplayLabel', DisplayLabel, Translated);
  end;
end;

// -----------------------------------------------------------------------------

class function TBooleanFieldTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj is TBooleanField;
end;

function TBooleanFieldTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
  P: Integer;                             
  vFalse, vTrue : string;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TBooleanField(aObj) do begin
    if DisplayValues<>'' then begin
      P := Pos(';', DisplayValues);
      if P = 0 then P := 256;
      vFalse := Copy(DisplayValues, P + 1, 255);
      vTrue  := Copy(DisplayValues, 1, P - 1);
      vFalse := TranslateProp(aObj, GetOwnerClassName(aObj),  Name, 'DisplayValueFalse', vFalse, Translated);
      vTrue  := TranslateProp(aObj, GetOwnerClassName(aObj),  Name, 'DisplayValueTrue', vTrue, Translated);
      DisplayValues := vFalse+';'+vTrue;
    end;
  end;
end;



initialization
  RegisterTranslators([TFieldTranslator, TBooleanFieldTranslator]);

end.
