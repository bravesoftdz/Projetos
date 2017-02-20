unit uImp_Disk_Recargas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBX.IBCustomDataSet, IBX.IBTable, nxdb,
  Data.DB, IBX.IBDatabase, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, nxllComponent, nxsdServerEngine, nxreRemoteServerEngine,
  Vcl.Grids, Vcl.DBGrids, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.StdCtrls, cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, nxsrServerEngine;

type
  TForm8 = class(TForm)
    DataSource1: TDataSource;
    tAux: TnxTable;
    tAuxID: TAutoIncField;
    tAuxNome: TStringField;
    tAuxEndereco: TStringField;
    tAuxBairro: TStringField;
    tAuxCidade: TStringField;
    tAuxUF: TStringField;
    tAuxCEP: TStringField;
    tAuxSexo: TStringField;
    tAuxCpf: TStringField;
    tAuxRg: TStringField;
    tAuxTelefone: TStringField;
    tAuxMinutos: TFloatField;
    tAuxMinutosUsados: TFloatField;
    tAuxMinutosIniciais: TFloatField;
    tAuxIsento: TBooleanField;
    tAuxUsername: TStringField;
    tAuxPai: TStringField;
    tAuxMae: TStringField;
    tAuxSenha: TStringField;
    tAuxUltVisita: TDateTimeField;
    tAuxDebito: TCurrencyField;
    tAuxEscola: TStringField;
    tAuxEscolaHI: TDateTimeField;
    tAuxEscolaHF: TDateTimeField;
    tAuxNickName: TStringField;
    tAuxDataNasc: TDateTimeField;
    tAuxCelular: TStringField;
    tAuxTemDebito: TBooleanField;
    tAuxLimiteDebito: TCurrencyField;
    tAuxFoto: TGraphicField;
    tAuxIncluidoEm: TDateTimeField;
    tAuxAlteradoEm: TDateTimeField;
    tAuxIncluidoPor: TStringField;
    tAuxAlteradoPor: TStringField;
    tAuxInativo: TBooleanField;
    tAuxTipoAcessoPref: TIntegerField;
    tAuxValorCred: TCurrencyField;
    tAuxObs: TMemoField;
    tAuxEmail: TMemoField;
    tCli: TnxTable;
    tCliID: TAutoIncField;
    tCliNome: TStringField;
    tCliEndereco: TStringField;
    tCliBairro: TStringField;
    tCliCidade: TStringField;
    tCliUF: TStringField;
    tCliCEP: TStringField;
    tCliSexo: TStringField;
    tCliCpf: TStringField;
    tCliRg: TStringField;
    tCliTelefone: TStringField;
    tCliMinutos: TFloatField;
    tCliMinutosUsados: TFloatField;
    tCliMinutosIniciais: TFloatField;
    tCliIsento: TBooleanField;
    tCliUsername: TStringField;
    tCliPai: TStringField;
    tCliMae: TStringField;
    tCliSenha: TStringField;
    tCliUltVisita: TDateTimeField;
    tCliDebito: TCurrencyField;
    tCliEscola: TStringField;
    tCliEscolaHI: TDateTimeField;
    tCliEscolaHF: TDateTimeField;
    tCliNickName: TStringField;
    tCliDataNasc: TDateTimeField;
    tCliCelular: TStringField;
    tCliTemDebito: TBooleanField;
    tCliLimiteDebito: TCurrencyField;
    tCliFoto: TGraphicField;
    tCliIncluidoEm: TDateTimeField;
    tCliAlteradoEm: TDateTimeField;
    tCliIncluidoPor: TStringField;
    tCliAlteradoPor: TStringField;
    tCliInativo: TBooleanField;
    tCliTipoAcessoPref: TIntegerField;
    tCliValorCred: TCurrencyField;
    tCliObs: TMemoField;
    tCliEmail: TMemoField;
    nxTCP: TnxWinsockTransport;
    ibDB: TIBDatabase;
    nxSession1: TnxSession;
    nxDB: TnxDatabase;
    tF: TIBTable;
    ibTran: TIBTransaction;
    DBGrid1: TDBGrid;
    LMDSimplePanel1: TLMDSimplePanel;
    cxButton1: TcxButton;
    tPro: TnxTable;
    tFNOME_PROD: TIBStringField;
    tFDATAC_PROD: TDateField;
    tFUND_PROD: TIBStringField;
    tFESTOQ_PROD: TFloatField;
    tFCUSTF_PROD: TFloatField;
    tFPV_VISTA_PROD: TFloatField;
    tFESTOQ_MIN_PROD: TFloatField;
    tFCODBARRA_PROD: TIBStringField;
    tProID: TUnsignedAutoIncField;
    tProCodigo: TStringField;
    tProDescricao: TStringField;
    tProUnid: TStringField;
    tProPreco: TCurrencyField;
    tProPrecoAuto: TBooleanField;
    tProMargem: TFloatField;
    tProObs: TnxMemoField;
    tProImagem: TGraphicField;
    tProCategoria: TStringField;
    tProFornecedor: TLongWordField;
    tProSubCateg: TStringField;
    tProEstoqueAtual: TExtendedField;
    tProCustoUnitario: TCurrencyField;
    tProEstoqueACE: TExtendedField;
    tProEstoqueACS: TExtendedField;
    tProPodeAlterarPreco: TBooleanField;
    tProPermiteVendaFracionada: TBooleanField;
    tProNaoControlaEstoque: TBooleanField;
    tProEstoqueMin: TExtendedField;
    tProEstoqueMax: TExtendedField;
    tProAbaixoMin: TBooleanField;
    tProAbaixoMinDesde: TDateTimeField;
    tProEstoqueRepor: TExtendedField;
    tProplus: TBooleanField;
    tProplusURL: TnxMemoField;
    tProplusCodParceiro: TStringField;
    tProplusCodProduto: TStringField;
    tProComissaoPerc: TFloatField;
    tProComissaoLucro: TBooleanField;
    tProAtivo: TBooleanField;
    tProFidelidade: TBooleanField;
    tProFidPontos: TIntegerField;
    tPromd5Imagem: TStringField;
    tProlastProdModif: TDateTimeField;
    tProuploadR: TByteField;
    tProuploadS: TByteField;
    tProfk_produ: TIntegerField;
    tProbatchUID: TGuidField;
    tProCadastroRapido: TBooleanField;
    tProIncluidoEm: TDateTimeField;
    tProRecVer: TLongWordField;
    tEst: TnxTable;
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
    tEstplusID: TGuidField;
    tEstComissao: TCurrencyField;
    tEstComissaoPerc: TFloatField;
    tEstComissaoLucro: TBooleanField;
    tEstplusTran: TBooleanField;
    tEstPermSemEstoque: TBooleanField;
    tEstFidResgate: TBooleanField;
    tEstFidPontos: TFloatField;
    tEstRecVer: TLongWordField;
    nxSE: TnxServerEngine;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.cxButton1Click(Sender: TObject);
