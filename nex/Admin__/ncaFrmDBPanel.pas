unit ncaFrmDBPanel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, nxdb, cxTextEdit, cxMemo, LMDCustomScrollBox, LMDScrollBox, LMDSplt,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, cxLabel,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TFrmDBPanel = class(TForm)
    panPri: TLMDSplitterPanel;
    spSql: TLMDSplitterPane;
    spGrid: TLMDSplitterPane;
    meSQL: TcxMemo;
    Q: TnxQuery;
    DS: TDataSource;
    TV: TcxGridDBTableView;
    GL: TcxGridLevel;
    gridSQL: TcxGrid;
    lbRecs: TcxLabel;
    btnExportar: TcxButton;
    dlgExp: TSaveDialog;
    MenuGrid: TcxGridPopupMenu;
    procedure FormResize(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Exec;
  end;

var
  FrmDBPanel: TFrmDBPanel;

implementation

{$R *.dfm}

uses ncaDM, cxGridExportlink, ncaFrmAutoInc;

{ TFrmDBPanel }

procedure TFrmDBPanel.btnExportarClick(Sender: TObject);
const
  Exts: Array[1..3] of String = ('xls', 'htm', 'txt');
begin
  if Pos('.', dlgExp.FileName)>0 then
    dlgExp.FileName := Copy(dlgExp.FileName, 1, Pos('.', dlgExp.FileName)-1);

  if not (dlgExp.FilterIndex in [1..3]) then
    dlgExp.FilterIndex := 1;
  
  if dlgExp.Execute and (dlgExp.FileName <> '') then begin
    if Pos('.', dlgExp.FileName)=0 then
      dlgExp.FileName := dlgExp.FileName + '.' + Exts[dlgExp.FilterIndex];
    case dlgExp.FilterIndex of
      1: ExportGridToExcel(dlgExp.FileName, gridSQL);
      2: ExportGridToHtml(dlgExp.FileName, gridSQL);
      3: ExportGridToText(dlgExp.FileName, gridSQL);
    end;
  end;
end;

procedure TFrmDBPanel.Exec;
var 
  S: String;
  Select: Boolean;
begin
  S := Trim(meSQl.Text);
  Select := (pos('select ', LowerCase(Trim(S)))=1);
  
  Q.Active := False;
  TV.ClearItems;
  Q.SQL.Text := S;
  if Select then begin
    Q.Active := True;
    TV.DataController.CreateAllItems;
    gridSql.Visible := True;
    btnExportar.Visible := True;
    lbRecs.Caption := IntToStr(Q.RecordCount) + ' registros.';
  end else begin
    gridSql.Visible := False;
    btnExportar.Visible := False;
    Q.ExecSQL;
    lbRecs.Caption := IntToStr(Q.RowsAffected) + ' registros processados.';
  end;
end;

procedure TFrmDBPanel.FormResize(Sender: TObject);
begin
  btnExportar.Left := panPri.Width - 118;
end;

end.
