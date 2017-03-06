unit ncaFrmOrcamento;
{
    ResourceString: Dario 11/03/13
}

interface

{$I nex.inc}

uses
  Windows, ncErros, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxGraphics, cxEdit, cxCurrencyEdit, cxImageComboBox,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxTextEdit,
  cxDBLookupComboBox, cxMaskEdit, ExtCtrls, nxdb, kbmMemTable, dxBarExtItems,
  dxBar, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxMemo,
  cxDBEdit, cxVGrid, cxDBVGrid, cxInplaceContainer, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel, LMDLabel,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  cxDropDownEdit, cxRadioGroup, ncMovEst, ncafbPesqCli, cxCheckBox, Buttons,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton,
  cxLabel, cxSpinEdit, cxLookAndFeels, cxLookAndFeelPainters,
  LMDCustomScrollBox, LMDScrollBox, cxPC, cxPCdxBarPopupMenu, ncaFrmTotal, ncaFrmTotalOrcamento,
  cxLookupEdit, cxDBLookupEdit, Menus, StdCtrls, cxButtons, ncaFrmEditContato, ncaFrmEditContatoOrc, ncaFrmEditFunc,
  ncClassesBase, cxNavigator, ncaPanVendaProdBase, ncaPanItensVendaBase, ncaPanItensVendaGrid,
  cxBarEditItem, ImgList, ncMyImage, ncDebCredValidator, dxGDIPlusClasses,
  LMDDrawEdge, ActnList, ncaFrmEditValidade, System.Actions, System.ImageList;

