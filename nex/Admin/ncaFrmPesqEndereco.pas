unit ncaFrmPesqEndereco;
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
  kbmMemTable, cxHyperLinkEdit;

type
  TFrmPesqEndereco = class(TForm)
    DS: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    Label1: TLabel;
    panPri: TLMDSimplePanel;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVFor: TcxGridDBTableView;
    TVForNome: TcxGridDBColumn;
    GL: TcxGridLevel;
    MT: TkbmMemTable;
    MTendereco_id: TGuidField;
    MTDadosEnd: TMemoField;
    TVDadosEnd: TcxGridDBColumn;
    panBusca: TLMDSimplePanel;
    lbExcluir: TcxLabel;
    lbEditar: TcxLabel;
    lbNovo: TcxLabel;
    MTimg: TByteField;
    TVimg: TcxGridDBColumn;
    TVColumn1: TcxGridDBColumn;
    lbRota: TcxLabel;
    lbGMaps: TcxLabel;
    lbCopiar: TcxLabel;
    procedure TVDblClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure lbNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbEditarClick(Sender: TObject);
    procedure TVKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MTAfterPost(DataSet: TDataSet);
    procedure MTAfterDelete(DataSet: TDataSet);
    procedure lbExcluirClick(Sender: TObject);
    procedure btnGmapsClick(Sender: TObject);
    procedure btnRotaClick(Sender: TObject);
    procedure lbCopiarClick(Sender: TObject);

  private
    { Private declarations }
    FCliente : Cardinal;
    FOnAvancar : TNotifyEvent;
  public
    procedure Valida;
    procedure AjustaFoco;
    
    function Pesquisar(aCliente: Cardinal; var aEnd: TGUID): Boolean;
    procedure Load(aCliente: Cardinal; aEnd: TGUID);

    property OnAvancar: TNotifyEvent
      read FOnAvancar write FOnAvancar;
  end;

  TFrmPesqEnderecoList = class
  private
    FList : TList;
  public
    constructor Create;
    destructor Destroy; override;

    function GetFrm: TFrmPesqEndereco;
    procedure ReleaseFrm(aFrm: TFrmPesqEndereco);  
  end;
  

var
  FrmPesqEndereco: TFrmPesqEndereco;
  gPesqEnderecoList : TFrmPesqEnderecoList;

implementation

uses 
  Clipbrd,
  ncaDM, 
  ufmImagens, 
  ncaFrmPri, 
  ncIDRecursos, 
  ncaFrmBRTrib, 
  uProxCampo, ncEndereco, ncGuidUtils, ncaFrmEndereco, umsg, ncaStrings,
  ncaFrmRecursoPRO;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

procedure TFrmPesqEndereco.FormCreate(Sender: TObject);
begin
  FCliente := 0;
  FOnAvancar := nil;
end;

procedure TFrmPesqEndereco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Enter : btnOkClick(nil);
    Key_Esc   : ModalResult:=mrCancel;
    Key_F4    : lbNovoClick(nil);
    Key_F9    : lbEditarClick(nil);
    Key_M     : if ssCtrl in Shift then btnGMapsClick(nil);
    Key_R     : if ssCtrl in Shift then btnRotaClick(nil);
    Key_E     : if ssCtrl in Shift then lbCopiarClick(nil);
  end;
end;

procedure TFrmPesqEndereco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then Key := #0;
end;

procedure TFrmPesqEndereco.FormShow(Sender: TObject);
begin
  TV.Focused := True;
end;

procedure TFrmPesqEndereco.lbCopiarClick(Sender: TObject);
var E: TncEndereco;
begin
  E := TncEndereco.Create;
  if Dados.AchaEnd(MTendereco_id.AsGuid) then
    try
      E.LoadFromDataset(Dados.tbEnd);
      Clipboard.AsText := E.Resumo;
    finally
      E.Free;
    end;  
end;

procedure TFrmPesqEndereco.lbEditarClick(Sender: TObject);
var E: TncEndereco;
begin
  if MT.IsEmpty then Exit;
  
  if Dados.EditEnd(MTendereco_id.AsGuid, False) then begin
    E := TncEndereco.Create;
    try
      E.LoadFromDataset(Dados.tbEnd);
      MT.Edit;
      MTdadosend.Value := sLinebreak+E.Resumo+sLineBreak+sLineBreak;
      MT.Post;
    finally
      E.Free;
    end;
  end;
end;

procedure TFrmPesqEndereco.lbExcluirClick(Sender: TObject);
var E: TncEndereco;
begin
  if MT.RecordCount<2 then Exit;
  if not Dados.AchaEnd(MTendereco_id.AsGuid) then Exit;

  E := TncEndereco.Create;
  try
    E.LoadFromDataset(Dados.tbEnd);
    if NaoSim(Format(rsConfirmaExcluir, [E.ResumoLinhaUnica])) then Exit;
    Dados.ApagaEnd(MTendereco_id.AsGuid, True);
    MT.Delete;
  finally
    E.Free;
  end;
end;

