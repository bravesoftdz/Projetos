unit ncMovEst;
{
    ResourceString: Dario 13/03/13
}

interface

uses
  SysUtils,
  DB,
  nxDB,
  Classes,
  Windows,
  ClasseCS,
  ncEspecie,
  ncClassesBase;


type

  TncMovEst = class;

  TncItemMovEst = class;

  TncTaxItem = class
  private
    FIME : TncItemMovEst;
    function GetString: String;
    procedure SetString(S: String);

    function delim: String;
  public
    tiTax_id : Cardinal;
    tiTax_nome : String;
    tiTax_incluido : Boolean;
    tiTax_perc : Double;

    constructor Create(aIME: TncItemMovEst);

    procedure LoadFromDataset(D: TDataset);
    procedure SaveToDataset(D: TDataset);

    function valor_incluido: Currency;
    function valor_incluir: Currency;
    
    function Valor: Currency;
    property AsString: String read GetString write SetString;
  end;

  TncTaxDescrItem = class
    tdxID : Cardinal;
    tdxNome : String;
    tdxValor : Currency;
    tdxIncluido : Boolean;

    constructor Create(aID: Cardinal; aNome: String; aIncluido: Boolean);

    procedure Add(aValor: Currency);
  end;

  TncTaxDescr = class
  private
    FItens : TList;
    function GetItem(I: Integer): TncTaxDescrItem;

    function FindAdd(aID: Cardinal; aNome: String; aIncluido: Boolean): TncTaxDescrItem;
  public
    constructor Create;

    destructor Destroy; override;

    procedure Limpa;
    procedure Add(aID: Cardinal; aNome: String; aValor: Currency; aIncluido: Boolean);  

    function Count: Integer;

    function Total: Currency;

    function Descr: String;

    function TemTaxAdd: Boolean;

    property Itens[I: Integer] : TncTaxDescrItem 
      read GetItem; default;
  end;

  TncTaxItens = class
  private
    FItens : TList;
    FIME : TncItemMovEst;

    function GetString: String;
    procedure SetString(Value: String);
    function GetItem(I: Integer): TncTaxItem;
  public
    constructor Create(aIME: TncItemMovEst);
    destructor Destroy; override;

    function NewItem: TncTaxItem;

    function FindTaxId(aId: Cardinal): TncTaxItem;

    procedure Limpa;

    function Count: Integer;

    property Itens[I: Integer]: TncTaxItem
      read GetItem; Default;

    procedure LoadTaxItens(tTax, tTaxItens: TnxTable);

    procedure LoadFromDataset(tMovEstTax: TnxTable);
    procedure SaveToDataset(tMovEstTax: TnxTable);

    procedure RecalcTax;


    property AsString: String read GetString write SetString;
  end;

  TncItemMovEst = class
  private
    FMovEst: TncMovEst;
    function GetString: String;
    procedure SetString(const Value: String);
    function GetPagEspStr: String;
    procedure SetPagEspStr(const Value: String);
    function GetTempStr: String;
    procedure SetTempStr(const Value: String);
    function GetTaxItensStr: String;
    procedure SetTaxItensStr(const Value: String);
  public
    imID : Integer;
    imID_Ref : Cardinal;
    imTran : Cardinal;
    imProduto : Cardinal;
    imProdutoDescr : String;
    imQuant : Double;
    imUnitario : Currency;
    imTotal : Currency;
    imCustoU : Currency;
    imItem : Byte;
    imDesconto : Currency;
    imPago : Currency;
    imDataHora : TDateTime;
    imCancelado : Boolean;
    imEstoqueAnt : Double;
    imTipoTran : Byte;
    imCliente : Cardinal;
    imSessao : Integer;
    imCaixa : Integer;
    imCategoria : String;
    imNaoControlaEstoque : Boolean;
    imITran: Integer;
    imPermSemEstoque : Boolean;
    imFidResgate : Boolean;
    imFidPontos : Double;
    imTax_id : Cardinal;
    imTax_incluir : Currency;
    imTax_incluido : Currency;
    imDebDev : Currency;
    imDadosFiscais : String;
    
    imObs: String;
    imPagEsp: TncPagEspecies;
    imTaxItens: TncTaxItens;

    imComissao: Currency;
    imComissaoPerc: Double;
    imComissaoLucro: Boolean;
    
    _Recibo : Boolean;
    _Operacao : Byte;

    constructor Create(aMovEst: TncMovEst);
    destructor Destroy; override;
    procedure Limpa;

    procedure AssignFrom(IM: TncItemMovEst);

    function Igual(IM: TncItemMovEst): Boolean;

    function Entrada: Boolean;
    function Fator: Integer;
    function SaldoPost: Double;
    function Debito: Currency;
    function ValorPagar: Currency;
    function UnitarioLiq: Currency; 
    function ValorProdLiq: Currency;

    function PagPend: Boolean;
    function CaixaPag: Integer;
    function Descr: String;

    procedure CriaPagEsp;
    procedure DestroiPagEsp;

    procedure SaveToDataset(D: TDataset);
    procedure SaveToITranDataset(D: TDataset);
    
    procedure LoadFromDataset(tMovEst, tMovEstTax: TnxTable);

    procedure AtualizaTipoTran(aTipo: Byte);

    property PagEspStr: String read GetPagEspStr write SetPagEspStr;

    property TaxItensStr: String read GetTaxItensStr write SetTaxItensStr;

    property TempStr: String
      read GetTempStr write SetTempStr;
    
    property AsString: String
      read GetString write SetString;
  end;

  TncOnLoadTempItem = procedure (Item: TncItemMovEst) of object;

  TncItensMovEst = class
  private
    FMovEst: TncMovEst;
    FItens : TList;
    FOnLoadTempItem : TncOnLoadTempItem;
    function GetItem(I: Integer): TncItemMovEst;
    function GetString: String;
    procedure SetString(Value: String);
  public
    constructor Create(aMovEst: TncMovEst);
    destructor Destroy; override;

    procedure AjustaOperacao(B: TncItensMovEst; const AssignB: Boolean = True);

    procedure LoadTemp;
    procedure SaveTemp;

    procedure Remove(IME: TncItemMovEst);
    procedure Delete(aIndex: Integer);

    procedure AtualizaTipoTran(aTipo: Byte);
    
    procedure Limpa;

    procedure UpdateTaxDescr(T: TncTaxDescr);

    procedure RecalcTax;

    function QuantProduto(aProduto: Integer): Double;

    function Count: Integer;

    function Descr: String;

    function ComissaoTot: Currency;

    function get_tax_incluido: Currency;
    function get_tax_incluir: Currency;

    function NewItem: TncItemMovEst;

    function GetItemByID(aID: Integer): TncItemMovEst;
    function GetItemByTran(aTran: Integer): TncItemMovEst;

    property OnLoadTempItem: TncOnLoadTempItem
      read FOnLoadTempItem write FOnLoadTempItem;
    
    property Itens[I: Integer]: TncItemMovEst
      read GetItem; Default;

    property AsString: String
      read GetString write SetString;  
  
  end;

  TncMovEst = class (TClasseCS)
  private
    FID          : Integer;
    FUID         : TGuid;
    FDataHora    : TDateTime;
    FCliente     : Integer;
    FTipo        : Integer;
    FFunc        : String;
    FVendedor    : String;
    FTotal       : Currency;
    FDesconto    : Currency;
    FDescPerc    : Double;
    FDescPorPerc : Boolean;

    FPago        : Currency;
    FObs         : String;
    FExtra       : String;
    FCancelado   : Boolean;
    FCanceladoPor: String;
    FCanceladoEm : TDateTime;
    FCaixa       : Integer;
    FCaixaPag    : Integer;
    FMaq         : Word;
    FNomeCliente : String;
    FSessao      : Integer;
    FDescr       : String;
    FOperacao    : Byte;
    FRecibo      : Boolean;
    FFidResgate  : Boolean;
    FPagPend     : Boolean;
    FPagFunc     : String;
    FPagEsp      : TncPagEspecies;
    FOpDevValor  : Byte;
    FUID_Ref     : TGUID;
    FTipoNFE     : Byte;
    FStatusNFE   : Byte;

    FEntregar    : Boolean;
    FEnd_entrega : TGUID;
    FTranspEnt   : Cardinal;
    FFrete       : Currency;
    FTranspPesoL : Double;
    FTranspPesoB : Double;
    FTranspVol   : Word;
    FTranspPesoVol : Byte; // 0 - nao enviar, 1 - enviar peso auto, 2 - enviar peso manual
    FXMLCompra     : String;

    FUpdID   : TGUID;
    
    FItens       : TncItensMovEst;
    function GetStrItens: String;
    procedure SetStrItens(const Value: String);
    procedure SetCaixa(const Value: Integer);
    procedure SetCancelado(const Value: Boolean);
    procedure SetID(const Value: Integer);
    procedure SetSessao(const Value: Integer);
    procedure SetTipo(const Value: Integer);
    procedure SetFidResgate(const Value: Boolean);
    function GetPagEspStr: String;
    procedure SetPagEspStr(const Value: String);
    function GetCaixaPag: Integer;
    function GetUID: String;
    procedure SetUID(const Value: String);
    function GetNativeUID: TGuid;
    procedure SetNativeUID(const Value: TGuid);
    function GetUID_Ref: String;
    procedure SetUID_Ref(const Value: String);
    function GetObsNF: Boolean;
    procedure SetObsNF(const Value: Boolean);
    function Get_tax_incluido: Currency;
    function Get_tax_incluir: Currency;
    procedure Set_tax_incluido(const Value: Currency);
    procedure Set_tax_incluir(const Value: Currency);
    function GetEndEntrega: String;
    procedure SetEndEntrega(const Value: String);
    function GetUpdID: String;
    procedure SetUpdID(const Value: String);
  protected
    function GetChave: Variant; override;
  public
    constructor Create;
    destructor Destroy; override;

    procedure Limpa;

    procedure CriaUID;

    procedure SalvaDescPago;
    procedure SalvaTipoTran;

    function PodeSalvarSemCaixa: Boolean;

    function PagEsp: TncPagEspecies;

    function NewIME: TncItemMovEst;

    function PodeAlterarTipoNFE: Boolean;

    function ValorDebitado: Currency;

    function ValorTroco: Currency;

    function TotalFinal: Currency;

    function DebitoFrete: Currency;

    function SalvarDebFrete(B: TncMovEst): Boolean;

    procedure AddExtraInfo(aInfo: String);

    function PagouTotal: Boolean;

    property NativeUpdID: TGuid
      read FUpdID write FUpdID;

    property NativeUID: TGuid
      read GetNativeUID write SetNativeUID;

    property Native_End_Entrega: TGuid
      read FEnd_Entrega write FEnd_Entrega;  

    property Itens: TncItensMovEst read FItens;
  published
    property ID : Integer
      read FID write SetID;

    property UID: String
      read GetUID write SetUID;  

    property UID_Ref: String
      read GetUID_Ref write SetUID_Ref;

    property UpdID: String
      read GetUpdID write SetUpdID;  

    property OpDevValor: Byte
      read FOpDevValor write FOpDevValor;

    property DataHora : TDateTime
      read FDataHora write FDataHora;
      
    property Cliente : Integer
      read FCliente write FCliente;

    property TranspEnt: Cardinal
      read FTranspEnt write FTranspEnt;

    property Tipo : Integer
      read FTipo write SetTipo;
      
    property Func : String
      read FFunc write FFunc;

    property Vendedor: String
      read FVendedor write FVendedor;
      
    property Total : Currency
      read FTotal write FTotal;

    property Frete : Currency
      read FFrete write FFrete;  

    property TranspPesoL : Double
      read FTranspPesoL write FTranspPesoL;
      
    property TranspPesoB : Double
      read FTranspPesoB write FTranspPesoB;

    property TranspVol: Word
      read FTranspVol write FTranspVol;

    property TranspPesoVol : Byte
      read FTranspPesoVol write FTranspPesoVol; // 0 - nao enviar, 1 - enviar peso auto, 2 - enviar peso manual
      
    property Desconto : Currency
      read FDesconto write FDesconto;

    property DescPerc : Double
      read FDescPerc write FDescPerc;

    property DescPorPerc : Boolean
      read FDescPorPerc write FDescPorPerc;

    property tax_incluido : Currency
      read Get_tax_incluido write Set_tax_incluido;

    property tax_incluir : Currency
      read Get_tax_incluir write Set_tax_incluir;
      
    property Pago : Currency
      read FPago write FPago;
      
    property Obs : String
      read FObs write FObs;

    property ObsNF: Boolean
      read GetObsNF write SetObsNF;  

    property Extra : String
      read FExtra write FExtra;

    property TipoNFE: Byte
      read FTipoNFE write FTipoNFE;

    property StatusNFE: Byte
      read FStatusNFE write FStatusNFE;
      
    property Cancelado : Boolean
      read FCancelado write SetCancelado;
      
    property CanceladoPor : String
      read FCanceladoPor write FCanceladoPor;
      
    property CanceladoEm : TDateTime
      read FCanceladoEm write FCanceladoEm;
      
    property Caixa : Integer
      read FCaixa write SetCaixa;

    property CaixaPag: Integer
      read GetCaixaPag write FCaixaPag;
      
    property Maq : Word
      read FMaq write FMaq;
      
    property NomeCliente : String
      read FNomeCliente write FNomeCliente;
      
    property Sessao : Integer
      read FSessao write SetSessao;

    property Descr : String
      read FDescr write FDescr;

    property XMLCompra : String
      read FXMLCompra write FXMLCompra; 

    property Operacao: Byte
      read FOperacao write FOperacao;

    property Recibo : Boolean
      read FRecibo write FRecibo;  
        
    property StrItens: String
      read GetStrItens write SetStrItens;  

    property FidResgate : Boolean
      read FFidResgate write SetFidResgate; 

    property PagPend: Boolean
      read FPagPend write FPagPend;
      
    property PagFunc: String
      read FPagFunc write FPagFunc;
       
    property PagEspStr: String
      read GetPagEspStr write SetPagEspStr;

    property Entregar: Boolean
      read FEntregar write FEntregar;

    property endereco_entrega: String
      read GetEndEntrega write SetEndEntrega;
  end;

  procedure DeleteTempItensME;
  function FNTempItensME: String;

  procedure DecodeTempItemStr(S: String; var aProduto: Cardinal; var aQuant: Double; var aUnitario, aTotal: Currency; var aPermSemEstoque: Boolean);

  function getDescrMovEst(aTipoTran: Integer; aQuant: Double; aProduto: String): String;

