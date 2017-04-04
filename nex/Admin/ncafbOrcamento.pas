unit ncafbOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmFormBase, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxBar, dxPSCore, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxClasses, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  nxdb, cxSpinEdit, cxImageComboBox, cxCalendar, frxClass, frxDBSet,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk,
  dxDateTimeWheelPicker;

type
  TfbOrcamento = class(TFrmBase)
    Tab: TnxTable;
    TabUID: TGuidField;
    TabIDSeq: TAutoIncField;
    TabCriadoEm: TDateTimeField;
    TabAtualizadoEm: TDateTimeField;
    TabVendidoEm: TDateTimeField;
    TabFunc: TStringField;
    TabTotal: TCurrencyField;
    TabDesconto: TCurrencyField;
    TabTotalFinal: TCurrencyField;
    TabObs: TnxMemoField;
    TabNomeCliente: TWideStringField;
    TV: TcxGridDBTableView;
    GL: TcxGridLevel;
    Grid: TcxGrid;
    DS: TDataSource;
    TVIDSeq: TcxGridDBColumn;
    TVCriadoEm: TcxGridDBColumn;
    TVAtualizadoEm: TcxGridDBColumn;
    TVVendidoEm: TcxGridDBColumn;
    TVValData: TcxGridDBColumn;
    TVIDVenda: TcxGridDBColumn;
    TVTotal: TcxGridDBColumn;
    TVDesconto: TcxGridDBColumn;
    TVTotalFinal: TcxGridDBColumn;
    TVObs: TcxGridDBColumn;
    TVNomeCliente: TcxGridDBColumn;
    TabNomeFunc: TStringField;
    cmAprovar: TdxBarLargeButton;
    cmRecusar: TdxBarLargeButton;
    cmVender: TdxBarLargeButton;
    cmImprime: TdxBarLargeButton;
    cmEmail: TdxBarLargeButton;
    TabAprovadoEm: TDateTimeField;
    TabRecusadoEm: TDateTimeField;
    TabExpiradoEm: TDateTimeField;
    TabVendido: TBooleanField;
    TabStatusAlteradoEm: TDateTimeField;
    TVUID: TcxGridDBColumn;
    TVNomeFunc: TcxGridDBColumn;
    TVStatus: TcxGridDBColumn;
    TVAprovadoEm: TcxGridDBColumn;
    TVRecusadoEm: TcxGridDBColumn;
    TVExpiradoEm: TcxGridDBColumn;
    TVStatusAlteradoEm: TcxGridDBColumn;
    tItens: TnxTable;
    TabStatus: TByteField;
    TabIDVenda: TLongWordField;
    TabCliente: TLongWordField;
    TabValData: TDateTimeField;
    TabValModo: TByteField;
    TabValTempo: TWordField;
    TabValUTempo: TByteField;
    procedure TVCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure cmEditarClick(Sender: TObject);
    procedure cmNovoClick(Sender: TObject);
    procedure TVIDVendaGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cmAprovarClick(Sender: TObject);
    procedure cmRecusarClick(Sender: TObject);
    procedure TVTotalFinalCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVDescontoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cmVenderClick(Sender: TObject);
    procedure TVStatusCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cmImprimeClick(Sender: TObject);
    procedure TVDescontoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cmEmailClick(Sender: TObject);
    procedure cmApagarClick(Sender: TObject);
    procedure cmCfgClick(Sender: TObject);
    procedure TVDblClick(Sender: TObject);
    procedure TVColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
  private
    { Private declarations }
    procedure CriaDMOrc;
  public
    { Public declarations }
    class function Descricao: String; override;
    procedure FiltraDados; override;

    procedure AtualizaDireitos; override;
    

    procedure processKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); override;
    
  end;

resourcestring
  rsRecursoPROEmailOrc = 'O envio de orçamentos por e-mail é um recurso exclusivo dos assinantes do plano PRO e PREMIUM do programa Nex.';
  rsOrcamentoPRO = 'O gerenciamento de orçamentos é um recurso exclusivo dos assinantes do plano PRO ou PREMIUM.';

var
  fbOrcamento: TfbOrcamento;

implementation

uses ncaDM, ncaFrmPri, ncaFrmOrcamento, ncMovEst, ncClassesBase, ufmImagens,
  ncaFrmME2, ncaDMorc, ncKiteApi, ncaFrmAposOrc, ncaFrmImpOrcamento,
  ncaFrmRecursoPRO, ncIDRecursos, ncaFrmConfig_Orcamento, ncaStrings,
  ncaFrmNFCeCancelarHomo, ncaFrmNFCeImpedirDeslig;

{$R *.dfm}

resourcestring
  rsJaFoiAprovado = 'Esse orçamento já foi aprovado';
  rsJaFoiVendido  = 'Já foi realizado a venda para esse orçamento';
  rsApagarOrcamento = 'Deseja reamente apagar o orçamento selecionado?';
  rsConfirmaAprovar = 'Deseja realmente aprovar o orçamento para';
  rsConfirmaRecusar = 'Deseja realmente marcar como recusado o orçamento para';
  

procedure TfbOrcamento.AtualizaDireitos;
begin
  inherited;
  TVDesconto.Caption := rsDesconto;
  
  if Tab.Active then
    Tab.Refresh;
  cmApagar.Enabled := Permitido(daOrcExcluir);
end;

procedure TfbOrcamento.cmApagarClick(Sender: TObject);
begin
  inherited;
  if Tab.IsEmpty then Exit;

  tItens.Open;

  with Dados do
  if SimNaoH(rsApagarOrcamento, FrmPri.Handle, True) then begin
    InitTran(DB, [Tab, tItens], True);
    try
      while tItens.FindKey([TabUID.Value]) do tItens.Delete;
      Tab.Delete;
      DB.Commit;
    except
      DB.Rollback;
      raise;
    end;
  end;
  