procedure TFrmPesqEndereco.lbNovoClick(Sender: TObject);
var E: TncEndereco;
begin
  E := TncEndereco.Create;
  try
    with Dados do
    if TFrmEndereco.Create(Self).Editar(E, False) then begin
      E.enCliente := FCliente;
      tbEnd.Append;
      E.SaveToDataset(tbEnd);
      tbEnd.Post;
      MT.Append;
      MTendereco_id.AsGuid := E.enID;
      MTdadosend.Value := sLineBreak+E.Resumo+sLineBreak+sLineBreak;
      MTimg.Value := 0;
      MT.Post;
    end;
  finally
    E.Free;
  end;
end;

procedure TFrmPesqEndereco.Load(aCliente: Cardinal; aEnd: TGUID);
var E : TncEndereco;
begin
  FCliente := aCliente;
  DS.Dataset := nil;
  E := TncEndereco.Create;
  with Dados do 
  try
    MT.Active := False;
    MT.Active := True;
    tbEnd.IndexName := 'I_cliente_pos';
    tbEnd.SetRange([aCliente], [aCliente]);
    try
      tbEnd.First;
      while not tbEnd.Eof do begin
        MT.Append;
        MTendereco_id.Value := tbEndendereco_id.Value;
        E.LoadFromDataset(tbEnd);
        MTDadosEnd.Value := sLineBreak+E.Resumo+sLineBreak+sLineBreak;
        MTimg.Value := 0;
        MT.Post;
        tbEnd.Next;
      end;
    finally
      tbEnd.CancelRange;
    end;
  finally
    E.Free;
    DS.Dataset := MT;  
  end;
  MT.First;

  if not TGuidEx.IsEmpty(aEnd) then MT.Locate('endereco_id', TGuidEx.ToString(aEnd), []);
end;

procedure TFrmPesqEndereco.MTAfterDelete(DataSet: TDataSet);
begin
  lbExcluir.Visible := (MT.RecordCount>1);
end;

procedure TFrmPesqEndereco.MTAfterPost(DataSet: TDataSet);
begin
  lbExcluir.Visible := (MT.RecordCount>1);
end;

function TFrmPesqEndereco.Pesquisar(aCliente: Cardinal; var aEnd: TGUID): Boolean;
begin
  Load(aCliente, aEnd);
  ShowModal;
  if (ModalResult=mrOk) and (not MT.IsEmpty) then begin
    aEnd := MTendereco_id.AsGuid;
    Result := True;
  end else
    Result := False;
end;

procedure TFrmPesqEndereco.AjustaFoco;
begin
  Grid.SetFocus;
  TV.Focused := True;
end;

procedure TFrmPesqEndereco.btnCancelClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFrmPesqEndereco.btnGmapsClick(Sender: TObject);
begin
  if not gConfig.IsPremium then begin
    TFrmRecursoPro.Create(Self).Mostrar(rsEndCliGMapsPRO, 'climapa');
    Exit;
  end;

  if MT.IsEmpty then Exit;
  Dados.OpenEndGMaps(MTendereco_id.AsGuid);
end;

procedure TFrmPesqEndereco.btnOkClick(Sender: TObject);
begin
//````  ModalResult := mrOk;
end;

procedure TFrmPesqEndereco.btnRotaClick(Sender: TObject);
begin
  if not gConfig.IsPremium then begin
    TFrmRecursoPro.Create(Self).Mostrar(rsEndCliGMapsPRO, 'climapa');
    Exit;
  end;

  if MT.IsEmpty then Exit;
  Dados.OpenEndGMaps(MTendereco_id.AsGuid, True);
end;

procedure TFrmPesqEndereco.TVDblClick(Sender: TObject);
begin
  if MT.IsEmpty then Exit;
  
  if Assigned(FOnAvancar) then FOnAvancar(Self);
end;

procedure TFrmPesqEndereco.TVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Return : ModalResult := mrOk;
    VK_Escape : ModalResult := mrCancel;
  end;
end;

procedure TFrmPesqEndereco.Valida;
begin
  if MT.IsEmpty then
    raise Exception.Create(rsSemEnderecos);
end;

{ TFrmPesqEnderecoList }

constructor TFrmPesqEnderecoList.Create;
begin
  FList := TList.Create;
end;

destructor TFrmPesqEnderecoList.Destroy;
begin
  while FList.Count>0 do begin
    TObject(FList[0]).Free;
    FList.Delete(0);
  end;
  FList.Free;

  inherited;
end;

function TFrmPesqEnderecoList.GetFrm: TFrmPesqEndereco;
begin
  if FList.Count>0 then begin
    Result := FList[0];
    FList.Delete(0);
  end else
    Result := TFrmPesqEndereco.Create(nil);
end;

procedure TFrmPesqEnderecoList.ReleaseFrm(aFrm: TFrmPesqEndereco);
begin
  FList.Add(aFrm);
end;

initialization
  gPesqEnderecoList := TFrmPesqEnderecoList.Create;

finalization
  gPesqEnderecoList.Free;  

end.

