(**********************************************************************************)
(* Code generated with NexusDB Enterprise Manager Data Dictionary Code Generator  *)
(*                                                                                *)
(* Version: 3,1004                                                                *)
(*                                                                                *)
(**********************************************************************************)

unit NewTableDefs;

interface

uses
  nxdb,
  nxsdTypes,
  nxsdDataDictionary;

type
  TnxcgProgressCallback = 
    procedure(const aTableName : String;
      var aStatus : TnxTaskStatus;
      var aCancel : Boolean) of object;

type
  TnxcgGetPasswordCallback =
    procedure(const aTableName : String;
      var aPassword : string) of object;

  procedure BuildAndEvolveDatabase(aDatabase : TnxDatabase;
    aProgressCallback : TnxcgProgressCallback = nil;
    aGetPasswordCallback : TnxcgGetPasswordCallback = nil;
    const aPassword : String = '');

  function TableCount: Integer;
  function GetTableDictionary(aDatabase : TnxDatabase; const aTableName : String): TnxDataDictionary;

implementation

uses
  {$IFDEF NXWINAPI}nxWinAPI{$ELSE}Windows{$ENDIF},
  Classes,
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
  nxsdTableMapperDescriptor;

type
  TnxcgCreateDictCallback = function(aDatabase : TnxDatabase): TnxDataDictionary;

