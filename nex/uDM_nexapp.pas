unit uDM_nexapp;

interface

uses
  System.SysUtils, System.Classes, Data.DB, nxdb, nxllTransport,
  nxptBasePooledTransport, nxtwWinsockTransport, nxllComponent,
  nxsdServerEngine, nxreRemoteServerEngine, json, dialogs, kbmMemTable;

type
  TdmNexApp = class(TDataModule)
    RSE: TnxRemoteServerEngine;
    TCP: TnxWinsockTransport;
    Session: TnxSession;
    tTran: TnxTable;
    DB: TnxDatabase;
    tTranID: TUnsignedAutoIncField;
    tTranUID: TGuidField;
    tTranUID_ref: TGuidField;
    tTranStatusNFE: TByteField;
    tTranChaveNFE: TStringField;
    tTranTipoNFE: TByteField;
    tTranDataHora: TDateTimeField;
    tTranIncluidoEm: TDateTimeField;
    tTranCliente: TLongWordField;
    tTranTipo: TByteField;
    tTranOpDevValor: TByteField;
    tTranFunc: TStringField;
    tTranTotal: TCurrencyField;
    tTranDesconto: TCurrencyField;
    tTranDescPerc: TFloatField;
    tTranids_pagto: TStringField;
    tTranDescPorPerc: TBooleanField;
    tTranTotLiq: TCurrencyField;
    tTranPagEsp: TWordField;
    tTranPago: TCurrencyField;
    tTranDebitoAnt: TCurrencyField;
    tTranDebito: TCurrencyField;
    tTranDebitoPago: TCurrencyField;
    tTranCreditoAnt: TCurrencyField;
    tTranCredito: TCurrencyField;
    tTranCreditoUsado: TCurrencyField;
    tTranTroco: TCurrencyField;
    tTranObs: TnxMemoField;
    tTranCancelado: TBooleanField;
    tTranCanceladoPor: TStringField;
    tTranCanceladoEm: TDateTimeField;
    tTranCaixa: TLongWordField;
    tTranCaixaPag: TLongWordField;
    tTranMaq: TWordField;
    tTranNomeCliente: TStringField;
    tTranSessao: TLongWordField;
    tTranDescricao: TWideMemoField;
    tTranQtdTempo: TFloatField;
    tTranCredValor: TBooleanField;
    tTranFidResgate: TBooleanField;
    tTranAmbNFe: TByteField;
    tTranStatusCanc: TByteField;
    tTranExtra: TnxMemoField;
    tTranPagFunc: TStringField;
    tTranComissao: TCurrencyField;
    tTrantax_incluido: TCurrencyField;
    tTrantax_incluir: TCurrencyField;
    tTranTotalFinal: TCurrencyField;
    tTranPagPend: TBooleanField;
    tTranRecVer: TLongWordField;
    tUsuarios: TnxTable;
    tTranFuncName: TStringField;
    tItens: TnxTable;
    tPagEsp: TnxTable;
    tItensID: TUnsignedAutoIncField;
    tItensID_ref: TLongWordField;
    tItensTran: TLongWordField;
    tItenstax_id: TLongWordField;
    tItenstax_incluido: TCurrencyField;
    tItenstax_incluir: TCurrencyField;
    tItensProduto: TLongWordField;
    tItensQuant: TFloatField;
    tItensUnitario: TCurrencyField;
    tItensTotal: TCurrencyField;
    tItensCustoU: TCurrencyField;
    tItensItem: TByteField;
    tItensDesconto: TCurrencyField;
    tItensDescr: TWideStringField;
    tItensTotalFinal: TCurrencyField;
    tItensPago: TCurrencyField;
    tItensPagoPost: TCurrencyField;
    tItensDescPost: TCurrencyField;
    tItensDataHora: TDateTimeField;
    tItensPend: TBooleanField;
    tItensIncluidoEm: TDateTimeField;
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
    tPagEspID: TUnsignedAutoIncField;
    tPagEspCaixa: TLongWordField;
    tPagEspDataHora: TDateTimeField;
    tPagEspTran: TLongWordField;
    tPagEspTipoTran: TByteField;
    tPagEspEspecie: TWordField;
    tPagEspTipo: TByteField;
    tPagEspValor: TCurrencyField;
    tPagEspTroco: TCurrencyField;
    tPagEspDoc: TStringField;
    tPagEspCancelado: TBooleanField;
    tPagEspDevolucao: TBooleanField;
    tPagEspRecVer: TLongWordField;
    tEsp: TnxTable;
    tPagEspNome: TStringField;
    tPagEspValorFinal: TCurrencyField;
    tEspID: TWordField;
    tEspTipo: TByteField;
    tEspNome: TStringField;
    tEspPermiteTroco: TBooleanField;
    tEspPermiteVarios: TBooleanField;
    tEspPermiteCred: TBooleanField;
    tEspImg: TWordField;
    tEspRecVer: TLongWordField;
    tEspTipoPagNFE: TByteField;
    tPagEspImgEsp: TWordField;
    tPagEspImgEsp2: TWordField;
    mtCard: TkbmMemTable;
    mtCardCode: TLongWordField;
    mtCardCreationDate: TDateTimeField;
    mtCardType: TByteField;
    mtCardIdRef: TLongWordField;
    mtCardShopCode: TLongWordField;
    mtCardEventDate: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
    procedure tPagEspCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    function ArrayItens: TJsonArray;
    function ArrayPagto: TJsonArray;
  public
    function CreateJSON: String;
    procedure Open;
    { Public declarations }
  end;

