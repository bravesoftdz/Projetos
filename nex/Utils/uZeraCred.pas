unit uZeraCred;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxProgressBar, nxllTransport, nxptBasePooledTransport,
  nxtwWinsockTransport, nxdb, nxsdServerEngine, nxsrServerEngine, nxllComponent,
  Data.DB, nxreRemoteServerEngine;

type
  TForm12 = class(TForm)
    tCli: TnxTable;
    tCliCodigo: TStringField;
    tCliNome: TStringField;
    tCliEndereco: TStringField;
    tCliBairro: TStringField;
    tCliCidade: TStringField;
    tCliUF: TStringField;
    tCliCEP: TStringField;
    tCliSexo: TStringField;
    tCliObs: TnxMemoField;
    tCliCpf: TStringField;
    tCliRg: TStringField;
    tCliTelefone: TStringField;
    tCliEmail: TnxMemoField;
    tCliPai: TStringField;
    tCliMae: TStringField;
    tCliDataNasc: TDateTimeField;
    tCliCelular: TStringField;
    tCliIncluidoEm: TDateTimeField;
    tCliIncluidoPor: TStringField;
    tCliSemFidelidade: TBooleanField;
    tCliPJuridica: TBooleanField;
    tCliInativo: TBooleanField;
    tCliFornecedor: TBooleanField;
    tCliID: TUnsignedAutoIncField;
    nxSession1: TnxSession;
    nxDB: TnxDatabase;
    nxTCP: TnxWinsockTransport;
    PB: TcxProgressBar;
    cxButton1: TcxButton;
    nxRSE: TnxRemoteServerEngine;
    tCliValorCred: TCurrencyField;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

procedure TForm12.cxButton1Click(Sender: TObject);
begin
  tCli.Open;

  PB.Properties.Max := tCli.RecordCount;
  PB.Position := 0;

  tCli.First;
  while not tCli.Eof do begin
    PB.Position := PB.Position + 1;
    tCli.Edit;
    tCliValorCred.Clear;
    tCli.Post;
    tCli.Next;                     
    Application.ProcessMessages; 
  end;
  ShowMessage('Créditos Zerados');
end;

end.