type
  TFrmOrcamento = class(TForm)
    BarMgr: TdxBarManager;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    panTot: TLMDSimplePanel;
    tPro: TnxTable;
    tProID: TAutoIncField;
    tProPreco: TCurrencyField;
    DataSource1: TDataSource;
    tProPodeAlterarPreco: TBooleanField;
    Timer1: TTimer;
    tProFidPontos: TIntegerField;
    panLista: TLMDSimplePanel;
    tProCustoUnitario: TCurrencyField;
    tProCadastroRapido: TBooleanField;
    dxBarLargeButton1: TdxBarLargeButton;
    tProImagem: TGraphicField;
    tProNaoControlaEstoque: TBooleanField;
    tProAbaixoMin: TBooleanField;
    tProAbaixoMinDesde: TDateTimeField;
    tProAtivo: TBooleanField;
    tProFidelidade: TBooleanField;
    tProIncluidoEm: TDateTimeField;
    tProPermiteVendaFracionada: TBooleanField;
    tCodR: TnxTable;
    cbFocus: TCheckBox;
    cxStyle5: TcxStyle;
    LMDSimplePanel1: TLMDSimplePanel;
    panCli: TLMDSimplePanel;
    imgs: TcxImageList;
    panFunc: TLMDSimplePanel;
    panOrcamento: TLMDSimplePanel;
    lbTitOrcamento: TcxLabel;
    cmGravar: TcxLabel;
    LMDDrawEdge1: TLMDDrawEdge;
    cmCancelar: TcxLabel;
    LMDDrawEdge2: TLMDDrawEdge;
    imgs2: TcxImageList;
    ActionList1: TActionList;
    panValidade: TLMDSimplePanel;
    lbValidade: TcxLabel;
    imgValidade: TMyImage;
    lbPromptValidade: TcxLabel;
    Tab: TnxTable;
    tItens: TnxTable;
    tItensDescr: TnxMemoField;
    tItensUnitario: TCurrencyField;
    tItensTotal: TCurrencyField;
    tItensDesconto: TCurrencyField;
    tItensTotalFinal: TCurrencyField;
    TabCriadoEm: TDateTimeField;
    TabAtualizadoEm: TDateTimeField;
    TabAprovadoEm: TDateTimeField;
    TabRecusadoEm: TDateTimeField;
    TabVendidoEm: TDateTimeField;
    TabExpiradoEm: TDateTimeField;
    TabStatusAlteradoEm: TDateTimeField;
    TabFunc: TStringField;
    TabTotal: TCurrencyField;
    TabDesconto: TCurrencyField;
    TabTotalFinal: TCurrencyField;
    TabVendido: TBooleanField;
    TabObs: TnxMemoField;
    TabNomeCliente: TStringField;
    TabNomeFunc: TStringField;
    cxStyle6: TcxStyle;
    tProPrecoAuto: TBooleanField;
    tProMargem: TFloatField;
    tProEstoqueAtual: TFloatField;
    tProEstoqueMin: TFloatField;
    tProEstoqueMax: TFloatField;
    tProEstoqueRepor: TFloatField;
    tProComissaoPerc: TFloatField;
    tProComissaoLucro: TBooleanField;
    tProFornecedor: TLongWordField;
    TabUID: TGuidField;
    TabIDSeq: TUnsignedAutoIncField;
    TabRecVer: TLongWordField;
    TabStatus: TByteField;
    TabIDVenda: TLongWordField;
    TabCliente: TLongWordField;
    TabValData: TDateTimeField;
    TabValModo: TByteField;
    TabValTempo: TWordField;
    TabValUTempo: TByteField;
    tItensOrcamento_UID: TGuidField;
    tItensUID: TGuidField;
    tItensItem: TWordField;
    tItensProduto: TLongWordField;
    tItensQuant: TFloatField;
    tProEstoquePend: TFloatField;
    tProEstoqueTot: TFloatField;
    tProNCM: TStringField;
    tProbrtrib: TWordField;
    tProtax_id: TLongWordField;
    tProNCM_Ex: TStringField;
    tProcest: TLongWordField;
    tProUID: TGuidField;
    tProMarca: TGuidField;
    tProCodigo: TWideStringField;
    tProDescricao: TWideStringField;
    tProUnid: TWideStringField;
    tProObs: TWideMemoField;
    tProCategoria: TWideStringField;
    tProPesoBruto: TFloatField;
    tProPesoLiq: TFloatField;
    tPromodST: TByteField;
    tProMVA: TnxMemoField;
    tProPauta: TnxMemoField;
    tProAlteradoEm: TDateTimeField;
    tProAlteradoPor: TStringField;
    panBuscaProd: TLMDSimplePanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edProdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmCancelarClick(Sender: TObject);
    procedure lbNomeClick(Sender: TObject);
    procedure lbValidadeClick(Sender: TObject);
  private
    FME       : TncMovEst;
    FNovo     : Boolean;
    FBalcao   : Boolean;
    FRes      : Byte;
    FCliAnt   : Integer;
    FValidade : TncValidadeOrcamento;
    FDebAnt   : Currency;
    FCredUsado : Currency;
    FMsgDebito: Integer;
    FTipoCli  : Integer;
    FShowed   : Boolean;
    FTot      : TFrmTotalOrcamento;
    FCli      : TFrmEditContato;
    FFunc     : TFrmEditFunc;
    FprocClickCompra: Boolean;
    //FMostrarUnit : Boolean;  agora sempre mostrará o preço unitário
    FTamanho     : byte;
    FPanAddProd  : TFrmPanVendaProdBase;
    FPanItens    : TpanItensVendaBase;
    FDCValidator : TncDebCredValidator;
    FItensA      : TncItensMovEst;
    FTab         : TnxTable;
    { Private declarations }
    procedure AddItem(aItem: TncItemMovEst);
    procedure LoadItens;
    function GetFidResgate: Boolean;

    procedure wmAtualizaValidade(var Msg: TMessage);
      message wm_user;

    //procedure SetMostrarUnit(const Value: Boolean);
    procedure OnAddProd(Sender: TFrmPanVendaProdBase; aProdID, aTaxID: Cardinal; aValorUnit, aTotal: Currency; aQuant: Extended; aDescr: String; aPermSemEstoque: Boolean; aFidPontos: Double; aObs: String);

    procedure OnClicouRemoverItem(Sender: TObject; aBotao: TBotaoItemVenda);

    procedure OnClicouPagamento(Sender: TObject);

    procedure OnChangeCliente(Sender: TObject);

    function OnQuantOk(Sender: TFrmPanVendaProdBase; aProduto: Cardinal; aQuant, Estoque: Double): Boolean;

    procedure UpdateTipoTran;

    procedure EditValidade;

    procedure LeOrcamento;

    procedure SalvaOrcamento;

    function EditarPagEsp: Boolean;

    //property MostrarUnit: Boolean
    //  read FMostrarUnit write SetMostrarUnit;

    property FidResgate: Boolean
      read GetFidResgate;
  public
    function Editar(aUID: String): Boolean;

    function Novo: String;
    { Public declarations }
  end;

  TMeuLookup = class ( TcxCustomLookupEdit );

  TMeuLookupData = class ( TcxCustomLookupEditLookupData );

