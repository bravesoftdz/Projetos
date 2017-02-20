unit ncaFrmEmailUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxBarBuiltInMenu, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxLabel, cxPC, Vcl.StdCtrls, cxButtons, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  dxGDIPlusClasses, Vcl.ExtCtrls;

type
  TFrmEmailUsuario = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    btnVoltar: TcxButton;
    btnAvancar: TcxButton;
    Paginas: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    LMDSimplePanel5: TLMDSimplePanel;
    LMDSimplePanel6: TLMDSimplePanel;
    Image2: TImage;
    edEmail2: TcxTextEdit;
    LMDSimplePanel4: TLMDSimplePanel;
    LMDSimplePanel3: TLMDSimplePanel;
    Image1: TImage;
    edEmail: TcxTextEdit;
    procedure PaginasChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FShowing : Boolean;
    { Private declarations }
    procedure Valida;
    procedure Salva; 

  public
    { Public declarations }

    class procedure ChecaEmailUsuarioAtual;
  end;

var
  FrmEmailUsuario: TFrmEmailUsuario;

implementation

{$R *.dfm}

uses ncaFrmPri, ncaStrings, ncaDM, ncClassesBase, uLicEXECryptor;

procedure TFrmEmailUsuario.btnAvancarClick(Sender: TObject);
begin
  case Paginas.ActivePageIndex of
    0 : Paginas.ActivePageIndex := 1;
    1 : begin  
      Valida;
      Salva;
    end;
  end;
end;

procedure TFrmEmailUsuario.btnVoltarClick(Sender: TObject);
begin
  Paginas.ActivePageIndex := 0;
end;

class procedure TFrmEmailUsuario.ChecaEmailUsuarioAtual;
begin
  if Dados.CM.UA.Email>'' then Exit;
  with Dados, CM, UA do begin
    if Admin and SameText(Username, 'admin') then begin
      if (Trim(Email)='') and (gConfig.StatusConta in [scFree, scPremium]) then
      begin
        UA.AtualizaCache;
        UA.Email := gConfig.Conta;
        CM.SalvaAlteracoesObj(UA, False);
      end;
    end else
      if Senha<>'' then TFrmEmailUsuario.Create(nil).ShowModal;
  end;
end;

procedure TFrmEmailUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEmailUsuario.FormCreate(Sender: TObject);
begin
  FShowing := False;
  Paginas.HideTabs := True;
end;

procedure TFrmEmailUsuario.FormShow(Sender: TObject);
begin
  edEmail.Text := Dados.CM.UA.Email;
  edEmail2.Text := Dados.CM.UA.Email;
  FShowing := True;
  Paginas.ActivePageIndex := 0;
  edEmail.SetFocus;
end;

procedure TFrmEmailUsuario.PaginasChange(Sender: TObject);
begin
  btnVoltar.Enabled := (Paginas.ActivePageIndex>0);

  case Paginas.ActivePageIndex of
    0 : if FShowing then edEmail.SetFocus;  
    1 : if FShowing then edEmail2.SetFocus;
  end;
end;

procedure TFrmEmailUsuario.Salva;
begin
  with Dados do begin
    CM.UA.AtualizaCache;
    CM.UA.Email := edEmail.Text;
    CM.SalvaAlteracoesObj(CM.UA, False);
  end;
  ModalResult := mrOk;
end;

procedure TFrmEmailUsuario.Valida;
begin
  if not SameText(edEmail.Text, edEmail2.Text) then
    raise Exception.Create(rsEmailDif);

  if Trim(edEmail.Text)='' then
    raise Exception.Create(rsEmailObrigatorio);
end;

end.
     