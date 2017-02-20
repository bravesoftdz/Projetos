unit ncaFrmEnderecos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics, ncEndereco,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, ncaFrmMemoEnd, DB,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, cxLabel, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel;

type
  TFrmEnderecos = class(TForm)
    panPri: TLMDSimplePanel;
    LMDSimplePanel2: TLMDSimplePanel;
    cxLabel1: TcxLabel;
    P: TcxPageControl;
    cxLabel3: TcxLabel;
    procedure cxLabel1Click(Sender: TObject);
    procedure cxLabel3Click(Sender: TObject);
  private
    { Private declarations }
    function Add: TFrmMemoEnd;
    function GetEndereco(I: Integer): TFrmMemoEnd;
  public
    { Public declarations }
    procedure Clear;
    procedure AddFromDataset(T: TDataset);
    procedure UpdateBairroCidade(slBairros, slCidades: TStrings);
    property Enderecos[I: Integer]: TFrmMemoEnd
      read GetEndereco;
  end;

var
  FrmEnderecos: TFrmEnderecos;

implementation

{$R *.dfm}

uses ufmImagens;

{ TFrmEnderecos }

function TFrmEnderecos.Add: TFrmMemoEnd;
var 
  T: TcxTabSheet;
begin
  T := TcxTabSheet.Create(Self);
  Result := TFrmMemoEnd.Create(T);
  T.Tag := NativeInt(Result);
  Result.Tag := NativeInt(T);
  if P.PageCount=0 then
    T.Caption := 'Principal' else
    T.Caption := 'Endereço '+ IntToStr(P.PageCount+1);
  T.PageControl := P;
  Result.M.Parent := T;
  P.HideTabs := P.PageCount<2;
end;

procedure TFrmEnderecos.AddFromDataset(T: TDataset);
begin
  Add.LoadFromDataset(T);
end;

procedure TFrmEnderecos.Clear;
begin
  while P.PageCount>0 do P.Pages[0].Free;
end;

procedure TFrmEnderecos.cxLabel1Click(Sender: TObject);
begin
  Add;
end;

procedure TFrmEnderecos.cxLabel3Click(Sender: TObject);
begin
  TFrmMemoEnd(P.ActivePage.Tag).Editar;
end;

function TFrmEnderecos.GetEndereco(I: Integer): TFrmMemoEnd;
begin
  Result := TFrmMemoEnd(P.Pages[I].Tag);
end;

procedure TFrmEnderecos.UpdateBairroCidade(slBairros, slCidades: TStrings);
var I : Integer;
begin
{  for I := 0 to P.PageCount-1 do
    if P.Pages[I] <> tsAdd then 
      TFrmEndereco(P.Pages[I].Tag).UpdateBairroCidade(slBairros, slCidades);}
end;

{ TDadosEnd }

end.
