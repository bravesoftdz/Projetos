unit ncaFrmEditValidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxLabel, cxTextEdit, cxMaskEdit, cxSpinEdit,
  StdCtrls, cxButtons, cxGroupBox, ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, cxCalendar, cxCheckBox, LMDControl, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, DateUtils,
  dxGDIPlusClasses, ExtCtrls;

const
  modo_val_semvalidade = 0;
  modo_val_tempo = 1;
  modo_val_data = 2;

  utempo_dias = 0;
  utempo_meses = 1;
  utempo_anos = 2;
    
type

 TncValidadeOrcamento = class
 public
   Modo : Byte; //0 = sem validade, 0 = tempo, 1 = data
   Tempo : Integer;
   UTempo : Byte; //0 = dias, 1 = meses, 2 = anos
   Data : TDateTime;
   DataInicial : TDateTime;

   constructor Create;

   function ValidoAte: TDateTime;

   function AsString: String;
 end;

  TFrmEditValidade = class(TForm)
    LMDSimplePanel4: TLMDSimplePanel;
    LMDSimplePanel2: TLMDSimplePanel;
    lbValidoAte: TcxLabel;
    edAte: TcxDateEdit;
    LMDSimplePanel1: TLMDSimplePanel;
    lbValidoPor: TcxLabel;
    edTempo: TcxSpinEdit;
    lbAnos: TcxLabel;
    lbMeses: TcxLabel;
    lbDias: TcxLabel;
    cbSemValidade: TcxCheckBox;
    LMDSimplePanel3: TLMDSimplePanel;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    cbPadrao: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure lbMesesClick(Sender: TObject);
    procedure lbAnosClick(Sender: TObject);
    procedure lbDiasClick(Sender: TObject);
    procedure edTempoPropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edAtePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbSemValidadeClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edTempoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FLastChangeAte: Boolean;
    FDados : TncValidadeOrcamento;
    FUTempo : Byte;
    FShowed : Boolean;
    FAtualizando : Boolean;
    procedure SetUTempo(const Value: Byte);

    procedure Atualiza;
  public
    { Public declarations }
    procedure Editar(aDados: TncValidadeOrcamento);

    property UTempo: Byte
      read FUTempo write SetUTempo;
  end;

var
  FrmEditValidade: TFrmEditValidade;

implementation

uses ufmImagens, ncaFrmPri, ncaDM, ncClassesBase;

{$R *.dfm}

resourcestring
  rsSemValidade = '';
  rsDia = 'dia';
  rsDias = 'dias';
  rsMes = 'mês';
  rsMeses = 'meses';
  rsAno = 'ano';
  rsAnos = 'anos';

{ TFrmEditValidade }

function IncMes(aData: TDateTime; aMeses: Integer): Tdatetime;
var
  Year, Month, Day: Word;
  DayTable: PDayTable;
  Sign: Integer;
begin
  DecodeDate(aData, Year, Month, Day);
  if aMeses >= 0 then Sign := 1 else Sign := -1;
  Year := Year + (aMeses div 12);
  aMeses := aMeses mod 12;
  Inc(Month, aMeses);
  if Word(Month-1) > 11 then    // if Month <= 0, word(Month-1) > 11)
  begin
    Inc(Year, Sign);
    Inc(Month, -12 * Sign);
  end;
  DayTable := @MonthDays[IsLeapYear(Year)];
  if Day > DayTable^[Month] then begin
    Day := Day - DayTable^[Month];
    Inc(Month);
    if Month>12 then begin
      Inc(Year);
      Month := 1;
    end;
  end;

  Result := EncodeDate(Year, Month, Day);
end;                                                    

procedure TFrmEditValidade.Atualiza;

procedure SelLB(L: TcxLabel; Sel: Boolean);
begin
  if Sel then begin
    L.Style.TextStyle := [fsUnderline];
    L.Style.TextColor := clBlue;
  end else begin
    L.Style.TextStyle := [];
    L.Style.TextColor := clGray;
  end;
end;

begin
  if FAtualizando then Exit;

  FAtualizando := True;
  try
    lbValidoPor.Enabled := not cbSemValidade.Checked;
    lbValidoAte.Enabled := lbValidoPor.Enabled;
    edTempo.Enabled := lbValidoPor.Enabled;
    edAte.Enabled := edTempo.Enabled;
    lbDias.Enabled := edAte.Enabled;
    lbMeses.Enabled := edAte.Enabled;
    lbAnos.Enabled := edAte.Enabled;

    if FShowed then
    if FLastChangeAte then begin
      UTempo := utempo_dias;
      edTempo.Value := Trunc(edAte.Date-FDados.DataInicial);
    end else begin
      case UTempo of
        utempo_dias : edAte.Date := IncDay(FDados.DataInicial, edTempo.Value);
        utempo_meses : edAte.Date := IncMes(FDados.DataInicial, edTempo.Value);
        utempo_anos : edAte.Date := IncYear(FDados.DataInicial, edTempo.Value);
      end;
    end;

    SelLB(lbDias, (FUTempo=utempo_dias));
    SelLB(lbMeses, (FUTempo=utempo_meses));
    SelLB(lbAnos, (FUTempo=utempo_anos));
  finally
    FAtualizando := False;
  end;
