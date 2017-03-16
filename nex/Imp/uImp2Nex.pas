unit uImp2Nex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, nxdb, nxseAllEngines, nxsdServerEngine, nxsrServerEngine,
  nxllTransport, nxptBasePooledTransport, nxtwWinsockTransport, nxllComponent,
  Grids, DBGrids, kbmMemTable, IniFiles,
  dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit, cxTextEdit, cxMemo,
  LMDBaseEdit, LMDCustomEdit, LMDCustomBrowseEdit, LMDBrowseEdit, cxButtons,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxPC, LMDCustomFileEdit, LMDFileOpenEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxCheckBox,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxImageComboBox,
  nxdbBackupController, cxLabel, cxMaskEdit, cxDropDownEdit;

type
  
  TFrmPri = class(TForm)
    nxSession1: TnxSession;
    nxDB: TnxDatabase;
    nxTCP: TnxWinsockTransport;
    nxSE: TnxServerEngine;
    dsProd: TDataSource;
    tEst: TnxTable;
    tProd: TnxTable;
    tCli: TnxTable;
    tEstID: TUnsignedAutoIncField;
    tEstTran: TLongWordField;
    tEstProduto: TLongWordField;
    tEstQuant: TFloatField;
    tEstUnitario: TCurrencyField;
    tEstTotal: TCurrencyField;
    tEstCustoU: TCurrencyField;
    tEstItem: TByteField;
    tEstDesconto: TCurrencyField;
    tEstPago: TCurrencyField;
    tEstPagoPost: TCurrencyField;
    tEstDescPost: TCurrencyField;
    tEstDataHora: TDateTimeField;
    tEstEntrada: TBooleanField;
    tEstCancelado: TBooleanField;
    tEstAjustaCusto: TBooleanField;
    tEstEstoqueAnt: TFloatField;
    tEstCliente: TLongWordField;
    tEstCaixa: TIntegerField;
    tEstCategoria: TStringField;
    tEstNaoControlaEstoque: TBooleanField;
    tEstITran: TIntegerField;
    tEstTipoTran: TByteField;
    tEstSessao: TIntegerField;
    tEstComissao: TCurrencyField;
    tEstComissaoPerc: TFloatField;
    tEstComissaoLucro: TBooleanField;
    tEstPermSemEstoque: TBooleanField;
    tEstFidResgate: TBooleanField;
    tEstFidPontos: TFloatField;
    tEstRecVer: TLongWordField;
    tCliCodigo: TStringField;
    tCliSexo: TStringField;
    tCliDataNasc: TDateTimeField;
    tCliIncluidoEm: TDateTimeField;
    tCliIncluidoPor: TStringField;
    tCliSemFidelidade: TBooleanField;
    tCliPJuridica: TBooleanField;
    tCliInativo: TBooleanField;
    tCliFornecedor: TBooleanField;
    MT: TkbmMemTable;
    MTFromFieldName: TStringField;
    MTFromFieldPos: TIntegerField;
    mtFields: TkbmMemTable;
    mtFieldsFieldName: TStringField;
    mtFieldsFieldCaption: TStringField;
    MTToFieldName: TStringField;
    MTToFieldCaption: TStringField;
    MTImportar: TBooleanField;
    MTPrefixo: TStringField;
    MTSufixo: TStringField;
    MTFiltrar: TSmallintField;
    MTTratamentoEsp: TSmallintField;
    Paginas: TcxPageControl;
    tsArq: TcxTabSheet;
    tsCampos: TcxTabSheet;
    tsImportar: TcxTabSheet;
    PB: TProgressBar;
    LMDSimplePanel1: TLMDSimplePanel;
    btnAvancar: TcxButton;
    btnVoltar: TcxButton;
    meArq: TcxMemo;
    TV: TcxGridDBTableView;
    GL: TcxGridLevel;
    Grid: TcxGrid;
    dsMT: TDataSource;
    TVFromFieldPos: TcxGridDBColumn;
    TVToFieldCaption: TcxGridDBColumn;
    TVImportar: TcxGridDBColumn;
    TVPrefixo: TcxGridDBColumn;
    TVSufixo: TcxGridDBColumn;
    TVFiltrar: TcxGridDBColumn;
    TVFromFieldName: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    nxDBDest: TnxDatabase;
    nxBackup: TnxBackupController;
    LMDSimplePanel2: TLMDSimplePanel;
    edArq: TLMDFileOpenEdit;
    cbArq: TcxComboBox;
    cxLabel1: TcxLabel;
    pagImp: TcxPageControl;
    tsImpProd: TcxTabSheet;
    tsImpCli: TcxTabSheet;
    cbFrac: TcxCheckBox;
    cbPermiteAlterarPreco: TcxCheckBox;
    cbSemEstoque: TcxCheckBox;
    cbApagar: TcxCheckBox;
    G: TDBGrid;
    cbApagarCli: TcxCheckBox;
    gridCli: TDBGrid;
    tCliID: TUnsignedAutoIncField;
    dsCli: TDataSource;
    cbPJ: TcxCheckBox;
    tProdID: TUnsignedAutoIncField;
    tProdPreco: TCurrencyField;
    tProdPrecoAuto: TBooleanField;
    tProdMargem: TFloatField;
    tProdImagem: TGraphicField;
    tProdFornecedor: TLongWordField;
    tProdCustoUnitario: TCurrencyField;
    tProdPodeAlterarPreco: TBooleanField;
    tProdPermiteVendaFracionada: TBooleanField;
    tProdNaoControlaEstoque: TBooleanField;
    tProdAbaixoMin: TBooleanField;
    tProdAbaixoMinDesde: TDateTimeField;
    tProdComissaoPerc: TFloatField;
    tProdComissaoLucro: TBooleanField;
    tProdAtivo: TBooleanField;
    tProdFidelidade: TBooleanField;
    tProdFidPontos: TIntegerField;
    tProdCadastroRapido: TBooleanField;
    tProdIncluidoEm: TDateTimeField;
    tProdRecVer: TLongWordField;
    tProdbrtrib: TWordField;
    tProdNCM: TStringField;
    tProdNCM_Ex: TStringField;
    MTValue: TMemoField;
    tProdEstoqueAtual: TFloatField;
    tProdEstoqueMin: TFloatField;
    tProdEstoqueMax: TFloatField;
    tProdEstoquePend: TFloatField;
    tProdEstoqueTot: TFloatField;
    tProdEstoqueRepor: TFloatField;
    tProdPesoBruto: TFloatField;
    tProdPesoLiq: TFloatField;
    tProdtax_id: TLongWordField;
    tProdcest: TLongWordField;
    tProdmodST: TByteField;
    tProdMVA: TnxMemoField;
    tProdPauta: TnxMemoField;
    tCliCodigoKey: TStringField;
    tCliNome: TWideStringField;
    tCliEndereco2: TWideStringField;
    tCliEnd_Numero: TWideStringField;
    tCliEnd_CodMun: TWideStringField;
    tCliEnd_Dest: TWideStringField;
    tCliEnd_Obs: TWideStringField;
    tCliendereco_id: TGuidField;
    tCliPais: TWideStringField;
    tCliNaoContribICMS: TBooleanField;
    tCliIsentoIE: TBooleanField;
    tCliNFE_CredIcms: TBooleanField;
    tCliPassaportes: TFloatField;
    tCliUltVisita: TDateTimeField;
    tCliDebito: TCurrencyField;
    tCliTemDebito: TBooleanField;
    tCliLimiteDebito: TCurrencyField;
    tCliFoto: TGraphicField;
    tCliAlteradoEm: TDateTimeField;
    tCliAlteradoPor: TStringField;
    tCliFidPontos: TFloatField;
    tCliFidTotal: TFloatField;
    tCliFidResg: TFloatField;
    tCliAniversario: TStringField;
    tCliTemCredito: TBooleanField;
    tCliInfoExtra: TWideStringField;
    tCliTranspEntPadrao: TLongWordField;
    tCliTranspEnt: TBooleanField;
    tCliTipoFor: TByteField;
    tCliConsumidor: TBooleanField;
    tCliValorCred: TCurrencyField;
    tCliRecVer: TLongWordField;
    tCliEndereco: TWideStringField;
    tCliBairro: TWideStringField;
    tCliCidade: TWideStringField;
    tCliUF: TWideStringField;
    tCliCEP: TWideStringField;
    tCliObs: TWideMemoField;
    tCliCpf: TWideStringField;
    tCliRg: TWideStringField;
    tCliTelefone: TWideStringField;
    tCliEmail: TWideMemoField;
    tCliPai: TWideStringField;
    tCliMae: TWideStringField;
    tCliCelular: TWideStringField;
    tProdUID: TGuidField;
    tProdMarca: TGuidField;
    tProdCodigo: TWideStringField;
    tProdDescricao: TWideStringField;
    tProdUnid: TWideStringField;
    tProdObs: TWideMemoField;
    tProdCategoria: TWideStringField;
    tProdAlteradoEm: TDateTimeField;
    tProdAlteradoPor: TStringField;
    procedure edArqChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure PaginasChange(Sender: TObject);
    procedure nxBackupIncludeTable(aSender: TnxBackupController;
      const aTableName: string; var aUseTable: Boolean);
    procedure cbArqPropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PaginasPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FSeparador : Char;
    FImpStr    : String;
    FExpCli    : Boolean;
    FExpMovEst : Boolean;
    FExpProd   : Boolean;
    FIni       : TMemIniFile;
    FSaveIni   : Boolean;
    FHeader    : String;
    function Fornecedor(aNome, aObs: String): Integer;

    procedure AddField(aFieldName, aCaption: String);

    procedure Atualizar;

    procedure LoadMT;

    procedure ImpCodigo;
    procedure ImpDescricao;
    procedure ImpUnid;
    procedure ImpCategoria;
    procedure ImpPreco;
    procedure ImpCusto;
    procedure ImpEstoque;
    procedure ImpEstoqueMin;
    procedure ImpEstoqueMax;
    procedure ImpFornecedor;
    procedure ImpObs;
    procedure ImpNCM;
    procedure ImpNCMEx;
    procedure ImpCEST;
    procedure ImpBRTrib;

    procedure ImpCampoCli;

    procedure SaveIni;
    procedure LoadIni;

    procedure LoadIniArq;
    procedure SaveIniArq;

    procedure LoadIniImp;
    procedure SaveIniImp;

    function ObtemProxCampo: String;

    function IsFornecedor: Boolean;

    function AddValorToCampo(S: String; aPrefixo, aValor, aSufixo: String; aAddEnter: Boolean): String;

    procedure ImportarClientes;

    procedure _ImportarClientes;

    procedure ImportarProdutos;

    procedure _ImportarProdutos;

    procedure CriaCamposProdutos;
    procedure CriaCamposClientes;
  public
    { Public declarations }
  end;

