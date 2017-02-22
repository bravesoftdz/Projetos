unit ncDM_nexapp;

interface

uses
  System.SysUtils, System.Classes, Data.DB, nxdb, nxllTransport, SyncObjs, Windows,
  nxptBasePooledTransport, nxtwWinsockTransport, nxllComponent, idHttp,
  nxsdServerEngine, nxreRemoteServerEngine, json, dialogs, kbmMemTable;

type
  TTerminateEvent = function : Boolean of object;
  
  TdmNexApp = class(TDataModule)
    RSE: TnxRemoteServerEngine;
    TCP: TnxWinsockTransport;
    Session: TnxSession;
    tTran: TnxTable;
    DB: TnxDatabase;
    tTranID: TUnsignedAutoIncField;
    tTranUID: TGuidField;
    tTranUID_ref: TGuidField;
    tTranStatusNFE: TByteField;
    tTranChaveNFE: TStringField;
    tTranTipoNFE: TByteField;
    tTranDataHora: TDateTimeField;
    tTranIncluidoEm: TDateTimeField;
    tTranCliente: TLongWordField;
    tTranTipo: TByteField;
    tTranOpDevValor: TByteField;
    tTranFunc: TStringField;
    tTranTotal: TCurrencyField;
    tTranDesconto: TCurrencyField;
    tTranDescPerc: TFloatField;
    tTranids_pagto: TStringField;
    tTranDescPorPerc: TBooleanField;
    tTranTotLiq: TCurrencyField;
    tTranPagEsp: TWordField;
    tTranPago: TCurrencyField;
    tTranDebitoAnt: TCurrencyField;
    tTranDebito: TCurrencyField;
    tTranDebitoPago: TCurrencyField;
    tTranCreditoAnt: TCurrencyField;
    tTranCredito: TCurrencyField;
    tTranCreditoUsado: TCurrencyField;
    tTranTroco: TCurrencyField;
    tTranObs: TnxMemoField;
    tTranCancelado: TBooleanField;
    tTranCanceladoPor: TStringField;
    tTranCanceladoEm: TDateTimeField;
    tTranCaixa: TLongWordField;
    tTranCaixaPag: TLongWordField;
    tTranMaq: TWordField;
    tTranNomeCliente: TWideStringField;
    tTranSessao: TLongWordField;
    tTranDescricao: TWideMemoField;
    tTranQtdTempo: TFloatField;
    tTranCredValor: TBooleanField;
    tTranFidResgate: TBooleanField;
    tTranAmbNFe: TByteField;
    tTranStatusCanc: TByteField;
    tTranExtra: TnxMemoField;
    tTranPagFunc: TStringField;
    tTranComissao: TCurrencyField;
    tTrantax_incluido: TCurrencyField;
    tTrantax_incluir: TCurrencyField;
    tTranTotalFinal: TCurrencyField;
    tTranPagPend: TBooleanField;
    tTranRecVer: TLongWordField;
    tUsuarios: TnxTable;
    tTranFuncName: TStringField;
    tItens: TnxTable;
    tPagEsp: TnxTable;
    tItensID: TUnsignedAutoIncField;
    tItensID_ref: TLongWordField;
    tItensTran: TLongWordField;
    tItenstax_id: TLongWordField;
    tItenstax_incluido: TCurrencyField;
    tItenstax_incluir: TCurrencyField;
    tItensProduto: TLongWordField;
    tItensQuant: TFloatField;
    tItensUnitario: TCurrencyField;
    tItensTotal: TCurrencyField;
    tItensCustoU: TCurrencyField;
    tItensItem: TByteField;
    tItensDesconto: TCurrencyField;
    tItensDescr: TWideStringField;
    tItensTotalFinal: TCurrencyField;
    tItensPago: TCurrencyField;
    tItensPagoPost: TCurrencyField;
    tItensDescPost: TCurrencyField;
    tItensDataHora: TDateTimeField;
    tItensPend: TBooleanField;
    tItensIncluidoEm: TDateTimeField;
    tItensEntrada: TBooleanField;
    tItensCancelado: TBooleanField;
    tItensAjustaCusto: TBooleanField;
    tItensEstoqueAnt: TFloatField;
    tItensCliente: TLongWordField;
    tItensCaixa: TIntegerField;
    tItensCategoria: TStringField;
    tItensNaoControlaEstoque: TBooleanField;
    tItensITran: TIntegerField;
    tItensTipoTran: TByteField;
    tItensSessao: TIntegerField;
    tItensComissao: TCurrencyField;
    tItensComissaoPerc: TFloatField;
    tItensComissaoLucro: TBooleanField;
    tItensPermSemEstoque: TBooleanField;
    tItensFidResgate: TBooleanField;
    tItensFidPontos: TFloatField;
    tItensRecVer: TLongWordField;
    tPagEspID: TUnsignedAutoIncField;
    tPagEspCaixa: TLongWordField;
    tPagEspDataHora: TDateTimeField;
    tPagEspTran: TLongWordField;
    tPagEspTipoTran: TByteField;
    tPagEspEspecie: TWordField;
    tPagEspTipo: TByteField;
    tPagEspValor: TCurrencyField;
    tPagEspTroco: TCurrencyField;
    tPagEspDoc: TStringField;
    tPagEspCancelado: TBooleanField;
    tPagEspDevolucao: TBooleanField;
    tPagEspRecVer: TLongWordField;
    tEsp: TnxTable;
    tPagEspNome: TStringField;
    tPagEspValorFinal: TCurrencyField;
    tEspID: TWordField;
    tEspTipo: TByteField;
    tEspNome: TStringField;
    tEspPermiteTroco: TBooleanField;
    tEspPermiteVarios: TBooleanField;
    tEspPermiteCred: TBooleanField;
    tEspImg: TWordField;
    tEspRecVer: TLongWordField;
    tEspTipoPagNFE: TByteField;
    tPagEspImgEsp: TWordField;
    tPagEspImgEsp2: TWordField;
    mtCard: TkbmMemTable;
    mtCardCode: TLongWordField;
    mtCardCreationDate: TDateTimeField;
    mtCardType: TByteField;
    mtCardIdRef: TLongWordField;
    mtCardShopCode: TLongWordField;
    mtCardEventDate: TDateTimeField;
    tCard: TnxTable;
    tCardcard_id: TUnsignedAutoIncField;
    tCardcard_id_ref: TLongWordField;
    tCardstatus: TByteField;
    tCardcreated_on: TDateTimeField;
    tCardtype: TByteField;
    tCardid_ref: TLongWordField;
    tCardjson: TWideMemoField;
    tCardjson_dif: TWideMemoField;
    tPost: TnxTable;
    tPostID: TUnsignedAutoIncField;
    tPostContentType: TWideStringField;
    tPostDados: TBlobField;
    tPostQtd: TWordField;
    tPostResp: TWideMemoField;
    tPostDH: TDateTimeField;
    tCaixa: TnxTable;
    tCaixaID: TUnsignedAutoIncField;
    tCaixaIDLivre: TStringField;
    tCaixaAberto: TBooleanField;
    tCaixaUsuario: TStringField;
    tCaixaAbertura: TDateTimeField;
    tCaixaFechamento: TDateTimeField;
    tCaixaReproc: TDateTimeField;
    tCaixaTotalFinal: TCurrencyField;
    tCaixaDescontos: TCurrencyField;
    tCaixaCancelamentos: TCurrencyField;
    tCaixaSangria: TCurrencyField;
    tCaixaSupr: TCurrencyField;
    tCaixaSaldoAnt: TCurrencyField;
    tCaixaObs: TnxMemoField;
    tCaixaEstSessoesQtd: TIntegerField;
    tCaixaEstSessoesTempo: TFloatField;
    tCaixaEstUrls: TIntegerField;
    tCaixaEstSyncOk: TBooleanField;
    tCaixaEstBuscasEng: TnxMemoField;
    tCaixaEstRes: TnxMemoField;
    tCaixaSaldoF: TCurrencyField;
    tCaixaQuebra: TCurrencyField;
    tCaixaRecVer: TLongWordField;
    tCaixaNomeUsuario: TStringField;
    tCaixaTotalCalc: TCurrencyField;
    tCaixaDivergente: TBooleanField;
    tUsuariosUsername: TStringField;
    tUsuariosNome: TStringField;
    tUsuariosAdmin: TBooleanField;
    tUsuariosSenha: TStringField;
    tUsuariosGrupos: TnxMemoField;
    tUsuariosDireitos: TnxMemoField;
    tUsuariosMaxTempoManut: TIntegerField;
    tUsuariosMaxMaqManut: TIntegerField;
    tUsuariosLimiteDesc: TFloatField;
    tUsuariosRecVer: TLongWordField;
    tUsuariosEmail: TWideStringField;
    tProd: TnxTable;
    tProdID: TUnsignedAutoIncField;
    tProdCodigo: TStringField;
    tProdDescricao: TStringField;
    tProdUnid: TStringField;
    tProdPreco: TCurrencyField;
    tProdPrecoAuto: TBooleanField;
    tProdMargem: TFloatField;
    tProdObs: TnxMemoField;
    tProdImagem: TGraphicField;
    tProdCategoria: TStringField;
    tProdFornecedor: TLongWordField;
    tProdSubCateg: TStringField;
    tProdEstoqueAtual: TFloatField;
    tProdEstoquePend: TFloatField;
    tProdEstoqueTot: TFloatField;
    tProdbrtrib: TWordField;
    tProdCustoUnitario: TCurrencyField;
    tProdPodeAlterarPreco: TBooleanField;
    tProdPermiteVendaFracionada: TBooleanField;
    tProdNaoControlaEstoque: TBooleanField;
    tProdEstoqueMin: TFloatField;
    tProdEstoqueMax: TFloatField;
    tProdAbaixoMin: TBooleanField;
    tProdAbaixoMinDesde: TDateTimeField;
    tProdEstoqueRepor: TFloatField;
    tProdComissaoPerc: TFloatField;
    tProdComissaoLucro: TBooleanField;
    tProdtax_id: TLongWordField;
    tProdAtivo: TBooleanField;
    tProdFidelidade: TBooleanField;
    tProdFidPontos: TIntegerField;
    tProdNCM: TStringField;
    tProdNCM_Ex: TStringField;
    tProdcest: TLongWordField;
    tProdCadastroRapido: TBooleanField;
    tProdIncluidoEm: TDateTimeField;
    tProdRecVer: TLongWordField;
    tCli: TnxTable;
    tProdNomeFornecedor: TStringField;
    tProdTelFornecedor: TStringField;
    tProdEmailFornecedor: TStringField;
    tPostmethod: TByteField;
    tTranVendedor: TStringField;
    tTranNomeVendedor: TStringField;
    tCardmethod: TByteField;
    tProdFor: TnxTable;
    tProdForUID: TGuidField;
    tProdForProduto: TLongWordField;
    tProdForFornecedor: TLongWordField;
    tProdForPos: TWordField;
    tProdForRef: TStringField;
    tMovEst: TnxTable;
    tMovEstID: TUnsignedAutoIncField;
    tMovEstID_ref: TLongWordField;
    tMovEstTran: TLongWordField;
    tMovEstItem: TByteField;
    tMovEsttax_id: TLongWordField;
    tMovEsttax_incluido: TCurrencyField;
    tMovEsttax_incluir: TCurrencyField;
    tMovEstProduto: TLongWordField;
    tMovEstQuant: TFloatField;
    tMovEstUnitario: TCurrencyField;
    tMovEstTotal: TCurrencyField;
    tMovEstTotLiq: TCurrencyField;
    tMovEstCustoU: TCurrencyField;
    tMovEstCustoT: TCurrencyField;
    tMovEstLucro: TCurrencyField;
    tMovEstDesconto: TCurrencyField;
    tMovEstDescr: TWideStringField;
    tMovEstTotalFinal: TCurrencyField;
    tMovEstPago: TCurrencyField;
    tMovEstPagoPost: TCurrencyField;
    tMovEstDescPost: TCurrencyField;
    tMovEstDataHora: TDateTimeField;
    tMovEstPend: TBooleanField;
    tMovEstIncluidoEm: TDateTimeField;
    tMovEstEntrada: TBooleanField;
    tMovEstCancelado: TBooleanField;
    tMovEstAjustaCusto: TBooleanField;
    tMovEstEstoqueAnt: TFloatField;
    tMovEstCliente: TLongWordField;
    tMovEstCaixa: TIntegerField;
    tMovEstCategoria: TStringField;
    tMovEstNaoControlaEstoque: TBooleanField;
    tMovEstITran: TIntegerField;
    tMovEstTipoTran: TByteField;
    tMovEstSessao: TIntegerField;
    tMovEstDebDev: TCurrencyField;
    tMovEstComissao: TCurrencyField;
    tMovEstComissaoPerc: TFloatField;
    tMovEstComissaoLucro: TBooleanField;
    tMovEstVenDev: TBooleanField;
    tMovEstPermSemEstoque: TBooleanField;
    tMovEstFidResgate: TBooleanField;
    tMovEstFidPontos: TFloatField;
    tMovEstRecVer: TLongWordField;
    tCliID: TUnsignedAutoIncField;
    tCliCodigo: TStringField;
    tCliCodigoKey: TStringField;
    tCliNome: TWideStringField;
    tCliEndereco: TWideStringField;
    tCliEndereco2: TWideStringField;
    tCliEnd_Numero: TWideStringField;
    tCliEnd_CodMun: TWideStringField;
    tCliEnd_Dest: TWideStringField;
    tCliEnd_Obs: TWideStringField;
    tCliendereco_id: TGuidField;
    tCliPais: TWideStringField;
    tCliBairro: TWideStringField;
    tCliCidade: TWideStringField;
    tCliUF: TWideStringField;
    tCliCEP: TWideStringField;
    tCliNaoContribICMS: TBooleanField;
    tCliIsentoIE: TBooleanField;
    tCliNFE_CredIcms: TBooleanField;
    tCliSexo: TStringField;
    tCliObs: TWideMemoField;
    tCliCpf: TWideStringField;
    tCliRg: TWideStringField;
    tCliTelefone: TWideStringField;
    tCliEmail: TWideMemoField;
    tCliPassaportes: TFloatField;
    tCliPai: TWideStringField;
    tCliMae: TWideStringField;
    tCliUltVisita: TDateTimeField;
    tCliDebito: TCurrencyField;
    tCliDataNasc: TDateTimeField;
    tCliCelular: TWideStringField;
    tCliTemDebito: TBooleanField;
    tCliLimiteDebito: TCurrencyField;
    tCliFoto: TGraphicField;
    tCliIncluidoEm: TDateTimeField;
    tCliAlteradoEm: TDateTimeField;
    tCliIncluidoPor: TStringField;
    tCliAlteradoPor: TStringField;
    tCliFidPontos: TFloatField;
    tCliFidTotal: TFloatField;
    tCliFidResg: TFloatField;
    tCliAniversario: TStringField;
    tCliSemFidelidade: TBooleanField;
    tCliTemCredito: TBooleanField;
    tCliPJuridica: TBooleanField;
    tCliConsumidor: TBooleanField;
    tCliInativo: TBooleanField;
    tCliFornecedor: TBooleanField;
    tCliValorCred: TCurrencyField;
    tCliRecVer: TLongWordField;
    tMovEstCalcCustoU: TCurrencyField;
    tProdShopCode: TLongWordField;
    tCardcard_array: TByteField;
    tPostcard_array: TByteField;
    tOrc: TnxTable;
    tIOrc: TnxTable;
    tOrcUID: TGuidField;
    tOrcIDSeq: TUnsignedAutoIncField;
    tOrcRecVer: TLongWordField;
    tOrcCriadoEm: TDateTimeField;
    tOrcStatus: TByteField;
    tOrcAtualizadoEm: TDateTimeField;
    tOrcAprovadoEm: TDateTimeField;
    tOrcRecusadoEm: TDateTimeField;
    tOrcVendidoEm: TDateTimeField;
    tOrcExpiradoEm: TDateTimeField;
    tOrcStatusAlteradoEm: TDateTimeField;
    tOrcFunc: TStringField;
    tOrcIDVenda: TLongWordField;
    tOrcCliente: TLongWordField;
    tOrcTotal: TCurrencyField;
    tOrcDesconto: TCurrencyField;
    tOrcTotalFinal: TCurrencyField;
    tOrcVendido: TBooleanField;
    tOrcValData: TDateTimeField;
    tOrcValModo: TByteField;
    tOrcValTempo: TWordField;
    tOrcValUTempo: TByteField;
    tOrcObs: TnxMemoField;
    tIOrcID: TUnsignedAutoIncField;
    tIOrcOrcamento_UID: TGuidField;
    tIOrcUID: TGuidField;
    tIOrcItem: TWordField;
    tIOrcProduto: TLongWordField;
    tIOrcDescr: TnxMemoField;
    tIOrcUnitario: TCurrencyField;
    tIOrcQuant: TFloatField;
    tIOrcTotal: TCurrencyField;
    tIOrcDesconto: TCurrencyField;
    tIOrcTotalFinal: TCurrencyField;
    tIOrcRecVer: TLongWordField;
    tOrcNomeCliente: TWideStringField;
    tOrcNomeFunc: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure tPagEspCalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure tCaixaCalcFields(DataSet: TDataSet);
    procedure tMovEstCalcFields(DataSet: TDataSet);
    procedure tProdCalcFields(DataSet: TDataSet);
    procedure tCardBeforePost(DataSet: TDataSet);
  private
    FShopCode : Cardinal;
    FTerm  : TTerminateEvent;
    fmTran : TStrings;
    fmDev  : TStrings;
    fmProd : TStrings;
    fmLastBuy: TStrings;
    fmForn : TStrings;
    fmPagto : TStrings;
    fmItens : TStrings;
    fmCaixa : TStrings;
    fmAberturaCx : TStrings;
    fmEstoque : TStrings;

    fmOrc : TStrings;
    fmItensOrc : TStrings;
    
    FPrimeiraCarga : Boolean;
    { Private declarations }
    function ArrayItens: TJsonArray;
    function ArrayPagto: TJsonArray;
    function ArrayFornecedores: TJsonArray;
    function ArrayItensOrc: TJsonArray;
    function Create_json_venda: String;
    function Create_json_orcamento: String;
    function Create_json_caixa(aAbertura: Boolean): String;
    function Create_json_estoque: String;
    function Create_json_produto: String;

    function _Term: Boolean;

    procedure processa_criar_json;
    procedure processa_enviar_json;
  public
    procedure Open;
    { Public declarations }

    procedure PrimeiraCarga;
    procedure Processa;

    property OnTerminateEvent: TTerminateEvent read FTerm write FTerm;
  end;

  TThread_nexapp = class ( TThread )
  private
    FEvent : TEvent;

    function onterm: Boolean;
  protected
    procedure Execute; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  public
    procedure Terminar;
    procedure Sinaliza;
  end;

  Tnexapp_config = class
  private
    FCS        : TCriticalSection;
  public  
    constructor Create;
    destructor Destroy; override;

    procedure Refresh;
  end;

  procedure Sinaliza_nexapp;