end;

procedure TfbOrcamento.cmAprovarClick(Sender: TObject);
begin
  inherited;
  if Tab.isEmpty then Exit;
  
  case TabStatus.Value of
    orcamento_aprovado : raise exception.Create(rsJaFoiAprovado);
    orcamento_vendido  : raise exception.Create(rsJaFoiVendido);
  end;

  if SimNao(rsConfirmaAprovar+' '+TabNomeCliente.Value+'?') then begin
    Tab.Edit;
    TabStatus.Value := orcamento_aprovado;
    Tab.Post;
    Tab.Refresh;
  end;
end;

procedure TfbOrcamento.cmCfgClick(Sender: TObject);
begin
  inherited;
  TFrmConfig_Orcamento.Create(Self).Editar(False);
end;

procedure TfbOrcamento.cmEditarClick(Sender: TObject);
begin
  inherited;
  if Tab.IsEmpty then Exit;
  
  if TFrmOrcamento.Create(Self).Editar(TabUID.Value) then
    Tab.Refresh;
end;

procedure TfbOrcamento.cmEmailClick(Sender: TObject);
begin
  inherited;
  
  if not gConfig.IsPremium then begin
    TFrmRecursoPro.Create(Self).Mostrar(rsRecursoProEmailOrc, 'email_orcamento');
    Exit;
  end;

  if Tab.IsEmpty then Exit;
  
  
  CriaDMOrc;
    
  TFrmAposOrc.Create(Self).Editar(Tab, True);
end;

procedure TfbOrcamento.cmNovoClick(Sender: TObject);
var S: String;
begin
  inherited;
  
  if not gConfig.IsPremium then begin
    TFrmRecursoPro.Create(Self).Mostrar(rsOrcamentoPRO, 'Orcamento');
    Exit;
  end;
  
  S := TFrmOrcamento.Create(Self).Novo;
  if S>'' then 
  if Tab.Locate('UID', S, []) then begin
    CriaDMOrc;
    TFrmAposOrc.Create(Self).Editar(Tab, False);
  end;
end;

procedure TfbOrcamento.cmRecusarClick(Sender: TObject);
begin
  inherited;
  if Tab.isEmpty then Exit;

  case TabStatus.Value of
    orcamento_vendido  : raise exception.Create(rsJaFoiVendido);
  end;

  if SimNao(rsConfirmaRecusar+' '+TabNomeCliente.Value+'?') then begin
    Tab.Edit;
    TabStatus.Value := orcamento_recusado;
    Tab.Post;
    Tab.Refresh;
  end;
end;

procedure TfbOrcamento.cmVenderClick(Sender: TObject);
var IDVenda : Cardinal;
begin
  inherited;
  if Tab.isEmpty then Exit;

  case TabStatus.Value of
    orcamento_vendido  : raise exception.Create(rsJaFoiVendido);
  end;

  if TFrmNFCeCancelarHomo.ExisteVendaHomo('Cancele a venda realizada para poder realizar outra venda.') then Exit;
  if not TFrmNFCeImpedirDeslig.PodeVender then Exit;

  IDVenda := TFrmME2.Create(Self).VenderOrcamento(TabUID.Value);

  if IDVenda>0 then begin
    Tab.Edit;
    TabIDVenda.Value := IDVenda;
    TabStatus.Value := orcamento_vendido;
    Tab.Post;
    Tab.Refresh;
  end;

  
end;

procedure TfbOrcamento.CriaDMOrc;
begin
  if dmOrc=nil then
    Application.CreateForm(TdmOrc, dmOrc);
end;

class function TfbOrcamento.Descricao: String;
begin
  Result := 'Orçamentos';
end;

procedure TfbOrcamento.cmImprimeClick(Sender: TObject);
begin
  inherited;

  if Tab.IsEmpty then Exit;
  
  CriaDMOrc;

  if dmOrc.Tab.Locate('UID', TabUID.Value, []) then 
    TFrmImprimeOrcamento.Create(Self).ShowModal;
end;

procedure TfbOrcamento.FiltraDados;
begin
  inherited;
  Tab.Active := True;
end;

procedure TfbOrcamento.processKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    Key_F2 : cmAprovar.Click;
    Key_F3 : cmRecusar.Click;
    Key_F4 : cmVender.Click;
  end;
end;

procedure TfbOrcamento.TVColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  inherited;
  TV.DataController.DataModeController.GridMode := False;
end;

procedure TfbOrcamento.TVCustomDrawColumnHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
begin
  inherited;
  FrmPri.CustomDrawGridHeader(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TfbOrcamento.TVDblClick(Sender: TObject);
begin
  inherited;
  if cmEditar.Enabled then cmEditar.Click;
end;

procedure TfbOrcamento.TVDescontoCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Text>'' then begin
    ACanvas.Brush.Color := clWhite;
    ACanvas.Font.Color := clRed;
    ACanvas.Font.Style := [fsbOld];
  end;
end;

procedure TfbOrcamento.TVDescontoGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[TVDesconto.Index];
  if VarIsNull(V) or (V=0) then AText := '';
end;

procedure TfbOrcamento.TVIDVendaGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if AText='0' then AText := '';
end;

procedure TfbOrcamento.TVStatusCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var V: Variant;  
begin
  inherited;

  V := AViewInfo.GridRecord.Values[TVStatus.Index];
  if (not VarIsNull(V)) and (V=orcamento_vendido) then
    ACanvas.Font.Style := [fsBold];

end;

procedure TfbOrcamento.TVTotalFinalCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Font.Style := [fsBold];
end;

end.