var
  FrmPri: TFrmPri;

  

implementation

{$R *.dfm}

uses uProxCampo;

function MeuEncode(S: String): String;
var I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do 
    if S[I]=' ' then 
      Result := Result + '^' else
      Result := Result + S[I];
end;

function MeuDecode(S: String): String;
var I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do 
    if S[I]='^' then 
      Result := Result + ' ' else
      Result := Result + S[I];
end;

function CodStr(I: Integer): String;
begin
  Result := IntToStr(I);
  while length(result)<3 do
    result := '0'+result;
end;

function SoDig(S: String): String;
var i: integer;
begin
  result := '';
  for i := 1 to length(S) do
    if s[i] in ['0'..'9', ',', '.', '-'] then
      result := result + s[i];
end;

function SoLetras(S: String): String;
var i: integer;
begin
  result := '';
  for i := 1 to length(S) do
    if s[i] in ['a'..'z', 'A'..'Z'] then
      result := result + s[i];
end;


function SoDig2(S: String): String;
var i: integer;
begin
  result := '';
  for i := 1 to length(S) do
    if s[i] in ['0'..'9'] then
      result := result + s[i];
end;


function StrToCurrency(S: String): Currency;
var 
  Code, P : Integer;
  R : Double;
begin
  S := SoDig(S);
  P := Pos(',', S);
  if P>0 then S[P] := '.';
  Result := 0;
  if (Trim(S)>'') then begin
    Val(S, R, Code);
    if Code=0 then
      REsult := R;
  end;
