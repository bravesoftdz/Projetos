unit ncaFrmTarifa;
{
    ResourceString: Dario 11/03/13
}

interface

uses
  Windows, ncErros, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxCustomData, cxStyles, cxTL, cxTextEdit, cxCurrencyEdit,
  cxInplaceContainer, cxControls, StdCtrls, 
  dxBar, cxClasses, cxMaskEdit, cxSpinEdit, cxTimeEdit, cxContainer, cxEdit,
  cxLabel, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxCheckBox, cxPC, Menus, cxLookAndFeelPainters, cxRadioGroup,
  cxButtons, cxDropDownEdit, cxFilter, cxData, cxDataStorage, ncClassesBase,
  cxGridCustomTableView, cxGridTableView, cxGridCustomView, cxGridLevel, cxGrid,
  cxButtonEdit, cxGroupBox, cxEditRepositoryItems, cxCalc, cxHint,
  cxColorComboBox, cxBarEditItem, LMDPNGImage, ExtCtrls, cxLookAndFeels,
  dxScreenTip, dxCustomHint, cxNavigator;

type
  TFrmTarifa = class(TForm)
    BarMgr: TdxBarManager;
    cmTM1: TdxBarButton;
    cmTM5: TdxBarButton;
    cmTM10: TdxBarButton;
    cmTM15: TdxBarButton;
    cmTM20: TdxBarButton;
    cmTM25: TdxBarButton;
    cmTM30: TdxBarButton;
    cmTM60: TdxBarButton;
    cm1c: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cm10c: TdxBarButton;
    cm25c: TdxBarButton;
    cm50c: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    SC: TcxEditStyleController;
    cxEditRepository1: TcxEditRepository;
    tvCurEdit_ReadOnly: TcxEditRepositoryCurrencyItem;
    tvCurEdit: TcxEditRepositoryCurrencyItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    HC: TcxHintStyleController;
    panTop: TLMDSimplePanel;
    lbMinutos: TcxLabel;
    edTempoI: TcxSpinEdit;
    lbTempoI: TcxLabel;
    edValorI: TcxCurrencyEdit;
    edValor1h: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    dxBarDockControl1: TdxBarDockControl;
    BarMgrBar1: TdxBar;
    cmSalvar: TdxBarLargeButton;
    cmCancelar: TdxBarLargeButton;
    pmDiv: TPopupMenu;
    porTempo1: TMenuItem;
    mi1m: TMenuItem;
    mi5m: TMenuItem;
    mi10m: TMenuItem;
    mi15m: TMenuItem;
    mi20m: TMenuItem;
    miDigitarTempo: TMenuItem;
    N1: TMenuItem;
    mi30m: TMenuItem;
    miPorValor: TMenuItem;
    panNome: TLMDSimplePanel;
    cxLabel7: TcxLabel;
    edNome: TcxTextEdit;
    cxLabel8: TcxLabel;
    edCor: TcxColorComboBox;
    pmArr: TPopupMenu;
    mi1c: TMenuItem;
    mi5c: TMenuItem;
    mi10c: TMenuItem;
    mi25c: TMenuItem;
    mi50c: TMenuItem;
    TimerLoad: TTimer;
    lbErroM: TcxLabel;
    panTarifas: TLMDSimplePanel;
    panHoras: TLMDSimplePanel;
    gridH: TcxGrid;
    tvH: TcxGridTableView;
    tvHTempoUso: TcxGridColumn;
    tvHCobrar: TcxGridColumn;
    tvHTarifa: TcxGridColumn;
    glH: TcxGridLevel;
    LMDSimplePanel5: TLMDSimplePanel;
    LMDSimplePanel4: TLMDSimplePanel;
    Grid: TcxGrid;
    tvMin: TcxGridTableView;
    tvMinHora: TcxGridColumn;
    tvMinMinutos: TcxGridColumn;
    tvMinValor: TcxGridColumn;
    GL: TcxGridLevel;
    panHorasExtras: TLMDSimplePanel;
    rbRepetirUltima: TcxRadioButton;
    rbRepetirTodas: TcxRadioButton;
    rbRepetirDesde: TcxRadioButton;
    edRepetirHora: TcxSpinEdit;
    cxLabel14: TcxLabel;
    btnOkTarExtra: TcxButton;
    btnCancelarTarExtra: TcxButton;
    cxButton1: TcxButton;
    lbValorI: TcxLabel;
    cbSemValorMin: TcxCheckBox;
    lbDiv: TcxLabel;
    btnDiv: TcxButtonEdit;
    lbArr: TcxLabel;
    edArr: TcxButtonEdit;
    cxLabel6: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    edTarExtra: TcxPopupEdit;
    lbHoras: TcxLabel;
    edNumH: TcxSpinEdit;
    cxLabel2: TcxLabel;
    btnAplicar: TcxButton;
    edMaisHoras: TcxPopupEdit;
    lbAjuste: TcxLabel;
    lbErroH: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cmRemoverTempoClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnAplicarMinClick(Sender: TObject);
    procedure tlHorasCustomDrawCell(Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
    procedure tlHorasInitEdit(Sender, AItem: TObject; AEdit: TcxCustomEdit);
    procedure tvMinCanFocusRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure tvMinInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure tvMinInitEditValue(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var AValue: Variant);
    procedure tvMinCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure tvHCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvHEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure tvMinEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure edNumHPropertiesChange(Sender: TObject);
    procedure rbRepetirDesdeClick(Sender: TObject);
    procedure tvHDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure tvMinMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure tvMinMouseLeave(Sender: TObject);
    procedure GridMouseLeave(Sender: TObject);
    procedure tvMinMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmSalvarClick(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure mi1mClick(Sender: TObject);
    procedure cmCancelarClick(Sender: TObject);
    procedure edValorIPropertiesChange(Sender: TObject);
    procedure edValorIEnter(Sender: TObject);
    procedure edTempoIEnter(Sender: TObject);
    procedure edValor1hEnter(Sender: TObject);
    procedure btnOkTarExtraClick(Sender: TObject);
    procedure btnCancelarTarExtraClick(Sender: TObject);
    procedure edTarExtraPropertiesInitPopup(Sender: TObject);
    procedure rbRepetirTodasClick(Sender: TObject);
    procedure rbRepetirUltimaClick(Sender: TObject);
    procedure mi1cClick(Sender: TObject);
    procedure OnClickDivValor(Sender: TObject);
    procedure tvMinHoraCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvMinHoraGetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
    procedure tvMinMinutosGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure tvMinMinutosPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure tvMinDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TimerLoadTimer(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cbSemValorMinClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure edArrClick(Sender: TObject);
    procedure edMaisHorasEnter(Sender: TObject);
  private
    FRepetirHora : Integer;
    FValorI : Currency;
    FTempoI : Integer;
    FDivQtd : Integer;
    FDivTipo: Byte;
    FArr    : Byte;
    FShowing : Boolean;
    FRepetir : Byte;
    FDisableCalc : Boolean;
    FMouseOverDel : Boolean;
    FShowHint : Boolean;
    FAnt      : Variant;
    FMenorH   : Currency;
    FTarifa   : TncTarifa;
    FNovo     : Boolean;
    
    { Private declarations }

    function DivValor: Currency;
    function TotMin(I: Integer): Integer;
    function Horario(I: Integer): String;
    function QtdMin(I: Integer): Integer;
    function TarifaMin(I: Integer): Currency;
    procedure ClonaHora(De, Para: Integer);

    procedure Load;
    procedure LoadTempo;
    procedure LoadValor;
    procedure ValidaMinutos;

    procedure AjustaOpcoesHora;

    procedure HideHint;

    procedure CalcHorasExtras(aDontLoad: Boolean = False);
    procedure CalcMinExtras;
    procedure RefreshMenuPorValor;
    procedure SetRepetir(const Value: Byte; const aRepetirHora: Integer = -1);

    procedure SetMouseOverDel(const AValue: Boolean);

  public
    procedure Editar(aTarifa: TncTarifa);

    function Novo: Boolean;
    
    property Repetir: Byte
      read FRepetir;
    { Public declarations }
  end;

var
  FrmTarifa: TFrmTarifa;

implementation

uses ufmImagens, ncaFrmPri, ncaDM, ncIDRecursos;

// START resource string wizard section
resourcestring
  SAplicarATarifaDa = 'Aplicar a tarifa da ';
  SAHoraNasDemaisHoras = 'a. hora nas demais horas';
  SRepetirTarifasAPartirDa = 'Repetir tarifas a partir da ';
  SAHora = 'a. hora';
  SÉNecessárioInformarAQuantidadeDe = 'É necessário informar a quantidade de minutos que o cliente pode utilizar pagando o valor inicial';
  SOValorInicialNãoPodeSerMaiorQueO = 'O valor inicial não pode ser maior que o valor cobrado por 1 hora de uso';
  SAtençãoOValorASerCobradoPor = 'Atenção: o valor a ser cobrado por ';
  SNãoPodeSerMenorQueOValorPara = ' não pode ser menor que o valor para ';
  SAtençãoAQuantidadeDeMinutosDeveS = 'Atenção: a quantidade de minutos deve ser sempre crescente';
  SÉNecessárioInformarUmNomeParaIde = 'É necessário informar um nome para identificar essa tarifa';
  SÉNecessárioSelecionarUmaCorParaI = 'É necessário selecionar uma cor para identificar essa tarifa';
  SJáFoiCadastradoUmaTarifaComEssaC = 'Já foi cadastrado uma tarifa com essa cor';
  SCentavos = ' centavos';
  SMinutoS = ' minuto(s)';
  SHoras = 'horas';
  SHora = 'hora';
  SMinuto = ' minuto';
  SR001 = 'R$ 0,01';
  SAQuantidadeDeMinutosTemQueEstarE = 'A quantidade de minutos tem que estar entre 1 e 59m';
  SRemoverTarifa = 'Remover Tarifa';
  SCliqueNaLixeiraParaRemoverEssaTa = 'Clique na lixeira para remover essa tarifa/tempo';
  SOTempoInicialTemQueSerInformado = 'O tempo inicial tem que ser informado';

// END resource string wizard section


{$R *.dfm}

procedure TFrmTarifa.AjustaOpcoesHora;
begin
  rbRepetirUltima.Caption := SAplicarATarifaDa + IntToStr(edNumH.Value) + SAHoraNasDemaisHoras;
  edRepetirHora.Properties.MaxValue := edNumH.Value;
  if edRepetirHora.Value > edNumH.Value then
    edRepetirHora.Value := edNumH.Value;
  edRepetirHora.Enabled := rbRepetirDesde.Checked;
  case FRepetir of
    rtUltima : edTarExtra.Text := rbRepetirUltima.Caption;
    rtTodas : edTarExtra.Text := rbRepetirTodas.Caption;
    rtDesde : edTarExtra.Text := SRepetirTarifasAPartirDa + IntToStr(FRepetirHora) + SAHora;
  end;
end;

procedure TFrmTarifa.btnAplicarMinClick(Sender: TObject);
begin
   FDivQtd := btnDiv.Tag;
  ValidaMinutos;
  Load;
  Grid.SetFocus;
  tvMin.DataController.FocusedRecordIndex := 1;
  tvMin.Controller.FocusedColumnIndex := 1;
  tvMin.Controller.EditingController.ShowEdit;
end;

procedure TFrmTarifa.btnAvancarClick(Sender: TObject);
//var I: Integer;
begin
{  case Paginas.ActivePageIndex of 
    0 : ValidaP;
    
    1 : if edValor1h.Value<FValorI then
          Raise ENexCafe.Create('O valor para 1h de uso não pode ser menor que o valor inicial');

    2 : for I := 1 to 23  do
          if tlHoras.Items[i].Values[1] < tlHoras.Items[i-1].Values[1] then
            Raise ENexCafe.Create('O valor das horas não pode dimuir');
  end;}
  
{  case Paginas.ActivePageIndex of
    1 : edValor1H.SetFocus;
    2 : for I := 0 to 23 do tlHoras.Nodes.Items[I].Values[1] := ((I+1)*edValor1H.Value);
    3 : Load;
  end;}
end;

procedure TFrmTarifa.btnCancelarTarExtraClick(Sender: TObject);
begin
  edTarExtra.DroppedDown := False;
end;

procedure TFrmTarifa.btnDivClick(Sender: TObject);
begin
  pmDiv.Popup(btnDiv.ClientOrigin.X, btnDiv.ClientOrigin.Y+btnDiv.Height);
end;

procedure TFrmTarifa.btnOkTarExtraClick(Sender: TObject);
begin
  edTarExtra.DroppedDown := False;
  
  if rbRepetirUltima.Checked then
    SetRepetir(rtUltima)
  else
  if rbRepetirTodas.Checked then
    SetRepetir(rtTodas)
  else 
    SetRepetir(rtDesde, edRepetirHora.Value);
end;

procedure TFrmTarifa.btnAplicarClick(Sender: TObject);
var i: integer;
begin
  if (edValorI.Value>0) and (not cbSemValorMin.Checked) and (edTempoI.Value<1) then begin
    edTempoI.SetFocus;
    Raise ENexCafe.Create(SÉNecessárioInformarAQuantidadeDe);
  end;
  if edValor1h.Value < edValorI.Value then
    Raise ENexCafe.Create(SOValorInicialNãoPodeSerMaiorQueO);
  FValorI := edValorI.Value;
  FTempoI := edTempoI.Value;
  FMenorH := edValor1H.Value;  
  RefreshMenuPorValor;  
  panTop.Height := 117;
  btnAplicar.Enabled := False;
  ValidaMinutos;
  FDisableCalc := True;
  try
    for I := 0 to 23 do 
      tvH.DataController.Values[I, 1] := ((I+1)*edValor1H.Value);
  finally
    FDisableCalc := False;
  end;
  tvH.DataController.FocusedRecordIndex := 1;
  tvH.Controller.FocusedColumnIndex := 1;
  tvH.Controller.EditingController.ShowEdit;
  Load;
  panTarifas.Visible := True;
  lbDiv.Enabled := True;
  btnDiv.Enabled := True;
  lbArr.Enabled := True;
  edArr.Enabled := True;
end;

procedure TFrmTarifa.CalcHorasExtras(aDontLoad: Boolean = False);
var 
  I, R: Integer;
  V : Currency;
begin
  if FDisableCalc then Exit;
  R:=0;
  
  lbErroH.Visible := False;
  FMenorH := tvH.DataController.Values[0, 1];

  FDisableCalc := True;
  tvH.BeginUpdate;
  try
    case FRepetir of
      rtTodas : R := 0; 
      rtUltima : R := edNumH.Value - 1;
      rtDesde : R := FRepetirHora - 1;
    end;
    with tvH.DataController do 
      for I := 1 to edNumH.Value-1 do begin
        if (Values[I, 2]>0) and ((FMenorH=0) or (Values[I, 2]<FMenorH)) then
          FMenorH := Values[I, 2];
        
        if Values[I, 1] < Values[I-1, 1] then begin
          lbErroH.Visible := True;
          lbErroH.Caption := SAtençãoOValorASerCobradoPor + Values[I, 0] +
             SNãoPodeSerMenorQueOValorPara + Values[I-1, 0];
        end;
      end;

    RefreshMenuPorValor;  

    for I := edNumH.Value to 23 do with tvH.DataController do begin
      if R=0 then
        V := Values[0, 1] else
        V := Values[R, 1] - Values[R-1, 1];

        
      V := V + Values[I-1, 1];  
      Values[I, 1] := V;
      Values[I, 2] := V-Values[I-1, 1];
      
      case FRepetir of
        rtTodas : begin
          Inc(R);
          if R>=edNumH.Value then R := 0;
        end;
        rtDesde : begin
          Inc(R);
          if R>=edNumH.Value then R := FRepetirHora - 1;
        end;
      end;
    end;
    
    edMaisHoras.Text := ''; 

    with tvH.DataController do 
    for I := 2 to 23 do begin
      if I>2 then
        edMaisHoras.Text := edMaisHoras.Text + '   ';
      edMaisHoras.Text := edMaisHoras.Text + IntToStr(I)+'h='+FloatToStrF(Values[I, 1], ffCurrency, 10, 2);
    end;
    
  finally
    tvH.EndUpdate;
    FDisableCalc := False;
  end;

  

  if not aDontLoad then
    Load;
end;

procedure TFrmTarifa.ClonaHora(De, Para: Integer);
var I, NewI : Integer;
begin
  I := 0;
  with tvMin.DataController do begin
    while (I<RecordCount) and (Values[I, tvMinHora.Index] <> (De-1)) do Inc(I);
    if I>=RecordCount then Exit;

    while (I<RecordCount) and (Values[I, tvMinHora.Index]=(De-1)) do begin
      if Values[I, tvMinMinutos.Index]>0 then begin
        NewI := AppendRecord;
        Values[NewI, tvMinHora.Index] := Para-1;
        Values[NewI, tvMinMinutos.Index] := Values[NewI-1, tvMinMinutos.Index] + QtdMin(I);
        Values[NewI, tvMinValor.Index] := TarifaMin(I) + Values[NewI-1, tvMinValor.Index];
      end;
      Inc(I);
    end;

    I := AppendRecord;
    Values[I, tvMinHora.Index] := Para;
    Values[I, tvMinMinutos.Index] := 0;
    Values[I, tvMinValor.Index] := tvH.DataController.Values[Para-1, tvHCobrar.Index];
  end;
end;

procedure TFrmTarifa.CalcMinExtras;
var 
  I, R, {M,} H: Integer;
  //V : Currency;
begin
  if FDisableCalc then Exit;

  R:=0;
  lbErroM.Visible := False;

  FDisableCalc := True;
  tvMin.BeginUpdate;
  try
    case FRepetir of
      rtTodas : R := 0; 
      rtUltima : R := edNumH.Value - 1;
      rtDesde : R := FRepetirHora - 1;
    end;
    with tvMin.DataController do begin
      for I := RecordCount-1 downto 0 do begin
        if TotMin(I)>(edNumH.Value*60) then
          DeleteRecord(I);
      end;
      for I := 1 to RecordCount-1 do begin
        if TotMin(I) <= TotMin(I-1) then begin
          lbErroM.Visible := True;
          lbErroM.Caption := SAtençãoAQuantidadeDeMinutosDeveS;
          Break;
        end;
        if Values[I, tvMinValor.Index] < Values[I-1, tvMinValor.Index] then begin
          lbErroM.Visible := True;
          lbErroM.Caption := SAtençãoOValorASerCobradoPor+ Horario(I) + SNãoPodeSerMenorQueOValorPara + Horario(I-1);
        end;
      end;

      for H := edNumH.Value+1 to 24 do begin
        ClonaHora(R+1, H);
        case FRepetir of
          rtTodas : begin
            Inc(R);
            if R>=edNumH.Value then R := 0;
          end;
          rtDesde : begin
            Inc(R);
            if R>=edNumH.Value then R := FRepetirHora - 1;
          end;
        end;
      end;
    end;
  finally
    tvMin.EndUpdate;
    FDisableCalc := False;
  end;
end;

procedure TFrmTarifa.cbSemValorMinClick(Sender: TObject);
begin
  lbValorI.Enabled := not cbSemValorMin.Checked;
  edValorI.Enabled := not cbSemValorMin.Checked;
  lbTempoI.Enabled := not cbSemValorMin.Checked;
  edTempoI.Enabled := not cbSemValorMin.Checked;
  lbMinutos.Enabled := not cbSemValorMin.Checked;

  btnAplicar.Enabled := True;
  panTop.Height := 159;
  panTarifas.Visible := False;
  lbDiv.Enabled := False;
  btnDiv.Enabled := False;
  lbArr.Enabled := False;
  edArr.Enabled := False;
end;

procedure TFrmTarifa.cmRemoverTempoClick(Sender: TObject);
begin
  tvMin.DataController.DeleteFocused;
end;

procedure TFrmTarifa.cmSalvarClick(Sender: TObject);
var I : Integer;
begin
  if Trim(edNome.Text)='' then
    Raise ENexCafe.Create(SÉNecessárioInformarUmNomeParaIde);

  if (edCor.ColorValue=clSilver) or (edCor.ColorValue=clNone) or (edCor.ColorValue=clWhite) or (edCor.ColorValue=clBlack) then
    Raise ENexCafe.Create(SÉNecessárioSelecionarUmaCorParaI);

  if lbErroH.Visible then
    Raise ENexCafe.Create(lbErroH.Caption);

  if lbErroM.Visible then
    raise ENexCafe.Create(lbErroM.Caption);

  if (FNovo or (edCor.ColorValue<>FTarifa.Cor)) and (gTarifas.PorCor[edCor.ColorValue]<>nil) then
    Raise ENexCafe.Create(SJáFoiCadastradoUmaTarifaComEssaC);

  if not FNovo then FTarifa.AtualizaCache;
  FTarifa.Descricao := Trim(edNome.Text);
  FTarifa.Cor := edCor.ColorValue;
  FTarifa.SemValorMin := cbSemValorMin.Checked;
  with tvMin.DataController do begin
    SetLength(FTarifa.PPrecos^, 0);
    for I := 0 to RecordCount - 1 do begin
      SetLength(FTarifa.PPrecos^, I+1);
      FTarifa.PPrecos^[I].etTempo := QtdMin(I) * 60 * 1000;
      FTarifa.PPrecos^[I].etValor := TarifaMin(I);
      if Values[I, tvMinHora.Index] = edNumH.Value then
        Break;
    end;
    FTarifa.PrecosStr := FTarifa.PrecosStr;
  end;
  FTarifa.DivQtd := FDivQtd;
  FTarifa.DivTipo := FDivTipo;
  FTarifa.Reinicia := (FRepetir in [rtTodas, rtDesde]);
  FTarifa.ReiniciaDesde := FRepetirHora;
  FTarifa.Arredondar := FArr;

  Dados.CM.SalvaAlteracoesObj(FTarifa, FNovo);
  if FNovo and (gTarifas.Count=0) then begin
    gConfig.AtualizaCache;
    gConfig.TarifaPadrao := FTarifa.Cor;
    Dados.CM.SalvaAlteracoesObj(gConfig, False);
  end;

  ModalResult := mrOk;
end;

procedure TFrmTarifa.cxButton1Click(Sender: TObject);
begin
  edMaisHoras.DroppedDown := False;
end;

function TFrmTarifa.DivValor: Currency;
begin
  if FDivQtd=0 then
    Result := 0.01 else
    Result := 0.05 * FDivQtd;
end;

procedure TFrmTarifa.edArrClick(Sender: TObject);
begin
  pmArr.Popup(edArr.ClientOrigin.X, edArr.ClientOrigin.Y+edArr.Height);
end;

procedure TFrmTarifa.Editar(aTarifa: TncTarifa);
var 
  I : Integer;
  tTempo : Cardinal;
  tValor : Currency;
  C : Currency;
begin
  FTarifa := aTarifa;
  FNovo := False;
  edCor.Enabled := False;
  edNumH.Value := FTarifa.NumH;
  if edNumH.Value=0 then edNumH.Value := 1;
  
  edCor.ColorValue := FTarifa.Cor;
  edValorI.Value := aTarifa.ValorI;
  edTempoI.Value := TicksToMinutos(aTarifa.TempoI);
  edValor1H.Value := aTarifa.ValorHora(1);
  edNome.Text := FTarifa.Descricao;
  cbSemValorMin.Checked := FTarifa.SemValorMin;

  lbAjuste.Enabled := (edNumH.Value>1);
  edMaisHoras.Enabled := lbAjuste.Enabled;

  edArr.Tag := aTarifa.Arredondar;
  FArr := aTarifa.Arredondar;
  edArr.Text := IntToStr(aTarifa.Arredondar) + SCentavos;

  btnDiv.Tag := aTarifa.DivQtd;
  FDivTipo := aTarifa.DivTipo;
  FDivQtd := aTarifa.DivQtd;

  if FDivTipo=tdtPorTempo then
    btnDiv.Text := IntToStr(FDivQtd)+SMinutoS else
    btnDiv.Text := FloatToStrF(FDivQtd*0.05, ffCurrency, 10, 2);

  edArr.Visible := (FDivTipo=tdtPorTempo);  
  lbArr.Visible := edArr.Visible;
    
  FValorI := edValorI.Value;
  FTempoI := edTempoI.Value;
  FMenorH := edValor1H.Value;  
    
  if not FTarifa.Reinicia then
    FRepetir := rtUltima
  else 
  if FTarifa.ReiniciaDesde<2 then
    FRepetir := rtTodas else
    FRepetir := rtDesde;
  FRepetirHora := FTarifa.ReiniciaDesde;
  AjustaOpcoesHora; 
  tTempo := 0;
  tValor := 0;

  FDisableCalc := True;
  try
    tvH.BeginUpdate;
    try
      for I := 1 to edNumH.Value do begin
        C := FTarifa.ValorHora(I);
        tvH.DataController.Values[I-1, 1] := C;
        if I=1 then
          tvH.DataController.Values[I-1, 2] := C else
          tvH.DataController.Values[I-1, 2] := C - tvH.DataController.Values[I-2, 1];
      end;
    finally
      tvH.EndUpdate;
    end;
  finally
    FDisableCalc := False;
  end;

  CalcHorasExtras(True);

  FDisableCalc := True;
  try
    tvMin.BeginUpdate;
    try
      tvMin.DataController.SelectAll;
      for I := 0 to High(FTarifa.PPrecos^) do 
        with tvMin.DataController do begin
          tTempo := tTempo + FTarifa.PPrecos^[I].etTempo;
          tValor := tValor + FTarifa.PPrecos^[I].etValor;
          AppendRecord;
          Values[I, tvMinHora.Index] := (tTempo div TicksPorHora);
          Values[I, tvMinValor.Index] := tValor;
          Values[I, tvMinMinutos.Index] := TicksToMinutos(tTempo mod TicksPorHora);
        end;
    finally
      tvMin.EndUpdate;
    end;
  finally
    FDisableCalc := False;
  end;
  CalcMinExtras;

  panTop.Height := 117;
  btnAplicar.Enabled := False;
  panTarifas.Visible := True;

  lbDiv.Enabled := True;
  btnDiv.Enabled := True;
  lbArr.Enabled := True;
  edArr.Enabled := True;
  
  ShowModal;
end;

procedure TFrmTarifa.cmCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmTarifa.edMaisHorasEnter(Sender: TObject);
begin
  edMaisHoras.DroppedDown := True;
end;

procedure TFrmTarifa.edNumHPropertiesChange(Sender: TObject);
begin
  if not FShowing then Exit;

  edMaisHoras.Enabled := (edNumH.Value>1);
  if edMaisHoras.Enabled then
    lbHoras.Caption := SHoras else
    lbHoras.Caption := SHora;
  lbAjuste.Enabled := edMaisHoras.Enabled;  
  
  if FRepetirHora>edNumH.Value then
    FRepetirHora := edNumH.Value;
  edRepetirHora.Value := FRepetirHora;  
  tvH.Invalidate(True);
  tvMin.Invalidate(True);
  AjustaOpcoesHora;
  CalcHorasExtras;  
  
  if panTarifas.Visible then
    grid.SetFocus;
end;

procedure TFrmTarifa.edTarExtraPropertiesInitPopup(Sender: TObject);
begin
  case FRepetir of
    rtUltima : rbRepetirUltima.Checked := True;
    rtTodas  : rbRepetirTodas.Checked := True;
    rtDesde  : rbRepetirDesde.Checked := True;
  end;

  edRepetirHora.Enabled := (FRepetir=rtDesde) and (edNumH.Value>1);
  edRepetirHora.Value := FRepetirHora;
end;

procedure TFrmTarifa.edTempoIEnter(Sender: TObject);
begin
  FAnt := edTempoI.Value;
end;

procedure TFrmTarifa.edValor1hEnter(Sender: TObject);
begin
  Fant := edValor1h.Value;
end;

procedure TFrmTarifa.edValorIEnter(Sender: TObject);
begin
  FAnt := edValorI.Value;
end;

procedure TFrmTarifa.edValorIPropertiesChange(Sender: TObject);
begin
  if TcxCustomEdit(Sender).EditingValue <> FAnt then begin
    btnAplicar.Enabled := True;
    panTop.Height := 159;
    panTarifas.Visible := False;
    lbDiv.Enabled := False;
    btnDiv.Enabled := False;
    lbArr.Enabled := False;
    edArr.Enabled := False;
  end;
end;

procedure TFrmTarifa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTarifa.FormCreate(Sender: TObject);
var I: Integer;
begin
  FDisableCalc := True;
  try
  FNovo := False;
  FTarifa := nil;
  FRepetirHora := 1;
  FDivTipo := tdtPorTempo;
  FShowHint := False;
  FMouseOverDel := False;
  FRepetir := rtUltima;
  FShowing := False;
  FArr := 5;
  FDivQtd := 15;
  ActiveControl := edNome;
//  tlHoras.OptionsView.Headers := False;
  FTempoI := 0;
//  TL.OptionsView.Headers := False;
    for I := 1 to 24 do with tvH.DataController do  begin
      AppendRecord;
      Values[I-1, 0] := IntToStr(I) + ' h';
    end;
  finally
    FDisableCalc := False;
  end;
end;

procedure TFrmTarifa.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = KEY_Enter) and (not Grid.Focused) and (not GridH.Focused) and (not tvMin.Focused) then
    Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmTarifa.FormShow(Sender: TObject);
begin
  cmSalvar.Enabled := Permitido(daCFGPrecos);
  FShowing := True;
end;

procedure TFrmTarifa.GridMouseLeave(Sender: TObject);
begin
  HideHint;
end;

procedure TFrmTarifa.HideHint;
begin
  HC.HideHint;
  FShowHint := False;
end;

function PadHora(I: Integer): String;
begin
  Result := IntToStr(I);
  if Length(Result)=1 then Result := '0' + Result;
end;

function TFrmTarifa.Horario(I: Integer): String;
begin
  with tvMin.DataController do
  Result := PadHora(Values[I, tvMinHora.Index]) + 'h' + PadHora(Values[I, tvMinMinutos.Index]) +'m';
end;

procedure TFrmTarifa.Load;
begin
  FDisableCalc := True;
  try
    if FDivTipo=tdtPorTempo then
      LoadTempo else
      LoadValor;
  finally
    FDisableCalc := False;
  end;
  CalcMinExtras;
end;

procedure TFrmTarifa.LoadTempo;
var 
  I, H, M, MR{, TA, T} : Integer;
  V, VR: Currency;
  Diminuiu : Boolean;

begin
  tvMin.BeginUpdate;
  try
    while tvMin.DataController.RecordCount>0 do tvMin.DataController.DeleteRecord(0);

    if cbSemValorMin.Checked then begin
      FTempoI := 0;
      FValorI := 0;
    end;
    
    with tvMin.DataController do
    if FTempoI < 60 then begin
      if FTempoI>0 then begin
        I := AppendRecord;
        Values[I, tvMinHora.Index] := 0;
        Values[I, tvMinValor.Index] := FValorI;
        Values[I, tvMinMinutos.Index] := FTempoI;
      end;

      if FTempoI>0 then
        Diminuiu := ((FValorI / (FTempoI/60)) < edValor1H.Value) else
        Diminuiu := True;
        
      MR := 60 - FTempoI;
      VR := edValor1h.Value - FValorI;

      //TA := FTempoI;
      M :=  FDivQtd;
      while M < 60 do begin
        if M>FTempoI then begin
          I := AppendRecord;
          Values[I, tvMinHora.Index] := 0;
          
          if Diminuiu then
            V := (M/60) * edValor1H.Value else
            V := (((M-FTempoI)/MR) * VR) + FValorI;
              
          if Frac(V/(FArr/100))>0 then
            V := (Int(V/(FArr/100)) + 1) * (FArr/100);
          Values[I, tvMinValor.Index] := V;
          Values[I, tvMinMinutos.Index] := M;
          //TA := M;
        end;
            
        M := M +  FDivQtd;
      end;

    end; 
  
    with tvMin.DataController do 
    for H := 1 to edNumH.Value do begin  
      I := AppendRecord;
      Values[I, tvMinHora.Index] := H;
      Values[I, tvMinValor.Index] := tvH.DataController.Values[h-1, 1];
      Values[I, tvMinMinutos.Index] := 0;
      if H<edNumH.Value then begin
        M :=  FDivQtd;
        while (M < 60) do begin 
          I := AppendRecord;
          Values[I, tvMinMinutos.Index] := M;
          V := tvH.DataController.Values[h-1, 1] + ((M/60) * tvH.DataController.Values[h, 2]);
          if Frac(V/(FArr/100))>0 then
            V := (Int(V/(FArr/100)) + 1) * (FArr/100);
          Values[I, tvMinValor.Index] := V;  
          Values[I, tvMinHora.Index] := H;
          M := M +  FDivQtd;
        end;
      end;
    end;
  finally
    tvMin.EndUpdate;
  end;
end;

procedure TFrmTarifa.LoadValor;
var 
  I, H, M, MR{, TA, T} : Integer;
  {V, }VA, VR, VH: Currency;
  Diminuiu : Boolean;
  
function VAMin: Integer;
begin
  Result := Trunc((VA/VH) * 60);
end;

begin
  tvMin.BeginUpdate;
  try
    while tvMin.DataController.RecordCount>0 do tvMin.DataController.DeleteRecord(0);

    if cbSemValorMin.Checked then begin
      FTempoI := 0;
      FValorI := 0;
    end;
    
    with tvMin.DataController do
    if FTempoI < 60 then begin
      if FTempoI>0 then begin
        I := AppendRecord;
        Values[I, tvMinHora.Index] := 0;
        Values[I, tvMinMinutos.Index] := FTempoI;
        Values[I, tvMinValor.Index] := FValorI;
      end;

      MR := 60 - FTempoI;
      VR := edValor1h.Value - FValorI;
      
      if FTempoI>0 then
        Diminuiu := ((FValorI / (FTempoI/60)) < edValor1H.Value) else
        Diminuiu := True;
        
      VA := DivValor;
      VH := edValor1H.Value;
      while VA < VH do begin
        if (VA>FValorI) then begin
          I := AppendRecord;
          
          if Diminuiu then
            M := VAMin else
            M := Trunc(((VA-FValorI)/VR) * MR) + FTempoI;
          
          Values[I, tvMinHora.Index] := 0;
          Values[I, tvMinValor.Index] := VA;
          Values[I, tvMinMinutos.Index] := M;
          //TA := M;
        end;
            
        VA := VA + DivValor;
      end;

    end; 

    with tvMin.DataController do 
    for H := 1 to edNumH.Value do begin  
      I := AppendRecord;
      Values[I, tvMinHora.Index] := H;
      Values[I, tvMinMinutos.Index] := 0;
      Values[I, tvMinValor.Index] := tvH.DataController.Values[h-1, 1];
      if H<edNumH.Value then begin            
        VA :=  DivValor;
        VH := tvH.DataController.Values[h, tvHTarifa.Index];
        while (VA < VH) do begin 
          I := AppendRecord;
          Values[I, tvMinHora.Index] := H;
          Values[I, tvMinValor.Index] := tvH.DataController.Values[h-1, 1] + VA;
          Values[I, tvMinMinutos.Index] := VAMin;
          VA := VA +  DivValor;
        end;
      end;
    end;
  finally
    tvMin.EndUpdate;
  end;
end;

procedure TFrmTarifa.mi1cClick(Sender: TObject);
begin
  FArr := TMenuItem(Sender).Tag;
  edArr.Text := IntToStr(FArr) + SCentavos;
  Load;
  grid.Setfocus;
end;

procedure TFrmTarifa.mi1mClick(Sender: TObject);
begin
  btnDiv.Tag := TMenuItem(Sender).Tag;
  FDivQtd := btnDiv.Tag;
  btnDiv.Text := IntToStr(FDivQtd) + SMinuto;
  if FDivQtd>1 then btnDiv.Text := btnDiv.Text + 's';

  FDivTipo := tdtPorTempo;
  edArr.Visible := True;
  lbArr.Visible := True;
  Load;
  grid.SetFocus;
end;

function TFrmTarifa.Novo: Boolean;
begin
  FNovo := True;
  FTarifa := TncTarifa.Create;
  try
    if gTarifas.Count=0 then begin
      edCor.ColorValue := clGreen;
      edNome.Text := 'Tarifa Padrão';
      ActiveControl := edValor1h;
    end;
    ShowModal;
    Result := (ModalResult=mrOk);
  finally
    FTarifa.Free;
  end;
end;

function TFrmTarifa.QtdMin(I: Integer): Integer;
var M: Integer;
begin
  with tvMin.DataController do 
  if I=0 then
    Result := Values[I, tvMinMinutos.Index] 
  else begin
    M := Values[I, tvMinMinutos.Index];
    if M=0 then M := 60;
    Result := M - Values[I-1, tvMinMinutos.Index];
  end;
end;


procedure TFrmTarifa.OnClickDivValor(Sender: TObject);
begin
  btnDiv.Tag := TMenuItem(Sender).Tag;
  FDivQtd := btnDiv.Tag;
  FDivTipo := tdtPorValor;
  btnDiv.Text := FloatToStrF(FDivQtd*0.05, ffCurrency, 10, 2);
  lbArr.Visible := False;
  edArr.Visible := False;
  Load;
  grid.SetFocus;
end;

procedure TFrmTarifa.rbRepetirDesdeClick(Sender: TObject);
begin
  edRepetirHora.Enabled := (edNumH.Value>1);
end;

procedure TFrmTarifa.rbRepetirTodasClick(Sender: TObject);
begin
  edRepetirHora.Enabled := False;
end;

procedure TFrmTarifa.rbRepetirUltimaClick(Sender: TObject);
begin
  edRepetirHora.Enabled := False;
end;

procedure TFrmTarifa.RefreshMenuPorValor;
var 
  MI : TMenuItem;
  I : Integer;
begin
  miPorValor.Clear;
  if FMenorH>0 then begin
    MI := TMenuItem.Create(Self);
    MI.Caption := SR001;
    MI.Tag := 0;
    MI.OnClick := OnClickDivValor;
    miPorValor.Add(MI);
  end;
  I := 1;
  while (I*0.05) <= FMenorH do begin
    if Frac(FMenorH / (I*0.05))=0 then begin
      MI := TMenuItem.Create(Self);
      MI.Caption := Trim(FloatToStrF((I*0.05), ffCurrency, 10, 2));
      MI.Tag := I;
      MI.OnClick := OnClickDivValor;
      miPorValor.Add(MI);
    end;
    Inc(I);
  end;
end;

procedure TFrmTarifa.SetMouseOverDel(const AValue: Boolean);
begin
  if FMouseOverDel=AValue then Exit;
  if not AValue then HideHint;

  FMouseOverDel := AValue;
  tvMin.ViewData.Records[tvMin.DataController.FocusedRecordIndex].Invalidate(tvMinHora);
end;

procedure TFrmTarifa.SetRepetir(const Value: Byte; const aRepetirHora: Integer = -1);
begin
  if (FRepetir=Value) and ((Value<>rtDesde) or (FRepetirHora=aRepetirHora)) then Exit;
  
  FRepetir := Value;
  if aRepetirHora<>-1 then
    FRepetirHora := aRepetirHora;

  AjustaOpcoesHora;  

  CalcHorasExtras;
end;

function TFrmTarifa.TarifaMin(I: Integer): Currency;
begin
  with tvMin.DataController do 
  if I=0 then
    Result := Values[I, tvMinValor.Index] else
    Result := Values[I, tvMinValor.Index] - Values[I-1, tvMinValor.Index];
end;

procedure TFrmTarifa.TimerLoadTimer(Sender: TObject);
begin
  TimerLoad.Enabled := False;
  Load;
end;

procedure TFrmTarifa.tlHorasCustomDrawCell(Sender: TObject; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
begin
  if aviewinfo.Focused then
    ACanvas.Font.Style := [fsBold];
end;

procedure TFrmTarifa.tlHorasInitEdit(Sender, AItem: TObject;
  AEdit: TcxCustomEdit);
begin
  AEdit.Style.StyleController := SC;
  AEdit.Style.TextStyle := [fsBold];
  AEdit.StyleFocused.TextStyle := [fsBold];
end;

function TFrmTarifa.TotMin(I: Integer): Integer;
begin
  with tvMin.DataController do
    Result := (Values[I, tvMinHora.Index] * 60) + Values[I, tvMinMinutos.Index];
end;

procedure TFrmTarifa.tvHCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Index >= edNumH.Value then begin
    if AViewInfo.Focused then
      ACanvas.Brush.Color := $00BFFFFF;
    ACanvas.Font.Color := clGray;
  end;
end;

procedure TFrmTarifa.tvHDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex, AItemIndex: Integer);
//var Tar: Currency;
begin
  if not FShowing then Exit;
  
  if AItemIndex=2 then Exit;
  if ARecordIndex=0 then 
    ADataController.Values[ARecordIndex, 2] := ADataController.Values[ARecordIndex, 1] else
    ADataController.Values[ARecordIndex, 2] := ADataController.Values[ARecordIndex, 1] - 
                                               ADataController.Values[ARecordIndex-1, 1];
                                               
  CalcHorasExtras(True);
  TimerLoad.Enabled := True;
end;

procedure TFrmTarifa.tvHEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  AAllow := (tvH.DataController.FocusedRecordIndex < edNumH.Value);
end;

procedure TFrmTarifa.tvMinCanFocusRecord(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; var AAllow: Boolean);
var 
  V: Variant;
  I: Integer;
begin
  V := ARecord.Values[tvMinMinutos.Index];
  if V<>null then begin
    I := V;
    AAllow := (I>0) or cbSemValorMin.Checked or (FTempoI=0);
  end else 
    AAllow := False;
end;

procedure TFrmTarifa.tvMinCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var 
  V: Variant;
  I: Integer;
begin
  V := AViewInfo.GridRecord.Values[tvMinHora.Index];
  if V<>null then begin
    I := V;
    V := AViewInfo.GridRecord.Values[tvMinMinutos.Index];
    if V=null then Exit;
    I := (I*60) + V;
    if ((I mod 60) = 0) then begin
      ACanvas.Brush.Color := clBtnFace;
      ACanvas.Font.Style := [fsBold];
      if I > (edNumH.Value*60) then
        ACanvas.Font.Color := clGray else
        ACanvas.Font.Color := clBlack;
    end else begin
      if AViewInfo.Focused then
        ACanvas.Brush.Color := $00BFFFFF;
      if I>(edNumH.Value*60) then
        ACanvas.Font.Color := clGray;
    end;
  end;
end;

procedure TFrmTarifa.tvMinDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex, AItemIndex: Integer);
begin
  CalcMinExtras;
end;

procedure TFrmTarifa.tvMinEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  with tvMin.DataController do begin
    AAllow := ((FocusedRecordIndex > 0) or cbSemValorMin.Checked or (FTempoI=0))
              and
              (Values[FocusedRecordIndex, tvMinHora.Index]<edNumH.Value) and
              (Values[FocusedRecordIndex, tvMinMinutos.Index]>0);
  end;
end;

procedure TFrmTarifa.tvMinHoraCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var V : Variant;  
begin
  with AViewInfo do begin
    if not GridRecord.Focused then Exit;
    V := AViewInfo.Value;
    if (V=null) or (V>=edNumH.Value) then Exit;
    ACanvas.FillRect(Bounds);
    if (GridRecord.Index>0) and GridRecord.Focused then
      if FMouseOverDel then
        ACanvas.DrawImage(dmImagens.im16, Bounds.Left+5, Bounds.Top, 64) else
        ACanvas.DrawImage(dmImagens.im16, Bounds.Left+5, Bounds.Top, 79);
    ACanvas.DrawTexT(Text, Bounds, cxAlignVCenter or cxAlignright);    
    ADone := True;
  end;
end;

procedure TFrmTarifa.tvMinHoraGetDataText(Sender: TcxCustomGridTableItem;
  ARecordIndex: Integer; var AText: string);
begin
  if AText='0' then
    AText := '' else
    AText := AText + 'h';
end;

procedure TFrmTarifa.tvMinInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
begin
  AEdit.Style.StyleController := SC;
  AEdit.Style.TextStyle := [fsBold];
  
  AEdit.StyleFocused.TextStyle := [fsBold];
end;

procedure TFrmTarifa.tvMinInitEditValue(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var AValue: Variant);
begin
  AEdit.Style.StyleController := SC;
  AEdit.Style.TextStyle := [fsBold];

  AEdit.StyleFocused.TextStyle := [fsBold];
end;

procedure TFrmTarifa.tvMinMinutosGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  AText := Trim(AText);
  if AText='0' then
    AText := ''
  else begin  
    if Length(AText)=1 then
      AText := '0'+AText;
    AText := AText + 'm';
  end;
end;

procedure TFrmTarifa.tvMinMinutosPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var I : Integer;  
begin
  I := StrToIntDef(Trim(DisplayValue), 0);
  if (I<1) or (I>59) then begin
    Error := True;
    ErrorText := SAQuantidadeDeMinutosTemQueEstarE;
  end;
end;

procedure TFrmTarifa.tvMinMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
//var V: Variant;

procedure SetNextFocus;
var I : Integer;
begin
  with tvMin.DataController do begin
    for I := FocusedRecordIndex to RecordCount - 1 do
      if (Values[I, tvMinMinutos.Index]<>null) and (Values[I, tvMinMinutos.Index] > 0) then begin
        FocusedRecordIndex := I;
        Exit;
      end;
    FocusedRecordIndex := 0;
  end;
end;

begin
  if FShowHint then begin
    with tvMin.DataController do begin
      DeleteFocused;
      SetNextFocus;
      CalcMinExtras;
    end;
    HideHint;
  end;
end;

procedure TFrmTarifa.tvMinMouseLeave(Sender: TObject);
begin
  SetMouseOverDel(False);
end;

procedure TFrmTarifa.tvMinMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
  AGridSite: TcxGridSite;
  RCH : TcxGridRecordCellHitTest;
  P : TPoint;
begin
  P.X := X;
  P.Y := Y;
  P := Grid.ClientToScreen(P);
  P.Y := P.Y+30;
  AGridSite := Sender as TcxGridSite;
  AHitTest := tvMin.GetHitTest(X, Y);
  if AHitTest<>nil then
    AGridSite.Cursor := AHitTest.Cursor;
  if (AHitTest is TcxGridRecordCellHitTest) then
  begin
    RCH := TcxGridRecordCellHitTest(AHitTest);
    X := X - 15;
    SetMouseOverDel((RCH.Item=tvMinHora) and RCH.GridRecord.Focused and (X in [1..20]));
    if FMouseOverDel then begin
      AGridSite.Cursor := crHandPoint;
      if not FShowHint then begin
        HC.ShowHint(P.X, P.Y, SRemoverTarifa, SCliqueNaLixeiraParaRemoverEssaTa);
        FShowHint := True;
      end;
    end;
  end else 
    SetMouseOverDel(False);
end;

procedure TFrmTarifa.ValidaMinutos;
begin
  FValorI := edValorI.Value;
  FTempoI := edTempoI.Value;

  if (not cbSemValorMin.Checked) and (FValorI>0) and (FTempoI<1) then
    Raise ENexCafe.Create(SOTempoInicialTemQueSerInformado);
end;

end.

