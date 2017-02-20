unit ncaSenhaToken;

interface

function SenhaTokenCorreta(aToken, aSenha: String): Boolean;
function SenhaToken(aToken: String): String;


implementation

uses sysutils, MD5;

function SenhaToken(aToken: String): String;
begin
  Result := Copy(UpperCase(md5.GetMD5Str(aToken+'ASDLKJHiuwenasdqqqCZCZCv')), 1, 8);
end;

function SenhaTokenCorreta(aToken, aSenha: String) : Boolean;
begin
  Result := SameText(SenhaToken(aToken), Trim(aSenha));
end;

end.
