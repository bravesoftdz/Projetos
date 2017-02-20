unit ncaFrmMVAPauta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  kbmMemTable, cxContainer, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxCurrencyEdit;

type
  TFrmMVAPauta = class(TForm)
    LMDSimplePanel2: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    MT: TkbmMemTable;
    DS: TDataSource;
    MTuf: TStringField;
    MTMVA: TFloatField;
    MTPauta: TCurrencyField;
    TV: TcxGridDBTableView;
    GL: TcxGridLevel;
    Grid: TcxGrid;
    TVUF: TcxGridDBColumn;
    TVMVA: TcxGridDBColumn;
    TVPauta: TcxGridDBColumn;
    edModo: TcxImageComboBox;
    lbPrompt: TcxLabel;
    cxLabel2: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edModoPropertiesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    slMVA : TStrings;
    slPauta : TStrings;

    procedure Load;
    procedure Save;
    procedure Update;
    
    function getMva(estado: string): Double;
    function getPauta(estado: string): Currency;
    procedure setMva(estado: string; const Value: Double);
    procedure setPauta(estado: string; const Value: Currency);
    { Private declarations }
    property mva[estado: string]: Double read getMva write setMva;
    property pauta[estado: string]: Currency read getPauta write setPauta;
  public
    { Public declarations }
    function Editar(var aMVA, aPauta: String; var aModo: Variant): Boolean;
  end;

var
  FrmMVAPauta: TFrmMVAPauta;

implementation

{$R *.dfm}

uses ncClassesBase, ncaFrmPri, ncaDM;

procedure TFrmMVAPauta.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmMVAPauta.btnSalvarClick(Sender: TObject);
begin
  if VarIsNull(edModo.EditValue) then begin
    edModo.SetFocus;
    raise Exception.Create('É necessário selecionar a base de cálculo do ICMS ST');
  end;

  Save;
  ModalResult := mrOk;
end;

function TFrmMVAPauta.Editar(var aMVA, aPauta: String; var aModo: Variant): Boolean;
begin
  slMVA.Text := aMVA;
  slPauta.Text := aPauta;
  edModo.EditValue := aModo;
  Load;
  ShowModal;
  if ModalResult=mrOk then begin
    Result := True;
    aMVA := slMVA.Text;
    aPauta := slPauta.Text;
    aModo := edModo.EditValue;
  end;
end;

procedure TFrmMVAPauta.edModoPropertiesCloseUp(Sender: TObject);
begin
  Update;
  Grid.SetFocus;
end;

procedure TFrmMVAPauta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmMVAPauta.FormCreate(Sender: TObject);
begin
  slPauta := TStringList.Create;
  slMVA := TStringList.Create;
end;

procedure TFrmMVAPauta.FormDestroy(Sender: TObject);
begin
  slMVA.Free;
  slPauta.Free;
end;

procedure TFrmMVAPauta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_F2    : if btnSalvar.Enabled then btnSalvar.Click;
    Key_Esc   : Close;
  end;
end;

procedure TFrmMVAPauta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [#27] then Key := #0;
end;

procedure TFrmMVAPauta.FormShow(Sender: TObject);
begin
  Update;
  if VarIsNull(edModo.EditValue) then edModo.SetFocus;
end;

function TFrmMVAPauta.getMva(estado: string): Double;
begin
  Result := StrParaFloat(slMVA.Values[estado]);
end;

function TFrmMVAPauta.getPauta(estado: string): Currency;
begin
  Result := StrParaFloat(slPauta.Values[estado]);
end;

procedure TFrmMVAPauta.Load;
var b: byte;
begin
  for b := 0 to High(uf_br) do begin
    if MT.FindKey([uf_br[b]]) then
      MT.Edit else
      MT.Append;
    MTuf.Value := uf_br[b];
    MTmva.Value := mva[MTuf.Value];
    MTpauta.Value := pauta[MTuf.Value];
    MT.Post;
  end;
  MT.First;
end;

procedure TFrmMVAPauta.Save;
begin
  MT.first;
  while not MT.Eof do begin
    mva[mtuf.value] := mtmva.Value;
    pauta[mtuf.value] := mtpauta.Value;
    MT.Next;
  end;
end;

procedure TFrmMVAPauta.setMva(estado: string; const Value: Double);
begin
  slMVA.Values[estado] := FloatParaStr(Value);
end;

procedure TFrmMVAPauta.setPauta(estado: string; const Value: Currency);
begin
  slPauta.Values[estado] := FloatParaStr(Value);
end;

procedure TFrmMVAPauta.Update;
begin
  TVPauta.Visible := (not VarIsNull(edModo.EditValue)) and (edModo.EditValue=5);
  TVMVA.Visible := not TVPauta.Visible;
end;

end.


