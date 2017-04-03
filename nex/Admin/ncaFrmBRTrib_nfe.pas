unit ncaFrmBRTrib_nfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncaFrmBaseCadastroMT, Data.DB,
  kbmMemTable, dxBar, cxClasses, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControl, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit,
  cxDropDownEdit, cxImageComboBox, cxLabel, cxCurrencyEdit, cxButtonEdit, nxdb, ncaFrmPesqCFOP,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxMemo, cxCheckBox;

type
  TFrmBRTrib_nfe = class(TFrmBaseCadastroMT)
    MTID: TWordField;
    MTNome: TStringField;
    MTOrigem: TByteField;
    MTCST: TWordField;
    MTCSOSN: TWordField;
    MTICMS: TFloatField;
    MTPadrao: TBooleanField;
    MTCFOP_nfce: TWordField;
    LCGroup_Root: TdxLayoutGroup;
    LC: TdxLayoutControl;
    edCod: TcxDBSpinEdit;
    lcCod: TdxLayoutItem;
    edNome: TcxDBTextEdit;
    lcNome: TdxLayoutItem;
    lcOrigem: TdxLayoutItem;
    edOrigem: TcxDBImageComboBox;
    tAux: TnxTable;
    tAuxID: TWordField;
    mtItens: TkbmMemTable;
    mtItenscsosn: TLongWordField;
    mtItenscfop: TLongWordField;
    mtItensobsfiscal: TWideMemoField;
    mtItensicms: TFloatField;
    mtItensnome: TStringField;
    dsItens: TDataSource;
    LMDSimplePanel1: TLMDSimplePanel;
    panGrid: TdxLayoutItem;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVnome: TcxGridDBColumn;
    TVdentro_estado: TcxGridDBColumn;
    TVcsosn: TcxGridDBColumn;
    TVcfop: TcxGridDBColumn;
    TVicms: TcxGridDBColumn;
    TVobsfiscal: TcxGridDBColumn;
    GL: TcxGridLevel;
    lbObs: TcxLabel;
    mtItenslocal: TByteField;
    lcCSOSN: TdxLayoutItem;
    edCSOSN: TcxDBImageComboBox;
    grNFCe: TdxLayoutGroup;
    lcCFOP: TdxLayoutItem;
    edCFOP_NFCe: TcxDBButtonEdit;
    lcICMS: TdxLayoutItem;
    edICMS: TcxDBCurrencyEdit;
    grPag: TdxLayoutGroup;
    lclbCFOP: TdxLayoutItem;
    lbCFOP: TcxLabel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    mtItensnatop: TStringField;
    TVnatop: TcxGridDBColumn;
    mtItenstipo: TByteField;
    edPermiteCredICMS: TcxDBCheckBox;
    lcPermiteCredIcms: TdxLayoutItem;
    MTnfe_credicms: TBooleanField;
    panICMSSt: TLMDSimplePanel;
    lcICMSSt: TdxLayoutItem;
    gridST: TcxGrid;
    tvST: TcxGridDBTableView;
    TVUF: TcxGridDBColumn;
    TVMVA: TcxGridDBColumn;
    glST: TcxGridLevel;
    mtST: TkbmMemTable;
    mtSTuf: TStringField;
    dsST: TDataSource;
    mtSTperc: TFloatField;
    MTICMSSt: TMemoField;
    cxLabel1: TcxLabel;
    procedure lcNomeCaptionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TVcfopPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure lbObsClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCFOP_NFCePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edCFOP_NFCePropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FCFOPOk : Boolean;
    FCodAnt : Word;
    FPesqCFOP : TFrmPesqCFOP;
    function NexCod: Word;
    
  protected
    procedure LoadItens; override;
    procedure SaveItens; override;
    procedure LoadSt; 
    procedure SaveSt; 
    procedure UpdateCFOP;
  public
    { Public declarations }

    procedure Salvar; override;

    procedure Validar; override;
  end;

var
  FrmBRTrib_nfe: TFrmBRTrib_nfe;

implementation

{$R *.dfm}

uses ncaFrmPri, ncaDM, ncaFrmObs, ncClassesBase, ncTipoTran;

procedure TFrmBRTrib_nfe.edCFOP_NFCePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var 
  aCod: Word;  
  aOk : Boolean;
begin
  inherited;
  if not Assigned(FPesqCFOP) then 
    FpesqCFOP := gPesqCFOPList.GetFrm;

  aCod := StrToIntDef(edCFOP_NFCE.EditText, 0);

  aOk := FpesqCFOP.Pesquisar(4, 0, aCod, filtro_nfce);
  Dados.tCFOP.refresh;
  if aOk then
    MTCFOP_NFCE.Value := aCod;
  UpdateCFOP;  
end;

procedure TFrmBRTrib_nfe.edCFOP_NFCePropertiesChange(Sender: TObject);
begin
  inherited;
  edCFOP_NFCe.PostEditValue;
  UpdateCFOP;
