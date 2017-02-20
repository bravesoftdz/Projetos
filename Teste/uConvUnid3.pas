unit uConvUnid3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxTextEdit,
  cxCurrencyEdit, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel;

type
  TForm2 = class(TForm)
    LMDSimplePanel2: TLMDSimplePanel;
    edPara: TcxCurrencyEdit;
    lbPara: TcxLabel;
    lbDe: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel2: TcxLabel;
    procedure cxLabel2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edParaPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FDe, FPara : String;
    procedure SetDe(const Value: String);
    procedure SetPara(const Value: String);
    function GetPara: String;

    function edTam: Integer;

    procedure Inverte;
  public
    property De: String
      read FDe write SetDe;

    property Para: String
      read GetPara write SetPara;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TForm2 }

procedure TForm2.cxLabel2Click(Sender: TObject);
begin
  Inverte;
end;

procedure TForm2.edParaPropertiesChange(Sender: TObject);
begin
  edPara.Width := edTam;
end;

function TForm2.edTam: Integer;
begin
  Result := cxtextWidth(edPara.Style.Font, edPara.EditingText)+20;
  if Result<50 then Result := 50;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FDe := 'CX';
end;

function TForm2.GetPara: String;
begin
  Result := lbPara.Caption;
end;

procedure TForm2.Inverte;
var S: String;
begin
  S := Para;
  Para := De;
  De := S;
end;

procedure TForm2.SetDe(const Value: String);
begin
  FDe := Value;
  lbDe.Caption := '1 '+Value+' = ';
end;

procedure TForm2.SetPara(const Value: String);
begin
  lbPara.Caption := Value;
end;

end.
