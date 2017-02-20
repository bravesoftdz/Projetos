unit uGEOIP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, DB, nxdb, nxsdServerEngine, nxreRemoteServerEngine, nxllComponent,
  nxllTransport, nxptBasePooledTransport, nxtwWinsockTransport, ComCtrls,
  ExtCtrls;

type
  TForm11 = class(TForm)
    H: TIdHTTP;
    PB: TProgressBar;
    nxTCP: TnxWinsockTransport;
    nxRSE: TnxRemoteServerEngine;
    nxSE: TnxSession;
    nxDB: TnxDatabase;
    tCli: TnxTable;
    btnGeoIP: TButton;
    tCliCodigo: TAutoIncField;
    tCliTipo: TWordField;
    tCliSenha: TStringField;
    tCliCadastroEm: TDateTimeField;
    tCliCadastroPor: TStringField;
    tCliAtualizadoEm: TDateTimeField;
    tCliAtualizadoPor: TStringField;
    tCliLoja: TStringField;
    tCliRazaoSocial: TStringField;
    tCliPais: TStringField;
    tCliCidade: TStringField;
    tCliCidade_geoip: TStringField;
    tCliUF_geoip: TStringField;
    tCliUF: TStringField;
    tCliEndereco: TnxMemoField;
    tCliCEP: TStringField;
    tCliBairro: TStringField;
    tCliSerieHD: TStringField;
    tCliCodEquip: TStringField;
    tCliNumMaq: TWordField;
    tCliCNPJ: TStringField;
    tCliIE: TStringField;
    tCliObs: TnxMemoField;
    tCliTelefones: TnxMemoField;
    tCliEmailReg: TnxMemoField;
    tCliFormaPagto: TnxMemoField;
    tCliLicMaq: TWordField;
    tCliLicTipo: TWordField;
    tCliLicVenc: TDateField;
    tCliManInicio: TDateField;
    tCliManVenc: TDateField;
    tCliProprietarios: TnxMemoField;
    tCliGerente: TStringField;
    tCliTipoLoja: TWordField;
    tCliEmailTec: TnxMemoField;
    tCliValor: TCurrencyField;
    tCliValorRec: TCurrencyField;
    tCliEmitirNF: TBooleanField;
    tCliMessenger: TnxMemoField;
    tCliICQ: TnxMemoField;
    tCliUObtemLic: TDateTimeField;
    tCliUVersao: TStringField;
    tCliCAno: TWordField;
    tCliCMes: TWordField;
    tCliCDia: TWordField;
    tCliAAno: TWordField;
    tCliAMes: TWordField;
    tCliADia: TWordField;
    tCliUAno: TWordField;
    tCliUMes: TWordField;
    tCliUDia: TWordField;
    tCliUDias: TWordField;
    tCliMotivoDesist: TStringField;
    tCliLastAdminPopup: TDateTimeField;
    tCliCampanha: TStringField;
    tCliutmccn: TIntegerField;
    tCliutmctr: TIntegerField;
    tCliutmcct: TIntegerField;
    tCliutmcsr: TIntegerField;
    tCliutmcmd: TIntegerField;
    tCliNegociacao: TWordField;
    tCliStatus: TIntegerField;
    tCliContatarEm: TDateTimeField;
    tCliPrograma: TWordField;
    tCliBloqueado: TBooleanField;
    tCliCliente: TBooleanField;
    tCliAtivado: TBooleanField;
    tCliCodAtivacao: TStringField;
    tCliEmailConta: TStringField;
    tCliAtivadoEm: TDateTimeField;
    tCliTipoConta: TWordField;
    tCliPremiumAte: TDateTimeField;
    tCliCodDesc: TStringField;
    tCliRedirT: TIntegerField;
    tCliRedirI: TDateTimeField;
    tCliTipoTel: TWordField;
    tCliConfirmouLocal: TBooleanField;
    Memo1: TMemo;
    Timer1: TTimer;
    tIP: TnxTable;
    tIPIP: TStringField;
    tIPLoja: TIntegerField;
    tIPDH: TDateTimeField;
    lbQtd: TLabel;
    Button1: TButton;
    tCli2: TnxTable;
    tCli2Codigo: TAutoIncField;
    tCli2UObtemLic: TDateTimeField;
    tCliContaTrocada: TBooleanField;
    tCli2CodEquip: TStringField;
    Button2: TButton;
    tCliContatoCC: TBooleanField;
    tCli2EmailConta: TStringField;
    tCli2ContatoCC: TBooleanField;
    procedure Timer1Timer(Sender: TObject);
    procedure btnGeoIPClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    FQtd : Integer;
    { Public declarations }
  end;

  TEstado = record
    esNome: String;
    esUF : String;
  end;

