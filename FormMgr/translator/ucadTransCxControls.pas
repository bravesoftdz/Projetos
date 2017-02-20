unit ucadTransCxControls;

interface

uses
  SysUtils,
  classes,
  ufmTranslator;

type

  TcxPageControlTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxCustomTabControlTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxCustomLabelTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxButtonTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxCustomTextEditTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxCheckBoxTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxTabSheetTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxCustomGridTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxNavigatorControlButtonsTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxEditButtonTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxDBEditorRowTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxCategoryRowTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxComboBoxTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxDBComboBoxTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxDBCheckBoxTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxGridPopupMenuTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxEditRepositoryImageComboBoxItemTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxEditRepositoryImageItemTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxEditRepositoryCheckBoxItemTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxGridLevelTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  TcxGridDBColumnTranslator = class ( TcadCompTranslator )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
    class function Supports(const aObj: TObject): Boolean; override;
  end;

  // TcxGridDBTableView

  function TranslateCustomEditProperties(Sender:TcadCompTranslator; const aObj, aProp: TObject; var Translated:boolean):boolean;

implementation

uses
   forms,
   cxButtons,
   cxTextEdit,
   cxLabel,
   cxCheckBox,
   cxDropDownEdit,
   cxCalendar,
   cxPC,
   cxGrid,
   cxGridCustomView,
   cxGridChartView,
   cxGridTableView,
   cxGridCustomTableView,
   cxGridPopupMenu,
   cxGridStrs,
   cxNavigator,
   cxEdit,
   cxDBEdit,
   cxDBVGrid,
   cxVGrid,
   cxImageComboBox,
   cxEditRepositoryItems,
   cxGridLevel,
   cxGridDBTableView,
   cxGroupBox,
   cxImage
   ;

// -----------------------------------------------------------------------------

class function TcxCustomLabelTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxCustomLabel);
end;

function TcxCustomLabelTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TcxCustomLabel(aObj) do
    Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
end;

// -----------------------------------------------------------------------------

class function TcxButtonTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxButton);
end;

function TcxButtonTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TcxButton(aObj) do
    Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
end;


// -----------------------------------------------------------------------------

class function TcxCustomTextEditTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxCustomTextEdit);
end;

function TcxCustomTextEditTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;

  if (aObj is TcxDateEdit) then
  else
  with TcxCustomTextEdit(aObj) do
    Text := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Text', Text, Translated);
end;

// -----------------------------------------------------------------------------

class function TcxCheckBoxTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxCheckBox);
end;

function TcxCheckBoxTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TcxCheckBox(aObj) do
    Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
end;


// -----------------------------------------------------------------------------

class function TcxTabSheetTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxTabSheet);
end;

function TcxTabSheetTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TcxTabSheet(aObj) do
    Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
end;


// -----------------------------------------------------------------------------

class function TcxCustomGridTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxCustomGrid);
end;

function TcxCustomGridTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
  i, k : integer;
