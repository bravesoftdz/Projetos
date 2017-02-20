unit ncaFrmBRTribPesq;
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
  TFrmBRTribPesq = class(TForm)
    Tab: TnxTable;
    DS: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    panBusca: TLMDSimplePanel;
    Label1: TLabel;
    btnOk: TcxButton;
    TabID: TWordField;
    TabNome: TStringField;
    TabOrigem: TByteField;
    TabCST: TWordField;
    TabCSOSN: TWordField;
    TabICMS: TFloatField;
    TabPadrao: TBooleanField;
    TabCFOP_nfce: TWordField;
    lbExcluir: TcxLabel;
    lbEditar: TcxLabel;
    lbNovo: TcxLabel;
    LMDSimplePanel1: TLMDSimplePanel;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVCodigo: TcxGridDBColumn;
    TVDescricao: TcxGridDBColumn;
    TVPadrao: TcxGridDBColumn;
    TVFor: TcxGridDBTableView;
    TVForNome: TcxGridDBColumn;
    GL: TcxGridLevel;
    panPadrao: TLMDSimplePanel;
    lbPadrao: TcxLabel;
    TabNFE_CredIcms: TBooleanField;
    TabICMSSt: TnxMemoField;
    lbRemoverPadrao: TcxLabel;
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
    procedure TVPadraoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure lbPadraoClick(Sender: TObject);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure lbRemoverPadraoClick(Sender: TObject);

  private
    { Private declarations }
    procedure UpdatePadrao;
  public
    procedure FiltraDados; 

    function Pesquisar(var aCodigo: Word): Boolean;

  end;

  TFrmBRTribPesqList = class
  private
    FList : TList;
  public
    constructor Create;
    destructor Destroy; override;

    function GetFrm: TFrmBRTribPesq;
    procedure ReleaseFrm(aFrm: TFrmBRTribPesq);  
  end;
  

var
  FrmBRTribPesq: TFrmBRTribPesq;
  gBRTribPesqList : TFrmBRTribPesqList;

implementation

uses 
  ncaDM, 
  ufmImagens, 
  ncaFrmPri, 
  ncIDRecursos, 
  ncaFrmBRTrib, 
  uProxCampo, ncaFrmBRTrib_nfe;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

procedure TFrmBRTribPesq.FiltraDados;
begin
  if not Tab.Active then Tab.Active := True;
end;

procedure TFrmBRTribPesq.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Enter : btnOk.Click;
    Key_Esc   : ModalResult:=mrCancel;
  end;
end;

procedure TFrmBRTribPesq.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then Key := #0;
end;

procedure TFrmBRTribPesq.lbEditarClick(Sender: TObject);
begin
  TFrmBRTrib_nfe.Create(Self).Editar(False, Tab);
end;

procedure TFrmBRTribPesq.lbExcluirClick(Sender: TObject);
begin
  if not Tab.IsEmpty then
    if SimNaoH('Deseja realmente apagar a tributação '+TabID.AsString+'?', Handle, True) then
      Tab.Delete;
end;

procedure TFrmBRTribPesq.lbNovoClick(Sender: TObject);
begin
  TFrmBRTrib_nfe.Create(Self).Editar(True, Tab);
end;

procedure TFrmBRTribPesq.lbPadraoClick(Sender: TObject);
begin
  if Tab.IsEmpty then Exit;
  with Dados do begin
    if not CM.UA.Admin then exception.Create('Somente usuário com direito de administrador do programa Nex é que pode definir a tributação padrão');
    if not SimNao('Definir a tributação '+TabID.AsString+' como padrão?') then Exit;
    tNFConfig.Edit;    
    tNFConfigTrib_Padrao.Value := TabID.Value;
    tNFConfig.Post;
    Tab.Refresh;
    Grid.Refresh;
    UpdatePadrao;
  end;  
end;

procedure TFrmBRTribPesq.lbRemoverPadraoClick(Sender: TObject);
begin
  with Dados do begin
    tNFConfig.Edit;    
    tNFConfigTrib_Padrao.Clear;
    tNFConfig.Post;
    Tab.Refresh;
    Grid.Refresh;
    UpdatePadrao;
  end;  
end;

function TFrmBRTribPesq.Pesquisar(var aCodigo: Word): Boolean;
begin
  if (aCodigo>0) then Tab.FindKey([aCodigo]);
  ShowModal;
  if ModalResult=mrOk then begin
    if (not Tab.IsEmpty) then 
      aCodigo := TabID.Value;
    Result := True;
  end else
    Result := False;
end;

procedure TFrmBRTribPesq.btnCancelClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFrmBRTribPesq.btnOkClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFrmBRTribPesq.TVCodigoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  ACanvas.Font.Style := [fsBold];
end;

procedure TFrmBRTribPesq.TVCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    ACanvas.Brush.Color := clHighlight;
    ACanvas.Font.Color := clHighlightText;
  end;
end;

procedure TFrmBRTribPesq.TVCustomDrawColumnHeader(Sender: TcxGridTableView;
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

procedure TFrmBRTribPesq.TVDblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFrmBRTribPesq.TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  UpdatePadrao;
end;

procedure TFrmBRTribPesq.TVKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_Return : ModalResult := mrOk;
    VK_Escape : ModalResult := mrCancel;
  end;
end;

procedure TFrmBRTribPesq.TVPadraoGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  with Dados do
  if tNFConfigTrib_Padrao.Value=ARecord.Values[TVCodigo.Index] then
    AText := 'Padrão' else
    AText := '';
end;

procedure TFrmBRTribPesq.UpdatePadrao;
begin
  with Dados do begin
    lbRemoverPadrao.Visible := (tNFConfigTrib_Padrao.Value>0);
    panPadrao.Visible := ((TabID.Value<>tNFConfigTrib_Padrao.Value) and (not Tab.IsEmpty)) or lbRemoverPadrao.Visible;
  end;
end;

{ TFrmBRTribPesqList }

constructor TFrmBRTribPesqList.Create;
begin
  FList := TList.Create;
end;

destructor TFrmBRTribPesqList.Destroy;
begin
  while FList.Count>0 do begin
    TObject(FList[0]).Free;
    FList.Delete(0);
  end;
  FList.Free;

  inherited;
end;

function TFrmBRTribPesqList.GetFrm: TFrmBRTribPesq;
begin
  if FList.Count>0 then begin
    Result := FList[0];
    Result.Tab.Refresh;
    FList.Delete(0);
  end else
    Result := TFrmBRTribPesq.Create(nil);
end;

procedure TFrmBRTribPesqList.ReleaseFrm(aFrm: TFrmBRTribPesq);
begin
  FList.Add(aFrm);
end;

initialization
  gBRTribPesqList := TFrmBRTribPesqList.Create;

finalization
  gBRTribPesqList.Free;  

end.