implementation

uses ncGuidUtils, ncDebug;

{ TncItemMovEst }

function FNTempItensME: String;
begin
  Result := ExtractFilePath(ParamStr(0))+'ItensME.temp';
end;

procedure DeleteTempItensME;
begin
  if FileExists(FNTempItensME) then DeleteFile(PChar(FNTempItensME));
end;

procedure TncItemMovEst.AssignFrom(IM: TncItemMovEst);
begin
  imID := IM.imID;
  imID_Ref := IM.imID_Ref;
  imTran := IM.imTran;
  imProduto := IM.imProduto;
  imProdutoDescr := IM.imProdutoDescr;
  imQuant := IM.imQuant;
  imUnitario := IM.imUnitario;
  imTotal := IM.imTotal;
  imCustoU := IM.imCustoU;
  imItem := IM.imItem;
  imDesconto := IM.imDesconto;
  imPago := IM.imPago;
  imDataHora := IM.imDataHora;
  imCancelado := IM.imCancelado;
  imEstoqueAnt := IM.imEstoqueAnt;
  imTipoTran := IM.imTipoTran;
  imCliente := IM.imCliente;
  imCaixa := IM.imCaixa;
  imCategoria := IM.imCategoria;
  imNaoControlaEstoque := IM.imNaoControlaEstoque;
  imITran := IM.imITran;
  imFidResgate := IM.imFidResgate;
  imFidPontos := IM.imFidPontos;
  imSessao := IM.imSessao;
  imObs := IM.imObs;
  imPermSemEstoque := IM.imPermSemEstoque;
  imTax_id := IM.imTax_id;
  imTax_incluir := IM.imTax_incluir;
  imTax_incluido := IM.imTax_incluido;
  imDebDev := IM.imDebDev;
  imTaxItens.AsString := IM.imTaxItens.AsString;
  imDadosFiscais := IM.imDadosFiscais;
  _Recibo := IM._Recibo;
  _Operacao := IM._Operacao;
