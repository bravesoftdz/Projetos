unit uImpCSV_Produtos18;

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
    tFor: TnxTable;
    tForNome: TStringField;
    tForFornecedor: TBooleanField;
    tForID: TUnsignedAutoIncField;
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
    tProdEstoqueAtual: TExtendedField;
    tProdCustoUnitario: TCurrencyField;
    tProdEstoqueACE: TExtendedField;
    tProdEstoqueACS: TExtendedField;
    tProdPodeAlterarPreco: TBooleanField;
    tProdPermiteVendaFracionada: TBooleanField;
    tProdNaoControlaEstoque: TBooleanField;
    tProdEstoqueMin: TExtendedField;
    tProdEstoqueMax: TExtendedField;
    tProdAbaixoMin: TBooleanField;
    tProdAbaixoMinDesde: TDateTimeField;
    tProdEstoqueRepor: TExtendedField;
    tProdplus: TBooleanField;
    tProdplusURL: TnxMemoField;
    tProdplusCodParceiro: TStringField;
    tProdplusCodProduto: TStringField;
    tProdComissaoPerc: TFloatField;
    tProdComissaoLucro: TBooleanField;
    tProdAtivo: TBooleanField;
    tProdFidelidade: TBooleanField;
    tProdFidPontos: TIntegerField;
    tProdmd5Imagem: TStringField;
    tProdlastProdModif: TDateTimeField;
    tProduploadR: TByteField;
    tProduploadS: TByteField;
    tProdfk_produ: TIntegerField;
    tProdbatchUID: TGuidField;
    tProdCadastroRapido: TBooleanField;
    tProdIncluidoEm: TDateTimeField;
    tProdRecVer: TLongWordField;
    tEstID: TUnsignedAutoIncField;
    tEstTran: TLongWordField;
    tEstProduto: TLongWordField;
    tEstQuant: TFloatField;
    tEstUnitario: TCurrencyField;
    tEstTotal: TCurrencyField;
    tEstCustoU: TCurrencyField;
    tEstItem: TByteField;
    tEstDesconto: TCurrencyField;
    tEstPago: TCurrencyField;
    tEstPagoPost: TCurrencyField;
    tEstDescPost: TCurrencyField;
    tEstDataHora: TDateTimeField;
    tEstEntrada: TBooleanField;
    tEstCancelado: TBooleanField;
    tEstAjustaCusto: TBooleanField;
    tEstEstoqueAnt: TFloatField;
    tEstCliente: TLongWordField;
    tEstCaixa: TIntegerField;
    tEstCategoria: TStringField;
    tEstNaoControlaEstoque: TBooleanField;
    tEstITran: TIntegerField;
    tEstTipoTran: TByteField;
    tEstSessao: TIntegerField;
    tEstplusID: TGuidField;
    tEstComissao: TCurrencyField;
    tEstComissaoPerc: TFloatField;
    tEstComissaoLucro: TBooleanField;
    tEstplusTran: TBooleanField;
    tEstPermSemEstoque: TBooleanField;
    tEstFidResgate: TBooleanField;
    tEstFidPontos: TFloatField;
    tEstRecVer: TLongWordField;
    tForObs: TnxMemoField;
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
  while length(result)<6 do
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
  Aspas, AspasOn : Boolean;

function AspasDuplas: Boolean;
begin
  Result := Copy(S, P, 2)='""';
end;

function AspasSimples: Boolean;
begin
  Result := Copy(S, P, 1)='"';
end;

begin
  Result := '';
  if S='' then
    Result := '';

  C := ',';
  
  if S[1]='"' then begin
    Delete(S, 1, 1);
    Aspas := True;
  end else 
    Aspas := False;

  if S='' then Exit;
  
  P := 0;

  while P<Length(S) do begin
    Inc(P);

    if Aspas then begin
      if AspasDuplas then begin
        Delete(S, P, 1);
        if P=Length(S) then begin
          Result := S;
          S := '';
        end;
      end else
      if AspasSimples then begin
        Result := Copy(S, 1, P-1);
        Delete(S, 1, P);
        Break;
      end else
      if (P=Length(S)) then begin
        Result := S;
        S := '';
      end;
    end else begin
      if S[P]=C then begin
        Result := Copy(S, 1, P-1);
        Delete(S, 1, P-1);
        Break;
      end else 
      if P=Length(S) then begin
        Result := S;
        Break;
        S := '';
      end;
    end;
  end;

  Result := Trim(Result);
  
  P := Pos(C, S);
  if P>0 then Delete(S, 1, P);

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

function GetCateg(sc: string): String;
begin
  if sc = '0001' then
    Result := 'FARDAMENTO ESCOLAR'
  else
  if sc = '0002' then
    Result := 'FARDAMENTO PROFISSIONAL'
  else
  if sc = '0003' then
    Result := 'ACESSORIOS'
  else
  if sc = '0004' then
    Result := 'CAMISAS'
  else
  if sc = '0005' then
    Result := 'LATINO'
  else
    Result := sc;
end;

function AddObs(aObs: String): String;
begin
  if tProdObs.Value>'' then
    Result := tProdObs.Value+sLineBreak+aObs else
    Result := aObs;
end;

begin
  SL := TStringList.Create;
  SL.LoadFromFile('c:\nex\produtos.csv');
  PB.Max := SL.Count;
  PB.Position := 0;
  Cod := 0;
  
  tProd.Open;
  tProd.EmptyTable;
  tProd.IndexName := 'IID';
  tEst.Open;
  tEst.EmptyTable;
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  for I := 1 to SL.Count-1 do begin
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];                      
    tProd.Append;
    tProdCodigo.Value := ProxCampo;
    tProdDescricao.Value := ProxCampo; 
    tProdCustoUnitario.Value := StrToCurrency(ProxCampo);
    tProdPreco.Value := StrToCurrency(ProxCampo);
    tProdEstoqueAtual.Value := StrToIntDef(ProxCampo, 0);
    tProdEstoqueMin.Value := StrToIntDef(ProxCampo, 0);
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
  tProd.Last;
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
