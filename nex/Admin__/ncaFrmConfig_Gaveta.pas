unit ncaFrmConfig_Gaveta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncaFrmBaseOpcaoImgTxtCheckBox,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, cxCheckBox,
  dxGDIPlusClasses, Vcl.ExtCtrls, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, cxTextEdit, LMDThemedComboBox,
  LMDCustomComboBox, LMDPrinterComboBox;

type
  TFrmConfig_Gaveta = class(TFrmBaseOpcaoImgTxtCheckBox)
    lbImp: TcxLabel;
    edImp: TLMDPrinterComboBox;
    lbF11: TcxLabel;
    edCmd: TcxTextEdit;
    lbCmd: TcxLabel;
    procedure CBClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Ler; override;
    procedure Salvar; override;
    function Alterou: Boolean; override;

    procedure Renumera; override;

    function NumItens: Integer; override;

    procedure Atualiza;
  
    { Public declarations }
  end;

var
  FrmConfig_Gaveta: TFrmConfig_Gaveta;

implementation

{$R *.dfm}

uses ncaConfigRecibo;

{ TFrmConfig_Gaveta }

resourcestring
  rsImpNecessario = 'É necessário informar a impressora onde a gaveta está conectada';
  rsCmdNecessario = 'É necessário informar o comando a ser enviado para a impressora ' + 
                    'para que ela faça a abertura da gaveta. Faça contato com a Nextar '+ 
                    'para saber qual é o comando correto para seu modelo de impressora.';

function TFrmConfig_Gaveta.Alterou: Boolean;
begin
  Result :=
   (gRecibo.MostrarGaveta <> CB.Checked) or
   (gRecibo.Values['imp_gaveta'] <> edImp.Text) or
   (gRecibo.StrAbreGaveta <> edCmd.Text);
end;

procedure TFrmConfig_Gaveta.Atualiza;
begin
  lbDescr.Enabled := CB.Checked;
  lbImp.Enabled := CB.Checked;
  edImp.Enabled := CB.Checked;
  lbCmd.Enabled := CB.Checked;
  edCmd.Enabled := CB.Checked;
  lbF11.Enabled := CB.Checked;
end;

procedure TFrmConfig_Gaveta.CBClick(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

procedure TFrmConfig_Gaveta.Ler;
begin
  inherited;
  CB.Checked := gRecibo.MostrarGaveta;
  edImp.ItemIndex := edImp.Items.IndexOf(gRecibo.Values['imp_gaveta']);
  edCmd.Text := gRecibo.CmdAbreGaveta;
  Atualiza;
end;

function TFrmConfig_Gaveta.NumItens: Integer;
begin
  Result := 3;
end;

procedure TFrmConfig_Gaveta.Renumera;
begin
  CB.Caption := IntToStr(InicioNumItem) + '. ' + CB.Caption;
  lbImp.Caption := IntToStr(InicioNumItem+1) + '. ' + lbImp.Caption;
  lbCmd.Caption := IntToStr(InicioNumItem+2) + '. ' + lbCmd.Caption;
end;

procedure TFrmConfig_Gaveta.Salvar;
begin
  inherited;
  if CB.Checked then begin
    if edImp.Text='' then
      raise Exception.Create(rsImpNecessario);
    if Trim(edCmd.Text)='' then
      raise Exception.Create(rsCmdNecessario);  
  end;
  gRecibo.MostrarGaveta := CB.Checked;
  gRecibo.Values['imp_gaveta'] := edImp.Text;
  gRecibo.CmdAbreGaveta := edCmd.Text;
  gRecibo.Save;
end;

end.
