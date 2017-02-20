unit uImp_Luiz_Japao2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, nxdb, nxseAllEngines, nxsdServerEngine, nxsrServerEngine,
  nxllTransport, nxptBasePooledTransport, nxtwWinsockTransport, nxllComponent,
  Grids, DBGrids, DBTables, IBDatabase, 
  ADODB, nxreRemoteServerEngine, TB2Dock;
  

type
  TForm16 = class(TForm)
    nxSession1: TnxSession;
    nxDB: TnxDatabase;
    tCli: TnxTable;
    nxTCP: TnxWinsockTransport;
    PB: TProgressBar;
    Button1: TButton;
    DataSource1: TDataSource;
    adoConn: TADOConnection;
    tF: TADOTable;
    Label1: TLabel;
    nxRSE: TnxRemoteServerEngine;
    TBDock1: TTBDock;
    G: TDBGrid;
    tPC: TADOTable;
    tEstado: TADOTable;
    tCliID: TAutoIncField;
    tCliNome: TStringField;
    tCliEndereco: TStringField;
    tCliBairro: TStringField;
    tCliCidade: TStringField;
    tCliUF: TStringField;
    tCliCEP: TStringField;
    tCliSexo: TStringField;
    tCliObs: TnxMemoField;
    tCliCpf: TStringField;
    tCliRg: TStringField;
    tCliTelefone: TStringField;
    tCliEmail: TnxMemoField;
    tCliPassaportes: TFloatField;
    tCliPai: TStringField;
    tCliMae: TStringField;
    tCliSenha: TStringField;
    tCliUltVisita: TDateTimeField;
    tCliDebito: TCurrencyField;
    tCliEscola: TStringField;
    tCliNickName: TStringField;
    tCliDataNasc: TDateTimeField;
    tCliCelular: TStringField;
    tCliTemDebito: TBooleanField;
    tCliLimiteDebito: TCurrencyField;
    tCliFoto: TGraphicField;
    tCliIncluidoEm: TDateTimeField;
    tCliAlteradoEm: TDateTimeField;
    tCliIncluidoPor: TStringField;
    tCliAlteradoPor: TStringField;
    tCliTitEleitor: TStringField;
    tCliFidPontos: TFloatField;
    tCliFidTotal: TFloatField;
    tCliFidResg: TFloatField;
    tCliAniversario: TStringField;
    tCliSemFidelidade: TBooleanField;
    tCliTemCredito: TBooleanField;
    tCliPJuridica: TBooleanField;
    tCliInativo: TBooleanField;
    tCliFornecedor: TBooleanField;
    tCliValorCred: TCurrencyField;
    tCliRecVer: TIntegerField;
    tFIDCustomer: TIntegerField;
    tFIDUser: TIntegerField;
    tFNmFirstName: TWideStringField;
    tFNmSecondName: TWideStringField;
    tFNmAddress: TWideStringField;
    tFNmPlace: TWideStringField;
    tFNrCity: TIntegerField;
    tFNmCity: TWideStringField;
    tFNrState: TIntegerField;
    tFNmState: TWideStringField;
    tFNmZip: TWideStringField;
    tFNrCountry: TIntegerField;
    tFNmCountry: TWideStringField;
    tFNmPhone1: TWideStringField;
    tFNmPhone2: TWideStringField;
    tFNmFax: TWideStringField;
    tFNmEmail: TWideStringField;
    tFNmMaritalStatus: TWideStringField;
    tFDtBirthday: TDateTimeField;
    tFNmOccupation: TWideStringField;
    tFNmNationality: TWideStringField;
    tFNmGender: TWideStringField;
    tFNmCustomerShip: TWideStringField;
    tFNmAddressShip: TWideStringField;
    tFNmPlaceShip: TWideStringField;
    tFNrCityShip: TIntegerField;
    tFNmCityShip: TWideStringField;
    tFNrStateShip: TIntegerField;
    tFNmStateShip: TWideStringField;
    tFNmZipShip: TWideStringField;
    tFNrCountryShip: TIntegerField;
    tFNmCountryShip: TWideStringField;
    tFNrTpCustomer: TSmallintField;
    tFNmTpPerson: TWideStringField;
    tFNmCompany: TWideStringField;
    tFNmLinkWebsite: TWideStringField;
    tFNmLinkPic1: TWideStringField;
    tFNmLinkPic2: TWideStringField;
    tFNrDoc1: TIntegerField;
    tFNrDoc2: TIntegerField;
    tFfAllowEmkt: TBooleanField;
    tFNmKanji: TWideStringField;
    tFNmKana: TWideStringField;
    tFNmAddressKanji: TWideStringField;
    tFNmCityKanji: TWideStringField;
    tFNmStateKanji: TWideStringField;
    tFNmAddressShipKanji: TWideStringField;
    tFNmCityShipKanji: TWideStringField;
    tFNrStateShipKanji: TIntegerField;
    tFDsCustomer: TWideMemoField;
    tFDtRegister: TDateTimeField;
    tFNmRegister: TWideStringField;
    tFDtUpdate: TDateTimeField;
    tFNmUpdate: TWideStringField;
    tFfRecordEnabled: TBooleanField;
    ADOConnection1: TADOConnection;
    tEstadoNrState: TIntegerField;
    tEstadoNrCountry: TIntegerField;
    tEstadoRfState: TWideStringField;
    tEstadoNmState: TWideStringField;
    tEstadoDsState: TWideStringField;
    tEstadoNmState_lang1: TWideStringField;
    tEstadoDsState_lang1: TWideStringField;
    tEstadoDtRegister: TDateTimeField;
    tEstadoNmRegister: TWideStringField;
    tEstadoDtUpdate: TDateTimeField;
    tEstadoNmUpdate: TWideStringField;
    tEstadofRecordEnabled: TBooleanField;
    tCidade: TADOTable;
    tCidadeNrCity: TIntegerField;
    tCidadeNrState: TIntegerField;
    tCidadeRfCity: TWideStringField;
    tCidadeNmCity: TWideStringField;
    tCidadeDsCity: TWideStringField;
    tCidadeNmCity_lang1: TWideStringField;
    tCidadeDsCity_lang1: TWideStringField;
    tCidadeDtRegister: TDateTimeField;
    tCidadeNmRegister: TWideStringField;
    tCidadeDtUpdate: TDateTimeField;
    tCidadeNmUpdate: TWideStringField;
    tCidadefRecordEnabled: TBooleanField;
    ADOConnection2: TADOConnection;
    tPCIDPointCard: TIntegerField;
    tPCNmBarCodePointCard: TWideStringField;
    tPCIDCustomer: TIntegerField;
    tPCNrPointCardAmount: TIntegerField;
    tPCDtLastTransaction: TDateTimeField;
    tPCNrTpLastTransaction: TWordField;
    tPCNrPointLastTransaction: TIntegerField;
    tPCNmLastTransaction: TWideStringField;
    tPCNmSourceLastTransaction: TWideStringField;
    tPCDtRegister: TDateTimeField;
    tPCNmRegister: TWideStringField;
    tPCDtUpdate: TDateTimeField;
    tPCNmUpdate: TWideStringField;
    tPCfRecordEnabled: TBooleanField;
    tCliCodigo: TStringField;
    tCliCodigoKey: TStringField;
    procedure Button1Click(Sender: TObject);
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
  Code : Integer;
  Res: Real;