end;

function LimpaRG(S: String): String;
var I: Integer;
begin
  Result := '';
  while (Length(S)>0) and (not (S[1] in ['0'..'9'])) do
    Delete(S, 1, 1);
  Result := Trim(S);  
end;

procedure TFrmPri.AddField(aFieldName, aCaption: String);
begin
  mtFields.Append;
  mtFieldsFieldName.Value := aFieldName;
  mtFieldsFieldCaption.Value := aCaption;
  mtFields.Post;
end;

function TFrmPri.AddValorToCampo(S, aPrefixo, aValor, aSufixo: String;
  aAddEnter: Boolean): String;
begin
  if aValor='' then Exit;
  if aAddEnter and (S>'') then S := S + sLineBreak;
  S := S + aPrefixo + aValor + aSufixo;
  Result := S;
end;

procedure TFrmPri.Atualizar;
begin
  if cbArq.ItemIndex>0 then
    pagImp.ActivePageIndex := 1 else
    pagImp.ActivePageIndex := 0;

  cbPJ.Visible := (cbArq.ItemIndex=1);  
    
//  pagImp.ActivePageIndex := cbArq.ItemIndex;
  btnVoltar.Enabled := (Paginas.ActivePageIndex>0);
  if Paginas.ActivePage=tsImportar then
    btnAvancar.Caption := 'Importar!' else
    btnAvancar.Caption := 'Avançar';