begin
  tPro.EmptyTable;
  tEst.EmptyTable;
  TF.First;
  while not tF.Eof do 
  begin
    tPro.Append;
    tProDescricao.Value := tFNOME_PROD.Value;
    tProIncluidoEm.Value := tFDATAC_PROD.Value;
    tProUnid.Value := tFUND_PROD.Value;
    tProEstoqueAtual.Value := tFESTOQ_PROD.Value;
    tProCustoUnitario.Value := tFCUSTF_PROD.Value;
    tProPreco.Value := tFPV_VISTA_PROD.Value;
    tProEstoqueMin.Value := tFESTOQ_MIN_PROD.Value;
    tProCodigo.Value := tFCODBARRA_PROD.Value;
    tProAtivo.Value := False;
    tPro.Post;

    if tProEstoqueAtual.Value>0 then begin
      tEst.Append;
      tEstProduto.Value := tProID.Value;
      tEstQuant.Value := tProEstoqueAtual.Value;
      tEstDataHora.Value := Now;
      tEstEntrada.Value := True;
      tEstEstoqueAnt.Value := 0;
      tEstCaixa.Value := -1;
      tEstNaoControlaEstoque.Value := False;
      tEstTipoTran.Value := 6;
      tEst.Post;
    end;    
    tF.Next;                    
  end;
  ShowMessage('pronto!');
end;

procedure TForm8.FormShow(Sender: TObject);
begin
 tF.Open;
end;

end.
