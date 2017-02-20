unit ucadTransResources_en;

interface

uses
  SysUtils,
  classes,
  ufmTranslator,
  cxEditConsts,
  StdCtrls;
type


  {TcadConstsResourceTranslator = class ( TcadResourceTranslatorEN )
    procedure Translate(var translated:boolean); override;
  end;}

  TConstsResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TWebConstResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TXMLConstResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TZLibConstResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TOleConstResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TSvrConstResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TSysConstResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;


implementation

uses
   Consts, ZLibConst, OleConst, SysConst;

// -----------------------------------------------------------------------------

function TConstsResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@SOpenFileTitle, TranslateProp('Consts','D11','SOpenFileTitle', 'en-us', SOpenFileTitle, translated));
  HookResourceString(@SCantWriteResourceStreamError, TranslateProp('Consts','D11','SCantWriteResourceStreamError', 'en-us', SCantWriteResourceStreamError, translated));
  HookResourceString(@SDuplicateReference, TranslateProp('Consts','D11','SDuplicateReference', 'en-us', SDuplicateReference, translated));
  HookResourceString(@SClassMismatch, TranslateProp('Consts','D11','SClassMismatch', 'en-us', SClassMismatch, translated));
  HookResourceString(@SInvalidTabIndex, TranslateProp('Consts','D11','SInvalidTabIndex', 'en-us', SInvalidTabIndex, translated));
  HookResourceString(@SInvalidTabPosition, TranslateProp('Consts','D11','SInvalidTabPosition', 'en-us', SInvalidTabPosition, translated));
  HookResourceString(@SInvalidTabStyle, TranslateProp('Consts','D11','SInvalidTabStyle', 'en-us', SInvalidTabStyle, translated));
  HookResourceString(@SInvalidBitmap, TranslateProp('Consts','D11','SInvalidBitmap', 'en-us', SInvalidBitmap, translated));
  HookResourceString(@SInvalidIcon, TranslateProp('Consts','D11','SInvalidIcon', 'en-us', SInvalidIcon, translated));
  HookResourceString(@SInvalidMetafile, TranslateProp('Consts','D11','SInvalidMetafile', 'en-us', SInvalidMetafile, translated));
  HookResourceString(@SInvalidPixelFormat, TranslateProp('Consts','D11','SInvalidPixelFormat', 'en-us', SInvalidPixelFormat, translated));
  HookResourceString(@SInvalidImage, TranslateProp('Consts','D11','SInvalidImage', 'en-us', SInvalidImage, translated));
  HookResourceString(@SBitmapEmpty, TranslateProp('Consts','D11','SBitmapEmpty', 'en-us', SBitmapEmpty, translated));
  HookResourceString(@SScanLine, TranslateProp('Consts','D11','SScanLine', 'en-us', SScanLine, translated));
  HookResourceString(@SChangeIconSize, TranslateProp('Consts','D11','SChangeIconSize', 'en-us', SChangeIconSize, translated));
  HookResourceString(@SOleGraphic, TranslateProp('Consts','D11','SOleGraphic', 'en-us', SOleGraphic, translated));
  HookResourceString(@SUnknownExtension, TranslateProp('Consts','D11','SUnknownExtension', 'en-us', SUnknownExtension, translated));
  HookResourceString(@SUnknownClipboardFormat, TranslateProp('Consts','D11','SUnknownClipboardFormat', 'en-us', SUnknownClipboardFormat, translated));
  HookResourceString(@SOutOfResources, TranslateProp('Consts','D11','SOutOfResources', 'en-us', SOutOfResources, translated));
  HookResourceString(@SNoCanvasHandle, TranslateProp('Consts','D11','SNoCanvasHandle', 'en-us', SNoCanvasHandle, translated));
  HookResourceString(@SInvalidImageSize, TranslateProp('Consts','D11','SInvalidImageSize', 'en-us', SInvalidImageSize, translated));
  HookResourceString(@STooManyImages, TranslateProp('Consts','D11','STooManyImages', 'en-us', STooManyImages, translated));
  HookResourceString(@SDimsDoNotMatch, TranslateProp('Consts','D11','SDimsDoNotMatch', 'en-us', SDimsDoNotMatch, translated));
  HookResourceString(@SInvalidImageList, TranslateProp('Consts','D11','SInvalidImageList', 'en-us', SInvalidImageList, translated));
  HookResourceString(@SReplaceImage, TranslateProp('Consts','D11','SReplaceImage', 'en-us', SReplaceImage, translated));
  HookResourceString(@SImageIndexError, TranslateProp('Consts','D11','SImageIndexError', 'en-us', SImageIndexError, translated));
  HookResourceString(@SImageReadFail, TranslateProp('Consts','D11','SImageReadFail', 'en-us', SImageReadFail, translated));
  HookResourceString(@SImageWriteFail, TranslateProp('Consts','D11','SImageWriteFail', 'en-us', SImageWriteFail, translated));
  HookResourceString(@SWindowDCError, TranslateProp('Consts','D11','SWindowDCError', 'en-us', SWindowDCError, translated));
  HookResourceString(@SClientNotSet, TranslateProp('Consts','D11','SClientNotSet', 'en-us', SClientNotSet, translated));
  HookResourceString(@SWindowClass, TranslateProp('Consts','D11','SWindowClass', 'en-us', SWindowClass, translated));
  HookResourceString(@SWindowCreate, TranslateProp('Consts','D11','SWindowCreate', 'en-us', SWindowCreate, translated));
  HookResourceString(@SCannotFocus, TranslateProp('Consts','D11','SCannotFocus', 'en-us', SCannotFocus, translated));
  HookResourceString(@SParentRequired, TranslateProp('Consts','D11','SParentRequired', 'en-us', SParentRequired, translated));
  HookResourceString(@SParentGivenNotAParent, TranslateProp('Consts','D11','SParentGivenNotAParent', 'en-us', SParentGivenNotAParent, translated));
  HookResourceString(@SMDIChildNotVisible, TranslateProp('Consts','D11','SMDIChildNotVisible', 'en-us', SMDIChildNotVisible, translated));
  HookResourceString(@SVisibleChanged, TranslateProp('Consts','D11','SVisibleChanged', 'en-us', SVisibleChanged, translated));
  HookResourceString(@SCannotShowModal, TranslateProp('Consts','D11','SCannotShowModal', 'en-us', SCannotShowModal, translated));
  HookResourceString(@SScrollBarRange, TranslateProp('Consts','D11','SScrollBarRange', 'en-us', SScrollBarRange, translated));
  HookResourceString(@SPropertyOutOfRange, TranslateProp('Consts','D11','SPropertyOutOfRange', 'en-us', SPropertyOutOfRange, translated));
  HookResourceString(@SMenuIndexError, TranslateProp('Consts','D11','SMenuIndexError', 'en-us', SMenuIndexError, translated));
  HookResourceString(@SMenuReinserted, TranslateProp('Consts','D11','SMenuReinserted', 'en-us', SMenuReinserted, translated));
  HookResourceString(@SMenuNotFound, TranslateProp('Consts','D11','SMenuNotFound', 'en-us', SMenuNotFound, translated));
  HookResourceString(@SNoTimers, TranslateProp('Consts','D11','SNoTimers', 'en-us', SNoTimers, translated));
  HookResourceString(@SNotPrinting, TranslateProp('Consts','D11','SNotPrinting', 'en-us', SNotPrinting, translated));
  HookResourceString(@SPrinting, TranslateProp('Consts','D11','SPrinting', 'en-us', SPrinting, translated));
  HookResourceString(@SPrinterIndexError, TranslateProp('Consts','D11','SPrinterIndexError', 'en-us', SPrinterIndexError, translated));
  HookResourceString(@SInvalidPrinter, TranslateProp('Consts','D11','SInvalidPrinter', 'en-us', SInvalidPrinter, translated));
  HookResourceString(@SDeviceOnPort, TranslateProp('Consts','D11','SDeviceOnPort', 'en-us', SDeviceOnPort, translated));
  HookResourceString(@SGroupIndexTooLow, TranslateProp('Consts','D11','SGroupIndexTooLow', 'en-us', SGroupIndexTooLow, translated));
  HookResourceString(@STwoMDIForms, TranslateProp('Consts','D11','STwoMDIForms', 'en-us', STwoMDIForms, translated));
  HookResourceString(@SNoMDIForm, TranslateProp('Consts','D11','SNoMDIForm', 'en-us', SNoMDIForm, translated));
  HookResourceString(@SImageCanvasNeedsBitmap, TranslateProp('Consts','D11','SImageCanvasNeedsBitmap', 'en-us', SImageCanvasNeedsBitmap, translated));
  HookResourceString(@SControlParentSetToSelf, TranslateProp('Consts','D11','SControlParentSetToSelf', 'en-us', SControlParentSetToSelf, translated));
  HookResourceString(@SOKButton, TranslateProp('Consts','D11','SOKButton', 'en-us', SOKButton, translated));
  HookResourceString(@SCancelButton, TranslateProp('Consts','D11','SCancelButton', 'en-us', SCancelButton, translated));
  HookResourceString(@SYesButton, TranslateProp('Consts','D11','SYesButton', 'en-us', SYesButton, translated));
  HookResourceString(@SNoButton, TranslateProp('Consts','D11','SNoButton', 'en-us', SNoButton, translated));
  HookResourceString(@SHelpButton, TranslateProp('Consts','D11','SHelpButton', 'en-us', SHelpButton, translated));
  HookResourceString(@SCloseButton, TranslateProp('Consts','D11','SCloseButton', 'en-us', SCloseButton, translated));
  HookResourceString(@SIgnoreButton, TranslateProp('Consts','D11','SIgnoreButton', 'en-us', SIgnoreButton, translated));
  HookResourceString(@SRetryButton, TranslateProp('Consts','D11','SRetryButton', 'en-us', SRetryButton, translated));
  HookResourceString(@SAbortButton, TranslateProp('Consts','D11','SAbortButton', 'en-us', SAbortButton, translated));
  HookResourceString(@SAllButton, TranslateProp('Consts','D11','SAllButton', 'en-us', SAllButton, translated));
  HookResourceString(@SCannotDragForm, TranslateProp('Consts','D11','SCannotDragForm', 'en-us', SCannotDragForm, translated));
  HookResourceString(@SPutObjectError, TranslateProp('Consts','D11','SPutObjectError', 'en-us', SPutObjectError, translated));
  HookResourceString(@SCardDLLNotLoaded, TranslateProp('Consts','D11','SCardDLLNotLoaded', 'en-us', SCardDLLNotLoaded, translated));
  HookResourceString(@SDuplicateCardId, TranslateProp('Consts','D11','SDuplicateCardId', 'en-us', SDuplicateCardId, translated));
  HookResourceString(@SDdeErr, TranslateProp('Consts','D11','SDdeErr', 'en-us', SDdeErr, translated));
  HookResourceString(@SDdeConvErr, TranslateProp('Consts','D11','SDdeConvErr', 'en-us', SDdeConvErr, translated));
  HookResourceString(@SDdeMemErr, TranslateProp('Consts','D11','SDdeMemErr', 'en-us', SDdeMemErr, translated));
  HookResourceString(@SDdeNoConnect, TranslateProp('Consts','D11','SDdeNoConnect', 'en-us', SDdeNoConnect, translated));
  HookResourceString(@SFB, TranslateProp('Consts','D11','SFB', 'en-us', SFB, translated));
  HookResourceString(@SFG, TranslateProp('Consts','D11','SFG', 'en-us', SFG, translated));
  HookResourceString(@SBG, TranslateProp('Consts','D11','SBG', 'en-us', SBG, translated));
  HookResourceString(@SOldTShape, TranslateProp('Consts','D11','SOldTShape', 'en-us', SOldTShape, translated));
  HookResourceString(@SVMetafiles, TranslateProp('Consts','D11','SVMetafiles', 'en-us', SVMetafiles, translated));
  HookResourceString(@SVEnhMetafiles, TranslateProp('Consts','D11','SVEnhMetafiles', 'en-us', SVEnhMetafiles, translated));
  HookResourceString(@SVIcons, TranslateProp('Consts','D11','SVIcons', 'en-us', SVIcons, translated));
  HookResourceString(@SVBitmaps, TranslateProp('Consts','D11','SVBitmaps', 'en-us', SVBitmaps, translated));
  HookResourceString(@SGridTooLarge, TranslateProp('Consts','D11','SGridTooLarge', 'en-us', SGridTooLarge, translated));
  HookResourceString(@STooManyDeleted, TranslateProp('Consts','D11','STooManyDeleted', 'en-us', STooManyDeleted, translated));
  HookResourceString(@SIndexOutOfRange, TranslateProp('Consts','D11','SIndexOutOfRange', 'en-us', SIndexOutOfRange, translated));
  HookResourceString(@SFixedColTooBig, TranslateProp('Consts','D11','SFixedColTooBig', 'en-us', SFixedColTooBig, translated));
  HookResourceString(@SFixedRowTooBig, TranslateProp('Consts','D11','SFixedRowTooBig', 'en-us', SFixedRowTooBig, translated));
  HookResourceString(@SInvalidStringGridOp, TranslateProp('Consts','D11','SInvalidStringGridOp', 'en-us', SInvalidStringGridOp, translated));
  HookResourceString(@SInvalidEnumValue, TranslateProp('Consts','D11','SInvalidEnumValue', 'en-us', SInvalidEnumValue, translated));
  HookResourceString(@SInvalidNumber, TranslateProp('Consts','D11','SInvalidNumber', 'en-us', SInvalidNumber, translated));
  HookResourceString(@SOutlineIndexError, TranslateProp('Consts','D11','SOutlineIndexError', 'en-us', SOutlineIndexError, translated));
  HookResourceString(@SOutlineExpandError, TranslateProp('Consts','D11','SOutlineExpandError', 'en-us', SOutlineExpandError, translated));
  HookResourceString(@SInvalidCurrentItem, TranslateProp('Consts','D11','SInvalidCurrentItem', 'en-us', SInvalidCurrentItem, translated));
  HookResourceString(@SMaskErr, TranslateProp('Consts','D11','SMaskErr', 'en-us', SMaskErr, translated));
  HookResourceString(@SMaskEditErr, TranslateProp('Consts','D11','SMaskEditErr', 'en-us', SMaskEditErr, translated));
  HookResourceString(@SOutlineError, TranslateProp('Consts','D11','SOutlineError', 'en-us', SOutlineError, translated));
  HookResourceString(@SOutlineBadLevel, TranslateProp('Consts','D11','SOutlineBadLevel', 'en-us', SOutlineBadLevel, translated));
  HookResourceString(@SOutlineSelection, TranslateProp('Consts','D11','SOutlineSelection', 'en-us', SOutlineSelection, translated));
  HookResourceString(@SOutlineFileLoad, TranslateProp('Consts','D11','SOutlineFileLoad', 'en-us', SOutlineFileLoad, translated));
  HookResourceString(@SOutlineLongLine, TranslateProp('Consts','D11','SOutlineLongLine', 'en-us', SOutlineLongLine, translated));
  HookResourceString(@SOutlineMaxLevels, TranslateProp('Consts','D11','SOutlineMaxLevels', 'en-us', SOutlineMaxLevels, translated));
  HookResourceString(@SMsgDlgWarning, TranslateProp('Consts','D11','SMsgDlgWarning', 'en-us', SMsgDlgWarning, translated));
  HookResourceString(@SMsgDlgError, TranslateProp('Consts','D11','SMsgDlgError', 'en-us', SMsgDlgError, translated));
  HookResourceString(@SMsgDlgInformation, TranslateProp('Consts','D11','SMsgDlgInformation', 'en-us', SMsgDlgInformation, translated));
  HookResourceString(@SMsgDlgConfirm, TranslateProp('Consts','D11','SMsgDlgConfirm', 'en-us', SMsgDlgConfirm, translated));
  HookResourceString(@SMsgDlgYes, TranslateProp('Consts','D11','SMsgDlgYes', 'en-us', SMsgDlgYes, translated));
  HookResourceString(@SMsgDlgNo, TranslateProp('Consts','D11','SMsgDlgNo', 'en-us', SMsgDlgNo, translated));
  HookResourceString(@SMsgDlgOK, TranslateProp('Consts','D11','SMsgDlgOK', 'en-us', SMsgDlgOK, translated));
  HookResourceString(@SMsgDlgCancel, TranslateProp('Consts','D11','SMsgDlgCancel', 'en-us', SMsgDlgCancel, translated));
  HookResourceString(@SMsgDlgHelp, TranslateProp('Consts','D11','SMsgDlgHelp', 'en-us', SMsgDlgHelp, translated));
  HookResourceString(@SMsgDlgHelpNone, TranslateProp('Consts','D11','SMsgDlgHelpNone', 'en-us', SMsgDlgHelpNone, translated));
  HookResourceString(@SMsgDlgHelpHelp, TranslateProp('Consts','D11','SMsgDlgHelpHelp', 'en-us', SMsgDlgHelpHelp, translated));
  HookResourceString(@SMsgDlgAbort, TranslateProp('Consts','D11','SMsgDlgAbort', 'en-us', SMsgDlgAbort, translated));
  HookResourceString(@SMsgDlgRetry, TranslateProp('Consts','D11','SMsgDlgRetry', 'en-us', SMsgDlgRetry, translated));
  HookResourceString(@SMsgDlgIgnore, TranslateProp('Consts','D11','SMsgDlgIgnore', 'en-us', SMsgDlgIgnore, translated));
  HookResourceString(@SMsgDlgAll, TranslateProp('Consts','D11','SMsgDlgAll', 'en-us', SMsgDlgAll, translated));
  HookResourceString(@SMsgDlgNoToAll, TranslateProp('Consts','D11','SMsgDlgNoToAll', 'en-us', SMsgDlgNoToAll, translated));
  HookResourceString(@SMsgDlgYesToAll, TranslateProp('Consts','D11','SMsgDlgYesToAll', 'en-us', SMsgDlgYesToAll, translated));
  HookResourceString(@SmkcBkSp, TranslateProp('Consts','D11','SmkcBkSp', 'en-us', SmkcBkSp, translated));
  HookResourceString(@SmkcTab, TranslateProp('Consts','D11','SmkcTab', 'en-us', SmkcTab, translated));
  HookResourceString(@SmkcEsc, TranslateProp('Consts','D11','SmkcEsc', 'en-us', SmkcEsc, translated));
  HookResourceString(@SmkcEnter, TranslateProp('Consts','D11','SmkcEnter', 'en-us', SmkcEnter, translated));
  HookResourceString(@SmkcSpace, TranslateProp('Consts','D11','SmkcSpace', 'en-us', SmkcSpace, translated));
  HookResourceString(@SmkcPgUp, TranslateProp('Consts','D11','SmkcPgUp', 'en-us', SmkcPgUp, translated));
  HookResourceString(@SmkcPgDn, TranslateProp('Consts','D11','SmkcPgDn', 'en-us', SmkcPgDn, translated));
  HookResourceString(@SmkcEnd, TranslateProp('Consts','D11','SmkcEnd', 'en-us', SmkcEnd, translated));
  HookResourceString(@SmkcHome, TranslateProp('Consts','D11','SmkcHome', 'en-us', SmkcHome, translated));
  HookResourceString(@SmkcLeft, TranslateProp('Consts','D11','SmkcLeft', 'en-us', SmkcLeft, translated));
  HookResourceString(@SmkcUp, TranslateProp('Consts','D11','SmkcUp', 'en-us', SmkcUp, translated));
  HookResourceString(@SmkcRight, TranslateProp('Consts','D11','SmkcRight', 'en-us', SmkcRight, translated));
  HookResourceString(@SmkcDown, TranslateProp('Consts','D11','SmkcDown', 'en-us', SmkcDown, translated));
  HookResourceString(@SmkcIns, TranslateProp('Consts','D11','SmkcIns', 'en-us', SmkcIns, translated));
  HookResourceString(@SmkcDel, TranslateProp('Consts','D11','SmkcDel', 'en-us', SmkcDel, translated));
  HookResourceString(@SmkcShift, TranslateProp('Consts','D11','SmkcShift', 'en-us', SmkcShift, translated));
  HookResourceString(@SmkcCtrl, TranslateProp('Consts','D11','SmkcCtrl', 'en-us', SmkcCtrl, translated));
  HookResourceString(@SmkcAlt, TranslateProp('Consts','D11','SmkcAlt', 'en-us', SmkcAlt, translated));
  HookResourceString(@SOutOfRange, TranslateProp('Consts','D11','SOutOfRange', 'en-us', SOutOfRange, translated));
  HookResourceString(@SDateEncodeError, TranslateProp('Consts','D11','SDateEncodeError', 'en-us', SDateEncodeError, translated));
  HookResourceString(@SDefaultFilter, TranslateProp('Consts','D11','SDefaultFilter', 'en-us', SDefaultFilter, translated));
  HookResourceString(@SNoVolumeLabel, TranslateProp('Consts','D11','SNoVolumeLabel', 'en-us', SNoVolumeLabel, translated));
  HookResourceString(@SInsertLineError, TranslateProp('Consts','D11','SInsertLineError', 'en-us', SInsertLineError, translated));
  HookResourceString(@SConfirmCreateDir, TranslateProp('Consts','D11','SConfirmCreateDir', 'en-us', SConfirmCreateDir, translated));
  HookResourceString(@SSelectDirCap, TranslateProp('Consts','D11','SSelectDirCap', 'en-us', SSelectDirCap, translated));
  HookResourceString(@SDirNameCap, TranslateProp('Consts','D11','SDirNameCap', 'en-us', SDirNameCap, translated));
  HookResourceString(@SDrivesCap, TranslateProp('Consts','D11','SDrivesCap', 'en-us', SDrivesCap, translated));
  HookResourceString(@SDirsCap, TranslateProp('Consts','D11','SDirsCap', 'en-us', SDirsCap, translated));
  HookResourceString(@SFilesCap, TranslateProp('Consts','D11','SFilesCap', 'en-us', SFilesCap, translated));
  HookResourceString(@SNetworkCap, TranslateProp('Consts','D11','SNetworkCap', 'en-us', SNetworkCap, translated));
  HookResourceString(@SColorPrefix, TranslateProp('Consts','D11','SColorPrefix', 'en-us', SColorPrefix, translated));
  HookResourceString(@SColorTags, TranslateProp('Consts','D11','SColorTags', 'en-us', SColorTags, translated));
  HookResourceString(@SInvalidClipFmt, TranslateProp('Consts','D11','SInvalidClipFmt', 'en-us', SInvalidClipFmt, translated));
  HookResourceString(@SIconToClipboard, TranslateProp('Consts','D11','SIconToClipboard', 'en-us', SIconToClipboard, translated));
  HookResourceString(@SCannotOpenClipboard, TranslateProp('Consts','D11','SCannotOpenClipboard', 'en-us', SCannotOpenClipboard, translated));
  HookResourceString(@SDefault, TranslateProp('Consts','D11','SDefault', 'en-us', SDefault, translated));
  HookResourceString(@SInvalidMemoSize, TranslateProp('Consts','D11','SInvalidMemoSize', 'en-us', SInvalidMemoSize, translated));
  HookResourceString(@SCustomColors, TranslateProp('Consts','D11','SCustomColors', 'en-us', SCustomColors, translated));
  HookResourceString(@SInvalidPrinterOp, TranslateProp('Consts','D11','SInvalidPrinterOp', 'en-us', SInvalidPrinterOp, translated));
  HookResourceString(@SNoDefaultPrinter, TranslateProp('Consts','D11','SNoDefaultPrinter', 'en-us', SNoDefaultPrinter, translated));
  HookResourceString(@SIniFileWriteError, TranslateProp('Consts','D11','SIniFileWriteError', 'en-us', SIniFileWriteError, translated));
  HookResourceString(@SBitsIndexError, TranslateProp('Consts','D11','SBitsIndexError', 'en-us', SBitsIndexError, translated));
  HookResourceString(@SUntitled, TranslateProp('Consts','D11','SUntitled', 'en-us', SUntitled, translated));
  HookResourceString(@SInvalidRegType, TranslateProp('Consts','D11','SInvalidRegType', 'en-us', SInvalidRegType, translated));
  HookResourceString(@SUnknownConversion, TranslateProp('Consts','D11','SUnknownConversion', 'en-us', SUnknownConversion, translated));
  HookResourceString(@SDuplicateMenus, TranslateProp('Consts','D11','SDuplicateMenus', 'en-us', SDuplicateMenus, translated));
  HookResourceString(@SPictureLabel, TranslateProp('Consts','D11','SPictureLabel', 'en-us', SPictureLabel, translated));
  HookResourceString(@SPictureDesc, TranslateProp('Consts','D11','SPictureDesc', 'en-us', SPictureDesc, translated));
  HookResourceString(@SPreviewLabel, TranslateProp('Consts','D11','SPreviewLabel', 'en-us', SPreviewLabel, translated));
  HookResourceString(@SCannotOpenAVI, TranslateProp('Consts','D11','SCannotOpenAVI', 'en-us', SCannotOpenAVI, translated));
  HookResourceString(@SNotOpenErr, TranslateProp('Consts','D11','SNotOpenErr', 'en-us', SNotOpenErr, translated));
  HookResourceString(@SMPOpenFilter, TranslateProp('Consts','D11','SMPOpenFilter', 'en-us', SMPOpenFilter, translated));
  HookResourceString(@SMCINil, TranslateProp('Consts','D11','SMCINil', 'en-us', SMCINil, translated));
  HookResourceString(@SMCIAVIVideo, TranslateProp('Consts','D11','SMCIAVIVideo', 'en-us', SMCIAVIVideo, translated));
  HookResourceString(@SMCICDAudio, TranslateProp('Consts','D11','SMCICDAudio', 'en-us', SMCICDAudio, translated));
  HookResourceString(@SMCIDAT, TranslateProp('Consts','D11','SMCIDAT', 'en-us', SMCIDAT, translated));
  HookResourceString(@SMCIDigitalVideo, TranslateProp('Consts','D11','SMCIDigitalVideo', 'en-us', SMCIDigitalVideo, translated));
  HookResourceString(@SMCIMMMovie, TranslateProp('Consts','D11','SMCIMMMovie', 'en-us', SMCIMMMovie, translated));
  HookResourceString(@SMCIOther, TranslateProp('Consts','D11','SMCIOther', 'en-us', SMCIOther, translated));
  HookResourceString(@SMCIOverlay, TranslateProp('Consts','D11','SMCIOverlay', 'en-us', SMCIOverlay, translated));
  HookResourceString(@SMCIScanner, TranslateProp('Consts','D11','SMCIScanner', 'en-us', SMCIScanner, translated));
  HookResourceString(@SMCISequencer, TranslateProp('Consts','D11','SMCISequencer', 'en-us', SMCISequencer, translated));
  HookResourceString(@SMCIVCR, TranslateProp('Consts','D11','SMCIVCR', 'en-us', SMCIVCR, translated));
  HookResourceString(@SMCIVideodisc, TranslateProp('Consts','D11','SMCIVideodisc', 'en-us', SMCIVideodisc, translated));
  HookResourceString(@SMCIWaveAudio, TranslateProp('Consts','D11','SMCIWaveAudio', 'en-us', SMCIWaveAudio, translated));
  HookResourceString(@SMCIUnknownError, TranslateProp('Consts','D11','SMCIUnknownError', 'en-us', SMCIUnknownError, translated));
  HookResourceString(@SBoldItalicFont, TranslateProp('Consts','D11','SBoldItalicFont', 'en-us', SBoldItalicFont, translated));
  HookResourceString(@SBoldFont, TranslateProp('Consts','D11','SBoldFont', 'en-us', SBoldFont, translated));
  HookResourceString(@SItalicFont, TranslateProp('Consts','D11','SItalicFont', 'en-us', SItalicFont, translated));
  HookResourceString(@SRegularFont, TranslateProp('Consts','D11','SRegularFont', 'en-us', SRegularFont, translated));
  HookResourceString(@SPropertiesVerb, TranslateProp('Consts','D11','SPropertiesVerb', 'en-us', SPropertiesVerb, translated));
  HookResourceString(@SServiceFailed, TranslateProp('Consts','D11','SServiceFailed', 'en-us', SServiceFailed, translated));
  HookResourceString(@SExecute, TranslateProp('Consts','D11','SExecute', 'en-us', SExecute, translated));
  HookResourceString(@SStart, TranslateProp('Consts','D11','SStart', 'en-us', SStart, translated));
  HookResourceString(@SStop, TranslateProp('Consts','D11','SStop', 'en-us', SStop, translated));
  HookResourceString(@SPause, TranslateProp('Consts','D11','SPause', 'en-us', SPause, translated));
  HookResourceString(@SContinue, TranslateProp('Consts','D11','SContinue', 'en-us', SContinue, translated));
  HookResourceString(@SInterrogate, TranslateProp('Consts','D11','SInterrogate', 'en-us', SInterrogate, translated));
  HookResourceString(@SShutdown, TranslateProp('Consts','D11','SShutdown', 'en-us', SShutdown, translated));
  HookResourceString(@SCustomError, TranslateProp('Consts','D11','SCustomError', 'en-us', SCustomError, translated));
  HookResourceString(@SServiceInstallOK, TranslateProp('Consts','D11','SServiceInstallOK', 'en-us', SServiceInstallOK, translated));
  HookResourceString(@SServiceInstallFailed, TranslateProp('Consts','D11','SServiceInstallFailed', 'en-us', SServiceInstallFailed, translated));
  HookResourceString(@SServiceUninstallOK, TranslateProp('Consts','D11','SServiceUninstallOK', 'en-us', SServiceUninstallOK, translated));
  HookResourceString(@SServiceUninstallFailed, TranslateProp('Consts','D11','SServiceUninstallFailed', 'en-us', SServiceUninstallFailed, translated));
  HookResourceString(@SInvalidActionRegistration, TranslateProp('Consts','D11','SInvalidActionRegistration', 'en-us', SInvalidActionRegistration, translated));
  HookResourceString(@SInvalidActionUnregistration, TranslateProp('Consts','D11','SInvalidActionUnregistration', 'en-us', SInvalidActionUnregistration, translated));
  HookResourceString(@SInvalidActionEnumeration, TranslateProp('Consts','D11','SInvalidActionEnumeration', 'en-us', SInvalidActionEnumeration, translated));
  HookResourceString(@SInvalidActionCreation, TranslateProp('Consts','D11','SInvalidActionCreation', 'en-us', SInvalidActionCreation, translated));
  HookResourceString(@SDockedCtlNeedsName, TranslateProp('Consts','D11','SDockedCtlNeedsName', 'en-us', SDockedCtlNeedsName, translated));
  HookResourceString(@SDockTreeRemoveError, TranslateProp('Consts','D11','SDockTreeRemoveError', 'en-us', SDockTreeRemoveError, translated));
  HookResourceString(@SDockZoneNotFound, TranslateProp('Consts','D11','SDockZoneNotFound', 'en-us', SDockZoneNotFound, translated));
  HookResourceString(@SDockZoneHasNoCtl, TranslateProp('Consts','D11','SDockZoneHasNoCtl', 'en-us', SDockZoneHasNoCtl, translated));
  HookResourceString(@SDockZoneVersionConflict, TranslateProp('Consts','D11','SDockZoneVersionConflict', 'en-us', SDockZoneVersionConflict, translated));
  HookResourceString(@SAllCommands, TranslateProp('Consts','D11','SAllCommands', 'en-us', SAllCommands, translated));
  HookResourceString(@SDuplicateItem, TranslateProp('Consts','D11','SDuplicateItem', 'en-us', SDuplicateItem, translated));
  HookResourceString(@STextNotFound, TranslateProp('Consts','D11','STextNotFound', 'en-us', STextNotFound, translated));
  HookResourceString(@SBrowserExecError, TranslateProp('Consts','D11','SBrowserExecError', 'en-us', SBrowserExecError, translated));
  HookResourceString(@SColorBoxCustomCaption, TranslateProp('Consts','D11','SColorBoxCustomCaption', 'en-us', SColorBoxCustomCaption, translated));
  HookResourceString(@SMultiSelectRequired, TranslateProp('Consts','D11','SMultiSelectRequired', 'en-us', SMultiSelectRequired, translated));
  HookResourceString(@SKeyCaption, TranslateProp('Consts','D11','SKeyCaption', 'en-us', SKeyCaption, translated));
  HookResourceString(@SValueCaption, TranslateProp('Consts','D11','SValueCaption', 'en-us', SValueCaption, translated));
  HookResourceString(@SKeyConflict, TranslateProp('Consts','D11','SKeyConflict', 'en-us', SKeyConflict, translated));
  HookResourceString(@SKeyNotFound, TranslateProp('Consts','D11','SKeyNotFound', 'en-us', SKeyNotFound, translated));
  HookResourceString(@SNoColumnMoving, TranslateProp('Consts','D11','SNoColumnMoving', 'en-us', SNoColumnMoving, translated));
  HookResourceString(@SNoEqualsInKey, TranslateProp('Consts','D11','SNoEqualsInKey', 'en-us', SNoEqualsInKey, translated));
  HookResourceString(@SSendError, TranslateProp('Consts','D11','SSendError', 'en-us', SSendError, translated));
  HookResourceString(@SAssignSubItemError, TranslateProp('Consts','D11','SAssignSubItemError', 'en-us', SAssignSubItemError, translated));
  HookResourceString(@SDeleteItemWithSubItems, TranslateProp('Consts','D11','SDeleteItemWithSubItems', 'en-us', SDeleteItemWithSubItems, translated));
  HookResourceString(@SDeleteNotAllowed, TranslateProp('Consts','D11','SDeleteNotAllowed', 'en-us', SDeleteNotAllowed, translated));
  HookResourceString(@SMoveNotAllowed, TranslateProp('Consts','D11','SMoveNotAllowed', 'en-us', SMoveNotAllowed, translated));
  HookResourceString(@SMoreButtons, TranslateProp('Consts','D11','SMoreButtons', 'en-us', SMoreButtons, translated));
  HookResourceString(@SErrorDownloadingURL, TranslateProp('Consts','D11','SErrorDownloadingURL', 'en-us', SErrorDownloadingURL, translated));
  HookResourceString(@SUrlMonDllMissing, TranslateProp('Consts','D11','SUrlMonDllMissing', 'en-us', SUrlMonDllMissing, translated));
  HookResourceString(@SAllActions, TranslateProp('Consts','D11','SAllActions', 'en-us', SAllActions, translated));
  HookResourceString(@SNoCategory, TranslateProp('Consts','D11','SNoCategory', 'en-us', SNoCategory, translated));
  HookResourceString(@SExpand, TranslateProp('Consts','D11','SExpand', 'en-us', SExpand, translated));
  HookResourceString(@SErrorSettingPath, TranslateProp('Consts','D11','SErrorSettingPath', 'en-us', SErrorSettingPath, translated));
  HookResourceString(@SLBPutError, TranslateProp('Consts','D11','SLBPutError', 'en-us', SLBPutError, translated));
  HookResourceString(@SErrorLoadingFile, TranslateProp('Consts','D11','SErrorLoadingFile', 'en-us', SErrorLoadingFile, translated));
  HookResourceString(@SResetUsageData, TranslateProp('Consts','D11','SResetUsageData', 'en-us', SResetUsageData, translated));
  HookResourceString(@SFileRunDialogTitle, TranslateProp('Consts','D11','SFileRunDialogTitle', 'en-us', SFileRunDialogTitle, translated));
  HookResourceString(@SNoName, TranslateProp('Consts','D11','SNoName', 'en-us', SNoName, translated));
  HookResourceString(@SErrorActionManagerNotAssigned, TranslateProp('Consts','D11','SErrorActionManagerNotAssigned', 'en-us', SErrorActionManagerNotAssigned, translated));
  HookResourceString(@SAddRemoveButtons, TranslateProp('Consts','D11','SAddRemoveButtons', 'en-us', SAddRemoveButtons, translated));
  HookResourceString(@SResetActionToolBar, TranslateProp('Consts','D11','SResetActionToolBar', 'en-us', SResetActionToolBar, translated));
  HookResourceString(@SCustomize, TranslateProp('Consts','D11','SCustomize', 'en-us', SCustomize, translated));
  HookResourceString(@SSeparator, TranslateProp('Consts','D11','SSeparator', 'en-us', SSeparator, translated));
  HookResourceString(@SCirularReferencesNotAllowed, TranslateProp('Consts','D11','SCirularReferencesNotAllowed', 'en-us', SCirularReferencesNotAllowed, translated));
  HookResourceString(@SCannotHideActionBand, TranslateProp('Consts','D11','SCannotHideActionBand', 'en-us', SCannotHideActionBand, translated));
  HookResourceString(@SErrorSettingCount, TranslateProp('Consts','D11','SErrorSettingCount', 'en-us', SErrorSettingCount, translated));
  HookResourceString(@SListBoxMustBeVirtual, TranslateProp('Consts','D11','SListBoxMustBeVirtual', 'en-us', SListBoxMustBeVirtual, translated));
  HookResourceString(@SUnableToSaveSettings, TranslateProp('Consts','D11','SUnableToSaveSettings', 'en-us', SUnableToSaveSettings, translated));
  HookResourceString(@SRestoreDefaultSchedule, TranslateProp('Consts','D11','SRestoreDefaultSchedule', 'en-us', SRestoreDefaultSchedule, translated));
  HookResourceString(@SNoGetItemEventHandler, TranslateProp('Consts','D11','SNoGetItemEventHandler', 'en-us', SNoGetItemEventHandler, translated));
  HookResourceString(@SInvalidColorMap, TranslateProp('Consts','D11','SInvalidColorMap', 'en-us', SInvalidColorMap, translated));
  HookResourceString(@SDuplicateActionBarStyleName, TranslateProp('Consts','D11','SDuplicateActionBarStyleName', 'en-us', SDuplicateActionBarStyleName, translated));
  HookResourceString(@SStandardStyleActionBars, TranslateProp('Consts','D11','SStandardStyleActionBars', 'en-us', SStandardStyleActionBars, translated));
  HookResourceString(@SXPStyleActionBars, TranslateProp('Consts','D11','SXPStyleActionBars', 'en-us', SXPStyleActionBars, translated));
  HookResourceString(@SActionBarStyleMissing, TranslateProp('Consts','D11','SActionBarStyleMissing', 'en-us', SActionBarStyleMissing, translated));
  HookResourceString(@SInvalidColorString, TranslateProp('Consts','D11','SInvalidColorString', 'en-us', SInvalidColorString, translated));
  HookResourceString(@SInvalidPath, TranslateProp('Consts','D11','SInvalidPath', 'en-us', SInvalidPath, translated));
  HookResourceString(@SInvalidPathCaption, TranslateProp('Consts','D11','SInvalidPathCaption', 'en-us', SInvalidPathCaption, translated));
  HookResourceString(@SANSIEncoding, TranslateProp('Consts','D11','SANSIEncoding', 'en-us', SANSIEncoding, translated));
  HookResourceString(@SASCIIEncoding, TranslateProp('Consts','D11','SASCIIEncoding', 'en-us', SASCIIEncoding, translated));
  HookResourceString(@SUnicodeEncoding, TranslateProp('Consts','D11','SUnicodeEncoding', 'en-us', SUnicodeEncoding, translated));
  HookResourceString(@SBigEndianEncoding, TranslateProp('Consts','D11','SBigEndianEncoding', 'en-us', SBigEndianEncoding, translated));
  HookResourceString(@SUTF8Encoding, TranslateProp('Consts','D11','SUTF8Encoding', 'en-us', SUTF8Encoding, translated));
  HookResourceString(@SUTF7Encoding, TranslateProp('Consts','D11','SUTF7Encoding', 'en-us', SUTF7Encoding, translated));
  HookResourceString(@SEncodingLabel, TranslateProp('Consts','D11','SEncodingLabel', 'en-us', SEncodingLabel, translated));
  HookResourceString(@STrayIconRemoveError, TranslateProp('Consts','D11','STrayIconRemoveError', 'en-us', STrayIconRemoveError, translated));
  HookResourceString(@STrayIconCreateError, TranslateProp('Consts','D11','STrayIconCreateError', 'en-us', STrayIconCreateError, translated));
  HookResourceString(@SPageControlNotSet, TranslateProp('Consts','D11','SPageControlNotSet', 'en-us', SPageControlNotSet, translated));
  HookResourceString(@SWindowsVistaRequired, TranslateProp('Consts','D11','SWindowsVistaRequired', 'en-us', SWindowsVistaRequired, translated));
  HookResourceString(@SXPThemesRequired, TranslateProp('Consts','D11','SXPThemesRequired', 'en-us', SXPThemesRequired, translated));
  HookResourceString(@STaskDlgButtonCaption, TranslateProp('Consts','D11','STaskDlgButtonCaption', 'en-us', STaskDlgButtonCaption, translated));
  HookResourceString(@STaskDlgRadioButtonCaption, TranslateProp('Consts','D11','STaskDlgRadioButtonCaption', 'en-us', STaskDlgRadioButtonCaption, translated));
  HookResourceString(@SInvalidTaskDlgButtonCaption, TranslateProp('Consts','D11','SInvalidTaskDlgButtonCaption', 'en-us', SInvalidTaskDlgButtonCaption, translated));

