unit uImp_Luiz_Japao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, nxdb, nxseAllEngines, nxsdServerEngine, nxsrServerEngine,
  nxllTransport, nxptBasePooledTransport, nxtwWinsockTransport, nxllComponent,
  Grids, DBGrids, DBTables, IBDatabase, 
  ADODB, nxreRemoteServerEngine, TB2Dock;
  

type
  TForm16 = class(TForm)
    nxSession1: TnxSession;
    nxDB: TnxDatabase;
    tProd: TnxTable;
    nxTCP: TnxWinsockTransport;
    PB: TProgressBar;
    Button1: TButton;
    DataSource1: TDataSource;
    adoConn: TADOConnection;
    tF: TADOTable;
    Label1: TLabel;
    nxRSE: TnxRemoteServerEngine;
    TBDock1: TTBDock;
    G: TDBGrid;
    tFIdProduct: TIntegerField;
    tFIdProductJoint: TIntegerField;
    tFfProductMasterJoint: TBooleanField;
    tFMuProductRelated: TWideStringField;
    tFDtProductPromoStart: TDateTimeField;
    tFDtProductPromoEnd: TDateTimeField;
    tFIdProductBarCode: TWideStringField;
    tFRfProduct: TWideStringField;
    tFIdProductGroup: TIntegerField;
    tFIdProductGroupSub: TIntegerField;
    tFNmProduct: TWideStringField;
    tFDsPlainTextProduct: TWideMemoField;
    tFDsHTMLProduct: TWideMemoField;
    tFNmProduct_lang1: TWideStringField;
    tFDsPlainTextProduct_lang1: TWideMemoField;
    tFDsHTMLProduct_lang1: TWideMemoField;
    tFNmProduct_lang2: TWideStringField;
    tFDsPlainTextProduct_lang2: TWideMemoField;
    tFDsHTMLProduct_lang2: TWideMemoField;
    tFNmUPackage: TWideStringField;
    tFfProductNew: TBooleanField;
    tFNrUnitWeight: TFloatField;
    tFNrVlUnitPrice: TFloatField;
    tFNrVlUnitCost: TFloatField;
    tFNrVlUnitPromoPrice: TFloatField;
    tFNrVlUnitPartnerPrice: TIntegerField;
    tFIdProductType: TIntegerField;
    tFIdProductTypeSub: TIntegerField;
    tFIdPropCommerce: TIntegerField;
    tFfPropViewCommerce: TBooleanField;
    tFIdPropMarket: TIntegerField;
    tFfPropViewMarket: TBooleanField;
    tFIdPropUMeasure: TIntegerField;
    tFfPropViewUMeasure: TBooleanField;
    tFIdPropColor: TIntegerField;
    tFfPropViewColor: TBooleanField;
    tFIdPropSize: TIntegerField;
    tFfPropViewSize: TBooleanField;
    tFIdPropTaste: TIntegerField;
    tFfPropViewTaste: TBooleanField;
    tFIdPropContent: TIntegerField;
    tFfPropViewContent: TBooleanField;
    tFIdPropBrand: TIntegerField;
    tFfPropViewBrand: TBooleanField;
    tFIdPropModel: TIntegerField;
    tFfPropViewModel: TBooleanField;
    tFIdPropMadeIn: TIntegerField;
    tFfPropViewMadeIn: TBooleanField;
    tFDsWarranty: TWideStringField;
    tFNrQtyStock: TFloatField;
    tFDtStockUpdate: TDateTimeField;
    tFNrLote: TWideStringField;
    tFDtValidateLimit: TDateTimeField;
    tFDtManufacture: TDateTimeField;
    tFNrQtyReservedStock: TFloatField;
    tFNrQtyMinStock: TFloatField;
    tFNrQtyGoodStock: TFloatField;
    tFNrQtyMaxStock: TFloatField;
    tFNrQtyReservedOnlineSales: TFloatField;
    tFDsTimeToShip: TWideStringField;
    tFDsTimeToShip_lang1: TWideStringField;
    tFDsTimeToShip_lang2: TWideStringField;
    tFNmRefMiniPic1: TWideStringField;
    tFNmRefMiniPic2: TWideStringField;
    tFNmRefMiniPic3: TWideStringField;
    tFNmRefMiniPic4: TWideStringField;
    tFNmRefMiniPic5: TWideStringField;
    tFNmRefMidPic1: TWideStringField;
    tFfOrientationPic1: TBooleanField;
    tFNmRefMidPic2: TWideStringField;
    tFfOrientationPic2: TBooleanField;
    tFNmRefMidPic3: TWideStringField;
    tFfOrientationPic3: TBooleanField;
    tFNmRefMidPic4: TWideStringField;
    tFfOrientationPic4: TBooleanField;
    tFNmRefMidPic5: TWideStringField;
    tFfOrientationPic5: TBooleanField;
    tFNmRefBigPic1: TWideStringField;
    tFNmRefBigPic2: TWideStringField;
    tFNmRefBigPic3: TWideStringField;
    tFNmRefBigPic4: TWideStringField;
    tFNmRefBigPic5: TWideStringField;
    tFNmRefHDPic1: TWideStringField;
    tFNmRefHDPic2: TWideStringField;
    tFNmRefHDPic3: TWideStringField;
    tFNmRefHDPic4: TWideStringField;
    tFNmRefHDPic5: TWideStringField;
    tFNmAltPic1: TWideStringField;
    tFNmAltPic2: TWideStringField;
    tFNmAltPic3: TWideStringField;
    tFNmAltPic4: TWideStringField;
    tFNmAltPic5: TWideStringField;
    tFNmAltPic1_lang1: TWideStringField;
    tFNmAltPic2_lang1: TWideStringField;
    tFNmAltPic3_lang1: TWideStringField;
    tFNmAltPic4_lang1: TWideStringField;
    tFNmAltPic5_lang1: TWideStringField;
    tFNmAltPic1_lang2: TWideStringField;
    tFNmAltPic2_lang2: TWideStringField;
    tFNmAltPic3_lang2: TWideStringField;
    tFNmAltPic4_lang2: TWideStringField;
    tFNmAltPic5_lang2: TWideStringField;
    tFDsLinkExtraDetail: TWideStringField;
    tFDsLinkExtraDetail_lang1: TWideStringField;
    tFDsLinkExtraDetail_lang2: TWideStringField;
    tFDsLinkExternalInfo: TWideStringField;
    tFDsLinkRelatedDoc1: TWideStringField;
    tFDsLinkRelatedDoc2: TWideStringField;
    tFDsLinkRelatedDoc3: TWideStringField;
    tFDsLinkRelatedDoc4: TWideStringField;
    tFDsLinkRelatedDoc5: TWideStringField;
    tFNrTpShipPayMethod: TSmallintField;
    tFDsInternalComment: TWideStringField;
    tFNmAuditProc: TWideStringField;
    tFIPAuditProc: TWideStringField;
    tFDtAuditProc: TDateTimeField;
    tFfAuditEnabled: TBooleanField;
    tFIDRegisterUser: TIntegerField;
    tFNmRegister: TWideStringField;
    tFDtRegister: TDateTimeField;
    tFIDUpdateUser: TIntegerField;
    tFDtUpdate: TDateTimeField;
    tFNmUpdate: TWideStringField;
    tFNrRecordStatus: TSmallintField;
    tFfRecordEnabled: TBooleanField;
    tFNrVlUnitPriceWeb: TFloatField;
    tFNrVlUnitPriceWholeSale: TFloatField;
    tFNrVlProfitRetail: TFloatField;
    tFNrVlProfitWholeSale: TFloatField;
    tFNrVlProfitWeb: TFloatField;
    tFNrWetWeight: TFloatField;
    tFNmProduct_lang3: TWideStringField;
    tFDsPlainTextProduct_lang3: TWideMemoField;
    tFDsHTMLProduct_lang3: TWideMemoField;
    tFNmProduct_lang4: TWideStringField;
    tFDsPlainTextProduct_lang4: TWideMemoField;
    tFDsHTMLProduct_lang4: TWideMemoField;
    tFNmProduct_lang5: TWideStringField;
    tFDsPlainTextProduct_lang5: TWideMemoField;
    tFDsHTMLProduct_lang5: TWideMemoField;
    tFNmProduct_lang6: TWideStringField;
    tFDsPlainTextProduct_lang6: TWideMemoField;
    tFDsHTMLProduct_lang6: TWideMemoField;
    tFNmProduct_lang7: TWideStringField;
    tFDsPlainTextProduct_lang7: TWideMemoField;
    tFDsHTMLProduct_lang7: TWideMemoField;
    tFNmProduct_lang8: TWideStringField;
    tFDsPlainTextProduct_lang8: TWideMemoField;
    tFDsHTMLProduct_lang8: TWideMemoField;
    tFNmProduct_lang9: TWideStringField;
    tFDsPlainTextProduct_lang9: TWideMemoField;
    tFDsHTMLProduct_lang9: TWideMemoField;
    tFDsTimeToShip_lang3: TWideStringField;
    tFNmProduct_lang10: TWideStringField;
    tFDsPlainTextProduct_lang10: TWideMemoField;
    tFDsTimeToShip_lang4: TWideStringField;
    tFDsHTMLProduct_lang10: TWideMemoField;
    tFDsTimeToShip_lang5: TWideStringField;
    tFDsTimeToShip_lang6: TWideStringField;
    tFDsTimeToShip_lang7: TWideStringField;
    tFDsTimeToShip_lang8: TWideStringField;
    tFDsTimeToShip_lang9: TWideStringField;
    tFNmAltPic1_lang3: TWideStringField;
    tFNmAltPic2_lang3: TWideStringField;
    tFNmAltPic3_lang3: TWideStringField;
    tFNmAltPic4_lang3: TWideStringField;
    tFNmAltPic5_lang3: TWideStringField;
    tFNmAltPic1_lang4: TWideStringField;
    tFNmAltPic2_lang4: TWideStringField;
    tFNmAltPic3_lang4: TWideStringField;
    tFNmAltPic4_lang4: TWideStringField;
    tFNmAltPic5_lang4: TWideStringField;
    tFNmAltPic1_lang5: TWideStringField;
    tFNmAltPic2_lang5: TWideStringField;
    tFNmAltPic3_lang5: TWideStringField;
    tFNmAltPic4_lang5: TWideStringField;
    tFNmAltPic5_lang5: TWideStringField;
    tFNmAltPic1_lang6: TWideStringField;
    tFNmAltPic2_lang6: TWideStringField;
    tFNmAltPic3_lang6: TWideStringField;
    tFNmAltPic4_lang6: TWideStringField;
    tFNmAltPic5_lang6: TWideStringField;
    tFNmAltPic1_lang7: TWideStringField;
    tFNmAltPic2_lang7: TWideStringField;
    tFNmAltPic3_lang7: TWideStringField;
    tFNmAltPic4_lang7: TWideStringField;
    tFNmAltPic5_lang7: TWideStringField;
    tFNmAltPic1_lang8: TWideStringField;
    tFNmAltPic2_lang8: TWideStringField;
    tFNmAltPic3_lang8: TWideStringField;
    tFNmAltPic4_lang8: TWideStringField;
    tFNmAltPic5_lang8: TWideStringField;
    tFNmAltPic1_lang9: TWideStringField;
    tFNmAltPic2_lang9: TWideStringField;
    tFNmAltPic3_lang9: TWideStringField;
    tFNmAltPic4_lang9: TWideStringField;
    tFNmAltPic5_lang9: TWideStringField;
    tFDsLinkExtraDetail_lang3: TWideStringField;
    tFDsLinkExtraDetail_lang4: TWideStringField;
    tFDsLinkExtraDetail_lang5: TWideStringField;
    tFDsLinkExtraDetail_lang6: TWideStringField;
    tFDsLinkExtraDetail_lang7: TWideStringField;
    tFDsLinkExtraDetail_lang8: TWideStringField;
    tFDsLinkExtraDetail_lang9: TWideStringField;
    tFfPointCard_GivePoint: TBooleanField;
    tFNrConvertMoney_1: TFloatField;
    tFNrConvertMoney_2: TFloatField;
    tFNrConvertMoney_3: TFloatField;
    tFNrConvertMoney_4: TFloatField;
    tFNrConvertMoney_5: TFloatField;
    tProdID: TAutoIncField;
    tProdCodigo: TStringField;
    tProdDescricao: TStringField;
    tProdUnid: TStringField;
    tProdPreco: TCurrencyField;
    tProdPrecoAuto: TBooleanField;
    tProdMargem: TFloatField;
    tProdObs: TnxMemoField;
    tProdImagem: TGraphicField;
    tProdCategoria: TStringField;
    tProdFornecedor: TIntegerField;
    tProdSubCateg: TStringField;
    tProdEstoqueAtual: TFloatField;
    tProdCustoUnitario: TCurrencyField;
    tProdEstoqueACE: TFloatField;
    tProdEstoqueACS: TFloatField;
    tProdPodeAlterarPreco: TBooleanField;
    tProdPermiteVendaFracionada: TBooleanField;
    tProdNaoControlaEstoque: TBooleanField;
    tProdEstoqueMin: TFloatField;
    tProdEstoqueMax: TFloatField;
    tProdAbaixoMin: TBooleanField;
    tProdAbaixoMinDesde: TDateTimeField;
    tProdEstoqueRepor: TFloatField;
    tProdplus: TBooleanField;
    tProdplusURL: TnxMemoField;
    tProdplusCodParceiro: TStringField;
    tProdplusCodProduto: TStringField;
    tProdComissaoPerc: TFloatField;
    tProdComissaoLucro: TBooleanField;
    tProdAtivo: TBooleanField;
    tProdFidelidade: TBooleanField;
    tProdFidPontos: TIntegerField;
    tProdmd5Imagem: TStringField;
    tProdlastProdModif: TDateTimeField;
    tProduploadR: TWordField;
    tProduploadS: TWordField;
    tProdfk_produ: TIntegerField;
    tProdbatchUID: TGuidField;
    tProdCadastroRapido: TBooleanField;
    tProdIncluidoEm: TDateTimeField;
    tProdRecVer: TIntegerField;
    tCategoria: TADOTable;
    tCategoriaIdProductGroup: TIntegerField;
    tCategoriaRfProductGroup: TWideStringField;
    tCategoriaNmProductGroup: TWideStringField;
    tCategoriaDsProductGroup: TWideStringField;
    tCategoriaNmProductGroup_lang1: TWideStringField;
    tCategoriaDsProductGroup_lang1: TWideStringField;
    tCategoriaNmProductGroup_lang2: TWideStringField;
    tCategoriaDsProductGroup_lang2: TWideStringField;
    tCategoriaDtRegister: TDateTimeField;
    tCategoriaNmAuditProc: TWideStringField;
    tCategoriaIPAuditProc: TWideStringField;
    tCategoriaDtAuditProc: TDateTimeField;
    tCategoriafAuditEnabled: TBooleanField;
    tUnid: TADOTable;
    tUnidIdPropUMeasure: TIntegerField;
    tUnidRfPropUMeasure: TWideStringField;
    tUnidNmPropUMeasure: TWideStringField;
    tUnidDsPropUMeasure: TWideStringField;
    tUnidNmPropUMeasure_lang1: TWideStringField;
    tUnidDsPropUMeasure_lang1: TWideStringField;
    tUnidNmPropUMeasure_lang2: TWideStringField;
    tUnidDsPropUMeasure_lang2: TWideStringField;
    tUnidDtRegister: TDateTimeField;
    tUnidNmAuditProc: TWideStringField;
    tUnidIPAuditProc: TWideStringField;
    tUnidDtAuditProc: TDateTimeField;
    tUnidfAuditEnabled: TBooleanField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

