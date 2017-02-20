unit ncaFrmNFeDepend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel;

type
  TFrmNFeDepend = class(TForm)
    lbPrompt: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    btnSalvar: TcxButton;
    lbInfo: TcxLabel;
    btnCancelar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    class function TipoNFStr: String;
  public
    { Public declarations }
    class function DependOk: Boolean;
  end;

var
  FrmNFeDepend: TFrmNFeDepend;

implementation

{$R *.dfm}

uses ncaDM, ncaProgressoDepend, ncClassesBase;

procedure TFrmNFeDepend.btnCancelarClick(Sender: TObject);
var S: String;
begin
  ShowMessage('A emiss�o de NF-e est� ativada para sua loja. � necess�rio instalar componentes adicionais para emiss�o de NF, sem isso n�o � poss�vel realizar novas vendas');
  Close;
end;

procedure TFrmNFeDepend.btnSalvarClick(Sender: TObject);
begin
  NotifySucessoDepend := True;
  ncaDM.NotityErroDepend := True;
  Dados.CM.InstalaNFeDepend;
  ModalResult := mrOk;
end;

class function TFrmNFeDepend.DependOk: Boolean;
begin
  Result := True;

  with Dados do begin
    if not tNFConfigEmitirNFe.Value then Exit;
    Result := tNFConfigDependNFeOk.Value;
  end;

  if not Result then begin
    if Assigned(panProgressoDepend) then
      ShowMessage('Para realizar vendas � necess�rio aguardar o t�rmino da instala��o dos arquivos necess�rios para emiss�o de NF-e')
    else 
      TFrmNFeDepend.Create(nil).ShowModal;
  end;
end;

procedure TFrmNFeDepend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

class function TFrmNFeDepend.TipoNFStr: String;
begin
  Result := 'NF-e';
end;

end.
