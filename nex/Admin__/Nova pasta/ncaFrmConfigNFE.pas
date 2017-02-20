unit ncaFrmConfigNFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncaFrmBaseOpcao, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxDBEdit, cxLabel, Data.DB, kbmMemTable,
  cxCheckBox, dxGDIPlusClasses, Vcl.ExtCtrls, cxButtonEdit, ncaFrmNCMPesq;

type
  TFrmConfigNFE = class(TFrmBaseOpcao)
    panTopo: TLMDSimplePanel;
    img: TImage;
    edEmitirNFCe: TcxDBCheckBox;
    MT: TkbmMemTable;
    MTEmitirNFCe: TBooleanField;
    MTEmitirNFE: TBooleanField;
    MTCFOP_NFCe: TWordField;
    MTAutoEmitirNFCe: TBooleanField;
    MTCRT: TByteField;
    MTModeloNFE: TStringField;
    MTModeloNFCe: TStringField;
    MTSerieNFCe: TStringField;
    MTSerieNFe: TStringField;
    MTInicioNFe: TLongWordField;
    MTInicioNFCe: TLongWordField;
    MTRazaoSocial: TStringField;
    MTNomeFantasia: TStringField;
    MTCNPJ: TStringField;
    MTIE: TStringField;
    MTEnd_Logradouro: TStringField;
    MTEnd_Numero: TStringField;
    MTEnd_Bairro: TStringField;
    MTEnd_UF: TStringField;
    MTEnd_CEP: TStringField;
    MTEnd_Municipio: TStringField;
    MTEnd_CodMun: TStringField;
    MTEnd_CodUF: TByteField;
    MTTelefone: TStringField;
    MTCSOSN_Padrao: TWordField;
    MTCST_Padrao: TByteField;
    DS: TDataSource;
    btnPremium: TcxButton;
    LMDSimplePanel2: TLMDSimplePanel;
    panCRT: TLMDSimplePanel;
    lbCRT: TcxLabel;
    edCRT: TcxDBImageComboBox;
    edMostrarDadosNFE: TcxDBCheckBox;
    panSTPadrao: TLMDSimplePanel;
    lbNCMPadrao: TcxLabel;
    edNCMPadrao: TcxDBButtonEdit;
    LMDSimplePanel3: TLMDSimplePanel;
    lbSTPadrao: TcxLabel;
    edSTPadrao: TcxDBImageComboBox;
    MTNCM_Padrao: TStringField;
    lbNCMDescr: TcxLabel;
    MTMostrarDadosNFE: TBooleanField;
    procedure edEmitirNFCePropertiesChange(Sender: TObject);
    procedure edMostrarNCMPropertiesChange(Sender: TObject);
    procedure edMostrarSitTribPropertiesChange(Sender: TObject);
    procedure edNCMPadraoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edCRTPropertiesChange(Sender: TObject);
    procedure edNCMPadraoPropertiesChange(Sender: TObject);
  private
    FFrmNCM : TFrmNCMPesq;
    { Private declarations }
    procedure Atualiza;
    procedure UpdateNCMDescr;
  public
    { Public declarations }
    procedure Ler; override;
    procedure Salvar; override;
    function Alterou: Boolean; override;

    procedure Renumera; override;

    function NumItens: Integer; virtual; 

    
  end;

var
  FrmConfigNFE: TFrmConfigNFE;

implementation

{$R *.dfm}

uses ncaFrmPri, ncaDM, ncClassesBase;

{ TFrmConfigNFE }

function TFrmConfigNFE.Alterou: Boolean;
begin
  Result := True;
  with Dados do begin
    if edEmitirNFCe.Checked <> tNFConfigEmitirNFCe.Value then Exit;
    if edCRT.EditValue <> tNFConfigCRT.Value then Exit;
    if edMostrarDadosNFE.Checked <> tNFConfigMostrarDadosNFE.Value then Exit;
    if edNCMPadrao.Text <> tNFConfigNCM_Padrao.Value then Exit;
    if MTCSOSN_Padrao.Value <> tNFConfigCSOSN_Padrao.Value then Exit;
    if MTCST_Padrao.Value <> tNFConfigCST_Padrao.Value then Exit;
  end;  
  Result := False;
