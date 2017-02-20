unit uFrmDownNFCE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, LMDCustomComponent, LMDDownload,
  LMDWebBase, LMDWebConfig, LMDWebHTTPGet, Vcl.ComCtrls;

type
  TFrmDownNFCE = class(TForm)
    PB: TProgressBar;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure OnProgresso(aEtapa, aProgresso : Byte; aErro : Integer; aErroStr: String);
    
    { Public declarations }
  end;

var
  FrmDownNFCE: TFrmDownNFCE;

implementation

{$R *.dfm}

uses ncDMDependNFCE;

procedure TFrmDownNFCE.Button1Click(Sender: TObject);
begin
  Button1.Enabled := False;
  Label1.Visible := True;
  Button1.Visible := True;
  PB.Visible := True;
  TdmDependNFCE.Instalar(True, OnProgresso);
end;

procedure TFrmDownNFCE.OnProgresso(aEtapa, aProgresso: Byte; aErro: Integer;
  aErroStr: String);
begin
  Label1.Caption := aErroStr;
  PB.Position := aProgresso;

  if (aErro>0) then begin
    Button1.Enabled := True;
    ShowMessage(aErroStr);
  end else
  if aEtapa=4 then
    ShowMessage('Sucesso!');
end;

end.
