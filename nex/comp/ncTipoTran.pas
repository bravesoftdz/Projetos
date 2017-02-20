unit ncTipoTran;

interface

uses
  SysUtils,
  Variants,
  DB,
  MD5,
  Dialogs,
  Classes,
  Windows,
  ClasseCS,
  ncClassesBase;

type
  TncTipoTran = class ( TncClasse )
  private
    Ftipo: Byte;
    Fuser: Boolean;
    Festoque: Boolean;
    Fcaixa: Boolean;
    Fnome: String;
    Fentrada: Boolean;
    Femite_nfe: Boolean;
    Fmovest: Boolean;
    Fatualiza_custo: Boolean;
    Fvisivel: Boolean;
    Fpagto: Boolean;
    Fsel_endereco: Boolean;
    Ftipocad: Byte;
    Fprecocusto_nfe: Boolean;
  protected
    function GetChave: Variant; override;
  public
    constructor Create; 
    function TipoClasse: Integer; override;
    function NomeTela: String;
    
  published

    property Tipo: Byte read FTipo write FTipo;
    property User: Boolean read FUser write FUser;
    property Estoque: Boolean read Festoque write FEstoque;
    property Caixa: Boolean read Fcaixa write FCaixa;
    property Nome: String read Fnome write FNome;
    property Entrada: Boolean read FEntrada write FEntrada;
    property Emite_nfe: Boolean read Femite_nfe write Femite_nfe;
    property MovEst: Boolean read Fmovest write Fmovest;
    property Atualiza_Custo: Boolean read Fatualiza_custo write FAtualiza_Custo;
    property Visivel: Boolean read Fvisivel write FVisivel;
    property Pagto: Boolean read Fpagto write FPagto;
    property Sel_Endereco: Boolean read Fsel_endereco write Fsel_endereco;
    property TipoCad: Byte read Ftipocad write Ftipocad;
    property PrecoCusto_nfe: Boolean read Fprecocusto_nfe write Fprecocusto_nfe;
  end;

  TncListaTipoTran = class ( TListaClasseCS )
  private
    function GetTipoTran(I: Integer): TncTipoTran;
    function GetPorTipo(aTipo: Byte): TncTipoTran;
  public
    constructor Create;

    procedure Assign(aFrom: TncListaTipoTran);

    destructor Destroy; override;

    function NewItem: TncTipoTran;

    function MovEst(aTipo: Byte): Boolean;
    
    property Itens[I: Integer]: TncTipoTran
      read GetTipoTran; default;

    property PorTipo[aID: Byte]: TncTipoTran
      read GetPorTipo;   
  end;    

var 
  gListaTipoTran : TncListaTipoTran = nil;  
    

implementation

{ TncTipoTran }

uses uNexTransResourceStrings_PT;

constructor TncTipoTran.Create;
begin
  inherited;
  Ftipo := 0;
  Fnome := '';
  Ftipocad := tipocad_nenhum;
  Fuser := False;
  Fprecocusto_nfe := False;
  Festoque := False;
  Fcaixa := False;
  Fentrada := False;
  Femite_nfe := False;
  Fmovest := False;
  Fatualiza_custo := False;
  Fvisivel := False;
  Fpagto := False;
  Fsel_endereco := False;
end;

function TncTipoTran.GetChave: Variant;
begin
  Result := FTipo;
end;

function TncTipoTran.NomeTela: String;
begin
  case Tipo of
    trEstEntrada : Result := rsEntradaEstTela;
    trEstSaida   : Result := rsSaidaEstTela;
  else
    Result := Nome;
  end;
end;

function TncTipoTran.TipoClasse: Integer;
begin
  Result := tcTipoTran;
end;

{ TncListaTipoTran }

procedure TncListaTipoTran.Assign(aFrom: TncListaTipoTran);
var i: integer;
begin
  Limpa;
  for I := 0 to aFrom.Count - 1 do
    NewItem.Assign(aFrom.Itens[i]);
end;

constructor TncListaTipoTran.Create;
begin
  inherited Create(tcTipoTran);
end;

destructor TncListaTipoTran.Destroy;
var i: integer;
begin
  for I := 0 to Count-1 do Itens[i].ProcNotificar := nil;
  inherited;
end;

function TncListaTipoTran.GetPorTipo(aTipo: Byte): TncTipoTran;
var I: Integer;
begin
  for I := 0 to Count - 1 do 
    if Itens[I].Tipo = aTipo then begin
      Result := Itens[I];
      Exit;
    end;
  Result := nil;   
end;

function TncListaTipoTran.GetTipoTran(I: Integer): TncTipoTran;
begin
  Result := TncTipoTran(GetItem(I));
end;

function TncListaTipoTran.MovEst(aTipo: Byte): Boolean;
var T: TncTipoTran;
begin
  T := PorTipo[aTipo];
  Result := Assigned(T) and T.MovEst;
end;

function TncListaTipoTran.NewItem: TncTipoTran;
begin
  Result := TncTipoTran.Create;
  Add(Result);
end;

initialization
  gListaTipoTran := TncListaTipoTran.Create;

finalization
  gListaTipoTran.Free;  

end.
