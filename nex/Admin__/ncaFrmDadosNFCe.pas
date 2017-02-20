unit ncaFrmDadosNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, Vcl.Menus, cxCheckBox, Vcl.StdCtrls, cxButtons,
  dxGDIPlusClasses, Vcl.ExtCtrls, dxBarBuiltInMenu, LMDPNGImage, cxPC;

type
  TFrmDadosNFCe = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    LMDSimplePanel2: TLMDSimplePanel;
    panDanfe: TLMDSimplePanel;
    panCPF: TLMDSimplePanel;
    Image2: TImage;
    panEmail: TLMDSimplePanel;
    Image3: TImage;
    edEmail: TcxMaskEdit;
    lbEmail: TcxLabel;
    LMDSimplePanel4: TLMDSimplePanel;
    lbTit: TcxLabel;
    LMDSimplePanel5: TLMDSimplePanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    cbImprimir: TcxCheckBox;
    Paginas: TcxPageControl;
    tsCPF: TcxTabSheet;
    tsCNPJ: TcxTabSheet;
    Image1: TImage;
    CPF: TcxLabel;
    edCPF: TcxMaskEdit;
    cxLabel1: TcxLabel;
    edCNPJ: TcxMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edCPFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edEmailKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSalvarClick(Sender: TObject);
    procedure cbImprimirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edEmailPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function PJ: Boolean;
  public
    { Public declarations }
    function Editar(var aDados: String; aPJ: Boolean; aCNPJ: String): Boolean;

    procedure Atualiza;
    
  end;

var
  FrmDadosNFCe: TFrmDadosNFCe;

implementation

{$R *.dfm}

uses ncaFrmPri, ncClassesBase, ncaDM;

{ TFrmDadosNFCe }

procedure TFrmDadosNFCe.Atualiza;
begin
  panDanfe.Visible := (edEmail.Text>'');
end;

procedure TFrmDadosNFCe.btnSalvarClick(Sender: TObject);
begin
  if not PJ then
  if SoDig(edCPF.Text)>'' then begin
    if not IsCPF(edCPF.Text) then begin
      edCPF.SetFocus;
      raise Exception.Create('O CPF informado não está correto.');
    end;
  end;  

  if edEmail.Text>'' then
  if not EmailValido(edEmail.Text) then begin
    edEmail.SetFocus;
    raise Exception.Create('O e-mail informado não está correto.');
  end;
  
  ModalResult := mrOk;
end;

procedure TFrmDadosNFCe.cbImprimirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_Up : 
      if panEmail.Visible then
        edEmail.SetFocus 
      else
      if PJ and panCPF.Visible then
        edCPF.SetFocus;
              
    Key_Down, 
    Key_Enter: if btnSalvar.Enabled then btnSalvar.SetFocus;
  end;
end;

procedure TFrmDadosNFCe.edCPFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_Down, 
    Key_Enter: if panEmail.Visible then edEmail.SetFocus;
  end;
end;

procedure TFrmDadosNFCe.edEmailKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Key_Up : if PJ and panCPF.Visible then edCPF.SetFocus;
    Key_Down, 
    Key_Enter: if panDanfe.Visible then cbImprimir.SetFocus;
  end;
end;

procedure TFrmDadosNFCe.edEmailPropertiesChange(Sender: TObject);
begin
  atualiza;
end;

function TFrmDadosNFCe.Editar(var aDados: String; aPJ: Boolean; aCNPJ: String): Boolean;
var sl : TStrings;
begin
  sl := TStringList.Create;
  try
    sl.Text := aDados;
    edCPF.Text := sl.Values['CPFNF'];
    edCNPJ.Text := aCNPJ;
    if aPJ then
      Paginas.ActivePageIndex := 1 else
      Paginas.ActivePageIndex := 0;
    edEmail.Text := sl.Values['EmailNF'];
    if sl.IndexOf('ImprimeNF')>=0 then
      cbImprimir.Checked := (sl.Values['PrintNFCe']<>'0') else
      cbImprimir.Checked := Dados.tNFConfigAutoPrintNFCe.Value;
    if aPJ then
      ActiveControl := edEmail else
      ActiveControl := edCPF;  
    ShowModal;
    Result := (ModalResult=mrOk);
    if Result then begin
      if aPJ then
        sl.Values['CPFNF'] := '' else
        sl.Values['CPFNF'] := SoDig(edCPF.Text);
        
      sl.Values['EmailNF'] := edEmail.Text;
      sl.Values['PrintNFCe'] := IntToStr( Integer(cbImprimir.Checked or (not panDanfe.Visible)));
      aDados := sl.Text;
    end;
  except  
    sl.Free;
  end;
end;

procedure TFrmDadosNFCe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmDadosNFCe.FormCreate(Sender: TObject);
begin
  lbTit.Caption := Format(lbTit.Caption, [Dados.tNFConfigNFStr.Value]);
  cbImprimir.Caption := Format(cbImprimir.Caption, [Dados.tNFConfigNFStr.Value]);
  lbEmail.Caption := Format(lbEmail.Caption, [Dados.tNFConfigNFStr.Value]);
end;

procedure TFrmDadosNFCe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_F2, Key_F3    : if btnSalvar.Enabled then btnSalvar.Click;
    Key_Esc   : ModalResult := mrCancel;
  end;
end;

procedure TFrmDadosNFCe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13, #27]) then Key := #0;
end;

procedure TFrmDadosNFCe.FormShow(Sender: TObject);
begin
  atualiza;
end;

function TFrmDadosNFCe.PJ: Boolean;
begin
  Result := (Paginas.ActivePageIndex=1);
end;

end.
