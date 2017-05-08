unit unPrincipal;

interface

uses
  Windows, FileCtrl, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DateUtils,
  Variants, nxsdDataDictionary,
  nxllTransport, nxtwWinsockTransport,
  nxsdServerEngine, nxsrSecurityMonitor, nxsrSqlEngineBase, nxsqlEngine,
  nxchCommandHandler, nxllComponent, nxsrServerEngine, nxdb,
  Db, nxsdSimpleMonitor,
  nxllMemoryManager,
  nxsqlProxies, nxsrSystemStorage,
  nxllTypes, SyncObjs,
  nxsdTypes, nxlgEventLog, uObjPool,
  ExtCtrls, nxllPluginBase,
  LMDCustomComponent, LMDStrList, nxptBasePooledTransport, nxtmSharedMemoryTransport, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer,
  cxEdit, cxLabel, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDBaseEdit, LMDCustomEdit, LMDCustomBrowseEdit,
  LMDBrowseEdit, cxProgressBar, Vcl.StdCtrls, cxButtons, nxdbBackupController,
  nxreRemoteServerEngine, Vcl.CheckLst, uCompactar, Vcl.Grids, Vcl.Outline,
  Vcl.Samples.DirOutln, ZipMstr;

type

  TForm1 = class(TForm)
    BtnCompactar: TButton;
    ZipMaster1: TZipMaster;
    procedure BtnCompactarClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnCompactarClick(Sender: TObject);
begin
  ZipMaster1.FSpecArgs.Add('C:\Meus Programas\Nex\Copia\20170420_1451\');
  with TSaveDialog.Create(nil) do
    try
      ZipMaster1.ZipFileName := 'C:\Meus Programas\Nex\Copia\20170420_1451_BKP';
      ZipMaster1.AddOptions := zipMaster1.AddOptions + [addDirNames,addRecurseDirs];
      ZipMaster1.Add;
    finally
      ZipMaster1.FSpecArgs.Clear;
      Free;
    end;
  ShowMessage('Concluido!');
end;

end.
