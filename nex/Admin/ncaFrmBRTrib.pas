unit ncaFrmBRTrib;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncaFrmBaseCadastroMT, Data.DB,
  kbmMemTable, dxBar, cxClasses, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControl, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit,
  cxDropDownEdit, cxImageComboBox, cxLabel, cxCurrencyEdit, cxButtonEdit, nxdb, ncaFrmPesqCFOP;

type
  TFrmBRTrib = class(TFrmBaseCadastroMT)
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
    lcCST: TdxLayoutItem;
    edST: TcxDBImageComboBox;
    lcCSOSN: TdxLayoutItem;
    edCSOSN: TcxDBImageComboBox;
    edCFOP_NFCe: TcxDBButtonEdit;
    lcCFOP_NFCE: TdxLayoutItem;
    edICMS: TcxDBCurrencyEdit;
    lcICMS: TdxLayoutItem;
    lbCFOP: TcxLabel;
    LCItem1: TdxLayoutItem;
    LCGroup1: TdxLayoutAutoCreatedGroup;
    tAux: TnxTable;
    tAuxID: TWordField;
    procedure lcNomeCaptionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edCFOP_NFCePropertiesEditValueChanged(Sender: TObject);
    procedure edCFOP_NFCePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FCFOPOk : Boolean;
    FCodAnt : Word;
    FPesqCFOP : TFrmPesqCFOP;
    function NexCod: Word;
    procedure UpdateCFOP;
  public
    { Public declarations }

    procedure Validar; override;
  end;

var
  FrmBRTrib: TFrmBRTrib;

implementation

{$R *.dfm}

uses ncaFrmPri, ncaDM;

procedure TFrmBRTrib.edCFOP_NFCePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var 
  aCod: Word;  
  aOk : Boolean;
begin
  inherited;
  if not Assigned(FPesqCFOP) then 
    FpesqCFOP := gPesqCFOPList.GetFrm;

  aCod := StrToIntDef(edCFOP_NFCE.EditText, 0);
  aOk := FpesqCFOP.Pesquisar(aCod, filtro_nfce);
  Dados.tCFOP.refresh;
  if aOk then
    MTCFOP_NFCE.Value := aCod;
  UpdateCFOP;  
end;

procedure TFrmBRTrib.edCFOP_NFCePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  edCFOP_NFCe.PostEditValue;
  UpdateCFOP;
end;

procedure TFrmBRTrib.FormCreate(Sender: TObject);
begin
  inherited;
  FPesqCFOP := nil;
  lcCST.Visible := (Dados.tNFConfigCRT.Value=3);
  lcCSOSN.Visible := not lcCST.Visible;
{  Dados.tCFOP.Filter := 'NFCe = true';
  Dados.tCFOP.Filtered := True;}
  FCodAnt := 0;
end;

procedure TFrmBRTrib.FormDestroy(Sender: TObject);
begin
  inherited;
{  Dados.tCFOP.Filter := '';
  Dados.tCFOP.Filtered := False;}
  if Assigned(FPesqCFOP) then 
    gPesqCFOPList.ReleaseFrm(FPesqCFOP);
end;

procedure TFrmBRTrib.FormShow(Sender: TObject);
begin
  inherited;
  if Novo then MTID.Value := NexCod;
  FCodAnt := MTID.Value;
  
  UpdateCFOP;
end;

procedure TFrmBRTrib.lcNomeCaptionClick(Sender: TObject);
begin
  inherited;
  edNome.SetFocus;
end;

function TFrmBRTrib.NexCod: Word;
begin
  if tAux.IsEmpty then
    Result := 1
  else begin
    tAux.Last;
    Result := tAuxID.Value + 1;
  end;
end;

function SoDig(S: String): String;
var i: integer;
begin
  REsult := '';
  for i := 1 to Length(S) do if S[i] in ['0'..'9']  then Result := Result + S[i];
end;

procedure TFrmBRTrib.UpdateCFOP;
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

procedure TFrmBRTrib.Validar;
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

  if VarIsNull(edCSOSN.EditValue) and lcCSOSN.Visible then begin
    edCSOSN.SetFocus;
    raise Exception.Create('É necessário informar a CSOSN para essa tributação');
  end;

  if lcCST.Visible and VarIsNull(edST.EditValue) then begin
    edST.SetFocus;
    raise Exception.Create('É necessário informar o CST para essa tributação');
  end;
  
  if not FCFOPOk then begin
    edCFOP_NFCE.SetFocus;
    if lbCFOP.Caption='' then 
      raise exception.Create('É necessário informar um CFOP válido') else
      raise exception.Create(lbCFOP.Caption);
  end;  
end;

end.


Caixa.nx1
Categoria.nx1
CC.nx1
Cliente.nx1
Config.nx1
ConvUnid.nx1
Credito.nx1
Debito.nx1
Doc.nx1
EmailCorpo.nx1
EmailCriar.nx1
EmailEnvio.nx1
Especie.nx1
Espera.nx1
HCred.nx1
HPass.nx1
infoCampanha.nx1
IOrcamento.nx1
ITran.nx1
Layout.nx1
LinkXML.nx1
Log.nx1
Maq.nx1
Maquina.nx1
MovEst.nx1
MsgCli.nx1
MunBr.nx1
NCM.nx1
NFCONFIG.nx1
NFE.nx1
Ocupacao.nx1
Orcamento.nx1
PagEspecies.nx1
Passaporte.nx1
Post.nx1
PostMS.nx1
ProdFor.nx1
Produto.nx1
RecDel.nx1
Sessao.nx1
syslog.nx1
temp.nx1
Terminal.nx1
TipoAcesso.nx1
TipoME.nx1
TipoPass.nx1
Tran.nx1
Unidade.nx1
Usuario.nx1
