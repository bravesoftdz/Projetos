unit uDB_json;

interface

uses
  Winapi.Windows, Winapi.Messages, db, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, json, Vcl.StdCtrls, DateUtils;

  type  

  TJsonFieldHelper = class helper for TField
  public 
    procedure ToJson(JO: TJsonObject; aJsonName: String);
  end;  

  TJsonFieldsHelper = class helper for TFields
  public
    procedure ToJson(JO: TJsonObject; aFieldMap: TStrings; aExcept: Boolean = False); overload;
    procedure ToJson(JO: TJsonObject); overload;
  end;
  

implementation

uses System.uJson, SqlTimSt, Soap.EncdDecd, ncDebug;

{ TJsonFieldHelper }

procedure TJsonFieldHelper.ToJson(JO: TJsonObject; aJsonName: String);
var 
  MS: TMemoryStream;
  SS: TStringStream;
  ts: TSQLTimeStamp;
  S: String;
begin
    if IsNull then begin
      JO.AddPair(aJsonName, TJSONNull.Create);
      Exit;
    end;

    case DataType of
      TFieldType.ftInteger, 
      TFieldType.ftAutoInc, 
      TFieldType.ftSmallint, 
      TFieldType.ftWord, 
      TFieldType.ftShortint, 
      TFieldType.ftByte,
      TFieldType.ftLongWord:
        JO.AddPair(aJsonName, TJSONNumber.Create(AsInteger));
        
      TFieldType.ftLargeint:
          JO.AddPair(aJsonName, TJSONNumber.Create(AsLargeInt));
          
      TFieldType.ftSingle, TFieldType.ftFloat:
        JO.AddPair(aJsonName, TJSONNumber.Create(AsFloat));
        
      ftWideString, ftMemo, ftWideMemo:
        JO.AddPair(aJsonName, AsWideString);
        
      ftString: begin
        S := AsString;
        JO.AddPair(aJsonName, S);
      end;

      TFieldType.ftBoolean: if AsBoolean then 
        JO.AddPair(aJsonName, TJsonTrue.Create) else
        JO.AddPair(aJsonName, TJsonFalse.Create);
        
      TFieldType.ftDate: JO.AddPair(aJsonName, ISODateToString(AsDateTime));
      
      TFieldType.ftDateTime: JO.AddPair(aJsonName, AsDateTime{ISODateTimeToString(AsDateTime)});
      
      TFieldType.ftTimeStamp: begin
        ts := AsSQLTimeStamp;
        JO.AddPair(aJsonName, SQLTimeStampToStr('yyyy-mm-dd hh:nn:ss', ts));
      end;
      
      TFieldType.ftCurrency: JO.AddPair(aJsonName, TJSONNumber.Create(AsCurrency));
      
      TFieldType.ftGraphic, TFieldType.ftBlob, TFieldType.ftStream: 
      begin
        MS := TMemoryStream.Create;
        try
          TBlobField(Self).SaveToStream(MS);
          MS.Position := 0;
          SS := TStringStream.Create('', TEncoding.ASCII);
          try
            EncodeStream(MS, SS);
            SS.Position := 0;
            JO.AddPair(aJsonName, SS.DataString);
          finally
            SS.Free;
          end;
        finally
          MS.Free;
        end;
      end;  
    end;
end;

{ TJsonFieldsHelper }

procedure TJsonFieldsHelper.ToJson(JO: TJsonObject; aFieldMap: TStrings; aExcept: Boolean = False);
var 
  i: integer;
  F: TField;
begin
  if aExcept then begin
    for I := 0 to Count-1 do 
    if aFieldMap.IndexOf(Fields[i].FieldName)=-1 then 
    try
      Fields[i].ToJson(JO, Fields[i].FieldName);
    except
      on E: Exception do DebugEx(Self, 'ToJson - Field: '+Fields[i].FieldName, E);
    end;
  end else
  for I := 0 to aFieldMap.count-1 do begin
    F := FindField(aFieldMap.Names[I]);
    if F<>nil then
      F.ToJson(JO, aFieldMap.ValueFromIndex[I]);
  end;
end;

procedure TJsonFieldsHelper.ToJson(JO: TJsonObject);
var i: integer;
begin
  for I := 0 to count-1 do with Fields[I] do
    ToJson(JO, FieldName);
end;

end.
