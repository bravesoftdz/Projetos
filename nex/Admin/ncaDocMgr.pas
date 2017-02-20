unit ncaDocMgr;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxTextEdit,
  cxMaskEdit, dxGDIPlusClasses, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxImage, cxDBEdit, Vcl.StdCtrls, cxButtons,
  cxRadioGroup, cxLabel, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, Vcl.ImgList, cxImageComboBox, nxdb,
  cxDropDownEdit, ncafbProdutos, cxSpinEdit, cxButtonEdit, frxClass, frxPreview,
  dxBarBuiltInMenu, kbmMemTable, cxPC, ncaGM_FrmParam, cxDBLabel,
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel,
  LMDDBLabel, cxCheckBox, System.ImageList;

type
  TFrmDocMgr = class(TForm)
    dsDoc: TDataSource;
    cxImageList1: TcxImageList;
    Timer1: TTimer;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tDoc: TnxTable;
    tDocUID: TGuidField;
    tDocTipo: TByteField;
    tDocBobina: TBooleanField;
    tDocTextOnly: TBooleanField;
    tDocTamanho: TStringField;
    tDocParams: TnxMemoField;
    tDocImg: TGraphicField;
    tDocCustom: TBooleanField;
    tDocSRECVER: TLongWordField;
    tDocRECVER: TLongWordField;
    Open: TOpenDialog;
    tDocMinVer: TWordField;
    panBottom: TLMDSimplePanel;
    btnAvancar: TcxButton;
    btnVoltar: TcxButton;
    panDocMgr: TLMDSimplePanel;
    btnExportar: TcxButton;
    edTipo: TcxImageComboBox;
    btnConfig: TcxButton;
    btnNovo: TcxButton;
    btnExcluir: TcxButton;
    Paginas: TcxPageControl;
    tsEscolha: TcxTabSheet;
    tsParam: TcxTabSheet;
    tsPreview: TcxTabSheet;
    panPri: TLMDSimplePanel;
    panExemplo: TLMDSimplePanel;
    img: TcxDBImage;
    LMDSimplePanel4: TLMDSimplePanel;
    panParam: TLMDSimplePanel;
    panPreview: TLMDSimplePanel;
    btnRenomear: TcxButton;
    btnPersonalizar: TcxButton;
    Timer2: TTimer;
    LMDSimplePanel2: TLMDSimplePanel;
    cxLabel2: TcxLabel;
    cxStyle2: TcxStyle;
    lbSelModelo: TcxLabel;
    panPromptParam: TLMDSimplePanel;
    lbParam2: TcxDBLabel;
    lbParam1: TcxLabel;
    panPromptPreview: TLMDSimplePanel;
    lbPromptPreview: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    pagEscolha: TcxTabControl;
    panOuterBusca: TLMDSimplePanel;
    panBusca: TLMDSimplePanel;
    panBusca2: TLMDSimplePanel;
    Image1: TImage;
    edBusca: TcxMaskEdit;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVBobina: TcxGridDBColumn;
    TVNome: TcxGridDBColumn;
    TVObs: TcxGridDBColumn;
    TVMinVer: TcxGridDBColumn;
    GL: TcxGridLevel;
    TVPRO: TcxGridDBColumn;
    tDocID: TUnsignedAutoIncField;
    tDocFree: TBooleanField;
    btnBaixar: TcxButton;
    lbBaixando: TcxLabel;
    btnImportar: TcxButton;
    SaveDlg: TSaveDialog;
    panPersonalizar: TLMDSimplePanel;
    btnPersonalizar2: TcxButton;
    TVTam: TcxGridDBColumn;
    tDocTam: TStringField;
    btnExcluir2: TcxButton;
    tDocPais: TStringField;
    tDocLingua: TStringField;
    tDocMaxVer: TWordField;
    TVLingua: TcxGridDBColumn;
    cbFiltrarLingua: TcxCheckBox;
    cxButton1: TcxButton;
    tDocNome: TWideStringField;
    tDocDoc: TBlobField;
    tDocObs: TWideMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure imgPropertiesEditValueChanged(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edTipoPropertiesEditValueChanged(Sender: TObject);
    procedure btnPersonalizarClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure miImportarClick(Sender: TObject);
    procedure TVMinVerGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PaginasChange(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnRenomearClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure cbBobinaClick(Sender: TObject);
    procedure pagEscolhaChange(Sender: TObject);
    procedure edBuscaPropertiesChange(Sender: TObject);
    procedure edBuscaPropertiesEditValueChanged(Sender: TObject);
    procedure TVPROCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure PaginasPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure pagEscolhaChanging(Sender: TObject; var AllowChange: Boolean);
    procedure TVNomeCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnBaixarClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnExcluir2Click(Sender: TObject);
    procedure tDocCalcFields(DataSet: TDataSet);
    procedure cbFiltrarLinguaClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    FTipo : Byte;
    FPreview : TfrxPreview;
    FRep     : TfrxReport;
    FParams  : TFrmGMParam;
    FParamsStr : String;
    FLoading : Boolean;
    FSaveDoc : Array[Boolean] of String;
                                            
    procedure Filtrar;
    procedure SetTipo(const Value: Byte);

    procedure Personalizar;

    procedure CreatePreview;

    procedure RefreshParams;

    procedure AtualizaDocRunning;

    procedure wmUser(var Msg: TMessage);
      message wm_user;

    procedure wmAtualizarDocRunning(var Msg: TMessage);
      message wm_user + 1;

    procedure FreeRepPreview;

    function fbProd: TfbProdutos;
    function GetBobina: Boolean;
    procedure SetBobina(const Value: Boolean);
    { Private declarations }
  public
    property Tipo: Byte
      read FTipo write SetTipo; 

    property Bobina: Boolean
      read GetBobina write SetBobina;   

    function Run(aBobina: Boolean; aTipo: Byte; var aDoc: String; const aDocManager: Boolean = False): Boolean;  
    { Public declarations }
  end;

var
  FrmDocMgr: TFrmDocMgr;

implementation

uses ncaDM, ncaFrmDoc, ncGuidUtils, ncaFrmPri, ncClassesBase, ncaDMComp,
  ncaDMorc, ufmImagens, ncaFrmRecursoPRO, ncaDMSyncDoc, ncVersionInfo,
  ncDMdanfe_NFCE, ncDMdanfe_SAT, uNexTransResourceStrings_PT, ncDMdanfe_nfe,
  ncafbProdEst, ncaStrings;
  
{$R *.dfm}


resourcestring
  rsAvancar = 'Avançar >>';
  rsConcluir = 'Concluir!';  
  rsExcluir = 'Confirma exclusão de';
  rsSemParams = 'Esse modelo não possui parâmetros';
  rsPromptPreview = 
    'Preview de';
  rsRecursoProDoc = 'Esse modelo está disponível apenas para assinantes do plano PRO ou PREMIUM';
  rsExcluirSomentePersonalizado = 'Você só pode excluir modelos que você personalizou';

{ TFrmDocMgr }

procedure TFrmDocMgr.AtualizaDocRunning;
begin
  lbBaixando.Visible := IsDocUpdRunning;
  btnBaixar.Visible := not lbBaixando.Visible;
end;

procedure TFrmDocMgr.btnExcluirClick(Sender: TObject);
begin
  if not tDoc.IsEmpty then
    if SimNao(rsExcluir+' '+tDocNome.Value+'?') then 
      tDoc.Delete;
end;

procedure TFrmDocMgr.btnAvancarClick(Sender: TObject);
begin
  if tDoc.IsEmpty then Exit;
  case Paginas.ActivePageIndex of
    0 : begin
      RefreshParams;
      if FParamsStr>'' then 
        Paginas.ActivePageIndex := 1 else
        Paginas.ActivePageIndex := 2;
    end;
      
    1 : begin
      FParams.Save;
      Paginas.ActivePageIndex := 2;
    end;
    
    2 : if tDocFree.Value or gConfig.IsPremium then 
      ModalResult := mrOk else
      TFrmRecursoPro.Create(Self).Mostrar(rsRecursoProDoc, 'TFrmDocMgr');
  end;  
end;

procedure TFrmDocMgr.btnConfigClick(Sender: TObject);
begin
  RefreshParams;
  if FParamsStr>'' then 
    TFrmGMParam.Create(Self).Editar(FParamsStr) else
    ShowMessage(rsSemParams);
end;

procedure TFrmDocMgr.btnExcluir2Click(Sender: TObject);
begin
  if not tDoc.IsEmpty then
    if tDocCustom.Value then 
      btnExcluir.Click else 
      ShowMessage(rsExcluirSomentePersonalizado);
end;

procedure TFrmDocMgr.btnExportarClick(Sender: TObject);
begin
  saveDlg.FileName := tDocNome.Value;
  with Dados do
  if SaveDlg.Execute(Handle) then 
    tbDocDoc.SaveToFile(SaveDlg.FileName);
end;

procedure TFrmDocMgr.btnImportarClick(Sender: TObject);
begin
  Open.InitialDir := ExtractFileDir(ParamStr(0));
  with Dados do
  if Open.Execute(Handle) and TFrmDoc.Create(self).Editar(True, tbDoc, FTipo, True) then begin
    tbDoc.Edit;
    tbDocDoc.LoadFromFile(Open.FileName);
    tbDocCustom.Value := not FrmPri.IsDocMgr;
    tbDoc.Post;
    tDoc.Locate('UID', tDocUID.Value, []);
  end;
end;

procedure TFrmDocMgr.btnNovoClick(Sender: TObject);
begin
  if TFrmDoc.Create(Self).Editar(True, Dados.tbDoc, FTipo) then begin
    Personalizar;
    tDoc.Locate('UID', Dados.tbDocUID.Value, []);
  end;
end;

procedure TFrmDocMgr.btnPersonalizarClick(Sender: TObject);
var G : TGuid;
begin
  if tDoc.IsEmpty then Exit;
  if not Dados.tbDoc.Locate('UID', tDocUID.Value, []) then Exit;

  with Dados do 
  if (not tbDocCustom.Value) and (not FrmPri.IsDocMgr) then begin
    G := TGuidEx.NewGuid;
    tDoc.Insert;
    TransfDados(tbDoc, tDoc);
    tDocCustom.Value := True;
    tDocNome.Value := tDocNome.Value + ' ('+rsPersonalizado+')';
    tDocUID.Value := TGuidEx.ToString(G);
    tDoc.Post;
    tbDoc.Locate('UID', TGuidEx.ToString(G), []);
  end;
  Personalizar;
end;

procedure TFrmDocMgr.btnRenomearClick(Sender: TObject);
begin
  TFrmDoc.Create(Self).Editar(False, tDoc, 0, FrmPri.IsDocMgr);
end;

procedure TFrmDocMgr.btnVoltarClick(Sender: TObject);
begin
  case Paginas.ActivePageIndex of
    1 : begin
      FParams.Save;
      Paginas.ActivePageIndex := 0;
    end;
    2 : if FParamsStr>'' then 
      Paginas.ActivePageIndex := 1 else
      Paginas.ActivePageIndex := 0;
  end;  
end;

procedure TFrmDocMgr.cbBobinaClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmDocMgr.cbFiltrarLinguaClick(Sender: TObject);
begin
  Filtrar;
  saveFormOptionBool(Self, 'lang_filter', cbFiltrarLingua.Checked);
end;

procedure TFrmDocMgr.CreatePreview;
var 
  S: String;

begin
  
  S := ExtractFilePath(ParamStr(0))+tDocUID.AsString+'.fr3';
  tDocDoc.SaveToFile(S);
  try
    case tDocTipo.Value of
      tipodoc_venda, tipodoc_pgdebito, tipodoc_pedido : begin
        if not Assigned(dmComp) then Application.CreateForm(TdmComp, dmComp);
        FPreview := TfrxPreview.Create(dmComp);
        FRep := dmComp.CreateReport(S);
      end;

      tipodoc_etiqueta : begin
        FPreview := TfrxPreview.Create(fbProd);
        FRep := fbProd.CreateReport(S);
      end;

      tipodoc_orcamento : begin
        if not Assigned(dmOrc) then Application.CreateForm(TdmOrc, dmOrc);
        FPreview := TfrxPreview.Create(dmOrc);
        FRep := dmOrc.CreateReport(S);
      end;

      tipodoc_nfce : begin
        if not Assigned(dmDanfe_NFCE) then Application.CreateForm(TdmDanfe_NFCE, dmDanfe_NFCE);
        FPreview := TfrxPreview.Create(dmDanfe_NFCE);
        FRep := dmDanfe_NFCE.CreateReport(S);
      end;

      tipodoc_sat : begin
        CreateDanfeSat;
        FPreview := TfrxPreview.Create(dmDanfe_sat);
        FRep := dmDanfe_sat.CreateReport(S);
      end; 

      tipodoc_nfe : begin
        if not Assigned(dmDanfe_nfe) then Application.CreateForm(TdmDanfe_nfe, dmDanfe_nfe);
        FPreview := TfrxPreview.Create(dmDanfe_nfe);
        FRep := dmDanfe_nfe.CreateReport(S);
      end;           
    end;
    FPreview.parent := panPreview;
    FPreview.Align := alClient;
    FPreview.BorderStyle := bsNone;
    FPreview.ActiveFrameColor := clGray;
//    FRep.PreviewOptions.ZoomMode := zmWholePage;
    FRep.Preview := FPreview;
  finally  
    Windows.DeleteFile(PWideChar(S));
  end;
end;

procedure TFrmDocMgr.cxButton1Click(Sender: TObject);
var sl : TStrings;
begin
  tDoc.Edit;
  tDocDoc.AsString := Destraduz(tDocDoc.AsString);
  tDoc.Post;
{  sl := TStringList.Create;
  try
    sl.Text := Destraduz(tDocDoc.AsString);
    sl.SaveToFile(ExtractFilePath(ParamStr(0))+'traduzido.txt');
  finally
    sl.Free;
  end;}
end;

procedure TFrmDocMgr.btnBaixarClick(Sender: TObject);
begin
  docupdate(Handle, True);
end;

procedure TFrmDocMgr.edBuscaPropertiesChange(Sender: TObject);
begin
  edBusca.PostEditValue;
end;

procedure TFrmDocMgr.edBuscaPropertiesEditValueChanged(Sender: TObject);
begin
  if edBusca.Focused then 
    Filtrar;
end;

procedure TFrmDocMgr.edTipoPropertiesEditValueChanged(Sender: TObject);
begin
  if edTipo.Focused then 
    Tipo := edTipo.ItemIndex;
end;

function TFrmDocMgr.fbProd: TfbProdutos;
begin
  if not (FrmPri.FM.FormAtivo is TfbProdEst) then 
    FrmPri.FM.Mostrar(TfbProdEst);

  if not (TfbProdEst(FrmPri.FM.FormAtivo).FM.FormAtivo is TfbProdutos) then
    TfbProdEst(FrmPri.FM.FormAtivo).FM.Mostrar(TfbProdutos);
    
  Result := TfbProdutos(TfbProdEst(FrmPri.FM.FormAtivo).FM.FormAtivo);
end;

procedure TFrmDocMgr.Filtrar;
var S: String;
begin
  tDoc.DisableControls;
  try
    panPersonalizar.Visible := StringToBool(slConfig.Values['docedit']) and (not (FTipo in [4, 5, 7]));
    tDoc.Active := True;
    if FrmPri.IsDocMgr then 
      S := '(Tipo='+IntToStr(FTipo)+')' else
      S := '(Tipo='+IntToStr(FTipo)+') AND (MinVer<='+SelfShortVer+')';


    if cbFiltrarLingua.Checked then begin
      if not panPersonalizar.Visible then
      if LinguaPT then
        S := S + ' AND ((Lingua is Null) OR (Lingua='+QuotedStr('')+'))' else
        S := S + ' AND (Lingua = ' + QuotedStr(SLingua) + ')';
    end;
    tDoc.Filter := S;
      
    if Trim(edBusca.Text)='' then begin
      tDoc.IndexName := 'ITipoBobinaNome';
      tDoc.SetRange([FTipo, Bobina], [FTipo, Bobina]);
    end else begin  
      tDoc.IndexName := 'ISuperBuscaDoc';
      tDoc.SetRange([edBusca.Text], [edBusca.Text+'zzzzzzzzz']);
    end;
    tDoc.Filtered := True;
//    panOuterBusca.Visible := (FTipo=tipodoc_etiqueta);
  finally
    tDoc.EnableControls;
  end;
end;

procedure TFrmDocMgr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmDocMgr.FormCreate(Sender: TObject);
begin
  cbFiltrarLingua.Checked := getFormOptionBool(Self, 'lang_filter', true);
  AtualizaDocRunning;
  FSaveDoc[False] := '';
  FSaveDoc[True] := '';
  TVPRO.Visible := (not gConfig.IsPremium) or gConfig.OnTrial;
  FLoading := True;
  Paginas.ActivePageIndex := 0;
  Paginas.HideTabs := True;
  FParams := TFrmGMParam.Create(Self);
  FParams.panPri.Parent := panParam;
  TV.OptionsView.Header := False;
end;

procedure TFrmDocMgr.FormDestroy(Sender: TObject);
begin
  FreeRepPreview;
  FParams.Free;
end;

procedure TFrmDocMgr.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_Esc   : Close;
  end;
end;

procedure TFrmDocMgr.FormShow(Sender: TObject);
begin
  FLoading := False;
{  TVMinVer.Visible := FrmPri.IsDocMgr;
  TVMinVer.VisibleForCustomization := FrmPri.IsDocMgr;}
  TVTam.Visible := FrmPri.IsDocMgr;
  TVTam.VisibleForCustomization := FrmPri.IsDocMgr;
  TVLingua.Visible := FrmPri.IsDocMgr;
  TVLingua.VisibleForCustomization := TVLingua.Visible;
  
  Grid.SetFocus;
  TV.Controller.FocusRecord(TV.Controller.FocusedRecordIndex, True);
end;

procedure TFrmDocMgr.FreeRepPreview;
begin
  if Assigned(FRep) then FreeAndNil(FRep);
  if Assigned(FPreview) then FreeAndNil(FPreview);
end;

function TFrmDocMgr.GetBobina: Boolean;
begin
  Result := (pagEscolha.Properties.TabIndex=1);
end;

procedure TFrmDocMgr.imgPropertiesEditValueChanged(Sender: TObject);
begin
  img.PostEditValue;
  Timer1.Enabled := True;
end;

procedure TFrmDocMgr.miImportarClick(Sender: TObject);
begin
  btnImportar.Click;
end;

procedure TFrmDocMgr.pagEscolhaChange(Sender: TObject);
begin
  if FLoading then Exit;
  Filtrar;
  if FSaveDoc[Bobina]>'' then 
    tDoc.Locate('UID', FSaveDoc[Bobina], []);
end;

procedure TFrmDocMgr.pagEscolhaChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if FLoading then Exit;
  AllowChange := True;
  if tDoc.IsEmpty then 
    FSaveDoc[Bobina] := '' else
    FSaveDoc[Bobina] := tDocUID.Value;
end;

procedure TFrmDocMgr.PaginasChange(Sender: TObject);
begin
  if FLoading then Exit;
  FreeRepPreview;
  FParams.AjustaPos;
  btnVoltar.Enabled := (Paginas.ActivePageIndex>0);
  if Paginas.ActivePageIndex=2 then begin
    btnAvancar.Caption := rsConcluir;
    CreatePreview;
  end else
    btnAvancar.Caption := rsAvancar;

  case Paginas.ActivePageIndex of
    0 : Grid.SetFocus;
    1 : FParams.VG.SetFocus;
  end;  
end;

procedure TFrmDocMgr.PaginasPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
  if FLoading then Exit;
end;

procedure TFrmDocMgr.Personalizar;
var S: String;
begin
  with Dados do begin
    S := ExtractFilePath(ParamStr(0))+tbDocUID.AsString+'.fr3';
    case tbDocTipo.Value of
      tipodoc_venda, tipodoc_pgdebito, tipodoc_pedido : begin
        if not Assigned(dmComp) then 
          Application.CreateForm(TdmComp, dmComp);

        if not tbDocDoc.IsNull then tbDocDoc.SaveToFile(S);
        dmComp.Personalizar(S, tbDocTipo.Value, tbDocBobina.Value, tbDocTextOnly.Value);
      end;
    
      tipodoc_orcamento : begin
        if not Assigned(dmOrc) then 
          Application.CreateForm(TdmOrc, dmOrc);
  
        if not tbDocDoc.IsNull then tbDocDoc.SaveToFile(S);
        dmOrc.Personalizar(S, tbDocBobina.Value, tbDocTextOnly.Value);
      end;

      tipodoc_etiqueta : begin
        if not tbDocDoc.IsNull then tbDocDoc.SaveToFile(S);
        fbProd.Personalizar(S, tbDocBobina.Value);
      end;    

      tipodoc_nfce : begin
        if not Assigned(dmDanfe_NFCE) then Application.CreateForm(TdmDanfe_NFCE, dmDanfe_NFCE);
        if not tbDocDoc.IsNull then tbDocDoc.SaveToFile(S);
        dmDanfe_NFCE.Personalizar(S, tbDocBobina.Value);
      end;

      tipodoc_sat : begin
        CreateDanfeSat;
        if not tbDocDoc.IsNull then tbDocDoc.SaveToFile(S);
        dmDanfe_SAT.Personalizar(S, tbDocBobina.Value);
      end;

      tipodoc_nfe : begin
        if not Assigned(dmDanfe_nfe) then Application.CreateForm(TdmDanfe_nfe, dmDanfe_nfe);
        if not tbDocDoc.IsNull then tbDocDoc.SaveToFile(S);
        dmDanfe_nfe.Personalizar(S, tbDocBobina.Value);
      end;      
    end;
    tbDoc.Edit;
    tbDocDoc.LoadFromFile(S);
    tbDoc.Post;
    tDoc.Refresh;
    
    Windows.DeleteFile(PWideChar(S));
  end;  
end;


procedure TFrmDocMgr.RefreshParams;
var S: String;
begin
  FParamsStr := '';

  if tDoc.IsEmpty then Exit;
  if tDocDoc.IsNull then Exit;
  S := ExtractFilePath(ParamStr(0))+tDocUID.AsString+'.fr3';
  tDocDoc.SaveToFile(S);

  case tDocTipo.Value of
    tipodoc_venda, tipodoc_pgdebito, tipodoc_pedido : begin
      if not Assigned(dmComp) then 
        Application.CreateForm(TdmComp, dmComp);
      FParamsStr := dmComp.ObtemParams(S);
    end;

    tipodoc_etiqueta : FParamsStr := fbProd.ObtemParams(S);
    
    tipodoc_orcamento : begin
      if not Assigned(dmOrc) then
        Application.CreateForm(TdmOrc, dmOrc);
        FParamsStr := dmOrc.ObtemParams(S);
    end;

    tipodoc_nfce : begin
      if not Assigned(dmDanfe_NFCE) then Application.CreateForm(TdmDanfe_NFCE, dmDanfe_NFCE);
      FParamsStr := dmDanfe_NFCE.ObtemParams(S);
    end;

    tipodoc_sat : begin
      if not Assigned(dmDanfe_sat) then Application.CreateForm(TdmDanfe_sat, dmDanfe_sat);
      FParamsStr := dmDanfe_sat.ObtemParams(S);
    end;

    tipodoc_nfe : begin
      if not Assigned(dmDanfe_nfe) then Application.CreateForm(TdmDanfe_nfe, dmDanfe_nfe);
      FParamsStr := dmDanfe_nfe.ObtemParams(S);
    end;    
  end;

  if FParamsStr > '' then begin
    FParams.VisCampos(FParamsStr);
    lbPromptPreview.Caption := '3. '+rsPromptPreview;
  end else 
    lbPromptPreview.Caption := '2. '+rsPromptPreview;
end;

function TFrmDocMgr.Run(aBobina: Boolean; aTipo: Byte; var aDoc: String; const aDocManager: Boolean = False): Boolean;
begin
  if not aDocManager then DocUpdate(Handle, False);
  panDocMgr.Visible := False;
  panDocMgr.Visible := aDocManager;
  panPersonalizar.Visible := StringToBool(slConfig.Values['docedit']) and (aTipo<>4);
  lbSelModelo.Visible := not aDocManager;
  panPromptParam.Visible := not aDocManager;
  panPromptPreview.Visible := not aDocManager;
  FTipo := aTipo;
  edTipo.ItemIndex := aTipo;
  tDoc.DisableControls;
  try
    tDoc.Active := True;
    if (aDoc>'') and tDoc.Locate('UID', aDoc, []) then
      Bobina := tDocBobina.Value else
      Bobina := aBobina;
    Filtrar;
  finally  
    tDoc.EnableControls;
  end;
  if (aDoc>'') and tDoc.Locate('UID', aDoc, []) then 
    FSaveDoc[Bobina] := aDoc;
  ShowModal;
  Result := (ModalResult=mrOk) and (not tDoc.IsEmpty);
  if Result then aDoc := tDocUID.Value;
end;

procedure TFrmDocMgr.SetBobina(const Value: Boolean);
begin
  pagEscolha.Properties.TabIndex := Byte(Value);
end;

procedure TFrmDocMgr.SetTipo(const Value: Byte);
begin
  FTipo := Value;
  Filtrar;
end;

function TamStr(E: Extended): String;
begin
  Str(E:0:1, Result);
  while (Length(Result)>0) and (Result[Length(Result)] in ['0', '.']) do Delete(Result, Length(Result), 1);
end;

function BytesToStr(C: Cardinal): String;
const
  tamKB = 1000;
  tamMB = 1000*1000;
  tamGB = 1000*1000*1000;
begin
  if C<tamMB then
    Result := TamStr(C/tamKB)+'KB'
  else
  if C<tamGB then
    Result := TamStr(C/tamMB)+'MB'
  else
    Result := TamStr(C/tamGB)+'GB';
end;

procedure TFrmDocMgr.tDocCalcFields(DataSet: TDataSet);
begin
  tDocTam.Value := BytesToStr(tDocImg.BlobSize);
end;

procedure TFrmDocMgr.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  if tDoc.State in [dsEdit, dsInsert] then 
    tDoc.Post;
end;

procedure TFrmDocMgr.Timer2Timer(Sender: TObject);
begin
  AtualizaDocRunning;  
end;

procedure TFrmDocMgr.TVMinVerGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  if AText='0' then
    AText := ''
  else
  if AText>'' then
    AText := AText+'+';
end;

procedure TFrmDocMgr.TVNomeCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var V: Variant;  
begin
  if (not gConfig.IsPremium) and (not gConfig.OnTrial) then begin
    V := AViewInfo.GridRecord.Values[TVPRO.Index];
    if (V=null) or (V=False) then 
      ACanvas.Font.Color := clSilver;
  end;
end;

procedure TFrmDocMgr.TVPROCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if SameText(AViewInfo.Text, 'FREE') then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
  end;  
end;

procedure TFrmDocMgr.wmAtualizarDocRunning(var Msg: TMessage);
begin
  AtualizaDocRunning;
end;

procedure TFrmDocMgr.wmUser(var Msg: TMessage);
begin
  try tDoc.Refresh except end;
end;

end.

