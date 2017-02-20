unit ncaFrmQtdDev;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxCurrencyEdit, Vcl.StdCtrls, cxButtons, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel;

type
  TFrmQtdDev = class(TForm)
    LMDSimplePanel2: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    panPerc: TLMDSimplePanel;
    edQtd: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    lbProduto: TcxLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FMax : Double;
    FFrac : Boolean;
    { Private declarations }
  public
    { Public declarations }
    function ObtemQtd(aProd: Cardinal; aQtdMax: Double; var aQtd: Double): Boolean;
  end;

var
  FrmQtdDev: TFrmQtdDev;

implementation

{$R *.dfm}

uses ncaDM;

resourcestring 
   rsQtdMaior = 'Quantidade a ser devolvida não pode ser maior que a quantidade vendida';
   rsNaoFraciona = 'Esse produto não pode ser fracionado';

{ TFrmQtdDev }

procedure TFrmQtdDev.btnSalvarClick(Sender: TObject);
begin
  edQtd.PostEditValue;
  if edQtd.Value > FMax then 
  begin
    edQtd.Value := FMax;
    edQtd.SetFocus;
    raise exception.Create(rsQtdMaior);
  end;

  if not FFrac and (frac(edQtd.Value)>0) then begin
    edQtd.Value := trunc(edQtd.Value);
    edQtd.SelectAll;
    edQtd.SetFocus;
    Raise exception.Create(rsNaoFraciona);
  end;  

  ModalResult := mrOk;
end;

procedure TFrmQtdDev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function TFrmQtdDev.ObtemQtd(aProd: Cardinal; aQtdMax: Double;
  var aQtd: Double): Boolean;
begin
  FMax := aQtdMax;
  lbProduto.Caption := '';
  with Dados do 
  if tbPro.Locate('ID', aProd, []) then 
  begin
    lbProduto.Caption := tbProDescricao.Value;
    FFrac := tbProPermiteVendaFracionada.Value;
    if (not FFrac) and (aQtdMax=1) then
    begin
      Result := True;
      aQtd := aQtdMax;
      Exit;
    end;
  end else 
    FFrac := False;

  edQtd.Value := aQtdMax;
  ShowModal;

  Result := (ModalResult=mrOk) and (edQtd.Value>0);

  if Result then aQtd := edQtd.Value;
end;

end.
