unit ncaFrmProdPesq;
{
    ResourceString: Dario 11/03/13
}

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
  cxContainer, cxLabel, Buttons, StdCtrls, cxRadioGroup, Menus,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  cxLookAndFeels, cxLookAndFeelPainters, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, cxNavigator,
  dxPScxPivotGridLnk, uNexTransResourceStrings_PT, cxButtons, ImgList, cxImage,
  cxDBEdit, LMDPNGImage, cxPCdxBarPopupMenu, cxPC, dxBarBuiltInMenu,
  System.ImageList, SpTBXFormPopupMenu;

type
  TFrmProdPesq = class(TForm)
    PopupMenu1: TPopupMenu;
    TimerSync: TTimer;
    panPri: TLMDSimplePanel;
    edBusca: TcxMaskEdit;
    BarMgr: TdxBarManager;
    cmCadRapido: TdxBarLargeButton;
    styleRep: TcxStyleRepository;
    cxsVermelho: TcxStyle;
    cxsVerde: TcxStyle;
    cmBuscando: TdxBarLargeButton;
    cxImageList1: TcxImageList;
    cxsNegrito: TcxStyle;
    dsProdD: TDataSource;
    tAux: TnxTable;
    Paginas: TcxPageControl;
    tsBusca: TcxTabSheet;
    LMDSimplePanel1: TLMDSimplePanel;
    cxDBImage1: TcxDBImage;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVCodigo: TcxGridDBColumn;
    TVDescricao: TcxGridDBColumn;
    TVUnid: TcxGridDBColumn;
    TVPreco: TcxGridDBColumn;
    TVImagem: TcxGridDBColumn;
    TVCategoria: TcxGridDBColumn;
    TVFornecedor: TcxGridDBColumn;
    TVEstoqueAtual: TcxGridDBColumn;
    TVCustoUnitario: TcxGridDBColumn;
    TVFor: TcxGridDBTableView;
    TVForNome: TcxGridDBColumn;
    GL: TcxGridLevel;
    tsCadRapido: TcxTabSheet;
    panCadRapido: TLMDSimplePanel;
    btnSalvar: TcxButton;
    LMDSimplePanel2: TLMDSimplePanel;
    cxLabel4: TcxLabel;
    edCod: TcxTextEdit;
    LMDSimplePanel3: TLMDSimplePanel;
    cxLabel1: TcxLabel;
    edDescr: TcxTextEdit;
    LMDSimplePanel4: TLMDSimplePanel;
    cxLabel2: TcxLabel;
    edPreco: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cbSuperBusca: TcxCheckBox;
    cxLabel6: TcxLabel;
    Tab: TnxTable;
    TabID: TUnsignedAutoIncField;
    TabPreco: TCurrencyField;
    TabPrecoAuto: TBooleanField;
    TabMargem: TFloatField;
    TabImagem: TGraphicField;
    TabFornecedor: TLongWordField;
    TabEstoqueAtual: TFloatField;
    TabCustoUnitario: TCurrencyField;
    TabPodeAlterarPreco: TBooleanField;
    TabPermiteVendaFracionada: TBooleanField;
    TabNaoControlaEstoque: TBooleanField;
    TabEstoqueMin: TFloatField;
    TabEstoqueMax: TFloatField;
    TabAbaixoMin: TBooleanField;
    TabAbaixoMinDesde: TDateTimeField;
    TabEstoqueRepor: TFloatField;
    TabComissaoPerc: TFloatField;
    TabComissaoLucro: TBooleanField;
    TabAtivo: TBooleanField;
    TabFidelidade: TBooleanField;
    TabFidPontos: TIntegerField;
    TabCadastroRapido: TBooleanField;
    TabIncluidoEm: TDateTimeField;
    TabRecVer: TLongWordField;
    dsTab: TDataSource;
    TabEstoquePend: TFloatField;
    TabEstoqueTot: TFloatField;
    TabNCM: TStringField;
    btnCancelar: TcxButton;
    cxStyle1: TcxStyle;
    Tabbrtrib: TWordField;
    TabPesoBruto: TFloatField;
    TabPesoLiq: TFloatField;
    Tabtax_id: TLongWordField;
    TabNCM_Ex: TStringField;
    Tabcest: TLongWordField;
    TabmodST: TByteField;
    TabMVA: TnxMemoField;
    TabPauta: TnxMemoField;
    cbComEstoque: TcxCheckBox;
    TabUID: TGuidField;
    TabMarca: TGuidField;
    TabCodigo: TWideStringField;
    TabDescricao: TWideStringField;
    TabUnid: TWideStringField;
    TabObs: TWideMemoField;
    TabCategoria: TWideStringField;
    TabAlteradoEm: TDateTimeField;
    TabAlteradoPor: TStringField;
    tAuxCodigo: TWideStringField;
    TabNomeMarca: TWideStringField;
    TabCodigo2: TWideStringField;
    TVCodigo2: TcxGridDBColumn;
    tAux2: TnxTable;
    tAux2Codigo2: TWideStringField;
    TabCodigoNum: TLongWordField;
    TabCodigo2Num: TLongWordField;
    tAux3: TnxTable;
    tAux3Codigo: TWideStringField;
    tAux3CodigoNum: TLongWordField;
    procedure edBuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edBuscaPropertiesChange(Sender: TObject);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure GridEnter(Sender: TObject);
    procedure GridExit(Sender: TObject);

    procedure TimerSyncTimer(Sender: TObject);
    procedure TVDblClick(Sender: TObject);
    procedure cmEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmCadRapidoClick(Sender: TObject);
    procedure TVCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cmConfigClick(Sender: TObject);
    procedure TVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnSalvarClick(Sender: TObject);
    procedure edCodPropertiesChange(Sender: TObject);
    procedure edCodPropertiesEditValueChanged(Sender: TObject);
    procedure TVCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure edCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edDescrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPrecoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSalvarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbSuperBuscaClick(Sender: TObject);
    procedure edCodKeyPress(Sender: TObject; var Key: Char);
    procedure edDescrKeyPress(Sender: TObject; var Key: Char);
    procedure edPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure TVKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaginasChange(Sender: TObject);
    procedure TVPrecoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnCancelarClick(Sender: TObject);
    procedure cbComEstoqueClick(Sender: TObject);
    procedure TVColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure TVColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    
  private
    { Private declarations }
    FEntrou : Boolean;
    FIgnoreChange : Boolean;
    FNewCod : String;
    FQuickCadStatus : Byte; //  0 - nao achou produto, 1 - achou, 2 - achou mas usuário alterou
    FRecCount : Integer;
    FAchouPorDescr: Boolean;
    FAchouParcial: Boolean;

    function ECodigo(S: String): Boolean;

    function ECodigo2(S: String): Boolean;

    function ECodigoNum(S: String): Boolean;
   
    procedure MostrarCadRapido(aMostrar: Boolean);
    procedure ClearCadRapido;

    procedure TryQuickCad;

    procedure ChecaSalvar;

    procedure LeLayout;

    procedure SalvaLayout;

    procedure AjustaTamanhoForm;

    procedure wmSyncClose(var Msg: TMessage);
      message wm_user;
    

    procedure wmAtualizaDireitosConfig(var Msg: TMessage);
      message wm_atualizadireitosconfig;
  public
    procedure Reset;

    function InCadRapido: Boolean;

    procedure AtualizaDireitos;

    procedure AfterPopup;

    property RecCount: Integer read FRecCount;

    property AchouPorDescr: Boolean
      read FAchouPorDescr;

    property AchouParcial: Boolean
      read FAchouParcial;  

    property IgnoreChange: Boolean
      read FIgnoreChange write FIgnoreChange;

  end;