end;

procedure TFrmConfigNFE.Atualiza;
begin
  if edEmitirNFCe.Checked then begin
    edMostrarDadosNFE.Checked := True;
    edMostrarDadosNFE.Enabled := False;
    lbCRT.Enabled := True;
    edCRT.Enabled := True;
  end else begin
    edMostrarDadosNFE.Enabled := True;
    
    lbCRT.Enabled := edMostrarDadosNFE.Checked;
    edCRT.Enabled := edMostrarDadosNFE.Checked;
  end;
  lbNCMPadrao.Enabled := edMostrarDadosNFE.Checked;
  edNCMPadrao.Enabled := lbNCMPadrao.Enabled;
  lbSTPadrao.Enabled := edMostrarDadosNFE.Checked;
  edSTPadrao.Enabled := lbSTPadrao.Enabled;

  if MTCRT.Value=3 then begin
    lbSTPadrao.Caption := 'CST Padrão';
    edSTPadrao.DataBinding.DataField := 'CST_Padrao';
    edSTPadrao.RepositoryItem := Dados.erCST;
  end else begin
    lbSTPadrao.Caption := 'CSOSN Padrão';
    edSTPadrao.DataBinding.DataField := 'CSOSN_Padrao';
    edSTPadrao.RepositoryItem := Dados.erCSOSN;
  end;
end;

procedure TFrmConfigNFE.edCRTPropertiesChange(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

procedure TFrmConfigNFE.edEmitirNFCePropertiesChange(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

procedure TFrmConfigNFE.edMostrarNCMPropertiesChange(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

procedure TFrmConfigNFE.edMostrarSitTribPropertiesChange(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

procedure TFrmConfigNFE.edNCMPadraoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var aNCM, aNCMEx : String;  
begin
  if not Assigned(FFrmNCM) then
    FFrmNCM := gNCMPesqList.GetFrm;
  aNCM := MTNCM_Padrao.Value;
  aNCMEx := '';
  if FFrmNCM.Pesquisar(aNCM, aNCMEx) then begin
    MTNCM_Padrao.Value := aNCM;
    UpdateNCMDescr;
//    MTNCM_Ex.Value := aNCMEx;
  end;  
end;

procedure TFrmConfigNFE.edNCMPadraoPropertiesChange(Sender: TObject);
begin
  inherited;
  UpdateNCMDescr;
end;

procedure TFrmConfigNFE.FormCreate(Sender: TObject);
begin
  inherited;
  FFrmNCM := nil;
end;

procedure TFrmConfigNFE.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(FFrmNCM) then gNCMPesqList.ReleaseFrm(FFrmNCM);
end;

procedure TFrmConfigNFE.Ler;
begin
  inherited;
  MT.Active := False;
  MT.Active := True;
  MT.Append;
  TransfDados(Dados.tNFConfig, MT);
  Atualiza;
  btnPremium.Visible := gConfig.IsPremium and (not gConfig.Pro);
end;

function TFrmConfigNFE.NumItens: Integer;
begin
  Result := 4;
end;

procedure TFrmConfigNFE.Renumera;
begin
  RenumCB(edEmitirNFCe, 0);
  RenumCB(edMostrarDadosNFE, 1);
  RenumLB(lbCRT, 2);
end;

procedure TFrmConfigNFE.Salvar;
begin
  inherited;

  if (MTNCM_Padrao.Value>'') and (not Dados.tbNCM.Locate('NCM', MTNCM_Padrao.Value, [])) then
    raise Exception.Create('O NCM informado não existe');
    
  with Dados do begin
    if tNFConfig.IsEmpty then 
      tNFConfig.Append else
      tNFConfig.Edit;
    TransfDados(MT, tNFConfig);
    tNFConfig.Post;  
  end;
end;

procedure TFrmConfigNFE.UpdateNCMDescr;
var S: String;
begin
  S := Trim(edNCMPadrao.Text);
  with Dados do 
  if S>'' then
  if tbNCM.Locate('NCM', S, []) then
    lbNCMDescr.Caption := tbNCMDescricao.Value else
    lbNCMDescr.Caption := '';
end;

end.