begin
  result := true;
  Translated := false;

  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;

  with TcxCustomGrid(aObj) do
  for i:=0 to Viewcount-1 do begin

     if Views[i].ViewInfo is TcxGridChartViewInfo then begin
         beep;
     end;
     if Views[i].ViewInfo is TcxGridTableViewInfo then begin

         TcxGridTableViewInfo(Views[i].ViewInfo).GroupByBoxViewInfo.Text  :=
           TranslateProp(aObj, GetOwnerClassName(aObj),  TcxCustomGrid(aObj).Name,
               Views[i].Name +'.GroupByBoxViewInfo.Text',
               TcxGridTableViewInfo(Views[i].ViewInfo).GroupByBoxViewInfo.Text, Translated);

         TcxGridTableViewInfo(Views[i].ViewInfo).HeaderViewInfo.Text  :=
           TranslateProp(aObj, GetOwnerClassName(aObj),  TcxCustomGrid(aObj).Name,
               Views[i].Name +'.HeaderViewInfo.Text',
               TcxGridTableViewInfo(Views[i].ViewInfo).HeaderViewInfo.Text, Translated);
         Views[i].Invalidate;
     end;

     if TcxCustomGridView(Views[i]).PopupMenu <> nil then
         Translator.TranslateObj ( TcxCustomGridView(Views[i]).PopupMenu );

     if Views[i].InheritsFrom(TcxCustomGridTableView) then
     with TcxCustomGridTableView(Views[i]) do begin
         OptionsView.NoDataToDisplayInfoText := TranslateProp(aObj, GetOwnerClassName(aObj),
              TcxCustomGrid(aObj).Name, Views[i].Name +'.OptionsView.NoDataToDisplayInfoText',
              OptionsView.NoDataToDisplayInfoText, Translated);
         {if (OptionsView.Navigator) and (OptionsBehavior.NavigatorHints) then begin
            with TcxCustomNavigatorButtons(NavigatorButtons) do
               for k:=0 to ButtonCount-1 do begin
                   Buttons[k].Hint := TranslateProp(aObj, GetOwnerClassName(aObj),
                                          TcxCustomGrid(aObj).Name,
                                          Views[i].Name+'.NavigatorButton['+inttostr(k)+'].Hint',
                                          Buttons[k].Hint, Translated);
               end;
         end; }
         if OptionsBehavior.CellHints then begin
         end;
         if OptionsBehavior.NavigatorHints then begin
         end;
     end;
     if Views[i].InheritsFrom(TcxGridTableView) then
     with TcxGridTableView(Views[i]) do begin
         for k:=0 to ColumnCount-1 do
             Columns[k].Caption :=  TranslateProp(aObj, GetOwnerClassName(aObj),
                                        TcxCustomGrid(aObj).Name,
                                        Views[i].Name +'.'+Columns[k].Name+'.Caption',
                                        Columns[k].Caption, Translated);
         //if OptionsView.Navigator then begin
         //end;
         if OptionsBehavior.ColumnHeaderHints then begin
         end;
     end;
     for k:=0 to Views[i].ComponentCount-1 do begin
         TranslateProp(aObj, GetOwnerClassName(aObj),  TComponent(aObj).Name,
             Views[i].Name +'.'+Views[i].Components[k].ClassName, '', Translated);
     end;
  end;
end;


// -----------------------------------------------------------------------------

class function TcxNavigatorControlButtonsTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxCustomNavigatorButtons);
end;

function TcxNavigatorControlButtonsTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
   i : integer;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TcxCustomNavigatorButtons(aObj) do
     for i:=0 to ButtonCount-1 do begin
         Buttons[i].Hint := TranslateProp(aObj, GetOwnerClassName(aObj),
                                Buttons[i].ClassName, 'Hint', Buttons[i].Hint, Translated);
     end;
end;

// -----------------------------------------------------------------------------

class function TcxCustomTabControlTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxCustomTabControl);
end;

function TcxCustomTabControlTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
//var
//   i : integer;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TcxCustomTabControl(aObj) do
     {for i:=0 to Tabs.Count-1 do begin
         TranslateProp(aObj, GetOwnerClassName(aObj),
             TComponent(aObj).Name + '.Tab['+inttostr(i)+'].'+Tabs[i].ClassName,
             'Caption', Tabs[i].Caption, Translated);
     end; }
end;

// -----------------------------------------------------------------------------

class function TcxPageControlTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxPageControl);
end;

function TcxPageControlTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
   i : integer;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TcxPageControl(aObj) do
     for i:=0 to PageCount-1 do begin
         TranslateProp(aObj, GetOwnerClassName(aObj),
            TComponent(aObj).Name, Pages[i].Name +'.'+Pages[i].ClassName, '', Translated);
     end;

end;

// -----------------------------------------------------------------------------

class function TcxEditButtonTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxEditButton);
end;

function TcxEditButtonTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;

  with TcxEditButton(aObj) do
    Caption := TranslateProp(aObj, GetOwnerClassName(aObj),
                 TComponent(aObj).ClassName + '[' + Inttostr(Index) + ']', 'Caption', Caption, Translated);

end;

// -----------------------------------------------------------------------------

class function TcxDBEditorRowTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxDBEditorRow);
end;

function TcxDBEditorRowTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
   i: integer;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;

  with TcxDBEditorRow(aObj) do begin

    if Properties.InheritsFrom(TcxCaptionRowProperties) then
      with TcxCaptionRowProperties(Properties) do
          Caption := TranslateProp(aObj, GetOwnerClassName(aObj),
                 Name, 'Properties.Caption', Properties.Caption, Translated);

    if Properties.InheritsFrom(TcxCustomImageComboBoxProperties) then
      with TcxCustomImageComboBoxProperties(Properties) do
          for i:=0 to items.Count-1 do
              if items[i].InheritsFrom(TcxImageComboBoxItems) then
                with TcxImageComboBoxItem(items[i]) do
                     Description := TranslateProp(aObj, GetOwnerClassName(aObj),  TcxDBEditorRow(aObj).Name,
                                    'Properties.Items['+inttostr(i)+'].Description', Description, Translated);

    if Properties.InheritsFrom(TcxCustomEditProperties) then
         result := result or TranslateCustomEditProperties(self, aObj, Properties, Translated);

  end;
