unit ncafbCaixasA;
{
    ResourceString: Dario 10/03/13
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmFormBase, DB, nxdb, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxBar, dxBarExtItems, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit, cxCalendar,
  cxCurrencyEdit, cxTextEdit, cxDBLookupComboBox, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, 
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLookAndFeels, cxLookAndFeelPainters, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, cxNavigator, uNexTransResourceStrings_PT,
  dxPScxPivotGridLnk;

type
  TfbCaixasA = class(TFrmBase)
    Tab: TnxTable;
    dsTab: TDataSource;
    cmTotalizar: TdxBarLargeButton;
    TabID: TAutoIncField;
    TabAberto: TBooleanField;
    TabUsuario: TStringField;
    TabAbertura: TDateTimeField;
    TabFechamento: TDateTimeField;
    TabTotalFinal: TCurrencyField;
    TabDescontos: TCurrencyField;
    TabCancelamentos: TCurrencyField;
    TabSaldoAnt: TCurrencyField;
    TabObs: TMemoField;
    TabSaldoFinal: TCurrencyField;
    TabSangria: TCurrencyField;
    TabSupr: TCurrencyField;
    cmVerDet: TdxBarButton;
    TabReproc: TDateTimeField;
    dxBarSubItem1: TdxBarSubItem;
    cmVerAtual: TdxBarButton;
    TabEstSessoesQtd: TIntegerField;
    TabEstSessoesTempo: TFloatField;
    TabEstUrls: TIntegerField;
    TabEstSyncOk: TBooleanField;
    TabEstBuscasEng: TnxMemoField;
    TabEstRes: TnxMemoField;
    TabSaldoF: TCurrencyField;
    TabQuebra: TCurrencyField;
    LMDSimplePanel1: TLMDSimplePanel;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    VNumero1: TcxGridDBColumn;
    VUsuario1: TcxGridDBColumn;
    TVAbertura: TcxGridDBColumn;
    TVFechamento: TcxGridDBColumn;
    TVSaldoAnt: TcxGridDBColumn;
    TVTotal: TcxGridDBColumn;
    TVSupr: TcxGridDBColumn;
    TVSangria: TcxGridDBColumn;
    TVSaldoFinal: TcxGridDBColumn;
    TVSaldoF: TcxGridDBColumn;
    TVQuebra: TcxGridDBColumn;
    TVReproc: TcxGridDBColumn;
    GL: TcxGridLevel;
    cmCorrigeDataHora: TdxBarLargeButton;
    cmReprocessar: TdxBarLargeButton;
    pmCaixa: TdxBarPopupMenu;
    cmObs: TdxBarLargeButton;
    TVObs: TcxGridDBColumn;
    cmCorrigir: TdxBarLargeButton;
    TDIDLivre: TcxGridDBColumn;
    TabIDLivre: TStringField;
    cmEmail: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxsBold: TcxStyle;
    cmRel: TdxBarLargeButton;
    procedure cmEditarClick(Sender: TObject);
    procedure cmTotalizarClick(Sender: TObject);
    procedure cmCorrigeDataHoraClick(Sender: TObject);
    procedure TabCalcFields(DataSet: TDataSet);
    procedure TVSangriaGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure pmCaixaPopup(Sender: TObject);
    procedure cmReprocessarClick(Sender: TObject);
    procedure cmVerAtualClick(Sender: TObject);
    procedure TVMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmObsClick(Sender: TObject);
    procedure cmEmailClick(Sender: TObject);
    procedure cmRelClick(Sender: TObject);
  private
    { Private declarations }
    function GetIndexName: String;
  public
    procedure AjustaLayoutLargeButton(B : TdxBarLargeButton); override;
    procedure FiltraDados; override;
    class function Descricao: String; override;
    procedure AtualizaDireitos; override;
    { Public declarations }
  end;

var
  fbCaixasA: TfbCaixasA;

implementation

uses 
  ncaFrmPri, 
  ncaFrmCaixa, 
  ncaDM, 
  ncIDRecursos, ncDMCaixa, ncaFrmCorrigeDataCaixa, ncDMServ, ncClassesBase,
  ufmImagens, ncaFrmRecursoPRO, ncaFrmConfigEmailCaixa;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

resourcestring
  rsAbertura = 'Abertura';
  rsFechamento = 'Fechamento';

class function TfbCaixasA.Descricao: String;
begin
  Result := SncafbCaixasA_CaixasAnteriores;
end;

procedure TfbCaixasA.cmEmailClick(Sender: TObject);
begin
  if Tab.IsEmpty then Exit;

  if not gConfig.IsPremium then begin
    TFrmConfigEmailCaixa.MsgRecursoPro;
    Exit;
  end;
  
  CreateDMCaixa;
  dmCaixa.AbreConn;
  dmCaixa.EmailCaixa(TabID.Value);

  ShowMessage(SncafbCaixasA_OEMailSeráEnviadoEmAté5Minutos);
end;

procedure TfbCaixasA.FiltraDados;
begin
  if not Tab.Active then begin
    DataI := 1;
    DataF := EncodeDate(3000, 1, 1);
    cmPeriodo.Caption := SncafbCaixasA_PeríodoTudo;
    Tab.Active := True;
    Tab.First;
  end;  
  Tab.IndexName := GetIndexName;
  if Tab.IndexName = 'IUsuario' then // do not localize
    Tab.SetRange([Dados.CM.Username], [Dados.CM.Username])
  else
    Tab.CancelRange;  
  Tab.Refresh;  

  TV.ApplyBestFit;
end;

procedure TfbCaixasA.cmCorrigeDataHoraClick(Sender: TObject);
var 
  A, F: TDateTime;
  aObs, aIDLoja: String;
  aSaldoF, aSaldoI: Currency;
begin
  inherited;
  A := TabAbertura.Value;
  F := TabFechamento.Value;
  aObs := TabObs.Value;
  aSaldoF :=TabSaldoF.Value;
  aSaldoI :=TabSaldoAnt.Value;
  aIDLoja := TabIDLivre.Value;
  if TFrmCorrigeDataCaixa.Create(nil).Editar(TabID.Value, A, F, aSaldoI, aSaldoF, aObs, aIDLoja) then 
  begin
    Dados.CM.CorrigeDataCaixa(TabID.Value, A, F);
    Tab.Edit;
    TabObs.Value := aObs;
    TabIDLivre.Value := aIDLoja;
    if gConfig.PedirSaldoI then
      TabSaldoAnt.Value := aSaldoI;
      
    if gConfig.PedirSaldoF then begin
      TabSaldoF.Value := aSaldoF;
      TabQuebra.Value := 
          TabSaldoF.Value - 
          (TabTotalFinal.Value + TabSaldoAnt.Value + TabSupr.Value - TabSangria.Value);
    end;
    Tab.Post;
  end;
  Tab.Refresh;  
end;

procedure TfbCaixasA.cmEditarClick(Sender: TObject);
begin
  CreateDMCaixa;
  TFrmCaixa.Create(Self).Editar(Tab);
end;

procedure TfbCaixasA.cmObsClick(Sender: TObject);
begin
  inherited;
  TV.Preview.Visible := cmObs.Down;
end;

procedure TfbCaixasA.cmRelClick(Sender: TObject);
begin
  inherited;
  CreateDMCaixa;
  dmCaixa.Processa(TabID.Value, nil);
  dmCaixa.repCaixa.ShowReport;
end;

procedure TfbCaixasA.cmReprocessarClick(Sender: TObject);
begin
  inherited;
  if SimNao(SncafbCaixasA_DesejaRealmenteReprocessarOCaixa+TabID.AsString+
            SncafbCaixasA_De + TabAbertura.AsString + ' ?') then 
  begin
    CreateDMCaixa;
    dmCaixa.nxSession.ServerEngine := Dados.RSE;
    dmCaixa.AbreConn;
    dmCaixa.FechaCaixa(Dados.CM.Username, 0, TabID.Value, True);
    Tab.Refresh;
  end;
end;

procedure TfbCaixasA.cmTotalizarClick(Sender: TObject);
begin
  CreateDMCaixa;
  TFrmCaixa.Create(Self).CaixaPeriodo;
end;

procedure TfbCaixasA.cmVerAtualClick(Sender: TObject);
begin
  inherited;
  FrmPri.MostrarCaixaAtual;
end;

procedure TfbCaixasA.AjustaLayoutLargeButton(B: TdxBarLargeButton);
begin
//
end;

procedure TfbCaixasA.AtualizaDireitos;
begin
  inherited;
  TVAbertura.Caption := rsAbertura;
  TVFechamento.Caption := rsFechamento;
  
  TVSaldoAnt.Visible := Dados.CM.Config.ManterSaldoCaixa or Dados.CM.Config.PedirSaldoI;
  TVSaldoF.Visible := Dados.CM.Config.PedirSaldoF;
  TVQuebra.Visible := Dados.CM.Config.PedirSaldoF;

  TV.ApplyBestFit;

  cmEmail.Enabled := gConfig.EmailEnviarCaixa;
  
  cmTotalizar.Enabled := Permitido(daCaiVerAntesOutros);
  cmCorrigeDataHora.Enabled := Dados.CM.UA.Admin;
  cmReprocessar.Enabled := Dados.CM.UA.Admin;
  cmCorrigir.Enabled := Dados.CM.UA.Admin;
  if GetIndexName <> Tab.IndexName then FiltraDados;
end;

function TfbCaixasA.GetIndexName: String;
begin
  if Permitido(daCaiVerAntesOutros) then 
    Result := 'IAbertura' // do not localize
  else
    Result := 'IUsuario'; // do not localize
end;

procedure TfbCaixasA.pmCaixaPopup(Sender: TObject);
begin
  inherited;
  cmReprocessar.Enabled := Dados.CM.UA.Admin;
end;

procedure TfbCaixasA.TabCalcFields(DataSet: TDataSet);
begin
  inherited;
  TabSaldoFinal.Value := TabTotalFinal.Value + TabSaldoAnt.Value + TabSupr.Value - TabSangria.Value;
end;

procedure TfbCaixasA.TVMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var  AHitTest: TcxCustomGridHitTest;  
begin
  if Button<>mbRight then Exit;
  AHitTest := TcxGridSite(Sender).GridView.GetHitTest(X, Y);
  if AHitTest is TcxGridRecordCellHitTest then
    pmCaixa.PopupFromCursorPos;
end;

procedure TfbCaixasA.TVSangriaGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V:Variant;  
begin
  inherited;
  V := ARecord.Values[Sender.Index];
  if (V=null) or (V=0) then AText := '';
end;

end.

