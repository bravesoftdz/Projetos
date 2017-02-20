unit ncaFrmMigrarPremium;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Web.HTTPApp, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxLabel, cxTextEdit, LMDBaseControl, LMDBaseGraphicControl,
  LMDGraphicControl, LMDHTMLLabel, dxBarBuiltInMenu, cxPC, cxGroupBox,
  cxRadioGroup, StrUtils;

type
  TFrmMigrarPremium = class(TForm)
    cxLabel1: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    btnAvancar: TcxButton;
    btnVoltar: TcxButton;
    lbCancelar: TcxLabel;
    panPri: TLMDSimplePanel;
    Paginas: TcxPageControl;
    ts1: TcxTabSheet;
    lbDataAtual: TLMDHTMLLabel;
    lbNovaData: TLMDHTMLLabel;
    LMDHTMLLabel3: TLMDHTMLLabel;
    cxLabel4: TcxLabel;
    ts2: TcxTabSheet;
    rb1: TcxRadioButton;
    rb0: TcxRadioButton;
    lbRecData: TcxLabel;
    ts3: TcxTabSheet;
    lbResumoCartao: TLMDHTMLLabel;
    LMDSimplePanel2: TLMDSimplePanel;
    cxLabel3: TcxLabel;
    LMDSimplePanel3: TLMDSimplePanel;
    edSenha: TcxTextEdit;
    cxLabel2: TcxLabel;
    rb4: TcxRadioButton;
    lbPag: TcxLabel;
    lbResumoBoleto: TLMDHTMLLabel;
    rb3: TcxRadioButton;
    rb2: TcxRadioButton;
    lbEsqueci: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure lbCancelarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure rb0Click(Sender: TObject);
    procedure PaginasChange(Sender: TObject);
    procedure cxLabel4Click(Sender: TObject);
    procedure lbEsqueciClick(Sender: TObject);
  private
    { Private declarations }
    sl : TStrings;
    slRec : TStrings;
    FNewRec : Byte;

    function Cartao: Boolean;
    function Boleto: Boolean;

    function RB(I: Integer): TcxRadioButton;

    procedure Atualiza;
    procedure SetNewRec(const Value: Byte);

    property NewRec: Byte read FNewRec write SetNewRec;
  public
    { Public declarations }
    procedure Mostrar(aDados: String);
  end;

var
  FrmMigrarPremium: TFrmMigrarPremium;

implementation

{$R *.dfm}

uses ncaDM, ncaFrmPri, ncHttp, nexUrls, ncClassesBase, ncShellStart,
  ncaFrmObrigado, uNR_chaveseg, ncFrmCriarConta;

procedure TFrmMigrarPremium.Atualiza;
begin
  case Paginas.ActivePageIndex of
    0 : lbPag.Caption := '1. Nova data de vencimento da assinatura';
    1 : lbPag.Caption := '2. Recorrência';
    2 : 
    begin
      if Boleto then
        lbPag.Caption := '2. Confirmação Final' else
        lbPag.Caption := '3. Confirmação Final';
    end;    
  end;
  btnVoltar.Enabled := (Paginas.ActivePageIndex>0);
  if Paginas.ActivePageIndex=2 then
    btnAvancar.Caption := 'Migrar!' else
    btnAvancar.Caption := 'Avançar >>';
end;

function TFrmMigrarPremium.Boleto: Boolean;
begin
  Result := (sl.Values['meiopagto']<>'1');
end;

procedure TFrmMigrarPremium.btnAvancarClick(Sender: TObject);
var slRet: TStrings;
begin
  case Paginas.ActivePageIndex of
    0 : 
    if Cartao then
      Paginas.ActivePageIndex := 1 else
      Paginas.ActivePageIndex := 2;

    1 : Paginas.ActivePageIndex := 2;

    2 : begin
      slRet := TStringList.Create;
      try
        slRet.Text := httpGet(gUrls.Url('contas_fazupgradeplano', 'conta='+gConfig.Conta+'&senha='+edSenha.Text+'&recorrencia='+IntToStr(FNewRec)));
        if slRet.Values['erro']>'' then 
          raise Exception.Create(slRet.values['erro']);
        Dados.CM.SalvaApp(slRet.Text);  
        ShowMessage('Parabéns, seu plano foi alterado para PREMIUM com sucesso!');
        Close;
      finally  
        slRet.Free;
      end;
    end;
        
  end;
