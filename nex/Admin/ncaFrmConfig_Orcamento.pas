unit ncaFrmConfig_Orcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, PngImage, ExtCtrls, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, cxSpinEdit, StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Printers, frxClass,
  cxButtonEdit, ncaDocEdit, dxGDIPlusClasses;

type
  TFrmConfig_Orcamento = class(TForm)
    LMDSimplePanel7: TLMDSimplePanel;
    LMDSimplePanel1: TLMDSimplePanel;
    btnCancelar: TcxButton;
    btnImp: TcxButton;
    LMDSimplePanel2: TLMDSimplePanel;
    lbNome: TcxLabel;
    Image1: TImage;
    edModeloImp: TncDocEdit;
    cxLabel1: TcxLabel;
    edCopias: TcxSpinEdit;
    lbModelo: TcxLabel;
    LMDSimplePanel3: TLMDSimplePanel;
    LMDSimplePanel4: TLMDSimplePanel;
    Image2: TImage;
    cxLabel2: TcxLabel;
    edModeloEmail: TncDocEdit;
    cxLabel3: TcxLabel;
    lbErro: TcxLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    function Editar(aErro: Boolean): Boolean;
    { Public declarations }
  end;

var
  FrmConfig_Orcamento: TFrmConfig_Orcamento;

implementation

uses ncaFrmPri, ncaDM, ncaDMorc, ncaFrmRecursoPRO, ncClassesBase, ncaConfigRecibo;

{$R *.dfm}

resourcestring
  rsSelecionarModelo = 'É necessário selecionar um modelo / layout';

function GetDefaultPrinterName : string;
begin
   if (Printer.PrinterIndex > 0)then begin
     Result :=
       Printer.Printers[Printer.PrinterIndex];
   end else begin
     Result := '';
   end;
end;

procedure TFrmConfig_Orcamento.btnImpClick(Sender: TObject);
begin
  if edModeloEmail.IDDoc='' then begin
    edModeloEmail.SetFocus;
    raise exception.Create(rsSelecionarModelo);  
  end;

  if edModeloImp.IDDoc='' then begin
    edModeloImp.SetFocus;
    raise exception.Create(rsSelecionarModelo);  
  end;
  
  gRecibo.Copias[tipodoc_orcamento] := edCopias.Value;
  gRecibo.Modelo[tipodoc_orcamento] := edModeloImp.IDDoc;
  gRecibo.ModeloEmailOrc := edModeloEmail.IDDoc;
  gRecibo.Save;

  ModalResult := mrOk;
end;

function TFrmConfig_Orcamento.Editar(aErro: Boolean): Boolean;
begin
  lbErro.Visible := aErro;
  ShowModal;
  Result := (ModalResult=mrOk)
end;

procedure TFrmConfig_Orcamento.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmConfig_Orcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmConfig_Orcamento.FormCreate(Sender: TObject);
begin
  edCopias.Value := gRecibo.Copias[tipodoc_orcamento];
  if edCopias.Value=0 then edCopias.Value := 1;
  
  edModeloImp.IDDoc := gRecibo.Modelo[tipodoc_orcamento];
  edModeloEmail.IDDoc := gRecibo.ModeloEmailOrc;
end;

procedure TFrmConfig_Orcamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_F2    : btnImp.Click;
    Key_Esc   : Close;
  end;
end;

procedure TFrmConfig_Orcamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [#27] then Key := #0;
end;

end.
