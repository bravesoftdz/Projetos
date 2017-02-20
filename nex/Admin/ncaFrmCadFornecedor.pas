unit ncaFrmCadFornecedor;
{
    ResourceString: Dario 10/03/13
    João: TODO List!
}

interface

uses
  Windows, Variants, Messages, SysUtils, Classes, Graphics, jpeg, Controls, Forms, Dialogs,
  dxBar, StdCtrls, 
  DBCtrls, ExtCtrls,
  ComCtrls, Db, kbmMemTable, ToolWin, nxdb, 
  dxBarExtItems, 
  cxStyles, cxGraphics, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxImageComboBox, cxMemo, ufmFormBase,
  cxVGrid, cxDBVGrid, cxInplaceContainer, cxPC, cxControls,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, Mask,
  cxCheckBox, cxRadioGroup, cxTimeEdit, cxLookAndFeels, cxGroupBox, cxDBEdit,
  cxContainer, cxCurrencyEdit, cxImage, Buttons, cxLabel,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel, LMDLabel, LMDControl,
  LMDBaseControl, LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton,
  cxClasses, cxBarEditItem, 
  dxNavBarCollns, dxNavBarBase, dxNavBar,
  dxLayoutControl, dxLayoutLookAndFeels, dxNavBarStyles,
  cxLookAndFeelPainters, ImgList, cxSpinEdit, LMDCustomImageList,
  LMDImageList, cxPCdxBarPopupMenu, dxLayoutcxEditAdapters, dxLayoutContainer,
  LMDPNGImage, dxBarBuiltInMenu, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, ncaFrmMemoEnd,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, ncDMDanfe_NFCE,
  dxPScxPivotGridLnk;


