unit ncaFrmCorrigeCredito;
{
    ResourceString: Dario 11/03/13
}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, kbmMemTable, ncLancExtra,
  ExtCtrls, dxBar, nxdb, cxStyles, cxGraphics, cxEdit,
  cxCalendar, cxMaskEdit, cxDBLookupComboBox, cxCurrencyEdit, cxMemo,
  cxImageComboBox, cxVGrid, cxDBVGrid, cxControls, cxInplaceContainer,
  dxBarExtItems, cxTextEdit, cxContainer, cxLabel, cxSpinEdit, cxTimeEdit,
  cxClasses, cxPC, StdCtrls, cxRadioGroup, cxCheckBox, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu;

type

  TFrmCorrigeCredito = class(TForm)
    BarMgr: TdxBarManager;
    Panel1: TPanel;
    cmGravar: TdxBarLargeButton;
    cmCancelar: TdxBarLargeButton;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edCliente: TcxTextEdit;
    cxLabel4: TcxLabel;
    edValor: TcxCurrencyEdit;
    edNovo: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    edObs: TcxMemo;
    procedure cmCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    function Editar(aNomeCli: String; VAtual: Currency; var VNovo: Currency; var Obs: String): Boolean;
    { Public declarations }
  end;

var
  FrmCorrigeCredito: TFrmCorrigeCredito;

implementation

uses 
  ncaFrmPri, 
  ncaDM, 
  ncIDRecursos, 
  ncClassesBase, ufmImagens;

{$R *.DFM}

procedure TFrmCorrigeCredito.cmCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCorrigeCredito.cmGravarClick(Sender: TObject);
begin
  edNovo.PostEditValue;
  ModalResult := mrOk;
end;

function TFrmCorrigeCredito.Editar(aNomeCli: String; VAtual: Currency; var VNovo: Currency; var Obs: String): Boolean;
begin
  Result := False;
  edCliente.Text := aNomeCli;
  edValor.Value := VAtual;
  edNovo.Value := VAtual;
  edObs.Clear;
  ShowModal;
  if (ModalResult=mrOk) and (edNovo.Value<>VAtual) then begin
    VNovo := edNovo.Value;
    Result := True;
    Obs := edObs.Text;
  end;
end;

procedure TFrmCorrigeCredito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCorrigeCredito.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_F2  : cmGravarClick(nil);
    Key_Esc : Close;
  end;
end;

procedure TFrmCorrigeCredito.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [#13, #27] then Key := #0;
end;

end.

