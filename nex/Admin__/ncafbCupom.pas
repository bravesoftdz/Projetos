unit ncafbCupom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, ShellApi, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufmFormBase, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxBar, dxPSCore, cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, dxPScxGridLnk, dxPScxGridLayoutViewLnk, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, nxdb, cxGridLevel,
  cxGridCustomView, cxGrid, cxImageComboBox, LMDCustomComponent, LMDShBase,
  LMDShController, LMDShFolder, LMDDlgEx, ncDMdanfe_NFCE, dxBarBuiltInMenu, cxPC,
  cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, dxPScxPivotGridLnk,
  cxScrollBox, LMDCustomScrollBox, LMDScrollBox, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDHTMLLabel, AbBase, AbBrowse,
  AbZBrows, AbZipper, AbArcTyp, Vcl.ExtCtrls, frxClass, frxDBSet, kbmMemTable,
  cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TfbCupom = class(TFrmBase)
    cmSalvarDanfe: TdxBarLargeButton;
    cmImprimirDanfe: TdxBarLargeButton;
    cmEnviarEmail: TdxBarLargeButton;
    cmConfigurar: TdxBarLargeButton;
    cmDetalhesVenda: TdxBarLargeButton;
    Tab: TnxTable;
    DS: TDataSource;
    TabNumSeq: TUnsignedAutoIncField;
    TabModelo: TStringField;
    TabSerie: TStringField;
    TabNumero: TLongWordField;
    TabChave: TStringField;
    TabEntrada: TBooleanField;
    TabTipoDoc: TByteField;
    TabDataHora: TDateTimeField;
    TabCFOP: TWordField;
    TabTran: TGuidField;
    TabRecibo: TStringField;
    TabProtocolo: TStringField;
    TabContingencia: TBooleanField;
    TabStatus: TByteField;
    TabStatusNF: TIntegerField;
    TabXMLdest: TnxMemoField;
    TabXMLret: TnxMemoField;
    TabXMLtrans: TnxMemoField;
    TabXMLtransCont: TnxMemoField;
    TabxMotivo: TnxMemoField;
    TabIncluidoEm: TDateTimeField;
    TabEmitidoEm: TDateTimeField;
    TabContingenciaEM: TDateTimeField;
    TabValor: TCurrencyField;
    TabIDTran: TLargeintField;
    SaveDlg: TSaveDialog;
    TabtpAmb: TByteField;
    TabProtocoloCanc: TStringField;
    TabStatusCanc: TByteField;
    TabStatusCancNF: TIntegerField;
    TabJustCanc: TnxMemoField;
    TabxMotivoCanc: TnxMemoField;
    TabCanceladoPor: TStringField;
    TabCanceladoEm: TDateTimeField;
    TabStatusInut: TByteField;
    TabCPF: TStringField;
    TabEmail: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxsCanc: TcxStyle;
    cxsCanc2: TcxStyle;
    TabxmlRetCanc: TnxMemoField;
    TabStatusInutNF: TIntegerField;
    TabProtocoloInut: TStringField;
    TabxMotivoInut: TnxMemoField;
    TabxmlRetInut: TnxMemoField;
    Paginas: TcxPageControl;
    tsGrid: TcxTabSheet;
    gridNFe: TcxGrid;
    tvNFe: TcxGridDBTableView;
    tvNFeNumSeq: TcxGridDBColumn;
    tvNFeModelo: TcxGridDBColumn;
    tvNFeStatus: TcxGridDBColumn;
    tvNFeTran: TcxGridDBColumn;
    tvNFeDataHora: TcxGridDBColumn;
    tvNFeSerie: TcxGridDBColumn;
    tvNFeNumero: TcxGridDBColumn;
    tvNFeValor: TcxGridDBColumn;
    tvNFeEntrada: TcxGridDBColumn;
    tvNFeTipoDoc: TcxGridDBColumn;
    tvNFeRecibo: TcxGridDBColumn;
    tvNFeProtocolo: TcxGridDBColumn;
    tvNFeContingencia: TcxGridDBColumn;
    tvNFeStatusNF: TcxGridDBColumn;
    tvNFexMotivo: TcxGridDBColumn;
    tvNFeChave: TcxGridDBColumn;
    tvNFeAmb: TcxGridDBColumn;
    tvNFeStatusCanc: TcxGridDBColumn;
    tvNFeInut: TcxGridDBColumn;
    glNFe: TcxGridLevel;
    tsInativo: TcxTabSheet;
    panInativo: TLMDSimplePanel;
    bdcInativo: TdxBarDockControl;
    bdcGrid: TdxBarDockControl;
    BarMgrBar2: TdxBar;
    cmAtivarNFCe: TdxBarLargeButton;
    cmRemoverNF: TdxBarLargeButton;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    pmXMLs: TdxBarPopupMenu;
    cmXMLs: TdxBarButton;
    cmVerXMLs: TdxBarButton;
    cxStyle3: TcxStyle;
    cmExportXMLS: TdxBarLargeButton;
    tExp: TnxTable;
    tExpUID: TGuidField;
    tExpNumSeq: TUnsignedAutoIncField;
    tExpModelo: TStringField;
    tExpSerie: TStringField;
    tExpNumero: TLongWordField;
    tExpChave: TStringField;
    tExpChaveCont: TStringField;
    tExpEntrada: TBooleanField;
    tExpTipoDoc: TByteField;
    tExpDataHora: TDateTimeField;
    tExpCFOP: TWordField;
    tExpTran: TGuidField;
    tExpRecibo: TStringField;
    tExpProtocolo: TStringField;
    tExpContingencia: TBooleanField;
    tExpStatus: TByteField;
    tExptpAmb: TByteField;
    tExpStatusNF: TIntegerField;
    tExpXMLdest: TnxMemoField;
    tExpXMLret: TnxMemoField;
    tExpXMLtrans: TnxMemoField;
    tExpXMLtransCont: TnxMemoField;
    tExpxMotivo: TnxMemoField;
    tExpProtocoloCanc: TStringField;
    tExpStatusCanc: TByteField;
    tExpStatusCancNF: TIntegerField;
    tExpJustCanc: TnxMemoField;
    tExpxMotivoCanc: TnxMemoField;
    tExpxmlRetCanc: TnxMemoField;
    tExpCanceladoPor: TStringField;
    tExpCanceladoEm: TDateTimeField;
    tExpStatusInut: TByteField;
    tExpStatusInutNF: TIntegerField;
    tExpProtocoloInut: TStringField;
    tExpxMotivoInut: TnxMemoField;
    tExpxmlRetInut: TnxMemoField;
    tExpCPF: TStringField;
    tExpEmail: TStringField;
    tExpIncluidoEm: TDateTimeField;
    tExpEmitidoEm: TDateTimeField;
    tExpContingenciaEM: TDateTimeField;
    tExpValor: TCurrencyField;
    SaveDlg2: TSaveDialog;
    TimerSelZip: TTimer;
    cmProtEnvio: TdxBarButton;
    TabUID: TGuidField;
    TabChaveCont: TStringField;
    TabLogEnvio: TnxMemoField;
    TabLogRec: TnxMemoField;
    OpenDlg: TOpenDialog;
    cmRelVendas: TdxBarLargeButton;
    TabConsultouChave: TBooleanField;
    tExpConsultouChave: TBooleanField;
    tExpLogEnvio: TnxMemoField;
    tExpLogRec: TnxMemoField;
    repVen: TfrxReport;
    dbVen: TfrxDBDataset;
    tExpNumTran: TIntegerField;
    mtRel: TkbmMemTable;
    mtRelPeriodo: TStringField;
    mtRelNomeLoja: TStringField;
    dbRel: TfrxDBDataset;
    panEstado: TLMDSimplePanel;
    lbEstado: TcxLabel;
    lbPromptEstado: TcxLabel;
    lbNaoEsta: TcxLabel;
    pagTipo: TcxPageControl;
    tsNFCe: TcxTabSheet;
    tsSAT: TcxTabSheet;
    tsNenhum: TcxTabSheet;
    ScrollBox2: TScrollBox;
    LMDHTMLLabel1: TLMDHTMLLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    ScrollBox1: TScrollBox;
    LMDHTMLLabel2: TLMDHTMLLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    tsSemEstado: TcxTabSheet;
    cxLabel4: TcxLabel;
    ScrollBox3: TScrollBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    TimerSel: TTimer;
    cxLabel5: TcxLabel;
    LMDSimplePanel1: TLMDSimplePanel;
    LMDSimplePanel2: TLMDSimplePanel;
    edEstado: TcxImageComboBox;
    LMDSimplePanel4: TLMDSimplePanel;
    cxButton1: TcxButton;
    pmTools: TdxBarPopupMenu;
    cmConsultarSAT: TdxBarButton;
    cmInutilizarNFCE: TdxBarButton;
    btnTools: TcxButton;
    procedure tvNFeContingenciaCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvNFexMotivoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cmConfigurarClick(Sender: TObject);
    procedure cmDetalhesVendaClick(Sender: TObject);
    procedure FrmBasePaiCreate(Sender: TObject);
    procedure cmSalvarDanfeClick(Sender: TObject);
    procedure cmImprimirDanfeClick(Sender: TObject);
    procedure tvNFeDataHoraStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure tvNFeCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure tvNFeStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cmEnviarEmailClick(Sender: TObject);
    procedure PaginasResize(Sender: TObject);
    procedure panPriResize(Sender: TObject);
    procedure cmAtivarNFCeClick(Sender: TObject);
    procedure cmRemoverNFClick(Sender: TObject);
    procedure cmXMLsClick(Sender: TObject);
    procedure cmVerXMLsClick(Sender: TObject);
    procedure cmExportXMLSClick(Sender: TObject);
    procedure TimerSelZipTimer(Sender: TObject);
    procedure pmXMLsPopup(Sender: TObject);
    procedure cmProtEnvioClick(Sender: TObject);
    procedure cmRelVendasClick(Sender: TObject);
    procedure tExpFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure tvNFeChaveGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure lbNaoEstaClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure TimerSelTimer(Sender: TObject);
    procedure cmConsultarSATClick(Sender: TObject);
    procedure cmInutilizarNFCEClick(Sender: TObject);
    procedure gridNFeResize(Sender: TObject);
  private
    { Private declarations }
    dmDanfe : TdmDanfe_NFCE;
    DataI, DataF : TDateTIme;

    procedure LoadDanfe;
    procedure RedimPanels;
    procedure AjustaTools;

  public
    class function Descricao: String; override;
    procedure AtualizaDireitos; override;
    procedure FiltraDados; override;
    procedure Refresh; override;
    procedure Selecionou;
    { Public declarations }
  end;

