unit ncaConfigRecibo;

interface

uses SysUtils, Classes, ncClassesBase, Printers;

const
  autoprint_nao       = 0;
  autoprint_pagamento = 1;
  autoprint_venda     = 2;

type  
  
  TncConfigRecibo = class ( TStringList )
  private
    procedure LoadFromGConfig;
    function FName: String;
    function TemOpcoes: Boolean;
    function RecIniExists: Boolean;
    function GetBobina(aTipo: Byte): Boolean;
    function GetImpressora(aTipo: Byte): String;
    function GetImpSerial: Boolean;
    function GetImpWindows: Boolean;
    function GetLarguraBobina: Integer;
    function GetPortaSerial: Byte;
    function GetSaltoFimRecibo: Integer;
    function GetSomenteTexto: Boolean;
    procedure SetImpressora(aTipo: Byte; const Value: String);
    procedure SetLarguraBobina(const Value: Integer);
    procedure SetPortaSerial(const Value: Byte);
    procedure SetSaltoFimRecibo(const Value: Integer);
    procedure SetSomenteTexto(const Value: Boolean);
    function GetCortarPapel: Boolean;
    procedure SetCortarPapel(const Value: Boolean);
    function GetDirectPrintFormat: String;
    procedure SetDirectPrintFormat(const Value: String);
    function GetCmdAbreGaveta: String;
    procedure SetCmdAbreGaveta(const Value: String);
    function GetAbrirGaveta: Byte;
    function GetMostrarGaveta: Boolean;
    procedure SetAbrirGaveta(const Value: Byte);
    procedure SetMostrarGaveta(const Value: Boolean);
    function GetIntModelo(aTipo: Byte): String;
    function GetModelo(aTipo: Byte): String;
    procedure SetModelo(aTipo: Byte; const Value: String);
    procedure SetBobina(aTipo: Byte; const Value: Boolean);
    function GetCopias(aTipo: Byte): Byte;
    procedure SetCopias(aTipo: Byte; const Value: Byte);
    function GetDemDebBob: Boolean;
    procedure SetDemDebBob(const Value: Boolean);
    function GetModeloEmailOrc: String;
    procedure SetModeloEmailOrc(const Value: String);
    function GetAutoPrint: Byte;
    procedure SetAutoPrint(const Value: Byte);
    function GetImpAuto(aTipo: Byte): Boolean;
    procedure SetImpAuto(aTipo: Byte; const Value: Boolean);

    function oldImprimir: Boolean;
    function GetImprimir(aTipo: Byte): Boolean;
    procedure SetImprimir(aTipo: Byte; const Value: Boolean);
  public
    constructor Create;

    procedure ImportarModelos;
    
    procedure Load;
    procedure Save;

    function UsarSerial: Boolean;

    function IsSomenteTexto: Boolean;

    function StrAbreGaveta: AnsiString;

    function DocOk(aTipo: Byte): Boolean;

    function DocEmailOrcOk: Boolean;

    function ImpressoraOk(aTipo: Byte): Boolean;

    function GetIntBobina(aTipo: Byte): Boolean;

    property DemDebBob: Boolean
      read GetDemDebBob write SetDemDebBob;

    property Copias[aTipo: Byte]: Byte
      read GetCopias write SetCopias;

    property Modelo[aTipo: Byte]: String
      read GetModelo write SetModelo;

    property ModeloEmailOrc: String
      read GetModeloEmailOrc write SetModeloEmailOrc;  

    property CmdAbreGaveta: String
      read GetCmdAbreGaveta write SetCmdAbreGaveta;

    property MostrarGaveta: Boolean
      read GetMostrarGaveta write SetMostrarGaveta;

    property AbrirGaveta: Byte
      read GetAbrirGaveta write SetAbrirGaveta;    

    property DirectPrintFormat: String
      read GetDirectPrintFormat write SetDirectPrintFormat;

    property Imprimir[aTipo: Byte]: Boolean
      read GetImprimir write SetImprimir;

    property ImpAuto[aTipo: Byte]: Boolean
      read GetImpAuto write SetImpAuto;

    property oldAutoPrint: Byte
      read GetAutoPrint write SetAutoPrint;

    property ImpWindows: Boolean 
      read GetImpWindows;

    property ImpSerial: Boolean
      read GetImpSerial;

    property CortarPapel: Boolean
      read GetCortarPapel write SetCortarPapel;

    property PortaSerial: Byte
      read GetPortaSerial write SetPortaSerial;

    property LarguraBobina: Integer
      read GetLarguraBobina write SetLarguraBobina;

    property SaltoFimRecibo: Integer
      read GetSaltoFimRecibo write SetSaltoFimRecibo;  

    property Bobina[aTipo: Byte]: Boolean
      read GetBobina write SetBobina;

    property SomenteTexto: Boolean
       read GetSomenteTexto write SetSomenteTexto;

    property Impressora[aTipo: Byte]: String 
      read GetImpressora write SetImpressora;
  end;

  function ModeloPadrao(aTipo: Byte; aBobina, aSomenteTexto: Boolean): String;

