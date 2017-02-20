unit ucadTransDXresources;

interface

uses
  SysUtils,
  classes,
  ufmTranslator;
type

  TdxBarStrsResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TdxDockConstsResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;


implementation

uses
   dxBarStrs, dxDockConsts;

// -----------------------------------------------------------------------------

function TdxBarStrsResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean; 
begin
  result := true;
  Translated := false;
  HookResourceString(@dxSBAR_LOOKUPDIALOGCAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_LOOKUPDIALOGCAPTION', 'en-us', dxSBAR_LOOKUPDIALOGCAPTION, translated));
  HookResourceString(@dxSBAR_LOOKUPDIALOGOK, TranslateProp('dxBarStrs','EB6','dxSBAR_LOOKUPDIALOGOK', 'en-us', dxSBAR_LOOKUPDIALOGOK, translated));
  HookResourceString(@dxSBAR_LOOKUPDIALOGCANCEL, TranslateProp('dxBarStrs','EB6','dxSBAR_LOOKUPDIALOGCANCEL', 'en-us', dxSBAR_LOOKUPDIALOGCANCEL, translated));
  HookResourceString(@dxSBAR_DIALOGOK, TranslateProp('dxBarStrs','EB6','dxSBAR_DIALOGOK', 'en-us', dxSBAR_DIALOGOK, translated));
  HookResourceString(@dxSBAR_DIALOGCANCEL, TranslateProp('dxBarStrs','EB6','dxSBAR_DIALOGCANCEL', 'en-us', dxSBAR_DIALOGCANCEL, translated));
  HookResourceString(@dxSBAR_COLOR_STR_0, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_0', 'en-us', dxSBAR_COLOR_STR_0, translated));
  HookResourceString(@dxSBAR_COLOR_STR_1, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_1', 'en-us', dxSBAR_COLOR_STR_1, translated));
  HookResourceString(@dxSBAR_COLOR_STR_2, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_2', 'en-us', dxSBAR_COLOR_STR_2, translated));
  HookResourceString(@dxSBAR_COLOR_STR_3, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_3', 'en-us', dxSBAR_COLOR_STR_3, translated));
  HookResourceString(@dxSBAR_COLOR_STR_4, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_4', 'en-us', dxSBAR_COLOR_STR_4, translated));
  HookResourceString(@dxSBAR_COLOR_STR_5, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_5', 'en-us', dxSBAR_COLOR_STR_5, translated));
  HookResourceString(@dxSBAR_COLOR_STR_6, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_6', 'en-us', dxSBAR_COLOR_STR_6, translated));
  HookResourceString(@dxSBAR_COLOR_STR_7, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_7', 'en-us', dxSBAR_COLOR_STR_7, translated));
  HookResourceString(@dxSBAR_COLOR_STR_8, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_8', 'en-us', dxSBAR_COLOR_STR_8, translated));
  HookResourceString(@dxSBAR_COLOR_STR_9, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_9', 'en-us', dxSBAR_COLOR_STR_9, translated));
  HookResourceString(@dxSBAR_COLOR_STR_10, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_10', 'en-us', dxSBAR_COLOR_STR_10, translated));
  HookResourceString(@dxSBAR_COLOR_STR_11, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_11', 'en-us', dxSBAR_COLOR_STR_11, translated));
  HookResourceString(@dxSBAR_COLOR_STR_12, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_12', 'en-us', dxSBAR_COLOR_STR_12, translated));
  HookResourceString(@dxSBAR_COLOR_STR_13, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_13', 'en-us', dxSBAR_COLOR_STR_13, translated));
  HookResourceString(@dxSBAR_COLOR_STR_14, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_14', 'en-us', dxSBAR_COLOR_STR_14, translated));
  HookResourceString(@dxSBAR_COLOR_STR_15, TranslateProp('dxBarStrs','EB6','dxSBAR_COLOR_STR_15', 'en-us', dxSBAR_COLOR_STR_15, translated));
  HookResourceString(@dxSBAR_COLORAUTOTEXT, TranslateProp('dxBarStrs','EB6','dxSBAR_COLORAUTOTEXT', 'en-us', dxSBAR_COLORAUTOTEXT, translated));
  HookResourceString(@dxSBAR_COLORCUSTOMTEXT, TranslateProp('dxBarStrs','EB6','dxSBAR_COLORCUSTOMTEXT', 'en-us', dxSBAR_COLORCUSTOMTEXT, translated));
  HookResourceString(@dxSBAR_DATETODAY, TranslateProp('dxBarStrs','EB6','dxSBAR_DATETODAY', 'en-us', dxSBAR_DATETODAY, translated));
  HookResourceString(@dxSBAR_DATECLEAR, TranslateProp('dxBarStrs','EB6','dxSBAR_DATECLEAR', 'en-us', dxSBAR_DATECLEAR, translated));
  HookResourceString(@dxSBAR_DATEDIALOGCAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_DATEDIALOGCAPTION', 'en-us', dxSBAR_DATEDIALOGCAPTION, translated));
  HookResourceString(@dxSBAR_TREEVIEWDIALOGCAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_TREEVIEWDIALOGCAPTION', 'en-us', dxSBAR_TREEVIEWDIALOGCAPTION, translated));
  HookResourceString(@dxSBAR_IMAGEDIALOGCAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_IMAGEDIALOGCAPTION', 'en-us', dxSBAR_IMAGEDIALOGCAPTION, translated));
  HookResourceString(@dxSBAR_IMAGEINDEX, TranslateProp('dxBarStrs','EB6','dxSBAR_IMAGEINDEX', 'en-us', dxSBAR_IMAGEINDEX, translated));
  HookResourceString(@dxSBAR_IMAGETEXT, TranslateProp('dxBarStrs','EB6','dxSBAR_IMAGETEXT', 'en-us', dxSBAR_IMAGETEXT, translated));
  HookResourceString(@dxSBAR_PLACEFORCONTROL, TranslateProp('dxBarStrs','EB6','dxSBAR_PLACEFORCONTROL', 'en-us', dxSBAR_PLACEFORCONTROL, translated));
  HookResourceString(@dxSBAR_CANTASSIGNCONTROL, TranslateProp('dxBarStrs','EB6','dxSBAR_CANTASSIGNCONTROL', 'en-us', dxSBAR_CANTASSIGNCONTROL, translated));
  HookResourceString(@dxSBAR_CXEDITVALUEDIALOGCAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_CXEDITVALUEDIALOGCAPTION', 'en-us', dxSBAR_CXEDITVALUEDIALOGCAPTION, translated));
  HookResourceString(@dxSBAR_WANTTORESETTOOLBAR, TranslateProp('dxBarStrs','EB6','dxSBAR_WANTTORESETTOOLBAR', 'en-us', dxSBAR_WANTTORESETTOOLBAR, translated));
  HookResourceString(@dxSBAR_WANTTORESETUSAGEDATA, TranslateProp('dxBarStrs','EB6','dxSBAR_WANTTORESETUSAGEDATA', 'en-us', dxSBAR_WANTTORESETUSAGEDATA, translated));
  HookResourceString(@dxSBAR_BARMANAGERMORETHANONE, TranslateProp('dxBarStrs','EB6','dxSBAR_BARMANAGERMORETHANONE', 'en-us', dxSBAR_BARMANAGERMORETHANONE, translated));
  HookResourceString(@dxSBAR_BARMANAGERBADOWNER, TranslateProp('dxBarStrs','EB6','dxSBAR_BARMANAGERBADOWNER', 'en-us', dxSBAR_BARMANAGERBADOWNER, translated));
  HookResourceString(@dxSBAR_NOBARMANAGERS, TranslateProp('dxBarStrs','EB6','dxSBAR_NOBARMANAGERS', 'en-us', dxSBAR_NOBARMANAGERS, translated));
  HookResourceString(@dxSBAR_WANTTODELETETOOLBAR, TranslateProp('dxBarStrs','EB6','dxSBAR_WANTTODELETETOOLBAR', 'en-us', dxSBAR_WANTTODELETETOOLBAR, translated));
  HookResourceString(@dxSBAR_WANTTODELETETOOLBARS, TranslateProp('dxBarStrs','EB6','dxSBAR_WANTTODELETETOOLBARS', 'en-us', dxSBAR_WANTTODELETETOOLBARS, translated));
  HookResourceString(@dxSBAR_WANTTODELETECATEGORY, TranslateProp('dxBarStrs','EB6','dxSBAR_WANTTODELETECATEGORY', 'en-us', dxSBAR_WANTTODELETECATEGORY, translated));
  HookResourceString(@dxSBAR_WANTTOCLEARCOMMANDS, TranslateProp('dxBarStrs','EB6','dxSBAR_WANTTOCLEARCOMMANDS', 'en-us', dxSBAR_WANTTOCLEARCOMMANDS, translated));
  HookResourceString(@dxSBAR_RECURSIVEMENUS, TranslateProp('dxBarStrs','EB6','dxSBAR_RECURSIVEMENUS', 'en-us', dxSBAR_RECURSIVEMENUS, translated));
  HookResourceString(@dxSBAR_COMMANDNAMECANNOTBEBLANK, TranslateProp('dxBarStrs','EB6','dxSBAR_COMMANDNAMECANNOTBEBLANK', 'en-us', dxSBAR_COMMANDNAMECANNOTBEBLANK, translated));
  HookResourceString(@dxSBAR_TOOLBAREXISTS, TranslateProp('dxBarStrs','EB6','dxSBAR_TOOLBAREXISTS', 'en-us', dxSBAR_TOOLBAREXISTS, translated));
  HookResourceString(@dxSBAR_RECURSIVEGROUPS, TranslateProp('dxBarStrs','EB6','dxSBAR_RECURSIVEGROUPS', 'en-us', dxSBAR_RECURSIVEGROUPS, translated));
  HookResourceString(@dxSBAR_WANTTODELETECOMPLEXITEM, TranslateProp('dxBarStrs','EB6','dxSBAR_WANTTODELETECOMPLEXITEM', 'en-us', dxSBAR_WANTTODELETECOMPLEXITEM, translated));
  HookResourceString(@dxSBAR_CANTPLACEQUICKACCESSGROUPBUTTON, TranslateProp('dxBarStrs','EB6','dxSBAR_CANTPLACEQUICKACCESSGROUPBUTTON', 'en-us', dxSBAR_CANTPLACEQUICKACCESSGROUPBUTTON, translated));
  HookResourceString(@dxSBAR_QUICKACCESSGROUPBUTTONTOOLBARNOTDOCKEDINRIBBON, TranslateProp('dxBarStrs','EB6','dxSBAR_QUICKACCESSGROUPBUTTONTOOLBARNOTDOCKEDINRIBBON', 'en-us', dxSBAR_QUICKACCESSGROUPBUTTONTOOLBARNOTDOCKEDINRIBBON, translated));
  HookResourceString(@dxSBAR_QUICKACCESSALREADYHASGROUPBUTTON, TranslateProp('dxBarStrs','EB6','dxSBAR_QUICKACCESSALREADYHASGROUPBUTTON', 'en-us', dxSBAR_QUICKACCESSALREADYHASGROUPBUTTON, translated));
  HookResourceString(@dxSBAR_CANTPLACESEPARATOR, TranslateProp('dxBarStrs','EB6','dxSBAR_CANTPLACESEPARATOR', 'en-us', dxSBAR_CANTPLACESEPARATOR, translated));
  HookResourceString(@dxSBAR_CANTPLACERIBBONGALLERY, TranslateProp('dxBarStrs','EB6','dxSBAR_CANTPLACERIBBONGALLERY', 'en-us', dxSBAR_CANTPLACERIBBONGALLERY, translated));
  HookResourceString(@dxSBAR_CANTMERGEBARMANAGER, TranslateProp('dxBarStrs','EB6','dxSBAR_CANTMERGEBARMANAGER', 'en-us', dxSBAR_CANTMERGEBARMANAGER, translated));
  HookResourceString(@dxSBAR_CANTMERGETOOLBAR, TranslateProp('dxBarStrs','EB6','dxSBAR_CANTMERGETOOLBAR', 'en-us', dxSBAR_CANTMERGETOOLBAR, translated));
  HookResourceString(@dxSBAR_CANTMERGEWITHMERGEDTOOLBAR, TranslateProp('dxBarStrs','EB6','dxSBAR_CANTMERGEWITHMERGEDTOOLBAR', 'en-us', dxSBAR_CANTMERGEWITHMERGEDTOOLBAR, translated));
  HookResourceString(@dxSBAR_CANTUNMERGETOOLBAR, TranslateProp('dxBarStrs','EB6','dxSBAR_CANTUNMERGETOOLBAR', 'en-us', dxSBAR_CANTUNMERGETOOLBAR, translated));
  HookResourceString(@dxSBAR_ONEOFTOOLBARSALREADYMERGED, TranslateProp('dxBarStrs','EB6','dxSBAR_ONEOFTOOLBARSALREADYMERGED', 'en-us', dxSBAR_ONEOFTOOLBARSALREADYMERGED, translated));
  HookResourceString(@dxSBAR_ONEOFTOOLBARSHASMERGEDTOOLBARS, TranslateProp('dxBarStrs','EB6','dxSBAR_ONEOFTOOLBARSHASMERGEDTOOLBARS', 'en-us', dxSBAR_ONEOFTOOLBARSHASMERGEDTOOLBARS, translated));
  HookResourceString(@dxSBAR_TOOLBARHASMERGEDTOOLBARS, TranslateProp('dxBarStrs','EB6','dxSBAR_TOOLBARHASMERGEDTOOLBARS', 'en-us', dxSBAR_TOOLBARHASMERGEDTOOLBARS, translated));
  HookResourceString(@dxSBAR_TOOLBARSALREADYMERGED, TranslateProp('dxBarStrs','EB6','dxSBAR_TOOLBARSALREADYMERGED', 'en-us', dxSBAR_TOOLBARSALREADYMERGED, translated));
  HookResourceString(@dxSBAR_TOOLBARSARENOTMERGED, TranslateProp('dxBarStrs','EB6','dxSBAR_TOOLBARSARENOTMERGED', 'en-us', dxSBAR_TOOLBARSARENOTMERGED, translated));
  HookResourceString(@dxSBAR_DEFAULTCATEGORYNAME, TranslateProp('dxBarStrs','EB6','dxSBAR_DEFAULTCATEGORYNAME', 'en-us', dxSBAR_DEFAULTCATEGORYNAME, translated));
  HookResourceString(@dxSBAR_NEWBUTTONCAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_NEWBUTTONCAPTION', 'en-us', dxSBAR_NEWBUTTONCAPTION, translated));
  HookResourceString(@dxSBAR_NEWITEMCAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_NEWITEMCAPTION', 'en-us', dxSBAR_NEWITEMCAPTION, translated));
  HookResourceString(@dxSBAR_NEWRIBBONGALLERYITEMCAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_NEWRIBBONGALLERYITEMCAPTION', 'en-us', dxSBAR_NEWRIBBONGALLERYITEMCAPTION, translated));
  HookResourceString(@dxSBAR_NEWSEPARATORCAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_NEWSEPARATORCAPTION', 'en-us', dxSBAR_NEWSEPARATORCAPTION, translated));
  HookResourceString(@dxSBAR_NEWSUBITEMCAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_NEWSUBITEMCAPTION', 'en-us', dxSBAR_NEWSUBITEMCAPTION, translated));
  HookResourceString(@dxSBAR_CP_ADDSUBITEM, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_ADDSUBITEM', 'en-us', dxSBAR_CP_ADDSUBITEM, translated));
  HookResourceString(@dxSBAR_CP_ADDBUTTON, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_ADDBUTTON', 'en-us', dxSBAR_CP_ADDBUTTON, translated));
  HookResourceString(@dxSBAR_CP_ADDLARGEBUTTON, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_ADDLARGEBUTTON', 'en-us', dxSBAR_CP_ADDLARGEBUTTON, translated));
  HookResourceString(@dxSBAR_CP_ADDSEPARATOR, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_ADDSEPARATOR', 'en-us', dxSBAR_CP_ADDSEPARATOR, translated));
  HookResourceString(@dxSBAR_CP_ADDDXITEM, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_ADDDXITEM', 'en-us', dxSBAR_CP_ADDDXITEM, translated));
  HookResourceString(@dxSBAR_CP_ADDCXITEM, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_ADDCXITEM', 'en-us', dxSBAR_CP_ADDCXITEM, translated));
  HookResourceString(@dxSBAR_CP_ADDGROUPBUTTON, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_ADDGROUPBUTTON', 'en-us', dxSBAR_CP_ADDGROUPBUTTON, translated));
  HookResourceString(@dxSBAR_CP_DELETEITEM, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_DELETEITEM', 'en-us', dxSBAR_CP_DELETEITEM, translated));
  HookResourceString(@dxSBAR_CP_DELETELINK, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_DELETELINK', 'en-us', dxSBAR_CP_DELETELINK, translated));
  HookResourceString(@dxSBAR_CP_RESET, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_RESET', 'en-us', dxSBAR_CP_RESET, translated));
  HookResourceString(@dxSBAR_CP_DELETE, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_DELETE', 'en-us', dxSBAR_CP_DELETE, translated));
  HookResourceString(@dxSBAR_CP_NAME, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_NAME', 'en-us', dxSBAR_CP_NAME, translated));
  HookResourceString(@dxSBAR_CP_CAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_CAPTION', 'en-us', dxSBAR_CP_CAPTION, translated));
  HookResourceString(@dxSBAR_CP_BUTTONPAINTSTYLEMENU, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_BUTTONPAINTSTYLEMENU', 'en-us', dxSBAR_CP_BUTTONPAINTSTYLEMENU, translated));
  HookResourceString(@dxSBAR_CP_DEFAULTSTYLE, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_DEFAULTSTYLE', 'en-us', dxSBAR_CP_DEFAULTSTYLE, translated));
  HookResourceString(@dxSBAR_CP_TEXTONLYALWAYS, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_TEXTONLYALWAYS', 'en-us', dxSBAR_CP_TEXTONLYALWAYS, translated));
  HookResourceString(@dxSBAR_CP_TEXTONLYINMENUS, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_TEXTONLYINMENUS', 'en-us', dxSBAR_CP_TEXTONLYINMENUS, translated));
  HookResourceString(@dxSBAR_CP_IMAGEANDTEXT, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_IMAGEANDTEXT', 'en-us', dxSBAR_CP_IMAGEANDTEXT, translated));
  HookResourceString(@dxSBAR_CP_BEGINAGROUP, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_BEGINAGROUP', 'en-us', dxSBAR_CP_BEGINAGROUP, translated));
  HookResourceString(@dxSBAR_CP_VISIBLE, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_VISIBLE', 'en-us', dxSBAR_CP_VISIBLE, translated));
  HookResourceString(@dxSBAR_CP_MOSTRECENTLYUSED, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_MOSTRECENTLYUSED', 'en-us', dxSBAR_CP_MOSTRECENTLYUSED, translated));
  HookResourceString(@dxSBAR_CP_DISTRIBUTED, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_DISTRIBUTED', 'en-us', dxSBAR_CP_DISTRIBUTED, translated));
  HookResourceString(@dxSBAR_CP_POSITIONMENU, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_POSITIONMENU', 'en-us', dxSBAR_CP_POSITIONMENU, translated));
  HookResourceString(@dxSBAR_CP_VIEWLEVELSMENU, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_VIEWLEVELSMENU', 'en-us', dxSBAR_CP_VIEWLEVELSMENU, translated));
  HookResourceString(@dxSBAR_CP_ALLVIEWLEVELS, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_ALLVIEWLEVELS', 'en-us', dxSBAR_CP_ALLVIEWLEVELS, translated));
  HookResourceString(@dxSBAR_CP_SINGLEVIEWLEVELITEMSUFFIX, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_SINGLEVIEWLEVELITEMSUFFIX', 'en-us', dxSBAR_CP_SINGLEVIEWLEVELITEMSUFFIX, translated));
  HookResourceString(@dxSBAR_CP_BUTTONGROUPMENU, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_BUTTONGROUPMENU', 'en-us', dxSBAR_CP_BUTTONGROUPMENU, translated));
  HookResourceString(@dxSBAR_CP_BUTTONGROUP, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_BUTTONGROUP', 'en-us', dxSBAR_CP_BUTTONGROUP, translated));
  HookResourceString(@dxSBAR_CP_BUTTONUNGROUP, TranslateProp('dxBarStrs','EB6','dxSBAR_CP_BUTTONUNGROUP', 'en-us', dxSBAR_CP_BUTTONUNGROUP, translated));
  HookResourceString(@dxSBAR_ADDEX, TranslateProp('dxBarStrs','EB6','dxSBAR_ADDEX', 'en-us', dxSBAR_ADDEX, translated));
  HookResourceString(@dxSBAR_RENAMEEX, TranslateProp('dxBarStrs','EB6','dxSBAR_RENAMEEX', 'en-us', dxSBAR_RENAMEEX, translated));
  HookResourceString(@dxSBAR_DELETE, TranslateProp('dxBarStrs','EB6','dxSBAR_DELETE', 'en-us', dxSBAR_DELETE, translated));
  HookResourceString(@dxSBAR_CLEAR, TranslateProp('dxBarStrs','EB6','dxSBAR_CLEAR', 'en-us', dxSBAR_CLEAR, translated));
  HookResourceString(@dxSBAR_VISIBLE, TranslateProp('dxBarStrs','EB6','dxSBAR_VISIBLE', 'en-us', dxSBAR_VISIBLE, translated));
  HookResourceString(@dxSBAR_OK, TranslateProp('dxBarStrs','EB6','dxSBAR_OK', 'en-us', dxSBAR_OK, translated));
  HookResourceString(@dxSBAR_CANCEL, TranslateProp('dxBarStrs','EB6','dxSBAR_CANCEL', 'en-us', dxSBAR_CANCEL, translated));
  HookResourceString(@dxSBAR_SUBMENUEDITOR, TranslateProp('dxBarStrs','EB6','dxSBAR_SUBMENUEDITOR', 'en-us', dxSBAR_SUBMENUEDITOR, translated));
  HookResourceString(@dxSBAR_SUBMENUEDITORCAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_SUBMENUEDITORCAPTION', 'en-us', dxSBAR_SUBMENUEDITORCAPTION, translated));
  HookResourceString(@dxSBAR_INSERTEX, TranslateProp('dxBarStrs','EB6','dxSBAR_INSERTEX', 'en-us', dxSBAR_INSERTEX, translated));
  HookResourceString(@dxSBAR_MOVEUP, TranslateProp('dxBarStrs','EB6','dxSBAR_MOVEUP', 'en-us', dxSBAR_MOVEUP, translated));
  HookResourceString(@dxSBAR_MOVEDOWN, TranslateProp('dxBarStrs','EB6','dxSBAR_MOVEDOWN', 'en-us', dxSBAR_MOVEDOWN, translated));
  HookResourceString(@dxSBAR_POPUPMENUEDITOR, TranslateProp('dxBarStrs','EB6','dxSBAR_POPUPMENUEDITOR', 'en-us', dxSBAR_POPUPMENUEDITOR, translated));
  HookResourceString(@dxSBAR_TABSHEET1, TranslateProp('dxBarStrs','EB6','dxSBAR_TABSHEET1', 'en-us', dxSBAR_TABSHEET1, translated));
  HookResourceString(@dxSBAR_TABSHEET2, TranslateProp('dxBarStrs','EB6','dxSBAR_TABSHEET2', 'en-us', dxSBAR_TABSHEET2, translated));
  HookResourceString(@dxSBAR_TABSHEET3, TranslateProp('dxBarStrs','EB6','dxSBAR_TABSHEET3', 'en-us', dxSBAR_TABSHEET3, translated));
  HookResourceString(@dxSBAR_TOOLBARS, TranslateProp('dxBarStrs','EB6','dxSBAR_TOOLBARS', 'en-us', dxSBAR_TOOLBARS, translated));
  HookResourceString(@dxSBAR_TNEW, TranslateProp('dxBarStrs','EB6','dxSBAR_TNEW', 'en-us', dxSBAR_TNEW, translated));
  HookResourceString(@dxSBAR_TRENAME, TranslateProp('dxBarStrs','EB6','dxSBAR_TRENAME', 'en-us', dxSBAR_TRENAME, translated));
  HookResourceString(@dxSBAR_TDELETE, TranslateProp('dxBarStrs','EB6','dxSBAR_TDELETE', 'en-us', dxSBAR_TDELETE, translated));
  HookResourceString(@dxSBAR_TRESET, TranslateProp('dxBarStrs','EB6','dxSBAR_TRESET', 'en-us', dxSBAR_TRESET, translated));
  HookResourceString(@dxSBAR_CLOSE, TranslateProp('dxBarStrs','EB6','dxSBAR_CLOSE', 'en-us', dxSBAR_CLOSE, translated));
  HookResourceString(@dxSBAR_CAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_CAPTION', 'en-us', dxSBAR_CAPTION, translated));
  HookResourceString(@dxSBAR_CATEGORIES, TranslateProp('dxBarStrs','EB6','dxSBAR_CATEGORIES', 'en-us', dxSBAR_CATEGORIES, translated));
  HookResourceString(@dxSBAR_COMMANDS, TranslateProp('dxBarStrs','EB6','dxSBAR_COMMANDS', 'en-us', dxSBAR_COMMANDS, translated));
  HookResourceString(@dxSBAR_DESCRIPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_DESCRIPTION', 'en-us', dxSBAR_DESCRIPTION, translated));
  HookResourceString(@dxSBAR_MDIMINIMIZE, TranslateProp('dxBarStrs','EB6','dxSBAR_MDIMINIMIZE', 'en-us', dxSBAR_MDIMINIMIZE, translated));
  HookResourceString(@dxSBAR_MDIRESTORE, TranslateProp('dxBarStrs','EB6','dxSBAR_MDIRESTORE', 'en-us', dxSBAR_MDIRESTORE, translated));
  HookResourceString(@dxSBAR_MDICLOSE, TranslateProp('dxBarStrs','EB6','dxSBAR_MDICLOSE', 'en-us', dxSBAR_MDICLOSE, translated));
  HookResourceString(@dxSBAR_CUSTOMIZE, TranslateProp('dxBarStrs','EB6','dxSBAR_CUSTOMIZE', 'en-us', dxSBAR_CUSTOMIZE, translated));
  HookResourceString(@dxSBAR_ADDREMOVEBUTTONS, TranslateProp('dxBarStrs','EB6','dxSBAR_ADDREMOVEBUTTONS', 'en-us', dxSBAR_ADDREMOVEBUTTONS, translated));
  HookResourceString(@dxSBAR_MOREBUTTONS, TranslateProp('dxBarStrs','EB6','dxSBAR_MOREBUTTONS', 'en-us', dxSBAR_MOREBUTTONS, translated));
  HookResourceString(@dxSBAR_RESETTOOLBAR, TranslateProp('dxBarStrs','EB6','dxSBAR_RESETTOOLBAR', 'en-us', dxSBAR_RESETTOOLBAR, translated));
  HookResourceString(@dxSBAR_EXPAND, TranslateProp('dxBarStrs','EB6','dxSBAR_EXPAND', 'en-us', dxSBAR_EXPAND, translated));
  HookResourceString(@dxSBAR_DRAGTOMAKEMENUFLOAT, TranslateProp('dxBarStrs','EB6','dxSBAR_DRAGTOMAKEMENUFLOAT', 'en-us', dxSBAR_DRAGTOMAKEMENUFLOAT, translated));
  HookResourceString(@dxSBAR_MORECOMMANDS, TranslateProp('dxBarStrs','EB6','dxSBAR_MORECOMMANDS', 'en-us', dxSBAR_MORECOMMANDS, translated));
  HookResourceString(@dxSBAR_SHOWBELOWRIBBON, TranslateProp('dxBarStrs','EB6','dxSBAR_SHOWBELOWRIBBON', 'en-us', dxSBAR_SHOWBELOWRIBBON, translated));
  HookResourceString(@dxSBAR_SHOWABOVERIBBON, TranslateProp('dxBarStrs','EB6','dxSBAR_SHOWABOVERIBBON', 'en-us', dxSBAR_SHOWABOVERIBBON, translated));
  HookResourceString(@dxSBAR_MINIMIZERIBBON, TranslateProp('dxBarStrs','EB6','dxSBAR_MINIMIZERIBBON', 'en-us', dxSBAR_MINIMIZERIBBON, translated));
  HookResourceString(@dxSBAR_ADDTOQAT, TranslateProp('dxBarStrs','EB6','dxSBAR_ADDTOQAT', 'en-us', dxSBAR_ADDTOQAT, translated));
  HookResourceString(@dxSBAR_ADDTOQATITEMNAME, TranslateProp('dxBarStrs','EB6','dxSBAR_ADDTOQATITEMNAME', 'en-us', dxSBAR_ADDTOQATITEMNAME, translated));
  HookResourceString(@dxSBAR_REMOVEFROMQAT, TranslateProp('dxBarStrs','EB6','dxSBAR_REMOVEFROMQAT', 'en-us', dxSBAR_REMOVEFROMQAT, translated));
  HookResourceString(@dxSBAR_CUSTOMIZEQAT, TranslateProp('dxBarStrs','EB6','dxSBAR_CUSTOMIZEQAT', 'en-us', dxSBAR_CUSTOMIZEQAT, translated));
  HookResourceString(@dxSBAR_ADDGALLERYNAME, TranslateProp('dxBarStrs','EB6','dxSBAR_ADDGALLERYNAME', 'en-us', dxSBAR_ADDGALLERYNAME, translated));
  HookResourceString(@dxSBAR_SHOWALLGALLERYGROUPS, TranslateProp('dxBarStrs','EB6','dxSBAR_SHOWALLGALLERYGROUPS', 'en-us', dxSBAR_SHOWALLGALLERYGROUPS, translated));
  HookResourceString(@dxSBAR_HIDEALLGALLERYGROUPS, TranslateProp('dxBarStrs','EB6','dxSBAR_HIDEALLGALLERYGROUPS', 'en-us', dxSBAR_HIDEALLGALLERYGROUPS, translated));
  HookResourceString(@dxSBAR_CLEARGALLERYFILTER, TranslateProp('dxBarStrs','EB6','dxSBAR_CLEARGALLERYFILTER', 'en-us', dxSBAR_CLEARGALLERYFILTER, translated));
  HookResourceString(@dxSBAR_GALLERYEMPTYFILTERCAPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_GALLERYEMPTYFILTERCAPTION', 'en-us', dxSBAR_GALLERYEMPTYFILTERCAPTION, translated));
  HookResourceString(@dxSBAR_TOOLBARNEWNAME, TranslateProp('dxBarStrs','EB6','dxSBAR_TOOLBARNEWNAME', 'en-us', dxSBAR_TOOLBARNEWNAME, translated));
  HookResourceString(@dxSBAR_CATEGORYADD, TranslateProp('dxBarStrs','EB6','dxSBAR_CATEGORYADD', 'en-us', dxSBAR_CATEGORYADD, translated));
  HookResourceString(@dxSBAR_CATEGORYINSERT, TranslateProp('dxBarStrs','EB6','dxSBAR_CATEGORYINSERT', 'en-us', dxSBAR_CATEGORYINSERT, translated));
  HookResourceString(@dxSBAR_CATEGORYRENAME, TranslateProp('dxBarStrs','EB6','dxSBAR_CATEGORYRENAME', 'en-us', dxSBAR_CATEGORYRENAME, translated));
  HookResourceString(@dxSBAR_TOOLBARADD, TranslateProp('dxBarStrs','EB6','dxSBAR_TOOLBARADD', 'en-us', dxSBAR_TOOLBARADD, translated));
  HookResourceString(@dxSBAR_TOOLBARRENAME, TranslateProp('dxBarStrs','EB6','dxSBAR_TOOLBARRENAME', 'en-us', dxSBAR_TOOLBARRENAME, translated));
  HookResourceString(@dxSBAR_CATEGORYNAME, TranslateProp('dxBarStrs','EB6','dxSBAR_CATEGORYNAME', 'en-us', dxSBAR_CATEGORYNAME, translated));
  HookResourceString(@dxSBAR_TOOLBARNAME, TranslateProp('dxBarStrs','EB6','dxSBAR_TOOLBARNAME', 'en-us', dxSBAR_TOOLBARNAME, translated));
  HookResourceString(@dxSBAR_CUSTOMIZINGFORM, TranslateProp('dxBarStrs','EB6','dxSBAR_CUSTOMIZINGFORM', 'en-us', dxSBAR_CUSTOMIZINGFORM, translated));
  HookResourceString(@dxSBAR_MODIFY, TranslateProp('dxBarStrs','EB6','dxSBAR_MODIFY', 'en-us', dxSBAR_MODIFY, translated));
  HookResourceString(@dxSBAR_PERSMENUSANDTOOLBARS, TranslateProp('dxBarStrs','EB6','dxSBAR_PERSMENUSANDTOOLBARS', 'en-us', dxSBAR_PERSMENUSANDTOOLBARS, translated));
  HookResourceString(@dxSBAR_MENUSSHOWRECENTITEMS, TranslateProp('dxBarStrs','EB6','dxSBAR_MENUSSHOWRECENTITEMS', 'en-us', dxSBAR_MENUSSHOWRECENTITEMS, translated));
  HookResourceString(@dxSBAR_SHOWFULLMENUSAFTERDELAY, TranslateProp('dxBarStrs','EB6','dxSBAR_SHOWFULLMENUSAFTERDELAY', 'en-us', dxSBAR_SHOWFULLMENUSAFTERDELAY, translated));
  HookResourceString(@dxSBAR_RESETUSAGEDATA, TranslateProp('dxBarStrs','EB6','dxSBAR_RESETUSAGEDATA', 'en-us', dxSBAR_RESETUSAGEDATA, translated));
  HookResourceString(@dxSBAR_OTHEROPTIONS, TranslateProp('dxBarStrs','EB6','dxSBAR_OTHEROPTIONS', 'en-us', dxSBAR_OTHEROPTIONS, translated));
  HookResourceString(@dxSBAR_LARGEICONS, TranslateProp('dxBarStrs','EB6','dxSBAR_LARGEICONS', 'en-us', dxSBAR_LARGEICONS, translated));
  HookResourceString(@dxSBAR_HINTOPT1, TranslateProp('dxBarStrs','EB6','dxSBAR_HINTOPT1', 'en-us', dxSBAR_HINTOPT1, translated));
  HookResourceString(@dxSBAR_HINTOPT2, TranslateProp('dxBarStrs','EB6','dxSBAR_HINTOPT2', 'en-us', dxSBAR_HINTOPT2, translated));
  HookResourceString(@dxSBAR_MENUANIMATIONS, TranslateProp('dxBarStrs','EB6','dxSBAR_MENUANIMATIONS', 'en-us', dxSBAR_MENUANIMATIONS, translated));
  HookResourceString(@dxSBAR_MENUANIM1, TranslateProp('dxBarStrs','EB6','dxSBAR_MENUANIM1', 'en-us', dxSBAR_MENUANIM1, translated));
  HookResourceString(@dxSBAR_MENUANIM2, TranslateProp('dxBarStrs','EB6','dxSBAR_MENUANIM2', 'en-us', dxSBAR_MENUANIM2, translated));
  HookResourceString(@dxSBAR_MENUANIM3, TranslateProp('dxBarStrs','EB6','dxSBAR_MENUANIM3', 'en-us', dxSBAR_MENUANIM3, translated));
  HookResourceString(@dxSBAR_MENUANIM4, TranslateProp('dxBarStrs','EB6','dxSBAR_MENUANIM4', 'en-us', dxSBAR_MENUANIM4, translated));
  HookResourceString(@dxSBAR_MENUANIM5, TranslateProp('dxBarStrs','EB6','dxSBAR_MENUANIM5', 'en-us', dxSBAR_MENUANIM5, translated));
  HookResourceString(@dxSBAR_CANTFINDBARMANAGERFORSTATUSBAR, TranslateProp('dxBarStrs','EB6','dxSBAR_CANTFINDBARMANAGERFORSTATUSBAR', 'en-us', dxSBAR_CANTFINDBARMANAGERFORSTATUSBAR, translated));
  HookResourceString(@dxSBAR_BUTTONDEFAULTACTIONDESCRIPTION, TranslateProp('dxBarStrs','EB6','dxSBAR_BUTTONDEFAULTACTIONDESCRIPTION', 'en-us', dxSBAR_BUTTONDEFAULTACTIONDESCRIPTION, translated));
  HookResourceString(@SBlob, TranslateProp('dxBarStrs','EB6','SBlob', 'en-us', SBlob, translated));
  HookResourceString(@dxSBAR_GDIPLUSNEEDED, TranslateProp('dxBarStrs','EB6','dxSBAR_GDIPLUSNEEDED', 'en-us', dxSBAR_GDIPLUSNEEDED, translated));
  HookResourceString(@dxSBAR_RIBBONMORETHANONE, TranslateProp('dxBarStrs','EB6','dxSBAR_RIBBONMORETHANONE', 'en-us', dxSBAR_RIBBONMORETHANONE, translated));
  HookResourceString(@dxSBAR_RIBBONBADOWNER, TranslateProp('dxBarStrs','EB6','dxSBAR_RIBBONBADOWNER', 'en-us', dxSBAR_RIBBONBADOWNER, translated));
  HookResourceString(@dxSBAR_RIBBONBADPARENT, TranslateProp('dxBarStrs','EB6','dxSBAR_RIBBONBADPARENT', 'en-us', dxSBAR_RIBBONBADPARENT, translated));
  HookResourceString(@dxSBAR_RIBBONADDTAB, TranslateProp('dxBarStrs','EB6','dxSBAR_RIBBONADDTAB', 'en-us', dxSBAR_RIBBONADDTAB, translated));
  HookResourceString(@dxSBAR_RIBBONDELETETAB, TranslateProp('dxBarStrs','EB6','dxSBAR_RIBBONDELETETAB', 'en-us', dxSBAR_RIBBONDELETETAB, translated));
  HookResourceString(@dxSBAR_RIBBONADDEMPTYGROUP, TranslateProp('dxBarStrs','EB6','dxSBAR_RIBBONADDEMPTYGROUP', 'en-us', dxSBAR_RIBBONADDEMPTYGROUP, translated));
  HookResourceString(@dxSBAR_RIBBONADDGROUPWITHTOOLBAR, TranslateProp('dxBarStrs','EB6','dxSBAR_RIBBONADDGROUPWITHTOOLBAR', 'en-us', dxSBAR_RIBBONADDGROUPWITHTOOLBAR, translated));
  HookResourceString(@dxSBAR_RIBBONDELETEGROUP, TranslateProp('dxBarStrs','EB6','dxSBAR_RIBBONDELETEGROUP', 'en-us', dxSBAR_RIBBONDELETEGROUP, translated));
  HookResourceString(@dxSBAR_ACCESSIBILITY_RIBBONNAME, TranslateProp('dxBarStrs','EB6','dxSBAR_ACCESSIBILITY_RIBBONNAME', 'en-us', dxSBAR_ACCESSIBILITY_RIBBONNAME, translated));
  HookResourceString(@dxSBAR_ACCESSIBILITY_RIBBONTABCOLLECTIONNAME, TranslateProp('dxBarStrs','EB6','dxSBAR_ACCESSIBILITY_RIBBONTABCOLLECTIONNAME', 'en-us', dxSBAR_ACCESSIBILITY_RIBBONTABCOLLECTIONNAME, translated));
end;

// -----------------------------------------------------------------------------

function TdxDockConstsResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@sdxInvalidLayoutSiteDeleting, TranslateProp('dxDockConsts','EDL','sdxInvalidLayoutSiteDeleting', 'en-us', sdxInvalidLayoutSiteDeleting, translated));
  HookResourceString(@sdxInvalidFloatSiteDeleting, TranslateProp('dxDockConsts','EDL','sdxInvalidFloatSiteDeleting', 'en-us', sdxInvalidFloatSiteDeleting, translated));
  HookResourceString(@sdxInvalidFloatingDeleting, TranslateProp('dxDockConsts','EDL','sdxInvalidFloatingDeleting', 'en-us', sdxInvalidFloatingDeleting, translated));
  HookResourceString(@sdxInvalidParentAssigning, TranslateProp('dxDockConsts','EDL','sdxInvalidParentAssigning', 'en-us', sdxInvalidParentAssigning, translated));
  HookResourceString(@sdxInvalidOwner, TranslateProp('dxDockConsts','EDL','sdxInvalidOwner', 'en-us', sdxInvalidOwner, translated));
  HookResourceString(@sdxInvalidParent, TranslateProp('dxDockConsts','EDL','sdxInvalidParent', 'en-us', sdxInvalidParent, translated));
  HookResourceString(@sdxInvalidDockSiteParent, TranslateProp('dxDockConsts','EDL','sdxInvalidDockSiteParent', 'en-us', sdxInvalidDockSiteParent, translated));
  HookResourceString(@sdxInvalidFloatSiteParent, TranslateProp('dxDockConsts','EDL','sdxInvalidFloatSiteParent', 'en-us', sdxInvalidFloatSiteParent, translated));
  HookResourceString(@sdxInvalidPanelChild, TranslateProp('dxDockConsts','EDL','sdxInvalidPanelChild', 'en-us', sdxInvalidPanelChild, translated));
  HookResourceString(@sdxInvalidSiteChild, TranslateProp('dxDockConsts','EDL','sdxInvalidSiteChild', 'en-us', sdxInvalidSiteChild, translated));
  HookResourceString(@sdxInvaldZoneOwner, TranslateProp('dxDockConsts','EDL','sdxInvaldZoneOwner', 'en-us', sdxInvaldZoneOwner, translated));
  HookResourceString(@sdxInternalErrorAutoHide, TranslateProp('dxDockConsts','EDL','sdxInternalErrorAutoHide', 'en-us', sdxInternalErrorAutoHide, translated));
  HookResourceString(@sdxInternalErrorPainter, TranslateProp('dxDockConsts','EDL','sdxInternalErrorPainter', 'en-us', sdxInternalErrorPainter, translated));
  HookResourceString(@sdxInternalErrorLayout, TranslateProp('dxDockConsts','EDL','sdxInternalErrorLayout', 'en-us', sdxInternalErrorLayout, translated));
  HookResourceString(@sdxInternalErrorCreateLayout, TranslateProp('dxDockConsts','EDL','sdxInternalErrorCreateLayout', 'en-us', sdxInternalErrorCreateLayout, translated));
  HookResourceString(@sdxInternalErrorDestroyLayout, TranslateProp('dxDockConsts','EDL','sdxInternalErrorDestroyLayout', 'en-us', sdxInternalErrorDestroyLayout, translated));
  HookResourceString(@sdxManagerError, TranslateProp('dxDockConsts','EDL','sdxManagerError', 'en-us', sdxManagerError, translated));
  HookResourceString(@sdxAncestorError, TranslateProp('dxDockConsts','EDL','sdxAncestorError', 'en-us', sdxAncestorError, translated));
end;

// -----------------------------------------------------------------------------

initialization
  RegisterResourceTranslators([TdxBarStrsResourceTranslator, TdxDockConstsResourceTranslator]);


end.
