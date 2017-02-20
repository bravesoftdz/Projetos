unit ncaFrmDoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Data.DB, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit,
  nxdb, cxImage, cxLabel, Vcl.ExtCtrls, cxPC, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, kbmMemTable,
  dxLayoutcxEditAdapters, dxBar, cxClasses, cxCheckBox, dxLayoutContainer,
  cxMemo, dxLayoutControl, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TFrmDoc = class(TForm)
    mt: TkbmMemTable;
    mtTipo: TByteField;
    mtBobina: TBooleanField;
    mtTextOnly: TBooleanField;
    mtTamanho: TStringField;
    panPri: TLMDSimplePanel;
    dsMT: TDataSource;
    LCGroup_Root: TdxLayoutGroup;
    LC: TdxLayoutControl;
    edNome: TcxDBTextEdit;
    LCItem5: TdxLayoutItem;
    edObs: TcxDBMemo;
    lciObs: TdxLayoutItem;
    edBobina: TcxDBImageComboBox;
    lciBobina: TdxLayoutItem;
    edTamanho: TcxDBComboBox;
    lciTamanho: TdxLayoutItem;
    edTextOnly: TcxDBCheckBox;
    lciTextOnly: TdxLayoutItem;
    BarMgr: TdxBarManager;
    barTop: TdxBar;
    cmGravar: TdxBarLargeButton;
    cmCancelar: TdxBarLargeButton;
    mtMinVer: TWordField;
    cxDBSpinEdit1: TcxDBSpinEdit;
    lciVerMin: TdxLayoutItem;
    edFREE: TcxDBCheckBox;
    lciFREE: TdxLayoutItem;
    mtFree: TBooleanField;
    mtUID: TGuidField;
    edID: TcxDBTextEdit;
    lciID: TdxLayoutItem;
    mtPais: TStringField;
    mtLingua: TStringField;
    mtMaxVer: TWordField;
    dxLayoutItem1: TdxLayoutItem;
    edMaxVer: TcxDBSpinEdit;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    edPais: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    mtNome: TWideStringField;
    mtDoc: TBlobField;
    mtObs: TWideMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmGravarClick(Sender: TObject);
    procedure cmCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edBobinaPropertiesChange(Sender: TObject);
    procedure edBobinaPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FTab : TDataset;
    FNovo : Boolean;

    procedure AjustaVisTextOnly;
  public
    function Editar(aNovo: Boolean; aTab: TDataset; aTipo: Byte; const aMostrarTipo: Boolean = False): Boolean;
    { Public declarations }
  end;

var
  FrmDoc: TFrmDoc;

implementation

{$R *.dfm}

uses ncaDM, ncaFrmPri, ncClassesBase, ncGuidUtils;

resourcestring
  rsNomeEmBranco = 'Nome não pode ser deixado em branco';
  

procedure TFrmDoc.AjustaVisTextOnly;
begin
  lciTextOnly.Visible := (MTTipo.Value <> tipodoc_etiqueta) and (edBobina.EditValue=True);
end;

procedure TFrmDoc.cmCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmDoc.cmGravarClick(Sender: TObject);
begin
  if Trim(edNome.Text) = '' then 
    raise exception.Create(rsNomeEmBranco);
  edObs.SetFocus;
  edNome.SetFocus;
    
  if FNovo then
    FTab.Insert else
    FTab.Edit;
    
  TransfDadosEsp(MT, FTab, '|UID|');
  
  if FNovo then
    FTab.FieldByName('UID').AsString := TGuidEx.NewGuidStr;

  FTab.FieldByName('Custom').AsBoolean := not FrmPri.IsDocMgr;
  FTab.Post;
  ModalResult := mrOk;
end;

procedure TFrmDoc.edBobinaPropertiesChange(Sender: TObject);
begin
  if edBobina.Focused then edBobina.PostEditValue;
end;

procedure TFrmDoc.edBobinaPropertiesEditValueChanged(Sender: TObject);
begin
  AjustaVisTextOnly;
end;

function TFrmDoc.Editar(aNovo: Boolean; aTab: TDataset; aTipo: Byte; const aMostrarTipo: Boolean = False): Boolean;
var s1, s2: String;
begin
  lciID.Visible := not aNovo;
  MT.Active := False;
  MT.Open;
  MT.Insert;
  MTTipo.Value := aTipo;
  MTMinVer.Value := 264;
  lciVerMin.Visible := aMostrarTipo;

  MTBobina.Value := False;
  FNovo := aNovo;
  FTab := aTab;
  if not FNovo then 
    TransfDados(aTab, MT);
  AjustaVisTextOnly;  
  ShowModal;
  Result := (ModalResult=mrOk);
end;

procedure TFrmDoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmDoc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_F2  : if cmGravar.Enabled then cmGravarClick(nil);
  end;
end;

end.
