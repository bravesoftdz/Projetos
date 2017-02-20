unit ncaFrmNFeMigrarProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel;

type
  TFrmNFeMigrarProd = class(TForm)
    cxLabel1: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    btnAtivar: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    btnNao: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAtivarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNFeMigrarProd: TFrmNFeMigrarProd;

implementation

{$R *.dfm}

uses ncaDM;

procedure TFrmNFeMigrarProd.btnAtivarClick(Sender: TObject);
begin
  Dados.tNFConfig.Edit;
  Dados.tNFConfigtpAmbNFe.Value := 1;
  Dados.tNFConfig.Post;
  Close;
end;

procedure TFrmNFeMigrarProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmNFeMigrarProd.FormCreate(Sender: TObject);
begin
  btnAtivar.Enabled := Dados.CM.UA.Admin;
end;

end.
