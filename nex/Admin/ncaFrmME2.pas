unit ncaFrmME2;
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
  cxDropDownEdit, cxRadioGroup, ncMovEst, cxCheckBox, Buttons,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton,
  cxLabel, cxSpinEdit, cxLookAndFeels, cxLookAndFeelPainters,
  LMDCustomScrollBox, LMDScrollBox, cxPC, cxPCdxBarPopupMenu, ncaFrmTotal, ncaFrmTotal3,
  cxLookupEdit, cxDBLookupEdit, Menus, StdCtrls, cxButtons, ncaFrmEditContato, ncaFrmEditFunc,
  ncClassesBase, cxNavigator, ncaPanVendaProdBase, ncaPanItensVendaBase, ncaPanItensVendaGrid,
  cxBarEditItem, ImgList, ncMyImage, ncDebCredValidator, dxGDIPlusClasses,
  LMDDrawEdge, System.ImageList, ncaFrmEditEntrega, ncaPanVendaProd2;

type
  TFrmME2 = class(TForm)
    panCompra: TLMDSimplePanel;
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
    panTopo: TLMDSimplePanel;
    panCli: TLMDSimplePanel;
    cbCompra: TcxCheckBox;
    cbRecibo: TcxCheckBox;
    cmConfig: TcxButton;
    imgs: TcxImageList;
    panFunc: TLMDSimplePanel;
    panFidelidade: TLMDSimplePanel;
    Img: TImage;
    lbMensagem: TcxLabel;
    LMDSimplePanel2: TLMDSimplePanel;
    lbDepois: TcxLabel;
    cmGravar: TcxLabel;
    LMDDrawEdge1: TLMDDrawEdge;
    cmCancelar: TcxLabel;
    tOrcItens: TnxTable;
    tOrcItensDescr: TnxMemoField;
    tOrcItensUnitario: TCurrencyField;
    tOrcItensTotal: TCurrencyField;
    tOrcItensDesconto: TCurrencyField;
    tOrcItensTotalFinal: TCurrencyField;
    tOrc: TnxTable;
    tOrcUID: TGuidField;
    tOrcIDSeq: TAutoIncField;
    tOrcNomeCliente: TWideStringField;
    tOrcNomeFunc: TStringField;
    tOrcCriadoEm: TDateTimeField;
    tOrcAtualizadoEm: TDateTimeField;
    tOrcAprovadoEm: TDateTimeField;
    tOrcRecusadoEm: TDateTimeField;
    tOrcVendidoEm: TDateTimeField;
    tOrcExpiradoEm: TDateTimeField;
    tOrcStatusAlteradoEm: TDateTimeField;
    tOrcFunc: TStringField;
    tOrcTotal: TCurrencyField;
    tOrcDesconto: TCurrencyField;
    tOrcTotalFinal: TCurrencyField;
    tOrcVendido: TBooleanField;
    tOrcObs: TnxMemoField;
    tProPrecoAuto: TBooleanField;
    tProMargem: TFloatField;
    tProFornecedor: TLongWordField;
    tProEstoqueMin: TFloatField;
    tProEstoqueMax: TFloatField;
    tProEstoqueRepor: TFloatField;
    tProComissaoPerc: TFloatField;
    tProComissaoLucro: TBooleanField;
    tProFidPontos: TIntegerField;
    tOrcStatus: TByteField;
    tOrcIDVenda: TLongWordField;
    tOrcCliente: TLongWordField;
    tOrcValData: TDateTimeField;
    tOrcValModo: TByteField;
    tOrcValTempo: TWordField;
    tOrcValUTempo: TByteField;
    tOrcItensOrcamento_UID: TGuidField;
    tOrcItensUID: TGuidField;
    tOrcItensItem: TWordField;
    tOrcItensProduto: TLongWordField;
    tOrcItensQuant: TFloatField;
    tProEstoqueAtual: TFloatField;
    tProEstoquePend: TFloatField;
    tProEstoqueTot: TFloatField;
    tProNCM: TStringField;
    lbDadosNF: TcxLabel;
    btnXML: TcxButton;
    tProbrtrib: TWordField;
    tProtax_id: TLongWordField;
    tProNCM_Ex: TStringField;
    tProcest: TLongWordField;
    tProTaxIdNorm: TLongWordField;
    sepDepois: TLMDDrawEdge;
    cbEntregar: TcxCheckBox;
    sepEntregar: TLMDDrawEdge;
    panEntrega: TLMDSimplePanel;
    lbTipoTran: TcxLabel;
    sepTipoNF: TLMDDrawEdge;
    cbNFe: TcxRadioButton;
    cbCupom: TcxRadioButton;
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
    procedure cmConfigClick(Sender: TObject);
    procedure cbCompraClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmCancelarClick(Sender: TObject);
    procedure lbDepoisClick(Sender: TObject);
    procedure lbDadosNFClick(Sender: TObject);
    procedure btnXMLClick(Sender: TObject);
    procedure tProCalcFields(DataSet: TDataSet);
    procedure cbEntregarClick(Sender: TObject);
    procedure cbNFeClick(Sender: TObject);
    procedure cbCupomClick(Sender: TObject);
  private
    FME       : TncMovEst;
    FNovo     : Boolean;
    FBalcao   : Boolean;
    FRes      : Byte;
    FCliAnt   : Integer;
    FDebAnt   : Currency;
    FCredUsado : Currency;
    FMsgDebito: Integer;
    FTipoCli  : Integer;
    FShowed   : Boolean;
    FTot      : TFrmTotal3;
    FCli      : TFrmEditContato;
    FEntrega  : TFrmEditEntrega;
    FFunc     : TFrmEditFunc;
    FprocClickCompra: Boolean;
    //FMostrarUnit : Boolean;  agora sempre mostrará o preço unitário
    FTamanho     : byte;
    FPanAddProd  : TFrmPanVendaProd2;
    FPanItens    : TpanItensVendaGrid;
    FDCValidator : TncDebCredValidator;
    FItensA      : TncItensMovEst;
    FOrcamento   : String;
    
    { Private declarations }
    procedure AddItem(aItem: TncItemMovEst);
    procedure LoadItens;
    function GetFidResgate: Boolean;

    function PrecisaDadosNF: Boolean;

    function LeDadosNF: Boolean;

    //procedure SetMostrarUnit(const Value: Boolean);
    procedure SetTamanho(Value: byte);                            

    procedure OnAddProd(Sender: TFrmPanVendaProdBase; aProdID, aTaxId: Cardinal; aValorUnit, aTotal: Currency; aQuant: Extended; aDescr: String; aPermSemEstoque: Boolean; aFidPontos: Double; aObs: String);

    procedure OnClicouRemoverItem(Sender: TObject; aBotao: TBotaoItemVenda);

    procedure OnClicouPagamento(Sender: TObject);

    procedure OnChangeCliente(Sender: TObject);

    procedure OnChangeEntrega(Sender: TObject);

    procedure xmlOnFornecedor(Sender: TObject);

    procedure xmlOnConcluir(Sender: TObject);

    function OnQuantOk(Sender: TFrmPanVendaProdBase; aProduto: Cardinal; aQuant, Estoque: Double): Boolean;

    procedure OnEditarPagEsp(Sender: TObject);

    function GetFornecedor: Cardinal;

    procedure UpdateTipoTran;
                                      
    function EditarPagEsp: Boolean;

    procedure LoadOrcamento;
    procedure LoadItensOrcamento;

    procedure AtualizaDadosNF;

    procedure OnChangeDesconto(Sender: TObject);

    procedure EditObsItem(Sender: TObject);

    procedure OnAtualizaTotal(Sender: TObject);

    procedure wmFechar(var Msg: TMessage);
      message wm_user;
    
    

    //property MostrarUnit: Boolean
    //  read FMostrarUnit write SetMostrarUnit;

    property FidResgate: Boolean
      read GetFidResgate;
  public
    property Tamanho     : byte read FTamanho write SetTamanho;
    function Editar(aNovo: Boolean; aME: TncMovEst; aPodeSalvar: Boolean; aTamanho: Byte = tamTelaPDV1): Byte;

    function VenderOrcamento(aUID: String): Cardinal;
    { Public declarations }
  end;

  TMeuLookup = class ( TcxCustomLookupEdit );

  TMeuLookupData = class ( TcxCustomLookupEditLookupData );