var 
  gRecibo : TncConfigRecibo = nil;

implementation

uses uNexTransResourceStrings_PT, ncDebug, ncaDM, ncaDMComp, ncaDMOrc;

{ TncConfigRecibo }

function PropTipoStr(aProp: String; aTipo: Byte): String;
begin
  Result := aProp;
  if aTipo<>tipodoc_venda then
{  case aTipo of
    tipodoc_venda : ;
    tipodoc_pgdebito : if not aVendasDebUnico then
      Result := Result+IntToStr(aTipo);
  else    }
    Result := Result+IntToStr(aTipo);
//  end;  
end;

function ModeloPadrao(aTipo: Byte; aBobina, aSomenteTexto: Boolean): String;
begin
  case aTipo of
    tipodoc_venda :
      if not aBobina then 
        Result := '{1BB75B13-B043-4376-9271-49C982340D9E}'
      else
      if aSomenteTexto then
        Result := '{2AB1E0A2-7DE4-4AAB-8DF3-38F5B5B9D6BC}'
      else
        Result := '{E0635987-6641-4FD7-AD4B-962BB4DB665C}';
        
    tipodoc_orcamento : 
      Result := '{46FC1498-D24F-4BC0-88E2-3F8FA0FAC13A}';
      
    tipodoc_pgdebito : 
      if not aBobina then
        Result := '{5546BCAC-31DF-4FB4-859C-E4CFE54FABE0}'
      else
      if aSomenteTexto then
        Result := '{79B60B54-29E9-4822-851F-ADA0882E5582}' 
      else
        Result := '{4456B67E-A47E-4D6A-BE13-90925C4A5ACE}';
  else
    Result := '';
  end;
end;

const BoolChar : Array[boolean] of char = ('0', '1');

function TncConfigRecibo.RecIniExists: Boolean;
begin
  Result := FileExists(FName);
end;

constructor TncConfigRecibo.Create;
begin
  inherited;
end;

function TncConfigRecibo.DocEmailOrcOk: Boolean;
begin
  Result := Dados.FindDoc(ModeloEmailOrc);
end;

function TncConfigRecibo.DocOk(aTipo: Byte): Boolean;
begin
  DebugMsg('TncConfigRecibo.DocOk(aTipo: '+IntToStr(aTipo)+')');
  Result := Dados.FindDoc(Modelo[aTipo]);
end;

function TncConfigRecibo.FName: String;
begin
  Result := ExtractFilePath(ParamStr(0))+'custom\rec.ini';
end;

function TncConfigRecibo.GetAbrirGaveta: Byte;
begin
  Result := StrToIntDef(Values['abrirgaveta'], 0);
end;

function TncConfigRecibo.GetAutoPrint: Byte;
begin
  if Values['autoprint']>'' then
    Result := StrToIntDef(Values['autoprint'], autoprint_nao)
  else
  if Values['imprimir']='2' then
    Result := autoprint_pagamento
  else
    Result := autoprint_nao;
end;

function TncConfigRecibo.GetBobina(aTipo: Byte): Boolean;
begin
  Result := GetIntBobina(aTipo) and gConfig.IsPremium;
end;

function TncConfigRecibo.GetCmdAbreGaveta: String;
begin
  if IndexOfName('cmd_abregaveta')<0 then begin
    Values['cmd_abregaveta'] := '#27,#118,#140';
    Save;
  end;
  Result := Values['cmd_abregaveta'];
end;

function TncConfigRecibo.GetCopias(aTipo: Byte): Byte;
begin
  Result := StrToIntDef(Values[PropTipoStr('copias', aTipo)], 1);
end;

function TncConfigRecibo.GetCortarPapel: Boolean;
begin
  Result := (Values['cortarpapel']='1');
end;

function TncConfigRecibo.GetDemDebBob: Boolean;
begin
  Result := (Values['demdebbob']='1');
end;

function TncConfigRecibo.GetDirectPrintFormat: String;
begin
  Result := Trim(Values['directprintformat']);
  if (Result='') then Result := 'TEXT';
end;

function TncConfigRecibo.GetImpAuto(aTipo: Byte): Boolean;
var S: String;

function _Value: String;
begin
  Result := Values[PropTipoStr('imp_auto', aTipo)];
end;

begin
  S := _Value;
  
  if (S='') and (aTipo=tipodoc_pgdebito) then begin
    aTipo := tipodoc_venda;
    S := _Value;
  end;

  if (S='') and (aTipo=tipodoc_venda) then
    Result := (oldAutoPrint>0) else
    Result := StrToBool(S);