end;

// -----------------------------------------------------------------------------

function TWebConstResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  {
  Não precisamos traduzir isto, acho. Dario 4/12/2009

  HookResourceString(@sErrorDecodingURLText, TranslateProp('WebConst','D11','sErrorDecodingURLText', sErrorDecodingURLText, translated));
  HookResourceString(@sInvalidURLEncodedChar, TranslateProp('WebConst','D11','sInvalidURLEncodedChar', sInvalidURLEncodedChar, translated));
  HookResourceString(@sInvalidHTMLEncodedChar, TranslateProp('WebConst','D11','sInvalidHTMLEncodedChar', sInvalidHTMLEncodedChar, translated));
  HookResourceString(@sInvalidActionRegistration, TranslateProp('WebConst','D11','sInvalidActionRegistration', sInvalidActionRegistration, translated));
  HookResourceString(@sDuplicateActionName, TranslateProp('WebConst','D11','sDuplicateActionName', sDuplicateActionName, translated));
  HookResourceString(@sFactoryAlreadyRegistered, TranslateProp('WebConst','D11','sFactoryAlreadyRegistered', sFactoryAlreadyRegistered, translated));
  HookResourceString(@sAppFactoryAlreadyRegistered, TranslateProp('WebConst','D11','sAppFactoryAlreadyRegistered', sAppFactoryAlreadyRegistered, translated));
  HookResourceString(@sOnlyOneDispatcher, TranslateProp('WebConst','D11','sOnlyOneDispatcher', sOnlyOneDispatcher, translated));
  HookResourceString(@sHTTPItemName, TranslateProp('WebConst','D11','sHTTPItemName', sHTTPItemName, translated));
  HookResourceString(@sHTTPItemURI, TranslateProp('WebConst','D11','sHTTPItemURI', sHTTPItemURI, translated));
  HookResourceString(@sHTTPItemEnabled, TranslateProp('WebConst','D11','sHTTPItemEnabled', sHTTPItemEnabled, translated));
  HookResourceString(@sHTTPItemDefault, TranslateProp('WebConst','D11','sHTTPItemDefault', sHTTPItemDefault, translated));
  HookResourceString(@sHTTPItemProducer, TranslateProp('WebConst','D11','sHTTPItemProducer', sHTTPItemProducer, translated));
  HookResourceString(@sResNotFound, TranslateProp('WebConst','D11','sResNotFound', sResNotFound, translated));
  HookResourceString(@sTooManyColumns, TranslateProp('WebConst','D11','sTooManyColumns', sTooManyColumns, translated));
  HookResourceString(@sFieldNameColumn, TranslateProp('WebConst','D11','sFieldNameColumn', sFieldNameColumn, translated));
  HookResourceString(@sFieldTypeColumn, TranslateProp('WebConst','D11','sFieldTypeColumn', sFieldTypeColumn, translated));
  HookResourceString(@sInvalidWebComponentsRegistration, TranslateProp('WebConst','D11','sInvalidWebComponentsRegistration', sInvalidWebComponentsRegistration, translated));
  HookResourceString(@sInvalidWebComponentsEnumeration, TranslateProp('WebConst','D11','sInvalidWebComponentsEnumeration', sInvalidWebComponentsEnumeration, translated));
  HookResourceString(@sInvalidWebParent, TranslateProp('WebConst','D11','sInvalidWebParent', sInvalidWebParent, translated));
  HookResourceString(@sVariableIsNotAContainer, TranslateProp('WebConst','D11','sVariableIsNotAContainer', sVariableIsNotAContainer, translated));
  HookResourceString(@sInternalApplicationError, TranslateProp('WebConst','D11','sInternalApplicationError', sInternalApplicationError, translated));
  HookResourceString(@sInvalidParent, TranslateProp('WebConst','D11','sInvalidParent', sInvalidParent, translated));
  HookResourceString(@sActionDoesNotProvideResponse, TranslateProp('WebConst','D11','sActionDoesNotProvideResponse', sActionDoesNotProvideResponse, translated));
  HookResourceString(@sActionCantRespondToUnkownHTTPMethod, TranslateProp('WebConst','D11','sActionCantRespondToUnkownHTTPMethod', sActionCantRespondToUnkownHTTPMethod, translated));
  HookResourceString(@sActionCantRedirectToBlankURL, TranslateProp('WebConst','D11','sActionCantRedirectToBlankURL', sActionCantRedirectToBlankURL, translated));

  }