var
  fbCupom: TfbCupom;

implementation

{$R *.dfm}

uses 
  ncaDM, 
  ncaFrmConfig_Cupom, ncaFrmOpcoes, ncaFrmPri, ufmImagens, ncClassesBase,
  idHttp, IdMultipartFormData, ncaEditEmail, ncaFrmSendEmailOrc, nexUrls,
  ncaFrmRemoverNF, ncaFrmXmls, ncHttp, ncDebug, ncaFrmPeriodo, ncaFrmEstado,
  ncDMdanfe_SAT, ncaFrmInutilizarNFCe, ncaFrmToken;

procedure TfbCupom.AjustaTools;
begin
  btnTools.Visible := Dados.tNFConfigEmitirNFCe.Value;

  if Dados.tNFConfigESat.Value then begin
    cmConsultarSAT.Visible := ivAlways;
    cmInutilizarNFCE.Visible := ivNever;
  end else begin
    cmConsultarSAT.Visible := ivNever;
    cmInutilizarNFCE.Visible := ivAlways;
  end;

  btnTools.Left := GridNFe.Left + GridNFe.Width - btnTools.Width - 32;
  btnTools.Height := cxTextHeight(btnTools.Font) + 6;
  btnTools.Top := ((44-btnTools.Height) div 2) + gridNFe.Top;