var                          
  FrmOrcamento: TFrmOrcamento;

implementation

uses
  ncaDM,
  ncaFrmPri,
  ncIDRecursos,
  ncafbPesqFor,
  ncaFrmConfigChoiceME,
  ncaFrmConfigVendaProdSemSaldo, 
  ncaFrmOpcoes,
  ncaFrmConfigQuickCad,
  ufmImagens, ncaFrmPagEspecie, ncEspecie, ncaFrmConfigTelaVendas,
  ncaConfigRecibo, ncaFrmAposVenda, ncDebug, ncaDMComp, ncaAlertaRecuperarVenda,
  ncGuidUtils;

// START resource string wizard section
resourcestring
  SOpçõesParaVendas = 'Opções';
  SÉNecessárioHaverItensParaSalvar = 'É necessário haver itens para salvar';
  SDescontoNãoPodeSerMaiorQueOValor = 'Desconto não pode ser maior que o valor total';
  SÉNecessárioInformarOCliente = 'É necessário informar o cliente';
  SUIDNaoEncontrado = 'Não foi possível encontrar o orçamento';

// END resource string wizard section


{$R *.dfm}

{ TFrmME }

procedure TFrmOrcamento.cmCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmOrcamento.cmGravarClick(Sender: TObject);
var 
  Debitar: Currency;
  W: TWinControl;
begin
{  try
    W := screen.ActiveControl;
    cbFocus.SetFocus;
    if W<>nil then W.SetFocus;
  except
  end;              }
  
  FME.Desconto := FTot.Desconto;  
  FME.DescPerc := FTot.DescPerc;
  FME.DescPorPerc := FTot.DescPorPerc;
  FME.Total    := FTot.SubTotal;
  FME.Pago     := FME.PagEsp.Pago;
  FME.Obs      := FTot.Obs;
  FME.NomeCliente := FCli.Nome;
  FME.Func := FFunc.Username;
  FME.Cliente := FCli.ID;
  
  if FME.Itens.Count=0 then
    Raise ENexCafe.Create(SÉNecessárioHaverItensParaSalvar);

    if FME.Desconto-FME.Total > 0.001 then
      Raise ENexCafe.Create(SDescontoNãoPodeSerMaiorQueOValor);

    if FME.Desconto-FME.Total > 0.001 then
      Raise ENexCafe.Create(SDescontoNãoPodeSerMaiorQueOValor);

{    if (FME.Pago - (FME.Total - FME.Desconto)) > 0.001 then
      Raise ENexCafe.Create(SValorPagoNãoPodeSerMaiorQueOTota);}
      
    if FCli.ID=0 then 
      raise ENexCafe.Create(SÉNecessárioInformarOCliente);
      
    
  FME.SalvaDescPago;
  FME.SalvaTipoTran;

  SalvaOrcamento;

  FRes := 1;

  Close;
end;

procedure TFrmOrcamento.OnAddProd(Sender: TFrmPanVendaProdBase; aProdID, aTaxID: Cardinal; aValorUnit, aTotal: Currency; aQuant: Extended; aDescr: String; aPermSemEstoque: Boolean; aFidPontos: Double; aObs: String);
var IM: TncItemMovEst;
begin
  IM := TncItemMovEst.Create(nil);
  try
    IM.imTipoTran := FME.Tipo;
    IM.imFidResgate := FidResgate;
    IM.imProduto := aProdID;
    IM.imQuant := aQuant;
    IM.imPermSemEstoque := aPermSemEstoque;
    IM.imObs := aObs;
    if FidResgate then
      IM.imFidPontos := aFidPontos * IM.imQuant
    else begin
      if FME.Tipo in [trEstVenda, trEstCompra] then begin
        IM.imUnitario := aValorUnit;
        IM.imTotal := aTotal;
      end;
      IM.imFidPontos := 0;
    end;
    
    AddItem(IM);
    FME.Itens.NewItem.AssignFrom(IM);
  finally
    IM.Free;
  end;
end;

procedure TFrmOrcamento.OnChangeCliente(Sender: TObject);
begin
end;

procedure TFrmOrcamento.OnClicouPagamento(Sender: TObject);
begin
  EditarPagEsp;
