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
  cxSetResourceString(@cxSDataWriteError, 'Falha na gravação do stream');
  cxSetResourceString(@cxSDataItemExistError, 'Item já existe');
  cxSetResourceString(@cxSDataRecordIndexError, 'Índice de registro fora da faixa');
  cxSetResourceString(@cxSDataItemIndexError, 'Índice do item fora da faixa');
  cxSetResourceString(@cxSDataProviderModeError, 'Esta operaçao não é suportada no modo provider');
  cxSetResourceString(@cxSDataInvalidStreamFormat, 'Formato de stream inválido');
  cxSetResourceString(@cxSDataRowIndexError, 'Índice da linha fora da faixa');

  // cxFilterBoolOperator
  cxSetResourceString(@cxSFilterBoolOperatorAnd, 'E');
  cxSetResourceString(@cxSFilterBoolOperatorOr, 'Ou');
  cxSetResourceString(@cxSFilterBoolOperatorNotAnd, 'Não E');
  cxSetResourceString(@cxSFilterBoolOperatorNotOr, 'Não Ou');

  cxSetResourceString(@cxSFilterRootButtonCaption, 'Filtro');
  cxSetResourceString(@cxSFilterAddCondition, 'Adicionar &Condição');
  cxSetResourceString(@cxSFilterAddGroup, 'Adicionar &Grupo');
  cxSetResourceString(@cxSFilterRemoveRow , '&Remover Linha');
  cxSetResourceString(@cxSFilterClearAll, 'Limpar &Tudo');
  cxSetResourceString(@cxSFilterFooterAddCondition, 'clique aqui para adicionar uma nova condição');

  cxSetResourceString(@cxSFilterGroupCaption, 'aplicável às seguintes condições');
  cxSetResourceString(@cxSFilterRootGroupCaption , '<raiz>');
  cxSetResourceString(@cxSFilterControlNullString , '<vazio>');

  cxSetResourceString(@cxSFilterErrorBuilding, 'Não é possivel montar um filtro da fonte');

  // FilterDialog
  cxSetResourceString(@cxSFilterDialogCaption, 'Filtro Customizado');
  cxSetResourceString(@cxSFilterDialogInvalidValue, 'Valor inválido');
  cxSetResourceString(@cxSFilterDialogUse, 'Usar');
  cxSetResourceString(@cxSFilterDialogSingleCharacter, 'para representar qualquer caractere');
  cxSetResourceString(@cxSFilterDialogCharactersSeries, 'para representar qualquer série de caracteres');
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
  cxSetResourceString(@cxSFilterOperatorLess, 'é menor que');
  cxSetResourceString(@cxSFilterOperatorLessEqual, 'é menor ou igual a');
  cxSetResourceString(@cxSFilterOperatorGreater, 'é maior que');
  cxSetResourceString(@cxSFilterOperatorGreaterEqual, 'é maior ou igual a');
  cxSetResourceString(@cxSFilterOperatorLike, 'parecido');
  cxSetResourceString(@cxSFilterOperatorNotLike, 'não parecido');
  cxSetResourceString(@cxSFilterOperatorBetween, 'dentro da faixa');
  cxSetResourceString(@cxSFilterOperatorNotBetween, 'fora da faixa');
  cxSetResourceString(@cxSFilterOperatorInList, 'contido');
  cxSetResourceString(@cxSFilterOperatorNotInList, 'não contido');

  cxSetResourceString(@cxSFilterOperatorYesterday, 'ontem');
  cxSetResourceString(@cxSFilterOperatorToday, 'hoje');
  cxSetResourceString(@cxSFilterOperatorTomorrow, 'amanhã');

  cxSetResourceString(@cxSFilterOperatorLastWeek, 'semana passada');
  cxSetResourceString(@cxSFilterOperatorLastMonth, 'mês passado');
  cxSetResourceString(@cxSFilterOperatorLastYear, 'ano passado');

  cxSetResourceString(@cxSFilterOperatorThisWeek, 'esta semana');
  cxSetResourceString(@cxSFilterOperatorThisMonth, 'este mês');
  cxSetResourceString(@cxSFilterOperatorThisYear, 'este ano');

  cxSetResourceString(@cxSFilterOperatorNextWeek, 'próxima semana');
  cxSetResourceString(@cxSFilterOperatorNextMonth, 'próximo mês');
  cxSetResourceString(@cxSFilterOperatorNextYear, 'próximo ano');

  cxSetResourceString(@cxSFilterAndCaption, 'e');
  cxSetResourceString(@cxSFilterOrCaption, 'ou');
  cxSetResourceString(@cxSFilterNotCaption, 'não');
  cxSetResourceString(@cxSFilterBlankCaption, 'branco');

  // derived
  cxSetResourceString(@cxSFilterOperatorIsNull, 'em branco');
  cxSetResourceString(@cxSFilterOperatorIsNotNull, 'não em branco');
  cxSetResourceString(@cxSFilterOperatorBeginsWith, 'começa com');
  cxSetResourceString(@cxSFilterOperatorDoesNotBeginWith, 'não começa com');
  cxSetResourceString(@cxSFilterOperatorEndsWith, 'termina com');
  cxSetResourceString(@cxSFilterOperatorDoesNotEndWith, 'não termina com');
  cxSetResourceString(@cxSFilterOperatorContains, 'contenha');
  cxSetResourceString(@cxSFilterOperatorDoesNotContain, 'não contenha');

  // filter listbox's values
  cxSetResourceString(@cxSFilterBoxAllCaption , '(Tudo)');
  cxSetResourceString(@cxSFilterBoxCustomCaption , '(Customizar...)');
  cxSetResourceString(@cxSFilterBoxBlanksCaption , '(Brancos)');
  cxSetResourceString(@cxSFilterBoxNonBlanksCaption , '(Não-brancos)');

  cxSetResourceString(@cxSEditInvalidRepositoryItem, 'Item de repositório não aceitável');
  cxSetResourceString(@cxSEditNumericValueConvertError, 'Não foi possível converter para valor númerico');
  cxSetResourceString(@cxSEditPopupCircularReferencingError, 'Referência circular não é permitida');
  cxSetResourceString(@cxSEditPostError, 'Ocorreu um erro ao gravar o valor de edição');
  cxSetResourceString(@cxSEditTimeConvertError, 'Não foi possível converter para tempo');
  cxSetResourceString(@cxSEditValidateErrorText, 'Dados digitados são inválidos. Use o ESC para abandonar as alterações');
  cxSetResourceString(@cxSEditValueOutOfBounds, 'Valor fora da faixa válida');

  cxSetResourceString(@cxSTextTrue                       , 'Sim');
  cxSetResourceString(@cxSTextFalse                      , 'Não');

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
  cxSetResourceString(@cxSDateTomorrow                    , 'amanhã');
  cxSetResourceString(@cxSDateSunday                      , 'Domingo');
  cxSetResourceString(@cxSDateMonday                      , 'Segunda');
  cxSetResourceString(@cxSDateTuesday                     , 'Terça');
  cxSetResourceString(@cxSDateWednesday                   , 'Quarta');
  cxSetResourceString(@cxSDateThursday                    , 'Quinta');
  cxSetResourceString(@cxSDateFriday                      , 'Sexta');
  cxSetResourceString(@cxSDateSaturday                    , 'Sábado');
  cxSetResourceString(@cxSDateFirst                       , 'primeiro');
  cxSetResourceString(@cxSDateSecond                      , 'segundo');
  cxSetResourceString(@cxSDateThird                       , 'terceiro');
  cxSetResourceString(@cxSDateFourth                      , 'quarto');
  cxSetResourceString(@cxSDateFifth                       , 'quinto');
  cxSetResourceString(@cxSDateSixth                       , 'sexto');
  cxSetResourceString(@cxSDateSeventh                     , 'sétimo');
  cxSetResourceString(@cxSDateBOM                         , 'inicio do mês');
  cxSetResourceString(@cxSDateEOM                         , 'fim do mês');
  cxSetResourceString(@cxSDateNow                         , 'agora');

  // calculator
  cxSetResourceString(@scxSCalcError                      , 'Erro');

  cxSetResourceString(@scxMaskEditRegExprError , 'Regular expression errors:');
  cxSetResourceString(@scxMaskEditInvalidEditValue , 'Valor de edição inválido');
  cxSetResourceString(@scxMaskEditNoMask , 'Nenhum');
  cxSetResourceString(@scxMaskEditIllegalFileFormat , 'Formato de arquivo inválido');
  cxSetResourceString(@scxMaskEditEmptyMaskCollectionFile , 'The mask collection file is empty');
  cxSetResourceString(@scxMaskEditMaskCollectionFiles , 'Mask collection files');

  cxSetResourceString(@scxUnsupportedExport , 'Tipo de exportação não suportado: %1');
  cxSetResourceString(@scxStyleManagerKill , 'The Style Manager is currently being used elsewhere and can not be released at this stage');
  cxSetResourceString(@scxStyleManagerCreate , 'Can''t create style manager');

  cxSetResourceString(@scxExportToHtml  , 'Exportar como página web (*.html)');
  cxSetResourceString(@scxExportToXml   , 'Exportar como documento XML (*.xml)');
  cxSetResourceString(@scxExportToText  , 'Exportar em formato texto (*.txt)');

  cxSetResourceString(@scxEmptyExportCache , 'Cache de exportação está vazio');
  cxSetResourceString(@scxIncorrectUnion , 'União incorreta de células');
  cxSetResourceString(@scxIllegalWidth , 'Largura de coluna inválida');
  cxSetResourceString(@scxInvalidColumnRowCount , 'Quantidade inválida de colunas ou linhas');
  cxSetResourceString(@scxIllegalHeight , 'Altura de linha inválida');
  cxSetResourceString(@scxInvalidColumnIndex , 'Índice de coluna %d fora de faixa');
  cxSetResourceString(@scxInvalidRowIndex , 'Índice de linha %d fora de faixa');
  cxSetResourceString(@scxInvalidStyleIndex , 'Índice de estilo %d inválido');

  cxSetResourceString(@scxExportToExcel , 'Exportar para MS Excel (*.xls)');
  cxSetResourceString(@scxWorkbookWrite , 'Erro gravando arquivo XLS');
  cxSetResourceString(@scxInvalidCellDimension , 'Dimensão de célula inválida');
  cxSetResourceString(@scxBoolTrue  , 'True');
  cxSetResourceString(@scxBoolFalse , 'False');

  cxSetResourceString(@scxGridRecursiveLevels , 'Você não pode criar níveis recursivos');

  cxSetResourceString(@scxGridDeletingConfirmationCaption , 'Confirmação');
  cxSetResourceString(@scxGridDeletingFocusedConfirmationText , 'Deseja realmente apagar o registro?');
  cxSetResourceString(@scxGridDeletingSelectedConfirmationText , 'Deseja realmente apagar TODOS registros selecionados?');

  cxSetResourceString(@scxGridFilterIsEmpty, '<Filtro Vazio>');

  cxSetResourceString(@scxGridCustomizationFormCaption , 'Customização');
  cxSetResourceString(@scxGridCustomizationFormColumnsPageCaption , 'Colunas');
  cxSetResourceString(@scxGridGroupByBoxCaption , 'Arraste uma coluna aqui para agrupar por esta coluna');
  cxSetResourceString(@scxGridFilterCustomizeButtonCaption , 'Customizar...');
  cxSetResourceString(@scxGridCustomizationFormBandsPageCaption , 'Bandas');


  cxSetResourceString(@cxSGridAlignCenter, 'ao Centro');
  cxSetResourceString(@cxSGridAlignLeft  , 'à Esquerda');
  cxSetResourceString(@cxSGridAlignmentSubMenu    , 'Alinhamento');
  cxSetResourceString(@cxSGridAlignRight , 'à Direita');
  cxSetResourceString(@cxSGridAvgMenuItem, 'Média');
  cxSetResourceString(@cxSGridBestFit , 'Tamanho ideal');
  cxSetResourceString(@cxSGridBestFitAllColumns, 'Tamanho ideal (todas colunas)');
  cxSetResourceString(@cxSGridCountMenuItem , 'Contar');
  cxSetResourceString(@cxSGridFieldChooser  , 'Selecionar Colunas');
  cxSetResourceString(@cxSGridGroupByBox , 'Barra de Agrupamento');
  cxSetResourceString(@cxSGridGroupByThisField , 'Agrupar por esse campo');
  cxSetResourceString(@cxSGridMaxMenuItem, 'Máximo');
  cxSetResourceString(@cxSGridMinMenuItem, 'Mínimo');
  cxSetResourceString(@cxSGridNone , 'Nenhum');
  cxSetResourceString(@cxSGridNoneMenuItem  , 'Nenhum');
  cxSetResourceString(@cxSGridRemoveColumn  , 'Remover esta coluna');
  cxSetResourceString(@cxSGridShowFooter , 'Rodapé');
  cxSetResourceString(@cxSGridShowGroupFooter  , 'Rodapé do grupo');
  cxSetResourceString(@cxSGridSortColumnAsc , 'Ordenar crescente');
  cxSetResourceString(@cxSGridSortColumnDesc, 'Ordenar decrescente');
  cxSetResourceString(@cxSGridSumMenuItem, 'Somar');
end;


end.
 