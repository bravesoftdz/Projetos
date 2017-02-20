unit ncaFrmNFCeDepend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel;

type
  TFrmNFCeDepend = class(TForm)
    lbPrompt: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    btnSalvar: TcxButton;
    lbInfo: TcxLabel;
    btnCancelar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    class function TipoNFStr: String;
  public
    { Public declarations }
    class function DependOk: Boolean;
  end;

var
  FrmNFCeDepend: TFrmNFCeDepend;

implementation

{$R *.dfm}

uses ncaDM, ncaProgressoDepend, ncClassesBase;

procedure TFrmNFCeDepend.btnCancelarClick(Sender: TObject);
var S: String;
begin
  ShowMessage('A emissão de '+TipoNFStr+' está ativada para sua loja. É necessário instalar componentes adicionais para emissão de NF, sem isso não é possível realizar novas vendas');
  Close;
end;

procedure TFrmNFCeDepend.btnSalvarClick(Sender: TObject);
begin
  NotifySucessoDepend := True;
  ncaDM.NotityErroDepend := True;
  Dados.CM.InstalaNFCeDepend;
  ModalResult := mrOk;
end;

class function TFrmNFCeDepend.DependOk: Boolean;
begin
  Result := True;

  with Dados do begin
    if not tNFConfigEmitirNFCe.Value then Exit;
    if tNFConfigESAT.Value then
      Result := tNFConfigDependSATOk.Value else
      Result := tNFConfigDependNFCEOk.Value;
  end;

  if not Result then begin
    if Assigned(panProgressoDepend) then
      ShowMessage('Para realizar vendas é necessário aguardar o término da instalação dos arquivos necessários para emissão de '+TipoNFStr) 
    else 
      TFrmNFCeDepend.Create(nil).ShowModal;
  end;
end;

procedure TFrmNFCeDepend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmNFCeDepend.FormCreate(Sender: TObject);
begin
  lbPrompt.Caption := Format(lbPrompt.Caption, [TipoNFStr]);
  lbInfo.Caption := Format(lbInfo.Caption, [TipoNFStr]);
end;

class function TFrmNFCeDepend.TipoNFStr: String;
begin
  if Dados.tNFConfigTipo.Value=nfcfg_sat then
    Result := 'CF-e Sat' else
    Result := 'NFC-e';
end;

end.