end;

procedure TFrmPri.btnAvancarClick(Sender: TObject);
var 
  Q : Integer;
begin
  case Paginas.ActivePageIndex of
    0 : if meArq.Lines.Text='' then 
      raise exception.Create('É necessário selecionar um arquivo');
  end;

  case Paginas.ActivePageIndex of
    0 : begin
      LoadMT;
      SaveIniArq;
      Paginas.ActivePageIndex := 1;
    end;
    1 : begin
      if MT.State=dsEdit then MT.Post;
      MT.First;
      Q := 0;
      while not MT.Eof do begin
        if MTImportar.Value then begin
          if MTToFieldName.Value='' then raise exception.Create('É necessário informar o campo destino');
          Inc(Q);                         
        end;
        MT.Next;
      end;
      if Q=0 then raise exception.Create('Nenhum campo foi marcado para importação');
      Paginas.ActivePageIndex := 2;
    end;
    2 : begin
      SaveIniImp;
      if cbArq.ItemIndex=0 then ImportarProdutos else ImportarClientes;
    end;          
  end;
end;

procedure TFrmPri.btnVoltarClick(Sender: TObject);
begin
  Paginas.ActivePageIndex := Paginas.ActivePageIndex - 1;
end;

procedure TFrmPri.cbArqPropertiesChange(Sender: TObject);
begin
  tsImportar.Enabled := False;
  Atualizar;
end;

procedure TFrmPri.CriaCamposClientes;
begin
  mtFields.EmptyTable;
  AddField('Codigo', 'Código');
  AddField('Nome', 'Nome');
  AddField('Endereco', 'Endereço');
  AddField('End_Numero', 'Número (end.)');
  AddField('Endereco2', 'Complemento (end.)');
  AddField('Bairro', 'Bairro');
  AddField('Cidade', 'Cidade');
  AddField('UF', 'UF');
  AddField('CEP', 'CEP');
  AddField('Sexo', 'Sexo');
  AddField('Obs', 'Observações');
  AddField('Cpf', 'CPF/CNPJ');
  AddField('Rg', 'RG/IE');
  AddField('Telefone', 'Telefone');
  AddField('Email', 'E-mail');
  AddField('Pai', 'Pai');
  AddField('Mae', 'Mãe');
  AddField('DataNasc', 'Data de Nascimento');
  AddField('Celular', 'Celular');
  AddField('IncluidoEm', 'Data de Inclusão');
end;

procedure TFrmPri.CriaCamposProdutos;
begin
  mtFields.EmptyTable;
  AddField('codigo', 'Código');
  AddField('descricao', 'Descrição');
  AddField('unid', 'Unidade');
  AddField('categoria', 'Categoria');
  AddField('preco', 'Preço de Venda');
  AddField('custounitario', 'Preço de Custo');
  AddField('estoqueatual', 'Estoque Atual');
  AddField('estoquemin', 'Estoque Mínimo');
  AddField('estoquemax', 'Estoque Máximo');
  AddField('fornecedor', 'Fornecedor');
  AddField('obs', 'Observações');
  AddField('NCM', 'NCM');
  AddField('NCM_ex', 'NCM Ex');
  AddField('CEST', 'CEST');
  AddField('brtrib', 'Cod.Tributação');
end;

procedure TFrmPri.ImportarClientes;
begin
  gridCli.Visible := False;
  gridCli.DataSource := nil;
  PB.Max := meArq.Lines.Count;
  PB.Position := 0;
//  tCli.PackTable;
  tCli.Open;
  FExpCLi := True;
  FExpMovEst := False;
  FExpProd := False;
  if cbApagarCli.Checked then 
    tCli.EmptyTable;
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  mt.DisableControls;
  try
    _ImportarClientes;
  finally
    mt.EnableControls;
  end;

  gridCli.Visible := True;
  gridCli.DataSource := dsCli;

  tCli.Active := False;

  Windows.DeleteFile(PWideChar('c:\nex\imp\produto.nx1'));
  Windows.DeleteFile(PWideChar('c:\nex\imp\movest.nx1'));
  Windows.DeleteFile(PWideChar('c:\nex\imp\cliente.nx1'));
  
  nxDBDest.Active := True;
  nxBackup.Backup;
  nxDBDest.Active := False;
  tCli.Active := True;