end;

procedure TFrmEditValidade.btnOkClick(Sender: TObject);
begin
  if cbPadrao.Checked then begin
    Dados.CM.Config.AtualizaCache;
    if cbSemValidade.Checked then begin
      gConfig.ValOrc_Tempo := 0;
      gConfig.ValOrc_UTempo := 0;
    end else begin
      gConfig.ValOrc_Tempo := edTempo.Value;
      gConfig.ValOrc_UTempo := UTempo;
    end;
    Dados.CM.SalvaAlteracoesObj(gConfig, False);
  end;
end;

procedure TFrmEditValidade.cbSemValidadeClick(Sender: TObject);
begin
  if cbSemValidade.Focused then Atualiza;
end;

procedure TFrmEditValidade.edAtePropertiesEditValueChanged(Sender: TObject);
begin
  if edAte.Focused then begin
    FLastChangeAte := True;
    Atualiza;
  end;
end;

procedure TFrmEditValidade.Editar(aDados: TncValidadeOrcamento);
begin
  FDados := aDados;
  
  if FDados.Modo=modo_val_data then begin
    FLastChangeAte := True;
    edAte.Date := FDados.Data;
    UTempo := utempo_dias;
    edTempo.Value := Trunc(edAte.Date - FDados.DataInicial);
  end else 
  if FDados.Modo=modo_val_tempo then begin
    FLastChangeAte := False;
    UTempo := FDados.UTempo;
    edTempo.Value := FDados.Tempo;
    edAte.Date := FDados.ValidoAte;
  end else 
    cbSemValidade.Checked := True;

  Atualiza;  

  ShowModal;

  if ModalResult = mrOk then begin
    if cbSemValidade.Checked then
      FDados.Modo := modo_val_semvalidade
    else
    if FLastChangeAte then
      FDados.Modo := modo_val_data 
    else
      FDados.Modo := modo_val_tempo;

    FDados.UTempo := UTempo;
    FDados.Data := edAte.Date;
    FDados.Tempo := edTempo.Value;  
  end;
end;

procedure TFrmEditValidade.edTempoPropertiesChange(Sender: TObject);
begin
  edTempo.PostEditValue;
end;

procedure TFrmEditValidade.edTempoPropertiesEditValueChanged(Sender: TObject);
begin
  if edTempo.Focused then begin
    FLastChangeAte := False;
    Atualiza;
  end;
end;

{ TncValidadeOrcamento }

function IntPluralSing(I: Integer; aPlural, aSingular: String): String;
begin
  if I>1 then
    Result := IntToStr(I)+' '+aPlural else
    Result := IntToStr(I)+' '+aSingular;
end;

function TncValidadeOrcamento.AsString: String;

function TempoStr: String;
begin
  case utempo of
    utempo_dias : Result := IntPluralSing(tempo, rsDias, rsDia);
    utempo_meses : Result := IntPluralSing(tempo, rsMeses, rsMes);
    utempo_anos : Result := IntPluralSing(tempo, rsAnos, rsAno);
  end;
end;

begin
  with FormatSettings do
  case Modo of
    modo_val_semvalidade : Result := rsSemValidade;
    modo_val_tempo : Result := TempoStr + ' - '+FormatDateTime(ShortDateFormat, Data);
    modo_val_data : Result := FormatDateTime(ShortDateFormat, Data) + ' - ' + TempoStr;
  else
    result := '';
  end;
end;

constructor TncValidadeOrcamento.Create;
begin
  Modo := modo_val_tempo;
  Tempo := 1;
  UTempo := utempo_dias;
  Data := 0;
  DataInicial := 0;
end;

function TncValidadeOrcamento.ValidoAte: TDateTime;
begin
  if Modo = modo_val_data then
    Result := Data
  else 
  if Modo = modo_val_tempo then begin
    Result := DataInicial;
    case UTempo of
      utempo_meses : Result := IncMes(DataInicial, Tempo);
      utempo_anos : Result := IncYear(DataInicial, Tempo);
    else
      Result := IncDay(DataInicial, Tempo);
    end;
  end else
    Result := 0;
end;

procedure TFrmEditValidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEditValidade.FormCreate(Sender: TObject);
begin
  FShowed := False;
  FAtualizando := False;
  FUTempo := utempo_dias;
  cbPadrao.Visible := Dados.CM.UA.Admin;
end;

procedure TFrmEditValidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    Key_Esc   : Close;
  end;
end;

procedure TFrmEditValidade.FormShow(Sender: TObject);
begin
  FShowed := True;
end;

procedure TFrmEditValidade.lbAnosClick(Sender: TObject);
begin
  FLastChangeAte := False;
  UTempo := utempo_anos;
end;

procedure TFrmEditValidade.lbDiasClick(Sender: TObject);
begin
  FLastChangeAte := False;
  utempo := utempo_dias;
end;

procedure TFrmEditValidade.lbMesesClick(Sender: TObject);
begin
  FLastChangeAte := False;
  UTempo := utempo_meses;
end;

procedure TFrmEditValidade.SetUTempo(const Value: Byte);
begin
  if Value<>FUTempo then begin
    FUTempo := Value;
    Atualiza;
  end;
end;

end.
