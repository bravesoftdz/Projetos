unit ncaFrmConfigRec;

{$I NEX.INC}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ncaFrmBaseOpcao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxContainer, cxEdit, StdCtrls, cxRadioGroup, jpeg, cxImage,
  cxDropDownEdit, cxMaskEdit, cxSpinEdit, cxTextEdit, cxLabel, cxMemo, PngImage,
  ExtCtrls, cxButtons, LMDControl, LMDCustomControl, LMDCustomPanel, printers,
  LMDCustomBevelPanel, LMDSimplePanel, ImgList, LMDPNGImage, ncaFrmConfigRec_Serial,
  cxGroupBox, cxCheckBox, cxButtonEdit, ncaDocEdit, dxGDIPlusClasses,
  System.ImageList;

type
  TFrmConfigRec_Venda = class(TFrmBaseOpcao)
    Image1: TImage;
    LMDSimplePanel6: TLMDSimplePanel;
    panImprimir: TLMDSimplePanel;
    panImpressora: TLMDSimplePanel;
    lbImpressora: TcxLabel;
    cbImpressoras: TcxComboBox;
    btnConfig: TcxButton;
    panModelo: TLMDSimplePanel;
    panAutoPrint: TLMDSimplePanel;
    cbImprimir: TcxCheckBox;
    lbModelo: TcxLabel;
    edModelo: TncDocEdit;
    cbAutoPrint: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbImpressorasPropertiesChange(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure cbImprimirPropertiesEditValueChanged(Sender: TObject);
    procedure edModeloDebPropertiesChange(Sender: TObject);
    procedure edModeloVendaPropertiesChange(Sender: TObject);
  private
    fSerial : TFrmConfigRec_Serial;
    fOnAlterou : TNotifyEvent;
    { Private declarations }

    function PrinterIsWin: Boolean;  
    function NomeImpressora: String;

  protected
    procedure CreateParams(var Params: TCreateParams); override; 

    function TipoDoc: Byte; virtual;
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

  TFrmConfigRec_PgDebito = class(TFrmConfigRec_Venda)
  protected
    function TipoDoc: Byte; override;
  end;

  TFrmConfigRec_Pedido = class(TFrmConfigRec_Venda)
  protected
    function TipoDoc: Byte; override;
  end;
  
  

  

var
  FrmConfigRec_Venda: TFrmConfigRec_Venda;

implementation

uses ncClassesBase, ncaDM, uNexTransResourceStrings_PT, ncaDMComp,
  ncaFrmTipoRec, ncaConfigRecibo, ncaFrmRecursoPRO;

resourcestring
  rsRecursoPRO = 'A impressão de recibos em impressora de BOBINAS é um recurso exclusivo para assinantes do plano PRO.'; 
  rsSelecionarModelo = 'É necessário selecionar um modelo/layout de impressão';

  rsImpDeb      = 'Imprimir comprovante de PAGAMENTO DE DÉBITO';
  rsImpVenda    = 'Imprimir comprovante de VENDA';
  rsImpPedido   = 'Imprimir PEDIDO';

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

procedure TFrmConfigRec_Venda.FormCreate(Sender: TObject);
begin
  inherited;
  FOnAlterou := nil;
  case tipodoc of
    tipodoc_venda : cbImprimir.Caption := rsImpVenda;
    tipodoc_pgdebito : begin
      cbImprimir.Caption := rsImpDeb;
      Image1.Visible := False;
    end;
    tipodoc_pedido : begin
      cbImprimir.Caption := rsImpPedido;  
      Image1.Visible := False;
    end;
  end;

  edModelo.Tipo := tipodoc;
end;

procedure TFrmConfigRec_Venda.cbImpressorasPropertiesChange(Sender: TObject);
begin
  inherited;
  if not cbImpressoras.Focused then Exit;
  
  Atualizar;
  if cbImpressoras.Focused and (not PrinterIsWin) then
    btnConfigClick(nil);
end;

procedure TFrmConfigRec_Venda.cbImprimirPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TFrmConfigRec_Venda.CreateParams(var Params: TCreateParams);
begin
  inherited;
  fSerial := TFrmConfigRec_Serial.Create(Self);
end;

procedure TFrmConfigRec_Venda.edModeloDebPropertiesChange(Sender: TObject);
begin
  Atualizar;
end;

procedure TFrmConfigRec_Venda.edModeloVendaPropertiesChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

{ TFrmBaseOpcao1 }

function TFrmConfigRec_Venda.Alterou: Boolean;
begin
  Result := True;

  with fSerial do begin
    if cbImprimir.Checked <> gRecibo.Imprimir[tipodoc] then Exit;
    if cbAutoPrint.Checked <> gRecibo.ImpAuto[tipodoc] then Exit;
    
    if cbRecPorta.Text <> IntToStr(gRecibo.PortaSerial) then Exit;
  
    if (gRecibo.CortarPapel) and (cbCortaFolha.ItemIndex <> 0) then exit;
    if (not gRecibo.CortarPapel) and (cbCortaFolha.ItemIndex <> 1) then exit;
  
    if NomeImpressora <> gRecibo.Impressora[tipodoc] then Exit;
    if edRecLargura.Value <> gRecibo.LarguraBobina then Exit;
    if edRecSalto.Value <> gRecibo.SaltoFimRecibo then Exit;
    if edModelo.IDDoc <> gRecibo.Modelo[tipodoc] then Exit;
  end;

  Result := False;
end;

procedure TFrmConfigRec_Venda.Atualizar;
begin
  try  
    btnOk.Enabled := Alterou and Dados.CM.UA.Admin;

    cbAutoPrint.Enabled := cbImprimir.Checked;

    cbImpressoras.Enabled := cbImprimir.Checked;
    lbImpressora.Enabled  := cbImpressoras.Enabled;

    edModelo.Enabled := lbImpressora.Enabled;
    lbModelo.Enabled := edModelo.Enabled;

    btnConfig.Visible   := cbImprimir.Checked and (not PrinterIsWin);

  finally
    if Assigned(FOnAlterou) then FOnAlterou(Self);
  end;
end;

procedure TFrmConfigRec_Venda.btnConfigClick(Sender: TObject);
begin
  inherited;
  fSerial.ShowModal;
end;

procedure TFrmConfigRec_Venda.FormShow(Sender: TObject);
begin
  inherited;
  Renumera;
  Image1.Visible := True;
end;

function TFrmConfigRec_Venda.GenericPrinter: Boolean;
begin
  result := (Pos('Generic', cbImpressoras.Text)>0);
end;

procedure TFrmConfigRec_Venda.Ler;
var
    idx :integer;
begin
  inherited;
  cbImprimir.Checked := gRecibo.Imprimir[tipodoc];
  cbAutoPrint.Checked := gRecibo.ImpAuto[tipodoc];
  with fSerial do begin
    if cbRecPorta.properties.Items.IndexOf(IntToStr(gRecibo.PortaSerial))=-1 then
      cbRecPorta.itemindex:=0 else
      cbRecPorta.Text := IntToStr(gRecibo.PortaSerial);
      
    if gRecibo.CortarPapel then 
      cbCortaFolha.ItemIndex := 0 else
      cbCortaFolha.ItemIndex := 1;

    edRecLargura.Value := gRecibo.LarguraBobina;
    edRecSalto.Value := gRecibo.SaltoFimRecibo;
  end;

  edModelo.IDDoc := gRecibo.Modelo[tipodoc];

  cbImpressoras.Properties.OnChange := nil;
  try
    cbImpressoras.Properties.Items.Assign(Printer.Printers);
    cbImpressoras.Properties.Items.Add(SncaFrmConfigRec_OutraSerial);
  finally
    cbImpressoras.Properties.OnChange := cbImpressorasPropertiesChange;
  end;      
      
  idx := cbImpressoras.Properties.Items.IndexOf(gRecibo.Impressora[tipodoc]);
  if idx>-1 then begin
    cbImpressoras.ItemIndex := idx;
    cbImpressoras.Text := gRecibo.Impressora[tipodoc];
  end else
    cbImpressoras.ItemIndex := 0;

  Atualizar;
end;

function TFrmConfigRec_Venda.NomeImpressora: String;
begin
  Result := cbImpressoras.Text;
end;

function TFrmConfigRec_Venda.NumItens: Integer;
begin
  Result := 4;
end;

function TFrmConfigRec_Venda.PrinterIsWin: Boolean;
begin
  Result := (cbImpressoras.ItemIndex < cbImpressoras.Properties.Items.count-1);
end;

procedure TFrmConfigRec_Venda.Renumera;

begin
  inherited;
  cbImprimir.Caption := IntToStr(InicioNumItem)+'. '+cbImprimir.Caption;
  cbAutoPrint.Caption := IntToStr(InicioNumItem+1)+'. '+cbAutoPrint.Caption;
  lbImpressora.Caption := IntToStr(InicioNumItem+2)+'. '+lbImpressora.Caption;
  lbModelo.Caption := IntToStr(InicioNumItem+3)+'. '+lbModelo.Caption;
end;

procedure TFrmConfigRec_Venda.Salvar;
begin
  inherited;

  if cbImprimir.Checked then begin
    if edModelo.IDDoc='' then begin
      edModelo.SetFocus;
      Raise Exception.Create(rsSelecionarModelo);
    end;  
  end;
  
  with fSerial do begin
    gRecibo.Imprimir[tipodoc] := cbImprimir.Checked;
    gRecibo.ImpAuto[tipodoc] := cbAutoPrint.Checked;
    gRecibo.Modelo[tipodoc] := edModelo.IDDoc;
    gRecibo.Impressora[tipodoc] := NomeImpressora;
    gRecibo.PortaSerial := StrToIntDef(cbRecPorta.Text, 0);
    gRecibo.CortarPapel := (cbCortaFolha.ItemIndex = 0);
    gRecibo.LarguraBobina := edRecLargura.Value;
    gRecibo.SaltoFimRecibo := edRecSalto.Value;
    gRecibo.Save;
  end;
end;

function TFrmConfigRec_Venda.TipoDoc: Byte;
begin
  Result := tipodoc_venda;
end;

{ TFrmConfigRec_Pedido }

function TFrmConfigRec_Pedido.TipoDoc: Byte;
begin
  Result := tipodoc_pedido;
end;

{ TFrmConfigRec_PgDebito }

function TFrmConfigRec_PgDebito.TipoDoc: Byte;
begin
  Result := tipodoc_pgdebito;
end;

end.
