unit NET.Nextar.ExportNexus;
// CrossTalk v2.0.20

interface

uses
  NET.mscorlib,
  Atozed.CrossTalk.Middle, Atozed.CrossTalk.BaseObject, Atozed.CrossTalk.Streams, SysUtils, Windows;

type
  CardService = class;
  SummaryService = class;
  CardNXRepository = class;
  SummaryNXRepository = class;

  {$SCOPEDENUMS ON}

  CardService = class(TCTBaseObject)
  private
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const aShopCode: string); reintroduce; overload;
    procedure GenerateCards(
      const aDtStart: DateTime; 
      const aDtEnd: DateTime); overload;
    procedure CheckCards; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

  end;

  SummaryService = class(TCTBaseObject)
  private
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const aShopcode: string); reintroduce; overload;
    procedure UpdateSummaries; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

  end;

  CardNXRepository = class(TCTBaseObject)
  private
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create; overload; override;
    procedure InsertCardsByCashier; overload;
    function SimpleSearchWithInterval(
      const aQuery: string; 
      const aDtStart: DateTime; 
      const aDtEnd: DateTime): Unreferenced; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

  end;

  SummaryNXRepository = class(TCTBaseObject)
  private
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create; overload; override;
    function SimpleSearchWithInterval(
      const aQuery: string; 
      const aDtStart: DateTime; 
      const aDtEnd: DateTime): Unreferenced; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

  end;

implementation

uses
  Atozed.CrossTalk.Right, Atozed.CrossTalk.Exception, Atozed.CrossTalk.Boxes;

{Nextar.ExportNexus.Service.CardService}

class function CardService.CTFullTypeName: string;
begin
  Result := 'Nextar.ExportNexus.Service.CardService'
end;


constructor CardService.Create(const aShopCode: string);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aShopCode);
  TRight.ObjectCreate(Self, 'Nextar.ExportNexus.Service.CardService', 1948756573, xParams)
end;

procedure CardService.GenerateCards(const aDtStart: DateTime;
const aDtEnd: DateTime);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDtStart);
  xParams.Write(aDtEnd);
  with TRight.MethodCall(Self, '', 'GenerateCards', -840403309, xParams) do try
  finally Free; end;
end;

procedure CardService.CheckCards;
begin
  with TRight.MethodCall(Self, '', 'CheckCards', 0) do try
  finally Free; end;
end;

function CardService.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function CardService.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function CardService.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function CardService.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{Nextar.ExportNexus.Service.SummaryService}

class function SummaryService.CTFullTypeName: string;
begin
  Result := 'Nextar.ExportNexus.Service.SummaryService'
end;


constructor SummaryService.Create(const aShopcode: string);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aShopcode);
  TRight.ObjectCreate(Self, 'Nextar.ExportNexus.Service.SummaryService', 1948756573, xParams)
end;

procedure SummaryService.UpdateSummaries;
begin
  with TRight.MethodCall(Self, '', 'UpdateSummaries', 0) do try
  finally Free; end;
end;

function SummaryService.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function SummaryService.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function SummaryService.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SummaryService.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{Nextar.ExportNexus.Repository.CardNXRepository}

class function CardNXRepository.CTFullTypeName: string;
begin
  Result := 'Nextar.ExportNexus.Repository.CardNXRepository'
end;


constructor CardNXRepository.Create;
begin
  TRight.ObjectCreate(Self, 'Nextar.ExportNexus.Repository.CardNXRepository', 0)
end;

procedure CardNXRepository.InsertCardsByCashier;
begin
  with TRight.MethodCall(Self, '', 'InsertCardsByCashier', 0) do try
  finally Free; end;
end;

function CardNXRepository.SimpleSearchWithInterval(const aQuery: string;
const aDtStart: DateTime;
const aDtEnd: DateTime): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aQuery);
  xParams.Write(aDtStart);
  xParams.Write(aDtEnd);
  with TRight.MethodCall(Self, '', 'SimpleSearchWithInterval', 1787334540, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function CardNXRepository.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function CardNXRepository.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function CardNXRepository.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function CardNXRepository.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{Nextar.ExportNexus.Repository.SummaryNXRepository}

class function SummaryNXRepository.CTFullTypeName: string;
begin
  Result := 'Nextar.ExportNexus.Repository.SummaryNXRepository'
end;


constructor SummaryNXRepository.Create;
begin
  TRight.ObjectCreate(Self, 'Nextar.ExportNexus.Repository.SummaryNXRepository', 0)
end;

function SummaryNXRepository.SimpleSearchWithInterval(const aQuery: string;
const aDtStart: DateTime;
const aDtEnd: DateTime): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aQuery);
  xParams.Write(aDtStart);
  xParams.Write(aDtEnd);
  with TRight.MethodCall(Self, '', 'SimpleSearchWithInterval', 1787334540, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function SummaryNXRepository.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function SummaryNXRepository.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function SummaryNXRepository.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SummaryNXRepository.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

initialization
  TRight.CheckVersion('NET.Nextar.ExportNexus', '2.0.20');
  TMiddle.AddAssembly('C:\Users\I\Desktop\Debug\Nextar.ExportNexus.dll');
end.