var
  dmNexApp: TdmNexApp;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDB_json, uJson;

{$R *.dfm}

{ TdmNexApp }

function TdmNexApp.ArrayItens: TJsonArray;
var 
  J : TJsonObject;
  FM : TStrings;
begin
  FM := TStringList.Create;
  try
    FM.Add('Produto=ProductCode');
    FM.Add('Descr=ProductName');
    FM.Add('Quant=Quantity');
    FM.Add('Unitario=UnitValue');
    FM.Add('TotalFinal=TotalValue');
    Result := TJsonArray.Create;
    try
      tItens.SetRange([tTranID.Value], [tTranID.Value]);
      while not tItens.Eof do begin
        J := TJsonObject.Create;
        tItens.Fields.ToJson(J, FM);
        Result.Add(J);
        tItens.Next;
      end;
    except
      on E: Exception do begin
        Result.Free;
        Raise;
      end;
    end;
  finally
    FM.Free;
  end;
end;

function TdmNexApp.ArrayPagto: TJsonArray;
var 
  J : TJsonObject;
  FM : TStrings;
begin
  FM := TStringList.Create;
  try
    FM.Add('ImgEsp=PaymentCode');
    FM.Add('Nome=PaymentDescription');
    FM.Add('ValorFinal=Value');
    Result := TJsonArray.Create;
    try
      tPagEsp.SetRange([tTranID.Value], [tTranID.Value]);
      while not tPagEsp.Eof do begin
        J := TJsonObject.Create;
        Result.Add(J);
        tPagEsp.Fields.ToJson(J, FM);
        tPagEsp.Next;
      end;
    except
      on E: Exception do begin
        Result.Free;
        Raise;
      end;
    end;
  finally
    FM.Free;
  end;
end;

function TdmNexApp.CreateJSON: String;
var 
  J, jCard : TJsonObject;
  FM : TStrings;
begin
  mtCard.Active := False;
  mtCard.Active := True;
  tTran.IndexName := 'IID';
  tTran.FindKey([30605]);
  mtCard.Append;
  mtCardIdRef.Value := tTranID.Value;
  mtCardCreationDate.Value := Now;
  mtCardEventDate.Value := tTranDataHora.Value;
  mtCardCode.Value := tTranID.Value;
  mtCardShopCode.Value := 230;
  mtCardType.Value := 0;
  mtCard.Post;
  FM := TStringList.Create;
  J := TJsonObject.Create;
  try
//    FM.Add('ID=SaleCode');
    FM.Add('DataHora=SaleDate');
    FM.Add('Cliente=CustomerCode');
    FM.Add('NomeCliente=CustomerName');
    FM.Add('Func=VendorCode');
    FM.Add('FuncName=VendorName');
    FM.Add('TotLiq=TotalNet');
    FM.Add('Total=TotalGross');
    FM.Add('Desconto=Discount');
    tTran.Fields.ToJson(J, FM);
    J.addPair(TJsonPair.Create('Items', ArrayItens));
    J.addPair(TJsonPair.Create('Payments', ArrayPagto));
    jCard := TJsonObject.Create;
    try
      mtCard.Fields.ToJson(jCard);
      jCard.addPair(tJsonPair.Create('Info', J));
      Result := '['+jCard.ToJSon+']';
    finally
      jCard.Free;
    end;
  finally
//    J.Free;
    FM.Free;
  end;
