unit uDMNexLicGen;

interface

uses
  SysUtils, Classes, IdBaseComponent, IdComponent, IdTCPServer, SyncObjs,
  IdCustomHTTPServer, IdHTTPServer, EXECryptorKeyGen, ncDebug;

type
  TdmKeyGen = class(TDataModule)
    H: TIdHTTPServer;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure HCommandGet(AThread: TIdPeerThread;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
  private
    { Private declarations }
      KG : TKeyGen;
  public
    { Public declarations }
  end;

var
  dmKeyGen: TdmKeyGen;
  CS : TCriticalSection;

implementation

{$R *.dfm}

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

procedure TdmKeyGen.DataModuleCreate(Sender: TObject);
begin
  KG := TKeyGen.Create(ExtractFilePath(ParamStr(0)));
  H.Active := True;
end;

procedure TdmKeyGen.DataModuleDestroy(Sender: TObject);
begin
  H.Active := False;
  KG.Free;
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

procedure TdmKeyGen.HCommandGet(AThread: TIdPeerThread;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
var
  iTipo, iMaq, I : Integer;
  Venc : TDateTime;
  S, S2, sDebug : String;
begin
  if ARequestInfo.Params.Count=0 then Exit;
  
  try
    iTipo := StrToIntDef(ARequestInfo.Params.Values['tipo'], 5);
    if (iTipo<>5) and (iTipo<>2) then 
      iTipo := 5;
    iMaq := StrToIntDef(ARequestInfo.Params.Values['maquinas'], 1);  
    Venc := DMAToDate(ARequestInfo.Params.Values['vencimento']);
  
    with aRequestInfo do 
    if iTipo=5 then begin
      S := DateToDateLic(Venc, True);
      S2 := S;
      iMaq := 1;
     end else begin
       if Venc=0 then Venc := DataBaseLic+1;
       S := Trim(Params.Values['loja'])+'-'+FormatDateTime('dd/mm/yyyy', Venc);
       S2 := DateToDateLic(Venc, False);
     end;  
  
     CS.Enter;
     try
         S := S2 + '-' + KG.CreateSerialNumberEx(
                              ExtractFilePath(ParamStr(0))+'nexcafe.ep2', S,
                              False, False, False, False, False, False,
                              iTipo, iMaq, ARequestInfo.Params.Values['codequip']);
     finally
       CS.Leave;
     end;
  
     AResponseInfo.ContentText := S;

     sDebug := '';

     with aRequestInfo do 
     for I := 0 to Params.Count - 1 do begin
       sDebug := sDebug + ', ';
       sDebug := sDebug + Params.Names[I] + '=' + Params.ValueFromIndex[I];
     end;  

     DebugMsgEsp('IP: '+ARequestInfo.RemoteIP+sDebug+', Resposta='+S, False, True);
  except
    on E: Exception do DebugMsgEsp('Exception: ' + E.Message, False, True);
  end;
end;

initialization
  CurrencyString := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator := ',';
  ShortDateFormat := 'dd/mm/yyyy';
  nomearqdebug := 'NexLicGen_Debug.txt';
  DebugAtivo := True;
  CS := TCriticalSection.Create;

finalization
  CS.Free;
    
end.