end;

procedure TFrmOrcamento.OnClicouRemoverItem(Sender: TObject; aBotao: TBotaoItemVenda);
var aIndex: Integer;
begin
  aIndex := FpanItens.FocusedItemIndex;
  if aIndex=-1 then Exit;
  FTot.SubTotal := FTot.SubTotal - FME.Itens[aIndex].imTotal;

  FME.Itens[aIndex].Free;
  FME.Itens.Delete(aIndex);
  FpanItens.DelItem(aIndex);
  
  if (FME.Tipo=trEstVenda) and FNovo and (not FME.FidResgate) then
    if FME.Itens.Count=0 then
      DeleteTempItensME;
  
  if FME.Itens.Count=0 then 
    FPanAddProd.FocusProd('TFrmOrcamento.OnClicouRemoverItem');

    
end;

function TFrmOrcamento.OnQuantOk(Sender: TFrmPanVendaProdBase; aProduto: Cardinal;
  aQuant, Estoque: Double): Boolean;
begin
  Result := True;  
end;

procedure TFrmOrcamento.SalvaOrcamento;

var I : Integer;

begin
  InitTran(Dados.DB, [Tab, tItens], True);
  try
    if FNovo then begin
      Tab.Insert;
      TabCriadoEm.Value := Now;
      TabUID.AsGuid := TGuidEx.NewGuid;
    end else
      Tab.Edit;
      
    TabFunc.Value := FFunc.Username;
    TabCliente.Value := FME.Cliente;
    TabTotal.Value := FME.Total;
    TabDesconto.Value := FME.Desconto;
    TabObs.Value := FME.Obs;
    TabAtualizadoEm.Value := Now;

    TabValModo.Value := FValidade.Modo;
    TabValTempo.Value := FValidade.Tempo;
    TabValUTempo.Value := FValidade.UTempo;
    TabValData.Value := FValidade.Data;

    Tab.Post;

    if not FNovo then begin
      tItens.CancelRange;
      while tItens.FindKey([TabUID.Value]) do tItens.Delete;
    end;

    for I := 0 to FME.Itens.Count - 1 do with FME.Itens[I] do begin
      tItens.Append;
      tItensUID.AsGuid := TGuidEx.NewGuid;
      tItensProduto.Value := imProduto;
      tItensUnitario.Value := imUnitario;
      tItensTotal.Value := imTotal;
      tItensOrcamento_UID.Value := TabUID.Value;
      tItensDesconto.Value := imDesconto;
      tItensQuant.Value := imQuant;
      tItensTotalFinal.Value := imTotal-imDesconto;
      tItensItem.Value := I+1;
      tItensDescr.Value := FPanItens.Values[I, 'Descr'];
      tItens.Post;
    end;
    Dados.DB.Commit;  
    Dados.CM.TableUpdated(idtab_orcamento);
  except
    Dados.DB.Rollback;
    Raise;
  end;
end;

function TFrmOrcamento.Editar(aUID: String): Boolean;
var
  Func : String;
  TC : Byte;
  U : TncUsuario;
  I : Integer;
  sl : TStrings;

  aProduto: Cardinal;
  aQuant : Double;
  aUnitario : Currency;
  aTotal : Currency;
  aPermSemEstoque: Boolean;
begin
  FNovo := (aUID='');
  FBalcao := FME.PagPend;
  FME.Tipo := trEstVenda;
  FME.Func := Dados.CM.UA.Username;

  if FNovo then 
    FME.Obs := gConfig.ObsPadraoOrcamento;

  if not FNovo then begin
    if not Tab.FindKey([aUID]) then
      Raise exception.Create(SUIDNaoEncontrado+' '+aUID);
    LeOrcamento;  
  end;

  FItensA.AsString := FME.Itens.AsString;
  
  FCredUsado := FME.PagEsp.CreditoUsado;

  FPanAddProd.ResgateFid := False;

  FpanItens.ResgateFidelidade := False;

  FTot.InitVal(FME.PagEsp, FME.Total, FME.Desconto, FME.Pago, 0, FME.Obs, panTot);

  if FNovo then 
    FFunc.Username := Dados.CM.UA.Username else
    FFunc.Username := FME.Func;
  
  FCli.ID := FME.Cliente;
  if FME.Cliente>0 then
    TC := 0 else
    TC := 1;

  FDCValidator.SetOldCli(FCli.ID, FCli.Debito, FCli.Credito, FME.PagEsp.CreditoUsado, FME.PagEsp.Credito);
  
  cmGravar.Enabled := (FNovo or Permitido(daTraAlterar));
  FCli.Fornecedor := (FME.Tipo <> trEstVenda);
  UpdateTipoTran;

  if FNovo then begin
    FTot.OpPagto := 1;
  end else begin
    LoadItens;
    if not FME.PagPend then begin
      FDCValidator.OldDebito := FME.PagEsp.Debito;
      FDCValidator.OldCredito := FME.PagEsp.Credito;
    end;
    FTot.Recebido := FME.Pago;
    if Abs(((FME.Total - FME.Desconto) - FME.Pago)) < 0.01 then
      FTot.OpPagto := 1 else
      FTot.OpPagto := 0;
  end;
 
  FTot.Atualiza;
  ShowModal;
  Result := (FRes=1);
