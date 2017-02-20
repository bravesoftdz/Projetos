unit ncaFrmRecursoPRO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxLabel, dxGDIPlusClasses,
  ExtCtrls, LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel;

type
  TFrmRecursoPro = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    Image1: TImage;
    cxLabel1: TcxLabel;
    btnOk: TcxButton;
    lbPlanos: TcxLabel;
    lbAssinar: TcxLabel;
    lbDescr: TcxLabel;
    procedure lbPlanosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbAssinarClick(Sender: TObject);
  private
    { Private declarations }
    FOrigem: String;

  protected
    procedure CreateParams(var Params: TCreateParams); override;
    
  public
    procedure Mostrar(aDescr, aOrigem: String);
    { Public declarations }
  end;

var
  FrmRecursoPro: TFrmRecursoPro;

implementation

uses ncaFrmPri, ncaDM;

{$R *.dfm}

{ TFrmRecursoPro }

procedure TFrmRecursoPro.CreateParams(var Params: TCreateParams);
begin
  inherited;
  if Owner is TWinControl then begin
    params.ExStyle := params.ExStyle or WS_EX_APPWINDOW;
    params.WndParent := TCustomForm(Owner).Handle;
  end;
end;

procedure TFrmRecursoPro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmRecursoPro.lbAssinarClick(Sender: TObject);
begin
  OpenTrack('assinar', FOrigem);
end;

procedure TFrmRecursoPro.lbPlanosClick(Sender: TObject);
begin
  OpenTrack('planos', FOrigem);
end;

procedure TFrmRecursoPro.Mostrar(aDescr, aOrigem: String);
begin
  FOrigem := aOrigem;
  lbDescr.Caption := aDescr;
  ShowModal;
end;

end.
