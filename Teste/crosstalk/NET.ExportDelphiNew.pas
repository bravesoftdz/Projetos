unit NET.ExportDelphiNew;
// CrossTalk v2.0.20

interface

uses
  NET.mscorlib,
  Atozed.CrossTalk.Middle, Atozed.CrossTalk.BaseObject, Atozed.CrossTalk.Streams, SysUtils, Windows;

type
  Matematica = class;

  {$SCOPEDENUMS ON}

  Matematica = class(TCTBaseObject)
  private
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create; overload; override;
    function Soma(
      const aA: Int32; 
      const aB: Int32): Int32; overload;
    function Multiplica(
      const aA: Int32; 
      const aB: Int32): Int32; overload;
    function Divide(
      const aA: Int32; 
      const aB: Int32): Int32; overload;
    function Subtrai(
      const aA: Int32; 
      const aB: Int32): Int32; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

  end;

implementation

uses
  Atozed.CrossTalk.Right, Atozed.CrossTalk.Exception, Atozed.CrossTalk.Boxes;

{ExportDelphiNew.Matematica}

class function Matematica.CTFullTypeName: string;
begin
  Result := 'ExportDelphiNew.Matematica'
end;


constructor Matematica.Create;
begin
  TRight.ObjectCreate(Self, 'ExportDelphiNew.Matematica', 0)
end;

function Matematica.Soma(const aA: Int32;
const aB: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aA);
  xParams.Write(aB);
  with TRight.MethodCall(Self, '', 'Soma', 268563088, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Matematica.Multiplica(const aA: Int32;
const aB: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aA);
  xParams.Write(aB);
  with TRight.MethodCall(Self, '', 'Multiplica', 268563088, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Matematica.Divide(const aA: Int32;
const aB: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aA);
  xParams.Write(aB);
  with TRight.MethodCall(Self, '', 'Divide', 268563088, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Matematica.Subtrai(const aA: Int32;
const aB: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aA);
  xParams.Write(aB);
  with TRight.MethodCall(Self, '', 'Subtrai', 268563088, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Matematica.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function Matematica.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Matematica.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Matematica.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

initialization
  TRight.CheckVersion('NET.ExportDelphiNew', '2.0.20');
  TMiddle.AddAssembly('C:\projetos\Teste\crosstalk\ExportDelphiNew\obj\Debug\ExportDelphiNew.dll');
end.
