unit uBRGrid4;

interface

procedure TraduzirGrid4BR;

implementation

uses 
  cxClasses,
  cxGridPopUpMenuConsts,
  cxLibraryStrs, 
  cxDataConsts, 
  cxFilterControlStrs,
  cxGridStrs,
  cxExportStrs,
  cxFilterConsts,
  cxEditConsts;

procedure TraduzirGrid4BR;
begin
  // Data
  cxSetResourceString(@cxSDataReadError, 'Falha na leitura do stream');
  cxSetResourceString(@cxSDataWriteError, 'Falha na grava��o do stream');
  cxSetResourceString(@cxSDataItemExistError, 'Item j� existe');
  cxSetResourceString(@cxSDataRecordIndexError, '�ndice de registro fora da faixa');
  cxSetResourceString(@cxSDataItemIndexError, '�ndice do item fora da faixa');
  cxSetResourceString(@cxSDataProviderModeError, 'Esta opera�ao n�o � suportada no modo provider');
  cxSetResourceString(@cxSDataInvalidStreamFormat, 'Formato de stream inv�lido');
  cxSetResourceString(@cxSDataRowIndexError, '�ndice da linha fora da faixa');

  // cxFilterBoolOperator
  cxSetResourceString(@cxSFilterBoolOperatorAnd, 'E');
  cxSetResourceString(@cxSFilterBoolOperatorOr, 'Ou');
  cxSetResourceString(@cxSFilterBoolOperatorNotAnd, 'N�o E');
  cxSetResourceString(@cxSFilterBoolOperatorNotOr, 'N�o Ou');

  cxSetResourceString(@cxSFilterRootButtonCaption, 'Filtro');
  cxSetResourceString(@cxSFilterAddCondition, 'Adicionar &Condi��o');
  cxSetResourceString(@cxSFilterAddGroup, 'Adicionar &Grupo');
  cxSetResourceString(@cxSFilterRemoveRow , '&Remover Linha');
  cxSetResourceString(@cxSFilterClearAll, 'Limpar &Tudo');
  cxSetResourceString(@cxSFilterFooterAddCondition, 'clique aqui para adicionar uma nova condi��o');

  cxSetResourceString(@cxSFilterGroupCaption, 'aplic�vel �s seguintes condi��es');
  cxSetResourceString(@cxSFilterRootGroupCaption , '<raiz>');
  cxSetResourceString(@cxSFilterControlNullString , '<vazio>');

  cxSetResourceString(@cxSFilterErrorBuilding, 'N�o � possivel montar um filtro da fonte');

  // FilterDialog
  cxSetResourceString(@cxSFilterDialogCaption, 'Filtro Customizado');
  cxSetResourceString(@cxSFilterDialogInvalidValue, 'Valor inv�lido');
  cxSetResourceString(@cxSFilterDialogUse, 'Usar');
  cxSetResourceString(@cxSFilterDialogSingleCharacter, 'para representar qualquer caractere');
  cxSetResourceString(@cxSFilterDialogCharactersSeries, 'para representar qualquer s�rie de caracteres');
  cxSetResourceString(@cxSFilterDialogOperationAnd, 'E');
  cxSetResourceString(@cxSFilterDialogOperationOr, 'Ou');
  cxSetResourceString(@cxSFilterDialogRows, 'Mostrar linhas onde:');

  // FilterControlDialog
  cxSetResourceString(@cxSFilterControlDialogCaption, 'Montar Filtro');
  cxSetResourceString(@cxSFilterControlDialogNewFile, 'semnome.flt');
  cxSetResourceString(@cxSFilterControlDialogOpenDialogCaption, 'Abrir um filtro existente');
  cxSetResourceString(@cxSFilterControlDialogSaveDialogCaption, 'Salvar o filtro ativo para um arquivo');
  cxSetResourceString(@cxSFilterControlDialogActionSaveCaption, 'Salvar &Como ...');
  cxSetResourceString(@cxSFilterControlDialogActionOpenCaption , '&Abrir..');
  cxSetResourceString(@cxSFilterControlDialogActionApplyCaption, 'A&plicar');
  cxSetResourceString(@cxSFilterControlDialogActionOkCaption, 'Ok');
  cxSetResourceString(@cxSFilterControlDialogActionCancelCaption, 'Cancelar');
  cxSetResourceString(@cxSFilterControlDialogFileExt, 'flt');
  cxSetResourceString(@cxSFilterControlDialogFileFilter, 'Filtros (*.flt)|*.flt');

  cxSetResourceString(@cxSFilterOperatorEqual, 'igual');
  cxSetResourceString(@cxSFilterOperatorNotEqual, 'diferente de');
  cxSetResourceString(@cxSFilterOperatorLess, '� menor que');
  cxSetResourceString(@cxSFilterOperatorLessEqual, '� menor ou igual a');
  cxSetResourceString(@cxSFilterOperatorGreater, '� maior que');
  cxSetResourceString(@cxSFilterOperatorGreaterEqual, '� maior ou igual a');
  cxSetResourceString(@cxSFilterOperatorLike, 'parecido');
  cxSetResourceString(@cxSFilterOperatorNotLike, 'n�o parecido');
  cxSetResourceString(@cxSFilterOperatorBetween, 'dentro da faixa');
  cxSetResourceString(@cxSFilterOperatorNotBetween, 'fora da faixa');
  cxSetResourceString(@cxSFilterOperatorInList, 'contido');
  cxSetResourceString(@cxSFilterOperatorNotInList, 'n�o contido');

  cxSetResourceString(@cxSFilterOperatorYesterday, 'ontem');
  cxSetResourceString(@cxSFilterOperatorToday, 'hoje');
  cxSetResourceString(@cxSFilterOperatorTomorrow, 'amanh�');

  cxSetResourceString(@cxSFilterOperatorLastWeek, 'semana passada');
  cxSetResourceString(@cxSFilterOperatorLastMonth, 'm�s passado');
  cxSetResourceString(@cxSFilterOperatorLastYear, 'ano passado');

  cxSetResourceString(@cxSFilterOperatorThisWeek, 'esta semana');
  cxSetResourceString(@cxSFilterOperatorThisMonth, 'este m�s');
  cxSetResourceString(@cxSFilterOperatorThisYear, 'este ano');

  cxSetResourceString(@cxSFilterOperatorNextWeek, 'pr�xima semana');
  cxSetResourceString(@cxSFilterOperatorNextMonth, 'pr�ximo m�s');
  cxSetResourceString(@cxSFilterOperatorNextYear, 'pr�ximo ano');

  cxSetResourceString(@cxSFilterAndCaption, 'e');
  cxSetResourceString(@cxSFilterOrCaption, 'ou');
  cxSetResourceString(@cxSFilterNotCaption, 'n�o');
  cxSetResourceString(@cxSFilterBlankCaption, 'branco');

  // derived
  cxSetResourceString(@cxSFilterOperatorIsNull, 'em branco');
  cxSetResourceString(@cxSFilterOperatorIsNotNull, 'n�o em branco');
  cxSetResourceString(@cxSFilterOperatorBeginsWith, 'come�a com');
  cxSetResourceString(@cxSFilterOperatorDoesNotBeginWith, 'n�o come�a com');
  cxSetResourceString(@cxSFilterOperatorEndsWith, 'termina com');
  cxSetResourceString(@cxSFilterOperatorDoesNotEndWith, 'n�o termina com');
  cxSetResourceString(@cxSFilterOperatorContains, 'contenha');
  cxSetResourceString(@cxSFilterOperatorDoesNotContain, 'n�o contenha');

  // filter listbox's values
  cxSetResourceString(@cxSFilterBoxAllCaption , '(Tudo)');
  cxSetResourceString(@cxSFilterBoxCustomCaption , '(Customizar...)');
  cxSetResourceString(@cxSFilterBoxBlanksCaption , '(Brancos)');
  cxSetResourceString(@cxSFilterBoxNonBlanksCaption , '(N�o-brancos)');

  cxSetResourceString(@cxSEditInvalidRepositoryItem, 'Item de reposit�rio n�o aceit�vel');
  cxSetResourceString(@cxSEditNumericValueConvertError, 'N�o foi poss�vel converter para valor n�merico');
  cxSetResourceString(@cxSEditPopupCircularReferencingError, 'Refer�ncia circular n�o � permitida');
  cxSetResourceString(@cxSEditPostError, 'Ocorreu um erro ao gravar o valor de edi��o');
  cxSetResourceString(@cxSEditTimeConvertError, 'N�o foi poss�vel converter para tempo');
  cxSetResourceString(@cxSEditValidateErrorText, 'Dados digitados s�o inv�lidos. Use o ESC para abandonar as altera��es');
  cxSetResourceString(@cxSEditValueOutOfBounds, 'Valor fora da faixa v�lida');

  cxSetResourceString(@cxSTextTrue                       , 'Sim');
  cxSetResourceString(@cxSTextFalse                      , 'N�o');

  // blob
  cxSetResourceString(@cxSBlobButtonOK                    , '&OK');
  cxSetResourceString(@cxSBlobButtonCancel                , '&Cancelar');
  cxSetResourceString(@cxSBlobButtonClose                 , '&Fechar');
  cxSetResourceString(@cxSBlobMemo                        , '(MEMO)');
  cxSetResourceString(@cxSBlobMemoEmpty                   , '(memo)');
  cxSetResourceString(@cxSBlobPicture                     , '(IMAGEM)');
  cxSetResourceString(@cxSBlobPictureEmpty                , '(imagem)');

  // popup menu items
  cxSetResourceString(@cxSMenuItemCaptionCut             , 'Recor&tar');
  cxSetResourceString(@cxSMenuItemCaptionCopy            , '&Copiar');
  cxSetResourceString(@cxSMenuItemCaptionPaste           , 'C&olar');
  cxSetResourceString(@cxSMenuItemCaptionDelete          , '&Apagar');
  cxSetResourceString(@cxSMenuItemCaptionLoad            , '&Carregar...');
  cxSetResourceString(@cxSMenuItemCaptionSave            , 'Salvar &como...');

  // date
  cxSetResourceString(@cxSDatePopupToday                  , 'Hoje');
  cxSetResourceString(@cxSDatePopupClear                  , 'Limpar');
  cxSetResourceString(@cxSDateError                       , 'Data Invalida');

  // smart input consts
  cxSetResourceString(@cxSDateToday                       , 'hoje');
  cxSetResourceString(@cxSDateYesterday                   , 'ontem');
  cxSetResourceString(@cxSDateTomorrow                    , 'amanh�');
  cxSetResourceString(@cxSDateSunday                      , 'Domingo');
  cxSetResourceString(@cxSDateMonday                      , 'Segunda');
  cxSetResourceString(@cxSDateTuesday                     , 'Ter�a');
  cxSetResourceString(@cxSDateWednesday                   , 'Quarta');
  cxSetResourceString(@cxSDateThursday                    , 'Quinta');
  cxSetResourceString(@cxSDateFriday                      , 'Sexta');
  cxSetResourceString(@cxSDateSaturday                    , 'S�bado');
  cxSetResourceString(@cxSDateFirst                       , 'primeiro');
  cxSetResourceString(@cxSDateSecond                      , 'segundo');
  cxSetResourceString(@cxSDateThird                       , 'terceiro');
  cxSetResourceString(@cxSDateFourth                      , 'quarto');
  cxSetResourceString(@cxSDateFifth                       , 'quinto');
  cxSetResourceString(@cxSDateSixth                       , 'sexto');
  cxSetResourceString(@cxSDateSeventh                     , 's�timo');
  cxSetResourceString(@cxSDateBOM                         , 'inicio do m�s');
  cxSetResourceString(@cxSDateEOM                         , 'fim do m�s');
  cxSetResourceString(@cxSDateNow                         , 'agora');

  // calculator
  cxSetResourceString(@scxSCalcError                      , 'Erro');

  cxSetResourceString(@scxMaskEditRegExprError , 'Regular expression errors:');
  cxSetResourceString(@scxMaskEditInvalidEditValue , 'Valor de edi��o inv�lido');
  cxSetResourceString(@scxMaskEditNoMask , 'Nenhum');
  cxSetResourceString(@scxMaskEditIllegalFileFormat , 'Formato de arquivo inv�lido');
  cxSetResourceString(@scxMaskEditEmptyMaskCollectionFile , 'The mask collection file is empty');
  cxSetResourceString(@scxMaskEditMaskCollectionFiles , 'Mask collection files');

  cxSetResourceString(@scxUnsupportedExport , 'Tipo de exporta��o n�o suportado: %1');
  cxSetResourceString(@scxStyleManagerKill , 'The Style Manager is currently being used elsewhere and can not be released at this stage');
  cxSetResourceString(@scxStyleManagerCreate , 'Can''t create style manager');

  cxSetResourceString(@scxExportToHtml  , 'Exportar como p�gina web (*.html)');
  cxSetResourceString(@scxExportToXml   , 'Exportar como documento XML (*.xml)');
  cxSetResourceString(@scxExportToText  , 'Exportar em formato texto (*.txt)');

  cxSetResourceString(@scxEmptyExportCache , 'Cache de exporta��o est� vazio');
  cxSetResourceString(@scxIncorrectUnion , 'Uni�o incorreta de c�lulas');
  cxSetResourceString(@scxIllegalWidth , 'Largura de coluna inv�lida');
  cxSetResourceString(@scxInvalidColumnRowCount , 'Quantidade inv�lida de colunas ou linhas');
  cxSetResourceString(@scxIllegalHeight , 'Altura de linha inv�lida');
  cxSetResourceString(@scxInvalidColumnIndex , '�ndice de coluna %d fora de faixa');
  cxSetResourceString(@scxInvalidRowIndex , '�ndice de linha %d fora de faixa');
  cxSetResourceString(@scxInvalidStyleIndex , '�ndice de estilo %d inv�lido');

  cxSetResourceString(@scxExportToExcel , 'Exportar para MS Excel (*.xls)');
  cxSetResourceString(@scxWorkbookWrite , 'Erro gravando arquivo XLS');
  cxSetResourceString(@scxInvalidCellDimension , 'Dimens�o de c�lula inv�lida');
  cxSetResourceString(@scxBoolTrue  , 'True');
  cxSetResourceString(@scxBoolFalse , 'False');

  cxSetResourceString(@scxGridRecursiveLevels , 'Voc� n�o pode criar n�veis recursivos');

  cxSetResourceString(@scxGridDeletingConfirmationCaption , 'Confirma��o');
  cxSetResourceString(@scxGridDeletingFocusedConfirmationText , 'Deseja realmente apagar o registro?');
  cxSetResourceString(@scxGridDeletingSelectedConfirmationText , 'Deseja realmente apagar TODOS registros selecionados?');

  cxSetResourceString(@scxGridFilterIsEmpty, '<Filtro Vazio>');

  cxSetResourceString(@scxGridCustomizationFormCaption , 'Customiza��o');
  cxSetResourceString(@scxGridCustomizationFormColumnsPageCaption , 'Colunas');
  cxSetResourceString(@scxGridGroupByBoxCaption , 'Arraste uma coluna aqui para agrupar por esta coluna');
  cxSetResourceString(@scxGridFilterCustomizeButtonCaption , 'Customizar...');
  cxSetResourceString(@scxGridCustomizationFormBandsPageCaption , 'Bandas');


  cxSetResourceString(@cxSGridAlignCenter, 'ao Centro');
  cxSetResourceString(@cxSGridAlignLeft  , '� Esquerda');
  cxSetResourceString(@cxSGridAlignmentSubMenu    , 'Alinhamento');
  cxSetResourceString(@cxSGridAlignRight , '� Direita');
  cxSetResourceString(@cxSGridAvgMenuItem, 'M�dia');
  cxSetResourceString(@cxSGridBestFit , 'Tamanho ideal');
  cxSetResourceString(@cxSGridBestFitAllColumns, 'Tamanho ideal (todas colunas)');
  cxSetResourceString(@cxSGridCountMenuItem , 'Contar');
  cxSetResourceString(@cxSGridFieldChooser  , 'Selecionar Colunas');
  cxSetResourceString(@cxSGridGroupByBox , 'Barra de Agrupamento');
  cxSetResourceString(@cxSGridGroupByThisField , 'Agrupar por esse campo');
  cxSetResourceString(@cxSGridMaxMenuItem, 'M�ximo');
  cxSetResourceString(@cxSGridMinMenuItem, 'M�nimo');
  cxSetResourceString(@cxSGridNone , 'Nenhum');
  cxSetResourceString(@cxSGridNoneMenuItem  , 'Nenhum');
  cxSetResourceString(@cxSGridRemoveColumn  , 'Remover esta coluna');
  cxSetResourceString(@cxSGridShowFooter , 'Rodap�');
  cxSetResourceString(@cxSGridShowGroupFooter  , 'Rodap� do grupo');
  cxSetResourceString(@cxSGridSortColumnAsc , 'Ordenar crescente');
  cxSetResourceString(@cxSGridSortColumnDesc, 'Ordenar decrescente');
  cxSetResourceString(@cxSGridSumMenuItem, 'Somar');
end;


end.
 