end;

function TncConfigRecibo.GetImpressora(aTipo: Byte): String;
var S: String;

function _Value: String;
begin
  Result := Values[PropTipoStr('impressora', aTipo)];
end;

begin
  S := _Value;
  
  if (S='') and (aTipo=tipodoc_pgdebito) then
    aTipo := tipodoc_venda;
    
  Result := _Value;
end;

function TncConfigRecibo.GetImprimir(aTipo: Byte): Boolean;
var S: String;

function _Value: String;
begin
  Result := Values[PropTipoStr('imprimir_rec', aTipo)];
end;

begin
  S := _Value;

  if (S='') and (aTipo in [tipodoc_venda, tipodoc_pgdebito]) then
    Result := oldImprimir else
    Result := StrToBool(S);
end;

function TncConfigRecibo.oldImprimir: Boolean;
begin
  if Values['imprimirrec']>'' then
    Result := (Values['imprimirrec']='1')
  else
    Result := (Values['imprimir']='1') or (Values['imprimir']='2');
end;


function TncConfigRecibo.GetImpSerial: Boolean;
begin
  Result := SameText(Impressora[tipodoc_venda], SncaFrmConfigRec_OutraSerial);
end;

function TncConfigRecibo.GetImpWindows: Boolean;
begin
  Result := (not ImpSerial);
end;

function TncConfigRecibo.GetIntBobina(aTipo: Byte): Boolean;
begin
  Result := (Values[PropTipoStr('tipopapel', aTipo)]='1');
end;

function TncConfigRecibo.GetIntModelo(aTipo: Byte): String;
begin
  Result := Values[PropTipoStr('modelo', aTipo)];
end;

function TncConfigRecibo.GetLarguraBobina: Integer;
begin
  Result := StrToIntDef(Values['largura'], 40);
end;

function TncConfigRecibo.GetModelo(aTipo: Byte): String;
var aPadrao: String;
begin
  DebugMsg('TncConfigRecibo.GetModelo(aTipo: '+IntToStr(aTipo)+')');
  Result := GetIntModelo(aTipo);
  if (not gConfig.IsPremium) and (Result>'') then begin
    aPadrao := ModeloPadrao(aTipo, False, False);
    if aPadrao>'' then 
      Result := aPadrao;
  end;
  DebugMsg('TncConfigRecibo.GetModelo - Res: '+Result);
end;

function TncConfigRecibo.GetModeloEmailOrc: String;
begin
  Result := Values['modelo_email_orc'];
end;

function TncConfigRecibo.GetMostrarGaveta: Boolean;
begin
  Result := (Values['mostrargaveta']='1');
end;

function TncConfigRecibo.GetPortaSerial: Byte;
begin
  Result := StrToIntDef(Values['porta'], 1);
end;

function TncConfigRecibo.GetSaltoFimRecibo: Integer;
begin
  Result := StrToIntDef(Values['salto'], 0);
end;

function TncConfigRecibo.GetSomenteTexto: Boolean;
begin
  Result := (Values['somentetexto']='1');
end;

procedure TncConfigRecibo.ImportarModelos;
begin
  if Values['importoumodelos']='' then begin
    CriaDMComp;
    CriaDMOrc;
    dmComp.ImportarModelos;
    dmOrc.ImportarModelos;
    Dados.ImportarModelosEtq;
    Values['importoumodelos'] := '1';
    Save;
  end;
end;

function TncConfigRecibo.ImpressoraOk(aTipo: Byte): Boolean;
begin
  Result := (Impressora[aTipo]>'') and (Printer.Printers.IndexOf(Impressora[aTipo])>=0);
end;

function TncConfigRecibo.IsSomenteTexto: Boolean;
begin
  Result := SomenteTexto or (Pos('Generic', Impressora[tipodoc_venda])>0);
end;

procedure TncConfigRecibo.Load;
begin
  if not TemOpcoes then begin
    if RecIniExists then 
      LoadFromFile(FName) else
      LoadFromGConfig;
    Save;  
  end else 
    Text := Dados.tbTermOpcoes.Value;
end;

procedure TncConfigRecibo.LoadFromGConfig;
begin
  Imprimir[tipodoc_venda] := (gConfig.RecImprimir>0);
  ImpAuto[tipodoc_venda] := (gConfig.RecImprimir=2);
  Impressora[tipodoc_venda] := gConfig.RecTipoImpressora;
  PortaSerial := StrToIntDef(gConfig.RecPorta, 1);
  LarguraBobina := gConfig.RecLargura;
  SaltoFimRecibo := gConfig.RecSalto;
  Bobina[tipodoc_venda] := gConfig.RecMatricial;
  SomenteTexto := gConfig.RecPrinterGeneric or ImpSerial;
  CortarPapel := gConfig.RecCortaFolha;
  Save;
