unit uDocServerUpdater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, 
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxProgressBar, Vcl.StdCtrls, cxButtons,
  nxsdServerEngine, nxreRemoteServerEngine, nxllTransport,
  nxptBasePooledTransport, nxtwWinsockTransport, nxdb, nxllComponent, cxLabel;

type
  TFrmPri = class(TForm)
    btnUpdate: TcxButton;
    PB: TcxProgressBar;
    TV: TcxGridDBTableView;
    GL: TcxGridLevel;
    Grid: TcxGrid;
    btnConfirmar: TcxButton;
    nxRemSession: TnxSession;
    nxLocalDB: TnxDatabase;
    nxLocalSession: TnxSession;
    tL: TnxTable;
    tR: TnxTable;
    nxTCP: TnxWinsockTransport;
    nxRSE: TnxRemoteServerEngine;
    nxRemDB: TnxDatabase;
    DS: TDataSource;
    nxRSELocal: TnxRemoteServerEngine;
    nxTCPLocal: TnxWinsockTransport;
    TVNome: TcxGridDBColumn;
    lbCount: TcxLabel;
    lbUltimo: TcxLabel;
    procedure btnUpdateClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    procedure Upload;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPri: TFrmPri;

implementation

{$R *.dfm}

procedure TransfDadosEsp(TF, TD: TDataset; ExceptFields: String);
var 
  I : Integer;
  F : TField;
begin
  ExceptFields := UpperCase(ExceptFields);
  with TD do
  for I := 0 to pred(Fields.Count) do with Fields[I] do 
  if (FieldKind=fkData) and (Pos('|'+UpperCase(FieldName)+'|', ExceptFields)=0) then begin
    F := TF.FindField(FieldName);
    if (F <> nil) and (F.FieldKind=fkData) then 
    if (TD.State<>dsInsert) or (F.DataType<>ftAutoInc) then
      Value := F.Value;
  end;
end;


procedure TFrmPri.btnConfirmarClick(Sender: TObject);
begin
  try
    Upload;
  finally
    btnConfirmar.Enabled := False;
    Grid.Visible := False;
    lbCount.Visible := False;
    PB.Visible := False;
  end;
end;

procedure TFrmPri.btnUpdateClick(Sender: TObject);
var T: Cardinal;
begin
  tL.Active := True;
  tR.Active := True;
  tR.IndexName := 'IRecVer';
  tR.Last;
  tL.IndexName := 'IRecVer';
  tL.SetRange([tR.FieldByName('RecVer').AsLongWord+1], [High(Cardinal)]);

  lbUltimo.Caption := 'Ultimo ID Server: ' + tR.FieldByname('RecVer').AsString;
  T := TL.RecordCount;

  if T<1 then begin
    ShowMessage('Não há alterações não sincronizadas ');
    Exit;
  end;
  PB.Properties.Max := T;
  PB.Visible := True;
  Grid.Visible := True;
  lbCount.Caption := IntToStr(T);
  lbCount.Visible := True;
  btnConfirmar.Enabled := True;
end;

procedure TFrmPri.Upload;
begin
  tL.First;
  PB.Position := 0;
  while not tL.Eof do begin
    if tR.Locate('UID', tL.FieldByName('UID').AsString, []) then
      tR.Edit else
      tR.Insert;
      
    TransfDadosEsp(tL, tR, '|ID|');

    tR.Post;

    PB.Position := PB.Position + 1;
      
    tL.Next;

    Application.ProcessMessages;
  end;
  ShowMessage('Upload concluído com sucesso!');
end;

end.