var                          
  FrmME2: TFrmME2;

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
  ncGuidUtils, ncaFrmConfig_ExigirVendedor, ncaFrmRecursoPRO, ncaFrmDadosNFCe,
  ncaFrmLeXML, ncaFrmRecursoPremium, ncaFrmEditDesc, ncDMServ, ncaFrmSemEstoque,
  ncTipoTran, ncaFrmTipoNF;

// START resource string wizard section
resourcestring
  SOpçõesParaVendas = 'Opções para Vendas';
  SÉNecessárioHaverItensParaSalvar = 'É necessário haver itens para salvar';
  SDescontoNãoPodeSerMaiorQueOValor = 'Desconto não pode ser maior que o valor total';
  SValorPagoNãoPodeSerMaiorQueOTota = 'Valor pago não pode ser maior que o total final';
  SÉNecessárioInformarOCliente = 'É necessário informar o cliente';
  SClienteNãoPossuiQuantidadeDePont = 'Cliente não possui quantidade de pontos suficiente';
  SParaFicarEmDébitoéNecessárioSele = 'Para ficar em débito é necessário selecionar um cliente';
  SOLimiteMáximoDeDébitoPermitidoPa = 'O limite máximo de débito permitido para esse cliente foi ultrapassado';
  SVenda = 'Venda';
  SResgateDeProdutoDoProgramaDePont = 'Resgate de produto do programa de pontos/fidelidade';
  SCompra = 'Compra';
  SAjusteDeEstoqueSAÍDA = 'Correção de Estoque - SAÍDA';
  SAjusteDeEstoqueENTRADA = 'Correção de Estoque - ENTRADA';
  rsConcluirDepoisPRO = 'A opção CONCLUIR DEPOIS só está disponível para os assinantes do plano PRO.';
  rsXMLPremium = 'A entrada de produtos via leitura de NF-e/XML é um recurso exclusivo para assinantes do plano PREMIUM.';
  rsFaltouEndereco = 'Você não definiu o endereço de entrega';
  

// END resource string wizard section


{$R *.dfm}

{ TFrmME }

procedure TFrmME2.AtualizaDadosNF;
var 
  sl : TStrings;
  S : String;
begin
  sl := TStringList.Create;
  try
    S := '';
    sl.text := FME.Extra;
    if sl.Values['NFe']>'' then begin
      lbDadosNF.Visible := True;
      lbDadosNF.Caption := 'NF-e: '+sl.Values['NFe'];
      Exit;
    end;
    
    with Dados do
    if (FME.Tipo<>trEstVenda) or (not NFCeAtivo) or (FCli.ID<>0) then begin
      lbDadosNF.Visible := False;
      Exit;
    end;
       
    if sl.Values['CPFNF']>'' then
      S := 'CPF: '+imprimeCPF(sl.Values['CPFNF']);
      
    if sl.Values['EmailNF']>'' then begin
      if S>'' then S := S + ' - ';
      S := S + 'Email: '+sl.Values['EmailNF'];
    end;  
    
    if S='' then S := 'Dados para NF (F7)';
    
    lbDadosNF.Caption := S;
    lbDadosNF.Visible := True;
  finally
    sl.Free;
  end;

end;

procedure TFrmME2.btnXMLClick(Sender: TObject);
begin

  if not ((gConfig.IsPremium) and (not gConfig.Pro)) then begin
    TFrmRecursoPremium.Create(Self).Mostrar(rsXMLPremium, 'xml');
    Exit;
  end;

  with TFrmLeXML.Create(Self) do begin
    OnFornecedor := xmlOnFornecedor;
    OnConcluir := xmlOnConcluir;
    ShowModal;
  end;
end;

procedure TFrmME2.cbCompraClick(Sender: TObject);
begin
  if not FShowed then Exit;
  if FprocClickCompra then Exit;
  

  FprocClickCOmpra := True;
  try

    if FpanItens.Count>0 then begin
      ShowMessage('Não é possível alterar essa opções depois de já ter adicionado itens');
      cbCompra.Checked := False;
      Exit
    end;

  
  if cbCompra.Checked then 
    FME.Tipo := trEstCompra else
    FME.Tipo := trEstEntrada;
  UpdateTipoTran;  
  if cbCompra.Focused then
    FPanAddProd.FocusProd('cbCompraClick');
  finally
    FprocClickCOmpra := False;
  end;
end;

procedure TFrmME2.cbCupomClick(Sender: TObject);
begin
  if sepTipoNF.Visible then
  if Dados.tNFConfigESat.Value then
    FME.TipoNFE := tiponfe_sat  else
    FME.TipoNFE := tiponfe_nfce;            
end;

