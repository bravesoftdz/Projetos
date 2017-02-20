unit ncaFrmMemoEnd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, ncEndereco,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, DB;

type
  TFrmMemoEnd = class(TForm)
    M: TcxRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    DadosAnt, 
    DadosAtu: TncEndereco;

    procedure LoadFromDataset(aDataset: TDataset);

    procedure Editar;
    
    { Public declarations }
  end;

var
  FrmMemoEnd: TFrmMemoEnd;

implementation

{$R *.dfm}

uses ncClassesBase, ncaFrmEndereco;

procedure TFrmMemoEnd.Editar;
var F: TFrmEndereco;
begin
  F := TFrmEndereco.Create(Self);
  if F.Editar(DadosAtu) then 
    M.Lines.Text := DadosAtu.Resumo;
end;

procedure TFrmMemoEnd.FormCreate(Sender: TObject);
begin
  M.Lines.Clear;
  DadosAnt := TncEndereco.Create;
  DadosAnt.enPais := gConfig.PaisNorm;
  DadosAtu := TncEndereco.Create;
  DadosAtu.Assign(DadosAnt);
end;

procedure TFrmMemoEnd.FormDestroy(Sender: TObject);
begin
  DadosAtu.Free;
  DadosAnt.Free;
end;

procedure TFrmMemoEnd.LoadFromDataset(aDataset: TDataset);
begin
  DadosAnt.LoadFromDataset(aDataset);
  DadosAtu.Assign(DadosAnt);
  M.Lines.Text := DadosAtu.Resumo;
end;

end.
