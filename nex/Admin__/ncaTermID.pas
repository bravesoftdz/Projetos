unit ncaTermID;

interface

uses
  SysUtils, Classes, ncGuidUtils, Windows, ncDebug, ShlObj;

procedure GetTermID;

procedure RenewTermID;

var
  gTermID: String;

implementation

function GetSpecialFolderPath(Folder: Integer; CanCreate: Boolean): string;

// Gets path of special system folders
//
// Call this routine as follows:
// GetSpecialFolderPath (CSIDL_PERSONAL, false)
//        returns folder as result
//
var
   FilePath: array [0..1024] of widechar;
begin
 SHGetSpecialFolderPath(0, @FilePath[0], FOLDER, CanCreate);
 Result := FilePath;
end;

function NomeArq: String;
begin
  Result := GetSpecialFolderPath(CSIDL_COMMON_APPDATA, True) + '\nex.ini';
end;

function LeIni: String;
var sl : TStrings;
begin
  Result := '';
  if not FileExists(NomeArq) then Exit;
  sl := TStringList.Create;
  try
    sl.LoadFromFile(NomeArq);
    Result := sl.Values['TermID'];
  finally
    sl.Free;
  end;
end;

procedure SaveIni;
var sl : TStrings;
begin
  sl := TStringList.Create;
  try
    sl.Values['TermID'] := gTermID;
    sl.SaveToFile(NomeArq);
  finally
    sl.Free;
  end;
end;

procedure GetTermID;
begin
  gTermID := '';
  try 
    gTermID := LeIni;
    if gTermID = '' then
      RenewTermID;  
  except
    on E: Exception do 
      DebugMsgEsp('GetTermID - Exception: '+E.Message, False, True);
  end;  
end;

procedure RenewTermID;
begin
  gTermID := TGuidEx.ToString(TGuidEx.New);
  try 
    SaveIni;
  except
    on E: Exception do 
      DebugMsgEsp('RenewTermID - Exception: '+E.Message, False, True);
  end;  
end;

initialization
  gTermID := ''; 
  if SameText('novoterminal', paramstr(1)) then 
    RenewTermID else
    GetTermID;

end.
