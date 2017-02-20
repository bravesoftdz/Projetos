unit ncaGM_FrmParam;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxEdit, cxTextEdit, cxImage, cxVGrid,
  cxInplaceContainer, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, Vcl.StdCtrls, cxClasses, Vcl.Menus,
  cxButtons, cxContainer, cxLabel, Vcl.ExtCtrls, cxDBVGrid, Data.DB, kbmMemTable,
  nxdb, cxMemo, cxCheckBox;

type
  TFrmGMParam = class(TForm)
    panTop: TLMDSimplePanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    MT: TkbmMemTable;
    MTRecNomeLoja: TStringField;
    MTDocParam_Email: TStringField;
    MTDocParam_Tel: TStringField;
    MTDocParam_Tel2: TStringField;
    MTDocParam_Cidade: TStringField;
    MTDocParam_End: TStringField;
    MTDocParam_CEP: TStringField;
    MTDocParam_CNPJ: TStringField;
    MTDocParam_IE: TStringField;
    MTDocParam_Site: TStringField;
    MTDocParam_Facebook: TStringField;
    MTDocParam_Instagram: TStringField;
    MTDocParam_Whats: TStringField;
    MTDocParam_Whats2: TStringField;
    MTDocParam_InfoExtra: TStringField;
    MTDocParam_Logo: TGraphicField;
    MTDocParam_Logo2: TGraphicField;
    DS: TDataSource;
    MTRecRodape: TMemoField;
    Open: TOpenDialog;
    panPri: TLMDSimplePanel;
    VG: TcxDBVerticalGrid;
    erRecNomeLoja: TcxDBEditorRow;
    erTel1: TcxDBEditorRow;
    erTel2: TcxDBEditorRow;
    erLogo: TcxDBEditorRow;
    erLogo2: TcxDBEditorRow;
    erEnd: TcxDBEditorRow;
    erCidade: TcxDBEditorRow;
    erCEP: TcxDBEditorRow;
    erCNPJ: TcxDBEditorRow;
    erSite: TcxDBEditorRow;
    erIE: TcxDBEditorRow;
    erFacebook: TcxDBEditorRow;
    erWhatsApp: TcxDBEditorRow;
    erWhatsApp2: TcxDBEditorRow;
    erInstagram: TcxDBEditorRow;
    erInfoExtra: TcxDBEditorRow;
    erRecRodape: TcxDBEditorRow;
    erEmail: TcxDBEditorRow;
    btnDel: TcxButton;
    btnSelImg2: TcxButton;
    btnDel2: TcxButton;
    btnSelImg4: TcxButton;
    btnSelImg: TcxButton;
    btnSelImg3: TcxButton;
    erMeioPagto: TcxDBEditorRow;
    MTRecImprimeMeioPagto: TBooleanField;
    MTRecPrefixoMeioPagto: TStringField;
    erPrefixoMeioPagto: TcxDBEditorRow;
    procedure btnSelImgClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure erLogoEditPropertiesChange(Sender: TObject);
    procedure erLogoEditPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSelImg3Click(Sender: TObject);
    procedure btnDel2Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    FAlterouLogo,
    FAlterouLogo2 : Boolean;
    { Private declarations }
    procedure LoadDados;
    function Alterou: Boolean;
  public
    procedure AjustaPos;
    procedure Editar(aCampos: String);
    procedure VisCampos(aCampos: String);
    procedure Save;
    { Public declarations }
  end;

var
  FrmGMParam: TFrmGMParam;

implementation

{$R *.dfm}

uses ncaDM, ncaFrmPri, ncClassesBase;

procedure TFrmGMParam.Editar(aCampos: String);
begin
  VisCampos(aCampos);
  AjustaPos;
  ShowModal;
end;

