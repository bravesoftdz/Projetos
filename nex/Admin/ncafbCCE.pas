unit ncafbCCE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufmFormBase, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxBar, dxPSCore, cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses,
  LMDControl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDSimplePanel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxSpinEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, nxdb,
  cxImageComboBox, cxMemo, kbmMemTable, frxClass, frxDBSet, LMDCustomComponent,
  LMDTextContainer, Vcl.StdCtrls, frxExportPDF;

type
  TfbCCE = class(TFrmBase)
    Tab: TnxTable;
    TabUID: TGuidField;
    TabNumSeq: TUnsignedAutoIncField;
    TabChave: TStringField;
    TabDataHora: TDateTimeField;
    Tabtran_uid: TGuidField;
    Tabtran_id: TLongWordField;
    Tabnfe_serie: TStringField;
    Tabnfe_numero: TLongWordField;
    TabtpAmbNFE: TByteField;
    TabProtocolo: TStringField;
    TabTexto: TnxMemoField;
    TabStatus: TByteField;
    TabStatusCCE: TIntegerField;
    TabXMLdest: TnxMemoField;
    TabXMLret: TnxMemoField;
    TabxMotivo: TnxMemoField;
    TabLogEnvio: TnxMemoField;
    TabLogRec: TnxMemoField;
    TabUsuario: TStringField;
    DS: TDataSource;
    TV: TcxGridDBTableView;
    GL: TcxGridLevel;
    Grid: TcxGrid;
    TVChave: TcxGridDBColumn;
    TVDataHora: TcxGridDBColumn;
    TVtran_id: TcxGridDBColumn;
    TVnfe_serie: TcxGridDBColumn;
    TVnfe_numero: TcxGridDBColumn;
    TVtpAmbNFE: TcxGridDBColumn;
    TVProtocolo: TcxGridDBColumn;
    TVTexto: TcxGridDBColumn;
    TVStatus: TcxGridDBColumn;
    TVStatusCCE: TcxGridDBColumn;
    TVxMotivo: TcxGridDBColumn;
    TVUsuario: TcxGridDBColumn;
    TabNomeUsuario: TStringField;
    cmEmail: TdxBarLargeButton;
    cmSalvar: TdxBarLargeButton;
    cmVer: TdxBarLargeButton;
    cmImprimirCCE: TdxBarLargeButton;
    Relcce: TfrxReport;
    dbmt: TfrxDBDataset;
    tDadosNfe: TnxTable;
    tDadosNfeID: TUnsignedAutoIncField;
    tDadosNfeUID: TGuidField;
    tDadosNfeEmitirNFCe: TBooleanField;
    tDadosNfeTipo: TByteField;
    tDadosNfeRemoverNFCe: TBooleanField;
    tDadosNfeUsarPautaMaiorMVA: TBooleanField;
    tDadosNfeEmitirNFE: TBooleanField;
    tDadosNfeCertificadoDig: TStringField;
    tDadosNfesat_modelo: TByteField;
    tDadosNfesat_config: TStringField;
    tDadosNfesat_esq: TByteField;
    tDadosNfenfe_permite_cred_icms: TBooleanField;
    tDadosNfenfe_perc_cred_icms: TFloatField;
    tDadosNfeContabilidade: TStringField;
    tDadosNfeexigir_peso_vol: TBooleanField;
    tDadosNfeenviar_peso_vol_def: TBooleanField;
    tDadosNfeauto_calc_peso_def: TBooleanField;
    tDadosNfenfe_venda: TBooleanField;
    tDadosNfetipodoc_padrao: TByteField;
    tDadosNfePinCert: TStringField;
    tDadosNfeDependNFCEOk: TBooleanField;
    tDadosNfeDependSATOk: TBooleanField;
    tDadosNfeDependNFEOk: TBooleanField;
    tDadosNfeTipoCert: TByteField;
    tDadosNfeAutoPrintNFCe: TBooleanField;
    tDadosNfeCRT: TByteField;
    tDadosNfeNCM_Padrao: TStringField;
    tDadosNfeTrib_Padrao: TWordField;
    tDadosNfeMostrarDadosNFE: TBooleanField;
    tDadosNfeModeloNFE: TStringField;
    tDadosNfeModeloNFCe: TStringField;
    tDadosNfeSerieNFCe: TStringField;
    tDadosNfeSerieNFe: TStringField;
    tDadosNfeNomeDllSat: TStringField;
    tDadosNfeSignACSat: TStringField;
    tDadosNfeCodigoAtivacao: TStringField;
    tDadosNfeAssociarSignAC: TBooleanField;
    tDadosNfeInicioNFe: TLongWordField;
    tDadosNfeInicioNFCe: TLongWordField;
    tDadosNfeRazaoSocial: TStringField;
    tDadosNfeNomeFantasia: TStringField;
    tDadosNfeCNPJ: TStringField;
    tDadosNfeIE: TStringField;
    tDadosNfeEnd_Logradouro: TStringField;
    tDadosNfeEnd_Numero: TStringField;
    tDadosNfeEnd_Complemento: TStringField;
    tDadosNfeEnd_Bairro: TStringField;
    tDadosNfeEnd_UF: TStringField;
    tDadosNfeEnd_CEP: TStringField;
    tDadosNfeEnd_Municipio: TStringField;
    tDadosNfeEnd_CodMun: TStringField;
    tDadosNfeEnd_CodUF: TByteField;
    tDadosNfeTelefone: TStringField;
    tDadosNfetpAmb: TByteField;
    tDadosNfetpAmbNFE: TByteField;
    tDadosNfeCSC: TStringField;
    tDadosNfeIdCSC: TStringField;
    tDadosNfePedirEmail: TByteField;
    tDadosNfePedirCPF: TByteField;
    tDadosNfeFromEmail: TStringField;
    tDadosNfeAssuntoEmail: TStringField;
    tDadosNfeFromName: TStringField;
    tDadosNfeCorpoEmail: TnxMemoField;
    tDadosNfeModeloNFCe_Email: TGuidField;
    tDadosNfeModeloSAT_Email: TGuidField;
    tDadosNfeModeloNFE_Email: TGuidField;
    tDadosNfeurls_qrcode_hom: TnxMemoField;
    tDadosNfeurls_qrcode_prod: TnxMemoField;
    tDadosNfeurls_consulta: TnxMemoField;
    tDadosNfeconfig_nfe: TnxMemoField;
    tDadosNfeObsFisco: TnxMemoField;
    mtCCe: TkbmMemTable;
    mtCCecOrgao: TStringField;
    mtCCetpAmb: TStringField;
    mtCCeCNPJ: TStringField;
    mtCCechNFe: TStringField;
    mtCCedhEvento: TStringField;
    mtCCetpEvento: TStringField;
    mtCCenSeqEvento: TStringField;
    mtCCexCorrecao: TStringField;
    mtCCeRazaoSocial: TStringField;
    mtCCenProt: TStringField;
    mtCCenroNFe: TStringField;
    mtCCeamb: TStringField;
    relExportPDF: TfrxPDFExport;
    procedure cmVerClick(Sender: TObject);
    procedure cmSalvarClick(Sender: TObject);
    procedure cmEmailClick(Sender: TObject);
    procedure cmImprimirCCEClick(Sender: TObject);
  private
      FXML : String;
    { Private declarations }
    procedure LoadFields(D: TDataset; aCaminho: String; aXML: String = '');
  public
    class function Descricao: String; override;
    procedure FiltraDados; override;
    procedure AtualizaDireitos; override;
    { Public declarations }
  end;

