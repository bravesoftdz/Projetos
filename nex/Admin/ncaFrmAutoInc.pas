unit ncaFrmAutoInc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, Vcl.Menus, cxSpinEdit, cxLabel, Vcl.StdCtrls, cxButtons,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, Data.DB, nxdb;

type
  TFrmAutoInc = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    edTab: TcxComboBox;
    btnOk: TcxButton;
    cxLabel1: TcxLabel;
    pan: TLMDSimplePanel;
    cxLabel2: TcxLabel;
    LMDSimplePanel2: TLMDSimplePanel;
    edID: TcxSpinEdit;
    btnSalvar: TcxButton;
    Tab: TnxTable;
    procedure edTabPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    FLastAutoInc: Cardinal;
    { Public declarations }
  end;

var
  FrmAutoInc: TFrmAutoInc;

implementation

{$R *.dfm}

uses ncaDM;

procedure TFrmAutoInc.btnOkClick(Sender: TObject);
begin
  try
    Tab.Active := False;
    Tab.TableName := edTab.Text;
    Tab.Active := True;
    Tab.GetAutoIncValue(FLastAutoInc);
    edID.Value := Succ(FLastAutoInc);
    pan.Visible := True;
    edID.SetFocus;
  except
    ShowMessage('Essa tabela não possui ID automático');
  end;
end;

procedure TFrmAutoInc.btnSalvarClick(Sender: TObject);
begin
  FLastAutoInc := edID.Value - 1;
  Tab.SetAutoIncValue(FLastAutoInc);
  pan.Visible := False;
end;

procedure TFrmAutoInc.edTabPropertiesChange(Sender: TObject);
begin
  pan.Visible := False;
end;

procedure TFrmAutoInc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmAutoInc.FormCreate(Sender: TObject);
var sl: TStrings;
begin
  FlastAutoInc := 0;
  sl := TStringList.Create;
  try
    Dados.DB.GetTableNames(sl);
    edTab.Properties.Items.Text := sl.Text;
    edTab.ItemIndex := 0;
  finally
    sl.Free;
  end;
end;

end.
