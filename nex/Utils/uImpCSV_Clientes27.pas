unit uImpCSV_Clientes27;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, nxdb, nxseAllEngines, nxsdServerEngine, nxsrServerEngine,
  nxllTransport, nxptBasePooledTransport, nxtwWinsockTransport, nxllComponent,
  Grids, DBGrids, nxreRemoteServerEngine, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxProgressBar, Vcl.ExtCtrls;

type
  TForm16 = class(TForm)
    nxSession1: TnxSession;
    nxDB: TnxDatabase;
    tCli: TnxTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    tCliID: TUnsignedAutoIncField;
    tCliCodigo: TStringField;
    tCliCodigoKey: TStringField;
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
    tCliNome: TStringField;
    tCliEndereco: TStringField;
    PB: TProgressBar;
    Panel1: TPanel;
    Button1: TButton;
    nxServerEngine1: TnxServerEngine;
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

function Split(s: String; aSep: String): TStrings;
var P : Integer;
begin
  Result := TStringList.Create;
  try
    repeat
      P := Pos(aSep, s);
      if P > 0 then begin
        Result.Add(Trim(Copy(S, 1, P-1)));
        Delete(S, 1, P+Length(aSep)-1);
      end else begin
        S := Trim(S);
        if S>'' then Result.Add(S);
        S := '';
      end;
    until (S='');
  except
    Result.Free;
    raise;
  end;
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
  SL.LoadFromFile('c:\nex\clientes27.csv');
  PB.Max := SL.Count;
  PB.Position := 0;
  tCli.EmptyTable;
  Application.ProcessMessages;
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
//  for J := 1 to 2 do 
  for I := 1 to SL.Count-1 do begin
    PB.Position := I + 1;
    Application.ProcessMessages;
    S := SL[I];
    tCli.Append; 
    tCliNome.Value := ProxCampo;
    AddCampoObs('Razão Social: ', ProxCampo);
    AddCampoObs('Categoria: ', ProxCampo);
    tCliEndereco.Value := ProxCampo;
    s2 := ProxCampo;
    if s2>'' then tCliEndereco.Value := tCliEndereco.Value + ' ' + s2;
    tCliBairro.Value := ProxCampo;
    tCliCidade.Value := ProxCampo;  ProxCampo;
    tCliUF.Value := ProxCampo;
    tCliCEP.Value := ProxCampo;
    tCliTelefone.Value := ProxCampo;
    tCliCelular.Value := ProxCampo;
    s2 := Copy(ProxCampo, 1, 1);
    tCliPJuridica.Value := SameText(S2, 'J');
    try
      tCliIncluidoEm.AsString := ProxCampo; 
    except
    end;
    tCliInativo.Value := False;
    tCli.Post;
  end;
  ShowMessage('Fim');
end;

procedure TForm16.FormShow(Sender: TObject);
begin
  tCli.Open;
end;

end.