var
  dmNexApp: TdmNexApp;
  gThread_nexapp : TThread_nexapp;
  gNexApp_Config : Tnexapp_config;
  gNexApp_Enviar : Boolean;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDB_json, System.uJson, ncClassesBase, ncServBD, ncDebug, ncDM_post_nexapp,
  uLicEXECryptor;

{$R *.dfm}

{ TdmNexApp }

function TdmNexApp.ArrayFornecedores: TJsonArray;
var B: Boolean;

procedure AddFor(F: Cardinal);
var J: TJsonObject;
begin
  if Result=nil then Result := TJsonArray.Create;

  if tCli.Locate('ID', F, []) then begin
    J := TJsonObject.Create;
    tCli.Fields.ToJson(J, fmForn);
    tMovEst.SetRange([False, tCliID.Value, trEstCompra], [False, tCliID.Value, trEstCompra]);
    if not tMovEst.IsEmpty then begin
      tMovEst.Last;
      tMovEst.Fields.ToJson(J, fmLastBuy);
    end;
    Result.Add(J);  
  end;
end;

begin
  B := False;
  Result := nil;
  tProdFor.Active := True;
  tProdFor.SetRange([tProdID.Value], [tProdID.Value]);
  tProdFor.First;
  while not tProdFor.Eof do begin
    if tProdForFornecedor.Value=tProdFornecedor.Value then
      B := True;
    AddFor(tProdForFornecedor.Value);
    tProdFor.Next;
  end;

  if (not B) and (tProdFornecedor.Value>0) then AddFor(tProdFornecedor.Value);
