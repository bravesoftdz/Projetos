unit ncaFrmAjustaTamCod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ExtCtrls, cxLabel,
  cxProgressBar, Data.DB, nxdb;

type
  TFrmAjustaTamCod = class(TForm)
    tPro: TnxTable;
    tProID: TUnsignedAutoIncField;
    tProCodigo: TWideStringField;
    tProCodigo2: TWideStringField;
    PB: TcxProgressBar;
    tProCodigoNum: TLongWordField;
    tProCodigo2Num: TLongWordField;
    cxLabel1: TcxLabel;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAjustaTamCod: TFrmAjustaTamCod;

implementation

{$R *.dfm}

uses ncaDM, ncClassesBase;

procedure TFrmAjustaTamCod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmAjustaTamCod.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TFrmAjustaTamCod.Timer1Timer(Sender: TObject);
var 
  S: String;
  C : Cardinal;
begin
  C := 0;
  Timer1.Enabled := False;
  tPro.First;
  PB.Properties.Max := tPro.RecordCount;
  try
    while not tPro.Eof do begin
      PB.Position := PB.Position + 1;
      PB.Repaint;
      if tProCodigoNum.Value>0 then begin
        tPro.Edit;
        tProCodigo.Value := ZeroC(tProCodigoNum.Value, gConfig.TamCodigoAuto);
        tPro.Post;
      end;
      tPro.Next;
      Inc(C);
      if (C mod 100) = 0 then Application.ProcessMessages;
    end;
  finally
    Close;
  end;
end;

end.
