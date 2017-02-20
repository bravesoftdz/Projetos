unit uImpCSV_Clientes22;

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
    tCli: TnxTable;
    nxSE: TnxServerEngine;
    PB: TProgressBar;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    tCliID: TUnsignedAutoIncField;
    tCliCodigo: TStringField;
    tCliCodigoKey: TStringField;
    tCliNome: TStringField;
    tCliEndereco: TStringField;
    tCliBairro: TStringField;
    tCliCidade: TStringField;
    tCliUF: TStringField;
    tCliCEP: TStringField;
    tCliSexo: TStringField;
    tCliObs: TnxMemoField;
    tCliCpf: TStringField;
    tCliRg: TStringField;
    tCliTelefone: TStringField;
    tCliEmail: TnxMemoField;
    tCliPassaportes: TFloatField;
    tCliPai: TStringField;
    tCliMae: TStringField;
    tCliSenha: TStringField;
    tCliUltVisita: TDateTimeField;
    tCliDebito: TCurrencyField;
    tCliEscola: TStringField;
    tCliNickName: TStringField;
    tCliDataNasc: TDateTimeField;
    tCliCelular: TStringField;
    tCliTemDebito: TBooleanField;
    tCliLimiteDebito: TCurrencyField;
    tCliFoto: TGraphicField;
    tCliIncluidoEm: TDateTimeField;
    tCliAlteradoEm: TDateTimeField;
    tCliIncluidoPor: TStringField;
    tCliAlteradoPor: TStringField;
    tCliTitEleitor: TStringField;
    tCliFidPontos: TFloatField;
    tCliFidTotal: TFloatField;
    tCliFidResg: TFloatField;
    tCliAniversario: TStringField;
    tCliSemFidelidade: TBooleanField;
    tCliTemCredito: TBooleanField;
    tCliPJuridica: TBooleanField;
    tCliInativo: TBooleanField;
    tCliFornecedor: TBooleanField;
    tCliValorCred: TCurrencyField;
    tCliRecVer: TLongWordField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

uses uProxCampo;

function StrToCurrency(S: String): Currency;
var 
  Code, P : Integer;
  Res: Real;
begin
  P := Pos(',', S);
  if P>0 then S[P] := '.';
  Result := 0;
  if (Trim(S)>'') then begin
    Val(S, Res, Code);
    if Code=0 then
      REsult := Res;
  end;
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
    if s[i] in ['0'..'9', '-'] then
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
  S, s2, s3, sDoc, s4, s5: String;
  Mon : Currency;
  DT: TDateTime;

function ProxCampo: String;
var 
  P: Integer;
  C: Char;
begin
  if S='' then begin
    Result := '';
    Exit;
  end;
  Result := ObtemProxCampo(S, ',');
  Exit;
  
  if S[1]='"' then begin
    Delete(S, 1, 1);
    C := '"';
  end else 
    C := ';';
  
  P := Pos(C, S);
  if P>0 then begin
    Result := Trim(Copy(S, 1, P-1));
    Delete(S, 1, P);
  end else begin
    Result := Trim(S);
    S := '';
  end;
  S := Trim(S);
  if (C='"') and (S>'') and (S[1]=';') then Delete(S, 1, 1);

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

function SomaStr(S1, S2: String; const aDiv: String = ' '): String;
begin
  if S2>'' then begin
    if S1>'' then S1 := S1 + aDiv;
    S1 := S1 + S2;
    Result := S1;
  end;
end;

procedure AddEnd(S: String);
begin
  tCliEndereco.Value := SomaStr(tCliEndereco.Value, S);
end;

procedure AddObs(S: String);
begin
  tCliObs.Value := SomaStr(tCliObs.Value, S, sLineBreak);
end;

procedure AddCampoObs(aPrompt, aValue: String);
begin
  if (aValue>'') and (aValue<>'0') then
    AddObs(aPrompt+aValue);
end;

begin
  SL := TStringList.Create;
  SL.LoadFromFile('c:\nex\clientes22.csv');
  PB.Max := SL.Count;
  PB.Position := 0;
  tCli.Open;
//  tCli.EmptyTable;
  Application.ProcessMessages;
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
//  for J := 1 to 2 do 
  for I := 1 to SL.Count-1 do begin
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];
    tCli.Append;
    ProxCampo;
    tCliNome.Value := ProxCampo;
    tCliEndereco.Value := ProxCampo; AddEnd(ProxCampo); AddEnd(ProxCampo);
    tCliCEP.Value := ProxCampo;
    tCliBairro.Value := ProxCampo;
    tCliCidade.Value := ProxCampo;
    tCliUF.Value := ProxCampo;
    tCliObs.Value := ProxCampo;
    tCliIncluidoEm.Value := StrToDateDef(ProxCampo, Date);
    tCliEmail.Value := ProxCampo;
    tCliTelefone.Value := ProxCampo;
    tCliCelular.Value := ProxCampo;
    tCliPJuridica.Value := SameText(ProxCampo, 'J');
    tCliCPF.Value := ProxCampo;
    ProxN(5);
    AddCampoObs('Empresa: ', ProxCampo);
    AddCampoObs('Cargo: ', ProxCampo);
    AddCampoObs('Tel.Empresa: ', ProxCampo);
    AddCampoObs('End.Empresa: ', ProxCampo);
    ProxCampo;
    tCliRG.Value := ProxCampo;
    AddCampoObs('Ref.Comercial: ', ProxCampo);
    AddCampoObs('Ref.Pessoal: ', ProxCampo);
    try
      tCliDataNasc.Value := StrToDate(ProxCampo);
    except
    end;
    tCliPai.Value := ProxCampo;
    tCliMae.Value := ProxCampo;
    ProxCampo;
    AddCampoObs('Inscr.Suframa: ', ProxCampo);
    ProxCampo;
    AddCampoObs('Nome Referencia: ', ProxCampo);
    AddCampoObs('Fax: ', ProxCampo);
    AddCampoObs('Inscr.Municipal: ', ProxCampo);
    ProxCampo;
    AddCampoObs('Num.Título: ', ProxCampo);
    AddCampoObs('Zona: ', ProxCampo);
    AddCampoObs('Seção: ', ProxCampo);
    AddCampoObs('Inscr.Estadual: ', ProxCampo);
    ProxCampo;
    AddCampoObs('Senha e-Commerce: ', ProxCampo);
    tCli.Post;
  end;
  ShowMessage('Fim');
end;

procedure TForm16.FormShow(Sender: TObject);
begin
  tCli.Open;
end;

end.
