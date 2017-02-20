unit ncaFrmReativarNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel;

type
  TFrmReativarNF = class(TForm)
    cxLabel1: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    btnReativar: TcxButton;
    cxLabel2: TcxLabel;
    btnNao: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnReativarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReativarNF: TFrmReativarNF;

implementation

{$R *.dfm}

uses ncaDM, ufmImagens;

procedure TFrmReativarNF.btnReativarClick(Sender: TObject);
begin
  Dados.tNFConfig.Edit;
  Dados.tNFConfigRemoverNFCe.Value := False;
  Dados.tNFConfig.Post;
  Close;
end;

procedure TFrmReativarNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmReativarNF.FormCreate(Sender: TObject);
begin
  btnReativar.Enabled := Dados.CM.UA.Admin;
end;

end.