end;

function TncItemMovEst.CaixaPag: Integer;
begin
  if (FMovEst=nil) or PagPend then
    result := 0 else
    Result := FMovEst.FCaixaPag;
end;

constructor TncItemMovEst.Create(aMovEst: TncMovEst);
begin
  inherited Create;
  FMovEst := aMovEst;
  imPagEsp := nil;
  imTaxItens := TncTaxItens.Create(Self);
  Limpa;
end;

procedure TncItemMovEst.CriaPagEsp;
begin
  if imPagEsp=nil then
    imPagEsp := TncPagEspecies.Create;
end;

function TncItemMovEst.Debito: Currency;
begin
  if imCancelado or (imTipoTran<>trEstVenda) then
    Result := 0 else
    Result := ValorPagar-imPago;
end;

function getDescrMovEst(aTipoTran: Integer; aQuant: Double; aProduto: String): String;
begin
  if aTipoTran=trAjustaCusto then
    Result := aProduto + ' = '  + CurrencyToStr(aQuant) else
    Result := FloatToStr(aQuant)+ ' X ' + aProduto;
end;

function TncItemMovEst.Descr: String;
begin
  Result := getDescrMovEst(imTipoTran, imQuant, imProdutoDescr);
end;

procedure TncItemMovEst.DestroiPagEsp;
begin
  if imPagEsp<>nil then FreeAndNil(imPagEsp);
end;

destructor TncItemMovEst.Destroy;
begin
  imTaxItens.Free;
  DestroiPagEsp;

  inherited;
end;

function TncItemMovEst.Entrada: Boolean;
begin
  Result := (imTipoTran in [trEstCompra, trEstEntrada, trEstDevolucao, trEstTransfEnt]);
end;

function TncItemMovEst.Fator: Integer;
begin
  if imCancelado or (imTipoTran = trAjustaCusto) then
    Result := 0 
  else  
  if Entrada then
    Result := 1 else
    Result := -1;
end;

function TncItemMovEst.GetPagEspStr: String;
begin
  if imPagEsp=nil then
    Result := '' else
    Result := imPagEsp.AsString;
end;

function TncItemMovEst.GetString: String;
begin
  Result := 
    IntToStr(imID) + sFldDelim(classid_TncItemMovEst) +
    IntToStr(imID_Ref) + sFldDelim(classid_TncItemMovEst) + 
    IntToStr(imTran) + sFldDelim(classid_TncItemMovEst) +
    IntToStr(imProduto) + sFldDelim(classid_TncItemMovEst) +
    FloatParaStr(imQuant) + sFldDelim(classid_TncItemMovEst) +
    FloatParaStr(imUnitario) + sFldDelim(classid_TncItemMovEst) +
    FloatParaStr(imTotal) + sFldDelim(classid_TncItemMovEst) +
    FloatParaStr(imCustoU) + sFldDelim(classid_TncItemMovEst) +
    IntToStr(imItem) + sFldDelim(classid_TncItemMovEst) +
    FloatParaStr(imDesconto) + sFldDelim(classid_TncItemMovEst) +
    FloatParaStr(imPago) + sFldDelim(classid_TncItemMovEst) +
    GetDTStr(imDataHora) + sFldDelim(classid_TncItemMovEst) +
    BoolStr[imCancelado] + sFldDelim(classid_TncItemMovEst) +
    FloatParaStr(imEstoqueAnt) + sFldDelim(classid_TncItemMovEst) +
    IntToStr(imTipoTran) + sFldDelim(classid_TncItemMovEst) +
    IntToStr(imCliente) + sFldDelim(classid_TncItemMovEst) +
    IntToStr(imSessao) + sFldDelim(classid_TncItemMovEst) +
    IntToStr(imCaixa) + sFldDelim(classid_TncItemMovEst) +
    imCategoria + sFldDelim(classid_TncItemMovEst) +
    BoolStr[imNaoControlaEstoque] + sFldDelim(classid_TncItemMovEst) +
    IntToStr(imITran) + sFldDelim(classid_TncItemMovEst) +
    BoolStr[imPermSemEstoque] + sFldDelim(classid_TncItemMovEst) +
    BoolStr[imFidResgate] + sFldDelim(classid_TncItemMovEst) +
    FloatParaStr(imFidPontos) + sFldDelim(classid_TncItemMovEst) +

    IntToStr(imTax_id) + sFldDelim(classid_TncItemMovEst) +
    FloatParaStr(imTax_incluir) + sFldDelim(classid_TncItemMovEst) + 
    FloatParaStr(imTax_incluido) + sFldDelim(classid_TncItemMovEst) +
    TaxItensStr + sFldDelim(classid_TncItemMovEst) + 
    FloatParaStr(imDebDev) + sFldDelim(classid_TncItemMovEst) + 
    
    imObs + sFldDelim(classid_TncItemMovEst) + 
    imDadosFiscais + sFldDelim(classid_TncItemMovEst) + 
    PagEspStr + sFldDelim(classid_TncItemMovEst) +
    BoolStr[_Recibo] + sFldDelim(classid_TncItemMovEst) + 
    IntToStr(_Operacao) + sFldDelim(classid_TncItemMovEst);
end;

function ValStr(V: Extended): String;
begin
  Str(V, Result);
end;

function TncItemMovEst.GetTaxItensStr: String;
begin
  Result := imTaxItens.AsString;
end;

function TncItemMovEst.GetTempStr: String;
begin
  Result := IntToStr(imProduto)+';'+ValStr(imQuant)+';'+ValStr(imUnitario)+';'+ValStr(imTotal)+';'+IntToStr(Byte(imPermSemEstoque));
end;

function TncItemMovEst.Igual(IM: TncItemMovEst): Boolean;
begin
  Result := False;
  if imID <> IM.imID then Exit;
  if imID_Ref <> IM.imID_Ref then Exit;
  if imTran <> IM.imTran then Exit;
  if imProduto <> IM.imProduto then Exit;
  if imQuant <> IM.imQuant then Exit;
  if imUnitario <> IM.imUnitario then Exit;
  if imTotal <> IM.imTotal then Exit;
  if imCustoU <> IM.imCustoU then Exit;
  if imItem <> IM.imItem then Exit;
  if imDesconto <> IM.imDesconto then Exit;
  if imPago <> IM.imPago then Exit;
  if imDataHora <> IM.imDataHora then Exit;
  if imCancelado <> IM.imCancelado then Exit;
  if imEstoqueAnt <> IM.imEstoqueAnt then Exit;
  if imTipoTran <> IM.imTipoTran then Exit;
  if imCliente <> IM.imCliente then Exit;
  if imSessao <> IM.imSessao then Exit;
  if imCaixa <> IM.imCaixa then Exit;
  if imCategoria <> IM.imCategoria then Exit;
  if imNaoControlaEstoque <> IM.imNaoControlaEstoque then Exit;
  if imITran <> IM.imITran then Exit;
  if imFidResgate<>IM.imFidResgate then Exit;
  if imFidPontos<>IM.imFidPontos then Exit;
  if imObs<>IM.imObs then Exit;
  if imPermSemEstoque <> IM.imPermSemEstoque then Exit;

  if (imPagEsp=nil) <> (IM.imPagEsp=nil) then Exit;
  if (imPagEsp<>nil)  and (not imPagEsp.Igual(IM.imPagEsp)) then Exit;
  
  if PagPend <> IM.PagPend then Exit;
  if imDebDev <> IM.imDebDev then Exit;

  if imDadosFiscais <> IM.imDadosFiscais then Exit;
  
  
  if _Operacao <> IM._Operacao then Exit;
  Result := True;
end;

