unit ncGuidUtils;

interface

uses SysUtils;

type
  TGuidEx = class
    //Creates and returns a new globally unique identifier
    class function NewGuid : TGuid;
    class function New: TGuid;
    //sometimes we need to have an "empty" value, like NULL
    class function EmptyGuid : TGuid;
    class function Empty: TGuid;
    //Checks whether a Guid is EmptyGuid
    class function IsEmptyGuid(Guid : TGuid) : boolean;
    class function IsEmpty(Guid : TGuid) : boolean;
    class function NewGuidStr: String;
    
    //Convert to string
    class function ToString(Guid : TGuid) : string;
    //convert to quoted string
    class function ToQuotedString(Guid : TGuid) : string;
    //return a GUID from string
    class function FromString(Value : string) : TGuid;
    //Indicates whether two TGUID values are the same
    class function EqualGuids(Guid1, Guid2 : TGuid) : boolean;
  end;

implementation

{ TGuidEx }

var
  vEmptyGuid : TGUID;

class function TGuidEx.Empty: TGuid;
begin
  Result := vEmptyGuid;
end;

class function TGuidEx.EmptyGuid: TGuid;
begin
  result := vEmptyGuid;
end;

class function TGuidEx.EqualGuids(Guid1, Guid2: TGuid): boolean;
begin
  result := IsEqualGUID(Guid1, Guid2);
end;

class function TGuidEx.FromString(Value: string): TGuid;
begin
  result := StringToGuid(Value);
end;

class function TGuidEx.IsEmpty(Guid: TGuid): boolean;
begin
  Result := IsEmptyGuid(Guid);
end;

class function TGuidEx.IsEmptyGuid(Guid : TGuid): boolean;
begin
  result := EqualGuids(Guid,EmptyGuid);
end;

class function TGuidEx.New: TGuid;
begin
  Result := NewGuid;
end;

class function TGuidEx.NewGuid: TGuid;
begin
  CreateGUID(Result);
end;

class function TGuidEx.NewGuidStr: String;
begin
  Result := GuidToString(TGuidEx.NewGuid);
end;

class function TGuidEx.ToQuotedString(Guid: TGuid): string;
begin
  result := QuotedStr(ToString(Guid));
end;

class function TGuidEx.ToString(Guid: TGuid): string;
begin
  result := GuidToString(Guid);
end;

initialization
  vEmptyGuid := TGuidEx.FromString('{00000000-0000-0000-0000-000000000000}');


end.//GuidEx

