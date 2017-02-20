unit ncaFrmConfig_Pais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel;

type
  TFrmPais = class(TForm)
    edPais: TcxImageComboBox;
    cxLabel1: TcxLabel;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPais: TFrmPais;

implementation

{$R *.dfm}

uses ncaDM, ncClassesBase, ncaFrmPri, ncServAtualizaLic_Indy;

procedure TFrmPais.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmPais.btnOkClick(Sender: TObject);
var S: String;
begin
  if gConfig.Pais<>edPais.EditValue then begin
    gConfig.AtualizaCache;
    gConfig.Pais := edPais.EditValue;
    Dados.CM.SalvaAlteracoesObj(gConfig, False);

    S := GetApp;
    if S>'' then 
      Dados.CM.SalvaApp(S);
  end;
  Close;
end;

procedure TFrmPais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPais.FormCreate(Sender: TObject);
begin
  edPais.EditValue := gConfig.PaisNorm;
  btnOk.Enabled := Dados.CM.UA.Admin;
end;

end.
