unit ucadTransCXresources;

interface

uses
  SysUtils,
  classes,
  ufmTranslator;                 
type

  TcxGridStrsResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TcxEditConstsResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TcxVGridConstsResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TcxPCConstsResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TcxLibraryStrsResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TcxGridPopupMenuConstsResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TcxFilterControlStrsResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TcxFilterConstsResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TcxExtEditConstsResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;

  TcxDataConstsResourceTranslator = class ( TcadResourceTranslatorEN )
    function Translate(const aObj: TObject; var Translated:boolean):boolean; override;
  end;


implementation

uses
   cxGridStrs, cxEditConsts, cxVGridConsts, cxPCConsts, cxLibraryStrs,
   cxGridPopupMenuConsts, cxFilterControlStrs, cxFilterConsts, cxExtEditConsts,
   cxDataConsts{, cxCalendar};

// -----------------------------------------------------------------------------

function TcxEditConstsResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@cxSEditButtonCancel, TranslateProp('cxEditConsts','EEL5','cxSEditButtonCancel', 'en-us', cxSEditButtonCancel, translated));
  HookResourceString(@cxSEditButtonOK, TranslateProp('cxEditConsts','EEL5','cxSEditButtonOK', 'en-us', cxSEditButtonOK, translated));
  HookResourceString(@cxSEditDateConvertError, TranslateProp('cxEditConsts','EEL5','cxSEditDateConvertError', 'en-us', cxSEditDateConvertError, translated));
  HookResourceString(@cxSEditInvalidRepositoryItem, TranslateProp('cxEditConsts','EEL5','cxSEditInvalidRepositoryItem', 'en-us', cxSEditInvalidRepositoryItem, translated));
  HookResourceString(@cxSEditNumericValueConvertError, TranslateProp('cxEditConsts','EEL5','cxSEditNumericValueConvertError', 'en-us', cxSEditNumericValueConvertError, translated));
  HookResourceString(@cxSEditPopupCircularReferencingError, TranslateProp('cxEditConsts','EEL5','cxSEditPopupCircularReferencingError', 'en-us', cxSEditPopupCircularReferencingError, translated));
  HookResourceString(@cxSEditPostError, TranslateProp('cxEditConsts','EEL5','cxSEditPostError', 'en-us', cxSEditPostError, translated));
  HookResourceString(@cxSEditTimeConvertError, TranslateProp('cxEditConsts','EEL5','cxSEditTimeConvertError', 'en-us', cxSEditTimeConvertError, translated));
  HookResourceString(@cxSEditValidateErrorText, TranslateProp('cxEditConsts','EEL5','cxSEditValidateErrorText', 'en-us', cxSEditValidateErrorText, translated));
  HookResourceString(@cxSEditValueOutOfBounds, TranslateProp('cxEditConsts','EEL5','cxSEditValueOutOfBounds', 'en-us', cxSEditValueOutOfBounds, translated));
  HookResourceString(@cxSEditCheckBoxChecked, TranslateProp('cxEditConsts','EEL5','cxSEditCheckBoxChecked', 'en-us', cxSEditCheckBoxChecked, translated));
  HookResourceString(@cxSEditCheckBoxGrayed, TranslateProp('cxEditConsts','EEL5','cxSEditCheckBoxGrayed', 'en-us', cxSEditCheckBoxGrayed, translated));
  HookResourceString(@cxSEditCheckBoxUnchecked, TranslateProp('cxEditConsts','EEL5','cxSEditCheckBoxUnchecked', 'en-us', cxSEditCheckBoxUnchecked, translated));
  HookResourceString(@cxSRadioGroupDefaultCaption, TranslateProp('cxEditConsts','EEL5','cxSRadioGroupDefaultCaption', 'en-us', cxSRadioGroupDefaultCaption, translated));
  HookResourceString(@cxSTextTrue, TranslateProp('cxEditConsts','EEL5','cxSTextTrue', 'en-us', cxSTextTrue, translated));
  HookResourceString(@cxSTextFalse, TranslateProp('cxEditConsts','EEL5','cxSTextFalse', 'en-us', cxSTextFalse, translated));
  HookResourceString(@cxSBlobButtonOK, TranslateProp('cxEditConsts','EEL5','cxSBlobButtonOK', 'en-us', cxSBlobButtonOK, translated));
  HookResourceString(@cxSBlobButtonCancel, TranslateProp('cxEditConsts','EEL5','cxSBlobButtonCancel', 'en-us', cxSBlobButtonCancel, translated));
  HookResourceString(@cxSBlobButtonClose, TranslateProp('cxEditConsts','EEL5','cxSBlobButtonClose', 'en-us', cxSBlobButtonClose, translated));
  HookResourceString(@cxSBlobMemo, TranslateProp('cxEditConsts','EEL5','cxSBlobMemo', 'en-us', cxSBlobMemo, translated));
  HookResourceString(@cxSBlobMemoEmpty, TranslateProp('cxEditConsts','EEL5','cxSBlobMemoEmpty', 'en-us', cxSBlobMemoEmpty, translated));
  HookResourceString(@cxSBlobPicture, TranslateProp('cxEditConsts','EEL5','cxSBlobPicture', 'en-us', cxSBlobPicture, translated));
  HookResourceString(@cxSBlobPictureEmpty, TranslateProp('cxEditConsts','EEL5','cxSBlobPictureEmpty', 'en-us', cxSBlobPictureEmpty, translated));
  HookResourceString(@cxSMenuItemCaptionCut, TranslateProp('cxEditConsts','EEL5','cxSMenuItemCaptionCut', 'en-us', cxSMenuItemCaptionCut, translated));
  HookResourceString(@cxSMenuItemCaptionCopy, TranslateProp('cxEditConsts','EEL5','cxSMenuItemCaptionCopy', 'en-us', cxSMenuItemCaptionCopy, translated));
  HookResourceString(@cxSMenuItemCaptionPaste, TranslateProp('cxEditConsts','EEL5','cxSMenuItemCaptionPaste', 'en-us', cxSMenuItemCaptionPaste, translated));
  HookResourceString(@cxSMenuItemCaptionDelete, TranslateProp('cxEditConsts','EEL5','cxSMenuItemCaptionDelete', 'en-us', cxSMenuItemCaptionDelete, translated));
  HookResourceString(@cxSMenuItemCaptionLoad, TranslateProp('cxEditConsts','EEL5','cxSMenuItemCaptionLoad', 'en-us', cxSMenuItemCaptionLoad, translated));
  HookResourceString(@cxSMenuItemCaptionSave, TranslateProp('cxEditConsts','EEL5','cxSMenuItemCaptionSave', 'en-us', cxSMenuItemCaptionSave, translated));
  HookResourceString(@cxSDatePopupClear, TranslateProp('cxEditConsts','EEL5','cxSDatePopupClear', 'en-us', cxSDatePopupClear, translated));
  HookResourceString(@cxSDatePopupNow, TranslateProp('cxEditConsts','EEL5','cxSDatePopupNow', 'en-us', cxSDatePopupNow, translated));
  HookResourceString(@cxSDatePopupOK, TranslateProp('cxEditConsts','EEL5','cxSDatePopupOK', 'en-us', cxSDatePopupOK, translated));
  HookResourceString(@cxSDatePopupToday, TranslateProp('cxEditConsts','EEL5','cxSDatePopupToday', 'en-us', cxSDatePopupToday, translated));
  HookResourceString(@cxSDateError, TranslateProp('cxEditConsts','EEL5','cxSDateError', 'en-us', cxSDateError, translated));
  HookResourceString(@scxSCalcError, TranslateProp('cxEditConsts','EEL5','scxSCalcError', 'en-us', scxSCalcError, translated));
  HookResourceString(@scxSHyperLinkPrefix, TranslateProp('cxEditConsts','EEL5','scxSHyperLinkPrefix', 'en-us', scxSHyperLinkPrefix, translated));
  HookResourceString(@scxSHyperLinkDoubleSlash, TranslateProp('cxEditConsts','EEL5','scxSHyperLinkDoubleSlash', 'en-us', scxSHyperLinkDoubleSlash, translated));
  HookResourceString(@cxNavigatorHint_First, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_First', 'en-us', cxNavigatorHint_First, translated));
  HookResourceString(@cxNavigatorHint_Prior, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_Prior', 'en-us', cxNavigatorHint_Prior, translated));
  HookResourceString(@cxNavigatorHint_PriorPage, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_PriorPage', 'en-us', cxNavigatorHint_PriorPage, translated));
  HookResourceString(@cxNavigatorHint_Next, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_Next', 'en-us', cxNavigatorHint_Next, translated));
  HookResourceString(@cxNavigatorHint_NextPage, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_NextPage', 'en-us', cxNavigatorHint_NextPage, translated));
  HookResourceString(@cxNavigatorHint_Last, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_Last', 'en-us', cxNavigatorHint_Last, translated));
  HookResourceString(@cxNavigatorHint_Insert, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_Insert', 'en-us', cxNavigatorHint_Insert, translated));
  HookResourceString(@cxNavigatorHint_Append, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_Append', 'en-us', cxNavigatorHint_Append, translated));
  HookResourceString(@cxNavigatorHint_Delete, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_Delete', 'en-us', cxNavigatorHint_Delete, translated));
  HookResourceString(@cxNavigatorHint_Edit, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_Edit', 'en-us', cxNavigatorHint_Edit, translated));
  HookResourceString(@cxNavigatorHint_Post, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_Post', 'en-us', cxNavigatorHint_Post, translated));
  HookResourceString(@cxNavigatorHint_Cancel, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_Cancel', 'en-us', cxNavigatorHint_Cancel, translated));
  HookResourceString(@cxNavigatorHint_Refresh, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_Refresh', 'en-us', cxNavigatorHint_Refresh, translated));
  HookResourceString(@cxNavigatorHint_SaveBookmark, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_SaveBookmark', 'en-us', cxNavigatorHint_SaveBookmark, translated));
  HookResourceString(@cxNavigatorHint_GotoBookmark, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_GotoBookmark', 'en-us', cxNavigatorHint_GotoBookmark, translated));
  HookResourceString(@cxNavigatorHint_Filter, TranslateProp('cxEditConsts','EEL5','cxNavigatorHint_Filter', 'en-us', cxNavigatorHint_Filter, translated));
  HookResourceString(@cxNavigator_DeleteRecordQuestion, TranslateProp('cxEditConsts','EEL5','cxNavigator_DeleteRecordQuestion', 'en-us', cxNavigator_DeleteRecordQuestion, translated));
  HookResourceString(@scxSEditRepositoryBlobItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryBlobItem', 'en-us', scxSEditRepositoryBlobItem, translated));
  HookResourceString(@scxSEditRepositoryButtonItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryButtonItem', 'en-us', scxSEditRepositoryButtonItem, translated));
  HookResourceString(@scxSEditRepositoryCalcItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryCalcItem', 'en-us', scxSEditRepositoryCalcItem, translated));
  HookResourceString(@scxSEditRepositoryCheckBoxItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryCheckBoxItem', 'en-us', scxSEditRepositoryCheckBoxItem, translated));
  HookResourceString(@scxSEditRepositoryComboBoxItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryComboBoxItem', 'en-us', scxSEditRepositoryComboBoxItem, translated));
  HookResourceString(@scxSEditRepositoryCurrencyItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryCurrencyItem', 'en-us', scxSEditRepositoryCurrencyItem, translated));
  HookResourceString(@scxSEditRepositoryDateItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryDateItem', 'en-us', scxSEditRepositoryDateItem, translated));
  HookResourceString(@scxSEditRepositoryHyperLinkItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryHyperLinkItem', 'en-us', scxSEditRepositoryHyperLinkItem, translated));
  HookResourceString(@scxSEditRepositoryImageComboBoxItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryImageComboBoxItem', 'en-us', scxSEditRepositoryImageComboBoxItem, translated));
  HookResourceString(@scxSEditRepositoryImageItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryImageItem', 'en-us', scxSEditRepositoryImageItem, translated));
  HookResourceString(@scxSEditRepositoryLookupComboBoxItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryLookupComboBoxItem', 'en-us', scxSEditRepositoryLookupComboBoxItem, translated));
  HookResourceString(@scxSEditRepositoryMaskItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryMaskItem', 'en-us', scxSEditRepositoryMaskItem, translated));
  HookResourceString(@scxSEditRepositoryMemoItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryMemoItem', 'en-us', scxSEditRepositoryMemoItem, translated));
  HookResourceString(@scxSEditRepositoryMRUItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryMRUItem', 'en-us', scxSEditRepositoryMRUItem, translated));
  HookResourceString(@scxSEditRepositoryPopupItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryPopupItem', 'en-us', scxSEditRepositoryPopupItem, translated));
  HookResourceString(@scxSEditRepositorySpinItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositorySpinItem', 'en-us', scxSEditRepositorySpinItem, translated));
  HookResourceString(@scxSEditRepositoryRadioGroupItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryRadioGroupItem', 'en-us', scxSEditRepositoryRadioGroupItem, translated));
  HookResourceString(@scxSEditRepositoryTextItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryTextItem', 'en-us', scxSEditRepositoryTextItem, translated));
  HookResourceString(@scxSEditRepositoryTimeItem, TranslateProp('cxEditConsts','EEL5','scxSEditRepositoryTimeItem', 'en-us', scxSEditRepositoryTimeItem, translated));
  HookResourceString(@scxRegExprLine, TranslateProp('cxEditConsts','EEL5','scxRegExprLine', 'en-us', scxRegExprLine, translated));
  HookResourceString(@scxRegExprChar, TranslateProp('cxEditConsts','EEL5','scxRegExprChar', 'en-us', scxRegExprChar, translated));
  HookResourceString(@scxRegExprNotAssignedSourceStream, TranslateProp('cxEditConsts','EEL5','scxRegExprNotAssignedSourceStream', 'en-us', scxRegExprNotAssignedSourceStream, translated));
  HookResourceString(@scxRegExprEmptySourceStream, TranslateProp('cxEditConsts','EEL5','scxRegExprEmptySourceStream', 'en-us', scxRegExprEmptySourceStream, translated));
  HookResourceString(@scxRegExprCantUsePlusQuantifier, TranslateProp('cxEditConsts','EEL5','scxRegExprCantUsePlusQuantifier', 'en-us', scxRegExprCantUsePlusQuantifier, translated));
  HookResourceString(@scxRegExprCantUseStarQuantifier, TranslateProp('cxEditConsts','EEL5','scxRegExprCantUseStarQuantifier', 'en-us', scxRegExprCantUseStarQuantifier, translated));
  HookResourceString(@scxRegExprCantCreateEmptyAlt, TranslateProp('cxEditConsts','EEL5','scxRegExprCantCreateEmptyAlt', 'en-us', scxRegExprCantCreateEmptyAlt, translated));
  HookResourceString(@scxRegExprCantCreateEmptyBlock, TranslateProp('cxEditConsts','EEL5','scxRegExprCantCreateEmptyBlock', 'en-us', scxRegExprCantCreateEmptyBlock, translated));
  HookResourceString(@scxRegExprIllegalSymbol, TranslateProp('cxEditConsts','EEL5','scxRegExprIllegalSymbol', 'en-us', scxRegExprIllegalSymbol, translated));
  HookResourceString(@scxRegExprIllegalQuantifier, TranslateProp('cxEditConsts','EEL5','scxRegExprIllegalQuantifier', 'en-us', scxRegExprIllegalQuantifier, translated));
  HookResourceString(@scxRegExprNotSupportQuantifier, TranslateProp('cxEditConsts','EEL5','scxRegExprNotSupportQuantifier', 'en-us', scxRegExprNotSupportQuantifier, translated));
  HookResourceString(@scxRegExprIllegalIntegerValue, TranslateProp('cxEditConsts','EEL5','scxRegExprIllegalIntegerValue', 'en-us', scxRegExprIllegalIntegerValue, translated));
  HookResourceString(@scxRegExprTooBigReferenceNumber, TranslateProp('cxEditConsts','EEL5','scxRegExprTooBigReferenceNumber', 'en-us', scxRegExprTooBigReferenceNumber, translated));
  HookResourceString(@scxRegExprCantCreateEmptyEnum, TranslateProp('cxEditConsts','EEL5','scxRegExprCantCreateEmptyEnum', 'en-us', scxRegExprCantCreateEmptyEnum, translated));
  HookResourceString(@scxRegExprSubrangeOrder, TranslateProp('cxEditConsts','EEL5','scxRegExprSubrangeOrder', 'en-us', scxRegExprSubrangeOrder, translated));
  HookResourceString(@scxRegExprHexNumberExpected0, TranslateProp('cxEditConsts','EEL5','scxRegExprHexNumberExpected0', 'en-us', scxRegExprHexNumberExpected0, translated));
  HookResourceString(@scxRegExprHexNumberExpected, TranslateProp('cxEditConsts','EEL5','scxRegExprHexNumberExpected', 'en-us', scxRegExprHexNumberExpected, translated));
  HookResourceString(@scxRegExprMissing, TranslateProp('cxEditConsts','EEL5','scxRegExprMissing', 'en-us', scxRegExprMissing, translated));
  HookResourceString(@scxRegExprUnnecessary, TranslateProp('cxEditConsts','EEL5','scxRegExprUnnecessary', 'en-us', scxRegExprUnnecessary, translated));
  HookResourceString(@scxRegExprIncorrectSpace, TranslateProp('cxEditConsts','EEL5','scxRegExprIncorrectSpace', 'en-us', scxRegExprIncorrectSpace, translated));
  HookResourceString(@scxRegExprNotCompiled, TranslateProp('cxEditConsts','EEL5','scxRegExprNotCompiled', 'en-us', scxRegExprNotCompiled, translated));
  HookResourceString(@scxRegExprIncorrectParameterQuantifier, TranslateProp('cxEditConsts','EEL5','scxRegExprIncorrectParameterQuantifier', 'en-us', scxRegExprIncorrectParameterQuantifier, translated));
  HookResourceString(@scxRegExprCantUseParameterQuantifier, TranslateProp('cxEditConsts','EEL5','scxRegExprCantUseParameterQuantifier', 'en-us', scxRegExprCantUseParameterQuantifier, translated));
  HookResourceString(@scxMaskEditRegExprError, TranslateProp('cxEditConsts','EEL5','scxMaskEditRegExprError', 'en-us', scxMaskEditRegExprError, translated));
  HookResourceString(@scxMaskEditInvalidEditValue, TranslateProp('cxEditConsts','EEL5','scxMaskEditInvalidEditValue', 'en-us', scxMaskEditInvalidEditValue, translated));
  HookResourceString(@scxMaskEditNoMask, TranslateProp('cxEditConsts','EEL5','scxMaskEditNoMask', 'en-us', scxMaskEditNoMask, translated));
  HookResourceString(@scxMaskEditIllegalFileFormat, TranslateProp('cxEditConsts','EEL5','scxMaskEditIllegalFileFormat', 'en-us', scxMaskEditIllegalFileFormat, translated));
  HookResourceString(@scxMaskEditEmptyMaskCollectionFile, TranslateProp('cxEditConsts','EEL5','scxMaskEditEmptyMaskCollectionFile', 'en-us', scxMaskEditEmptyMaskCollectionFile, translated));
  HookResourceString(@scxMaskEditMaskCollectionFiles, TranslateProp('cxEditConsts','EEL5','scxMaskEditMaskCollectionFiles', 'en-us', scxMaskEditMaskCollectionFiles, translated));
  HookResourceString(@cxSSpinEditInvalidNumericValue, TranslateProp('cxEditConsts','EEL5','cxSSpinEditInvalidNumericValue', 'en-us', cxSSpinEditInvalidNumericValue, translated));
end;

// -----------------------------------------------------------------------------

function TcxGridStrsResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@scxGridRecursiveLevels, TranslateProp('cxGridStrs','EQG6','scxGridRecursiveLevels', 'en-us', scxGridRecursiveLevels, translated));
  //HookResourceString(@scxGridDeletingConfirmationCaption, TranslateProp('cxGridStrs','EQG6','scxGridDeletingConfirmationCaption', 'en-us', scxGridDeletingConfirmationCaption, translated));
  HookResourceString(@scxGridDeletingFocusedConfirmationText, TranslateProp('cxGridStrs','EQG6','scxGridDeletingFocusedConfirmationText', 'en-us', scxGridDeletingFocusedConfirmationText, translated));
  HookResourceString(@scxGridDeletingSelectedConfirmationText, TranslateProp('cxGridStrs','EQG6','scxGridDeletingSelectedConfirmationText', 'en-us', scxGridDeletingSelectedConfirmationText, translated));
  HookResourceString(@scxGridNoDataInfoText, TranslateProp('cxGridStrs','EQG6','scxGridNoDataInfoText', 'en-us', scxGridNoDataInfoText, translated));
  HookResourceString(@scxGridFilterRowInfoText, TranslateProp('cxGridStrs','EQG6','scxGridFilterRowInfoText', 'en-us', scxGridFilterRowInfoText, translated));
  HookResourceString(@scxGridNewItemRowInfoText, TranslateProp('cxGridStrs','EQG6','scxGridNewItemRowInfoText', 'en-us', scxGridNewItemRowInfoText, translated));
  HookResourceString(@scxGridFilterIsEmpty, TranslateProp('cxGridStrs','EQG6','scxGridFilterIsEmpty', 'en-us', scxGridFilterIsEmpty, translated));
  HookResourceString(@scxGridCustomizationFormCaption, TranslateProp('cxGridStrs','EQG6','scxGridCustomizationFormCaption', 'en-us', scxGridCustomizationFormCaption, translated));
  HookResourceString(@scxGridCustomizationFormColumnsPageCaption, TranslateProp('cxGridStrs','EQG6','scxGridCustomizationFormColumnsPageCaption', 'en-us', scxGridCustomizationFormColumnsPageCaption, translated));
  HookResourceString(@scxGridGroupByBoxCaption, TranslateProp('cxGridStrs','EQG6','scxGridGroupByBoxCaption', 'en-us', scxGridGroupByBoxCaption, translated));
  HookResourceString(@scxGridFilterApplyButtonCaption, TranslateProp('cxGridStrs','EQG6','scxGridFilterApplyButtonCaption', 'en-us', scxGridFilterApplyButtonCaption, translated));
  HookResourceString(@scxGridFilterCustomizeButtonCaption, TranslateProp('cxGridStrs','EQG6','scxGridFilterCustomizeButtonCaption', 'en-us', scxGridFilterCustomizeButtonCaption, translated));
  HookResourceString(@scxGridColumnsQuickCustomizationHint, TranslateProp('cxGridStrs','EQG6','scxGridColumnsQuickCustomizationHint', 'en-us', scxGridColumnsQuickCustomizationHint, translated));
  HookResourceString(@scxGridCustomizationFormBandsPageCaption, TranslateProp('cxGridStrs','EQG6','scxGridCustomizationFormBandsPageCaption', 'en-us', scxGridCustomizationFormBandsPageCaption, translated));
  HookResourceString(@scxGridBandsQuickCustomizationHint, TranslateProp('cxGridStrs','EQG6','scxGridBandsQuickCustomizationHint', 'en-us', scxGridBandsQuickCustomizationHint, translated));
  HookResourceString(@scxGridCustomizationFormRowsPageCaption, TranslateProp('cxGridStrs','EQG6','scxGridCustomizationFormRowsPageCaption', 'en-us', scxGridCustomizationFormRowsPageCaption, translated));
  HookResourceString(@scxGridConverterIntermediaryMissing, TranslateProp('cxGridStrs','EQG6','scxGridConverterIntermediaryMissing', 'en-us', scxGridConverterIntermediaryMissing, translated));
  HookResourceString(@scxGridConverterNotExistGrid, TranslateProp('cxGridStrs','EQG6','scxGridConverterNotExistGrid', 'en-us', scxGridConverterNotExistGrid, translated));
  HookResourceString(@scxGridConverterNotExistComponent, TranslateProp('cxGridStrs','EQG6','scxGridConverterNotExistComponent', 'en-us', scxGridConverterNotExistComponent, translated));
  HookResourceString(@scxImportErrorCaption, TranslateProp('cxGridStrs','EQG6','scxImportErrorCaption', 'en-us', scxImportErrorCaption, translated));
  HookResourceString(@scxNotExistGridView, TranslateProp('cxGridStrs','EQG6','scxNotExistGridView', 'en-us', scxNotExistGridView, translated));
  HookResourceString(@scxNotExistGridLevel, TranslateProp('cxGridStrs','EQG6','scxNotExistGridLevel', 'en-us', scxNotExistGridLevel, translated));
  HookResourceString(@scxCantCreateExportOutputFile, TranslateProp('cxGridStrs','EQG6','scxCantCreateExportOutputFile', 'en-us', scxCantCreateExportOutputFile, translated));
  HookResourceString(@cxSEditRepositoryExtLookupComboBoxItem, TranslateProp('cxGridStrs','EQG6','cxSEditRepositoryExtLookupComboBoxItem', 'en-us', cxSEditRepositoryExtLookupComboBoxItem, translated));
  HookResourceString(@scxGridYesterday, TranslateProp('cxGridStrs','EQG6','scxGridYesterday', 'en-us', scxGridYesterday, translated));
  HookResourceString(@scxGridToday, TranslateProp('cxGridStrs','EQG6','scxGridToday', 'en-us', scxGridToday, translated));
  HookResourceString(@scxGridTomorrow, TranslateProp('cxGridStrs','EQG6','scxGridTomorrow', 'en-us', scxGridTomorrow, translated));
  HookResourceString(@scxGridLast30Days, TranslateProp('cxGridStrs','EQG6','scxGridLast30Days', 'en-us', scxGridLast30Days, translated));
  HookResourceString(@scxGridLast14Days, TranslateProp('cxGridStrs','EQG6','scxGridLast14Days', 'en-us', scxGridLast14Days, translated));
  HookResourceString(@scxGridLast7Days, TranslateProp('cxGridStrs','EQG6','scxGridLast7Days', 'en-us', scxGridLast7Days, translated));
  HookResourceString(@scxGridNext7Days, TranslateProp('cxGridStrs','EQG6','scxGridNext7Days', 'en-us', scxGridNext7Days, translated));
  HookResourceString(@scxGridNext14Days, TranslateProp('cxGridStrs','EQG6','scxGridNext14Days', 'en-us', scxGridNext14Days, translated));
  HookResourceString(@scxGridNext30Days, TranslateProp('cxGridStrs','EQG6','scxGridNext30Days', 'en-us', scxGridNext30Days, translated));
  HookResourceString(@scxGridLastTwoWeeks, TranslateProp('cxGridStrs','EQG6','scxGridLastTwoWeeks', 'en-us', scxGridLastTwoWeeks, translated));
  HookResourceString(@scxGridLastWeek, TranslateProp('cxGridStrs','EQG6','scxGridLastWeek', 'en-us', scxGridLastWeek, translated));
  HookResourceString(@scxGridThisWeek, TranslateProp('cxGridStrs','EQG6','scxGridThisWeek', 'en-us', scxGridThisWeek, translated));
  HookResourceString(@scxGridNextWeek, TranslateProp('cxGridStrs','EQG6','scxGridNextWeek', 'en-us', scxGridNextWeek, translated));
  HookResourceString(@scxGridNextTwoWeeks, TranslateProp('cxGridStrs','EQG6','scxGridNextTwoWeeks', 'en-us', scxGridNextTwoWeeks, translated));
  HookResourceString(@scxGridLastMonth, TranslateProp('cxGridStrs','EQG6','scxGridLastMonth', 'en-us', scxGridLastMonth, translated));
  HookResourceString(@scxGridThisMonth, TranslateProp('cxGridStrs','EQG6','scxGridThisMonth', 'en-us', scxGridThisMonth, translated));
  HookResourceString(@scxGridNextMonth, TranslateProp('cxGridStrs','EQG6','scxGridNextMonth', 'en-us', scxGridNextMonth, translated));
  HookResourceString(@scxGridLastYear, TranslateProp('cxGridStrs','EQG6','scxGridLastYear', 'en-us', scxGridLastYear, translated));
  HookResourceString(@scxGridThisYear, TranslateProp('cxGridStrs','EQG6','scxGridThisYear', 'en-us', scxGridThisYear, translated));
  HookResourceString(@scxGridNextYear, TranslateProp('cxGridStrs','EQG6','scxGridNextYear', 'en-us', scxGridNextYear, translated));
  HookResourceString(@scxGridPast, TranslateProp('cxGridStrs','EQG6','scxGridPast', 'en-us', scxGridPast, translated));
  HookResourceString(@scxGridFuture, TranslateProp('cxGridStrs','EQG6','scxGridFuture', 'en-us', scxGridFuture, translated));
  HookResourceString(@scxGridMonthFormat, TranslateProp('cxGridStrs','EQG6','scxGridMonthFormat', 'en-us', scxGridMonthFormat, translated));
  HookResourceString(@scxGridYearFormat, TranslateProp('cxGridStrs','EQG6','scxGridYearFormat', 'en-us', scxGridYearFormat, translated));
  HookResourceString(@scxGridChartCategoriesDisplayText, TranslateProp('cxGridStrs','EQG6','scxGridChartCategoriesDisplayText', 'en-us', scxGridChartCategoriesDisplayText, translated));
  HookResourceString(@scxGridChartValueHintFormat, TranslateProp('cxGridStrs','EQG6','scxGridChartValueHintFormat', 'en-us', scxGridChartValueHintFormat, translated));
  HookResourceString(@scxGridChartPercentValueTickMarkLabelFormat, TranslateProp('cxGridStrs','EQG6','scxGridChartPercentValueTickMarkLabelFormat', 'en-us', scxGridChartPercentValueTickMarkLabelFormat, translated));
  HookResourceString(@scxGridChartToolBoxDataLevels, TranslateProp('cxGridStrs','EQG6','scxGridChartToolBoxDataLevels', 'en-us', scxGridChartToolBoxDataLevels, translated));
  HookResourceString(@scxGridChartToolBoxDataLevelSelectValue, TranslateProp('cxGridStrs','EQG6','scxGridChartToolBoxDataLevelSelectValue', 'en-us', scxGridChartToolBoxDataLevelSelectValue, translated));
  HookResourceString(@scxGridChartToolBoxCustomizeButtonCaption, TranslateProp('cxGridStrs','EQG6','scxGridChartToolBoxCustomizeButtonCaption', 'en-us', scxGridChartToolBoxCustomizeButtonCaption, translated));
  HookResourceString(@scxGridChartNoneDiagramDisplayText, TranslateProp('cxGridStrs','EQG6','scxGridChartNoneDiagramDisplayText', 'en-us', scxGridChartNoneDiagramDisplayText, translated));
  HookResourceString(@scxGridChartColumnDiagramDisplayText, TranslateProp('cxGridStrs','EQG6','scxGridChartColumnDiagramDisplayText', 'en-us', scxGridChartColumnDiagramDisplayText, translated));
  HookResourceString(@scxGridChartBarDiagramDisplayText, TranslateProp('cxGridStrs','EQG6','scxGridChartBarDiagramDisplayText', 'en-us', scxGridChartBarDiagramDisplayText, translated));
  HookResourceString(@scxGridChartLineDiagramDisplayText, TranslateProp('cxGridStrs','EQG6','scxGridChartLineDiagramDisplayText', 'en-us', scxGridChartLineDiagramDisplayText, translated));
  HookResourceString(@scxGridChartAreaDiagramDisplayText, TranslateProp('cxGridStrs','EQG6','scxGridChartAreaDiagramDisplayText', 'en-us', scxGridChartAreaDiagramDisplayText, translated));
  HookResourceString(@scxGridChartPieDiagramDisplayText, TranslateProp('cxGridStrs','EQG6','scxGridChartPieDiagramDisplayText', 'en-us', scxGridChartPieDiagramDisplayText, translated));
  HookResourceString(@scxGridChartCustomizationFormSeriesPageCaption, TranslateProp('cxGridStrs','EQG6','scxGridChartCustomizationFormSeriesPageCaption', 'en-us', scxGridChartCustomizationFormSeriesPageCaption, translated));
  HookResourceString(@scxGridChartCustomizationFormSortBySeries, TranslateProp('cxGridStrs','EQG6','scxGridChartCustomizationFormSortBySeries', 'en-us', scxGridChartCustomizationFormSortBySeries, translated));
  HookResourceString(@scxGridChartCustomizationFormNoSortedSeries, TranslateProp('cxGridStrs','EQG6','scxGridChartCustomizationFormNoSortedSeries', 'en-us', scxGridChartCustomizationFormNoSortedSeries, translated));
  HookResourceString(@scxGridChartCustomizationFormDataGroupsPageCaption, TranslateProp('cxGridStrs','EQG6','scxGridChartCustomizationFormDataGroupsPageCaption', 'en-us', scxGridChartCustomizationFormDataGroupsPageCaption, translated));
  HookResourceString(@scxGridChartCustomizationFormOptionsPageCaption, TranslateProp('cxGridStrs','EQG6','scxGridChartCustomizationFormOptionsPageCaption', 'en-us', scxGridChartCustomizationFormOptionsPageCaption, translated));
  HookResourceString(@scxGridChartLegend, TranslateProp('cxGridStrs','EQG6','scxGridChartLegend', 'en-us', scxGridChartLegend, translated));
  HookResourceString(@scxGridChartLegendKeyBorder, TranslateProp('cxGridStrs','EQG6','scxGridChartLegendKeyBorder', 'en-us', scxGridChartLegendKeyBorder, translated));
  HookResourceString(@scxGridChartPosition, TranslateProp('cxGridStrs','EQG6','scxGridChartPosition', 'en-us', scxGridChartPosition, translated));
  HookResourceString(@scxGridChartPositionDefault, TranslateProp('cxGridStrs','EQG6','scxGridChartPositionDefault', 'en-us', scxGridChartPositionDefault, translated));
  HookResourceString(@scxGridChartPositionNone, TranslateProp('cxGridStrs','EQG6','scxGridChartPositionNone', 'en-us', scxGridChartPositionNone, translated));
  HookResourceString(@scxGridChartPositionLeft, TranslateProp('cxGridStrs','EQG6','scxGridChartPositionLeft', 'en-us', scxGridChartPositionLeft, translated));
  HookResourceString(@scxGridChartPositionTop, TranslateProp('cxGridStrs','EQG6','scxGridChartPositionTop', 'en-us', scxGridChartPositionTop, translated));
  HookResourceString(@scxGridChartPositionRight, TranslateProp('cxGridStrs','EQG6','scxGridChartPositionRight', 'en-us', scxGridChartPositionRight, translated));
  HookResourceString(@scxGridChartPositionBottom, TranslateProp('cxGridStrs','EQG6','scxGridChartPositionBottom', 'en-us', scxGridChartPositionBottom, translated));
  HookResourceString(@scxGridChartAlignment, TranslateProp('cxGridStrs','EQG6','scxGridChartAlignment', 'en-us', scxGridChartAlignment, translated));
  HookResourceString(@scxGridChartAlignmentDefault, TranslateProp('cxGridStrs','EQG6','scxGridChartAlignmentDefault', 'en-us', scxGridChartAlignmentDefault, translated));
  HookResourceString(@scxGridChartAlignmentStart, TranslateProp('cxGridStrs','EQG6','scxGridChartAlignmentStart', 'en-us', scxGridChartAlignmentStart, translated));
  HookResourceString(@scxGridChartAlignmentCenter, TranslateProp('cxGridStrs','EQG6','scxGridChartAlignmentCenter', 'en-us', scxGridChartAlignmentCenter, translated));
  HookResourceString(@scxGridChartAlignmentEnd, TranslateProp('cxGridStrs','EQG6','scxGridChartAlignmentEnd', 'en-us', scxGridChartAlignmentEnd, translated));
  HookResourceString(@scxGridChartOrientation, TranslateProp('cxGridStrs','EQG6','scxGridChartOrientation', 'en-us', scxGridChartOrientation, translated));
  HookResourceString(@scxGridChartOrientationDefault, TranslateProp('cxGridStrs','EQG6','scxGridChartOrientationDefault', 'en-us', scxGridChartOrientationDefault, translated));
  HookResourceString(@scxGridChartOrientationHorizontal, TranslateProp('cxGridStrs','EQG6','scxGridChartOrientationHorizontal', 'en-us', scxGridChartOrientationHorizontal, translated));
  HookResourceString(@scxGridChartOrientationVertical, TranslateProp('cxGridStrs','EQG6','scxGridChartOrientationVertical', 'en-us', scxGridChartOrientationVertical, translated));
  HookResourceString(@scxGridChartBorder, TranslateProp('cxGridStrs','EQG6','scxGridChartBorder', 'en-us', scxGridChartBorder, translated));
  HookResourceString(@scxGridChartTitle, TranslateProp('cxGridStrs','EQG6','scxGridChartTitle', 'en-us', scxGridChartTitle, translated));
  HookResourceString(@scxGridChartToolBox, TranslateProp('cxGridStrs','EQG6','scxGridChartToolBox', 'en-us', scxGridChartToolBox, translated));
  HookResourceString(@scxGridChartDiagramSelector, TranslateProp('cxGridStrs','EQG6','scxGridChartDiagramSelector', 'en-us', scxGridChartDiagramSelector, translated));
  HookResourceString(@scxGridChartOther, TranslateProp('cxGridStrs','EQG6','scxGridChartOther', 'en-us', scxGridChartOther, translated));
  HookResourceString(@scxGridChartValueHints, TranslateProp('cxGridStrs','EQG6','scxGridChartValueHints', 'en-us', scxGridChartValueHints, translated));
end;

// -----------------------------------------------------------------------------

function TcxVGridConstsResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@cxSvgIndexError, TranslateProp('cxVGridConsts','EVG','cxSvgIndexError', 'en-us', cxSvgIndexError, translated));
  HookResourceString(@cxSvgInvalidRowClass, TranslateProp('cxVGridConsts','EVG','cxSvgInvalidRowClass', 'en-us', cxSvgInvalidRowClass, translated));
  HookResourceString(@cxSvgAssignRowsError, TranslateProp('cxVGridConsts','EVG','cxSvgAssignRowsError', 'en-us', cxSvgAssignRowsError, translated));
  HookResourceString(@cxSvgDeletingFocusedConfirmationText, TranslateProp('cxVGridConsts','EVG','cxSvgDeletingFocusedConfirmationText', 'en-us', cxSvgDeletingFocusedConfirmationText, translated));
  HookResourceString(@cxSvgDeletingConfirmationCaption, TranslateProp('cxVGridConsts','EVG','cxSvgDeletingConfirmationCaption', 'en-us', cxSvgDeletingConfirmationCaption, translated));
  HookResourceString(@cxSvgOKCaption, TranslateProp('cxVGridConsts','EVG','cxSvgOKCaption', 'en-us', cxSvgOKCaption, translated));
  HookResourceString(@cxSvgCancelCaption, TranslateProp('cxVGridConsts','EVG','cxSvgCancelCaption', 'en-us', cxSvgCancelCaption, translated));
  HookResourceString(@cxSvgCustomizeCaption, TranslateProp('cxVGridConsts','EVG','cxSvgCustomizeCaption', 'en-us', cxSvgCustomizeCaption, translated));
  HookResourceString(@cxSvgCustomizeCategoriesCaption, TranslateProp('cxVGridConsts','EVG','cxSvgCustomizeCategoriesCaption', 'en-us', cxSvgCustomizeCategoriesCaption, translated));
  HookResourceString(@cxSvgCustomizeDeleteCategory, TranslateProp('cxVGridConsts','EVG','cxSvgCustomizeDeleteCategory', 'en-us', cxSvgCustomizeDeleteCategory, translated));
  HookResourceString(@cxSvgCustomizeNewCategory, TranslateProp('cxVGridConsts','EVG','cxSvgCustomizeNewCategory', 'en-us', cxSvgCustomizeNewCategory, translated));
  HookResourceString(@cxSvgCustomizeRowsCaption, TranslateProp('cxVGridConsts','EVG','cxSvgCustomizeRowsCaption', 'en-us', cxSvgCustomizeRowsCaption, translated));
  HookResourceString(@cxSvgNewCategoryCaption, TranslateProp('cxVGridConsts','EVG','cxSvgNewCategoryCaption', 'en-us', cxSvgNewCategoryCaption, translated));
  HookResourceString(@cxSvgNewCategoryLabelCaption, TranslateProp('cxVGridConsts','EVG','cxSvgNewCategoryLabelCaption', 'en-us', cxSvgNewCategoryLabelCaption, translated));
  HookResourceString(@cxSvgLayoutEditorCaption, TranslateProp('cxVGridConsts','EVG','cxSvgLayoutEditorCaption', 'en-us', cxSvgLayoutEditorCaption, translated));
  HookResourceString(@cxSvgLayoutEditorCustomize, TranslateProp('cxVGridConsts','EVG','cxSvgLayoutEditorCustomize', 'en-us', cxSvgLayoutEditorCustomize, translated));
  HookResourceString(@cxSvgRTTIInspectorEmptyGlyph, TranslateProp('cxVGridConsts','EVG','cxSvgRTTIInspectorEmptyGlyph', 'en-us', cxSvgRTTIInspectorEmptyGlyph, translated));
  HookResourceString(@cxSvgUnknown, TranslateProp('cxVGridConsts','EVG','cxSvgUnknown', 'en-us', cxSvgUnknown, translated));
  HookResourceString(@cxSvgExportNotVisibleControl, TranslateProp('cxVGridConsts','EVG','cxSvgExportNotVisibleControl', 'en-us', cxSvgExportNotVisibleControl, translated));
  HookResourceString(@cxSvgRTTICollectionEditCaption, TranslateProp('cxVGridConsts','EVG','cxSvgRTTICollectionEditCaption', 'en-us', cxSvgRTTICollectionEditCaption, translated));
  HookResourceString(@cxSvgRTTICollectionAdd, TranslateProp('cxVGridConsts','EVG','cxSvgRTTICollectionAdd', 'en-us', cxSvgRTTICollectionAdd, translated));
  HookResourceString(@cxSvgRTTICollectionAddHint, TranslateProp('cxVGridConsts','EVG','cxSvgRTTICollectionAddHint', 'en-us', cxSvgRTTICollectionAddHint, translated));
  HookResourceString(@cxSvgRTTICollectionDelete, TranslateProp('cxVGridConsts','EVG','cxSvgRTTICollectionDelete', 'en-us', cxSvgRTTICollectionDelete, translated));
  HookResourceString(@cxSvgRTTICollectionDeleteHint, TranslateProp('cxVGridConsts','EVG','cxSvgRTTICollectionDeleteHint', 'en-us', cxSvgRTTICollectionDeleteHint, translated));
  HookResourceString(@cxSvgRTTICollectionSelectAll, TranslateProp('cxVGridConsts','EVG','cxSvgRTTICollectionSelectAll', 'en-us', cxSvgRTTICollectionSelectAll, translated));
  HookResourceString(@cxSvgRTTICollectionToolbar, TranslateProp('cxVGridConsts','EVG','cxSvgRTTICollectionToolbar', 'en-us', cxSvgRTTICollectionToolbar, translated));
  HookResourceString(@cxSvgRTTICollectionTextLabel, TranslateProp('cxVGridConsts','EVG','cxSvgRTTICollectionTextLabel', 'en-us', cxSvgRTTICollectionTextLabel, translated));
  HookResourceString(@cxSvgRTTICollectionMoveUp, TranslateProp('cxVGridConsts','EVG','cxSvgRTTICollectionMoveUp', 'en-us', cxSvgRTTICollectionMoveUp, translated));
  HookResourceString(@cxSvgRTTICollectionMoveUpHint, TranslateProp('cxVGridConsts','EVG','cxSvgRTTICollectionMoveUpHint', 'en-us', cxSvgRTTICollectionMoveUpHint, translated));
  HookResourceString(@cxSvgRTTICollectionMoveDown, TranslateProp('cxVGridConsts','EVG','cxSvgRTTICollectionMoveDown', 'en-us', cxSvgRTTICollectionMoveDown, translated));
  HookResourceString(@cxSvgRTTICollectionMoveDownHint, TranslateProp('cxVGridConsts','EVG','cxSvgRTTICollectionMoveDownHint', 'en-us', cxSvgRTTICollectionMoveDownHint, translated));
end;

// -----------------------------------------------------------------------------

function TcxPCConstsResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@scxPCImageListIndexError, TranslateProp('cxPCConsts','EPC2','scxPCImageListIndexError', 'en-us', scxPCImageListIndexError, translated));
  HookResourceString(@scxPCNoBaseImages, TranslateProp('cxPCConsts','EPC2','scxPCNoBaseImages', 'en-us', scxPCNoBaseImages, translated));
  HookResourceString(@scxPCNoRegisteredStyles, TranslateProp('cxPCConsts','EPC2','scxPCNoRegisteredStyles', 'en-us', scxPCNoRegisteredStyles, translated));
  HookResourceString(@scxPCPageIndexError, TranslateProp('cxPCConsts','EPC2','scxPCPageIndexError', 'en-us', scxPCPageIndexError, translated));
  HookResourceString(@scxPCPainterClassError, TranslateProp('cxPCConsts','EPC2','scxPCPainterClassError', 'en-us', scxPCPainterClassError, translated));
  HookResourceString(@scxPCStandardStyleError, TranslateProp('cxPCConsts','EPC2','scxPCStandardStyleError', 'en-us', scxPCStandardStyleError, translated));
  HookResourceString(@scxPCStyleNameError, TranslateProp('cxPCConsts','EPC2','scxPCStyleNameError', 'en-us', scxPCStyleNameError, translated));
  HookResourceString(@scxPCTabCountEqualsZero, TranslateProp('cxPCConsts','EPC2','scxPCTabCountEqualsZero', 'en-us', scxPCTabCountEqualsZero, translated));
  HookResourceString(@scxPCTabIndexError, TranslateProp('cxPCConsts','EPC2','scxPCTabIndexError', 'en-us', scxPCTabIndexError, translated));
  HookResourceString(@scxPCTabVisibleIndexOutsOfBounds, TranslateProp('cxPCConsts','EPC2','scxPCTabVisibleIndexOutsOfBounds', 'en-us', scxPCTabVisibleIndexOutsOfBounds, translated));
  HookResourceString(@scxPCVisibleTabListEmpty, TranslateProp('cxPCConsts','EPC2','scxPCVisibleTabListEmpty', 'en-us', scxPCVisibleTabListEmpty, translated));
  HookResourceString(@scxPCAllowRotateError, TranslateProp('cxPCConsts','EPC2','scxPCAllowRotateError', 'en-us', scxPCAllowRotateError, translated));
end;

// -----------------------------------------------------------------------------

function TcxLibraryStrsResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@scxCantCreateRegistryKey, TranslateProp('cxLibraryStrs','EL','scxCantCreateRegistryKey', 'en-us', scxCantCreateRegistryKey, translated));
  HookResourceString(@scxCantOpenRegistryKey, TranslateProp('cxLibraryStrs','EL','scxCantOpenRegistryKey', 'en-us', scxCantOpenRegistryKey, translated));
  HookResourceString(@scxErrorStoreObject, TranslateProp('cxLibraryStrs','EL','scxErrorStoreObject', 'en-us', scxErrorStoreObject, translated));
  HookResourceString(@scxConverterCantCreateStyleRepository, TranslateProp('cxLibraryStrs','EL','scxConverterCantCreateStyleRepository', 'en-us', scxConverterCantCreateStyleRepository, translated));
  HookResourceString(@cxSDateToday, TranslateProp('cxLibraryStrs','EL','cxSDateToday', 'en-us', cxSDateToday, translated));
  HookResourceString(@cxSDateYesterday, TranslateProp('cxLibraryStrs','EL','cxSDateYesterday', 'en-us', cxSDateYesterday, translated));
  HookResourceString(@cxSDateTomorrow, TranslateProp('cxLibraryStrs','EL','cxSDateTomorrow', 'en-us', cxSDateTomorrow, translated));
  HookResourceString(@cxSDateSunday, TranslateProp('cxLibraryStrs','EL','cxSDateSunday', 'en-us', cxSDateSunday, translated));
  HookResourceString(@cxSDateMonday, TranslateProp('cxLibraryStrs','EL','cxSDateMonday', 'en-us', cxSDateMonday, translated));
  HookResourceString(@cxSDateTuesday, TranslateProp('cxLibraryStrs','EL','cxSDateTuesday', 'en-us', cxSDateTuesday, translated));
  HookResourceString(@cxSDateWednesday, TranslateProp('cxLibraryStrs','EL','cxSDateWednesday', 'en-us', cxSDateWednesday, translated));
  HookResourceString(@cxSDateThursday, TranslateProp('cxLibraryStrs','EL','cxSDateThursday', 'en-us', cxSDateThursday, translated));
  HookResourceString(@cxSDateFriday, TranslateProp('cxLibraryStrs','EL','cxSDateFriday', 'en-us', cxSDateFriday, translated));
  HookResourceString(@cxSDateSaturday, TranslateProp('cxLibraryStrs','EL','cxSDateSaturday', 'en-us', cxSDateSaturday, translated));
  HookResourceString(@cxSDateFirst, TranslateProp('cxLibraryStrs','EL','cxSDateFirst', 'en-us', cxSDateFirst, translated));
  HookResourceString(@cxSDateSecond, TranslateProp('cxLibraryStrs','EL','cxSDateSecond', 'en-us', cxSDateSecond, translated));
  HookResourceString(@cxSDateThird, TranslateProp('cxLibraryStrs','EL','cxSDateThird', 'en-us', cxSDateThird, translated));
  HookResourceString(@cxSDateFourth, TranslateProp('cxLibraryStrs','EL','cxSDateFourth', 'en-us', cxSDateFourth, translated));
  HookResourceString(@cxSDateFifth, TranslateProp('cxLibraryStrs','EL','cxSDateFifth', 'en-us', cxSDateFifth, translated));
  HookResourceString(@cxSDateSixth, TranslateProp('cxLibraryStrs','EL','cxSDateSixth', 'en-us', cxSDateSixth, translated));
  HookResourceString(@cxSDateSeventh, TranslateProp('cxLibraryStrs','EL','cxSDateSeventh', 'en-us', cxSDateSeventh, translated));
  HookResourceString(@cxSDateBOM, TranslateProp('cxLibraryStrs','EL','cxSDateBOM', 'en-us', cxSDateBOM, translated));
  HookResourceString(@cxSDateEOM, TranslateProp('cxLibraryStrs','EL','cxSDateEOM', 'en-us', cxSDateEOM, translated));
  HookResourceString(@cxSDateNow, TranslateProp('cxLibraryStrs','EL','cxSDateNow', 'en-us', cxSDateNow, translated));
end;

// -----------------------------------------------------------------------------

function TcxGridPopupMenuConstsResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@cxSGridNone, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridNone', 'en-us', cxSGridNone, translated));
  HookResourceString(@cxSGridSortColumnAsc, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridSortColumnAsc', 'en-us', cxSGridSortColumnAsc, translated));
  HookResourceString(@cxSGridSortColumnDesc, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridSortColumnDesc', 'en-us', cxSGridSortColumnDesc, translated));
  HookResourceString(@cxSGridClearSorting, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridClearSorting', 'en-us', cxSGridClearSorting, translated));
  HookResourceString(@cxSGridGroupByThisField, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridGroupByThisField', 'en-us', cxSGridGroupByThisField, translated));
  HookResourceString(@cxSGridRemoveThisGroupItem, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridRemoveThisGroupItem', 'en-us', cxSGridRemoveThisGroupItem, translated));
  HookResourceString(@cxSGridGroupByBox, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridGroupByBox', 'en-us', cxSGridGroupByBox, translated));
  HookResourceString(@cxSGridAlignmentSubMenu, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridAlignmentSubMenu', 'en-us', cxSGridAlignmentSubMenu, translated));
  HookResourceString(@cxSGridAlignLeft, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridAlignLeft', 'en-us', cxSGridAlignLeft, translated));
  HookResourceString(@cxSGridAlignRight, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridAlignRight', 'en-us', cxSGridAlignRight, translated));
  HookResourceString(@cxSGridAlignCenter, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridAlignCenter', 'en-us', cxSGridAlignCenter, translated));
  HookResourceString(@cxSGridRemoveColumn, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridRemoveColumn', 'en-us', cxSGridRemoveColumn, translated));
  HookResourceString(@cxSGridFieldChooser, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridFieldChooser', 'en-us', cxSGridFieldChooser, translated));
  HookResourceString(@cxSGridBestFit, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridBestFit', 'en-us', cxSGridBestFit, translated));
  HookResourceString(@cxSGridBestFitAllColumns, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridBestFitAllColumns', 'en-us', cxSGridBestFitAllColumns, translated));
  HookResourceString(@cxSGridShowFooter, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridShowFooter', 'en-us', cxSGridShowFooter, translated));
  HookResourceString(@cxSGridShowGroupFooter, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridShowGroupFooter', 'en-us', cxSGridShowGroupFooter, translated));
  HookResourceString(@cxSGridNoneMenuItem, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridNoneMenuItem', 'en-us', cxSGridNoneMenuItem, translated));
  HookResourceString(@cxSGridSumMenuItem, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridSumMenuItem', 'en-us', cxSGridSumMenuItem, translated));
  HookResourceString(@cxSGridMinMenuItem, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridMinMenuItem', 'en-us', cxSGridMinMenuItem, translated));
  HookResourceString(@cxSGridMaxMenuItem, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridMaxMenuItem', 'en-us', cxSGridMaxMenuItem, translated));
  HookResourceString(@cxSGridCountMenuItem, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridCountMenuItem', 'en-us', cxSGridCountMenuItem, translated));
  HookResourceString(@cxSGridAvgMenuItem, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridAvgMenuItem', 'en-us', cxSGridAvgMenuItem, translated));
  HookResourceString(@cxSGridSortByGroupValues, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridSortByGroupValues', 'en-us', cxSGridSortByGroupValues, translated));
  HookResourceString(@cxSGridSortBySummaryCaption, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridSortBySummaryCaption', 'en-us', cxSGridSortBySummaryCaption, translated));
  HookResourceString(@cxSGridSortBySummary, TranslateProp('cxGridPopupMenuConsts','QG6','cxSGridSortBySummary', 'en-us', cxSGridSortBySummary, translated));
end;

// -----------------------------------------------------------------------------

function TcxFilterControlStrsResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@cxSFilterBoolOperatorAnd, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterBoolOperatorAnd', 'en-us', cxSFilterBoolOperatorAnd, translated));
  HookResourceString(@cxSFilterBoolOperatorOr, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterBoolOperatorOr', 'en-us', cxSFilterBoolOperatorOr, translated));
  HookResourceString(@cxSFilterBoolOperatorNotAnd, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterBoolOperatorNotAnd', 'en-us', cxSFilterBoolOperatorNotAnd, translated));
  HookResourceString(@cxSFilterBoolOperatorNotOr, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterBoolOperatorNotOr', 'en-us', cxSFilterBoolOperatorNotOr, translated));
  HookResourceString(@cxSFilterRootButtonCaption, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterRootButtonCaption', 'en-us', cxSFilterRootButtonCaption, translated));
  HookResourceString(@cxSFilterAddCondition, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterAddCondition', 'en-us', cxSFilterAddCondition, translated));
  HookResourceString(@cxSFilterAddGroup, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterAddGroup', 'en-us', cxSFilterAddGroup, translated));
  HookResourceString(@cxSFilterRemoveRow, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterRemoveRow', 'en-us', cxSFilterRemoveRow, translated));
  HookResourceString(@cxSFilterClearAll, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterClearAll', 'en-us', cxSFilterClearAll, translated));
  HookResourceString(@cxSFilterFooterAddCondition, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterFooterAddCondition', 'en-us', cxSFilterFooterAddCondition, translated));
  HookResourceString(@cxSFilterGroupCaption, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterGroupCaption', 'en-us', cxSFilterGroupCaption, translated));
  HookResourceString(@cxSFilterRootGroupCaption, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterRootGroupCaption', 'en-us', cxSFilterRootGroupCaption, translated));
  HookResourceString(@cxSFilterControlNullString, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterControlNullString', 'en-us', cxSFilterControlNullString, translated));
  HookResourceString(@cxSFilterErrorBuilding, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterErrorBuilding', 'en-us', cxSFilterErrorBuilding, translated));
  HookResourceString(@cxSFilterDialogCaption, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterDialogCaption', 'en-us', cxSFilterDialogCaption, translated));
  HookResourceString(@cxSFilterDialogInvalidValue, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterDialogInvalidValue', 'en-us', cxSFilterDialogInvalidValue, translated));
  HookResourceString(@cxSFilterDialogUse, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterDialogUse', 'en-us', cxSFilterDialogUse, translated));
  HookResourceString(@cxSFilterDialogSingleCharacter, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterDialogSingleCharacter', 'en-us', cxSFilterDialogSingleCharacter, translated));
  HookResourceString(@cxSFilterDialogCharactersSeries, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterDialogCharactersSeries', 'en-us', cxSFilterDialogCharactersSeries, translated));
  HookResourceString(@cxSFilterDialogOperationAnd, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterDialogOperationAnd', 'en-us', cxSFilterDialogOperationAnd, translated));
  HookResourceString(@cxSFilterDialogOperationOr, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterDialogOperationOr', 'en-us', cxSFilterDialogOperationOr, translated));
  HookResourceString(@cxSFilterDialogRows, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterDialogRows', 'en-us', cxSFilterDialogRows, translated));
  HookResourceString(@cxSFilterControlDialogCaption, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterControlDialogCaption', 'en-us', cxSFilterControlDialogCaption, translated));
  HookResourceString(@cxSFilterControlDialogNewFile, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterControlDialogNewFile', 'en-us', cxSFilterControlDialogNewFile, translated));
  HookResourceString(@cxSFilterControlDialogOpenDialogCaption, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterControlDialogOpenDialogCaption', 'en-us', cxSFilterControlDialogOpenDialogCaption, translated));
  HookResourceString(@cxSFilterControlDialogSaveDialogCaption, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterControlDialogSaveDialogCaption', 'en-us', cxSFilterControlDialogSaveDialogCaption, translated));
  HookResourceString(@cxSFilterControlDialogActionSaveCaption, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterControlDialogActionSaveCaption', 'en-us', cxSFilterControlDialogActionSaveCaption, translated));
  HookResourceString(@cxSFilterControlDialogActionOpenCaption, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterControlDialogActionOpenCaption', 'en-us', cxSFilterControlDialogActionOpenCaption, translated));
  HookResourceString(@cxSFilterControlDialogActionApplyCaption, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterControlDialogActionApplyCaption', 'en-us', cxSFilterControlDialogActionApplyCaption, translated));
  HookResourceString(@cxSFilterControlDialogActionOkCaption, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterControlDialogActionOkCaption', 'en-us', cxSFilterControlDialogActionOkCaption, translated));
  HookResourceString(@cxSFilterControlDialogActionCancelCaption, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterControlDialogActionCancelCaption', 'en-us', cxSFilterControlDialogActionCancelCaption, translated));
  HookResourceString(@cxSFilterControlDialogFileExt, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterControlDialogFileExt', 'en-us', cxSFilterControlDialogFileExt, translated));
  HookResourceString(@cxSFilterControlDialogFileFilter, TranslateProp('cxFilterControlStrs','EEL5','cxSFilterControlDialogFileFilter', 'en-us', cxSFilterControlDialogFileFilter, translated));
end;

// -----------------------------------------------------------------------------

function TcxFilterConstsResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@cxSFilterOperatorEqual, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorEqual', 'en-us', cxSFilterOperatorEqual, translated));
  HookResourceString(@cxSFilterOperatorNotEqual, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorNotEqual', 'en-us', cxSFilterOperatorNotEqual, translated));
  HookResourceString(@cxSFilterOperatorLess, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorLess', 'en-us', cxSFilterOperatorLess, translated));
  HookResourceString(@cxSFilterOperatorLessEqual, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorLessEqual', 'en-us', cxSFilterOperatorLessEqual, translated));
  HookResourceString(@cxSFilterOperatorGreater, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorGreater', 'en-us', cxSFilterOperatorGreater, translated));
  HookResourceString(@cxSFilterOperatorGreaterEqual, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorGreaterEqual', 'en-us', cxSFilterOperatorGreaterEqual, translated));
  HookResourceString(@cxSFilterOperatorLike, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorLike', 'en-us', cxSFilterOperatorLike, translated));
  HookResourceString(@cxSFilterOperatorNotLike, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorNotLike', 'en-us', cxSFilterOperatorNotLike, translated));
  HookResourceString(@cxSFilterOperatorBetween, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorBetween', 'en-us', cxSFilterOperatorBetween, translated));
  HookResourceString(@cxSFilterOperatorNotBetween, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorNotBetween', 'en-us', cxSFilterOperatorNotBetween, translated));
  HookResourceString(@cxSFilterOperatorInList, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorInList', 'en-us', cxSFilterOperatorInList, translated));
  HookResourceString(@cxSFilterOperatorNotInList, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorNotInList', 'en-us', cxSFilterOperatorNotInList, translated));
  HookResourceString(@cxSFilterOperatorYesterday, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorYesterday', 'en-us', cxSFilterOperatorYesterday, translated));
  HookResourceString(@cxSFilterOperatorToday, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorToday', 'en-us', cxSFilterOperatorToday, translated));
  HookResourceString(@cxSFilterOperatorTomorrow, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorTomorrow', 'en-us', cxSFilterOperatorTomorrow, translated));
  HookResourceString(@cxSFilterOperatorLast7Days, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorLast7Days', 'en-us', cxSFilterOperatorLast7Days, translated));
  HookResourceString(@cxSFilterOperatorLastWeek, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorLastWeek', 'en-us', cxSFilterOperatorLastWeek, translated));
  HookResourceString(@cxSFilterOperatorLast14Days, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorLast14Days', 'en-us', cxSFilterOperatorLast14Days, translated));
  HookResourceString(@cxSFilterOperatorLastTwoWeeks, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorLastTwoWeeks', 'en-us', cxSFilterOperatorLastTwoWeeks, translated));
  HookResourceString(@cxSFilterOperatorLast30Days, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorLast30Days', 'en-us', cxSFilterOperatorLast30Days, translated));
  HookResourceString(@cxSFilterOperatorLastMonth, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorLastMonth', 'en-us', cxSFilterOperatorLastMonth, translated));
  HookResourceString(@cxSFilterOperatorLastYear, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorLastYear', 'en-us', cxSFilterOperatorLastYear, translated));
  HookResourceString(@cxSFilterOperatorPast, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorPast', 'en-us', cxSFilterOperatorPast, translated));
  HookResourceString(@cxSFilterOperatorThisWeek, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorThisWeek', 'en-us', cxSFilterOperatorThisWeek, translated));
  HookResourceString(@cxSFilterOperatorThisMonth, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorThisMonth', 'en-us', cxSFilterOperatorThisMonth, translated));
  HookResourceString(@cxSFilterOperatorThisYear, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorThisYear', 'en-us', cxSFilterOperatorThisYear, translated));
  HookResourceString(@cxSFilterOperatorNext7Days, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorNext7Days', 'en-us', cxSFilterOperatorNext7Days, translated));
  HookResourceString(@cxSFilterOperatorNextWeek, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorNextWeek', 'en-us', cxSFilterOperatorNextWeek, translated));
  HookResourceString(@cxSFilterOperatorNext14Days, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorNext14Days', 'en-us', cxSFilterOperatorNext14Days, translated));
  HookResourceString(@cxSFilterOperatorNextTwoWeeks, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorNextTwoWeeks', 'en-us', cxSFilterOperatorNextTwoWeeks, translated));
  HookResourceString(@cxSFilterOperatorNext30Days, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorNext30Days', 'en-us', cxSFilterOperatorNext30Days, translated));
  HookResourceString(@cxSFilterOperatorNextMonth, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorNextMonth', 'en-us', cxSFilterOperatorNextMonth, translated));
  HookResourceString(@cxSFilterOperatorNextYear, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorNextYear', 'en-us', cxSFilterOperatorNextYear, translated));
  HookResourceString(@cxSFilterOperatorFuture, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorFuture', 'en-us', cxSFilterOperatorFuture, translated));
  HookResourceString(@cxSFilterAndCaption, TranslateProp('cxFilterConsts','EDC','cxSFilterAndCaption', 'en-us', cxSFilterAndCaption, translated));
  HookResourceString(@cxSFilterOrCaption, TranslateProp('cxFilterConsts','EDC','cxSFilterOrCaption', 'en-us', cxSFilterOrCaption, translated));
  HookResourceString(@cxSFilterNotCaption, TranslateProp('cxFilterConsts','EDC','cxSFilterNotCaption', 'en-us', cxSFilterNotCaption, translated));
  HookResourceString(@cxSFilterBlankCaption, TranslateProp('cxFilterConsts','EDC','cxSFilterBlankCaption', 'en-us', cxSFilterBlankCaption, translated));
  HookResourceString(@cxSFilterOperatorIsNull, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorIsNull', 'en-us', cxSFilterOperatorIsNull, translated));
  HookResourceString(@cxSFilterOperatorIsNotNull, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorIsNotNull', 'en-us', cxSFilterOperatorIsNotNull, translated));
  HookResourceString(@cxSFilterOperatorBeginsWith, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorBeginsWith', 'en-us', cxSFilterOperatorBeginsWith, translated));
  HookResourceString(@cxSFilterOperatorDoesNotBeginWith, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorDoesNotBeginWith', 'en-us', cxSFilterOperatorDoesNotBeginWith, translated));
  HookResourceString(@cxSFilterOperatorEndsWith, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorEndsWith', 'en-us', cxSFilterOperatorEndsWith, translated));
  HookResourceString(@cxSFilterOperatorDoesNotEndWith, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorDoesNotEndWith', 'en-us', cxSFilterOperatorDoesNotEndWith, translated));
  HookResourceString(@cxSFilterOperatorContains, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorContains', 'en-us', cxSFilterOperatorContains, translated));
  HookResourceString(@cxSFilterOperatorDoesNotContain, TranslateProp('cxFilterConsts','EDC','cxSFilterOperatorDoesNotContain', 'en-us', cxSFilterOperatorDoesNotContain, translated));
  HookResourceString(@cxSFilterBoxAllCaption, TranslateProp('cxFilterConsts','EDC','cxSFilterBoxAllCaption', 'en-us', cxSFilterBoxAllCaption, translated));
  HookResourceString(@cxSFilterBoxCustomCaption, TranslateProp('cxFilterConsts','EDC','cxSFilterBoxCustomCaption', 'en-us', cxSFilterBoxCustomCaption, translated));
  HookResourceString(@cxSFilterBoxBlanksCaption, TranslateProp('cxFilterConsts','EDC','cxSFilterBoxBlanksCaption', 'en-us', cxSFilterBoxBlanksCaption, translated));
  HookResourceString(@cxSFilterBoxNonBlanksCaption, TranslateProp('cxFilterConsts','EDC','cxSFilterBoxNonBlanksCaption', 'en-us', cxSFilterBoxNonBlanksCaption, translated));
end;

// -----------------------------------------------------------------------------

function TcxExtEditConstsResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@scxSEditRepositoryColorComboBoxItem, TranslateProp('cxExtEditConsts','EEL5','scxSEditRepositoryColorComboBoxItem', 'en-us', scxSEditRepositoryColorComboBoxItem, translated));
  HookResourceString(@scxSEditRepositoryFontNameComboBoxItem, TranslateProp('cxExtEditConsts','EEL5','scxSEditRepositoryFontNameComboBoxItem', 'en-us', scxSEditRepositoryFontNameComboBoxItem, translated));
  HookResourceString(@scxSEditRepositoryLabelItem, TranslateProp('cxExtEditConsts','EEL5','scxSEditRepositoryLabelItem', 'en-us', scxSEditRepositoryLabelItem, translated));
  HookResourceString(@scxSEditRepositoryProgressBarItem, TranslateProp('cxExtEditConsts','EEL5','scxSEditRepositoryProgressBarItem', 'en-us', scxSEditRepositoryProgressBarItem, translated));
  HookResourceString(@scxSEditRepositoryTrackBarItem, TranslateProp('cxExtEditConsts','EEL5','scxSEditRepositoryTrackBarItem', 'en-us', scxSEditRepositoryTrackBarItem, translated));
  HookResourceString(@scxSEditRepositorySpinButtonItem, TranslateProp('cxExtEditConsts','EEL5','scxSEditRepositorySpinButtonItem', 'en-us', scxSEditRepositorySpinButtonItem, translated));
  HookResourceString(@scxSEditRepositoryCheckComboBox, TranslateProp('cxExtEditConsts','EEL5','scxSEditRepositoryCheckComboBox', 'en-us', scxSEditRepositoryCheckComboBox, translated));
  HookResourceString(@scxSEditRepositoryShellComboBoxItem, TranslateProp('cxExtEditConsts','EEL5','scxSEditRepositoryShellComboBoxItem', 'en-us', scxSEditRepositoryShellComboBoxItem, translated));
  HookResourceString(@scxSEditRepositoryCheckGroupItem, TranslateProp('cxExtEditConsts','EEL5','scxSEditRepositoryCheckGroupItem', 'en-us', scxSEditRepositoryCheckGroupItem, translated));
  HookResourceString(@scxUDAssociated, TranslateProp('cxExtEditConsts','EEL5','scxUDAssociated', 'en-us', scxUDAssociated, translated));
  HookResourceString(@scxHotZoneStyleMediaPlayer9, TranslateProp('cxExtEditConsts','EEL5','scxHotZoneStyleMediaPlayer9', 'en-us', scxHotZoneStyleMediaPlayer9, translated));
  HookResourceString(@scxHotZoneStyleMediaPlayer8, TranslateProp('cxExtEditConsts','EEL5','scxHotZoneStyleMediaPlayer8', 'en-us', scxHotZoneStyleMediaPlayer8, translated));
  HookResourceString(@scxHotZoneStyleXPTaskBar, TranslateProp('cxExtEditConsts','EEL5','scxHotZoneStyleXPTaskBar', 'en-us', scxHotZoneStyleXPTaskBar, translated));
  HookResourceString(@scxHotZoneStyleSimple, TranslateProp('cxExtEditConsts','EEL5','scxHotZoneStyleSimple', 'en-us', scxHotZoneStyleSimple, translated));
  HookResourceString(@scxLoadingFonts, TranslateProp('cxExtEditConsts','EEL5','scxLoadingFonts', 'en-us', scxLoadingFonts, translated));
  HookResourceString(@cxSEditCheckGroupCaptionStateDelimiter, TranslateProp('cxExtEditConsts','EEL5','cxSEditCheckGroupCaptionStateDelimiter', 'en-us', cxSEditCheckGroupCaptionStateDelimiter, translated));
  HookResourceString(@cxSEditCheckGroupFilterColumnSeparator, TranslateProp('cxExtEditConsts','EEL5','cxSEditCheckGroupFilterColumnSeparator', 'en-us', cxSEditCheckGroupFilterColumnSeparator, translated));
  HookResourceString(@cxSEditCheckGroupChecked, TranslateProp('cxExtEditConsts','EEL5','cxSEditCheckGroupChecked', 'en-us', cxSEditCheckGroupChecked, translated));
  HookResourceString(@cxSEditCheckGroupGrayed, TranslateProp('cxExtEditConsts','EEL5','cxSEditCheckGroupGrayed', 'en-us', cxSEditCheckGroupGrayed, translated));
  HookResourceString(@cxSEditCheckGroupUnchecked, TranslateProp('cxExtEditConsts','EEL5','cxSEditCheckGroupUnchecked', 'en-us', cxSEditCheckGroupUnchecked, translated));
  HookResourceString(@cxSCheckComboBoxStatesItemsPropertyDlgCaption, TranslateProp('cxExtEditConsts','EEL5','cxSCheckComboBoxStatesItemsPropertyDlgCaption', 'en-us', cxSCheckComboBoxStatesItemsPropertyDlgCaption, translated));
  HookResourceString(@cxSCheckGroupStatesItemsPropertyDlgCaption, TranslateProp('cxExtEditConsts','EEL5','cxSCheckGroupStatesItemsPropertyDlgCaption', 'en-us', cxSCheckGroupStatesItemsPropertyDlgCaption, translated));
  HookResourceString(@cxSCheckComboBoxEmptySelectionText, TranslateProp('cxExtEditConsts','EEL5','cxSCheckComboBoxEmptySelectionText', 'en-us', cxSCheckComboBoxEmptySelectionText, translated));
  HookResourceString(@cxSCheckControlIncorrectItemCount, TranslateProp('cxExtEditConsts','EEL5','cxSCheckControlIncorrectItemCount', 'en-us', cxSCheckControlIncorrectItemCount, translated));
  HookResourceString(@cxSColorComboBoxDefaultDescription, TranslateProp('cxExtEditConsts','EEL5','cxSColorComboBoxDefaultDescription', 'en-us', cxSColorComboBoxDefaultDescription, translated));
  HookResourceString(@cxSEditRichEditLibraryError, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditLibraryError', 'en-us', cxSEditRichEditLibraryError, translated));
  HookResourceString(@cxSEditRichEditLineInsertionError, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditLineInsertionError', 'en-us', cxSEditRichEditLineInsertionError, translated));
  HookResourceString(@cxSEditRichEditLoadFail, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditLoadFail', 'en-us', cxSEditRichEditLoadFail, translated));
  HookResourceString(@cxSEditRichEditSaveFail, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditSaveFail', 'en-us', cxSEditRichEditSaveFail, translated));
  HookResourceString(@cxSEditRichEditSelectionSaveFail, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditSelectionSaveFail', 'en-us', cxSEditRichEditSelectionSaveFail, translated));
  HookResourceString(@cxSEditRichEditOleInterfaceFail, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditOleInterfaceFail', 'en-us', cxSEditRichEditOleInterfaceFail, translated));
  HookResourceString(@cxSEditRichEditCallBackFail, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditCallBackFail', 'en-us', cxSEditRichEditCallBackFail, translated));
  HookResourceString(@cxSEditRichEditLinkFail, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditLinkFail', 'en-us', cxSEditRichEditLinkFail, translated));
  HookResourceString(@scxSEditRepositoryRichEditItem, TranslateProp('cxExtEditConsts','EEL5','scxSEditRepositoryRichEditItem', 'en-us', scxSEditRepositoryRichEditItem, translated));
  HookResourceString(@cxSEditRichEditUndoCaption, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditUndoCaption', 'en-us', cxSEditRichEditUndoCaption, translated));
  HookResourceString(@cxSEditRichEditRedoCaption, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditRedoCaption', 'en-us', cxSEditRichEditRedoCaption, translated));
  HookResourceString(@cxSEditRichEditCutCaption, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditCutCaption', 'en-us', cxSEditRichEditCutCaption, translated));
  HookResourceString(@cxSEditRichEditCopyCaption, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditCopyCaption', 'en-us', cxSEditRichEditCopyCaption, translated));
  HookResourceString(@cxSEditRichEditPasteCaption, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditPasteCaption', 'en-us', cxSEditRichEditPasteCaption, translated));
  HookResourceString(@cxSEditRichEditDeleteCaption, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditDeleteCaption', 'en-us', cxSEditRichEditDeleteCaption, translated));
  HookResourceString(@cxSEditRichEditSelectAllCaption, TranslateProp('cxExtEditConsts','EEL5','cxSEditRichEditSelectAllCaption', 'en-us', cxSEditRichEditSelectAllCaption, translated));
end;

// -----------------------------------------------------------------------------

function TcxDataConstsResourceTranslator.Translate(const aObj: TObject; var Translated:boolean):boolean;
begin
  result := true;
  Translated := false;
  HookResourceString(@cxSDataReadError, TranslateProp('cxDataConsts','EDC','cxSDataReadError', 'en-us', cxSDataReadError, translated));
  HookResourceString(@cxSDataWriteError, TranslateProp('cxDataConsts','EDC','cxSDataWriteError', 'en-us', cxSDataWriteError, translated));
  HookResourceString(@cxSDataItemExistError, TranslateProp('cxDataConsts','EDC','cxSDataItemExistError', 'en-us', cxSDataItemExistError, translated));
  HookResourceString(@cxSDataRecordIndexError, TranslateProp('cxDataConsts','EDC','cxSDataRecordIndexError', 'en-us', cxSDataRecordIndexError, translated));
  HookResourceString(@cxSDataItemIndexError, TranslateProp('cxDataConsts','EDC','cxSDataItemIndexError', 'en-us', cxSDataItemIndexError, translated));
  HookResourceString(@cxSDataProviderModeError, TranslateProp('cxDataConsts','EDC','cxSDataProviderModeError', 'en-us', cxSDataProviderModeError, translated));
  HookResourceString(@cxSDataInvalidStreamFormat, TranslateProp('cxDataConsts','EDC','cxSDataInvalidStreamFormat', 'en-us', cxSDataInvalidStreamFormat, translated));
  HookResourceString(@cxSDataRowIndexError, TranslateProp('cxDataConsts','EDC','cxSDataRowIndexError', 'en-us', cxSDataRowIndexError, translated));
  HookResourceString(@cxSDataCustomDataSourceInvalidCompare, TranslateProp('cxDataConsts','EDC','cxSDataCustomDataSourceInvalidCompare', 'en-us', cxSDataCustomDataSourceInvalidCompare, translated));
  HookResourceString(@cxSDBDetailFilterControllerNotFound, TranslateProp('cxDataConsts','EDC','cxSDBDetailFilterControllerNotFound', 'en-us', cxSDBDetailFilterControllerNotFound, translated));
  HookResourceString(@cxSDBNotInGridMode, TranslateProp('cxDataConsts','EDC','cxSDBNotInGridMode', 'en-us', cxSDBNotInGridMode, translated));
  HookResourceString(@cxSDBKeyFieldNotFound, TranslateProp('cxDataConsts','EDC','cxSDBKeyFieldNotFound', 'en-us', cxSDBKeyFieldNotFound, translated));
end;

initialization
  RegisterResourceTranslators(
     [ TcxGridStrsResourceTranslator, TcxEditConstsResourceTranslator, TcxVGridConstsResourceTranslator,
       TcxPCConstsResourceTranslator, TcxLibraryStrsResourceTranslator, TcxGridPopupMenuConstsResourceTranslator,
       TcxFilterControlStrsResourceTranslator, TcxFilterConstsResourceTranslator, TcxExtEditConstsResourceTranslator,
       TcxDataConstsResourceTranslator]);


end.
