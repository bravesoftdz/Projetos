unit ncaFrmEditEntrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, PngImage, ExtCtrls, LMDControl,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, Menus,
  StdCtrls, cxButtons, ImgList, ncMyImage, ncaFrmCliPesq2, ncDebCredValidator,
  System.ImageList, LMDCustomScrollBox, LMDScrollBox, LMDSplt, ncMovEst;

type
  TFrmEditEntrega = class(TForm)
    imgs: TcxImageList;
    cxImageList1: TcxImageList;
    panPri: TLMDSimplePanel;
    Img: TMyImage;
    lbDadosEnd: TcxLabel;
    lbRemove: TMyImage;
    procedure FormCreate(Sender: TObject);
    procedure lbDadosEndClick(Sender: TObject);
    procedure ImgClick(Sender: TObject);
    procedure imgRemoverCliClick(Sender: TObject);
    procedure lbRemoveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FID: TGUID;
    FCliente: Cardinal;
    FDadosEnd: String;
    FIDTransp: Cardinal;
    FTipoTransp: Byte;
    FNomeTransp: String;
    
    FMovEst: TncMovEst;
    FOnChange: TNotifyEvent;
    
    procedure SetDadosEnd(const Value: String);
    procedure SetID(const Value: TGUID);
    procedure SetCliente(const Value: Cardinal);
    procedure LoadDadosEnd;
    function FreteStr: String;
    function TipoForStr: String;
  public
    procedure Init(aMovEst: TncMovEst);
    
    procedure Pesquisa;

    procedure UpdateTransp;
    
    procedure Atualiza; virtual;

    function ID_asstring: String;

    function Vazio: Boolean;

    { Private declarations }
    property ID: TGUID read FID write SetID;

    property Cliente: Cardinal read FCliente write SetCliente;

    property DadosEnd: String
      read FDadosEnd write SetDadosEnd;

    property OnChange: TNotifyEvent
      read FOnChange write FOnChange;  
  end;

var
  FrmEditEntrega: TFrmEditEntrega;


resourcestring
  rsF6Endereco = 'Dados da Entrega (F9)';
  rsExigirCliente = 'É necessário selecionar um cliente para poder definir o endereço de entrega';

implementation

uses ncaDM, ncaFrmCadCli, ncaFrmCadFornecedor, ncaFrmPesqFor, ncClassesBase,
  ncGuidUtils, ncEndereco, ncaFrmPesqEndereco, ncaFrmRecursoPRO, ncaStrings,
  ncaFrmEntrega;

{$R *.dfm}

{ TFrmEditEntrega }

procedure TFrmEditEntrega.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEditEntrega.FormCreate(Sender: TObject);
begin
  FID := TGuidEx.Empty;
  FTipoTransp := 0;
  FIDTransp := 0;
  FNomeTransp := '';
  FDadosEnd := '';
  FOnChange := nil;
end;

function TFrmEditEntrega.FreteStr: String;
begin
  if FMovEst.Frete>0.009 then
    Result := CurrencyToStr(FMovEst.Frete) else
    Result := '';
end;

function TFrmEditEntrega.ID_asString: String;
begin
  if TGuidEx.IsEmpty(FID) then
    Result := '' else
    Result := TGuidEx.ToString(FID);
end;

procedure TFrmEditEntrega.ImgClick(Sender: TObject);
begin
  with Dados do 
  if TGuidEx.IsEmpty(ID) then
    Pesquisa
  else begin
    if EditEnd(FID, False) then begin
      LoadDadosEnd;
      Atualiza;
    end;
  end; 
end;

procedure TFrmEditEntrega.imgRemoverCliClick(Sender: TObject);
begin
  ID := TGuidEx.Empty;
end;

procedure TFrmEditEntrega.Init(aMovEst: TncMovEst);
begin
  FMovEst := aMovEst;
end;

procedure TFrmEditEntrega.lbDadosEndClick(Sender: TObject);
begin
  Pesquisa;
  lbDadosEnd.Invalidate;
  lbDadosEnd.Update;
end;

procedure TFrmEditEntrega.lbRemoveClick(Sender: TObject);
begin
  ID := TGuidEx.Empty;
end;

procedure TFrmEditEntrega.LoadDadosEnd;
var E: TncEndereco;
begin
  E := TncEndereco.Create;
  try
    E.LoadFromDataset(Dados.tbEnd);
    DadosEnd := E.ResumoLinhaUnica;
  finally
    E.Free;
  end;
end;

