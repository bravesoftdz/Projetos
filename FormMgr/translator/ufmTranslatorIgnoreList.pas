unit ufmTranslatorIgnoreList;

interface

uses
  Classes, Types, windows, SysUtils, Controls, DB, nxDB, ExtCtrls, Dialogs,
  ActnList, cxStyles, ufmFormBase, LMDWaveComp, LMDSysInfo, cxHint,
  cxGraphics, kbmMemTable, dxPSCore, dxBar, Menus, cxGridDBTableView,
  dxLayoutContainer, dxNavBarStyles, dxLayoutLookAndFeels, dxNavBarCollns,
  cxGridDBCardView;

Const
  maxIgnoreCompTranslatorClassArray = 25;
  ignoreCompTranslatorClassArray : array[0..maxIgnoreCompTranslatorClassArray] of TClass =
      (TDataSource, TnxTable, TTimer, TSaveDialog, TActionList, TcxStyle,
       TLMDWaveComp, TLMDSysInfo, TcxHintStyleController, TcxImageList,
       TFormManager, TnxQuery, TkbmMemTable, TdxComponentPrinter, TdxBarManager,
       TPopupMenu, TdxBarPopupMenu, TcxGridDBTableView, TdxLayoutGroup, TcxStyleRepository,
       TdxNavBarStyleItem, TdxLayoutLookAndFeelList, TdxLayoutWebLookAndFeel,
       TdxLayoutStandardLookAndFeel, TdxNavBarGroup, TcxGridDBCardView
      );


implementation

end.
