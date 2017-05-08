(**********************************************************************************)
(* Code generated with NexusDB Enterprise Manager Data Dictionary Code Generator  *)
(*                                                                                *)
(* Version: 3,0101                                                                *)
(*                                                                                *)
(**********************************************************************************)

unit ncTableDefs;

interface

uses
  Classes,
  nxdb,
  nxsdTypes,
  nxsdKeyFieldEngineBase,
  nxsdDataDictionary;

type

 TnxcgProgressCallback = 
    procedure(const aTableName : String;
      var aStatus : TnxTaskStatus;
      var aCancel : Boolean) of object;

  procedure BuildAndEvolveDatabase(aDatabase : TnxDatabase;
    aProgressCallback : TnxcgProgressCallback = nil;
    const aPassword : String = '');

  procedure RestructureDatabase(aDatabase : TnxDatabase;
    aProgressCallback : TnxcgProgressCallback = nil;
    const aPassword : String = '');

  procedure PackDatabase(aDatabase : TnxDatabase;
    aProgressCallback : TnxcgProgressCallback = nil;
    const aPassword : String = '');

  function DatabaseVersion: Cardinal;
  function DatabaseVersionStr: String;
  function GetTableDictionary(aDatabase : TnxDatabase; const aTableName : String): TnxDataDictionary;
//  procedure GetTableNames(aSL: TStrings); 
//  function GetTablePrimaryKey(aTable: String): String;

type  

  TnxcgCreateDictCallback = function(aDatabase : TnxDatabase): TnxDataDictionary;  

  TncTableInfo = class
  public
    TableName  : String;
    Backup     : Byte;
    ID_Name    : String;
    ID_IxName  : String;
    UID_Name   : String;
    UID_IxName : String;
    Callback   : TnxcgCreateDictCallback;
    TableID    : Byte;

    function Bkp: Boolean;

    constructor Create(
      aTableName  : String;
      aCallback   : TnxcgCreateDictCallback;
      aTableID    : Byte;      
      aBackup     : Byte;
      aID_Name    : String;
      aID_IxName  : String;
      aUID_Name   : String;
      aUID_IxName : String);
  end;

  TncTableManager = class
  private
    FItems: TList;

    function GetByName(aName: String): TncTableInfo;
    function GetByID(aID: Byte): TncTableInfo;
    function GetItem(aIndex: Integer): TncTableInfo;
  public
    constructor Create;
    destructor Destroy; override;

    procedure Add(
      aTableName  : String;
      aCallback   : TnxcgCreateDictCallback;
      aTableID    : Byte;      
      aBackup     : Byte = 1;
      aID_Name    : String = '';
      aID_IxName  : String = '';
      aUID_Name   : String = '';
      aUID_IxName : String = '');

    function Count: Integer;

    procedure GetTableNames(sl: TStrings);

    property Items[aIndex: Integer]: TncTableInfo read GetItem;
    property Tables[aName: String]: TncTableInfo read GetByName; default;
    property Tables[aID: Byte]: TncTableInfo read GetByID; default;
  end;

const
  sEncPass = 'CEWk4jhsad3f';

var 
  gTables : TncTableManager;
  gEvolvingTables : Boolean = False; 
  gEvolvingTableName : String = '';
       
implementation

uses
  {$IFDEF NXWINAPI}nxWinAPI{$ELSE}Windows{$ENDIF},
  Math,
  SysUtils,
  StrUtils,
  Variants,
  DBCommon,
  nxllTypes,
  nxllBde,
  nxllException,
  nxllWideString,
  nxsdConst,
  nxsdDataDictionaryStrings,
  nxsdDataDictionaryRefInt,
  nxsdDataDictionaryFulltext,
  nxsdFilterEngineSimpleExpression,
  nxsdFilterEngineSql,
  nxsdServerEngine,
  nxsdTableMapperDescriptor, ncClassesBase, kwicDescriptor, 
  kwicEngine,
  ncVersionInfo,
  ncsFrmBackup, ncDebug;

threadvar
  aCopiouArqs : Boolean;