procedure TFrmGMParam.AjustaPos;
var OffSet: Integer;
begin
  OffSet := panTop.Height div 2;

  if erLogo.Visible then begin
    btnSelImg.Visible := MTDocParam_Logo.IsNull;
    btnDel.Visible := not btnSelImg.Visible;
    btnSelImg2.Visible := not btnSelImg.Visible;
    
    btnSelImg.Top := erLogo.ViewInfo.RowRect.Top + 3;
    btnSelImg.Left := VG.OptionsView.RowHeaderWidth + 6;
    btnDel.Top := erLogo.ViewInfo.RowRect.Bottom - btnDel.Height - 3;
    btnSelImg2.Top := erLogo.ViewInfo.RowRect.Bottom - btnDel.Height - 3;  
    btnDel.Left := VG.OptionsView.RowHeaderWidth + 6;
    btnSelImg2.Left := btnDel.Left + btnDel.Width + 3;
  end else begin
    btnSelImg.Visible := False;
    btnDel.Visible := False;
    btnSelImg2.Visible := False;
  end;

  if erLogo2.Visible then begin
    btnSelImg3.Visible := MTDocParam_Logo2.IsNull;
    btnDel2.Visible := not btnSelImg3.Visible;
    btnSelImg4.Visible := not btnSelImg3.Visible;

    btnSelImg3.Top := erLogo2.ViewInfo.RowRect.Top + 3;
    btnSelImg3.Left := VG.OptionsView.RowHeaderWidth + 6;
    btnDel2.Top := erLogo2.ViewInfo.RowRect.Bottom - btnDel2.Height - 3;
    btnSelImg4.Top := erLogo2.ViewInfo.RowRect.Bottom - btnDel2.Height - 3;  
    btnDel2.Left := VG.OptionsView.RowHeaderWidth + 6;
    btnSelImg4.Left := btnDel2.Left + btnDel2.Width + 3;
  end else begin  
    btnSelImg3.Visible := False;
    btnSelImg4.Visible := False;
    btnDel2.Visible := False;
  end;
end;

function TFrmGMParam.Alterou: Boolean;
begin
  Result := True;
  if FAlterouLogo then Exit;
  if FAlterouLogo2 then Exit;
  with Dados do begin
    if MTRecNomeLoja.Value <> tbConfigRecNomeLoja.Value then Exit;
    if MTRecRodape.Value <> tbConfigRecRodape.Value then Exit;
    if MTDocParam_Email.Value <> tbConfigDocParam_Email.Value then Exit;
    if MTDocParam_Tel.Value <> tbConfigDocParam_Tel.Value then Exit;
    if MTDocParam_Tel2.Value <> tbConfigDocParam_Tel2.Value then Exit;
    if MTDocParam_Cidade.Value <> tbConfigDocParam_Cidade.Value then Exit;
    if MTDocParam_End.Value <> tbConfigDocParam_End.Value then Exit;
    if MTDocParam_CEP.Value <> tbConfigDocParam_CEP.Value then Exit;
    if MTDocParam_CNPJ.Value <> tbConfigDocParam_CNPJ.Value then Exit;
    if MTDocParam_IE.Value <> tbConfigDocParam_IE.Value then Exit;
    if MTDocParam_Site.Value <> tbConfigDocParam_Site.Value then Exit;
    if MTDocParam_Facebook.Value <> tbConfigDocParam_Facebook.Value then Exit;
    if MTDocParam_Instagram.Value <> tbConfigDocParam_Instagram.Value then Exit;
    if MTDocParam_Whats.Value <> tbConfigDocParam_Whats.Value then Exit;
    if MTDocParam_Whats2.Value <> tbConfigDocParam_Whats2.Value then Exit;
    if MTDocParam_InfoExtra.Value <> tbConfigDocParam_InfoExtra.Value then Exit;
    if MTRecImprimeMeioPagto.Value <> tbConfigRecImprimeMeioPagto.Value then Exit;
    if MTRecPrefixoMeioPagto.Value <> tbConfigRecPrefixoMeioPagto.Value then Exit;
  end;  
  Result := False;
end;

procedure TFrmGMParam.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmGMParam.erLogoEditPropertiesChange(Sender: TObject);
begin
  AjustaPos;
end;

