unit uImpCSV_Produtos_Nizao;

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

    procedure AddEstoque;

    procedure Importar1;
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
  while length(result)<4 do
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

procedure TForm16.AddEstoque;
begin
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

function DuasCasas(D: Extended): Extended;
var 
  I, C : Integer;
  S : String;
begin
  Str(D:10:10, S);
  if CurrencyDecimals>0 then 
    S := Copy(S, 1, Pos('.', S)+CurrencyDecimals) 
  else begin
    I := Pos('.', S);
    if I>0 then
      S := Copy(S, 1, I-1);
  end;
  Val(S, Result, I);
  
{  S := D;
  C := 1;
  DebugMsg('DuasCasas - D: '+FloatToStr(D));
  
  for I := 1 to CurrencyDecimals do C := C * 10;

  D := Int(D * C);
  Result := D / C;  

  DebugMsg('DuasCasas - Result: '+FloatToStr(Result));
  DebugMsg('Plano B: '+FloatToStr(Trunc(S*C)/C));}
end;

procedure TForm16.Button1Click(Sender: TObject);
var 
  SL: TStrings;
  J, Min, Cod: Integer;
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

procedure Importar1;
var I: integer;
begin
  SL.LoadFromFile('c:\nex\produtos1.csv');
  PB.Position := 0;
  PB.Max := SL.Count;
  for I := 1 to SL.Count-1 do begin
    Inc(Cod);
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];                      
    tProd.Append;
    tProdCodigo.Value := IntToStr(Cod);
    tProdDescricao.Value := ProxCampo; ProxN(2);
    tProdPreco.Value := StrToCurrency(ProxCampo);
    tProdCustoUnitario.Value := StrToCurrency(ProxCampo);
    tProd.Post;
  end;
end;

procedure Importar2;
var I: integer;
P1, P2, P3, C1, C2, C3 : Currency;
Descr : String;
begin
  SL.LoadFromFile('c:\nex\produtos2.csv');
  PB.Position := 0;
  PB.Max := SL.Count;
  for I := 1 to SL.Count-1 do begin
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];                      
    Descr := ProxCampo;
    Descr := Descr + ' Alcri ' + ProxCampo;
    ProxCampo;
    P1 := StrToCurrency(ProxCampo);
    P2 := StrToCurrency(ProxCampo);
    P3 := StrToCurrency(ProxCampo);
    ProxCampo;
    C1 := StrToCurrency(ProxCampo);
    C2 := StrToCurrency(ProxCampo);
    C3 := StrToCurrency(ProxCampo);
    Descr := Descr + ' ' + ProxCampo;
    
    
    tProd.Append;
    Inc(Cod);
    tProdCodigo.Value := IntToStr(Cod);
    tProdDescricao.Value := Descr + ' Fosco';
    tProdPreco.Value := P1;
    tProdCustoUnitario.Value := C1;
    tProd.Post;

    tProd.Append;
    Inc(Cod);
    tProdCodigo.Value := IntToStr(Cod);
    tProdDescricao.Value := Descr + ' Brilhante';
    tProdPreco.Value := P2;
    tProdCustoUnitario.Value := C2;
    tProd.Post;

    tProd.Append;
    Inc(Cod);
    tProdCodigo.Value := IntToStr(Cod);
    tProdDescricao.Value := Descr + ' Branco';
    tProdPreco.Value := P3;
    tProdCustoUnitario.Value := C3;
    tProd.Post;
    
  end;
end;

procedure Importar3;
var I: integer;
    Descr : String;
    P1 : Currency;
begin
  SL.LoadFromFile('c:\nex\produtos3.csv');
  PB.Position := 0;
  PB.Max := SL.Count;
  for I := 1 to SL.Count-1 do begin
    Inc(Cod);
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];   
    Descr := ProxCampo + ' - ' + ProxCampo + ' - ' + ProxCampo;
    P1 := StrToCurrency(ProxCampo);                   
    Descr := Descr + ' - ' + ProxCampo;
    tProd.Append;
    tProdCodigo.Value := IntToStr(Cod);
    tProdDescricao.Value := Descr;
    tProdPreco.Value := P1;
    tProdCustoUnitario.Value := StrToCurrency(ProxCampo);
    tProd.Post;
  end;
end;

procedure Importar4;
var I: integer;
    Descr : String;
    P1 : Currency;
begin
  SL.LoadFromFile('c:\nex\produtos4.csv');
  PB.Position := 0;
  PB.Max := SL.Count;
  for I := 1 to SL.Count-1 do begin
    Inc(Cod);
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];   
    Descr := ProxCampo;
    ProxCampo;ProxCampo;
    P1 := StrToCurrency(ProxCampo); 
    ProxCampo;                  
    tProd.Append;
    tProdCodigo.Value := IntToStr(Cod);
    tProdDescricao.Value := Descr;
    tProdPreco.Value := P1;
    tProdCustoUnitario.Value := StrToCurrency(ProxCampo);
    tProd.Post;
  end;
end;

procedure Importar5;
var I: integer;
    Descr : String;
    P1 : Currency;
begin
  SL.LoadFromFile('c:\nex\produtos5.csv');
  PB.Position := 0;
  PB.Max := SL.Count;
  for I := 1 to SL.Count-1 do begin
    Inc(Cod);
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];   
    Descr := ProxCampo;
    ProxCampo;
    Descr := Descr + ' - ' + ProxCampo;
    P1 := StrToCurrency(ProxCampo); 
    ProxCampo;                  
    tProd.Append;
    tProdCodigo.Value := IntToStr(Cod);
    tProdDescricao.Value := Descr;
    tProdPreco.Value := P1;
    tProdCustoUnitario.Value := StrToCurrency(ProxCampo);
    tProd.Post;
  end;
end;



procedure Importar6;
var I: integer;
    Descr : String;
    P1 : Currency;
begin
  SL.LoadFromFile('c:\nex\produtos6.csv');
  PB.Position := 0;
  PB.Max := SL.Count;
  for I := 1 to SL.Count-1 do begin
    Inc(Cod);
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];   
    tProd.Append;
    ProxCampo;
    tProdCodigo.Value := IntToStr(Cod);
    tProdDescricao.Value := ProxCampo;
    tProdCustoUnitario.Value := StrToCurrency(ProxCampo);
    tProdPreco.Value := DuasCasas(tProdCustoUnitario.Value * 1.35);
    tProd.Post;
  end;
end;


begin
  SL := TStringList.Create;
  PB.Max := SL.Count;
  PB.Position := 0;
  Cod := 153;
  tProd.Open;
{  tProd.EmptyTable;}
  tEst.Open;
  tEst.EmptyTable;
  ShortDateFormat := 'dd/mm/yyyy';

  Importar1;
  Importar2;
  Importar3;
  Importar4;
  Importar5;
  Importar6;

  showMessage('Fim de importação - ' + IntToStr(Cod));

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

procedure TForm16.Importar1;
begin

end;

end.
