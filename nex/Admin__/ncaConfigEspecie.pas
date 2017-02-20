unit ncaConfigEspecie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxCheckBox, cxTextEdit, cxDropDownEdit, cxMaskEdit,
  cxImageComboBox, cxLabel, dxBar, cxClasses, ncEspecie;

type
  TFrmConfigEspecie = class(TForm)
    BarMgr: TdxBarManager;
    BarMgrBar1: TdxBar;
    cmGravar: TdxBarLargeButton;
    cmCancelar: TdxBarLargeButton;
    cxLabel2: TcxLabel;
    edImg: TcxImageComboBox;
    cxLabel1: TcxLabel;
    edNome: TcxTextEdit;
    cxLabel4: TcxLabel;
    cbPermTroco: TcxCheckBox;
    cbPermCred: TcxCheckBox;
    edTPag: TcxImageComboBox;
    lbTPag: TcxLabel;
    procedure cmGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FEsp : TncEspecie;
    FMostrarTPag : Boolean;
    procedure SaveTo(aEsp: TncEspecie);
    procedure Valida;
  public
    constructor Create(AOwner: TComponent; aEsp: TncEspecie; aMostrarTPag: Boolean = False);
    procedure Salvar;
    function Alterou: Boolean;

    function Editar: Boolean;

    procedure Ler;

    property Esp: TncEspecie read FEsp;

    { Public declarations }
  end;

var
  FrmConfigEspecie: TFrmConfigEspecie;

implementation

uses ncaDMImgEsp, ncaDM, ncaFrmPri;

{$R *.dfm}

resourcestring
  rsNomeEmBranco = 'Nome da forma de pagamento n�o pode ficar em branco';

{ TForm1 }

function TFrmConfigEspecie.Alterou: Boolean;
var aEsp : TncEspecie;
begin
  Alterou := True;
  if FEsp.ID=0 then Exit;
  aEsp := gEspecies.PorID[FEsp.ID];
  if aEsp=nil then Exit;
  if aEsp.Img<>edImg.EditValue then Exit;
  if aEsp.Nome<>edNome.Text then Exit;
  if aEsp.PermiteCred<>cbPermCred.Checked then Exit;
  if aEsp.PermiteTroco<>cbPermTroco.Checked then Exit;

  if lbTPag.Visible then
  if aEsp.TipoPagNFE<>edTPag.EditValue then Exit;
  
  Result := False;
end;

procedure TFrmConfigEspecie.cmGravarClick(Sender: TObject);
begin
  Valida;
  SaveTo(FEsp);
  ModalResult := mrOK;
end;

constructor TFrmConfigEspecie.Create(AOwner: TComponent; aEsp: TncEspecie; aMostrarTPag: Boolean = False);
begin
  FMostrarTPag := aMostrarTPag or Dados.NFCeAtivo;
  inherited Create(AOwner);
  FEsp := aEsp;
end;

function TFrmConfigEspecie.Editar: Boolean;
begin
  Ler;
  ShowModal;
  if ModalResult=mrOk then begin
    SaveTo(FEsp);
    Result := True;
  end else
    Result := False;
end;

procedure TFrmConfigEspecie.FormCreate(Sender: TObject);
var I:Integer;
begin
  lbTPag.Visible := FMostrarTPag;
  edTPag.Visible := FMostrarTPag;
  
  edImg.Properties.Items.Clear;

  for I := 0 to dmImgEsp.imgs48.Count - 1 do
    with edImg.Properties.Items.Add do begin
      Value := I;
      ImageIndex := I;
    end;
end;

procedure TFrmConfigEspecie.Ler;
begin
  edImg.EditValue := FEsp.Img;
  edNome.Text := FEsp.Nome;
  cbPermCred.Checked := FEsp.PermiteCred;
  cbPermTroco.Checked := FEsp.PermiteTroco;
  edTPag.EditValue := FEsp.TipoPagNFE;
end;

procedure TFrmConfigEspecie.Salvar;
begin
  if Alterou then
    Dados.CM.SalvaAlteracoesObj(FEsp, (FEsp.ID=0));
end;

procedure TFrmConfigEspecie.SaveTo(aEsp: TncEspecie);
begin
  Valida;
  aEsp.Img := edImg.EditValue;
  aEsp.Nome := edNome.Text;
  aEsp.PermiteCred := cbPermCred.Checked;
  aEsp.PermiteTroco := cbPermTroco.Checked;
  if edTPag.Visible then
    aEsp.TipoPagNFE := edTPag.EditValue;
end;

procedure TFrmConfigEspecie.Valida;
begin
  if Trim(edNome.Text)='' then begin
    edNome.SetFocus;
    raise Exception.Create(rsNomeEmBranco);

    if edTPag.Visible and (VarIsNull(edTPag.EditValue) or (edtPag.EditValue=0)) then begin
      edTPag.SetFocus;
      raise Exception.Create('� necess�rio informar a forma de pagamento correspondente na emiss�o do NFC-e');
    end;  
  end;
end;

end.
