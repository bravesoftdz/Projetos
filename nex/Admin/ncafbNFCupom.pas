{$I NEX.INC}
unit ncafbNFCupom;
{
    ResourceString: Dario 10/03/13
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmFormBase, cxLookAndFeelPainters, cxContainer, cxEdit, cxGrid,
  cxGroupBox, cxRadioGroup, StdCtrls, cxButtons, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, cxPC, cxControls,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxBar, dxBarExtItems, ExtCtrls,
  pngimage, cxLabel, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  Menus, cxClasses, LMDPNGImage, LMDControl, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxPCdxBarPopupMenu, cxGraphics, cxLookAndFeels, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, uNexTransResourceStrings_PT, dxBarBuiltInMenu,
  dxPScxPivotGridLnk;

type
  TfbNFCupom = class(TFrmBase)
    Paginas: TcxPageControl;
    FM: TFormManager;
    Timer1: TTimer;
    procedure FrmBasePaiCreate(Sender: TObject);
    procedure FrmBasePaiDestroy(Sender: TObject);
    procedure FMChange(Sender: TObject);
  private
    FFiltrou: Boolean;
    { Private declarations }
  public
    function GetGrid: TcxGrid; override;
    procedure FiltraDados; override;
    procedure ParentChanged; override;
    procedure AtualizaDireitos; override;
    procedure Refresh; override;
    class function Descricao: String; override;
    { Public declarations }
  end;

var
  fbNFCupom: TfbNFCupom;

implementation

uses 
  ncaFrmPri, 
  ncaDM, 
  ncIDRecursos, 
  ufmImagens, 
  ncafbCupom, 
  ncafbNFe, ncafbCCE;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

{ TfbCaixa }

procedure TfbNFCupom.AtualizaDireitos;
begin
  inherited;
  if not Dados.tCCE.IsEmpty then FM.MostrarTabSemAtivar(TfbCCE);
end;

class function TfbNFCupom.Descricao: String;
begin
  Result := 'NF-e / Cupom';
end;

procedure TfbNFCupom.FrmBasePaiCreate(Sender: TObject);
var CupomFirst: Boolean;
begin
  inherited;
  FFiltrou := False;
  CupomFirst := Dados.NFCeAtivo or (not Dados.NFeAtivo);

  if CupomFirst then begin
    FM.RegistraForm(TfbCupom);
    FM.RegistraForm(TfbNFe);
    FM.RegistraForm(TfbCCE);
    
    FM.Mostrar(TfbCupom);
    FM.Mostrar(TfbNFe);
    FM.Mostrar(TfbCupom);
  end else begin
    FM.RegistraForm(TfbNFe);
    FM.RegistraForm(TfbCCE);
    FM.RegistraForm(TfbCupom);
    
    FM.Mostrar(TfbNFe);
    if not Dados.tCCE.IsEmpty then
      FM.Mostrar(TfbCCE);
    FM.Mostrar(TfbCupom);
    FM.Mostrar(TfbNFe);
  end;
  
end;

procedure TfbNFCupom.FrmBasePaiDestroy(Sender: TObject);
begin
  FM.Clear;
  inherited;
end;

function TfbNFCupom.GetGrid: TcxGrid;
begin
  if FM.FormAtivo<>nil then
    Result := FM.FormAtivo.GetGrid else
    Result := nil;
end;

procedure TfbNFCupom.ParentChanged;
begin
  inherited;
  FM.AllParentChanged;
end;

procedure TfbNFCupom.Refresh;
begin
  if FM.FormAtivo<>nil then FM.FormAtivo.Refresh;
  if not Dados.tCCE.IsEmpty then FM.MostrarTabSemAtivar(TfbCCE);
end;

procedure TfbNFCupom.FiltraDados;
begin
  if not Dados.tCCE.IsEmpty then FM.MostrarTabSemAtivar(TfbCCE);
  FFiltrou := True;
  if FM.FormAtivo<>nil then
    FM.FormAtivo.FiltraDados;
end;

procedure TfbNFCupom.FMChange(Sender: TObject);
begin
  if FM.FormAtivo <> nil then
    FM.FormAtivo.FiltraDados;
end;

end.
       