type
  TFrmCadFornecedor = class(TForm)
    BarMgr: TdxBarManager;
    DS: TDataSource;
    panPri: TLMDSimplePanel;
    tAux: TnxTable;
    cmGravar: TdxBarLargeButton;
    cmCancelar: TdxBarLargeButton;
    FMgr: TFormManager;
    L: TcxLookAndFeelController;
    dxBarCombo1: TdxBarCombo;
    dxBarCombo2: TdxBarCombo;
    BarMgrBar1: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    NB: TdxNavBar;
    nbiFicha: TdxNavBarItem;
    NBGroup1: TdxNavBarGroup;
    nbiTran: TdxNavBarItem;
    Paginas: TcxPageControl;
    tsDados: TcxTabSheet;
    lcFicha: TdxLayoutControl;
    edNome: TcxDBTextEdit;
    lcFichaItem3: TdxLayoutItem;
    edTelefone: TcxDBTextEdit;
    lcFichaItem8: TdxLayoutItem;
    edCelular: TcxDBTextEdit;
    lcFichaItem9: TdxLayoutItem;
    edCNPJ: TcxDBTextEdit;
    lcCNPJ: TdxLayoutItem;
    lcFichaGroup8: TdxLayoutGroup;
    lcFichaGroup6: TdxLayoutGroup;
    edEmail: TcxTextEdit;
    lcEmail: TdxLayoutItem;
    edObs: TcxDBMemo;
    lcFichaItem23: TdxLayoutItem;
    lcFichaGroup7: TdxLayoutGroup;
    NBStyleItem1: TdxNavBarStyleItem;
    OpenDlg: TOpenDialog;
    tsTran: TcxTabSheet;
    edIE: TcxDBTextEdit;
    lcIE: TdxLayoutItem;
    MT: TkbmMemTable;
    nbiProdutos: TdxNavBarItem;
    tsProdutos: TcxTabSheet;
    tProdFor: TnxTable;
    tvProd: TcxGridDBTableView;
    glProd: TcxGridLevel;
    gridProd: TcxGrid;
    dsProdFor: TDataSource;
    tProdForUID: TGuidField;
    tProdForProduto: TLongWordField;
    tProdForFornecedor: TLongWordField;
    tProdForPos: TWordField;
    tProdForRef: TStringField;
    tProdForNomeProduto: TStringField;
    tProdForEstoque: TFloatField;
    tvProdNomeProduto: TcxGridDBColumn;
    tvProdEstoque: TcxGridDBColumn;
    tvProdCodigo: TcxGridDBColumn;
    tvProdRef: TcxGridDBColumn;
    tProdForCodigoLoja: TStringField;
    BarMgrBar2: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    tvProdColumn1: TcxGridDBColumn;
    tvProdColumn2: TcxGridDBColumn;
    tvProdColumn3: TcxGridDBColumn;
    tProdForEstoqueMax: TFloatField;
    tProdForEstoqueMin: TFloatField;
    tProdForEstoqueRepor: TFloatField;
    dlgExp: TSaveDialog;
    CP: TdxComponentPrinter;
    cplGridProd: TdxGridReportLink;
    MTID: TUnsignedAutoIncField;
    MTCodigo: TStringField;
    MTCodigoKey: TStringField;
    MTNome: TWideStringField;
    MTEndereco: TWideStringField;
    MTEndereco2: TWideStringField;
    MTEnd_Numero: TWideStringField;
    MTEnd_CodMun: TWideStringField;
    MTEnd_Dest: TWideStringField;
    MTEnd_Obs: TWideStringField;
    MTendereco_id: TGuidField;
    MTPais: TWideStringField;
    MTBairro: TWideStringField;
    MTCidade: TWideStringField;
    MTUF: TWideStringField;
    MTCEP: TWideStringField;
    MTNFE_CredIcms: TBooleanField;
    MTSexo: TStringField;
    MTObs: TWideMemoField;
    MTCpf: TWideStringField;
    MTRg: TWideStringField;
    MTTelefone: TWideStringField;
    MTEmail: TWideMemoField;
    MTPassaportes: TFloatField;
    MTPai: TWideStringField;
    MTMae: TWideStringField;
    MTUltVisita: TDateTimeField;
    MTDebito: TCurrencyField;
    MTDataNasc: TDateTimeField;
    MTCelular: TWideStringField;
    MTTemDebito: TBooleanField;
    MTLimiteDebito: TCurrencyField;
    MTFoto: TGraphicField;
    MTIncluidoEm: TDateTimeField;
    MTAlteradoEm: TDateTimeField;
    MTIncluidoPor: TStringField;
    MTAlteradoPor: TStringField;
    MTFidPontos: TFloatField;
    MTFidTotal: TFloatField;
    MTFidResg: TFloatField;
    MTAniversario: TStringField;
    MTSemFidelidade: TBooleanField;
    MTTemCredito: TBooleanField;
    MTPJuridica: TBooleanField;
    MTInativo: TBooleanField;
    MTFornecedor: TBooleanField;
    MTValorCred: TCurrencyField;
    lcEnd: TdxLayoutItem;
    panEnd: TLMDSimplePanel;
    MTTipoFor: TByteField;
    procedure DSStateChange(Sender: TObject);
    procedure InspNomeIsentoPropertiesGetEditingProperties(
      Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer;
      var AProperties: TcxCustomEditProperties);
    procedure cmGravarClick(Sender: TObject);
    procedure cmCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MTAfterInsert(DataSet: TDataSet);
    procedure MTAfterEdit(DataSet: TDataSet);
    procedure hora10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure hora10Click(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure btnNenhumClick(Sender: TObject);
    procedure InspNomeTAPropertiesGetEditingProperties(
      Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer;
      var AProperties: TcxCustomEditProperties);
    procedure FMgrPageControlChange(Sender: TObject);
    procedure NBLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FMgrGetTabSheet(Sender: TObject; aClass: TFrmBaseClass;
      var aTabSheet: TcxTabSheet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PaginasChange(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);

    { Private declarations }
  private
    FPai: TWinControl;
    FEnd: TFrmMemoEnd;

    procedure RefreshBtn;

    procedure wmAtualizaStrings(var Msg: TMessage); message wm_user;

    procedure AfterEditarEnd(Sender: TObject);
    

  public
    FNovo : Boolean;
    Resultado: Integer;
    FRgAnt : String;
    FTab : TDataset;
    FCHorario : Cardinal;
    function Novo(aTab: TDataset; aPai: TWinControl; const aDMDanfe: TdmDanfe_NFCE = nil): Integer;
    function Editar(aTab: TDataset; aPai: TWinControl): Boolean;

    { Public declarations }
  end;

  TThreadStrings = class ( TThread )
  private
    FWnd : HWND;
  protected
    procedure Execute; override;
  public
    constructor Create(aWnd: HWND);  
  end;

var
  FrmCadFornecedor: TFrmCadFornecedor;
  
implementation

uses 
  ncaDM,
  ncErros,
  ncaFrmPri,
  ncClassesBase,
  ncIDRecursos,
  ncListaID,
  ufmImagens, 
  ncafbTran, 
  ncafgExtratoFid, ncaFrmWebCam, cxGridExportlink, ncaStrings;

var
  slCidades, slBairros: TStrings;  

// START resource string wizard section
resourcestring
  SNomeNãoPodeSerDeixadoEmBranco = 'Nome não pode ser deixado em branco !';
  SHora = 'hora';

// END resource string wizard section


{$R *.DFM}

function TFrmCadFornecedor.Editar(aTab: TDataset; aPai: TWinControl): Boolean;
begin
  result := false;
  Resultado := -1;
  if aTab=nil then aTab := Dados.tbCli;
  try
    FNovo := False;
    FTab := ATab;
    MT.Insert;
    TransfDados(FTab, MT);
    if MTInativo.IsNull then
      MTInativo.Value := False;

    FEnd.LoadFromDataset(MT);  
      
    cmGravar.Enabled := Permitido(daCliCadastrar);
    
    if aPai=nil then begin
      ShowModal;
      Result := Resultado>-1;
    end else begin
      FPai := aPai;
      panPri.Parent := FPai;
    end;  
  finally
    if FPai=nil then Free;
  end;  
end;

procedure TFrmCadFornecedor.cmGravarClick(Sender: TObject);
begin
  Paginas.ActivePageIndex := 0;
  edTelefone.SetFocus;
  edNome.SetFocus;
  MTEmail.Value := edEmail.Text;

  if MTNome.Value = '' then
    Raise ENexCafe.Create(SNomeNãoPodeSerDeixadoEmBranco);

  if not (MT.State in [dsInsert, dsEdit]) then MT.Edit;

  if FNovo then begin
    FTab.Insert;
    FTab.FieldByName('IncluidoEm').AsDateTime := Now; // do not localize
    FTab.FieldByName('IncluidoPor').AsString := Dados.CM.Username; // do not localize
  end else begin
    FTab.Edit; 
    FTab.FieldByName('AlteradoEm').AsDateTime := Now; // do not localize
    FTab.FieldByName('AlteradoPor').AsString := Dados.CM.Username; // do not localize
  end;

  FEnd.DadosAtu.SaveToDataset(MT);
  TransfDadosEsp(MT, FTab, '|ID|IncluidoEm|IncluidoPor|AlteradoEm|AlteradoPor|'); // do not localize
  FTab.FieldByName('Fornecedor').AsBoolean := True; // do not localize

  FTab.Post;
  Resultado := FTab.FieldByName('ID').AsInteger; // do not localize
  if FPai=nil then 
    Close;
end;

procedure AjustaFontRB(RB: TcxRadioButton);
begin
  if RB.Checked then
    RB.Font.Style := [fsBold] else
    RB.Font.Style := [];
end;

procedure TFrmCadFornecedor.wmAtualizaStrings(var Msg: TMessage);
begin
{  edBairro.Properties.Items.Text := slBairros.Text;
  edCidade.Properties.Items.Text := slCidades.Text;}
end;

procedure TFrmCadFornecedor.AfterEditarEnd(Sender: TObject);
begin
  edEmail.SetFocus;
end;

procedure TFrmCadFornecedor.btnNenhumClick(Sender: TObject);
var
  Dia, H : Integer;
  SB : TLmdSpeedButton;
begin
  for Dia := 1 to 7 do
  for H := 0 to 23 do begin
    SB := TLMDSpeedButton(Self.FindComponent(SHora+IntToStr(Dia)+IntToStr(H)));
    SB.Color := clRed;
    SB.Font.Color := clWhite;
  end;
end;

procedure TFrmCadFornecedor.btnTodosClick(Sender: TObject);
var
  Dia, H : Integer;
  SB : TLmdSpeedButton;
begin
  for Dia := 1 to 7 do
  for H := 0 to 23 do begin
    SB := TLMDSpeedButton(Self.FindComponent(SHora+IntToStr(Dia)+IntToStr(H)));
    SB.Color := clGreen;
    SB.Font.Color := clWhite;
  end;
end;

procedure TFrmCadFornecedor.cmCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadFornecedor.FMgrGetTabSheet(Sender: TObject;
  aClass: TFrmBaseClass; var aTabSheet: TcxTabSheet);
begin
  if aClass = TfbTran then
    aTabSheet := tsTran;
end;

procedure TFrmCadFornecedor.FMgrPageControlChange(Sender: TObject);
begin
  if paginas.ActivePage = TsTran then begin

    if FMgr.FormByClass(TfbTran)=nil then begin
      FMgr.RegistraForm(TfbTran);
      LockWindowUpdate(Handle);
      try
        FMgr.Mostrar(TfbTran, ftran_Cliente, MTID.Value);
        TfbTran(FMgr.FormAtivo).panTran.AlignWithMargins := False;
      finally
        LockWindowUpdate(0);
      end;
    end;
  end;
end;

procedure TFrmCadFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FMgr.Clear;
  Action := caFree;
end;

procedure TFrmCadFornecedor.FormCreate(Sender: TObject);
const
  SNStr : Array[Boolean] of String[5] = ('(não)', '(sim)');

function GetCharCase(aField: String): TEditCharCase;
var P: Integer;
begin
  P := StrToIntDef(gConfig.slCamposCliCC.Values[aField], 0);
  case P of
    1 : Result := ecUpperCase;
    2 : Result := ecLowerCase;
  else
    Result := ecNormal;
  end;
end;  

begin
  FEnd := TFrmMemoEnd.Create(Self);
  FEnd.M.Parent := panEnd;
  FEnd.OnAfterEditar := AfterEditarEnd;
  Paginas.Properties.HideTabs := true;

  TVProdEstoque.Caption := rsEstoque;

  nbiTran.Enabled := Permitido(daFornecedoresVerTran);

  edNome.Properties.CharCase := GetCharCase('Nome'); // do not localize
  edTelefone.Properties.CharCase := GetCharCase('Telefone'); // do not localize
  edCelular.Properties.CharCase := GetCharCase('Celular'); // do not localize
  edObs.Properties.CharCase := GetCharCase('Obs'); // do not localize
  edEmail.Properties.CharCase := GetCharCase('Email'); // do not localize

  if gConfig.PaisBrasil then begin
    lcIE.Caption := rsIE;
    lcCNPJ.Caption := rsCNPJ;
    lcCNPJ.Visible := True;
    lcIE.Visible := True;
  end else begin
    lcCNPJ.Visible := False;
    lcIE.Caption := rsDocID;
    lcIE.Visible := False;
  end;
  
  TThreadStrings.Create(Handle);

  FPai := nil;
  Paginas.ActivePageIndex := 0;

  FrmCadFornecedor := Self;
  MT.Open;
  tAux.Open;
  Paginas.ActivePageIndex:= 0;

end;

procedure TFrmCadFornecedor.FormShow(Sender: TObject);
begin
  edEmail.Text := MTEmail.Value;

  Paginas.ActivePage := tsDados;
  edNome.SetFocus;

  if (Screen.Width=640) then
    PostMessage(Handle, WM_SYSCOMMAND, SC_MAXIMIZE, 0);
end;

procedure TFrmCadFornecedor.hora10Click(Sender: TObject);
begin
  with TLMDSpeedButton(Sender) do
  if Color=clGreen then
    Color := clRed
  else
    Color := clGreen;
end;

procedure TFrmCadFornecedor.hora10MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if ssCtrl in Shift then 
    TLMDSpeedButton(Sender).Color := clGreen
  else
  if ssAlt in Shift then
    TLMDSpeedButton(Sender).Color := clRed;
end;

procedure TFrmCadFornecedor.InspNomeIsentoPropertiesGetEditingProperties(
  Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer;
  var AProperties: TcxCustomEditProperties);
begin
  AProperties.ReadOnly := not Permitido(daCliMarcarIsento);
end;

procedure TFrmCadFornecedor.InspNomeTAPropertiesGetEditingProperties(
  Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer;
  var AProperties: TcxCustomEditProperties);
begin
  AProperties.ReadOnly := not Permitido(daAlterarTipoAcesso);
end;

procedure TFrmCadFornecedor.NBLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
begin
  Paginas.ActivePageIndex := ALink.Index;
  if (Paginas.ActivePage=tsProdutos) then PaginasChange(nil);
  
end;

function TFrmCadFornecedor.Novo(aTab: TDataset; aPai: TwinControl; const aDMDanfe: TdmDanfe_NFCE = nil): Integer;
begin
  if aTab=nil then aTab := Dados.tbCli;
  nbiTran.Enabled := False;
  nbiProdutos.Enabled := False;
  FTab := aTab;
  FNovo := True;
  MT.Insert;
  MTUF.Value := Dados.tbConfigUFPadrao.AsString;
  MTCidade.Value := Dados.tbConfigCidadePadrao.AsString;
  MTInativo.Value := False;

  if aDMDanfe<>nil then with aDMDanfe do begin
    MTNome.Value := aDMDanfe.mtEmitxNome.Value;
    MTTelefone.Value := aDMDanfe.mtEmitfone.Value;
    MTEndereco.Value := aDMDanfe.mtEmitxLgr.Value;
    MTBairro.Value := aDMDanfe.mtEmitxBairro.Value;
    MTCidade.Value := aDMDanfe.mtEmitxMun.Value;
    MTUF.Value := aDMDanfe.mtEmitUF.Value;
    MTCEP.Value := aDMDanfe.mtEmitCEP.Value;
    MTCPF.Value := aDMDanfe.mtEmitCNPJ.Value;
    MTRG.Value := aDMDanfe.mtEmitIE.Value;
  end;
  Result := -1;
  Resultado := -1;
  RefreshBtn;
  if aPai = nil  then
  begin
    try
      ShowModal;
    finally
      Result := Resultado;
      Free;
    end;
  end else begin
    FPai := aPai;
    panPri.Parent := FPai;
  end;
end;


procedure TFrmCadFornecedor.PaginasChange(Sender: TObject);
begin
  if Paginas.ActivePage=tsProdutos then
  if not tProdFor.Active then begin
    tProdFor.DisableControls;
    tvProd.DataController.DataSource := nil;
    try
      tProdFor.Active := True;
      tProdFor.SetRange([MTID.Value], [MTID.Value]);
    finally
      tvProd.DataController.DataSource := dsProdFor;
      tProdFor.EnableControls;
    end;
  end;
end;

function ForceForegroundWindow(hwnd: THandle): boolean;
const
  SPI_GETFOREGROUNDLOCKTIMEOUT = $2000;
  SPI_SETFOREGROUNDLOCKTIMEOUT = $2001;
var
  ForegroundThreadID: DWORD;
  ThisThreadID : DWORD;
  timeout : DWORD;
begin
  if IsIconic(hwnd) then ShowWindow(hwnd, SW_RESTORE);
  if GetForegroundWindow = hwnd then 
    Result := true
  else begin

  // Windows 98/2000 doesn't want to foreground a window when some other
  // window has keyboard focus
  
    if ((Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion > 4)) or
        ((Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and
        ((Win32MajorVersion > 4) or ((Win32MajorVersion = 4) and
        (Win32MinorVersion > 0)))) then
    begin
  
  // Code from Karl E. Peterson, www.mvps.org/vb/sample.htm
  // Converted to Delphi by Ray Lischner
  // Published in The Delphi Magazine 55, page 16
  
      Result := false;
      ForegroundThreadID := GetWindowThreadProcessID(GetForegroundWindow,nil);
      ThisThreadID := GetWindowThreadPRocessId(hwnd,nil);
      if AttachThreadInput(ThisThreadID, ForegroundThreadID, true) then
      begin
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hwnd);
        AttachThreadInput(ThisThreadID, ForegroundThreadID, false);
        Result := (GetForegroundWindow = hwnd);
      end;
      if not Result then begin
  // Code by Daniel P. Stasinski
        SystemParametersInfo(SPI_GETFOREGROUNDLOCKTIMEOUT, 0, @timeout, 0);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(0),  SPIF_SENDCHANGE);
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hWnd);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0,
        TObject(timeout), SPIF_SENDCHANGE);
      end;
    end
    else begin
      BringWindowToTop(hwnd); // IE 5.5 related hack
      SetForegroundWindow(hwnd);
    end;
  
    Result := (GetForegroundWindow = hwnd);
  end;