end;

procedure TFrmBRTrib_nfe.FormCreate(Sender: TObject);
begin
  inherited;
//  grNFCe.Visible := Dados.tNFConfigEmitirNFCe.Value;
  FPesqCFOP := nil;
  lbCFOP.Caption := '';
  FCodAnt := 0;
  if Dados.NFeAtivo or (not Dados.NFCeAtivo) then
    panGrid.MakeVisible else
    grNFCe.MakeVisible;
end;

procedure TFrmBRTrib_nfe.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(FPesqCFOP) then gPesqCFOPList.ReleaseFrm(FPesqCFOP);
end;

procedure TFrmBRTrib_nfe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
    Key_F4 : lbObsClick(nil);
    Key_F2 : if cmGravar.Enabled then cmGravar.Click;
  end;
end;

procedure TFrmBRTrib_nfe.FormShow(Sender: TObject);
begin
  inherited;
  if Novo then MTID.Value := NexCod;
  FCodAnt := MTID.Value;
  UpdateCFOP;
  lcPermiteCredICMS.Visible := Dados.EmiteNFeVenda and Dados.tNFConfignfe_permite_cred_icms.Value;
end;

procedure TFrmBRTrib_nfe.lbObsClick(Sender: TObject);
var S: String;
begin
  inherited;
  S := mtItensobsfiscal.Value;
  if TFrmObs.Create(Self).Editar(S, True) then begin
    if mtItens.State<>dsEdit then mtItens.Edit;
    mtItensobsfiscal.Value := S;
  end;
end;

procedure TFrmBRTrib_nfe.lcNomeCaptionClick(Sender: TObject);
begin
  inherited;
  edNome.SetFocus;
end;

procedure TFrmBRTrib_nfe.LoadItens;
var 
  I: Integer;
  T: TncTipoTran;

procedure Add(aLocal: Byte);
begin
  with Dados do begin
    mtItens.Append;
    mtItensNome.Value := T.Nome;
    mtItensLocal.Value := aLocal;
    mtItensTipo.Value := T.Tipo;
    if not Novo then 
    if tbBRTrib_Tipo.FindKey([MTID.Value, T.Tipo, aLocal]) then begin
      mtItensICMS.Value := tbBRTrib_TipoICMS.Value;
      mtItensCFOP.Value := tbBRTrib_TipoCFOP.Value;
      mtItensCSOSN.Value := tbBRTrib_TipoCSOSN.Value;
      mtItensobsfiscal.Value := tbBRTrib_Tipoobsfiscal.Value;
      mtItensnatop.Value := tbBRTrib_Tiponatop.Value;
    end;
    mtItens.Post;
  end;
end;

begin
  LoadSt;
  mtItens.Active := False;
  mtItens.Active := True;
  with Dados do begin
    tbBRTrib_Tipo.IndexName := 'I_brtrib_tipo';
    for i := 0 to gListaTipoTran.Count-1 do begin
      T := gListaTipoTran.Itens[I];
      if T.Emite_nfe and (T.Tipo<>trEstDevFor) then begin
        Add(0);
        Add(1);
        Add(2);
      end;
    end;
    mtItens.First;
  end;
end;

procedure TFrmBRTrib_nfe.LoadSt;
var 
  b: byte;
  sl: TStrings;
begin
  sl := TStringList.Create;
  try
    mtST.Active := False;
    mtST.Active := True;
    sl.Text := MTICMSSt.Value;
    for b := 0 to High(uf_br) do 
    if not SameText(uf_br[b], Dados.tNFConfigEnd_UF.Value) then begin
      if mtST.FindKey([uf_br[b]]) then
        mtST.Edit else
        mtST.Append;
      mtSTuf.Value := uf_br[b];
      mtSTperc.Value := StrParaFloat(sl.Values[mtSTuf.Value]);
      mtST.Post;
    end;
    mtST.First;
  finally
    sl.Free;
  end;
end;

function TFrmBRTrib_nfe.NexCod: Word;
begin
  if tAux.IsEmpty then
    Result := 1
  else begin
    tAux.Last;
    Result := tAuxID.Value + 1;
  end;
end;

procedure TFrmBRTrib_nfe.Salvar;
begin
  with Dados do begin
    InitTran(db, [tbBRTrib_Tipo], True);
    try
      SaveSt;
      inherited;
      db.Commit;
    except
      on  E: Exception do begin
        db.Rollback;
        raise;
      end;
    end;
  end;
end;

