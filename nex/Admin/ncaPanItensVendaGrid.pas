unit ncaPanItensVendaGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ncaPanItensVendaBase, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxMaskEdit, cxTextEdit, cxCurrencyEdit,
  cxSpinEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxGridCustomView, cxGrid, dxBar, ncMovEst, ImgList, LMDDckAlphaImages,
  dxBarExtItems, cxContainer, cxLabel, Menus, StdCtrls, cxButtons, ExtCtrls,
  ncMyImage, cxCheckBox, System.ImageList;

type
  
  TpanItensVendaGrid = class(TpanItensVendaBase)
    Grid: TcxGrid;
    TV: TcxGridTableView;
    TVCodigo: TcxGridColumn;
    TVDescr: TcxGridColumn;
    TVQuant: TcxGridColumn;
    TVvezes: TcxGridColumn;
    TVUnitario: TcxGridColumn;
    TVFidPontos: TcxGridColumn;
    TVIgual: TcxGridColumn;
    TVTotal: TcxGridColumn;
    TVFidPontosTotal: TcxGridColumn;
    GL: TcxGridLevel;
    BarMgr: TdxBarManager;
    TVIDProduto: TcxGridColumn;
    TVCancelado: TcxGridColumn;
    LMDAlphaImageList1: TLMDAlphaImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    panTop: TLMDSimplePanel;
    btnFontUp: TcxButton;
    lbItens: TcxLabel;
    btnFontDown: TcxButton;
    btnBold: TcxButton;
    TVItem: TcxGridColumn;
    cxStyle3: TcxStyle;
    Timer1: TTimer;
    cmRemover: TMyImage;
    imgs: TcxImageList;
    cmCancelar: TMyImage;
    lbMostrarCod: TcxLabel;
    pmPop: TdxBarPopupMenu;
    cmEditarProd: TdxBarButton;
    cmRemoverItem: TdxBarButton;
    panSubTotal: TLMDSimplePanel;
    cxLabel3: TcxLabel;
    lbSubTotal: TcxLabel;
    procedure TVDataControllerAfterDelete(
      ADataController: TcxCustomDataController);
    procedure TVQuantGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVvezesGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVIgualGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cmRemoverClick(Sender: TObject);
    procedure cmCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVPOSGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnFontUpClick(Sender: TObject);
    procedure btnFontDownClick(Sender: TObject);
    procedure btnBoldClick(Sender: TObject);
    procedure TVQuantCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure GridEnter(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure TVItemGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure GridResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TVDataControllerAfterPost(
      ADataController: TcxCustomDataController);
    procedure lbMostrarCodClick(Sender: TObject);
    procedure pmPopPopup(Sender: TObject);
    procedure cmEditarProdClick(Sender: TObject);
  private
    { Private declarations }
    FClicouBotao : TClicouBotao;
    FTotal : Currency;
    FQtdTotal : Extended;
    FEntrou : Boolean;
  protected

    procedure MyBestFit;

    procedure _SetResgateFidelidade; override;
    function FieldIndex(aName: String): Integer;
    function GetField(aIndex: Integer; aName: String): Variant; override;
    procedure SetField(aIndex: Integer; aName: String; const aValue: Variant); override;
    function GetCount: Integer; override;
    procedure SetCount(const Value: Integer); override;

    procedure SaveGridStyle;

    procedure UpdateTotal;

  public
    procedure DelItem(aIndex: Integer); override;
    procedure SetFontSize(aSize: Integer); override;

    procedure SetGap(aPixels: Integer); override;

    procedure BeginUpdate; override;
    procedure EndUpdate; override;
    
    function FocusedItemIndex: Integer; override;

    procedure Atualiza; override;

    procedure MostrarBotao(aBotao: TBotaoItemVenda; aMostrar: Boolean); override;

    function QuantProduto(aProduto: Integer): Double; override;

    procedure UpdateItens;

    property Total: Currency read FTotal;
    { Public declarations }
  end;

var
  panItensVendaGrid: TpanItensVendaGrid;

implementation

uses ufmImagens, ncClassesBase, ncaDM, ncaFrmPri, ncafbProdutos, ncaFrmProduto;

{$R *.dfm}


resourcestring
  SConfirmaCancelamento = 'Confirma realmente o cancelamento do item selecionado?';
  SQTdTotal = 'Quantidade Total:';
  sItem = 'Item';
  sItens = 'Itens';
  sMostrarCod = 'Mostrar C�digo';
  sNaoMostrarCod = 'N�o mostrar C�digo';
  

{ TpanItensVendaGrid }


procedure TpanItensVendaGrid.Atualiza;
begin
  inherited;
  TV.OptionsBehavior.IncSearch := True;
  TVFidPontos.Visible := ResgateFidelidade;
  TVFidPontosTotal.Visible := ResgateFidelidade;

  TVCodigo.Visible := (slConfig.Values['MostrarCodigo']='1');

  TVUnitario.Visible := (not ResgateFidelidade) and (TipoTran in [trEstVenda, trEstCompra]);
  TVTotal.Visible := (not ResgateFidelidade) and (TipoTran in [trEstVenda, trEstCompra]);
  TVIgual.Visible := (TipoTran in [trEstVenda, trEstCompra]);
  TVVezes.Visible := TVIgual.Visible;
  if ResgateFidelidade then begin
    TVFidPontos.Index := TVVezes.Index+1;
    TVFidPontosTotal.Index := TVIgual.Index+1;
  end;
  if slConfig.Values['MostrarCodigo']='1' then
    lbMostrarCod.Caption := sNaoMostrarCod else
    lbMostrarCod.Caption := sMostrarCod;
  MyBestFit;
end;

procedure TpanItensVendaGrid.BeginUpdate;
begin
  inherited;
  TV.BeginUpdate(lsimPending);
end;

procedure TpanItensVendaGrid.btnBoldClick(Sender: TObject);
begin
  inherited;
  if fsBold in Grid.Font.Style then
    Grid.Font.Style := Grid.Font.Style - [fsBold] else
    Grid.Font.Style := Grid.Font.Style + [fsBold];
  SaveGridStyle;  
end;

procedure TpanItensVendaGrid.btnFontDownClick(Sender: TObject);
begin
  inherited;
  Grid.Font.Size := Grid.Font.Size - 1;
  SaveGridStyle;
end;

procedure TpanItensVendaGrid.btnFontUpClick(Sender: TObject);
begin
  inherited;
  Grid.Font.Size := Grid.Font.Size + 1;
  SaveGridStyle;
end;

procedure TpanItensVendaGrid.cmCancelarClick(Sender: TObject);
begin
  inherited;
  if SimNao('Deseja realmente o item selecionado?') then
    if Assigned(OnClicouBotao) then
      OnClicouBotao(Self, bivCancelarItem); 
end;

procedure TpanItensVendaGrid.cmEditarProdClick(Sender: TObject);
var V: Variant;
begin
  inherited;
  V := TV.DataController.Values[FocusedItemIndex, TVIDProduto.Index];
  if (V<>null) then with Dados do if tbPro.Locate('ID', V, []) then
    TFrmProduto.Create(Self).Editar(tbPro);
end;

procedure TpanItensVendaGrid.cmRemoverClick(Sender: TObject);
begin
  inherited;
  if Assigned(OnClicouBotao) then
    OnClicouBotao(Self, bivRemoverItem);
end;

procedure TpanItensVendaGrid.DelItem(aIndex: Integer);
begin
  inherited;
  if aIndex=-1 then Exit;
  TV.DataController.DeleteRecord(aIndex);
  with TV.DataController do 
  if RecordCount>0 then begin
    cmRemover.Enabled := True;
    cmCancelar.Enabled := True;
    if aIndex < RecordCount then
      FocusedRecordIndex := aIndex else
      FocusedRecordIndex := RecordCount-1;
  end else begin
    cmRemover.Enabled := False;
    cmCancelar.Enabled := False;
  end;
  UpdateTotal;
end;

procedure TpanItensVendaGrid.EndUpdate;
begin
  inherited;
  TV.EndUpdate;
  UpdateTotal;
end;

function TpanItensVendaGrid.FieldIndex(aName: String): Integer;
var I: Integer;
begin
  for I := 0 to TV.ColumnCount-1 do with TV.Columns[I] do
   if SameText(Name, 'TV'+aName) then begin
     Result := Index;
     Exit;
   end;
  Result := -1;   
end;

function TpanItensVendaGrid.FocusedItemIndex: Integer;
begin
  Result := TV.DataController.FocusedRecordIndex;
end;

procedure TpanItensVendaGrid.FormCreate(Sender: TObject);
begin
  inherited;
  TV.OptionsView.Header := False;
  grid.Font.Size := StrToIntDef(slConfig.Values['panItensVendaGrid.Grid.Font.Size'], grid.Font.Size);
  if slConfig.Values['panItensVendaGrid.Grid.Font.Bold']='1' then
    Grid.Font.Style := [fsBold] else
    Grid.Font.Style := [];
  FTotal := 0;
  FEntrou := False;

  TcxCurrencyEditProperties(TVUnitario.Properties).DisplayFormat := gConfig.cxMaskUnitario;  
end;

function TpanItensVendaGrid.GetCount: Integer;
begin
  Result := TV.DataController.RecordCount;
end;

function TpanItensVendaGrid.GetField(aIndex: Integer; aName: String): Variant;
begin
  Result := TV.DataController.Values[aIndex, FieldIndex(aName)];
end;

procedure TpanItensVendaGrid.GridEnter(Sender: TObject);
begin
  inherited;
  FEntrou := True;
end;

procedure TpanItensVendaGrid.GridExit(Sender: TObject);
begin
  inherited;
  FEntrou := False;
end;

procedure TpanItensVendaGrid.GridResize(Sender: TObject);
begin
  inherited;
  MyBestFit;
end;

procedure TpanItensVendaGrid.lbMostrarCodClick(Sender: TObject);
begin
  inherited;
  if slConfig.Values['MostrarCodigo']='1' then
    slConfig.Values['MostrarCodigo'] := '0' else
    slConfig.Values['MostrarCodigo'] := '1';
  SaveConfig;
  Atualiza;
end;

procedure TpanItensVendaGrid.MostrarBotao(aBotao: TBotaoItemVenda;
  aMostrar: Boolean);
begin
  inherited;
  case aBotao of
    bivRemoverItem : cmRemover.Visible := aMostrar;
    bivCancelarItem : cmCancelar.Visible := aMostrar;
  end;
end;

procedure TpanItensVendaGrid.MyBestFit;
var wCod: Integer;

function ScrollWidth: Integer;
begin
  with TVDescr.GridView.Site.VScrollBar do
  if Visible then
    Result := Width else
    REsult := 0;
end;

begin
  TVCodigo.Visible := (slConfig.Values['MostrarCodigo']='1');
  
  TV.ApplyBestFit;

  if TVCodigo.Visible then wCod := TVCodigo.Width else wCod := 0;
  
  if ResgateFidelidade then
    TVDescr.Width := Grid.Width - 
                     wCod -
                     TVItem.Width - 
                     TVQuant.Width - 
                     TVVezes.Width - 
                     TVFidPontos.Width - 
                     TVIgual.Width - 
                     TVFidPontosTotal.Width - 
                     ScrollWidth
  else
  if TVUnitario.Visible then
    TVDescr.Width := Grid.Width - 
                     TVItem.Width - 
                     wCod - 
                     TVQuant.Width - 
                     TVVezes.Width - 
                     TVUnitario.Width - 
                     TVIgual.Width - 
                     TVTotal.Width - 
                     ScrollWidth
  else 
    TVDescr.Width := Grid.Width - 
                     TVItem.Width - 
                     wCod - 
                     TVQuant.Width - 
                     ScrollWidth;
   
end;

procedure TpanItensVendaGrid.pmPopPopup(Sender: TObject);
begin
  inherited;
  cmEditarProd.Enabled := (Count>0);
  cmRemoverItem.Enabled := cmEditarProd.Enabled;
end;

function TpanItensVendaGrid.QuantProduto(aProduto: Integer): Double;
var I, ixProduto, ixQuant: integer;
begin
  ixProduto := TVIDProduto.Index;
  ixQuant := TVQuant.Index;
  Result := 0;
  for I := 0 to Count - 1 do
  if aProduto=TV.DataController.Values[I, ixProduto] then
    Result := Result + TV.DataController.Values[I, ixQuant];
end;

procedure TpanItensVendaGrid.SaveGridStyle;
begin
  slConfig.Values['panItensVendaGrid.Grid.Font.Size'] := IntToStr(Grid.Font.Size);
  if fsBold in Grid.Font.Style then
    slConfig.Values['panItensVendaGrid.Grid.Font.Bold'] := '1' else
    slConfig.Values['panItensVendaGrid.Grid.Font.Bold'] := '0';
  SaveConfig; 
  MyBestFit; 
end;

procedure TpanItensVendaGrid.SetCount(const Value: Integer);
var I : integer;
begin
  TV.DataController.RecordCount := Value;
  UpdateTotal;
  cmRemover.Enabled := (Value>0);
  cmCancelar.Enabled := (Value>0);
end;

procedure TpanItensVendaGrid.SetField(aIndex: Integer; aName: String;
  const aValue: Variant);
var aField: Integer;  
begin
  inherited;
  with TV.DataController do begin
    aField:= FieldIndex(aName);
{    if SameText(aName, 'Descr') then
      Values[aIndex, aField] := IntToStr(aIndex+1)+'-'+aValue else}
      Values[aIndex, aField] := aValue;
    UpdateTotal;  
    TV.DataController.FocusedRecordIndex := aIndex;
  end;
  Timer1.Enabled := True;
end;

procedure TpanItensVendaGrid.SetFontSize(aSize: Integer);
begin
  inherited;
//  Grid.Font.Size := aSize;
end;

procedure TpanItensVendaGrid.SetGap(aPixels: Integer);
begin
  inherited;

end;

procedure TpanItensVendaGrid.Timer1Timer(Sender: TObject);
begin
  inherited;
  Timer1.Enabled := False;
  MyBestFit;
end;

procedure TpanItensVendaGrid.TVCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[TVCancelado.Index]=True then begin
    if (AViewInfo.Item<>TVIgual) and (AViewInfo.Item<>TVVezes) then
      ACanvas.Font.Style := ACanvas.Font.Style + [fsStrikeout];
    if AViewInfo.Selected and TV.Focused then
      ACanvas.Font.Color := clSilver else
      ACanvas.Font.Color := clGray;
  end;
end;

procedure TpanItensVendaGrid.TVDataControllerAfterDelete(
  ADataController: TcxCustomDataController);
begin
  inherited;
  cmRemover.Enabled := (TV.DataController.RecordCount>0);
  cmCancelar.Enabled := cmRemover.Enabled;
  UpdateTotal;
end;

procedure TpanItensVendaGrid.TVDataControllerAfterPost(
  ADataController: TcxCustomDataController);
begin
  inherited;
  UpdateTotal;
end;

procedure TpanItensVendaGrid.TVIgualGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := '=';
end;

procedure TpanItensVendaGrid.TVItemGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index+1);
end;

