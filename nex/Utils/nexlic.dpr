program nexlic;

{$APPTYPE CONSOLE}

uses
  Classes,
  SysUtils,
  EXECryptorKeyGen;

var
  sl : TStrings;  
  i : Integer;
  kg : TKeyGen;

  iTipo, iMaq : Integer;
  Venc : TDateTime;
  S, S2, sDebug : String;
  
  
function DataBaseLic: TDateTime;
begin
  Result := EncodeDate(2003, 1, 1);
end;

function IsPremiumDateChar(C: Char): Boolean;
begin
  Result := (C in ['G'..'V']);
end;

function HexToPremium(C: Char): Char;
begin
  case C of
    '0': Result := 'G';
    '1': Result := 'H';
    '2': Result := 'I';  
    '3': Result := 'J';  
    '4': Result := 'K';  
    '5': Result := 'L';  
    '6': Result := 'M';  
    '7': Result := 'N';  
    '8': Result := 'O';  
    '9': Result := 'P';  
    'A': Result := 'Q';  
    'B': Result := 'R';  
    'C': Result := 'S';  
    'D': Result := 'T';  
    'E': Result := 'U';  
    'F': Result := 'V';  
  else
    Result := C;  
  end;
end;

function PremiumToHex(C: Char): Char;
begin
  case C of
    'G': Result := '0';
    'H': Result := '1';
    'I': Result := '2';  
    'J': Result := '3';  
    'K': Result := '4';  
    'L': Result := '5';  
    'M': Result := '6';  
    'N': Result := '7';  
    'O': Result := '8';  
    'P': Result := '9';  
    'Q': Result := 'A';  
    'R': Result := 'B';  
    'S': Result := 'C';  
    'T': Result := 'D';  
    'U': Result := 'E';  
    'V': Result := 'F';  
  else
    Result := C;  
  end;
end;

function IsPremiumDate(D: String): Boolean;
begin
  if Length(D)<4 then 
   Result := False
  else begin
    D := UpperCase(D);
    Result := IsPremiumDateChar(D[1]) and
              IsPremiumDateChar(D[2]) and
              IsPremiumDateChar(D[3]) and
              IsPremiumDateChar(D[4]);
  end;
end;

function IsFreeDate(D: String): Boolean;
begin
  Result := SameText(Copy(D, 1, 4), 'FREE'); // do not localize
end;

function IsPremiumOrFree(D: String): Boolean;
begin
  Result := SameText(Copy(D, 1, 4), 'FREE') or IsPremiumDate(D); // do not localize
end;

function PremiumDateToDateLic(D: String): String;
begin
  if IsPremiumDate(D) then
    Result := PremiumToHex(D[1]) + PremiumToHex(D[2]) + PremiumToHex(D[3]) + PremiumToHex(D[4]) else
    Result := D;
end;

function DateLicToPremiumDate(D: String): String;
begin
  if Length(D)<4 then 
    Result := D  else 
    Result := HexToPremium(D[1]) + HexToPremium(D[2]) + HexToPremium(D[3]) + HexToPremium(D[4]);
end;

function DateLicToDate(D: String): TDateTime;
begin
  if SameText(Copy(D, 1, 4), 'FREE') then // do not localize
    Result := 0 else
    Result := DataBaseLic + 
              StrToIntDef('$'+PremiumDateToDateLic(D), 0);
end;

function DateToDateLic(D: TDateTime; aFreePremium: Boolean): String;
begin
  if D<=DataBaseLic then
    Result := '0000' // do not localize
  else
    Result := IntToHex(Trunc(D-DataBaseLic), 4);  

  if aFreePremium then
    if (D=0) then
      Result := 'FREE' else // do not localize
      Result := DateLicToPremiumDate(Result);
end;

function DMAtoDate(S: String): TDateTime;
var D, M, A: Word;
begin
  Result := 0;
  if pos('/', S)<1 then Exit;
  D := StrToIntDef(copy(S, 1, Pos('/', S)-1), 0);
  Delete(S, 1, Pos('/', S));
  M := StrToIntDef(copy(S, 1, Pos('/', S)-1), 0);
  Delete(S, 1, Pos('/', S));
  A := StrToIntDef(S, 0);
  if (D<1) or (D>31) or (M<1) or (M>12) or (A<2000) or (A>9999)  then Exit;
  Result := EncodeDate(A, M, D);
end;

begin
  if ParamCount=0 then Exit;
  sl := TStringList.Create;
  KG := TKeyGen.Create(ExtractFilePath(ParamStr(0)));
  for i := 1 to ParamCount do sl.Add(ParamStr(i));

  try
    iTipo := StrToIntDef(sl.Values['tipo'], 5);
    if (iTipo<>5) and (iTipo<>2) and (iTipo<>6) then 
      iTipo := 1;
    iMaq := StrToIntDef(sl.Values['maquinas'], 1);  
    Venc := DMAToDate(sl.Values['vencimento']);
  
    if iTipo in [5,6] then begin
      S := DateToDateLic(Venc, True);
      S2 := S;
      iMaq := 1;
    end else begin
      if Venc=0 then Venc := DataBaseLic+1;
      S := Trim(sl.Values['loja'])+'-'+FormatDateTime('dd/mm/yyyy', Venc);
      S2 := DateToDateLic(Venc, False);
    end;  
  
    S := S2 + '-' + KG.CreateSerialNumberExW(
                     ExtractFilePath(ParamStr(0))+'nexcafe.ep2', S,
                     False, False, False, False, False, False,
                     iTipo, iMaq, sl.Values['codequip']);
    writeln(S);                 
  except
  end;
end.
