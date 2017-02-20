unit ncaFrmTaxPesq;
{
    ResourceString: Dario 11/03/13
}

{$I NEX.INC}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmFormBase, dxBar, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxMaskEdit, cxCurrencyEdit, cxTextEdit, cxCalendar, cxMemo, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid,  cxDropDownEdit,
  nxdb, ncClassesBase, 
  dxBarExtItems, LMDControl,
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel,
  LMDLabel, cxGridCustomPopupMenu, cxGridPopupMenu, cxInplaceContainer,
  cxVGrid, cxDBVGrid, cxImageComboBox, cxTimeEdit, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, 
  cxContainer, cxLabel, Buttons, StdCtrls, cxRadioGroup, 
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  cxLookAndFeels, cxLookAndFeelPainters, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, cxNavigator,
  dxPScxPivotGridLnk, uNexTransResourceStrings_PT, cxBarEditItem, cxButtons,
  dxGDIPlusClasses, LMDPNGImage, Menus, ncMyImage, ImgList, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxPCdxBarPopupMenu, DBCtrls, cxPC,
  cxImage, cxDBEdit, dxBarBuiltInMenu, Vcl.ExtDlgs, cxProgressBar, cxSpinEdit;

type
  TFrmTaxPesq = class(TForm)
    Tab: TnxTable;
    DS: TDataSource;
    cxLocalStyle: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    panBusca: TLMDSimplePanel;
    Label1: TLabel;
    btnOk: TcxButton;
    lbExcluir: TcxLabel;
    lbEditar: TcxLabel;
    lbNovo: TcxLabel;
    LMDSimplePanel1: TLMDSimplePanel;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVCodigo: TcxGridDBColumn;
    TVNome: TcxGridDBColumn;
    TVFor: TcxGridDBTableView;
    TVForNome: TcxGridDBColumn;
    GL: TcxGridLevel;
    panPadrao: TLMDSimplePanel;
    lbPadrao: TcxLabel;
    Tabtax_id: TUnsignedAutoIncField;
    Tabnome: TWideStringField;
    Tabincluido: TBooleanField;
    Tabperc: TFloatField;
    Tabgrupo: TBooleanField;
    TVperc: TcxGridDBColumn;
    TVgrupo: TcxGridDBColumn;
    cxsSemiBold: TcxStyle;
    cxsBold: TcxStyle;
    cxsNormal: TcxStyle;
    TVincluido: TcxGridDBColumn;
    procedure TVDblClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure TVKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TVCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVCodigoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure lbNovoClick(Sender: TObject);
    procedure lbEditarClick(Sender: TObject);
    procedure lbExcluirClick(Sender: TObject);
    procedure lbPadraoClick(Sender: TObject);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TVpercGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure FormShow(Sender: TObject);
    procedure TVNomeGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVNomeStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);

  private
    { Private declarations }
    procedure UpdatePadrao;
  public
    procedure FiltraDados; 

    function Pesquisar(var aCodigo: Cardinal): Boolean;

  end;

  TFrmTaxPesqList = class
  private
    FList : TList;
  public
    constructor Create;
    destructor Destroy; override;

    function GetFrm: TFrmTaxPesq;
    procedure ReleaseFrm(aFrm: TFrmTaxPesq);  
  end;
  

var
  FrmTaxPesq: TFrmTaxPesq;
  gTaxPesqList : TFrmTaxPesqList;

implementation

uses 
  ncaDM, 
  ufmImagens, 
  ncaFrmPri, 
  ncIDRecursos, 
  ncaFrmTax, 
  uProxCampo, ncaStrings;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

procedure TFrmTaxPesq.FiltraDados;
begin
  if not Tab.Active then Tab.Active := True;
end;

procedure TFrmTaxPesq.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Enter : btnOk.Click;
    Key_Esc   : ModalResult:=mrCancel;
  end;
end;

procedure TFrmTaxPesq.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then Key := #0;
end;

procedure TFrmTaxPesq.FormShow(Sender: TObject);
begin
  UpdatePadrao;
end;

procedure TFrmTaxPesq.lbEditarClick(Sender: TObject);
begin
  TFrmTax.Create(Self).Editar(False, Tab);
end;

procedure TFrmTaxPesq.lbExcluirClick(Sender: TObject);
begin
  if not Tab.IsEmpty then begin
    if SimNaoH(rsConfirmaExclusaoTrib + ' '+TabNome.AsString+'?', Handle, True) then
      Tab.Delete;
    UpdatePadrao;
  end;
end;

procedure TFrmTaxPesq.lbNovoClick(Sender: TObject);
begin
  TFrmTax.Create(Self).Editar(True, Tab);
end;

