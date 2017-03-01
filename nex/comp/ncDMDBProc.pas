unit ncDMDBProc;

interface

uses
  SysUtils, Classes, nxdb, nxllComponent, DB, Variants;

type
  TdmDBProc = class(TDataModule)
    nxDB: TnxDatabase;
    nxSession: TnxSession;
    tCli: TnxTable;
    tCliID: TUnsignedAutoIncField;
    tCliCodigo: TStringField;
    tCliCodigoKey: TStringField;
    tCliNome: TWideStringField;
    tCliEndereco: TWideStringField;
    tCliEndereco2: TWideStringField;
    tCliEnd_Numero: TWideStringField;
    tCliEnd_CodMun: TWideStringField;
    tCliEnd_Dest: TWideStringField;
    tCliEnd_Obs: TWideStringField;
    tCliendereco_id: TGuidField;
    tCliPais: TWideStringField;
    tCliBairro: TWideStringField;
    tCliCidade: TWideStringField;
    tCliUF: TWideStringField;
    tCliCEP: TWideStringField;
    tCliNaoContribICMS: TBooleanField;
    tCliIsentoIE: TBooleanField;
    tCliNFE_CredIcms: TBooleanField;
    tCliSexo: TStringField;
    tCliObs: TWideMemoField;
    tCliCpf: TWideStringField;
    tCliRg: TWideStringField;
    tCliTelefone: TWideStringField;
    tCliEmail: TWideMemoField;
    tCliPassaportes: TFloatField;
    tCliPai: TWideStringField;
    tCliMae: TWideStringField;
    tCliUltVisita: TDateTimeField;
    tCliDebito: TCurrencyField;
    tCliDataNasc: TDateTimeField;
    tCliCelular: TWideStringField;
    tCliTemDebito: TBooleanField;
    tCliLimiteDebito: TCurrencyField;
    tCliFoto: TGraphicField;
    tCliIncluidoEm: TDateTimeField;
    tCliAlteradoEm: TDateTimeField;
    tCliIncluidoPor: TStringField;
    tCliAlteradoPor: TStringField;
    tCliFidPontos: TFloatField;
    tCliFidTotal: TFloatField;
    tCliFidResg: TFloatField;
    tCliAniversario: TStringField;
    tCliSemFidelidade: TBooleanField;
    tCliTemCredito: TBooleanField;
    tCliInfoExtra: TWideStringField;
    tCliTranspEntPadrao: TLongWordField;
    tCliUID: TGuidField;
    tCliTranspEnt: TBooleanField;
    tCliTipoFor: TByteField;
    tCliPJuridica: TBooleanField;
    tCliConsumidor: TBooleanField;
    tCliInativo: TBooleanField;
    tCliFornecedor: TBooleanField;
    tCliValorCred: TCurrencyField;
    tCliRecVer: TLongWordField;
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