unit ncaFrmTipos;
{
    ResourceString: Dario 11/03/13
}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ncClassesBase, StdCtrls, CheckLst, cxLookAndFeelPainters, cxButtons, Menus,
  cxGraphics, cxLookAndFeels;

type
  TFrmTipos = class(TForm)
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
  FrmTipos: TFrmTipos;

implementation

// START resource string wizard section
resourcestring
  SInicioDeSess�o = 'Inicio de Sess�o';
  SFimDeSess�o = 'Fim de Sess�o';
  SCr�ditoDeTempo = 'Cr�dito de Tempo';
  SD�bitoDeTempo = 'D�bito de Tempo';
  SVenda = 'Venda';
  SCompra = 'Compra';
  SEntradaEstoque = 'Entrada Estoque';
  SSa�daEstoque = 'Sa�da Estoque';
  SPagamentoDeD�bito = 'Pagamento de D�bito';
  SSuprimentoCaixa = 'Suprimento Caixa';
  SSangriaCaixa = 'Sangria Caixa';
  SImpress�o = 'Impress�o';
  STransfer�nciaDeM�quina = 'Transfer�ncia de M�quina';
  SCorre��oDeCaixa = 'Corre��o de Caixa';
  SCorre��oDePontosFidelidade = 'Corre��o de Pontos Fidelidade';

// END resource string wizard section


{$R *.DFM}

procedure TFrmTipos.Selecionar(aTipos: PArrayTipoTran);
var I : Integer;
begin
  PTipos := aTipos;
  for I := 0 to cgTipo.Count-1 do
    cgTipo.Checked[I] := PTipos^[I];
  ShowModal;
end;

procedure TFrmTipos.btnTodosClick(Sender: TObject);
var I : Integer;
begin
  for I := 0 to cgTipo.Count-1 do
    cgTipo.Checked[I] := True;
end;

procedure TFrmTipos.btnNenhumClick(Sender: TObject);
var I : Integer;
begin
  for I := 0 to cgTipo.Count-1 do
    cgTipo.Checked[I] := False;
end;

procedure TFrmTipos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTipos.FormCreate(Sender: TObject);
begin
    {$IFNDEF LOJA}cgTipo.Items.Add(SInicioDeSess�o);{$ENDIF}
    {$IFNDEF LOJA}cgTipo.Items.Add(SFimDeSess�o);{$ENDIF}
    {$IFNDEF LOJA}cgTipo.Items.Add(SCr�ditoDeTempo);{$ENDIF}
    {$IFNDEF LOJA}cgTipo.Items.Add(SD�bitoDeTempo);{$ENDIF}
    cgTipo.Items.Add(SVenda);
    cgTipo.Items.Add(SCompra);
    cgTipo.Items.Add(SEntradaEstoque);
    cgTipo.Items.Add(SSa�daEstoque);
    cgTipo.Items.Add(SPagamentoDeD�bito);
    cgTipo.Items.Add(SSuprimentoCaixa);
    cgTipo.Items.Add(SSangriaCaixa);
    {$IFNDEF LOJA}cgTipo.Items.Add(SImpress�o);{$ENDIF}
    cgTipo.Items.Add(STransfer�nciaDeM�quina);
    cgTipo.Items.Add(SCorre��oDeCaixa);
    cgTipo.Items.Add(SCorre��oDePontosFidelidade);
end;

procedure TFrmTipos.btnOkClick(Sender: TObject);
var I : Integer;
begin
  for I := 0 to cgTipo.Count-1 do
    PTipos^[I] := cgTipo.Checked[I];
  Close;  
end;

procedure TFrmTipos.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.

