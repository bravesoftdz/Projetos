unit ncCustoSaver;

interface

type

  TncCustoData = class
    Produto : Integer;
    TipoTran : Byte;
    Cancelado : Boolean;
    CustoU : Currency;

    function Igual(B: TncCustoData): Boolean;

    function AlterouProduto(B: TncCustoData): Boolean;

    function AlteraCusto: Boolean;

    constructor Create(aProduto: Integer; aTipoTran: Byte; aCancelado: Boolean; aCustoU: Currency);
  end;

  TncCustoSaver = class
    FAntigo : TncCustoData;
    FNovo   : TncCustoData;

    function RefreshCustoAntigo: Boolean;

    function RefreshCustoNovo: Boolean;

    constructor Create(aProduto: Integer; aTipoTran: Byte; aCancelado: Boolean; aCustoU: Currency);

    destructor Destroy; override;

    procedure setAntigo(aProduto: Integer; aTipoTran: Byte; aCancelado: Boolean; aCustoU: Currency);
  end;

implementation

uses ncClassesBase;

{ TncCustoData }

function TncCustoData.AlteraCusto: Boolean;
begin
  Result := (TipoTran in [trEstCompra, trAjustaCusto]) and (not Cancelado) and (CustoU>0);
end;

function TncCustoData.AlterouProduto(B: TncCustoData): Boolean;
begin
  Result := (Produto<>B.Produto);
end;

constructor TncCustoData.Create(aProduto: Integer; aTipoTran: Byte;
  aCancelado: Boolean; aCustoU: Currency);
begin
  Produto := aProduto;
  TipoTran := aTipoTran;
  Cancelado := aCancelado;
  CustoU := aCustoU;
end;

function TncCustoData.Igual(B: TncCustoData): Boolean;
begin
  Result := (Produto=B.Produto) and (TipoTran=B.TipoTran) and (Cancelado=B.Cancelado) and (CustoU=B.CustoU);
end;

{ TncCustoSaver }

constructor TncCustoSaver.Create(aProduto: Integer; aTipoTran: Byte;
  aCancelado: Boolean; aCustoU: Currency);
begin
  FNovo := TncCustoData.Create(aProduto, aTipoTran, aCancelado, aCustoU);
  FAntigo := nil;
end;

destructor TncCustoSaver.Destroy;
begin
  if Assigned(FAntigo) then FAntigo.Free;
  FNovo.Free;
  inherited;
end;

function TncCustoSaver.RefreshCustoAntigo: Boolean;
begin
  Result := (FAntigo<>nil) and FAntigo.AlterouProduto(FNovo) and FAntigo.AlteraCusto;
end;

function TncCustoSaver.RefreshCustoNovo: Boolean;
begin
  if FAntigo<>nil then begin
    Result := False;
    if FAntigo.Igual(FNovo) then Exit;
    if (not FAntigo.AlteraCusto) and (not FNovo.AlteraCusto) then Exit;
    if FAntigo.AlterouProduto(FNovo) and (not FNovo.AlteraCusto) then Exit;
    Result := True;
  end else 
    Result := FNovo.AlteraCusto;
end;

procedure TncCustoSaver.setAntigo(aProduto: Integer; aTipoTran: Byte;
  aCancelado: Boolean; aCustoU: Currency);
begin
  if Assigned(FAntigo) then FAntigo.Free;
  FAntigo := TncCustoData.Create(aProduto, aTipoTran, aCancelado, aCustoU);
end;

end.
