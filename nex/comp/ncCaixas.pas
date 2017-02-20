unit ncCaixas;

interface

uses sysutils, classes;

type

  TncCXRange = class
    rInicio : Cardinal;
    rFim : Cardinal;

    function InRange(aCX: Cardinal): Boolean;

    function Smaller(B: TncCXRange): Boolean;

    procedure Assign(aFrom: TncCXRange);

    function Unico: Boolean;

    function Merge(B: TncCXRange): Boolean;

    constructor Create(aInicio, aFim: Cardinal);

    function SQL(aField: String): String;
  end;

  TncCaixas = class
  private
    FRanges : TList;
    FDataI  : TDateTime;
    FDataF  : TDateTime;

    procedure AddSorted(R: TncCXRange);
    
    function NewRange(aInicio, aFim: Cardinal): TncCXRange;
    function RemoveFromRange(R: TncCXRange; aCX: Cardinal): Boolean;
    function GetRange(I: Integer): TncCXRange;
  public

    function Count: Integer;

    function CaixaMin: Cardinal;
    function CaixaMax: Cardinal;

    constructor Create;

    procedure Clear;

    procedure Merge;

    procedure Assign(aFrom : TncCaixas);

    procedure AddCaixa(aCaixa: Cardinal);

    function SQL(const aField: String = 'Caixa'): String;

    procedure RemoveCX(aCX: Cardinal);

    procedure StartNewRange(aInicio, aFim: Cardinal);

    destructor Destroy; override;

    property DataI: TDateTime read FDataI write FDataI;

    property DataF: TDateTime read FDataF write FDataF;

    property Ranges[I: Integer]: TncCXRange
      read GetRange;
  end;

  

implementation

{ TncCXRange }

procedure TncCXRange.Assign(aFrom: TncCXRange);
begin
  rInicio := aFrom.rInicio;
  rFim := aFrom.rFim;
end;

constructor TncCXRange.Create(aInicio, aFim: Cardinal);
begin
  if aInicio<=aFim then begin
    rInicio := aInicio;
    rFim := aFim;
  end else begin
    rInicio := aFim;
    rFim := aInicio;
  end;
end;

function TncCXRange.InRange(aCX: Cardinal): Boolean;
begin
  Result := (aCX >= rInicio) and (aCX <= rFim);
end;

function TncCXRange.Merge(B: TncCXRange): Boolean;
begin
  if (B.rInicio-rFim)=1 then begin
    rFim := B.rFim;
    B.Free;
    Result := True;
  end else
    Result := False;
end;

function TncCXRange.Smaller(B: TncCXRange): Boolean;
begin
  Result := (rInicio < B.rInicio);
end;

function TncCXRange.SQL(aField: String): String;
begin
  if Unico then
    Result := '('+aField+'='+IntToStr(rInicio)+')' else
    Result := '(('+aField+'>='+IntToStr(rInicio)+') and ('+aField+'<='+IntToStr(rFim)+'))';
end;

function TncCXRange.Unico: Boolean;
begin
  Result := (rInicio=rFim);
end;

{ TncCaixas }

procedure TncCaixas.AddCaixa(aCaixa: Cardinal);
begin
  NewRange(aCaixa, aCaixa);
end;

procedure TncCaixas.AddSorted(R: TncCXRange);
var I: Integer;
begin
  for I := 0 to Count-1 do 
    if R.Smaller(TncCXRange(FRanges[I])) then begin
      FRanges.Insert(I, R);
      Exit;
    end;
  FRanges.Add(R);
end;

procedure TncCaixas.Assign(aFrom: TncCaixas);
var I: Integer;
begin
  Clear;
  for I := 0 to  aFrom.Count-1 do
    with aFrom.Ranges[I] do 
      self.FRanges.Add(TncCXRange.Create(rInicio, rFim));
end;

function TncCaixas.CaixaMax: Cardinal;
begin
  if Count>0 then
    Result := Ranges[Count-1].rFim else
    Result := 0;
end;

function TncCaixas.CaixaMin: Cardinal;
begin
  if Count>0 then
    Result := Ranges[0].rInicio else
    REsult := 0;
end;

procedure TncCaixas.Clear;
begin
  while FRanges.Count>0 do begin
    TObject(FRanges[0]).Free;
    FRanges.Delete(0);
  end;
end;

function TncCaixas.Count: Integer;
begin
  Result := FRanges.Count;
end;

constructor TncCaixas.Create;
begin
  FDataI  := 0;
  FDataF  := 0;
  FRanges := TList.Create;
end;

destructor TncCaixas.Destroy;
begin
  Clear;
  FRanges.Free;
  inherited;
end;

function TncCaixas.GetRange(I: Integer): TncCXRange;
begin
  Result := TncCXRange(FRanges[I]);
end;

procedure TncCaixas.Merge;
var I: Integer;
begin
  I := 0;
  while I<(Count-1) do 
    if TncCXRange(FRanges[I]).Merge(TncCXRange(FRanges[I+1])) then 
      FRanges.Delete(I+1) else
      Inc(I);
  I := Count;
end;

function TncCaixas.NewRange(aInicio, aFim: Cardinal): TncCXRange;
begin
  Result := TncCXRange.Create(aInicio, aFim);
  AddSorted(Result);
end;

procedure TncCaixas.RemoveCX(aCX: Cardinal);
var I: Integer;
begin
  I := 0;
  while (I<Count) and (not RemoveFromRange(TncCXRange(FRanges[I]), aCX)) do Inc(I);
end;

function TncCaixas.RemoveFromRange(R: TncCXRange; aCX: Cardinal): Boolean;
var C: Cardinal;
begin
  if not R.InRange(aCX) then begin
    Result := False;
    Exit;
  end;
  Result := True;
  if R.Unico then begin
    FRanges.Remove(R);
    R.Free;
  end else 
  if R.rInicio=aCX then 
    Inc(R.rInicio)
  else
  if R.rFim=aCX then
    Dec(R.rFim)
  else begin
    C := R.rFim;
    R.rFim := aCX-1;
    NewRange(aCX+1, C);
  end;
end;


function TncCaixas.SQL(const aField: String = 'Caixa'): String;
var I: Integer;
begin
  Result := '';
  for I := 0 to FRanges.Count-1 do begin
    if I>0 then Result := Result + ' or ';
    Result := Result + TncCXRange(FRanges[I]).SQL(aField);
  end;
  if FRanges.Count>1 then Result := '(' + Result + ')';
  
end;

procedure TncCaixas.StartNewRange(aInicio, aFim: Cardinal);
begin
  Clear;
  if aInicio>0 then
    NewRange(aInicio, aFim);
end;

end.
