{$I NEX.INC}
unit ncafbProdEst;
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
  TfbProdEst = class(TFrmBase)
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
    procedure AtivaTimerBusca;
    procedure ParentChanged; override;
    procedure Refresh; override;
    procedure RefreshTran;
    class function Descricao: String; override;
    { Public declarations }
  end;

var
  fbProdEst: TfbProdEst;

implementation

uses 
  ncaFrmPri, 
  ncaDM, 
  ncIDRecursos, 
  ufmImagens,
  ncafbProdutos, ncafbTranEst, ncaStrings;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

{ TfbCaixa }

procedure TfbProdEst.AtivaTimerBusca;
begin
  if FM.FormAtivo is TfbProdutos then
    TfbProdutos(FM.FormAtivo).Timer2.Enabled := True
end;

class function TfbProdEst.Descricao: String;
begin
  Result := rsProdEstoque;
end;

procedure TfbProdEst.FrmBasePaiCreate(Sender: TObject);
begin
  inherited;
  FFiltrou := False;
  FM.RegistraForm(TfbProdutos);
  FM.RegistraForm(TfbTranEst);
  FM.Mostrar(TfbProdutos);
  FM.Mostrar(TfbTranEst);
  FM.Mostrar(TfbProdutos);
end;

procedure TfbProdEst.FrmBasePaiDestroy(Sender: TObject);
begin
  FM.Clear;
  inherited;
end;

function TfbProdEst.GetGrid: TcxGrid;
begin
  if FM.FormAtivo<>nil then
    Result := FM.FormAtivo.GetGrid else
    Result := nil;
end;

procedure TfbProdEst.ParentChanged;
begin
  inherited;
  FM.AllParentChanged;
end;

procedure TfbProdEst.Refresh;
begin
  if FM.FormAtivo<>nil then FM.FormAtivo.Refresh;
end;

procedure TfbProdEst.RefreshTran;
begin
  if FM.FormAtivo is TfbTranEst then
    TfbTranEst(FM.FormAtivo).Refresh;
end;

procedure TfbProdEst.FiltraDados;
begin
  FFiltrou := True;
  if FM.FormAtivo<>nil then
    FM.FormAtivo.FiltraDados;
end;

procedure TfbProdEst.FMChange(Sender: TObject);
begin
  if FM.FormAtivo <> nil then
    FM.FormAtivo.FiltraDados;
end;

end.
     
