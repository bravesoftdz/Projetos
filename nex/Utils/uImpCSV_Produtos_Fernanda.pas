unit uImpCSV_Produtos_Fernanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, nxdb, nxseAllEngines, nxsdServerEngine, nxsrServerEngine,
  nxllTransport, nxptBasePooledTransport, nxtwWinsockTransport, nxllComponent,
  Grids, DBGrids, kbmMemTable;

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
    tFor: TnxTable;
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
    tForID: TUnsignedAutoIncField;
    tForCodigo: TStringField;
    tForCodigoKey: TStringField;
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
    tForPassaportes: TFloatField;
    tForPai: TStringField;
    tForMae: TStringField;
    tForSenha: TStringField;
    tForUltVisita: TDateTimeField;
    tForDebito: TCurrencyField;
    tForEscola: TStringField;
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
    tForSemFidelidade: TBooleanField;
    tForTemCredito: TBooleanField;
    tForPJuridica: TBooleanField;
    tForInativo: TBooleanField;
    tForFornecedor: TBooleanField;
    tForValorCred: TCurrencyField;
    tForRecVer: TLongWordField;
    mt: TkbmMemTable;
    mtCodigo: TIntegerField;
    mtDescr: TStringField;
    mtcategoria: TStringField;
    mtobs: TStringField;
    mtcusto: TCurrencyField;
    mtpreco: TCurrencyField;
    mtcores: TMemoField;
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

var 
  grade : array[1..4] of TStrings;
  gradevazia : TStrings;

function GetGrade(G: String): TStrings;
var I : Integer;
begin  
  I := StrToIntDef(G, 0);
  if I in [1..4] then
    Result := grade[I] else
    Result := GradeVazia;
end;

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

function cod_str(codigo, subcodigo, casas: Integer): String;
var S: String;
begin
  Result := IntToStr(codigo);
  while length(Result)<3 do Result := '0' + Result;

  S := IntToStr(subCodigo);
  if (casas>9) and (Length(S)<2) then 
    s := '0'+s;
  Result := Result + '-' + s;
end;

procedure TForm16.Button1Click(Sender: TObject);
var 
  SL: TStrings;
  I, J, Min, Cod, Forn, subcod: Integer;
  S, s2, s3, sDoc: String;
  Mon : Currency;
  DT: TDateTime;
  Qtd : Integer;
  slGrade, slCores: TStrings;

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

procedure addcor(aNome: String; aX: String);
var sCor: String;
begin
  if Trim(aX)='' then Exit;
  sCor := mtCores.Value;
  if sCor>'' then sCor := sCor + sLineBreak;
  sCor := sCor + aNome;
  mtCores.Value := sCor;
end;

procedure AddProduto(aTam, aCor: String);
var cCores, cTam: Integer;
begin
  cCores := slCores.Count;
  if cCores=0 then cCores := 1;
  cTam := slGrade.Count;
  if cTam=0 then cTam := 1;
  tProd.Append;
  Inc(subcod);
  tProdCodigo.Value := Cod_Str(mtCodigo.Value, subcod, cTam*cCores);
  tProdDescricao.Value := mtDescr.Value;
  if aTam>'' then
    tProdDescricao.Value := tProdDescricao.Value + ' - TAM ' + aTam;
  if aCor>'' then
    tProdDescricao.Value := tProdDescricao.Value + ' - ' + aCor;
  tProdObs.Value := mtObs.Value;
  tProdCategoria.Value := mtCategoria.Value;
  tProdFornecedor.Value := Forn;
  tProdPreco.Value := mtPreco.Value;
  tProdCustoUnitario.Value := mtCusto.Value;
  tProdAtivo.Value := True;
  tProd.Post;
end;

