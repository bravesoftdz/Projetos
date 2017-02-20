unit ncaFrmImpOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, PngImage, ExtCtrls, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, cxSpinEdit, StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Printers, frxClass,
  cxButtonEdit, ncaDocEdit;

type
  TFrmImprimeOrcamento = class(TForm)
    lbImpressora: TcxLabel;
    lbModelo: TcxLabel;
    edPrinters: TcxComboBox;
    edCopias: TcxSpinEdit;
    LMDSimplePanel7: TLMDSimplePanel;
    lbNome: TcxLabel;
    lbValor: TcxLabel;
    Image1: TImage;
    LMDSimplePanel1: TLMDSimplePanel;
    btnCancelar: TcxButton;
    btnImp: TcxButton;
    cxLabel1: TcxLabel;
    edModelo: TncDocEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FOpcoes: Boolean;
    { Private declarations }
  public
    procedure MostrarOpcoes;
    { Public declarations }
  end;

var
  FrmImprimeOrcamento: TFrmImprimeOrcamento;

implementation

uses ncaFrmPri, ncaDM, ncaDMorc, ncaFrmRecursoPRO, ncClassesBase, ncaConfigRecibo;

{$R *.dfm}

resourcestring
  rsImpressoraVazia = 'É necessário selecionar uma impressora';
  rsSelecionarModelo = 'É necessário selecionar um modelo / layout de impressão';
  rsRecursoPRO = 'A customização do layout de impressão do orçamento é um recurso exclusivo dos assinantes do plano PRO e PREMIUM';
  rsOpcoesImp = 'Opções de Impressão';

function GetDefaultPrinterName : string;
begin
   if (Printer.PrinterIndex > 0)then begin
     Result :=
       Printer.Printers[Printer.PrinterIndex];
   end else begin
     Result := '';
   end;
end;

procedure TFrmImprimeOrcamento.btnImpClick(Sender: TObject);
begin
  if edPrinters.Text='' then
    raise exception.Create(rsImpressoraVazia);

  if edModelo.IDDoc='' then begin
    edModelo.SetFocus;
    raise exception.Create(rsSelecionarModelo);  
  end;

  gRecibo.Impressora[tipodoc_orcamento] := edPrinters.Text;
  gRecibo.Copias[tipodoc_orcamento] := edCopias.Value;
  gRecibo.Modelo[tipodoc_orcamento] := edModelo.IDDoc;
  gRecibo.Save;

  if not FOpcoes then
    dmOrc.Imprime(dmOrc.TabUID.Value);
    
  Close;
end;

procedure TFrmImprimeOrcamento.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmImprimeOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmImprimeOrcamento.FormCreate(Sender: TObject);
begin
  FOpcoes := False;
  edCopias.Value := gRecibo.Copias[tipodoc_orcamento];
  if edCopias.Value=0 then edCopias.Value := 1;
  
  edPrinters.Properties.Items.Assign(Printer.Printers);
  edModelo.IDDoc := gRecibo.Modelo[tipodoc_orcamento];

  with edPrinters, Properties.Items do
    edPrinters.ItemIndex := IndexOf(gRecibo.Impressora[tipodoc_orcamento]);

  if edPrinters.ItemIndex<0 then
  with edPrinters, Properties.Items do
    edPrinters.ItemIndex := IndexOf(GetDefaultPrinterName);
end;

procedure TFrmImprimeOrcamento.FormShow(Sender: TObject);
begin
  if not FOpcoes then
  with dmOrc do begin
    lbNome.Caption := lbNome.Caption + ' ' + TabNomeCliente.Value;
    lbValor.Caption := CurrencyToStr(TabTotalFinal.Value);
  end;
end;

procedure TFrmImprimeOrcamento.MostrarOpcoes;
begin
  FOpcoes := True;
  lbValor.Visible := False;
  btnImp.Caption := 'Ok';
  lbNome.Caption := rsOpcoesImp;
  ShowModal;
end;

end.

