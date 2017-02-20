unit ncaFrmConsumidor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  Vcl.StdCtrls, cxRadioGroup, cxLabel, cxButtons, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel;

type
  TFrmConsumidor = class(TForm)
    LMDSimplePanel5: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    LMDSimplePanel4: TLMDSimplePanel;
    lbTit: TcxLabel;
    rbRevenda: TcxRadioButton;
    rbConsumo: TcxRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    function Consumidor(var aConsumidor: Boolean): Boolean;
    { Public declarations }
  end;

var
  FrmConsumidor: TFrmConsumidor;

implementation

{$R *.dfm}

uses ncClassesBase, ncaDM;

procedure TFrmConsumidor.btnSalvarClick(Sender: TObject);
begin
  if (not rbRevenda.Checked) and (not rbConsumo.Checked) then
    raise Exception.Create('É necessário escolher uma das opções');
  ModalResult := mrOk;
end;

procedure TFrmConsumidor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function TFrmConsumidor.Consumidor(var aConsumidor: Boolean): Boolean;
begin
  ShowModal;
  if ModalResult=mrOk then begin
    Result := True;
    aConsumidor := rbConsumo.Checked;
  end else
    Result := False;
end;

end.