procedure TFrmGMParam.erLogoEditPropertiesEditValueChanged(Sender: TObject);
begin
  AjustaPos;
end;

procedure TFrmGMParam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmGMParam.FormCreate(Sender: TObject);
begin
  LoadDados;
end;

procedure TFrmGMParam.FormShow(Sender: TObject);
begin
  AjustaPos;
end;

procedure TFrmGMParam.LoadDados;
begin
  FAlterouLogo := False;
  FAlterouLogo2 := False;
  MT.Active := False;
  MT.Active := True;
  MT.Insert;
  TransfDados(Dados.tbConfig, MT);
  MT.Post;
  MT.Edit;
end;

procedure TFrmGMParam.Save;
begin
  if Alterou then 
  with Dados do begin
    gConfig.AtualizaCache;
    gConfig.LeDataset(MT);
    CM.SalvaAlteracoesObj(gConfig, False);
    
    tbConfig.Edit;
    TransfDados(MT, tbConfig);
    if MTDocParam_Logo.IsNull then tbConfigDocParam_Logo.Clear;
    if MTDocParam_Logo2.IsNull then tbConfigDocParam_Logo2.Clear;
    tbConfig.Post;
    
    FAlterouLogo := False;
    FAlterouLogo2 := False;
 end;    
end;

procedure TFrmGMParam.VisCampos(aCampos: String);
var 
  sl: TStrings;
  I : Integer;
begin
  MT.Active := True; 
  sl := TStringList.Create;
  try
    sl.Text := aCampos;
    for I := 0 to VG.Rows.Count-1 do with TcxDBEditorRow(VG.Rows[I]) do 
      Visible := (sl.IndexOf(Properties.DataBinding.FieldName)>=0);
  finally  
    sl.Free;
  end;
  AjustaPos;
end;

procedure TFrmGMParam.btnDel2Click(Sender: TObject);
begin
  VG.SetFocus;
  VG.FocusedRow := erLogo2;
  VG.ShowEdit;
  VG.InplaceEditor.Clear;
  TcxImage(VG.InplaceEditor).Clear;
  btnSelImg3.Visible := True;
  TcxImage(VG.InplaceEditor).PostEditValue;
  MTDocParam_Logo2.Clear;
  FAlterouLogo2 := True;
  
  btnDel2.Visible := False;
  btnSelImg4.Visible := False;
end;

procedure TFrmGMParam.btnDelClick(Sender: TObject);
begin
  VG.SetFocus;
  VG.FocusedRow := erLogo;
  VG.ShowEdit;
  VG.InplaceEditor.Clear;
  TcxImage(VG.InplaceEditor).Clear;
  btnSelImg.Visible := True;
  TcxImage(VG.InplaceEditor).PostEditValue;
  MTDocParam_Logo.Clear;

  FAlterouLogo := True;
  
  btnDel.Visible := False;
  btnSelImg2.Visible := False;
end;

procedure TFrmGMParam.btnSalvarClick(Sender: TObject);
begin
  Save;
  Close;
end;

procedure TFrmGMParam.btnSelImg3Click(Sender: TObject);
begin
  Open.InitialDir := ExtractFileDir(ParamStr(0));
  if Open.Execute(Handle) then begin
    FAlterouLogo2 := True;
    if not (MT.State in [dsEdit, dsInsert]) then MT.Edit;
    MTDocParam_Logo2.LoadFromFile(Open.Filename);
    MT.Post;
    MT.Edit;
    AjustaPos;
    Exit;
  end;
end;

procedure TFrmGMParam.btnSelImgClick(Sender: TObject);
begin
  Open.InitialDir := ExtractFileDir(ParamStr(0));
  if Open.Execute(Handle) then begin
    FAlterouLogo := True;
    if not (MT.State in [dsEdit, dsInsert]) then MT.Edit;
    MTDocParam_Logo.LoadFromFile(Open.Filename);
    MT.Post;
    MT.Edit;
    AjustaPos;
    Exit;
  end;
end;

end.