procedure TFrmME2.cbEntregarClick(Sender: TObject);
begin
  panEntrega.Visible := cbEntregar.Checked;
  panEntrega.Top := panCli.Top+10;

  if not cbEntregar.Checked then
    FME.Entregar := True;
end;

procedure TFrmME2.cbNFeClick(Sender: TObject);
begin
  if sepTipoNF.Visible then
    FME.TipoNFE := tiponfe_nfe;
end;

procedure TFrmME2.cmCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmME2.cmConfigClick(Sender: TObject);
begin
  TFrmOpcoes.Create(Self).Editar(SOpçõesParaVendas, [TFrmConfigTelaVendas, TFrmConfigQuickCad, TFrmConfigVendaProdSemSaldo, TFrmConfig_ExigirVendedor]);
  FpanAddProd.FocusProd('cmConfigClick');
  FPanItens.Atualiza;
end;

procedure TFrmME2.cmGravarClick(Sender: TObject);
var 
  Debitar: Currency;
  W: TWinControl;
  aTipoDoc: Byte;
begin
{  try
    W := screen.ActiveControl;
    cbFocus.SetFocus;
    if W<>nil then W.SetFocus;
  except
  end;      
          }

  DebugMsg(Self, 'cmGravar 1');

  if FFunc.Username='' then 
    FFunc.Pesquisa(True);

  DebugMsg(Self, 'cmGravar 2');
    

  if FFunc.Username='' then Exit;

  DebugMsg(Self, 'cmGravar 3');
  

  if FidResgate then begin
    DebugMsg(Self, 'cmGravar 4');
  
    FME.Total := 0;
    FME.Desconto := 0;
    FME.Pago := 0;
  end else begin
    DebugMsg(Self, 'cmGravar 5');
  
    if FME.Tipo = trEstVenda then begin
      DebugMsg(Self, 'cmGravar 6');
    
      if (not FME.PagPend) and not EditarPagEsp then Exit;

      DebugMsg(Self, 'cmGravar 7');

      if sepTipoNF.Visible then begin
        DebugMsg(Self, 'cmGravar 8');
        if (not cbCupom.Checked) and (not cbNFe.Checked) then begin
          DebugMsg(Self, 'cmGravar 9');
          if not TFrmTipoNF.Create(Self).ObtemTipoNF(aTipoDoc) then Exit;
          DebugMsg(Self, 'cmGravar 10');
          if aTipoDoc=tiponfe_nfe then
            cbNFe.Checked := True else
            cbCupom.Checked := True;
        end;
        
        if cbNFe.Checked then
          FME.TipoNFE := tiponfe_nfe
        else
        if Dados.tNFConfigESat.Value then
          FME.TipoNFE := tiponfe_sat  else
          FME.TipoNFE := tiponfe_nfce;            
      end;

      DebugMsg(Self, 'cmGravar 11');
      
      if (FME.Desconto>0) and (not Dados.CM.UA.LimiteDescOk(FTot.CalcPerc)) then 
        raise ENexCafe.Create(rsDescAcimaLimite);  

      DebugMsg(Self, 'cmGravar 12');
      
      if PrecisaDadosNF and (not LeDadosNF) then Exit;

      DebugMsg(Self, 'cmGravar 13');
    end;

    DebugMsg(Self, 'cmGravar 14');
    FME.Desconto := FTot.Desconto;  
    FME.DescPerc := FTot.DescPerc;
    FME.DescPorPerc := FTot.DescPorPerc;
    FME.Total    := FTot.SubTotal;
    FME.Pago     := FME.PagEsp.Pago;
  end;
  FME.Obs      := FTot.Obs;
  FME.Recibo   := cbRecibo.Checked;
  FME.NomeCliente := FCli.Nome;
  DebugMsg(Self, 'cmGravar 15');

  if FME.Tipo=trEstVenda then
    FME.Vendedor := FFunc.Username else
    FME.Func := FFunc.Username;
  FME.Cliente := FCli.ID;
  FME.Entregar := cbEntregar.Checked and cbEntregar.Visible;
  DebugMsg(Self, 'cmGravar 16');
  if FME.Entregar then begin
    DebugMsg(Self, 'cmGravar 17');
    if FEntrega.Vazio then
      raise Exception.Create(rsFaltouEndereco);
    FME.endereco_entrega := FEntrega.ID_asString;
  end else
    FME.endereco_entrega := '';

  DebugMsg(Self, 'cmGravar 18');
    
  if FME.Itens.Count=0 then
    Raise ENexCafe.Create(SÉNecessárioHaverItensParaSalvar);

  DebugMsg(Self, 'cmGravar 19');
    
  if (FME.TipoNFE=tiponfe_nfe) and (FME.Tipo=trEstVenda) then begin
    DebugMsg(Self, 'cmGravar 21');
  
    if (FME.Cliente=0) then raise exception.Create('A emissão de NF-e exige que seja informado um cliente');
    case Dados.ClienteOkNFE(FME.Cliente) of
      1 : begin  
        Dados.EditCli(FME.Cliente, True);
        FCli.Atualiza;
        DebugMsg(Self, 'cmGravar 22');
        Exit;
      end;
      2 : begin
        DebugMsg(Self, 'cmGravar 23');
        Dados.EditEnd(Dados.tbCliendereco_ID.AsGuid, True);
        if Assigned(FEntrega) then
          FEntrega.Atualiza;
        Exit;
      end;
    end;

    if FNovo and (not Dados.ChecaCliConsumidorOk(FCli.ID)) then Exit;
  end;  

{  if (FME.TipoNFE in [tiponfe_nfce, tiponfe_sat]) and (FME.Tipo=trEstVenda) then begin
    DebugMsg(Self, 'cmGravar 21');
  
    if (FME.Cliente=0) then raise exception.Create('A emissão de NF-e exige que seja informado um cliente');
    case Dados.ClienteOkNFE(FME.Cliente) of
      1 : begin  
        Dados.EditCli(FME.Cliente, True);
        FCli.Atualiza;
        DebugMsg(Self, 'cmGravar 22');
        Exit;
      end;
      2 : begin
        DebugMsg(Self, 'cmGravar 23');
        Dados.EditEnd(Dados.tbCliendereco_ID.AsGuid, True);
        if Assigned(FEntrega) then
          FEntrega.Atualiza;
        Exit;
      end;
    end;

    if FNovo and (not Dados.ChecaCliConsumidorOk(FCli.ID)) then Exit;
  end;    }
    

  DebugMsg(Self, 'cmGravar 24');

  if not FME.FidResgate then begin
    DebugMsg(Self, 'cmGravar 25');
  
    if FME.Desconto-FME.Total > 0.001 then
      Raise ENexCafe.Create(SDescontoNãoPodeSerMaiorQueOValor);

    if FME.Desconto-FME.Total > 0.001 then
      Raise ENexCafe.Create(SDescontoNãoPodeSerMaiorQueOValor);

    if (FME.Tipo=trEstVenda) and (FME.Desconto>0) and (not Dados.CM.UA.LimiteDescOk(FTot.CalcPerc)) then 
      raise ENexCafe.Create(rsDescAcimaLimite);  

