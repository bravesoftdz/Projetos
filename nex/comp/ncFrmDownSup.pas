unit ncFrmDownSup;
{
    ResourceString: Dario 12/03/13
}


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, ActnList, ExtActns, XPStyleActnCtrls,
  ActnMan, StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxLabel,
  ComCtrls, ncClassesBase, ExtCtrls, cxGraphics, cxLookAndFeels, System.Actions,
  ieview, iemview, LMDCustomComponent, LMDBaseController, LMDCustomContainer,
  LMDGenericList;

type
  TFrmDownSup = class(TForm)
    cxButton1: TcxButton;
    ActionManager1: TActionManager;
    Timer1: TTimer;
    Timer2: TTimer;
    DownUrl: TDownLoadURL;
    Timer3: TTimer;
    img: TImageEnMView;
    cxLabel1: TcxLabel;
    genList: TLMDGenericList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FAutomatize : Boolean;
    procedure DoBaixar;
  public
    procedure Baixar(aNome, aObs: String; aAutomatize: Boolean = False);
    { Public declarations }
  end;

  procedure LimpaDirSuporte;

var
  FrmDownSup: TFrmDownSup;
  NumDown : Integer = 0;

implementation

uses ncShellStart, uNexTransResourceStrings_PT;

{$R *.dfm}

function GetFileSize(S: String): Int64;
var SR: TSearchRec;
begin
  if FindFirst(S, faAnyFile, SR)=0 then
  begin
    Result := SR.Size;
    SysUtils.FindClose(SR);
  end else
    Result := 0;
end;

function DirSup: String;
begin
  Result := ExtractFilePath(ParamStr(0))+'\suporte'; // do not localize
end;

procedure TFrmDownSup.Baixar(aNome, aObs: String; aAutomatize: Boolean = False);
var sURL: String;

function NomePlano: String;
begin
  if gConfig.IsPremium then begin
    if gConfig.Pro then
      Result := 'PRO' else
      Result := 'PREMIUM';
  end else
    Result := 'FREE';
end;

begin
  FAutomatize := aAutomatize;
  Inc(NumDown);
  aNome := aNome + ' ('+IntToStr(NumDown)+')';
//  DownURL.URL := 'https://secure.logmeinrescue.com/Customer/Download.aspx?EntryID=1856965867'+ // do not localize
  sUrl := 'suporteremoto.nextar.com.br';
  if SLingua>'' then
    sUrl := sLingua+'.'+sUrl;

  DownURL.URL := 'http://'+sUrl+
                 '?comment4='+aNome+ // do not localize
                 '&comment3='+NomePlano+
                 '&comment1='+gConfig.Conta+ // do not localize
                 '&comment2='+aobs;
  LimpaDirSuporte;                 
  ShowModal;                 
end;

procedure TFrmDownSup.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmDownSup.DoBaixar;
begin
  LimpaDirSuporte;
  if not DirectoryExists(DirSup) then
    MkDir(DirSup);
  DownURL.Filename := DirSup + '\SupRem' + IntToStr(Random(MaxInt)) + '.exe'; // do not localize
  try
    DownURL.ExecuteTarget(nil);
  except
    Close;
    raise;
  end;
  Timer3.Enabled := True;
end;

procedure TFrmDownSup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmDownSup.FormCreate(Sender: TObject);
begin
  genList.Items[0].Data.Position := 0;
  img.mio.LoadFromStreamGIF(genList.Items[0].Data);
end;

procedure TFrmDownSup.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
  img.Playing := True;
  img.PlayLoop := True;
end;

procedure TFrmDownSup.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  DoBaixar;
end;

procedure TFrmDownSup.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;
  ShellStart(DownURL.Filename);
  Close;
end;

procedure TFrmDownSup.Timer3Timer(Sender: TObject);
begin
  if GetFileSize(DownUrl.Filename)>0 then begin
    Timer3.Enabled := False;
    Timer2.Enabled := True;
  end;
  
end;

procedure LimpaDirSuporte;
var SR: TSearchRec;
begin
  if FindFirst(DirSup+'\*.*', faArchive, SR)=0 then
  try
    repeat
      DeleteFile(DirSup+'\'+SR.Name);
    until (FindNext(SR)<>0);
  finally
    FindClose(SR);
  end;
end;

initialization
  Randomize;

end.

