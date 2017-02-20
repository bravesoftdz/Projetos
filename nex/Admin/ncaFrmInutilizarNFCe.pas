unit ncaFrmInutilizarNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutLookAndFeels, cxTextEdit, dxLayoutContainer,
  cxMaskEdit, cxSpinEdit, cxClasses, dxLayoutControl, Vcl.StdCtrls, cxButtons,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel;

type
  TFrmInutilizarNFCe = class(TForm)
    LMDSimplePanel2: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edAno: TcxSpinEdit;
    dxLayoutItem1: TdxLayoutItem;
    edInicio: TcxSpinEdit;
    dxLayoutItem2: TdxLayoutItem;
    edFinal: TcxSpinEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    edJust: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    function Editar(var aAno, aInicio, aFinal: Integer; var aJust: String): Boolean;
    { Public declarations }
  end;

var
  FrmInutilizarNFCe: TFrmInutilizarNFCe;

implementation

{$R *.dfm}

uses ncaFrmPri;

{ TFrmInutilizarNFCe }

function TFrmInutilizarNFCe.Editar(var aAno, aInicio, aFinal: Integer; var aJust: String): Boolean;
var Y, M , D: Word;
begin
  DecodeDate(Date, Y, M , D);
  edAno.Value := Y;
  ShowModal;
  Result := (ModalResult=mrOk);
  if Result then begin
    aAno := edAno.Value;
    aInicio := edInicio.Value;
    aFinal := edFinal.Value;
    aJust := edJust.Text;
  end;
end;

procedure TFrmInutilizarNFCe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
