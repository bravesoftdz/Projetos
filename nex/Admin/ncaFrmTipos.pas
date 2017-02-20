unit ncaFrmTipos;
{
    ResourceString: Dario 11/03/13
}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ncClassesBase, StdCtrls, CheckLst, cxLookAndFeelPainters, cxButtons, Menus,
  cxGraphics, cxLookAndFeels, cxControls, cxContainer, cxEdit, cxCheckBox,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel;

type
  TFrmTipos = class(TForm)
    btnTodos: TcxButton;
    btnNenhum: TcxButton;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    LMDSimplePanel1: TLMDSimplePanel;
    tr8: TcxCheckBox;
    tr17: TcxCheckBox;
    tr14: TcxCheckBox;
    tr16: TcxCheckBox;
    tr13: TcxCheckBox;
    tr10: TcxCheckBox;
    tr9: TcxCheckBox;
    tr18: TcxCheckBox;
    tr7: TcxCheckBox;
    tr6: TcxCheckBox;
    tr5: TcxCheckBox;
    tr4: TcxCheckBox;
    tr3: TcxCheckBox;
    tr2: TcxCheckBox;
    procedure btnTodosClick(Sender: TObject);
    procedure btnNenhumClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    PTipos : PArrayTipoTran;
    { Public declarations }
    function CB(aTipo: Byte): TcxCheckBox;
    function Selecionar(sl: TStrings): Boolean;

    function Tudo: Boolean;
    function Nada: Boolean;
  end;

var
  FrmTipos: TFrmTipos;

implementation

{$R *.DFM}

function TFrmTipos.Selecionar(sl: TStrings): Boolean;
var 
  I : Integer;
  C : TcxCheckBox;
begin
  for i := 1 to trMax do begin
    C := CB(i);
    if assigned(C) then
      C.Checked := (sl.Values[IntToStr(I)]='1');
  end;
    
  ShowModal;
  
  if ModalResult=mrOk then  begin
    Result := True;
    if Tudo or Nada then
      sl.Clear
    else 
      for i := 1 to trMax do begin
        C := CB(i);
        if assigned(C) then
          sl.Values[i.ToString] := Byte(C.Checked).ToString;
      end;
  end else
    Result := False;
end;

function TFrmTipos.Tudo: Boolean;
var 
  I : Integer;
  C : TcxCheckBox;
begin
  Result := False;
  for i := 1 to trMax do begin
    C := CB(i);
    if assigned(C) and (not C.Checked) then Exit;
  end;
  Result := True;
end;

procedure TFrmTipos.btnTodosClick(Sender: TObject);
var 
  I : Integer;
  C : TcxCheckBox;
begin
  for i := 1 to trMax do begin
    C := CB(i);
    if assigned(C) then C.Checked := True;
  end;
end;

procedure TFrmTipos.btnNenhumClick(Sender: TObject);
var 
  I : Integer;
  C : TcxCheckBox;
begin
  for i := 1 to trMax do begin
    C := CB(i);
    if assigned(C) then C.Checked := False;
  end;
end;

procedure TFrmTipos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

function TFrmTipos.Nada: Boolean;
var 
  I : Integer;
  C : TcxCheckBox;
begin
  Result := False;
  for i := 1 to trMax do begin
    C := CB(i);
    if assigned(C) and C.Checked then Exit;
  end;
  Result := True;
end;

function TFrmTipos.CB(aTipo: Byte): TcxCheckBox;
var C : TComponent;
begin
  C := FindComponent('tr'+aTipo.ToString);
  if C=nil then
    Result := nil else
    Result := TcxCheckBox(C);
end;

end.