resourcestring
  SOpcoesCadRapido = 'Opções para cadastro rápido de produtos';

var
  FrmProdPesq: TFrmProdPesq;

implementation

uses ncaDM, 
  ufmImagens, 
  ncaFrmPri, 
  ncIDRecursos, 
  ncaPanVendaProd2,
  ncaFrmProduto, ncaFrmOpcoes, ncaFrmConfigQuickCad, ncaFrmConfigAutoCad,
  ncaStrings;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

procedure TFrmProdPesq.GridEnter(Sender: TObject);
begin
  FEntrou := True;
//  TFrmPanVendaProd2(Owner).TimerFocusProd.Enabled := True;
end;

procedure TFrmProdPesq.GridExit(Sender: TObject);
begin
  FEntrou := False;
end;

function TFrmProdPesq.InCadRapido: Boolean;
begin
  Result := (Paginas.ActivePageIndex=1);
end;

procedure TFrmProdPesq.LeLayout;
begin
  ncaDM.LeLayout(Grid, 'especial');
end;

procedure TFrmProdPesq.MostrarCadRapido(aMostrar: Boolean);
begin
  if (cmCadRapido.Visible=ivNever) then aMostrar := False;

  if gConfig.IsPremium then
  if gConfig.CodBarBal and (Copy(edBusca.Text, 1, 1)=gConfig.CodBarBalIdent) then 
    aMostrar := False;

  Paginas.ActivePageIndex := Integer(aMostrar);  
