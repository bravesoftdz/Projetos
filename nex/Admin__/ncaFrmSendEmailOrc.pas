unit ncaFrmSendEmailOrc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, idHttp, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, ExtCtrls, cxLabel,
  dxGDIPlusClasses, LMDControl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, IdMultipartFormData;

type
  TFrmSendEmail = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    Image1: TImage;
    cxLabel1: TcxLabel;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FResultado : String;
    FUrl: String;
    FH : TidHttp;
    FMS : TIdMultiPartFormDataStream;
    
  public
    function Enviar(aH : TidHttp; aUrl: String; aMS: TIdMultiPartFormDataStream): String;
    { Public declarations }
  end;

var
  FrmSendEmail: TFrmSendEmail;

implementation

{$R *.dfm}

function TFrmSendEmail.Enviar(aH : TidHttp; aUrl: String; aMS: TIdMultiPartFormDataStream): String;
begin
  FH := aH;
  FUrl := aUrl;
  FMS := aMS;
  ShowModal;
  Result := FResultado;
end;

procedure TFrmSendEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmSendEmail.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TFrmSendEmail.Timer1Timer(Sender: TObject);
begin
  try
    Try
      FH.Post(FUrl, FMS);
      FResultado := '';
    except
      on E: Exception do FResultado := E.Message;
    End;
  finally
    Close;
  end;
end;

end.
