unit uImpCSV_CFOP;

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
    DataSource1: TDataSource;
    Tab: TnxTable;
    DBGrid1: TDBGrid;
    TabCodigo: TWordField;
    TabDescricao: TnxMemoField;
    TabEntrada: TBooleanField;
    TabTipo: TByteField;
    TabNFCe: TBooleanField;
    TabOrdem: TByteField;
    TabCSOSN: TWordField;
    procedure Button1Click(Sender: TObject);
  private
    function Fornecedor(aNome, aObs: String): Integer;
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
    Result := 'EQUIP.SEGURANÇA'
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
    Result := 'CONSTRUÇÃO'
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
  Custo, C : Currency;
  DT: TDateTime;
  Qtd : Integer;

function ProxCampo: String;
begin
  Result := uProxCampo.ObtemProxCampo(S, ';');
  Exit;
end;

procedure proxn(n: Integer);
begin
  while n>0 do begin
    ProxCampo;
    dec(n);
  end;
end;

begin
  SL := TStringList.Create;
  SL.LoadFromFile('c:\nex\cfop.csv');
  PB.Max := SL.Count;
  PB.Position := 0;
  Tab.Open;
  Tab.EmptyTable;
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  MaxCod := 0;
//  for J := 1 to 2 do 
  for I := 0 to SL.Count-1 do begin
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];   
    
    Tab.Append;
    TabCodigo.Value := StrToInt(ProxCampo);
    TabDescricao.Value := ProxCampo;
    TabEntrada.Value := (TabCodigo.Value<5000);
    Tab.Post;
  end;
end;

function TForm16.Fornecedor(aNome, aObs: String): Integer;
begin
end;

end.

São Francisco de Assis do Piauí
