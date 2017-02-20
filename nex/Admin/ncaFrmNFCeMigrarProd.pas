unit ncaFrmNFCeMigrarProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel;

type
  TFrmNFCeMigrarProd = class(TForm)
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
  FrmNFCeMigrarProd: TFrmNFCeMigrarProd;

implementation

{$R *.dfm}

uses ncaDM;

procedure TFrmNFCeMigrarProd.btnAtivarClick(Sender: TObject);
begin
  Dados.tNFConfig.Edit;
  Dados.tNFConfigtpAmb.Value := 1;
  Dados.tNFConfig.Post;
  Close;
end;

procedure TFrmNFCeMigrarProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmNFCeMigrarProd.FormCreate(Sender: TObject);
begin
  btnAtivar.Enabled := Dados.CM.UA.Admin;
end;

end.
