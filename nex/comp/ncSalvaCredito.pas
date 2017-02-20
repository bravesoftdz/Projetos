unit ncSalvaCredito;
{
    ResourceString: Dario 12/03/13
    Nada para fazer
}


interface 

uses
  SysUtils,
  DB,
  Classes,
  Windows,
  ClasseCS,
  ncClassesBase;

type

  TncSalvaCredito = class (TClasseCS)
  private
    FDataHora    : TDateTime;
    FFunc        : String;
    FCliente     : Cardinal;
    FValor       : Currency;
    FObs         : String;
    FCaixa       : Cardinal; 
    FAdicionar   : Boolean;
    FFidResgate  : Boolean;
    FFidPontos   : Double;
  protected
    function GetChave: Variant; override;
  public
    constructor Create;
    procedure Limpa;

    function TipoTran: Byte;

    function ValorFator: Currency;

  published
    property Func : String
      read FFunc write FFunc;
      
    property Obs : String
      read FObs write FObs;

    property DataHora: TDateTime
      read FDataHora write FDataHora;  

    property Adicionar: Boolean
      read FAdicionar write FAdicionar;  
      
    property Caixa : Cardinal
      read FCaixa write FCaixa;

    property Cliente: Cardinal
      read FCliente write FCliente;   

    property Valor: Currency
      read FValor write FValor;

    property FidResgate: Boolean
      read FFidResgate write FFidResgate;

    property FidPontos: Double
      read FFidPontos write FFidPontos;  
  end;
 

implementation

{ TncLancExtra }

constructor TncSalvaCredito.Create;
begin
  inherited;
  Limpa;
end;

function TncSalvaCredito.GetChave: Variant;
begin
  Result := 0;
end;

function TncSalvaCredito.TipoTran: Byte;
begin
  if FAdicionar then
    Result := trAddCredito else
    Result := trRemCredito;
end;

function TncSalvaCredito.ValorFator: Currency;
begin
  if Adicionar then
    Result := Valor else
    Result := Valor * -1;
end;

procedure TncSalvaCredito.Limpa;
begin
  FFunc        := '';
  FObs         := '';
  FCaixa       := 0;
  FValor       := 0;
  FCliente     := 0;
  FAdicionar   := False;
  FFidResgate  := False;
  FFidPontos   := 0;
  FDataHora    := Now;
end;

end.