end;

procedure TfbCupom.AtualizaDireitos;
var 
  aUF: String;
begin
  inherited;
  FiltraDados;

  with Dados do begin
    FrmPri.RefreshCaptionsNFCupom;
    
    if NFCeAtivo or (not Tab.IsEmpty) then
      Paginas.ActivePageIndex := 0 else
      Paginas.ActivePageIndex := 1;

    if Paginas.ActivePageIndex=1 then begin
      aUF := Trim(tNFConfigEnd_UF.Value);
      if aUF='' then
        edEstado.Clear else
        edEstado.EditValue := aUF;
      panEstado.Visible := (aUF>'');
      if panEstado.Visible then begin
        lbEstado.Caption := edEstado.Text;  
        if SameText(aUF, 'SC') or SameText(aUF, 'ES') then begin
          pagTipo.ActivePage := tsNenhum;
          cmAtivarNFCe.Enabled := False;
          cmAtivarNFCe.Caption := 'Ativar emissão de cupom fiscal eletrônico';
        end else
        if SameText(aUF, 'SP') then begin
          pagTipo.ActivePage := tsSAT;
          cmAtivarNFCe.Enabled := True;
          cmAtivarNFCe.Caption := 'Ativar emissão de CF-e SAT';
        end else begin
          pagTipo.ActivePage := tsNFCE;
          cmAtivarNFCe.Enabled := True;
          cmAtivarNFCe.Caption := 'Ativar emissão de NFC-e';
        end;
      end else begin
        pagTipo.ActivePage := tsSemEstado;
        cmAtivarNFCe.Enabled := False;
        cmAtivarNFCe.Caption := 'Ativar emissão de cupom fiscal eletrônico';
      end;
    end;
  end;


  if Dados.tNFConfigTipo.Value = tiponfe_sat then begin
    tvNFeContingencia.VisibleForCustomization := False;
    tvNFeContingencia.Visible := False;
    tvNFeProtocolo.VisibleForCustomization := False;
    tvNFeProtocolo.Visible := False;
    tvNFeRecibo.VisibleForCustomization := False;
    tvNFeRecibo.Visible := False;
    tvNFeInut.VisibleForCustomization := False;
    tvNFeInut.Visible := False;
    tvNFeAmb.VisibleForCustomization := False;
    tvNFeAmb.Visible := False;
  end else
  if not tvNFeContingencia.VisibleForCustomization then begin
    tvNFeContingencia.VisibleForCustomization := true;
    tvNFeContingencia.Visible := true;
    tvNFeProtocolo.VisibleForCustomization := true;
    tvNFeProtocolo.Visible := true;
    tvNFeRecibo.VisibleForCustomization := true;
    tvNFeRecibo.Visible := true;
    tvNFeInut.VisibleForCustomization := true;
    tvNFeInut.Visible := true;
    tvNFeAmb.VisibleForCustomization := true;
    tvNFeAmb.Visible := true;
  end;
    
  RedimPanels;
