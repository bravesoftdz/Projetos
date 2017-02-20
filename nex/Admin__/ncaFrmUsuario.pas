unit ncaFrmUsuario;
{
    ResourceString: Dario 11/03/13
}

interface

{$I NEX.INC}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, StdCtrls, ExtCtrls,
  ComCtrls, Db, kbmMemTable, 
  LMDCustomScrollBox, LMDScrollBox, lmdsplt,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, dxBarExtItems,
  ncListaID, ncIDRecursos, cxCheckListBox, cxControls,
  cxContainer, cxEdit, cxLabel, cxCheckBox, cxDBEdit, cxTextEdit, cxGroupBox,
  cxMaskEdit, cxSpinEdit, cxClasses,
  cxLookAndFeelPainters, cxGraphics, cxLookAndFeels, LMDControl, LMDSimplePanel,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxCurrencyEdit, dxLayoutControl,
  dxLayoutLookAndFeels;

type
  TFrmUsuario = class(TForm)
    BarMgr: TdxBarManager;
    mtUsuario: TkbmMemTable;
    mtUsuarioUsername: TStringField;
    mtUsuarioNome: TStringField;
    mtUsuarioAdmin: TBooleanField;
    mtUsuarioSenha: TStringField;
    mtUsuarioDireitos: TMemoField;
    dsUsuario: TDataSource;
    cmGravar: TdxBarLargeButton;
    cmCancelar: TdxBarLargeButton;
    cmAlteraSenha: TdxBarLargeButton;
    mtUsuarioMaxTempoManut: TIntegerField;
    mtUsuarioMaxMaqManut: TIntegerField;
    panPri: TLMDSimplePanel;
    LCGroup_Root: TdxLayoutGroup;
    LC: TdxLayoutControl;
    lcNome: TdxLayoutItem;
    edNome: TcxDBTextEdit;
    lcUsername: TdxLayoutItem;
    edUsername: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cbAdmin: TcxDBCheckBox;
    edDescMax: TcxDBCurrencyEdit;
    lcDescMax: TdxLayoutItem;
    lcDireitos: TdxLayoutItem;
    cbItens: TcxCheckListBox;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    llfGrupo: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    mtUsuarioLimiteDesc: TFloatField;
    cbLimitarDesc: TcxCheckBox;
    lcLimitarDesc: TdxLayoutItem;
    edEmail: TcxDBTextEdit;
    lcEmail: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    edEmail2: TcxTextEdit;
    lcEmail2: TdxLayoutItem;
    mtUsuarioEmail: TWideStringField;
    mtUsuarioInativo: TBooleanField;
    procedure cbItensClickCheck(Sender: TObject; AIndex: Integer; APrevState,
      ANewState: TcxCheckBoxState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmGravarClick(Sender: TObject);
    procedure cmCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AjustaDir;
    procedure cbAdminClick(Sender: TObject);
    procedure cmAlteraSenhaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbLimitarDescClick(Sender: TObject);
  private
    { Private declarations }

    function FindCBItem(aID: Integer): TcxCheckListBoxItem;
    function GetItemChecked(aID: Integer): Boolean;
    procedure SetItemChecked(aID: Integer; const Value: Boolean);

    procedure AtualizaTextoSenha;
  public
    FUsername : String;
    FItens : TStrings;
    FExigeEmail : Boolean;
    procedure Incluir;
    procedure Editar;

    property ItemChecked[aID: Integer]: Boolean read GetItemChecked write SetItemChecked;
    { Public declarations }
  end;

var
  FrmUsuario: TFrmUsuario;

implementation

uses 
  ncClassesBase, 
  ncCompCliente, 
  ncaDM, 
  ncaFrmSenha, 
  ncaFrmPri,
  ufmImagens, ncaStrings;

// START resource string wizard section
resourcestring
  SÉNecessárioInformarUmUsername = 'É necessário informar um username';
  SÉNecessárioInformarUmNome = 'É necessário informar um nome';
  SMarqueOsItensQueEsseUsuárioTemDi = 'Marque os itens que esse usuário tem direito de acessar:';
  SUsuárioAdministradorNãoéNecessár = 'Usuário Administrador. Não é necessário marcar os direitos abaixo';

  SCriarSenha = 'Criar Senha';
  SAlterarSenha = 'Alterar Senha';
// END resource string wizard section


{$R *.DFM}

function DireitoProg(aDir: Integer): Boolean;
begin
  {$ifdef Lan}
  result := not (aDir in daSoLoja);
  {$endif}
  {$ifdef Loja}
  result := not (aDir in daSoLan);
  {$endif}
end;

procedure TFrmUsuario.Incluir;
var I : Integer;
begin
  try
    ActiveControl := edUsername;
    FExigeEmail := False;
    FUsername := '';
    mtUsuario.Append;
    FItens.Text := '';
    mtUsuarioAdmin.Value := False;
    for I := 1 to daQuantidade do
      if DireitoProg(I) then
      if (I in daDefault) then begin
        FItens.Values[IntToStr(I)] := 'S';
        ItemChecked[I] := True;
      end;  
        
    mtUsuarioDireitos.Value := FItens.Text;    
    AjustaDir;
  except
    Free;
    Raise;
  end;
  ShowModal;  
end;

procedure TFrmUsuario.SetItemChecked(aID: Integer; const Value: Boolean);
var I: TcxCheckListBoxItem;
begin
  I := FindCbItem(aID);
  if Assigned(I) then I.Checked := Value;
end;

procedure TFrmUsuario.Editar;
var 
  I, C : Integer;
  F : TField;
begin
  ActiveControl := edNome;
  edUsername.Properties.ReadOnly := True;
  
  FUsername := Dados.mtUsuarioUsername.Value;
  try
    mtUsuario.Active := True;
    mtUsuario.Append;
    with mtUsuario do
    for I := 0 to pred(FieldCount) do begin
      F := Dados.mtUsuario.FindField(Fields[I].FieldName);
      if F <> nil then Fields[I].Value := F.Value;
    end;  
    cbLimitarDesc.Checked := (mtUsuarioLimiteDesc.Value>=0.01);
    mtUsuario.Post;

    FExigeEmail := (mtUsuarioEmail.Value>'');
    
    mtUsuario.Edit;
    if mtUsuarioAdmin.Value then begin
      C := 0;
      with Dados do 
      for I := 0 to CM.Usuarios.Count-1 do
        if CM.Usuarios[I].Admin then Inc(C);
      if C<2 then cbAdmin.Enabled := False;    
    end;
    FItens.Text := mtUsuarioDireitos.Value;
    AjustaDir;
    for I := 1 to daQuantidade do 
      if DireitoProg(I) then
        ItemChecked[I] := ItemTrueSL(FItens, I);
  except
    Free;
    Raise;
  end;
  ShowModal;  
end;

function TFrmUsuario.FindCBItem(aID: Integer): TcxCheckListBoxItem;
var I: Integer;
begin
  for I := 0 to cbItens.Count-1 do 
    if cbItens.Items[I].Tag=aID then begin
      Result := cbItens.Items[I];
      Exit;
    end;
    
  Result := nil;
end;

procedure TFrmUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmUsuario.cmGravarClick(Sender: TObject);
var 
  U : TncUsuario;
  I : Integer;
begin
  mtUsuario.Post;
  mtUsuario.Edit;

  if Trim(edUsername.Text)='' then  begin
    edUsername.SetFocus;
    Raise Exception.Create(SÉNecessárioInformarUmUsername);
  end;

  if Trim(edNome.Text)='' then begin
    edNome.SetFocus;
    Raise Exception.Create(SÉNecessárioInformarUmNome);
  end;

  if FExigeEmail and (Trim(edEmail.Text)='') then begin
    edEmail.SetFocus;
    raise Exception.Create(rsEmailObrigatorio);
  end;

  if not SameText(edEmail.Text, edEmail2.text) then begin
    edEmail.SetFocus;
    raise Exception.Create(rsEmailDif);
  end;
  
  if FUsername <> '' then 
    U := Dados.CM.Usuarios.PorUsername[FUsername] else 
    U := TncUsuario.Create;
       
  if U <> nil then begin
    try
      for I := 1 to daQuantidade do
      if DireitoProg(I) then begin
        if ItemChecked[I] then
          FItens.Values[IntToStr(I)] := 'S' else
          FItens.Values[IntToStr(I)] := 'N';
      end;
        
      U.LeDataset(mtUsuario);

      if not cbLimitarDesc.Checked then U.LimiteDesc := 0;
      
      U.Direitos := FItens.Text;
      U.LimpaCache;
      Dados.CM.SalvaAlteracoesObj(U, (FUsername=''));
    finally  
      if FUsername='' then U.Free;
    end;  
  end;
  mtUsuario.Post;
  Close;
end;

procedure TFrmUsuario.cmCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmUsuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_F2    : cmGravarClick(nil);
    Key_Esc   : Close;
  end;
end;

procedure TFrmUsuario.FormShow(Sender: TObject);
begin
  edEmail2.Text := edEmail.Text;
  AtualizaTextoSenha;
end;

function TFrmUsuario.GetItemChecked(aID: Integer): Boolean;
var I: TcxCheckListBoxItem;
begin
  I := FindCBItem(aID);
  if Assigned(I) then
    Result := I.Checked else
    Result := False;
end;

procedure TFrmUsuario.FormCreate(Sender: TObject);
var 
  I, N : Integer;
  Item : TcxCheckListBoxItem;
begin
  cbItens.Clear;
  FItens := TStringList.Create;
  N := 0;
  for I := 1 to daQuantidade do 
  if DireitoProg(I) then begin
    Inc(N);
    Item := cbItens.Items.Add;
    Item.Text := IntToStr(N)+'. ' + daDescr[I];
    Item.Enabled := True;
    Item.Checked := False;
    Item.Tag := I;
  end;  
  mtUsuario.Open;
end;

procedure TFrmUsuario.FormDestroy(Sender: TObject);
begin
  FItens.Free;
end;

procedure TFrmUsuario.AjustaDir;
begin
  lcDireitos.Enabled := not cbAdmin.Checked;
  if lcDireitos.Enabled then
    lcDireitos.CaptionOptions.Text := SMarqueOsItensQueEsseUsuárioTemDi else
    lcDireitos.CaptionOptions.Text := SUsuárioAdministradorNãoéNecessár;

  lcLimitarDesc.Enabled := not cbAdmin.Checked;
  lcDescMax.Enabled := lcLimitarDesc.Enabled and cbLimitarDesc.Checked;
end;

procedure TFrmUsuario.AtualizaTextoSenha;
begin
  if mtUsuarioSenha.Value='' then
    cmAlteraSenha.Caption := SCriarSenha else
    cmAlteraSenha.Caption := SAlterarSenha;
end;

procedure TFrmUsuario.cbAdminClick(Sender: TObject);
begin
  AjustaDir;
end;

procedure TFrmUsuario.cbItensClickCheck(Sender: TObject; AIndex: Integer;
  APrevState, ANewState: TcxCheckBoxState);
begin
  if AIndex = (daMaqModoManutencao-1) then
    AjustaDir;
end;

procedure TFrmUsuario.cbLimitarDescClick(Sender: TObject);
begin
  AjustaDir;
  if cbLimitarDesc.Focused and cbLimitarDesc.Checked then
    edDescMax.SetFocus;
end;

procedure TFrmUsuario.cmAlteraSenhaClick(Sender: TObject);
var S: String;
begin

  if Dados.CM.UA.Admin then
    S := '' else
    S := mtUsuarioSenha.Value;
  
  mtUsuarioSenha.Value := TFrmAlteraSenha.Create(nil).Editar(S, mtUsuarioNome.AsString);
  AtualizaTextoSenha;
end;

end.