end;

// -----------------------------------------------------------------------------

function TXMLConstResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  {
  Não precisamos traduzir isto, acho. Dario 4/12/2009

  HookResourceString(@SDuplicateRegistration, TranslateProp('XMLConst','D11','SDuplicateRegistration', 'en-us', SDuplicateRegistration, translated));
  HookResourceString(@SNoMatchingDOMVendor, TranslateProp('XMLConst','D11','SNoMatchingDOMVendor', 'en-us', SNoMatchingDOMVendor, translated));
  HookResourceString(@SNoDOMNodeEx, TranslateProp('XMLConst','D11','SNoDOMNodeEx', 'en-us', SNoDOMNodeEx, translated));
  HookResourceString(@SDOMNotSupported, TranslateProp('XMLConst','D11','SDOMNotSupported', 'en-us', SDOMNotSupported, translated));
  HookResourceString(@SNodeExpected, TranslateProp('XMLConst','D11','SNodeExpected', 'en-us', SNodeExpected, translated));
  HookResourceString(@SMSDOMNotInstalled, TranslateProp('XMLConst','D11','SMSDOMNotInstalled', 'en-us', SMSDOMNotInstalled, translated));
  HookResourceString(@SErrorDownloadingURL, TranslateProp('XMLConst','D11','SErrorDownloadingURL', 'en-us', SErrorDownloadingURL, translated));
  HookResourceString(@SUrlMonDllMissing, TranslateProp('XMLConst','D11','SUrlMonDllMissing', 'en-us', SUrlMonDllMissing, translated));
  HookResourceString(@SNotImplemented, TranslateProp('XMLConst','D11','SNotImplemented', 'en-us', SNotImplemented, translated));
  HookResourceString(@SINDEX_SIZE_ERR, TranslateProp('XMLConst','D11','SINDEX_SIZE_ERR', 'en-us', SINDEX_SIZE_ERR, translated));
  HookResourceString(@SDOMSTRING_SIZE_ERR, TranslateProp('XMLConst','D11','SDOMSTRING_SIZE_ERR', 'en-us', SDOMSTRING_SIZE_ERR, translated));
  HookResourceString(@SHIERARCHY_REQUEST_ERR, TranslateProp('XMLConst','D11','SHIERARCHY_REQUEST_ERR', 'en-us', SHIERARCHY_REQUEST_ERR, translated));
  HookResourceString(@SWRONG_DOCUMENT_ERR, TranslateProp('XMLConst','D11','SWRONG_DOCUMENT_ERR', 'en-us', SWRONG_DOCUMENT_ERR, translated));
  HookResourceString(@SINVALID_CHARACTER_ERR, TranslateProp('XMLConst','D11','SINVALID_CHARACTER_ERR', 'en-us', SINVALID_CHARACTER_ERR, translated));
  HookResourceString(@SNO_DATA_ALLOWED_ERR, TranslateProp('XMLConst','D11','SNO_DATA_ALLOWED_ERR', 'en-us', SNO_DATA_ALLOWED_ERR, translated));
  HookResourceString(@SNO_MODIFICATION_ALLOWED_ERR, TranslateProp('XMLConst','D11','SNO_MODIFICATION_ALLOWED_ERR', 'en-us', SNO_MODIFICATION_ALLOWED_ERR, translated));
  HookResourceString(@SNOT_FOUND_ERR, TranslateProp('XMLConst','D11','SNOT_FOUND_ERR', 'en-us', SNOT_FOUND_ERR, translated));
  HookResourceString(@SNOT_SUPPORTED_ERR, TranslateProp('XMLConst','D11','SNOT_SUPPORTED_ERR', 'en-us', SNOT_SUPPORTED_ERR, translated));
  HookResourceString(@SINUSE_ATTRIBUTE_ERR, TranslateProp('XMLConst','D11','SINUSE_ATTRIBUTE_ERR', 'en-us', SINUSE_ATTRIBUTE_ERR, translated));
  HookResourceString(@SINVALID_STATE_ERR, TranslateProp('XMLConst','D11','SINVALID_STATE_ERR', 'en-us', SINVALID_STATE_ERR, translated));
  HookResourceString(@SSYNTAX_ERR, TranslateProp('XMLConst','D11','SSYNTAX_ERR', 'en-us', SSYNTAX_ERR, translated));
  HookResourceString(@SINVALID_MODIFICATION_ERR, TranslateProp('XMLConst','D11','SINVALID_MODIFICATION_ERR', 'en-us', SINVALID_MODIFICATION_ERR, translated));
  HookResourceString(@SNAMESPACE_ERR, TranslateProp('XMLConst','D11','SNAMESPACE_ERR', 'en-us', SNAMESPACE_ERR, translated));
  HookResourceString(@SINVALID_ACCESS_ERR, TranslateProp('XMLConst','D11','SINVALID_ACCESS_ERR', 'en-us', SINVALID_ACCESS_ERR, translated));
  HookResourceString(@SBadTransformArgs, TranslateProp('XMLConst','D11','SBadTransformArgs', 'en-us', SBadTransformArgs, translated));
  HookResourceString(@SErrorWritingFile, TranslateProp('XMLConst','D11','SErrorWritingFile', 'en-us', SErrorWritingFile, translated));
  HookResourceString(@SUnhandledXercesErr, TranslateProp('XMLConst','D11','SUnhandledXercesErr', 'en-us', SUnhandledXercesErr, translated));
  HookResourceString(@SDOMError, TranslateProp('XMLConst','D11','SDOMError', 'en-us', SDOMError, translated));
  //HookResourceString(@SErrorLoadingLib, TranslateProp('XMLConst','D11','SErrorLoadingLib', 'en-us', SErrorLoadingLib, translated));
  HookResourceString(@SNotActive, TranslateProp('XMLConst','D11','SNotActive', 'en-us', SNotActive, translated));
  HookResourceString(@SNodeNotFound, TranslateProp('XMLConst','D11','SNodeNotFound', 'en-us', SNodeNotFound, translated));
  HookResourceString(@SMissingNode, TranslateProp('XMLConst','D11','SMissingNode', 'en-us', SMissingNode, translated));
  HookResourceString(@SNoAttributes, TranslateProp('XMLConst','D11','SNoAttributes', 'en-us', SNoAttributes, translated));
  HookResourceString(@SInvalidNodeType, TranslateProp('XMLConst','D11','SInvalidNodeType', 'en-us', SInvalidNodeType, translated));
  HookResourceString(@SMismatchedRegItems, TranslateProp('XMLConst','D11','SMismatchedRegItems', 'en-us', SMismatchedRegItems, translated));
  HookResourceString(@SNotSingleTextNode, TranslateProp('XMLConst','D11','SNotSingleTextNode', 'en-us', SNotSingleTextNode, translated));
  HookResourceString(@SNoDOMParseOptions, TranslateProp('XMLConst','D11','SNoDOMParseOptions', 'en-us', SNoDOMParseOptions, translated));
  HookResourceString(@SNotOnHostedNode, TranslateProp('XMLConst','D11','SNotOnHostedNode', 'en-us', SNotOnHostedNode, translated));
  HookResourceString(@SMissingItemTag, TranslateProp('XMLConst','D11','SMissingItemTag', 'en-us', SMissingItemTag, translated));
  HookResourceString(@SNodeReadOnly, TranslateProp('XMLConst','D11','SNodeReadOnly', 'en-us', SNodeReadOnly, translated));
  HookResourceString(@SUnsupportedEncoding, TranslateProp('XMLConst','D11','SUnsupportedEncoding', 'en-us', SUnsupportedEncoding, translated));
  HookResourceString(@SNoRefresh, TranslateProp('XMLConst','D11','SNoRefresh', 'en-us', SNoRefresh, translated));
  HookResourceString(@SMissingFileName, TranslateProp('XMLConst','D11','SMissingFileName', 'en-us', SMissingFileName, translated));
  HookResourceString(@SLine, TranslateProp('XMLConst','D11','SLine', 'en-us', SLine, translated));
  HookResourceString(@SUnknown, TranslateProp('XMLConst','D11','SUnknown', 'en-us', SUnknown, translated));
  HookResourceString(@SInvalidSchema, TranslateProp('XMLConst','D11','SInvalidSchema', 'en-us', SInvalidSchema, translated));
  HookResourceString(@SNoLocalTypeName, TranslateProp('XMLConst','D11','SNoLocalTypeName', 'en-us', SNoLocalTypeName, translated));
  HookResourceString(@SUnknownDataType, TranslateProp('XMLConst','D11','SUnknownDataType', 'en-us', SUnknownDataType, translated));
  HookResourceString(@SInvalidValue, TranslateProp('XMLConst','D11','SInvalidValue', 'en-us', SInvalidValue, translated));
  HookResourceString(@SInvalidGroupDecl, TranslateProp('XMLConst','D11','SInvalidGroupDecl', 'en-us', SInvalidGroupDecl, translated));
  HookResourceString(@SMissingName, TranslateProp('XMLConst','D11','SMissingName', 'en-us', SMissingName, translated));
  HookResourceString(@SInvalidDerivation, TranslateProp('XMLConst','D11','SInvalidDerivation', 'en-us', SInvalidDerivation, translated));
  HookResourceString(@SNoNameOnRef, TranslateProp('XMLConst','D11','SNoNameOnRef', 'en-us', SNoNameOnRef, translated));
  HookResourceString(@SNoGlobalRef, TranslateProp('XMLConst','D11','SNoGlobalRef', 'en-us', SNoGlobalRef, translated));
  HookResourceString(@SNoRefPropSet, TranslateProp('XMLConst','D11','SNoRefPropSet', 'en-us', SNoRefPropSet, translated));
  HookResourceString(@SSetGroupRefProp, TranslateProp('XMLConst','D11','SSetGroupRefProp', 'en-us', SSetGroupRefProp, translated));
  HookResourceString(@SNoContentModel, TranslateProp('XMLConst','D11','SNoContentModel', 'en-us', SNoContentModel, translated));
  HookResourceString(@SNoFacetsAllowed, TranslateProp('XMLConst','D11','SNoFacetsAllowed', 'en-us', SNoFacetsAllowed, translated));
  HookResourceString(@SNotBuiltInType, TranslateProp('XMLConst','D11','SNotBuiltInType', 'en-us', SNotBuiltInType, translated));
  HookResourceString(@SBuiltInType, TranslateProp('XMLConst','D11','SBuiltInType', 'en-us', SBuiltInType, translated));
  HookResourceString(@SXMLDataTransDesc, TranslateProp('XMLConst','D11','SXMLDataTransDesc', 'en-us', SXMLDataTransDesc, translated));
  HookResourceString(@S99TransDesc, TranslateProp('XMLConst','D11','S99TransDesc', 'en-us', S99TransDesc, translated));
  HookResourceString(@SDTDTransDesc, TranslateProp('XMLConst','D11','SDTDTransDesc', 'en-us', SDTDTransDesc, translated));
  HookResourceString(@SXDRTransDesc, TranslateProp('XMLConst','D11','SXDRTransDesc', 'en-us', SXDRTransDesc, translated));

  }
