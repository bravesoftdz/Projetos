unit fMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uHYModuleManager, uHYIntf, uHYBaseModuleManager;

type
  TMainForm = class(TForm)
    HYModuleManager1: THYModuleManager;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

end.
