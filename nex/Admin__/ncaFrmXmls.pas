unit ncaFrmXmls;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxTextEdit, cxMemo, cxPC, Vcl.Menus, Vcl.StdCtrls, cxButtons, ShellApi;

type
  TFrmXMLs = class(TForm)
    Paginas: TcxPageControl;
    tsEnvio: TcxTabSheet;
    tsRet: TcxTabSheet;
    tsCanc: TcxTabSheet;
    tsAprov: TcxTabSheet;
    tsInut: TcxTabSheet;
    meEnvio: TcxMemo;
    meRet: TcxMemo;
    meAprov: TcxMemo;
    meCanc: TcxMemo;
    meInut: TcxMemo;
    LMDSimplePanel1: TLMDSimplePanel;
    btnSalvar: TcxButton;
    cxButton1: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    FChave : String;
    FPrimeiro : String;
    FSAT : Boolean;

    function Arq(aNome: String): String;

    procedure Salvar(M : TcxMemo; aNome: String);
  public
    procedure Mostrar(aChave, aXMLEnvio, aXMLRet, aXMLAprovado, aXMLretCanc, aXMLretInut: String; aSomenteSalvar: Boolean; aSAT: Boolean);
    { Public declarations }
  end;

var
  FrmXMLs: TFrmXMLs;

implementation

{$R *.dfm}

uses ufmImagens;

function TFrmXMLs.Arq(aNome: String): String;
const Pref : Array[Boolean] of String = ('NFCE_', 'CFeSAT_');
begin
  Result := ExtractFilePath(ParamStr(0))+Pref[FSAT]+aNome+'.xml';
end;

procedure TFrmXMLs.btnSalvarClick(Sender: TObject);
var S: String;
begin
  FPrimeiro := '';
  Salvar(meAprov, 'Aprovado');
  Salvar(meEnvio, 'Envio');
  Salvar(meRet, 'Retorno');
  Salvar(meCanc, 'Retorno_Cancelamento');
  Salvar(meInut, 'Retorno_Inutilizacao');  

  if FPrimeiro>'' then
    ShellExecute(0, nil, 'explorer.exe', PWideChar('/select,'+FPrimeiro), nil, SW_SHOWNORMAL)
end;

procedure TFrmXMLs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmXMLs.FormCreate(Sender: TObject);
begin
  Paginas.ActivePageIndex := 0;
end;

procedure TFrmXMLs.Mostrar(aChave, aXMLEnvio, aXMLRet, aXMLAprovado,
  aXMLretCanc, aXMLretInut: String; aSomenteSalvar: Boolean; aSAT: Boolean);
var I: Integer;  
begin
  FChave := aChave;
  FSAT := aSAT;
  meEnvio.Lines.Text := aXMLEnvio;
  meRet.Lines.Text := aXMLRet;
  meAprov.Lines.Text := aXMLAprovado;
  meCanc.Lines.Text := aXMLretCanc;
  meInut.Lines.Text := aXMLretInut;

  tsEnvio.TabVisible := (aXMLEnvio>'');
  tsRet.TabVisible := (aXMLRet>'');
  tsAprov.TabVisible := (aXMLAprovado>'');
  tsCanc.TabVisible := (aXMLretCanc>'');
  tsInut.TabVisible := (aXMLretInut>'');

  for I := 0 to Paginas.PageCount-1 do 
    if Paginas.Pages[I].TabVisible then begin
      Paginas.ActivePageIndex := I;
      Break;
    end;

  if aSomenteSalvar then begin
    btnSalvarClick(nil);
    Free;
  end else
    ShowModal;
end;

procedure TFrmXMLs.Salvar(M: TcxMemo; aNome: String);
begin
  if M.Lines.Text='' then Exit;

  aNome := Arq(aNome);
  if FPrimeiro='' then FPrimeiro := aNome;
  M.Lines.SaveToFile(aNome);
end;

end.
