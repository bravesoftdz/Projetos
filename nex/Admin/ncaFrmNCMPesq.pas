unit ncaFrmNCMPesq;
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
  TFrmNCMPesq = class(TForm)
    Tab: TnxTable;
    DS: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    panBusca: TLMDSimplePanel;
    edBusca: TcxTextEdit;
    cxImageList1: TcxImageList;
    Label1: TLabel;
    lbSize: TcxLabel;
    Timer1: TTimer;
    btnOk: TcxButton;
    btnImp: TcxButton;
    lbLocalizar: TcxLabel;
    TabNCM: TStringField;
    TabDescricao: TStringField;
    TabID: TUnsignedAutoIncField;
    tAux: TnxTable;
    tAuxID: TUnsignedAutoIncField;
    tAuxNCM: TStringField;
    tAuxDescricao: TStringField;
    TabEx: TStringField;
    TabImpostoFed_Imp: TFloatField;
    TabImpostoFed_Nac: TFloatField;
    TabImpostoEst: TFloatField;
    TabImpostoMun: TFloatField;
    tAuxEx: TStringField;
    tAuxImpostoFed_Imp: TFloatField;
    tAuxImpostoFed_Nac: TFloatField;
    tAuxImpostoEst: TFloatField;
    tAuxImpostoMun: TFloatField;
    OpenDlg: TOpenTextFileDialog;
    PB: TcxProgressBar;
    TabPadrao: TStringField;
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
    lbVerPadrao: TcxLabel;
    lbRemoverPadrao: TcxLabel;
    procedure TVDebitoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVIsentoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVInativoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cmMostrarChange(Sender: TObject);
    procedure cmOrdemChange(Sender: TObject);
    procedure cmMostrarPropertiesChange(Sender: TObject);
    procedure rgNomeClick(Sender: TObject);
    procedure TVColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridEnter(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure TVDblClick(Sender: TObject);
    procedure edBuscaFocusChanged(Sender: TObject);
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
    procedure lbNomeClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TVCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure edBuscaEnter(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure lbLocalizarClick(Sender: TObject);
    procedure cbSuperBuscaClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure TVCodigoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TabCalcFields(DataSet: TDataSet);
    procedure TVPadraoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure lbPadraoClick(Sender: TObject);
    procedure lbVerPadraoClick(Sender: TObject);
    procedure lbRemoverPadraoClick(Sender: TObject);

  private
    { Private declarations }
    FEntrou : Boolean;
    FShowing : Boolean;
    FUpdating : Boolean;
    FSave: String;
    FBuscaPor: Byte;
    FEx, FCodigo : String;

    procedure Atualiza;

    function TemEx: Boolean;

    procedure _Buscar;

    procedure SelecionaTudo(var Msg: Tmessage); message wm_user;  
    procedure SetBuscaPor(const Value: Byte);

    procedure SetTextFromDB;

    procedure setIndex;
    procedure setCampoBusca;

    function TextoBusca: String;

    function ECodigo: Boolean;

    function ObtemEx: Boolean;
  public
    procedure FiltraDados; 

    property BuscaPor: Byte
      read FBuscaPor write SetBuscaPor;

    function Pesquisar(var aCodigo, aEx: String): Boolean;

    procedure Reset;

    procedure UpdatePadrao;

    function procurar: Boolean;

    procedure processKey(Key: Word; aIgnoreUpDown: Boolean);

    { Public declarations }
  end;

  TFrmNCMPesqList = class
  private
    FList : TList;
  public
    constructor Create;
    destructor Destroy; override;

    function GetFrm: TFrmNCMPesq;
    procedure ReleaseFrm(aFrm: TFrmNCMPesq);  
  end;
  

var
  FrmNCMPesq: TFrmNCMPesq;
  gNCMPesqList : TFrmNCMPesqList;

implementation

uses 
  ncaDM, 
  ufmImagens, 
  ncaFrmPri, 
  ncIDRecursos, ncaFrmNCM, uProxCampo, ncaFrmNCMEx;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

const
  busNome   = 0;
  busCodigo = 1;
  busSuper  = 2;

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

procedure TFrmNCMPesq.setCampoBusca;
begin
  if Trim(TextoBusca)='' then begin
    FBuscaPor := busNome;
    Exit;
  end;

  if ECodigo then
    FBuscaPor := busCodigo else
    FBuscaPor := busNome;

  tAux.CancelRange;  
end;

procedure TFrmNCMPesq.setIndex;
begin
  case FBuscaPor of
    busNome : Tab.IndexName := 'IDescricao'; // do not localize
    busSuper : Tab.IndexName := 'ISuperBusca';
    busCodigo : Tab.IndexName := 'INCM';
  end;
end;
  
procedure TFrmNCMPesq.FiltraDados;
begin
  if not Tab.Active then Tab.Active := True;

  GL.GridView := TV;
  FBuscaPor := busNome;
  setIndex;
end;

procedure TFrmNCMPesq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FShowing := False;
end;

procedure TFrmNCMPesq.FormCreate(Sender: TObject);
begin
{  cbSuperBusca.Checked := getFormOptionBool(Self, 'superbusca', true);
  cbSuperBuscaClick(nil);}

  btnImp.Enabled := Dados.CM.UA.Admin;
  
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

procedure TFrmNCMPesq.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Enter : btnOk.Click;
  end;
end;

procedure TFrmNCMPesq.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then Key := #0;
end;

procedure TFrmNCMPesq.FormShow(Sender: TObject);
begin
  FShowing := True;
  UpdatePadrao;
  edBusca.SetFocus;
end;

procedure TFrmNCMPesq.GridEnter(Sender: TObject);
begin
  inherited;
  FEntrou := True;
  if (edBusca.Text='') and not Tab.IsEmpty then
    SetTextFromDB;
  Timer1.Enabled := True;
end;

procedure TFrmNCMPesq.GridExit(Sender: TObject);
begin
  inherited;
  FEntrou := False;
end;

procedure TFrmNCMPesq.lbLocalizarClick(Sender: TObject);
begin
  edBusca.SetFocus;
end;

procedure TFrmNCMPesq.lbNomeClick(Sender: TObject);
begin
  BuscaPor := TcxLabel(Sender).Tag;
  edBusca.SetFocus;
end;

procedure TFrmNCMPesq.lbPadraoClick(Sender: TObject);
begin
  if Tab.IsEmpty then Exit;
  with Dados do begin
    if not CM.UA.Admin then exception.Create('Somente usuário com direito de administrador do programa Nex é que pode definir o NCM padrão');
    if not SimNao('Definir o NCM '+TabNCM.AsString+' como padrão?') then Exit;
    tNFConfig.Edit;    
    tNFConfigNCM_Padrao.Value := TabNCM.Value;
    tNFConfig.Post;
    Tab.Refresh;
    Grid.Refresh;
    UpdatePadrao;
  end;  
end;

procedure TFrmNCMPesq.lbRemoverPadraoClick(Sender: TObject);
begin
  FUpdating := True;
  try
    with Dados do begin
      tNFConfig.Edit;
      tNFConfigNCM_Padrao.Clear;
      tNFConfig.Post;
      UpdatePadrao;
    end;
  finally
    FUpdating := False;
  end;  
end;

procedure TFrmNCMPesq.lbVerPadraoClick(Sender: TObject);
begin
  FUpdating := True;
  try
    with Dados do
    if tNFConfigNCM_Padrao.Value>'' then begin
      Tab.Locate('NCM', tNFConfigNCM_Padrao.Value, []);
      SetTextFromDB;
    end;
  finally
    FUpdating := False;
  end;  
end;

function TFrmNCMPesq.ObtemEx: Boolean;
begin
  Result := True;
  if FCodigo<>TabNCM.Value then FEx := '';
  if TemEx then 
    Result := TFrmNCMEx.Create(Self).ObtemEx(TabNCM.Value, FEx);
end;

function TFrmNCMPesq.Pesquisar(var aCodigo, aEx: String): Boolean;
begin
  FUpdating := True;
  try
    FEx := aEx;
    FCodigo := aCodigo;
    edBusca.Text := '';
    FBuscaPor := busCodigo;
    setIndex;
    Tab.CancelRange;
    if (aCodigo>'') and Tab.Locate('NCM', aCodigo, []) then edBusca.Text := TabNCM.Value;
    Atualiza;
  finally
    FUpdating := False;
  end;
  ShowModal;
  if ModalResult=mrOk then begin
    if (not Tab.IsEmpty) then begin
      aCodigo := TabNCM.Value;
      aEx := FEx;
    end else begin
      aCodigo := '';
      aEx := '';
    end;  
      
    Result := True;
  end else
    Result := False;
end;

procedure TFrmNCMPesq.processKey(Key: Word; aIgnoreUpdown: Boolean);
var FSaveID, FStart: Integer;
begin
  FSaveID := TabID.Value;
  case Key of
    VK_UP : if not aIgnoreUpdown then Tab.Prior;
    VK_Down : if not aIgnoreUpdown then Tab.Next;
    VK_F2, 
    VK_Return : ModalResult := mrOk;
    VK_Escape : ModalResult := mrCancel;
  end;
  if (TabID.Value <> FSaveID) and (FBuscaPor<>busSuper) then
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

function TFrmNCMPesq.procurar: Boolean;
var S, SF: String;
begin
  setCampoBusca;
  setIndex;

  Tab.DisableControls;
  try
    if Trim(edBusca.Text)='' then begin
      Tab.IndexName := 'IDescricao';
      Tab.CancelRange;
    end else begin
      if ECodigo then 
        Tab.IndexName := 'INCM' else
        Tab.IndexName := 'IDescricao';
        
      Tab.SetRange([edBusca.Text], [edBusca.Text+'zzzzzzzzzzzzzzzzzzzzz']); // do not localize
    end;
  finally
    Tab.EnableControls;
  end;
  Result := not Tab.IsEmpty;
end;

procedure TFrmNCMPesq.Reset;
begin
  if Tab.active then begin
      Tab.DisableControls;
      try
        Tab.IndexName := 'IDescricao';
        Tab.CancelRange;
        Tab.First;
      finally
        Tab.EnableControls;
      end;
  end;
end;

procedure TFrmNCMPesq.Atualiza;
begin
//  btnEditar.Enabled := (not Tab.IsEmpty) and (edBusca.Text>'');
{  TV.OptionsSelection.HideFocusRect := not btnEditar.Enabled;
  TV.OptionsSelection.HideSelection := not btnEditar.Enabled;}
  lbSize.Caption := edBusca.Text;
end;

procedure TFrmNCMPesq.btnCancelClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFrmNCMPesq.btnEditarClick(Sender: TObject);
var aCod, aDescr: String;
begin
  aCod := TabNCM.Value;
  aDescr := TabDescricao.Value;
  if TFrmNCM.Create(self).Editar(aCod, aDescr) then
  begin
    Tab.Edit;
    TabNCM.Value := aCod;
    TabDescricao.Value := aDescr;
    Tab.Post;
  end;
end;

procedure TFrmNCMPesq.btnImpClick(Sender: TObject);
var
  S : String;
  sl : TStringList;
  I : Integer;

function ProxCampo: String;
begin
  Result := uProxCampo.ObtemProxCampo(S, ';')
end; 

function Igual(A, B: String): Boolean;
begin
  Result := SameText(A, B);
end; 

function EArqIBPT: Boolean;
var s2 : String;
begin
  S := sl[0];
  Result := False;
  try
    if not Igual('codigo', ProxCampo) then Exit;
    if not Igual('ex', ProxCampo) then Exit;
    if not Igual('tipo', ProxCampo) then Exit;
    if not Igual('descricao', ProxCampo) then Exit;
    if not Igual('nacionalfederal', ProxCampo) then Exit;
    s2 := ProxCampo;
    if (not Igual('importadosfederal', s2)) and (not Igual('ImportadoFederal', s2)) then Exit;
    if not Igual('estadual', ProxCampo) then Exit;
    if not Igual('municipal', ProxCampo) then Exit;
    if not Igual('vigenciainicio', ProxCampo) then Exit;
    if not Igual('vigenciafim', ProxCampo) then Exit;
    if not Igual('chave', ProxCampo) then Exit;
    if not Igual('versao', ProxCampo) then Exit;
    if not Igual('fonte', ProxCampo) then Exit;
    Result := True;
  finally
    if not Result then
      ShowMessage(
        'Esse arquivo não tem o formato esperado. O arquivo IBPT deve ter as seguintes colunas/ordem:' + sLineBreak +
        '- codigo' + slineBreak +
        '- ex' + slineBreak +
        '- tipo' + slineBreak +
        '- descricao' + slineBreak +
        '- nacionalfederal' + slineBreak +
        '- importadosfederal' + slineBreak +
        '- estadual' + slineBreak +
        '- municipal' + slineBreak +
        '- vigenciainicio' + slineBreak +
        '- vigenciafim' + slineBreak +
        '- chave' + slineBreak +
        '- versao' + slineBreak +
        '- fonte');
  end;    
end;
  
begin
  if not Opendlg.Execute(Handle) then Exit;
  sl := TStringList.Create;
  try
    sl.LoadFromFile(OpenDlg.FileName);
    if not EArqIBPT then Exit;
    Tab.Timeout := 360000;
    Tab.DeleteRecords;
    PB.Properties.Max := sl.Count;
    PB.Visible := True;
    PB.Position := 0;
    Application.ProcessMessages;
    DS.DataSet := nil;
    for I := 1 to sl.Count-1 do begin
      PB.Position := I;
      PB.Repaint;
      S := SL[I];
      Tab.Append;
      TabNCM.Value := ProxCampo;
      TabEx.Value := ProxCampo; ProxCampo;
      TabDescricao.Value := UpperCase(ProxCampo);
      TabImpostoFed_Nac.Value := StrToCurrency(ProxCampo);
      TabImpostoFed_Imp.Value := StrToCurrency(ProxCampo);
      TabImpostoEst.Value := StrToCurrency(ProxCampo);
      TabImpostoMun.Value := StrToCurrency(ProxCampo);
      Tab.Post;
      if I mod 10 = 0 then Application.ProcessMessages;
    end;
    ShowMessage('Arquivo IBPT importado com sucesso - '+IntToStr(I)+' NCMs');
  finally
    DS.Dataset := Tab;
    PB.Visible := False;
    sl.Free;
  end;  
end;

procedure TFrmNCMPesq.btnNovoClick(Sender: TObject);
var aCod, aDescr: String;
begin
  aCod := '';
  aDescr := '';
  if TFrmNCM.Create(self).Editar(aCod, aDescr) then
  begin
    Tab.Append;
    TabNCM.Value := aCod;
    TabDescricao.Value := aDescr;
    Tab.Post;
  end;
end;

procedure TFrmNCMPesq.btnOkClick(Sender: TObject);
begin
  inherited;
  if ObtemEx then ModalResult := mrOk;
end;

procedure TFrmNCMPesq.edBuscaEnter(Sender: TObject);
begin
  PostMessage(Handle, wm_user, 0, 0);
end;

procedure TFrmNCMPesq.edBuscaFocusChanged(Sender: TObject);
begin
  inherited;
{  if edBusca.Focused then
    panBusca.Color := FrmPri.cxEditStyleController1.StyleFocused.Color else
    panBusca.Color := clBtnFace;}
end;

procedure TFrmNCMPesq.edBuscaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmNCMPesq.edBuscaPropertiesChange(Sender: TObject);
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

procedure TFrmNCMPesq.edBuscaPropertiesEditValueChanged(Sender: TObject);
var P: Integer;
begin
  inherited;
  lbLocalizar.Visible := (Trim(edBusca.Text)='');
  
  if FUpdating then Exit;

  FUpdating := True;
  try
  //  panDigite.Visible := (Trim(edBusca.Text)='');
    if FShowing and (edBusca.Focused) and (edBusca.Text<>FSave) then begin
      if Procurar and (not (FBuscaPor in [busSuper, busCodigo])) and (edBusca.Text>'') then begin
        P := edBusca.CursorPos;
        SetTextFromDB;
        edBusca.SetSelection(P, Length(edBusca.Text));
      end;
    end;
  finally
    FUpdating := False;
  end;
end;

procedure TFrmNCMPesq.cbSuperBuscaClick(Sender: TObject);
begin
{  if cbSuperBusca.Checked then begin
    cbSuperBusca.Style.BorderColor := clBlack;
    cbSuperBusca.Style.TextColor := clBlack;
  end else begin
    cbSuperBusca.Style.BorderColor := clGray;
    cbSuperBusca.Style.TextColor := clGray;
  end;

  if cbSuperBusca.Focused then begin
    saveFormOptionBool(Self, 'superbusca', cbSuperBusca.Checked);
    Procurar;
    edBusca.SetFocus;
  end;  }
end;

procedure TFrmNCMPesq.cmMostrarChange(Sender: TObject);
begin
  inherited;
  FiltraDados;
end;

procedure TFrmNCMPesq.TabCalcFields(DataSet: TDataSet);
begin
  TabPadrao.Value := 'Padrão';
end;

function TFrmNCMPesq.TemEx: Boolean;
begin
  tAux.IndexName := 'INCM';
  tAux.SetRange([TabNCM.Value], [TabNCM.Value]);
  Result := (tAux.RecordCount>1);
end;

function TFrmNCMPesq.TextoBusca: String;
begin
  Result := edBusca.Text;
end;

procedure TFrmNCMPesq.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  if FShowing then
    edBusca.SetFocus;
end;

procedure TFrmNCMPesq.TVCodigoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  ACanvas.Font.Style := [fsBold];
end;

procedure TFrmNCMPesq.TVColumnPosChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  inherited;
  SalvaLayout(Grid, 'especial'); // do not localize
end;

procedure TFrmNCMPesq.TVCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    ACanvas.Brush.Color := clHighlight;
    ACanvas.Font.Color := clHighlightText;
  end;
end;

procedure TFrmNCMPesq.TVCustomDrawColumnHeader(Sender: TcxGridTableView;
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

procedure TFrmNCMPesq.TVDblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFrmNCMPesq.TVDebitoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  with aviewinfo do 
  if (Value<>Null) and (Value>0.009) then begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Canvas.Font.Color := clWhite;
  end else 
    ACanvas.Font.Color := ACanvas.Brush.Color;
end;

procedure TFrmNCMPesq.TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if FEntrou then SetTextFromDB;
end;

procedure TFrmNCMPesq.TVInativoCustomDrawCell(Sender: TcxCustomGridTableView;
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

procedure TFrmNCMPesq.TVIsentoCustomDrawCell(Sender: TcxCustomGridTableView;
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

procedure TFrmNCMPesq.TVKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    VK_Return : ModalResult := mrOk;
    VK_Escape : ModalResult := mrCancel;
  end;
end;

procedure TFrmNCMPesq.TVPadraoGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  if SameText(Dados.tNFConfigNCM_Padrao.Value, AREcord.Values[TVCodigo.Index]) then
    AText := 'Padrão' else
    AText := '';
end;

procedure TFrmNCMPesq.UpdatePadrao;
begin
  lbRemoverPadrao.Visible := (Dados.tNFConfigNCm_Padrao.Value>'');
  panPadrao.Visible := (Dados.tNFConfigNCM_Padrao.Value <> TabNCM.Value) or lbRemoverPadrao.Visible;
  lbPadrao.Caption := 'Definir o NCM '+TabNCM.AsString+' como padrão';
end;

procedure TFrmNCMPesq._Buscar;
begin
end;

procedure TFrmNCMPesq.cmOrdemChange(Sender: TObject);
begin
  if Tab.Active then 
    FiltraDados;
end;

procedure TFrmNCMPesq.cxButton3Click(Sender: TObject);
begin
  inherited;
  edBusca.SetFocus;
end;

function TFrmNCMPesq.ECodigo: Boolean;
var S, sNCM: String;
begin
  S := TextoBusca;
  tAux.IndexName := 'INCM';
  tAux.FindNearest([S]);
  sNCM := tAuxNCM.Value;
  Result := (not tAux.IsEmpty) and SameTextSemAcento(Copy(sNCM, 1, Length(S)), S);
end;

procedure TFrmNCMPesq.cmMostrarPropertiesChange(Sender: TObject);
begin
  if Tab.Active then 
    FiltraDados;
end;

procedure TFrmNCMPesq.rgNomeClick(Sender: TObject);
begin
  inherited;
  FiltraDados;
end;

procedure TFrmNCMPesq.SelecionaTudo(var Msg: Tmessage);
begin
  edBusca.SelectAll;
end;

procedure TFrmNCMPesq.SetBuscaPor(const Value: Byte);
var aID: Integer;

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
      aID := TabID.Value;
      SetTextFromDB;
    end else aID := 0;
    FiltraDados;
    edBusca.SetFocus;
    edBusca.SelectAll;
    if aID>0 then Tab.Locate('ID', aID, []);
  finally
    FUpdating := False;
  end;
end;

procedure TFrmNCMPesq.SetTextFromDB;
begin
  UpdatePadrao;
  case FBuscaPor of
    busNome, 
    busSuper  : edBusca.Text := TabDescricao.Value;
    
    busCodigo : edBusca.Text := TabNCM.Value;
  else
    edBusca.Text := '';
  end;
end;

{ TFrmNCMPesqList }

constructor TFrmNCMPesqList.Create;
begin
  FList := TList.Create;
end;

destructor TFrmNCMPesqList.Destroy;
begin
  while FList.Count>0 do begin
    TObject(FList[0]).Free;
    FList.Delete(0);
  end;
  FList.Free;

  inherited;
end;

function TFrmNCMPesqList.GetFrm: TFrmNCMPesq;
begin
  if FList.Count>0 then begin
    Result := FList[0];
    Result.Tab.Refresh;
    FList.Delete(0);
  end else
    Result := TFrmNCMPesq.Create(nil);
end;

procedure TFrmNCMPesqList.ReleaseFrm(aFrm: TFrmNCMPesq);
begin
  FList.Add(aFrm);
end;

initialization
  gNCMPesqList := TFrmNCMPesqList.Create;

finalization
  gNCMPesqList.Free;  

end.

