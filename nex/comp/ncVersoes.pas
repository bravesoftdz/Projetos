unit ncVersoes;
{
    ResourceString: Dario 13/03/13
}

interface

uses SysUtils, Classes, Windows;

type

  TncVersao = record
    veNumero : Word;
    veData : TDateTime;
  end;

  TncRecurso = record
    reVersao : Word;
    reNomeRec : String;
  end;

  TArrayVersao = Array of TncVersao;
  TArrayRecurso = Array of TncRecurso;

  TncVersoes = class
  private
    FVersaoAtual: Word;
    FVersoes  : TArrayVersao;
    FRecursos : TArrayRecurso;
  public
    constructor Create;
    
    procedure AddVersao(aNumero: Word; aData: TDateTime);
    function AddRecurso(aVersao: Word; aNomeRec: String): Integer;

    procedure AjustaVersaoAtual(aDireito: TDateTime);

    function PodeUsar(idre: Integer): Boolean;

    property Versao: Word
      read FVersaoAtual write FVersaoAtual; 
  end;

var
  Versoes : TncVersoes;                                             

  idre_RevisaImpressao,
  idre_Fidelidade,
  idre_ligarmaq,
  idre_listaespera,
  idre_bloqueiosite,
  idre_caixaemail,
  idre_chat,
  idre_tipoacessomaq,
  idre_listaprocessos,
  idre_controleremoto,
  idre_pausaimpressao,
  idre_configmaq  : integer;

implementation

// START resource string wizard section
resourcestring
  SListaDeEspera = 'Lista de Espera';
  SBloqueioDeSites = 'Bloqueio de Sites';
  SEnvioAutom�ticoDeRelat�rioDeCaix = 'Envio autom�tico de relat�rio de caixa por E-mail';
  SChatEntreAtendentesEClientes = 'Chat entre atendentes e clientes';
  SListaDeProcessosVerFecharProgram = 'Lista de processos: Ver / Fechar programas das m�quinas clientes, atrav�s do servidor';
  STarifasEspec�ficasPorM�quina = 'Tarifas espec�ficas por m�quina';
  SLigarM�quinasClientes = 'Ligar m�quinas clientes';
  SFidelidade = 'Fidelidade';
  SControleRemoto = 'Controle Remoto';
  SPausaImpress�o = 'Pausa Impress�o';
  SConfigura��oDasM�quinasClientes = 'Configura��o das m�quinas clientes';
  SRevis�oDeImpress�o = 'Revis�o de Impress�o';

// END resource string wizard section


{ TncVersoes }

function TncVersoes.AddRecurso(aVersao: Word; aNomeRec: String): Integer;
begin
  Result := Length(FRecursos);
  SetLength(FRecursos, Result+1);
  FRecursos[Result].reVersao := aVersao;
  FRecursos[Result].reNomeRec := aNomeRec;
end;

procedure TncVersoes.AddVersao(aNumero: Word; aData: TDateTime);
var I : Integer;
begin
  I := Length(FVersoes);
  SetLength(FVersoes, I+1);
  FVersoes[I].veNumero := aNumero;
  FVersoes[I].veData := aData;
end;

procedure TncVersoes.AjustaVersaoAtual(aDireito: TDateTime);
var I : Integer;
begin
  for I := Length(FVersoes)-1 downto 0 do
    if aDireito>=FVersoes[I].veData then begin
      FVersaoAtual := FVersoes[I].veNumero;
      Exit;
    end;
  FVersaoAtual := FVersoes[0].veNumero;
end;

constructor TncVersoes.Create;
begin
  FVersaoAtual := 200;
  SetLength(FRecursos, 0);
  SetLength(FVersoes, 0);
end;

function TncVersoes.PodeUsar(idre: integer): Boolean;
begin
  Result := (idre<Length(FRecursos)) and (FRecursos[idre].reVersao <= FVersaoAtual);
end;

initialization
  Versoes := TncVersoes.Create;
  Versoes.AddVersao(200, EncodeDate(2005, 1, 1));
  Versoes.AddVersao(250, EncodeDate(2006, 1, 1));
  Versoes.AddVersao(300, EncodeDate(2008, 10, 1));
  Versoes.AddVersao(400, EncodeDate(2009, 12, 15));
  Versoes.AddVersao(460, EncodeDate(2009, 12, 15));
  Versoes.AddVersao(500, EncodeDate(2012, 12, 1));


  Versoes.Versao := 500;

  idre_listaespera := Versoes.AddRecurso(250, SListaDeEspera);
  idre_bloqueiosite := Versoes.AddRecurso(250, SBloqueioDeSites);
  idre_caixaemail := Versoes.AddRecurso(250, SEnvioAutom�ticoDeRelat�rioDeCaix);
  idre_chat := Versoes.AddRecurso(250, SChatEntreAtendentesEClientes);
  idre_listaprocessos := Versoes.AddRecurso(250, SListaDeProcessosVerFecharProgram);
  idre_tipoacessomaq := Versoes.AddRecurso(250, STarifasEspec�ficasPorM�quina);
  idre_ligarmaq := Versoes.AddRecurso(300, SLigarM�quinasClientes);
  idre_fidelidade := Versoes.AddRecurso(300, SFidelidade);
  idre_controleremoto := Versoes.AddRecurso(400, SControleRemoto);
  idre_pausaimpressao := Versoes.AddRecurso(400, SPausaImpress�o);
  idre_configmaq := Versoes.AddRecurso(400, SConfigura��oDasM�quinasClientes);
  idre_revisaimpressao := Versoes.AddRecurso(500, SRevis�oDeImpress�o); 
  

finalization
  Versoes.Free;  

end.

