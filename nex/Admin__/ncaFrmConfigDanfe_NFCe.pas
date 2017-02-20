unit ncaFrmConfigDanfe_NFCe;

{$I NEX.INC}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ncaFrmBaseOpcao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxContainer, cxEdit, StdCtrls, cxRadioGroup, jpeg, cxImage,
  cxDropDownEdit, cxMaskEdit, cxSpinEdit, cxTextEdit, cxLabel, cxMemo, PngImage,
  ExtCtrls, cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, printers,
  LMDCustomBevelPanel, LMDSimplePanel, ImgList, LMDPNGImage, ncaFrmConfigRec_Serial,
  cxGroupBox, cxCheckBox, cxButtonEdit, ncaDocEdit, dxGDIPlusClasses;

type
  TFrmConfigDanfe_NFCe = class(TFrmBaseOpcao)
    Image1: TImage;
    LMDSimplePanel6: TLMDSimplePanel;
    panImpressora: TLMDSimplePanel;
    lbImpressora: TcxLabel;
    cbImpressoras: TcxComboBox;
    panTipoImpressora: TLMDSimplePanel;
    lbModelo: TcxLabel;
    edModelo: TncDocEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbImpressorasPropertiesChange(Sender: TObject);
    procedure cbImprimirPropertiesEditValueChanged(Sender: TObject);
  private
    fSerial : TFrmConfigRec_Serial;
    fOnAlterou : TNotifyEvent;
    { Private declarations }

    function NomeImpressora: String;
  public
    { Public declarations }
    procedure Atualizar; 
    procedure Ler; override;
    procedure Salvar; override;
    function Alterou: Boolean; override;

    procedure Renumera; override;

    function NumItens: Integer; override;

    function GenericPrinter: Boolean;

    property OnAlterou: TNotifyEvent
      read FOnAlterou write FOnAlterou;
    
  end;

var
  FrmConfigDanfe_NFCe: TFrmConfigDanfe_NFCe;

implementation

uses 
  ncClassesBase, 
  ncaDM, 
  uNexTransResourceStrings_PT, 
  ncaDMComp,
  ncaFrmTipoRec, 
  ncaFrmRecursoPRO, ncaConfigRecibo;

resourcestring
  rsSelecionarModelo = 'É necessário selecionar um modelo/layout de impressão';

{$R *.dfm}

procedure SetDefaultPrinter(PrinterName: String) ;
var
    j: Integer;
    Device : PChar;
    Driver : Pchar;
    Port : Pchar;
    HdeviceMode: Thandle;
    aPrinter : TPrinter;
begin
    Printer.PrinterIndex := -1;
    getmem(Device, 255) ;
    getmem(Driver, 255) ;
    getmem(Port, 255) ;
    aPrinter := TPrinter.create;
    for j := 0 to Printer.printers.Count-1 do begin
        if Printer.printers[j] = PrinterName then begin
            aprinter.printerindex := j;
            aPrinter.getprinter(device, driver, port, HdeviceMode) ;
            StrCat(Device, ',') ;
            StrCat(Device, Driver ) ;
            StrCat(Device, Port ) ;
            WriteProfileString('windows', 'device', Device) ;
            StrCopy( Device, 'windows' ) ;
            SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, Longint(@Device)) ;
        end;
    end;
    Freemem(Device, 255) ;
    Freemem(Driver, 255) ;
    Freemem(Port, 255) ;
    aPrinter.Free;
end;

procedure TFrmConfigDanfe_NFCe.FormCreate(Sender: TObject);
begin
  inherited;
  FOnAlterou := nil;
end;

procedure TFrmConfigDanfe_NFCe.cbImpressorasPropertiesChange(Sender: TObject);
begin
  inherited;
  if not cbImpressoras.Focused then Exit;
  
  Atualizar;
end;

procedure TFrmConfigDanfe_NFCe.cbImprimirPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

{ TFrmBaseOpcao1 }

function TFrmConfigDanfe_NFCe.Alterou: Boolean;
begin
  Result := True;

  with Dados do begin
    if NomeImpressora <> gRecibo.Impressora[tipodoc_nfce] then Exit;
    if edModelo.IDDoc <> gRecibo.Modelo[tipodoc_nfce] then Exit;
  end;

  Result := False;
end;

procedure TFrmConfigDanfe_NFCe.Atualizar;
begin
  try  
    btnOk.Enabled := Alterou and Dados.CM.UA.Admin;
  finally
    if Assigned(FOnAlterou) then FOnAlterou(Self);
  end;
end;

procedure TFrmConfigDanfe_NFCe.FormShow(Sender: TObject);
begin
  inherited;
  Renumera;
end;

function TFrmConfigDanfe_NFCe.GenericPrinter: Boolean;
begin
  result := (Pos('Generic', cbImpressoras.Text)>0);
end;

procedure TFrmConfigDanfe_NFCe.Ler;
var
    idx :integer;
begin
  inherited;
  edModelo.IDDoc := gRecibo.Modelo[tipodoc_nfce];
  cbImpressoras.Properties.OnChange := nil;
  try
    cbImpressoras.Properties.Items.Assign(Printer.Printers);
  finally
    cbImpressoras.Properties.OnChange := cbImpressorasPropertiesChange;
  end;      
      
  idx := cbImpressoras.Properties.Items.IndexOf(gRecibo.Impressora[tipodoc_nfce]);
  if idx>-1 then begin
    cbImpressoras.ItemIndex := idx;
    cbImpressoras.Text := gRecibo.Impressora[tipodoc_nfce];
  end else
    cbImpressoras.ItemIndex := 0;

  Atualizar;
end;

function TFrmConfigDanfe_NFCe.NomeImpressora: String;
begin
  Result := cbImpressoras.Text;
end;

function TFrmConfigDanfe_NFCe.NumItens: Integer;
begin
  Result := 3;
end;

procedure TFrmConfigDanfe_NFCe.Renumera;
begin
  inherited;
  lbImpressora.Caption := IntToStr(InicioNumItem+0)+'. '+lbImpressora.Caption;
  lbModelo.Caption := IntToStr(InicioNumItem+1)+'. '+lbModelo.Caption;
end;

procedure TFrmConfigDanfe_NFCe.Salvar;
begin
  inherited;

  if edModelo.IDDoc='' then begin
    edModelo.SetFocus;
    Raise Exception.Create(rsSelecionarModelo);
  end;  
  
  gRecibo.Modelo[tipodoc_nfce] := edModelo.IDDoc;
  gRecibo.Impressora[tipodoc_nfce] := NomeImpressora;
  gRecibo.Save;
end;

end.