end;

// -----------------------------------------------------------------------------

function TZLibConstResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@sTargetBufferTooSmall, TranslateProp('ZLibConst','D11','sTargetBufferTooSmall', 'en-us', sTargetBufferTooSmall, translated));
  HookResourceString(@sInvalidStreamOp, TranslateProp('ZLibConst','D11','sInvalidStreamOp', 'en-us', sInvalidStreamOp, translated));
  HookResourceString(@sError, TranslateProp('ZLibConst','D11','sError', 'en-us', sError, translated));
end;

// -----------------------------------------------------------------------------

function TOleConstResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@SBadPropValue, TranslateProp('OleConst','D11','SBadPropValue', 'en-us', SBadPropValue, translated));
  HookResourceString(@SCannotActivate, TranslateProp('OleConst','D11','SCannotActivate', 'en-us', SCannotActivate, translated));
  HookResourceString(@SNoWindowHandle, TranslateProp('OleConst','D11','SNoWindowHandle', 'en-us', SNoWindowHandle, translated));
  HookResourceString(@SOleError, TranslateProp('OleConst','D11','SOleError', 'en-us', SOleError, translated));
  HookResourceString(@SVarNotObject, TranslateProp('OleConst','D11','SVarNotObject', 'en-us', SVarNotObject, translated));
  HookResourceString(@SVarNotAutoObject, TranslateProp('OleConst','D11','SVarNotAutoObject', 'en-us', SVarNotAutoObject, translated));
  HookResourceString(@SNoMethod, TranslateProp('OleConst','D11','SNoMethod', 'en-us', SNoMethod, translated));
  HookResourceString(@SLinkProperties, TranslateProp('OleConst','D11','SLinkProperties', 'en-us', SLinkProperties, translated));
  HookResourceString(@SInvalidLinkSource, TranslateProp('OleConst','D11','SInvalidLinkSource', 'en-us', SInvalidLinkSource, translated));
  HookResourceString(@SCannotBreakLink, TranslateProp('OleConst','D11','SCannotBreakLink', 'en-us', SCannotBreakLink, translated));
  HookResourceString(@SLinkedObject, TranslateProp('OleConst','D11','SLinkedObject', 'en-us', SLinkedObject, translated));
  HookResourceString(@SEmptyContainer, TranslateProp('OleConst','D11','SEmptyContainer', 'en-us', SEmptyContainer, translated));
  HookResourceString(@SInvalidVerb, TranslateProp('OleConst','D11','SInvalidVerb', 'en-us', SInvalidVerb, translated));
  HookResourceString(@SPropDlgCaption, TranslateProp('OleConst','D11','SPropDlgCaption', 'en-us', SPropDlgCaption, translated));
  HookResourceString(@SInvalidStreamFormat, TranslateProp('OleConst','D11','SInvalidStreamFormat', 'en-us', SInvalidStreamFormat, translated));
  HookResourceString(@SInvalidLicense, TranslateProp('OleConst','D11','SInvalidLicense', 'en-us', SInvalidLicense, translated));
  HookResourceString(@SNotLicensed, TranslateProp('OleConst','D11','SNotLicensed', 'en-us', SNotLicensed, translated));
  HookResourceString(@sNoRunningObject, TranslateProp('OleConst','D11','sNoRunningObject', 'en-us', sNoRunningObject, translated));
