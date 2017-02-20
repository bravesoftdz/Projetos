unit ncaFrmCESTPesq;
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
  cxImage, cxDBEdit, dxBarBuiltInMenu, Vcl.ExtDlgs, cxProgressBar, cxButtonEdit,
  System.ImageList;

type
  TFrmCESTPesq = class(TForm)
    Tab: TnxTable;
    DS: TDataSource;
    panBusca: TLMDSimplePanel;
    cxImageList1: TcxImageList;
    Label1: TLabel;
    lbSize: TcxLabel;
    LMDSimplePanel1: TLMDSimplePanel;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVCodigo: TcxGridDBColumn;
    TVDescricao: TcxGridDBColumn;
    TVFor: TcxGridDBTableView;
    TVForNome: TcxGridDBColumn;
    GL: TcxGridLevel;
    btnOk: TcxButton;
    Tabcest: TLongWordField;
    Tabncm: TLongWordField;
    Tabdescr: TnxMemoField;
    Tabsrecver: TLongWordField;
    Tabrecver: TLongWordField;
    btnCancelar: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    btnBaixar: TcxButton;
    lbBaixando: TcxLabel;
    Timer2: TTimer;
    TVNCM: TcxGridDBColumn;
    procedure TVColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure TVDblClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure TVKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
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
    procedure btnCancelarClick(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);

  public
    procedure FiltraDados; 

    function Pesquisar(var aCest: Cardinal; aNCM: Cardinal): Boolean;

    procedure AtualizaCESTRunning;  

    procedure Run;
    { Public declarations }
  end;

  TFrmCESTPesqList = class
  private
    FList : TList;
  public
    constructor Create;
    destructor Destroy; override;

    function GetFrm: TFrmCESTPesq;
    procedure ReleaseFrm(aFrm: TFrmCESTPesq);  
  end;
  

var
  FrmCESTPesq: TFrmCESTPesq;
  gCESTPesqList : TFrmCESTPesqList;

implementation

uses 
  ncaDM, 
  ufmImagens,
  ncaFrmPri, 
  ncIDRecursos, uProxCampo, ncDMSyncCest;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

function SoTemDig(S: String): Boolean;
var I: Integer;
begin
  for I := 1 to length(S) do
    if not (S[i] in ['0'..'9']) then begin
      Result := False;
      Exit;
    end;
  Result := True;
end;

procedure TFrmCESTPesq.FiltraDados;
begin
  if not Tab.Active then Tab.Active := True;

  GL.GridView := TV;
end;

procedure TFrmCESTPesq.FormCreate(Sender: TObject);
begin
  if Width > Screen.Width then
    Width := Screen.Width-10;
  lbSize.SendToBack;
  Tab.Open;
end;

procedure TFrmCESTPesq.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Enter : btnOk.Click;
    Key_Esc   : btnCancelar.Click;
  end;
end;

procedure TFrmCESTPesq.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then Key := #0;
end;

function TFrmCESTPesq.Pesquisar(var aCest: Cardinal; aNCM: Cardinal): Boolean;
begin
  Caption := 'Selecione o CEST correto para esse produto';
  TVNCM.Visible := False;
  Tab.IndexName := 'I_ncm_cest';
  Tab.Refresh;
  Tab.SetRange([aNCM], [aNCM]);
  if aCest>0 then
    Tab.FindKey([aNCM, aCest]) else
    Tab.First;
  showModal;
  if ModalResult=mrOk then aCest := TabCest.Value;
end;

procedure TFrmCESTPesq.Run;
begin
  Tab.Active := True;
  Tab.CancelRange;
  Tab.Refresh;
  
  Caption := 'CEST';
  TVNCM.Visible := True;
  ShowModal;
end;

procedure TFrmCESTPesq.btnCancelClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFrmCESTPesq.Timer2Timer(Sender: TObject);
begin
  AtualizaCestRunning;
end;

procedure TFrmCESTPesq.TVCodigoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  ACanvas.Font.Style := [fsBold];
end;

procedure TFrmCESTPesq.TVColumnPosChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  inherited;
  SalvaLayout(Grid, 'especial'); // do not localize
end;

procedure TFrmCESTPesq.TVCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    ACanvas.Brush.Color := clHighlight;
    ACanvas.Font.Color := clHighlightText;
  end;
end;

procedure TFrmCESTPesq.TVCustomDrawColumnHeader(Sender: TcxGridTableView;
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

procedure TFrmCESTPesq.TVDblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFrmCESTPesq.TVKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_Return : ModalResult := mrOk;
    VK_Escape : ModalResult := mrCancel;
  end;
end;

procedure TFrmCESTPesq.AtualizaCESTRunning;
var aRunning : Boolean;
begin
  aRunning := lbBaixando.Visible;
  lbBaixando.Visible := IsCestUpdRunning;
  btnBaixar.Visible := not lbBaixando.Visible;

  if (aRunning <> lbBaixando.Visible) then
    Tab.Refresh;
end;

procedure TFrmCESTPesq.btnBaixarClick(Sender: TObject);
begin
  CestUpdate(Handle, True, Dados.RSE, nil);
end;

procedure TFrmCESTPesq.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;          

{ TFrmCESTPesqList }

constructor TFrmCESTPesqList.Create;
begin
  FList := TList.Create;
end;

destructor TFrmCESTPesqList.Destroy;
begin
  while FList.Count>0 do begin
    TObject(FList[0]).Free;
    FList.Delete(0);
  end;
  FList.Free;

  inherited;
end;

function TFrmCESTPesqList.GetFrm: TFrmCESTPesq;
begin
  if FList.Count>0 then begin
    Result := FList[0];
    Result.Tab.Refresh;
    FList.Delete(0);
  end else
    Result := TFrmCESTPesq.Create(nil);
end;

procedure TFrmCESTPesqList.ReleaseFrm(aFrm: TFrmCESTPesq);
begin
  FList.Add(aFrm);
end;

initialization
  gCESTPesqList := TFrmCESTPesqList.Create;

finalization
  gCESTPesqList.Free;  

end.

