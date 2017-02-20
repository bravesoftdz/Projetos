unit uCorrigeCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, nxdb, nxseAllEngines, nxsdServerEngine, nxsrServerEngine,
  nxllTransport, nxptBasePooledTransport, nxtwWinsockTransport, nxllComponent,
  Grids, DBGrids, nxreRemoteServerEngine, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, 
  cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxCore, cxDateUtils,
  cxCheckBox;

type
  TForm16 = class(TForm)
    nxSession1: TnxSession;
    nxDB: TnxDatabase;
    nxTCP: TnxWinsockTransport;
    PB: TProgressBar;
    Button1: TButton;
    nxRemoteServerEngine1: TnxRemoteServerEngine;
    tProd: TnxTable;
    tMovEst: TnxTable;
    tMovEstProduto: TLongWordField;
    tMovEstDataHora: TDateTimeField;
    tMovEstCancelado: TBooleanField;
    tMovEstAjustaCusto: TBooleanField;
    tMovEstTipoTran: TByteField;
    tProdID: TUnsignedAutoIncField;
    tProdCodigo: TStringField;
    tProdDescricao: TStringField;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

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
  I, T : Integer;
  A, D : Currency;   

function TemCompra: Boolean;
begin
  tMovEst.Last;
  while not tMovEst.Bof do begin
    if tMovEstTipoTran.Value=5 then begin
      Result := True;
      Exit;
    end;
    tMovEst.Prior;
  end;

  Result := False;
end;

procedure ApagaAjustaCusto;
var Apagou: Boolean;
begin
  tMovEst.Next;
  Apagou := False;
  while not tMovEst.Eof do begin

    if tMovEstTipoTran.Value=16 then begin
      if not Apagou  then begin
        Apagou := True;
        Memo1.Lines.Add(tProdID.AsString+' - '+tProdCodigo.AsString + ' - ' + tProdDescricao.Value);
        Inc(T);
      end;
      tMovEst.Delete;
    end else
      tMovEst.Next;
  end;
end;

begin
  tProd.Open;
  tMovEst.Open;
  Memo1.Clear;

  I := 0;
  T := 0;
  PB.Max := tProd.RecordCount;

  Caption := IntToStr(tProd.RecordCount) + ' Produtos';

  PB.Position := 0;
  
  while not tProd.Eof do begin
    tProd.Next;

    tMovEst.SetRange([tProdID.Value, True], [tProdID.Value, True]);
    if TemCompra then ApagaAjustaCusto;
    
    PB.Position := PB.Position + 1;
    Application.ProcessMessages;  
  end;

  ShowMessage('Pronto! '+IntToStr(T)+' produtos tiveram custos corrigidos');
end;

procedure TForm16.FormCreate(Sender: TObject);
begin
  nxdb.aliasname := 'NexCafe';
end;

end.
