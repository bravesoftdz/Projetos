unit ncaConfigRecibo;

interface

uses SysUtils, Classes, ncClassesBase;

const
  autoprint_nao       = 0;
  autoprint_pagamento = 1;
  autoprint_venda     = 2;

type  
  
  TncConfigRecibo = class ( TStringList )
  private
    procedure LoadFromGConfig;
    function FName: String;
    function ConfigExists: Boolean;
    function GetBobina: Boolean;
    function GetImpressora: String;
    function GetImpSerial: Boolean;
    function GetImpWindows: Boolean;
    function GetLarguraBobina: Integer;
    function GetPortaSerial: Byte;
    function GetSaltoFimRecibo: Integer;
    function GetSomenteTexto: Boolean;
    procedure SetBobina(const Value: Boolean);
    procedure SetImpressora(const Value: String);
    procedure SetLarguraBobina(const Value: Integer);
    procedure SetPortaSerial(const Value: Byte);
    procedure SetSaltoFimRecibo(const Value: Integer);
    procedure SetSomenteTexto(const Value: Boolean);
    function GetCortarPapel: Boolean;
    procedure SetCortarPapel(const Value: Boolean);
    function GetImprimir: Boolean;
    procedure SetImprimir(const Value: Boolean);
    function GetAutoPrint: Byte;
    procedure SetAutoPrint(const Value: Byte);
    function GetDirectPrintFormat: String;
    procedure SetDirectPrintFormat(const Value: String);
    function GetCmdAbreGaveta: String;
    procedure SetCmdAbreGaveta(const Value: String);
  public
    constructor Create;
    
    procedure Load;
    procedure Save;

    function IsSomenteTexto: Boolean;

    function StrAbreGaveta: String;

    function GetIntBobina: Boolean;

    property CmdAbreGaveta: String
      read GetCmdAbreGaveta write SetCmdAbreGaveta;

    property DirectPrintFormat: String
      read GetDirectPrintFormat write SetDirectPrintFormat;

    property Imprimir: Boolean
      read GetImprimir write SetImprimir;

    property AutoPrint: Byte
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

    property Bobina: Boolean
      read GetBobina write SetBobina;

    property SomenteTexto: Boolean
       read GetSomenteTexto write SetSomenteTexto;

    property Impressora: String 
      read GetImpressora write SetImpressora;
  end;

var 
  gRecibo : TncConfigRecibo = nil;
    
implementation

uses uNexTransResourceStrings_PT, ncDebug;

{ TncConfigRecibo }

const BoolChar : Array[boolean] of char = ('0', '1');

function TncConfigRecibo.ConfigExists: Boolean;
begin
  Result := FileExists(FName);
end;

constructor TncConfigRecibo.Create;
begin
  inherited;
end;

function TncConfigRecibo.FName: String;
begin
  Result := ExtractFilePath(ParamStr(0))+'custom\rec.ini';
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

function TncConfigRecibo.GetBobina: Boolean;
begin
  Result := GetIntBobina and gConfig.IsPremium;
end;

function TncConfigRecibo.GetCmdAbreGaveta: String;
begin
  Result := Values['cmd_abregaveta'];
end;

function TncConfigRecibo.GetCortarPapel: Boolean;
begin
  Result := (Values['cortarpapel']='1');
end;

function TncConfigRecibo.GetDirectPrintFormat: String;
begin
  Result := Trim(Values['directprintformat']);
  if (Result='') then Result := 'TEXT';
end;

function TncConfigRecibo.GetImpressora: String;
begin
  Result := Values['impressora'];
end;

function TncConfigRecibo.GetImprimir: Boolean;
begin
  if Values['imprimirrec']>'' then
    Result := (Values['imprimirrec']='1')
  else
    Result := (Values['imprimir']='1') or (Values['imprimir']='2');
end;

function TncConfigRecibo.GetImpSerial: Boolean;
begin
  Result := SameText(Impressora, SncaFrmConfigRec_OutraSerial);
end;

function TncConfigRecibo.GetImpWindows: Boolean;
begin
  Result := (not ImpSerial);
end;

function TncConfigRecibo.GetIntBobina: Boolean;
begin
  Result := (Values['tipopapel']='1');
end;

function TncConfigRecibo.GetLarguraBobina: Integer;
begin
  Result := StrToIntDef(Values['largura'], 40);
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

function TncConfigRecibo.IsSomenteTexto: Boolean;
begin
  Result := SomenteTexto or (Pos('Generic', Impressora)>0);
end;

procedure TncConfigRecibo.Load;
begin
  if ConfigExists then 
    LoadFromFile(FName) else
    LoadFromGConfig;
end;

procedure TncConfigRecibo.LoadFromGConfig;
begin
  Imprimir := (gConfig.RecImprimir>0);
  if gConfig.RecImprimir=2 then
    AutoPrint := 1 else
    AutoPrint := 0;
  Impressora := gConfig.RecTipoImpressora;
  PortaSerial := StrToIntDef(gConfig.RecPorta, 1);
  LarguraBobina := gConfig.RecLargura;
  SaltoFimRecibo := gConfig.RecSalto;
  Bobina := gConfig.RecMatricial;
  SomenteTexto := gConfig.RecPrinterGeneric or ImpSerial;
  CortarPapel := gConfig.RecCortaFolha;
  Save;
end;

procedure TncConfigRecibo.Save;
begin
  try
    if Values['directprintformat']='' then Values['directprintformat'] := 'TEXT';
    
    ForceDirectories(ExtractFilePath(ParamStr(0))+'custom');
    SaveToFile(FName);
  except
    on e: exception do 
      DebugMsg('TncConfigRecibo.Save - Exception: ' + E.Message);
  end;
end;

procedure TncConfigRecibo.SetAutoPrint(const Value: Byte);
begin
  Values['autoprint'] := IntToStr(Value);
end;

procedure TncConfigRecibo.SetBobina(const Value: Boolean);
begin
  Values['tipopapel'] := BoolChar[Value];
end;

procedure TncConfigRecibo.SetCmdAbreGaveta(const Value: String);
begin
  Values['cmd_abregaveta'] := Value;
end;

procedure TncConfigRecibo.SetCortarPapel(const Value: Boolean);
begin
  Values['cortarpapel'] := BoolChar[Value];
end;

procedure TncConfigRecibo.SetDirectPrintFormat(const Value: String);
begin
  Values['directprintformat'] := Value;
end;

procedure TncConfigRecibo.SetImpressora(const Value: String);
begin
  Values['impressora'] := Value;
end;

procedure TncConfigRecibo.SetImprimir(const Value: Boolean);
begin
  Values['imprimirrec'] := BoolChar[Value];
end;

procedure TncConfigRecibo.SetLarguraBobina(const Value: Integer);
begin
  Values['largurabobina'] := IntToStr(Value);
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

function StrToChar(S: String): String;
begin
  S := Trim(S);
  if S>'' then
  if S[1]='#' then begin
    Delete(S, 1, 1);
    Result := Char(StrToIntDef(S, 0));
  end else
    Result := S;
end;

function TncConfigRecibo.StrAbreGaveta: String;
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

initialization
  gRecibo := TncConfigRecibo.Create;

finalization
  gRecibo.Free;  

end.