var
  Form11: TForm11;

  arrEstado : Array of TEstado;

implementation

{$R *.dfm}

procedure AddEstado(aNome, aUf: String);
var I : Integer;
begin
  I := Length(arrEstado);
  SetLength(arrEstado, I+1);
  arrEstado[I].esNome := aNome;
  arrEstado[I].esUF := AnsiUpperCase(aUF);
end;

function ObtemUF(aNome: String): String;
var I : Integer;
begin            
  for I := low(arrEstado) to High(arrEstado) do 
    if SameText(arrEstado[I].esNome, aNome) then begin
      Result := arrEstado[I].esUF;
      Exit;
    end;
  Result := '';  
end;

procedure TForm11.btnGeoIPClick(Sender: TObject);
begin
  tCli.Open;
  tIP.Open;
  PB.Max := tCli.RecordCount;
  tCli.Last;
  FQtd := 0;
  PB.Position := 0;
  Memo1.Lines.Clear;
  Timer1.Enabled := True;
end;

procedure TForm11.Button1Click(Sender: TObject);
var trocada: Boolean;
begin
  tCli.Open;
  tCli2.Open;
  PB.Max := tCli.RecordCount;
  tCli.First;
  FQtd := 0;
  PB.Position := 0;
  Memo1.Lines.Clear;
  while not tCli.Eof do begin
    trocada := false;
    if (tCliCodEquip.Value>'') then begin
      tCli2.SetRange([tCliCodEquip.Value], [tCliCodEquip.Value]);
      while (not Trocada) and (not tCli2.Eof) do begin
        Trocada := (tCli2Codigo.Value <> tCliCodigo.Value) and (tCli2UObtemLic.Value>tCliUObtemLic.Value);
        if Trocada then begin
          Inc(FQtd);
          lbQtd.Caption := IntToStr(FQtd) + ' trocadas';
        end;
        tCli2.Next;
      end;
    end;
    tCli.Edit;
    tCliContaTrocada.Value := Trocada;
    tCli.Post;
    tCli.Next;
    PB.Position := PB.Position + 1;
    Application.ProcessMessages;
  end;
  ShowMessage('Z� fini');
end;

procedure TForm11.Button2Click(Sender: TObject);
var 
  sl : TStrings;
  i : INteger;
  s, sConta, sOrigem : String;
  
begin
  sl := TStringList.Create;
  try
    sl.LoadFromFile(ExtractFilePath(ParamStr(0))+'cc.csv');
    PB.max := sl.Count;
    PB.Position := 1;
    tCli.Open;
    tCli2.Open;
    tCli.IndexName := 'IEmailConta';
    for I := 1 to sl.count-1 do begin
      s := sl[i];
      sConta := Copy(s, 1, Pos(';', s)-1);
      Delete(s, 1, Pos(';', s));
      sOrigem := Copy(S, 1, Pos(';', S)-1);
      Delete(s, 1, Pos(';', s));
      if tCli.FindKey([sConta]) then begin
        tCli.Edit;
        tCliContatoCC.Value := True;
        tCli.Post;

        if tCliCodEquip.Value>''  then begin
          tCli2.SetRange([tCliCodEquip.Value], [tCliCodEquip.Value]);
          while not tCli2.Eof do begin
            if tCliEmailConta.Value <> tCli2EmailConta.Value then begin
              tCli2.Edit;
              tCli2ContatoCC.Value := True;
              tCli2.Post;
            end;
            tCli2.Next;
          end;
        end;
      end;
      PB.Position := PB.Position + 1;
      Application.ProcessMessages;
    end;
    ShowMessage('CC.csv processado com sucesso');
  finally
    sl.Free;
  end;
end;

procedure TForm11.Timer1Timer(Sender: TObject);
var S, S2, sCidade, sUF, sPais : String;
D: TDateTime;