procedure TncItemMovEst.Limpa;
begin
  imID := -1;
  imID_Ref := 0;
  imTran := 0;
  imProduto := 0;
  imDadosFiscais := '';
  imQuant := 0;
  imUnitario := 0;
  imTotal := 0;
  imCustoU := 0;
  imItem := 0;
  imDesconto := 0;
  imPago := 0;
  imDataHora := 0;
  imCancelado := False;
  imEstoqueAnt := 0;
  imTipoTran := 0;
  imCliente := 0;
  imSessao := 0;
  imCaixa := 0;
  imCategoria := '';
  imITran := -1;
  imFidResgate := False;
  imFidPontos := 0;
  imNaoControlaEstoque := False;

  imComissao := 0;
  imComissaoPerc := 0;
  imComissaoLucro := False;

  imDebDev := 0;
  
  if imPagEsp<>nil then imPagEsp.Clear;
  
  _Recibo := False;
  _Operacao := osNenhuma;
end;

procedure TncItemMovEst.LoadFromDataset(tMovEst, tMovEstTax: TnxTable);
begin
  imID := tMovEst.FieldByName('ID').AsInteger; // do not localize
  imID_Ref := tMovEst.FieldByName('ID_Ref').AsLongWord;
  imTran := tMovEst.FieldByName('Tran').AsInteger; // do not localize
  imTipoTran := tMovEst.FieldByName('TipoTran').AsInteger; // do not localize
  imProduto := tMovEst.FieldByName('Produto').AsInteger; // do not localize
  imProdutoDescr := tMovEst.FieldByName('Descr').AsString;
  imObs := tMovEst.FieldByName('Obs').AsString;
  imQuant := tMovEst.FieldByName('Quant').AsFloat; // do not localize

  imUnitario := tMovEst.FieldByName('Unitario').AsCurrency; // do not localize
  imTotal := tMovEst.FieldByName('Total').AsCurrency; // do not localize
  imCustoU := tMovEst.FieldByName('CustoU').AsCurrency; // do not localize
  imItem := tMovEst.FieldByName('Item').AsInteger; // do not localize
  imDesconto := tMovEst.FieldByName('Desconto').AsCurrency; // do not localize
  imPago := tMovEst.FieldByName('Pago').AsCurrency; // do not localize
  if tMovEst.FieldByName('DataHora').IsNull then
    imDataHora := 0 else
    imDataHora := tMovEst.FieldByName('DataHora').AsDateTime; // do not localize
    
  imCancelado := tMovEst.FieldByName('Cancelado').AsBoolean; // do not localize
  imEstoqueAnt := tMovEst.FieldByName('EstoqueAnt').AsFloat; // do not localize
  imCliente := tMovEst.FieldByName('Cliente').AsInteger; // do not localize
  imSessao := tMovEst.FieldByName('Sessao').AsInteger; // do not localize
  imCaixa := tMovEst.FieldByName('Caixa').AsInteger; // do not localize
  imCategoria := tMovEst.FieldByName('Categoria').AsString; // do not localize
  imNaoControlaEstoque := tMovEst.FieldByName('NaoControlaEstoque').AsBoolean; // do not localize
  imITran := tMovEst.FieldByName('ITran').AsInteger; // do not localize   
  imPermSemEstoque := tMovEst.FieldByName('PermSemEstoque').AsBoolean; // do not localize
  imFidResgate := tMovEst.FieldByName('FidResgate').AsBoolean; // do not localize
  imFidPontos := tMovEst.FieldByName('FidPontos').AsFloat; // do not localize

  imTax_id := tMovEst.FieldByName('tax_id').AsLongWord;
  imTax_incluido := tMovEst.FieldByName('tax_incluido').AsCurrency;
  imTax_incluir := tMovEst.FieldByName('tax_incluir').AsCurrency;

  imComissao := tMovEst.FieldByName('Comissao').AsCurrency;
  imComissaoPerc := tMovEst.FieldByName('ComissaoPerc').AsFloat;
  imComissaoLucro := tMovEst.FieldByName('ComissaoLucro').AsBoolean;

  imDebDev := tMovEst.FieldByName('DebDev').AsCurrency;

  imTaxItens.LoadFromDataset(tMovEstTax);
  _Recibo := False;
  _Operacao := osNenhuma;
end;

function TncItemMovEst.PagPend: Boolean;
begin
  if FMovEst<>nil then 
    Result := FMovEst.PagPend else
    Result := False;
end;

function TncItemMovEst.SaldoPost: Double;
begin
  Result := imEstoqueAnt + (Fator * imQuant);
end;

procedure TncItemMovEst.SaveToDataset(D: TDataset);
begin
  D.FieldByName('Tran').AsInteger := imTran; // do not localize
  D.FieldByName('Produto').AsInteger := imProduto; // do not localize
  D.FieldByName('Quant').AsFloat := imQuant; // do not localize
  D.FieldByName('CustoU').AsCurrency := imCustoU; // do not localize
  D.FieldByName('ID_Ref').AsLongWord := imID_Ref;
  D.FieldByName('Descr').AsString := imProdutoDescr;
  D.FieldByName('Obs').AsString := imObs;
  D.FieldByName('DadosFiscais').AsString := imDadosFiscais;
  if imFidResgate then begin
    D.FieldByName('Unitario').Clear; // do not localize
    D.FieldByName('Total').Clear; // do not localize
    D.FieldByName('Desconto').Clear; // do not localize
    D.FieldByName('Pago').Clear; // do not localize
    D.FieldByName('FidPontos').AsFloat := imFidPontos; // do not localize
  end else begin
    D.FieldByName('Unitario').AsCurrency := imUnitario; // do not localize
    D.FieldByName('Total').AsCurrency := imTotal; // do not localize
    D.FieldByName('Desconto').AsCurrency := imDesconto; // do not localize
    D.FieldByName('Pago').AsCurrency := imPago; // do not localize
    D.FieldByName('FidPontos').Clear; // do not localize
  end;
  D.FieldByName('Item').AsInteger := imItem; // do not localize
  if imDataHora=0 then
    D.FieldByName('DataHora').Clear else
    D.FieldByName('DataHora').AsDateTime := imDataHora; // do not localize
  D.FieldByName('Entrada').AsBoolean := Entrada; // do not localize
  D.FieldByName('Cancelado').AsBoolean := imCancelado; // do not localize
  D.FieldByName('EstoqueAnt').AsFloat := imEstoqueAnt; // do not localize
  D.FieldByName('TipoTran').AsInteger := imTipoTran; // do not localize
  D.FieldByName('Cliente').AsInteger := imCliente; // do not localize
  D.FieldByName('Sessao').AsInteger := imSessao; // do not localize
  D.FieldByName('Caixa').AsInteger := imCaixa; // do not localize
  D.FieldByName('Categoria').AsString := imCategoria; // do not localize
  D.FieldByName('NaoControlaEstoque').AsBoolean := imNaoControlaEstoque; // do not localize
  D.FieldByName('ITran').AsInteger := imITran; // do not localize    
  D.FieldByName('PermSemEstoque').AsBoolean := imPermSemEstoque;
  D.FieldByName('FidResgate').AsBoolean := imFidResgate; // do not localize
  D.FieldByName('Tax_incluir').AsCurrency := imTax_incluir;
  D.FieldByName('Tax_incluido').AsCurrency := imTax_incluido;
  D.FieldByName('Tax_id').AsLongWord := imTax_id;
  D.FieldByName('DebDev').AsCurrency := imDebDev;

  D.FieldByName('Comissao').AsCurrency := imComissao;
  D.FieldByName('ComissaoPerc').AsFloat := imComissaoPerc;
  D.FieldByName('ComissaoLucro').AsBoolean := imComissaoLucro;
end;

