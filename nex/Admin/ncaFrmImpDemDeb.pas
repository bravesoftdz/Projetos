unit ncaFrmImpDemDeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, PngImage, ExtCtrls, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, cxSpinEdit, StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Printers, frxClass,
  cxButtonEdit, ncaDocEdit, cxRadioGroup, ncDebito;

type
  TFrmImpDemDeb = class(TForm)
    lbImpressora: TcxLabel;
    lbModelo: TcxLabel;
    edPrinters: TcxComboBox;
    LMDSimplePanel7: TLMDSimplePanel;
    lbNome: TcxLabel;
    lbFormato: TImage;
    LMDSimplePanel1: TLMDSimplePanel;
    btnCancelar: TcxButton;
    btnImp: TcxButton;
    rbFolha: TcxRadioButton;
    rbBobina: TcxRadioButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FOpcoes: Boolean;
    { Private declarations }
  public
    class procedure Imprimir(aDeb: TncDebito);
    { Public declarations }
  end;

var
  FrmImpDemDeb: TFrmImpDemDeb;

implementation

uses ncaFrmPri, ncaDM, ncaDMorc, ncaFrmRecursoPRO, ncClassesBase, ncaConfigRecibo, ncaDMDemonstrativoDeb;

{$R *.dfm}

resourcestring
  rsImpressoraVazia = 'É necessário selecionar uma impressora';

function GetDefaultPrinterName : string;
begin
   if (Printer.PrinterIndex > 0)then begin
     Result :=
       Printer.Printers[Printer.PrinterIndex];
   end else begin
     Result := '';
   end;
end;

procedure TFrmImpDemDeb.btnImpClick(Sender: TObject);
begin
  if edPrinters.Text='' then
    raise exception.Create(rsImpressoraVazia);

  gRecibo.Impressora[tipodoc_demdeb] := edPrinters.Text;
  gRecibo.DemDebBob := rbBobina.Checked;
  gRecibo.Save;

  ModalResult := mrOk;
end;

procedure TFrmImpDemDeb.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmImpDemDeb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmImpDemDeb.FormCreate(Sender: TObject);
begin
  FOpcoes := False;

  if gRecibo.DemDebBob then
    rbBobina.Checked := True else
    rbFolha.Checked := True;
  
  edPrinters.Properties.Items.Assign(Printer.Printers);

  with edPrinters, Properties.Items do
    edPrinters.ItemIndex := IndexOf(gRecibo.Impressora[tipodoc_demdeb]);

  if edPrinters.ItemIndex<0 then
  with edPrinters, Properties.Items do
    edPrinters.ItemIndex := IndexOf(GetDefaultPrinterName);
end;

class procedure TFrmImpDemDeb.Imprimir(aDeb: TncDebito);
begin
  with TFrmImpDemDeb.Create(nil) do begin
    ShowModal;
    if ModalResult=mrOk then
      TDMDemonstrativoDeb.Imprime(aDeb);
  end;
end;

end.
