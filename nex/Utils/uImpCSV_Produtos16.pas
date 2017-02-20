unit uImpCSV_Produtos16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, nxdb, nxseAllEngines, nxsdServerEngine, nxsrServerEngine,
  nxllTransport, nxptBasePooledTransport, nxtwWinsockTransport, nxllComponent,
  Grids, DBGrids;

type
  TForm16 = class(TForm)
    nxSession1: TnxSession;
    nxDB: TnxDatabase;
    nxTCP: TnxWinsockTransport;
    nxSE: TnxServerEngine;
    PB: TProgressBar;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    tEst: TnxTable;
    tProd: TnxTable;
    tProdID: TAutoIncField;
    tProdCodigo: TStringField;
    tProdDescricao: TStringField;
    tProdUnid: TStringField;
    tProdPreco: TCurrencyField;
    tProdObs: TnxMemoField;
    tProdImagem: TGraphicField;
    tProdCategoria: TStringField;
    tProdFornecedor: TIntegerField;
    tProdSubCateg: TStringField;
    tProdEstoqueAtual: TFloatField;
    tProdCustoUnitario: TCurrencyField;
    tProdEstoqueACE: TFloatField;
    tProdEstoqueACS: TFloatField;
    tProdPodeAlterarPreco: TBooleanField;
    tProdNaoControlaEstoque: TBooleanField;
    tProdEstoqueMin: TFloatField;
    tProdEstoqueMax: TFloatField;
    tProdAbaixoMin: TBooleanField;
    tProdAbaixoMinDesde: TDateTimeField;
    tProdEstoqueRepor: TFloatField;
    tProdplus: TBooleanField;
    tProdplusURL: TnxMemoField;
    tProdplusCodParceiro: TStringField;
    tProdplusCodProduto: TStringField;
    tProdAtivo: TBooleanField;
    tProdFidelidade: TBooleanField;
    tProdFidPontos: TIntegerField;
    tEstID: TAutoIncField;
    tEstTran: TIntegerField;
    tEstProduto: TIntegerField;
    tEstQuant: TFloatField;
    tEstUnitario: TCurrencyField;
    tEstTotal: TCurrencyField;
    tEstCustoU: TCurrencyField;
    tEstItem: TWordField;
    tEstDesconto: TCurrencyField;
    tEstPago: TCurrencyField;
    tEstPagoPost: TCurrencyField;
    tEstDescPost: TCurrencyField;
    tEstDataHora: TDateTimeField;
    tEstEntrada: TBooleanField;
    tEstCancelado: TBooleanField;
    tEstEstoqueAnt: TFloatField;
    tEstCliente: TIntegerField;
    tEstCaixa: TIntegerField;
    tEstCategoria: TStringField;
    tEstNaoControlaEstoque: TBooleanField;
    tEstITran: TIntegerField;
    tEstTipoTran: TWordField;
    tEstSessao: TIntegerField;
    tEstplusID: TGuidField;
    tEstplusTran: TBooleanField;
    tEstFidResgate: TBooleanField;
    tEstFidPontos: TFloatField;
    tFor: TnxTable;
    tForID: TAutoIncField;
    tForNome: TStringField;
    tForEndereco: TStringField;
    tForBairro: TStringField;
    tForCidade: TStringField;
    tForUF: TStringField;
    tForCEP: TStringField;
    tForSexo: TStringField;
    tForObs: TnxMemoField;
    tForCpf: TStringField;
    tForRg: TStringField;
    tForTelefone: TStringField;
    tForEmail: TnxMemoField;
    tForMinutos: TFloatField;
    tForPassaportes: TFloatField;
    tForMinutosUsados: TFloatField;
    tForMinutosIniciais: TFloatField;
    tForIsento: TBooleanField;
    tForUsername: TStringField;
    tForPai: TStringField;
    tForMae: TStringField;
    tForSenha: TStringField;
    tForUltVisita: TDateTimeField;
    tForDebito: TCurrencyField;
    tForEscola: TStringField;
    tForEscolaHI: TDateTimeField;
    tForEscolaHF: TDateTimeField;
    tForNickName: TStringField;
    tForDataNasc: TDateTimeField;
    tForCelular: TStringField;
    tForTemDebito: TBooleanField;
    tForLimiteDebito: TCurrencyField;
    tForFoto: TGraphicField;
    tForIncluidoEm: TDateTimeField;
    tForAlteradoEm: TDateTimeField;
    tForIncluidoPor: TStringField;
    tForAlteradoPor: TStringField;
    tForTitEleitor: TStringField;
    tForFidPontos: TFloatField;
    tForFidTotal: TFloatField;
    tForFidResg: TFloatField;
    tForAniversario: TStringField;
    tForCotaImpEspecial: TBooleanField;
    tForCotaImpDia: TIntegerField;
    tForCotaImpMes: TIntegerField;
    tForSemFidelidade: TBooleanField;
    tForTemCredito: TBooleanField;
    tForNaoGuardarCredito: TBooleanField;
    tForPermiteLoginSemCred: TBooleanField;
    tForCHorario: TIntegerField;
    tForOpCHorario: TWordField;
    tForHP1: TIntegerField;
    tForHP2: TIntegerField;
    tForHP3: TIntegerField;
    tForHP4: TIntegerField;
    tForHP5: TIntegerField;
    tForHP6: TIntegerField;
    tForHP7: TIntegerField;
    tForInativo: TBooleanField;
    tForTipoAcessoPref: TIntegerField;
    tForFornecedor: TBooleanField;
    tForValorCred: TCurrencyField;
    tProdPrecoAuto: TBooleanField;
    tProdMargem: TFloatField;
    tProdPermiteVendaFracionada: TBooleanField;
    tProdComissaoPerc: TFloatField;
    tProdComissaoLucro: TBooleanField;
    procedure Button1Click(Sender: TObject);
  private
    function Fornecedor(aNome, aObs: String): Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}


