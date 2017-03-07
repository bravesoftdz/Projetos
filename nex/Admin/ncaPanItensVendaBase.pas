unit ncaPanItensVendaBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, ncMovEst, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, StdCtrls, cxButtons,
  cxLabel, cxTextEdit, cxMemo, Data.DB, nxdb;

type
  
  TBotaoItemVenda = (bivRemoverItem, bivCancelarItem);
  
  TClicouBotao = procedure (Sender: TObject; aBotao: TBotaoItemVenda) of object;
  
  TpanItensVendaBase = class(TForm)
    panPri: TLMDSimplePanel;
    panTot: TLMDSimplePanel;
    tbPro: TnxTable;
    tbProID: TUnsignedAutoIncField;
    tbProCodigo: TWideStringField;
    tbProDescricao: TWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FClicouBotao : TClicouBotao;
    FOnClickPagamento : TNotifyEvent;
    FResgateFidelidade : Boolean;
    procedure SetResgateFidelidade(const Value: Boolean);

    
  protected 
    FUpdating: Integer;
    function GetField(aIndex: Integer; aName: String): Variant; virtual; abstract;
    procedure SetField(aIndex: Integer; aName: String; const Value: Variant); virtual; abstract;
    function GetCount: Integer; virtual; abstract;
    procedure SetCount(const Value: Integer); virtual; abstract;
    procedure _SetResgateFidelidade; virtual; 
  public
    TipoTran: Byte;
    procedure UpdateItem(aIndex, aIDProduto: Integer; aQuant: Extended; aUnit, aTotal: Double; aCancelado: Boolean; aObs: String); 
    procedure UpdateItemMovEst(aIndex: Integer; aItem: TncItemMovEst); 

    property Count: Integer
      read GetCount write SetCount;

    function IsUpdating: Boolean;  

    function QuantProduto(aProduto: Integer): Double; virtual; abstract;

    procedure BeginUpdate; virtual;
    procedure EndUpdate; virtual;

    function EditObsItem: Boolean; virtual; abstract;

    procedure SetGap(aPixels: Integer); virtual;

    procedure LoadFromItensMovEst(aItens: TncItensMovEst); 

    function FocusedItemIndex: Integer; virtual; abstract;
    
    procedure DelItem(aIndex: Integer); virtual; abstract;
    
    property  ResgateFidelidade: Boolean
      read FResgateFidelidade write SetResgateFidelidade;

    procedure Atualiza; virtual; abstract;

    procedure SetFontSize(aSize: Integer); virtual; abstract;

    procedure MostrarBotao(aBotao: TBotaoItemVenda; aMostrar: Boolean); virtual;

    property OnClickPagamento: TNotifyEvent
      read FOnClickPagamento write FOnClickPagamento;

    property OnClicouBotao: TClicouBotao
      read FClicouBotao write FClicouBotao;

    property Values[aIndex: Integer; aName: String]: Variant
      read GetField write SetField;  
    
    { Public declarations }
  end;

var
  panItensVendaBase: TpanItensVendaBase;

implementation

uses ncaDM;

{$R *.dfm}


{ TFrmPanItensVendaBase }

function VarToString(V: Variant): String;
begin
  if VarIsNull(V) then 
    Result := '' else
    Result := V;
end;

function Descr(aCodigo, aDescr: String): String;
begin
  if aCodigo>'' then
    Result := aCodigo+' - '+aDescr else
    Result := aDescr;
end;

procedure TpanItensVendaBase.UpdateItem(aIndex, aIDProduto: Integer;
  aQuant: Extended; aUnit, aTotal: Double; aCancelado: Boolean; aObs: String);
var aCodigo, aDescr: Variant;  
begin
  if aIndex=-1 then begin
    aIndex := Count;
    Count := Count+1;
  end;
  
  if (Values[aIndex, 'IDProduto']=null) or
     (Values[aIndex, 'IDProduto']<>aIDProduto) then begin

    if tbPro.FindKey([aIDProduto]) then begin
      aCodigo := tbProCodigo.Value;
      aDescr := tbProDescricao.Value;
    end else begin
      aCodigo := '';
      aDescr := '';
    end;
    Values[aIndex, 'IDProduto'] := aIDProduto;
    Values[aIndex, 'Codigo'] := VarToString(aCodigo)+'  ';
    Values[aIndex, 'Descr']  := aDescr; //Descr(VarToString(aCodigo), VarToString(aDescr));
  end;

  if ResgateFidelidade then begin
    Values[aIndex, 'FidPontos'] := aUnit;
    Values[aIndex, 'FidPontosTotal'] := aUnit*aQuant;
    Values[aIndex, 'Unitario'] := 0;
    Values[aIndex, 'Total'] := 0;
  end else begin
    Values[aIndex, 'Unitario'] := aUnit;
    Values[aIndex, 'Total'] := aTotal;
    Values[aIndex, 'FidPontos'] := 0;
    Values[aIndex, 'FidPontosTotal'] := 0;
  end;
  
  Values[aIndex, 'Quant'] := aQuant;
  Values[aIndex, 'Cancelado'] := aCancelado;
  Values[aIndex, 'Obs'] := aObs;
end;

procedure TpanItensVendaBase.UpdateItemMovEst(aIndex: Integer; aItem: TncItemMovEst);
begin
  with aItem do
  if ResgateFidelidade then 
    UpdateItem(aIndex, imProduto, imQuant, Trunc(imFidPontos / imQuant), aItem.imTotal, aItem.imCancelado, aItem.imObs) else
    UpdateItem(aIndex, imProduto, imQuant, imUnitario, aItem.imTotal, aItem.imCancelado, aItem.imObs);
end;

procedure TpanItensVendaBase.BeginUpdate;
begin
  Inc(FUpdating);
end;

procedure TpanItensVendaBase.EndUpdate;
begin
  Dec(FUpdating);
end;

procedure TpanItensVendaBase.FormCreate(Sender: TObject);
begin
  FOnClickPagamento := nil;
  FResgateFidelidade := False;
  FUpdating := 0;
  FClicouBotao := nil;
end;


function TpanItensVendaBase.IsUpdating: Boolean;
begin
  Result := (FUpdating>0);
end;

procedure TpanItensVendaBase.LoadFromItensMovEst(aItens: TncItensMovEst);
var I: Integer;
begin
  BeginUpdate;
  try
    Count := aItens.Count;
    for I := 0 to aItens.Count - 1 do
      UpdateItemMovEst(I, aItens[i]);
  finally
    EndUpdate;
  end;
end;

procedure TpanItensVendaBase.MostrarBotao(aBotao: TBotaoItemVenda;
  aMostrar: Boolean);
begin
end;

procedure TpanItensVendaBase.SetGap(aPixels: Integer);
begin

end;

procedure TpanItensVendaBase.SetResgateFidelidade(const Value: Boolean);
begin
  FResgateFidelidade := Value;
  _SetResgateFidelidade;
end;

procedure TpanItensVendaBase._SetResgateFidelidade;
begin
end;

end.
