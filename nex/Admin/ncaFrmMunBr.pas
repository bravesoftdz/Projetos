unit ncaFrmMunBr;
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
  TFrmMunPesq = class(TForm)
    Tab: TnxTable;
    DS: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxImageList1: TcxImageList;
    Label1: TLabel;
    lbSize: TcxLabel;
    OpenDlg: TOpenTextFileDialog;
    LMDSimplePanel1: TLMDSimplePanel;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVFor: TcxGridDBTableView;
    TVForNome: TcxGridDBColumn;
    GL: TcxGridLevel;
    TabUF: TStringField;
    TabNome: TStringField;
    TabCodigo: TStringField;
    TVUF: TcxGridDBColumn;
    TVNome: TcxGridDBColumn;
    TVCodigo: TcxGridDBColumn;
    Timer1: TTimer;
    panBusca: TLMDSimplePanel;
    panOuterBusca: TLMDSimplePanel;
    edBusca: TcxTextEdit;
    btnOk: TcxButton;
    lbLocalizar: TcxLabel;
    edUF: TcxComboBox;
    procedure TVIsentoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVInativoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cmMostrarChange(Sender: TObject);
    procedure cmOrdemChange(Sender: TObject);
    procedure cmMostrarPropertiesChange(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure TVDblClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure edBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBuscaPropertiesChange(Sender: TObject);
    procedure edBuscaPropertiesEditValueChanged(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure TVKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TVCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure edBuscaEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lbLocalizarClick(Sender: TObject);
    procedure TVCodigoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure edUFPropertiesChange(Sender: TObject);
    procedure edUFPropertiesCloseUp(Sender: TObject);

  private
    { Private declarations }
    FEntrou : Boolean;
    FShowing : Boolean;
    FUpdating : Boolean;
    FSave: String;
    FBuscaPor: Byte;
    FCodigo : String;

    procedure Atualiza;

    procedure SelecionaTudo(var Msg: Tmessage); message wm_user;  
    procedure SetBuscaPor(const Value: Byte);

    procedure SetTextFromDB;

    procedure setIndex;
    procedure setCampoBusca;

    function TextoBusca: String;

    function ECodigo: Boolean;
  public
    procedure FiltraDados; 

    property BuscaPor: Byte
      read FBuscaPor write SetBuscaPor;

    function Pesquisar(aUF: String; var aCodigo: String; aEditUF: Boolean = False): Boolean;

    procedure Reset;

    function procurar: Boolean;

    procedure processKey(Key: Word; aIgnoreUpDown: Boolean);

    { Public declarations }
  end;

  TFrmMunPesqList = class
  private
    FList : TList;
  public
    constructor Create;
    destructor Destroy; override;

    function GetFrm: TFrmMunPesq;
    procedure ReleaseFrm(aFrm: TFrmMunPesq);  
  end;
  

var
  FrmMunPesq: TFrmMunPesq;
  gMunPesqList : TFrmMunPesqList;

implementation

uses 
  ncaDM, 
  ufmImagens, 
  ncaFrmPri, 
  ncIDRecursos;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

const
  busNome   = 0;
  busCodigo = 1;

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

procedure TFrmMunPesq.setCampoBusca;
begin
  if Trim(TextoBusca)='' then begin
    FBuscaPor := busNome;
    Exit;
  end;

  if ECodigo then
    FBuscaPor := busCodigo else
    FBuscaPor := busNome;
end;

procedure TFrmMunPesq.setIndex;
begin
  case FBuscaPor of
    busNome : Tab.IndexName := 'IUFNome';
    busCodigo : Tab.IndexName := 'IUFCodigo';
  end;
end;
  
procedure TFrmMunPesq.FiltraDados;
begin
  if not Tab.Active then Tab.Active := True;

  GL.GridView := TV;
  FBuscaPor := busNome;
  setIndex;
end;

procedure TFrmMunPesq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FShowing := False;
end;

procedure TFrmMunPesq.FormCreate(Sender: TObject);
begin
  if Width > Screen.Width then
    Width := Screen.Width-10;
  FBuscaPor := busNome;
  FUpdating := False;
  lbSize.SendToBack;
  FShowing := false;
  FEntrou := False;
//  LeLayout(Grid, 'especial'); // do not localize
  Tab.Open;

end;

procedure TFrmMunPesq.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Enter : btnOk.Click;
  end;
end;

procedure TFrmMunPesq.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then Key := #0;
end;

procedure TFrmMunPesq.FormShow(Sender: TObject);
begin
  FShowing := True;
  edBusca.SetFocus;
end;

procedure TFrmMunPesq.GridEnter(Sender: TObject);
begin
  inherited;
  FEntrou := True;
  if (edBusca.Text='') and not Tab.IsEmpty then
    SetTextFromDB;
  Timer1.Enabled := True;
end;

procedure TFrmMunPesq.GridExit(Sender: TObject);
begin
  inherited;
  FEntrou := False;
end;

procedure TFrmMunPesq.lbLocalizarClick(Sender: TObject);
begin
  edBusca.SetFocus;
end;

function TFrmMunPesq.Pesquisar(aUF: String; var aCodigo: String; aEditUF: Boolean = False): Boolean;
begin
  FUpdating := True;
  try
    edUF.Text := aUF;
    edUF.Visible := aEditUF;
    FCodigo := aCodigo;
    edBusca.Text := '';
    FBuscaPor := busCodigo;
    setIndex;
    Tab.SetRange([aUF], [aUF]);
    if (aCodigo>'') and Tab.Locate('Codigo', aCodigo, []) then edBusca.Text := TabNome.Value;
    Atualiza;
  finally
    FUpdating := False;
  end;
  ShowModal;
  if ModalResult=mrOk then begin
    if (not Tab.IsEmpty) then 
      aCodigo := TabCodigo.Value else
      aCodigo := '';
    Result := True;
  end else
    Result := False;
end;

procedure TFrmMunPesq.processKey(Key: Word; aIgnoreUpdown: Boolean);
var 
  FStart: Integer;
  FSaveCod: String;
begin
  FSaveCod := TabCodigo.Value;
  case Key of
    VK_UP : if not aIgnoreUpdown then Tab.Prior;
    VK_Down : if not aIgnoreUpdown then Tab.Next;
    VK_F2, 
    VK_Return : ModalResult := mrOk;
    VK_Escape : ModalResult := mrCancel;
  end;
  if (TabCodigo.Value <> FSaveCod) then
  try
    FUpdating := True;
    if (edBusca.Text='') then
      FStart := 0
    else
    if edBusca.SelLength>0 then
      FStart := edBusca.SelStart else
      FStart := -1;
    
    SetTextFromDB;
    if FStart>-1 then
      edBusca.SetSelection(FStart, Length(edBusca.Text));
  finally
    FUpdating := False;
  end;
end;

function SoDig(S: String): String;
var I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    if S[I] in ['0'..'9'] then
      Result := Result + S[I];
end;

function TFrmMunPesq.procurar: Boolean;
var S, SF: String;
begin
  setCampoBusca;
  setIndex;

  Tab.DisableControls;
  try
    if Trim(edBusca.Text)='' then begin
      Tab.IndexName := 'IUFNome';
      Tab.CancelRange;
      Tab.SetRange([edUF.Text], [edUF.Text]);
    end else begin
      if ECodigo then 
        Tab.IndexName := 'IUFCodigo' else
        Tab.IndexName := 'IUFNome';
        
      Tab.SetRange([edUF.Text, edBusca.Text], [edUF.Text, edBusca.Text+'zzzzzzzzzzzzzzzzzzzzz']); // do not localize
    end;
  finally
    Tab.EnableControls;
  end;
  Result := not Tab.IsEmpty;
end;

procedure TFrmMunPesq.Reset;
begin
  if Tab.active then begin
      Tab.DisableControls;
      try
        Tab.IndexName := 'INome';
        Tab.SetRange([edUF.Text], [edUF.Text]);
        Tab.CancelRange;
        Tab.First;
      finally
        Tab.EnableControls;
      end;
  end;
end;

procedure TFrmMunPesq.Atualiza;
begin
  lbSize.Caption := edBusca.Text;
end;

procedure TFrmMunPesq.btnCancelClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFrmMunPesq.btnOkClick(Sender: TObject);
begin
  inherited;
  if Tab.IsEmpty then begin
    edBusca.SetFocus;
    raise Exception.Create('É necessário localizar a cidade desejada');
  end;

  ModalResult := mrOk;
end;

procedure TFrmMunPesq.edBuscaEnter(Sender: TObject);
begin
  PostMessage(Handle, wm_user, 0, 0);
end;

procedure TFrmMunPesq.edBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  FSave := edBusca.Text;
  if Key = 8 then begin
    if (edBusca.SelLength>0) then begin
      if edBusca.SelLength = Length(edBusca.EditingText) then
        edBusca.Text := ''
      else
      if (edBusca.SelStart>0) then edBusca.SetSelection(edBusca.SelStart-1, edBusca.SelLength+1);
    end;
  end;

  if Key = 46 then
    if edBusca.SelLength>0 then
      edBusca.Text := '';

  ProcessKey(Key, False);
end;

procedure TFrmMunPesq.edBuscaPropertiesChange(Sender: TObject);
begin
  inherited;
  edBusca.PostEditValue;
  Atualiza;
end;

function SemAcento(S: String): String;
const
  Acentos =  'éêèýýúùûîiíìõôòóãáàñç';
  SAcentos = 'eeeyyuuuiiiiooooaaanc';
var
  I, P : Integer;  
begin
  S := lowercase(S);
  Result := '';
  for I := 1 to Length(S) do begin
    P := Pos(S[i], Acentos);
    if P>0 then
      Result := Result + SAcentos[P] else
      Result := Result + S[i];
  end;
end;

procedure TFrmMunPesq.edBuscaPropertiesEditValueChanged(Sender: TObject);
var P: Integer;
begin
  inherited;
  lbLocalizar.Visible := (Trim(edBusca.Text)='');
  
  if FUpdating then Exit;

  FUpdating := True;
  try
    if FShowing and (edBusca.Focused) and (edBusca.Text<>FSave) then begin
      if Procurar and (not (FBuscaPor = busCodigo)) and (edBusca.Text>'') then begin
        P := edBusca.CursorPos;
        SetTextFromDB;
        edBusca.SetSelection(P, Length(edBusca.Text));
      end;
    end;
  finally
    FUpdating := False;
  end;
end;

procedure TFrmMunPesq.edUFPropertiesChange(Sender: TObject);
begin
  procurar;
end;

procedure TFrmMunPesq.edUFPropertiesCloseUp(Sender: TObject);
begin
  edBusca.SetFocus;
end;

procedure TFrmMunPesq.cmMostrarChange(Sender: TObject);
begin
  inherited;
  FiltraDados;
end;

function TFrmMunPesq.TextoBusca: String;
begin
  Result := edBusca.Text;
end;

procedure TFrmMunPesq.TVCodigoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  ACanvas.Font.Style := [fsBold];
end;

procedure TFrmMunPesq.TVCustomDrawColumnHeader(Sender: TcxGridTableView;
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

procedure TFrmMunPesq.TVDblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFrmMunPesq.TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if FEntrou then SetTextFromDB;
end;

procedure TFrmMunPesq.TVInativoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  with aviewinfo do 
  if (Value<>Null) and (Value=True) then begin
    ACanvas.Canvas.Brush.Color := clGray;
    ACanvas.Canvas.Font.Color := clWhite;
  end;
end;

procedure TFrmMunPesq.TVIsentoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  with aviewinfo do 
  if (Value<>Null) and (Value=True) then begin
    ACanvas.Canvas.Brush.Color := clGreen;
    ACanvas.Canvas.Font.Color := clWhite;
  end;
end;

procedure TFrmMunPesq.TVKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_Return : ModalResult := mrOk;
    VK_Escape : ModalResult := mrCancel;
  end;
end;

procedure TFrmMunPesq.cmOrdemChange(Sender: TObject);
begin
  if Tab.Active then 
    FiltraDados;
end;

procedure TFrmMunPesq.cxButton3Click(Sender: TObject);
begin
  inherited;
  edBusca.SetFocus;
end;

function TFrmMunPesq.ECodigo: Boolean;
var S: String;
begin
  S := TextoBusca;
  Result := (S>'') and (S[1] in ['0'..'9']);
end;

procedure TFrmMunPesq.cmMostrarPropertiesChange(Sender: TObject);
begin
  if Tab.Active then 
    FiltraDados;
end;

procedure TFrmMunPesq.SelecionaTudo(var Msg: Tmessage);
begin
  edBusca.SelectAll;
end;

procedure TFrmMunPesq.SetBuscaPor(const Value: Byte);
var aCod: String;

procedure AjustaLabel(L: TcxLabel);
begin
  if L.Tag=FBuscaPor then begin
    L.Style.TextColor := clBlack;
    L.Style.TextStyle := [fsUnderline];
  end else begin
    L.Style.TextColor := clGray;
    L.Style.TextStyle := [];
  end;
end;

begin
  if FBuscaPor = Value then Exit;
  
  FBuscaPor := Value;

  FUpdating := True;
  try
    if not Tab.IsEmpty then begin
      aCod := TabCodigo.Value;
      SetTextFromDB;
    end else aCod := '' ; 
    FiltraDados;
    edBusca.SetFocus;
    edBusca.SelectAll;
    if aCod>'' then Tab.Locate('Codigo', aCod, []);
  finally
    FUpdating := False;
  end;
end;

procedure TFrmMunPesq.SetTextFromDB;
begin
  case FBuscaPor of
    busNome   : edBusca.Text := TabNome.Value;
    busCodigo : edBusca.Text := TabCodigo.Value;
  else
    edBusca.Text := '';
  end;
end;

{ TFrmMunPesqList }

constructor TFrmMunPesqList.Create;
begin
  FList := TList.Create;
end;

destructor TFrmMunPesqList.Destroy;
begin
  while FList.Count>0 do begin
    TObject(FList[0]).Free;
    FList.Delete(0);
  end;
  FList.Free;

  inherited;
end;

function TFrmMunPesqList.GetFrm: TFrmMunPesq;
begin
  if FList.Count>0 then begin
    Result := FList[0];
    Result.Tab.Refresh;
    FList.Delete(0);
  end else
    Result := TFrmMunPesq.Create(nil);
end;

procedure TFrmMunPesqList.ReleaseFrm(aFrm: TFrmMunPesq);
begin
  FList.Add(aFrm);
end;

initialization
  gMunPesqList := TFrmMunPesqList.Create;

finalization
  gMunPesqList.Free;  

end.

