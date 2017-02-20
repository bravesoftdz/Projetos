unit Unit26;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, nxdb,
  nxllTransport, nxptBasePooledTransport, nxtwWinsockTransport, nxllComponent,
  nxsdServerEngine, nxreRemoteServerEngine, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDBaseEdit, LMDCustomEdit,
  LMDEditDBLookup;

type
  TForm26 = class(TForm)
    LMDEditDBLookup1: TLMDEditDBLookup;
    nxRemoteServerEngine1: TnxRemoteServerEngine;
    nxSession1: TnxSession;
    nxWinsockTransport1: TnxWinsockTransport;
    nxTable1: TnxTable;
    nxDatabase1: TnxDatabase;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation

{$R *.dfm}

end.