end;

function TdmNexApp.ArrayItens: TJsonArray;
var J : TJsonObject;
begin
    Result := TJsonArray.Create;
    try
      tItens.SetRange([tTranID.Value], [tTranID.Value]);
      try
        tItens.First;
        while not tItens.Eof do begin
          J := TJsonObject.Create;
          tItens.Fields.ToJson(J, fmItens);
          Result.Add(J);
          tItens.Next;
        end;
      finally
        tItens.CancelRange;
      end;
    except
      on E: Exception do begin
        Result.Free;
        Raise;
      end;
    end;
end;

function TdmNexApp.ArrayItensOrc: TJsonArray;
var J : TJsonObject;
begin
    Result := TJsonArray.Create;
    try
      tIOrc.SetRange([tOrcUID.Value], [tOrcUID.Value]);
      try
        tIOrc.First;
        while not tIOrc.Eof do begin
          J := TJsonObject.Create;
          tIOrc.Fields.ToJson(J, fmItensOrc);
          Result.Add(J);
          tIOrc.Next;
        end;
      finally
        tIOrc.CancelRange;
      end;
    except
      on E: Exception do begin
        Result.Free;
        Raise;
      end;
    end;
end;

function TdmNexApp.ArrayPagto: TJsonArray;
var J : TJsonObject;
begin
  Result := TJsonArray.Create;
  try
    tPagEsp.SetRange([tTranID.Value], [tTranID.Value]);
    try
      tPagEsp.First;
      while not tPagEsp.Eof do begin
        J := TJsonObject.Create;
        Result.Add(J);
        tPagEsp.Fields.ToJson(J, fmPagto);
        tPagEsp.Next;
      end;
    finally
      tPagEsp.CancelRange;
    end;
  except
    on E: Exception do begin
      Result.Free;
      Raise;
    end;
  end;
