unit ncaFrmBaseCadastroMT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ncaFrmBaseCadastro, dxBar, cxClasses,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, Data.DB, kbmMemTable, cxEdit;

type
  TFrmBaseCadastroMT = class(TFrmBaseCadastro)
    MT: TkbmMemTable;
    DS: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cmCancelarClick(Sender: TObject);
  private
    { Private declarations }
    FNovo : Boolean;
    FTab : TDataset;
  public
    function Editar(aNovo: Boolean; aTab: TDataset): Boolean; virtual;

    function ExceptFields: String; virtual;

    procedure Salvar; override;

    property Novo: Boolean read FNovo;
    property Tab: TDataset read FTab;
    { Public declarations }
  end;

var
  FrmBaseCadastroMT: TFrmBaseCadastroMT;

implementation

{$R *.dfm}

uses ncaDM;

procedure TFrmBaseCadastroMT.cmCancelarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

function TFrmBaseCadastroMT.Editar(aNovo: Boolean; aTab: TDataset): Boolean;
begin
  FNovo := aNovo;
  FTab := aTab;
  MT.Insert;
  if not aNovo then TransfDados(aTab, MT);
  ShowModal;
  Result := (ModalResult=mrOk);
end;

function TFrmBaseCadastroMT.ExceptFields: String;
begin
  Result := '';
end;

procedure TFrmBaseCadastroMT.FormCreate(Sender: TObject);
begin
  inherited;
  MT.Active := True;
end;

procedure TFrmBaseCadastroMT.Salvar;
begin
  if FNovo then 
    FTab.Append else
    FTab.Edit;
  TransfDados(MT, FTab);
  FTab.Post;
end;

end.
