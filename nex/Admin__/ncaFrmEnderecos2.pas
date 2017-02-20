unit ncaFrmEnderecos2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, ncaFrmEndereco, DB;

type
  TFrmEnderecos = class(TForm)
    P: TcxPageControl;
    tsAdd: TcxTabSheet;
    procedure PPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
  private
    { Private declarations }
    function Add: TFrmEndereco;
  public
    { Public declarations }
    procedure Clear;
    procedure AddFromDataset(T: TDataset);
    procedure UpdateBairroCidade(slBairros, slCidades: TStrings);
  end;

var
  FrmEnderecos: TFrmEnderecos;

implementation

{$R *.dfm}

uses ufmImagens;

{ TFrmEnderecos }

function TFrmEnderecos.Add: TFrmEndereco;
var 
  T: TcxTabsheet;
begin
  T := TcxTabSheet.Create(Self);
  Result := TFrmEndereco.Create(Self);
  Result.Tag := NativeInt(T);
  T.Tag := NativeInt(Result);
  if P.PageCount=1 then
    T.Caption := 'Endereço' else
    T.Caption := 'Endereço '+ IntToStr(P.PageCount);
  T.PageControl := P;
  T.PageIndex := P.PageCount-2;
  Result.panPri.parent := T;
end;

procedure TFrmEnderecos.AddFromDataset(T: TDataset);
begin
  Add.LoadFromDataset(T);
end;

procedure TFrmEnderecos.Clear;
var I : Integer;
begin
  for I := P.PageCount-1 downto 0 do 
    if P.Pages[I] <> tsAdd then begin
      TObject(P.Pages[I].Tag).Free;
      P.Pages[I].Free;
    end;
end;

procedure TFrmEnderecos.PPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
  if NewPage=tsAdd then Add.Populate(True);
end;

procedure TFrmEnderecos.UpdateBairroCidade(slBairros, slCidades: TStrings);
var I : Integer;
begin
  for I := 0 to P.PageCount-1 do
    if P.Pages[I] <> tsAdd then 
      TFrmEndereco(P.Pages[I].Tag).UpdateBairroCidade(slBairros, slCidades);
end;

end.
