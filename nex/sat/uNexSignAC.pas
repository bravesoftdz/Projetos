unit uNexSignAC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  spdCFeSatType, ActiveX, 
  spdCFeSat, IdContext, IdCustomHTTPServer, IdBaseComponent, IdComponent,
  IdCustomTCPServer, IdHTTPServer, Vcl.StdCtrls, SyncObjs, Vcl.ExtCtrls;

type
  TFrmPri = class(TForm)
    H: TIdHTTPServer;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edLoja: TEdit;
    edCNPJ: TEdit;
    edChave: TEdit;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure HCommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure edLojaChange(Sender: TObject);
    procedure edCNPJChange(Sender: TObject);
  private
    { Private declarations }
    procedure GerarChave;
  public
    function Sign(aCNPJ: String): String;
    { Public declarations }
  end;

var
  FrmPri: TFrmPri;
  CS : TCriticalSection;

implementation
  
{$R *.dfm}

uses ncDebug, md5;

{ TForm7 }

function SoDig(S: String): String;
var I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    if S[I] in ['0'..'9'] then Result := Result + S[I];
end;

function Chave(aLoja, aCNPJ: string): string;
begin
  aLoja := Trim(aLoja);
  aCNPJ := SoDig(aCNPJ);
  Result := getmd5str('piLKHerASD17IUywefd7kdsfTkjhasfdkxzxxx778213zxcnbv'+LowerCase(aLoja)+aCNPJ); // do not localize
end;

procedure TFrmPri.edCNPJChange(Sender: TObject);
begin
  GerarChave;
end;

procedure TFrmPri.edLojaChange(Sender: TObject);
begin
  GerarChave;
end;

procedure TFrmPri.FormCreate(Sender: TObject);
begin
  H.Active := True;
end;

procedure TFrmPri.GerarChave;
begin
  if (Trim(edLoja.Text)='') or (Trim(edCNPJ.Text)='') then begin
    edChave.Text := '';
    Exit;
  end;
  edChave.Text := Chave(edLoja.Text, edCNPJ.Text);

  if Length(SoDig(edCNPJ.Text))=14 then 
    Memo1.Lines.Text := Sign(SoDig(edCNPJ.Text)) else
    Memo1.Lines.Text := '';
end;

procedure TFrmPri.HCommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
var
  S, sCNPJ, sChave, sDebug, sLoja : String;
  I: Integer;
  sl : TStrings;
  Erro : Integer;
begin
    if ARequestInfo.Params.Count=0 then Exit;
    
    try
      sCNPJ := SoDig(ARequestInfo.Params.Values['cnpj']);
      sChave := Trim(ARequestInfo.Params.Values['chave']);
      sLoja := Trim(ARequestInfo.Params.Values['loja']);

      if sChave <> Chave(sLoja, sCNPJ) then begin
        AResponseInfo.ContentText := 'erro=chave inválida';
        Exit;
      end;
      
      S := Sign(sCNPJ);
    
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

function TFrmPri.Sign(aCNPJ: String): String;
var sat: TspdCFeSat;
begin
  CS.Enter;
  try
    Result := '';
    CoInitialize(nil);
    try
      sat := TspdCFeSat.Create(nil);
      try
//        sat.NomeCertificado.Text := 'CN=NEXTAR TECNOLOGIA DE SOFTWARE LTDA ME, OU=ID - 8256664, O=ICP-Brasil, C=BR, S=, L=, E=joao@nextar.com.br';
        sat.NomeCertificado.Text := 'CN=NEXTAR TECNOLOGIA DE SOFTWARE LTDA ME:04580911000196, OU=Autenticado por AR Fecomercio SC, O=ICP-Brasil, C=BR, S=SC, L=Florianopolis, E=';
        Result := sat.GerarSignAC(aCNPJ, '04580911000196');
      finally
        sat.Free;
      end;
    except
      on E: Exception do begin
        DebugMsgEsp('Erro: '+E.Message, False, True);
        Result := 'erro='+E.Message;
      end;
    end;
    CoUninitialize;
  finally
    CS.Leave;
  end;
end;

initialization
  CS := TCriticalSection.Create;

finalization
  CS.Free;    


end.