begin
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


procedure TForm16.Button1Click(Sender: TObject);
var 
  SL: TStrings;
  I, Min, Cod: Integer;
  S: String;
  Mon : Currency;
  sTempo : String;
  sUsername : String;


begin
  tCli.Open;
  TF.Active := True;
  PB.Max := TF.RecordCount;
  PB.Position := 0;
  tCli.DeleteRecords;
  tPC.Open;
  tCidade.Open;
  tEstado.Open;
  TF.First;
  while not TF.eof do begin
    PB.Position := PB.Position + 1;
    Application.ProcessMessages;
    tCli.Insert;
    tCliID.Value := tFIDCustomer.Value;
    if tPC.Locate('IdCustomer', tFIDCustomer.Value, []) then begin
      tCliCodigo.Value := tPCNmBarCodePointCard.Value;
      tCliFidPontos.Value := tPCNrPointCardAmount.Value;
    end;
    tCliNome.Value := Trim(TFNmFirstName.Value+' '+tFNmSecondName.Value);
    tCliEndereco.Value := TFNmAddress.Value;
    tCliUF.AsVariant := tEstado.Lookup('NrState', tFNrState.Value, 'NmState');
    tCliCidade.AsVariant := tCidade.Lookup('NrCity', tFNrCity.Value, 'NmCity');
    tCliTelefone.Value := tFNmPhone1.Value;
    tCliCelular.Value := tFNmPhone2.Value;
    tCliEmail.Value := tFNmEmail.Value;
    tCliDataNasc.Value := tFDtBirthday.Value;
    tCliSexo.Value := TFNmGender.Value;
    tCliObs.Value := tFDsCustomer.Value;
    tCli.Post;
    TF.Next;
  end;
  tCli.IndexName := 'IID';
  tCli.Last;
  tCli.SetAutoIncValue(tCliID.Value);
end;

end.

// Senha OptiCyber MS Access = k4hvd$$

JetOLEDB:Database Password