end;

procedure TFrmPri.ImportarProdutos;
begin
  G.Visible := False;
  G.DataSource := nil;
  PB.Max := meArq.Lines.Count;
  PB.Position := 0;
  tProd.Open;
  tEst.Open;
  tCli.Open;
  FExpCLi := False;
  FExpMovEst := False;
  FExpProd := True;
  if cbApagar.Checked then begin
    tProd.EmptyTable;
    tEst.EmptyTable;
    tCli.EmptyTable;
  end;  
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  mt.DisableControls;
  try
    _ImportarProdutos;
  finally
    mt.EnableControls;
  end;

  G.Visible := True;
  G.DataSource := dsProd;

  tProd.Active := False;
  tEst.Active := False;
  tCli.Active := False;

  Windows.DeleteFile(PWideChar('c:\nex\imp\produto.nx1'));
  Windows.DeleteFile(PWideChar('c:\nex\imp\movest.nx1'));
  Windows.DeleteFile(PWideChar('c:\nex\imp\cliente.nx1'));
  
  nxDBDest.Active := True;
  nxBackup.Backup;
  nxDBDest.Active := False;
  tProd.Active := True;
end;

procedure TFrmPri._ImportarClientes;
var I, J, posicao : Integer;

begin
  for I := 1 to meArq.Lines.Count-1 do begin
    PB.Position := I + 1;
    Application.ProcessMessages;
    FImpStr := meArq.Lines[I];
    tCli.Append;
    tCliInativo.Value := False;
    tCliPJuridica.Value := cbPJ.Checked;
    J := 0;
    while FImpStr>'' do begin
      Inc(J);
      if J=1 then
        MT.First else
        MT.Next;
      try  
        if MTImportar.Value then 
          ImpCampoCli else
          ObtemProxCampo;
      except
        on E: Exception do 
          raise Exception.Create('Erro importando linha '+IntToStr(I)+': '+E.Message);
      end;
    end;
    if Length(SoDig2(tCliCPF.Value))>11 then
      tCliPJuridica.Value := True;
    tCliFornecedor.Value := IsFornecedor;  
    tCli.Post;
  end;
end;

procedure TFrmPri._ImportarProdutos;
var 
  I, J, Posicao : Integer;
  saveStr, saveStr2 : String;
  sl : TStrings;

procedure _ImpField(S: String);
begin
  if SameText(S, 'codigo') then
    ImpCodigo
  else
  if SameText(S, 'descricao') then
    ImpDescricao
  else
  if SameText(S, 'unid') then
    ImpUnid
  else
  if SameText(S, 'categoria') then
    ImpCategoria
  else
  if SameText(S, 'preco') then
    ImpPreco
  else
  if SameText(S, 'custounitario') then
    ImpCusto
  else
  if SameText(S, 'estoqueatual') then
    ImpEstoque
  else
  if SameText(S, 'estoquemin') then
    ImpEstoqueMin
  else
  if SameText(S, 'estoquemax') then
    ImpEstoqueMax
  else
  if SameText(S, 'fornecedor') then
    ImpFornecedor
  else
  if SameText(S, 'obs') then
    ImpObs
  else
  if SameText(S, 'ncm') then
    Self.ImpNCM 
  else
  if SameText(S, 'ncm_ex') then
    Self.ImpNCMEx
  else
  if SameText(S, 'cest') then
    Self.ImpCEST
  else
  if SameText(S, 'brtrib') then
    Self.Impbrtrib
  else
    ObtemProxCampo;
end;