function CodStr(I: Integer): String;
begin
  Result := IntToStr(I);
  while length(result)<3 do
    result := '0'+result;
end;

function SoDig(S: String): String;
var i: integer;
begin
  result := '';
  for i := 1 to length(S) do
    if s[i] in ['0'..'9', ',', '.'] then
      result := result + s[i];
end;

function SoDig2(S: String): String;
var i: integer;
begin
  result := '';
  for i := 1 to length(S) do
    if s[i] in ['0'..'9'] then
      result := result + s[i];
end;


function StrToCurrency(S: String): Currency;
var 
  Code, P : Integer;
  R : Double;
begin
  S := SoDig(S);
  P := Pos(',', S);
  if P>0 then S[P] := '.';
  Result := 0;
  if (Trim(S)>'') then begin
    Val(S, R, Code);
    if Code=0 then
      REsult := R;
  end;
end;

function LimpaRG(S: String): String;
var I: Integer;
begin
  Result := '';
  while (Length(S)>0) and (not (S[1] in ['0'..'9'])) do
    Delete(S, 1, 1);
  Result := Trim(S);  
end;

function MeuTrim(S: String): String;
var 
   I: Integer; 
begin
  Result := '';
  for I := 1 to Length(S) do 
    if Ord(S[i])=160 then
      Result := Result + ' ' else
      Result := Result + S[i];
end;

procedure TForm16.Button1Click(Sender: TObject);
var 
  SL: TStrings;
  I, J, Min, Cod: Integer;
  S, s2, s3, sDoc: String;
  Mon : Currency;
  DT: TDateTime;
  Qtd : Integer;

function ProxCampo: String;
var 
  P: Integer;
  C: Char;
begin
  if S='' then begin
    Result := '';
    Exit;
  end;
  
  if S[1]='"' then begin
    Delete(S, 1, 1);
    C := '"';
  end else 
    C := ',';
  
  P := Pos(C, S);
  if P>0 then begin
    Result := Trim(Copy(S, 1, P-1));
    Delete(S, 1, P);
  end else begin
    Result := Trim(S);
    S := '';
  end;
  S := Trim(S);
  if (C='"') and (S>'') and (S[1]=',') then Delete(S, 1, 1);

  for P := Length(Result) downto 1 do 
    if Result[P]='"' then Delete(Result, P, 1);
  Result := Trim(MeuTrim(Result));