end;

function TdmNexApp.Create_json_caixa(aAbertura: Boolean): String;
var 
  jInfo, jCard : TJsonObject;
begin
  mtCard.Active := False;
  mtCard.Active := True;
  mtCard.Append;
  mtCardIdRef.Value := tCaixaID.Value;
  mtCardCreationDate.Value := tCardcreated_on.Value;
  if aAbertura then begin
    mtCardEventDate.Value := tCaixaAbertura.Value;
    mtCardType.Value := card_type_aberturacx;
  end else begin
    mtCardEventDate.Value := tCaixaFechamento.Value;
    mtCardType.Value := card_type_caixa;
  end;
    
  mtCardCode.Value := tCardcard_id.Value;
  mtCardShopCode.Value := RegistroGlobal.IDLoja;
  mtCard.Post;

  jCard := TJsonObject.Create;
  try
    mtCard.Fields.ToJson(jCard);
    jInfo := TJsonObject.Create;
    try
      if aAbertura then
        tCaixa.Fields.ToJson(jInfo, fmAberturaCx) else
        tCaixa.Fields.ToJson(jInfo, fmCaixa);
      jCard.addPair(tJsonPair.Create('Info', jInfo));
    except
      on E: Exception do begin
        jInfo.Free;
        raise;
      end;
    end;
    Result := jCard.ToJSon;
  finally
    jCard.Free;
  end;
end;

function TdmNexApp.Create_json_estoque: String;
var 
  jInfo, jCard : TJsonObject;
begin
  mtCard.Active := False;
  mtCard.Active := True;
  mtCard.Append;
  mtCardIdRef.Value := tProdID.Value;
  mtCardCreationDate.Value := tCardcreated_on.Value;
  mtCardEventDate.Value := tCardcreated_on.Value;
  mtCardCode.Value := tCardcard_id.Value;
  mtCardShopCode.Value := RegistroGlobal.IDLoja;
  mtCardType.Value := card_type_estoque;
  mtCard.Post;

  jCard := TJsonObject.Create;
  try
    mtCard.Fields.ToJson(jCard);
    jInfo := TJsonObject.Create;
    try
      tProd.Fields.ToJson(jInfo, fmEstoque);
      if tCardType.Value = card_type_estoque_min then
        jInfo.addPair('Type', 1) else
        jInfo.addPair('Type', 0);
      jCard.addPair(tJsonPair.Create('Info', jInfo));
    except
      on E: Exception do begin
        jInfo.Free;
        raise;
      end;
    end;
    Result := jCard.ToJSon;
  finally
    jCard.Free;
  end;
end;

function TdmNexApp.Create_json_orcamento: String;
var 
  jInfo, jCard : TJsonObject;
begin
  mtCard.Active := False;
  mtCard.Active := True;
  mtCard.Append;
  mtCardIdRef.Value := tOrcIDSeq.Value;
  mtCardCreationDate.Value := tCardcreated_on.Value;
  mtCardEventDate.Value := tOrcAtualizadoEm.Value;
  mtCardCode.Value := tCardcard_id.Value;
  mtCardShopCode.Value := RegistroGlobal.IDLoja;
  mtCardType.Value := card_type_orcamento;
  mtCard.Post;

  jCard := TJsonObject.Create;
  try
    mtCard.Fields.ToJson(jCard);
    jInfo := TJsonObject.Create;
    try
      tOrc.Fields.ToJson(jInfo, fmOrc);
      jInfo.addPair(TJsonPair.Create('Items', ArrayItensOrc));
      jCard.addPair(tJsonPair.Create('Info', jInfo));
    except
      on E: Exception do begin
        jInfo.Free;
        raise;
      end;
    end;
    Result := jCard.ToJSon;
    DebugMsg(Self, 'Create_json_orcamento'+sLineBreak+Result);
  finally
    jCard.Free;
  end;
end;

function TdmNexApp.Create_json_produto: String;
var 
  J: TJsonObject;
  A: TJsonArray;
begin
  J := TJsonObject.Create;
  try
    tProd.Fields.ToJson(J, fmProd);
    A := ArrayFornecedores;
    if Assigned(A) then
      J.addPair(TJsonPair.Create('Suppliers', A));
    Result := J.ToJSon;
//    DebugMsg(Self, 'Create_json_produto: '+Result);
  finally
    J.Free;
  end;
end;

function TdmNexApp.Create_json_venda: String;
var 
  jInfo, jCard : TJsonObject;