end;

function TFrmOrcamento.EditarPagEsp: Boolean;
begin
  Result := True;
end;

procedure TFrmOrcamento.EditValidade;
begin
  TFrmEditValidade.Create(Self).Editar(FValidade);
  lbValidade.Caption := FValidade.AsString;
  PostMessage(Handle, wm_user, 0, 0);
end;

procedure TFrmOrcamento.edProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_Enter : if ssCtrl in Shift then cmGravarClick(nil);
    Key_Esc   : if FPanAddProd.CanCloseForm then Close;
  end;
end;

procedure TFrmOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmOrcamento.FormCreate(Sender: TObject);
begin
  FME := TncMovEst.Create;
  FItensA := TncItensMovEst.Create(nil);
  FValidade := TncValidadeOrcamento.Create;
  FValidade.DataInicial := Date;
  if gConfig.ValOrc_Tempo>0 then begin
    FValidade.Modo := modo_val_tempo;
    FValidade.UTempo := gConfig.ValOrc_UTempo;
    FValidade.Tempo := gConfig.ValOrc_Tempo;
    FValidade.Data := FValidade.ValidoAte;
  end else 
    FValidade.Modo := modo_val_semvalidade;
  FDCValidator := TncDebCredValidator.Create;
  FprocClickCompra := False;
  
  FCredUsado := 0;
  FPanAddProd  := DefPanVendaProdClass.Create(Self);
  FPanAddProd.OnAddProd := OnAddProd;
  FPanAddProd.PanVendaProd.Parent := panBuscaProd;
  FPanAddProd.OnQuantOk := Self.OnQuantOk;

  FPanItens := TPanItensVendaGrid.Create(Self);
  FpanItens.panPri.Parent := panLista;
  FpanItens.OnClicouBotao := OnClicouRemoverItem;
  FpanItens.MostrarBotao(bivRemoverItem, True);
  FpanItens.OnClickPagamento := OnClicouPagamento;

  FTot := TFrmTotalOrcamento.Create(Self);
  FTot.panTot.Parent := panTot;

  FCli := TFrmEditContatoOrc.Create(Self);
  FCli.panPri.Parent := panCli;
  FCli.DCValidator := FDCValidator;
  FCli.OnChange := OnChangeCliente;

  FFunc := TFrmEditFunc.Create(Self);
  FFunc.panPri.Parent := panFunc;
  FFunc.Img.Visible := False;
  
  FShowed := False;
  FTipoCli := -1;
  FMsgDebito := -1;
  
  FCliAnt:= 0;
  FDebAnt:= 0;

  FRes := 0;
  Tab.Open;
  tItens.Open;
end;

procedure TFrmOrcamento.FormDestroy(Sender: TObject);
begin
  FME.Free;
  FItensA.Free;
  FValidade.Free;
  FTot.Free;
  FDCValidator.Free;
end;