end;

procedure TncConfigRecibo.Save;
begin
  try
    if Values['directprintformat']='' then Values['directprintformat'] := 'TEXT';
    
//    ForceDirectories(ExtractFilePath(ParamStr(0))+'custom');
//    SaveToFile(FName);
    Dados.tbTerm.Edit;
    Dados.tbTermOpcoes.Value := Text;
    Dados.tbTerm.Post;
  except
    on e: exception do 
      DebugMsg('TncConfigRecibo.Save - Exception: ' + E.Message);
  end;
end;

procedure TncConfigRecibo.SetAbrirGaveta(const Value: Byte);
begin
  Values['abrirgaveta'] := IntToStr(Value);
end;

procedure TncConfigRecibo.SetAutoPrint(const Value: Byte);
begin
  Values['autoprint'] := IntToStr(Value);
end;

procedure TncConfigRecibo.SetBobina(aTipo: Byte; const Value: Boolean);
begin
  Values[PropTipoStr('tipopapel', aTipo)] := BoolChar[Value];
end;

procedure TncConfigRecibo.SetCmdAbreGaveta(const Value: String);
begin
  Values['cmd_abregaveta'] := Value;
end;

procedure TncConfigRecibo.SetCopias(aTipo: Byte; const Value: Byte);
begin
  Values[PropTipoStr('copias', aTipo)] := IntToStr(Value);
end;

procedure TncConfigRecibo.SetCortarPapel(const Value: Boolean);
begin
  Values['cortarpapel'] := BoolChar[Value];
end;

procedure TncConfigRecibo.SetDemDebBob(const Value: Boolean);
begin
  Values['demdebbob'] := BoolChar[Value];
end;

procedure TncConfigRecibo.SetDirectPrintFormat(const Value: String);
begin
  Values['directprintformat'] := Value;
end;

procedure TncConfigRecibo.SetImpAuto(aTipo: Byte; const Value: Boolean);
begin
  Values[PropTipoStr('imp_auto', aTipo)] := BoolChar[Value];
end;

procedure TncConfigRecibo.SetImpressora(aTipo: Byte; const Value: String);
begin
  Values[PropTipoStr('impressora', aTipo)] := Value;
end;

procedure TncConfigRecibo.SetImprimir(aTipo: Byte; const Value: Boolean);
begin
  Values[PropTipoStr('imprimir_rec', aTipo)] := BoolChar[Value];
end;

procedure TncConfigRecibo.SetLarguraBobina(const Value: Integer);
begin
  Values['largurabobina'] := IntToStr(Value);
end;

procedure TncConfigRecibo.SetModelo(aTipo: Byte; const Value: String);
begin
  Values[PropTipoStr('modelo', aTipo)] := Value;
end;

procedure TncConfigRecibo.SetModeloEmailOrc(const Value: String);
begin
  Values['modelo_email_orc'] := Value;
end;

procedure TncConfigRecibo.SetMostrarGaveta(const Value: Boolean);
begin
  Values['mostrargaveta'] := BoolChar[Value];
end;

procedure TncConfigRecibo.SetPortaSerial(const Value: Byte);
begin
  Values['porta'] := IntToStr(Value);
end;

procedure TncConfigRecibo.SetSaltoFimRecibo(const Value: Integer);
begin
  Values['saltofimrecibo'] := IntToStr(Value);
end;

procedure TncConfigRecibo.SetSomenteTexto(const Value: Boolean);
begin
  Values['somentetexto'] := BoolChar[Value];
end;

function StrToChar(S: String): AnsiString;
begin
  S := Trim(S);
  if S>'' then
  if S[1]='#' then begin
    Delete(S, 1, 1);
    Result := AnsiChar(StrToIntDef(S, 0));
  end else
    Result := S;
end;

function TncConfigRecibo.StrAbreGaveta: AnsiString;
var 
  S: String;

procedure AddCmd;
var P, I: Integer;
begin
  P := Pos(',', S);
  if P>0 then begin
    Result := Result + StrToChar(Copy(S, 1, P-1));
    System.Delete(S, 1, P);
  end else begin
    Result := Result + StrToChar(S);
    S := '';
  end;
end;  

begin
  S := CmdAbreGaveta;
  Result := '';
  while S>'' do AddCmd;
end;

function TncConfigRecibo.TemOpcoes: Boolean;
begin
  Result := (Dados.tbTermOpcoes.Value>'');
end;

function TncConfigRecibo.UsarSerial: Boolean;
begin
  Result := IsSomenteTexto or ImpSerial;
end;

initialization
  gRecibo := TncConfigRecibo.Create;

finalization
  gRecibo.Free;  

end.