// Aviso
function __Aviso(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('Minutos', '', nxtWord16, 5, 0, False);
        AddField('AvisoTexto', '', nxtNullString, 50, 0, False);
        AddField('SegAvisoTexto', '', nxtByte, 3, 0, False);
        AddField('Tipo', '', nxtByte, 3, 0, False);
        AddField('PiscarAvisoTexto', '', nxtBoolean, 0, 0, False);
        AddField('Som', '', nxtBLOB, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('IMinutos', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Minutos'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
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
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Template', '', nxtBLOB, 0, 0, False);
        AddField('UAcesso', '', nxtDateTime, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
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
        AddField('IDLivre', '', nxtNullString, 10, 0, False);
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

// CategFW
function __CategFW(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Nome', '', nxtNullString, 40, 0, False);
        with AddField('Bloquear', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('INome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
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
      with FieldsDescriptor do
        AddField('Descricao', '', nxtNullString, 35, 0, False);
      with EnsureIndicesDescriptor do
        with AddIndex('Nome', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Descricao'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Chat
function __Chat(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('De', '', nxtInt32, 10, 0, False);
        AddField('Para', '', nxtInt32, 10, 0, False);
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('Texto', '', nxtBLOBMemo, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('IDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('DataHora'));
        with AddIndex('IDe', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('De'));
          Add(GetFieldFromName('DataHora'));
        end;
        with AddIndex('IPara', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Para'));
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

// CHorario
function __CHorario(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Nome', '', nxtNullString, 40, 0, False);
        with AddField('HP1', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP2', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP3', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP4', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP5', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP6', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP7', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
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

// Cliente
function __Cliente(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Nome', '', nxtNullString, 40, 0, False);
        AddField('Endereco', '', nxtNullString, 50, 0, False);
        AddField('Bairro', '', nxtNullString, 20, 0, False);
        AddField('Cidade', '', nxtNullString, 30, 0, False);
        AddField('UF', '', nxtNullString, 2, 0, False);
        AddField('CEP', '', nxtNullString, 10, 0, False);
        AddField('Sexo', 'M=Masculo, F=Feminino', nxtChar, 1, 0, False);
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        AddField('Cpf', '', nxtNullString, 14, 0, False);
        AddField('Rg', '', nxtNullString, 14, 0, False);
        AddField('Telefone', '', nxtNullString, 15, 0, False);
        AddField('Email', '', nxtBLOBMemo, 0, 0, False);
        AddField('Minutos', '', nxtDouble, 10, 0, False);
        AddField('Passaportes', '', nxtDouble, 10, 0, False);
        AddField('MinutosUsados', '', nxtDouble, 10, 0, False);
        AddField('MinutosIniciais', '', nxtDouble, 10, 0, False);
        AddField('Isento', '', nxtBoolean, 0, 0, False);
        AddField('Username', '', nxtNullString, 40, 0, False);
        AddField('Pai', '', nxtNullString, 40, 0, False);
        AddField('Mae', '', nxtNullString, 40, 0, False);
        AddField('Senha', '', nxtNullString, 20, 0, False);
        AddField('UltVisita', '', nxtDateTime, 0, 0, False);
        AddField('Debito', '', nxtCurrency, 16, 0, False);
        AddField('Escola', '', nxtNullString, 40, 0, False);
        AddField('EscolaHI', '', nxtDateTime, 0, 0, False);
        AddField('EscolaHF', '', nxtDateTime, 0, 0, False);
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
        AddField('CotaImpEspecial', '', nxtBoolean, 0, 0, False);
        AddField('CotaImpDia', '', nxtWord32, 10, 0, False);
        AddField('CotaImpMes', '', nxtWord32, 10, 0, False);
        AddField('SemFidelidade', '', nxtBoolean, 0, 0, False);
        AddField('TemCredito', '', nxtBoolean, 0, 0, False);
        with AddField('NaoGuardarCredito', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('PermiteLoginSemCred', '', nxtBoolean, 0, 0, False);
        AddField('CHorario', '', nxtWord32, 10, 0, False);
        AddField('OpCHorario', '', nxtByte, 3, 0, False);
        with AddField('HP1', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP2', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP3', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP4', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP5', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP6', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('HP7', '', nxtWord32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 2147483647;
        with AddField('Inativo', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('TipoAcessoPref', '', nxtInt32, 10, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := -1;
        with AddField('Fornecedor', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('ValorCred', '', nxtCurrency, 16, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
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
        with AddIndex('IUsername', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Username'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
        with AddIndex('IFornecedorUsername', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Fornecedor'));
          with Add(GetFieldFromName('Username'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
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
        with AddIndex('IRg', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Rg'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
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
        AddField('CampoLocalizaCli', '0=nome, 1=username, 2=c�digo', nxtByte, 3, 0, False);
        AddField('ManterSaldoCaixa', '', nxtBoolean, 0, 0, False);
        AddField('NaoMostrarMsgDebito', '', nxtBoolean, 0, 0, False);
        with AddField('NaoCobrarImpFunc', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('Tolerancia', '', nxtDateTime, 0, 0, False);
        AddField('RegImp98', '', nxtBoolean, 0, 0, False);
        AddField('LimitePadraoDebito', '', nxtCurrency, 16, 0, False);
        AddField('RecPorta', '', nxtNullString, 10, 0, False);
        AddField('RecSalto', '', nxtWord16, 5, 0, False);
        AddField('RecLargura', '', nxtWord16, 5, 0, False);
        AddField('RecRodape', '', nxtBLOBMemo, 0, 0, False);
        AddField('RecImprimir', '', nxtByte, 3, 0, False);
        AddField('RecMatricial', '', nxtBoolean, 0, 0, False);
        AddField('RecNomeLoja', '', nxtNullString, 40, 0, False);
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
        AddField('ControlaImp', '', nxtByte, 3, 0, False);
        AddField('FiltrarWEB', '', nxtBoolean, 0, 0, False);
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
            AsVariant := 'Voc� possui outros cr�ditos que n�o podem ser utilizados no momento. Para maiores informa��es consulte o atendente.';
        with AddField('SemLogin', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('AutoObsAoCancelar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('FidAtivo', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('FidSessaoValor', '', nxtCurrency, 16, 0, False);
        AddField('FidSessaoPontos', '', nxtInt32, 10, 0, False);
        AddField('FidVendaValor', '', nxtCurrency, 16, 0, False);
        AddField('FidVendaPontos', '', nxtInt32, 10, 0, False);
        AddField('FidImpValor', '', nxtCurrency, 16, 0, False);
        AddField('FidImpPontos', '', nxtInt32, 10, 0, False);
        with AddField('FidParcial', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('FidAutoPremiar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('FidTipoPremioAuto', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        AddField('FidPremioAuto', '', nxtInt32, 10, 0, False);
        with AddField('FidMostrarSaldoGuard', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('FidMostrarSaldoAdmin', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('FidMsg', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('FidMsgTitulo', '', nxtNullString, 50, 0, False);
        AddField('FidMsgTexto', '', nxtBLOBMemo, 0, 0, False);
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
            AsVariant := False;
        with AddField('PMMostrarPaginasCli', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('PMMostrarValorCli', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('PMCalcValorCli', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        with AddField('PMPromptValorCli', '', nxtNullString, 100, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 'Custo da Impress�o: ';
        with AddField('PMObsValorCli', '', nxtNullString, 300, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := '* O custo pode variar dependendo do tipo da impress�o (preto e branco/colorida)';
        AddField('PMPausarServ', '', nxtBoolean, 0, 0, False);
        AddField('PMNaoPausar', '', nxtBLOBMemo, 0, 0, False);
        AddField('PMCotas', '', nxtBoolean, 0, 0, False);
        AddField('PMCotasMaxPagDia', '', nxtWord32, 10, 0, False);
        AddField('PMCotasMaxPagMes', '', nxtWord32, 10, 0, False);
        with AddField('PMCotasOpCota', '0-confirmar impressao, 1-liberar automaticamente', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        with AddField('PMCotasOpExcesso', '0-atendente pode liberar, 1-cancelar imp, 2-cobrar', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        AddField('PMCotasMaxExcesso', '', nxtWord32, 10, 0, False);
        AddField('PMCotasPorCli', '', nxtBoolean, 0, 0, False);
        with AddField('PMPDF', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('PMPDFPrintEng', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 1;
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
        with AddField('MaxTempoSessao', '', nxtWord16, 5, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        AddField('TarifaPadrao', '', nxtInt32, 10, 0, False);
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
            AsVariant := 0;
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

// ETar
function __ETar(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('TipoAcesso', '', nxtWord16, 5, 0, False);
        AddField('Cor', '', nxtInt32, 10, 0, False);
        AddField('Pos', '', nxtWord16, 5, 0, False);
        AddField('Valor', '', nxtCurrency, 16, 0, False);
        AddField('Tempo', '', nxtDateTime, 0, 0, False);
        AddField('ValorMin', '', nxtCurrency, 16, 0, False);
        AddField('Tolerancia', '', nxtDateTime, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('IPrim', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoAcesso'));
          Add(GetFieldFromName('Cor'));
          Add(GetFieldFromName('Pos'));
        end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// FilaImp
function __FilaImp(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Info', '', nxtBLOBMemo, 0, 0, False);
        AddField('IDImp', '', nxtWord32, 10, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('IDImp', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('IDImp'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// FiltroWeb
function __FiltroWeb(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('URL', '', nxtNullString, 300, 0, False);
        AddField('Categ', '', nxtWord32, 10, 0, False);
        with AddField('Liberar', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('IURL', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('URL'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00030002;
              IgnoreKanaType := True;
              IgnoreNonSpace := True;
              Ignorewidth := True;
            end;
          end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Fornecedor
function __Fornecedor(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Nome', '', nxtNullString, 40, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
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

// HTar
function __HTar(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('TipoAcesso', '', nxtWord16, 5, 0, False);
        AddField('Dia', '', nxtByte, 3, 0, False);
        AddField('Hora', '', nxtByte, 3, 0, False);
        AddField('Cor', '', nxtInt32, 10, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IPrim', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoAcesso'));
          Add(GetFieldFromName('Dia'));
          Add(GetFieldFromName('Hora'));
        end;
        with AddIndex('ITipoAcessoCor', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoAcesso'));
          Add(GetFieldFromName('Cor'));
        end;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Impressao
function __Impressao(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Tran', '', nxtInt32, 10, 0, False);
        AddField('Caixa', '', nxtInt32, 10, 0, False);
        with AddField('Manual', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('Computador', '', nxtNullString, 200, 0, False);
        AddField('Maquina', '', nxtWord16, 5, 0, False);
        AddField('Paginas', '', nxtWord16, 5, 0, False);
        AddField('Impressora', '', nxtNullString, 200, 0, False);
        AddField('Documento', '', nxtBLOBMemo, 0, 0, False);
        AddField('Sessao', '', nxtWord32, 10, 0, False);
        AddField('Resultado', '0-Completou, 1-Erro', nxtByte, 3, 0, False);
        AddField('q1', '', nxtWord16, 5, 0, False);
        AddField('q2', '', nxtWord16, 5, 0, False);
        AddField('q3', '', nxtWord16, 5, 0, False);
        AddField('q4', '', nxtWord16, 5, 0, False);
        AddField('q5', '', nxtWord16, 5, 0, False);
        AddField('q6', '', nxtWord16, 5, 0, False);
        AddField('q7', '', nxtWord16, 5, 0, False);
        AddField('q8', '', nxtWord16, 5, 0, False);
        AddField('q9', '', nxtWord16, 5, 0, False);
        AddField('q10', '', nxtWord16, 5, 0, False);
        AddField('v1', '', nxtCurrency, 16, 0, False);
        AddField('v2', '', nxtCurrency, 16, 0, False);
        AddField('v3', '', nxtCurrency, 16, 0, False);
        AddField('v4', '', nxtCurrency, 16, 0, False);
        AddField('v5', '', nxtCurrency, 16, 0, False);
        AddField('v6', '', nxtCurrency, 16, 0, False);
        AddField('v7', '', nxtCurrency, 16, 0, False);
        AddField('v8', '', nxtCurrency, 16, 0, False);
        AddField('v9', '', nxtCurrency, 16, 0, False);
        AddField('v10', '', nxtCurrency, 16, 0, False);
        AddField('Total', '', nxtCurrency, 16, 0, False);
        AddField('Desconto', '', nxtCurrency, 16, 0, False);
        AddField('PagoPost', '', nxtCurrency, 16, 0, False);
        AddField('DescPost', '', nxtCurrency, 16, 0, False);
        AddField('Pago', '', nxtCurrency, 16, 0, False);
        AddField('Func', '', nxtNullString, 20, 0, False);
        AddField('Cliente', '', nxtInt32, 10, 0, False);
        with AddField('Cancelado', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('x75', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('ID')) do
            Ascend := False;
        with AddIndex('ICaixaID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('IAcesso', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Sessao'));
        with AddIndex('IMaquina', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Maquina'));
          with Add(GetFieldFromName('DataHora')) do
            Ascend := False;
        end;
        with AddIndex('IComputador', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          with Add(GetFieldFromName('Computador'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
          Add(GetFieldFromName('DataHora'));
        end;
        with AddIndex('IDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('DataHora')) do
            Ascend := False;
        with AddIndex('ISessaoID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Sessao'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('IClienteDataHora', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('DataHora'));
        end;
        with AddIndex('ITran', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Tran')) do
            Ascend := False;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// infoCampanha
function __infoCampanha(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('IP', '', nxtNullString, 15, 0, False);
        AddField('campanha', '', nxtNullString, 50, 0, False);
        AddField('utmccn', '', nxtNullString, 250, 0, False);
        AddField('utmctr', '', nxtNullString, 250, 0, False);
        AddField('utmcct', '', nxtNullString, 250, 0, False);
        AddField('utmcmd', '', nxtNullString, 250, 0, False);
        AddField('utmcsr', '', nxtNullString, 250, 0, False);
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
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Sessao', '', nxtWord32, 10, 0, False);
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('TipoTran', '', nxtByte, 3, 0, False);
        AddField('TipoItem', 'Sessao, Tempo, MovEst, Transa��o', nxtByte, 3, 0, False);
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
        AddField('FidFator', '', nxtInt8, 3, 0, False);
        AddField('FidPontos', '', nxtDouble, 0, 0, False);
        AddField('FidMov', '', nxtBoolean, 0, 0, False);
        AddField('plusID', '', nxtGUID, 0, 0, False);
        with AddField('plusTran', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('FidOpe', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
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
        with AddIndex('IPlusTranID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('plusTran'));
          Add(GetFieldFromName('plusID'));
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

// LogApp
function __LogApp(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Caixa', '', nxtInt32, 10, 0, False);
        AddField('Sessao', '', nxtInt32, 10, 0, False);
        AddField('Cliente', '', nxtInt32, 10, 0, False);
        AddField('Inicio', '', nxtDateTime, 0, 0, False);
        AddField('Fim', '', nxtDateTime, 0, 0, False);
        AddField('Minutos', '', nxtDouble, 0, 0, False);
        AddField('Exe', '', nxtNullString, 16, 0, False);
        AddField('Caminho', '', nxtNullString, 16, 0, False);
        AddField('Titulo', '', nxtNullString, 16, 0, False);
        AddField('URL', '', nxtInt32, 10, 0, False);
        AddField('Maq', '', nxtWord16, 5, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('IInicio', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Inicio'));
        with AddIndex('IClienteInicio', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('Inicio'));
        end;
        with AddIndex('IMaq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Maq'));
          Add(GetFieldFromName('Inicio'));
        end;
        with AddIndex('ISessaoID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Sessao'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('ICaixa', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Caixa'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// LogNom
function __LogNom(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtNullString, 16, 0, False);
        AddField('Type', 'H=Host, D=Dominio, P=Pagina, S=Search Argument, E=Executavel, C=Caminho, ' + 
          'T=Titulo', nxtChar, 1, 0, False);
        AddField('Nome', '', nxtBLOBMemo, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('ID'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00030002;
              IgnoreKanaType := True;
              IgnoreNonSpace := True;
              Ignorewidth := True;
            end;
          end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// LogUrl
function __LogUrl(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Caixa', '', nxtInt32, 10, 0, False);
        AddField('Cliente', '', nxtInt32, 10, 0, False);
        AddField('Maq', '', nxtWord16, 5, 0, False);
        AddField('Sessao', '', nxtInt32, 10, 0, False);
        AddField('Host', '', nxtNullString, 16, 0, False);
        AddField('Dominio', '', nxtNullString, 16, 0, False);
        AddField('Pagina', '', nxtNullString, 16, 0, False);
        AddField('SearchArg', '', nxtNullString, 16, 0, False);
        AddField('SearchEng', '', nxtNullString, 2, 0, False);
        AddField('ViewTime', '', nxtDouble, 0, 0, False);
        AddField('FirstView', '', nxtDateTime, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('IClienteFirstView', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('FirstView'));
        end;
        with AddIndex('ISessaoHostPagina', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Sessao'));
          with Add(GetFieldFromName('Host'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00030002;
              IgnoreKanaType := True;
              IgnoreNonSpace := True;
              Ignorewidth := True;
            end;
          end;
          with Add(GetFieldFromName('Pagina'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
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
        with AddIndex('ICaixa', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Caixa'));
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
        AddField('ProgramaAtual', '', nxtBLOBMemo, 0, 0, False);
        AddField('SiteAtual', '', nxtBLOBMemo, 0, 0, False);
        AddField('IPConfig', '', nxtBLOBMemo, 0, 0, False);
        AddField('IP', '', nxtNullString, 30, 0, False);
        AddField('MacAddress', '', nxtNullString, 20, 0, False);
        AddField('RAM', '', nxtWord32, 10, 0, False);
        AddField('CPU', '', nxtNullString, 50, 0, False);
        AddField('OS', '', nxtNullString, 50, 0, False);
        AddField('Printers', '', nxtBLOBMemo, 0, 0, False);
        AddField('Drives', '', nxtNullString, 25, 0, False);
        AddField('HDTotal', '', nxtWord32, 10, 0, False);
        AddField('HDFree', '', nxtWord32, 10, 0, False);
        AddField('Patrocinio', '', nxtNullString, 20, 0, False);
        AddField('DisplayH', '', nxtWord16, 5, 0, False);
        AddField('DisplayW', '', nxtWord16, 5, 0, False);
        AddField('DisplayWH', '', nxtNullString, 10, 0, False);
        AddField('LastScan', '', nxtDateTime, 0, 0, False);
        AddField('SessionID', '', nxtWord32, 10, 0, False);
        AddField('ConnectTime', '', nxtDateTime, 0, 0, False);
        with AddField('AvisaFimTempo', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
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
        AddField('Entrada', '', nxtBoolean, 0, 0, False);
        AddField('Cancelado', '', nxtBoolean, 0, 0, False);
        AddField('EstoqueAnt', '', nxtDouble, 0, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Caixa', '', nxtInt32, 10, 0, False);
        AddField('Categoria', '', nxtNullString, 20, 0, False);
        AddField('NaoControlaEstoque', '', nxtBoolean, 0, 0, False);
        AddField('ITran', '', nxtInt32, 10, 0, False);
        AddField('TipoTran', '', nxtByte, 3, 0, False);
        AddField('Sessao', '', nxtInt32, 10, 0, False);
        AddField('plusID', '', nxtGUID, 0, 0, False);
        with AddField('plusTran', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('FidResgate', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('FidPontos', '', nxtDouble, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('IProduto', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          with Add(GetFieldFromName('Produto'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
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
        with AddIndex('IPlusTranID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('plusTran'));
          Add(GetFieldFromName('plusID'));
        end;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// MsgCli
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

// Nomes
function __Nomes(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('Nome', '', nxtNullString, 17, 0, False);
        AddField('Sexo', '', nxtNullString, 1, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('INome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Nome'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
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

// Pacote
function __Pacote(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Minutos', '', nxtWord32, 10, 0, False);
        AddField('Valor', '', nxtCurrency, 16, 0, False);
        AddField('Descr', '', nxtNullString, 30, 0, False);
        with AddField('Fidelidade', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('FidPontos', '', nxtInt32, 10, 0, False);
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

// Patrocinio
function __Patrocinio(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('Nome', '', nxtNullString, 20, 0, False);
        AddField('URLArea1', '', nxtBLOBMemo, 0, 0, False);
        AddField('URLArea2', '', nxtBLOBMemo, 0, 0, False);
        AddField('DominiosPerm', '', nxtBLOBMemo, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('INome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Nome'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
            IgnoreCase := True;
            with AddLocaleDescriptor do begin
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// plusP
function __plusP(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('CodParceiro', '', nxtNullString, 15, 0, False);
        AddField('NomeParceiro', '', nxtNullString, 40, 0, False);
        AddField('urlTimeout', '', nxtNullString, 255, 0, False);
        AddField('KeyIndex', '', nxtByte, 3, 0, False);
        AddField('Adesao', '', nxtBoolean, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('ICodParceiro', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('CodParceiro'));
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// plusT
function __plusT(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('C', '', nxtNullString, 15, 0, False);
        AddField('N', '', nxtNullString, 255, 0, False);
        AddField('P', '', nxtNullString, 255, 0, False);
        AddField('T', '', nxtBLOBMemo, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('ICNP', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('C'));
          Add(GetFieldFromName('N'));
        end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// plusTran
function __plusTran(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('Seq', '', nxtAutoInc, 10, 0, False);
        with AddField('ID', '', nxtGUID, 0, 0, False) do
          AddDefaultValue(TnxAutoGuidDefaultValueDescriptor);
        AddField('IDTranParceiro', '', nxtNullString, 50, 0, False);
        AddField('OK', 'null=pendente, false=erro, true=OK', nxtBoolean, 0, 0, False);
        AddField('Caixa', '', nxtWord32, 10, 0, False);
        AddField('DataHoraParceiro', '', nxtDateTime, 0, 0, False);
        with AddField('DataHoraNex', '', nxtDateTime, 0, 0, False) do
          AddDefaultValue(TnxCurrentDateTimeDefaultValueDescriptor);
        AddField('IDProdutoParceiro', '', nxtNullString, 40, 0, False);
        AddField('codParceiro', '', nxtNullString, 15, 0, False);
        AddField('IDProdutoNex', '', nxtWord32, 10, 0, False);
        AddField('Descr', '', nxtBLOBMemo, 0, 0, False);
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        AddField('Func', '', nxtNullString, 20, 0, False);
        AddField('Valor', '', nxtCurrency, 16, 0, False);
        AddField('Custo', '', nxtCurrency, 16, 0, False);
        AddField('Sessao', '', nxtWord32, 10, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('NomeCliente', '', nxtNullString, 50, 0, False);
        AddField('TranID', '', nxtWord32, 10, 0, False);
        AddField('Maq', '', nxtWord16, 5, 0, False);
        AddField('Quant', '', nxtDouble, 10, 0, False);
        AddField('PIN', '', nxtBLOBMemo, 0, 0, False);
        AddField('Img', '', nxtBLOBGraphic, 0, 0, False);
        AddField('EmailCliente', '', nxtNullString, 100, 0, False);
        with AddField('Sincronizado', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('ISeq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Seq'));
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('ITranIDOK', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TranID'));
          Add(GetFieldFromName('OK'));
        end;
        with AddIndex('IOkSinc', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('OK'));
          Add(GetFieldFromName('Sincronizado'));
        end;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// PrintMon
function __PrintMon(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('JobID', '', nxtInt32, 10, 0, False);
        AddField('Computer', '', nxtNullString, 100, 0, False);
        AddField('Maquina', '', nxtWord16, 5, 0, False);
        AddField('PrinterName', '', nxtNullString, 300, 0, False);
        AddField('PrinterShare', '', nxtNullString, 300, 0, False);
        AddField('PrinterPort', '', nxtNullString, 300, 0, False);
        AddField('PrinterServer', '', nxtNullString, 300, 0, False);
        AddField('User', '', nxtNullString, 300, 0, False);
        AddField('Document', '', nxtBLOBMemo, 0, 0, False);
        AddField('Pages', '', nxtWord32, 10, 0, False);
        AddField('TotalPages', '', nxtWord32, 10, 0, False);
        AddField('Copies', '', nxtWord32, 10, 0, False);
        AddField('ClientPages', '', nxtWord32, 10, 0, False);
        AddField('Status', '', nxtWord16, 5, 0, False);
        AddField('PrinterIndex', '', nxtInt32, 10, 0, False);
        AddField('Pausou', '', nxtBoolean, 0, 0, False);
        AddField('Spooling', '', nxtBoolean, 0, 0, False);
        AddField('Liberacao', '', nxtByte, 3, 0, False);
        AddField('ImpID', '', nxtWord32, 10, 0, False);
        AddField('PrtHandle', '', nxtWord32, 10, 0, False);
        AddField('JobCliID', '', nxtWord32, 10, 0, False);
        AddField('PDF', '', nxtBoolean, 0, 0, False);
        AddField('DocInfo', '', nxtBLOBMemo, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IPrinterIndexJobID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('PrinterIndex'));
          Add(GetFieldFromName('JobID'));
        end;
        with AddIndex('ILiberacaoJobID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Liberacao'));
          Add(GetFieldFromName('JobID'));
        end;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Processos
function __Processos(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ClienteID', '', nxtInt32, 10, 0, False);
        AddField('Request', '', nxtInt32, 10, 0, False);
        AddField('ProcessID', '', nxtInt32, 10, 0, False);
        AddField('ExeName', '', nxtNullString, 80, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('ICliReq', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('ClienteID'));
          Add(GetFieldFromName('Request'));
        end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// prodd
function __prodd(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('codbar', '', nxtShortString, 14, 0, True);
        AddField('descricao', '', nxtShortString, 55, 0, False);
        AddField('unid', '', nxtShortString, 5, 0, False);
        AddField('imagem', '', nxtBLOBGraphic, 0, 0, False);
        AddField('categoria', '', nxtShortString, 35, 0, False);
        with AddField('id_upd', '', nxtWord32, 10, 0, True) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 1;
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('pk', 0, idNone), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('codbar'));
        with AddIndex('ix_descricao', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('descricao'));
        with AddIndex('ix_unid', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('unid'));
        with AddIndex('ix_categoria', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('categoria'));
        with AddIndex('ix_upd', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('id_upd'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// produ
function __produ(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('codbar', '', nxtShortString, 14, 0, False);
        AddField('descricao', '', nxtShortString, 55, 0, False);
        AddField('unid', '', nxtShortString, 5, 0, False);
        AddField('imagem', '', nxtBLOBGraphic, 0, 0, False);
        AddField('categoria', '', nxtShortString, 35, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('pk', 0, idNull), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('codbar'));
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
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Codigo', '', nxtNullString, 15, 0, False);
        AddField('Descricao', '', nxtNullString, 55, 0, False);
        AddField('Unid', '', nxtNullString, 5, 0, False);
        AddField('Preco', '', nxtCurrency, 5, 0, False);
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        AddField('Imagem', '', nxtBLOBGraphic, 0, 0, False);
        AddField('Categoria', '', nxtNullString, 35, 0, False);
        AddField('Fornecedor', '', nxtWord32, 10, 0, False);
        AddField('SubCateg', '', nxtNullString, 35, 0, False);
        AddField('EstoqueAtual', '', nxtExtended, 0, 0, False);
        AddField('CustoUnitario', '', nxtCurrency, 16, 0, False);
        AddField('EstoqueACE', '', nxtExtended, 0, 0, False);
        AddField('EstoqueACS', '', nxtExtended, 0, 0, False);
        AddField('PodeAlterarPreco', '', nxtBoolean, 0, 0, False);
        AddField('NaoControlaEstoque', '', nxtBoolean, 0, 0, False);
        AddField('EstoqueMin', '', nxtExtended, 0, 0, False);
        AddField('EstoqueMax', '', nxtExtended, 0, 0, False);
        AddField('AbaixoMin', '', nxtBoolean, 0, 0, False);
        AddField('AbaixoMinDesde', '', nxtDateTime, 0, 0, False);
        AddField('EstoqueRepor', '', nxtExtended, 0, 0, False);
        AddField('plus', '', nxtBoolean, 0, 0, False);
        AddField('plusURL', '', nxtBLOBMemo, 0, 0, False);
        AddField('plusCodParceiro', '', nxtNullString, 15, 0, False);
        AddField('plusCodProduto', '', nxtNullString, 15, 0, False);
        with AddField('Ativo', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := True;
        with AddField('Fidelidade', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('FidPontos', '', nxtInt32, 10, 0, False);
      end;
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
              Locale := $00000416; { Portuguese }
              Flags := $00001000;
              UseStringSort := True;
            end;
          end;
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('IAbaixoMin', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('AbaixoMin'));
          Add(GetFieldFromName('AbaixoMinDesde'));
        end;
        with AddIndex('IplusParceiroProd', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('plus'));
          Add(GetFieldFromName('plusCodParceiro'));
          Add(GetFieldFromName('plusCodProduto'));
        end;
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Recibo
function __Recibo(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('Cliente', '', nxtInt32, 10, 0, False);
        AddField('Tran', '', nxtInt32, 10, 0, False);
      end;
      with EnsureIndicesDescriptor do
        with AddIndex('ICliente', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('ID'));
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
        AddField('IPs', '', nxtBLOBMemo, 0, 0, False);
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
        AddField('JobID', '', nxtWord32, 10, 0, False);
        AddField('JobPages', '', nxtWord16, 5, 0, False);
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

// Tarifa
function __Tarifa(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('TipoAcesso', '', nxtWord16, 5, 0, False);
        AddField('Cor', '', nxtInt32, 10, 0, False);
        AddField('CorFonte', '', nxtInt32, 10, 0, False);
        AddField('Descricao', '', nxtNullString, 30, 0, False);
        AddField('Reinicia', '', nxtBoolean, 0, 0, False);
        AddField('PrecosStr', '', nxtBLOBMemo, 0, 0, False);
        AddField('DivQtd', '', nxtWord32, 10, 0, False);
        with AddField('SemValorMin', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('ReiniciaDesde', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 1;
        with AddField('DivTipo', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 1;
        with AddField('Arredondar', '', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 5;
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IPrim', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('TipoAcesso'));
          Add(GetFieldFromName('Cor'));
        end;
        with AddIndex('ICor', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('Cor'));
      end;
      CheckValid(False);
    end;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

// Tempo
function __Tempo(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtAutoInc, 10, 0, False);
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('Func', '', nxtNullString, 20, 0, False);
        with AddField('Tipo', '0=Tempo, 1=Tempo Previsto, 2=Passaporte, 3=pacote, 4=cartao de tempo', nxtByte, 3, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := 0;
        AddField('Minutos', '', nxtDouble, 0, 0, False);
        AddField('IDPacPass', '', nxtWord32, 10, 0, False);
        AddField('Passaporte', '', nxtWord32, 10, 0, False);
        AddField('Total', '', nxtCurrency, 16, 0, False);
        AddField('Desconto', '', nxtCurrency, 16, 0, False);
        AddField('PagoPost', '', nxtCurrency, 16, 0, False);
        AddField('DescPost', '', nxtCurrency, 16, 0, False);
        AddField('Pago', '', nxtCurrency, 16, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Maq', '', nxtWord16, 5, 0, False);
        AddField('Sessao', '', nxtWord32, 10, 0, False);
        AddField('Cancelado', '', nxtBoolean, 0, 0, False);
        AddField('Tran', '', nxtInt32, 10, 0, False);
        AddField('Caixa', '', nxtInt32, 10, 0, False);
        AddField('Nome', '', nxtNullString, 50, 0, False);
        AddField('Senha', '', nxtNullString, 20, 0, False);
        AddField('TipoAcesso', '', nxtInt32, 10, 0, False);
        AddField('Obs', '', nxtNullString, 50, 0, False);
        with AddField('CredValor', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        with AddField('FidResgate', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
        AddField('FidPontos', '', nxtDouble, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('ISessaoID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Sessao'));
          Add(GetFieldFromName('ID'));
        end;
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
        AddField('HoraTarifaStr', '', nxtBLOBMemo, 0, 0, False);
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

// TipoImp
function __TipoImp(aDatabase : TnxDatabase): TnxDataDictionary;
begin
  Result := TnxDataDictionary.Create;
  try
    with Result do begin
      with FilesDescriptor do
        with FileDescriptor[0] do
          Desc := 'Tipos de Impress�o';
      AddRecordDescriptor(TnxBaseRecordDescriptor);
      with FieldsDescriptor do begin
        AddField('ID', '', nxtByte, 3, 0, False);
        AddField('Nome', '', nxtNullString, 30, 0, False);
        AddField('Impressora', '', nxtNullString, 500, 0, False);
        AddField('Valor', '', nxtCurrency, 16, 0, False);
        AddField('Contador', '', nxtInt32, 10, 0, False);
        AddField('ImgID', '', nxtInt32, 10, 0, False);
        AddField('PrinterDevMode', '', nxtBLOB, 0, 0, False);
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('INome', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
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
        with AddIndex('IImp', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          with Add(GetFieldFromName('Impressora'), TnxExtTextKeyFieldDescriptor) as TnxExtTextKeyFieldDescriptor do begin
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
        AddField('DataHora', '', nxtDateTime, 0, 0, False);
        AddField('Cliente', '', nxtWord32, 10, 0, False);
        AddField('Tipo', '', nxtByte, 3, 0, False);
        AddField('Func', '', nxtNullString, 20, 0, False);
        AddField('Total', '', nxtCurrency, 16, 0, False);
        AddField('Desconto', '', nxtCurrency, 16, 0, False);
        AddField('TotLiq', '', nxtCurrency, 16, 0, False);
        AddField('Pago', '', nxtCurrency, 16, 0, False);
        AddField('Debito', '', nxtCurrency, 16, 0, False);
        AddField('Obs', '', nxtBLOBMemo, 0, 0, False);
        AddField('Cancelado', '', nxtBoolean, 0, 0, False);
        AddField('CanceladoPor', '', nxtNullString, 30, 0, False);
        AddField('CanceladoEm', '', nxtDateTime, 0, 0, False);
        AddField('Caixa', '', nxtWord32, 10, 0, False);
        AddField('Maq', '', nxtWord16, 5, 0, False);
        AddField('NomeCliente', '', nxtNullString, 50, 0, False);
        AddField('Sessao', '', nxtWord32, 10, 0, False);
        AddField('Descr', '', nxtNullString, 50, 0, False);
        AddField('QtdTempo', '', nxtDouble, 0, 0, False);
        AddField('CredValor', '', nxtBoolean, 0, 0, False);
        AddField('FidResgate', '', nxtBoolean, 0, 0, False);
        AddField('plusID', '', nxtGUID, 0, 0, False);
        with AddField('plusTran', '', nxtBoolean, 0, 0, False) do
          with AddDefaultValue(TnxConstDefaultValueDescriptor) as TnxConstDefaultValueDescriptor do
            AsVariant := False;
      end;
      with EnsureIndicesDescriptor do begin
        with AddIndex('IID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('ID'));
        with AddIndex('ICliDH', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Cliente'));
          Add(GetFieldFromName('DataHora'));
        end;
        with AddIndex('ICaixaID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Caixa'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('IDH', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do
          Add(GetFieldFromName('DataHora'));
        with AddIndex('ITipoDH', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Tipo'));
          Add(GetFieldFromName('DataHora'));
        end;
        with AddIndex('ISessao', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('Sessao'));
          Add(GetFieldFromName('ID'));
        end;
        with AddIndex('IPlusTranID', 0, idAll), KeyDescriptor as TnxCompKeyDescriptor do begin
          Add(GetFieldFromName('plusTran'));
          Add(GetFieldFromName('plusID'));
        end;
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

type
  TnxcgTableInfo = record
    TableName : String;
    Callback : TnxcgCreateDictCallback;
  end;

const
  TableInfos : array[0..54] of TnxcgTableInfo =
    ((TableName : 'Aviso'; Callback : __Aviso),
     (TableName : 'Biometria'; Callback : __Biometria),
     (TableName : 'Caixa'; Callback : __Caixa),
     (TableName : 'CategFW'; Callback : __CategFW),
     (TableName : 'Categoria'; Callback : __Categoria),
     (TableName : 'Chat'; Callback : __Chat),
     (TableName : 'CHorario'; Callback : __CHorario),
     (TableName : 'Cliente'; Callback : __Cliente),
     (TableName : 'Config'; Callback : __Config),
     (TableName : 'Debito'; Callback : __Debito),
     (TableName : 'EmailCorpo'; Callback : __EmailCorpo),
     (TableName : 'EmailCriar'; Callback : __EmailCriar),
     (TableName : 'EmailEnvio'; Callback : __EmailEnvio),
     (TableName : 'Espera'; Callback : __Espera),
     (TableName : 'ETar'; Callback : __ETar),
     (TableName : 'FilaImp'; Callback : __FilaImp),
     (TableName : 'FiltroWeb'; Callback : __FiltroWeb),
     (TableName : 'Fornecedor'; Callback : __Fornecedor),
     (TableName : 'HCred'; Callback : __HCred),
     (TableName : 'HPass'; Callback : __HPass),
     (TableName : 'HTar'; Callback : __HTar),
     (TableName : 'Impressao'; Callback : __Impressao),
     (TableName : 'infoCampanha'; Callback : __infoCampanha),
     (TableName : 'ITran'; Callback : __ITran),
     (TableName : 'Layout'; Callback : __Layout),
     (TableName : 'Log'; Callback : __Log),
     (TableName : 'LogApp'; Callback : __LogApp),
     (TableName : 'LogNom'; Callback : __LogNom),
     (TableName : 'LogUrl'; Callback : __LogUrl),
     (TableName : 'Maq'; Callback : __Maq),
     (TableName : 'Maquina'; Callback : __Maquina),
     (TableName : 'MovEst'; Callback : __MovEst),
     (TableName : 'MsgCli'; Callback : __MsgCli),
     (TableName : 'Nomes'; Callback : __Nomes),
     (TableName : 'Ocupacao'; Callback : __Ocupacao),
     (TableName : 'Pacote'; Callback : __Pacote),
     (TableName : 'Passaporte'; Callback : __Passaporte),
     (TableName : 'Patrocinio'; Callback : __Patrocinio),
     (TableName : 'plusP'; Callback : __plusP),
     (TableName : 'plusT'; Callback : __plusT),
     (TableName : 'plusTran'; Callback : __plusTran),
     (TableName : 'PrintMon'; Callback : __PrintMon),
     (TableName : 'Processos'; Callback : __Processos),
     (TableName : 'prodd'; Callback : __prodd),
     (TableName : 'produ'; Callback : __produ),
     (TableName : 'Produto'; Callback : __Produto),
     (TableName : 'Recibo'; Callback : __Recibo),
     (TableName : 'Sessao'; Callback : __Sessao),
     (TableName : 'Tarifa'; Callback : __Tarifa),
     (TableName : 'Tempo'; Callback : __Tempo),
     (TableName : 'TipoAcesso'; Callback : __TipoAcesso),
     (TableName : 'TipoImp'; Callback : __TipoImp),
     (TableName : 'TipoPass'; Callback : __TipoPass),
     (TableName : 'Tran'; Callback : __Tran),
     (TableName : 'Usuario'; Callback : __Usuario));

function TableCount: Integer;
begin
  Result := Length(TableInfos);
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

procedure BuildAndEvolveTable(aDatabase : TnxDatabase;
  const aTableName, aPassword : String;
  aCreateDictCallback : TnxcgCreateDictCallback;
  aProgressCallback : TnxcgProgressCallback;
  var aCancelTask : Boolean);
var
  Dict : TnxDataDictionary;
begin
  Dict := aCreateDictCallback(aDatabase);
  if Assigned(Dict) then
    try
      if not aDatabase.TableExists(aTableName, aPassword) then
        aDatabase.CreateTable(False, aTableName, aPassword, Dict)
      else
        RestructureTable(aDatabase, aTableName,
          aPassword, Dict, aProgressCallback, aCancelTask);
    finally
      Dict.Free;
    end;
end;

procedure BuildAndEvolveDatabase(aDatabase : TnxDatabase;
  aProgressCallback : TnxcgProgressCallback = nil;
  aGetPasswordCallback : TnxcgGetPasswordCallback = nil;
  const aPassword : String = '');
var
  I : Integer;
  CancelTask : Boolean;
  Password   : string;
begin
  CancelTask := False;
  for I := Low(TableInfos) to High(TableInfos) do begin
    Password := aPassword;
    if Assigned(aGetPasswordCallback) then
      aGetPasswordCallback(TableInfos[I].TableName, Password);
    BuildAndEvolveTable(aDatabase,
      TableInfos[I].TableName, Password,
      TableInfos[I].Callback, aProgressCallback, CancelTask);
    if CancelTask then
      Exit;
  end;
end;

end.