procedure TncItemMovEst.SaveToITranDataset(D: TDataset);
var B: Boolean;
begin
  B := PagPend;
  D.FieldByName('PagPend').AsBoolean := B;
  D.FieldByName('Tran').AsInteger := imTran; // do not localize
  D.FieldByName('Caixa').AsInteger := imCaixa; // do not localize
  
  if (imDataHora=0) or B then
    D.FieldByName('DataHora').Clear else
    D.FieldByName('DataHora').AsDateTime := imDataHora; // do not localize

  D.FieldByName('Caixa').AsInteger := imCaixa; // do not localize
  D.FieldByName('TipoItem').AsInteger := itMovEst; // do not localize
  D.FieldByName('ItemID').AsInteger := imID; // do not localize
  D.FieldByname('ItemPos').AsInteger := imItem; // do not localize
  D.FieldByName('Cancelado').AsBoolean := imCancelado; // do not localize
  D.FieldByName('TipoTran').AsInteger := imTipoTran; // do not localize
  D.FieldByName('Sessao').AsInteger := imSessao; // do not localize
  D.FieldByName('Cliente').AsInteger := imCliente; // do not localize

  if FMovEst=nil then
    D.FieldByName('CaixaPag').Clear else
    D.FieldByName('CaixaPag').AsInteger := CaixaPag;
  
  if imFidResgate then begin
    D.FieldByName('Total').Clear; // do not localize
    D.FieldByName('Desconto').Clear; // do not localize
    D.FieldByName('Pago').Clear; // do not localize
    D.FieldByName('FidFator').AsInteger := -1; // do not localize
    D.FieldByName('FidPontos').AsFloat := imFidPontos; // do not localize
  end else begin
    D.FieldByName('Total').AsCurrency := imTotal; // do not localize
    D.FieldByName('Desconto').AsCurrency := imDesconto; // do not localize
    D.FieldByName('Pago').AsCurrency := imPago; // do not localize
    D.FieldByName('FidFator').Clear; // do not localize
    D.FieldByName('FidPontos').Clear; // do not localize
  end;
end;

procedure TncItemMovEst.SetPagEspStr(const Value: String);
begin
  if Value='' then 
    DestroiPagEsp
  else begin
    CriaPagEsp;
    imPagEsp.AsString := Value;
  end;
end;

procedure TncItemMovEst.SetString(const Value: String);
var S: String;

function pCampo: String;
begin
  Result := GetNextStrDelim(S, classid_TncItemMovEst);
end;

begin
  S := Value;
  imID := StrToIntDef(pCampo, -1);
  imID_Ref := StrToIntDef(pCampo, 0);
  imTran := StrToIntDef(pCampo, 0);
  imProduto := StrToIntDef(pCampo, 0);
  imQuant := StrParaFloat(pCampo);
  imUnitario := StrParaFloat(pCampo);
  imTotal := StrParaFloat(pCampo);
  imCustoU := StrParaFloat(pCampo);
  imItem := StrToIntDef(pCampo, 0);
  imDesconto := StrParaFloat(pCampo);
  imPago := StrParaFloat(pCampo);
  imDataHora := DTFromStr(pCampo);
  imCancelado := (BoolStr[True]=pCampo);
  imEstoqueAnt := StrParaFloat(pCampo);
  imTipoTran := StrToIntDef(pCampo, 0);
  imCliente := StrToIntDef(pCampo, 0);
  imSessao := StrToIntDef(pCampo, 0);
  imCaixa := StrToIntDef(pCampo, 0);
  imCategoria := pCampo; 
  imNaoControlaEstoque := (BoolStr[True]=pCampo);
  imITran := StrToIntDef(pCampo, -1);
  imPermSemEstoque := (BoolStr[True] = pCampo);
  imFidResgate := (BoolStr[True] = pCampo);
  imFidPontos := StrParaFloat(pCampo);
  
  imTax_id := StrToIntDef(pCampo, 0);
  imTax_incluir := StrParaFloat(pCampo);
  imtax_incluido := StrParaFloat(pCampo);
  TaxItensStr := pCampo;

  imDebDev := StrParaFloat(pCampo);
  
  imObs := pCampo;
  imDadosFiscais := pCampo;
  PagEspStr := pCampo;
  _Recibo := (BoolStr[True] = pCampo);
  _Operacao := StrToIntDef(pCampo, 0);
end;

function StrVal(S: String): Extended;
var I : Integer;
begin
  Result := 0;
  Val(S, Result, I);
end;

procedure DecodeTempItemStr(S: String; var aProduto: Cardinal; var aQuant: Double; var aUnitario, aTotal: Currency; var aPermSemEstoque: Boolean);
begin
  S := Trim(S);
  aProduto := StrToIntDef(Copy(S, 1, Pos(';', S)-1), 0);
  Delete(S, 1, Pos(';', S));
  S := Trim(S);
  aQuant := StrVal(Copy(S, 1, Pos(';', S)-1));
  Delete(S, 1, Pos(';', S));
  S := Trim(S);
  aUnitario := StrVal(Copy(S, 1, Pos(';', S)-1));
  Delete(S, 1, Pos(';', S));
  S := Trim(S);
  aTotal := StrVal(Copy(S, 1, Pos(';', S)-1));
  Delete(S, 1, Pos(';', S));
  aPermSemEstoque := (S='1');
end;

procedure TncItemMovEst.SetTaxItensStr(const Value: String);
begin
  imTaxItens.AsString := Value;
end;

procedure TncItemMovEst.SetTempStr(const Value: String);
begin
  DecodeTempItemStr(Value, imProduto, imQuant, imUnitario, imTotal, imPermSemEstoque);
end;

function TncItemMovEst.UnitarioLiq: Currency;
begin
  if (imTotal>0.001) and  (imDesconto>0.001) then 
    Result := (ValorPagar/imTotal) * imUnitario else
    Result := imUnitario;
end;

function TncItemMovEst.ValorPagar: Currency;
begin
  Result := (imTotal - imDesconto) + imTax_incluir;
end;

function TncItemMovEst.ValorProdLiq: Currency;
begin
  Result := imTotal - imDesconto;
end;

procedure TncItemMovEst.AtualizaTipoTran(aTipo: Byte);
begin
  imTipoTran := aTipo;
  case aTipo of
    trEstEntrada, trEstSaida :
    begin
      imDesconto := 0;
      imUnitario := 0;
      imTotal := 0;
      imCustoU := 0;
      imDesconto := 0;
      imTax_incluir := 0;
      imTax_incluido := 0;
      imPago := 0;
    end;
    trEstCompra : imPago := 0;
  end;
end;

{ TncItensMovEst }

procedure TncItensMovEst.AjustaOperacao(B: TncItensMovEst; const AssignB: Boolean = True);
var 
  I : Integer;
  IM : TncItemMovEst;
begin
  for I := 0 to Count - 1 do with Itens[I] do 
  if (imID<>-1) and (B.GetItemByID(imID)=nil) then
    _Operacao := osExcluir;

  for I := 0 to B.Count - 1 do
    if (B[I].imID=-1) then begin
      if B[I]._Operacao<>osCancelar then begin
        B[I]._Operacao := osIncluir;
        if AssignB then
          NewItem.AssignFrom(B[I]);
      end;
    end
    else begin
      IM := GetItemByID(B[I].imID);
      IM.imCliente := FMovEst.FCliente;
      if IM<>nil then begin
        if B[I]._Operacao=osCancelar then
          IM._Operacao := osCancelar
        else 
{        if IM.Igual(B[I]) then
          IM._Operacao := osNenhuma 
        else}
        begin 
          if AssignB then
            IM.AssignFrom(B[I]);
          IM._Operacao := osAlterar;
        end;
      end;
    end;

{ for I := Count-1 downto 0 do
  if Itens[I]._Operacao=osNenhuma then begin
    Itens[I].Free;
    FItens.Delete(I);
  end;  }
end;

procedure TncItensMovEst.AtualizaTipoTran(aTipo: Byte);
var I : Integer;
begin
  for I := 0 to Count - 1 do Itens[i].AtualizaTipoTran(aTipo);
end;

function TncItensMovEst.ComissaoTot: Currency;
var i: integer;
begin
  Result := 0;
  if FMovEst.Tipo in [trEstVenda, trEstDevolucao] then
  for I := 0 to Count-1 do with Itens[i] do
    if _Operacao<>osExcluir then 
       Result := Result + imComissao;
end;

function TncItensMovEst.Count: Integer;
begin
  Result := FItens.Count;
end;

constructor TncItensMovEst.Create(aMovEst: TncMovEst);
begin
  FMovEst := aMovEst;
  FItens := TList.Create;
  FOnLoadTempItem := nil;
end;

procedure TncItensMovEst.Delete(aIndex: Integer);
begin
  FItens.Delete(aIndex);
end;

function TncItensMovEst.Descr: String;
var i: integer;
begin
  Result := '';
  for I := 0 to Count-1 do begin   
    if Itens[i]._Operacao<>osExcluir then begin
      if (Result>'') then Result := Result + sLineBreak;
      Result := Result + Itens[i].Descr;
    end;
  end;
