unit ncCert;

interface

uses classes, windows, sysutils, capicom_tlb, ncDebug, ActiveX;

function ListaCertificados: String;

implementation

function VirgEnter(S: String): String;
var P : Integer;
begin
  repeat
    P := Pos(',', S);
    if P>0 then 
      S := Trim(Copy(S, 1, P-1)) + sLineBreak + Trim(Copy(S, P+1, 2000));
  until (P=0);
  Result := S;
end;

function FormatCertName(S: String): String;
var sl : TStrings;

procedure Add(aName: String);
begin
  if Result>'' then Result := Result + ', ';
  Result := Result + aName + '=' + sl.Values[aName];
end;

begin
  Result := '';
  sl := TStringList.Create;
  try
    sl.Text := VirgEnter(S);
    Add('CN'); Add('OU'); Add('O'); Add('C'); Add('S'); Add('L'); Add('E');
  finally
    sl.Free;
  end;
end;

function GetCertificados: String;
var
  Store        : IStore3;
  Certs        : ICertificates2;
  Cert         : ICertificate2;
  i            : Integer;
begin
  coInitialize(nil);
  Result := '';
  Store := CoStore.Create;
  Store.Open(CAPICOM_CURRENT_USER_STORE, 'My' , CAPICOM_STORE_OPEN_MAXIMUM_ALLOWED);

  Certs := Store.Certificates as ICertificates2;
  for i:= 1 to Certs.Count do
  begin
    Cert := IInterface(Certs.Item[i]) as ICertificate2;
    if Result>'' then Result := Result + sLineBreak;
    Result := Result + FormatCertName(Cert.SubjectName);
  end;
end;

function ListaCertificados: String;
begin
  DebugMsg('ncCert.ListaCertificados');
  try
    Result := GetCertificados;
  except  
    on E: Exception do begin
      Result := '';
      DebugMsg('Erro obtendo lista de certificados digitais - Exception: '+E.Message);
    end;  
  end;
end;

end.