function ProxCampo: String;
var p: integer;
begin
  P := Pos(',', S);
  if P>0 then begin
    Result := Copy(S, 1, P-1);
    Delete(S, 1, P);
  end else begin
    Result := S;
    S := '';
  end;
end;

begin
  Timer1.Enabled := False;
  try
    while not tCli.Bof do begin
      D := EncodeDate(2012, 3, 5);
      PB.Position := PB.Position + 1;
      Application.ProcessMessages;
      if (tCliUObtemLic.Value > D) then 
      if ((tCliCidade.Value='') or (tCliUF.Value='')) and (tCliCidade_geoip.Value='') and tIP.FindKey([tCliCodigo.Value]) then begin 
        S := UTF8ToAnsi(H.Get('http://freegeoip.net/csv/'+tIPIP.Value));
        S2 := S;
        ProxCampo;ProxCampo;
        sPais := ProxCampo;
        ProxCampo;
        sUF := ProxCampo;
        sCidade := ProxCampo;
        if SameText(sPais, 'Brazil') then begin
          sUF := ObtemUF(sUF);
          if (sUF>'') and (sCidade>'') then begin
            Inc(FQtd);
            lbQtd.Caption := IntToStr(FQtd) + ' geoips com sucesso';
            tCli.Edit;
            tCliPais.Value := 'Brasil';
            tCliCidade_geoip.Value := AnsiUpperCase(sCidade);
            tCliUF_geoip.Value := AnsiUpperCase(sUF);
            tCli.Post;
          end else begin
            Memo1.Lines.Add(S2);
            tCli.Edit;
            tCliPais.Value := 'Brasil';
            tCliCidade_geoip.Value := 'x';
            tCli.Post;
          end;  
        end else begin
          Inc(FQtd);
          lbQtd.Caption := IntToStr(FQtd) + ' geoips com sucesso';
          tCli.Edit;
          tCliPais.Value := sPais;
          
          if Trim(sCidade)='' then 
            sCidade := 'x'
          else 
          if sUF>'' then
            sCidade := sCidade +', '+sUF;
            
          tCliCidade_geoip.Value := AnsiUpperCase(sCidade);
          tCli.Post;
        end;  
        
        tCli.Prior;
        Exit;
      end;  
      tCli.Prior;
    end;
  finally
    Timer1.Enabled := not tCli.Bof;
    if not Timer1.Enabled then
      ShowMessage('Fim de GEO IPtiza��o');
  end;
end;

initialization
  SetLength(arrEstado, 0);
  
  addestado('Acre', 'AC');
  addestado('Alagoas', 'AL');
  addestado('Amap�', 'AP');
  addestado('Amapa', 'AP');
  addestado('Amazonas', 'AM');
  addestado('Bahia', 'BA');
  addestado('Cear�', 'CE');
  addestado('Ceara', 'CE');
  addestado('Distrito Federal', 'DF');
  addestado('Esp�rito Santo', 'ES');
  addestado('Espirito Santo', 'ES');
  addestado('Goi�s', 'GO');
  addestado('Goias', 'GO');
  addestado('Maranh�o', 'MA');
  addestado('Maranhao', 'MA');
  addestado('Mato Grosso', 'MT');
  addestado('Mato Grosso do Sul', 'MS');
  addestado('Minas Gerais', 'MG');
  addestado('Par�', 'PA');
  addestado('Para', 'PA');
  addestado('Para�ba', 'PB');
  addestado('Paraiba', 'PB');
  addestado('Paran�', 'PR');
  addestado('Parana', 'PR');
  addestado('Pernambuco', 'PE');
  addestado('Piau�', 'PI');
  addestado('Piaui', 'PI');
  addestado('Rio de Janeiro', 'RJ');
  addestado('Rio Grande do Norte', 'RN');
  addestado('Rio Grande do Sul', 'RS');
  addestado('Rond�nia', 'RO');
  addestado('Rondonia', 'RO');
  addestado('Roraima', 'RR');
  addestado('Santa Catarina', 'SC');
  addestado('S�o Paulo', 'SP');
  addestado('Sao Paulo', 'SP');
  addestado('Sergipe', 'SE');
  addestado('Tocantins', 'TO');
  
  
  
  addestado('Goias', 'GO');


end.