end;

type THackPopup = class ( TSpTBXFormPopupMenu );

procedure TFrmProdPesq.PaginasChange(Sender: TObject);
begin
  AjustaTamanhoForm;
end;

procedure TFrmProdPesq.Reset;
begin
  if Tab.active then begin
    FAchouPorDescr := False;
    FAchouParcial := False;
    Tab.DisableControls;
    try
      edBusca.Clear;
      Tab.IndexName := 'IDescricao';
      Tab.CancelRange;
      Tab.First;
    finally
      Tab.EnableControls;
    end;
  end;
end;
        
procedure TFrmProdPesq.SalvaLayout;
begin
  ncaDM.SalvaLayout(Grid, 'especial');
end;

procedure TFrmProdPesq.AfterPopup;
begin
  AjustaTamanhoForm;
end;

procedure TFrmProdPesq.btnCancelarClick(Sender: TObject);
begin
  with TFrmPanVendaProd2(Owner) do
    Popped := False;
end;

procedure TFrmProdPesq.btnSalvarClick(Sender: TObject);
var 
  aID: Cardinal;
  K : Word;
begin

  if Trim(edCod.Text)='' then begin
    edCod.SetFocus;
    raise Exception.Create(rsCodObrig);
  end;
    
  if Trim(edDescr.Text)='' then begin
    edDescr.SetFocus;
    raise Exception.Create(rsDescrObrig);
  end;

  if edPreco.Value<0.0001 then begin
    edPreco.SetFocus;
    raise Exception.Create(rsPrecoObrig);
  end;

  if Dados.tbPro.Locate('Codigo', edCod.Text, []) then
    raise Exception.Create(rsCodRepetido);
    
  Tab.CancelRange;
  with dados do begin
    tbPro.Insert;
    tbProCodigo.Value := edCod.Text;
    tbProDescricao.Value := edDescr.Text;
    tbProPreco.Value := edPreco.Value;
    tbProCadastroRapido.Value := True;
    tbPro.Post;
    aID := tbProID.Value;
  end;

  try FrmPri.refreshRevisarCadProduto; except end;

  MostrarCadRapido(False);

  Reset;
  Tab.Locate('ID', aID, []);

  with TFrmPanVendaProd2(Owner) do begin
    Popped := False;
    K := Key_Enter;
    edProdKeyDown(Sender, K, []);
  end;
//  PostMessage(Handle, wm_user, 0, 0);
end;

procedure TFrmProdPesq.btnSalvarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_UP then edPreco.SetFocus;
end;

procedure TFrmProdPesq.cbComEstoqueClick(Sender: TObject);
begin
  saveFormOptionBool(Self, 'comestoque', cbComEstoque.Checked);
  if cbComEstoque.Checked then begin
    Tab.Filter := '(EstoqueAtual > 0) or (NaoControlaEstoque=True)';
    Tab.Filtered := True;
  end else begin
    Tab.Filter := '';
    Tab.Filtered := False;
  end;
end;

procedure TFrmProdPesq.cbSuperBuscaClick(Sender: TObject);
begin
  if not cbSuperBusca.Focused then Exit;

  saveFormOptionBool(Self, 'superbusca', cbSuperBusca.Checked);

  if cbSuperBusca.Checked then begin
    cbSuperBusca.Style.BorderColor := clBlack;
    cbSuperBusca.Style.TextColor := clBlack;
  end else begin
    cbSuperBusca.Style.BorderColor := clGray;
    cbSuperBusca.Style.TextColor := clGray;
  end;

  TFrmPanVendaProd2(Owner).EnableTimerFocoProd('TFrmProdPesq.cbSuperBuscaClick');
  edBuscaPropertiesChange(nil);