begin
  mtCard.Active := False;
  mtCard.Active := True;
  mtCard.Append;
  mtCardIdRef.Value := tTranID.Value;
  mtCardCreationDate.Value := tCardcreated_on.Value;
  mtCardEventDate.Value := tTranDataHora.Value;
  mtCardCode.Value := tCardcard_id.Value;
  mtCardShopCode.Value := RegistroGlobal.IDLoja;

  if tTranTipo.Value=trEstVenda then
    mtCardType.Value := card_type_venda else
    mtCardType.Value := card_type_devolucao;
  mtCard.Post;

  jCard := TJsonObject.Create;
  try
    mtCard.Fields.ToJson(jCard);
    jInfo := TJsonObject.Create;
    try
      if tTranTipo.Value=trEstVenda then
        tTran.Fields.ToJson(jInfo, fmTran) else
        tTran.Fields.ToJson(jInfo, fmDev);
      jInfo.addPair(TJsonPair.Create('Items', ArrayItens));
      jInfo.addPair(TJsonPair.Create('Payments', ArrayPagto));
      jCard.addPair(tJsonPair.Create('Info', jInfo));
    except
      on E: Exception do begin
        jInfo.Free;
        raise;
      end;
    end;
    Result := jCard.ToJSon;
    DebugMsg(Self, 'Create_json_venda_dev'+sLineBreak+Result);
  finally
    jCard.Free;
  end;
end;

procedure TdmNexApp.DataModuleCreate(Sender: TObject);
begin
  FTerm := nil;

  FPrimeiraCarga := False;

  Session.ServerEngine := ncServBD.dmServidorBD.ServerEngine;
  TCP.Free;
  RSE.Free;

  fmLastBuy := TStringList.Create;
  fmLastBuy.Add('LastCost=CalcCustoU');
  fmLastBuy.Add('LastBuy=DataHora');
  
  fmProd := TStringList.Create;
  fmProd.Add('ID=ProductId');
  fmProd.Add('Codigo=ProductCode');
  fmProd.Add('Descricao=ProductName');
  fmProd.Add('Preco=SalePrice');
  fmProd.Add('CustoUnitario=CostPrice');
  fmProd.Add('Categoria=Category');
  fmProd.Add('EstoqueMin=MinimumStock');
  fmProd.Add('EstoqueMax=MaximumStock');
  fmProd.Add('Unid=Unit');  
  fmProd.Add('EstoqueAtual=CurrentStock');
  fmProd.Add('Obs=Observations');
  fmProd.Add('ShopCode=ShopCode');

  fmForn:= TStringList.Create;
  fmForn.Add('ID=SupplierCode');
  fmForn.Add('Nome=SupplierName');
  fmForn.Add('Email=Email');
  fmForn.Add('Telefone=ContactPhone');  
  
  fmTran := TStringList.Create;
  fmTran.Add('DataHora=SaleDate');
  fmTran.Add('Cliente=CustomerCode');
  fmTran.Add('NomeCliente=CustomerName');
  fmTran.Add('Vendedor=VendorCode');
  fmTran.Add('NomeVendedor=VendorName');
  fmTran.Add('TotLiq=TotalNet');
  fmTran.Add('Total=TotalGross');
  fmTran.Add('Desconto=Discount');  
  fmTran.Add('Cancelado=Cancelled');
  fmTran.Add('Obs=Comment');

  fmDev := TStringList.Create;
  fmDev.Add('DataHora=returnDate');
  fmDev.Add('Cliente=CustomerCode');
  fmDev.Add('NomeCliente=CustomerName');
  fmDev.Add('Func=UserCode');
  fmDev.Add('FuncName=UserName');
  fmDev.Add('TotalFinal=Total');
  fmDev.Add('Cancelado=Cancelled');
  fmDev.Add('Obs=Comment');  

  fmPagto := TStringList.Create;
  fmPagto.Add('ImgEsp=PaymentCode');
  fmPagto.Add('Nome=PaymentDescription');
  fmPagto.Add('ValorFinal=Value');
  
  fmItens := TStringList.Create;
  fmItens.Add('Produto=ProductCode');
  fmItens.Add('Descr=ProductName');
  fmItens.Add('Quant=Quantity');
  fmItens.Add('Unitario=UnitValue');
  fmItens.Add('TotalFinal=TotalValue');

  fmCaixa := TStringList.Create;
  fmCaixa.Add('Abertura=OpenTime');
  fmCaixa.Add('Fechamento=CloseTime');
  fmCaixa.Add('Usuario=UserCode');
  fmCaixa.Add('NomeUsuario=UserName');
  fmCaixa.Add('SaldoAnt=InitBalance');
  fmCaixa.Add('TotalFinal=TotalReceived');
  fmCaixa.Add('Sangria=TotalRemoved');
  fmCaixa.Add('Supr=TotalAdded');
  fmCaixa.Add('SaldoF=TotalInformed');
  fmCaixa.Add('TotalCalc=FinalBalance');
  fmCaixa.Add('Divergente=Divergent');
  fmCaixa.Add('Cancelamentos=Cancelled');
  fmCaixa.Add('Descontos=Discounts');
  fmCaixa.Add('Obs=Comment');

  fmAberturaCx := TStringList.Create;
  fmAberturaCx.Add('Abertura=OpenTime');
  fmAberturaCx.Add('Usuario=UserCode');
  fmAberturaCx.Add('NomeUsuario=UserName');
  fmAberturaCx.Add('SaldoAnt=InitBalance');
  
  fmEstoque := TStringList.Create;

  fmEstoque.Add('ID=ProductCode');
  fmEstoque.Add('Descricao=ProductName');
  fmEstoque.Add('EstoqueMin=MinStock');
  fmEstoque.Add('EstoqueAtual=CurrentStock');
  fmEstoque.Add('NomeFornecedor=ProviderName');
  fmEstoque.Add('EmailFornecedor=ProviderEmail');
  fmEstoque.Add('TelFornecedor=ProviderPhone');

  fmOrc := TStringList.Create;
  fmOrc.Add('CriadoEm=CreatedOn');
  fmOrc.Add('AtualizadoEm=UpdatedOn');
  fmOrc.Add('Cliente=CustomerCode');
  fmOrc.Add('NomeCliente=CustomerName');
  fmOrc.Add('Func=VendorCode');
  fmOrc.Add('NomeFunc=VendorName');
  fmOrc.Add('TotFinal=TotalNet');
  fmOrc.Add('Total=TotalGross');
  fmOrc.Add('Desconto=Discount');  
  fmOrc.Add('Status=Status');
  fmOrc.Add('ValData=ExpDate');
  fmOrc.Add('Obs=Comment');

  fmItensOrc := TStringList.Create;
  fmItensOrc.Add('Produto=ProductCode');
  fmItensOrc.Add('Descr=ProductName');
  fmItensOrc.Add('Quant=Quantity');
  fmItensOrc.Add('Unitario=UnitValue');
  fmItensOrc.Add('TotalFinal=TotalValue');  
end;

procedure TdmNexApp.DataModuleDestroy(Sender: TObject);
begin
  fmOrc.Free;
  fmOrcItens.Free;
  fmDev.Free;
  fmProd.Free;
  fmLastBuy.Free;
  fmForn.Free;
  fmTran.Free;
  fmPagto.Free;
  fmItens.Free;
  fmCaixa.Free;
  fmEstoque.Free;
  fmAberturaCx.Free;
end;

procedure TdmNexApp.Open;
begin
  tMovEst.Open;
  tUsuarios.Open;
  tTran.Open;
  tItens.Open;
  tEsp.Open;
  tPagEsp.Open;
  tCard.Open;
  tPost.Open;
  tProd.Open;
  tCli.Open;
  tProd.Open;
  tCaixa.Open;
  tProdFor.Open;
  tOrc.Open;
  tIOrc.Open;
