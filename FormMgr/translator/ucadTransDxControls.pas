unit ucadTransDxControls;

interface

uses
  SysUtils,
  classes,
  ufmTranslator;

type

  TdxBarTranslator  = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TdxBarItemTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  {TdxSideBarTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;}

  TdxStatusBarTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TdxCustomDockControlTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TdxCustomLayoutControlTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TdxBarListItemTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TdxBarImageComboTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TdxLayoutItemTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TdxNavBarItemTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxGridDBCardViewRowTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;


implementation

uses
   dxbar, dxStatusBar, dxDockControl, dxLayoutControl, dxBarExtItems,
   cxGridDBCardView, dxLayoutContainer, dxNavBarCollns;

// -----------------------------------------------------------------------------

class function TdxBarTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TdxBar);
end;

function TdxBarTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TdxBar(aObj) do
    Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
end;



// -----------------------------------------------------------------------------

class function TdxBarItemTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TdxBarItem);
end;

function TdxBarItemTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TdxBarItem(aObj) do
    Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
end;

// -----------------------------------------------------------------------------
{
class function TdxSideBarTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TdxSideBar);
end;

function TdxSideBarTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
  gr, i: integer;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;

  with TdxSideBar(aObj) do
     for gr:=0 to GroupCount-1 do begin
       Groups[gr].Caption := TranslateProp(aObj, GetOwnerClassName(aObj),
           TComponent(aObj).Name + '.Group['+inttostr(gr)+'].'+Groups[gr].ClassName,
           'Caption', Groups[gr].Caption, Translated);

       with Groups[gr] do
         for i:=0 to ItemCount -1 do begin
           Items[i].Caption :=  TranslateProp(aObj, GetOwnerClassName(aObj),
           TComponent(aObj).Name + '.Group['+inttostr(gr)+'].Items['+inttostr(i)+'].'+Items[i].ClassName,
           'Caption', Items[i].Caption, Translated);
         end;
     end;

end;
}

// -----------------------------------------------------------------------------

class function TdxStatusBarTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TdxStatusBar);
end;

function TdxStatusBarTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
  i: integer;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TdxStatusBar(aObj) do
     for i:=0 to Panels.Count-1 do begin
       Panels[i].Text := TranslateProp(aObj, GetOwnerClassName(aObj),
           TComponent(aObj).Name + '.Panels['+inttostr(i)+'].'+Panels[i].ClassName,
           'Text', Panels[i].Text, Translated);
     end;
end;


// -----------------------------------------------------------------------------

class function TdxCustomDockControlTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TdxCustomDockControl);
end;

function TdxCustomDockControlTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TdxCustomDockControl(aObj) do
         Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
end;

// -----------------------------------------------------------------------------

class function TdxCustomLayoutControlTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TdxCustomLayoutControl);
end;

function TdxCustomLayoutControlTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
  i: integer;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TdxCustomLayoutControl(aObj) do begin
     for i:=0 to AbsoluteItemCount-1 do
       with AbsoluteItems[i] do begin
           Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
           Hint := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Hint', Hint, Translated);
       end;
  end;

end;

// -----------------------------------------------------------------------------

class function TdxBarListItemTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TdxBarListItem);
end;

function TdxBarListItemTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
  i: integer;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TdxBarListItem(aObj) do begin
      Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
      Hint := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Hint', Hint, Translated);
      for i:=0 to Items.Count-1 do
        Items[i] :=  TranslateProp(aObj, GetOwnerClassName(aObj),
        TComponent(aObj).Name, 'Items['+inttostr(i)+']', Items[i], Translated);
  end;

end;

// -----------------------------------------------------------------------------

class function TdxBarImageComboTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TdxBarImageCombo);
end;

function TdxBarImageComboTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
  i: integer;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TdxBarImageCombo(aObj) do begin
      Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
      Hint := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Hint', Hint, Translated);
      for i:=0 to Items.Count-1 do
        Items[i] :=  TranslateProp(aObj, GetOwnerClassName(aObj),
        TComponent(aObj).Name, 'Items['+inttostr(i)+']', Items[i], Translated);
  end;

end;


// -----------------------------------------------------------------------------

{ TdxLayoutItemTranslator }

class function TdxLayoutItemTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TdxLayoutItem);
end;

function TdxLayoutItemTranslator.Translate(const aObj: TObject;
  var Translated: boolean): boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TdxLayoutItem(aObj) do begin
      Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
  end;

end;

{ TdxNavBarItemTranslator }

class function TdxNavBarItemTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TdxNavBarItem);
end;

function TdxNavBarItemTranslator.Translate(const aObj: TObject;
  var Translated: boolean): boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TdxNavBarItem(aObj) do begin
      Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
      Hint := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Hint', Hint, Translated);
  end;
end;

{ TcxGridDBCardViewRowTranslator }

class function TcxGridDBCardViewRowTranslator.Supports(
  const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxGridDBCardViewRow);
end;

function TcxGridDBCardViewRowTranslator.Translate(const aObj: TObject;
  var Translated: boolean): boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TcxGridDBCardViewRow(aObj) do begin
      Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
  end;
end;

initialization
  RegisterTranslators([ TdxBarTranslator, TdxBarItemTranslator, {TdxSideBarTranslator,}
                        TdxStatusBarTranslator, TdxCustomDockControlTranslator, TdxBarItemTranslator,
                        TdxCustomLayoutControlTranslator, TdxBarListItemTranslator,
                        TdxBarImageComboTranslator, TdxLayoutItemTranslator, TdxNavBarItemTranslator,
                        TcxGridDBCardViewRowTranslator ]);


end.