end;

destructor TncItensMovEst.Destroy;
begin
  Limpa;
  FItens.Free;
  inherited;
end;

function TncItensMovEst.GetItem(I: Integer): TncItemMovEst;
begin
  Result := TncItemMovEst(FItens[I]);
end;

function TncItensMovEst.GetItemByID(aID: Integer): TncItemMovEst;
var I : Integer;
begin
  for I := 0 to Count - 1 do
  if Itens[I].imID=aID then begin
    Result := Itens[I];
    Exit;
  end;
  Result := nil;
end;

function TncItensMovEst.GetItemByTran(aTran: Integer): TncItemMovEst;
var I : Integer;
begin
  for I := 0 to Count - 1 do
  if Itens[I].imTran=aTran then begin
    Result := Itens[I];
    Exit;
  end;
  Result := nil;
end;

function TncItensMovEst.GetString: String;
var I : Integer;
begin
  Result := '';
  for I := 0 to Count - 1 do 
    Result := Result + Itens[I].AsString + sListaDelim(classid_TncItensMovEst);
end;

function TncItensMovEst.get_tax_incluido: Currency;
var I: Integer;
begin
  Result := 0;
  for I := 0 to FItens.Count-1 do
    Result := Result + Itens[I].imTax_incluido;
end;

function TncItensMovEst.get_tax_incluir: Currency;
var I: Integer;
begin
  Result := 0;
  for I := 0 to FItens.Count-1 do
    Result := Result + Itens[I].imTax_incluir;
end;

procedure TncItensMovEst.Limpa;
begin
  while Count>0 do begin
    Itens[0].Free;
    FItens.Delete(0);
  end;
end;

procedure TncItensMovEst.LoadTemp;
var 
  sl: TStrings;
  i : integer;
  item : TncItemMovEst;
begin
  if not FileExists(FNTempItensME) then Exit;
  sl := TStringList.Create;
  try
    sl.LoadFromFile(FNTempItensME);
    for I := 0 to sl.Count - 1 do begin
      item := NewItem;
      item.TempStr := sl[i];
      if assigned(FOnLoadTempItem) then
        FOnLoadTempItem(item);
    end;
  finally
    sl.Free;
  end;
end;

function TncItensMovEst.NewItem: TncItemMovEst;
begin
  Result := TncItemMovEst.Create(FMovEst);
  FItens.Add(Result);
end;

function TncItensMovEst.QuantProduto(aProduto: Integer): Double;
var i: integer;
begin
  Result := 0;
  for I := 0 to Count-1 do with Itens[i] do
    if imProduto=aProduto then
      Result := Result + imQuant;
end;

procedure TncItensMovEst.RecalcTax;
var I : Integer;
begin
  for I := 0 to Count-1 do Itens[I].imTaxItens.RecalcTax;
end;

procedure TncItensMovEst.Remove(IME: TncItemMovEst);
begin
  FItens.Remove(IME);
end;

procedure TncItensMovEst.SaveTemp;
var 
  sl: TStrings;
  i : integer;
begin
  sl := TStringList.Create;
  try
    for I := 0 to Count - 1 do sl.Add(Itens[I].TempStr);
    sl.SaveToFile(FNTempItensME);
  finally
    sl.Free;
  end;
end;

procedure TncItensMovEst.SetString(Value: String);
var S: String;
begin
  Limpa;
  while GetNextListItem(Value, S, classid_TncItensMovEst) do
    NewItem.AsString := S;
end;

procedure TncItensMovEst.UpdateTaxDescr(T: TncTaxDescr);
var I, J : Integer;
begin
  T.Limpa;

  for I := 0 to Count-1 do with Itens[I].imTaxItens do 
    for J := 0 to Count-1 do with Itens[J] do 
       T.Add(tiTax_ID, tiTax_nome, Valor, tiTax_Incluido);
end;

{ TncMovEst }

procedure TncMovEst.AddExtraInfo(aInfo: String);
var sl : TStrings;
begin
  sl := TStringList.Create;
  try
    sl.text := FExtra;
    sl.Add(aInfo);
  finally
    sl.Free;
  end;
  FExtra := sl.Text;
end;

function TncMovEst.PodeAlterarTipoNFE: Boolean;
begin
  Result := (FStatusNFE in [nfetran_gerar, nfetran_erro]); 
end;

function TncMovEst.SalvarDebFrete(B: TncMovEst): Boolean;
begin
  if Assigned(B) then 
    Result := (DebitoFrete <> B.DebitoFrete) or ((Cliente <> B.Cliente) and (DebitoFrete>0.009)) else
    Result := (DebitoFrete>0.009);
end;

constructor TncMovEst.Create;
begin
  inherited;
  FItens := TncItensMovEst.Create(Self);
  FPagEsp := TncPagEspecies.Create;
  Limpa;
end;

procedure TncMovEst.CriaUID;
begin
  FUID := TGuidEx.NewGuid;
end;

function TncMovEst.DebitoFrete: Currency;
var vPago: Currency;
begin
  if PagPend then
    DebitoFrete := 0
  else begin
    vPago := Pago + PagEsp.CreditoUsado;
    if vPago<Frete then
      DebitoFrete := Frete - vPago else
      DebitoFrete := 0;
  end;
end;

destructor TncMovEst.Destroy;
begin
  FItens.Free;
  FPagEsp.Free;
  inherited;
end;

function TncMovEst.GetCaixaPag: Integer;
begin
  if PagPend then
    Result := 0 else
    Result := FCaixaPag;
end;

function TncMovEst.GetChave: Variant;
begin
  Result := FID;
end;

function TncMovEst.GetEndEntrega: String;
begin
  if TGuidEx.IsEmpty(FEnd_Entrega) then
    Result := '' else
    Result := TGuidEx.ToString(FEnd_Entrega);
end;

function TncMovEst.GetNativeUID: TGuid;
begin
  REsult := FUID;
end;

function TncMovEst.GetObsNF: Boolean;
var sl : TStrings;
begin             
  sl := TStringList.Create;
  try 
    sl.Text := FExtra;
    Result := (sl.Values['obsnf']='1');
  finally
    sl.Free;
  end;
end;

function TncMovEst.GetPagEspStr: String;
begin
  Result := FPagEsp.AsString;
end;

function TncMovEst.GetStrItens: String;
begin
  Result := FItens.AsString;
end;

function TncMovEst.GetUID: String;
begin
  if TGuidEx.IsEmpty(FUID) then
    Result := '' else
    Result := TGuidEx.ToString(FUID);
end;

function TncMovEst.GetUID_Ref: String;
begin
  if TGuidEx.IsEmpty(FUID_Ref) then
    Result := '' else
    Result := TGuidEx.ToString(FUID_Ref);
end;

function TncMovEst.GetUpdID: String;
begin
  if TGuidEx.IsEmpty(FUpdID) then
    Result := '' else
    Result := TGuidEx.ToString(FUpdID);
end;

function TncMovEst.Get_tax_incluido: Currency;
begin
  Result := FItens.get_tax_incluido;
end;

function TncMovEst.Get_tax_incluir: Currency;
begin
  Result := FItens.get_tax_incluir;
end;

procedure TncMovEst.Limpa;
begin
  FID          := -1;
  FUID         := TGuidEx.EmptyGuid;
  FUID_Ref     := TGuidEx.EmptyGuid;
  FUpdID := TGuidEx.EmptyGuid;
  FOpDevValor  := 0;
  FDataHora    := 0;
  FCliente     := 0;
  FTranspEnt   := 0;
  FFrete       := 0;
  FXMLCompra   := '';

  FTranspPesoL := 0;
  FTranspPesoB := 0;
  FTranspVol   := 0;
  FTranspPesoVol := 0;
  
  FEntregar    := False;
  FEnd_Entrega := TGuidEx.Empty;
  FTipo        := 0;
  FFunc        := '';
  FVendedor    := '';
  FTotal       := 0;
  FDesconto    := 0;
  FDescPerc    := 0;
  FDescPorPerc := False;
  FPago        := 0;
  FObs         := '';
  FExtra       := '';
  FTipoNFE     := 0;
  FStatusNFE   := 0;
  FCancelado   := False;
  FCanceladoPor:= '';
  FCanceladoEm := 0;
  FCaixa       := 0;
  FCaixaPag    := 0;
  FMaq         := 0;
  FNomeCliente := '';
  FSessao      := 0;
  FDescr       := '';
  FXMLCompra   := '';
  FOperacao    := osNenhuma;
  FRecibo      := False;
  FFidResgate  := False;
  FPagPend     := False;
  FPagFunc     := '';
  
  FItens.Limpa;
