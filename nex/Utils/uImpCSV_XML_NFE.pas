unit uImpCSV_XML_NFE;

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
    procedure Button1Click(Sender: TObject);
  private
    function Fornecedor(aCod: String): Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

uses uProxCampo;


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

function Categoria(S: String): String;
begin
  if S='186813' then
    Result := 'ACABAMENTOS'
  else
  if S='186802' then
    Result := 'EQUIP.SEGURAN�A'
  else
  if S= '186792' then
    Result := 'OUTROS' 
  else 
  if S='186785' then	
    Result := 'ELETRODOMESTICOS'
  else
  if S='182555' then	
    Result := 'HIDRAULICA'
  else
  if S='183164' then	
    Result := 'ELETRICA'
  else
  if S='186340' then
    Result := 'TINTAS'
  else
  if S='186489' then	
    Result := 'FERRAGENS'
  else
  if S='186493' then
    Result := 'CONSTRU��O'
  else
  if S='186533' then	
    Result := 'AUTOMOTIVO'
  else
  if S='186534' then
    Result :=	'MOVEIS'
  else
  if S='186702' then	
    Result := 'LUBRIFICANTES'
  else
  if S='200891' then
    Result := 'GAS'
  else
  if S='210590' then	
    Result := 'JANELAS'
  else
    Result := '';
end;

procedure TForm16.Button1Click(Sender: TObject);
var 
  SL: TStrings;
  I, J, Min, MaxCod, Cod: Integer;
  S, s2, s3, sDoc: String;
  Mon : Currency;
  DT: TDateTime;
  Qtd : Integer;

function ProxCampo: String;
begin
  Result := ObtemProxCampo(S, ',');
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
  SL.LoadFromFile('c:\nex\prod.csv');
  S := sl.Text;
  SL.Clear;
  SL.LoadFromFile('c:\nex\prod2.csv');
  sl.Text := sl.Text + sLineBreak + S;
  PB.Max := SL.Count;
  PB.Position := 0;
  tProd.Open;
  tEst.Open;
  tFor.Open;
  tProd.EmptyTable;
  tEst.EmptyTable;
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  MaxCod := 0;
//  for J := 1 to 2 do 
  for I := 1 to SL.Count-1 do begin
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];                      
    tProd.Append; ProxCampo;
    tProdCodigo.Value := ProxCampo;
    tProdDescricao.Value := ProxCampo;
    Proxn(2);
    tProdUnid.Value := ProxCampo;
    tProdFornecedor.Value := 1;
    tProdEstoqueAtual.Value := StrToCurrency(ProxCampo);
    tProdCustoUnitario.Value := StrToCurrency(ProxCampo);
    tProdPreco.Value := StrToCurrency(ProxCampo);
    tProdAtivo.Value := True;
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

function TForm16.Fornecedor(aCod: String): Integer;
begin
//  while Length(aCod)<15 do aCod := '0'+aCod;
  if tFor.FindKey([aCod]) then
    Result := tForID.Value else
    Result := 0;
end;

end.
