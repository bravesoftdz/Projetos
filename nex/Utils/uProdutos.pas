unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  nxllTransport, nxptBasePooledTransport, nxtwWinsockTransport, nxdb,
  nxllComponent, nxsdServerEngine, nxreRemoteServerEngine, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel;

type
  TForm15 = class(TForm)
    nxRSE: TnxRemoteServerEngine;
    nxSession: TnxSession;
    nxDB: TnxDatabase;
    T: TnxTable;
    nxTCP: TnxWinsockTransport;
    DS: TDataSource;
    DBGrid1: TDBGrid;
    Q: TnxQuery;
    LMDSimplePanel1: TLMDSimplePanel;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

procedure TForm15.cxButton1Click(Sender: TObject);
begin
  Q.SQL.Text := 'update produto set podealterarpreco = true';
  Q.ExecSQl;
end;

procedure TForm15.FormCreate(Sender: TObject);
var C: Cardinal;
begin
 T.GetAutoIncValue(C); 
 Caption := IntToStr(C);
end;

end.