procedure TFrmOrcamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
{    Key_Enter : 
      if (not (ssCtrl in Shift)) then 
        FPanAddProd.FocusProd
      else
        if cmGravar.Enabled then
          if ((ssCtrl in Shift) or (FTot.edRec.Focused)) then 
            cmGravarClick(nil); }
        
    Key_Esc   : 
    if ((not FNovo) or (Self.FPanItens.Count=0)) and FPanAddProd.CanCloseForm then Close;

    Key_F2    : 
    if cmGravar.Enabled then begin
      FPanAddProd.ClosePops;
      cmGravarClick(nil);
    end;
    Key_F3    : begin
      FPanAddProd.ClosePops;
      FTot.EditDesc;
    end;
    Key_F4    : begin
      FPanAddProd.ClosePops;
      FTot.EditObs;
    end;
    Key_F5    : begin
      FPanAddProd.ClosePops;
      FCli.Pesquisa;
    end;
    Key_F6 : begin
      FPanAddProd.ClosePops;
      FFunc.Pesquisa;
    end;
    Key_F7 : EditValidade;
  end;
end;

procedure TFrmOrcamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13, #27]) then Key := #0;
end;

procedure TFrmOrcamento.FormShow(Sender: TObject);
begin
  //MostrarUnit := (FME.Tipo=trEstCompra);
  FPanAddProd.TipoTran := FME.Tipo;
  FpanAddProd.SetGap(7);

  lbValidade.Caption := FValidade.AsString;

  if not FShowed then
    Timer1.Enabled := True;

  if not FNovo then begin
    FCliAnt := FME.Cliente;
    FDebAnt := FME.ValorDebitado;
  end;

  FShowed := True;

  FTot.Atualiza;

  PostMessage(Handle, wm_user, 0, 0);

{  vgT.HideEdit;
  vgT.ShowEdit;}
  if (Screen.Width=640) then
    PostMessage(Handle, WM_SYSCOMMAND, SC_MAXIMIZE, 0);
end;

function TFrmOrcamento.GetFidResgate: Boolean;
begin
  Result := FME.FidResgate;
end;

procedure TFrmOrcamento.lbNomeClick(Sender: TObject);
begin
  EditValidade;
end;

procedure TFrmOrcamento.lbValidadeClick(Sender: TObject);
begin
  EditValidade;
end;

procedure TFrmOrcamento.AddItem(aItem: TncItemMovEst);
begin
  FTot.SubTotal := FTot.SubTotal + aItem.imTotal;
  FpanItens.UpdateItemMovEst(-1, aItem);
end;

procedure TFrmOrcamento.LeOrcamento;
begin
  FME.Cliente := TabCliente.Value;
  FME.Total := TabTotal.Value;
  FME.Desconto := TabDesconto.Value;
  FME.Func := TabFunc.Value;
  FME.DataHora := self.TabCriadoEm.Value;
  FME.Obs := TabObs.Value;

  FValidade.Modo := TabValModo.Value;
  FValidade.DataInicial := TabCriadoEm.Value;
  FValidade.Tempo := TabValTempo.Value;
  FValidade.UTempo := TabValUTempo.Value;
  FValidade.Data := TabValData.Value;
end;

procedure TFrmOrcamento.LoadItens;
var 
  Item: TncItemMovEst;
  I: Integer;
begin
  FTot.SubTotal := 0;
  I := 0;
  tItens.SetRange([TabUID.Value], [TabUID.Value]);
  tItens.First;
  while not tItens.Eof do begin
    Item := FME.Itens.NewItem;
    Inc(I);
    Item.imItem := I;
    Item.imProduto := tItensProduto.Value;
    Item.imQuant := tItensQuant.Value;
    Item.imUnitario := tItensUnitario.Value;
    Item.imTotal := tItensTotal.Value;
    AddItem(Item);
    tItens.Next;
  end;
end;


function TFrmOrcamento.Novo: String;
begin
  if Editar('') then Result := TabUID.Value;
end;

procedure TFrmOrcamento.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  try
    FPanAddProd.FocusProd('TFrmOrcamento.Timer1Timer');
  except
  end;
end;

procedure TFrmOrcamento.UpdateTipoTran;
begin
  FpanItens.TipoTran := FME.Tipo;

  panCli.Visible := True;

  FPanAddProd.TipoTran := FME.Tipo;

  FpanItens.Atualiza;
end;

procedure TFrmOrcamento.wmAtualizaValidade(var Msg: TMessage);
var W: Integer;
begin
  if lbPromptValidade.Width>lbValidade.Width then
    W := lbPromptValidade.Width else
    W := lbValidade.Width;

  W := W + lbValidade.Left + 10;

  panValidade.Width := W;  
end;

end.
{F4BF0050-9A71-442B-8AEB-7D89E23165DB}
