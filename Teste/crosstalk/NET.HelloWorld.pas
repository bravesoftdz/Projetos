unit NET.HelloWorld;
// CrossTalk v2.0.20

interface

uses
  NET.mscorlib,
  Atozed.CrossTalk.Middle, Atozed.CrossTalk.BaseObject, Atozed.CrossTalk.Streams, SysUtils, Windows;

type
  Class1 = class;

  {$SCOPEDENUMS ON}

  Class1 = class(TCTBaseObject)
  private
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create; overload; override;
    function Test(
      const aAInput: string): string; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

  end;

implementation

uses
  Atozed.CrossTalk.Right, Atozed.CrossTalk.Exception, Atozed.CrossTalk.Boxes;

{HelloWorld.Class1}

class function Class1.CTFullTypeName: string;
begin
  Result := 'HelloWorld.Class1'
end;


constructor Class1.Create;
begin
  TRight.ObjectCreate(Self, 'HelloWorld.Class1', 0)
end;

function Class1.Test(const aAInput: string): string;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aAInput);
  with TRight.MethodCall(Self, '', 'Test', 1948756573, xParams) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function Class1.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function Class1.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Class1.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Class1.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

initialization
  TRight.CheckVersion('NET.HelloWorld', '2.0.20');
  TMiddle.AddAssembly('C:\projetos\Teste\crosstalk\obj\Debug\HelloWorld.dll');
end.