end;

// -----------------------------------------------------------------------------

function TSvrConstResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  {
  Não precisamos traduzir isto, acho. Dario 4/12/2009

  HookResourceString(@sWebAppDebugger, TranslateProp('SvrConst','D11','sWebAppDebugger', sWebAppDebugger, translated));
  HookResourceString(@sStopServer, TranslateProp('SvrConst','D11','sStopServer', sStopServer, translated));
  HookResourceString(@sStartServer, TranslateProp('SvrConst','D11','sStartServer', sStartServer, translated));
  HookResourceString(@sCouldNotOpenRegKey, TranslateProp('SvrConst','D11','sCouldNotOpenRegKey', sCouldNotOpenRegKey, translated));
  HookResourceString(@sUnauthorizedString, TranslateProp('SvrConst','D11','sUnauthorizedString', sUnauthorizedString, translated));
  HookResourceString(@sForbiddenString, TranslateProp('SvrConst','D11','sForbiddenString', sForbiddenString, translated));
  HookResourceString(@sNoDirBrowseString, TranslateProp('SvrConst','D11','sNoDirBrowseString', sNoDirBrowseString, translated));
  HookResourceString(@sBadRequest, TranslateProp('SvrConst','D11','sBadRequest', sBadRequest, translated));
  HookResourceString(@sNotFound, TranslateProp('SvrConst','D11','sNotFound', sNotFound, translated));
  HookResourceString(@sInternalServerError, TranslateProp('SvrConst','D11','sInternalServerError', sInternalServerError, translated));
  HookResourceString(@sInvalidActionRegistration, TranslateProp('SvrConst','D11','sInvalidActionRegistration', sInvalidActionRegistration, translated));
  HookResourceString(@sErrorEvent, TranslateProp('SvrConst','D11','sErrorEvent', sErrorEvent, translated));
  HookResourceString(@sResponseEvent, TranslateProp('SvrConst','D11','sResponseEvent', sResponseEvent, translated));
  HookResourceString(@sEvent, TranslateProp('SvrConst','D11','sEvent', sEvent, translated));
  HookResourceString(@sTime, TranslateProp('SvrConst','D11','sTime', sTime, translated));
  HookResourceString(@sDate, TranslateProp('SvrConst','D11','sDate', sDate, translated));
  HookResourceString(@sElapsed, TranslateProp('SvrConst','D11','sElapsed', sElapsed, translated));
  HookResourceString(@sPath, TranslateProp('SvrConst','D11','sPath', sPath, translated));
  HookResourceString(@sCode, TranslateProp('SvrConst','D11','sCode', sCode, translated));
  HookResourceString(@sContentLength, TranslateProp('SvrConst','D11','sContentLength', sContentLength, translated));
  HookResourceString(@sContentType, TranslateProp('SvrConst','D11','sContentType', sContentType, translated));
  HookResourceString(@sThread, TranslateProp('SvrConst','D11','sThread', sThread, translated));
  HookResourceString(@sNoDefaultURL, TranslateProp('SvrConst','D11','sNoDefaultURL', sNoDefaultURL, translated));
  HookResourceString(@sLogTab, TranslateProp('SvrConst','D11','sLogTab', sLogTab, translated));
  HookResourceString(@sSend, TranslateProp('SvrConst','D11','sSend', sSend, translated));
  HookResourceString(@sReceive, TranslateProp('SvrConst','D11','sReceive', sReceive, translated));
  HookResourceString(@sLogStrTemplate, TranslateProp('SvrConst','D11','sLogStrTemplate', sLogStrTemplate, translated));
  HookResourceString(@sBuild, TranslateProp('SvrConst','D11','sBuild', sBuild, translated));
  HookResourceString(@sDirHeader, TranslateProp('SvrConst','D11','sDirHeader', sDirHeader, translated));
  HookResourceString(@sDirParent, TranslateProp('SvrConst','D11','sDirParent', sDirParent, translated));
  HookResourceString(@sDirRoot, TranslateProp('SvrConst','D11','sDirRoot', sDirRoot, translated));
  HookResourceString(@sDirEntry, TranslateProp('SvrConst','D11','sDirEntry', sDirEntry, translated));
  HookResourceString(@sFileEntry, TranslateProp('SvrConst','D11','sFileEntry', sFileEntry, translated));
  HookResourceString(@sListStart, TranslateProp('SvrConst','D11','sListStart', sListStart, translated));
  HookResourceString(@sDirFooter, TranslateProp('SvrConst','D11','sDirFooter', sDirFooter, translated));
  }