{    if (FME.Pago - (FME.Total - FME.Desconto)) > 0.001 then
      Raise ENexCafe.Create(SValorPagoNãoPodeSerMaiorQueOTota);}
  end else begin
    DebugMsg(Self, 'cmGravar 26');
  
    if FCli.ID=0 then 
      raise ENexCafe.Create(SÉNecessárioInformarOCliente);
      
    if FTot.PontosNec>FCli.FidPontos then 
      raise ENexCafe.Create(SClienteNãoPossuiQuantidadeDePont);
  end;

  DebugMsg(Self, 'cmGravar 27');
  
    
  with Dados do   
  if (FME.Tipo=trEstVenda) and (FME.ValorDebitado>0.009) then begin
    DebugMsg(Self, 'cmGravar 28');
  
    if FME.Cliente <> FCliAnt then FDebAnt := 0;
    Debitar := FME.ValorDebitado - FDebAnt;
  
    if (FME.ValorDebitado>0.009) then begin
      if (FME.Cliente=0) then
        Raise ENexCafe.Create(SParaFicarEmDébitoéNecessárioSele);
      if Debitar > 0.009 then begin
        tbCli.Locate('ID', FME.Cliente, []); // do not localize
        if LimiteDebito(tbCliLimiteDebito)<(Debitar+tbCliDebito.Value) then
          Raise ENexCafe.Create(SOLimiteMáximoDeDébitoPermitidoPa);
      end;
    end;
  end;

  DebugMsg(Self, 'cmGravar 29');
  

  if (FME.Tipo in [trEstVenda, trEstCompra]) and (not FidResgate) then
    FME.SalvaDescPago;

  DebugMsg(Self, 'cmGravar 30');
    
  FME.SalvaTipoTran;
  FME.ObsNF := FTot.ObsNF;

  FRes := 1;

  if FNovo then begin
    DebugMsg(Self, 'cmGravar 31');
  
    try
      DebugMsg(Self, 'cmGravar 32');
      Dados.CM.SalvaMovEst(FME);
    except
      on E: Exception do begin
        Debugex(Self, 'cmGravarClick 1', E);
        Raise;
      end;
    end;
    
    if (FME.Tipo=trEstVenda) then begin
      DebugMsg(Self, 'cmGravar 33');
    
      if Dados.NFAtivo then begin
        if (not FME.PagPend) then 
          Dados.TranList.Add(FME.NativeUID.ToString);
      end else
        if FME.Recibo then 
        try
          dmComp.Imprime(FME.NativeUID);
        except
          on E: Exception do DebugEx(Self, 'cmGravarClick 2', E);
        end;
    end;

    DebugMsg(Self, 'cmGravar 34');
    
    try  
      if (FME.Tipo=trEstVenda) and gConfig.TelaPosVenda_Mostrar and (FBalcao or (not FME.PagPend)) and (FOrcamento='') then 
        FRes := TFrmAposVenda.Create(Self).Editar(FME);
    except
      on E: Exception do DebugEx(Self, 'cmGravarClick 3', E);
    end;
  end;

  DebugMsg(Self, 'cmGravar 35 - FIM!');
  

  Close;
end;

procedure TFrmME2.OnAddProd(Sender: TFrmPanVendaProdBase; aProdID, aTaxId: Cardinal; aValorUnit, aTotal: Currency; aQuant: Extended; aDescr: String; aPermSemEstoque: Boolean; aFidPontos: Double; aObs: String);
var IM: TncItemMovEst;
begin
  IM := TncItemMovEst.Create(nil);
  try
    IM.imTipoTran := FME.Tipo;
    IM.imFidResgate := FidResgate;
    IM.imProduto := aProdID;
    IM.imObs := aObs;
    IM.imQuant := aQuant;
    IM.imTax_id := aTaxId;
    IM.imPermSemEstoque := aPermSemEstoque;
    if FidResgate then
      IM.imFidPontos := aFidPontos * IM.imQuant
    else begin
      if FME.Tipo in [trEstVenda, trEstCompra, trEstDevFor ] then begin
        IM.imUnitario := aValorUnit;
        IM.imTotal := aTotal;
      end;
      IM.imFidPontos := 0;
    end;
    
    AddItem(IM);
    FME.Itens.NewItem.AssignFrom(IM);
    FME.SalvaDescPago;
    FTot.Atualiza;

    if (FME.Tipo=trEstVenda) and FNovo and (not FME.FidResgate) then
      FME.Itens.SaveTemp;
    //MostrarUnit := (FME.Tipo=trEstCompra);
  finally
    IM.Free;
  end;
end;

procedure TFrmME2.OnChangeCliente(Sender: TObject);
begin
  FME.Cliente := FCli.ID;
  if FidResgate then FTot.PontosDisp := FCli.FidPontos;
  AtualizaDadosNF;
  FEntrega.Cliente := FCli.ID;
end;

procedure TFrmME2.OnChangeDesconto(Sender: TObject);
var F: TFrmPagEspecie;
begin
  F := TFrmPagEspecie(Sender);
  FTot.Desconto := F.Desconto;
  FTot.DescPerc := F.DescPerc;
  FTot.DescPorPerc := F.DescPorPerc;
  FME.Desconto := F.Desconto;
  FME.DescPerc := F.DescPerc;
  FME.DescPorPerc := F.DescPorPerc;
  FTot.Atualiza;
end;

procedure TFrmME2.OnChangeEntrega(Sender: TObject);
begin
  FTot.Atualiza;
  OnAtualizaTotal(nil);
end;

