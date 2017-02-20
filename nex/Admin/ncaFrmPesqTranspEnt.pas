unit ncaFrmPesqTranspEnt;
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
  cxImage, cxDBEdit, dxBarBuiltInMenu, Vcl.ExtDlgs, cxProgressBar, cxSpinEdit,
  kbmMemTable;

type
  TFrmPesqTranspEnt = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    Label1: TLabel;
    panPri: TLMDSimplePanel;
    panGrid: TLMDSimplePanel;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVFor: TcxGridDBTableView;
    TVForNome: TcxGridDBColumn;
    GL: TcxGridLevel;
    panBusca: TLMDSimplePanel;
    lbEditar: TcxLabel;
    lbNovo: TcxLabel;
    lbExcluir: TcxLabel;
    Tab: TnxTable;
    TabID: TUnsignedAutoIncField;
    TabNome: TWideStringField;
    TabTranspEnt: TBooleanField;
    TabTipoFor: TByteField;
    TabFornecedor: TBooleanField;
    TVNome: TcxGridDBColumn;
    DS: TDataSource;
    TVTipo: TcxGridDBColumn;
    MT: TkbmMemTable;
    MTID: TUnsignedAutoIncField;
    MTTipoFor: TByteField;
    MTNome: TWideStringField;
    TabCodigo: TStringField;
    TabCodigoKey: TStringField;
    TabEndereco: TWideStringField;
    TabEndereco2: TWideStringField;
    TabEnd_Numero: TWideStringField;
    TabEnd_CodMun: TWideStringField;
    TabEnd_Dest: TWideStringField;
    TabEnd_Obs: TWideStringField;
    Tabendereco_id: TGuidField;
    TabPais: TWideStringField;
    TabBairro: TWideStringField;
    TabCidade: TWideStringField;
    TabUF: TWideStringField;
    TabCEP: TWideStringField;
    TabNaoContribICMS: TBooleanField;
    TabIsentoIE: TBooleanField;
    TabNFE_CredIcms: TBooleanField;
    TabSexo: TStringField;
    TabObs: TWideMemoField;
    TabCpf: TWideStringField;
    TabRg: TWideStringField;
    TabTelefone: TWideStringField;
    TabEmail: TWideMemoField;
    TabPassaportes: TFloatField;
    TabPai: TWideStringField;
    TabMae: TWideStringField;
    TabUltVisita: TDateTimeField;
    TabDebito: TCurrencyField;
    TabDataNasc: TDateTimeField;
    TabCelular: TWideStringField;
    TabTemDebito: TBooleanField;
    TabLimiteDebito: TCurrencyField;
    TabFoto: TGraphicField;
    TabIncluidoEm: TDateTimeField;
    TabAlteradoEm: TDateTimeField;
    TabIncluidoPor: TStringField;
    TabAlteradoPor: TStringField;
    TabFidPontos: TFloatField;
    TabFidTotal: TFloatField;
    TabFidResg: TFloatField;
    TabAniversario: TStringField;
    TabSemFidelidade: TBooleanField;
    TabTemCredito: TBooleanField;
    TabInfoExtra: TWideStringField;
    TabTranspEntPadrao: TLongWordField;
    TabPJuridica: TBooleanField;
    TabConsumidor: TBooleanField;
    TabInativo: TBooleanField;
    TabValorCred: TCurrencyField;
    TabRecVer: TLongWordField;
    LMDSimplePanel1: TLMDSimplePanel;
    btnCancelar: TcxButton;
    btnSalvar: TcxButton;
    MTPref: TBooleanField;
    lbSalvarPadrao: TcxLabel;
    cxLabel1: TcxLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TVKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVNomeGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure lbNovoClick(Sender: TObject);
    procedure lbEditarClick(Sender: TObject);
    procedure lbExcluirClick(Sender: TObject);
    procedure TVDblClick(Sender: TObject);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure lbSalvarPadraoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure MTCalcFields(DataSet: TDataSet);
  private
    FOnAvancar: TNotifyEvent;
    FShowed : Boolean;
    
    function GetIDTransp: Cardinal;

    procedure Atualiza;
    procedure LoadMT;
  public
    procedure Valida;
    procedure AjustaFoco;
    procedure AddNaoDef;

    function ObtemTranspEndPadrao(var aID: Cardinal): Boolean;

    function TipoFor: Byte;
    
    procedure Load(aID: Cardinal);
    property IDTransp: Cardinal read GetIDTransp;
    property OnAvancar: TNotifyEvent
      read FOnAvancar write FOnAvancar;
  end;

  

var
  FrmPesqTranspEnt: TFrmPesqTranspEnt;

implementation

uses 
  ncaDM, 
  ufmImagens, 
  ncaFrmPri, 
  ncIDRecursos, 
  ncaFrmBRTrib, 
  uProxCampo, ncEndereco, ncGuidUtils, ncaFrmEndereco, umsg, ncaStrings,
  ncaFrmRecursoPRO, ncaFrmCadTranspEnt;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

procedure TFrmPesqTranspEnt.AddNaoDef;
begin
  MT.Append;
  MTID.Value := 0;
  MTNome.Value := ' '+rsNaoDefTranspEnt;
  MTTipoFor.Value := 0;
  MT.Post;
end;

procedure TFrmPesqTranspEnt.AjustaFoco;
begin
  if Grid.Visible then begin
    Grid.SetFocus;
    TV.Focused := True;
  end;
end;

procedure TFrmPesqTranspEnt.Atualiza;
begin
{  Grid.Visible := True;
  lbNovo.Enabled := Grid.Visible;
  lbEditar.Enabled := Grid.Visible;
  lbExcluir.Enabled := Grid.Visible;}
  lbSalvarPadrao.Visible := (not FShowed) and Dados.CM.UA.Admin and (not MT.IsEmpty) and (MTID.Value<>gConfig.TranspEntPadrao);