end;

procedure TdmNexApp.DataModuleCreate(Sender: TObject);
begin
  Open;
end;

procedure TdmNexApp.Open;
begin
  tTran.Open;
  tItens.Open;
  tEsp.Open;
  tPagEsp.Open;
end;

procedure TdmNexApp.tPagEspCalcFields(DataSet: TDataSet);
begin
  tPagEspValorFinal.Value := tPagEspValor.Value - tPagEspTroco.Value;
  tPagEspImgEsp2.Value := tPagEspImgEsp.Value + 1;
end;

end.

{ 
    "_id" : ObjectId("577bc714988f3624bc365bec"), //gerado automaticamente
    "Code" : NumberInt(160719), // codigo na tabela Cards local
    "CreationDate" : ISODate("2016-07-05T14:31:29.980+0000"), //data em que o card foi criado
    "Type" : NumberInt(0), //tipo do Card {0 = Venda, 1 = Fechamento de Caixa, 2 = Alerta de Estoque, 3 = Faturamento }
    "IdRef" : NumberInt(88535), //código da Venda
    "Info" : {        
        "SaleCode" : NumberInt(88535), 
        "SaleDate" : ISODate("2016-06-09T02:24:51.835+0000"), //data da Venda 
        "ShopCode" : "230", //codigo da loja que devera ser unificado entre Nex, MinhaLoja e NexApp
        "CustomerCode" : "0", 
        "VendorCode" : null, 
        "CustomerName" : "", 
        "VendorName" : "admin", 
        "TotalNet" : 23.0,  // total Liquido
        "TotalGross" : 23.0, //total Bruto
        "Discount" : 0.0, // desconto
        "Items" : [
            {
                "ProductCode" : NumberInt(234), 
                "ProductName" : "CORONA CERVEZA 355CM", 
                "Quantity" : NumberLong(2), 
                "UnitValue" : 6.5, 
                "TotalValue" : 13.0, 
                "SaleCode" : NumberInt(88535)
            }, 
            {
                "ProductCode" : NumberInt(1094), 
                "ProductName" : "BATIDINHA DE COCO BAIANINHA", 
                "Quantity" : NumberLong(1), 
                "UnitValue" : 10.0, 
                "TotalValue" : 10.0, 
                "SaleCode" : NumberInt(88535)
            }
        ], 
        "Payments" : [
            {
                "PaymentCode" : NumberInt(2), 
                "PaymentDescription" : "Dinheiro", 
                "Value" : 10.0               
            }, 
            {
                "PaymentCode" : NumberInt(3), 
                "PaymentDescription" : "Cartão de Credito - Visa", 
                "Value" : 13.0        
            }
        ],             
        "Comment" : "" //Observacao
    }, 
    "Updated" : true, 
    "ShopCode" : "shopCodeMaybeForever", 
    "EventDate" : ISODate("2016-06-09T02:24:51.835+0000") //data da Venda
}


{"Cards":[{"Code":30605,"CreationDate":"2016-07-11 17:34:06","Type":0,"IdRef":30605,"ShopCode":230,"EventDate":"2016-06-12 13:35:41","Info":{"SaleDate":"2016-06-12 13:35:41","CustomerCode":0,"VendorCode":"Isabele","VendorName":null,"TotalNet":25.5,"TotalGross":25.5,"Discount":0,"Items":[{"ProductCode":9,"ProductName":"ESPETINHO DE FRANGO","Quantity":2,"UnitValue":3.5,"TotalValue":7},{"ProductCode":24,"ProductName":"HAMBURG\u00C3O","Quantity":1,"UnitValue":3.5,"TotalValue":3.5},{"ProductCode":274,"ProductName":"Tortuguita","Quantity":1,"UnitValue":1,"TotalValue":1},{"ProductCode":6,"ProductName":"BOLINHO DE SALSICHA","Quantity":1,"UnitValue":3,"TotalValue":3},{"ProductCode":528,"ProductName":"Brigadeirao","Quantity":2,"UnitValue":2.5,"TotalValue":5},{"ProductCode":30,"ProductName":"EMPADA DE FRANGO COM CATUPIRY","Quantity":1,"UnitValue":3.5,"TotalValue":3.5},{"ProductCode":72,"ProductName":"Fanta Mini Pet (200ml)","Quantity":2,"UnitValue":1.25,"TotalValue":2.5}],"Payments":[{"PaymentCode":0,"PaymentDescription":"Dinheiro","Value":25.5}]}}]}
