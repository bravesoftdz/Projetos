unit ucadTransStd;

interface

uses
   SysUtils,
   classes,
   ufmTranslator,
   StdCtrls,
   uLogs,
   menus;

type


  TFormTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TControlTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TLabelTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TPanelTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TComboBoxTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TMenuItemTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

implementation

uses
   forms, controls, ExtCtrls;


// -----------------------------------------------------------------------------

class function TFormTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TForm); 
end;

function TFormTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TForm(aObj) do begin
    Caption := TranslateProp(aObj, ClassName,  '', 'Caption', Caption, Translated);
    Hint    := TranslateProp(aObj, ClassName,  '', 'Hint', Hint, Translated);
  end;
  with TForm(aObj) do
    ChangeCharsetProp(aObj);
end;

// -----------------------------------------------------------------------------

class function TControlTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TControl);
end;

function TControlTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
  OwnerClassName : string;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  OwnerClassName := GetOwnerClassName(aObj);

  if (TComponent(aObj).Owner<>nil) and (TComponent(aObj).Owner.ClassType = tapplication) then exit;

  with TControl(aObj) do
      Hint := TranslateProp(aObj, OwnerClassName, Name, 'Hint', Hint, Translated);
end;

// -----------------------------------------------------------------------------

class function TLabelTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TLabel);
end;

function TLabelTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TLabel(aObj) do
    Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
  with TForm(aObj) do
    ChangeCharsetProp(aObj);
end;

// -----------------------------------------------------------------------------

class function TPanelTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := (aObj is TPanel);
end;

function TPanelTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TPanel(aObj) do
    Caption := TranslateProp(aObj, GetOwnerClassName(aObj),  Name, 'Caption', Caption, Translated);
  with TPanel(aObj) do
    ChangeCharsetProp(aObj);
end;

// -----------------------------------------------------------------------------

class function TComboBoxTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := (aObj is TComboBox);
end;

function TComboBoxTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
  i : integer;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TComboBox(aObj) do
    for i:=0 to Items.count-1 do
        Items[i] :=  TranslateProp(aObj, GetOwnerClassName(aObj),
        TComponent(aObj).Name, 'Items['+inttostr(i)+']', Items[i], Translated);

end;

// -----------------------------------------------------------------------------

class function TMenuItemTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := (aObj is TMenuItem);
end;

function TMenuItemTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TMenuItem(aObj) do
    Caption := TranslateProp(aObj, GetOwnerClassName(aObj),  Name, 'Caption', Caption, Translated);

end;


initialization
  RegisterTranslators([ TFormTranslator, TControlTranslator,
                        TLabelTranslator, TPanelTranslator, TComboBoxTranslator,
                        TMenuItemTranslator]);

end.