end;

procedure TfbCupom.cmAtivarNFCeClick(Sender: TObject);
begin
  inherited;
  TFrmConfig_Cupom.Mostrar(True);
  AtualizaDireitos;
end;

procedure TfbCupom.cmConfigurarClick(Sender: TObject);
begin
  inherited;
  TFrmConfig_Cupom.Mostrar(False);
  AtualizaDireitos;
end;

procedure TfbCupom.cmConsultarSATClick(Sender: TObject);
begin
  inherited;
  ShowMessage(Dados.CM.ConsultarSAT);
end;

procedure TfbCupom.cmDetalhesVendaClick(Sender: TObject);
begin
  inherited;
  if not Tab.IsEmpty then
    Dados.EditarTran(TabIDTran.Value);
end;

procedure TfbCupom.cmEnviarEmailClick(Sender: TObject);
var 
  aEmail, aRes: String;
  MS : TIdMultiPartFormDataStream;
  H : TidHttp;

function EmailOk: Boolean;
begin
  Result := False;
  with Dados do begin
    if not EmailValido(tNFConfigFromEmail.Value) then Exit;
    if Trim(tNFConfigAssuntoEmail.Value)='' then Exit;
    if tNFConfigModeloNFCe_Email.IsNull then Exit;
  end;
  Result := True;
end;

