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
    procedure MEnter(Sender: TObject);
    procedure MClick(Sender: TObject);
  private
    { Private declarations }
    FOnAfterEditar : TNotifyEvent;
    FParentFrm: HWND;
    FMostrarRota : Boolean;
    FEditOnClick: Boolean;
    FValidarNFe: Boolean;

    procedure wmEditar(var Msg: TMessage); message wm_user;
    
  public
    DadosAnt, 
    DadosAtu: TncEndereco;

    procedure LoadFromDataset(aDataset: TDataset);

    property ValidarNFe: Boolean read FValidarNFe write FValidarNFe;

    property ParentFrm: HWND read FParentFrm write FParentFrm;

    property EditOnClick: Boolean read FEditOnClick write FEditOnClick;

    function Editar(aHandle: HWND): Boolean;

    function ID: TGUID;

    procedure Clear;
    
    property MostrarRota: Boolean read FMostrarRota write FMostrarRota;

    property OnAfterEditar: TNotifyEvent
      read FOnAfterEditar write FOnAfterEditar;
    
    { Public declarations }
  end;

var
  FrmMemoEnd: TFrmMemoEnd;

implementation

{$R *.dfm}

uses ncClassesBase, ncaFrmEndereco;

procedure TFrmMemoEnd.Clear;
begin
  DadosAnt.Clear;
  DadosAtu.Assign(DadosAnt);
  M.Lines.Clear;
end;

function TFrmMemoEnd.Editar(aHandle: HWND): Boolean;
begin
  with TFrmEndereco.Create(Self) do begin
    btnRota.Visible := FMostrarRota;
    Result := Editar(DadosAtu, FValidarNFe);
  end;
  if Result then
    M.Lines.Text := DadosAtu.Resumo;

  if Assigned(FOnAfterEditar) then FOnAfterEditar(Self);
end;

procedure TFrmMemoEnd.FormCreate(Sender: TObject);
begin
  FMostrarRota := True;
  FValidarNFe := False;
  FEditOnClick := False;
  FOnAfterEditar := nil;
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

function TFrmMemoEnd.ID: TGUID;
begin
  Result := DadosAnt.enID;
end;

procedure TFrmMemoEnd.LoadFromDataset(aDataset: TDataset);
begin
  DadosAnt.LoadFromDataset(aDataset);
  DadosAtu.Assign(DadosAnt);
  M.Lines.Text := DadosAtu.Resumo;
end;

procedure TFrmMemoEnd.MClick(Sender: TObject);
begin
  if FEditOnClick then postMessage(Handle, wm_user, 0, 0);
end;

procedure TFrmMemoEnd.MEnter(Sender: TObject);
begin
  if not FEditOnClick then
    postMessage(Handle, wm_user, 0, 0);
end;

procedure TFrmMemoEnd.wmEditar(var Msg: TMessage);
begin
  if M.Focused then Editar(FParentFrm);
end;

end.