end;

function TFrmMigrarPremium.Cartao: Boolean;
begin
  Result := (sl.Values['meiopagto']='1');
end;

procedure TFrmMigrarPremium.cxLabel4Click(Sender: TObject);
begin
  ShellStart('http://www.programanex.com.br/info/upgrade-de-plano');
end;

procedure TFrmMigrarPremium.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmMigrarPremium.FormCreate(Sender: TObject);
begin
  btnAvancar.Enabled := Dados.CM.UA.Admin;
  sl := TStringList.Create;
  slRec := TStringList.Create;
end;

procedure TFrmMigrarPremium.FormDestroy(Sender: TObject);
begin
  sl.Free;
  slRec.Free;
end;

procedure TFrmMigrarPremium.lbCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMigrarPremium.lbEsqueciClick(Sender: TObject);
var 
  ChaveSeg : String;
  slRet : TStrings;
begin
  slRet := tStringList.Create;
  try
    ChaveSeg := httpGet(gUrls.Url('contas_obtemchaveseg'));
    slRet.Text := httpGet(gUrls.Url('contas_esquecisenha', 'conta='+httpEncode(gConfig.Conta)+'&chaveseg='+ChaveSeg+'&senhaseg='+GeraSenhaSeg(ChaveSeg))); // do not localize
    if slRet.Values['erro']<>'0' then // do not localize
      ShowMessage(Sl.Values['Erro'])  // do not localize
    else
      TFrmObrigado.Create(Self).Mostrar(SEnviamosSuaSenhaPara+gConfig.Conta); // do not localize
  finally
    Sl.Free;
  end;
end;

procedure SeparaStr(S: String; sl: TStrings; const aDelim: Char = ';');
var P : Integer;
begin
  repeat
    P := Pos(aDelim, S);
    if P>0 then begin
      sl.Add(Trim(copy(S, 1, P-1)));
      Delete(S, 1, P);
    end else begin
      S := Trim(S);
      if S>'' then sl.Add(S);
    end;
  until P=0;
end;

procedure TFrmMigrarPremium.Mostrar(aDados: String);
var b: Byte;
begin
  sl.Text := aDados;
  lbResumoBoleto.Caption := Format(lbResumoBoleto.Caption, [sl.Values['data']]);
  lbDataAtual.Caption := Format(lbDataAtual.Caption, [sl.Values['data_atual']]);
  lbNovaData.Caption := Format(lbNovaData.Caption, [sl.Values['data']]);
  if Cartao then begin
    SeparaStr(sl.Values['recorrencias'], slRec);
    for B := 0 to 4 do begin
      rb(b).Visible := (slRec.Count>b);
      if rb(b).Visible  then
        rb(b).Caption := slRec[b];
    end;  
    NewRec := StrToIntDef(sl.Values['recorrencia_atual'], 0);
    lbRecData.Caption := Format(lbRecData.Caption, [sl.Values['data']]);
    lbResumoBoleto.Visible := False;
  end else
    lbResumoCartao.Visible := False;
    
  Paginas.ActivePageIndex := 0;

  Atualiza;

  ShowModal;
end;

procedure TFrmMigrarPremium.PaginasChange(Sender: TObject);
begin
  Atualiza;
end;

function TFrmMigrarPremium.RB(I: Integer): TcxRadioButton;
begin
  case I of
    0 : result := rb0;
    1 : result := rb1;  
    2 : result := rb2;  
    3 : result := rb3;  
    4 : result := rb4;  
  else
    Result := nil;
  end;
end;

procedure TFrmMigrarPremium.rb0Click(Sender: TObject);
begin
  NewRec := TcxRadioButton(Sender).Tag;
end;

procedure TFrmMigrarPremium.SetNewRec(const Value: Byte);
var b : byte;
begin
  FNewRec := Value;
  for b := 0 to 4 do 
  with rb(b) do begin
    Checked := (value=b);
    if Checked then
      Font.Style := [fsBold] else
      Font.Style := [];
    lbResumoCartao.Caption := Format(lbResumoCartao.Caption, [Caption, sl.Values['data']]);  
  end;  
end;

end.
