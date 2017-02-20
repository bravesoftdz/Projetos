unit ncaFrmTax;

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
  cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxRadioGroup;

type
  TFrmTax = class(TFrmBaseCadastroMT)
    LCGroup_Root: TdxLayoutGroup;
    LC: TdxLayoutControl;
    edCod: TcxDBSpinEdit;
    lcCod: TdxLayoutItem;
    edNome: TcxDBTextEdit;
    lcNome: TdxLayoutItem;
    edPerc: TcxDBCurrencyEdit;
    lcTax: TdxLayoutItem;
    tItens: TnxTable;
    MTnome: TWideStringField;
    MTincluido: TBooleanField;
    MTperc: TFloatField;
    MTgrupo: TBooleanField;
    MTtax_id: TIntegerField;
    lgrTaxa: TdxLayoutGroup;
    edGrupo: TcxDBCheckBox;
    lcGrupo: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    panItens: TLMDSimplePanel;
    lcItens: TdxLayoutItem;
    cxLabel1: TcxLabel;
    TV: TcxGridDBTableView;
    GL: TcxGridLevel;
    grid: TcxGrid;
    mtItens: TkbmMemTable;
    mtItensIncluir: TBooleanField;
    mtItensItem: TIntegerField;
    mtItensNome: TStringField;
    dsItens: TDataSource;
    TVIncluir: TcxGridDBColumn;
    TVNome: TcxGridDBColumn;
    tTax: TnxTable;
    rbIncluido: TcxRadioButton;
    dxLayoutItem1: TdxLayoutItem;
    rbNaoIncluido: TcxRadioButton;
    dxLayoutItem2: TdxLayoutItem;
    tTaxtax_id: TUnsignedAutoIncField;
    tTaxnome: TWideStringField;
    tTaxincluido: TBooleanField;
    tTaxperc: TFloatField;
    tTaxgrupo: TBooleanField;
    tItensgrupo: TLongWordField;
    tItensitem: TLongWordField;
    procedure lcNomeCaptionClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edGrupoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cmGravarClick(Sender: TObject);
  private
    { Private declarations }
    slItens: TStrings;
    procedure Atualiza;

    function MarcouAlgumItem: Boolean;
  public
    { Public declarations }

    function ExceptFields: String; override;

    procedure LoadItens;

    procedure Validar; override;
  end;

var
  FrmTax: TFrmTax;

implementation

{$R *.dfm}

uses ncaFrmPri, ncaDM, ncaStrings;

procedure TFrmTax.Atualiza;
begin
  lgrTaxa.Visible := not edGrupo.Checked;
  lcItens.Visible := not lgrTaxa.Visible;
end;

procedure TFrmTax.cmGravarClick(Sender: TObject);
var I : Integer;
begin
  Validar;

  InitTran(Dados.DB, [TnxTable(Tab), tItens], True);
  try
  
    if not Novo then begin
      if not Tab.Locate('tax_id', mttax_id.Value, []) then Exit;
      Tab.Edit;
    end else
      Tab.Append;

    MTIncluido.Value := rbIncluido.Checked;  
  
    TransfDadosEsp(MT, Tab, ExceptFields);  
  
    Tab.Post;  

    if MTGrupo.Value then begin
    
      if not Novo then
      for I := 0 to slItens.Count-1 do
        if not mtItens.Locate('item', slItens[I], []) then
          if tItens.FindKey([Tab.FieldByName('tax_id').AsInteger, slItens[i]]) then tItens.Delete;

      mtItens.First;
      while not mtItens.Eof do begin
        if mtItensIncluir.Value then 
        if slItens.IndexOf(mtItensItem.AsString)<0 then begin
          tItens.Append;
          tItensGrupo.Value := Tab.FieldByName('tax_id').AsInteger;
          tItensItem.Value := mtItensItem.Value;
          tItens.Post;
        end;
        mtItens.Next;
      end;
    end else 
    if not Novo then 
      while tItens.FindKey([mttax_id.Value]) do tItens.Delete;

    Dados.DB.Commit;
  finally
    if Dados.DB.InTransaction then
      Dados.DB.Rollback;
  end;

  Close;
end;

procedure TFrmTax.edGrupoClick(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

function TFrmTax.ExceptFields: String;
begin
  Result := '|tax_id|';
end;

procedure TFrmTax.FormCreate(Sender: TObject);
begin
  inherited;
  slItens := TStringList.Create;
end;

procedure TFrmTax.FormDestroy(Sender: TObject);
begin
  inherited;
  
  slItens.Free;
end;

procedure TFrmTax.FormShow(Sender: TObject);
begin
  inherited;
  LoadItens;
  rbIncluido.Checked := mtIncluido.Value;
  rbNaoIncluido.Checked := not rbIncluido.Checked;
  lcGrupo.Visible := (not mtItens.IsEmpty) or (mtGrupo.Value);
  Atualiza;
end;

procedure TFrmTax.lcNomeCaptionClick(Sender: TObject);
begin
  inherited;
  edNome.SetFocus;
end;

procedure TFrmTax.LoadItens;
begin          
  mtItens.Active := False;
  mtItens.Active := True;
  
  slItens.Clear;
  if not Novo then begin
    tItens.SetRange([mttax_id.Value], [mttax_id.Value]);
    tItens.First;
    while not tItens.Eof do begin
      slItens.Add(tItensItem.AsString);
      tItens.Next;
    end;
  end;
  
  tTax.First;
  while not tTax.Eof do begin
    if (not tTaxGrupo.Value) and (tTaxtax_id.Value<>mttax_id.Value) then begin
      mtItens.Append;
      mtItensIncluir.Value := (slItens.IndexOf(tTaxtax_id.AsString)>=0);
      mtItensItem.Value := tTaxtax_id.Value;
      mtItensNome.Value := tTaxNome.Value;
      mtItens.Post;
    end;
    tTax.next;
  end;

  mtItens.First;
end;

function TFrmTax.MarcouAlgumItem: Boolean;
begin
  Result := True;
  mtItens.First;
  while not mtItens.Eof do begin
    if mtItensIncluir.Value then Exit;
    mtItens.Next;
  end;
  Result := False;
end;

procedure TFrmTax.Validar;
begin
  inherited;
  if lcGrupo.Visible then
    edGrupo.SetFocus else
    edPerc.SetFocus;
  
  edNome.SetFocus;
  
  if Trim(edNome.Text)='' then begin 
    edNome.SetFocus;
    raise exception.Create(rsNomeTribNecessario);
  end;

  if MTgrupo.Value then begin
    if not MarcouAlgumItem then
      raise Exception.Create(rsMarcarTaxa);
  end else begin
    if MTperc.IsNull or (MTperc.Value < 0.01) then begin
      edPerc.SetFocus;
      raise Exception.Create(rsInformarPerc);
    end;
  end;
end;

end.