procedure TpanItensVendaGrid.TVPOSGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index+1);
//  while Length(AText)<5 do AText := '0'+AText;
end;

procedure TpanItensVendaGrid.TVQuantCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;

  if not (AViewInfo.GridRecord.Selected and FEntrou) then
    ACanvas.Font.Color := clBlue;
end;

procedure TpanItensVendaGrid.TVQuantGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  if TipoTran = trEstEntrada then 
    AText := '+'+AText 
  else
  if TipoTran = trEstSaida then
    AText := '-'+AText;
end;

procedure TpanItensVendaGrid.TVvezesGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := 'X';
end;

procedure TpanItensVendaGrid.UpdateItens;
begin
  with TV.DataController do begin
    if RecordCount>1 then 
      lbItens.Caption := IntToStr(RecordCount) + ' ' + sItens 
    else
    if RecordCount=0 then
      lbItens.Caption := 'Itens'
    else
      lbItens.Caption := IntToStr(RecordCount) + ' ' + sItem;

    if FQtdTotal>0.0001 then
      lbItens.Caption := lbItens.Caption + ' - ' + sQtdTotal + ' ' + QuantToStr(FQtdTotal);
      
    lbItens.Visible := True; //(RecordCount>0);
  end;
end;

procedure TpanItensVendaGrid.UpdateTotal;
var I : Integer;
begin
  if IsUpdating then Exit;
  
  FTotal := 0;
  FQtdTotal := 0;
  with TV.DataController do 
  for I := 0 to RecordCount - 1 do begin
    if (Values[I, TVTotal.Index]<>null) and (Values[I, TVCancelado.Index]<>True) then
      FTotal := FTotal + Values[I, TVTotal.Index];
    if (Values[I, TVQuant.Index]<>null) and (Values[I, TVCancelado.Index]<>True) then
      FQtdTotal := FQtdTotal + Values[I, TVQuant.Index];      
  end;    

  lbSubTotal.Caption := CurrencyToStr(FTotal);
  UpdateItens;
end;

procedure TpanItensVendaGrid._SetResgateFidelidade;
begin
  inherited;
  Atualiza;
end;

end.
