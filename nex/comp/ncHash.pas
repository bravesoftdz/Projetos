unit ncHash;

interface

uses SysUtils, DCPcrypt2, DCPsha256, DCPsha1;


function nexHashKey(S: String): String;

function nexToken(aStr: String): String;

implementation

function nexHashKey(S: String): String;
var 
  H: TDCP_sha256;
  I: Integer;
  Digest : Array[0..63] of Byte;
begin
  H := TDCP_sha256.Create(nil);
  try
    H.Init;
    H.UpdateStr(S);
    H.Final(Digest);
    Result := '';
    for I := 0 to 31 do 
      Result := Result + IntToHex(Digest[I], 2);
    Result := LowerCase(result);  
  finally
    H.Free;
  end;
end;

function nexToken(aStr: String): String;
var 
  H: TDCP_sha1;
  S: String;
  Digest : Array[0..63] of Byte;
  I : Integer;
begin
  S := '';
  S := S + 'a';
  S := S + 'k';
  S := S + 's';
  S := S + 'd';
  S := S + 'j';
  S := S + 'h';
  S := S + 'W';
  S := S + 'E';
  S := S + 'I';
  S := S + 'U';
  S := S + 'Y';
  S := S + 'W';
  S := S + 'A';
  S := S + 'E';
  S := S + 'K';
  S := S + 'j';
  S := S + 'h';
  S := S + 'D';
  S := S + 'f';
  S := S + 's';
  S := S + 'd';
  S := S + 'f';
  S := S + 'z';
  S := S + 'O';
  S := S + 'I';
  S := S + 'a';
  S := S + 's';
  S := S + 'd';
  S := S + 'm';
  
  H := TDCP_sha1.Create(nil);
  try
    H.Init;
    H.UpdateStr(S+aStr);
    H.Final(Digest);
    Result := '';
    for I := 0 to 19 do 
      Result := Result + IntToHex(Digest[I], 2);
    Result := LowerCase(result);     
  finally
    H.Free;
  end;
end;

end.

2e6f9b0d5885b6010f9167787445617f553a735f
46070d4bf934fb0d4b06d9e2c46e346944e322444900a435d7d9a95e6d7435f5