procedure TFrmME2.OnAtualizaTotal(Sender: TObject);
var M : Integer;
begin
  FpanItens.panSubTotal.Visible := FTot.panDesconto.Visible or 
                                   (FTot.panTax.Visible and 
                                   (FTot.Total<>FpanItens.Total)) or
                                   (FME.Frete>0.009);

  M := 0;
  if FpanItens.panSubTotal.Visible then begin
    FpanItens.lbSubTotal.Constraints.MinWidth := 0;
    M := FpanItens.lbSubTotal.Width;
  end;

  if FTot.panDesconto.Visible then begin
    FTot.lbDesconto.Constraints.MinWidth := 0;
    if FTot.lbDesconto.Width>M then
      M := FTot.lbDesconto.Width;
  end;

  if FTot.panTax.Visible then begin
    FTot.lbTaxTotal.Constraints.MinWidth := 0;
    if FTot.lbTaxTotal.Width>M then
      M := FTot.lbTaxTotal.Width;
  end;

  FpanItens.lbSubTotal.Constraints.MinWidth := M;
  FTot.lbDesconto.Constraints.MinWidth := M;
  FTot.lbTaxTotal.Constraints.MinWidth := M;
end;

procedure TFrmME2.OnClicouPagamento(Sender: TObject);
begin
  EditarPagEsp;
end;

procedure TFrmME2.OnClicouRemoverItem(Sender: TObject; aBotao: TBotaoItemVenda);
var aIndex: Integer;
begin
  aIndex := FpanItens.FocusedItemIndex;
  if aIndex=-1 then Exit;
  
  if FidResgate then
    FTot.PontosNec := FTot.PontosNec - FME.Itens[aIndex].imFidPontos else 
    FTot.SubTotal := FTot.SubTotal - FME.Itens[aIndex].imTotal;

  FME.Itens[aIndex].Free;
  FME.Itens.Delete(aIndex);
  FpanItens.DelItem(aIndex);

  FTot.Atualiza;
  
  if (FME.Tipo=trEstVenda) and FNovo and (not FME.FidResgate) then
    if FME.Itens.Count=0 then
      DeleteTempItensME else
      FME.Itens.SaveTemp;
  
  if FME.Itens.Count=0 then 
    FPanAddProd.FocusProd('onclicouremoveritem');

    
end;

procedure TFrmME2.OnEditarPagEsp(Sender: TObject);
begin
  EditarPagEsp;
end;

function TFrmME2.OnQuantOk(Sender: TFrmPanVendaProdBase; aProduto: Cardinal;
  aQuant, Estoque: Double): Boolean;
var A, B: Double;  
begin
  A := FItensA.QuantProduto(aProduto);
  B := FME.Itens.QuantProduto(aProduto);

  if (A-(B+aQuant))>=0 then
    Result := True else
    Result := (((B+aQuant)-A) <= Estoque);
end;

function TFrmME2.PrecisaDadosNF: Boolean;
var EmailOk, CPFOk : Boolean;
begin
  Result := False;
  if FME.Tipo<>trEstVenda then Exit;

  if (not (FME.TipoNFE in [tiponfe_sat, tiponfe_nfce])) or (not Dados.NFCeAtivo) then Exit;

  if FME.PagPend then Exit;
  
  if (Dados.tNFConfigPedirCPF.Value=0) and (Dados.tNFConfigPedirEmail.Value=0) then Exit;

  EmailOk := (Dados.tNFConfigPedirEmail.Value=0) or (GetValueFromStr(FME.Extra, 'EmailNF')>'');
  CPFOK   := (Dados.tNFConfigPedirCPF.Value=0) or (GetValueFromStr(FME.Extra, 'CPFNF')>'');

  if EmailOk and CPFOK then Exit;
  
{  with Dados do 
  if FCli.ID=0 then begin
    EmailOk := (tNFConfigPedirEmail.Value=0) or (GetValueFromStr(FME.Extra, 'EmailNF')>'');
    CPFOK   := (tNFConfigPedirCPF.Value=0) or (GetValueFromStr(FME.Extra, 'CPFNF')>'');

    if EmailOk and CPFOK then Exit;
  end else begin
    EmailOk := (tNFConfigPedirEmail.Value=0);
    CPFOK   := (tNFConfigPedirCPF.Value=0);
  
    if (not EmailOk) or (not CPFOk) then
    if Dados.tbCli.Locate('ID', FCli.ID, []) then begin
      if tbCliPJuridica.Value then Exit;

      CPFOk := CPFOk or (GetValueFromStr(FME.Extra, 'CPFNF')>'') or ((tbCliCPF.Value>'') and isCPF(tbCliCPF.Value));
      EmailOk := EmailOk or (GetValueFromStr(FME.Extra, 'EmailNF')>'') or ((tbCliEmail.Value>'') and EmailValido(tbCliEmail.Value));

      if EmailOk and CPFOk then Exit;
    end;    
  end;}
  
  Result := True;
end;

function TFrmME2.Editar(aNovo: Boolean; aME: TncMovEst;
  aPodeSalvar: Boolean; aTamanho: Byte = tamTelaPDV1): Byte;
var
  Func : String;
  TC : Byte;
  U : TncUsuario;
  I : Integer;
  sl : TStrings;
  T : TncTipoTran;

  aTipoDoc : Byte;

  aProduto: Cardinal;
  aQuant : Double;
  aUnitario : Currency;
  aTotal : Currency;
  aPermSemEstoque: Boolean;
