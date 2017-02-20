unit ncaFrmNovaEtiqueta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, cxTextEdit, cxMaskEdit,
  cxLabel, cxGroupBox, cxSpinEdit, cxCurrencyEdit, cxDropDownEdit, frxClass,
  cxMemo, cxPCdxBarPopupMenu, cxPC;

type
  TDadosEtiqueta = record
    deNome : String;
    deAltura : Double;
    deLargura : Double;
    deMTop, deMBottom, deMLeft, deMRight : Double;
    deQtdPorLinha : Byte;
    deAlturaEtq : Double;
    deLarguraEtq : Double;
    deGapH, deGapV : Double; 
  end;
  
  TFrmNovaEtiqueta = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    btnVoltar: TcxButton;
    btnCancelar: TcxButton;
    Paginas: TcxPageControl;
    tsNome: TcxTabSheet;
    tsFolha: TcxTabSheet;
    tsEtiqueta: TcxTabSheet;
    cbFolha: TcxGroupBox;
    lbLargura: TcxLabel;
    lbAltura: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    edLargura: TcxCurrencyEdit;
    edAltura: TcxCurrencyEdit;
    edMTopo: TcxCurrencyEdit;
    edMRodape: TcxCurrencyEdit;
    edMEsquerda: TcxCurrencyEdit;
    edMDireita: TcxCurrencyEdit;
    cxLabel7: TcxLabel;
    edFolha: TcxComboBox;
    cbEtiqueta: TcxGroupBox;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    edLarguraEtq: TcxCurrencyEdit;
    edAlturaEtq: TcxCurrencyEdit;
    cxLabel11: TcxLabel;
    edQtdPorLinha: TcxSpinEdit;
    edGapH: TcxCurrencyEdit;
    cxLabel12: TcxLabel;
    edGapV: TcxCurrencyEdit;
    cxLabel14: TcxLabel;
    panNome: TLMDSimplePanel;
    lbNome: TcxLabel;
    edNome: TcxTextEdit;
    panObs: TLMDSimplePanel;
    lbObs: TcxLabel;
    edObs: TcxMemo;
    btnAvancar: TcxButton;
    procedure edFolhaPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaginasChange(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriarEtq;
    
    function Criar(var aNome, aObs: String): Boolean;
  end;

var
  FrmNovaEtiqueta: TFrmNovaEtiqueta;

implementation

uses ncaFrmPri, ncafbProdutos;

{$R *.dfm}

resourcestring
  rsNomeEmBranco = 'É necessário informar um nome';
  rsAlturaEmBranco = 'É necessário informar a altura da folha';
  rsLarguraEmBranco = 'É necessário informar a largura da folha';
  rsEtqPorLinhaZero = 'É necessário informar a quantidade de etiquetas por linha';
  rsAlturaEtqEmBranco = 'É necessário informar a altura da etiqueta';
  rsLarguraEtqEmBranco = 'É necessário informar a largura da etiqueta';
  rsCriar = 'Criar!';
  rsAvancar = 'Avançar';


procedure TFrmNovaEtiqueta.btnAvancarClick(Sender: TObject);
begin
  case Paginas.ActivePageIndex of
    0 : 
    begin
      if Trim(edNome.Text)='' then begin
        edNome.SetFocus;
        raise exception.Create(rsNomeEmBranco);
      end;
      Paginas.ActivePageIndex := 1;
    end;  

    1 : 
    begin
      if edAltura.Value<1 then begin
        edAltura.SetFocus;
        raise exception.Create(rsAlturaEmBranco);
      end;

      if edLargura.Value<1 then begin
        edLargura.SetFocus;
        raise exception.Create(rsLarguraEmBranco);
      end;    

      Paginas.ActivePageIndex := 2;
    end;

    2 : CriarEtq;
    
  end;
end;

procedure TFrmNovaEtiqueta.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNovaEtiqueta.btnVoltarClick(Sender: TObject);
begin
  Paginas.ActivePageIndex := Paginas.ActivePageIndex - 1;
end;

function TFrmNovaEtiqueta.Criar(var aNome, aObs: String): Boolean;
begin
  ShowModal;
  Result := (ModalResult=mrOk);
  aNome := Trim(edNome.Text);
  aObs := edObs.Text;
end;

procedure TFrmNovaEtiqueta.CriarEtq;
var 
  M : TfrxMasterData;
  S : TfrxShapeView;
  P : TfrxReportPage;
begin
  if edAlturaEtq.Value<1 then begin
    edAlturaEtq.SetFocus;
    raise exception.Create(rsAlturaEtqEmBranco);
  end;

  if edLarguraEtq.Value<1 then begin
    edLarguraEtq.SetFocus;
    raise exception.Create(rsLarguraEtqEmBranco);
  end;  

  if edQtdPorLinha.Value<1 then begin
    edQtdPorLinha.SetFocus;
    raise exception.Create(rsLarguraEmBranco);
  end;

  with TfbProdutos(FrmPri.FM.FormByClass(TfbProdutos)^.fiInstance) do begin
    repEtqCriar.ReportOptions.Description.Text := edObs.Text;

    M := repEtqCriar.FindObject('Etiquetas') as TfrxMasterData;
    S := repEtqCriar.FindObject('shapeEtiqueta') as TfrxShapeView;
    P := repEtqCriar.FindObject('Page1') as TFrxReportPage;

    P.PaperWidth := edLargura.Value * 10;
    P.PaperHeight := edAltura.Value * 10;
    P.TopMargin := edMTopo.Value * 10;
    P.BottomMargin := edMRodape.Value * 10;
    P.LeftMargin := edMEsquerda.Value * 10;
    P.RightMargin := edMDireita.Value * 10;
  
    M.Columns := edQtdPorLinha.Value;
    M.ColumnWidth := edLarguraEtq.Value * fr1cm;
    M.ColumnGap := edGapH.Value * fr1cm;
    M.Height := (edGapV.Value + edAlturaEtq.Value) * fr1cm;

    S.Width := edLarguraEtq.Value * fr1cm;
    S.Height := edAlturaEtq.Value * fr1cm;
    S.Left := 0;
    S.Top := 0;

    repEtqCriar.SaveToFile(ExtractFilePath(ParamStr(0))+'temp.frx');
  end;

  ModalResult := mrOk;
end;

procedure TFrmNovaEtiqueta.edFolhaPropertiesChange(Sender: TObject);
begin
  lbAltura.Enabled := (edFolha.ItemIndex=(edFolha.Properties.Items.Count-1));
  lbLargura.Enabled := lbAltura.Enabled;
  edAltura.Enabled := lbAltura.Enabled;
  edLargura.Enabled := lbAltura.Enabled;

  case edFolha.ItemIndex of
    0 : begin
      edAltura.Value := 29.7;
      edlargura.Value := 21;
    end;

    1 : begin
      edAltura.Value := 27.9;
      edLargura.Value := 21.6;
    end;

    2 : begin
      edAltura.Value := 35.6;
      edLargura.Value := 21.6;
    end;
  end;
end;

procedure TFrmNovaEtiqueta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmNovaEtiqueta.FormCreate(Sender: TObject);
begin
  Paginas.ActivePageIndex := 0;
  Paginas.HideTabs := True;
end;

procedure TFrmNovaEtiqueta.FormShow(Sender: TObject);
begin
  if lbNome.Width > lbObs.Width then begin
    lbObs.AutoSize := False;
    lbObs.Width := lbNome.Width;
  end else begin
    lbNome.AutoSize := False;
    lbNome.Width := lbObs.Width;
  end;
end;

procedure TFrmNovaEtiqueta.PaginasChange(Sender: TObject);
begin
  case Paginas.ActivePageIndex of
    0 : begin
      btnAvancar.Caption := rsAvancar;
      btnVoltar.Visible := False;
    end;  
    1 : begin
      btnAvancar.Caption := rsAvancar;
      btnVoltar.Visible := True;
    end;  
    2 : begin
      btnAvancar.Caption := rsCriar;
      btnVoltar.Visible := True;
    end;  
  end;
end;

end.