end;

// -----------------------------------------------------------------------------

function TSysConstResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@SUnknown, TranslateProp('sysConst','D11','SUnknown', 'en-us', SUnknown, translated));
  HookResourceString(@SInvalidInteger, TranslateProp('sysConst','D11','SInvalidInteger', 'en-us', SInvalidInteger, translated));
  HookResourceString(@SInvalidFloat, TranslateProp('sysConst','D11','SInvalidFloat', 'en-us', SInvalidFloat, translated));
  HookResourceString(@SInvalidCurrency, TranslateProp('sysConst','D11','SInvalidCurrency', 'en-us', SInvalidCurrency, translated));
  HookResourceString(@SInvalidDate, TranslateProp('sysConst','D11','SInvalidDate', 'en-us', SInvalidDate, translated));
  HookResourceString(@SInvalidTime, TranslateProp('sysConst','D11','SInvalidTime', 'en-us', SInvalidTime, translated));
  HookResourceString(@SInvalidDateTime, TranslateProp('sysConst','D11','SInvalidDateTime', 'en-us', SInvalidDateTime, translated));
  HookResourceString(@SInvalidDateTimeFloat, TranslateProp('sysConst','D11','SInvalidDateTimeFloat', 'en-us', SInvalidDateTimeFloat, translated));
  HookResourceString(@SInvalidTimeStamp, TranslateProp('sysConst','D11','SInvalidTimeStamp', 'en-us', SInvalidTimeStamp, translated));
  HookResourceString(@SInvalidGUID, TranslateProp('sysConst','D11','SInvalidGUID', 'en-us', SInvalidGUID, translated));
  HookResourceString(@SInvalidBoolean, TranslateProp('sysConst','D11','SInvalidBoolean', 'en-us', SInvalidBoolean, translated));
  HookResourceString(@STimeEncodeError, TranslateProp('sysConst','D11','STimeEncodeError', 'en-us', STimeEncodeError, translated));
  HookResourceString(@SDateEncodeError, TranslateProp('sysConst','D11','SDateEncodeError', 'en-us', SDateEncodeError, translated));
  HookResourceString(@SOutOfMemory, TranslateProp('sysConst','D11','SOutOfMemory', 'en-us', SOutOfMemory, translated));
  HookResourceString(@SInOutError, TranslateProp('sysConst','D11','SInOutError', 'en-us', SInOutError, translated));
  HookResourceString(@SFileNotFound, TranslateProp('sysConst','D11','SFileNotFound', 'en-us', SFileNotFound, translated));
  HookResourceString(@SInvalidFilename, TranslateProp('sysConst','D11','SInvalidFilename', 'en-us', SInvalidFilename, translated));
  HookResourceString(@STooManyOpenFiles, TranslateProp('sysConst','D11','STooManyOpenFiles', 'en-us', STooManyOpenFiles, translated));
  HookResourceString(@SAccessDenied, TranslateProp('sysConst','D11','SAccessDenied', 'en-us', SAccessDenied, translated));
  HookResourceString(@SEndOfFile, TranslateProp('sysConst','D11','SEndOfFile', 'en-us', SEndOfFile, translated));
  HookResourceString(@SDiskFull, TranslateProp('sysConst','D11','SDiskFull', 'en-us', SDiskFull, translated));
  HookResourceString(@SInvalidInput, TranslateProp('sysConst','D11','SInvalidInput', 'en-us', SInvalidInput, translated));
  HookResourceString(@SDivByZero, TranslateProp('sysConst','D11','SDivByZero', 'en-us', SDivByZero, translated));
  HookResourceString(@SRangeError, TranslateProp('sysConst','D11','SRangeError', 'en-us', SRangeError, translated));
  HookResourceString(@SIntOverflow, TranslateProp('sysConst','D11','SIntOverflow', 'en-us', SIntOverflow, translated));
  HookResourceString(@SInvalidOp, TranslateProp('sysConst','D11','SInvalidOp', 'en-us', SInvalidOp, translated));
  HookResourceString(@SZeroDivide, TranslateProp('sysConst','D11','SZeroDivide', 'en-us', SZeroDivide, translated));
  HookResourceString(@SOverflow, TranslateProp('sysConst','D11','SOverflow', 'en-us', SOverflow, translated));
  HookResourceString(@SUnderflow, TranslateProp('sysConst','D11','SUnderflow', 'en-us', SUnderflow, translated));
  HookResourceString(@SInvalidPointer, TranslateProp('sysConst','D11','SInvalidPointer', 'en-us', SInvalidPointer, translated));
  HookResourceString(@SInvalidCast, TranslateProp('sysConst','D11','SInvalidCast', 'en-us', SInvalidCast, translated));
{$IFDEF MSWINDOWS}
  HookResourceString(@SAccessViolationArg3, TranslateProp('sysConst','D11','SAccessViolationArg3', 'en-us', SAccessViolationArg3, translated));
{$ENDIF}
{$IFDEF LINUX}
  HookResourceString(@SAccessViolationArg2, TranslateProp('sysConst','D11','SAccessViolationArg2', 'en-us', SAccessViolationArg2, translated));
{$ENDIF}
  HookResourceString(@SAccessViolationNoArg, TranslateProp('sysConst','D11','SAccessViolationNoArg', 'en-us', SAccessViolationNoArg, translated));
  HookResourceString(@SStackOverflow, TranslateProp('sysConst','D11','SStackOverflow', 'en-us', SStackOverflow, translated));
  HookResourceString(@SControlC, TranslateProp('sysConst','D11','SControlC', 'en-us', SControlC, translated));
  HookResourceString(@SQuit, TranslateProp('sysConst','D11','SQuit', 'en-us', SQuit, translated));
  HookResourceString(@SPrivilege, TranslateProp('sysConst','D11','SPrivilege', 'en-us', SPrivilege, translated));
  HookResourceString(@SOperationAborted, TranslateProp('sysConst','D11','SOperationAborted', 'en-us', SOperationAborted, translated));
  HookResourceString(@SException, TranslateProp('sysConst','D11','SException', 'en-us', SException, translated));
  HookResourceString(@SExceptTitle, TranslateProp('sysConst','D11','SExceptTitle', 'en-us', SExceptTitle, translated));
{$IFDEF LINUX}
  HookResourceString(@SSigactionFailed, TranslateProp('sysConst','D11','SSigactionFailed', 'en-us', SSigactionFailed, translated));
{$ENDIF}
  HookResourceString(@SInvalidFormat, TranslateProp('sysConst','D11','SInvalidFormat', 'en-us', SInvalidFormat, translated));
  HookResourceString(@SArgumentMissing, TranslateProp('sysConst','D11','SArgumentMissing', 'en-us', SArgumentMissing, translated));
  HookResourceString(@SDispatchError, TranslateProp('sysConst','D11','SDispatchError', 'en-us', SDispatchError, translated));
  HookResourceString(@SReadAccess, TranslateProp('sysConst','D11','SReadAccess', 'en-us', SReadAccess, translated));
  HookResourceString(@SWriteAccess, TranslateProp('sysConst','D11','SWriteAccess', 'en-us', SWriteAccess, translated));
  HookResourceString(@SResultTooLong, TranslateProp('sysConst','D11','SResultTooLong', 'en-us', SResultTooLong, translated));
  HookResourceString(@SFormatTooLong, TranslateProp('sysConst','D11','SFormatTooLong', 'en-us', SFormatTooLong, translated));
  HookResourceString(@SVarArrayCreate, TranslateProp('sysConst','D11','SVarArrayCreate', 'en-us', SVarArrayCreate, translated));
  HookResourceString(@SVarArrayBounds, TranslateProp('sysConst','D11','SVarArrayBounds', 'en-us', SVarArrayBounds, translated));
  HookResourceString(@SVarArrayLocked, TranslateProp('sysConst','D11','SVarArrayLocked', 'en-us', SVarArrayLocked, translated));
  HookResourceString(@SVarArrayWithHResult, TranslateProp('sysConst','D11','SVarArrayWithHResult', 'en-us', SVarArrayWithHResult, translated));
  HookResourceString(@SInvalidVarCast, TranslateProp('sysConst','D11','SInvalidVarCast', 'en-us', SInvalidVarCast, translated));
  HookResourceString(@SInvalidVarOp, TranslateProp('sysConst','D11','SInvalidVarOp', 'en-us', SInvalidVarOp, translated));
  HookResourceString(@SInvalidVarNullOp, TranslateProp('sysConst','D11','SInvalidVarNullOp', 'en-us', SInvalidVarNullOp, translated));
  HookResourceString(@SInvalidVarOpWithHResultWithPrefix, TranslateProp('sysConst','D11','SInvalidVarOpWithHResultWithPrefix', 'en-us', SInvalidVarOpWithHResultWithPrefix, translated));
  HookResourceString(@SVarTypeRangeCheck1, TranslateProp('sysConst','D11','SVarTypeRangeCheck1', 'en-us', SVarTypeRangeCheck1, translated));
  HookResourceString(@SVarTypeRangeCheck2, TranslateProp('sysConst','D11','SVarTypeRangeCheck2', 'en-us', SVarTypeRangeCheck2, translated));
  HookResourceString(@SVarTypeOutOfRangeWithPrefix, TranslateProp('sysConst','D11','SVarTypeOutOfRangeWithPrefix', 'en-us', SVarTypeOutOfRangeWithPrefix, translated));
  HookResourceString(@SVarTypeAlreadyUsedWithPrefix, TranslateProp('sysConst','D11','SVarTypeAlreadyUsedWithPrefix', 'en-us', SVarTypeAlreadyUsedWithPrefix, translated));
  HookResourceString(@SVarTypeNotUsableWithPrefix, TranslateProp('sysConst','D11','SVarTypeNotUsableWithPrefix', 'en-us', SVarTypeNotUsableWithPrefix, translated));
  HookResourceString(@SVarTypeTooManyCustom, TranslateProp('sysConst','D11','SVarTypeTooManyCustom', 'en-us', SVarTypeTooManyCustom, translated));
  {$WARN SYMBOL_DEPRECATED OFF}
  HookResourceString(@SVarNotArray, TranslateProp('sysConst','D11','SVarNotArray', 'en-us', SVarNotArray, translated));
  HookResourceString(@SVarTypeUnknown, TranslateProp('sysConst','D11','SVarTypeUnknown', 'en-us', SVarTypeUnknown, translated));
  HookResourceString(@SVarTypeOutOfRange, TranslateProp('sysConst','D11','SVarTypeOutOfRange', 'en-us', SVarTypeOutOfRange, translated));
  HookResourceString(@SVarTypeAlreadyUsed, TranslateProp('sysConst','D11','SVarTypeAlreadyUsed', 'en-us', SVarTypeAlreadyUsed, translated));
  HookResourceString(@SVarTypeNotUsable, TranslateProp('sysConst','D11','SVarTypeNotUsable', 'en-us', SVarTypeNotUsable, translated));
  HookResourceString(@SInvalidVarOpWithHResult, TranslateProp('sysConst','D11','SInvalidVarOpWithHResult', 'en-us', SInvalidVarOpWithHResult, translated));
  HookResourceString(@SVarTypeCouldNotConvert, TranslateProp('sysConst','D11','SVarTypeCouldNotConvert', 'en-us', SVarTypeCouldNotConvert, translated));
  HookResourceString(@SVarTypeConvertOverflow, TranslateProp('sysConst','D11','SVarTypeConvertOverflow', 'en-us', SVarTypeConvertOverflow, translated));
  HookResourceString(@SVarOverflow, TranslateProp('sysConst','D11','SVarOverflow', 'en-us', SVarOverflow, translated));
  HookResourceString(@SVarInvalid, TranslateProp('sysConst','D11','SVarInvalid', 'en-us', SVarInvalid, translated));
  HookResourceString(@SVarBadType, TranslateProp('sysConst','D11','SVarBadType', 'en-us', SVarBadType, translated));
  HookResourceString(@SVarNotImplemented, TranslateProp('sysConst','D11','SVarNotImplemented', 'en-us', SVarNotImplemented, translated));
  HookResourceString(@SVarOutOfMemory, TranslateProp('sysConst','D11','SVarOutOfMemory', 'en-us', SVarOutOfMemory, translated));
  HookResourceString(@SVarUnexpected, TranslateProp('sysConst','D11','SVarUnexpected', 'en-us', SVarUnexpected, translated));
  HookResourceString(@SVarDataClearRecursing, TranslateProp('sysConst','D11','SVarDataClearRecursing', 'en-us', SVarDataClearRecursing, translated));
  HookResourceString(@SVarDataCopyRecursing, TranslateProp('sysConst','D11','SVarDataCopyRecursing', 'en-us', SVarDataCopyRecursing, translated));
  HookResourceString(@SVarDataCopyNoIndRecursing, TranslateProp('sysConst','D11','SVarDataCopyNoIndRecursing', 'en-us', SVarDataCopyNoIndRecursing, translated));
  HookResourceString(@SVarDataInitRecursing, TranslateProp('sysConst','D11','SVarDataInitRecursing', 'en-us', SVarDataInitRecursing, translated));
  HookResourceString(@SVarDataCastToRecursing, TranslateProp('sysConst','D11','SVarDataCastToRecursing', 'en-us', SVarDataCastToRecursing, translated));
  HookResourceString(@SVarIsEmpty, TranslateProp('sysConst','D11','SVarIsEmpty', 'en-us', SVarIsEmpty, translated));
  HookResourceString(@sUnknownFromType, TranslateProp('sysConst','D11','sUnknownFromType', 'en-us', sUnknownFromType, translated));
  HookResourceString(@sUnknownToType, TranslateProp('sysConst','D11','sUnknownToType', 'en-us', sUnknownToType, translated));
  HookResourceString(@SExternalException, TranslateProp('sysConst','D11','SExternalException', 'en-us', SExternalException, translated));
  HookResourceString(@SAssertionFailed, TranslateProp('sysConst','D11','SAssertionFailed', 'en-us', SAssertionFailed, translated));
  HookResourceString(@SIntfCastError, TranslateProp('sysConst','D11','SIntfCastError', 'en-us', SIntfCastError, translated));
  HookResourceString(@SSafecallException, TranslateProp('sysConst','D11','SSafecallException', 'en-us', SSafecallException, translated));
  HookResourceString(@SAssertError, TranslateProp('sysConst','D11','SAssertError', 'en-us', SAssertError, translated));
  HookResourceString(@SAbstractError, TranslateProp('sysConst','D11','SAbstractError', 'en-us', SAbstractError, translated));
  HookResourceString(@SModuleAccessViolation, TranslateProp('sysConst','D11','SModuleAccessViolation', 'en-us', SModuleAccessViolation, translated));
  HookResourceString(@SCannotReadPackageInfo, TranslateProp('sysConst','D11','SCannotReadPackageInfo', 'en-us', SCannotReadPackageInfo, translated));
  HookResourceString(@sErrorLoadingPackage, TranslateProp('sysConst','D11','sErrorLoadingPackage', 'en-us', sErrorLoadingPackage, translated));
  HookResourceString(@SInvalidPackageFile, TranslateProp('sysConst','D11','SInvalidPackageFile', 'en-us', SInvalidPackageFile, translated));
  HookResourceString(@SInvalidPackageHandle, TranslateProp('sysConst','D11','SInvalidPackageHandle', 'en-us', SInvalidPackageHandle, translated));
  HookResourceString(@SDuplicatePackageUnit, TranslateProp('sysConst','D11','SDuplicatePackageUnit', 'en-us', SDuplicatePackageUnit, translated));
  HookResourceString(@SOSError, TranslateProp('sysConst','D11','SOSError', 'en-us', SOSError, translated));
  HookResourceString(@SUnkOSError, TranslateProp('sysConst','D11','SUnkOSError', 'en-us', SUnkOSError, translated));
{$IFDEF MSWINDOWS}
  HookResourceString(@SWin32Error, TranslateProp('sysConst','D11','SWin32Error', 'en-us', SWin32Error, translated));
  HookResourceString(@SUnkWin32Error, TranslateProp('sysConst','D11','SUnkWin32Error', 'en-us', SUnkWin32Error, translated));
{$ENDIF}
  {$WARN SYMBOL_DEPRECATED ON}
  HookResourceString(@SNL, TranslateProp('sysConst','D11','SNL', 'en-us', SNL, translated));
  HookResourceString(@SShortMonthNameJan, TranslateProp('sysConst','D11','SShortMonthNameJan', 'en-us', SShortMonthNameJan, translated));
  HookResourceString(@SShortMonthNameFeb, TranslateProp('sysConst','D11','SShortMonthNameFeb', 'en-us', SShortMonthNameFeb, translated));
  HookResourceString(@SShortMonthNameMar, TranslateProp('sysConst','D11','SShortMonthNameMar', 'en-us', SShortMonthNameMar, translated));
  HookResourceString(@SShortMonthNameApr, TranslateProp('sysConst','D11','SShortMonthNameApr', 'en-us', SShortMonthNameApr, translated));
  HookResourceString(@SShortMonthNameMay, TranslateProp('sysConst','D11','SShortMonthNameMay', 'en-us', SShortMonthNameMay, translated));
  HookResourceString(@SShortMonthNameJun, TranslateProp('sysConst','D11','SShortMonthNameJun', 'en-us', SShortMonthNameJun, translated));
  HookResourceString(@SShortMonthNameJul, TranslateProp('sysConst','D11','SShortMonthNameJul', 'en-us', SShortMonthNameJul, translated));
  HookResourceString(@SShortMonthNameAug, TranslateProp('sysConst','D11','SShortMonthNameAug', 'en-us', SShortMonthNameAug, translated));
  HookResourceString(@SShortMonthNameSep, TranslateProp('sysConst','D11','SShortMonthNameSep', 'en-us', SShortMonthNameSep, translated));
  HookResourceString(@SShortMonthNameOct, TranslateProp('sysConst','D11','SShortMonthNameOct', 'en-us', SShortMonthNameOct, translated));
  HookResourceString(@SShortMonthNameNov, TranslateProp('sysConst','D11','SShortMonthNameNov', 'en-us', SShortMonthNameNov, translated));
  HookResourceString(@SShortMonthNameDec, TranslateProp('sysConst','D11','SShortMonthNameDec', 'en-us', SShortMonthNameDec, translated));
  HookResourceString(@SLongMonthNameJan, TranslateProp('sysConst','D11','SLongMonthNameJan', 'en-us', SLongMonthNameJan, translated));
  HookResourceString(@SLongMonthNameFeb, TranslateProp('sysConst','D11','SLongMonthNameFeb', 'en-us', SLongMonthNameFeb, translated));
  HookResourceString(@SLongMonthNameMar, TranslateProp('sysConst','D11','SLongMonthNameMar', 'en-us', SLongMonthNameMar, translated));
  HookResourceString(@SLongMonthNameApr, TranslateProp('sysConst','D11','SLongMonthNameApr', 'en-us', SLongMonthNameApr, translated));
  HookResourceString(@SLongMonthNameMay, TranslateProp('sysConst','D11','SLongMonthNameMay', 'en-us', SLongMonthNameMay, translated));
  HookResourceString(@SLongMonthNameJun, TranslateProp('sysConst','D11','SLongMonthNameJun', 'en-us', SLongMonthNameJun, translated));
  HookResourceString(@SLongMonthNameJul, TranslateProp('sysConst','D11','SLongMonthNameJul', 'en-us', SLongMonthNameJul, translated));
  HookResourceString(@SLongMonthNameAug, TranslateProp('sysConst','D11','SLongMonthNameAug', 'en-us', SLongMonthNameAug, translated));
  HookResourceString(@SLongMonthNameSep, TranslateProp('sysConst','D11','SLongMonthNameSep', 'en-us', SLongMonthNameSep, translated));
  HookResourceString(@SLongMonthNameOct, TranslateProp('sysConst','D11','SLongMonthNameOct', 'en-us', SLongMonthNameOct, translated));
  HookResourceString(@SLongMonthNameNov, TranslateProp('sysConst','D11','SLongMonthNameNov', 'en-us', SLongMonthNameNov, translated));
  HookResourceString(@SLongMonthNameDec, TranslateProp('sysConst','D11','SLongMonthNameDec', 'en-us', SLongMonthNameDec, translated));
  HookResourceString(@SShortDayNameSun, TranslateProp('sysConst','D11','SShortDayNameSun', 'en-us', SShortDayNameSun, translated));
  HookResourceString(@SShortDayNameMon, TranslateProp('sysConst','D11','SShortDayNameMon', 'en-us', SShortDayNameMon, translated));
  HookResourceString(@SShortDayNameTue, TranslateProp('sysConst','D11','SShortDayNameTue', 'en-us', SShortDayNameTue, translated));
  HookResourceString(@SShortDayNameWed, TranslateProp('sysConst','D11','SShortDayNameWed', 'en-us', SShortDayNameWed, translated));
  HookResourceString(@SShortDayNameThu, TranslateProp('sysConst','D11','SShortDayNameThu', 'en-us', SShortDayNameThu, translated));
  HookResourceString(@SShortDayNameFri, TranslateProp('sysConst','D11','SShortDayNameFri', 'en-us', SShortDayNameFri, translated));
  HookResourceString(@SShortDayNameSat, TranslateProp('sysConst','D11','SShortDayNameSat', 'en-us', SShortDayNameSat, translated));
  HookResourceString(@SLongDayNameSun, TranslateProp('sysConst','D11','SLongDayNameSun', 'en-us', SLongDayNameSun, translated));
  HookResourceString(@SLongDayNameMon, TranslateProp('sysConst','D11','SLongDayNameMon', 'en-us', SLongDayNameMon, translated));
  HookResourceString(@SLongDayNameTue, TranslateProp('sysConst','D11','SLongDayNameTue', 'en-us', SLongDayNameTue, translated));
  HookResourceString(@SLongDayNameWed, TranslateProp('sysConst','D11','SLongDayNameWed', 'en-us', SLongDayNameWed, translated));
  HookResourceString(@SLongDayNameThu, TranslateProp('sysConst','D11','SLongDayNameThu', 'en-us', SLongDayNameThu, translated));
  HookResourceString(@SLongDayNameFri, TranslateProp('sysConst','D11','SLongDayNameFri', 'en-us', SLongDayNameFri, translated));
  HookResourceString(@SLongDayNameSat, TranslateProp('sysConst','D11','SLongDayNameSat', 'en-us', SLongDayNameSat, translated));
{$IFDEF LINUX}
  HookResourceString(@SEraEntries, TranslateProp('sysConst','D11','SEraEntries', 'en-us', SEraEntries, translated));
{$ENDIF}
  HookResourceString(@SCannotCreateDir, TranslateProp('sysConst','D11','SCannotCreateDir', 'en-us', SCannotCreateDir, translated));
  HookResourceString(@SCodesetConversionError, TranslateProp('sysConst','D11','SCodesetConversionError', 'en-us', SCodesetConversionError, translated));
end;


initialization
  RegisterResourceTranslators(
     [ {TcadConstsResourceTranslator, }TConstsResourceTranslator,
       TZLibConstResourceTranslator, TOleConstResourceTranslator,
       TSysConstResourceTranslator]);


end.
