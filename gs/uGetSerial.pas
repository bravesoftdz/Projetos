unit uGetSerial;

interface


uses
  uLicExecryptor,
  Variants,
  SysUtils,
  ActiveX,
  ComObj;

function GetSerial: String;
  
      

implementation

    var
      FSWbemLocator : OLEVariant;
      FWMIService   : OLEVariant;

    function  GetWMIstring(const WMIClass, WMIProperty:string): string;
    const
      wbemFlagForwardOnly = $00000020;
    var
      FWbemObjectSet: OLEVariant;
      FWbemObject   : OLEVariant;
      oEnum         : IEnumvariant;
      iValue        : LongWord;
    begin;
      Result:='';
      FWbemObjectSet:= FWMIService.ExecQuery(Format('Select %s from %s',[WMIProperty, WMIClass]),'WQL',wbemFlagForwardOnly);
      oEnum         := IUnknown(FWbemObjectSet._NewEnum) as IEnumVariant;
      if oEnum.Next(1, FWbemObject, iValue) = 0 then
      if not VarIsNull(FWbemObject.Properties_.Item(WMIProperty).Value) then
        Result:=FWbemObject.Properties_.Item(WMIProperty).Value;
      FWbemObject:=Unassigned;
    end;

function GetSerial: String;
var 
  s: String;
  P : Integer;

procedure Add(ss: String; aRemoveLastChar: Boolean);
var s2: String;
begin
  ss := Trim(ss);
  s2 := ss;
  if aRemoveLastChar then
    Delete(ss, Length(Ss), 1);
  if Result>'' then Result := Result + sLineBreak;
  Result := Result + ss;
  if aRemoveLastChar then
    Result := REsult + sLineBreak + s2;
end;  
  
begin
  FSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  FWMIService   := FSWbemLocator.ConnectServer('localhost', 'root\CIMV2', '', '');
  s:= GetWMIstring('Win32_PhysicalMedia','SerialNumber');
  Result := '';
  while (s>'') do begin
    P := Pos(';', s);
    if P>0 then begin
      Add(Copy(s, 1, P-1), True);
      Delete(s, 1, P);
    end else begin
      Add(s, True);
      s := '';
    end;
  end;
  Add(GetWMIstring('Win32_BIOS','SerialNumber'), False);
end;
    
end.
