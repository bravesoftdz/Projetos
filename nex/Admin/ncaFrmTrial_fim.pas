unit ncaFrmTrial_fim;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,
  cxContainer, cxEdit, Vcl.Menus, LMDButtonControl, LMDRadioButton,
  Vcl.StdCtrls, cxButtons, cxRadioGroup, cxLabel, LMDCustomScrollBox,
  LMDScrollBox, cxTextEdit, cxMemo, LMDBaseEdit, LMDCustomMemo, LMDMemo, LMDSplt;

type
  TFrmTrial_fim = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    Paginas: TcxPageControl;
    tsFree: TcxTabSheet;
    tsEscolher: TcxTabSheet;
    btnVoltar: TcxButton;
    btnAvancar: TcxButton;
    panAcabou: TLMDSimplePanel;
    spPago: TLMDSplitterPanel;
    panPago: TLMDSplitterPane;
    spFree: TLMDSplitterPane;
    lbMaisRecursos: TcxLabel;
    lbRecursos: TcxLabel;
    panrbPago: TLMDSimplePanel;
    rbPro: TLMDRadioButton;
    lbAcabou: TcxLabel;
    lbSuporte: TcxLabel;
    panFree: TLMDSimplePanel;
    lbRecursosFree: TcxLabel;
    lbSabaMais: TcxLabel;
    lbChamarSup: TcxLabel;
    lbDuvida: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel11: TcxLabel;
    Memo1: TMemo;
    tsAssinar: TcxTabSheet;
    lbContinuarNoPlano: TcxLabel;
    cxLabel8: TcxLabel;
    panrbFree: TLMDSimplePanel;
    rbFree: TLMDRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure rbFreeClick(Sender: TObject);
    procedure rbProClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PaginasChange(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure lbChamarSupClick(Sender: TObject);
    procedure lbSabaMaisClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lbMaisRecursosClick(Sender: TObject);
    procedure panrbFreeClick(Sender: TObject);
  private
    { Private declarations }
    FPrecos: TStrings;
    FInfoServer : TStrings;

    procedure MigrarFree;
    procedure Assinar;
  public
    procedure Atualiza;

    procedure Mostrar;
    { Public declarations }
  end;

var
  FrmTrial_fim: TFrmTrial_fim;

implementation

{$R *.dfm}

uses ncClassesBase, ncaStrings, umsg, ncHttp, ncHash, nexUrls, ncaDM, ncaFrmPri;

procedure TFrmTrial_fim.Assinar;
var 
  sl : TStrings;
  S: String;
begin
  sl := TStringList.Create;
  try
    if gConfig.TrialPremium then
      S := 'premium' else
      S := 'pro';
    sl.Text := httpGet(gUrls.Url('contas_finalizatrial', 
                                 'conta='+gConfig.Conta+
                                 '&plano='+S+
                                 '&token='+nexToken(gConfig.Conta+FInfoServer.Values['data'])));
    if sl.Values['licenca']>'' then
      Dados.CM.SalvaLic(gConfig.Conta, sl.Values['licenca'])
    else
    if sl.Values['erro']='1' then
      ShowMessage(sl.Values['mensagem']);
  finally
    sl.Free;
  end;
end;

procedure TFrmTrial_fim.Atualiza;
begin
  rbFree.Font.Style := [];
  rbPro.Font.Style := [];
  if rbFree.Checked then begin
    rbFree.Font.Name := 'Segoe UI Semibold';
    rbPro.Font.Name := 'Segoe UI';
    panFree.Bevel.BorderColor := clBlack;
    panPago.Bevel.BorderColor := clSilver;
    panFree.Bevel.BorderInnerWidth := 2;
    panPago.Bevel.BorderInnerWidth := 1;
  end else begin
    rbPro.Font.Name := 'Segoe UI Semibold';
    rbFree.Font.Name := 'Segoe UI';
    panFree.Bevel.BorderColor := clSilver;
    panPago.Bevel.BorderColor := clBlack;
    panFree.Bevel.BorderInnerWidth := 1;
    panPago.Bevel.BorderInnerWidth := 2;
  end;
end;

procedure TFrmTrial_fim.btnAvancarClick(Sender: TObject);
begin
  case Paginas.ActivePageIndex of
    0 : begin
      if rbFREE.Checked then
        Paginas.ActivePageIndex := 1 else
        Paginas.ActivePageIndex := 2;
    end;
    1 : 
    if SimNao(rsConfirmaMigrarFree) then begin
      MigrarFree;
      Close;
    end;
        
    2 : begin
      Assinar;
      if gConfig.TrialPremium then
        OpenTrack('assinarpremium', 'TFrmTrial_fim') else
        OpenTrack('assinarpro', 'TFrmTrial_fim');
      Close;
    end;
  end;
end;

procedure TFrmTrial_fim.btnVoltarClick(Sender: TObject);
begin
  Paginas.ActivePageIndex := 0;
end;

procedure TFrmTrial_fim.lbMaisRecursosClick(Sender: TObject);
begin
  rbPro.Checked := True;
  rbProClick(nil);
end;

procedure TFrmTrial_fim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTrial_fim.FormCreate(Sender: TObject);
begin
  Paginas.HideTabs := True;
  FPrecos := TStringList.Create;
  FInfoServer := TStringList.Create;
end;

procedure TFrmTrial_fim.FormDestroy(Sender: TObject);
begin
  FPrecos.Free;
  FInfoServer.Free;
end;

procedure TFrmTrial_fim.FormShow(Sender: TObject);
begin
  Atualiza;
end;

procedure TFrmTrial_fim.lbChamarSupClick(Sender: TObject);
begin
  FrmPri.ChamaSuporteRemoto;
end;

procedure TFrmTrial_fim.lbSabaMaisClick(Sender: TObject);
begin
  OpenTrack('planos', 'TFrmTrial_fim');
end;

procedure TFrmTrial_fim.MigrarFree;
var sl : TStrings;
begin
  sl := TStringList.Create;
  try
    sl.Text := httpGet(gUrls.Url('contas_finalizatrial', 
                                 'conta='+gConfig.Conta+
                                 '&plano=free'+
                                 '&token='+nexToken(gConfig.Conta+FInfoServer.Values['data'])));
    if sl.Values['licenca']>'' then
      Dados.CM.SalvaLic(gConfig.Conta, sl.Values['licenca'])
    else
    if sl.Values['erro']='1' then
      ShowMessage(sl.Values['mensagem']);
  finally
    sl.Free;
  end;
end;

procedure TFrmTrial_fim.Mostrar;
var S: String;
begin
  Paginas.ActivePageIndex := 0;
  
  FPrecos.Text := FrmPri.InfoPlanos;
  FInfoServer.Text := FrmPri.InfoServer;
  
  if SameText(FPrecos.Values['moeda'], 'BRL') then
    S := 'R$' else
    S := '$';
  
  if (not gConfig.PRO) then begin
    lbAcabou.Caption := Format(lbAcabou.Caption, ['PREMIUM']);
    lbRecursos.Caption := '   ▪  '+rsUsoEmRede+sLineBreak+lbRecursos.Caption;
    if gConfig.PaisBrasil then
      lbRecursos.Caption := '   ▪  '+rsNotaFiscal+sLineBreak+lbRecursos.Caption;
    lbSuporte.Caption := rsSuportePremium; 
    lbContinuarNoPlano.Caption := lbContinuarNoPlano.Caption + ' PREMIUM';
    rbPRO.Caption := rbPRO.Caption + ' PREMIUM - ' + S + FPrecos.Values['premium_mensal'] + '/' + rsMes;
  end else begin
    lbAcabou.Caption := Format(lbAcabou.Caption, ['PRO']);
    rbPRO.Caption := rbPRO.Caption + ' PRO - ' + S + FPrecos.Values['pro_mensal'] + '/' + rsMes;
    lbContinuarNoPlano.Caption := lbContinuarNoPlano.Caption + ' PRO';
  end;
    
  ShowModal;
end;

procedure TFrmTrial_fim.PaginasChange(Sender: TObject);
begin
  btnVoltar.Enabled := (Paginas.ActivePageIndex>0);

  case Paginas.ActivePageIndex of
    0,2 : btnAvancar.Caption := rsAvancar + ' >>';
    1   : btnAvancar.Caption := rsMigrarFree;
  end;
end;

procedure TFrmTrial_fim.panrbFreeClick(Sender: TObject);
begin
  rbFree.Checked := True;
  rbFreeClick(nil);
end;

procedure TFrmTrial_fim.rbFreeClick(Sender: TObject);
begin
  rbPro.Checked := False;
  Atualiza;
end;

procedure TFrmTrial_fim.rbProClick(Sender: TObject);
begin
  rbFree.Checked := False;
  Atualiza;
end;

end.
