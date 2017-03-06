unit ncaFrmNCMEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxLabel, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.StdCtrls, cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, ncaFrmNCMPesq, ncaFrmBRTribPesq,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Data.DB,
  nxdb;

type
  TFrmNCMEdit = class(TForm)
    LMDSimplePanel2: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    LMDSimplePanel1: TLMDSimplePanel;
    img: TImage;
    lbHeader: TcxLabel;
    lbMsg: TcxLabel;
    LMDSimplePanel3: TLMDSimplePanel;
    lbPadrao: TcxLabel;
    lbTribPadrao: TcxLabel;
    edNCM: TcxButtonEdit;
    lbPrompNCM: TcxLabel;
    lbNomeNCM: TcxLabel;
    lbTrib: TcxLabel;
    edTrib: TcxButtonEdit;
    lbPromptTrib: TcxLabel;
    lbUnidade: TcxLabel;
    cbUnid: TcxComboBox;
    lbUnid2: TcxLabel;
    tUnid: TnxTable;
    tUnidDescricao: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure lbPadraoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edNCMPropertiesChange(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edNCMPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure edNCMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edTribKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lbTribPadraoClick(Sender: TObject);
    procedure edTribPropertiesChange(Sender: TObject);
    procedure edTribPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edNCMKeyPress(Sender: TObject; var Key: Char);
    procedure edTribKeyPress(Sender: TObject; var Key: Char);
    procedure cbUnidKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cbUnidKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FNCMOk : Boolean;
    FTribOk : Boolean;
    FNCMEx : String;
    FProduto : Cardinal;
    FPesq    : TFrmNCMPesq;
    FPesqT   : TFrmBRTribPesq;
  public
    { Public declarations }
    procedure AchaNCM;
    procedure AchaTrib;
    function ObtemNCM(aProduto: Cardinal): Boolean;
  end;

var
  FrmNCMEdit: TFrmNCMEdit;

implementation

{$R *.dfm}

uses ncaFrmPri, ncaDM, ncaFrmNCMEx;

procedure TFrmNCMEdit.AchaNCM;
begin
  FNCMOk := (edNCM.Text>'') and Dados.tbNCM.Locate('NCM', edNCM.Text, []);

  if FNCMOk then 
    lbNomeNCM.Caption := Dados.tbNCMDescricao.Value else
    lbNomeNCM.Caption := '';
  
end;

procedure TFrmNCMEdit.AchaTrib;
begin
  FTribOk := (edTrib.Text>'') and Dados.tBrTrib.Locate('ID', edTrib.Text, []);

  if FTribOk then
    lbTrib.Caption := Dados.tBrTribNome.Value else
    lbTrib.Caption := '';
end;

procedure TFrmNCMEdit.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmNCMEdit.btnSalvarClick(Sender: TObject);
begin
  if not FNCMOk then begin
    if Trim(edNCM.Text)>'' then begin
      edNCM.SetFocus;
      raise exception.Create('O NCM informado não existe');
    end else begin
      edNCM.SetFocus;
      raise Exception.Create('É necessário informar um NCM');
    end;
  end;

  if not FTribOk then begin
    if Trim(edTrib.Text)>'' then begin
      edTrib.SetFocus;
      raise exception.Create('O código de tributação informado não existe');
    end else begin
      edTrib.SetFocus;
      raise Exception.Create('É necessário informar a tributação');
    end;
  end;

  if Trim(cbUnid.Text)='' then begin
    cbUnid.SetFocus;
    raise exception.Create('É necessário informar a unidade de venda');
  end;
  
  with Dados do begin
    FNCMEx := '';
    if not TFrmNCMEx.Create(Self).ObtemEx(edNCM.Text, FNCMEx) then Exit;
    
    tbPro.Locate('ID', FProduto, []);
    tbPro.Edit;
    tbProNCM.Value := edNCM.Text;
    tbProbrtrib.Value := StrToInt(edTrib.Text);
    tbProUnid.Value := cbUnid.Text;
    tbPro.Post;              
  end;
  
  ModalResult := mrOk;
end;

procedure TFrmNCMEdit.cbUnidKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=KEY_ENTER) or (Key=Key_Down) then
    btnSalvar.SetFocus
  else
  if Key=Key_Up then
    edTrib.SetFocus;
end;

procedure TFrmNCMEdit.cbUnidKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then Key := #0;
end;

procedure TFrmNCMEdit.edNCMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=KEY_ENTER) or (Key=Key_Down) then
    edTrib.SetFocus;
