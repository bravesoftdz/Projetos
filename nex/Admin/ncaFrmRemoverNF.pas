unit ncaFrmRemoverNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel;

type
  TFrmRemoverNF = class(TForm)
    cxLabel1: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    btnRemover: TcxButton;
    cxLabel2: TcxLabel;
    btnNao: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRemoverNF: TFrmRemoverNF;

implementation

{$R *.dfm}

uses ncaDM, ufmImagens;

procedure TFrmRemoverNF.btnRemoverClick(Sender: TObject);
begin
  Dados.tNFConfig.Edit;
  Dados.tNFConfigRemoverNFCe.Value := True;
  Dados.tNFConfig.Post;
  Close;
end;

procedure TFrmRemoverNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmRemoverNF.FormCreate(Sender: TObject);
begin
  btnRemover.Enabled := Dados.CM.UA.Admin;
end;

end.