var
  fbCCE: TfbCCE;

implementation

{$R *.dfm}

uses 
idHttp, IdMultipartFormData, ufmImagens, ncaDM, ncaFrmPri, ncaFrmXmls, ncaEditEmail,
  ncClassesBase, ncaFrmConfig_NFE, ncDMdanfe_nfe, ncaFrmSendEmailOrc, nexUrls;

{ TfbCCE }

procedure TfbCCE.AtualizaDireitos;
begin
  inherited;

end;

class function TfbCCE.Descricao: String;
begin
  Result := 'Cartas de Correção';
end;

procedure TfbCCE.cmEmailClick(Sender: TObject);
var 
  aEmail, aRes, S, PDF: String;
  MS : TIdMultiPartFormDataStream;
  H : TidHttp;

function EmailOk: Boolean;
begin
  Result := False;
  if not EmailValido(Dados.tNFConfigFromEmail.Value) then Exit;
  Result := True;
end;

begin
  inherited;
  if Tab.IsEmpty then Exit;

  case TabStatus.Value of 
    statuscce_enviar :
      raise Exception.Create('Essa carta de correção ainda não foi transmitida para a SEFAZ');
      
    statuscce_erro :
      raise Exception.Create('Essa carta de correção foi rejeitada');
  end;

  if not EmailOk then begin
    ShowMessage('É necessário configurar os parâmetros para o envio de NF-e por e-mail');
    with TFrmConfig_NFE.Create(Self) do begin
      Paginas.ActivePage := tsEmail;
      ShowModal;                                   
    end;
    Exit;
  end;

  with Dados do begin
    if not tbNFe.Locate('chave', TabChave.Value, []) then begin
      ShowMessage('NF-e não encontrada!');
      Exit;
    end;

    aEmail := tbNFeEmail.Value;

    if aEmail='' then
      aEmail := getXMLValue(tbNFeXMLDest.Value, 'email', 'nfeProc,NFe,infNFe,dest');
    
    if not TFrmEditEmail.Create(Self).Editar(aEmail, 'Enviar Carta de Correção para:') then Exit;

    S := ExtractFilePath(ParamStr(0))+'Email';
    ForceDirectories(S);
    S := S + '\cce_'+tCCEChave.Value+'.xml';
    TabXMlDest.SaveToFile(S);

    PDF := ExtractFilePath(ParamStr(0))+'NFE\CCE';
    ForceDirectories(PDF);
    PDF := PDF + '\cce_'+tCCEChave.Value+'.PDF';

    if Not FileExists(PDF) then
      raise Exception.Create('O arquivo PDF desta CC-e não foi encontrado.');

    ms := TdmDanfe_nfe.GetMSEmailCCE(tNFConfigFromEmail.Value, tNFConfigNomeFantasia.Value, S, PDF, aEmail);

    if MS=nil then Exit;

    h := TIdHTTP.create(nil);
    try
      H.HandleRedirects := True;  
      aRes := TFrmSendEmail.Create(Self).Enviar(H, gUrls.Url('mailer', '', False), MS);
      if aRes<>'' then raise exception.Create(aRes);    
    finally
      H.Free;
      MS.Free;
    end;      
  end;
