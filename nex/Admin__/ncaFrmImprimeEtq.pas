unit ncaFrmImprimeEtq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, LMDCustomComponent, LMDSysBase, LMDSysBaseComponent, LMDSysPrinters,
  DB, LMDSysInfo, PngImage, ExtCtrls, cxSpinEdit, frxClass, cxButtonEdit,
  ncaDocEdit;

type
  TFrmImprimeEtq = class(TForm)
    lbImpressora: TcxLabel;
    lbModelo: TcxLabel;
    edPrinters: TcxComboBox;
    btmImp: TcxButton;
    btnCancelar: TcxButton;
    lbQtd: TcxLabel;
    Image1: TImage;
    panPular: TLMDSimplePanel;
    lbIniciar2: TcxLabel;
    edInicio: TcxSpinEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edModelo: TncDocEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btmImpClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }

  public
    function Imprimir(aQtd: Integer; var aPular: Integer): Boolean;
    { Public declarations }
  end;

var
  FrmImprimeEtq: TFrmImprimeEtq;

implementation

uses ufmImagens, ncaDM, Printers, ncaFrmNovaEtiqueta, ncafbProdutos, ncaFrmPri,
  ncGuidUtils, ncaConfigRecibo, ncClassesBase;

{$R *.dfm}

resourcestring
  rsSelecioneImp    = 'Selecione uma impressora';
  rsEscolhaUmModelo = 'É necessário um modelo/layout de etiqueta';
  rsEtiquetas       = 'etiquetas';
  rsEtiqueta        = 'etiqueta';
  rsEditarModelo    = 'Editar layout de';
  rsApagarModelo    = 'Apagar';
  rsRenomear        = 'Renomear';

function tempfile: String;
begin
  Result := ExtractFilepath(ParamStr(0))+'temp.frx';
end;

procedure TFrmImprimeEtq.btmImpClick(Sender: TObject);
var S: String;
begin
  if edPrinters.ItemIndex=-1 then begin
    edPrinters.SetFocus;
    raise exception.Create(rsSelecioneImp);
  end;

  if edModelo.IDDoc='' then
    raise exception.Create(rsEscolhaUmModelo);

  gRecibo.Impressora[tipodoc_etiqueta] := edPrinters.Text;
  gRecibo.Modelo[tipodoc_etiqueta] := edModelo.IDDoc;
  gRecibo.Save;
  
  ModalResult := mrOk;
end;

procedure TFrmImprimeEtq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function GetDefaultPrinterName : string;
begin
   if (Printer.PrinterIndex > 0)then begin
     Result :=
       Printer.Printers[Printer.PrinterIndex];
   end else begin
     Result := '';
   end;
end;

procedure TFrmImprimeEtq.FormCreate(Sender: TObject);
var S: String;
begin
  edPrinters.Properties.Items.Assign(Printer.Printers);


  with edPrinters, Properties.Items do 
    edPrinters.ItemIndex := IndexOf(gRecibo.Impressora[tipodoc_etiqueta]);

  if edPrinters.ItemIndex<0 then
  with edPrinters, Properties.Items do
    edPrinters.ItemIndex := IndexOf(GetDefaultPrinterName);

  with Dados do
  try
    edModelo.IDDoc := gRecibo.Modelo[tipodoc_etiqueta];
  except
  end;  
end;

procedure TFrmImprimeEtq.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Msg: TMsg;  
begin
  if Key=VK_ESCAPE then begin
    ModalResult := mrCancel;
    PeekMessage(Msg, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
  end;
end;

function TFrmImprimeEtq.Imprimir(aQtd: Integer; var aPular: Integer): Boolean;
begin
  if aQtd>1 then
    lbQtd.Caption := IntToStr(aQtd) + ' ' + rsEtiquetas else
    lbQtd.Caption := IntToStr(aQtd) + ' ' + rsEtiqueta;
  
  ShowModal;
  aPular := edInicio.Value-1;
  Result := (ModalResult=mrOk);
end;

end.


