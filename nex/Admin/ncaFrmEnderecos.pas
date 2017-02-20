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
    lbPri: TcxLabel;
    lbEditar: TcxLabel;
    lbCopiar: TcxLabel;
    procedure cxLabel1Click(Sender: TObject);
    procedure PCanClose(Sender: TObject; var ACanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure PChange(Sender: TObject);
    procedure lbEditarClick(Sender: TObject);
    procedure lbPriClick(Sender: TObject);
    procedure lbCopiarClick(Sender: TObject);
  private
    FOnAfterEditar : TNotifyEvent;
    FValidarNFe : Boolean;
    FParentFrm : HWND;
    { Private declarations }
    function Add: TFrmMemoEnd;
    function GetEndereco(I: Integer): TFrmMemoEnd;
    procedure wmRefresh(var Msg: TMessage);
      message wm_user;
    procedure RenameAll;  
  public
    { Public declarations }
    property ParentFrm: HWND
      read FParentFrm write FParentFrm;
      
    procedure Clear;
    procedure Novo;
    procedure Editar;
    procedure AfterEditar(Sender: TObject);
    procedure AddFromDataset(T: TDataset);
    procedure UpdateBairroCidade(slBairros, slCidades: TStrings);
    procedure Load(aClienteID: Cardinal);
    procedure Save(aClienteID: Cardinal);

    function EndByID(aGuid: TGUID): TFrmMemoEnd;

    function ActiveFrm: TFrmMemoEnd;

    property ValidarNFe: Boolean read FValidarNFe write FValidarNFe;
    
    property OnAfterEditar: TNotifyEvent
      read FOnAfterEditar write FOnAfterEditar;
      
    property Enderecos[I: Integer]: TFrmMemoEnd
      read GetEndereco;
  end;

var
  FrmEnderecos: TFrmEnderecos;

implementation

{$R *.dfm}

uses ufmImagens, ncGuidUtils, ncaDM, ncClassesBase, ncaFrmRecursoPRO,
  ncaStrings, Clipbrd;

{ TFrmEnderecos }

function TFrmEnderecos.ActiveFrm: TFrmMemoEnd;
begin
  Result := TFrmMemoEnd(P.ActivePage.Tag);
end;

function TFrmEnderecos.Add: TFrmMemoEnd;
var 
  T: TcxTabSheet;
begin
  T := TcxTabSheet.Create(Self);
  Result := TFrmMemoEnd.Create(T);
  Result.ValidarNFe := FValidarNFe;
  Result.ParentFrm := FParentFrm;
  T.Tag := NativeInt(Result);
  Result.Tag := NativeInt(T);
  Result.OnAfterEditar := AfterEditar;
  if P.PageCount=0 then
    T.Caption := rsPrincipal else
    T.Caption := rsEndereco + ' '+ IntToStr(P.PageCount+1);
  T.PageControl := P;
  Result.M.Parent := T;
  P.HideTabs := P.PageCount<2;
end;

procedure TFrmEnderecos.AddFromDataset(T: TDataset);
var F : TFrmMemoEnd;
begin
  F := nil;
  with T.FieldByName('endereco_id') do 
    if not IsNull then
      F := EndByID(TGuidEx.FromString(AsString));

  if F=nil then F := Add;
  F.LoadFromDataset(T);
end;

procedure TFrmEnderecos.AfterEditar(Sender: TObject);
begin
  if Assigned(FOnAfterEditar) then FOnAfterEditar(Sender);
end;

procedure TFrmEnderecos.Clear;
begin
  while P.PageCount>0 do P.Pages[0].Free;
end;

procedure TFrmEnderecos.cxLabel1Click(Sender: TObject);
begin
  Novo;
end;

procedure TFrmEnderecos.Editar;
begin
  ActiveFrm.Editar(FParentFrm);
end;

function TFrmEnderecos.EndByID(aGuid: TGUID): TFrmMemoEnd;
var I : Integer;
begin
  for I := 0 to P.PageCount-1 do
    if Enderecos[I].ID=aGuid then begin
      Result := Enderecos[I];
      Exit;
    end;
  Result := nil;
end;

procedure TFrmEnderecos.FormCreate(Sender: TObject);
begin
  FOnAfterEditar := nil;
  FParentFrm := 0;
  FValidarNFe := False;
end;

function TFrmEnderecos.GetEndereco(I: Integer): TFrmMemoEnd;
begin
  Result := TFrmMemoEnd(P.Pages[I].Tag);
end;

procedure TFrmEnderecos.lbCopiarClick(Sender: TObject);
begin
  Clipboard.AsText := ActiveFrm.DadosAtu.Resumo;
end;

procedure TFrmEnderecos.lbEditarClick(Sender: TObject);
begin
  Editar;
end;

procedure TFrmEnderecos.lbPriClick(Sender: TObject);
begin
  P.ActivePage.PageIndex := 0;
  P.ActivePageIndex := 0;
  RenameAll;
end;

procedure TFrmEnderecos.Load(aClienteID: Cardinal);
begin
  with Dados do begin
    tbEnd.IndexName := 'I_cliente_pos';
    tbEnd.SetRange([aClienteID], [aClienteID]);
    try
      tbEnd.First;
      while not tbEnd.Eof do begin
        AddFromDataset(tbEnd);
        tbEnd.Next;
      end;
    finally
      tbEnd.CancelRange;
    end;
  end;
end;

procedure TFrmEnderecos.Novo;
var F: TFrmMemoEnd;
begin
  if ActiveFrm.DadosAtu.Vazio then begin
    Editar;
    Exit;
  end;

  if not gConfig.IsPremium then begin
    TFrmRecursoPro.Create(Self).Mostrar(rsMultiploEndPRO, 'MultiploEnd');
    Exit;
  end;
    
  F := Add;
  if F.Editar(FParentFrm) then 
    P.ActivePage := TcxTabSheet(F.Tag) else
    TObject(F.Tag).Free;
  P.HideTabs := (P.PageCount<2);
end;

procedure TFrmEnderecos.PCanClose(Sender: TObject; var ACanClose: Boolean);
begin
  ACanClose := (P.PageCount>1);
  postmessage(handle, wm_user, 0, 0);
end;

procedure TFrmEnderecos.PChange(Sender: TObject);
begin
  lbPri.Visible := (P.ActivePageIndex>0);
end;

procedure TFrmEnderecos.RenameAll;
var I : Integer;
begin
  for I := 0 to P.PageCount-1 do 
    if I=0 then 
      P.Pages[I].Caption := rsPrincipal else
      P.Pages[I].Caption := rsEndereco + ' '+ IntToStr(I+1);
end;

procedure TFrmEnderecos.Save(aClienteID: Cardinal);
var I : Integer;
begin
  with Dados do begin
    tbEnd.IndexName := 'I_cliente_pos';
    tbEnd.SetRange([aClienteID], [aClienteID]);
    try
      tbEnd.First;
      while not tbEnd.Eof do begin
        if EndByID(tbEndendereco_id.AsGuid)=nil then
          ApagaEndAtual(False) else
          tbEnd.Next;
      end;
    finally
      tbEnd.CancelRange;
    end;

    tbEnd.IndexName := 'I_endereco_id';
    for I := 0 to P.PageCount-1 do begin
      if tbEnd.FindKey([TGuidEx.ToString(Enderecos[I].ID)]) then
        tbEnd.Edit else
        tbEnd.Append;
      Enderecos[I].DadosAtu.enCliente := aClienteID;
      Enderecos[I].DadosAtu.SaveToDataset(tbEnd);
      tbEnd.Post;
    end;
  end;
end;

procedure TFrmEnderecos.UpdateBairroCidade(slBairros, slCidades: TStrings);
var I : Integer;
begin
{  for I := 0 to P.PageCount-1 do
    if P.Pages[I] <> tsAdd then 
      TFrmEndereco(P.Pages[I].Tag).UpdateBairroCidade(slBairros, slCidades);}
end;

procedure TFrmEnderecos.wmRefresh(var Msg: TMessage);
begin
  RenameAll;
  P.HideTabs := (P.PageCount<2);
end;

{ TDadosEnd }

end. 
