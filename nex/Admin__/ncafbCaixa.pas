{$I NEX.INC}
unit ncafbCaixa;
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
  TfbCaixa = class(TFrmBase)
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
    procedure RefreshTran;
    procedure MostrarAnteriores;
    procedure MostrarAtual;
    procedure AbriuFechouCx;
    procedure FiltraDados; override;
    procedure ParentChanged; override;
    procedure AtualizaDireitos; override;
    class function Descricao: String; override;
    { Public declarations }
  end;

var
  fbCaixa: TfbCaixa;

implementation

uses 
  ncaFrmPri, 
  ncafbTran, 
  ncafbTotCaixa,
  ncafbCaixasA, 
  ncaDM, 
  ncaFrmCaixa, 
  ncIDRecursos, ufmImagens, ncafbPagEsp;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

{ TfbCaixa }

class function TfbCaixa.Descricao: String;
begin
  Result := SncafbCaixa_Caixa;
end;

procedure TfbCaixa.FrmBasePaiCreate(Sender: TObject);
begin
  inherited;
  FFiltrou := False;
  FM.RegistraForm(TfbTran);
  FM.RegistraForm(TfbCaixasA);
  
  if Permitido(daCaiVerValores) then
    FM.RegistraForm(TfbPagEsp);
    
  FM.Mostrar(TfbTran, 0, 0);
  FM.Mostrar(TfbCaixasA, 0, 0);

  if Permitido(daCaiVerValores) then
    FM.Mostrar(TfbPagEsp, 0, 0);
    
  FM.Mostrar(TfbTran, 0, 0);
end;

procedure TfbCaixa.FrmBasePaiDestroy(Sender: TObject);
begin
  FM.Clear;
  inherited;
end;

function TfbCaixa.GetGrid: TcxGrid;
begin
  if FM.FormAtivo<>nil then
    Result := FM.FormAtivo.GetGrid else
    Result := nil;
end;

procedure TfbCaixa.MostrarAnteriores;
begin
  FM.Mostrar(TfbCaixasA);
end;

procedure TfbCaixa.MostrarAtual;
begin
  FM.Mostrar(TfbTran, 0, 0);
end;

procedure TfbCaixa.ParentChanged;
begin
  inherited;
  FM.AllParentChanged;
end;

procedure TfbCaixa.RefreshTran;
var F : TFrmBase;
begin
  F := FM.FormAtivo;
  if F is TfbTran then
    TfbTran(F).Q.Refresh;
end;

procedure TfbCaixa.FiltraDados;
begin
  FFiltrou := True;
  FM.Mostrar(TfbTran, 0, 0);  
  FM.FormAtivo.TabSheet.Caption := SncafbCaixa_CaixaAtual;
end;

procedure TfbCaixa.FMChange(Sender: TObject);
begin
  if FM.FormAtivo <> nil then
  if FM.FormAtivo is TfbTran then
    TfbTran(FM.FormAtivo).Refresh
  else
    FM.FormAtivo.FiltraDados;
end;

procedure TfbCaixa.AbriuFechouCx;
begin
  FM.Mostrar(TfbTran, 0, 0);  
  TfbTran(FM.FormAtivo).Q.Active := False;
  TfbTran(FM.FormAtivo).FiltraDados;
end;

procedure TfbCaixa.AtualizaDireitos;
begin
  inherited;
  if not FFiltrou then FiltraDados;
  
  if not Permitido(daCAIVerAntes) then begin
    FM.MostrarTab(TfbTran);  
    FM.Esconder(TfbCaixasA)   
  end;
end;

end.
     
