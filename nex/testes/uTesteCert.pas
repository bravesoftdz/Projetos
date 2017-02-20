unit uTesteCert;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, capicom_tlb, Vcl.StdCtrls;

type
  TForm15 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

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

procedure TForm15.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Text := GetCertificados;
end;

end.
     