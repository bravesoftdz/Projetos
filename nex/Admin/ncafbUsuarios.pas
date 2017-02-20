unit ncafbUsuarios;
{
    ResourceString: Dario 10/03/13
}

interface

uses
  Windows, ncErros, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmFormBase, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, cxGridCustomPopupMenu, cxGridPopupMenu, dxBar, dxBarExtItems,
  ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxMaskEdit, cxCheckBox,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxLabel, LMDPNGImage,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, cxLookAndFeels, cxLookAndFeelPainters,
  cxNavigator, dxPScxPivotGridLnk, uNexTransResourceStrings_PT, cxImageComboBox;

type
  TfbUsuarios = class(TFrmBase)
    LMDSimplePanel1: TLMDSimplePanel;
    Grid: TcxGrid;
    TV: TcxGridDBTableView;
    TVImg: TcxGridDBColumn;
    TVUsername: TcxGridDBColumn;
    TVNome: TcxGridDBColumn;
    TVAdmin: TcxGridDBColumn;
    GL: TcxGridLevel;
    cmInativar: TdxBarLargeButton;
    cmReativar: TdxBarLargeButton;
    procedure cmApagarClick(Sender: TObject);
    procedure cmNovoClick(Sender: TObject);
    procedure cmEditarClick(Sender: TObject);
    procedure TVImgGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TVImgCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cmInativarClick(Sender: TObject);
    procedure cmReativarClick(Sender: TObject);
    procedure TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    procedure AtualizaBotoes;
    
    procedure AtualizaDireitos; override;
    procedure FiltraDados; override;
    class function Descricao: String; override;
    { Public declarations }
  end;

var
  fbUsuarios: TfbUsuarios;

resourcestring
  rsNaoPodeInativarTodosAdmin = 'Não é permitido inativar todos administradores do NEX';  

  rsConfirmaInativar = 
    'Deseja realmente desativar o usuário %s?'+sLineBreak+sLineBreak+
    'Usuários inativos não podem acessar o NEX ou fazer novas vendas.';

  rsConfirmaReativar = 
    'Deseja realmente reativar o usuário %s?';  

implementation

uses 
  ncaDM, 
  ncaFrmPri, 
  ncaFrmUsuario, 
  ncClassesBase, ufmImagens, umsg;

// START resource string wizard section
// MMX resource string wizard section REMOVIDA - 08/04/13 12:30


{$R *.dfm}

{ TfbUsuarios }

class function TfbUsuarios.Descricao: String;
begin
  Result := SncafbUsuarios_Usuários;
end;

procedure TfbUsuarios.FiltraDados;
begin
  AtualizaBotoes;
end;

function VarDefault(V: Variant; aDefault: Variant): Variant;
begin
  if VarIsNull(V) then
    Result := aDefault else
    Result := V;
end;

procedure TfbUsuarios.TVFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  AtualizaBotoes;
end;

procedure TfbUsuarios.TVImgCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  if VarDefault(AViewInfo.GridRecord.Values[TVAdmin.Index], False) = True then
    ACanvas.Font.Style := [fsBold];
end;

procedure TfbUsuarios.TVImgGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  AText := VarDefault(ARecord.Values[TVNome.Index], '') + ' (' + VarDefault(ARecord.Values[TVUsername.Index], '') + ')';
end;

procedure TfbUsuarios.AtualizaBotoes;
begin
  with Dados do begin
    if mtUsuarioInativo.Value then begin
      cmInativar.Visible := ivNever;
      cmReativar.Visible := ivAlways;
    end else begin
      cmInativar.Visible := ivAlways;
      cmReativar.Visible := ivNever;
    end;
  end;
end;

procedure TfbUsuarios.AtualizaDireitos;
begin
  inherited;
  dxBarDockControl1.SunkenBorder := False;
  cmInativar.Enabled := Dados.CM.UA.Admin;
  cmReativar.Enabled := cmInativar.Enabled;
  AtualizaBotoes;
end;

procedure TfbUsuarios.cmApagarClick(Sender: TObject);
var 
  U : TncUsuario;
  I, C: Integer;
begin
  with Dados do begin
    C := 0;
    for I := 0 to CM.Usuarios.Count-1 do
      if CM.Usuarios[I].Admin then Inc(C);

    if mtUsuarioAdmin.Value and (C<2) then
      Raise ENexCafe.Create(SncafbUsuarios_NãoéPossívelApagarOúnicoUsuárioA);
        
    if SimNaoH(SncafbUsuarios_ConfirmaAExclusãoDe+mtUsuarioNome.Value+'?', Handle) then begin
      U := CM.Usuarios.PorUsername[mtUsuarioUsername.Value];
      if U <> nil then CM.ApagaObj(U);
    end;  
  end;  
end;

procedure TfbUsuarios.cmNovoClick(Sender: TObject);
begin
  TFrmUsuario.Create(Self).Incluir;
end;

procedure TfbUsuarios.cmReativarClick(Sender: TObject);
var U : TncUsuario;
begin
  inherited;
  with Dados do begin
    if mtUsuarioAdmin.Value and (CM.Usuarios.AdminAtivos<2) then begin
      ShowMessage(rsNaoPodeInativarTodosAdmin);
      Exit;
    end;

    if not SimNao(Format(rsConfirmaReativar, [mtUsuarioNome.Value])) then Exit;

    U := CM.Usuarios.PorUsername[mtUsuarioUsername.Value];

    if U<>nil then begin
      U.AtualizaCache;
      U.Inativo := False;
      CM.SalvaAlteracoesObj(U, False);
    end;
  end;
end;

procedure TfbUsuarios.cmEditarClick(Sender: TObject);
begin
  if Dados.mtUsuario.RecordCount > 0 then
    TFrmUsuario.Create(Self).Editar;
end;

procedure TfbUsuarios.cmInativarClick(Sender: TObject);
var U : TncUsuario;
begin
  inherited;
  with Dados do begin
    if mtUsuarioAdmin.Value and (CM.Usuarios.AdminAtivos<2) then begin
      ShowMessage(rsNaoPodeInativarTodosAdmin);
      Exit;
    end;

    if NaoSim(Format(rsConfirmaInativar, [mtUsuarioNome.Value])) then Exit;

    U := CM.Usuarios.PorUsername[mtUsuarioUsername.Value];

    if U<>nil then begin
      U.AtualizaCache;
      U.Inativo := True;
      CM.SalvaAlteracoesObj(U, False);
    end;
  end;
end;

end.


