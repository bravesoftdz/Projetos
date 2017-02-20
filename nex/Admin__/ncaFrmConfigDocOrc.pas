unit ncaFrmConfigDocOrc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, PngImage, ExtCtrls, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, cxSpinEdit, StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Printers, frxClass,
  cxButtonEdit, ncaDocEdit;

type
  TFrmConfigDocOrc = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    btnCancelar: TcxButton;
    btnSalvar: TcxButton;
    cxLabel1: TcxLabel;
    edModelo: TncDocEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfigDocOrc: TFrmConfigDocOrc;

implementation

uses ncaFrmPri, ncaDM, ncaDMorc, ncaFrmRecursoPRO, ncClassesBase, ncaConfigRecibo;

{$R *.dfm}

resourcestring
  rsSelecionarModelo = 'É necessário selecionar um modelo / layout de impressão';

procedure TFrmConfigDocOrc.btnSalvarClick(Sender: TObject);
begin
  if edModelo.IDDoc='' then begin
    edModelo.SetFocus;
    raise exception.Create(rsSelecionarModelo);  
  end;

  gRecibo.Modelo[tipodoc_orcamento] := edModelo.IDDoc;
  gRecibo.Save;
    
  Close;
end;

procedure TFrmConfigDocOrc.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmConfigDocOrc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmConfigDocOrc.FormShow(Sender: TObject);
begin
  edModelo.IDDoc := gRecibo.Modelo[tipodoc_orcamento];
end;

end.