function StrToCurrency(S: String): Currency;
var 
  Code : Integer;
  Res: Real;
begin
  Result := 0;
  if (Trim(S)>'') then begin
    Val(S, Res, Code);
    if Code=0 then
      REsult := Res;
  end;
end;

function CodStr(I: Integer): String;
begin
  Result := IntToStr(I);
  while length(result)<3 do
    result := '0'+result;
end;


procedure TForm16.Button1Click(Sender: TObject);
var 
  SL: TStrings;
  I, Min, Cod: Integer;
  S: String;
  Mon : Currency;
  sTempo : String;
  sUsername : String;


begin

  TF.Active := True;
  PB.Max := TF.RecordCount;
  PB.Position := 0;
  tProd.Open;
  tProd.DeleteRecords;
  tCategoria.Open;
  TF.First;
  while not TF.eof do begin
    PB.Position := PB.Position + 1;
    Application.ProcessMessages;
    tProd.Insert;
    tProdID.Value := tFIDProduct.Value;
    tProdCodigo.Value := tFIDProductBarCode.Value;
    
    tProdDescricao.Value := tFNmProduct.Value;
    tProdPreco.Value := tFNrVlUnitPrice.Value;
    tProdPermiteVendaFracionada.Value := True;
    tProdCustoUnitario.Value := tFNrVlUnitCost.Value;
    tProdCategoria.AsVariant := tCategoria.Lookup('IdProductGroup', tFIDProductGroup.Value, 'NmProductGroup');
    tProdUnid.AsVariant := tUnid.Lookup('IdPropUMeasure', tFIdPropUMeasure.Value, 'NmPropUMeasure');
//    tProdEstoqueAtual.Value := tFNrQtyStock.Value;
    tProd.Post;
    TF.Next;
  end;
  tProd.IndexName := 'IID';
  tProd.Last;
  tProd.SetAutoIncValue(tProdID.Value);
end;

end.

// Senha OptiCyber MS Access = k4hvd$$

JetOLEDB:Database Password
