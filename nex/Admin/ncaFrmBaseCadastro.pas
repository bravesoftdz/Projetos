unit ncaFrmBaseCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBar, cxClasses, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, cxEdit;

type
  TFrmBaseCadastro = class(TForm)
    panPri: TLMDSimplePanel;
    BarMgr: TdxBarManager;
    BarMgrBar1: TdxBar;
    cmGravar: TdxBarLargeButton;
    cmCancelar: TdxBarLargeButton;
    defStyle: TcxDefaultEditStyleController;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cmGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Validar; virtual;
    procedure Salvar; virtual; abstract;
    { Public declarations }
  end;

var
  FrmBaseCadastro: TFrmBaseCadastro;

implementation

{$R *.dfm}

uses ncaFrmPri, ufmImagens;

procedure TFrmBaseCadastro.cmGravarClick(Sender: TObject);
begin
  Validar;
  Salvar;
  ModalResult := mrOk;
end;

procedure TFrmBaseCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmBaseCadastro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_F2    : cmGravar.Click;
    Key_Esc   : Close;
  end;
end;

procedure TFrmBaseCadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [#13, #27] then Key := #0;
end;

procedure TFrmBaseCadastro.Validar;
begin
end;

end.