begin
  FME := aME;
  FNovo := aNovo;
  FBalcao := aME.PagPend;
  FTot.MovEst := FME;
  FEntrega.Init(FME);

  lbDepois.Visible := aNovo and (not aME.PagPend) and (aME.Tipo=trEstVenda);
  sepDepois.Visible := lbDepois.Visible;
  
  sepTipoNF.Visible := (aME.Tipo=trEstVenda) and Dados.NFCeAtivo and Dados.NFeAtivo and Dados.tNFConfignfe_venda.Value and  (FNovo or FME.PagPend or FME.PodeAlterarTipoNFE);

  if (aME.Tipo=trEstVenda) and Dados.NFAtivo and (FNovo or FME.PagPend or FME.PodeAlterarTipoNFE) then
    FME.TipoNFE := Dados.CorrigeTipoNFEVenda(FME.TipoNFE);
  
  cbCupom.Visible := sepTipoNF.Visible;
  cbNFe.Visible := sepTipoNF.Visible;

  if FME.TipoNFE in [tiponfe_sat, tiponfe_nfce] then
    cbCupom.Checked := True
  else
  if FME.TipoNFE = tiponfe_nfe then
    cbNFe.Checked := True;

  if sepTipoNF.Visible and (FME.TipoNFE=tiponfe_nenhum) then
  if Dados.tNFConfigtipodoc_padrao.Value=1 then
    cbCupom.Checked := True
  else
  if Dados.tNFConfigtipodoc_padrao.Value=2 then
    cbNFe.Checked := True;
  
  if FNovo and (FOrcamento>'') then LoadOrcamento;

  FItensA.AsString := FME.Itens.AsString;
  
  
  panCompra.Visible := False; //(aME.Tipo in [trEstCompra, trEstEntrada]);
  cbCompra.Enabled := aNovo and (aME.Tipo in [trEstCompra, trEstEntrada]);
  cbCompra.Checked := (aME.Tipo=trEstCompra);
  
  T := gListaTipoTran.PorTipo[aME.Tipo];
  if (not Assigned(T)) or (T.Tipo=trEstVenda) then
    lbTipoTran.Visible := False else
    lbTipoTran.Caption := T.NomeTela;
    
  FCredUsado := aME.PagEsp.CreditoUsado;

  Tamanho := aTamanho;

  panFidelidade.Visible := FidResgate;
  FPanAddProd.ResgateFid := FidResgate;
  

  FpanItens.ResgateFidelidade := FidResgate;

  if FidResgate then begin
    FTot.InitPontos(0, 0, aME.Obs, panTot);
    tPro.Filter := '(fidpontos>0)'; // do not localize
  end else begin
    case aME.Tipo of
      trEstVenda  : FTot.InitVal(aME.PagEsp, aME.Total, aME.Desconto, aME.Pago, 0, aME.Obs, aME.ObsNF, panTot);
      trEstCompra,
      trEstDevFor : FTot.InitCusto(aME.PAgEsp, aME.Total, aME.Desconto, aME.Obs, panTot);
    else 
      FTot.InitCusto(nil, 0, 0, aME.Obs, panTot);
    end;
  end;

  cbEntregar.Visible := (FME.Tipo=trEstVenda);
  cbEntregar.Checked := FME.Entregar;
  sepEntregar.Visible := cbEntregar.Visible;

  if aNovo and (FME.Tipo=trEstVenda) then begin
    if FME.PagPend then
      aTipoDoc := tipodoc_pedido else
      aTipoDoc := tipodoc_venda;

    if aTipoDoc=tipodoc_pedido then
      cbRecibo.Visible := gRecibo.Imprimir[tipodoc_pedido] else
      cbRecibo.Visible := (not Dados.NFCeAtivo) and gRecibo.Imprimir[tipodoc_venda];

    cbRecibo.Checked := gRecibo.ImpAuto[aTipoDoc];
  end else
    cbRecibo.Visible := False;

  if aNovo then begin
    if (FME.Tipo=trEstVenda) and (gConfig.ExigirVendedor) then
      FFunc.Username := '' else
      FFunc.Username := Dados.CM.UA.Username;
  end else
  if FME.Tipo=trEstVenda then
    FFunc.Username := FME.Vendedor else
    FFunc.Username := FME.Func;

  FCli.ID := FME.Cliente;
  FEntrega.Cliente := FME.Cliente;
  panEntrega.Visible := FME.Entregar;
  if panEntrega.Visible and (FME.endereco_entrega>'') then
    FEntrega.ID := FME.Native_End_Entrega else
    FEntrega.ID := TGuidEx.Empty;

  if FME.Cliente>0 then
    TC := 0 else
    TC := 1;

  FDCValidator.SetOldCli(FCli.ID, FCli.Debito, FCli.Credito, FME.PagEsp.CreditoUsado, FME.PagEsp.Credito);

  cmGravar.Enabled := aPodeSalvar and (aNovo or Permitido(daTraAlterar));
  FCli.Fornecedor := (FME.Tipo <> trEstVenda);

  UpdateTipoTran;

  if aNovo then begin
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

  if aNovo and (FME.Tipo=trEstVenda) and (not FME.FidResgate) then
  if FileExists(FNTempItensME) then begin
    TpanAlertaRecuperarVenda.Create(Self).Mostrar(Self);
    sl := TStringList.Create;
    try
      sl.LoadFromFile(FNTempItensME);
      for I := 0 to sl.Count - 1 do begin
        DecodeTempItemStr(sl[i], aProduto, aQuant, aUnitario, aTotal, aPermSemEstoque);
        if tPro.Locate('ID', aProduto, []) then
          OnAddProd(nil, aProduto, tProTaxIdNorm.Value, aUnitario, aTotal, aQuant, tProDescricao.Value, aPermSemEstoque, 0, '');
      end;
    finally
      sl.Free;
    end;
  end;
  
  FTot.Atualiza;
  ShowModal;
  Result := FRes;
end;

function TFrmME2.EditarPagEsp: Boolean;
var 
  P : TncPagEspecies; 
  aDesc: Currency;
  aDescPerc: Double;
  aDescPorPerc: Boolean;
  F : TFrmPagEspecie;
begin
  P := TncPagEspecies.Create;
  try
    P.Assign(FME.PagEsp);
    aDesc := FTot.Desconto;
    aDescPerc := FTot.DescPerc;
    aDescPorPerc := FTot.DescPorPerc;
    P.Obs := FTot.Obs;
    F := TFrmPagEspecie.Create(Self);
    F.OnChangeDesconto := OnChangeDesconto;
    Result := F.Editar(FNovo, P, FDCValidator, FTot.SubTotal, FME.Itens.get_tax_incluir, FME.Frete, aDesc, aDescPerc, aDescPorPerc);
    if Result then begin
      FCli.ID := FDCValidator.NewCli;
      FTot.Desconto := aDesc;
      FTot.DescPerc := aDescPerc;
      FTot.DescPorPerc := aDescPorPerc;
      FME.Desconto := aDesc;
      FME.DescPerc := aDescPerc;
      FME.DescPorPerc := aDescPorPerc;
      FME.Obs := P.Obs;
      FTot.Obs := P.Obs;
      FME.PagEsp.Assign(P);
    end;
  finally
    P.Free;
  end;
end;

procedure TFrmME2.EditObsItem(Sender: TObject);
var I : Integer;
begin
  if FPanItens.Count<1 then Exit;
  I := FPanItens.FocusedItemIndex;
  if FPanItens.EditObsItem then 
    FME.Itens[I].imObs := FPanItens.Values[I, 'Obs'];
end;

procedure TFrmME2.edProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_Enter : if ssCtrl in Shift then cmGravarClick(nil);
    Key_Esc   : if FPanAddProd.CanCloseForm then Close;
  end;
end;

procedure TFrmME2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  try DeleteTempItensME; except end;
end;