procedure TFrmTaxPesq.lbPadraoClick(Sender: TObject);
begin
  if Tab.IsEmpty then Exit;
  with Dados do begin
    if not CM.UA.Admin then exception.Create(rsSomenteAdmin);
    if not SimNao(Format(rsConfirmaTribPadrao, [TabNome.AsString])) then Exit;

    gConfig.AtualizaCache;
    gConfig.tax_id_def := TabTax_ID.Value;
    CM.SalvaAlteracoesObj(gConfig, False);
    UpdatePadrao;
    TV.DataController.DataSource := nil;
    try
      Application.ProcessMessages;
    finally
      TV.DataController.DataSource := DS;
    end;
  end;  
end;

function TFrmTaxPesq.Pesquisar(var aCodigo: Cardinal): Boolean;
begin
  if (aCodigo>0) then Tab.FindKey([aCodigo]);
  ShowModal;
  if ModalResult=mrOk then begin
    if (not Tab.IsEmpty) then 
      aCodigo := TabTax_ID.Value;
    Result := True;
  end else
    Result := False;
end;

procedure TFrmTaxPesq.btnCancelClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFrmTaxPesq.btnOkClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFrmTaxPesq.TVCodigoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  ACanvas.Font.Style := [fsBold];
end;

procedure TFrmTaxPesq.TVCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    ACanvas.Brush.Color := clHighlight;
    ACanvas.Font.Color := clHighlightText;
  end;
end;

procedure TFrmTaxPesq.TVCustomDrawColumnHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
begin
  ACanvas.FillRect(AViewInfo.Bounds, clWhite);
  ACanvas.FrameRect(AViewInfo.Bounds, TV.OptionsView.GridLineColor, 1, [bBottom]);

  case AViewInfo.AlignmentHorz of
    taLeftJustify : ACanvas.DrawTexT(AViewInfo.Text, AViewInfo.TextAreaBounds, cxAlignLeft or cxAlignVCenter);
    taRightJustify : ACanvas.DrawTexT(AViewInfo.Text, AViewInfo.TextAreaBounds, cxAlignRight or cxAlignVCenter);
    taCenter : ACanvas.DrawTexT(AViewInfo.Text, AViewInfo.TextAreaBounds, cxAlignHCenter or cxAlignVCenter);
  end;

  ADone := True;
end;

procedure TFrmTaxPesq.TVDblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFrmTaxPesq.TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  UpdatePadrao;
end;

procedure TFrmTaxPesq.TVKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_Return : ModalResult := mrOk;
    VK_Escape : ModalResult := mrCancel;
  end;
end;

procedure TFrmTaxPesq.TVNomeGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  V := ARecord.Values[TVgrupo.Index];
  if (not VarIsNull(V)) and (V=true) then
    AText := AText + ' (' + rsGrupo + ')';

  with Dados do
  if tbConfigtax_id_def.Value = ARecord.Values[TVCodigo.Index] then
    AText := AText + ' - ' + rsPadrao;
end;

procedure TFrmTaxPesq.TVNomeStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
 with Dados do
  if tbConfigtax_id_def.Value = ARecord.Values[TVCodigo.Index] then
    AStyle := cxsBold else
    AStyle := cxsNormal;
end;

procedure TFrmTaxPesq.TVpercGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  V := ARecord.Values[TVgrupo.Index];
  if (not VarIsNull(V)) and (V=true) then
    AText := ''
  else begin
    AText := AText + '%';
    V := ARecord.Values[TVincluido.Index];
    if VarIsNull(V) or (V=false) then
      AText := '+' + AText;
  end;
end;

procedure TFrmTaxPesq.UpdatePadrao;
begin
  with Dados do 
    panPadrao.Visible := (TabTax_ID.Value<>tbConfigtax_id_def.Value) and (not Tab.IsEmpty);
end;

{ TFrmTaxPesqList }

constructor TFrmTaxPesqList.Create;
begin
  FList := TList.Create;
end;

destructor TFrmTaxPesqList.Destroy;
begin
  while FList.Count>0 do begin
    TObject(FList[0]).Free;
    FList.Delete(0);
  end;
  FList.Free;

  inherited;
end;

function TFrmTaxPesqList.GetFrm: TFrmTaxPesq;
begin
  if FList.Count>0 then begin
    Result := FList[0];
    Result.Tab.Refresh;
    FList.Delete(0);
  end else
    Result := TFrmTaxPesq.Create(nil);
end;

procedure TFrmTaxPesqList.ReleaseFrm(aFrm: TFrmTaxPesq);
begin
  FList.Add(aFrm);
end;

initialization
  gTaxPesqList := TFrmTaxPesqList.Create;

finalization
  gTaxPesqList.Free;  

end.

