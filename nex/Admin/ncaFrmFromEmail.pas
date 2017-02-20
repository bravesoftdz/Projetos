unit ncaFrmFromEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxLabel, StdCtrls, cxButtons, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel;

type
  TFrmFromEmail = class(TForm)
    LMDSimplePanel3: TLMDSimplePanel;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    panNome: TLMDSimplePanel;
    lbValidoPor: TcxLabel;
    panEmail: TLMDSimplePanel;
    lbEmail: TcxLabel;
    edNome: TcxTextEdit;
    edEmail: TcxTextEdit;
    cxLabel1: TcxLabel;
    lbInfo: TcxLabel;
    lbInfo2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure lbEmailClick(Sender: TObject);
    procedure lbValidoPorClick(Sender: TObject);
    procedure edEmailFocusChanged(Sender: TObject);
    procedure edNomeFocusChanged(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    function Editar: Boolean;
  end;

var
  FrmFromEmail: TFrmFromEmail;

implementation

uses ncaFrmPri, ncClassesBase, ncaDM;

resourcestring
  rsInformarEmail = 'É necessário informar um endereço de e-mail';
  rsInformarNome  = 'É necessário informar um nome para aparecer no e-mail';
  
{$R *.dfm}

procedure TFrmFromEmail.btnOkClick(Sender: TObject);
begin
  if not EmailValido(edEmail.Text) then begin
    edEmail.SetFocus;
    raise Exception.Create(rsInformarEmail);
  end;

  if Trim(edNome.Text)='' then begin
    edNome.SetFocus;
    raise Exception.Create(rsInformarNome);
  end;
  ModalResult := mrOk;
end;

procedure TFrmFromEmail.edEmailFocusChanged(Sender: TObject);
begin
  if edEmail.Focused then
    lbInfo.Style.TextColor := clBlack else
    lbInfo.Style.TextColor := clGray;
end;

function TFrmFromEmail.Editar: Boolean;
begin
  ShowModal;

  if (ModalResult=mrOk) and ((gConfig.EmailOrc_FromName<>edNome.Text) or (gConfig.EmailOrc_FromEmail<>edEmail.Text)) then begin
    Result := True;
    gConfig.AtualizaCache;
    gConfig.EmailOrc_FromName := edNome.Text;
    gConfig.EmailOrc_FromEmail := edEmail.Text;
    Dados.CM.SalvaAlteracoesObj(gConfig, False);
  end else
    Result := False;  
end;

procedure TFrmFromEmail.edNomeFocusChanged(Sender: TObject);
begin
  if edNome.Focused then
    lbInfo2.Style.TextColor := clBlack else
    lbInfo2.Style.TextColor := clGray;
end;

procedure TFrmFromEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmFromEmail.FormCreate(Sender: TObject);
begin
  edNome.TExt := gConfig.EmailOrc_FromName;
  edEmail.Text := gConfig.EmailOrc_FromEmail;
  btnOk.Enabled := Dados.CM.UA.Admin;
end;

procedure TFrmFromEmail.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Esc   : Close;
  end;
end;

procedure TFrmFromEmail.lbEmailClick(Sender: TObject);
begin
  edEmail.SetFocus;
end;

procedure TFrmFromEmail.lbValidoPorClick(Sender: TObject);
begin
  edEmail.SetFocus;
end;

end.
