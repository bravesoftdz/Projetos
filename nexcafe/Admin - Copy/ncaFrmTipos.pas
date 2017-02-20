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
  SInicioDeSessão = 'Inicio de Sessão';
  SFimDeSessão = 'Fim de Sessão';
  SCréditoDeTempo = 'Crédito de Tempo';
  SDébitoDeTempo = 'Débito de Tempo';
  SVenda = 'Venda';
  SCompra = 'Compra';
  SEntradaEstoque = 'Entrada Estoque';
  SSaídaEstoque = 'Saída Estoque';
  SPagamentoDeDébito = 'Pagamento de Débito';
  SSuprimentoCaixa = 'Suprimento Caixa';
  SSangriaCaixa = 'Sangria Caixa';
  SImpressão = 'Impressão';
  STransferênciaDeMáquina = 'Transferência de Máquina';
  SCorreçãoDeCaixa = 'Correção de Caixa';
  SCorreçãoDePontosFidelidade = 'Correção de Pontos Fidelidade';

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
    {$IFNDEF LOJA}cgTipo.Items.Add(SInicioDeSessão);{$ENDIF}
    {$IFNDEF LOJA}cgTipo.Items.Add(SFimDeSessão);{$ENDIF}
    {$IFNDEF LOJA}cgTipo.Items.Add(SCréditoDeTempo);{$ENDIF}
    {$IFNDEF LOJA}cgTipo.Items.Add(SDébitoDeTempo);{$ENDIF}
    cgTipo.Items.Add(SVenda);
    cgTipo.Items.Add(SCompra);
    cgTipo.Items.Add(SEntradaEstoque);
    cgTipo.Items.Add(SSaídaEstoque);
    cgTipo.Items.Add(SPagamentoDeDébito);
    cgTipo.Items.Add(SSuprimentoCaixa);
    cgTipo.Items.Add(SSangriaCaixa);
    {$IFNDEF LOJA}cgTipo.Items.Add(SImpressão);{$ENDIF}
    cgTipo.Items.Add(STransferênciaDeMáquina);
    cgTipo.Items.Add(SCorreçãoDeCaixa);
    cgTipo.Items.Add(SCorreçãoDePontosFidelidade);
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