begin
  inherited;
  if Tab.IsEmpty then Exit;

  if not Dados.NFCeAtivo then
    raise Exception.Create('O recurso de NFC-e está desativado');

  case TabStatus.Value of 
    nfetran_contingencia : 
      raise Exception.Create('Essa NF ainda está em contingência é necessário aguardar a transamissão para SEFAZ para enviar o e-mail');

    nfetran_ok, nfetran_ok_cont : ;
    nfetran_gerar,
    nfetran_transmitir : raise exception.Create('Ainda não foi concluído o processo de emissão/transmissão dessa NFCe');
    nfetran_erro       : raise exception.Create('Essa NFC-e foi rejeitada pela SEFAZ');
  else
    raise Exception.Create('Erro na emissão da NFC-e: '+TabStatus.AsString);
  end;
    

  if not EmailOk then begin
    ShowMessage('É necessário configurar os parâmetros para o envio de NFC-e por e-mail');
    with TFrmConfig_Cupom.Create(Self) do begin
      Paginas.ActivePage := tsEmail;
      ShowModal;                                   
    end;
    Exit;
  end;

  if not Dados.GeraDanfe(TabTran.Value, True) then Exit;

  with Dados do 
  if tNFConfigTipo.Value=nfcfg_nfce then 
    aEmail := dmDanfe_NFCE.mtDestemail.Value else
    aEmail := dmDanfe_SAT.mtDestemail.Value;
    
  if not TFrmEditEmail.Create(Self).Editar(aEmail) then Exit;

  with Dados do 
  if tNFConfigTipo.Value=nfcfg_nfce then
    MS := dmDanfe_NFCE.GetMSEmail(tNFConfigFromEmail.Value, tNFConfigNomeFantasia.Value, tNFConfigAssuntoEmail.Value, aEmail) else
    MS := dmDanfe_SAT.GetMSEmail(tNFConfigFromEmail.Value, tNFConfigNomeFantasia.Value, tNFConfigAssuntoEmail.Value, aEmail);

  if MS=nil then Exit;

  h := TIdHTTP.create(nil);
  try
    H.HandleRedirects := True;  
    aRes := TFrmSendEmail.Create(Self).Enviar(H, gUrls.Url('mailer'), MS);
    if aRes<>'' then raise exception.Create(aRes);    
  finally
    H.Free;
    MS.Free;
  end;      
end;

procedure TfbCupom.cmExportXMLSClick(Sender: TObject);
var 
  I, F: TDateTime;
  sl : TStringList;
  slArqs : String;
  n : integer;
  S : TMemoryStream;
  zip : TAbZipper;
  Arq : String;

{function arqxml: String;
begin
  Result := ExtractFilePath(ParamStr(0))+'exp\nfce_serie'+TabSerie.Value+'_num'+TabNumero.AsString+'.xml';
  slArqs.Add(result);
end;}

procedure AddXML(xml: TnxMemoField);
var aNomeXML: String;                                       
begin
  S.Clear;
  xml.SaveToStream(S);
  S.Position := 0;
  if tExpTipoDoc.Value=tiponfe_sat then
    aNomeXML := 'CFe_num'+tExpNumero.AsString+'.xml' else
    aNomeXML := 'nfce_serie'+tExpSerie.Value+'_num'+tExpNumero.AsString+'.xml';
  
  zip.AddFromStream(aNomeXML, S);
end;

function situacao: string;
begin
  case tExpStatus.Value of
    nfestatus_contingencia : Result := 'CONTINGENCIA';
    nfestatus_erro         : Result := 'REJEITADA/INUTILIZADA';
    nfestatus_ok,
    nfestatus_ok_cont      : Result := 'APROVADA';
  else
    Result := '';
  end;
end;
  
