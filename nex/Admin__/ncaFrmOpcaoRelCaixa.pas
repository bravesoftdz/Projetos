unit ncaFrmOpcaoRelCaixa;
{
    ResourceString: Dario 11/03/13
}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ncClassesBase, StdCtrls, CheckLst, cxLookAndFeelPainters, cxButtons, Menus,
  cxGraphics, cxLookAndFeels;

type
  TFrmOpcaoRelCaixa = class(TForm)
    cgTipo: TCheckListBox;
    btnTodos: TcxButton;
    btnNenhum: TcxButton;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    procedure btnTodosClick(Sender: TObject);
    procedure btnNenhumClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    PTipos : PArrayTipoTran;
    { Public declarations }
    procedure Selecionar(aTipos: PArrayTipoTran);
  end;

var
  FrmOpcaoRelCaixa: TFrmOpcaoRelCaixa;

implementation

// START resource string wizard section
resourcestring
  SResumoFinanceiro = 'Resumo Financeiro';
  SVendasMovimenta��oDeProdutos = 'Vendas/Movimenta��o de Produtos';
  SVendasPorCategoria = 'Vendas por Categoria';
  STransa��es = 'Transa��es';
  SSess�es = 'Sess�es';
  SPr�PagoP�sPago = 'Pr�-pago/P�s-Pago';
  SImpress�es = 'Impress�es';
  SMeiosPagamento = 'Meios de Pagamento';

// END resource string wizard section


{$R *.DFM}

procedure TFrmOpcaoRelCaixa.Selecionar(aTipos: PArrayTipoTran);
var I : Integer;
begin
  PTipos := aTipos;
  for I := 0 to cgTipo.Count-1 do
    cgTipo.Checked[I] := PTipos^[I];
  ShowModal;
end;

procedure TFrmOpcaoRelCaixa.btnTodosClick(Sender: TObject);
var I : Integer;
begin
  for I := 0 to cgTipo.Count-1 do
    cgTipo.Checked[I] := True;
end;

procedure TFrmOpcaoRelCaixa.btnNenhumClick(Sender: TObject);
var I : Integer;
begin
  for I := 0 to cgTipo.Count-1 do
    cgTipo.Checked[I] := False;
end;

procedure TFrmOpcaoRelCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmOpcaoRelCaixa.FormCreate(Sender: TObject);
begin
    cgTipo.Items.Add(SResumoFinanceiro);
    cgTipo.Items.Add(SMeiosPagamento);
    cgTipo.Items.Add(SVendasMovimenta��oDeProdutos);
    cgTipo.Items.Add(SVendasPorCategoria);
    cgTipo.Items.Add(STransa��es);
    {$IFNDEF LOJA}cgTipo.Items.Add(SSess�es);{$ENDIF}
    {$IFNDEF LOJA}cgTipo.Items.Add(SPr�PagoP�sPago);{$ENDIF}
    {$IFNDEF LOJA}cgTipo.Items.Add(SImpress�es);{$ENDIF}
end;

procedure TFrmOpcaoRelCaixa.btnOkClick(Sender: TObject);
var I : Integer;
begin
  for I := 0 to cgTipo.Count-1 do
    PTipos^[I] := cgTipo.Checked[I];
  Close;  
end;

procedure TFrmOpcaoRelCaixa.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.

