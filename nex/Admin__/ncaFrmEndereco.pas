unit ncaFrmEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, LMDControl, LMDCustomControl, DB,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxLayoutContainer, ncEndereco,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxButtonEdit,
  cxMaskEdit, cxTextEdit, cxDropDownEdit, cxImageComboBox, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxLabel;

type
  
  TFrmEndereco = class(TForm)
    panPri: TLMDSimplePanel;
    LC: TdxLayoutControl;
    LCGroup_Root: TdxLayoutGroup;
    lgPais: TdxLayoutGroup;
    lgInt: TdxLayoutGroup;
    lgBR: TdxLayoutGroup;
    edPais: TcxImageComboBox;
    lcPais: TdxLayoutItem;
    edDest: TcxTextEdit;
    lcDest: TdxLayoutItem;
    edbr_cep: TcxMaskEdit;
    lcbr_cep: TdxLayoutItem;
    edObs: TcxTextEdit;
    lcObs: TdxLayoutItem;
    edint_endereco: TcxTextEdit;
    lcint_endereco: TdxLayoutItem;
    edbr_Logr: TcxTextEdit;
    lcbr_logradouro: TdxLayoutItem;
    edbr_cidade: TcxComboBox;
    lcbr_cidade: TdxLayoutItem;
    edbr_bairro: TcxComboBox;
    lcbr_bairro: TdxLayoutItem;
    edbr_complemento: TcxTextEdit;
    lcbr_complemento: TdxLayoutItem;
    edbr_numero: TcxTextEdit;
    lcbr_numero: TdxLayoutItem;
    edbr_codmun: TcxButtonEdit;
    lcbr_codmun: TdxLayoutItem;
    edint_endereco2: TcxTextEdit;
    lcint_endereco2: TdxLayoutItem;
    edint_cep: TcxTextEdit;
    lcint_cep: TdxLayoutItem;
    edint_uf: TcxTextEdit;
    lcint_uf: TdxLayoutItem;
    edint_cidade: TcxComboBox;
    lcint_cidade: TdxLayoutItem;
    edint_bairro: TcxComboBox;
    lcint_bairro: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    edbr_uf: TcxComboBox;
    lcbr_uf: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    LMDSimplePanel2: TLMDSimplePanel;
    LMDSimplePanel1: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    procedure FormCreate(Sender: TObject);
    procedure edPaisPropertiesCloseUp(Sender: TObject);
    procedure edPaisPropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    FDados : TncEndereco;

    procedure SaveTo(E: TncEndereco);

  public
    procedure Populate(E: TncEndereco; aTudo: Boolean);

    procedure UpdateBairroCidade(slBairros, slCidades: TStrings);

    function Editar(aDados: TncEndereco): Boolean;
    
    { Public declarations }
  end;

var
  FrmEndereco: TFrmEndereco;

implementation

{$R *.dfm}

uses ncaDM, ncaFrmPri, ncClassesBase;

procedure TFrmEndereco.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEndereco.btnSalvarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

function TFrmEndereco.Editar(aDados: TncEndereco): Boolean;
begin
  FDados.Assign(aDados);
  Populate(aDados, True);
  ShowModal;
  if ModalResult=mrOk then begin
    Result := True;
    SaveTo(aDados);
    if aDados.is_foreign then aDados.enCodMun := '';
  end else
    Result := False;
end;

procedure TFrmEndereco.edPaisPropertiesChange(Sender: TObject);
begin
  if edPais.Focused then begin
    SaveTo(FDados);
    Populate(FDados, False);
  end;
end;

procedure TFrmEndereco.edPaisPropertiesCloseUp(Sender: TObject);
begin
  edPais.PostEditValue;
end;

procedure TFrmEndereco.FormCreate(Sender: TObject);
begin
  lgPais.LayoutDirection := ldVertical;
  FDados := TncEndereco.Create;
end;

procedure TFrmEndereco.FormDestroy(Sender: TObject);
begin
  FDados.Free;
end;


procedure TFrmEndereco.Populate(E: TncEndereco; aTudo : Boolean);
begin
  if aTudo then begin
    edDest.Text := E.enDest;
    edPais.EditValue := E.enPais;
    edobs.text := E.enObs;
  end;
  
  if SameText('BR', E.enPais) then begin
    lgBR.visible := True;
    lgInt.Visible := False;
    edbr_cep.Text := E.enCEP;
    edbr_logr.Text := E.enEndereco;
    edbr_numero.Text := E.enNumero;
    edbr_complemento.Text := E.enEndereco2;
    edbr_bairro.Text := E.enBairro;
    edbr_cidade.Text := E.enCidade;
    edbr_uf.Text := E.enUF;
    edbr_codmun.Text := E.enCodMun;
  end else begin
    lgBR.visible := False;
    lgInt.Visible := True;
    edint_endereco.Text := E.enEndereco;
    edint_endereco2.Text := E.enEndereco2;
    edint_bairro.text := E.enBairro;
    edint_cidade.text := E.enCidade;
    edint_uf.Text := E.enUF;
    edint_cep.text := E.enCEP;
  end;
end;

procedure TFrmEndereco.SaveTo(E: TncEndereco);
begin
  E.enDest := edDest.Text;
  E.enPais := edPais.EditValue;
  E.enObs := edobs.text;

  if lgBR.Visible then begin
    E.enCEP := edbr_cep.text;
    E.enEndereco := edbr_logr.Text;
    E.enNumero := edbr_numero.Text;
    E.enEndereco2 := edbr_complemento.Text;
    E.enBairro := edbr_bairro.Text;
    E.enCidade := edbr_cidade.Text;
    E.enUF := edbr_uf.Text;
    E.enCodMun := edbr_codmun.Text;
  end else begin
    E.enEndereco := edint_endereco.Text;
    E.enEndereco2 := edint_endereco2.Text;
    E.enBairro := edint_bairro.text;
    E.enCidade := edint_cidade.text;
    E.enUF := edint_uf.Text;
    E.enCEP := edint_cep.text;
  end;
end;

procedure TFrmEndereco.UpdateBairroCidade(slBairros, slCidades: TStrings);
begin
  edbr_bairro.Properties.Items.Text := slBairros.Text;
  edbr_cidade.Properties.Items.Text := slCidades.Text;
end;

end.