begin
  inherited;
  if not TFrmPeriodo.Create(Self).ObtemPeriodo(I, F) then Exit;
  F := F+1;
  SaveDlg2.FileName := 'NFs_'+FormatDateTime('ddmmyyyy', I)+'_a_'+FormatDateTime('ddmmyyyy', F);
  if not SaveDlg2.Execute(Handle) then Exit;
  tExp.Active := True;
  tExp.Filtered := False;
  
  with Dados do
  if tNFConfigTipo.Value=nfcfg_sat then begin
    tExp.IndexName := 'ITipoDocDataHora';
    tExp.SetRange([tiponfe_sat, I], [tiponfe_sat, F]);
  end else begin
    tExp.IndexName := 'ITipoDoctpAmbDataHora';
    tExp.SetRange([tiponfe_nfce, tNFConfigtpAmb.Value, I], [tiponfe_nfce, tNFConfigtpAmb.Value, F]);
  end;  
    
  tExp.First;
  sl := TStringList.Create;
  S := TMemoryStream.Create;
  zip := TAbZipper.Create(self);
  try
    zip.FileName := SaveDlg2.FileName;
    zip.StoreOptions := [soStripDrive,soStripPath,soRemoveDots,soReplace];
    zip.DeleteFiles('*.*');
    zip.AutoSave := True;
    sl.Add('data;serie;numero;chave;situação');
    while not tExp.Eof do begin
      if (tExpNumero.Value>0) and (tExpStatus.Value>nfestatus_transmitir) and (tExpDataHora.Value<F) then begin
        sl.Add(FormatDateTime('dd/mm/yyyy', tExpDataHora.Value)+';'+tExpSerie.Value+';'+tExpNumero.AsString+';'+tExpChave.AsString+';'+situacao);
        if tExpXMLdest.Value>'' then 
          AddXML(tExpXMLDest)
        else
        if TabContingencia.Value then
          AddXML(tExpXMLtransCont)
        else
          AddXML(tExpXMLtrans);
      end;
      tExp.Next;
    end;
    S.Clear;
    sl.SaveToStream(S);
    S.Position := 0;
    zip.AddFromStream('notas.txt', S);
    zip.Save;
  finally  
    S.Free;
    sl.Free;
    zip.Free;
  end;
  TimerSelZip.Enabled := True;
end;

procedure TfbCupom.cmImprimirDanfeClick(Sender: TObject);
begin
  inherited;
  if not Tab.IsEmpty then
    Dados.ImprimeDanfe(TabTran.Value);
end;

procedure TfbCupom.cmInutilizarNFCEClick(Sender: TObject);
var aAno, aInicio, aFinal: Integer; aJust: String;
begin
  if not TFrmToken.TokenOk then Exit;
  if not TFrmInutilizarNFCe.Create(nil).Editar(aAno, aInicio, aFinal, aJust) then Exit;
  ShowMessage(Dados.CM.InutilizarNFCE(aAno, aInicio, aFinal, aJust));
end;

procedure TfbCupom.cmProtEnvioClick(Sender: TObject);
begin
  inherited;
  if TabStatusNF.Value<>204 then Exit;
  
  if TabLogEnvio.Value='' then begin
    ShowMessage('Localize a seguir o arquivo de LOG de envio. O nome do arquivo termina com a palava "env-sinc-lot"');
    OpenDlg.Title := 'Log de envio de lote "env-sinc-lot"';
    OpenDlg.FileName := '';
    if OpenDlg.Execute(FrmPri.Handle) and FileExists(OpenDlg.FileName) then  begin
      Tab.Edit;
      TabLogEnvio.LoadFromFile(OpenDlg.FileName);
      Tab.Post;
    end else 
      Exit;
  end;

  if TabLogRec.Value='' then begin
    ShowMessage('Localize a seguir o arquivo de LOG de retorno. O nome do arquivo termina com a palava "env-sinc-ret"');
    OpenDlg.Title := 'Log de retorno "env-sinc-ret"';
    OpenDlg.FileName := '';
    if OpenDlg.Execute(FrmPri.Handle) and FileExists(OpenDlg.FileName) then  begin
      Tab.Edit;
      TabLogRec.LoadFromFile(OpenDlg.FileName);
      Tab.Post;
    end else
      Exit;
  end;

  if (TabLogRec.Value>'') and (TabLogEnvio.Value>'') and ((TabProtocolo.Value='') or (TabXmlDest.Value='')) then begin
    Dados.CM.GeraXMLProt(TabChave.Value);
    Tab.Refresh;  
    ShowMessage('XML gerado/gravado com sucesso');
  end;
end;

procedure TfbCupom.cmRemoverNFClick(Sender: TObject);
begin
  inherited;
  TFrmRemoverNF.Create(Self).ShowModal;
  AtualizaDireitos;
end;

procedure TfbCupom.cmSalvarDanfeClick(Sender: TObject);
begin
  inherited;
  if Tab.IsEmpty then Exit;
  if not SaveDlg.Execute(FrmPri.Handle) then Exit;
  Dados.SalvaNF(TabTran.Value, SaveDlg.FileName);
end;

