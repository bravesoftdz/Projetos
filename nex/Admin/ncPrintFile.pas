unit ncPrintFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, 
  Dialogs, StdCtrls, DateUtils, ExtCtrls, ComCtrls, Mask,   Printers, Winspool,
  FileCtrl, ncDebug;

  procedure PrintFile(const sPrinter, sFileName: string; aDataType: String = 'TEXT');

implementation

{procedure PrintFile(const sPrinter, sFileName: string);
var
  I: Integer;
  P: TextFile;
  SL: TStrings;
begin
  Printer.PrinterIndex := Printer.Printers.IndexOf(sPrinter);
  AssignPrn(P);
  Rewrite(P);
  Printer.Canvas.Font.Name := 'Courier New';
  SL := TStringList.Create;
  try
    SL.LoadFromFile(sFileName);
    for I := 0 to sl.Count - 1 do
      Writeln(P, sl[I]);
  finally
    CloseFile(P);
  end;
end;}


procedure PrintFile(const sPrinter, sFileName: string; aDataType: String = 'TEXT');
const
  iBufferSize = 32768;
var
  Count, BytesWritten: Cardinal;
  hPrinter, hDeviceMode: THandle;
  sDevice : array[0..255] of char;
  sDriver : array[0..255] of char;
  sPort   : array[0..255] of char;
  DocInfo: TDocInfo1;
  f: File;
  pBuffer: Pointer;
begin
  DebugMsg('PrintFile - sPrinter: ' + sPrinter + ' - sFileName: ' + sFileName + ' - aDataType: ' + aDataType);
  Printer.PrinterIndex := Printer.Printers.IndexOf(sPrinter);
  Printer.GetPrinter(sDevice, sDriver, sPort, hDeviceMode);

  if not WinSpool.OpenPrinter(@sDevice, hPrinter, nil) then begin
    DebugMsg('PrintFile - Falhou OpenPrinter: '+IntToStr(GetLastError));
     exit;
  end;   

  DocInfo.pDocName := PChar(sFileName);
  DocInfo.pDatatype := PChar(aDataType);
  DocInfo.pOutputFile := nil;
  
  if StartDocPrinter(hPrinter, 1, @DocInfo) = 0 then
  begin
    DebugMsg('PrintFile - Falhou StartDocPrinter: '+IntToStr(GetLastError));
    if SameText(aDataType, 'TEXT') then
      aDataType := 'RAW' else
      aDataType := 'TEXT';
    DocInfo.pDatatype := PChar(aDataType);
    if StartDocPrinter(hPrinter, 1, @DocInfo) = 0 then begin
      DebugMsg('PrintFile - Falhou StartDocPrinter: '+IntToStr(GetLastError));
      WinSpool.ClosePrinter(hPrinter);
      exit;
    end else
      DebugMsg('PrintFile - StartDocPrinter OK !');
  end;

  if not StartPagePrinter(hPrinter) then
  begin
    DebugMsg('PrintFile - Falhou StartPagePrinter: '+IntToStr(GetLastError));
    EndDocPrinter(hPrinter);
    WinSpool.ClosePrinter(hPrinter);
    exit;
  end;

  System.Assign(f, sFileName);
  try
    Reset(f, 1);
    GetMem(pBuffer, iBufferSize);
    while not eof(f) do
    begin
      Blockread(f, pBuffer^, iBufferSize, Count);
      if Count>0 then
      begin
        if not WritePrinter(hPrinter, pBuffer, Count, BytesWritten) then
        begin
          DebugMsg('PrintFile - Falhou WritePrinter: '+IntToStr(GetLastError));
          EndPagePrinter(hPrinter);
          EndDocPrinter(hPrinter);
          WinSpool.ClosePrinter(hPrinter);
          FreeMem(pBuffer, iBufferSize);
          exit;
        end;
      end;
    end;
    FreeMem(pBuffer, iBufferSize);
    EndDocPrinter(hPrinter);
    WinSpool.ClosePrinter(hPrinter);
  finally
    System.Closefile(f);
  end;
end;



end.