procedure TFrmME2.FormCreate(Sender: TObject);
begin
  cbCupom.Caption := Dados.tNFConfigNFStr.Value;
  if slConfig.Values['tutomode']='1' then begin
    WindowState := wsNormal;
    Position := poScreenCenter;
  end else 
    WindowState := wsMaximized;

  FItensA := TncItensMovEst.Create(nil);
  FDCValidator := TncDebCredValidator.Create;
  FprocClickCompra := False;
  FOrcamento := '';
  
  cmConfig.Enabled := Dados.CM.UA.Admin;
  FCredUsado := 0;
  FPanAddProd  := TFrmPanVendaProd2.Create(Self);
  FPanAddProd.OnAddProd := OnAddProd;
  FPanAddProd.PanVendaProd.Parent := panBuscaProd;
  FPanAddProd.OnQuantOk := Self.OnQuantOk;
  FPanAddProd.Fornecedor := Self.GetFornecedor;

  FPanItens := TPanItensVendaGrid.Create(Self);
  FpanItens.panPri.Parent := panLista;
  FpanItens.OnClicouBotao := OnClicouRemoverItem;
  FpanItens.MostrarBotao(bivRemoverItem, True);
  FpanItens.OnClickPagamento := OnClicouPagamento;

  FTot := TFrmTotal3.Create(Self);
  FTot.panTot.Parent := panTot;
  FTot.OnEditarPagEsp := OnEditarPagEsp;
  FTot.OnAtualizaTotal := OnAtualizaTotal;
  FTot.lbEditObsItem.OnClick := Self.EditObsItem;

  FCli := TFrmEditContato.Create(Self);
  FCli.panPri.Parent := panCli;
  FCli.panPri.Align := alClient;
  FCli.DCValidator := FDCValidator;
  FCli.OnChange := OnChangeCliente;

  FEntrega := TFrmEditEntrega.Create(Self);
  FEntrega.panPri.Parent := panEntrega;
  FEntrega.panPri.Align := alClient;
  FEntrega.OnChange := OnChangeEntrega;

  FFunc := TFrmEditFunc.Create(Self);
  FFunc.panPri.Parent := panFunc;
  FFunc.PodeAlterar := Permitido(daAlterarVendedor);
  
  FShowed := False;
  FTipoCli := -1;
  FMsgDebito := -1;
  
  FCliAnt:= 0;
  FDebAnt:= 0;

  FRes := 0;
end;

procedure TFrmME2.FormDestroy(Sender: TObject);
begin
  FItensA.Free;
  FTot.Free;
  FDCValidator.Free;
end;