end;

procedure TFrmProdPesq.ChecaSalvar;
begin
  if Trim(edCod.Text)='' then Exit;
  if Trim(edDescr.Text)='' then Exit;
  if edPreco.Value<0.0001 then Exit;
  btnSalvarClick(nil);
end;

procedure TFrmProdPesq.ClearCadRapido;
begin
  edCod.Text := '';
  edDescr.Text := '';
  edPreco.Clear;
  FQuickCadStatus := 0;
end;

procedure TFrmProdPesq.cmCadRapidoClick(Sender: TObject);
begin
  MostrarCadRapido(cmCadRapido.Down);
  if panCadRapido.Visible  then
    edCod.SetFocus;
end;

procedure TFrmProdPesq.cmConfigClick(Sender: TObject);
begin
  TFrmOpcoes.Create(Self).Editar(SOpcoesCadRapido, [TFrmConfigQuickCad, TFrmConfigAutocad], True);
end;

procedure TFrmProdPesq.cmEditarClick(Sender: TObject);
begin
  if Tab.IsEmpty then Exit;
  TFrmProduto.Create(Self).Editar(Tab);  
end;

function TFrmProdPesq.ECodigo(S: String): Boolean;
begin
  tAux.FindNearest([S]);
  Result := (not tAux.IsEmpty) and SameTextSemAcento(Copy(tAuxCodigo.Value, 1, Length(S)), S);

  if Result then begin
    Tab.IndexName := 'ICodigo';
    Tab.SetRange([S], [S+'zzzzzzzzzzz']);
  end;
end;

function TFrmProdPesq.ECodigo2(S: String): Boolean;
begin
  tAux2.FindNearest([S]);
  Result := (not tAux2.IsEmpty) and SameTextSemAcento(Copy(tAux2Codigo2.Value, 1, Length(S)), S);

  if Result then begin
    Tab.IndexName := 'ICodigo2';
    Tab.SetRange([S], [S+'zzzzzzzzzzz']);
  end;
end;

function TFrmProdPesq.ECodigoNum(S: String): Boolean;
var C: Cardinal;
begin
  C := StrToIntDef(S, 0);
  Result := (C>0) and tAux3.FindKey([C]);

  if Result then begin
    Tab.IndexName := 'ICodigoNum';
    Tab.SetRange([C], [C]);
  end;
end;

procedure TFrmProdPesq.edBuscaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP : begin
      Tab.Prior;
      with TFrmPanVendaProd2(Owner) do begin
        Popped := True;
        IDProd := TabID.Value;
        UpdateProdEdit(True);
      end;
    end;
    VK_Down : begin
      Tab.Next;
      with TFrmPanVendaProd2(Owner) do begin
        Popped := True;
        IDProd := TabID.Value;     
        UpdateProdEdit(True);
      end;
    end;
    VK_Return : begin
      with TFrmPanVendaProd2(Owner) do begin
        Popped := False;
        if (IDProd=0) then 
          TimerSync.Enabled := True;
      end;
    end;
    VK_Escape : begin
//      TFrmCli(Owner).pmCli.ClosePopup(True);
    end;
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

function SoTemDig(S: String): Boolean;
var I : Integer;
begin
  Result := False;
  for I := 1 to Length(S) do
    if not (S[I] in ['0'..'9']) then Exit;
  Result := True;
end;

procedure TFrmProdPesq.edBuscaPropertiesChange(Sender: TObject);
var I : Integer;
begin
  if TFrmPanVendaProd2(Owner).IgnoreChange then Exit;

  if not ECodigo(edBusca.Text) then 
  if not ECodigo2(edBusca.Text) then
  if not ECodigoNum(edBusca.Text) then begin
    if (Trim(edBusca.Text)='') or (not cbSuperBusca.Checked) then
      Tab.IndexName := 'IDescricao' else
      Tab.IndexName := 'ISuperBusca';
    Tab.SetRange([edBusca.text], [edBusca.Text + 'zzzzzzzzzzzzzzzzzzzzzz']); // do not localize
  end;  
  I := Tab.RecordCount;
  FRecCount := I;
  if edBusca.Text>'' then begin
    MostrarCadRapido((I=0));
    ClearCadRapido;
    if I=0 then begin
