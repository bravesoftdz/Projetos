unit ncDMDBProc;

interface

uses
  SysUtils, Classes, nxdb, nxllComponent, DB, Variants;

type
  TdmDBProc = class(TDataModule)
    nxDB: TnxDatabase;
    nxSession: TnxSession;
    tCli: TnxTable;
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
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Open;
    procedure AjustaPontos(vOldCliente, vNewCliente, vFatorOld, vFatorNew, vPontosOld, vPontosNew: Variant);
    { Public declarations }
  end;

var
  dmDBProc: TdmDBProc;

implementation

uses ncServBD;

{$R *.dfm}

procedure TdmDBProc.AjustaPontos(vOldCliente, vNewCliente, vFatorOld, vFatorNew, vPontosOld,
  vPontosNew: Variant);
var
  aFatorOld, aFatorNew : Integer;
  aPontosOld, aPontosNew : Double;
begin
  Exit;
  
  if (vOldCliente=vNewCliente) and (vFatorOld=vFatorNew) and (vPontosOld=vPontosNew) then Exit;

  if vFatorOld=Null then
    aFatorOld := 0 else
    aFatorOld := vFatorOld;
    
  if aFatorNew=Null then 
    aFatorNew := 0 else
    aFatorNew := vFatorNew;
    
  if aPontosOld=Null then 
    aPontosOld := 0 else
    aPontosOld := vPontosOld;
    
  if aPontosNew=Null then 
    aPontosNew := 0 else
    aPontosNew := vPontosNew;

  Open;  

  if (vOldCliente<>null) and (vOldCliente>0) and tCli.FindKey([vOldCliente]) then begin
    tCli.Edit;
    tCliFidPontos.Value := tCliFidPontos.Value + (-1 * aFatorOld * aPontosOld);

    if aFatorOld=1 then
      tCliFidTotal.Value := tCliFidTotal.Value - aPontosOld 
    else
    if aFatorOld=-1 then
      tCliFidResg.Value := tCliFidResg.Value - aPontosOld;
    tCli.Post;   
  end;

  if (vNewCliente<>null) and (vNewCliente<>0) and tCli.FindKey([vNewCliente]) then begin
    tCli.Edit;
    tCliFidPontos.Value := tCliFidPontos.Value + (aFatorNew * aPontosNew);

    if aFatorNew=1 then
      tCliFidTotal.Value := tCliFidTotal.Value + aPontosNew
    else
    if aFatorNew=-1 then
      tCliFidResg.Value := tCliFidResg.Value + aPontosNew;

    tCli.Post;
  end;
end;

procedure TdmDBProc.DataModuleCreate(Sender: TObject);
begin
  nxSession.ServerEngine := dmServidorBD.ServerEngine;
  nxDB.AliasPath := '';
  nxDB.AliasName := 'nexcafe';
end;

procedure TdmDBProc.Open;
begin
  if nxSession.ServerEngine<>dmServidorBD.ServerEngine then 
    nxSession.ServerEngine := dmServidorBD.ServerEngine;

  nxDB.Active := True;
  tCli.Active := True;
end;

end.


uses ncClassesBase;