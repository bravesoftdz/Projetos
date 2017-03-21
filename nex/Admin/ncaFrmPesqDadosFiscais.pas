unit ncaFrmPesqDadosFiscais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, nxdb,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  cxCalendar, cxContainer, cxLabel, cxCurrencyEdit;

type
  TFrmPesqDadosFiscais = class(TForm)
    panBusca: TLMDSimplePanel;
    btnOk: TcxButton;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVFor: TcxGridDBTableView;
    TVForNome: TcxGridDBColumn;
    GL: TcxGridLevel;
    btnXML: TcxButton;
    Tab: TnxTable;
    TabID: TUnsignedAutoIncField;
    TabUID: TGuidField;
    TabChaveNFE: TStringField;
    TabNomeFor: TStringField;
    TabnItem: TWordField;
    TabProduto: TLongWordField;
    TabDataNF: TDateTimeField;
    TabCNPJFor: TStringField;
    TabQuant: TFloatField;
    TabQuantOrig: TFloatField;
    TabDadosFiscais: TnxMemoField;
    DS: TDataSource;
    TVChaveNFE: TcxGridDBColumn;
    TVNomeFor: TcxGridDBColumn;
    TVDataNF: TcxGridDBColumn;
    TVQuant: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    TabCustoU: TCurrencyField;
    TVCustoU: TcxGridDBColumn;
    procedure btnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnXMLClick(Sender: TObject);
  private
    { Private declarations }
  public
    function ObtemDadosFiscais(aProduto: Cardinal; 
                               var aFor: Cardinal; 
                               var aQuant: Double; 
                               var aCustoU: Currency;
                               var aDadosFiscais: String): Boolean;
    { Public declarations }
  end;

var
  FrmPesqDadosFiscais: TFrmPesqDadosFiscais;

implementation

{$R *.dfm}

uses ncaDM, ncaFrmPri, ncaFrmLeXML;

{ TFrmPesqDadosFiscais }

procedure TFrmPesqDadosFiscais.btnOkClick(Sender: TObject);
begin
  if Tab.IsEmpty then
    raise Exception.Create('Não há XML de compra desse produto no banco de dados do NEX. Clique em "Adicionar XML de compra" para ler o XML de compra desse produto');
  ModalResult := mrOk;    
end;

procedure TFrmPesqDadosFiscais.btnXMLClick(Sender: TObject);
begin
  TFrmLeXML.Create(Self).ShowModal;
  Tab.Refresh;
end;

procedure TFrmPesqDadosFiscais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

function TFrmPesqDadosFiscais.ObtemDadosFiscais(
  aProduto: Cardinal;
  var aFor: Cardinal; 
  var aQuant: Double; 
  var aCustoU: Currency;
  var aDadosFiscais: String): Boolean;
var S: String;  
begin
  if aFor>0 then begin
    S := Dados.ObtemCNPJFor(aFor);
    Tab.IndexName := 'ICNPJForProdutoDataNF';
    Tab.SetRange([S, aProduto], [S, aProduto]);
  end else begin
    Tab.IndexName := 'IProdutoDataNF';
    Tab.SetRange([aProduto], [aProduto]);
  end;

  if not Tab.IsEmpty then Tab.First;

  ShowModal;

  if (not Tab.IsEmpty) then begin
    aFor := Dados.ObtemCodFor(TabCNPJFor.Value);
    aQuant := TabQuant.Value;
    aDadosFiscais := TabDadosFiscais.Value;
    aCustoU := TabCustoU.Value;
    Result := True;
  end else
    Result := False;
end;

end.
