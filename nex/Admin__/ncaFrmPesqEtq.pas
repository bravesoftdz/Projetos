unit ncaFrmPesqEtq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, cxDropDownEdit;

type
  TFrmPesqEtq = class(TForm)
    panPri: TLMDSimplePanel;
    TV: TcxGridDBTableView;
    GL: TcxGridLevel;
    Grid: TcxGrid;
    dsEtiqueta: TDataSource;
    TVNome: TcxGridDBColumn;
    TVObs: TcxGridDBColumn;
    panLookup: TLMDSimplePanel;
    btnAdicionar: TcxButton;
    btnOk: TcxButton;
    cxButton1: TcxButton;
    btnEditar: TcxButton;
    btnApagar: TcxButton;
    Open: TOpenDialog;
    PopupMenu1: TPopupMenu;
    miRenomear: TMenuItem;
    N1: TMenuItem;
    miImportar: TMenuItem;
    procedure TVEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
    procedure miImportarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure miRenomearClick(Sender: TObject);
  private 
    FEditor : TcxPopupEdit;

    { Private declarations }
  public
    property Editor: TcxPopupEdit
      read FEditor write FEditor;
    { Public declarations }
  end;

var
  FrmPesqEtq: TFrmPesqEtq;

implementation



uses ncaDM, ncaFrmPri, ncaFrmRenameEtq, ncGuidUtils, ncafbProdutos,
  ncaFrmNovaEtiqueta;

{$R *.dfm}

resourcestring
  rsConfirmaApagar = 'Deseja realmente apagar';

function tempfile: String;
begin
  Result := ExtractFilepath(ParamStr(0))+'temp.frx';
end;


procedure TFrmPesqEtq.btnOkClick(Sender: TObject);
begin
  FEditor.DroppedDown := False;
end;

procedure TFrmPesqEtq.btnApagarClick(Sender: TObject);
begin
  if Dados.tbEtiqueta.isEmpty then Exit;

  with Dados do
  if SimNao(rsConfirmaApagar+' "'+tbEtiquetaNome.Value+'" ?') then 
    tbEtiqueta.Delete;
end;

procedure TFrmPesqEtq.btnEditarClick(Sender: TObject);
begin
  if Dados.tbEtiqueta.isEmpty then Exit;
  with Dados, TfbProdutos(FrmPri.FM.FormByClass(TfbProdutos)^.fiInstance) do begin
    tbEtiquetaReport.SaveToFile(tempFile);
    repEditar.LoadFromFile(tempFile);
    repEditar.FileName := tempFile;
    repEditar.ReportOptions.Description.Text := tbEtiquetaObs.Value;
    repEditar.DesignReport;
    tbEtiqueta.Edit;
    tbEtiquetaReport.LoadFromFile(tempFile);
    tbEtiqueta.Post;
  end;
end;

procedure TFrmPesqEtq.miImportarClick(Sender: TObject);
var 
  S: String;
  aID: TGuid;
begin
  Open.InitialDir := ExtractFileDir(ParamStr(0));
  with Dados, TfbProdutos(FrmPri.FM.FormByClass(TfbProdutos)^.fiInstance) do 
  if Open.Execute(Handle) then begin
    S := ExtractFileName(Open.FileName);
    repEditar.LoadFromFile(S);
    tbEtiqueta.Insert;
    tbEtiquetaNome.Value := Copy(S, 1, Pos('.', S)-1);
    tbEtiquetaReport.LoadFromFile(Open.Filename);
    tbEtiquetaID.AsGuid := TGuidEx.NewGuid;
    tbEtiquetaObs.Value := repEditar.ReportOptions.Description.Text;
    tbEtiqueta.Post;
  end;
end;

procedure TFrmPesqEtq.miRenomearClick(Sender: TObject);
var aNome, aObs: String;
begin
  if Dados.tbEtiqueta.isEmpty then Exit;
  with Dados do begin
    aNome := tbEtiquetaNome.Value;
    aObs := tbEtiquetaObs.Value;
    if TFrmRenomear.Create(Self).Renomear(aNome, aObs) then begin
      tbEtiqueta.Edit;
      tbEtiquetaNome.Value := aNome;
      tbEtiquetaObs.Value := aObs;
      tbEtiqueta.Post;
    end;
  end;
end;

procedure TFrmPesqEtq.TVEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then btnOk.Click;
end;

end.