end;

function TncMovEst.NewIME: TncItemMovEst;
begin
  Result := Itens.NewItem;
  Result.imTran := FID;
  Result.imTipoTran := Tipo;
  Result.imCancelado := FCancelado;
  Result.imCaixa := FCaixa;
  Result.imFidResgate := FFidResgate;
  Result.imCliente := FCliente;
end;

function TncMovEst.PagEsp: TncPagEspecies;
begin
  Result := FPagEsp;
end;

function TncMovEst.PagouTotal: Boolean;
begin
  Result := (Abs(TotalFinal - Pago) < 0.001);
end;

function TncMovEst.PodeSalvarSemCaixa: Boolean;
begin
  Result := (FTipo in [trEstEntrada, trEstSaida, trAjustaCusto]) and (FItens.Count=1);
end;

procedure TncMovEst.SalvaDescPago;
var
  PercDesc: Extended;
  vPago, vDesc : Currency;
  I : Integer;
begin
  vPago := Pago + PagEsp.CreditoUsado;
  vDesc := Desconto;
  if (Total=0) or (Desconto < 0.01) then
    PercDesc := 0 else
    PercDesc := Desconto / Total;

  if vPago>Frete then 
    vPago := vPago - Frete else
    vPago := 0;
    
  for I := 0 to Itens.Count - 1 do 
  with Itens[I] do if _operacao<>osExcluir then begin
    if I=(Itens.Count-1) then
      imDesconto := vDesc else
      imDesconto := DuasCasas(PercDesc * imTotal);
    vDesc := vDesc - imDesconto;  
    if vPago>=ValorPagar then
      imPago := ValorPagar else
      imPago := vPago;
    vPago := vPago - imPago;
  end;

  Itens.RecalcTax;
end;

procedure TncMovEst.SalvaTipoTran;
var I: Integer;
begin
  Itens.AtualizaTipoTran(Tipo);
  case Tipo of
    trEstSaida, trEstEntrada, trAjustaCusto: begin
      Total := 0; Desconto := 0; Pago := 0;
    end;
    trEstCompra : Pago := 0;
  end;
end;

procedure TncMovEst.SetCaixa(const Value: Integer);
var I: Integer;
begin
  for I := 0 to Itens.Count - 1 do
    Itens[I].imCaixa := Value;
  FCaixa := Value;
end;

procedure TncMovEst.SetCancelado(const Value: Boolean);
var I : Integer;
begin
  if FCancelado=Value then Exit;
  for I := 0 to Itens.Count - 1 do
    Itens[I].imCancelado := Value;
  FCancelado := Value;
end;

procedure TncMovEst.SetEndEntrega(const Value: String);
begin
  if Value='' then
    FEnd_Entrega := TGuidEx.Empty else
    FEnd_Entrega := TGuidEx.FromString(Value);
end;

procedure TncMovEst.SetFidResgate(const Value: Boolean);
var I : Integer;
begin
  FFidResgate := Value;
  for I := 0 to Itens.Count - 1 do
    Itens[I].imFidResgate := Value;
end;

procedure TncMovEst.SetID(const Value: Integer);
var I : Integer;
begin
  if FID=Value then Exit;
  for I := 0 to Itens.Count - 1 do
    Itens[I].imTran := Value;
  FID := Value;
end;

procedure TncMovEst.SetNativeUID(const Value: TGuid);
begin
  FUID := Value;
end;

procedure TncMovEst.SetObsNF(const Value: Boolean);
var 
  sl : TStrings;
  i : integer;
begin             
  sl := TStringList.Create;
  try 
    sl.Text := FExtra;
    if Value then
      sl.Values['obsnf'] := '1'
    else begin
      i := sl.IndexOfName('obsnf');
      if i>=0 then sl.Delete(i);
    end;
    FExtra := sl.Text;
  finally
    sl.Free;
  end;
end;

procedure TncMovEst.SetSessao(const Value: Integer);
var I : Integer;
begin
  FSessao := Value;
  for I := 0 to Itens.Count - 1 do
    Itens[I].imSessao := Value;
end;

procedure TncMovEst.SetPagEspStr(const Value: String);
begin
  FPagEsp.AsString := Value;
end;

procedure TncMovEst.SetStrItens(const Value: String);
begin
  FItens.AsString := Value;
end;

procedure TncMovEst.SetTipo(const Value: Integer);
var I : Integer;
begin
  FTipo := Value;
  for I := 0 to Itens.Count - 1 do
    Itens[I].imTipoTran := Value;
end;

procedure TncMovEst.SetUID(const Value: String);
begin
  if Value='' then
    FUID := TGuidEx.EmptyGuid else
    FUID := TGuidEx.FromString(Value);
end;

procedure TncMovEst.SetUID_Ref(const Value: String);
begin
  if Value='' then
    FUID_Ref := TGuidEx.EmptyGuid else
    FUID_Ref := TGuidEx.FromString(Value);
end;

procedure TncMovEst.SetUpdID(const Value: String);
begin
  if Value='' then
    FUpdID := TGuidEx.EmptyGuid else
    FUpdID := TGuidEx.FromString(Value);
end;

procedure TncMovEst.Set_tax_incluido(const Value: Currency);
begin
//
end;

procedure TncMovEst.Set_tax_incluir(const Value: Currency);
begin
//
end;

function TncMovEst.TotalFinal: Currency;
begin
  Result := Total - Desconto + tax_incluir + Frete;
end;

function TncMovEst.ValorDebitado: Currency;
begin
  if Cancelado or (Sessao<>0) or FidResgate or PagPend then
    Result := 0 else
    Result := TotalFinal - Pago - FPagEsp.CreditoUsado;

   if Result<0 then Result := 0;
end;

function TncMovEst.ValorTroco: Currency;
begin
  Result := (Pago+FPagEsp.CreditoUsado) - TotalFinal;
end;


{ TncTaxItem }

constructor TncTaxItem.Create(aIME: TncItemMovEst);
begin
  FIME := aIME;
  tiTax_id := 0;
  tiTax_nome := '';
  tiTax_incluido := False;
  tiTax_perc := 0;
end;

function TncTaxItem.GetString: String;
begin
  Result := 
    IntToStr(tiTax_id) + delim + 
    tiTax_nome + delim +
    BoolStr[tiTax_incluido] + delim  +
    FloatParaStr(tiTax_perc) + delim;
end;

procedure TncTaxItem.LoadFromDataset(D: TDataset);
begin
  tiTax_id := D.FieldByName('tax_id').AsLongWord;
  tiTax_nome := D.FieldByName('nome').AsString;
  tiTax_incluido := D.FieldByName('incluido').AsBoolean;
  tiTax_perc := D.FieldByName('perc').AsFloat;
end;

procedure TncTaxItem.SaveToDataset(D: TDataset);
begin
  D.FieldByName('movest').AsLongWord := FIME.imID;
  D.FieldByName('tax_id').AsLongWord := tiTax_id;
  D.FieldByName('nome').AsString := tiTax_nome;
  D.FieldByName('incluido').AsBoolean := tiTax_incluido;
  D.FieldByName('perc').AsFloat := tiTax_perc;
  D.FieldByName('valor').AsCurrency := Valor;
end;

procedure TncTaxItem.SetString(S: String);

function pCampo: String;
begin
  Result := GetNextStrDelim(S, classid_TncTaxItem);
end;

begin
  tiTax_Id := StrToIntDef(pCampo, 0);
  tiTax_nome := pCampo;
  tiTax_incluido := StrToBool(pCampo);
  tiTax_perc := StrParaFloat(pCampo);
end;

function TncTaxItem.Valor: Currency;
begin
  Result := DuasCasas((FIME.ValorProdLiq/100) * tiTax_perc);
