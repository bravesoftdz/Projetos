unit ncaFrmNCM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, cxTextEdit, cxLabel,
  cxMaskEdit;

type
  TFrmNCM = class(TForm)
    lbPrompt: TcxLabel;
    LMDSimplePanel1: TLMDSimplePanel;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    cxLabel1: TcxLabel;
    edCod: TcxMaskEdit;
    edDescr: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }

    function Editar(var aCod, aDescr: String): Boolean;
  end;

var
  FrmNCM: TFrmNCM;

implementation

uses ncaFrmPri;

{$R *.dfm}

resourcestring
  rsNCM8Dig = 'O código de NCM deve ter 8 dígitos';
  rsNCMDescrBranco = 'É necessário informar uma descricao do NCM';

procedure TFrmNCM.btnOkClick(Sender: TObject);
begin
  edDescr.PostEditValue;
  edCod.PostEditValue;

  if Length(Trim(edCod.Text)) <> 8 then begin
    edCod.SetFocus;
    raise exception.Create(rsNCM8Dig);
  end;  

  if Trim(edDescr.Text)='' then begin
    edDescr.SetFocus;
    raise exception.Create(rsNCMDescrBranco);
  end;

  ModalResult := mrOk;
end;

function TFrmNCM.Editar(var aCod, aDescr: String): Boolean;
begin
  edCod.Text := aCod;
  edDescr.Text := aDescr;
  ShowModal;
  if (ModalResult=mrOk) and ((edCod.Text<>aCod) or (Trim(edDescr.Text)<>aDescr)) then begin
    aCod := edCod.Text;
    aDescr := edDescr.Text;
    Result := True;
  end else
    Result := False;
end;

procedure TFrmNCM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmNCM.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) then begin
    if edCod.Focused then 
      edDescr.SetFocus
    else  
    if edDescr.Focused then
      btnOk.SetFocus;
       
    Key := #0;
  end;
end;

end.