end;

procedure TdmNexApp.PrimeiraCarga;
var T, C, I, F: Cardinal;
begin    
  FPrimeiraCarga := True;
  
  DebugMsg('TdmNexApp.PrimeiraCarga');
  C := GetTickCount;

  tCard.IndexName := 'I_type_id_ref_status';                                    
  tCard.SetRange([card_type_venda], [card_type_venda]);
  tCard.Last;
  tTran.IndexName := 'ITipoID';
  tTran.SetRange([trEstVenda, tCardid_ref.Value+1], [trEstVenda, High(Integer)]);
  try
    tTran.First;
    T := 0;
    while (not tTran.Eof) and (not _Term) do begin
      if not tTranPagPend.Value then begin
        tCard.Append;
        tCardcreated_on.Value := Now;
        tCardtype.Value := card_type_venda;
        tCardid_ref.Value := tTranID.Value;
        tCardstatus.Value := card_status_criar_json;
        tCardmethod.value := http_method_post;
        tCard.Post;
      end;
      tTran.Next;
      Inc(T);
      sleep(0);
    end;
    DebugMsg('TdmNexApp.PrimeiraCarga - Tabela TRAN/Venda - ' + IntToStr(T) + ' itens - Tempo: '+IntToStr(GetTickCount-C)+'ms');
  finally
    tTran.CancelRange;
  end;

  tCard.IndexName := 'I_type_id_ref_status';                                    
  tCard.SetRange([card_type_devolucao], [card_type_devolucao]);
  tCard.Last;
  tTran.IndexName := 'ITipoID';
  tTran.SetRange([trEstDevolucao, tCardid_ref.Value+1], [trEstDevolucao, High(Integer)]);
  try
    tTran.First;
    T := 0;
    while (not tTran.Eof) and (not _Term) do begin
      tCard.Append;
      tCardcreated_on.Value := Now;
      tCardtype.Value := card_type_devolucao;
      tCardid_ref.Value := tTranID.Value;
      tCardstatus.Value := card_status_criar_json;
      tCardmethod.value := http_method_post;
      tCard.Post;
      
      tTran.Next;
      Inc(T);
      sleep(0);
    end;
    DebugMsg('TdmNexApp.PrimeiraCarga - Tabela TRAN/Devolucao - ' + IntToStr(T) + ' itens - Tempo: '+IntToStr(GetTickCount-C)+'ms');
  finally
    tTran.CancelRange;
  end;  

  tCard.IndexName := 'I_type_id_ref_status';                                    
  tCard.SetRange([card_type_orcamento], [card_type_orcamento]);
  tCard.Last;
  
  tOrc.IndexName := 'IIDSeq';
  tOrc.SetRange([tCardid_ref.Value+1], [High(Integer)]);
  try
    tTran.First;
    T := 0;
    while (not tOrc.Eof) and (not _Term) do begin
      tCard.Append;
      tCardcreated_on.Value := Now;
      tCardtype.Value := card_type_orcamento;
      tCardid_ref.Value := tOrcIDSeq.Value;
      tCardstatus.Value := card_status_criar_json;
      tCardmethod.value := http_method_post;
      tCard.Post;
      tOrc.Next;
      Inc(T);
      sleep(0);
    end;
    DebugMsg('TdmNexApp.PrimeiraCarga - Tabela Orcamento - ' + IntToStr(T) + ' itens - Tempo: '+IntToStr(GetTickCount-C)+'ms');
  finally
    tOrc.CancelRange;
  end;  

  tCard.SetRange([card_type_caixa], [card_type_caixa]);
  tCard.Last;
  
  tCaixa.IndexName := 'IID';
  if not tCard.IsEmpty then begin
    I := tCardid_ref.Value+1;
    F := High(Cardinal);
    tCaixa.SetRange([I], [F]);
  end;
  
  try
    tCaixa.First;
    T := 0;
    while (not tCaixa.Eof) and (not _Term) do begin
      tCard.Append;
      if not tCaixaFechamento.IsNull then begin
        tCardcreated_on.Value := Now;
        tCardtype.Value := card_type_caixa;
        tCardid_ref.Value := tCaixaID.Value;
        tCardstatus.Value := card_status_criar_json;
        tCardmethod.value := http_method_post;
        tCard.Post;
      end;
      tCaixa.Next;
      Inc(T);
      sleep(0);
    end;
    DebugMsg('TdmNexApp.PrimeiraCarga - Tabela Caixa - ' + IntToStr(T) + ' itens - Tempo: '+IntToStr(GetTickCount-C)+'ms');
  finally
    tCaixa.CancelRange;
  end;

  tCard.SetRange([card_type_aberturacx], [card_type_aberturacx]);
  tCard.Last;
  
  tCaixa.IndexName := 'IID';
  if not tCard.IsEmpty then begin
    I := tCardid_ref.Value+1;
    F := High(Cardinal);
    tCaixa.SetRange([I], [F]);
  end;
  
  try
    tCaixa.First;
    T := 0;
    while (not tCaixa.Eof) and (not _Term) do begin
      tCard.Append;
      tCardcreated_on.Value := Now;
      tCardtype.Value := card_type_aberturacx;
      tCardid_ref.Value := tCaixaID.Value;
      tCardstatus.Value := card_status_criar_json;
      tCardmethod.value := http_method_post;
      tCard.Post;
      tCaixa.Next;
      Inc(T);
      sleep(0);
    end;
    DebugMsg('TdmNexApp.PrimeiraCarga - Tabela Caixa - ' + IntToStr(T) + ' itens - Tempo: '+IntToStr(GetTickCount-C)+'ms');
  finally
    tCaixa.CancelRange;
  end;  


  tCard.SetRange([card_type_produto], [card_type_produto]);
  tCard.Last;
  
  tProd.IndexName := 'IID';
  if not tProd.IsEmpty then begin
    I := tCardid_ref.Value+1;
    F := High(Cardinal);
    tProd.SetRange([I], [F]);
  end;
  
  try
    tProd.First;
    T := 0;
    while (not tProd.Eof) and (not _Term) do begin
      tCard.Append;
      tCardcreated_on.Value := Now;
      tCardtype.Value := card_type_produto;
      tCardid_ref.Value := tProdID.Value;
      tCardstatus.Value := card_status_criar_json;
      tCardmethod.value := http_method_post;
      tCard.Post;
      
      tProd.Next;
      Inc(T);
      sleep(0);
    end;
    DebugMsg('TdmNexApp.PrimeiraCarga - Tabela Produto - ' + IntToStr(T) + ' itens - Tempo: '+IntToStr(GetTickCount-C)+'ms');
  finally
    tProd.CancelRange;
  end;
  
end;