procedure AddProd;
var icor, itam : integer;
begin
  subcod := 0;
  if (slCores.Count>0) and (slGrade.Count>0) then begin
    for icor := 0 to slCores.Count-1 do
      for itam := 0 to slGrade.Count-1 do
        AddProduto(slGrade[itam], slCores[icor]);
  end else
  if slCores.Count>0 then begin
    for icor := 0 to slCores.Count-1 do
      AddProduto('', slCores[icor]);
  end else
  if slGrade.Count>0 then begin
    for itam := 0 to slGrade.Count-1 do
      AddProduto(slGrade[itam], '');
  end else
    AddProduto('', '');
end;

begin
  SL := TStringList.Create;
  SL.LoadFromFile('c:\nex\produtos.csv');
  PB.Max := SL.Count;
  PB.Position := 0;
  tProd.Open;
  tEst.Open;
  tFor.Open;
  tProd.EmptyTable;
  tEst.EmptyTable;
  tFor.EmptyTable;
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';

  slCores := TStringList.Create;
  gradevazia := TStringList.Create;

  for I := 1 to SL.Count-1 do begin
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];                      
    mt.Append;
    mtCodigo.Value := StrToIntDef(ProxCampo, 0);
    mtDescr.Value := ProxCampo;
    ProxN(4);
    mtCategoria.Value := ProxCampo;
    ProxCampo;
    mtObs.Value := ProxCampo;
    mtCusto.Value := StrToCurrency(ProxCampo);
    mtPreco.Value := StrToCurrency(ProxCampo);
    addCor('CASTRO', ProxCampo);
    addCor('VERDE', ProxCampo);
    addCor('PRETO', ProxCampo);
    addCor('MARROM', ProxCampo);
    addCor('VINHO', ProxCampo);
    addCor('BERINGELA', ProxCampo);
    addCor('CINZA', ProxCampo);
    addCor('DOURADO', ProxCampo);
    addCor('LILÁS', ProxCampo);
    addCor('PRATEADO', ProxCampo);
    addCor('AZUL', ProxCampo);
    addCor('BEGE', ProxCampo);
    addCor('PINK', ProxCampo);
    addCor('OFF WHITE', ProxCampo);
    addCor('BRANCO', ProxCampo);
    addCor('VERMELHO', ProxCampo);
    addCor('MAGENTA', ProxCampo);
    addCor('MARINHO', ProxCampo);
    addCor('NUDE', ProxCampo);
    addCor('ROSA', ProxCampo);
    addCor('ANTIGO', ProxCampo);
    addCor('AMARELO', ProxCampo);
    mt.Post;
  end;

  SL.LoadFromFile('c:\nex\produtos2.csv');
  PB.Max := SL.Count;
  PB.Position := 0;
  for I := 1 to SL.Count-1 do begin
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];                      
    Cod := StrToIntDef(ProxCampo, 0);
    if (Cod>0) and mt.Locate('Codigo', Cod, []) then begin
      ProxCampo;
      Forn := Fornecedor(ProxCampo, '');
      slCores.Text := mtCores.Value;
      slGrade := GetGrade(ProxCampo);
      addProd;
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

initialization
  grade[1] := TStringList.Create;
  grade[1].Add('PP');
  grade[1].Add('P'); 
  grade[1].Add('M'); 
  grade[1].Add('G'); 
  grade[1].Add('GG'); 

  grade[2] := TStringList.Create;
  grade[2].Add('38');
  grade[2].Add('40'); 
  grade[2].Add('42'); 
  grade[2].Add('44'); 
  grade[2].Add('46'); 
  grade[2].Add('48');

  grade[3] := TStringList.Create;
  grade[3].Add('36');
  grade[3].Add('38');
  grade[3].Add('40'); 
  grade[3].Add('42'); 
  grade[3].Add('44'); 
  grade[3].Add('46'); 
  grade[3].Add('48');
  
  grade[4] := TStringList.Create;
  grade[4].Add('U');

finalization
  grade[1].Free;
  grade[2].Free;
  grade[3].Free;
  grade[4].Free;  
  
  
   

end.