end;

function TncTaxItem.valor_incluido: Currency;
begin
  if tiTax_incluido then
    Result := Valor else
    Result := 0;
end;

function TncTaxItem.valor_incluir: Currency;
begin
  if tiTax_incluido then
    Result := 0 else
    Result := Valor;
end;

function TncTaxItem.delim: String;
begin
  Result := sFldDelim(classid_TncTaxItem);
end;

{ TncTaxItens }

function TncTaxItens.Count: Integer;
begin
  Result := FItens.Count;
end;

constructor TncTaxItens.Create(aIME: TncItemMovEst);
begin
  FIME := aIME;
  FItens := TList.Create;
end;

destructor TncTaxItens.Destroy;
begin
  Limpa;  
  inherited;
end;

function TncTaxItens.FindTaxId(aId: Cardinal): TncTaxItem;
var I: Integer;
begin
  for I := 0 to Count-1 do 
    if Itens[I].tiTax_id=aId then begin
      Result := Itens[I];
      Exit;
    end;
  Result := nil;
end;

function TncTaxItens.GetItem(I: Integer): TncTaxItem;
begin
  Result := TncTaxItem(FItens[I]);
end;

function TncTaxItens.GetString: String;
var I : Integer;
begin
  Result := '';
  for I := 0 to Count - 1 do 
    Result := Result + Itens[I].AsString + sListaDelim(classid_TncTaxItens);
end;

procedure TncTaxItens.Limpa;
begin
  while FItens.Count>0 do begin
    TObject(FItens[0]).Free;
    FItens.Delete(0);
  end;
end;

procedure TncTaxItens.LoadFromDataset(tMovEstTax: TnxTable);
begin
  Limpa;
  if FIME.imID<1 then Exit;

  tMovEstTax.IndexName := 'I_movest_tax_id';
  tMovEstTax.SetRange([FIME.imID], [FIME.imID]);
  try
    tMovEstTax.First;
    while not tMovEstTax.Eof do begin
      NewItem.LoadFromDataset(tMovEstTax);
      tMovEstTax.Next;
    end;
  finally
    tMovEstTax.CancelRange;
  end;
end;

procedure TncTaxItens.LoadTaxItens(tTax, tTaxItens: TnxTable);
begin
  Limpa;
  if FIME.imTax_id>0 then begin
    tTax.IndexName := 'I_tax_id';
    if tTax.FindKey([FIME.imTax_id]) then begin
      if (not tTax.FieldByName('Grupo').AsBoolean) then 
        NewItem.LoadFromDataset(tTax)
      else begin
        tTaxItens.IndexName := 'I_grupo_item';
        tTaxItens.SetRange([FIME.imTax_id], [FIME.imTax_id]);
        try
          tTaxItens.First;
          while not tTaxItens.Eof do begin
            if tTax.FindKey([tTaxItens.FieldByName('item').AsLongWord]) and (not tTax.FieldByName('grupo').AsBoolean) then 
              NewItem.LoadFromDataset(tTax);
            tTaxItens.Next;
          end;
        finally
          tTaxItens.CancelRange;
        end;
      end;
    end;
  end;

  RecalcTax;
end;

function TncTaxItens.NewItem: TncTaxItem;
begin
  Result := TncTaxItem.Create(FIME);
  FItens.Add(Result);
end;

procedure TncTaxItens.RecalcTax;
var I: Integer;
begin
  FIME.imTax_incluir := 0;
  FIME.imTax_incluido := 0;
  for I := 0 to Count-1 do begin
    FIME.imTax_incluido := FIME.imTax_incluido + Itens[I].valor_incluido;
    FIME.imTax_incluir  := FIME.imTax_Incluir  + Itens[I].valor_incluir;
  end;
end;

procedure TncTaxItens.SaveToDataset(tMovEstTax: TnxTable);
var 
  slDel, slOk: TStrings;
  TI : TncTaxItem;
  I : Integer;
begin
  if FIME.imID<1 then raise Exception.Create('FIME.imID tem que ser salvo primeiro ... imID tem que ser maior que 0');

  debugMsg('TncTaxItens.SaveToDataset - FIME.imID: '+IntToStr(FIME.imID) + ' - Count: ' + IntToStr(Count));

  slDel := TStringList.Create;
  slOk := TStringList.Create;
  try
    tMovEstTax.SetRange([FIME.imID], [FIME.imID]);
    try
      tMovEstTax.First;
      while not tMovEstTax.Eof do begin
        TI := Self.FindTaxId(tMovEstTax.FieldByName('tax_id').AsLongWord);
        if Assigned(TI) then begin
          tMovEstTax.Edit;
          TI.SaveToDataset(tMovEstTax);
          slOk.Add(tMovEstTax.FieldByName('tax_id').AsString);
          tMovEstTax.Post;
        end else
          slDel.Add(tMovEstTax.FieldByName('tax_id').AsString);
        tMovEstTax.Next;
      end;
    finally
      tMovEstTax.CancelRange;
    end;

    for I := 0 to slDel.Count-1 do 
      if tMovEstTax.FindKey([FIME.imID, slDel[I]]) then
        tMovEstTax.Delete;

    for I := 0 to Count-1 do 
    if slOk.IndexOf(IntToStr(Itens[I].tiTax_id))<0 then begin
      DebugMsg('TncTaxItens.SaveToDataset - Append: ' + IntToStr(I));
      tMovEstTax.Append;
      Itens[I].SaveToDataset(tMovEstTax);
      tMovEstTax.Post;
    end;  
      
  finally
    slDel.Free;
    slOk.Free;
  end;
end;

procedure TncTaxItens.SetString(Value: String);
var S: String;
begin
  Limpa;
  while GetNextListItem(Value, S, classid_TncTaxItens) do
    NewItem.AsString := S;
  RecalcTax;  
end;

{ TncTaxDescr }

procedure TncTaxDescr.Add(aID: Cardinal; aNome: String; aValor: Currency;
  aIncluido: Boolean);
begin
  FindAdd(aID, aNome, aIncluido).Add(aValor);
end;

function TncTaxDescr.Count: Integer;
begin
  Result := FItens.Count;
end;

constructor TncTaxDescr.Create;
begin
  FItens := TList.Create;
end;

function TncTaxDescr.Descr: String;
var I : Integer;
begin
  result := '';
  for I := 0 to Count-1 do begin
    if I>0 then Result := Result + ' + ';
    
    Result := Result + Itens[I].tdxNome;
  end;
end;

destructor TncTaxDescr.Destroy;
begin
  Limpa;
  inherited;
end;

function TncTaxDescr.FindAdd(aID: Cardinal; aNome: String;
  aIncluido: Boolean): TncTaxDescrItem;
var I : Integer;
begin
  for I := 0 to FItens.Count-1 do 
    if Itens[I].tdxID=aID then begin
      Result := Itens[i];
      Exit;
    end;

  Result := TncTaxDescrItem.Create(aID, aNome, aIncluido);
  FItens.Add(Result);
end;

function TncTaxDescr.GetItem(I: Integer): TncTaxDescrItem;
begin
  Result := TncTaxDescrItem(FItens[I]);
end;

procedure TncTaxDescr.Limpa;
begin
  while FItens.Count>0 do begin
    TObject(FItens[0]).Free;
    FItens.Delete(0);
  end;
end;

function TncTaxDescr.TemTaxAdd: Boolean;
var I: Integer;
begin
  for I := 0 to Count-1 do 
    if (not Itens[I].tdxIncluido) and (Itens[i].tdxValor>0.009) then begin
      Result := True;
      Exit;
    end;

  Result := False;
end;

function TncTaxDescr.Total: Currency;
var I : Integer;
begin
  Result := 0;
  for I := 0 to Count-1 do 
    Result := Result + Itens[i].tdxValor;
end;

{ TncTaxDescrItem }

procedure TncTaxDescrItem.Add(aValor: Currency);
begin
  tdxValor := tdxValor + aValor;
end;

constructor TncTaxDescrItem.Create(aID: Cardinal; aNome: String;
  aIncluido: Boolean);
begin
  tdxID := aID;
  tdxNome := aNome;
  tdxValor := 0;
  tdxIncluido := aIncluido;
end;

end.

