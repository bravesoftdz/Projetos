unit ncaFrmEditObs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, StdCtrls, cxButtons, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  cxCheckBox, dxBarBuiltInMenu, cxPC;

type
  TFrmEditObs = class(TForm)
    LMDSimplePanel2: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    cbPadrao: TcxCheckBox;
    edObs: TcxMemo;
    edNF: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    function Editar(var aObs: String; var aNF: Boolean; const aOrcamento: Boolean = False; const aVenda: Boolean = False): Boolean;
    { Public declarations }
  end;

var
  FrmEditObs: TFrmEditObs;

implementation

uses ncaFrmPri, ncaDM, ncClassesBase;

{$R *.dfm}

{ TForm1 }

function TFrmEditObs.Editar(var aObs: String; var aNF: Boolean; const aOrcamento: Boolean = False; const aVenda: Boolean = False): Boolean;
begin
  edObs.Lines.Text := aObs;
  edNF.Checked := aNF;
  edNF.Visible := aVenda and (Dados.NFAtivo or aNF);
  cbPadrao.Visible := Dados.CM.UA.Admin and aOrcamento;
  
  ShowModal;
  if ModalResult=mrOk then begin
    Result := True;
    aObs := Trim(edObs.Lines.Text);
    aNF := edNF.Checked;
    if cbPadrao.Checked then begin
      gConfig.AtualizaCache;
      gConfig.ObsPadraoOrcamento := aObs;
      Dados.CM.SalvaAlteracoesObj(gConfig, False);
    end;
  end else
    Result := False;
end;

procedure TFrmEditObs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEditObs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_F2    : if btnSalvar.Enabled then btnSalvar.Click;
    Key_Esc   : Close;
  end;
end;

procedure TFrmEditObs.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [#27] then Key := #0;
end;

end.
