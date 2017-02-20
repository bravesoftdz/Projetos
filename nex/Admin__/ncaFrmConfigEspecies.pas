unit ncaFrmConfigEspecies;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ncaFrmBaseOpcao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxContainer, cxEdit, cxLabel, dxGDIPlusClasses, ExtCtrls,
  StdCtrls, cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, ncaConfigEspecie, ncEspecie,
  LMDCustomScrollBox, LMDScrollBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxImageComboBox, cxTextEdit, cxCheckBox, cxCurrencyEdit;

type
  TFrmConfigEspecies = class(TFrmBaseOpcao)
    Image1: TImage;
    Grid: TcxGrid;
    TV: TcxGridTableView;
    TVImg: TcxGridColumn;
    TVNome: TcxGridColumn;
    TVObj: TcxGridColumn;
    gl: TcxGridLevel;
    LMDSimplePanel2: TLMDSimplePanel;
    lbApagar: TcxLabel;
    lbNovo: TcxLabel;
    lbMeios: TcxLabel;
    TVTroco: TcxGridColumn;
    TVCred: TcxGridColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    TVTPag: TcxGridColumn;
    lbTrocoMax: TcxLabel;
    edTrocoMax: TcxCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lbApagarClick(Sender: TObject);
    procedure lbNovoClick(Sender: TObject);
    procedure TVImgGetPropertiesForEdit(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure edTrocoMaxPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Itens : TncEspecies;
    procedure Ler; override;
    procedure Salvar; override;
    function Alterou: Boolean; override;

    procedure Renumera; override;
    function NumItens: Integer; override;

    function Count: Integer;

    procedure Add(E: TncEspecie);

    function FindItem(E: TncEspecie): Integer;

    function Item(I: Integer): TncEspecie;

    procedure ValidaIem(I: Integer);

    function AlterouItem(I: Integer): Boolean;
    procedure SalvarItem(I: Integer);

    procedure Mostrar(aShowTPag: Boolean; aFocarTrocoMax: Boolean);
  end;

var
  FrmConfigEspecies: TFrmConfigEspecies;

implementation

uses ncaDMImgEsp, ncaDM, ncClassesBase, ncaFrmPri;

resourcestring
  rsNomeEmBranco = 'Nome da forma de pagamento n�o pode ficar em branco';


{$R *.dfm}

{ TFrmConfigEspecies }

procedure TFrmConfigEspecies.Add(E: TncEspecie);
var I : Integer;
begin
  I := TV.DataController.AppendRecord;
  TV.DataController.Values[I, 0] := E.Img;
  TV.DataController.Values[I, 1] := E.Nome;
  TV.DataController.Values[I, 2] := E.PermiteTroco;
  TV.DataController.Values[I, 3] := E.PermiteCred;
  TV.DataController.Values[I, TVObj.Index] := Integer(E);
  if TVTPag.Visible then
    TV.DataController.Values[I, TVTPag.Index] := E.TipoPagNFE;
end;

function TFrmConfigEspecies.Alterou: Boolean;
var I: integer;
begin
  result := True;
  if edTrocoMax.Value<>gConfig.TrocoMax then Exit;
  
  if Count<>Itens.Count then Exit;
  
  for i:= 0 to Count-1 do
    if AlterouItem(i) then Exit;
  result := False;
end;

function TFrmConfigEspecies.AlterouItem(I: Integer): Boolean;
var E: TncEspecie;
begin
  Result := True;
  E := Item(I);
  if TV.DataController.Values[I, 0] <> E.Img then Exit;
  if TV.DataController.Values[I, 1] <> E.Nome then Exit;
  if TV.DataController.Values[I, 2] <> E.PermiteTroco then Exit;
  if TV.DataController.Values[I, 3] <> E.PermiteCred then Exit;
  
  if TVTPag.Visible then
    if TV.DataController.Values[I, TVTPag.Index] <> E.TipoPagNFE then Exit;
    
  Result := False;
end;

function TFrmConfigEspecies.FindItem(E: TncEspecie): Integer;
begin
  for Result := 0 to Count - 1 do
    if Item(Result)=E then Exit;
  Result := -1;
end;

procedure TFrmConfigEspecies.FormCreate(Sender: TObject);
var I : Integer;
begin
  Itens := TncEspecies.Create;
  inherited;

  with TcxImageComboBoxProperties(TVImg.Properties) do begin
    Items.Clear;

    for I := 0 to dmImgEsp.imgs48.Count - 1 do
      with Items.Add do begin
        Value := I;
        ImageIndex := I;
      end;
  end;
  TVTPag.Visible := Dados.NFCeAtivo;
end;

procedure TFrmConfigEspecies.FormDestroy(Sender: TObject);
begin
  inherited;
  Itens.Free;
end;

function TFrmConfigEspecies.Item(I: Integer): TncEspecie;
begin
  I := TV.DataController.Values[I, TVObj.Index];
  Result := TncEspecie(I);
end;

procedure TFrmConfigEspecies.lbApagarClick(Sender: TObject);
begin
  inherited;
  with TV.DataController do 
  if FocusedRecordIndex>0 then begin
    if Item(FocusedRecordIndex).ID=0 then
      Item(FocusedRecordIndex).Free;
    TV.DataController.DeleteFocused;
  end;
end;

procedure TFrmConfigEspecies.lbNovoClick(Sender: TObject);
begin
  inherited;
  Add(TncEspecie.Create);
end;

function TFrmConfigEspecies.Count: Integer;
begin
  Result := TV.DataController.RecordCount;
end;

procedure TFrmConfigEspecies.edTrocoMaxPropertiesChange(Sender: TObject);
begin
  inherited;
  edTrocoMax.PostEditValue;
end;

procedure TFrmConfigEspecies.Ler;
var i: Integer;
begin
  inherited;
  edTrocoMax.Value := gConfig.TrocoMax;
  
  TV.DataController.RecordCount := 0;

  Itens.Limpa;
  Itens.Assign(gEspecies);
  
  for I := 0 to Itens.Count - 1 do
    Add(Itens[i]);
end;

procedure TFrmConfigEspecies.Mostrar(aShowTPag: Boolean; aFocarTrocoMax: Boolean);
begin
  TVTPag.Visible := aShowTPag or Dados.NFCeAtivo;
  if aFocarTrocoMax then
    ActiveControl := edTrocoMax;
  ShowModal;
end;

function TFrmConfigEspecies.NumItens: Integer;
begin
  Result := 2;
end;

procedure TFrmConfigEspecies.Renumera;
begin
  inherited;
  lbMeios.Caption := IntToStr(InicioNumItem)+'. '+lbMeios.Caption;
  lbTrocoMax.Caption := IntToStr(InicioNumItem+1)+'. '+lbTrocoMax.Caption;
end;

procedure TFrmConfigEspecies.Salvar;
var I: integer;
begin
  gConfig.TrocoMax := edTrocoMax.Value;
  
  for i:= 0 to Count-1 do
    SalvarItem(I);
    
  for I := 0 to Itens.Count - 1 do
    if FindItem(Itens[I])=-1 then
      Dados.CM.ApagaObj(Itens[I]);
end;

procedure TFrmConfigEspecies.SalvarItem(I: Integer);
var E: TncEspecie;
begin
  with TV.DataController do
  if AlterouItem(I) then begin
    E := Item(I);
    E.Img := Values[I, 0];
    E.Nome := Values[I, 1];
    E.PermiteTroco := Values[I, 2];
    E.PermiteCred := Values[I, 3];

    if TVTPag.Visible then
    if VarIsNull(Values[I, TVTPag.Index]) or (Values[I, TVTPag.Index]=0) then
      Exception.Create('� necess�rio definir a forma de pagamento correspodentes para emiss�o de NFC-e')
    else
      E.TipoPagNFE := Values[I, TVTPag.Index];

    E.LimpaCache;  
    
    Dados.CM.SalvaAlteracoesObj(E, (E.ID=0));
  end;
end;

procedure TFrmConfigEspecies.TVImgGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  inherited;
  AProperties.ReadOnly := (ARecord.Index=0);
end;

procedure TFrmConfigEspecies.ValidaIem(I: Integer);
begin
  if Trim(TV.DataController.Values[I, TVNome.Index])='' then 
    raise Exception.Create(rsNomeEmBranco);
end;


end.