//      cmBuscando.Style := cxsNegrito;
      if SoTemDig(edBusca.Text) then
        edCod.Text := Trim(edBusca.Text) else
        edDescr.Text := Trim(edBusca.Text);
      cmBuscando.LargeImageIndex := 1;
      cmBuscando.Caption := 'Nenhum produto encontrado com ' + cmBuscando.Caption;
    end else begin
      if SameText('ICodigo', Tab.IndexName) then begin
        FAchouPorDescr := False;
        FAchouParcial := (FRecCount>0) and (not SameText(edBusca.Text, TabCodigo.Value));
      end else
      if SameText('ICodigo2', Tab.IndexName) then begin
        FAchouPorDescr := False;
        FAchouParcial := (FRecCount>0) and (not SameText(edBusca.Text, TabCodigo2.Value));
      end else 
      if SameText('ICodigoNum', Tab.IndexName) then begin
        FAchouPorDescr := False;
        FAchouParcial := False;
      end else 
      begin
        FQuickCadStatus := 0;
        FAchouPorDescr := True;
        FAchouParcial := (FRecCount>0) and (not SameText(edBusca.Text, TabDescricao.Value));
      end;
      cmBuscando.LargeImageIndex := 0;
//      cmBuscando.Style := cxsNegrito;
      if I>1 then
        cmBuscando.Caption := IntToStr(I) + ' produtos encontrados com ' + cmBuscando.Caption else
        cmBuscando.Caption := IntToStr(I) + ' produto encontrado com ' + cmBuscando.Caption;
    end;
  end else begin
    FRecCount := 0;
    FAchouParcial := False;
    FAchouPorDescr := False;
    ClearCadRapido;
    MostrarCadRapido(False);
    cmBuscando.LargeImageIndex := 2;
    cmBuscando.Style := nil;
    cmBuscando.Caption := IntToStr(I) + ' produtos';
  end;
end;

procedure TFrmProdPesq.edCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_DOWN, KEY_Enter : begin
      edCod.PostEditValue;
      edDescr.SetFocus;
      ChecaSalvar;
    end;
    VK_UP : TFrmPanVendaProd2(Owner).EnableTimerFocoProd('TFrmProdPesq.edCodKeyDown');
  end;
end;

procedure TFrmProdPesq.edCodKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then Key := #0;
end;

procedure TFrmProdPesq.edCodPropertiesChange(Sender: TObject);
begin
  edCod.PostEditValue;
end;

procedure TFrmProdPesq.edCodPropertiesEditValueChanged(Sender: TObject);
begin
  TryQuickCad;
end;

procedure TFrmProdPesq.edDescrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_DOWN, KEY_Enter : begin
      edDescr.PostEditValue;
      edPreco.SetFocus;
      ChecaSalvar;
    end;
    VK_UP : edCod.SetFocus;
  end;
end;

procedure TFrmProdPesq.edDescrKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then Key := #0;
end;

procedure TFrmProdPesq.edPrecoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_DOWN, KEY_Enter : begin
      edPreco.PostEditValue;
      btnSalvar.SetFocus;
      ChecaSalvar;
    end;
    VK_UP : edDescr.SetFocus;
  end;
end;

procedure TFrmProdPesq.edPrecoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then Key := #0;
end;

procedure TFrmProdPesq.FormCreate(Sender: TObject);
begin
  LeLayout;
  TcxCurrencyEditProperties(TVPreco.Properties).DisplayFormat := gConfig.cxMaskUnitario;
  FIgnoreChange := False;
  FRecCount := 0;
  FAchouPorDescr := False;
  FAchouParcial := False;
  FEntrou := False;
  TV.OptionsView.Indicator := False;
  cbSuperBusca.Checked := getFormOptionBool(Self, 'superbusca', True);
  cbComEstoque.Checked := getFormOptionBool(Self, 'comestoque', False);
  if cbComEstoque.Checked then begin
    Tab.Filter := '(EstoqueAtual > 0) or (NaoControlaEstoque=True)';
    Tab.Filtered := True;
  end;
  AtualizaDireitos;
end;

