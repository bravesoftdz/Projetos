unit ncaFrmConsultaPreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxLabel, cxTextEdit, cxClasses, dxLayoutControl, Data.DB,
  nxdb, cxMemo, cxRichEdit, Vcl.StdCtrls;

type
  TfrmConsultaPreco = class(TForm)
    tPro: TnxTable;
    tProID: TAutoIncField;
    tProPreco: TCurrencyField;
    tProPodeAlterarPreco: TBooleanField;
    tProPermiteVendaFracionada: TBooleanField;
    tProCustoUnitario: TCurrencyField;
    tProCadastroRapido: TBooleanField;
    tProImagem: TGraphicField;
    tProNaoControlaEstoque: TBooleanField;
    tProAbaixoMin: TBooleanField;
    tProAbaixoMinDesde: TDateTimeField;
    tProAtivo: TBooleanField;
    tProIncluidoEm: TDateTimeField;
    tProPrecoAuto: TBooleanField;
    tProMargem: TFloatField;
    tProFornecedor: TLongWordField;
    tProEstoqueAtual: TFloatField;
    tProEstoqueMin: TFloatField;
    tProEstoqueMax: TFloatField;
    tProEstoqueRepor: TFloatField;
    tProComissaoPerc: TFloatField;
    tProComissaoLucro: TBooleanField;
    tProFidelidade: TBooleanField;
    tProFidPontos: TIntegerField;
    tProEstoquePend: TFloatField;
    tProEstoqueTot: TFloatField;
    tProNCM: TStringField;
    tProbrtrib: TWordField;
    tProNCM_Ex: TStringField;
    tProtax_id: TLongWordField;
    tProcest: TLongWordField;
    tProTaxIDNorm: TLongWordField;
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
    tProRecVer: TLongWordField;
    edtCodigo: TEdit;
    Label1: TLabel;
    lblEstoque: TLabel;
    lblQtdEstoque: TLabel;
    lblPreco: TLabel;
    lblDescricao: TMemo;
    procedure FormShow(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    procedure limpaCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaPreco: TfrmConsultaPreco;

implementation

{$R *.dfm}

uses ncClassesBase, ncaDM;

procedure TfrmConsultaPreco.edtCodigoKeyPress(Sender: TObject; var Key: Char);
function FormatValor(aValor: Extended): String;
var P: Integer;
begin
  Str(aValor:0:2, Result);
  P := Pos('.', Result);
  Result[P] := ',';
end;

begin
  if key = #27 then
    close;

  if key = #13 then
  begin
    tPro.Active := true;
    tPro.setRange([edtCodigo.text],[edtCodigo.text]);

    if not tPro.Eof then
    begin
      lblqtdEstoque.Caption := tProEstoqueAtual.AsString;
      lblPreco.Caption := 'R$ ' + FormatValor(tProPreco.value);
      lblDescricao.Lines.Add (tProDescricao.Value);
      edtCodigo.Clear;
      edtCodigo.SetFocus;
    end
    else
    begin
      limpaCampos;
      raise Exception.Create('Produto não encontrado!');
    end;
  end;
end;

procedure TfrmConsultaPreco.FormShow(Sender: TObject);
begin
  limpaCampos;
end;

procedure TfrmConsultaPreco.limpaCampos;
begin
  lblqtdEstoque.Caption := '0';
  lblPreco.Caption := 'R$ 0,00';
  lblDescricao.Lines.clear;
  edtCodigo.Clear;
  edtCodigo.SetFocus;
end;

end.