procedure TfbCupom.cmVerXMLsClick(Sender: TObject);
var S: String;
begin
  inherited;
  if Tab.IsEmpty then Exit;

  if TabContingencia.Value then
    S := TabXMLtransCont.Value else
    S := TabXMLtrans.Value;

  TFrmXMLs.Create(Self).Mostrar(TabChave.Value, S, TabXMLret.Value, TabXMLdest.Value, TabxmlRetCanc.Value, TabxmlRetInut.Value, False, (TabTipoDoc.Value=tiponfe_sat)); 
end;

procedure TfbCupom.cmXMLsClick(Sender: TObject);
var S: String;
begin
  inherited;
  if Tab.IsEmpty then Exit;

  if TabContingencia.Value then
    S := TabXMLtransCont.Value else
    S := TabXMLtrans.Value;

  TFrmXMLs.Create(Self).Mostrar(TabChave.Value, S, TabXMLret.Value, TabXMLdest.Value, TabxmlRetCanc.Value, TabxmlRetInut.Value, True, (TabTipoDoc.Value=tiponfe_sat)); 
end;

procedure TfbCupom.cxButton1Click(Sender: TObject);
begin
  inherited;
  with Dados do 
  if (edEstado.ItemIndex>=0) then begin
    tNFConfig.Edit;
    tNFConfigEnd_UF.Value := edEstado.EditValue;
    tNFConfig.Post;
    AtualizaDireitos;
  end else 
    ShowMessage('É necessário informar seu estado');
end;

class function TfbCupom.Descricao: String;
var aUF: String;
begin
  if Dados.tNFConfig.Active then begin
    aUF := Trim(Dados.tNFConfigEnd_UF.Value);
    if (aUF='') or SameText(aUF, 'SC') or SameText(aUF, 'ES') then
      Result := 'Cupom Fiscal Eletrônico'
    else
    if SameText(aUF, 'SP') then
      Result := 'CF-e SAT'
    else
      Result := 'NFC-e';
  end else
    Result := 'Cupom Fiscal Eletrônico';
  Result := '  '+Result+'  ';
end;

procedure TfbCupom.cmRelVendasClick(Sender: TObject);
begin
  inherited;
  if not TFrmPeriodo.Create(Self).ObtemPeriodo(DataI, DataF) then Exit;
  mtRel.Active := False;
  mtRel.Active := True;
  mtRel.Append;
  mtRelPeriodo.Value := FormatDateTime('dd/mm/yyyy', DataI) + ' a ' + FormatDateTime('dd/mm/yyyy', DataF);
  mtRelNomeLoja.Value := gConfig.RecNomeLoja;
  mtRel.Post;

  DataF := DataF + 1;
  
  tExp.Active := True;
  tExp.Filtered := True;

  with Dados do
  if tNFConfigTipo.Value=nfcfg_sat then begin
    tExp.IndexName := 'ITipoDocDataHora';
    tExp.SetRange([tiponfe_sat, DataI], [tiponfe_sat, DataF]);
  end else begin
    tExp.IndexName := 'ITipoDoctpAmbDataHora';
    tExp.SetRange([tiponfe_nfce, tNFConfigtpAmb.Value, DataI], [tiponfe_nfce, tNFConfigtpAmb.Value, DataF]);
  end;  

  tExp.First;
  
  repVen.ShowReport;
end;

procedure TfbCupom.FiltraDados;
begin
  if not Tab.Active then begin
    Tab.Open;
    if Dados.tNFConfigTipo.Value=nfcfg_sat then 
      Tab.SetRange([tiponfe_sat], [tiponfe_sat]) else
      Tab.SetRange([tiponfe_nfce], [tiponfe_nfce]);
  end else
    Tab.Refresh;
  AjustaTools;  
end;

procedure TfbCupom.FrmBasePaiCreate(Sender: TObject);
begin
  inherited;
  dmDanfe := nil;
  Paginas.HideTabs := True;
  Paginas.ActivePageIndex := 1;
  pagTipo.HideTabs := True;
end;

procedure TfbCupom.gridNFeResize(Sender: TObject);
begin
  inherited;
  AjustaTools;
end;

