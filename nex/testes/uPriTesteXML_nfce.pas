unit uPriTesteXML_nfce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, 
  frxClass, frxBarcode,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMemo, DCPcrypt2, DCPsha1, LbCipher, LbClass;

type
  TForm12 = class(TForm)
    OpenDlg: TOpenDialog;
    LMDSimplePanel1: TLMDSimplePanel;
    Button2: TButton;
    Button1: TButton;
    meXML: TcxMemo;
    Button3: TButton;
    lbSha1: TLbSHA1;
    meQRCode: TcxMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses nexDMxml_nfce;

procedure TForm12.Button1Click(Sender: TObject);
begin
  if OpenDlg.Execute(Handle) then begin
    meXML.Lines.LoadFromFile(OpenDlg.FileName);
    dmXML_nfce.LoadXML(meXML.Lines.Text);
    meQRCode.Lines.Text := dmXML_nfce.mtIDEqrCode.Value;
  end;    
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
  dmXML_nfce.frRep.DesignReport;
end;

function StrToHex(S: AnsiString): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do 
    Result := Result + IntToHex(Byte(S[I]), 2);

  Result := LowerCase(Result);
end;

function FmtFloat(E: Extended): String;
begin
  Str(E:0:2, Result);
end;

procedure TForm12.Button3Click(Sender: TObject);
var 
  I : Integer;
  S : String;
  Digest : TSHA1Digest;
begin
  ShowMessage(FmtFloat(1.1));
//  ShowMessage(StrToHex('2012-09-27T16:20:34-03:00') + sLineBreak + '323031322d30392d32375431363a32303a33342d30333a3030');
  S := 'chNFe=43120910585504000174650010000000541123456781&nVersao=100&tpAmb=1&cDest=43708379006485&dhEmi=323031322d30392d32375431363a32303a33342d30333a3030'+
       '&vNF=1000.00&vICMS=180.00&digVal=37327151612b623074616f514f3966414a7766646c5875715176383d&cIdToken=000001C1774291-A86A-4ADAB247-791207C6CF50';
  lbSha1.HashString(S);
  lbSha1.GetDigest(Digest);
  S := '';
  for I := 0 to 19 do 
    S := S + IntToHex(Digest[I], 2);
  ShowMessage(S);
end;




end.
















