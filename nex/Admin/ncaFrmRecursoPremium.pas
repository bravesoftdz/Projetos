unit ncaFrmRecursoPremium;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxLabel, dxGDIPlusClasses,
  ExtCtrls, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, dxBarBuiltInMenu, cxPC;

type
  TFrmRecursoPremium = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    Image1: TImage;
    cxLabel1: TcxLabel;
    Paginas: TcxPageControl;
    tsFree: TcxTabSheet;
    lbPlanos: TcxLabel;
    lbAssinar: TcxLabel;
    tsTrial: TcxTabSheet;
    tsPro: TcxTabSheet;
    LMDSimplePanel2: TLMDSimplePanel;
    btnOk: TcxButton;
    lbAssinarPremium: TcxLabel;
    lbTestarPremium: TcxLabel;
    lbCliqueOpcao: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    lbMigrar: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    lbDescr: TcxLabel;
    Timer1: TTimer;
    procedure lbPlanosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbAssinarClick(Sender: TObject);
    procedure lbAssinarPremiumClick(Sender: TObject);
    procedure lbMigrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure lbTestarPremiumClick(Sender: TObject);
  private
    { Private declarations }
    FOrigem: String;

  protected
    procedure CreateParams(var Params: TCreateParams); override;
    
  public
    procedure Mostrar(aDescr, aOrigem: String);
    { Public declarations }
  end;

var
  FrmRecursoPremium: TFrmRecursoPremium;

implementation

uses ncaFrmPri, ncaDM, ncClassesBase, ncHttp, nexUrls, ncaFrmUpgradePremium,
  ncaFrmMigrarPremium;

{$R *.dfm}

{ TFrmRecursoPro }

procedure TFrmRecursoPremium.CreateParams(var Params: TCreateParams);
begin
  inherited;
  if Owner is TWinControl then begin
    params.ExStyle := params.ExStyle or WS_EX_APPWINDOW;
    params.WndParent := TCustomForm(Owner).Handle;
  end;
end;

procedure TFrmRecursoPremium.lbMigrarClick(Sender: TObject);
var aDados : String;
begin
  aDados := httpGet(gUrls.Url('contas_dataupgradeplano', 'conta='+gConfig.Conta));
  TFrmMigrarPremium.Create(Self).Mostrar(aDados);
  Close;
end;

procedure TFrmRecursoPremium.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmRecursoPremium.FormCreate(Sender: TObject);
begin
  if gConfig.IsPremium then begin
    if gConfig.OnTrial then
      Paginas.ActivePage := tsTrial else
      Paginas.ActivePage := tsPro;
  end else
    Paginas.ActivePage := tsFree;
end;

procedure TFrmRecursoPremium.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then begin
    Close;
    Key := #0;                
  end;

end;

procedure TFrmRecursoPremium.lbAssinarClick(Sender: TObject);
begin
  OpenTrack('assinarpremium', FOrigem);
end;

procedure TFrmRecursoPremium.lbAssinarPremiumClick(Sender: TObject);
begin
  OpenTrack('assinarpremium', FOrigem);
end;

procedure TFrmRecursoPremium.lbPlanosClick(Sender: TObject);
begin
  OpenTrack('planos', FOrigem);
end;

procedure TFrmRecursoPremium.lbTestarPremiumClick(Sender: TObject);
var sl: TStrings;
begin
  sl := TStringList.Create;
  try
    try
      sl.Text := httpGet(gUrls.Url('contas_upgradetrial', 'conta='+gConfig.Conta));
      if sl.Values['Erros'] > '' then 
        ShowMessage(sl.Values['erros']) 
      else 
      if sl.IndexOfName('chaves')=0 then
        raise Exception.Create('Erro de comunicação com o servidor Nextar. Conteúdo inválido na resposta do servidor: '+
                               sLineBreak+sLineBreak+sl.Text)
      else begin
        Dados.ShowUpgPremium := True;
        Dados.CM.SalvaApp(sl.Text);
        Close;
      end;
    except
      on E: Exception do 
        ShowMessage('Falha de comunicação com o servidor Nextar. Erro: '+E.Message);
    end;
  finally
    sl.Free;
  end;
end;

procedure TFrmRecursoPremium.Mostrar(aDescr, aOrigem: String);
begin
  FOrigem := aOrigem;
  lbDescr.Caption := aDescr;
  lbDescr.Visible := (aDescr>'');
  ShowModal;
end;

end.
