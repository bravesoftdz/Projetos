unit ncaFrmNCMEx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxTextEdit,
  cxContainer, nxdb, cxClasses, cxLabel, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TFrmNCMEx = class(TForm)
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVEx: TcxGridDBColumn;
    TVFor: TcxGridDBTableView;
    TVForNome: TcxGridDBColumn;
    GL: TcxGridLevel;
    panBusca: TLMDSimplePanel;
    lbNCM: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    DS: TDataSource;
    Tab: TnxTable;
    TabNCM: TStringField;
    TabDescricao: TStringField;
    TabID: TUnsignedAutoIncField;
    TabEx: TStringField;
    TabImpostoFed_Imp: TFloatField;
    TabImpostoFed_Nac: TFloatField;
    TabImpostoEst: TFloatField;
    TabImpostoMun: TFloatField;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    btnOk: TcxButton;
    procedure TVExGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TVDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    function ObtemEx(aNCM: String; var aEx: String): Boolean;
    { Public declarations }
  end;

var
  FrmNCMEx: TFrmNCMEx;

implementation

{$R *.dfm}

uses ncaFrmPri;

procedure TFrmNCMEx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmNCMEx.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Enter : ModalResult := mrOk;
    Key_Esc   : ModalResult := mrCancel;
  end;
end;

procedure TFrmNCMEx.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [#13, #27] then Key := #0;
end;

function TFrmNCMEx.ObtemEx(aNCM: String; var aEx: String): Boolean;
begin
  Tab.SetRange([aNCM], [aNCM]);
  if Tab.RecordCount<2 then begin
    Result := True;
    aEx := '';
    Exit;
  end;
  
  Tab.FindKey([aNCM, aEx]);
  DS.DataSet := Tab;
  ShowModal;
  Result := (ModalResult=mrOk);
  if Result then aEx := TabEx.Value;
end;

procedure TFrmNCMEx.TVDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFrmNCMEx.TVExGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  if AText = '' then  
    AText := 'Tributação normal' else
    AText := 'Exceção ' + AText;
end;

end.
