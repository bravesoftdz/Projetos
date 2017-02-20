unit ncFrmSuporteRem;
{
    ResourceString: Dario 12/03/13
    Nada para fazer
}


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxDropDownEdit, cxLabel, ExtCtrls, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxImageComboBox, ncClassesBase, ShellApi, registry,
  LMDControl, cxLookAndFeels, PngImage, LMDPNGImage;

type
  TFrmSuporte = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    LMDSimplePanel2: TLMDSimplePanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    btnCancelar: TcxButton;
    btnOk: TcxButton;
    Image1: TImage;
    procedure btnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FRes: Boolean;

    { Private declarations }
  public
    { Public declarations }
    function ObterSuporte: Boolean;
  end;

  procedure ChamaSuporte(Nome, Obs: String; aAutomatize: Boolean = False);

var
  FrmSuporte: TFrmSuporte;

const
  Portas : Array[0..1] of Integer = (1975, 1974);  

implementation

uses 
  ncFrmDownSup;

{$R *.dfm}

procedure ChamaSuporte(Nome, Obs: String; aAutomatize: Boolean = False);
//var R: TRegistry;
begin
{  R := TRegistry.Create;
  try
    R.RootKey := HKEY_CURRENT_USER;
    R.Access := KEY_ALL_ACCESS;
    R.OpenKey('Software\LogMeInRescueCallingCard', True);
    try
      R.WriteString('CField0', Nome);
    finally
      R.CloseKey;
    end;

    R.OpenKey('Software\LogMeInRescueCallingCard', True);
    try
      R.WriteString('CField1', gConfig.CodLoja);
    finally
      R.CloseKey;
    end;
    
    R.OpenKey('Software\LogMeInRescueCallingCard', True);
    try
      R.WriteString('CField2', Obs);
    finally
      R.CloseKey;
    end;
    
    ShellExecute(0, 'open', 'CallingCard.exe', nil,
      PChar(ExtractFilePath(Application.ExeName)+'suporte\'),
      SW_SHOW);
    TdmLogmein.Create(nil);
  finally
    R.Free;
  end; }

  TFrmDownSup.Create(nil).Baixar(Nome, Obs, aAutomatize);
end;  


{
procedure ChamaSuporte(Porta: Integer);
var CFG: TStringList;
begin
  // Write simple configuration file for RemoteHost.exe
  // It is assumed that RemoteHost.exe is located in the same folder
  // with your application
  CFG := TStringList.Create;
  try
    CFG.Add('[RemoteHost]');
    CFG.Add('User='+gConfig.CodLoja);
    CFG.Add('Address=suporte.nextar.com.br');
    CFG.Add('Port='+IntToStr(Porta));
    CFG.Add('AllowModify=0');

    Cfg.Add('[MainForm]');
    Cfg.Add('mnuEndSession.Caption=Finalizar Suporte');
    Cfg.Add('cbxPorts.Visible=True');
    Cfg.Add('Caption=Assistência Remota');
    Cfg.Add('lblHelpDeskPort.Caption=Selecionar Técnico:');
    Cfg.Add('lblHelpDeskAddr.Caption=Endereço:');
    Cfg.Add('lblUsername.Caption=Loja');
    Cfg.Add('btnConnect.Caption=OK');
    Cfg.Add('btnCancel.Caption=Cancelar');
    Cfg.Add('lblMessage.Left=42');
    Cfg.Add('lblMessage.Width=373');
    Cfg.Add('lblMessage.Caption=Solicitar Assistência Remota: Clique em OK para se conectar ao serviço de suporte técnico remoto da Nextar. Através dessa opção seu computador será controlado por um técnico que terá acesso total ao seu computador.');

    Cfg.Add('[Messages]');
    Cfg.Add('UnableToConnect=Não foi possível conectar ao suporte técnico da Nextar!');

    CFG.SaveToFile(
      IncludeTRailingBackslash(ExtractFilePath(Application.ExeName))
      + 'RemoteHost.cfg');
  finally
    CFG.Free;
  end;
  ShellExecute(0, 'open', 'RemoteHost.exe', pchar('-silent'),
    PChar(ExtractFilePath(Application.ExeName)),
    SW_SHOW);
end;  
}

procedure TFrmSuporte.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSuporte.btnOkClick(Sender: TObject);
begin
  FRes := True;
  Close;
end;

procedure TFrmSuporte.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmSuporte.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then begin
    Key := #0;
    Close;
  end;
end;

function TFrmSuporte.ObterSuporte: Boolean;
var I: Integer;
begin
  ShowModal;
  Result := FRes;
end;

end.



