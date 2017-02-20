unit uTesteGaveta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, LMDThemedComboBox, WinSpool,
  LMDCustomComboBox, LMDPrinterComboBox, Printers;

type
  TForm7 = class(TForm)
    edImp: TLMDPrinterComboBox;
    Label1: TLabel;
    Button1: TButton;
    edCmd: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    function StrAbreGaveta: AnsiString;
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure PrintAnsiString(const sPrinter: string; const sStr: AnsiString; aDataType: String = 'TEXT');
const
  iBufferSize = 32768;
var
  Count, BytesWritten: Cardinal;
  hPrinter, hDeviceMode: THandle;
  sDevice : array[0..255] of char;
  sDriver : array[0..255] of char;
  sPort   : array[0..255] of char;
  pBuf    : PByteArray;
  I       : Integer;
  DocInfo: TDocInfo1;
  f: File;
  pBuffer: Pointer;
begin
  Printer.PrinterIndex := Printer.Printers.IndexOf(sPrinter);
  Printer.GetPrinter(sDevice, sDriver, sPort, hDeviceMode);

  if not WinSpool.OpenPrinter(@sDevice, hPrinter, nil) then begin
     exit;
  end;   

  DocInfo.pDocName := PChar('NEX');
  DocInfo.pDatatype := PChar(aDataType);
  DocInfo.pOutputFile := nil;
  
  if StartDocPrinter(hPrinter, 1, @DocInfo) = 0 then
  begin
    if SameText(aDataType, 'TEXT') then
      aDataType := 'RAW' else
      aDataType := 'TEXT';
    DocInfo.pDatatype := PChar(aDataType);
    if StartDocPrinter(hPrinter, 1, @DocInfo) = 0 then begin
      WinSpool.ClosePrinter(hPrinter);
      exit;
    end else
  end;

  if not StartPagePrinter(hPrinter) then
  begin
    EndDocPrinter(hPrinter);
    WinSpool.ClosePrinter(hPrinter);
    exit;
  end;
  GetMem(pBuf, Length(sStr));
  for I := 1 to Length(sStr) do 
    pBuf^[I-1] := Byte(sStr[I]);

  if not WritePrinter(hPrinter, pBuf, Length(sStr), BytesWritten) then
  begin
    EndPagePrinter(hPrinter);
    EndDocPrinter(hPrinter);
    WinSpool.ClosePrinter(hPrinter);
    FreeMem(pBuffer, iBufferSize);
    exit;
  end;
  FreeMem(pBuf, Length(sStr));
  EndDocPrinter(hPrinter);
  WinSpool.ClosePrinter(hPrinter);
end;


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
  Printer.PrinterIndex := Printer.Printers.IndexOf(sPrinter);
  Printer.GetPrinter(sDevice, sDriver, sPort, hDeviceMode);

  if not WinSpool.OpenPrinter(@sDevice, hPrinter, nil) then begin
     exit;
  end;   

  DocInfo.pDocName := PChar(sFileName);
  DocInfo.pDatatype := PChar(aDataType);
  DocInfo.pOutputFile := nil;
  
  if StartDocPrinter(hPrinter, 1, @DocInfo) = 0 then
  begin
    if SameText(aDataType, 'TEXT') then
      aDataType := 'RAW' else
      aDataType := 'TEXT';
    DocInfo.pDatatype := PChar(aDataType);
    if StartDocPrinter(hPrinter, 1, @DocInfo) = 0 then begin
      WinSpool.ClosePrinter(hPrinter);
      exit;
    end else
  end;

  if not StartPagePrinter(hPrinter) then
  begin
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

procedure TForm7.Button1Click(Sender: TObject);
var S: AnsiString;
begin
  S := StrAbreGaveta;
  PrintAnsiString(S, 'abregaveta.prn', 'RAW');
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  edimp.ItemIndex := 0;
  ShowMessage(edImp.Items.Text);
end;

function TForm7.StrAbreGaveta: AnsiString;
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
  S := edCmd.Text;
  Result := '';
  while S>'' do AddCmd;
end;

end.