procedure TFrmME2.FormKeyDown(Sender: TObject; var Key: Word;
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
    Key_F10 : begin
      FPanAddProd.ClosePops;
      Self.EditObsItem(nil);
    end;
    Key_F7 : if (FME.Tipo=trEstVenda) and lbDadosNF.Visible then lbDadosNFClick(nil);
    Key_F9 : 
    if cbEntregar.Visible then begin
      if not cbEntregar.Checked then
        cbEntregar.Checked := True;
      FEntrega.Pesquisa;
    end;
             
  end;
end;

procedure TFrmME2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13, #27]) then Key := #0;
end;

procedure TFrmME2.FormShow(Sender: TObject);
begin

  if lbTipoTran.Visible then begin
    lbTipoTran.Left := (panTopo.Width - lbTipoTran.Width) div 2;
  
  end;
  //MostrarUnit := (FME.Tipo=trEstCompra);
  if (FOrcamento>'') and (FME.Itens.Count<1) then PostMessage(Handle, wm_user, 0, 0);
  
  FPanAddProd.TipoTran := FME.Tipo;
  FpanAddProd.SetGap(7);

  btnXML.Visible := FNovo and (FME.Tipo in [trEstCompra, trEstEntrada]) and SameText(gConfig.PaisNorm, 'BR');

  if not FShowed then
    Timer1.Enabled := True;

  if not FNovo then begin
    FCliAnt := FME.Cliente;
    FDebAnt := FME.ValorDebitado;
  end;

//  FCli.MostrarDadosNFE := Dados.TNFcon

  FTot.PontosDisp := FCli.FidPontos;
  
  FShowed := True;

  FTot.Atualiza;

  AtualizaDadosNF;
    
{  vgT.HideEdit;
  vgT.ShowEdit;}
  if (Screen.Width=640) then
    PostMessage(Handle, WM_SYSCOMMAND, SC_MAXIMIZE, 0);
end;

function TFrmME2.GetFidResgate: Boolean;
begin
  Result := FME.FidResgate;
end;

function TFrmME2.GetFornecedor: Cardinal;
begin
  Result := FCli.ID;
end;

procedure TFrmME2.lbDadosNFClick(Sender: TObject);
begin
  if FME.Tipo=trEstVenda then
    LeDadosNF;
end;

procedure TFrmME2.lbDepoisClick(Sender: TObject);
var saveRecibo: Boolean;
begin
  if not gConfig.IsPremium then begin
    TFrmRecursoPro.Create(Self).Mostrar(rsConcluirDepoisPRO, 'ConcluirDepois');
    Exit;
  end;

  saveRecibo := cbRecibo.Checked;
  cbRecibo.Checked := False;
  FME.PagPend := True;
  try
    cmGravarClick(nil);
  except
    cbRecibo.Checked := saveRecibo;
    raise;
  end;
end;

procedure TFrmME2.AddItem(aItem: TncItemMovEst);
begin
  if not FidResgate then
    FTot.SubTotal := FTot.SubTotal + aItem.imTotal else
    FTot.PontosNec := FTot.PontosNec + aItem.imFidPontos;
//  aItem.imTaxItens.LoadTaxItens(DM.tTax, DM.tTaxItens);  
  FpanItens.UpdateItemMovEst(-1, aItem);
end;

function TFrmME2.LeDadosNF: Boolean;
var 
  S: String;
  PJ : Boolean;
  CNPJ : String;
begin
  S := FME.Extra;
  PJ := False;
  CNPJ := '';
  with Dados do 
  if (FCli.ID>0) and tbCli.Locate('ID', FCli.ID, []) then begin
    PJ := tbCliPJuridica.Value;
    CNPJ := tbCLiCPF.Value;
    if PJ then
      SetValueFromStr(S, 'CPFNF', '') 
    else
    if tbCliCPF.Value>'' then 
      SetValueFromStr(S, 'CPFNF', tbCliCPF.Value);
      
    if tbCliEmail.Value>'' then 
      SetValueFromStr(S, 'EmailNF', tbCliEmail.Value);
  end;
  
  Result := TFrmDadosNFCe.Create(Self).Editar(S, PJ, CNPJ);
  if Result then begin
    FME.Extra := S;
    AtualizaDadosNF;  
  end;  
end;

procedure TFrmME2.LoadItens;
var 
  I : Integer;
  C : Cardinal;
begin
  C := GetTickCount;
  FTot.SubTotal := 0;
  DebugMsg(Self, 'LoadItens 1');
  FPanItens.Grid.BeginUpdate;
  try
    for I := 0 to FME.Itens.Count - 1 do 
      AddItem(FME.Itens[I]);
  finally
    FPanItens.Grid.EndUpdate;
  end;
  FTot.Recebido := FME.Pago;
  C := GetTickCount-C;
  DebugMsg(Self, 'LoadItens 2 - '+C.ToString);
end;

procedure TFrmME2.LoadItensOrcamento;
var 
  Item: TncItemMovEst;
  I: Integer;
  aPerm : Boolean;

function _QuantOk: Boolean;
var aEst, aQuant: Double;
begin
  Result := False;
  aPerm := False;
  if gConfig.NaoVenderAlemEstoque then begin
    if not tPro.Locate('ID', tOrcItensProduto.Value, []) then Exit;
    if not tProNaoControlaEstoque.Value then begin
      aQuant := FME.Itens.QuantProduto(tOrcItensProduto.Value) + tOrcItensQuant.Value;
      if aQuant>tProEstoqueAtual.Value then begin
        Result := TFrmSemEstoque.Create(Self).PodeVender(tProDescricao.Value, tProEstoqueAtual.Value);
        aPerm := Result;
        Exit;
      end;
    end;
  end;
  Result := True;
end;

begin
  FTot.SubTotal := 0;
  I := 0;
  tOrcItens.SetRange([FOrcamento], [FOrcamento]);
  tOrcItens.First;
  while not tOrcItens.Eof do begin
    if _QuantOk then begin
      Item := FME.Itens.NewItem;
      Inc(I);
      Item.imItem := I;
      Item.imProduto := tOrcItensProduto.Value;
      Item.imQuant := tOrcItensQuant.Value;
      Item.imUnitario := tOrcItensUnitario.Value;
      Item.imTotal := tOrcItensTotal.Value;
      Item.imPermSemEstoque := aPerm;
      AddItem(Item);
    end;  
    tOrcItens.Next;
  end;
end;

procedure TFrmME2.LoadOrcamento;
begin
  FME.Cliente  := tOrcCliente.Value;
  FME.Total    := tOrcTotal.Value;
  FME.Desconto := tOrcDesconto.Value;
  FME.Func     := tOrcFunc.Value;
  LoadItensOrcamento;
end;

procedure TFrmME2.SetTamanho(Value: byte);
begin
    if Value<>fTamanho then begin

       fTamanho := value;

//       FTot.Tamanho := fTamanho;

       case fTamanho of
         tamTelaNormal : FpanItens.SetFontSize(10);
         tamTelaPDV1   : begin
             FpanItens.SetFontSize(20);
             if slConfig.Values['tutomode']<>'1'  then begin
               borderstyle := bsNone;
               left := 0;
               top  := 0;
               width := screen.width;
               height := screen.height;
               windowstate := wsMaximized;
             end else
               WindowState := wsNormal;
         end;
       end;
    end;

end;


procedure TFrmME2.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  try
    FPanAddProd.FocusProd('timer1timer');
  except
  end;
end;

procedure TFrmME2.tProCalcFields(DataSet: TDataSet);
begin
  if tProTax_id.IsNull then
    tProTaxIdNorm.Value := gConfig.tax_id_def else
    tProTaxIdNorm.Value := tProTax_id.Value;
end;

procedure TFrmME2.UpdateTipoTran;
begin
  FpanItens.TipoTran := FME.Tipo;
  case FME.Tipo of
    trEstVenda   : 
      if not FidResgate then 
        Caption := SVenda else
        Caption := SResgateDeProdutoDoProgramaDePont;
    trEstCompra  : begin
      Caption := SCompra;
      FTot.SetPagEsp(FME.PagEsp);
    end;
    trEstSaida   : Caption := SAjusteDeEstoqueSAÍDA;
    trEstEntrada : begin
      Caption := SAjusteDeEstoqueENTRADA;
      FTot.SetPagEsp(FME.PagEsp);
    end;
  end;
  panCli.Visible := FidResgate or (FME.Tipo in [trEstVenda, trEstCompra, trEstDevFor]);

  FPanAddProd.TipoTran := fme.tIPO;

  FpanItens.Atualiza;
end;

function TFrmME2.VenderOrcamento(aUID: String): Cardinal;
var M : TncMovEst;
begin
  Result := 0;
  M := TncMovEst.Create;
  try
    M.Tipo := trEstVenda;
    M.Func := Dados.CM.UA.Username;
    M.PagPend := True;
    M.CriaUID;
    M.Operacao := osIncluir;
    FOrcamento := aUID;
    tOrc.FindKey([aUID]);
    if (Editar(True, M, True)>0) and Dados.tbTran.Locate('UID', TGuidEx.ToString(M.NativeUID), []) then 
      Result := Dados.tbTranID.Value;
  finally
    M.Free;
  end;
end;

procedure TFrmME2.wmFechar(var Msg: TMessage);
begin
  Close;
end;

procedure TFrmME2.xmlOnConcluir(Sender: TObject);
var 
  Item: TncItemMovEst;
  I: Integer;
  F, FItem: Currency;
begin

  with TFrmLeXML(Sender) do begin
    if cbEntrada.Checked then begin
      cbCompra.Checked := False;
      cbCompraClick(nil);
    end;
    mt.First;
    FTot.SubTotal := 0;
    I := 0;
    F := Frete;
    while not mt.Eof do begin
      Item := FME.Itens.NewItem;
      Inc(I);
      Item.imItem := I;
      Item.imProduto := mtProduto.Value;
      Item.imQuant := QuantFator;

      if F>0 then begin
        if I=mt.RecordCount then
          FItem := F else
          FItem := DuasCasas(mtTotal.Value * percFrete);
        
        F := F - FItem;
        Item.imTotal := mtTotal.Value + FItem;
      end else
        Item.imTotal := mtTotal.Value;
        
      Item.imUnitario := Item.imTotal / QuantFator;
        
      AddItem(Item);    
      mt.Next;
    end;
    lbDadosNF.Visible := True;
    lbDadosNF.Caption := 'NF-e: '+Chave;
    FME.Extra := 'NFe='+Chave;
  end;
  btnXML.Enabled := False;
end;

procedure TFrmME2.xmlOnFornecedor(Sender: TObject);
begin
  if not cbCompra.Checked then begin
    cbCompra.Checked := True;
    cbCompraClick(nil);
  end;

  FCli.ID := TFrmLeXML(Sender).IDFor;
end;

end.


