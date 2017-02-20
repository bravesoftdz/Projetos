unit ncaEditEmail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, Vcl.Menus, cxCheckBox, Vcl.StdCtrls, cxButtons,
  dxGDIPlusClasses, Vcl.ExtCtrls;

type
  TFrmEditEmail = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    LMDSimplePanel2: TLMDSimplePanel;
    panEmail: TLMDSimplePanel;
    Image3: TImage;
    edEmail: TcxMaskEdit;
    LMDSimplePanel4: TLMDSimplePanel;
    cxLabel3: TcxLabel;
    LMDSimplePanel5: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Editar(var aEmail: String): Boolean;
  end;

var
  FrmEditEmail: TFrmEditEmail;

implementation

{$R *.dfm}

uses ncaFrmPri, ncClassesBase, ncaDM;

{ TFrmDadosNFCe }


procedure TFrmEditEmail.btnSalvarClick(Sender: TObject);
begin
  if edEmail.Text>'' then
  if not EmailValido(edEmail.Text) then begin
    edEmail.SetFocus;
    raise Exception.Create('O Email informado não está correto.');
  end;
  
  ModalResult := mrOk;
end;

function TFrmEditEmail.Editar(var aEmail: String): Boolean;
begin
  edEmail.Text := aEmail;
  ShowModal;
  Result := (ModalResult=mrOk);
  if Result then aEmail := edEmail.Text;
end;

procedure TFrmEditEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEditEmail.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Esc   : ModalResult := mrCancel;
  end;
end;

procedure TFrmEditEmail.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#27]) then Key := #0;
end;

end.
