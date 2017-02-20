unit uNexApp_Teste_Pri;

interface

uses
  Winapi.Windows, Winapi.Messages, db, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, json, Vcl.StdCtrls, idHttp;

type

  TForm21 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

{$R *.dfm}

uses 
  uDB_json,
  uDM_nexapp;

function httpPost(aURL, aParams: String): String;
var
  H: TIdHTTP;
  Req: TStream;
begin
  H := TIdHTTP.Create;
  try
      Req := TStringStream.Create(aParams, TEncoding.UTF8);
      try
        H.Request.Accept := 'application/json';
        H.Request.ContentType := 'application/json';
        Result := H.Post(aUrl, Req);
      finally
        Req.Free;
      end;
  finally
    H.Free;
  end;
end;

procedure TForm21.Button1Click(Sender: TObject);
var S: String;
begin
  S := dmNexApp.CreateJSon;
  Memo1.Lines.Text := S;
  Memo1.Lines.Add('');
  Memo1.Lines.Add(httpPost('http://apinex.azurewebsites.net/api/cards', S));
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