end;

procedure TfbCCE.cmImprimirCCEClick(Sender: TObject);
var
  S, sAmb :string;
  P: Integer;

function frmData ( d :string):string;
begin
   d := copy(d,9,2)+'/'+copy(d,6,2)+'/'+copy(d,1,4);
   result := FormatDateTime('dd/mm/yyyy', StrToDate(d));
end;

function fmt_cnpj(S: String): String;
begin
  case Length(s) of
    13 : result := copy(S, 1, 1)+'.'+copy(s, 2, 3)+'.'+copy(S, 5, 3)+'/'+copy(s, 8, 4)+'-'+copy(s, 12, 2);
    14 : result := copy(S, 1, 2)+'.'+copy(s, 3, 3)+'.'+copy(S, 6, 3)+'/'+copy(s, 9, 4)+'-'+copy(s, 13, 2);
    15 : result := copy(S, 1, 3)+'.'+copy(s, 4, 3)+'.'+copy(S, 7, 3)+'/'+copy(s, 10, 4)+'-'+copy(s, 14, 2);
  else
    Result := S;
  end;
end;

begin
  inherited;
  S := TabXMLdest.AsString;
  tDadosNfe.Open;
  mtCCe.Active := False;
  mtCCe.Active := True;
  mtCCe.Append;
  LoadFields(mtCCE, 'procEventoNFe,evento,infEvento', S);
  P := pos('retEvento', S);
  Delete(S, P, 100000);
  LoadFields(mtCCE, 'procEventoNFe,evento,infEvento', S);
  LoadFields(mtCCE, 'procEventoNFe,evento,infEvento,detEvento', S);

  if mtCCetpAmb.Value = '1' then
    mtCCeAmb.Value := '1 - Produção'
  else
    mtCCeAmb.Value := '2 - Homologação';

  mtCCenroNfe.value := Tabnfe_numero.AsString;
  mtCCedhEvento.Value := frmData(mtCCedhEvento.value);

  mtCCeCNPJ.Value := fmt_cnpj(mtCCeCNPJ.Value);
  mtCCeRazaoSocial.Value := tDadosNfeRazaoSocial.Value;
  mtCCe.Post;

  if SoDig(mtCCeCNPJ.Value) <> tDadosNfeCNPJ.Value then
    raise Exception.Create('O CNPJ configurado no sistema é diferente do CNPJ da CC-e.'+#13+
                           'Esta CC-e não pode ser impressa.');

  if TabStatus.Value = 1 then
  begin
    relExportPDF.FileName := 'CCE_'+ mtCCechNFe.Value + '.pdf';
    relExportPDF.DefaultPath := 'C:\Meus Programas\Nex\nfe\CCE';
    relExportPDF.ShowDialog := false;
    relExportPDF.ShowProgress := false;
    relcce.PrepareReport;
    relcce.Export(relExportPDF);
    relcce.Print;
    tDadosNfe.close;
  end
  else
    raise Exception.Create('Esta carta de correção não pode ser impressa.');
  tDadosNfe.close;
end;


procedure TfbCCE.LoadFields(D: TDataset; aCaminho: String; aXML: String = '');
var
  I : Integer;
  S : String;
  F : TField;

function MeuStrToFloat(S: String): Extended;
var Code: Integer;
begin
  Val(S, REsult, Code);
end;

begin
  if aXML='' then
    aXML := FXML;

  for i := 0 to D.Fields.Count-1 do begin
    F := D.Fields[I];
    S := getXMLValue(aXML, F.FieldName, aCaminho);
    if S>'' then
    if F.DataType in [ftFloat, ftCurrency] then
      F.AsFloat := MeuStrToFloat(S) else
      F.AsString := S;
  end;
end;

procedure TfbCCE.cmSalvarClick(Sender: TObject);
begin
  inherited;
  if Tab.IsEmpty then Exit;

  TFrmXMLs.Create(Self).Mostrar(TabChave.Value, '', TabXMLret.Value, TabXMLdest.Value, '', '', True, 4); 
end;

procedure TfbCCE.cmVerClick(Sender: TObject);
begin
  inherited;
  if Tab.IsEmpty then Exit;

  TFrmXMLs.Create(Self).Mostrar(TabChave.Value, '', TabXMLret.Value, TabXMLdest.Value, '', '', False, 4); 

end;

procedure TfbCCE.FiltraDados;
begin
  inherited;
  if not Tab.Active then
    Tab.Open else
    Tab.Refresh;
end;

end.