end;

// -----------------------------------------------------------------------------

class function TcxCategoryRowTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxCategoryRow);
end;

function TcxCategoryRowTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;

  with TcxCategoryRow(aObj) do
    Properties.Caption := TranslateProp(aObj, GetOwnerClassName(aObj),
                 Name, 'Properties.Caption', Properties.Caption, Translated);

end;

// -----------------------------------------------------------------------------

class function TcxComboBoxTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := aObj.InheritsFrom(TcxComboBox);
end;

function TcxComboBoxTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
  i : integer;
begin
  result := true;
  Translated := false;
  if sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then exit;
  with TcxComboBox(aObj) do
     if Properties.InheritsFrom(TcxCustomComboBoxProperties) then
         with TcxCustomComboBoxProperties(Properties) do
              for i:=0 to Items.count-1 do
                Items[i] := TranslateProp(aObj, GetOwnerClassName(aObj),  TcxComboBox(aObj).Name, 'Items['+inttostr(i)+']', Items[i], Translated);
end;

// -----------------------------------------------------------------------------

class function TcxDBComboBoxTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := (aObj is TcxDBComboBox);
end;

function TcxDBComboBoxTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
  i : integer;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TcxDBComboBox(aObj) do
     if Properties.InheritsFrom(TcxCustomComboBoxProperties) then
         with TcxCustomComboBoxProperties(Properties) do
              for i:=0 to Items.count-1 do
                Items[i] := TranslateProp(aObj, GetOwnerClassName(aObj),  TcxComboBox(aObj).Name, 'Items['+inttostr(i)+']', Items[i], Translated);
end;

// -----------------------------------------------------------------------------
class function TcxDBCheckBoxTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := (aObj is TcxDBCheckBox);
end;

function TcxDBCheckBoxTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TcxDBCheckBox(aObj) do begin
    Caption := TranslateProp(aObj, GetOwnerClassName(aObj), Name, 'Caption', Caption, Translated);
  end;
end;


// -----------------------------------------------------------------------------
class function TcxGridPopupMenuTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := (aObj is TcxGridPopupMenu );
end;

function TcxGridPopupMenuTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
   i : integer;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TcxGridPopupMenu(aObj).PopupMenus do
     for i:=0 to count-1 do
       if Items[i].PopupMenu <> nil then
          Translator.TranslateObj ( Items[i].PopupMenu );
end;


// -----------------------------------------------------------------------------
class function TcxEditRepositoryImageComboBoxItemTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := (aObj is TcxEditRepositoryImageComboBoxItem );
end;

function TcxEditRepositoryImageComboBoxItemTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
var
  i : integer;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TcxEditRepositoryImageComboBoxItem(aObj) do
       if (Properties<>nil) and
          (Properties.InheritsFrom(TcxImageComboBoxProperties)) then
          for I := 0 to Properties.Items.Count - 1 do
                with TcxImageComboBoxItem(Properties.items[i]) do
                     Description := TranslateProp(aObj, GetOwnerClassName(aObj),  TcxDBEditorRow(aObj).Name,
                                    'Properties.Items['+inttostr(i)+'].Description', Description, Translated);

end;

// -----------------------------------------------------------------------------
class function TcxEditRepositoryImageItemTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := (aObj is TcxEditRepositoryImageItem );
end;

function TcxEditRepositoryImageItemTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TcxEditRepositoryImageItem(aObj) do
       if Properties<>nil then   // TcxCustomImageProperties
       with Properties do
       Caption := TranslateProp(aObj, TcxDBCheckBox(aObj).Owner.ClassName, Name, 'Properties.Caption', Caption, Translated);
end;

// -----------------------------------------------------------------------------
class function TcxEditRepositoryCheckBoxItemTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := (aObj is TcxEditRepositoryCheckBoxItem );
end;
          
function TcxEditRepositoryCheckBoxItemTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TcxEditRepositoryCheckBoxItem(aObj) do
       if Properties<>nil then begin
           if Properties.InheritsFrom(TcxCustomCheckBoxProperties) then
           with TcxCustomCheckBoxProperties(Properties) do begin
              DisplayChecked   := TranslateProp(aObj, TcxDBCheckBox(aObj).Owner.ClassName, Name, 'Properties.DisplayChecked', DisplayChecked, Translated);
              DisplayGrayed    := TranslateProp(aObj, TcxDBCheckBox(aObj).Owner.ClassName, Name, 'Properties.DisplayGrayed', DisplayGrayed, Translated);
              DisplayUnchecked := TranslateProp(aObj, TcxDBCheckBox(aObj).Owner.ClassName, Name, 'Properties.DisplayUnchecked', DisplayUnchecked, Translated);
           end;
       end
end;


// -----------------------------------------------------------------------------
class function TcxGridLevelTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := (aObj is TcxGridLevel );
end;

function TcxGridLevelTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TcxGridLevel(aObj) do
       Caption := TranslateProp(aObj, TcxDBCheckBox(aObj).Owner.ClassName, Name, 'Caption', Caption, Translated);
end;

// -----------------------------------------------------------------------------
class function TcxGridDBColumnTranslator.Supports(const aObj: TObject): Boolean;
begin
  Result := (aObj is TcxGridDBColumn );
end;

function TcxGridDBColumnTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  if not sametext(copy(TComponent(aObj).name, 1, 7),'NoXlate') then
  with TcxGridDBColumn(aObj) do begin
       Caption := TranslateProp(aObj, TcxDBCheckBox(aObj).Owner.ClassName, Name, 'Caption', Caption, Translated);
       if (Properties<>nil) and
          (Properties.InheritsFrom(TcxCustomEditProperties)) then
              TranslateCustomEditProperties(self, aObj, Properties, Translated)
  end;
end;

// -----------------------------------------------------------------------------
function TranslateCustomEditProperties(Sender:TcadCompTranslator; const aObj, aProp: TObject; var Translated:boolean):boolean;
begin
   result := true;
   Translated := false;
   if aObj is TcxCustomCheckBoxProperties then
        with TcxCustomCheckBoxProperties(aProp) do begin
              DisplayChecked   := Sender.TranslateProp( aObj, TcxDBCheckBox(aObj).Owner.ClassName,
                                                        TComponent(aObj).Name, 'Properties.DisplayChecked', DisplayChecked, Translated);
              DisplayGrayed    := Sender.TranslateProp( aObj, TcxDBCheckBox(aObj).Owner.ClassName,
                                                        TComponent(aObj).Name, 'Properties.DisplayGrayed', DisplayGrayed, Translated);
              DisplayUnchecked := Sender.TranslateProp( aObj, TcxDBCheckBox(aObj).Owner.ClassName,
                                                        TComponent(aObj).Name, 'Properties.DisplayUnchecked', DisplayUnchecked, Translated);
        end;

   if aObj is TcxCustomGroupBoxProperties then begin
        // nada
   end;

   if aObj is TcxCustomImageProperties then begin
        with TcxCustomImageProperties(aProp) do
             Caption := Sender.TranslateProp(aObj, TcxDBCheckBox(aObj).Owner.ClassName, TComponent(aObj).Name, 'Properties.Caption', Caption, Translated);
   end;

   if aObj is TcxCustomLabelProperties then begin
        // nada
   end;

   {if aObj is TcxCustomProgressBarProperties then begin

   end;

   if aObj is TcxCustomTrackBarProperties then begin

   end;}
end;

// -----------------------------------------------------------------------------

initialization
  RegisterTranslators([ TcxCustomLabelTranslator, TcxButtonTranslator, TcxCustomTextEditTranslator,
                        TcxCheckBoxTranslator, TcxComboBoxTranslator, TcxTabSheetTranslator,
                        TcxCustomGridTranslator, TcxNavigatorControlButtonsTranslator,
                        TcxCustomTabControlTranslator, TcxPageControlTranslator,
                        TcxEditButtonTranslator, TcxDBEditorRowTranslator, TcxCategoryRowTranslator,
                        TcxDBComboBoxTranslator, TcxDBCheckBoxTranslator, TcxGridPopupMenuTranslator,
                        TcxEditRepositoryImageComboBoxItemTranslator,
                        TcxEditRepositoryImageItemTranslator, TcxEditRepositoryCheckBoxItemTranslator,
                        TcxGridLevelTranslator, TcxGridDBColumnTranslator
                        ]);

end.