procedure TdmNexApp.Processa;
begin
  DebugMsg('TdmNexApp.Processa');
  try
    processa_criar_json;
    if _Term then Exit;
    processa_enviar_json;
  except
    on E: Exception do 
      DebugEx(Self, 'Processa', E);
  end;
end;

procedure TdmNexApp.tCaixaCalcFields(DataSet: TDataSet);
begin
  tCaixaDivergente.Value := (Abs(tCaixaQuebra.Value)>0.0001);
  tCaixaTotalCalc.Value := tCaixaSaldoF.Value - tCaixaQuebra.Value;
  tCaixaNomeUsuario.AsVariant := tUsuarios.Lookup('Username', tCaixaUsuario.Value, 'Nome');
  if tCaixaNomeUsuario.isNull then tCaixaNomeUsuario.Value := tCaixaUsuario.Value;
end;

procedure TdmNexApp.tCardBeforePost(DataSet: TDataSet);
begin
  if tCardType.Value=card_type_produto then
    tCardcard_array.Value := card_array_produtos else
    tCardcard_array.Value := card_array_cards;
end;

procedure TdmNexApp.tMovEstCalcFields(DataSet: TDataSet);
begin
  if tMovEstQuant.Value>0 then
    tMovEstCalcCustoU.Value := tMovEstTotLiq.Value / tMovEstQuant.Value;
end;

procedure TdmNexApp.tPagEspCalcFields(DataSet: TDataSet);
begin
  tPagEspValorFinal.Value := tPagEspValor.Value - tPagEspTroco.Value;
  tPagEspImgEsp2.Value := tPagEspImgEsp.Value + 1;
end;

procedure TdmNexApp.tProdCalcFields(DataSet: TDataSet);
begin
  tProdShopCode.Value := RegistroGlobal.IDLoja;
end;

procedure TdmNexApp.processa_criar_json;
var T, C: Cardinal;
begin
  FShopCode := RegistroGlobal.IDLoja;
  T := 0;
  C := GetTickCount;
  tCard.IndexName := 'I_status_method_card_id';
  DebugMsg('TdmNexApp.processa_criar_json');
  tTran.IndexName := 'IID';
  tOrc.IndexName := 'IIDSeq';
  tCaixa.IndexName := 'IID';
  tProd.IndexName := 'IID';
  while (not _Term) and tCard.FindKey([card_status_criar_json]) do begin
    tCard.Edit;
    tCardcreated_on.Value := now;
//    tCardput.Value := False;
    case tCardtype.Value of
      card_type_resync : begin
        tCardjson.Value := '{"ShopCode":'+IntToStr(FShopCode)+'}'; 
        tCardMethod.Value := http_method_reset_store;
      end;
      
      card_type_venda : if tTran.FindKey([tCardid_ref.Value]) then tCardjson.Value := Self.Create_json_venda;

      card_type_orcamento : if tOrc.FindKey([tCardid_ref.Value]) then tCardjson.Value := Self.Create_json_orcamento;

      card_type_produto : if tProd.Locate('ID', tCardid_ref.Value, []) then tCardjson.Value := Self.Create_json_produto;

      card_type_caixa,
      card_type_aberturacx : if tCaixa.FindKey([tCardid_ref.Value]) then tCardjson.Value := Self.Create_json_caixa((tCardtype.Value=card_type_aberturacx));
      
      card_type_estoque_min,
      card_type_estoque_fim  : if tProd.FindKey([tCardid_ref.Value]) then tCardjson.value := Self.Create_json_estoque;
    end;
    tCardstatus.Value := card_status_enviar_json;
    tCard.Post;
    Inc(T); 
  end;
  DebugMsg('TdmNexApp.processa_criar_json - ' + IntToStr(T) + ' itens - Tempo: '+IntToStr(GetTickCount-C)+'ms');
end;

{function nexapp_upload(aURL: String; aPut: Boolean; aDados: TStream; var aRes: String): Boolean;
var 
  H: TIdHTTP;
  C: Cardinal;
begin
  aRes := '';
  Result := False;
  H := TIdHTTP.Create;
  try
    H.HandleRedirects := True;
    H.Request.Accept := 'application/json';
    H.Request.ContentType := 'application/json';
    try
      DebugMsg('nexapp_upload - aUrl: '+aUrl+' - aPut: '+BoolStr[aPut]+' - Size: '+IntToStr(aDados.Size));
      C := GetTickCount;
      if aPut then
        aRes := H.Put(aUrl, aDados) else
        aRes := H.Post(aUrl, aDados);
      Result := True;  
      DebugMsg('nexapp_upload - aUrl: '+aUrl+' - aPut: '+BoolStr[aPut]+' - Tempo: '+IntToStr(GetTickCount-C)+'ms - Ok: '+aRes);
    except
      on E: Exception do begin
        aRes := E.Message;
        DebugMsg('nexapp_upload - aUrl: '+aUrl+' - aPut: '+BoolStr[aPut]+' - Tempo: '+IntToStr(GetTickCount-C)+'ms - Exception: '+aRes);
      end;
    end;
  finally
    H.Free;
  end;
end;}

procedure TdmNexApp.processa_enviar_json;
var 
  T, C: Cardinal;
  Q : Word;
  Req : TStringStream;
  M, ca : Byte;

procedure AddPost(aCardArray, aMethod: Byte);
begin
  try
    if Q>0 then begin
      if aMethod<>http_method_reset_store then
        Req.WriteString(']}');
      tPost.Append;
      tPostDH.Value := Now;
      tPostcard_array.Value := aCardArray;
      tPostContentType.Value := 'application/json';
      tPostMethod.Value := aMethod;
      tPostQtd.Value := Q;
      Req.Position := 0;
      DebugMsg('TdmNexApp.processa_enviar_json.AddPost - Q: '+IntToStr(Q)+' Size: '+IntToStr(Req.Size)+'bytes - Array: '+card_array_name[ca]);
      tPostDados.LoadFromStream(Req);
      tPost.Post;
    end;
    DB.Commit;
    Sleep(10);
  finally
    Q := 0;
    Req.Clear;
  end;
end;

procedure Loop(aCardArray, aMethod: byte);
begin  
  Req.Clear;
  Q := 0;
  try
    tCard.IndexName := 'I_card_array_status_method_card_id';
    InitTran(DB, [tCard, tPost], True);
    while (not _Term) and tCard.FindKey([aCardArray, card_status_enviar_json, aMethod]) do begin
      if not DB.InTransaction then 
        InitTran(DB, [tCard, tPost], True);
      tCard.Edit;
      tCardstatus.Value := card_status_json_enviado;
      tCard.Post;

      if Trim(tCardjson.Value)>'' then begin
        Inc(Q);
        Inc(T);
      
        if aMethod<>http_method_reset_store then begin
          if Q=1 then
            Req.WriteString('{"'+card_array_name[aCardArray]+'":[') else
            Req.WriteString(',');
        end;
        
        Req.WriteString(tCardjson.Value);
  
        if Q>=1000 then AddPost(aCardArray, aMethod);
      end else 
        DebugMsg(Self, 'processa_enviar_json - ERRO JSON BRANCO: '+tCardType.AsString+' - '+tCardcard_ID.AsString);
    end;
    if Q>0 then AddPost(aCardArray, aMethod);
  finally
    if DB.InTransaction then DB.Rollback;
  end;
