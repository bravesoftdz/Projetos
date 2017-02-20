unit ncaFrmSubject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxLabel, StdCtrls, cxButtons, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, LMDTypes, 
  LMDBaseControl, LMDBaseGraphicControl, LMDGraphicControl, LMDHTMLLabel;

type
  TFrmSubject = class(TForm)
    LMDSimplePanel3: TLMDSimplePanel;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    panEmail: TLMDSimplePanel;
    edAssunto: TcxTextEdit;
    cxLabel1: TcxLabel;
    lbBD: TLMDHTMLLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbBDLinkClick(Sender: TObject; HRef: TLMDString);
  private
    { Private declarations }
  public
    { Public declarations }
    function Editar: Boolean;
  end;

var
  FrmSubject: TFrmSubject;

implementation

uses ncaFrmPri, ncClassesBase, ncaDM, ncaFrmAposOrc;

resourcestring
  rsInformarEmail = 'É necessário informar um endereço de e-mail';
  rsInformarNome  = 'É necessário informar um nome para aparecer no e-mail';
  
{$R *.dfm}

procedure TFrmSubject.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

function TFrmSubject.Editar: Boolean;
begin
  ShowModal;

  if (ModalResult=mrOk) and (gConfig.EmailOrc_Subject<>edAssunto.Text) then begin
    Result := True;
    gConfig.AtualizaCache;
    gConfig.EmailOrc_Subject := edAssunto.Text;
    Dados.CM.SalvaAlteracoesObj(gConfig, False);
  end else
    Result := False;  
end;

procedure TFrmSubject.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmSubject.FormCreate(Sender: TObject);
begin
  edAssunto.Text := gConfig.EmailOrc_Subject;
  if edAssunto.Text='' then
    edAssunto.Text := ncaFrmAposOrc.rsSubjectDef
  else
  if edAssunto.Text='blank' then
    edAssunto.Text := '';
  
  btnOk.Enabled := Dados.CM.UA.Admin;
end;

procedure TFrmSubject.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Esc   : Close;
  end;
end;

procedure TFrmSubject.lbBDLinkClick(Sender: TObject; HRef: TLMDString);
var C: Integer;
begin
  with edAssunto do begin
    C := CursorPos;
    Text := Copy(Text, 1, C) + '['+HRef+']' + Copy(Text, C+1, 200);
    edAssunto.SelStart := C+Length(Text);
    edAssunto.SelLength := 0;
  end;
end;

end.
