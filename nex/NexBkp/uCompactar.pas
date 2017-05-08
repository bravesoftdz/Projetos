unit uCompactar;

interface

uses
Windows, Dialogs, SysUtils, Classes;

Type
  TCompactarWinrar = class
  private
  FPathInstalacao: String;
  FDestino: String;
  FOriginal: TStringList;
  procedure SetDestino(const Value: String);
  procedure SetOriginal(const Value: TStringList);
  procedure SetPathInstalacao(const Value: String);
  { private declarations }
  protected
  { protected declarations }
  public
  { public declarations }
  property PathInstalacao : String read FPathInstalacao write SetPathInstalacao;

  property Original : TStringList read FOriginal write SetOriginal;
  property Destino : String read FDestino write SetDestino;
  procedure Compactar;
  constructor Create;
  published
  { published declarations }
end;
implementation
{ TCompactarWinrar }

procedure TCompactarWinrar.Compactar;
Var
cmd, Arquivos : String;
I: Integer;
begin
  for I := 0 to Original.Count - 1 do
  begin
    Arquivos := Arquivos + '"' + Original.Strings[I] + '" ' ;
  end;
  Cmd := PathInstalacao + ' a "' + Destino + '"' + ' ' + Arquivos;
  WinExec( PAnsiChar(AnsiString(Cmd)), SW_HIDE);
  Showmessage('Arquivo Compactado com sucesso !!!');
end;

constructor TCompactarWinrar.Create;
begin
  Original := TStringList.Create;
end;

procedure TCompactarWinrar.SetDestino(const Value: String);
begin
  if DirectoryExists(ExtractFileDir(Value)) then
    FDestino := Value
  else
    raise Exception.Create('Arquivo de Destino não existe ' + #13+
                           'Arquivo : ' + Value );
end;

procedure TCompactarWinrar.SetOriginal(const Value: TStringList);
begin
  FOriginal := Value;
end;

procedure TCompactarWinrar.SetPathInstalacao(const Value: String);
begin
  FPathInstalacao := Value;
end;
end.