begin
  sl := TStringList.Create;
  try
    for I := 1 to meArq.Lines.Count-1 do begin
      PB.Position := I + 1;
      Application.ProcessMessages;
      FImpStr := meArq.Lines[I];
      SaveStr := FImpStr;
      tProd.Append;
      tProdNaoControlaEstoque.Value := cbSemEstoque.Checked;
      tProdPermiteVendaFracionada.Value := cbFrac.Checked;
      tProdPodeAlterarPreco.Value := cbPermiteAlterarPreco.Checked;
      tProdAtivo.Value := True;
      J := 0;
  
      try
        while FImpStr>'' do begin
          Inc(J);
          Posicao := Length(SaveStr) - Length(FImpStr) + 1;
          if J=1 then
            MT.First else
            MT.Next;
          if MTImportar.Value then 
            _ImpField(MTToFieldName.Value) else
            ObtemProxCampo;
        end;
      except
        on E: Exception do begin
          if meArq.Lines.Text='asfddfsdf' then Exit;
          ShowMessage('Erro "' + E.Message + '" importando a linha número '+IntToStr(I)+ ' posição ' + IntToStr(Posicao) + ' - texto: ' + SaveStr);
        end;        
      end;  
      tProd.Post;
  
      if tProdEstoqueAtual.Value>0 then begin
        FExpMovEst := True;
        tEst.Append;
        tEstProduto.Value := tProdID.Value;
        tEstQuant.Value := tProdEstoqueAtual.Value;
        tEstDataHora.Value := Now;
        tEstEntrada.Value := True;
        tEstEstoqueAnt.Value := 0;
        tEstCaixa.Value := -1;
        tEstNaoControlaEstoque.Value := False;
        tEstTipoTran.Value := 6;
        tEst.Post;
      end;
    end;
  finally
    SL.Free;
  end;  
end;

procedure TFrmPri.edArqChange(Sender: TObject);
begin
  tsCampos.Enabled := False;
  tsImportar.Enabled := False;
  meArq.Lines.Clear;
  FHeader := '';
  if FileExists(edArq.Filename) then begin
    meArq.Lines.LoadFromFile(edArq.Filename);
    LoadMT;
    LoadIniArq;
  end;
end;

procedure TFrmPri.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FHeader>'' then
  case Paginas.ActivePageIndex of
    0 : SaveIniArq;
    1 : SaveIni;
    2 : SaveIniImp;
  end;  
end;

procedure TFrmPri.FormCreate(Sender: TObject);
begin
  pagImp.HideTabs := True;
  FSaveIni := False;
  FExpCli := False;
  FExpMovEst := False;
  edArq.InitialDir := ExtractFileDir(ParamStr(0));
  tsCampos.Enabled := False;
  tsImportar.Enabled := False;
  Paginas.ActivePageIndex := 0;
  mtFields.Open;
  mt.Open;

  FIni := TMemIniFile.Create(ExtractFilePath(ParamStr(0))+'Imp2Nex.ini');
end;

procedure TFrmPri.FormDestroy(Sender: TObject);
begin
  FIni.Free;
end;

function TFrmPri.IsFornecedor: Boolean;
begin
  result := (cbArq.ItemIndex=2);
end;

function TFrmPri.Fornecedor(aNome, aObs: String): Integer;
begin
  if Trim(aNome)='' then begin
   Result := 0;
    Exit;
  end;
  FExpCli := True;
  if not tCli.FindKey([True, aNome]) then begin
    tCli.Insert;
    tCliFornecedor.Value := True;
    tCliNome.Value := aNome;
    tCliObs.Value := aObs;
    tCli.Post;
  end;
  Result := tCliID.Value;
end;

procedure TFrmPri.ImpBRTrib;
var T: String;
begin
  T := SoDig(ObtemProxCampo);
  if T>'' then
    tProdbrtrib.AsString := T;
end;

procedure TFrmPri.ImpCampoCli;
var 
  F: TField;
  S: String;
begin
  S := mtPrefixo.Value+ObtemProxCampo+MTSufixo.Value;
  F := tCli.FindField(MTToFieldName.Value);
  if Assigned(F) and (S>'') then
  if (F.DataType in [ftString, ftMemo, ftWideString]) then
    F.AsString := F.AsString + S else
    try F.AsString := S except end;
end;

procedure TFrmPri.ImpCategoria;
begin
  tProdCategoria.Value := AddValorToCampo(tProdCategoria.Value, 
                                          mtPrefixo.Value,
                                          ObtemProxCampo,
                                          mtSufixo.Value, False);
end;

procedure TFrmPri.ImpCEST;
var sCest: String;
begin
  sCest := SoDig(ObtemProxCampo);
  if sCest>'' then
    tProdCEST.AsString := sCest;
end;

procedure TFrmPri.ImpCodigo;
begin
  tProdCodigo.Value := AddValorToCampo(tProdCodigo.Value, 
                                       mtPrefixo.Value,
                                       ObtemProxCampo,
                                       mtSufixo.Value, False);
end;

procedure TFrmPri.ImpCusto;
begin
  tProdCustoUnitario.Value := StrToCurrency(ObtemProxCampo);