end; { ForceForegroundWindow }

procedure TFrmCadFornecedor.RefreshBtn;
begin
  cmGravar.Enabled := ((FPai=nil) or MT.Modified) and  Permitido(daCliCadastrar);
  cmCancelar.Enabled := cmGravar.Enabled;
end;

procedure TFrmCadFornecedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_F2    : cmGravarClick(nil);
    Key_Esc   : Close;
  end;
end;

procedure TFrmCadFornecedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then Key := #0;
end;

procedure TFrmCadFornecedor.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Paginas.ActivePageIndex=0 then
  if (Key = KEY_Enter) and (not edObs.Focused) and (not edEmail.Focused) then
    Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmCadFornecedor.DSStateChange(Sender: TObject);
begin
  RefreshBtn;
end;

procedure TFrmCadFornecedor.dxBarLargeButton1Click(Sender: TObject);
begin
  CP.Print(False, nil)
end;

procedure TFrmCadFornecedor.dxBarLargeButton2Click(Sender: TObject);
begin
  if dlgExp.Execute and (dlgExp.FileName <> '') then 
    ExportGridToExcel(dlgExp.FileName, gridProd);
end;

procedure TFrmCadFornecedor.MTAfterInsert(DataSet: TDataSet);
begin
  FRgAnt := '';
end;