end;

procedure proxn(n: Integer);
begin
  while n>0 do begin
    ProxCampo;
    dec(n);
  end;
end;

procedure AddDescr(D: String);
begin
  if Trim(D)='' then Exit;
  tProdDescricao.Value := tProdDescricao.Value + ' ' + D;
end;

begin
  SL := TStringList.Create;
  SL.LoadFromFile('c:\nex\produtos.csv');
  PB.Max := SL.Count;
  PB.Position := 0;
  Cod := 0;
  tProd.Open;
  tProd.EmptyTable;
  tEst.Open;
  tEst.EmptyTable;
  ShortDateFormat := 'dd/mm/yyyy';
//  for J := 1 to 2 do 
  for I := 1 to SL.Count-1 do begin
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];                      
    tProd.Append;
    tProdCodigo.Value := ProxCampo;
    ProxCampo;
    tProdDescricao.Value := ProxCampo; ProxN(3);
    tProdUnid.Value := ProxCampo;
    tProdEstoqueAtual.Value := StrToFloatDef(ProxCampo, 0);
    tProdCustoUnitario.Value := StrToCurrency(ProxCampo);
    ProxN(2);
    tProdPreco.Value := StrToCurrency(ProxCampo);
    tProd.Post;

    if tProdEstoqueAtual.Value > 0 then begin
      tEst.Append;
      tEstProduto.Value := tProdID.Value;
      tEstEntrada.Value := True;
      tEstTipoTran.Value := 6;
      tEstCaixa.Value := -1;
      tEstQuant.Value := tProdEstoqueAtual.Value;
      tEstDataHora.Value := Date;
      tEst.Post;
    end;    
  end;
end;

function TForm16.Fornecedor(aNome, aObs: String): Integer;
begin
  if Trim(aNome)='' then begin
    Result := 0;
    Exit;
  end;
  if not tFor.FindKey([True, aNome]) then begin
    tFor.Insert;
    tForFornecedor.Value := True;
    tForNome.Value := aNome;
    tForObs.Value := aObs;
    tFor.Post;
  end;
  Result := tForID.Value;
end;

end.

welcomelanhouse@gmail.com,
ricardoeising99@hotmail.com,
zappalanhouse@gmail.com,
infoexcomputadores06@gmail.com,
isa_lazzarote10@hotmail.com,
csjlanhouse@hotmail.com,
deivid_bessa@hotmail.com,
dihcorrea@me.com,
i9castanhal@gmail.com,
mnonline@hotmail.com,
cybernet.ms@hotmail.com,
locelan1@gmail.com,
cristal.informatica@yahoo.com.br,
nagila_ferraz86@hotmail.com,
setoroinformatica@gmail.com,
ttlanhouse@gmail.com,
fnem_aa@hotmail.com,
capozzoliacdo@gmail.com,
recantodigital@yahoo.com.br,
xhack_lanhouse@hotmail.com,
erica_fll@hotmail.com,
virtuelh@hotmail.com,
edson.souza0484@hotmail.com,
jclanhouse2012@hotmail.com.br,
alemaomengo10@hotmail.com,
jl.papelariaeinformatica@gmail.com,
documentos.redefacil@gmail.com,
elliasfilho@ibest.com.br,
JSMONTEIRO40@HOTMAIL.COM,
paulin.info@hotmail.com,
ronaldo.brunello@gmail.com,
contato.gocyber@gmail.com,
darlan.ocazul@gmail.com,
elugatti@gmail.com,
thiago.h.rodrigues@hotmail.com,
jadermor@gmail.com,
geekinformatic@gmail.com,
potiguar.cyber@gmail.com,
Soares.Franke@gmail.com,
vitrine_virtual@outlook.com,
fever_lanhouse@hotmail.com,
airtonlenhaus@r7.com,
dipepereira@yahoo.com.br,
lan.galeria@hotmail.com,
acervodigitalideias@gmail.com,
onlinehouse007@gmail.com,
netoneleinf23@outlook.com,
diogo.domaintec@gmail.com,
backbone05@hotmail.com,