// ConvUnid
function __ConvUnid(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
          
        AddField('A', '', nxtNullString, 10, 0, False);
        AddField('B', '', nxtNullString, 10, 0, False);
        AddField('Fator', '', nxtDouble, 0, 0, False);
        AddField('Mult', '', nxtBoolean, 0, 0, False);
        AddField('Universal', '', nxtBoolean, 0, 0, False);
        AddField('Produto', '', nxtWord32, 10, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IABUniv', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('A'));
          Add(GetFieldFromName('B'));
          Add(GetFieldFromName('Universal'));
          Add(GetFieldFromName('Produto'));
        end;

        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
        
      end;  
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// ProdFor
function __xmls_compra(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
      
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);

        AddField('ChaveNFE', '', nxtNullString, 44, 0, False);
          
        AddField('xml', '', nxtBlobMemo, 10, 0, False);
        AddField('Tran', '', nxtWord32, 10, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));

        with AddIndex('IChaveNFE', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ChaveNFE'));   
      
        with AddIndex('ITran', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('Tran'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __SolicitacoesSped(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        AddField('dataIni', '', nxtDate, 0, 0, False);
        AddField('dataFim', '', nxtDate, 0, 0, False);
        AddField('dataInclusao', '', nxtDateTime, 0, 0, False);
        AddField('dataConclusao', '', nxtDateTime, 0, 0, False);
        AddField('usuario', '', nxtNullString, 50, 0, False);
        AddField('cnpj_emissor', '', nxtNullString, 25, 0, False);
        AddField('status', '', nxtWord32, 0, 0, False);
        AddField('resultado', '', nxtBlobMemo, 10, 0, False);
        AddField('spedGerado', '', nxtBlobMemo, 10, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));

        with AddIndex('IStatus', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('status'));
        end;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// ProdFor
function __DadosFiscais(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
      
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);

        AddField('ChaveNFE', '', nxtNullString, 44, 0, False);
        AddField('NomeFor', '', nxtNullString, 50, 0, False);
        AddField('nItem', '', nxtWord16, 0, 0, False);
        AddField('Produto', '', nxtWord32, 0, 0, False);
        AddField('DataNF', '', nxtDateTime, 0, 0, False);
        AddField('CNPJFor', '', nxtNullString, 19, 0, False);
        AddField('Quant', '', nxtDouble, 0, 0, False);
        AddField('CustoU', '', nxtCurrency, 0, 0, False);
        AddField('QuantOrig', '', nxtDouble, 0, 0, False);
        AddField('DadosFiscais', '', nxtBlobMemo, 10, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   

        with AddIndex('IChaveNFEnItem', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('ChaveNFE'));          
          Add(GetFieldFromName('nItem'));
        end;

        with AddIndex('ICNPJForProdutoDataNF', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('CNPJFor'));
          Add(GetFieldFromName('Produto'));
          Add(GetFieldFromName('DataNF'));
        end;

        with AddIndex('IProdutoDataNF', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Produto'));
          Add(GetFieldFromName('DataNF'));
        end;        
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __cfop_dev(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
      
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);

        AddField('cfop_compra', '', nxtWord16, 5, 0, False);
        AddField('cfop', '', nxtWord16, 5, 0, False);          
                  
        AddField('natop', '', nxtWideString, 60, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   

        with AddIndex('Icfop_compra', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('cfop_compra'));   
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;


function __Sped_C190(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        AddField('Tran', '', nxtWord32, 10, 0, False);
        AddField('CST_ICMS', '', nxtNullString, 5, 0, False);
        AddField('CFOP', '', nxtNullString, 8, 0, False);
        AddField('ALIQ_ICMS', '', nxtCurrency, 8, 2, False);
        AddField('VL_OPER', '', nxtCurrency, 8, 2, False);
        AddField('VL_BC_ICMS', '', nxtCurrency, 8, 2, False);
        AddField('VL_ICMS', '', nxtCurrency, 8, 2, False);
        AddField('VL_BC_ICMS_ST', '', nxtCurrency, 8, 2, False);
        AddField('VL_ICMS_ST', '', nxtCurrency, 8, 2, False);
        AddField('VL_RED_BC', '', nxtCurrency, 8, 2, False);
        AddField('VL_IPI', '', nxtCurrency, 8, 2, False);
        AddField('COD_OBS', '', nxtNullString, 6, 0, False);
      end;
      //
      with EnsureIndicesDescriptor do begin
        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));

        with AddIndex('ITranCfopCstAliq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tran'));
          Add(GetFieldFromName('CFOP'));
          Add(GetFieldFromName('CST_ICMS'));
          Add(GetFieldFromName('ALIQ_ICMS'));
        end;
        with AddIndex('ITran', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Tran'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __Sped_E210(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        AddField('Tran', '', nxtWord32, 6, 0, False);
        AddField('ID_UF', '', nxtWord32, 5, 0, False);
        AddField('DT_APURACAO', '', nxtDate, 0, 0, False);
        AddField('IND_MOV_ST', '', nxtCurrency, 8, 0, False);
        AddField('VL_SLD_CRED_ANT_ST', '', nxtCurrency, 8, 2, False);
        AddField('VL_DEVOL_ST', '', nxtCurrency, 8, 2, False);
        AddField('VL_RESSARC_ST', '', nxtCurrency, 8, 2, False);
        AddField('VL_OUT_CRED_ST', '', nxtCurrency, 8, 2, False);
        AddField('VL_AJ_CREDITOS_ST', '', nxtCurrency, 8, 2, False);
        AddField('VL_RETENCAO_ST', '', nxtCurrency, 8, 2, False);
        AddField('VL_OUT_DEB_ST', '', nxtCurrency, 8, 2, False);
        AddField('VL_AJ_DEBITOS_ST', '', nxtCurrency, 8, 2, False);
        AddField('VL_SLD_DEV_ANT_ST', '', nxtCurrency, 8, 2, False);
        AddField('VL_DEDUCOES_ST', '', nxtCurrency, 8, 2, False);
        AddField('VL_ICMS_RECOL_ST', '', nxtCurrency, 8, 2, False);
        AddField('VL_SLD_CRED_ST_TRAN', '', nxtCurrency, 8, 2, False);
        AddField('DEB_ESP_ST', '', nxtCurrency, 8, 2, False);

      end;
      //
      with EnsureIndicesDescriptor do begin
        with AddIndex('IdUFDataApuracao', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('ID_UF'));
          Add(GetFieldFromName('DT_APURACAO'));
        end;
        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;


function __movEst_Sped(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        AddField('Tran', '', nxtWord32, 10, 0, False);
        AddField('MovEst', '', nxtWord32, 10, 0, False);
        AddField('Produto', '', nxtWord32, 10, 0, False);
        AddField('Data', '', nxtDate, 0, 0, False);
        AddField('Num_Item', '', nxtWord32, 10, 0, False);
        AddField('Num_Item_XML', '', nxtWord32, 10, 0, False);
        AddField('Cod_Item', '', nxtNullString, 15, 0, False);
        AddField('Descr_compl', '', nxtNullString, 100, 0, False);
        AddField('QTD', '', nxtCurrency, 8, 2, False);
        AddField('Unid', '', nxtNullString, 6, 0, False);
        AddField('vl_item', '', nxtCurrency, 8, 2, False);
        AddField('vl_desc', '', nxtCurrency, 8, 2, False);
        AddField('ind_mov', '', nxtNullString, 5, 0, False);
        AddField('cst_icms', '', nxtNullString, 5, 0, False);
        AddField('cfop', '', nxtNullString, 5, 0, False);
        AddField('cod_nat', '', nxtNullString, 5, 0, False);
        AddField('vl_bc_icms', '', nxtCurrency, 8, 2, False);
        AddField('aliq_icms', '', nxtCurrency, 8, 2, False);
        AddField('vl_icms', '', nxtCurrency, 8, 2, False);
        AddField('vl_bc_icms_st', '', nxtCurrency, 8, 2, False);
        AddField('aliq_st', '', nxtCurrency, 8, 2, False);
        AddField('vl_icms_st', '', nxtCurrency, 8, 2, False);
        AddField('ind_apur', '', nxtChar, 1, 0, False);
        AddField('cst_ipi', '', nxtNullString, 2, 0, False);
        AddField('cod_enq', '', nxtNullString, 3, 0, False);
        AddField('vl_bc_ipi', '', nxtCurrency, 8, 2, False);
        AddField('aliq_ipi', '', nxtCurrency, 8, 2, False);
        AddField('vl_ipi', '', nxtCurrency, 8, 2, False);
        AddField('cst_pis', '', nxtCurrency, 8, 2, False);
        AddField('vl_bc_pis', '', nxtCurrency, 8, 2, False);
        AddField('aliq_pis_perc', '', nxtCurrency, 8, 2, False);
        AddField('quant_bc_pis', '', nxtCurrency, 8, 2, False);
        AddField('aliq_pis', '', nxtCurrency, 8, 2, False);
        AddField('vl_pis', '', nxtCurrency, 8, 2, False);
        AddField('cst_cofins', '', nxtCurrency, 8, 2, False);
        AddField('vl_bc_cofins', '', nxtCurrency, 8, 2, False);
        AddField('aliq_cofins_perc', '', nxtCurrency, 8, 2, False);
        AddField('quant_bc_cofins', '', nxtCurrency, 8, 2, False);
        AddField('aliq_cofins', '', nxtCurrency, 8, 2, False);
        AddField('vl_cofins', '', nxtCurrency, 8, 2, False);
        AddField('cod_cta', '', nxtNullString, 20, 0, False);
      end;
      //
      with EnsureIndicesDescriptor do begin
        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));

        with AddIndex('MovEstProd', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('MovEst'));
          Add(GetFieldFromName('Produto'));
        end;
        with AddIndex('TranProd', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tran'));
          Add(GetFieldFromName('Produto'));
        end;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// ProdFor
function __ProdFor(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);

        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        AddField('Produto', '', nxtWord32, 10, 0, False);
        AddField('Fornecedor', '', nxtWord32, 10, 0, False);
        AddField('Pos', '', nxtWord16, 5, 0, False);
        AddField('Ref', '', nxtNullString, 20, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));

        with AddIndex('IProdFor', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Produto'));
          Add(GetFieldFromName('Fornecedor'));
        end;
        with AddIndex('IForRef', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Fornecedor'));
          Add(GetFieldFromName('Ref'));
        end;
        with AddIndex('IProdPos', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Produto'));
          Add(GetFieldFromName('Pos'));
        end;        
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;  

// LinkXML
function __LinkXML(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
      
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
          
        AddField('Produto', '', nxtWord32, 10, 0, False);
        AddField('Fornecedor', '', nxtWord32, 10, 0, False);
        AddField('Link', '', nxtNullString, 20, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
      
        with AddIndex('IForLink', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Fornecedor'));
          Add(GetFieldFromName('Link'));
        end;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;  


// brtrib
function __brtrib(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtWord16, 5, 0, False);
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        
        AddField('Nome', '', nxtNullString, 50, 0, False);
        AddField('Origem', '', nxtByte, 2, 0, False);
        AddField('CST', '', nxtWord16, 3, 0, False);
        AddField('CSOSN', '', nxtWord16, 5, 0, False);
        AddField('ICMS', '', nxtDouble, 5, 5, False);
        AddField('ICMSSt', '', nxtBlobMemo, 0, 0, False);
        AddField('Padrao', '', nxtBoolean, 0, 0, False);
        AddField('NFE_CredIcms', '', nxtBoolean, 0, 0, False);
        AddField('CFOP_nfce', '', nxtWord16, 5, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
          
        with AddIndex('INome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('Nome'));
      end;
      
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;  

// CFOP
function __CFOP(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('Codigo', '', nxtWord16, 5, 0, False);
        AddField('Descricao', '', nxtBLOBMemo, 0, 0, False);
        AddField('Entrada', '', nxtBoolean, 0, 0, False);
        AddField('Tipo', '', nxtByte, 3, 0, False);
        AddField('NFCe', '', nxtBoolean, 0, 0, False);
        with AddField('Ordem', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 255;
        AddField('CSOSN', '', nxtWord16, 5, 0, False);
        AddField('Origem', '', nxtWord16, 5, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('ICodigo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Codigo'));
        with AddIndex('ITipoCodigo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('Codigo'));
        end;
        with AddIndex('IOrdemCodigo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Ordem'));
          Add(GetFieldFromName('Codigo'));
        end;
        with AddIndex('ITipoCodigoOrigem', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('Origem'));
          Add(GetFieldFromName('Codigo'));
        end;

      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// MunBr
function __MunBr(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('UF', '', nxtNullString, 2, 0, False);
        AddField('Nome', '', nxtNullString, 40, 0, False);
        AddField('Codigo', '', nxtNullString, 7, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IUFNome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('UF'));
          with Add(GetFieldFromName('Nome'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; 
              Flags := $00001000;
              UseStringSort := True;
            end;         
          end;
        end;
        with AddIndex('IUFCodigo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('UF'));
          Add(GetFieldFromName('Codigo'));
        end;
        with AddIndex('ICodigo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Codigo'));
        with AddIndex('INome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Nome'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; 
              Flags := $00001000;
              UseStringSort := True;
            end;           
          end;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// NFCONFIG
function __NFCONFIG(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
      
        with AddField('EmitirNFCe', '', nxtBoolean, 0, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False; 

        with AddField('nfe_pedido_na_obs', '', nxtBoolean, 0, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;             

        with AddField('Tipo', '', nxtByte, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := nfcfg_nfce;            

        with AddField('RemoverNFCe', '', nxtBoolean, 0, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;    

        with AddField('UsarPautaMaiorMVA', '', nxtBoolean, 0, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;             
                    
        with AddField('EmitirNFE', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False; 

        AddField('CertificadoDig', '', nxtNullString, 300, 0, False);

        AddField('sat_modelo', '', nxtByte, 5, 0, False);
        AddField('sat_config', '', nxtNullString, 50, 0, False);
        AddField('sat_esq',    '', nxtByte, 5, 0, False);
        AddField('nfe_permite_cred_icms', '', nxtBoolean, 0, 0, False);
        AddField('nfe_perc_cred_icms', '', nxtDouble, 0, 0, False);
        AddField('Contabilidade', '', nxtNullString, 19, 0, False);

        AddField('exigir_peso_vol', '', nxtBoolean, 0, 0, False);
        AddField('enviar_peso_vol_def', '', nxtBoolean, 0, 0, False);
        
        with AddField('auto_calc_peso_def', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;         
        
        with AddField('nfe_venda', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;          

        with AddField('tipodoc_padrao', '0-selecionar, 1-cupom, 2-nf-e', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;       
        
        AddField('PinCert', '', nxtNullString, 50, 0, False);

        with AddField('DependNFCEOk', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;   

        with AddField('DependSATOk', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;  

        with AddField('DependNFEOk', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;                                   
        
        with AddField('TipoCert', '', nxtByte, 3, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;        
        
        AddField('AutoPrintNFCe', '', nxtBoolean, 0, 0, False);
        with AddField('CRT', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 1;        
        AddField('NCM_Padrao', '', nxtNullString, 8, 0, False);
        AddField('Trib_Padrao', '', nxtWord16, 0, 0, False);
        AddField('MostrarDadosNFE', '', nxtBoolean, 0, 0, False);
        AddField('ModeloNFE', '', nxtNullString, 5, 0, False);
        AddField('ModeloNFCe', '', nxtNullString, 5, 0, False);
        with AddField('SerieNFCe', '', nxtNullString, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := '1';

        with AddField('SerieNFe', '', nxtNullString, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := '1';

        AddField('NomeDllSat', '', nxtNullString, 200, 0, False);
        AddField('SignACSat', '', nxtNullString, 344, 0, False);
        AddField('CodigoAtivacao', '', nxtNullString, 50, 0, False);
        
        with AddField('AssociarSignAC', '', nxtBoolean, 0, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        
        AddField('InicioNFe', '', nxtWord32, 10, 0, False);
        AddField('InicioNFCe', '', nxtWord32, 10, 0, False);
        
        AddField('RazaoSocial', '', nxtNullString, 100, 0, False);
        AddField('NomeFantasia', '', nxtNullString, 50, 0, False);
        AddField('CNPJ', '', nxtNullString, 20, 0, False);
        AddField('IE', '', nxtNullString, 20, 0, False);
        AddField('End_Logradouro', '', nxtNullString, 100, 0, False);
        AddField('End_Numero', '', nxtNullString, 10, 0, False);
        AddField('End_Complemento', '', nxtNullString, 20, 0, False);
        AddField('End_Bairro', '', nxtNullString, 40, 0, False);
        AddField('End_UF', '', nxtNullString, 2, 0, False);
        AddField('End_CEP', '', nxtNullString, 9, 0, False);
        AddField('End_Municipio', '', nxtNullString, 50, 0, False);
        AddField('End_CodMun', '', nxtNullString, 7, 0, False);
        AddField('End_CodUF', '', nxtByte, 3, 0, False);
        AddField('Telefone', '', nxtNullString, 20, 0, False);
        with AddField('tpAmb', '', nxtByte, 3, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2;    
        with AddField('tpAmbNFE', '', nxtByte, 3, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2;                   
        AddField('CSC', '', nxtNullString, 100, 0, False);
        AddField('IdCSC', '', nxtNullString, 10, 0, False);
        with AddField('PedirEmail', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 1;
        
        with AddField('PedirCPF', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 1;
            
        AddField('FromEmail', '', nxtNullString, 100, 0, False);
        AddField('AssuntoEmail', '', nxtNullString, 100, 0, False);
        AddField('FromName', '', nxtNullString, 50, 0, False);
        AddField('CorpoEmail', '', nxtBlobMemo, 0, 0, False);
        AddField('ModeloNFCe_Email', '', nxtGuid, 0, 0, False);
        AddField('ModeloSAT_Email', '', nxtGuid, 0, 0, False);
        AddField('ModeloNFE_Email', '', nxtGuid, 0, 0, False);
        AddField('urls_qrcode_hom', '', nxtBLOBMemo, 0, 0, False);
        AddField('urls_qrcode_prod', '', nxtBLOBMemo, 0, 0, False);
        AddField('urls_consulta', '', nxtBLOBMemo, 0, 0, False);
        AddField('config_nfe', '', nxtBlobMemo, 0, 0, False);
        AddField('ObsFisco', '', nxtBLOBMemo, 0, 0, False);
      end;

      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
      end;      
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// NFE
function __NFE(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
      
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          with AddDefaultValue(TnxAutoGuidDefaultValueDescriptor) as TnxAutoGuidDefaultValueDescriptor do
            ApplyAt := [aaClient, aaServer];
      
        AddField('NumSeq', '', nxtAutoInc, 10, 0, False);
        AddField('Modelo', '', nxtNullString, 5, 0, False);
        AddField('Serie', '', nxtNullString, 5, 0, False);
        AddField('Numero', '', nxtWord32, 4, 0, False);
        AddField('TicksConsulta', '', nxtWord32, 0, 0, False);
        AddField('Chave', '', nxtNullString, 44, 0, False);
        AddField('ChaveCont', '', nxtNullString, 44, 0, False);
        
        with AddField('ConsultouChave', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        
        with AddField('Entrada', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        
        with AddField('TipoDoc', 'NFCe=1, SAT=2, NFe=3', nxtByte, 2, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
            
        with AddField('DataHora', '', nxtDateTime, 0, 0, False) do
          AddDefaultValue(TnxCurrentDateTimeDefaultValueDescriptor);
          
        AddField('CFOP', '', nxtWord16, 4, 0, False);
        AddField('Tran', '', nxtGUID, 0, 0, False);
        AddField('Recibo', '', nxtNullString, 20, 0, False);
        AddField('Protocolo', '', nxtNullString, 20, 0, False);
        AddField('Contingencia', '', nxtBoolean, 0, 0, False);
        AddField('Status', '', nxtByte, 3, 0, False);
        AddField('tpAmb', '', nxtByte, 3, 0, False);
        AddField('StatusNF', '', nxtInt32, 5, 0, False);
        
        AddField('XMLdest',   '', nxtBLOBMemo, 0, 0, False);
        AddField('XMLret',    '', nxtBLOBMemo, 0, 0, False);
        AddField('XMLtrans', '', nxtBlobMemo, 0, 0, False);
        AddField('XMLtransCont', '', nxtBlobMemo, 0, 0, False);
        AddField('xMotivo', '', nxtBlobMemo, 0, 0, False);
        AddField('LogEnvio', '',  nxtBlobMemo, 0, 0, False);
        AddField('LogRec', '', nxtBlobMemo, 0, 0, False);

        AddField('ProtocoloCanc', '', nxtNullString, 20, 0, False);
        AddField('StatusCanc', '', nxtByte, 0, 0, False);
        AddField('StatusCancNF', '', nxtInt32, 0, 0, False);
        AddField('JustCanc', '', nxtBlobMemo, 0, 0, False);
        AddField('xMotivoCanc', '', nxtBlobMemo, 0, 0, False);
        AddField('xmlRetCanc', '', nxtBlobMemo, 0, 0, False);
        AddField('CanceladoPor', '', nxtNullString, 30, 0, False);
        AddField('CanceladoEm', '', nxtDateTime, 0, 0, False);
                           
        AddField('StatusInut', '', nxtByte, 0, 0, False);
        AddField('StatusInutNF', '', nxtInt32, 0, 0, False);
        AddField('ProtocoloInut', '', nxtNullString, 20, 0, False);
        AddField('xMotivoInut', '', nxtBlobMemo, 0, 0, False);
        AddField('xmlRetInut', '', nxtBlobMemo, 0, 0, False);

        AddField('CPF', '', nxtNullString, 14, 0, False);
        AddField('Email', '', nxtNullString, 100, 0, False);
        AddField('IncluidoEm', '', nxtDateTime, 0, 0, False);
        AddField('EmitidoEm', '', nxtDateTime, 0, 0, False);
        AddField('ContingenciaEM', '', nxtDateTime, 0, 0, False);
        AddField('Valor', '', nxtCurrency, 20, 4, False);
        AddField('TotalNF', '', nxtCurrency, 20, 4, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));

        with AddIndex('INumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('NumSeq'));          
      
        with AddIndex('IChave', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Chave'));
          
        with AddIndex('ITran', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tran'));
          Add(GetFieldFromName('TipoDoc'))
        end;  
        
        with AddIndex('ITipoDocIncluidoEm', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoDoc'));
          Add(GetFieldFromName('IncluidoEm'));
        end;  

        with AddIndex('ITipoDoctpAmbStatusInut', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoDoc'));
          Add(GetFieldFromName('tpAmb'));
          Add(GetFieldFromName('StatusInut'));          
        end;  

        with AddIndex('ITipoDocConsulta', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoDoc'));
          Add(GetFieldFromName('tpAmb'));
          Add(GetFieldFromName('ConsultouChave'));
          Add(GetFieldFromName('StatusNF'));          
        end;  

        with AddIndex('ITipoDocStatusCancNumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoDoc'));
          Add(GetFieldFromName('StatusCanc'));
          Add(GetFieldFromName('NumSeq'));
        end;  

        with AddIndex('IStatusCancNumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('StatusCanc'));
          Add(GetFieldFromName('NumSeq'));
        end;          
                    
        with AddIndex('ITipoDocNumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoDoc'));
          Add(GetFieldFromName('NumSeq'));
        end;  
          
        with AddIndex('ITipoDoctpAmbModeloSerieNumero', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
        begin
          Add(GetFieldFromName('TipoDoc'));
          Add(GetFieldFromName('tpAmb'));
          Add(GetFieldFromName('Modelo'));
          Add(GetFieldFromName('Serie'));
          Add(GetFieldFromName('Numero'));
        end;  
        with AddIndex('ITipoDoctpAmbStatus', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
        begin
          Add(GetFieldFromName('TipoDoc'));
          Add(GetFieldFromName('tpAmb'));
          Add(GetFieldFromName('Status'));
          Add(GetFieldFromName('TicksConsulta'));
        end;  
        with AddIndex('ITipoDocStatusNumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
        begin
          Add(GetFieldFromName('TipoDoc'));
          Add(GetFieldFromName('Status'));
          Add(GetFieldFromName('NumSeq'));
        end;          
        with AddIndex('ITipoDoctpAmbDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
        begin
          Add(GetFieldFromName('TipoDoc'));
          Add(GetFieldFromName('tpAmb'));
          Add(GetFieldFromName('DataHora'));
        end;  
        with AddIndex('ITipoDocDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
        begin
          Add(GetFieldFromName('TipoDoc'));
          Add(GetFieldFromName('DataHora'));
        end;  
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __Terminal(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('TermID', '', nxtGUID, 0, 0, False);
        AddField('Nome', '', nxtNullString, 50, 0, False);
        AddField('Opcoes', '', nxtBLOBMemo, 0, 0, False);
        AddField('RECVER', '', nxtWord32, 9, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));        
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('ITermID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('TermID'));
          
        with AddIndex('INome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('Nome'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// CCe
function __CCe(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        AddField('NumSeq', '', nxtAutoInc, 10, 0, False);
        AddField('Chave', '', nxtNullString, 44, 0, False);
        with AddField('DataHora', '', nxtDateTime, 0, 0, False) do
          AddDefaultValue(TnxCurrentDateTimeDefaultValueDescriptor);
        AddField('tran_uid', '', nxtGUID, 0, 0, False);
        AddField('tran_id', '', nxtWord32, 0, 0, False);
        AddField('nfe_serie', '', nxtNullString, 5, 0, False);
        AddField('nfe_numero', '', nxtWord32, 0, 0, False);
        AddField('tpAmbNFE', '', nxtByte, 3, 0, False);
        AddField('Protocolo', '', nxtNullString, 20, 0, False);
        AddField('Texto', '', nxtBLOBMemo, 0, 0, False);
        AddField('Status', '', nxtByte, 3, 0, False);
        AddField('StatusCCE', '', nxtInt32, 5, 0, False);
        AddField('XMLdest', '', nxtBLOBMemo, 0, 0, False);
        AddField('XMLret', '', nxtBLOBMemo, 0, 0, False);
        AddField('xMotivo', '', nxtBLOBMemo, 0, 0, False);
        AddField('LogEnvio', '', nxtBLOBMemo, 0, 0, False);
        AddField('LogRec', '', nxtBLOBMemo, 0, 0, False);
        AddField('Usuario', '', nxtNullString, 20, 20, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IChaveNumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Chave'));
          Add(GetFieldFromName('NumSeq'));
        end;
        with AddIndex('IChaveStatus', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Chave'));
          Add(GetFieldFromName('Status'));
        end;        
        with AddIndex('IStatusNumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Status'));
          Add(GetFieldFromName('NumSeq'));
        end;        
        with AddIndex('IDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('DataHora'));
        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));
          
        with AddIndex('INumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('NumSeq'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// NCM
function __NCM(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('NCM', '', nxtNullString, 8, 0, False);
        AddField('Ex', '', nxtNullString, 2, 0, False);
        AddField('Descricao', '', nxtNullString, 100, 0, False);
        AddField('ImpostoFed_Imp', '', nxtDouble, 0, 0, False);
        AddField('ImpostoFed_Nac', '', nxtDouble, 0, 0, False);
        AddField('ImpostoEst', '', nxtDouble, 0, 0, False);
        AddField('ImpostoMun', '', nxtDouble, 0, 0, False);
        AddField('RECVER', '', nxtWord32, 9, 0, False);        
      end;
      
      with EnsureIndicesDescriptor do 
        with AddIndex('IID', 0, idNull), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

      with IndicesDescriptor.AddIndex('ISuperBusca', 0, True, '', TnxMainIndexTokenKeyDescriptor) do 
        with (KeyDescriptor as TnxMainIndexTokenKeyDescriptor) do
          MaxTokenSize := 50;  // set max key length here
          
      with EnsureFulltextDescriptor(Result) do 
      with AddFullTextIndex('full_superbusca') do begin
        // N.B. you can add extractors for as many fields as you like here:
        AddFieldTokenExtractor(FieldsDescriptor.GetFieldFromName('Descricao'), '', TnxKwicTokenExtractorDescriptor);
        with TnxMainIndexTokenIndexDescriptor(AddTokenIndex('ISuperBusca', TnxMainIndexTokenIndexDescriptor)) do begin
          MainIndexNumber := 2;
          IgnoreCase := True;
{          with AddLocaleDescriptor do begin
            Locale := $00000416;
            Flags := $00001000;
            UseStringSort := True;
          end;                    }
        end;
      end;
            
      with EnsureIndicesDescriptor do begin
        with AddIndex('IDescricao', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Descricao'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; 
              Flags := $00001000;
              UseStringSort := True;
            end;                   
          end;
        with AddIndex('INCM', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('NCM'));
          Add(GetFieldFromName('Ex'));
        end;  
        with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('RecVer'));          
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __Card(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('card_id', '', nxtAutoInc, 10, 0, False);
        AddField('card_id_ref', '', nxtWord32, 0, 0, False);
        AddField('method', '', nxtByte, 0, 0, False);

        with AddField('card_array', '', nxtByte, 0, 0, False) do  // 0 - criar json, 1- enviar, 2-enviado
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := card_array_cards;
        
        with AddField('status', '', nxtByte, 0, 0, False) do  // 0 - criar json, 1- enviar, 2-enviado
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := card_status_criar_json;
                    
        AddField('created_on', '', nxtDateTime, 0, 0, False);
        
        AddField('type', '', nxtByte, 0, 0, False);
        AddField('id_ref', '', nxtWord32, 0, 0, False);
        AddField('json', '', nxtBlobWideMemo, 0, 0, False);
        AddField('json_dif', '', nxtBlobWideMemo, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('I_card_id', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('card_id'));
        with AddIndex('I_status_method_card_id', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('status'));
          Add(GetFieldFromName('method'));
          Add(GetFieldFromName('card_id'));
        end; 
        with AddIndex('I_card_array_status_method_card_id', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('card_array'));
          Add(GetFieldFromName('status'));
          Add(GetFieldFromName('method'));
          Add(GetFieldFromName('card_id'));
        end;         
        with AddIndex('I_type_id_ref_status', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('type'));
          Add(GetFieldFromName('id_ref'));
          Add(GetFieldFromName('status'));
        end;  
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __bk_process(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('id', '', nxtAutoInc, 10, 0, False);
        AddField('method', '', nxtByte, 0, 0, False);
        AddField('table', '', nxtByte, 0, 0, False);
        AddField('status', '', nxtByte, 0, 0, False); // 0 - criar json, 1 - enviar, 2 - enviado
        AddField('updated_on', '', nxtDateTime, 0, 0, False);
        AddField('nex_id', '', nxtWord32, 0, 0, False);
        AddField('json', '', nxtBlobWideMemo, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('I_id', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('id'));
        with AddIndex('I_table_nex_id', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('table'));
          Add(GetFieldFromName('nex_id'));
        end; 
        with AddIndex('I_status_table_method_updated_on', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('status'));
          Add(GetFieldFromName('table'));
          Add(GetFieldFromName('method'));
          Add(GetFieldFromName('updated_on'));
        end;    
        with AddIndex('I_status_method_updated_on', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('status'));
          Add(GetFieldFromName('method'));
          Add(GetFieldFromName('updated_on'));
        end;                
        with AddIndex('I_status_update_on', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('status'));
          Add(GetFieldFromName('updated_on'));
        end;    
        with AddIndex('I_status_table_update_on', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('status'));
          Add(GetFieldFromName('table'));
          Add(GetFieldFromName('updated_on'));
        end; 
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __bk_upload(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('ContentType', '', nxtWideString, 100, 0, False);
        AddField('Dados', '', nxtBLOB, 0, 0, False);
        AddField('Table', '', nxtByte, 0, 0, False);
        AddField('Qtd', '', nxtWord16, 0, 0, False);
        AddField('Method', '', nxtByte, 0, 0, False);
        AddField('Resp', '', nxtBlobWideMemo, 0, 0, False);
        AddField('DH', '', nxtDateTime, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin 
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('ID'));
        with AddIndex('IMethodID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Method'));
          Add(GetFieldFromName('ID'));
        end;  
      end;    
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __bk_control(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('shopcode', '', nxtWord32, 0, 0, False);
        AddField('remote_dbinfo', '', nxtBlobMemo, 0, 0, False);
        AddField('DH', '', nxtDateTime, 0, 0, False);
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __Doc(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      AddLocaleDescriptor;      
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);

        with AddField('UID', '', nxtGUID, 0, 0, False) do
          with AddDefaultValue(TnxAutoGuidDefaultValueDescriptor) as TnxAutoGuidDefaultValueDescriptor do
            ApplyAt := [aaClient];
            
        AddField('Tipo', '0-Recibo venda, 1-orçamento, 2-etiqueta, 3-pg.débito', nxtByte, 1, 0, False);
        AddField('Bobina', '', nxtBoolean, 0, 0, False);
        AddField('Pais', '', nxtNullString, 2, 0, False);
        AddField('Lingua', '', nxtNulLString, 5, 0, False);
        AddField('Free', '', nxtBoolean, 0, 0, False);
        AddField('TextOnly', '', nxtBoolean, 0, 0, False);
        AddField('Tamanho', '', nxtNullString, 20, 0, False);
        AddField('Nome', '', nxtWideString, 100, 0, False);
        AddField('Obs', '', nxtBLOBWideMemo, 0, 0, False);
        AddField('Params', '', nxtBLOBMemo, 0, 0, False);                   
        AddField('Doc', '', nxtBLOB, 0, 0, False);
        AddField('Img', '', nxtBLOBGraphic, 0, 0, False);
        AddField('Custom', '', nxtBoolean, 0, 0, False);
        with AddField('MinVer', '', nxtWord16, 9, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;

        with AddField('MaxVer', '', nxtWord16, 9, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 9999;
        
        AddField('SRECVER', '', nxtWord32, 9, 0, False);
        AddField('RECVER', '', nxtWord32, 9, 0, False);
      end;

      with EnsureIndicesDescriptor do 
        with AddIndex('IID', 0, idNull), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('ID'));
      
      with IndicesDescriptor.AddIndex('ISuperBuscaDoc', 0, True, '', TnxMainIndexTokenKeyDescriptor) do 
        with (KeyDescriptor as TnxMainIndexTokenKeyDescriptor) do 
          MaxTokenSize := 50;  // set max key length here
          
      with EnsureFulltextDescriptor(Result) do 
      with AddFullTextIndex('full_superbuscadoc') do begin
          // N.B. you can add extractors for as many fields as you like here:
        AddFieldTokenExtractor(FieldsDescriptor.GetFieldFromName('Nome'), '', TnxKwicTokenExtractorDescriptor);
        
{        if slIni.Values['docmgr']<>'1' then
          AddFieldTokenExtractor(FieldsDescriptor.GetFieldFromName('Obs'), '', TnxKwicTokenExtractorDescriptor);}
          
        with TnxMainIndexTokenIndexDescriptor(AddTokenIndex('ISuperBuscaDoc', TnxMainIndexTokenIndexDescriptor)) do begin
          MainIndexNumber := 2;
          IgnoreCase := True;
        end;
      end;

      with EnsureIndicesDescriptor do 
        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));

      with EnsureIndicesDescriptor do begin
        with AddIndex('ITipoBobinaNome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('Bobina'));
          Add(GetFieldFromName('Nome'));
        end;

        with AddIndex('ILinguaTipoBobinaNome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Lingua'));
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('Bobina'));
          Add(GetFieldFromName('Nome'));
        end;

        with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('RecVer'));
          
        with AddIndex('ISRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('SRecVer'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __br_cest(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      AddLocaleDescriptor;      
      with FieldsDescriptor do begin
        AddField('cest', '', nxtWord32, 10, 0, False);
        AddField('ncm', '', nxtWord32, 10, 0, False);
        AddField('descr', '', nxtBLOBMemo, 0, 0, False);
        AddField('apagar', '', nxtBoolean, 0, 0, False);
        AddField('srecver', '', nxtWord32, 9, 0, False);
        AddField('recver', '', nxtWord32, 9, 0, False);
      end;

      with EnsureIndicesDescriptor do begin
        with AddIndex('I_ncm_cest', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('ncm'));
          Add(GetFieldFromName('cest'));
        end;

        with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('RecVer'));
          
        with AddIndex('ISRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('SRecVer'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;


function __syslog(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        
        with AddField('DataHora', '', nxtDateTime, 0, 0, False) do
          with AddDefaultValue(TnxCurrentDateTimeDefaultValueDescriptor) as TnxCurrentDateTimeDefaultValueDescriptor do
            ApplyAt := [aaServer];
        AddField('Info', '', nxtNullString, 30, 0, False);
        AddField('ver', '', nxtWord16, 0, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idNull), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
          
        with AddIndex('IInfo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Info'));
      end;
          
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// IOrcamento
function __IOrcamento(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
      
        AddField('Orcamento_UID', '', nxtGUID, 0, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        AddField('Item', '', nxtWord16, 5, 0, False);
        AddField('Produto', '', nxtWord32, 5, 0, False);
        AddField('Descr', '', nxtBLOBMemo, 0, 0, False);
        AddField('Unitario', '', nxtCurrency, 16, 0, False);
        AddField('Quant', '', nxtDouble, 0, 0, False);
        AddField('Total', '', nxtCurrency, 16, 0, False);
        AddField('Desconto', '', nxtCurrency, 16, 0, False);
        AddField('TotalFinal', '', nxtCurrency, 16, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IOrcamento_UID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Orcamento_UID'));
          Add(GetFieldFromName('Item'));
        end;

        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Orcamento
function __Orcamento(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          with AddDefaultValue(TnxAutoGuidDefaultValueDescriptor) as TnxAutoGuidDefaultValueDescriptor do
            ApplyOnInsert := False;
        AddField('IDSeq', '', nxtAutoInc, 10, 0, False);
        AddField('RecVer', '', nxtWord32, 10, 0, False);
        with AddField('CriadoEm', '', nxtDateTime, 0, 0, False) do
          with AddDefaultValue(TnxCurrentDateTimeDefaultValueDescriptor) as TnxCurrentDateTimeDefaultValueDescriptor do begin
            ApplyOnModify := True;
            ApplyAt := [aaServer];
          end;

        with AddField('Status', '0-Pendente, 1-Aprovado, 2-Recusado, 3-Vendido, 4-Expirado', nxtByte, 0, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
         
        AddField('AtualizadoEm', '', nxtDateTime, 0, 0, False);
        AddField('AprovadoEm', '', nxtDateTime, 0, 0, False);
        AddField('RecusadoEm', '', nxtDateTime, 0, 0, False);
        AddField('VendidoEm', '', nxtDateTime, 0, 0, False);
        AddField('ExpiradoEm', '', nxtDateTime, 0, 0, False);
        AddField('StatusAlteradoEm', '', nxtDateTime, 0, 0, False);

        AddField('Func', '', nxtNullString, 20, 0, False);
        AddField('IDVenda', '', nxtWord32, 10, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Total', '', nxtCurrency, 10, 0, False);
        AddField('Desconto', '', nxtCurrency, 10, 0, False);
        AddField('TotalFinal', '', nxtCurrency, 16, 0, False);
        AddField('Vendido', '', nxtBoolean, 0, 0, False);
        AddField('ValData', '', nxtDateTime, 0, 0, False);
        AddField('ValModo', '', nxtByte, 0, 0, False);
        AddField('ValTempo', '', nxtWord16, 0, 0, False);
        AddField('ValUTempo', '', nxtByte, 0, 0, False);
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IUID', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));
        with AddIndex('IIDSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('IDSeq'));
        with AddIndex('ICriadoEm', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('CriadoEm'));
        with AddIndex('IAtualizadoEm', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('AtualizadoEm'));
        with AddIndex('IClienteCriadoEm', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('CriadoEm'));
        end;
        with AddIndex('IStatusEm', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Status'));
          Add(GetFieldFromName('StatusAlteradoEm'));
        end;
        with AddIndex('IStatusValData', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Status'));
          Add(GetFieldFromName('ValData'));
        end;        
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;  

// Caixa
function __Caixa(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        
        AddField('IDLivre', '', nxtNulLString, 10, 0, False);
        AddField('Aberto', '', nxtBoolean, 0, 0, False);
        AddField('Usuario', '', nxtNullString, 20, 0, False);
        AddField('Abertura', '', nxtDateTime, 0, 0, False);
        AddField('Fechamento', '', nxtDateTime, 0, 0, False);
        AddField('Reproc', '', nxtDateTime, 0, 0, False);
        AddField('TotalFinal', '', nxtCurrency, 16, 0, False);
        AddField('Descontos', '', nxtCurrency, 16, 0, False);
        AddField('Cancelamentos', '', nxtCurrency, 16, 0, False);
        AddField('Sangria', '', nxtCurrency, 16, 0, False);
        AddField('Supr', '', nxtCurrency, 16, 0, False);
        AddField('SaldoAnt', '', nxtCurrency, 16, 0, False);
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        AddField('EstSessoesQtd', '', nxtInt32, 10, 0, False);
        AddField('EstSessoesTempo', '', nxtDouble, 0, 0, False);
        AddField('EstUrls', '', nxtInt32, 10, 0, False);
        AddField('EstSyncOk', '', nxtBoolean, 0, 0, False);
        AddField('EstBuscasEng', '', nxtBLOBMemo, 0, 0, False);
        AddField('EstRes', '', nxtBLOBMemo, 0, 0, False);
        AddField('SaldoF', '', nxtCurrency, 16, 0, False);
        AddField('Quebra', '', nxtCurrency, 16, 0, False);

        
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
          
        with AddIndex('IUsuario', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          with Add(GetFieldFromName('Usuario'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00030002;
              IgnoreKanaType := True;
              IgnoreNonSpace := True;
              Ignorewidth := True;
            end;
          end;
          Add(GetFieldFromName('Abertura'));
        end;
        with AddIndex('IAbertura', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Abertura'));
        with AddIndex('IAberto', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Aberto'));
          Add(GetFieldFromName('Abertura'));
        end;
        with AddIndex('IAbertoEstSyncOk', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Aberto'));
          Add(GetFieldFromName('EstSyncOk'));
        end;
        with AddIndex('IIDLivre', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('IDLivre'));

      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Categoria
function __Categoria(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('Descricao', '', nxtWideString, 35, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
          
      with EnsureIndicesDescriptor do begin
        with AddIndex('uq_Categoria', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Descricao'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
            DefaultIndex := GetIndexFromName('uq_Categoria');
          end;
      end;    
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Unidade
function __Unidade(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
      
        AddField('Descricao', '', nxtWideString, 5, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('uq_Unidade', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Descricao'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
            DefaultIndex := GetIndexFromName('uq_Unidade');
          end;

        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
      end;          
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __Marca(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
      
        AddField('Nome', '', nxtWideString, 40, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID')); 

        with AddIndex('INome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Nome'));   
      end;          
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Cliente
function __Cliente(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      AddLocaleDescriptor;
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Codigo', '', nxtNullString, 15, 0, False);
        AddField('CodigoKey', '', nxtNullString, 15, 0, False);
        AddField('Nome', '', nxtWideString, 50, 0, False);
        AddField('Endereco', '', nxtWideString, 60, 0, False);
        AddField('Endereco2', '', nxtWideString, 60, 0, False);
        AddField('End_Numero', '', nxtWideString, 20, 0, False);
        AddField('End_CodMun', '', nxtWideString, 7, 0, False);
        AddField('End_Dest', '', nxtWideString, 40, 0, False);
        AddField('End_Obs', '', nxtWideString, 40, 0, False);
        AddField('endereco_id', '', nxtGuid, 0, 0, False);
        AddField('Pais', '', nxtWideString, 2, 0, False);
        AddField('Bairro', '', nxtWideString, 30, 0, False);
        AddField('Cidade', '', nxtWideString, 40, 0, False);
        AddField('UF', '', nxtWideString, 30, 0, False);
        AddField('CEP', '', nxtWideString, 10, 0, False);
        AddField('NaoContribICMS', '', nxtBoolean, 0, 0, False);
        AddField('IsentoIE', '', nxtBoolean, 0, 0, False);
        AddField('NFE_CredIcms', '', nxtBoolean, 0, 0, False);
        AddField('Sexo', 'M=Masculo, F=Feminino', nxtChar, 1, 0, False);
        AddField('Obs', '', nxtBLOBWideMemo, 0, 0, False);
        AddField('Cpf', '', nxtWideString, 20, 0, False);
        AddField('CPF_sodig', '', nxtWideString, 20, 0, False);
        AddField('Rg', '', nxtWideString, 20, 0, False);
        AddField('Telefone', '', nxtWideString, 15, 0, False);
        AddField('Email', '', nxtBLOBWideMemo, 0, 0, False);
        AddField('Passaportes', '', nxtDouble, 10, 0, False);
        AddField('Pai', '', nxtWideString, 40, 0, False);
        AddField('Mae', '', nxtWideString, 40, 0, False);
        AddField('UltVisita', '', nxtDateTime, 0, 0, False);
        AddField('Debito', '', nxtCurrency, 16, 0, False);
        AddField('DataNasc', '', nxtDateTime, 0, 0, False);
        AddField('Celular', '', nxtWideString, 15, 0, False);
        AddField('TemDebito', '', nxtBoolean, 0, 0, False);
        AddField('LimiteDebito', '', nxtCurrency, 16, 0, False);
        AddField('Foto', '', nxtBLOBGraphic, 0, 0, False);
        AddField('IncluidoEm', '', nxtDateTime, 0, 0, False);
        AddField('AlteradoEm', '', nxtDateTime, 0, 0, False);
        AddField('IncluidoPor', '', nxtNullString, 20, 0, False);
        AddField('AlteradoPor', '', nxtNullString, 20, 0, False);
        AddField('FidPontos', '', nxtDouble, 10, 0, False);
        AddField('FidTotal', '', nxtDouble, 10, 0, False);
        AddField('FidResg', '', nxtDouble, 10, 0, False);
        AddField('Aniversario', '', nxtNullString, 4, 0, False);
        AddField('SemFidelidade', '', nxtBoolean, 0, 0, False);
        AddField('TemCredito', '', nxtBoolean, 0, 0, False);
        AddField('InfoExtra', '', nxtWideString, 50, 0, False);
        AddField('TranspEntPadrao', '', nxtWord32, 0, 0, False);

        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);        
        
        with AddField('TranspEnt', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False; 
        
        with AddField('TipoFor', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0; 

        with AddField('PJuridica', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False; 

        AddField('Consumidor', '', nxtBoolean, 0, 0, False);
        
        with AddField('Inativo', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('Fornecedor', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
            
        AddField('ValorCred', '', nxtCurrency, 16, 0, False);

        AddField('RecVer', '', nxtWord32, 0, 0, False);
      end;
      
      with EnsureIndicesDescriptor do 
        with AddIndex('IID', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('ID'));

      with IndicesDescriptor.AddIndex('ISuperBusca', 0, True, '', TnxMainIndexTokenKeyDescriptor) do 
        with (KeyDescriptor as TnxMainIndexTokenKeyDescriptor) do 
          MaxTokenSize := 50;  // set max key length here
          
      with EnsureFulltextDescriptor(Result) do 
      with AddFullTextIndex('full_superbusca') do begin
        // N.B. you can add extractors for as many fields as you like here:
        AddFieldTokenExtractor(FieldsDescriptor.GetFieldFromName('Nome'), '', TnxKwicTokenExtractorDescriptor);
        with TnxMainIndexTokenIndexDescriptor(AddTokenIndex('ISuperBusca', TnxMainIndexTokenIndexDescriptor)) do begin
          MainIndexNumber := 2;
          IgnoreCase := True;
        end;
      end;

      with EnsureIndicesDescriptor do 
        with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('RecVer'));
      

      with EnsureIndicesDescriptor do begin

        with AddIndex('ICodigoKey', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('CodigoKey'));
        with AddIndex('IFornecedorUltVisita', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Fornecedor'));        
          Add(GetFieldFromName('UltVisita'));
        end;  
        with AddIndex('IFornecedorAniversario', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Fornecedor'));        
          Add(GetFieldFromName('Aniversario'));
        end;
        with AddIndex('INome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Nome'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
          
        with AddIndex('IFornecedorNome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Fornecedor'));        
          with Add(GetFieldFromName('Nome'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
        end;

        with AddIndex('ITranspEntNome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TranspEnt'));
          with Add(GetFieldFromName('Nome'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
        end;        
          
        with AddIndex('IFornecedorID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Fornecedor'));        
          Add(GetFieldFromName('ID'));
        end;

        with AddIndex('IFornecedorCodigoKey', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Fornecedor'));        
          Add(GetFieldFromName('CodigoKey'));
        end;
          
        with AddIndex('IRg', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Rg'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));           

        with AddIndex('ICPF', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('CPF'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;

        with AddIndex('ICPF_sodig', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('CPF_sodig'));           
          

        with AddIndex('IFornecedorCPF', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Fornecedor'));        
          with Add(GetFieldFromName('CPF'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
        end;

        with AddIndex('IFornecedorRg', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Fornecedor'));        
          with Add(GetFieldFromName('Rg'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;        
        end;
                    
        with AddIndex('IDebito', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TemDebito'));
          with Add(GetFieldFromName('Nome'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00030002;
              IgnoreKanaType := True;
              IgnoreNonSpace := True;
              Ignorewidth := True;
            end;
          end;
        end;
        with AddIndex('ICredito', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TemCredito'));
          with Add(GetFieldFromName('Nome'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00030002;
              IgnoreKanaType := True;
              IgnoreNonSpace := True;
              Ignorewidth := True;
            end;
          end;
        end;
        with AddIndex('IFidPontos', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('FidPontos'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Config
function __Config(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('NumSeq', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        
        with AddField('MeioPagto', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;            
        with AddField('AutoCad', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('QuickCad', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('CodProdutoDuplicados', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('CampoLocalizaCli', '0=nome, 1=username, 2=código', nxtByte, 3, 0, False);
        AddField('ManterSaldoCaixa', '', nxtBoolean, 0, 0, False);
        AddField('RecPorta', '', nxtNullString, 100, 0, False);
        AddField('RecSalto', '', nxtWord16, 5, 0, False);
        AddField('RecLargura', '', nxtWord16, 5, 0, False);
        AddField('RecRodape', '', nxtBLOBMemo, 0, 0, False);
        AddField('RecImprimir', '', nxtByte, 3, 0, False);
        AddField('RecMatricial', '', nxtBoolean, 0, 0, False);
        AddField('RecTipoImpressora', '', nxtNullString, 32, 0, False);
        AddField('RecNomeLoja', '', nxtNullString, 40, 0, False);
        AddField('RecCortaFolha', '', nxtBoolean, 0, 0, False);
        
        with AddField('TamCodigoAuto', '', nxtByte, 0, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 6;        
        
        with AddField('fmt_moeda', '', nxtBoolean, 0, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;        
        
        with AddField('fmt_decimais', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2;
            
        AddField('fmt_simbmoeda', '', nxtNullString, 5, 0, False);
        AddField('fmt_sep_decimal', '', nxtNullString, 1, 0, False);
        AddField('fmt_sep_milhar', '', nxtNullString, 1, 0, False);

        AddField('Pais', '', nxtNullString, 2, 0, False);
        AddField('tax_id_def', '', nxtWord32, 0, 0, False);
        
        with AddField('RecImprimeMeioPagto', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        AddField('RecPrefixoMeioPagto', '', nxtNullString, 30, 0, False);
        AddField('EscondeTextoBotoes', '', nxtBoolean, 0, 0, False);
        AddField('PastaDownload', '', nxtNullString, 1024, 0, False);

        AddField('Endereco_Loja', '', nxtGUID, 0, 0, False);

        AddField('EmailDestino', '', nxtBLOBMemo, 0, 0, False);
        AddField('EmailIdent', '', nxtNullString, 20, 0, False);

        with AddField('EmailConteudo', '', nxtNullString, 20, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := '11111111111111111111';

        AddField('Flags', '', nxtBLOBMemo, 0, 0, False);

        with AddField('EmailEnviarCaixa', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('AlertaAssinatura', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('RelCaixaAuto', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
            
        with AddField('NaoVenderAlemEstoque', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('AutoSortGridCaixa', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
            
        with AddField('AutoObsAoCancelar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        AddField('LimitePadraoDebito', '', nxtCurrency, 16, 0, False);
            
        with AddField('FidAtivo', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('FidVendaValor', '', nxtCurrency, 16, 0, False);
        AddField('FidVendaPontos', '', nxtInt32, 10, 0, False);
        with AddField('FidParcial', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

            
        with AddField('FidAutoPremiar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        AddField('FidAutoPremiarValor', '', nxtCurrency, 16, 0, False);
        AddField('FidAutoPremiarPontos', '', nxtInt32, 10, 0, False);
            
        with AddField('FidMostrarSaldoAdmin', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('FidMsg', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        AddField('FidMsgTitulo', '', nxtNullString, 50, 0, False);
        AddField('FidMsgTexto', '', nxtBlobMemo, 0, 0, False);
            
        with AddField('ExigeDadosMinimos', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        
        AddField('DadosMinimos', '', nxtNullString, 300, 0, False);

        AddField('CidadePadrao', '', nxtNullString, 50, 0, False);
        AddField('UFPadrao', '', nxtNullString, 2, 0, False);

        with AddField('PedirSaldoI', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('PedirSaldoF', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('DTol', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 5;

        AddField('DVA', '', nxtDateTime, 0, 0, False);

        AddField('ProxAvisoAss', '', nxtDateTime, 0, 0, False);
        
        with AddField('PreLib', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
            
        AddField('CamposCliCC', '', nxtBLOBMemo, 0, 0, False);

        with AddField('CliCongelado', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;  

        AddField('Banners', '', nxtBlobMemo, 0, 0, False);
        AddField('Botoes', '', nxtBlobMemo, 0, 0, False);

        AddField('Recursos', '', nxtNullString, 30, 0, False);
        AddField('PrecoAuto', '', nxtBoolean, 0, 0, False);
        AddField('Margem', '', nxtDouble, 0, 0, False);

        AddField('ComissaoPerc', '', nxtDouble, 0, 0, False);

        AddField('ValOrc_Tempo', '', nxtWord16, 0, 0, False);
        AddField('ValOrc_UTempo', '', nxtByte, 0, 0, False);

        with AddField('EmailOrc_Enviar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        
        AddField('EmailOrc_FromName', '', nxtNullString, 100, 0, False);
        AddField('EmailOrc_FromEmail', '', nxtNullString, 100, 0, False);
        
        with AddField('EmailOrc_Subject', '', nxtNullString, 100, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 'Orçamento #[numero]';
            
        AddField('EmailOrc_Body', '', nxtBlobMemo, 0, 0, False);
        
        with AddField('DocOrc_Imprimir', '', nxtBoolean, 0, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        
        AddField('DocOrc_NomeLoja', '', nxtNullString, 50, 0, False);

        AddField('ObsPadraoOrcamento', '', nxtBLOBMemo, 0, 0, False);
        
        with AddField('ComissaoLucro', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('CodBarBal', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('CodBarBalTam', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 13;

        with AddField('CodBarBalIdent', '', nxtNullString, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := '2';

        with AddField('CodBarBalInicioCod', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2;
            
        with AddField('CodBarBalTamCod', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 5;

        with AddField('CodBarBalValor', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('CodBarBalPPInicio', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 7;

        with AddField('CodBarBalPPTam', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 6;

        with AddField('CodBarBalPPDig', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2;

        with AddField('CodBarMaxQtdDig', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 3;

        with AddField('CodBarArredondar', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 4;            
            
        with AddField('ComandaOff', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('MesasOff', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('ConsumoAvulsoOff', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('ConfirmarDebito', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;       

        with AddField('TelaPosVenda_Mostrar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('ExigirVendedor', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;           

        with AddField('TelaPosVenda_BtnDef', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 1;

        AddField('RecVer', '', nxtWord32, 0, 0, False);

        with AddField('TrocoMax', '', nxtCurrency, 16, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 1000;
        
        AddField('DocParam_Email', '', nxtNullString, 100, 0, False);
        AddField('DocParam_Tel', '', nxtNullString, 15, 0, False);
        AddField('DocParam_Tel2', '', nxtNullString, 15, 0, False);
        AddField('DocParam_Cidade', '', nxtNullString, 50, 0, False);
        AddField('DocParam_End', '', nxtNullString, 100, 0, False);
        AddField('DocParam_CEP', '', nxtNullString, 9, 0, False);
        AddField('DocParam_CNPJ', '', nxtNullString, 19, 0, False); 
        AddField('DocParam_IE', '', nxtNullString, 19, 0, False);  
        AddField('DocParam_Site', '', nxtNullString, 50, 0, False);
        AddField('DocParam_Facebook', '', nxtNullString, 100, 0, False);
        AddField('DocParam_Instagram', '', nxtNullString, 50, 0, False);
        AddField('DocParam_Whats', '', nxtNullString, 15, 0, False);
        AddField('DocParam_Whats2', '', nxtNullString, 15, 0, False);
        AddField('DocParam_InfoExtra', '', nxtNullString, 100, 0, False);
        AddField('DocParam_Logo', '', nxtBLOBGraphic, 0, 0, False);
        AddField('DocParam_Logo2', '', nxtBLOBGraphic, 0, 0, False);
        
        with AddField('RecAddObsItem', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
         
        AddField('Urls', '', nxtBLOBMemo, 0, 0, False);

        AddField('TranspEntPadrao', '', nxtWord32, 0, 0, False);
        AddField('FretePadrao', '', nxtCurrency, 0, 0, False);
        AddField('DesativarFrete', '', nxtBoolean, 0, 0, False);
        
        with AddField('modFretePadrao', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 9;
                    
        AddField('DesativarTranspEnt', '', nxtBoolean, 0, 0, False);
            
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('INumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('NumSeq'));
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Debito
function __Debito(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('NumSeq', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
      
        AddField('Data', '', nxtDateTime, 0, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Valor', '', nxtCurrency, 16, 0, False);
        with AddField('Tipo', '0=Sessao, 1=Credito Tempo, 2=Produto', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        AddField('ID', '', nxtWord32, 10, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('ICliData', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('Data'));
        end;
        with AddIndex('ITipoID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('ID'));
          Add(GetFieldFromName('Cliente'));
        end;

        with AddIndex('INumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('NumSeq'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __PostMS(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('MS', '', nxtBLOB, 0, 0, False);
        AddField('URL', '', nxtNullString, 255, 0, False);
        AddField('Inclusao', '', nxtDateTime, 0, 0, False);
        AddField('Envio', '', nxtDateTime, 0, 0, False);
        AddField('Tries', '', nxtWord16, 5, 0, False);
        AddField('Max', '', nxtWord16, 0, 0, False);
        AddField('NextTry', '', nxtWord32, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('INextTryID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('NextTry'));
          Add(GetFieldFromName('ID'));
        end;  
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __post_nexapp(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('ContentType', '', nxtWideString, 100, 0, False);
        
        with AddField('card_array', '', nxtByte, 0, 0, False) do  // 0 - criar json, 1- enviar, 2-enviado
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := card_array_cards;
            
        AddField('Dados', '', nxtBLOB, 0, 0, False);
        AddField('Qtd', '', nxtWord16, 0, 0, False);
        AddField('Method', '', nxtByte, 0, 0, False);
        AddField('Resp', '', nxtBlobWideMemo, 0, 0, False);
        AddField('DH', '', nxtDateTime, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin 
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('ID'));
        with AddIndex('IMethodID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Method'));
          Add(GetFieldFromName('ID'));
        end;  
      end;    
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// ITran
function __ITran(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        
        AddField('Tran', '', nxtWord32, 10, 0, False);
        AddField('Caixa', '', nxtWord32, 10, 0, False);
        AddField('CaixaPag', '', nxtWord32, 10, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Sessao', '', nxtWord32, 10, 0, False);
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('IncluidoEm', '', nxtDateTime, 0, 0, False);
        AddField('TipoTran', '', nxtByte, 3, 0, False);
        AddField('TipoItem', 'Sessao, Credito, MovEst, Transação', nxtByte, 3, 0, False);
        AddField('SubTipo', '', nxtByte, 3, 0, False);
        AddField('ItemID', '', nxtWord32, 10, 0, False);
        AddField('SubItemID', '', nxtWord32, 10, 0, False);
        AddField('ItemPos', '', nxtByte, 0, 0, False);
        AddField('Total', '', nxtCurrency, 16, 0, False);
        AddField('Desconto', '', nxtCurrency, 16, 0, False);
        AddField('TotLiq', '', nxtCurrency, 16, 0, False);
        AddField('Debito', '', nxtCurrency, 16, 0, False);
        AddField('Pago', '', nxtCurrency, 16, 0, False);
        AddField('Cancelado', '', nxtBoolean, 0, 0, False);
        AddField('PagPend', '', nxtBoolean, 0, 0, False);
        AddField('FidFator', '', nxtInt8, 3, 0, False);
        AddField('FidPontos', '', nxtDouble, 0, 0, False);
        AddField('FidMov', '', nxtBoolean, 0, 0, False);
        with AddField('FidOpe', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
          
        with AddIndex('ITipoItemDH', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoItem'));
          Add(GetFieldFromName('ItemID'));
          Add(GetFieldFromName('DataHora'));
        end;
        with AddIndex('ITranID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tran'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('IClienteID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICaixaCancelado', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('TipoItem'));
        end;
        with AddIndex('ICaixaPagCancelado', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('CaixaPag'));
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('TipoItem'));
        end;        
        with AddIndex('ITipoItemTran', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoItem'));
          Add(GetFieldFromName('ItemID'));
          Add(GetFieldFromName('Tran'));
        end;
        with AddIndex('ICanceladoTipoTranItemID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('ItemID'));
        end;        
        with AddIndex('IFidMovClienteDH', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('FidMov'));
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('DataHora'));
        end;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Layout
function __Layout(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Usuario', '', nxtNullString, 20, 0, False);
        AddField('Grid', '', nxtNullString, 40, 0, False);
        AddField('Nome', '', nxtNullString, 100, 0, False);
        AddField('Publico', '', nxtBoolean, 0, 0, False);
        AddField('Layout', '', nxtBLOB, 0, 0, False);
        AddField('Filtro', '', nxtBLOB, 0, 0, False);
        AddField('Usuarios', '', nxtBLOBMemo, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('IPubGridUsuario', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Publico'));
          with Add(GetFieldFromName('Grid'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
          with Add(GetFieldFromName('Usuario'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
          with Add(GetFieldFromName('Nome'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
        end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// MovEst
function __MovEst(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        
        AddField('ID_ref', '', nxtWord32, 0, 0, False);
        AddField('Tran', '', nxtWord32, 10, 0, False);
        AddField('Item', '', nxtByte, 0, 0, False);
        AddField('tax_id', '', nxtWord32, 10, 0, False);
        AddField('tax_incluido', '', nxtCurrency, 0, 0, False);
        AddField('tax_incluir', '', nxtCurrency, 0, 0, False);
        AddField('Produto', '', nxtWord32, 10, 0, False);
        AddField('Quant', '', nxtDouble, 0, 0, False);
        AddField('Unitario', '', nxtCurrency, 16, 0, False);
        AddField('Total', '', nxtCurrency, 16, 0, False);
        AddField('TotLiq', '', nxtCurrency, 16, 0, False);
        AddField('CustoU', '', nxtCurrency, 16, 0, False);
        AddField('CustoT', '', nxtCurrency, 16, 0, False);
        AddField('Lucro',  '', nxtCurrency, 16, 0, False);
        AddField('Desconto', '', nxtCurrency, 16, 0, False);
        AddField('Descr', '', nxtWideString, 100, 0, False);
        AddField('Obs', '', nxtBlobWideMemo, 0, 0, False);
        AddField('TotalFinal', '', nxtCurrency, 16, 0, False);
        AddField('Pago', '', nxtCurrency, 16, 0, False);
        AddField('PagoPost', '', nxtCurrency, 16, 0, False);
        AddField('DescPost', '', nxtCurrency, 16, 0, False);
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('Pend', '', nxtBoolean, 0, 0, False);
        AddField('IncluidoEm', '', nxtDateTime, 0, 0, False);
        AddField('Entrada', '', nxtBoolean, 0, 0, False);
        AddField('Cancelado', '', nxtBoolean, 0, 0, False);
        AddField('AjustaCusto', '', nxtBoolean, 0, 0, False);
        AddField('EstoqueAnt', '', nxtDouble, 0, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Caixa', '', nxtInt32, 10, 0, False);
        AddField('Categoria', '', nxtNullString, 20, 0, False);
        AddField('NaoControlaEstoque', '', nxtBoolean, 0, 0, False);
        AddField('ITran', '', nxtInt32, 10, 0, False);
        AddField('TipoTran', '', nxtByte, 3, 0, False);
        AddField('Sessao', '', nxtInt32, 10, 0, False);
        AddField('DebDev', '', nxtCurrency, 0, 0, False);
        AddField('Comissao', '', nxtCurrency, 0, 0, False);
        AddField('ComissaoPerc', '', nxtDouble, 0, 0, False);
        AddField('ComissaoLucro', '', nxtBoolean, 0, 0, False);
        AddField('VenDev', '', nxtBoolean, 0, 0, False);
        AddField('DadosFiscais', '', nxtBlobMemo, 0, 0, False);
        AddField('DataSped', '', nxtDate, 0, 0, False);
        AddField('vDF', '', nxtWord16, 9, 0, False);

        with AddField('PermSemEstoque', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('FidResgate', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('FidPontos', '', nxtDouble, 0, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));  

        with AddIndex('IID_ref', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('ID_ref'));          
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('Cancelado'));
        end;
        with AddIndex('IProduto', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Produto'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICanceladoDataSped', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('DataSped'));
        end;
        with AddIndex('IContato', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('DataHora'));
        end;
        with AddIndex('ICanceladoContatoTipoDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('DataHora'));
        end;
        with AddIndex('ICanceladoContatoProdutoTipoDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('Produto'));
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('DataHora'));
        end;

{---- MOSTRAR CANCELADOS -----}    
   {---- Mesmo Caixa ----}    
        with AddIndex('ICaixaVenDevDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('VenDev'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('Tran'));
        end;
        with AddIndex('ICaixaTipoTranDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('Tran'));
        end;   
   {---- Todos Caixas ----}    
        with AddIndex('IVenDevDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('VenDev'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('Tran'));
        end;
        with AddIndex('ITipoTranDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('Tran'));
        end;  
{---- NAO MOSTRAR CANCELADOS -----}    
   {---- Mesmo Caixa ----}    
        with AddIndex('ICanceladoCaixaVenDevDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('VenDev'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('Tran'));
        end;
        with AddIndex('ICanceladoCaixaTipoTranDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('Tran'));
        end;   
   {---- Todos Caixas ----}    
        with AddIndex('ICanceladoVenDevDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('VenDev'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('Tran'));
        end;
        with AddIndex('ICanceladoTipoTranDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('Tran'));
        end;  
{---------------------------------------------------}
        
        with AddIndex('ITipoTranCaixa', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('Tran'));
        end;

        with AddIndex('ITipoTranCliente', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('DataHora'));
        end;        
              
        with AddIndex('ICaixaMov', 0, idAll, 'M'), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ITranItem', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tran'));
          Add(GetFieldFromName('Item'));
        end;
        with AddIndex('IProdCxMov', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          with Add(GetFieldFromName('Produto'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00030002;
              IgnoreKanaType := True;
              IgnoreNonSpace := True;
              Ignorewidth := True;
            end;
          end;
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('ID'));
        end;
        
        with AddIndex('ISessaoID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Sessao'));
          Add(GetFieldFromName('ID'));
        end;
        
        with AddIndex('IProdAjustaCustoTran', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Produto'));
          Add(GetFieldFromName('AjustaCusto'));
          Add(GetFieldFromName('Tran'));
        end;   
        
        with AddIndex('IProdAjustaCustoData', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Produto'));
          Add(GetFieldFromName('AjustaCusto'));
          Add(GetFieldFromName('DataHora'));
        end;  
        
        with AddIndex('IProdPendCancelado', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Produto'));
          Add(GetFieldFromName('Pend'));
          Add(GetFieldFromName('Cancelado'));
        end; 
        
        with AddIndex('IDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('ID'));
        end;  
          
        with AddIndex('ICanceladoDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('ID'));
        end;                            
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Produto
function __Produto(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      AddLocaleDescriptor;      
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        
        AddField('Marca', '', nxtGUID, 0, 0, False);
        AddField('Codigo', '', nxtWideString, 30, 0, False);
        AddField('CodigoNum', '', nxtWord32, 0, 0, False);
        AddField('Codigo2', '', nxtWideString, 30, 0, False);
        AddField('Codigo2Num', '', nxtWord32, 0, 0, False);
        AddField('Descricao', '', nxtWideString, 100, 0, False);
        AddField('Unid', '', nxtWideString, 5, 0, False);
        AddField('Preco', '', nxtCurrency, 5, 0, False);
        AddField('PrecoAuto', '', nxtBoolean, 0, 0, False);
        AddField('Margem', '', nxtDouble, 0, 0, False);
        AddField('Obs', '', nxtBLOBWideMemo, 0, 0, False);
        AddField('Imagem', '', nxtBLOBGraphic, 0, 0, False);
        AddField('Categoria', '', nxtWideString, 35, 0, False);
        AddField('Fornecedor', '', nxtWord32, 10, 0, False);
        AddField('EstoqueAtual', '', nxtDouble, 0, 0, False);
        AddField('EstoquePend', '', nxtDouble, 0, 0, False);
        AddField('EstoqueTot', '', nxtDouble, 0, 0, False);
        AddField('brtrib', '', nxtWord16, 0, 0, False);
        
        AddField('CustoUnitario', '', nxtCurrency, 16, 0, False);
        
        AddField('PodeAlterarPreco', '', nxtBoolean, 0, 0, False);
        AddField('PermiteVendaFracionada', '', nxtBoolean, 0, 0, False);
        AddField('NaoControlaEstoque', '', nxtBoolean, 0, 0, False);
        AddField('EstoqueMin', '', nxtDouble, 0, 0, False);
        AddField('EstoqueMax', '', nxtDouble, 0, 0, False);
        AddField('AbaixoMin', '', nxtBoolean, 0, 0, False);
        AddField('AbaixoMinDesde', '', nxtDateTime, 0, 0, False);
        AddField('EstoqueRepor', '', nxtDouble, 0, 0, False);
        
        AddField('ComissaoPerc', '', nxtDouble, 0, 0, False);
        AddField('ComissaoLucro', '', nxtBoolean, 0, 0, False);

        AddField('PesoBruto', '', nxtDouble, 0, 0, False);
        AddField('PesoLiq', '', nxtDouble, 0, 0, False);

        AddField('tax_id', '', nxtWord32, 0, 0, False);

        with AddField('Ativo', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        
        with AddField('Fidelidade', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
            
        AddField('FidPontos', '', nxtInt32, 10, 0, False);
        AddField('NCM', '', nxtNullString, 8, 0, False);
        AddField('NCM_Ex', '', nxtNullString, 2, 0, False);
        AddField('cest', '', nxtWord32, 0, 0, False);

        AddField('modST', '', nxtByte, 0, 0, False);
        AddField('MVA', '', nxtBlobMemo, 0, 0, False);
        AddField('Pauta', '', nxtBlobMemo, 0, 0, False);
        
        with AddField('CadastroRapido', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('IncluidoEm', '', nxtDateTime, 0, 0, False) do
          AddDefaultValue(TnxCurrentDateTimeDefaultValueDescriptor);

        AddField('AlteradoEm', '', nxtDateTime, 0, 0, False);
        AddField('AlteradoPor', '', nxtNullString, 30, 0, False);
          
        AddField('RecVer', '', nxtWord32, 0, 0, False);
      end;
      
      with EnsureIndicesDescriptor do 
        with AddIndex('IID', 0, idNull), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

      with IndicesDescriptor.AddIndex('ISuperBusca', 0, True, '', TnxMainIndexTokenKeyDescriptor) do 
        with (KeyDescriptor as TnxMainIndexTokenKeyDescriptor) do 
          MaxTokenSize := 50;  // set max key length here
          
      with EnsureFulltextDescriptor(Result) do 
      with AddFullTextIndex('full_superbusca') do begin
        // N.B. you can add extractors for as many fields as you like here:
        AddFieldTokenExtractor(FieldsDescriptor.GetFieldFromName('Descricao'), '', TnxKwicTokenExtractorDescriptor);
        with TnxMainIndexTokenIndexDescriptor(AddTokenIndex('ISuperBusca', TnxMainIndexTokenIndexDescriptor)) do begin
          MainIndexNumber := 2;
          IgnoreCase := True;
{            with AddLocaleDescriptor do begin
              Locale := $00000416;
              Flags := $00001000;
              UseStringSort := True;
            end;                  }
        end;
      end;
      
      with EnsureIndicesDescriptor do 
        with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('RecVer')); 
          
      with EnsureIndicesDescriptor do begin  
        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
          
        with AddIndex('ICodigo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Codigo'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;

        with AddIndex('ICodigoNum', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('CodigoNum'));

        with AddIndex('ICodigo2', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Codigo2'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;

        with AddIndex('ICodigo2Num', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Codigo2Num'));          
                    
        with AddIndex('IDescricao', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Descricao'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; 
              Flags := $00001000;
              UseStringSort := True;
            end;                   
          end;

        with AddIndex('IAbaixoMin', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('AbaixoMin'));
          Add(GetFieldFromName('AbaixoMinDesde'));
        end;
        
        with AddIndex('IMarcaDescr', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Marca'));
          Add(GetFieldFromName('Descricao'));
        end;
        
        with AddIndex('IPrecoAutoMargem', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('PrecoAuto'));
          Add(GetFieldFromName('Margem'));
        end;
        with AddIndex('ICadastroRapido', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          with Add(GetFieldFromName('CadastroRapido')) do
            Ascend := False;
          with Add(GetFieldFromName('IncluidoEm')) do
            Ascend := False;
        end;
        
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Tran
function __Tran(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('UID', '', nxtGUID, 0, 0, False);
        AddField('UID_ref', '', nxtGUID, 0, 0, False);
        
        with AddField('StatusNFE', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := nfetran_naoemitir;
        
        AddField('ChaveNFE', '', nxtNullString, 44, 0, False);
        
        with AddField('TipoNFE', '', nxtByte, 0, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := tiponfe_nenhum;
                    
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('Entregar', '', nxtBoolean, 0, 0, False);
        AddField('VenDev', '', nxtBoolean, 0, 0, False);
        AddField('endereco_entrega', '', nxtGUID, 0, 0, False);
        AddField('IncluidoEm', '', nxtDateTime, 0, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Tipo', '', nxtByte, 3, 0, False);
        AddField('OpDevValor', '', nxtByte, 3, 0, False);
        AddField('Func', '', nxtNullString, 20, 0, False);
        AddField('Total', '', nxtCurrency, 16, 0, False);
        AddField('Desconto', '', nxtCurrency, 16, 0, False);
        AddField('DescPerc', '', nxtDouble, 16, 0, False);
        AddField('ids_pagto', '', nxtNullString, 20, 0, False);
        AddField('Hora', '', nxtByte, 0, 0, False);

        with AddField('DescPorPerc', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;        
        
        AddField('TotLiq', '', nxtCurrency, 16, 0, False);
        
        with AddField('PagEsp', '', nxtWord16, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
          
        AddField('Pago', '', nxtCurrency, 16, 0, False);
        AddField('DebitoAnt', '', nxtCurrency, 16, 0, False);
        AddField('Debito', '', nxtCurrency, 16, 0, False);
        AddField('DebitoPago', '', nxtCurrency, 16, 0, False);
        AddField('CreditoAnt', '', nxtCurrency, 16, 0, False);
        AddField('Credito', '', nxtCurrency, 16, 0, False);
        AddField('CreditoUsado', '', nxtCurrency, 16, 0, False);
        AddField('Troco', '', nxtCurrency, 16, 0, False);
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        AddField('Cancelado', '', nxtBoolean, 0, 0, False);
        AddField('CanceladoPor', '', nxtNullString, 30, 0, False);
        AddField('CanceladoEm', '', nxtDateTime, 0, 0, False);
        AddField('Caixa', '', nxtWord32, 10, 0, False);
        AddField('CaixaPag', '', nxtWord32, 10, 0, False);
        AddField('Maq', '', nxtWord16, 5, 0, False);
        AddField('NomeCliente', '', nxtWideString, 50, 0, False);
        AddField('Sessao', '', nxtWord32, 10, 0, False);
        AddField('Descricao', '', nxtBlobWideMemo, 0, 0, False);
        AddField('QtdTempo', '', nxtDouble, 0, 0, False);
        AddField('CredValor', '', nxtBoolean, 0, 0, False);
        AddField('FidResgate', '', nxtBoolean, 0, 0, False);
        AddField('AmbNFe', '', nxtByte, 0, 0, False);
        AddField('StatusCanc', '', nxtByte, 0, 0, False);
        AddField('Extra', '', nxtBlobMemo, 0, 0, False);
        AddField('PagFunc', '', nxtNullString, 20, 0, False);
        AddField('Vendedor', '', nxtNullString, 20, 0, False);
        AddField('Comissao', '', nxtCurrency, 16, 0, False);

        AddField('Frete', '', nxtCurrency, 0, 0, False);
        AddField('tax_incluido', '', nxtCurrency, 0, 0, False);
        AddField('tax_incluir', '', nxtCurrency, 0, 0, False);

        AddField('TotalFinal', '', nxtCurrency, 0, 0, False);
        AddField('tranest', '', nxtBoolean, 0, 0, False);
        AddField('trancx', '', nxtBoolean, 0, 0, False);
        AddField('TranspEnt', '', nxtWord32, 0, 0, False);
        AddField('TranspVol', '', nxtWord16, 0, 0, False);
        AddField('TranspPesoB', '', nxtDouble, 0, 0, False);
        AddField('TranspPesoL', '', nxtDouble, 0, 0, False);
        AddField('TranspPesoVol', '', nxtByte, 0, 0, False);
        AddField('UpdID', '', nxtGUID, 0, 0, False);
        AddField('DataNF', '', nxtDate, 0, 0, False);
        AddField('vSped', '', nxtWord16, 9, 0, False);

        with AddField('PagPend', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        AddField('RecVer', '', nxtWord32, 0, 0, False);
        AddField('processaSped', '', nxtByte, 0, 0, False);
        AddField('ErroProcSped', '', nxtBlobMemo, 10, 0, False);
      end;
      
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
          
        with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('RecVer'));
      
        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
                 
        with AddIndex('ICliDH', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('DataHora'));
        end;
        with AddIndex('ITranspEntDH', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TranspEnt'));
          Add(GetFieldFromName('DataHora'));
        end;        
        with AddIndex('ICliID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICaixaID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ITipoDataNF', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('DataNF'));
        end;
        with AddIndex('ITipoNFeDataNF', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoNFe'));
          Add(GetFieldFromName('DataNF'));
        end;
        with AddIndex('IprocessaSpedvSped', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('processaSped'));
          Add(GetFieldFromName('vSped'));
        end;
        with AddIndex('ICanceladoTipoDataNF', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('DataNF'));
        end;
        with AddIndex('ICanceladoTipoNFETipoDataNF', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('TipoNFE'));
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('DataNF'));
        end;
        with AddIndex('ICaixaPagID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('CaixaPag'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('IPagPendID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('PagPend'));
          Add(GetFieldFromName('ID'));
        end;

        with AddIndex('IprocessaSpedID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('processaSped'));
          Add(GetFieldFromName('ID'));
        end;

        with AddIndex('IPagPendEntID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('PagPend'));
          Add(GetFieldFromName('Entregar'));
          Add(GetFieldFromName('ID'));
        end;                
        with AddIndex('IDH', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('DataHora'));
        with AddIndex('ITipoDH', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('DataHora'));
        end;
        with AddIndex('ITipoCaixaID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('ID'));
        end;        
        with AddIndex('ITipoID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('ID'));
        end;         
        with AddIndex('ISessao', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Sessao'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('IUID_ref', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('UID_ref'));
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('Cancelado'));
        end;
        with AddIndex('ITipoNFEStatusNFE', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoNFE'));
          Add(GetFieldFromName('StatusNFE'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ITipoNFECanceladoStatusNFE', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoNFE'));
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('StatusNFE'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICanceladoStatusNFE', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('StatusNFE'));
          Add(GetFieldFromName('ID'));
        end;        
        with AddIndex('ITipoNFECanceladoAmbStatusNFE', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoNFE'));
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('AmbNFe'));
          Add(GetFieldFromName('StatusNFE'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICanceladoAmbStatusNFE', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('AmbNFe'));
          Add(GetFieldFromName('StatusNFE'));
          Add(GetFieldFromName('ID'));
        end;        
        with AddIndex('Iendereco_entrega_ID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('endereco_entrega'));
          Add(GetFieldFromName('ID'));
        end;  
        with AddIndex('Itranest_tipo_datahora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('tranest'));
          Add(GetFieldFromName('tipo'));
          Add(GetFieldFromName('datahora'));
        end;      
        with AddIndex('Itranest_datahora_tipo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('tranest'));
          Add(GetFieldFromName('datahora'));
          Add(GetFieldFromName('tipo'));
        end;          
        with AddIndex('Itrancx_tipo_datahora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('trancx'));
          Add(GetFieldFromName('tipo'));
          Add(GetFieldFromName('datahora'));
        end;      
        with AddIndex('Itrancx_datahora_tipo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('trancx'));
          Add(GetFieldFromName('datahora'));
          Add(GetFieldFromName('tipo'));
        end;                     
        with AddIndex('IChaveNFE', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('ChaveNFE'));
        with AddIndex('IStatusCanc', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('StatusCanc'));

{---- MOSTRAR CANCELADOS -----}    
   {---- Mesmo Caixa ----}    
        with AddIndex('ICaixaVenDevDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('VenDev'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICaixaTipoDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('ID'));
        end;   
   {---- Todos Caixas ----}    
        with AddIndex('IVenDevDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('VenDev'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ITipoDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('ID'));
        end;  
{---- NAO MOSTRAR CANCELADOS -----}    
   {---- Mesmo Caixa ----}    
        with AddIndex('ICanceladoCaixaVenDevDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('VenDev'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICanceladoCaixaTipoDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('ID'));
        end;   
   {---- Todos Caixas ----}    
        with AddIndex('ICanceladoVenDevDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('VenDev'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICanceladoTipoDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('DataHora'));
          Add(GetFieldFromName('ID'));
        end;  
{---------------------------------------------------}          
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Usuario
function __Usuario(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      Result.EncryptionEngine := 'nx1xDefault';
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
      
        AddField('Username', '', nxtNullString, 20, 0, False);
        AddField('Nome', '', nxtNullString, 40, 0, False);
        
        with AddField('Inativo', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;        
        
        AddField('Admin', '', nxtBoolean, 0, 0, False);
        AddField('Senha', '', nxtNullString, 30, 0, False);
        AddField('Grupos', '', nxtBLOBMemo, 0, 0, False);
        AddField('Direitos', '', nxtBLOBMemo, 0, 0, False);
        AddField('MaxTempoManut', '', nxtInt32, 10, 0, False);
        AddField('MaxMaqManut', '', nxtInt32, 10, 0, False);
        AddField('LimiteDesc', '', nxtDouble, 16, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        AddField('Email', '', nxtWideString, 100, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IUsername', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Username'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
        with AddIndex('INome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Nome'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;

        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __infocampanha(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
      
        AddField('IP',       '', nxtNullString, 15, 0, False);
        AddField('campanha', '', nxtNullString, 50, 0, False);
        AddField('utmccn',   '', nxtNullString, 250, 0, False);
        AddField('utmctr',   '', nxtNullString, 250, 0, False);
        AddField('utmcct',   '', nxtNullString, 250, 0, False);
        AddField('utmcmd',   '', nxtNullString, 250, 0, False);
        AddField('utmcsr',   '', nxtNullString, 250, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IIP', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('IP'));

        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
      end;    
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;  

// temp
function __temp(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do
        AddField('last_upd_cmds', '', nxtInt32, 10, 0, False);
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __Credito(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('Func', '', nxtNullString, 20, 0, False);
        AddField('Adicionar', '', nxtBoolean, 0, 0, False);
        AddField('Tran', '', nxtWord32, 10, 0, False);
        AddField('Caixa', '', nxtWord32, 10, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Cancelado', '', nxtBoolean, 0, 0, False);
        AddField('Valor', '', nxtCurrency, 16, 0, False);
        with AddField('FidResgate', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('FidPontos', '', nxtDouble, 0, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
          
        with AddIndex('ICliente', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ITran', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('Tran'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;


// Usuario
function __Especies(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtWord16, 5, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        
        AddField('Tipo', '', nxtByte, 3, 0, False);
        AddField('Nome', '', nxtNullString, 40, 0, False);
        AddField('PermiteTroco', '', nxtBoolean, 0, 0, False);
        AddField('PermiteVarios', '', nxtBoolean, 0, 0, False);
        AddField('PermiteCred', '', nxtBoolean, 0, 0, False);
        AddField('Img', '', nxtWord16, 5, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        AddField('TipoPagNFE', '', nxtByte, 3, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
      end;          
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __PagEspecies(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        
        AddField('Caixa', '', nxtWord32, 10, 0, False);
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('Tran', '', nxtWord32, 10, 0, False);
        with AddField('TipoTran', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := trEstVenda;
        
        AddField('Especie', '', nxtWord16, 5, 0, False);
        AddField('Tipo', '', nxtByte, 3, 0, False);
        AddField('Valor', '', nxtCurrency, 16, 0, False);
        AddField('Troco', '', nxtCurrency, 16, 0, False);
        AddField('Doc', '', nxtNullString, 50, 0, False);
        AddField('Cancelado', '', nxtBoolean, 0, 0, False);
        with AddField('Devolucao', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
                    
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
          
        with AddIndex('IDoc', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('Doc'));
        with AddIndex('ITranID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do  begin
          Add(GetFieldFromName('Tran'));
          Add(GetFieldFromName('ID'));
        end;  
        with AddIndex('ICaixaID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('ID'));
        end;  
        with AddIndex('I_caixa_datahora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('DataHora'));
        end;          
        with AddIndex('I_tipotran_tran', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('Tran'));
        end;          
      end;    
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __RecDel(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        
        AddField('Tab', '', nxtWord16, 5, 0, False);
        AddField('Key', '', nxtNullString, 40, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('UID'));  
      end;    
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// movest_tax
function __movest_tax(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
      
        AddField('movest', '', nxtWord32, 10, 0, False);
        AddField('tax_id', '', nxtWord32, 10, 0, False);
        AddField('nome', '', nxtWideString, 40, 0, False);
        AddField('incluido', '', nxtBoolean, 0, 0, False);
        AddField('perc', '', nxtDouble, 0, 0, False);
        AddField('valor', '', nxtCurrency, 20, 4, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('I_movest_tax_id', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('movest'));
          Add(GetFieldFromName('tax_id'));
        end; 

        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
      end;      
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// tax
function __tax(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('tax_id', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        
        AddField('nome', '', nxtWideString, 40, 0, False);
        AddField('incluido', '', nxtBoolean, 0, 0, False);
        AddField('perc', '', nxtDouble, 40, 0, False);
        AddField('grupo', '', nxtBoolean, 0, 0, False);
        AddField('itens', '', nxtBLOBWideMemo, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('I_tax_id', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('tax_id'));
        with AddIndex('I_nome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('nome'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __tax_itens(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
      
        AddField('grupo', '', nxtWord32, 10, 0, False);
        AddField('item', '', nxtWord32, 10, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('I_grupo_item', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('grupo'));
          Add(GetFieldFromName('item'));
        end;

        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
        
      end;  
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// endereco
function __endereco(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('endereco_id', '', nxtGUID, 0, 0, False);
        AddField('cliente_id', '', nxtWord32, 10, 0, False);
        AddField('pos', '', nxtByte, 3, 0, False);
        AddField('numseq', '', nxtAutoInc, 10, 0, False);
        AddField('end_dest', '', nxtWideString, 50, 0, False);
        AddField('endereco', '', nxtWideString, 60, 0, False);
        AddField('endereco2', '', nxtWideString, 60, 0, False);
        AddField('end_numero', '', nxtWideString, 20, 0, False);
        AddField('cidade', '', nxtWideString, 40, 0, False);
        AddField('cep', '', nxtWideString, 10, 0, False);
        AddField('bairro', '', nxtWideString, 30, 0, False);
        AddField('end_codmun', '', nxtWideString, 7, 0, False);
        AddField('uf', '', nxtWideString, 30, 0, False);
        AddField('end_obs', '', nxtWideString, 40, 0, False);
        AddField('def_cad', '', nxtBoolean, 0, 0, False);
        AddField('def_ent', '', nxtBoolean, 0, 0, False);
        AddField('def_cob', '', nxtBoolean, 0, 0, False);
        AddField('pais', '', nxtWideString, 2, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('I_cliente_pos', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('cliente_id'));
          Add(GetFieldFromName('pos'));
        end;
        with AddIndex('I_endereco_id', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('endereco_id'));

        with AddIndex('INumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('NumSeq'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// opest
function __tipotran(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('tipo', '', nxtByte, 0, 0, False);
        AddField('user', '', nxtBoolean, 0, 0, False);
        AddField('estoque', '', nxtBoolean, 0, 0, False);
        AddField('caixa', '', nxtBoolean, 0, 0, False);
        AddField('nome', '', nxtWideString, 50, 0, False);
        AddField('entrada', '', nxtBoolean, 0, 0, False);
        AddField('emite_nfe', '', nxtBoolean, 0, 0, False);
        AddField('movest', '', nxtBoolean, 0, 0, False);
        AddField('atualiza_custo', '', nxtBoolean, 0, 0, False);
        AddField('visivel', '', nxtBoolean, 0, 0, False);
        AddField('precocusto_nfe', '', nxtBoolean, 0, 0, False);
        AddField('pagto', '', nxtBoolean, 0, 0, False);
        AddField('sel_endereco', '', nxtBoolean, 0, 0, False);
        AddField('tipocad', '0=não identificar, 1=cliente, 2=fornecedor, 3=filiais', nxtByte, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('I_tipo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('tipo'));
        with AddIndex('I_nome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('tipo'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// opest_brtrib
function __brtrib_tipo(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
      
        AddField('tipo', '', nxtByte, 5, 0, False);
        AddField('id_brtrib', '', nxtWord16, 5, 0, False);
        AddField('local', '', nxtByte, 0, 0, False);
        AddField('csosn', '', nxtWord32, 10, 0, False);
        AddField('cfop', '', nxtWord32, 10, 0, False);
        AddField('natop', '', nxtWideString, 60, 0, False);
        AddField('obsfiscal', '', nxtBlobWideMemo, 0, 0, False);
        AddField('icms', '', nxtDouble, 0, 2, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('I_brtrib_tipo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('id_brtrib'));
          Add(GetFieldFromName('tipo'));
          Add(GetFieldFromName('local'));
        end;
        with AddIndex('I_tipo_brtrib', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('tipo'));
          Add(GetFieldFromName('id_brtrib'));
          Add(GetFieldFromName('local'));
        end;

        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));

        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));   
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function TncTableInfo.Bkp: Boolean;
begin
  Result := (Backup=1);
end;

constructor TncTableInfo.Create(
  aTableName  : String;
  aCallback   : TnxcgCreateDictCallback;
  aTableID    : Byte;  
  aBackup     : Byte;
  aID_Name    : String;
  aID_IxName  : String;
  aUID_Name   : String;
  aUID_IxName : String);
begin
  TableName  := aTableName;
  Backup     := aBackup;

  if aID_Name='' then
    ID_Name := 'ID' else
    ID_Name    := aID_Name;

  if aID_IxName='' then
    ID_IxName := 'IID' else
    ID_IxName  := aID_IxName;

  if aUID_Name='' then
    UID_Name := 'UID' else
    UID_Name   := aUID_Name;

  if aUID_IxName='' then
    UID_IxName := 'IUID' else
    UID_IxName := aUID_IxName;

  Callback   := aCallback;
  TableID    := aTableID;
end;  

function DatabaseVersion: Cardinal;
begin
  Result := Cardinal($04000000);
end;

function DatabaseVersionStr: String;
begin
  Result :=
    Format('%d.%d.%d.%d',
      [(DatabaseVersion and $ff000000) shr 24,
       (DatabaseVersion and $00ff0000) shr 16,
       (DatabaseVersion and $0000ff00) shr 8,
       (DatabaseVersion and $000000ff)]);
end;

function __GetTablePrimaryKey(aTable: String): String;
begin
  if SameText(aTable, 'usuario') then
    Result := 'Username'
  else
  if SameText(aTable, 'categoria') then
    Result := 'Descricao'
  else
  if SameText(aTable, 'unidade') then
    Result := 'Descricao'
  else
  if SameText(aTable, 'Aviso') then
    Result := 'Minutos'
  else
  if SameText(aTable, 'Config') then
    Result := 'NumSeq'
  else
  if SameText(aTable, 'Maq') or SameText(aTable, 'Maquina') then
    Result := 'Numero'
  else
  if SameText(aTable, 'Orcamento') or SameText(aTable, 'IOrcamento') or SameText(aTable, 'Doc') then
    Result := 'UID';
end;

function GetTableDictionary(aDatabase : TnxDatabase; const aTableName : String): TnxDataDictionary;
begin
  Result := gTables[aTableName].Callback(aDatabase);
end;

procedure RestructureTable(aDatabase : TnxDatabase;
  const aTableName, aPassword : String;
  aNewDict : TnxDataDictionary;
  aProgressCallback : TnxcgProgressCallback;
  var aCancelTask : Boolean;
  aFreeDict : Boolean = False);
var
  OldDict : TnxDataDictionary;
  Mapper : TnxTableMapperDescriptor;
  TaskInfo : TnxAbstractTaskInfo;
  Completed : Boolean;
  TaskStatus : TnxTaskStatus;
begin
  try
    OldDict := TnxDataDictionary.Create;
    try
      nxCheck(aDatabase.GetDataDictionaryEx(aTableName, aPassword, OldDict));
      if (aPassword <> '') and (aNewDict.EncryptionEngine = '') then
        aNewDict.EncryptionEngine := OldDict.EncryptionEngine;
      if OldDict.IsEqual(aNewDict) then
        Exit;
        
      if (not aCopiouArqs) and (not SameText(aTableName, 'config')) then 
      begin
        aCopiouArqs := True;
        FrmCopia.CopiaDados('_ver'+SelfShortVer, 'config.nx1');                        
      end;  
      
      Mapper := TnxTableMapperDescriptor.Create;
      try
        Mapper.MapAllTablesAndFieldsByName(OldDict, aNewDict);
        nxCheck(aDatabase.RestructureTableEx(aTableName, aPassword, aNewDict, Mapper, TaskInfo));
        if Assigned(TaskInfo) then
          try
            repeat
              if not aCancelTask then
                TaskInfo.GetStatus(Completed, TaskStatus);
              if not Completed then begin
                if Assigned(aProgressCallback) then
                  aProgressCallback(aTableName, TaskStatus, aCancelTask);
                if not aCancelTask then
                  Sleep(100)
                else
                  nxCheck(TaskInfo.Cancel);
              end;
            until Completed or aCancelTask;
            nxCheck(TaskStatus.tsErrorCode);
          finally
            TaskInfo.Free;
          end;
      finally
        Mapper.Free;
      end;
    finally
      OldDict.Free;
    end;
  finally
    if aFreeDict then
      aNewDict.Free;
  end;
end;

procedure PackTable(aDatabase : TnxDatabase;
  const aTableName, aPassword : String;
  aProgressCallback : TnxcgProgressCallback;
  var aCancelTask : Boolean);
var
  TaskInfo : TnxAbstractTaskInfo;
  Completed : Boolean;
  TaskStatus : TnxTaskStatus;
begin
  nxCheck(aDatabase.PackTableEx(aTableName, aPassword, TaskInfo));
  if Assigned(TaskInfo) then
    try
      while True do begin
        TaskInfo.GetStatus(Completed, TaskStatus);
        if Assigned(aProgressCallback) then
          aProgressCallback(aTableName, TaskStatus, aCancelTask);
        if Completed then
          break;
        if aCancelTask then
          nxCheck(TaskInfo.Cancel);
      end;
    finally
      TaskInfo.Free;
    end;
end;

procedure BuildAndEvolveTable(aDatabase : TnxDatabase;
  const aTableName, aPassword : String;
  aCreateDictCallback : TnxcgCreateDictCallback;
  aProgressCallback : TnxcgProgressCallback;
  var aCancelTask : Boolean);
var
  Dict : TnxDataDictionary;
  aPass: String;
begin
  Dict := aCreateDictCallback(aDatabase);
  if Assigned(Dict) then
    try
      aPass := '';

      if not aDatabase.TableExists(aTableName, aPassword) then
        aDatabase.CreateTable(False, aTableName, aPass, Dict)
      else
        RestructureTable(aDatabase, aTableName,
          aPass, Dict, aProgressCallback, aCancelTask);
    finally
      Dict.Free;
    end;
end;

procedure BuildAndEvolveDatabase(aDatabase : TnxDatabase;
  aProgressCallback : TnxcgProgressCallback;
  const aPassword : String);
var
  I : Integer;
  CancelTask : Boolean;
begin
  gEvolvingTables := True;
  aCopiouArqs := False;
  try
    CancelTask := False;
    for I := 0 to gTables.Count-1 do with gTables.Items[I] do begin
      gEvolvingTableName := TableName;
      DebugMsg('BuildAndEvolveDatabase - '+gEvolvingTableName);
      try
        BuildAndEvolveTable(aDatabase, TableName, aPassword, Callback, aProgressCallback, CancelTask);
      except
        on E: Exception do begin
          DebugEx(nil, 'BuildAndEvolveDatabase - '+gEvolvingTableName, E, True);
          raise Exception.Create('Erro evolving table: '+gEvolvingTableName+': '+E.Message);
        end;

      end;
      if CancelTask then
        Exit;
    end;
  finally
    gEvolvingTables := False;
  end;
end;

procedure RestructureDatabase(aDatabase : TnxDatabase;
  aProgressCallback : TnxcgProgressCallback;
  const aPassword : String);
var
  I : Integer;
  CancelTask : Boolean;
begin
  CancelTask := False;
  for I := 0 to gTables.Count-1 do with gTables.Items[I] do begin
    RestructureTable(aDatabase, TableName, aPassword, Callback(aDatabase), aProgressCallback, CancelTask, True);
    if CancelTask then Exit;
  end;
end;

procedure PackDatabase(aDatabase : TnxDatabase;
  aProgressCallback : TnxcgProgressCallback;
  const aPassword : String);
var
  I : Integer;
  CancelTask : Boolean;
begin
  CancelTask := False;
  for I := 0 to gTables.Count-1 do with gTables.Items[I] do begin
    PackTable(aDatabase, TableName, aPassword, aProgressCallback, CancelTask);
    if CancelTask then Exit;
  end;
end;

function TncTableManager.GetByName(aName: String): TncTableInfo;
var I: Integer;
begin
  for i := 0 to FItems.Count-1 do 
    if SameText(GetItem(I).TableName, aName) then begin
      Result := GetItem(I);
      Exit;
    end;
  Result := nil;
end;

function TncTableManager.GetByID(aID: Byte): TncTableInfo;
var I: Integer;
begin
  for i := 0 to FItems.Count-1 do 
    if GetItem(I).TableID=aID then begin
      Result := GetItem(I);
      Exit;
    end;
  Result := nil;
end;

function TncTableManager.GetItem(aIndex: Integer): TncTableInfo;
begin
  Result := TncTableInfo(FItems[aIndex]);
end;

procedure TncTableManager.GetTableNames(sl: TStrings);
var i: integer;
begin
  sl.Clear;
  for I := 0 to Count-1 do sl.Add(GetItem(i).TableName);
end;

constructor TncTableManager.Create;
begin
  FItems := TList.Create;
end;

destructor TncTableManager.Destroy; 
begin
  while FItems.Count>0 do begin
    TObject(FItems[0]).Free;
    FItems.Delete(0)
  end;

  FItems.Free;

  inherited;
end;  

procedure TncTableManager.Add(
      aTableName  : String;
      aCallback   : TnxcgCreateDictCallback;
      aTableID    : Byte;      
      aBackup     : Byte = 1;
      aID_Name    : String = '';
      aID_IxName  : String = '';
      aUID_Name   : String = '';
      aUID_IxName : String = '');
begin
  FItems.Add(TncTableInfo.Create(aTableName, aCallback, aTableID, aBackup, aID_Name, aID_IxName, aUID_Name, aUID_IxName));
end;

function TncTableManager.Count: Integer;
begin
  Result := FItems.Count;
end;  

initialization
  gTables := TncTableManager.Create;

  with gTables do begin
  
    //Tabelas que não fazem backup no cloud
    Add('bk_control',   __bk_control,   idtb_bk_control,  0);
    Add('bk_process',   __bk_process,   idtb_bk_process,  0);
    Add('bk_upload',    __bk_upload,    idtb_bk_upload,   0);    
    Add('RecDel',       __RecDel,       idtb_RecDel,      0);
    Add('Card',         __Card,         idtb_Card,        0);    
    Add('post_nexapp',  __post_nexapp,  idtb_post_nexapp, 0);  
    
    Add('Layout',       __Layout,       idtb_Layout,      0);
    Add('Categoria',    __Categoria,    idtb_Categoria,   0);
    Add('NCM',          __NCM,          idtb_NCM,         0);
    Add('temp',         __temp,         idtb_temp,        0);
    Add('PostMS',       __PostMS,       idtb_PostMS,      0);    
    Add('Doc',          __Doc,          idtb_Doc,         0);
    Add('br_cest',      __br_cest,      idtb_br_cest,     0);
    Add('CFOP',         __CFOP,         idtb_CFOP,        0);
    Add('MunBr',        __MunBr,        idtb_MunBR,       0);
    Add('tipotran',     __tipotran,     idtb_tipotran,    0);      

    // Tabelas que fazem backup no cloud
    Add('Caixa',        __Caixa,        idtb_Caixa);
    Add('Credito',      __Credito,      idtb_Credito);
    Add('Cliente',      __Cliente,      idtb_Cliente);
    Add('ITran',        __ITran,        idtb_ITran);
    Add('MovEst',       __MovEst,       idtb_MovEst);
    Add('Produto',      __Produto,      idtb_Produto);
    Add('Marca',        __Marca,        idtb_Marca);
    Add('Tran',         __Tran,         idtb_Tran);
    Add('Usuario',      __Usuario,      idtb_Usuario);
    Add('infoCampanha', __infocampanha, idtb_infoCampanha);
    Add('Unidade',      __Unidade,      idtb_Unidade);
    Add('Especie',      __Especies,     idtb_Especie);
    Add('PagEspecies',  __PagEspecies,  idtb_PagEspecies);
    Add('IOrcamento',   __IOrcamento,   idtb_IOrcamento);
    Add('syslog',       __syslog,       idtb_syslog);    
    Add('NFCONFIG',     __NFCONFIG,     idtb_NFConfig);
    Add('BRTrib',       __BRTrib,       idtb_BRTrib);
    Add('ConvUnid',     __ConvUnid,     idtb_ConvUnid);
    Add('ProdFor',      __ProdFor,      idtb_ProdFor);
    Add('tax_itens',    __tax_itens,    idtb_tax_itens);
    Add('movest_tax',   __movest_tax,   idtb_movest_tax);
    Add('BRTrib_Tipo',  __brtrib_tipo,  idtb_BRTrib_Tipo);
    Add('LinkXML',      __LinkXML,      idtb_LinkXML);
    Add('xmls_compra',  __xmls_compra,  idtb_xmls_compra);
    Add('DadosFiscais', __DadosFiscais, idtb_DadosFiscais);
    Add('cfop_dev',     __cfop_dev,     idtb_cfop_dev);
    Add('SolicitacoesSped', __SolicitacoesSped, idtb_SolicitacoesSped);
    Add('Sped_C190', __Sped_C190, idtb_Sped_C190);
    Add('Sped_E210', __Sped_E210, idtb_Sped_E210);
    Add('movEst_Sped', __movEst_Sped, idtb_movEstSped);

    //Tabelas que fazem backup no cloud mas possuem campos/indices de ID ou UID diferente do padrão

    Add('tax',          __tax,          idtb_tax,       1, 'tax_id', 'I_tax_id');
    Add('Orcamento',    __Orcamento,    idtb_Orcamento, 1, 'IDSeq',  'IIDSeq');
    Add('Config',       __Config,       idtb_Config,    1, 'NumSeq', 'INumSeq');
    Add('Debito',       __Debito,       idtb_Debito,    1, 'NumSeq', 'INumSeq');
    Add('NFE',          __NFE,          idtb_NFE,       1, 'NumSeq', 'INumSeq');
    Add('CCE',          __CCE,          idtb_CCE,       1, 'NumSeq', 'INumSeq');
    Add('Terminal',     __Terminal,     idtb_Terminal,  1, '',       '',        'TermID',      'ITermID');
    Add('endereco',     __endereco,     idtb_endereco,  1, 'NumSeq', 'INumSeq', 'endereco_id', 'I_endereco_id');    
end;

finalization
  gTables.Free;    

end.