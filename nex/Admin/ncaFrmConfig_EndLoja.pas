unit ncaFrmConfig_EndLoja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncaFrmBaseOpcaoImgTxt, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, dxGDIPlusClasses, Vcl.ExtCtrls,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, ncaFrmMemoEnd;

type
  TFrmConfig_EndLoja = class(TFrmBaseOpcaoImgTxt)
    panEnd: TLMDSimplePanel;
    lbPrompt: TcxLabel;
    procedure FormCreate(Sender: TObject);
  private
    FEnd : TFrmMemoEnd;
    { Private declarations }
  public
    { Public declarations }
    procedure Ler; override;
    procedure Salvar; override;
    function Alterou: Boolean; override;

    procedure Renumera; override;

    function NumItens: Integer; override;
    
  end;

var
  FrmConfig_EndLoja: TFrmConfig_EndLoja;

implementation

{$R *.dfm}

uses ncEndereco, ncClassesBase, ncaDM, ncGuidUtils;

function TFrmConfig_EndLoja.Alterou: Boolean;
begin
  Result := FEnd.DadosAnt.Alterou(FEnd.DadosAtu);
end;

procedure TFrmConfig_EndLoja.FormCreate(Sender: TObject);
begin
  inherited;
  FEnd := TFrmMemoEnd.Create(Self);
  FEnd.EditOnClick := True;
  FEnd.MostrarRota := False;
  FEnd.M.Parent := panEnd;
end;

procedure TFrmConfig_EndLoja.Ler;
begin
  inherited;
  if (gConfig.Endereco_Loja='') or (not Dados.AchaEnd(gConfig.End_Loja_Nativo)) then
    FEnd.Clear else
    FEnd.LoadFromDataset(Dados.tbEnd);
end;

function TFrmConfig_EndLoja.NumItens: Integer;
begin
  Result := 1;
end;

procedure TFrmConfig_EndLoja.Renumera;
begin
  inherited;
  RenumLB(lbPrompt, 0);
end;

procedure TFrmConfig_EndLoja.Salvar;
begin
  inherited;
  with Dados do begin
    if AchaEnd(FEnd.DadosAtu.enID) then
      tbEnd.Edit else
      tbEnd.Append;
    FEnd.DadosAtu.SaveToDataset(tbEnd);
    tbEnd.Post; 
    if gConfig.End_Loja_Nativo<>FEnd.DadosAtu.enID then 
      gConfig.Endereco_Loja := TGuidEx.ToString(FEnd.DadosAtu.enID);
  end;
end;

end.