end;

begin
  T := 0;
  C := GetTickCount;
  DebugMsg('TdmNexApp.processa_enviar_json');
  tCard.IndexName := 'I_status_method_card_id';
  Req := TStringStream.Create('', TEncoding.UTF8);
  try
    if tCard.FindKey([card_status_enviar_json]) and 
       (not tCard.FindKey([card_status_enviar_json, http_method_reset_store])) and
       (not tCard.FindKey([card_status_json_enviado, http_method_reset_store])) then
    begin
      tCard.Append;
      tCardcreated_on.Value := now;
      tCardtype.Value := card_type_resync;
      tCardjson.Value := '{"ShopCode":'+IntToStr(FShopCode)+'}'; 
      tCardMethod.Value := http_method_reset_store;
      tCardstatus.Value := card_status_enviar_json;
      tCard.Post;    
    end;
    
    for ca := card_array_cards to card_array_produtos do 
    for m := 0 to http_method_delete do Loop(ca, m);
  finally
    Req.Free;
  end;
  if T>0 then sinaliza_post_nexapp;

  DebugMsg('TdmNexApp.processa_enviar_json - ' + IntToStr(T) + ' itens - Tempo: '+IntToStr(GetTickCount-C)+'ms');
end;

function TdmNexApp._Term: Boolean;
begin
  Result := Assigned(FTerm) and FTerm;
end;

{ TThread_nexapp }

procedure TThread_nexapp.AfterConstruction;
begin
  inherited;
  FEvent := TEvent.Create;
  FreeOnTerminate := True;
  gThread_nexapp := self;
end;

procedure TThread_nexapp.BeforeDestruction;
begin
  inherited;
  FEvent.Free;
  if gThread_nexapp=Self then gThread_nexapp := nil;
end;

procedure TThread_nexapp.Execute;
var dm : TdmNexApp;
begin
  dm := TdmNexApp.Create(nil);
  try
    dm.OnTerminateEvent := onterm;
    dm.Open;
    dm.PrimeiraCarga;
    while not Terminated do begin
      FEvent.ResetEvent;
      dm.Processa;
      FEvent.WaitFor(60000);
    end;
  except
    on E: Exception do 
      DebugMsg('TThread_nexapp.Execute - Exception: '+E.Message);
  end;
  dm.Free;
end;

function TThread_nexapp.onterm: Boolean;
begin
  Result := Terminated;
end;

procedure TThread_nexapp.Sinaliza;
begin
  DebugMsg(Self, 'Sinaliza');
  FEvent.SetEvent;
end;

procedure TThread_nexapp.Terminar;
begin
  Sinaliza;
  Terminate;
  if gThread_nexapp=Self then gThread_nexapp := nil;
end;

procedure Sinaliza_nexapp;
begin
  if Assigned(gThread_nexapp) then 
    gThread_nexapp.Sinaliza;
end;

{ TThread_nexapp_upload }

{ Tnexapp_config }

constructor Tnexapp_config.Create;
begin
  inherited;
  FCS := TCriticalSection.Create;
end;

destructor Tnexapp_config.Destroy;
begin
  if Assigned(gThread_nexapp) then gThread_nexapp.Terminar;
  if Assigned(gThread_post_nexapp) then gThread_post_nexapp.Terminar;

  FCS.Free;
  inherited;
end;

procedure Tnexapp_config.Refresh;
var B: Boolean;
begin
  FCS.Enter;
  try
    B := gNexApp_enviar and (RegistroGlobal.IDLoja>0) and ServidorAtivo and (RegistroGlobal.Tipo in [tcFreePremium, tcFreePro]);
    if B then begin
      if (not Assigned(gThread_nexapp)) then 
         gThread_nexapp := TThread_nexapp.Create;

      if (not Assigned(gThread_post_nexapp)) then 
        gThread_post_nexapp := TThread_post_nexapp.Create;
    end else begin
      if Assigned(gThread_nexapp) then gThread_nexapp.Terminar;
      if Assigned(gThread_post_nexapp) then gThread_post_nexapp.Terminar;
    end;
  finally
    FCS.Leave;
  end;
end;

initialization
  gNexApp_enviar := False;
  gThread_nexapp := nil;
  gNexApp_Config := Tnexapp_config.Create;

finalization
  
  if Assigned(gThread_nexapp) then 
    gThread_nexapp.Terminar;
    
  gNexApp_Config.Free;
    

  


end.



{ 
    "_id" : ObjectId("577bc714988f3624bc365bec"), //gerado automaticamente
    "Code" : NumberInt(160719), // codigo na tabela Cards local
    "CreationDate" : ISODate("2016-07-05T14:31:29.980+0000"), //data em que o card foi criado
    "Type" : NumberInt(0), //tipo do Card {0 = Venda, 1 = Fechamento de Caixa, 2 = Alerta de Estoque, 3 = Faturamento }
    "IdRef" : NumberInt(88535), //código da Venda
    "Info" : {        
        "SaleCode" : NumberInt(88535), 
        "SaleDate" : ISODate("2016-06-09T02:24:51.835+0000"), //data da Venda 
        "ShopCode" : "230", //codigo da loja que devera ser unificado entre Nex, MinhaLoja e NexApp
        "CustomerCode" : "0", 
        "VendorCode" : null, 
        "CustomerName" : "", 
        "VendorName" : "admin", 
        "TotalNet" : 23.0,  // total Liquido
        "TotalGross" : 23.0, //total Bruto
        "Discount" : 0.0, // desconto
        "Items" : [
            {
                "ProductCode" : NumberInt(234), 
                "ProductName" : "CORONA CERVEZA 355CM", 
                "Quantity" : NumberLong(2), 
                "UnitValue" : 6.5, 
                "TotalValue" : 13.0, 
                "SaleCode" : NumberInt(88535)
            }, 
            {
                "ProductCode" : NumberInt(1094), 
                "ProductName" : "BATIDINHA DE COCO BAIANINHA", 
                "Quantity" : NumberLong(1), 
                "UnitValue" : 10.0, 
                "TotalValue" : 10.0, 
                "SaleCode" : NumberInt(88535)
            }
        ], 
        "Payments" : [
            {
                "PaymentCode" : NumberInt(2), 
                "PaymentDescription" : "Dinheiro", 
                "Value" : 10.0               
            }, 
            {
                "PaymentCode" : NumberInt(3), 
                "PaymentDescription" : "Cartão de Credito - Visa", 
                "Value" : 13.0        
            }
        ],             
        "Comment" : "" //Observacao
    }, 
    "Updated" : true, 
    "ShopCode" : "shopCodeMaybeForever", 
    "EventDate" : ISODate("2016-06-09T02:24:51.835+0000") //data da Venda
}



