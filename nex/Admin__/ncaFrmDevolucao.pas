unit ncaFrmDevolucao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxRadioGroup, cxTextEdit, cxMaskEdit, cxSpinEdit, cxPC,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxCalendar, cxButtonEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, nxdb, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxLabel, kbmMemTable,
  cxCheckBox, cxCurrencyEdit, ncaFrmEditContato, ncaFrmEditContatoPeq;

type
  TFrmDev = class(TForm)
    panBottom: TLMDSimplePanel;
    btnAvancar: TcxButton;
    btnVoltar: TcxButton;
    Q: TnxQuery;
    DS: TDataSource;
    QID: TLongWordField;
    QUID: TGuidField;
    QDataHora: TDateTimeField;
    QCliente: TLongWordField;
    QTipo: TByteField;
    QFunc: TStringField;
    QTotal: TCurrencyField;
    QDesconto: TCurrencyField;
    QDescPerc: TFloatField;
    QDescPorPerc: TBooleanField;
    QTotLiq: TCurrencyField;
    QPagEsp: TWordField;
    QPago: TCurrencyField;
    QDebitoAnt: TCurrencyField;
    QDebito: TCurrencyField;
    QDebitoPago: TCurrencyField;
    QCreditoAnt: TCurrencyField;
    QCredito: TCurrencyField;
    QCreditoUsado: TCurrencyField;
    QTroco: TCurrencyField;
    QObs: TnxMemoField;
    QCancelado: TBooleanField;
    QCanceladoPor: TStringField;
    QCanceladoEm: TDateTimeField;
    QCaixa: TLongWordField;
    QCaixaPag: TLongWordField;
    QMaq: TWordField;
    QNomeCliente: TWideStringField;
    QSessao: TLongWordField;
    QQtdTempo: TFloatField;
    QCredValor: TBooleanField;
    QFidResgate: TBooleanField;
    QPagFunc: TStringField;
    QPagPend: TBooleanField;
    QRecVer: TLongWordField;
    tItens: TnxTable;
    dsItens: TDataSource;
    tItensID: TUnsignedAutoIncField;
    tItensTran: TLongWordField;
    tItensProduto: TLongWordField;
    tItensQuant: TFloatField;
    tItensUnitario: TCurrencyField;
    tItensTotal: TCurrencyField;
    tItensCustoU: TCurrencyField;
    tItensItem: TByteField;
    tItensDesconto: TCurrencyField;
    tItensPago: TCurrencyField;
    tItensPagoPost: TCurrencyField;
    tItensDescPost: TCurrencyField;
    tItensDataHora: TDateTimeField;
    tItensEntrada: TBooleanField;
    tItensCancelado: TBooleanField;
    tItensAjustaCusto: TBooleanField;
    tItensEstoqueAnt: TFloatField;
    tItensCliente: TLongWordField;
    tItensCaixa: TIntegerField;
    tItensCategoria: TStringField;
    tItensNaoControlaEstoque: TBooleanField;
    tItensITran: TIntegerField;
    tItensTipoTran: TByteField;
    tItensSessao: TIntegerField;
    tItensComissao: TCurrencyField;
    tItensComissaoPerc: TFloatField;
    tItensComissaoLucro: TBooleanField;
    tItensPermSemEstoque: TBooleanField;
    tItensFidResgate: TBooleanField;
    tItensFidPontos: TFloatField;
    tItensRecVer: TLongWordField;
    tItensNomeProd: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    LMDSimplePanel1: TLMDSimplePanel;
    Paginas: TcxPageControl;
    tsLocalizar: TcxTabSheet;
    tsSelecionar: TcxTabSheet;
    LMDSimplePanel3: TLMDSimplePanel;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVID: TcxGridDBColumn;
    TVDataHora: TcxGridDBColumn;
    TVNomeCliente: TcxGridDBColumn;
    TVTotal: TcxGridDBColumn;
    TVDesconto: TcxGridDBColumn;
    TVTotLiq: TcxGridDBColumn;
    TVFunc: TcxGridDBColumn;
    TVObs: TcxGridDBColumn;
    TVCancelado: TcxGridDBColumn;
    GL: TcxGridLevel;
    tsItens: TcxTabSheet;
    LMDSimplePanel4: TLMDSimplePanel;
    tsDevolucaoDin: TcxTabSheet;
    LMDSimplePanel7: TLMDSimplePanel;
    edCli: TcxButtonEdit;
    edVenda: TcxSpinEdit;
    rbFindVenda: TcxRadioButton;
    rbFindCliente: TcxRadioButton;
    rbFindData: TcxRadioButton;
    edData: TcxDateEdit;
    edProd: TcxButtonEdit;
    rbFindProduto: TcxRadioButton;
    lbLocalize: TcxLabel;
    LMDSimplePanel6: TLMDSimplePanel;
    gridItens: TcxGrid;
    tvItens: TcxGridDBTableView;
    glItens: TcxGridLevel;
    panTopItens: TLMDSimplePanel;
    cxLabel4: TcxLabel;
    rbTotal: TcxRadioButton;
    rbParcial: TcxRadioButton;
    LMDSimplePanel2: TLMDSimplePanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    MT: TkbmMemTable;
    MTitem: TIntegerField;
    MTproduto: TIntegerField;
    MTdescr: TStringField;
    MTsel: TBooleanField;
    MTquant: TFloatField;
    MTquant_dev: TFloatField;
    MTunitario: TCurrencyField;
    MTtotal: TCurrencyField;
    dsMT: TDataSource;
    tvItenssel: TcxGridDBColumn;
    tvItensproduto: TcxGridDBColumn;
    tvItensdescr: TcxGridDBColumn;
    tvItensquant: TcxGridDBColumn;
    tvItensquant_dev: TcxGridDBColumn;
    tvItensunitario: TcxGridDBColumn;
    tvItenstotal: TcxGridDBColumn;
    tvItenstotal_dev: TcxGridDBColumn;
    MTid: TIntegerField;
    MTtotal_dev: TCurrencyField;
    panTotal: TLMDSimplePanel;
    lbTotal: TcxLabel;
    LMDSimplePanel8: TLMDSimplePanel;
    rbCreditar: TcxRadioButton;
    rbDevolver: TcxRadioButton;
    tvEsp: TcxGridDBTableView;
    glEsp: TcxGridLevel;
    gridEsp: TcxGrid;
    mtEsp: TkbmMemTable;
    mtEspID: TIntegerField;
    mtEspNome: TStringField;
    dsEsp: TDataSource;
    tvEspNome: TcxGridDBColumn;
    panCli: TLMDSimplePanel;
    panTopDin: TLMDSimplePanel;
    cxLabel3: TcxLabel;
    lbTotal2: TcxLabel;
    tItensID_ref: TLongWordField;
    QUID_ref: TGuidField;
    QOpDevValor: TByteField;
    tOK: TnxTable;
    tOKID_ref: TLongWordField;
    tOKQuant: TFloatField;
    tOKCancelado: TBooleanField;
    tOKTipoTran: TByteField;
    tDeb: TnxTable;
    panEdit: TLMDSimplePanel;
    btnOk: TcxButton;
    tPagEsp: TnxTable;
    tPagEspID: TUnsignedAutoIncField;
    tPagEspCaixa: TLongWordField;
    tPagEspDataHora: TDateTimeField;
    tPagEspTran: TLongWordField;
    tPagEspEspecie: TWordField;
    tPagEspTipo: TByteField;
    tPagEspValor: TCurrencyField;
    tPagEspTroco: TCurrencyField;
    tPagEspDoc: TStringField;
    tPagEspCancelado: TBooleanField;
    tPagEspDevolucao: TBooleanField;
    tPagEspRecVer: TLongWordField;
    tItenstax_id: TLongWordField;
    tItenstax_incluido: TCurrencyField;
    tItenstax_incluir: TCurrencyField;
    tItensTotalFinal: TCurrencyField;
    tItensPend: TBooleanField;
    tItensIncluidoEm: TDateTimeField;
    tItensDescr: TWideStringField;
    tItensDescr2: TWideStringField;
    QDescricao: TWideMemoField;
    tvItensvalordeb: TcxGridDBColumn;
    MTvalor_pago: TCurrencyField;
    MTvalor_deb: TCurrencyField;
    tDebData: TDateTimeField;
    tDebCliente: TLongWordField;
    tDebValor: TCurrencyField;
    tDebTipo: TByteField;
    tDebID: TLongWordField;
    tDebRecVer: TLongWordField;
    MTvalor_debdev: TCurrencyField;
    QVendedor: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure edCliPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edCliEnter(Sender: TObject);
    procedure rbFindClienteClick(Sender: TObject);
    procedure edProdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edProdEnter(Sender: TObject);
    procedure rbFindProdutoClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure rbFindVendaClick(Sender: TObject);
    procedure rbSemVendaClick(Sender: TObject);
    procedure rbFindDataClick(Sender: TObject);
    procedure edDataEnter(Sender: TObject);
    procedure edVendaEnter(Sender: TObject);
    procedure PaginasChange(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure tItensCalcFields(DataSet: TDataSet);
    procedure tvItensDescrCustomDrawHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure TVCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure rbParcialClick(Sender: TObject);
    procedure rbTotalClick(Sender: TObject);
    procedure tvItensEditChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure MTCalcFields(DataSet: TDataSet);
    procedure tvItensCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure rbCreditarClick(Sender: TObject);
    procedure rbDevolverClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FCli : TFrmEditContato;
    FCliID : Cardinal;
    FProdID : Cardinal;
    FTotal : Currency;
    FLoading : Boolean;
    FEdit : Boolean;
    FLastOp : Byte;
    procedure SetCliID(const Value: Cardinal);
    procedure SetProdID(const Value: Cardinal);

    procedure ValidaLocalizar;

    procedure ValidaSelecionar;

    procedure ValidaItens;

    procedure ValidaDev;

    procedure Validar;

    procedure wmEntraCliente(var Msg: TMessage); message wm_user;
    procedure wmEntraProduto(var Msg: TMessage); message wm_user+1;

    procedure Atualiza;

    procedure Totalizar;

    procedure Salvar;

    procedure devOk;

  public
    procedure Editar(aTran: Cardinal);
  
    property CliID: Cardinal
      read FCliID write SetCliID;

    property ProdID: Cardinal
      read FProdID write SetProdID;
    { Public declarations }
  end;

var
  FrmDev: TFrmDev;

implementation

{$R *.dfm}

uses ncaFrmPri, ncaDM, ncaFrmCliPesq2, ncaFrmProdPesq2, ncClassesBase,
  ufmImagens, ncaFrmQtdDev, ncEspecie, ncMovEst, ncaDMComp, ncaStrings;

{ TFrmDev }

resourcestring 
  rsInformeCriterioBusca = 'É necessário informar um critério para busca da venda a ser cancelada';
  rsVendaNaoExiste = 'Não foi encotrado uma venda com o número informado';

  rsTransacaoNaoEncontrada = 'Essa transação não foi encontrada no banco de dados';
  rsNaoEDev = 'Essa transação não é uma devolução';

  rsItemEmDebito = 'O produto "%s" está em débito. Não é possível devolver um produto que esteja em débito!';

  rsNenhumaVendaEncontrada = 'Nenhuma venda foi encontrada!';

  rsProdutoJaDevolvido = 'O produto "%s" já foi devolvido anteriormente!';

  rsProdutoJaDevolvidoParcial = 'O produto "%s" já foi devolvido parcialmente (%s). A quantidade máxima que ainda pode ser devolvida é %s';

  rsClienteEmBranco = 'É necessário selecionar um cliente para receber o crédito.';

  rsTabItensCaption = 'Itens devolvidos';
  rsTabDevolucaoDin = 'Devolução Pagamento';

  rsTotal = 'Total';

  rsAvancar = 'Avançar';
  rsConcluir = 'Concluir!';

  rsNenhumItem = 'Você não selecionou nenhum produto para ser devolvido';

procedure TFrmDev.Atualiza;
const
  Cor : Array[Boolean] of TColor = (clBlack, clBlue);
begin

  if FCliID=0 then begin
    panCli.Color := clWhite;
    panCli.Enabled := True;
  end else begin
    panCli.Color := clBtnFace;
    panCli.Enabled := False;
  end;

  Totalizar;

  if rbDevolver.Checked then
  begin
    rbDevolver.Font.Name := 'Segoe UI Semibold';
    rbDevolver.Font.Color := clHotLight;
    rbCreditar.Font.Name := 'Segoe UI';
    rbCreditar.Font.Color := clBlack;
    rbCreditar.Font.Style := [];
    tvEsp.Styles.Background := nil;
    gridEsp.Visible := True;
  end else
  begin
    rbDevolver.Font.Name := 'Segoe UI';
    rbDevolver.Font.Color := clBlack;
    rbDevolver.Font.Style := [];
    rbCreditar.Font.Name := 'Segoe UI Semibold';
    rbCreditar.Font.Color := clHotLight;
    tvEsp.Styles.Background := FrmPri.cxStyle37;
    gridEsp.Visible := False;
  end;  

  if FEdit then Exit;
  
  tsSelecionar.Enabled := (Paginas.ActivePageIndex>0);
  tsItens.Enabled := (Paginas.ActivePageIndex>1);
  tsDevolucaoDin.Enabled := (Paginas.ActivePageIndex>2);
  
  rbFindVenda.Font.Color := Cor[rbFindVenda.Checked];
  rbFindCliente.Font.Color := Cor[rbFindCliente.Checked];
  rbFindProduto.Font.Color := Cor[rbFindProduto.Checked];
  rbFindData.Font.Color := Cor[rbFindData.Checked];

  if rbTotal.Checked then begin
    rbParcial.Font.Color := clBlack;
    rbParcial.Font.Style := [];
    rbParcial.Font.Name := 'Segoe UI';
    rbTotal.Font.Color := clHotLight;
    rbTotal.Font.Style := [fsUnderline];  
    rbTotal.Font.Name := 'Segoe UI Semibold';                      
  end else 
  begin
    rbParcial.Font.Color := clHotLight;
    rbParcial.Font.Style := [fsUnderline];
    rbParcial.Font.Name := 'Segoe UI Semibold';
    rbTotal.Font.Color := clBlack;
    rbTotal.Font.Style := [];                  
    rbTotal.Font.Name := 'Segoe UI';      
  end;

end;

procedure TFrmDev.btnAvancarClick(Sender: TObject);
begin
  Validar;
  if Paginas.ActivePage=tsDevolucaoDin then
  begin
    Salvar;
    Close;
  end else
    repeat
      Paginas.ActivePageIndex := Paginas.ActivePageIndex + 1;
    until Paginas.ActivePage.Enabled;
end;

procedure TFrmDev.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDev.btnVoltarClick(Sender: TObject);
begin
  repeat
    Paginas.ActivePageIndex := Paginas.ActivePageIndex-1;
  until Paginas.ActivePage.Enabled;
end;

function QuantStr(Q: Extended): String;
var P: Integer;
begin
  Str(Q:0:10, Result);
  P := Pos('.', Result);
  if P>0 then begin
    while Result[Length(Result)]='0' do Delete(Result, Length(Result), 1);
    if Result[Length(Result)] = '.' then Delete(Result, Length(Result), 1);
    Result := Copy(Result, 1, P+3);
  end;  
end;

procedure TFrmDev.devOk;
var Q: Double;
begin
  if MTquant_dev.Value < 0.001 then Exit; 

  tDeb.Active := True;

  if tDeb.FindKey([1, mtID.Value]) then 
    TVItensvalordeb.Visible := False;
    
//    raise Exception.Create(Format(rsItemEmDebito, [mtDescr.Value]));

  tOK.Active := True;

  tOK.SetRange([mtID.Value, trEstDevolucao, false], [mtID.Value, trEstDevolucao, false]);
  Q := 0;
  tOK.First;
  while not tOK.Eof do
  begin
    Q := Q + tOKQuant.Value;
    tOK.Next;
  end;

  if Q>0 then
  if (MTquant.Value-Q) < 0.0001 then begin
    Paginas.ActivePageIndex := 2;
    raise Exception.Create(Format(rsProdutoJaDevolvido, [mtDescr.Value]));
  end else
  if (MTQuant.Value-(Q+MTquant_dev.Value) < -0.0001) then begin
    Paginas.ActivePageIndex := 2;
    raise Exception.Create(Format(rsProdutoJaDevolvidoParcial, [mtDescr.Value, QuantStr(Q), QuantStr(mtquant.Value-Q)]));
  end;  
end;

procedure TFrmDev.edCliEnter(Sender: TObject);
begin
  rbFindCliente.Checked := True;
  edCliPropertiesButtonClick(nil, 0);
end;

procedure TFrmDev.edCliPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var 
  F: TFrmCliPesq2;
  aID : Integer;
  aNome : String;
  aDeb, aCred : Currency;
  aPontos : Double;
begin
  F := gCliPesq2List.GetFrm;
  try
    aID := FCliID;
    aNome := edCli.Text;
    aDeb := 0; aCred := 0;
    aPontos := 0;
    if F.Pesquisar(aID, aNome, aPontos, aCred, aDeb) then CliID := aID;
  finally
    gCliPesq2List.ReleaseFrm(F);
  end;
end;

procedure TFrmDev.edDataEnter(Sender: TObject);
begin
  rbFindData.Checked := True;
  Atualiza;
end;

procedure TFrmDev.Editar(aTran: Cardinal);
begin
  FEdit := True;
  
  tvItenssel.Visible := False;
  tvItensquant.Visible := False;
  panEdit.Visible := True;
  tsLocalizar.TabVisible := False;
  tsSelecionar.TabVisible := False;
  Paginas.ActivePageIndex := 2;
  Paginas.HideTabs := False;
  panBottom.Visible := False;
  panTopItens.Visible := False;
  panTopDin.Visible := False;

  tsItens.Enabled := True;
  tsDevolucaoDin.Enabled := True;

  Q.SQL.Text := 'select * from Tran where id = ' + IntToStr(aTran);

  Q.Active := True;

  if Q.IsEmpty then
  begin
    Free;
    raise Exception.Create(rsTransacaoNaoEncontrada);
  end;

  if QTipo.Value<>trEstDevolucao then
  begin
    Free;
    raise Exception.Create(rsNaoEDev);
  end;

  tItens.Active := True;

  ValidaSelecionar;

  rbCreditar.Checked := (QOpDevValor.Value=0);
  rbDevolver.Checked := (QOpDevValor.Value=1);
  
  gridEsp.Enabled := False;

  tPagEsp.Active := True;

  if tPagEsp.FindKey([aTran]) then mtEsp.Locate('ID', tPagEspEspecie.Value, []);


  Atualiza;
  
  ShowModal;
end;

procedure TFrmDev.edProdEnter(Sender: TObject);
begin
  rbFindProduto.Checked := True;
  edProdPropertiesButtonClick(nil, 0);
end;

procedure TFrmDev.edProdPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var 
  F: TFrmProdPesq2;  
  aID: Cardinal;
begin
  F := gProdPesq2List.GetFrm;
  try
    aID := FProdID;
    if F.Pesquisar(aID) then ProdID := aID;
  finally
    gProdPesq2List.ReleaseFrm(F);
  end;
end;

procedure TFrmDev.edVendaEnter(Sender: TObject);
begin
  rbFindVenda.Checked := True;
  Atualiza;
end;

procedure TFrmDev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmDev.FormCreate(Sender: TObject);
var I: integer;
begin
  FEdit := False;

  TVDesconto.Caption := rsDesconto;
  
  FCli := TFrmEditContatoPeq.Create(Self);
  FCli.panPri.Parent := panCli;
  FCli.panPri.ParentColor := True;
  FCli.ShowCliInfo := False;

  FLastOp := 0;
  
  FLoading := True;
  FTotal := 0;
  Paginas.ActivePageIndex := 0;
  Paginas.HideTabs := True;
  FCliID := 0;
  FProdID := 0;

  mtEsp.Active := True;
  for I := 0 to gEspecies.Count - 1 do begin
    mtEsp.Append;
    mtEspID.Value := gEspecies.Itens[i].ID;
    mtEspNome.Value := gEspecies.Itens[i].Nome;
    mtEsp.Post;
  end;  
  mtEsp.First;
end;

procedure TFrmDev.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_F2 : if FEdit then Close;
    Key_Esc : ModalResult := mrCancel;
    Key_F5 : 
      if (Paginas.ActivePage=tsDevolucaoDin) then begin
        if panCli.Enabled then FCli.Pesquisa;
      end else
      if Paginas.ActivePageIndex=0 then
        PostMessage(Handle, wm_user, 0, 0);
  end;
end;

procedure TFrmDev.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13, #27]) then Key := #0;
end;

procedure TFrmDev.FormShow(Sender: TObject);
begin
  FLoading := False;
end;

procedure TFrmDev.MTCalcFields(DataSet: TDataSet);
var T: Currency;
begin
  if MTquant_dev.IsNull or (MTquant_dev.Value<=0) or (not mtSel.Value) then
    MTtotal_dev.Clear 
  else begin
    T := MTquant_dev.Value * MTunitario.Value;

    if MTvalor_deb.Value >= T then begin
      MTvalor_debdev.Value := T;
      MTtotal_dev.Value := 0;
    end else begin
      MTvalor_debdev.Value := MTvalor_deb.Value;
      MTtotal_dev.Value := T - MTvalor_deb.Value;
    end;
  end;
    
end;

procedure TFrmDev.PaginasChange(Sender: TObject);
begin
  if FEdit then Exit;
  panTopItens.Visible := MT.Active and (MT.RecordCount>1);
  Atualiza;
  btnVoltar.Enabled := (Paginas.ActivePageIndex>0);

  if Paginas.ActivePage=tsDevolucaoDin then
    btnAvancar.Caption := rsConcluir else
    btnAvancar.Caption := rsAvancar + ' >>';
end;

procedure TFrmDev.rbCreditarClick(Sender: TObject);
begin
  Atualiza;
  if rbCreditar.Focused then FLastOp := 0;
end;

procedure TFrmDev.rbDevolverClick(Sender: TObject);
begin
  Atualiza;
  if rbDevolver.Focused then begin
    FLastOp := 1;
    gridEsp.SetFocus;
  end;  
end;

procedure TFrmDev.rbFindClienteClick(Sender: TObject);
begin
  Atualiza;
  PostMessage(Handle, wm_user, 0, 0);
end;

procedure TFrmDev.rbFindDataClick(Sender: TObject);
begin
  Atualiza;
  edData.SetFocus;
end;

procedure TFrmDev.rbFindProdutoClick(Sender: TObject);
begin
  Atualiza;
  PostMessage(Handle, wm_user+1, 0, 0);
end;

procedure TFrmDev.rbFindVendaClick(Sender: TObject);
begin
  Atualiza;
  edVenda.SetFocus;
end;

procedure TFrmDev.rbParcialClick(Sender: TObject);
begin
  if rbParcial.Focused then begin
    mt.First;
    while not mt.Eof do 
    begin
      mt.Edit;
      MTquant_dev.Clear;
      MTsel.Value := False;
      mt.Post;
      mt.Next;                    
    end;
    mt.First;
  end;  
  Atualiza;
end;

procedure TFrmDev.rbSemVendaClick(Sender: TObject);
begin
  Atualiza;
end;

procedure TFrmDev.rbTotalClick(Sender: TObject);
begin
  if rbTotal.Focused then begin
    mt.First;
    while not mt.Eof do 
    begin
      mt.Edit;
      MTquant_dev.Value := MTquant.Value;
      MTsel.Value := True;
      mt.Post;
      mt.Next;                    
    end;
    mt.First;
  end;  
  Atualiza;
end;

procedure TFrmDev.Salvar;
var 
  M : TncMovEst;
  I : Integer;
begin
  M := TncMovEst.Create;
  try
    M.CriaUID;
    M.UID_Ref := QUID.Value;
    M.Tipo := trEstDevolucao;
    M.Cliente := FCli.ID;
    M.Func := Dados.CM.UA.Username;
    M.Vendedor := QVendedor.Value;
    M.DataHora := Now;
    M.Operacao := osIncluir;
    if rbCreditar.Checked then
      M.OpDevValor := 0 else
      M.OpDevValor := 1;
    M.Total := FTotal;
    M.PagPend := False;

    mt.First;
    while not mt.Eof do begin
      devOk;
      mt.Next;
    end;

    mt.First;
    while not mt.Eof do begin
      if MTsel.Value then
      with M.NewIME do begin
        imID_Ref := MTid.Value;
        imProduto := MTproduto.Value;
        imQuant := MTquant_dev.Value;
        imUnitario := MTunitario.Value;
        imTotal := MTtotal_dev.Value;
        imDebDev := MTValor_debdev.Value;
        _Operacao := osIncluir;
      end;
      mt.Next;
    end;

    if (FTotal > 0) and rbDevolver.Checked then 
      with M.PagEsp.NewItem do begin
        peValor := -1 * FTotal;
        peEspecie := mtEspID.Value;
        peTipo := gEspecies.PorID[mtEspID.Value].Tipo;
      end;  

    Dados.CM.SalvaMovEst(M);

    try
      if not Assigned(dmComp) then Application.CreateForm(TdmComp, dmComp);
      dmComp.Imprime(M.NativeUID);
    except
      on E: Exception do ShowMessage(E.Message);
    end;
    Paginas.ActivePageIndex := 2;
  finally
    M.Free;
  end;

end;

procedure TFrmDev.SetCliID(const Value: Cardinal);
begin
  FCliID := Value;
  if (FCliID>0) and Dados.tbCli.Locate('ID', FCliID, []) then
    edCli.Text := Dados.tbCliNome.Value 
  else begin
    edCli.Text := '';
    FCliID := 0;
  end;  
end;

procedure TFrmDev.SetProdID(const Value: Cardinal);
begin
  FProdID := Value;
  if (FProdID>0) and Dados.tbPro.Locate('ID', FProdID, []) then
    edProd.Text := Dados.tbProDescricao.Value
  else begin
    edProd.Text := '';
    FProdID := 0;
  end;  
end;

procedure TFrmDev.tItensCalcFields(DataSet: TDataSet);
begin
  tItensDescr2.Value := '   ' + tItensQuant.AsString + ' X ' + tItensNomeProd.Value + ' = ' +
     CurrencyToStr(tItensTotal.Value);
end;

function VarBoolean(V: Variant): Boolean;
begin
  Result := (not VarIsNull(V)) and (V=True);
end;

procedure TFrmDev.Totalizar;
var 
  i: integer;
  Todos : Boolean;
begin
  Todos := True;
  FTotal := 0;
  with tvItens.DataController do  
  for i := 0 to RecordCount-1 do begin
    if VarBoolean(Values[i, tvItenssel.index]) then begin
      FTotal := FTotal + Values[i, tvItenstotal_dev.Index];
      if Values[i, tvItensquant_dev.Index] < Values[i, tvItensquant.Index] then
        Todos := False;
    end else
      Todos := False;
  end;
  lbTotal.Caption := rsTotal + ' = ' + CurrencyToStr(FTotal);  
  lbTotal2.Caption := lbTotal.Caption;
  rbTotal.Checked := Todos;
  rbParcial.Checked := not Todos;  

  if (FTotal<0.01) then 
  begin
    rbDevolver.Checked := False;
    rbCreditar.Checked := False;
    rbDevolver.Enabled := False;
    rbCreditar.Enabled := False;                      
  end else begin
    rbDevolver.Enabled := True;
    rbCreditar.Enabled := True;
    if (not rbDevolver.Checked) and (not rbCreditar.Checked) then 
      if FLastOp=0 then 
        rbCreditar.Checked := True else
        rbDevolver.Checked := True;
  end;
end;

procedure TFrmDev.TVCustomDrawColumnHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
begin
  FrmPri.CustomDrawGridHeader(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TFrmDev.tvItensCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var V: Variant;  
begin
  V := AViewInfo.GridRecord.Values[tvitenssel.Index];

  if (V=null) or (V=False) then
    ACanvas.Font.Style := [] else
    ACanvas.Font.Style := [fsBold];
end;

procedure TFrmDev.tvItensDescrCustomDrawHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
var 
  I: Integer;  
  S: String;
begin
  AViewInfo.AlignmentVert := cxClasses.vaTop;
  ACanvas.Brush.Color := clWhite;
  ACanvas.FillRect(AViewInfo.Bounds);
  with AViewInfo, Bounds do
  begin
    I := tItens.RecordCount;
    if I>1 then
      S := IntToStr(I)+' itens:' else
      S := IntToStr(I)+' item:';
    ACanvas.DrawTexT(S, Rect(Left+2, Top+2, Right-2, Bottom-2), AlignmentHorz, cxClasses.vaTop, True {Multiline}, False);


{     for I := 0 to AreaViewInfoCount - 1 do

    begin

      if AreaViewInfos[I] is TcxGridColumnHeaderFilterButtonViewInfo then
      if TMYcxGridColumnHeaderFilterButtonViewInfo(AreaViewInfos[I]).GetVisible then

        LookAndFeelPainter.DrawFilterDropDownButton(ACanvas, AreaViewInfos[I].Bounds,

        GridCellStateToButtonState(AreaViewInfos[I].State), TcxGridColumnHeaderFilterButtonViewInfo(AreaViewInfos[I]).Active);

    end;}
  end;
  ADone := True;
end;

procedure TFrmDev.tvItensEditChanged(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem);
var aQtd: Double;  
begin
  if mtsel.value then
  begin
    if TFrmQtdDev.Create(Self).ObtemQtd(MTproduto.Value, MTquant.Value, aQtd) then
      MTquant_dev.Value := aQtd
    else
    begin
      MTsel.value := False;
      MTquant_dev.Clear;
    end;
  end else 
    MTquant_dev.Clear;
  Totalizar;  
end;

procedure TFrmDev.ValidaDev;
begin
  if (FCli.ID=0) and rbCreditar.Checked then Raise exception.Create(rsClienteEmBranco);
end;

procedure TFrmDev.ValidaItens;
var 
  i: integer;
  Algum : Boolean;
begin
  Algum := False;
  with tvItens.DataController do  
  for i := 0 to RecordCount-1 do 
    if VarBoolean(Values[i, tvItenssel.index]) then begin
      Algum := True;
      Break;
    end;

  if not Algum then raise Exception.Create(rsNenhumItem);

  devOk;
end;

procedure TFrmDev.ValidaLocalizar;

procedure Erro(S: String; C: TWinControl);
begin
  if Assigned(C) then C.SetFocus;
  raise Exception.Create(S);
end;

begin
  Q.Active := False;
  
  if rbFindVenda.Checked then
  begin
    if VarIsNull(edVenda.Value) or (edVenda.Value=0) then
      Erro(rsInformeCriterioBusca, edVenda);
      
    if (not Dados.tbTran.Locate('ID', edVenda.Value, [])) or (Dados.tbTranTipo.Value<>trEstVenda) then
      Erro(rsVendaNaoExiste, edVenda) else 
      Q.SQL.Text := 'select * from tran where (id = ' + IntToStr(edVenda.Value) + ') and (tipo=4) and ((cancelado is null) or (cancelado=false)) and (PagPend=False)' ;
  end;

  if rbFindCliente.Checked then begin
    if (CliID=0) then 
      Erro(rsInformeCriterioBusca, nil) else
      Q.SQL.Text := 'select * from tran where cliente = ' + IntToStr(CliID) + ' and (tipo=4) and ((cancelado is null) or (cancelado=false)) and (PagPend=False) order by datahora desc';
  end;
    
  if rbFindProduto.Checked then begin
    if (ProdID=0) then 
      Erro(rsInformeCriterioBusca, nil)
    else begin
      Q.SQL.Text := 
         'select * from tran where id in (select tran from movest where produto='+IntToStr(ProdID)+') and (tipo=4) and (PagPend=False) and ((cancelado is null) or (cancelado=false)) '+
         'order by datahora desc';
    end;
  end;
    
  if rbFindData.Checked then begin
    if (edData.Date<=EncodeDate(1980, 1, 1)) then 
      Erro(rsInformeCriterioBusca, edData)
    else begin
      Q.SQL.Text := 
        'select * from tran where (tipo=4) and ((cancelado is null) or (cancelado=false)) and (datahora >= timestamp '+
        QuotedStr(FormatDateTime('yyyy-mm-dd', edData.Date)+' 00:00:00')+') and (datahora < timestamp '+
        QuotedStr(FormatDateTime('yyyy-mm-dd', edData.Date+1)+' 00:00:00')+') '+
        'order by datahora desc';
    end;       
  end;

  Q.Active := True;
  if Q.IsEmpty then raise Exception.Create(rsNenhumaVendaEncontrada);
end;

procedure TFrmDev.Validar;
begin
  Atualiza;
  if FLoading then Exit;
  case Paginas.ActivePageIndex of
    0 : ValidaLocalizar;  
    1 : ValidaSelecionar;
    2 : ValidaItens;
    3 : ValidaDev;
  end;
end;

procedure TFrmDev.ValidaSelecionar;
begin
  mt.Active := False;
  mt.Active := True;
  TVItensvalordeb.Visible := False;
  tItens.First;
  while not tItens.Eof do begin
    mt.Append;
    mtID.Value := tItensID.Value;
    mtSel.Value := FEdit;
    MTproduto.Value := tItensProduto.Value;
    MTdescr.Value := tItensNomeProd.Value;
    MTquant.Value := tItensQuant.Value;
    MTvalor_pago.value := tItensPago.Value + tItensPagoPost.Value;
    
    if tDeb.FindKey([1, tItensID.Value]) then
      MTvalor_deb.Value := tDebValor.Value else
      MTvalor_deb.Value := 0;

    if MTvalor_deb.Value>0 then TVItensvalordeb.Visible := True;

    
    if FEdit then
    begin
      MTunitario.Value := DuasCasas(tItensTotal.Value / tItensQuant.Value);
      MTtotal.Value := tItensTotal.Value;
      MTquant_dev.Value := MTquant.Value;

      if MTvalor_deb.Value >= MTtotal.Value then begin
        MTvalor_debdev.Value := MTtotal.Value;
        MTtotal_dev.Value := 0;
      end else begin
        MTvalor_debdev.Value := MTvalor_deb.Value;
        MTtotal_dev.Value := MTtotal.Value - MTvalor_deb.Value;
      end;
//      MTtotal_dev.Value := MTtotal.Value;
    end else 
    begin
      MTquant.Value := tItensQuant.Value;
      MTunitario.Value := DuasCasas((tItensTotal.Value - tItensDesconto.Value) / tItensQuant.Value);
      MTtotal.Value := MTquant.Value * MTunitario.Value;
    end;  
    MT.Post;
    tItens.Next;
  end;
  MT.First;
  tItens.First;
  FCliID := QCliente.Value;
  FCli.ID := QCliente.Value;
end;

procedure TFrmDev.wmEntraCliente(var Msg: TMessage);
begin
  edCli.SetFocus;
end;

procedure TFrmDev.wmEntraProduto(var Msg: TMessage);
begin
  edProd.SetFocus;
end;

end. 