end;

procedure TFrmPesqTranspEnt.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmPesqTranspEnt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPesqTranspEnt.FormCreate(Sender: TObject);
begin
  FOnAvancar := nil;
  Tab.Open;
  Tab.SetRange([True], [True]);
  LoadMT;
end;

procedure TFrmPesqTranspEnt.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Esc   : ModalResult:=mrCancel;
    Key_F4    : ;
    Key_F9    : ;
  end;
end;

procedure TFrmPesqTranspEnt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then Key := #0;
end;

procedure TFrmPesqTranspEnt.FormShow(Sender: TObject);
begin
  Grid.SetFocus;
  TV.Focused := True;
  FShowed := True;
  lbSalvarPadrao.Visible := False;
end;

function TFrmPesqTranspEnt.GetIDTransp: Cardinal;
begin
  if MT.IsEmpty then
    Result := 0 else
    Result := MTID.Value;
end;

procedure TFrmPesqTranspEnt.lbEditarClick(Sender: TObject);
begin
  if not Tab.Locate('ID', MTID.Value, []) then Exit;
  if TFrmCadTranspEnt.Create(Self).Editar(Tab, nil) then begin
    Dados.CM.TableUpdated(idtab_transp);
  
    MT.Edit;
    MTNome.Value := TabNome.Value;
    MTTipoFor.Value := TabTipoFor.Value;
    MTID.Value := TabID.Value;
    MT.Post;
    Dados.tbCli.Refresh;
    Dados.tbCli.Locate('ID', TabID.Value, []); // do not localize
  end;    
end;

procedure TFrmPesqTranspEnt.lbExcluirClick(Sender: TObject);
begin
  if MT.IsEmpty then Exit;
  if MTID.Value=0 then Exit;
  
  if not NaoSim(rsConfirmaExcluir+' '+MTNome.Value+'?') then begin
    if Tab.Locate('ID', MTID.Value, []) then begin
      Tab.Delete;
      Dados.CM.TableUpdated(idtab_transp);
      MT.Delete;
    end;
  end;
end;

procedure TFrmPesqTranspEnt.lbNovoClick(Sender: TObject);
var aID: Integer;
begin
  aID := TFrmCadTranspEnt.Create(Self).Novo(Tab, nil);
  if aID>0 then begin
    Dados.CM.TableUpdated(idtab_transp);
    if not Tab.Locate('ID', aID, []) then Exit;
    if MT.IsEmpty then AddNaoDef;

    MT.Append;
    MTNome.Value := TabNome.Value;
    MTTipoFor.Value := TabTipoFor.Value;
    MTID.Value := aID;
    MT.Post;
    Dados.tbCli.Refresh;
    Dados.tbCli.Locate('ID', aID, []); // do not localize
    MT.Locate('ID', aID, []);
  end;  
end;

procedure TFrmPesqTranspEnt.lbSalvarPadraoClick(Sender: TObject);
begin
  gConfig.AtualizaCache;
  gConfig.TranspEntPadrao := MTID.Value;
  Dados.CM.SalvaAlteracoesObj(gConfig, True);
  Atualiza;
end;

procedure TFrmPesqTranspEnt.Load(aID: Cardinal);
begin
  if aID>0 then 
    MT.Locate('ID', aID, []) else
    MT.First;
  Atualiza;
end;

procedure TFrmPesqTranspEnt.LoadMT;
begin
  DS.Dataset := nil;
  with Dados do
  try
    MT.Active := False;
    MT.Open;

    if mtTransp.IsEmpty then Exit;
    
    AddNaoDef;
    mtTransp.First;
    while not mtTransp.Eof do begin
      MT.Append;
      MTID.Value := mtTranspID.Value;
      MTTipoFor.Value := mtTranspTipoFor.Value;
      MTNome.Value := Trim(mtTranspNome.Value);
      MT.Post;
      mtTransp.Next;
    end;
    MT.First;
  finally
    DS.Dataset := MT;
  end;
  Atualiza;
end;

procedure TFrmPesqTranspEnt.MTCalcFields(DataSet: TDataSet);
begin
  MTPref.Value := TRue;
end;

function TFrmPesqTranspEnt.ObtemTranspEndPadrao(var aID: Cardinal): Boolean;
begin
  Load(aID);
  ShowModal;
  if (ModalResult=mrOk) and (not MT.IsEmpty) then begin
    aID := MTID.Value;
    result := True;
  end else
    Result := False;
end;

function TFrmPesqTranspEnt.TipoFor: Byte;
begin
  if MT.IsEmpty then
    Result := 0 else
    Result := MTTipoFor.Value;
end;

procedure TFrmPesqTranspEnt.TVCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.Selected then ACanvas.Font.Style := [fsBold];
  AViewInfo.Text := Trim(AViewInfo.Text);
end;

procedure TFrmPesqTranspEnt.TVDblClick(Sender: TObject);
begin
  if MT.IsEmpty then Exit;
  
  if FShowed then
    ModalResult := mrOk 
  else
  if Assigned(FOnAvancar) then 
    FOnAvancar(Self);
end;

procedure TFrmPesqTranspEnt.TVFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Atualiza;
end;

procedure TFrmPesqTranspEnt.TVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Return : ModalResult := mrOk;
    VK_Escape : ModalResult := mrCancel;
  end;
end;

procedure TFrmPesqTranspEnt.TVNomeGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  AText := Trim(AText);
end;

procedure TFrmPesqTranspEnt.Valida;
begin
{  if MT.IsEmpty then 
    raise Exception.Create(rsSemTranspEnt);}
end;

initialization

finalization

end.