end;

procedure TFrmPri.ImpDescricao;
begin
  tProdDescricao.Value := AddValorToCampo(tProdDescricao.Value, 
                                          mtPrefixo.Value,
                                          ObtemProxCampo,
                                          mtSufixo.Value, False);
end;

procedure TFrmPri.ImpEstoque;
var S: String;
begin
  S := ObtemProxCampo;
  if S>'' then 
    tProdEstoqueAtual.Value := StrToCurrency(S);
end;

procedure TFrmPri.ImpEstoqueMax;
var S: String;
begin
  S := ObtemProxCampo;
  if S>'' then 
    tProdEstoqueMax.Value := StrToCurrency(S);
end;

procedure TFrmPri.ImpEstoqueMin;
var S: String;
begin
  S := ObtemProxCampo;
  if S>'' then
    tProdEstoqueMin.Value := StrToCurrency(S);
end;

procedure TFrmPri.ImpFornecedor;
var S: String;
begin
  S := ObtemProxCampo;
  if S>'' then 
    tProdFornecedor.Value := Fornecedor(S, '');
end;

procedure TFrmPri.ImpNCM;
begin
  tProdNCM.Value := ObtemProxCampo;
end;

procedure TFrmPri.ImpNCMEx;
begin
  tProdNCM_Ex.Value := ObtemProxCampo;

end;

procedure TFrmPri.ImpObs;
begin
  tProdObs.Value := AddValorToCampo(tProdObs.Value, 
                                    mtPrefixo.Value,
                                    ObtemProxCampo,
                                    mtSufixo.Value, True);
end;

procedure TFrmPri.ImpPreco;
begin
  tProdPreco.Value := StrToCurrency(ObtemProxCampo);
end;

procedure TFrmPri.ImpUnid;
begin
  tProdUnid.Value := AddValorToCampo(tProdUnid.Value, 
                                     mtPrefixo.Value,
                                     ObtemProxCampo,
                                     mtSufixo.Value, False);
end;

procedure TFrmPri.LoadIni;

function Ident(aKey: String): String;
begin
  Result := MTFromFieldName.Value+'_'+aKey;
end;

begin
  if not FIni.SectionExists(FHeader) then Exit;

  cbPJ.Checked := FIni.ReadBool(FHeader, 'cbPJ', cbPJ.Checked);
  cbApagarCli.Checked := FIni.ReadBool(FHeader, 'cbApagarCli', cbApagarCli.Checked);
  cbFrac.Checked := FIni.ReadBool(FHeader, 'cbFrac', cbFrac.Checked);
  cbPermiteAlterarPreco.Checked := FIni.ReadBool(FHeader, 'cbPermiteAlterarPreco', cbPermiteAlterarPreco.Checked);
  cbSemEstoque.Checked := FIni.ReadBool(FHeader, 'cbSemEstoque', cbSemEstoque.Checked);
  cbApagar.Checked := FIni.ReadBool(FHeader, 'cbApagar', cbApagar.Checked);
  
  mt.first;
  while not mt.Eof do begin
    if MTFromFieldName.Value>'' then begin
      mt.Edit;
      MTImportar.Value := FIni.ReadBool(FHeader, Ident('importar'), false);
      MTToFieldName.Value := FIni.ReadString(FHeader, Ident('campo'), MTToFieldName.Value);
      MTPrefixo.Value := MeuDecode(FIni.ReadString(FHeader, Ident('prefixo'), MTPrefixo.Value));
      MTSufixo.Value := MeuDecode(FIni.ReadString(FHeader, Ident('sufixo'), MTSufixo.Value));
      MTFiltrar.Value := FIni.ReadInteger(FHeader, Ident('filtrar'), MTFiltrar.Value);
      mt.Post;
    end;  
    mt.Next;
  end;
end;

procedure TFrmPri.LoadIniArq;
begin
  if not FIni.SectionExists(FHeader) then Exit;
  cbArq.ItemIndex := FIni.ReadInteger(FHeader, 'cbArq', cbArq.ItemIndex);
end;

procedure TFrmPri.LoadIniImp;
begin

end;

procedure TFrmPri.LoadMT;
var 
  S: String;
  P: Integer;
  T: Integer;

procedure AddCampo(aField: String);
begin
  aField := Trim(aField);
  if aField='' then Exit;
  Inc(T);
  mt.Append;
  mtFromFieldPos.Value := T;
  MTFromFieldName.Value := aField;
  mt.Post;