procedure TFrmCadFornecedor.MTAfterEdit(DataSet: TDataSet);
begin
  //
end;

type THackMouse = class (TcxCustomImage);

{ TThreadStrings }

constructor TThreadStrings.Create(aWnd: HWND);
begin
  FWnd := aWnd;
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TThreadStrings.Execute;
var
  S: TnxSession;
  Q: TnxQuery;
  Str : String;
  
begin
  inherited;
  Q := nil;
  S := TnxSession.Create(nil);
  try
    S.ServerEngine := Dados.RSE;
    S.Username := 'admin'; // do not localize
    S.Password := 'delphi9856'; // do not localize
    S.Active := True;

    Q := TnxQuery.Create(nil);
    Q.Session := S;
    Q.AliasName := 'NexCafe'; // do not localize
    
    Q.SQL.Text := 'select distinct(Bairro) as Bairro from Cliente'; // do not localize
    Q.Active := True;
    slBairros.Clear;
    Q.First;
    while not Q.Eof do begin
      Str := Trim(Q.FieldByName('Bairro').AsString); // do not localize
      if Str>'' then slBairros.Add(Str);
      Q.Next;
    end;

    Q.Active := False;
    Q.SQL.Text := 'select distinct(Cidade) as Cidade from Cliente'; // do not localize
    Q.Active := True;

    slCidades.Clear;
    Q.First;
    while not Q.Eof do begin
      Str := Trim(Q.FieldByName('Cidade').AsString); // do not localize
      if Str>'' then slCidades.Add(Str);
      Q.Next;
    end;
    PostMessage(FWnd, wm_user, 0, 0);
  except
  end;
  if Q<>nil then Q.Free;
  if S<>nil then S.Free;
end;

initialization
  slCidades := TStringList.Create;
  slBairros := TStringList.Create;

finalization
  slCidades.Free;
  slBairros.Free;

end.











