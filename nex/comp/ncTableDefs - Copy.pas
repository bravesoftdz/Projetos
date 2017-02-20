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

  function TableCount: Integer;
  function DatabaseVersion: Cardinal;
  function DatabaseVersionStr: String;
  function GetTableDictionary(aDatabase : TnxDatabase; const aTableName : String): TnxDataDictionary;
  procedure GetTableNames(aSL: TStrings); 
  function GetTablePrimaryKey(aTable: String): String;
  function GetTableID(aTable: String): Integer;

const
  sEncPass = 'CEWk4jhsad3f';

var 
  gTableNames : TStrings; 
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
  ncsFrmBackup;

type
  TnxcgCreateDictCallback = function(aDatabase : TnxDatabase): TnxDataDictionary;

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
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        AddField('A', '', nxtNullString, 10, 0, False);
        AddField('B', '', nxtNullString, 10, 0, False);
        AddField('Fator', '', nxtExtended, 0, 0, False);
        AddField('Mult', '', nxtBoolean, 0, 0, False);
        AddField('Universal', '', nxtBoolean, 0, 0, False);
        AddField('Produto', '', nxtWord32, 10, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('IABUniv', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('A'));
          Add(GetFieldFromName('B'));
          Add(GetFieldFromName('Universal'));
          Add(GetFieldFromName('Produto'));
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
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        AddField('Produto', '', nxtWord32, 10, 0, False);
        AddField('Fornecedor', '', nxtWord32, 10, 0, False);
        AddField('Pos', '', nxtWord16, 5, 0, False);
        AddField('Ref', '', nxtNullString, 20, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
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
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        AddField('Produto', '', nxtWord32, 10, 0, False);
        AddField('Fornecedor', '', nxtWord32, 10, 0, False);
        AddField('Link', '', nxtNullString, 20, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
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
        AddField('Nome', '', nxtNullString, 50, 0, False);
        AddField('Origem', '', nxtByte, 2, 0, False);
        AddField('CST', '', nxtWord16, 3, 0, False);
        AddField('CSOSN', '', nxtWord16, 5, 0, False);
        AddField('ICMS', '', nxtDouble, 5, 5, False);
        AddField('Padrao', '', nxtBoolean, 0, 0, False);
        AddField('CFOP_nfce', '', nxtWord16, 5, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
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
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// CSOSN
function __CSOSN(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('Codigo', '', nxtWord16, 5, 0, False);
        AddField('Descricao', '', nxtNullString, 100, 0, False);
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// CST
function __CST(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('Codigo', '', nxtWord16, 5, 0, False);
        AddField('Descricao', '', nxtNullString, 100, 0, False);
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
        with AddField('EmitirNFCe', '', nxtBoolean, 0, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False; 

        with AddField('Tipo', '', nxtByte, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := nfcfg_nfce;            

        with AddField('RemoverNFCe', '', nxtBoolean, 0, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;             
                    
        with AddField('EmitirNFE', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False; 

        AddField('CertificadoDig', '', nxtNullString, 300, 0, False);
        
        AddField('PinCert', '', nxtNullString, 50, 0, False);

        with AddField('DependNFCEOk', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;   

        with AddField('DependSATOk', '', nxtBoolean, 0, 0, False) do
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
        AddField('urls_qrcode_hom', '', nxtBLOBMemo, 0, 0, False);
        AddField('urls_qrcode_prod', '', nxtBLOBMemo, 0, 0, False);
        AddField('urls_consulta', '', nxtBLOBMemo, 0, 0, False);
        AddField('ObsFisco', '', nxtBLOBMemo, 0, 0, False);
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
        AddField('Chave', '', nxtNullString, 44, 0, False);
        AddField('ChaveCont', '', nxtNullString, 44, 0, False);
        
        with AddField('ConsultouChave', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        
        with AddField('Entrada', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        
        with AddField('TipoDoc', 'NFCe=0 ou NFe=1', nxtByte, 2, 0, False) do
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
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IUID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UID'));
      
        with AddIndex('IChave', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Chave'));
        with AddIndex('ITran', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Tran'));
        
        with AddIndex('IIncluidoEm', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('IncluidoEm'));

        with AddIndex('ItpAmbStatusInut', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('tpAmb'));
          Add(GetFieldFromName('StatusInut'));          
        end;  

        with AddIndex('IConsulta', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('tpAmb'));
          Add(GetFieldFromName('ConsultouChave'));
          Add(GetFieldFromName('StatusNF'));          
        end;  

        with AddIndex('IStatusCancNumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('StatusCanc'));
          Add(GetFieldFromName('NumSeq'));
        end;  
                    
        with AddIndex('INumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('NumSeq'));
          
        with AddIndex('ItpAmbModeloSerieNumero', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
        begin
          Add(GetFieldFromName('tpAmb'));
          Add(GetFieldFromName('Modelo'));
          Add(GetFieldFromName('Serie'));
          Add(GetFieldFromName('Numero'));
        end;  
        with AddIndex('ItpAmbStatus', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
        begin
          Add(GetFieldFromName('tpAmb'));
          Add(GetFieldFromName('Status'));
        end;  
        with AddIndex('IStatusNumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
        begin
          Add(GetFieldFromName('Status'));
          Add(GetFieldFromName('NumSeq'));
        end;          
        with AddIndex('ItpAmbDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
        begin
          Add(GetFieldFromName('tpAmb'));
          Add(GetFieldFromName('DataHora'));
        end;  
        with AddIndex('IDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('DataHora'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// TipoME
function __TipoME(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('Tipo', '', nxtWord16, 5, 0, False);
        AddField('Nome', '', nxtNullString, 3, 0, False);
        AddField('Entrada', '', nxtBoolean, 0, 0, False);
        AddField('CliFor', '', nxtByte, 3, 0, False);
        AddField('ExigirCliFor', '', nxtByte, 3, 0, False);
        AddField('EmitirNF', '', nxtByte, 3, 0, False);
        AddField('CFOP1', '', nxtWord16, 5, 0, False);
        AddField('CFOP2', '', nxtWord16, 5, 0, False);
        AddField('CFOP3', '', nxtWord16, 5, 0, False);
        AddField('TipoNF1', '', nxtByte, 3, 0, False);
        AddField('TipoNF2', '', nxtByte, 3, 0, False);
        AddField('TipoNF3', '', nxtByte, 3, 0, False);
        AddField('EmitirAuto1', '', nxtBoolean, 0, 0, False);
        AddField('EmitirAuto2', '', nxtBoolean, 0, 0, False);
        AddField('EmitirAuto3', '', nxtBoolean, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('ITipo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Tipo'));
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
        AddField('TermID', '', nxtGUID, 0, 0, False);
        AddField('Nome', '', nxtNullString, 50, 0, False);
        AddField('Opcoes', '', nxtBLOBMemo, 0, 0, False);
        AddField('RECVER', '', nxtWord32, 9, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));        
      end;
      with EnsureIndicesDescriptor do begin
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
        AddField('Free', '', nxtBoolean, 0, 0, False);
        AddField('TextOnly', '', nxtBoolean, 0, 0, False);
        AddField('Tamanho', '', nxtNullString, 20, 0, False);
        AddField('Nome', '', nxtNullString, 100, 0, False);
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        AddField('Params', '', nxtBLOBMemo, 0, 0, False);                   
        AddField('Doc', '', nxtBLOB, 0, 0, False);
        AddField('Img', '', nxtBLOBGraphic, 0, 0, False);
        AddField('Custom', '', nxtBoolean, 0, 0, False);
        with AddField('MinVer', '', nxtWord16, 9, 0, False) do 
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        
        AddField('SRECVER', '', nxtWord32, 9, 0, False);
        AddField('RECVER', '', nxtWord32, 9, 0, False);
      end;

      with EnsureIndicesDescriptor do 
        with AddIndex('IID', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('ID'));
      
      with IndicesDescriptor.AddIndex('ISuperBuscaDoc', 0, True, '', TnxMainIndexTokenKeyDescriptor) do 
        with (KeyDescriptor as TnxMainIndexTokenKeyDescriptor) do 
          MaxTokenSize := 50;  // set max key length here
          
      with EnsureFulltextDescriptor(Result) do 
      with AddFullTextIndex('full_superbuscadoc') do begin
          // N.B. you can add extractors for as many fields as you like here:
        AddFieldTokenExtractor(FieldsDescriptor.GetFieldFromName('Nome'), '', TnxKwicTokenExtractorDescriptor);
        AddFieldTokenExtractor(FieldsDescriptor.GetFieldFromName('Obs'), '', TnxKwicTokenExtractorDescriptor);
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
        with AddField('DataHora', '', nxtDateTime, 0, 0, False) do
          with AddDefaultValue(TnxCurrentDateTimeDefaultValueDescriptor) as TnxCurrentDateTimeDefaultValueDescriptor do
            ApplyAt := [aaServer];
        AddField('Info', '', nxtNullString, 30, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idNull), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
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
        AddField('Orcamento_UID', '', nxtGUID, 0, 0, False);
        with AddField('UID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        AddField('Item', '', nxtWord16, 5, 0, False);
        AddField('Produto', '', nxtWord32, 5, 0, False);
        AddField('Descr', '', nxtBLOBMemo, 0, 0, False);
        AddField('Unitario', '', nxtCurrency, 16, 0, False);
        AddField('Quant', '', nxtExtended, 0, 0, False);
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

// Biometria
function __Biometria(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
{        with AddField('uuid', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);        
        AddField('Cliente_uuid', '', nxtGUID, 0, 0, False);   }
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Template', '', nxtBLOB, 0, 0, False);
        AddField('UAcesso', '', nxtDateTime, 0, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
{        with AddIndex('Iuuid', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('uuid'));}
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('ID'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
        with AddIndex('IClienteID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Cliente'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
        with AddIndex('IUAcesso', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('UAcesso'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            Ascend := False;
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

// Caixa
function __Caixa(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
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
        AddField('Descricao', '', nxtNullString, 35, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
          
      with EnsureIndicesDescriptor do
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
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

function __CC(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Cliente', '', nxtNulLString, 10, 0, False);
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('Caixa', '', nxtWord32, 0, 0, False);
        AddField('Open', '', nxtWord16, 0, 0, False);
        AddField('Tran', '', nxtWord32, 20, 0, False);
        AddField('Valor', '', nxtCurrency, 0, 0, False);
        AddField('Descr', '', nxtBlobMemo, 0, 0, False);
        AddField('ValorAnt', '', nxtCurrency, 0, 0, False);
        AddField('Func', '', nxtNullString, 30, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IClienteID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('IClienteDH', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
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

// Unidade
function __Unidade(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('Descricao', '', nxtNullString, 5, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do
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
        AddField('Nome', '', nxtNullString, 40, 0, False);
        AddField('Endereco', '', nxtNullString, 50, 0, False);
        AddField('Bairro', '', nxtNullString, 20, 0, False);
        AddField('Cidade', '', nxtNullString, 30, 0, False);
        AddField('UF', '', nxtNullString, 30, 0, False);
        AddField('CEP', '', nxtNullString, 10, 0, False);
        AddField('Sexo', 'M=Masculo, F=Feminino', nxtChar, 1, 0, False);
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        AddField('Cpf', '', nxtNullString, 20, 0, False);
        AddField('Rg', '', nxtNullString, 20, 0, False);
        AddField('Telefone', '', nxtNullString, 15, 0, False);
        AddField('Email', '', nxtBLOBMemo, 0, 0, False);
        AddField('Passaportes', '', nxtDouble, 10, 0, False);
        AddField('Pai', '', nxtNullString, 40, 0, False);
        AddField('Mae', '', nxtNullString, 40, 0, False);
        AddField('Senha', '', nxtNullString, 20, 0, False);
        AddField('UltVisita', '', nxtDateTime, 0, 0, False);
        AddField('Debito', '', nxtCurrency, 16, 0, False);
        AddField('Escola', '', nxtNullString, 40, 0, False);
        AddField('NickName', '', nxtNullString, 30, 0, False);
        AddField('DataNasc', '', nxtDateTime, 0, 0, False);
        AddField('Celular', '', nxtNullString, 15, 0, False);
        AddField('TemDebito', '', nxtBoolean, 0, 0, False);
        AddField('LimiteDebito', '', nxtCurrency, 16, 0, False);
        AddField('Foto', '', nxtBLOBGraphic, 0, 0, False);
        AddField('IncluidoEm', '', nxtDateTime, 0, 0, False);
        AddField('AlteradoEm', '', nxtDateTime, 0, 0, False);
        AddField('IncluidoPor', '', nxtNullString, 10, 0, False);
        AddField('AlteradoPor', '', nxtNullString, 10, 0, False);
        AddField('TitEleitor', '', nxtNullString, 13, 0, False);
        AddField('FidPontos', '', nxtDouble, 10, 0, False);
        AddField('FidTotal', '', nxtDouble, 10, 0, False);
        AddField('FidResg', '', nxtDouble, 10, 0, False);
        AddField('Aniversario', '', nxtNullString, 4, 0, False);
        AddField('SemFidelidade', '', nxtBoolean, 0, 0, False);
        AddField('TemCredito', '', nxtBoolean, 0, 0, False);

        with AddField('PJuridica', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;        
        
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
        with AddIndex('ICodigoKey', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('CodigoKey'));
        with AddIndex('IUltVisita', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('UltVisita'));
        with AddIndex('IAniversario', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          with Add(GetFieldFromName('Aniversario'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
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

        with AddIndex('ICPF', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('CPF'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
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
        AddField('FecharProgramas', '', nxtBoolean, 0, 0, False);
        AddField('AutoExecutar', '', nxtNullString, 200, 0, False);
        AddField('LimiteTempoPadrao', '', nxtDateTime, 0, 0, False);
        AddField('PacoteTempoReal', '', nxtBoolean, 0, 0, False);
        AddField('PermiteLoginSemCred', '', nxtBoolean, 0, 0, False);
        with AddField('AlteraLoginSemCred', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('EncerramentoPrePago', '', nxtByte, 3, 0, False);
        with AddField('EncerramentoCartao', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 1;
            
        with AddField('MeioPagto', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;            
            
        with AddField('TempoEPrePago', '', nxtWord16, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 60;
        with AddField('TempoECartao', '', nxtWord16, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 60;
        AddField('PermiteCapturaTela', '', nxtBoolean, 0, 0, False);
        with AddField('VariosTiposAcesso', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('ModoPagtoAcesso', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        with AddField('MostraPrePagoDec', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('MostraNomeMaq', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('AutoCad', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('QuickCad', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('CodProdutoDuplicados', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('TempoMaxAlerta', '', nxtDateTime, 0, 0, False);
        AddField('Abre1', '', nxtDateTime, 0, 0, False);
        AddField('Abre2', '', nxtDateTime, 0, 0, False);
        AddField('Abre3', '', nxtDateTime, 0, 0, False);
        AddField('Abre4', '', nxtDateTime, 0, 0, False);
        AddField('Abre5', '', nxtDateTime, 0, 0, False);
        AddField('Abre6', '', nxtDateTime, 0, 0, False);
        AddField('Abre7', '', nxtDateTime, 0, 0, False);
        AddField('Fecha1', '', nxtDateTime, 0, 0, False);
        AddField('Fecha2', '', nxtDateTime, 0, 0, False);
        AddField('Fecha3', '', nxtDateTime, 0, 0, False);
        AddField('Fecha4', '', nxtDateTime, 0, 0, False);
        AddField('Fecha5', '', nxtDateTime, 0, 0, False);
        AddField('Fecha6', '', nxtDateTime, 0, 0, False);
        AddField('Fecha7', '', nxtDateTime, 0, 0, False);
        AddField('CorLivre', '', nxtInt32, 10, 0, False);
        AddField('CorFLivre', '', nxtInt32, 10, 0, False);
        AddField('CorUsoPrePago', '', nxtInt32, 10, 0, False);
        AddField('CorFUsoPrePago', '', nxtInt32, 10, 0, False);
        AddField('CorUsoPosPago', '', nxtInt32, 10, 0, False);
        AddField('CorFUsoPosPago', '', nxtInt32, 10, 0, False);
        AddField('CorAguardaPagto', '', nxtInt32, 10, 0, False);
        AddField('CorFAguardaPagto', '', nxtInt32, 10, 0, False);
        AddField('CorManutencao', '', nxtInt32, 10, 0, False);
        AddField('CorFManutencao', '', nxtInt32, 10, 0, False);
        AddField('CorPausado', '', nxtInt32, 10, 0, False);
        AddField('CorFPausado', '', nxtInt32, 10, 0, False);
        AddField('CorDesktop', '', nxtInt32, 10, 0, False);
        AddField('CorFDesktop', '', nxtInt32, 10, 0, False);
        with AddField('CorMaqManut', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        with AddField('CorFMaqManut', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 12632256;
        with AddField('CorPrevisao', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 255;
        with AddField('CorFPrevisao', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 16777215;
        AddField('CampoLocalizaCli', '0=nome, 1=username, 2=código', nxtByte, 3, 0, False);
        AddField('ManterSaldoCaixa', '', nxtBoolean, 0, 0, False);
        AddField('NaoMostrarMsgDebito', '', nxtBoolean, 0, 0, False);
        with AddField('NaoCobrarImpFunc', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('Tolerancia', '', nxtDateTime, 0, 0, False);
        AddField('RegImp98', '', nxtBoolean, 0, 0, False);
        AddField('LimitePadraoDebito', '', nxtCurrency, 16, 0, False);
        AddField('RecPorta', '', nxtNullString, 100, 0, False);
        AddField('RecSalto', '', nxtWord16, 5, 0, False);
        AddField('RecLargura', '', nxtWord16, 5, 0, False);
        AddField('RecRodape', '', nxtBLOBMemo, 0, 0, False);
        AddField('RecImprimir', '', nxtByte, 3, 0, False);
        AddField('RecMatricial', '', nxtBoolean, 0, 0, False);
        AddField('RecTipoImpressora', '', nxtNullString, 32, 0, False);
        AddField('RecNomeLoja', '', nxtNullString, 40, 0, False);
        AddField('RecCortaFolha', '', nxtBoolean, 0, 0, False);
        
        with AddField('RecImprimeMeioPagto', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('RecPrefixoMeioPagto', '', nxtNullString, 30, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 'Pg.';
                        
        with AddField('MostraProgAtual', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        AddField('MostraObs', '', nxtBoolean, 0, 0, False);
        AddField('EscondeTextoBotoes', '', nxtBoolean, 0, 0, False);
        AddField('EscondeTipoAcesso', '', nxtBoolean, 0, 0, False);
        AddField('ExigirRG', '', nxtBoolean, 0, 0, False);
        AddField('TipoFDesktop', '', nxtNullString, 3, 0, False);
        AddField('TipoFLogin', '', nxtNullString, 3, 0, False);
        AddField('NumFDesktop', '', nxtInt32, 10, 0, False);
        AddField('NumFLogin', '', nxtInt32, 10, 0, False);
        AddField('FundoWeb', '', nxtBoolean, 0, 0, False);
        AddField('FundoWebURL', '', nxtBLOBMemo, 0, 0, False);
        AddField('MostrarApenasPIN', '', nxtBoolean, 0, 0, False);
        AddField('TextoPIN', '', nxtNullString, 30, 0, False);
        AddField('AlterarSenhaCli', '', nxtBoolean, 0, 0, False);
        AddField('VerSenhaCli', '', nxtBoolean, 0, 0, False);
        AddField('CliCadPadrao', '', nxtBoolean, 0, 0, False);
        with AddField('ControlaImp', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;           AddField('FiltrarWEB', '', nxtBoolean, 0, 0, False);
        AddField('SiteRedirFiltro', '', nxtNullString, 80, 0, False);
        AddField('PastaDownload', '', nxtNullString, 1024, 0, False);

        with AddField('MinutosDesligaMaq', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;

        with AddField('MinutosDesligaMon', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;

        with AddField('BloqDownload', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('BloqDownloadExe', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('BloqMenuIniciar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('BloqPainelCtrl', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('BloqCtrlAltDel', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('BloqExecutar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('BloqMeusLocaisRede', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('BloqMeuComputador', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('BloqLixeira', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('BloqMeusDocumentos', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('ClassicStartMenu', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('BloqTray', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('BloqBotaoDir', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('BloqToolbars', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('BloqPosPago', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('FiltrarDesktop', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('FiltrarMenuIniciar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('TempoB1', '', nxtWord16, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 10;
        with AddField('TempoB2', '', nxtWord16, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 15;
        with AddField('TempoB3', '', nxtWord16, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 30;
        with AddField('TempoB4', '', nxtWord16, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 60;
        with AddField('TempoB5', '', nxtWord16, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 120;
        with AddField('TempoB6', '', nxtWord16, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 180;
        AddField('PaginaInicial', '', nxtNullString, 200, 0, False);
        AddField('EsconderCronometro', '', nxtBoolean, 0, 0, False);
        AddField('AposEncerrar', '', nxtByte, 3, 0, False);
        AddField('AlinhaBarraGuard', '', nxtByte, 3, 0, False);
        AddField('NoNet', '', nxtByte, 3, 0, False);
        AddField('TempoSumirLogin', '', nxtWord16, 5, 0, False);
        AddField('EsconderDrives', '', nxtNullString, 30, 0, False);
        with AddField('EmailMetodo', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        AddField('EmailServ', '', nxtNullString, 50, 0, False);
        AddField('EmailUsername', '', nxtNullString, 50, 0, False);
        AddField('EmailSenha', '', nxtNullString, 50, 0, False);
        AddField('EmailDestino', '', nxtBLOBMemo, 0, 0, False);
        AddField('EmailIdent', '', nxtNullString, 20, 0, False);

        AddField('Flags', '', nxtBLOBMemo, 0, 0, False);

        with AddField('EmailEnviarCaixa', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('EmailConteudo', '', nxtNullString, 20, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := '11111111111111111111';

        with AddField('AlertaAssinatura', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('CredPadraoTipo', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 1;
        with AddField('CredPadraoCod', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        with AddField('PgVendas', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('PgVendaAvulsa', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('PgAcesso', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('PgTempo', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('PgImp', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('BloquearUsoEmHorarioNP', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('OpcaoChat', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        with AddField('SalvarCodUsername', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('ContinuarCredTempo', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('NaoGuardarCreditoCli', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('RelCaixaAuto', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('SincronizarHorarios', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('MostrarDebitoNoGuard', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('BloquearLoginAlemMaxDeb', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('ClienteNaoAlteraSenha', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('NaoObrigarSenhaCliente', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('NaoVenderAlemEstoque', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('CreditoComoValor', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('CliAvulsoNaoEncerra', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('AutoSortGridCaixa', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('AvisoFimTempoAdminS', '', nxtByte, 3, 0, False);
        with AddField('DetectarImpServ', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('AvisoCreditos', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('ClientePodeVerCred', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('ChatAlertaSonoro', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('ChatMostraNotificacao', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('ModoCredGuard', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        with AddField('MsgFimCred', '', nxtNullString, 150, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 'Você possui outros créditos que não podem ser utilizados no momento. Para maiores informações consulte o atendente.';
        with AddField('SemLogin', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('AutoObsAoCancelar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
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
            
        with AddField('CliCadNaoEncerra', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('ImpedirPosPago', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('AutoLigarMaqCli', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
            
        with AddField('Biometria', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
            
        with AddField('PMPausaAutomatica', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('PMConfirmaImpCliente', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('PMConfirmaImpAdmin', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('PMMostrarPaginasCli', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('PMMostrarValorCli', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('PMCalcValorCli', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;   
            
        with AddField('PMPromptValorCli', '', nxtNullString, 100, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 'Custo da Impressão: ';

        with AddField('PMObsValorCli', '', nxtNullString, 300, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := '* O custo pode variar dependendo do tipo da impressão (preto e branco/colorida)';

        AddField('PMPausarServ', '', nxtBoolean, 0, 0, False);
        AddField('PMNaoPausar', '', nxtBlobMemo, 0, 0, False);

        AddField('PMCotas', '', nxtBoolean, 0, 0, False);
        AddField('PMCotasMaxPagDia', '', nxtWord32, 10, 0, False);
        AddField('PMCotasMaxPagMes', '', nxtWord32, 10, 0, False);
        
        with AddField('PMCotasOpCota', '0-confirmar impressao, 1-liberar automaticamente', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        
        with AddField('PMCotasOpExcesso', '0-atendente pode liberar, 1-cancelar imp, 2-cobrar', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        
        AddField('PMCotasMaxExcesso', '', nxtWord32, 10, 0, False);
        AddField('PMCotasPorCli', '', nxtBoolean, 0, 0, False);

        with AddField('PMPDF', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('PMPDFPrintEng', '', nxtByte, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := printeng_clprint;

        with AddField('PMReviewCli', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
            
        with AddField('PMReviewAdmin', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
            
        with AddField('PubHomePage', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('PubAd', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('PubToolbar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('MaxTempoSessao', '', nxtWord16, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;

        AddField('TarifaPadrao', '', nxtInt32, 0, 0, False);
        
        with AddField('TarifaPorHorario', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('BloqueiaCliAvulso', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
            
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

        with AddField('BRT', '', nxtWord16, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 60;

        with AddField('DTol', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 5;

        AddField('DVA', '', nxtDateTime, 0, 0, False);

        AddField('ProxAvisoAss', '', nxtDateTime, 0, 0, False);
        
        with AddField('PreLib', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
            
        with AddField('ExCookie', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('HPOpenBef', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        AddField('CamposCliCC', '', nxtBLOBMemo, 0, 0, False);

        with AddField('CliCongelado', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;  

        with AddField('SenhaAdminOk', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('QtdMaqOk', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('PosLogin', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := poslogin_centro;

        with AddField('HomePage_AddConta', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;

        with AddField('HomePage_Tab', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        AddField('HomePage_LastURL', '', nxtDateTime, 0, 0, False);
        AddField('HomePage_URL', '', nxtNullString, 300, 0, False);
        AddField('HomePage_Params', '', nxtNullString, 300, 0, False);
        AddField('Sky_Params', '', nxtNullString, 300, 0, False);

        AddField('Banners', '', nxtBlobMemo, 0, 0, False);
        AddField('Botoes', '', nxtBlobMemo, 0, 0, False);

        AddField('FaixaComanda', '', nxtNullString, 100, 0, False);
        
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

        AddField('Urls', '', nxtBLOBMemo, 0, 0, False);
            
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
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// EmailCorpo
function __EmailCorpo(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Corpo', '', nxtBLOBMemo, 0, 0, False);
        AddField('Destino', '', nxtBLOBMemo, 0, 0, False);
        AddField('Anexos', '', nxtBLOBMemo, 0, 0, False);
        AddField('Assunto', '', nxtNullString, 100, 0, False);
        AddField('Inclusao', '', nxtDateTime, 0, 0, False);
        AddField('Restam', '', nxtInt32, 10, 0, False);
        AddField('EnviarEm', '', nxtDateTime, 0, 0, False);
        AddField('Processou', '', nxtBoolean, 0, 0, False);
        AddField('ApagarAnexosAposEnvio', '', nxtBoolean, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('IProcessou', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Processou'));
          Add(GetFieldFromName('EnviarEm'));
        end;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// EmailCriar
function __EmailCriar(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Tipo', '', nxtInt32, 10, 0, False);
        AddField('Parametros', '', nxtBLOBMemo, 0, 0, False);
        AddField('Destino', '', nxtBLOBMemo, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// EmailEnvio
function __EmailEnvio(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Corpo', '', nxtInt32, 10, 0, False);
        AddField('Destino', '', nxtBLOBMemo, 0, 0, False);
        AddField('Inclusao', '', nxtDateTime, 0, 0, False);
        AddField('Envio', '', nxtDateTime, 0, 0, False);
        AddField('Tentativas', '', nxtWord16, 5, 0, False);
        AddField('Enviar', '', nxtBoolean, 0, 0, False);
        AddField('MsgErro', '', nxtBLOBMemo, 0, 0, False);
        AddField('OK', '', nxtBoolean, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('ICorpo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Corpo'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('IEnviar', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Enviar'));
          Add(GetFieldFromName('OK'));
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

function __Post(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Parametros', '', nxtBLOBMemo, 0, 0, False);
        AddField('Host', '', nxtNullString, 255, 0, False);
        AddField('URL', '', nxtNullString, 255, 0, False);
        AddField('ApagarArq', '', nxtBoolean, 0, 0, False);
        AddField('Arq', '', nxtNullString, 255, 0, False);
        AddField('Inclusao', '', nxtDateTime, 0, 0, False);
        AddField('Envio', '', nxtDateTime, 0, 0, False);
        AddField('Tentativas', '', nxtWord16, 5, 0, False);
        AddField('Enviar', '', nxtBoolean, 0, 0, False);
        AddField('MsgErro', '', nxtBLOBMemo, 0, 0, False);
        AddField('OK', '', nxtBoolean, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('IEnviar', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Enviar'));
          Add(GetFieldFromName('OK'));
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

// Espera
function __Espera(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Pos', '', nxtInt32, 10, 0, False);
        AddField('Cliente', '', nxtInt32, 10, 0, False);
        AddField('NomeCliente', '', nxtNullString, 50, 0, False);
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('Previsao', '', nxtDateTime, 0, 0, False);
        AddField('PrevMaq', '', nxtWord16, 5, 0, False);
        AddField('PrevSessao', '', nxtInt32, 10, 0, False);
        AddField('Obs', '', nxtNullString, 50, 0, False);
        AddField('Cartao', '', nxtNullString, 20, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IPos', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Pos'));
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('IMaqSessao', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('PrevMaq'));
          Add(GetFieldFromName('PrevSessao'));
        end;
        with AddIndex('ICartao', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Cartao'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00030002;
              IgnoreKanaType := True;
              IgnoreNonSpace := True;
              Ignorewidth := True;
            end;
          end;
        with AddIndex('ICliente', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Cliente'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Label
{function __Label(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtGUID, 0, 0, False);
        AddField('RECVER', '', nxtWord32, 10, 0, False);
        AddField('Nome', '', nxtNullString, 40, 0, False);
        AddField('Obs', '', nxtBlobMemo, 0, 0, False);
        AddField('Report', '', nxtBLOB, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('RECVER'));
        with AddIndex('INome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Nome'), TnxTextKeyFieldDescriptor) as TnxTextKeyFieldDescriptor do
            IgnoreCase := True;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;}

// HCred
function __HCred(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('Tipo', '0=tempo, 1=valor', nxtByte, 3, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Sessao', '', nxtWord32, 10, 0, False);
        AddField('Tran', '', nxtWord32, 10, 0, False);
        AddField('SaldoAnt', '', nxtDouble, 0, 0, False);
        AddField('Quant', '', nxtDouble, 0, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('ICliTipoID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICliTipoDH', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('Tipo'));
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

// HPass
function __HPass(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Passaporte', '', nxtWord32, 10, 0, False);
        AddField('Sessao', '', nxtWord32, 10, 0, False);
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        with AddField('Cancelado', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('MinutosAnt', '', nxtDouble, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        AddField('MinutosUsados', '', nxtDouble, 0, 0, False);
        with AddField('Expirou', '', nxtBoolean, 0, 0, False) do
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
        with AddIndex('IPassSessao', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Passaporte'));
          Add(GetFieldFromName('Sessao'));
        end;
        with AddIndex('ISessaoPass', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Sessao'));
          Add(GetFieldFromName('Passaporte'));
        end;
        with AddIndex('IPassData', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Passaporte'));
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

// ITran
function __ITran(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
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
        AddField('ItemPos', '', nxtByte, 3, 0, False);
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

// Log
function __Log(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('DiaHora', '', nxtDateTime, 0, 0, False);
        AddField('Maquina', '', nxtWord16, 5, 0, False);
        AddField('Usuario', '', nxtNullString, 20, 0, False);
        AddField('Programa', '0=nenhum, 1=ncguard, 2=ncadmin, 3=ncserver', nxtByte, 3, 0, False);
        AddField('Operacao', '', nxtNullString, 70, 0, False);
        AddField('Horas', '', nxtDateTime, 0, 0, False);
        AddField('Dias', '', nxtWord16, 5, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('IDiaHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('DiaHora'));
        with AddIndex('IUsuarioNumSeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('IUsuarioDiaHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          with Add(GetFieldFromName('Usuario'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
          Add(GetFieldFromName('DiaHora'));
        end;
        with AddIndex('IProgramaMaq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Programa'));
          Add(GetFieldFromName('Maquina'));
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

// Maq
function __Maq(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('Numero', '', nxtWord16, 5, 0, False);
        AddField('Nome', '', nxtNullString, 30, 0, False);
        AddField('Menu', '', nxtBLOBMemo, 0, 0, False);
        AddField('Recursos', '', nxtBLOBMemo, 0, 0, False);
        AddField('ComputerName', '', nxtNullString, 200, 0, False);
        with AddField('TipoAcesso', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := -1;
        with AddField('EmManutencao', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        AddField('IP', '', nxtNullString, 15, 0, False);
        AddField('MacAddress', '', nxtNullString, 20, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('INumero', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Numero'));
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Maquina
function __Maquina(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('Numero', '', nxtWord16, 5, 0, False);
        AddField('Nome', '', nxtNullString, 30, 0, False);
        AddField('Menu', '', nxtBLOBMemo, 0, 0, False);
        AddField('Recursos', '', nxtBLOBMemo, 0, 0, False);
        AddField('ComputerName', '', nxtNullString, 200, 0, False);
        with AddField('TipoAcesso', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := -1;
        with AddField('EmManutencao', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        AddField('URLLogin', '', nxtBLOBMemo, 0, 0, False);
        AddField('ProgramaAtual', '', nxtBLOBMemo, 0, 0, False);
        AddField('SiteAtual', '', nxtBLOBMemo, 0, 0, False);
        AddField('IPConfig', '', nxtBLOBMemo, 0, 0, False);
        AddField('IP', '', nxtNullString, 30, 0, False);
        AddField('MacAddress', '', nxtNullString, 20, 0, False);
        AddField('RAM', '', nxtWord32, 10, 0, False);
        AddField('CPU', '', nxtNullString, 50, 0, False);
        AddField('OS', '', nxtNullString, 50, 0, False);
        AddField('Printers', '', nxtBlobMemo, 0, 0, False);
        AddField('Drives', '', nxtNullString, 25, 0, False);
        AddField('HDTotal', '', nxtWord32, 10, 0, False);
        AddField('HDFree', '', nxtWord32, 10, 0, False);
        AddField('Patrocinio', '', nxtNullString, 20, 0, False);
        AddField('DisplayH', '', nxtWord16, 5, 0, False);
        AddField('DisplayW', '', nxtWord16, 5, 0, False);
        AddField('DisplayWH', '', nxtNullString, 10, 0, False);
        AddField('LastScan', '', nxtDateTime, 0, 0, False);
        AddField('SessionID', '', nxtWord32, 0, 0, False);
        AddField('ConnectTime', '', nxtDateTime, 0, 0, False);
        
        with AddField('AvisaFimTempo', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
            
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
            
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('INumero', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Numero'));
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
        AddField('ID_ref', '', nxtWord32, 0, 0, False);
        AddField('Tran', '', nxtWord32, 10, 0, False);
        AddField('Produto', '', nxtWord32, 10, 0, False);
        AddField('Quant', '', nxtDouble, 0, 0, False);
        AddField('Unitario', '', nxtCurrency, 16, 0, False);
        AddField('Total', '', nxtCurrency, 16, 0, False);
        AddField('CustoU', '', nxtCurrency, 16, 0, False);
        AddField('Item', '', nxtByte, 3, 0, False);
        AddField('Desconto', '', nxtCurrency, 16, 0, False);
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
        AddField('Comissao', '', nxtCurrency, 0, 0, False);
        AddField('ComissaoPerc', '', nxtDouble, 0, 0, False);
        AddField('ComissaoLucro', '', nxtBoolean, 0, 0, False);
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
        with AddIndex('IContato', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('DataHora'));
        end;
        with AddIndex('ITipoTranCaixa', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoTran'));
          Add(GetFieldFromName('Caixa'));
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
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Mensagem para clientes
function __MsgCli(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Titulo', '', nxtNullString, 50, 0, False);
        AddField('Texto', '', nxtBLOBMemo, 0, 0, False);
        AddField('Ref', '', nxtWord32, 10, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IClienteID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('IRef', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('Ref'));
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('ID'));
      end;
        
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Ocupacao
function __Ocupacao(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Sessao', '', nxtWord32, 10, 0, False);
        AddField('Maq', '', nxtWord32, 10, 0, False);
        AddField('Data', '', nxtDate, 0, 0, False);
        AddField('Hora', '', nxtByte, 3, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Func', '', nxtNullString, 20, 0, False);
        with AddField('TipoCli', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        AddField('MinutosU', '', nxtDouble, 0, 0, False);
        AddField('MinutosP', '', nxtDouble, 0, 0, False);
        AddField('Caixa', '', nxtWord32, 10, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
        
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('ISessao', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Sessao'));
          Add(GetFieldFromName('Hora'));
        end;
        with AddIndex('IData', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Data'));
          Add(GetFieldFromName('Hora'));
        end;
        with AddIndex('ICaixa', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('Hora'));
        end;
        with AddIndex('ITipoCliCaixa', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoCli'));
          Add(GetFieldFromName('Caixa'));
        end;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Passaporte
function __Passaporte(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Nome', '', nxtNullString, 50, 0, False);
        AddField('TipoPass', '', nxtInt32, 10, 0, False);
        AddField('Cliente', '', nxtInt32, 10, 0, False);
        AddField('Expirou', '', nxtBoolean, 0, 0, False);
        AddField('Senha', '', nxtNullString, 20, 0, False);
        AddField('PrimeiroUso', '', nxtDateTime, 0, 0, False);
        AddField('TipoAcesso', '', nxtInt32, 10, 0, False);
        AddField('TipoExp', '', nxtByte, 1, 0, False);
        AddField('ExpirarEm', '', nxtDateTime, 0, 0, False);
        AddField('MaxSegundos', '', nxtWord32, 10, 0, False);
        AddField('Segundos', '', nxtWord32, 10, 0, False);
        AddField('Acessos', '', nxtWord32, 10, 0, False);
        AddField('Dia1', '', nxtWord32, 10, 0, False);
        AddField('Dia2', '', nxtWord32, 10, 0, False);
        AddField('Dia3', '', nxtWord32, 10, 0, False);
        AddField('Dia4', '', nxtWord32, 10, 0, False);
        AddField('Dia5', '', nxtWord32, 10, 0, False);
        AddField('Dia6', '', nxtWord32, 10, 0, False);
        AddField('Dia7', '', nxtWord32, 10, 0, False);
        AddField('Tran', '', nxtWord32, 10, 0, False);
        AddField('DataCompra', '', nxtDateTime, 0, 0, False);
        AddField('Cartao', '', nxtBoolean, 0, 0, False);
        with AddField('Valido', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        AddField('Valor', '', nxtCurrency, 16, 0, False);
        AddField('Sessao', '', nxtWord32, 10, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll, 'Exp'), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('ICliExpID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('Expirou'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ITransacao', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Tran'));
        with AddIndex('ICliDataCompra', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('DataCompra'));
        end;
        with AddIndex('IExpID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Expirou'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICartaoExpID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cartao'));
          Add(GetFieldFromName('Expirou'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICartaoID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cartao'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ISenha', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Senha'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00030002;
              IgnoreKanaType := True;
              IgnoreNonSpace := True;
              Ignorewidth := True;
            end;
          end;
        with AddIndex('ISessao', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Sessao'));
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
        AddField('Codigo', '', nxtNullString, 30, 0, False);
        AddField('Descricao', '', nxtNullString, 100, 0, False);
        AddField('Unid', '', nxtNullString, 5, 0, False);
        AddField('Preco', '', nxtCurrency, 5, 0, False);
        AddField('PrecoAuto', '', nxtBoolean, 0, 0, False);
        AddField('Margem', '', nxtDouble, 0, 0, False);
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        AddField('Imagem', '', nxtBLOBGraphic, 0, 0, False);
        AddField('Categoria', '', nxtNullString, 35, 0, False);
        AddField('Fornecedor', '', nxtWord32, 10, 0, False);
        AddField('SubCateg', '', nxtNullString, 35, 0, False);
        AddField('EstoqueAtual', '', nxtExtended, 0, 0, False);
        AddField('EstoquePend', '', nxtExtended, 0, 0, False);
        AddField('EstoqueTot', '', nxtExtended, 0, 0, False);
        AddField('brtrib', '', nxtWord16, 0, 0, False);
        
        AddField('CustoUnitario', '', nxtCurrency, 16, 0, False);
        
        AddField('PodeAlterarPreco', '', nxtBoolean, 0, 0, False);
        AddField('PermiteVendaFracionada', '', nxtBoolean, 0, 0, False);
        AddField('NaoControlaEstoque', '', nxtBoolean, 0, 0, False);
        AddField('EstoqueMin', '', nxtExtended, 0, 0, False);
        AddField('EstoqueMax', '', nxtExtended, 0, 0, False);
        AddField('AbaixoMin', '', nxtBoolean, 0, 0, False);
        AddField('AbaixoMinDesde', '', nxtDateTime, 0, 0, False);
        AddField('EstoqueRepor', '', nxtExtended, 0, 0, False);
        
        AddField('ComissaoPerc', '', nxtDouble, 0, 0, False);
        AddField('ComissaoLucro', '', nxtBoolean, 0, 0, False);

        with AddField('Ativo', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        
        with AddField('Fidelidade', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
            
        AddField('FidPontos', '', nxtInt32, 10, 0, False);
        AddField('NCM', '', nxtNullString, 8, 0, False);
        AddField('NCM_Ex', '', nxtNullString, 2, 0, False);
        
        with AddField('CadastroRapido', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('IncluidoEm', '', nxtDateTime, 0, 0, False) do
          AddDefaultValue(TnxCurrentDateTimeDefaultValueDescriptor);
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
        with AddIndex('ICodigo', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Codigo'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
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

// Sessao
function __Sessao(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Inicio', '', nxtDateTime, 0, 0, False);
        AddField('Termino', '', nxtDateTime, 0, 0, False);
        AddField('MinutosR', 'Em minutos', nxtDouble, 0, 0, False);
        AddField('MinutosC', 'Em minutos', nxtDouble, 0, 0, False);
        AddField('Maq', '', nxtWord16, 5, 0, False);
        AddField('MaqI', '', nxtWord16, 5, 0, False);

        with AddField('Encerrou', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
            
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('TransfMaq', 'Houve transferencia de maquina', nxtBoolean, 0, 0, False);
        with AddField('TipoCli', '0=normal, 1=gratis, 2=manutencao', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        with AddField('Cancelado', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('Total', '', nxtCurrency, 16, 0, False);
        AddField('Desconto', '', nxtCurrency, 16, 0, False);
        AddField('PagoPost', '', nxtCurrency, 16, 0, False);
        AddField('DescPost', '', nxtCurrency, 16, 0, False);
        AddField('Pago', '', nxtCurrency, 16, 0, False);
        AddField('NomeCliente', '', nxtNullString, 50, 0, False);
        AddField('FuncI', '', nxtNullString, 30, 0, False);
        AddField('FuncF', '', nxtNullString, 30, 0, False);
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        AddField('TipoAcesso', '', nxtInt32, 10, 0, False);
        AddField('CaixaI', '', nxtWord32, 10, 0, False);
        AddField('CaixaF', '', nxtWord32, 10, 0, False);
        AddField('TicksI', '', nxtInt32, 10, 0, False);
        AddField('Pausado', '', nxtBoolean, 0, 0, False);
        AddField('InicioPausa', '', nxtWord32, 10, 0, False);
        AddField('MinTicksUsados', '', nxtWord32, 10, 0, False);
        AddField('MinTicksTotal', '', nxtWord32, 10, 0, False);
        AddField('FimTicksUsados', '', nxtWord32, 10, 0, False);
        AddField('FimTicksTotal', '', nxtWord32, 10, 0, False);
        AddField('StrPausas', '', nxtBLOBMemo, 0, 0, False);
        AddField('StrTransfMaq', '', nxtBLOBMemo, 0, 0, False);
        AddField('StrFechamentoCaixa', '', nxtBLOBMemo, 0, 0, False);
        AddField('MinutosCli', '', nxtExtended, 0, 0, False);
        AddField('MinutosPrev', '', nxtExtended, 0, 0, False);
        AddField('MinutosMax', '', nxtExtended, 0, 0, False);
        AddField('MinutosCliU', '', nxtExtended, 0, 0, False);
        AddField('ValorCli', '', nxtCurrency, 16, 0, False);
        AddField('ValorCliU', '', nxtExtended, 0, 0, False);
        AddField('TranI', '', nxtInt32, 10, 0, False);
        AddField('TranF', '', nxtInt32, 10, 0, False);
        AddField('PermitirDownload', '', nxtBoolean, 0, 0, False);
        AddField('PermitirDownloadExe', '', nxtBoolean, 0, 0, False);
        AddField('FiltrarWEB', '', nxtBoolean, 0, 0, False);
        AddField('VersaoRegistro', '', nxtWord32, 10, 0, False);
        AddField('IPs', '', nxtBlobMemo, 0, 0, False);
        
        with AddField('DesktopSinc', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;

        with AddField('CartaoTempo', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('HP1', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP2', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP3', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP4', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP5', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP6', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP7', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('DisableAD', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('JobID', '', nxtWord32, 0, 0, False);  
        AddField('JobPages', '', nxtWord16, 0, 0, False); 
        
        with AddField('TipoMaq', '0=Maq/Mesa, 1=Comanda, 2=Avulso', nxtByte, 3, 0, False) do
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
        with AddIndex('IClienteInicio', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('Inicio'));
        end;
        with AddIndex('IEncerrou', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Encerrou'));
          Add(GetFieldFromName('CaixaF'));
        end;
        with AddIndex('IEncerrouCli', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Encerrou'));
          Add(GetFieldFromName('Cliente'));
        end;
        with AddIndex('ICaixaF', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('CaixaF'));
          Add(GetFieldFromName('TipoCli'));
        end;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Tempo
function __Credito(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
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

// TipoAcesso
function __TipoAcesso(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtWord16, 5, 0, False);
        AddField('Nome', '', nxtNullString, 30, 0, False);
        AddField('TarifaPadrao', '', nxtInt32, 10, 0, False);
        AddField('HoraTarifaStr', '', nxtBlobMemo, 0, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('INome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
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

// TipoPass
function __TipoPass(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Nome', '', nxtNullString, 50, 0, False);
        AddField('Valor', '', nxtCurrency, 16, 0, False);
        AddField('TipoAcesso', '', nxtInt32, 10, 0, False);
        AddField('TipoExp', '', nxtByte, 1, 0, False);
        AddField('ExpirarEm', '', nxtDateTime, 0, 0, False);
        AddField('MaxSegundos', '', nxtWord32, 10, 0, False);
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        AddField('Dia1', '', nxtWord32, 10, 0, False);
        AddField('Dia2', '', nxtWord32, 10, 0, False);
        AddField('Dia3', '', nxtWord32, 10, 0, False);
        AddField('Dia4', '', nxtWord32, 10, 0, False);
        AddField('Dia5', '', nxtWord32, 10, 0, False);
        AddField('Dia6', '', nxtWord32, 10, 0, False);
        AddField('Dia7', '', nxtWord32, 10, 0, False);
        with AddField('Fidelidade', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('FidPontos', '', nxtInt32, 10, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
        with EnsureIndicesDescriptor do 
          with AddIndex('IRecVer', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
            Add(GetFieldFromName('RecVer'));
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
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
        AddField('IncluidoEm', '', nxtDateTime, 0, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Tipo', '', nxtByte, 3, 0, False);
        AddField('OpDevValor', '', nxtByte, 3, 0, False);
        AddField('Func', '', nxtNullString, 20, 0, False);
        AddField('Total', '', nxtCurrency, 16, 0, False);
        AddField('Desconto', '', nxtCurrency, 16, 0, False);
        AddField('DescPerc', '', nxtDouble, 16, 0, False);

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
        AddField('NomeCliente', '', nxtNullString, 50, 0, False);
        AddField('Sessao', '', nxtWord32, 10, 0, False);
        AddField('Descr', '', nxtNullString, 100, 0, False);
        AddField('QtdTempo', '', nxtDouble, 0, 0, False);
        AddField('CredValor', '', nxtBoolean, 0, 0, False);
        AddField('FidResgate', '', nxtBoolean, 0, 0, False);
        AddField('AmbNFe', '', nxtByte, 0, 0, False);
        AddField('StatusCanc', '', nxtByte, 0, 0, False);
        AddField('Extra', '', nxtBlobMemo, 0, 0, False);
        AddField('PagFunc', '', nxtNullString, 20, 0, False);
        with AddField('PagPend', '', nxtBoolean, 0, 0, False) do
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
        with AddIndex('ICliDH', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
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
        with AddIndex('ICaixaPagID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('CaixaPag'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('IPagPendID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('PagPend'));
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
        with AddIndex('IStatusNFE', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('StatusNFE'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICanceladoStatusNFE', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('StatusNFE'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICanceladoAmbStatusNFE', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cancelado'));
          Add(GetFieldFromName('AmbNFe'));
          Add(GetFieldFromName('StatusNFE'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('IChaveNFE', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('ChaveNFE'));
        with AddIndex('IStatusCanc', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do 
          Add(GetFieldFromName('StatusCanc'));
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
        AddField('Username', '', nxtNullString, 20, 0, False);
        AddField('Nome', '', nxtNullString, 40, 0, False);
        AddField('Admin', '', nxtBoolean, 0, 0, False);
        AddField('Senha', '', nxtNullString, 30, 0, False);
        AddField('Grupos', '', nxtBLOBMemo, 0, 0, False);
        AddField('Direitos', '', nxtBLOBMemo, 0, 0, False);
        AddField('MaxTempoManut', '', nxtInt32, 10, 0, False);
        AddField('MaxMaqManut', '', nxtInt32, 10, 0, False);
        AddField('LimiteDesc', '', nxtDouble, 16, 0, False);
        AddField('RecVer', '', nxtWord32, 0, 0, False);
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
        AddField('IP',       '', nxtNullString, 15, 0, False);
        AddField('campanha', '', nxtNullString, 50, 0, False);
        AddField('utmccn',   '', nxtNullString, 250, 0, False);
        AddField('utmctr',   '', nxtNullString, 250, 0, False);
        AddField('utmcct',   '', nxtNullString, 250, 0, False);
        AddField('utmcmd',   '', nxtNullString, 250, 0, False);
        AddField('utmcsr',   '', nxtNullString, 250, 0, False);
      end;
      with EnsureIndicesDescriptor do 
        with AddIndex('IIP', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('IP'));
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

// Usuario
function __Especies(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtWord16, 5, 0, False);
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
      with EnsureIndicesDescriptor do 
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
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
        AddField('Caixa', '', nxtWord32, 10, 0, False);
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('Tran', '', nxtWord32, 10, 0, False);
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
      end;    
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;


type
  TnxcgTableInfo = record
    TableName : String;
    Callback : TnxcgCreateDictCallback;
  end;

const
  TableInfos : array[0..53] of TnxcgTableInfo =
    ((TableName : 'Biometria'; Callback : __Biometria),
     (TableName : 'Caixa'; Callback : __Caixa),
     (TableName : 'Categoria'; Callback : __Categoria),
     (TableName : 'CC'; Callback : __CC),
     (TableName : 'Cliente'; Callback : __Cliente),
     (TableName : 'Config'; Callback : __Config),
     (TableName : 'Debito'; Callback : __Debito),
     (TableName : 'EmailCorpo'; Callback : __EmailCorpo),
     (TableName : 'EmailCriar'; Callback : __EmailCriar),
     (TableName : 'EmailEnvio'; Callback : __EmailEnvio),
     (TableName : 'Espera'; Callback : __Espera),
     (TableName : 'HCred'; Callback : __HCred),
     (TableName : 'HPass'; Callback : __HPass),
     (TableName : 'ITran'; Callback : __ITran),
     (TableName : 'Layout'; Callback : __Layout),
     (TableName : 'Log'; Callback : __Log),
     (TableName : 'Maq'; Callback : __Maq),
     (TableName : 'Maquina'; Callback : __Maquina),
     (TableName : 'MovEst'; Callback : __MovEst),
     (TableName : 'MsgCli'; Callback : __MsgCli),
     (TableName : 'NCM'; Callback : __NCM),
     (TableName : 'Ocupacao'; Callback : __Ocupacao),
     (TableName : 'Passaporte'; Callback : __Passaporte),
     (TableName : 'Produto'; Callback : __Produto),
     (TableName : 'Sessao'; Callback : __Sessao),
     (TableName : 'Credito'; Callback : __Credito),
     (TableName : 'TipoAcesso'; Callback : __TipoAcesso),
     (TableName : 'TipoPass'; Callback : __TipoPass),
     (TableName : 'Tran'; Callback : __Tran),
     (TableName : 'Usuario'; Callback : __Usuario),
     (TableName : 'infoCampanha'; Callback: __infoCampanha),
     (TableName : 'temp'; Callback: __temp),
     (TableName : 'Post'; Callback: __Post),
     (TableName : 'PostMS'; Callback: __PostMS),
     (TableName : 'Unidade'; Callback: __Unidade),
     (TableName : 'Especie'; Callback: __Especies),
     (TableName : 'PagEspecies'; Callback: __PagEspecies),
     (TableName : 'IOrcamento'; Callback: __IOrcamento),
     (TableName : 'Orcamento'; Callback: __Orcamento), 
     (TableName : 'syslog'; Callback: __syslog),
     (TableName : 'Doc'; Callback: __Doc),
     (TableName : 'Terminal'; Callback: __Terminal),
     (TableName : 'RecDel'; Callback: __RecDel),
     (TableName : 'CFOP'; Callback : __CFOP),
     (TableName : 'CSOSN'; Callback : __CSOSN),
     (TableName : 'CST'; Callback : __CST),
     (TableName : 'MunBr'; Callback : __MunBr),
     (TableName : 'NFCONFIG'; Callback : __NFCONFIG),
     (TableName : 'NFE'; Callback : __NFE),
     (TableName : 'BRTrib'; Callback : __BRTrib),
     (TableName : 'ConvUnid'; Callback : __ConvUnid),
     (TableName : 'ProdFor'; Callback : __ProdFor),
     (TableName : 'LinkXML'; Callback : __LinkXML),
     (TableName : 'TipoME'; Callback : __TipoME));

function TableCount: Integer;
begin
  Result := Length(TableInfos);
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

function GetTableID(aTable: String): Integer;
var I : Integer;
begin
  for I := Low(TableInfos) to High(TableInfos) do 
    if SameText(TableInfos[I].TableName, aTable) then begin
      Result := I;
      Exit;
    end;
  Result := -1;  
end;

function GetTablePrimaryKey(aTable: String): String;
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

procedure GetTableNames(aSL: TStrings);  
var I : Integer;
begin
  aSL.Clear;
  for I := Low(TableInfos) to High(TableInfos) do 
    aSL.Add(TableInfos[I].TableName);
end;

function GetTableDictionary(aDatabase : TnxDatabase; const aTableName : String): TnxDataDictionary;
var
  I : Integer;
begin
  Result := nil;
  for I := Low(TableInfos) to High(TableInfos) do
    if SameText(aTableName, TableInfos[I].TableName) then begin
      Result := TableInfos[I].Callback(aDatabase);
      break;
    end;
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
    for I := Low(TableInfos) to High(TableInfos) do begin
      gEvolvingTableName := TableInfos[I].TableName;
      BuildAndEvolveTable(aDatabase,
        TableInfos[I].TableName, aPassword,
        TableInfos[I].Callback, aProgressCallback, CancelTask);
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
  for I := Low(TableInfos) to High(TableInfos) do begin
    RestructureTable(aDatabase,
      TableInfos[I].TableName, aPassword,
      TableInfos[I].Callback(aDatabase), aProgressCallback, CancelTask, True);
    if CancelTask then
      Exit;
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
  for I := Low(TableInfos) to High(TableInfos) do begin
    PackTable(aDatabase, TableInfos[I].TableName,
      aPassword, aProgressCallback, CancelTask);
    if CancelTask then
      Exit;
  end;
end;

var i: integer;

initialization
  gTableNames := TStringList.Create;
  for I := Low(TableInfos) to High(TableInfos) do
    gTableNames.Add(UpperCase(TableInfos[i].TableName));

finalization
  gTableNames.Free;    

end.