end;

procedure TFrmNCMEdit.edNCMKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then Key := #0;
  
end;

procedure TFrmNCMEdit.edNCMPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var aNCM, aNCMEx : String;  
begin
  if not Assigned(FPesq) then
    FPesq := gNCMPesqList.GetFrm;
  aNCM := edNCM.Text;
  if FPesq.Pesquisar(aNCM, FNCMEx) then begin
    edNCM.Text := aNCM;
    AchaNCM;
  end;  
end;

procedure TFrmNCMEdit.edNCMPropertiesChange(Sender: TObject);
begin
  AchaNCM;
end;

procedure TFrmNCMEdit.edTribKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=KEY_ENTER) or (Key=Key_Down) then begin
    if cbUnid.Visible then
      cbUnid.SetFocus
    else
      btnSalvar.SetFocus;
  end;
  if Key=Key_Up then
    edNCM.SetFocus;
end;

procedure TFrmNCMEdit.edTribKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then Key := #0;
end;

procedure TFrmNCMEdit.edTribPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var aTrib: Word;
begin
  if not Assigned(FPesqT) then
    FPesqT := gBrTribPesqList.GetFrm;
  aTrib := StrToIntDef(edTrib.Text, 0);
  if FPesqT.Pesquisar(aTrib) then begin
    edTrib.Text := IntToStr(aTrib);
    AchaTrib;
  end;  
end;

procedure TFrmNCMEdit.edTribPropertiesChange(Sender: TObject);
begin
  AchaTrib;
end;

procedure TFrmNCMEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmNCMEdit.FormCreate(Sender: TObject);
var S: String;
begin
  FNCMEx := '';
  FPesq := nil;
  FPesqT := nil;
  with Dados do begin
    if tNFConfigNCM_Padrao.Value='' then
      lbPadrao.Visible := False else
      lbPadrao.Caption := Format(lbPadrao.Caption, [tNFConfigNCM_Padrao.Value]);

    if tNFConfigTrib_Padrao.Value=0 then
      lbTribPadrao.Visible := False else
      lbTribPadrao.Caption := Format(lbTribPadrao.Caption, [tNFConfigTrib_Padrao.AsString]);
  end;

  S := '';

  tUnid.First;
  while not tUnid.Eof do begin
    if S>'' then S := S + sLineBreak;
    S := S + tUnidDescricao.Value; 
    tUnid.Next;
  end;

  cbUnid.Properties.Items.Text := S;
end;

procedure TFrmNCMEdit.FormDestroy(Sender: TObject);
begin
  if Assigned(FPesq) then gNCMPesqList.ReleaseFrm(FPesq);
  if Assigned(FPesqT) then gBRTribPesqList.ReleaseFrm(FPesqT);
end;

procedure TFrmNCMEdit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Key_F2 then
    btnSalvar.Click;
end;

procedure TFrmNCMEdit.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then begin
    Key := #0;
    ModalResult := mrCancel;                  
  end;
end;

procedure TFrmNCMEdit.FormShow(Sender: TObject);
begin
  if Trim(edNCM.Text)='' then 
    edNCM.SetFocus
  else
  if Trim(edTrib.Text)='' then 
    edTrib.SetFocus
  else
  if Trim(cbUnid.Text)='' then cbUnid.SetFocus;
end;

procedure TFrmNCMEdit.lbPadraoClick(Sender: TObject);
begin
  edNCM.Text := Dados.tNFConfigNCM_Padrao.Value;
end;

procedure TFrmNCMEdit.lbTribPadraoClick(Sender: TObject);
begin
  edTrib.Text := Dados.tNFConfigTrib_Padrao.AsString;
end;

function TFrmNCMEdit.ObtemNCM(aProduto: Cardinal): Boolean;
begin
  FProduto := aProduto;
  lbNomeNCM.Caption := '';
  lbTrib.Caption := '';
  with Dados do begin
    if not tbPro.Locate('ID', aProduto, []) then raise exception.Create('Produto não encontrado: '+IntToStr(aProduto));
//    lbHeader.Caption := lbHeader.Caption + tbProDescricao.Value;
    edNCM.Text := tbProNCM.Value;
    FNCMEx := tbProNCM_Ex.Value;

    edTrib.Text := tbProbrtrib.AsString;
    cbUnid.Text := tbProUnid.Value;
  end;
  Beep;
  ShowModal;

  Result := (ModalResult=mrOk);
end;

end.
