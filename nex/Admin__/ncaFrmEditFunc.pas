unit ncaFrmEditFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, PngImage, ExtCtrls, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, Menus,
  StdCtrls, cxButtons, ImgList, ncMyImage, ncaFrmCliPesq2, System.ImageList;

type
  TFrmEditFunc = class(TForm)
    panPri: TLMDSimplePanel;
    lbNome: TcxLabel;
    imgs: TcxImageList;
    Img: TMyImage;
    procedure FormCreate(Sender: TObject);
    procedure lbNomeClick(Sender: TObject);
    procedure ImgClick(Sender: TObject);
  private
    FUsername: String;
    FNome: String;
    FPodeAlterar: Boolean;
    procedure SetUsername(const Value: String);
    procedure SetNome(const Value: String);
  public
    procedure Pesquisa(const aMostraMsg: Boolean = False);

    procedure Update;

    property PodeAlterar: Boolean
      read FPodeAlterar write FPodeAlterar;

    { Private declarations }
    property Username: String read FUsername write SetUsername;

    property Nome: String
      read FNome write SetNome;
  end;

var
  FrmEditFunc: TFrmEditFunc;

implementation

uses ncaDM, ncaFrmFuncPesq, ncIDRecursos, ncaStrings;

{$R *.dfm}

resourcestring
  rsSelecioneUsuario = 'Selecione um usuário';

{ TFrmEditContato }

procedure TFrmEditFunc.FormCreate(Sender: TObject);
begin
  FUsername := ''; 
  FNome := '';
  FPodeAlterar := True;
end;

procedure TFrmEditFunc.ImgClick(Sender: TObject);
begin
  Pesquisa;
end;

procedure TFrmEditFunc.lbNomeClick(Sender: TObject);
begin
  Pesquisa;
  lbNome.Invalidate;
  lbNome.Update;
end;

procedure TFrmEditFunc.Pesquisa(const aMostraMsg: Boolean = False);
var F: TFrmFuncPesq;
begin
  if (FUsername>'') and (not PodeAlterar) then begin
    ShowMessage(rsSemPermissaoAlterar);
    Exit;
  end;
    
  F := gFuncPesqList.GetFrm;
  try
    if F.Pesquisar(FUsername, FNome, aMostraMsg) then Update;
  finally
    gFuncPesqList.ReleaseFrm(F);
  end;
end;

procedure TFrmEditFunc.SetUsername(const Value: String);
begin
  FUsername := Value;
  with Dados do
  if Value='' then 
    FNome := '' 
  else
  if mtUsuario.Locate('Username', FUsername, []) then 
    FNome := mtUsuarioNome.Value;
  Update;
end;

procedure TFrmEditFunc.Update;
begin
  if FUsername>'' then begin
    lbNome.Caption := FNome;
    if FNome='' then lbNome.Caption := FUsername;
  end else
    lbNome.Caption := rsSelecioneUsuario;
  lbNome.Caption := lbNome.Caption + ' (F6)';
end;

procedure TFrmEditFunc.SetNome(const Value: String);
begin
  FNome := Value;
  Update;
end;

end.