end;
  
begin
  if cbArq.ItemIndex=0 then 
    CriaCamposProdutos else
    CriaCamposClientes;
    
  S := meArq.Lines[0];
  FHeader := S;
  if Pos(',', S)>0 then
    FSeparador := ',' else
    FSeparador := ';';
  mt.Active := False;
  mt.Active := True;
  T := 0;
  while S>'' do begin
    P := Pos(FSeparador, S);
    if P>0 then begin
      AddCampo(Copy(S, 1, P-1));
      Delete(S, 1, P);
    end else begin
      AddCampo(S);
      S := '';
    end;  
  end;
  LoadIni;
  MT.First;
end;

procedure TFrmPri.nxBackupIncludeTable(aSender: TnxBackupController;
  const aTableName: string; var aUseTable: Boolean);
begin
  aUseTable := False;
  if FExpProd then aUseTable := SameText(aTableName, 'Produto');

  if FExpCli and SameText(aTableName, 'Cliente') then aUseTable := True;

  if FExpMovEst and SameText(aTableName, 'MovEst') then aUseTable := True;
end;

function TFrmPri.ObtemProxCampo: String;
begin
  Result := uProxCampo.ObtemProxCampo(FImpStr, FSeparador);
  case MTFiltrar.Value of
    1 : Result := SoDig2(Result);
    2 : Result := SoDig(Result);
    3 : Result := Soletras(Result);
  end;
end;

procedure TFrmPri.PaginasChange(Sender: TObject);
begin
  Paginas.ActivePage.Enabled := True;
  if Paginas.ActivePage<>tsImportar then tsImportar.Enabled := False;
  if Paginas.ActivePage=tsCampos then FSaveIni := True;
  Atualizar;
end;

procedure TFrmPri.PaginasPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
  if FSaveIni and (Paginas.ActivePage=tsCampos) then SaveIni;
  AllowChange := True;
end;

function BoolStr(B: Boolean): String;
begin
  if B then
    Result := '1' else
    Result := '0';
end;

procedure TFrmPri.SaveIni;

function Ident(aKey: String): String;
begin
  Result := MTFromFieldName.Value+'_'+aKey;
end;

begin
  FIni.WriteInteger(FHeader, 'cbArq', cbArq.ItemIndex);
  FIni.WriteBool(FHeader, 'cbPJ', cbPJ.Checked);
  FIni.WriteBool(FHeader, 'cbApagarCli', cbApagarCli.Checked);

  FIni.WriteBool(FHeader, 'cbFrac', cbFrac.Checked);
  FIni.WriteBool(FHeader, 'cbPermiteAlterarPreco', cbPermiteAlterarPreco.Checked);
  FIni.WriteBool(FHeader, 'cbSemEstoque', cbSemEstoque.Checked);
  FIni.WriteBool(FHeader, 'cbApagar', cbApagar.Checked);
  
  mt.first;
  while not mt.Eof do begin
    if MTFromFieldName.Value>'' then begin
      FIni.WriteBool(FHeader, Ident('importar'), MTImportar.Value);
      FIni.WriteString(FHeader, Ident('campo'), MTToFieldName.Value);
      FIni.WriteString(FHeader, Ident('prefixo'), MeuEncode(MTPrefixo.Value));
      FIni.WriteString(FHeader, Ident('sufixo'), MeuEncode(MTSufixo.Value));
      FIni.WriteInteger(FHeader, Ident('filtrar'), MTFiltrar.Value);
    end;  
    mt.Next;
  end;
  FIni.UpdateFile;
end;

procedure TFrmPri.SaveIniArq;
begin
  FIni.WriteInteger(FHeader, 'cbArq', cbArq.ItemIndex);
  FIni.UpdateFile;
end;

procedure TFrmPri.SaveIniImp;
begin
  FIni.WriteBool(FHeader, 'cbPJ', cbPJ.Checked);
  FIni.WriteBool(FHeader, 'cbApagarCli', cbApagarCli.Checked);

  FIni.WriteBool(FHeader, 'cbFrac', cbFrac.Checked);
  FIni.WriteBool(FHeader, 'cbPermiteAlterarPreco', cbPermiteAlterarPreco.Checked);
  FIni.WriteBool(FHeader, 'cbSemEstoque', cbSemEstoque.Checked);
  FIni.WriteBool(FHeader, 'cbApagar', cbApagar.Checked);
  FIni.UpdateFile;
end;

{ TMeuIniFile }


end.
