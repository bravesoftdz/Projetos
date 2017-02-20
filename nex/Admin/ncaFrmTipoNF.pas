unit ncaFrmTipoNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  Vcl.StdCtrls, cxRadioGroup, cxLabel, cxButtons, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel;

type
  TFrmTipoNF = class(TForm)
    LMDSimplePanel5: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    LMDSimplePanel4: TLMDSimplePanel;
    lbTit: TcxLabel;
    cbCupom: TcxRadioButton;
    cbNFe: TcxRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function ObtemTipoNF(var aTipo: Byte): Boolean;
    { Public declarations }
  end;

var
  FrmTipoNF: TFrmTipoNF;

implementation

{$R *.dfm}

uses ncClassesBase, ncaDM;

procedure TFrmTipoNF.btnSalvarClick(Sender: TObject);
begin
  if (not cbCupom.Checked) and (not cbNFe.Checked) then
    raise Exception.Create('É necessário escolher uma das opções');
  ModalResult := mrOk;
end;

procedure TFrmTipoNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTipoNF.FormCreate(Sender: TObject);
begin
  cbCupom.Caption := Dados.tNFConfigNFStr.Value;
end;

function TFrmTipoNF.ObtemTipoNF(var aTipo: Byte): Boolean;
begin
  ShowModal;
  if ModalResult=mrOk then begin
    Result := True;
    if cbNFe.Checked then
      aTipo := tiponfe_nfe
    else
    if Dados.tNFConfigESAT.Value then
      aTipo := tiponfe_sat else
      aTipo := tiponfe_nfce;
  end else
    Result := False;
end;

end.
