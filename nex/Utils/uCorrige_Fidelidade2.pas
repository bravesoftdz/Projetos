unit uCorrige_Fidelidade2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, nxdb, Vcl.StdCtrls,
  nxllComponent, nxsdServerEngine, nxsrServerEngine, Vcl.ComCtrls;

type
  TForm21 = class(TForm)
    Button1: TButton;
    tTran: TnxTable;
    nxServerEng: TnxServerEngine;
    nxSession: TnxSession;
    nxDB: TnxDatabase;
    tTran2: TnxTable;
    tITran: TnxTable;
    tITran2: TnxTable;
    ProgressBar1: TProgressBar;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure GetIDTran;
    procedure GetIDTran2;
  public
    { Public declarations }
  end;

var
  Form21: TForm21;
  IDTran, IDTran2: Cardinal;
  qTran: Cardinal;

implementation

{$R *.dfm}

procedure TForm21.Button1Click(Sender: TObject);
begin
  nxDB.Active := True;

  Button1.Enabled := False;

  
  tTran.Active := True;
  tTran2.TableName := 'Tran2';
  tTran2.Active := True;
  
  tITran.Active := True;
  tITran2.TableName := 'ITran2';
  tITran2.Active := True;

  getIDTran;
  getIDTran2;
  if IDTran2<=IDTran then IDTran2 := IDTran+1;
  

  if IDTran>0 then begin
    tTran2.SetRange([1], [IDTran]);
    tTran.CopyRecords(tTran2, True);

    tITran2.SetRange([1], [IDTran]);
    tITran.CopyRecords(tITran2, True);
  end;

  if IDTran2>0 then begin
    tTran2.SetRange([IDTran2], [High(Cardinal)]);
    tTran.CopyRecords(tTran2, True);

    tITran2.SetRange([IDTran2], [High(Cardinal)]);
    tITran.CopyRecords(tITran2, True);
  end;  

  ShowMessage('Correção Concluída');
end;

procedure TForm21.FormCreate(Sender: TObject);
begin
  nxDB.AliasPath := 'c:\nex\dados';
end;

procedure TForm21.GetIDTran;
begin
  IDTran := 0;
  qTran := 0;
  tTran2.First;
  while not tTran2.Eof do begin
    if tTran2.FieldByName('FidResgate').AsBoolean then begin
      Inc(qTran);
      if qTran=50 then Exit;
    end else begin
      IDTran := tTran2.FieldByName('ID').AsLongWord;
      qTran := 0;
    end;
    tTran2.Next;
  end;
end;

procedure TForm21.GetIDTran2;
begin
  IDTran2 := 0;
  qTran := 0;
  tTran2.Last;
  if tTran2.FieldByName('FidResgate').AsBoolean then Exit;
  
  while not tTran2.Bof do begin
    if tTran2.FieldByName('FidResgate').AsBoolean then Exit;
    IDTran2 := tTran2.FieldByName('ID').AsLongWord;
    tTran2.Prior;
  end;
end;

end.
