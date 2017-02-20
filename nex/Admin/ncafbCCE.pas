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
  cxImageComboBox, cxMemo;

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
    procedure cmVerClick(Sender: TObject);
    procedure cmSalvarClick(Sender: TObject);
    procedure cmEmailClick(Sender: TObject);
  private
    { Private declarations }
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
  aEmail, aRes, S: String;
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

    ms := TdmDanfe_nfe.GetMSEmailCCE(tNFConfigFromEmail.Value, tNFConfigNomeFantasia.Value, S, aEmail);

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