procedure TFrmBRTrib_nfe.SaveItens;
begin
  mtItens.First;
  with Dados do
  while not mtItens.Eof do begin
    if tbBRTrib_Tipo.FindKey([MTID.Value, mtItensTipo.Value, mtItensLocal.Value]) then 
      tbBRTrib_Tipo.Edit else
      tbBRTrib_Tipo.Append;
    tbBRTrib_TipoTipo.Value := mtItensTipo.Value;
    tbBRTrib_Tipoid_brtrib.Value := MTID.Value;
    tbBRTrib_TipoLocal.Value := mtItensLocal.Value;
    tbBRTrib_TipoICMS.Value := mtItensICMS.Value;
    tbBRTrib_TipoCFOP.Value := mtItensCFOP.Value;
    tbBRTrib_TipoCSOSN.Value := mtItensCSOSN.Value;
    tbBRTrib_Tipoobsfiscal.Value := mtItensobsfiscal.Value;
    tbBRTrib_Tiponatop.Value := mtItensnatop.Value;
    tbBRTrib_Tipo.Post;
    mtItens.Next;
  end;
end;  
  
procedure TFrmBRTrib_nfe.SaveSt;
var sl: TStrings;
begin
  sl := TStringList.Create;
  try
    mtST.first;
    while not mtST.Eof do begin
      sl.Values[mtSTuf.value] := FloatParaStr(mtSTperc.Value);
      mtST.Next;
    end;
    if not (MT.State in [dsInsert, dsEdit]) then MT.Edit;
    sl.Values[Dados.tNFConfigEnd_UF.Value] := FloatParaStr(edICMS.Value);
    MTICMSSt.Value := sl.Text;
  finally
    sl.Free;
  end;
end;

procedure TFrmBRTrib_nfe.TVcfopPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var 
  aCod: Word;  
  aOk : Boolean;
begin
  inherited;
  if not Assigned(FPesqCFOP) then 
    FpesqCFOP := gPesqCFOPList.GetFrm;

  aCod := mtItensCFOP.Value;

  aOk := FpesqCFOP.Pesquisar(mtItenstipo.value, mtItenslocal.Value, aCod);
  Dados.tCFOP.refresh;

  if aOk then begin
    if mtItens.State<>dsEdit then
      mtItens.Edit;
    mtItensCFOP.Value := aCod;
    //if Trim(mtItensnatop.Value)='' then
    if mtItensCFOP.Value <> aCod then
      mtItensnatop.Value := FpesqCFOP.TabDescricao.Value;
  end;
end;

procedure TFrmBRTrib_nfe.UpdateCFOP;
var S: String;
begin
  S := SoDig(edCFOP_NFCe.Text);
  with Dados do begin
    FCFOPOk := (S>'') and tCFOP.FindKey([S]) and tCFOPNFCe.Value;
    if FCFOPOk then
      lbCFOP.Caption := tCFOPDescricao.Value 
    else begin
      if edCFOP_nfce.Text>'' then
        lbCFOP.Caption := 'CFOP informada não existe' else
        lbCFOP.Caption := '';
    end;
  end;    
end;

function SoDig(S: String): String;
var i: integer;
begin
  REsult := '';
  for i := 1 to Length(S) do if S[i] in ['0'..'9']  then Result := Result + S[i];
end;

procedure TFrmBRTrib_nfe.Validar;
begin
  inherited;
  edCod.SetFocus;
  edNome.SetFocus;
  
  if (edCod.Value <> FCodAnt) and tAux.FindKey([edCod.Value]) then begin
     edCod.SetFocus;
     raise exception.Create('Esse código já existe!');
  end;
  
  if Trim(edNome.Text)='' then begin 
    edNome.SetFocus;
    raise exception.Create('É necessário informar um nome para essa tributação');
  end;

  if VarIsNull(edOrigem.EditValue) then begin
    edOrigem.SetFocus;
    raise exception.Create('É necessário informar a origem para essa tributação');
  end;

  if Dados.NFCeAtivo then begin
    if VarIsNull(edCSOSN.EditValue) and lcCSOSN.Visible then begin
      grNFCe.MakeVisible;
      edCSOSN.SetFocus;
      raise Exception.Create('É necessário informar a CSOSN');
    end;

    if not FCFOPOk then begin
      grNFCe.MakeVisible;
      edCFOP_NFCE.SetFocus;
      if lbCFOP.Caption='' then 
        raise exception.Create('É necessário informar um CFOP válido') else
        raise exception.Create(lbCFOP.Caption);
    end;  
  end;

  if not Dados.NFeAtivo then Exit;

  mtItens.First;
  while not mtItens.Eof do begin
    panGrid.MakeVisible;
    if mtItensLocal.Value=0 then begin
      if mtItensCSOSN.Value=0 then
        raise Exception.Create('É necessário informar a CSOSN');
      if mtItensCFOP.Value=0 then
        raise Exception.Create('É necessário informar a CFOP');
      if not Dados.tCFOP.Locate('Codigo', mtItensCFOP.Value, []) then
        raise Exception.Create('A CFOP informada não existe!');
      if Trim(mtItensNatOp.Value)='' then
        raise Exception.Create('É necessário informar uma descrição de Natureza da Operação para constar na NF-e');
    end;
    mtItens.Next;
  end;
end;

end.