procedure TfbCupom.lbNaoEstaClick(Sender: TObject);
var aUF: String;
begin
  if VarIsNull(edEstado.EditValue) then
    aUF := '' else
    aUF := edEstado.EditValue;
    
  aUF := TFrmEstado.Create(Self).ObtemEstado(aUF);
  if aUF>'' then begin
    Dados.tNFConfig.Edit;
    Dados.tNFConfigEnd_UF.Value := aUF;
    Dados.tNFConfig.Post;
  end;
  AtualizaDireitos;
end;

procedure TfbCupom.LoadDanfe;
var S: String;
begin
  if not Assigned(dmDanfe) then dmDanfe := TdmDanfe_NFCE.Create(Self);
  if TabContingencia.Value then
    S := TabXMLtransCont.Value else
    S := TabXMLdest.Value;

  with Dados do begin    
    if not tbTran.Locate('UID', TabTran.Value, []) then raise exception.Create('Venda não encontrada!');
    dmDanfe.LoadXML(S, 
                    tbTranTroco.Value, 
                    tbTranFunc.Value, 
                    tbTranID.AsString, 
                    tNFConfigIdCSC.Value, 
                    tNFConfigCSC.Value, 
                    tbConfig, 
                    tNFConfigurls_qrcode_hom.Value,
                    tNFConfigurls_qrcode_prod.Value,
                    tNFConfigurls_consulta.Value, tbTranCancelado.Value);
  end;
end;

procedure TfbCupom.PaginasResize(Sender: TObject);
begin
  inherited;
  RedimPanels;
end;

procedure TfbCupom.panPriResize(Sender: TObject);
begin
  inherited;
  RedimPanels;
end;

procedure TfbCupom.pmXMLsPopup(Sender: TObject);
begin
  inherited;
  if (TabStatusNF.Value=204) and (TabProtocolo.Value='') then
    cmProtEnvio.Visible := ivAlways else
    cmProtEnvio.Visible := ivNever;
end;

procedure TfbCupom.RedimPanels;
begin
//  panRInativo.Width := (Paginas.Width div 2) + 8;
end;

procedure TfbCupom.Refresh;
begin
  if Tab.Active then 
    Tab.Refresh else
    FiltraDados;
end;

procedure TfbCupom.Selecionou;
begin
  if pagTipo.ActivePage=tsSemEstado then
    TimerSel.Enabled := True;
end;

procedure TfbCupom.tExpFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept := (tExpStatus.Value in [nfestatus_ok, nfestatus_ok_cont]) and 
            (tExpDataHora.Value < DataF) and
            ( not (tExpStatusCanc.Value in [statuscanc_nfe_processatran, statuscanc_nfe_ok]));
end;

procedure TfbCupom.TimerSelTimer(Sender: TObject);
begin
  inherited;
  TimerSel.Enabled := False;
  lbNaoEstaClick(nil);
end;

procedure TfbCupom.TimerSelZipTimer(Sender: TObject);
begin
  inherited;
  TimerSelZip.Enabled := False;
  ShellExecute(0, nil, 'explorer.exe', PWideChar('/select,'+SaveDlg2.FileName), nil, SW_SHOWNORMAL)
end;

procedure TfbCupom.tvNFeChaveGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if SameText(copy(AText, 1, 4), 'TEMP') then AText := '';
end;

procedure TfbCupom.tvNFeContingenciaCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var V: Variant;  
begin
  inherited;
  V := AViewInfo.Value;
  if (not VarIsNull(V)) and (V=true) then ACanvas.Font.Style := [fsBold];
end;

procedure TfbCupom.tvNFeCustomDrawColumnHeader(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
  var ADone: Boolean);
begin
  inherited;
  FrmPri.CustomDrawGridHeader(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TfbCupom.tvNFeDataHoraStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[tvNFeStatusCanc.Index];
  if (not VarIsNull(V)) and (V=statuscanc_nfe_ok) then AStyle := cxsCanc2;
end;

procedure TfbCupom.tvNFeStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[tvNFeStatusCanc.Index];
  if (not VarIsNull(V)) and (V=statuscanc_nfe_ok) then AStyle := cxsCanc;
end;

procedure TfbCupom.tvNFexMotivoGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
var V: Variant;  
begin
  inherited;
  V := ARecord.Values[tvNFeStatusNF.Index];
  if (not VarIsNull(V)) and (V=100) then AText := '';
end;

end. 
