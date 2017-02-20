unit uProxCampo;

interface

uses classes, sysutils;

function ObtemProxCampo(var S: String; aSepChar: Char): String;
function StrToCurrency(S: String): Currency;


implementation

function SoDig(S: String): String;
var i: integer;
begin
  result := '';
  for i := 1 to length(S) do
    if s[i] in ['0'..'9', ',', '.'] then
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

function ObtemProxCampo(var S: String; aSepChar: Char): String;
var 
  P: Integer;
  C: Char;
  Aspas: Boolean;

function FindFimAspas: Integer;
var qaspas: byte;
begin
  qaspas := 1;
  Result := 0;
  for Result := 1 to Length(S) do begin
    if S[result]=aSepChar then begin
      if qAspas=0 then Exit
    end else
    if S[result]='"'then begin
      Inc(qAspas);
      if qAspas=2 then qAspas := 0;
    end;
  end;  
  if (Result = Length(S)) and (Pos(aSepChar, S)>0) then 
    Result := Pos(aSepChar, S);
end;

procedure AspasDuplasParaAspas(var P: Integer);
var z, qAspas: Integer;
begin
  for z := P-1 downto 1 do
  if (S[z]='"') and (S[z+1]='"') then begin
    Delete(S, z, 1);
    qAspas := 0;
    Dec(P);
  end;
end;

procedure RemoveUltimaAspas(var P: Integer);
var z: integer;
begin
  if (P>=1) and (P<=Length(S)) then
  for z := P downto 1 do
  if (S[z]='"') then begin
    Delete(S, z, 1);
    Dec(P);
    Exit;
  end;
end;

begin
  S := Trim(S);
  if S='' then begin
    Result := '';
    Exit;
  end;

  if S[1]='"' then begin
    Delete(S, 1, 1);
    Aspas := True;
    P := FindFimAspas;
    RemoveUltimaAspas(P);
    AspasDuplasParaAspas(P);
  end else begin
    Aspas := False;
    C := aSepChar;
    P := Pos(C, S);
  end;
  
  if P>0 then begin
    Result := Trim(Copy(S, 1, P-1));
    Delete(S, 1, P);
  end else begin
    Result := Trim(S);
    S := '';
  end;
  S := Trim(S);
  if (C='"') and (S>'') and (S[1]=aSepChar) then Delete(S, 1, 1);

{  for P := Length(Result) downto 1 do 
    if Result[P]='"' then Delete(Result, P, 1);}

  Result := Trim(MeuTrim(Result));
end;

end. 
