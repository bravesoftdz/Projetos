unit uCorrigirCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, nxdb, Vcl.StdCtrls, nxsdServerEngine,
  nxreRemoteServerEngine, nxllComponent, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, Data.DB;

type
  TForm16 = class(TForm)
    nxTCP: TnxWinsockTransport;
    nxDB: TnxDatabase;
    nxSession: TnxSession;
    nxRSE: TnxRemoteServerEngine;
    Button1: TButton;
    Q: TnxQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

procedure TForm16.Button1Click(Sender: TObject);
begin
  Q.SQL.Text := 'Update PagEspecies set troco = 0 where troco > 100000';
  Q.ExecSQL;
  ShowMessage('pronto');
end;

end.