procedure TFrmEditEntrega.Pesquisa;
var
  P: TFrmPesqEndereco;
  F: TFrmEntrega;
  aID : TGuid;
begin
  if Vazio then 
  if not gConfig.IsPremium then begin
    TFrmRecursoPro.Create(Self).Mostrar(rsEndEntregaPRO, 'endentrega');
    Exit;
  end;

  if FCliente=0 then raise Exception.Create(rsExigirCliente);

{  P := gPesqEnderecoList.GetFrm;
  try
    aID := FID;
    if P.Pesquisar(FCliente, aID) then ID := aID;
  finally
    gPesqEnderecoList.ReleaseFrm(P);
  end;}
  if TFrmEntrega.Create(Self).Editar(FMovEst) then begin
    ID := FMovEst.Native_End_Entrega;
    if Assigned(FOnChange) then FOnChange(Self);
    FMovEst.Entregar := True;
  end;
end;

procedure TFrmEditEntrega.SetCliente(const Value: Cardinal);
begin
  if FCliente=Value then Exit;

  FCliente := Value;

  with Dados do
  if not Vazio then begin
    if AchaEnd(FID) then begin
      if (tbEndCliente_ID.Value<>FCliente) and (tbEndCliente_ID.Value>0) then 
        ID := TGuidEx.Empty;
    end else
      ID := TGuidEx.Empty;
  end;
end;

procedure TFrmEditEntrega.SetDadosEnd(const Value: String);
begin
  FDadosEnd := Value;
  Atualiza;
end;

procedure TFrmEditEntrega.SetID(const Value: TGuid);
begin
    FID := Value;
  with Dados do
  if TGuidEx.IsEmpty(Value) then begin
    FDadosEnd := '';
  end else 
  if AchaEnd(Value) then 
    LoadDadosEnd
  else begin
    FID := TGuidEx.Empty;
    FDadosEnd := '';
  end;
  Atualiza;
  if Assigned(FOnChange) then FOnChange(Self);
end;

function TFrmEditEntrega.TipoForStr: String;
begin
  case FTipoTransp of
    tipofor_transp : Result := rsTransportadora;
    tipofor_entregador : Result := rsEntregador;
  else
    Result := '';  
  end;
end;

procedure TFrmEditEntrega.UpdateTransp;
begin
  if FIDTransp=FMovEst.TranspEnt then Exit;
  FIDTransp := FMovEst.TranspEnt;
  if (FIDTransp>0) and Dados.tbCli.Locate('ID', FIDTransp, []) then begin
    FNomeTransp := Dados.tbCliNome.Value;
    FTipoTransp := Dados.tbCliTipoFor.Value;
  end else begin
    FNomeTransp := '';
    FTipoTransp := 0;
  end;
end;

function TFrmEditEntrega.Vazio: Boolean;
begin
  Result := TGuidEx.IsEmpty(FID);
end;

procedure TFrmEditEntrega.Atualiza;
var S: String;
begin
  UpdateTransp;
  if not TGuidEx.IsEmpty(FID) then begin
    S := '';
    if FreteStr>'' then
      S := FreteStr;
    if FNomeTransp>'' then begin
      if S>'' then S := S + ' - ';
      S := S+TipoForStr+': '+FNomeTransp;
    end;
    if S>'' then
      lbDadosEnd.Caption := FDadosEnd + sLineBreak + S else
      lbDadosEnd.Caption := FDadosEnd;
    lbDadosEnd.AutoSize := False;
    lbDadosEnd.Width := 2000;
    lbDadosEnd.AutoSize := True;
    lbDadosEnd.Style.TextColor := clBlack;
    lbDadosEnd.Style.TextStyle := [];
    lbDadosEnd.StyleHot.TextStyle := [fsUnderline];
    lbDadosEnd.Style.Font.Size := 12;
    Img.MouseOffDrawMode := idmNormal;
    lbRemove.Visible := True;
    lbRemove.Left := lbDadosEnd.Left + 1;
  end else begin
    lbDadosEnd.Style.TextColor := $004E4E4E;
    lbDadosEnd.Style.TextStyle := [];
    lbDadosEnd.StyleHot.TextStyle := [fsUnderline];
    lbDadosEnd.Style.Font.Size := 12;
    Img.MouseOffDrawMode := idmFaded;
    lbDadosEnd.Caption := rsF6Endereco;
    lbDadosEnd.AutoSize := False;
    lbDadosEnd.Width := 2000;
    lbDadosEnd.AutoSize := True;
    lbRemove.Visible := False;
  end;
end;

end.