procedure TFrmProdPesq.TimerSyncTimer(Sender: TObject);
var K: Word;
begin
  TimerSync.Enabled := False;
  with TFrmPanVendaProd2(Owner) do 
  if (edProd.Text='') and edProd.Focused then
    IDProd := 0 
  else begin
    IDProd := TabID.Value;
    UpdateProdEdit(True);
    if Tag=1 then  begin
      K := Key_Enter;
      TFrmPanVendaProd2(Owner).edProdKeyDown(Sender, K, []);
    end;
  end;
  Tag := 0;
end;

procedure TFrmProdPesq.TryQuickCad;
begin
{  if (not gConfig.QuickCad) or (FQuickCadStatus>1) then Exit;
  with Dados do begin
    tbProdD.Active := True;
    if tbProdD.FindKey([edCod.Text]) then begin
      edDescr.Text := tbProdDDescricao.Value;
      FQuickCadStatus := 1;
      panImagem.Visible := not tbProdDImagem.IsNull;
      cbUsarImagem.Enabled := True;
    end;
  end;}
end;

procedure TFrmProdPesq.TVCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
      with TFrmPanVendaProd2(Owner) do begin
        IDProd := TabID.Value;     
        UpdateProdEdit(True);
      end;

end;

procedure TFrmProdPesq.TVColumnPosChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  SalvaLayout;
end;

procedure TFrmProdPesq.TVColumnSizeChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  SalvaLayout;
end;

procedure TFrmProdPesq.TVCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    ACanvas.Brush.Color := clHighlight;
    ACanvas.Font.Color := clHighlightText;
  end;
end;

procedure TFrmProdPesq.TVCustomDrawColumnHeader(Sender: TcxGridTableView;
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

procedure TFrmProdPesq.TVDblClick(Sender: TObject);
begin
  with TFrmPanVendaProd2(Owner) do begin
    IDProd := Self.TabID.Value;
    Popped := False;
    FIgnoreChange := True;
    try
      edProd.Text := tProDescricao.Value;
      _Lancar;
    finally
      FIgnoreChange := False;
    end;
  end;
end;

procedure TFrmProdPesq.TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with TFrmPanVendaProd2(Owner) do 
  if FEntrou or (edProd.Text>'') then begin
    IDProd := TabID.Value;
    if FEntrou and (not edProd.Focused) then TimerSync.Enabled := True;
  end else
  if edProd.Focused and (edProd.Text='') then 
    IDProd := 0;

{  with TFrmPanVendaProd2(Owner) do
    if not edProd.Focused then 
      EnableTimerFocoProd('TFrmProdPesq.TVFocusedRecordChanged');}
end;
                                     
procedure TFrmProdPesq.TVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  TFrmPanVendaProd2(Owner).edProdKeyDown(Sender, Key, Shift);
end;

procedure TFrmProdPesq.TVPrecoGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  while (AText>'') and (not (AText[1] in ['0'..'9'])) do Delete(AText, 1, 1);
  while (AText>'') and (not (AText[Length(AText)] in ['0'..'9'])) do Delete(AText, Length(AText), 1);
end;

procedure TFrmProdPesq.wmAtualizaDireitosConfig(var Msg: TMessage);
begin
  AtualizaDireitos;
end;

procedure TFrmProdPesq.wmSyncClose(var Msg: TMessage);
begin
  TimerSyncTimer(nil);
  TFrmPanVendaProd2(Owner).IDProd := TabID.Value;
  TFrmPanVendaProd2(Owner).Popped := False;
end;

procedure TFrmProdPesq.AjustaTamanhoForm;
begin
  if Assigned(ActiveFormPopupMenu) then
  with THackPopup(ActiveFormPopupMenu).FWrapperForm do
  if Paginas.ActivePageIndex=1 then begin
    Width := 633;
    Height := 302;
  end else
  begin
    Width := 915;
    Height := 500;
  end;
end;

procedure TFrmProdPesq.AtualizaDireitos;
begin
  if Tab.Active then Tab.Refresh;
  
  if gConfig.QuickCad then
    cmCadRapido.Visible := ivAlways else
    cmCadRapido.Visible := ivNever;
    
//  cmConfig.Enabled := Dados.CM.UA.Admin;
end;

end.

