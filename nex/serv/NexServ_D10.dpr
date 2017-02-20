program NexServ_D10;

uses
  nxReplacementMemoryManager,
  nxReplacementMove,
  nxpvPlatformImplementation,
  nxllZipCompressor,
  nxllRLECompressor,
  MidasLib,
  ComObj,
  ActiveX,
  Forms,
  SysUtils,
  nxseAllEngines,
  Registry,
  ncDebug in '..\Comp\ncDebug.pas',
  uLicEXECryptor in '..\..\GS\uLicEXECryptor.pas',
  ncsFrmBackup in 'ncsFrmBackup.pas' {FrmCopia},
  ncsFrmLogin in 'ncsFrmLogin.pas' {FrmLogin},
  ncsFrmPri in 'ncsFrmPri.pas' {frmPri},
  ncClassesBase in '..\Comp\ncClassesBase.pas',
  ncMsgCom in '..\Comp\ncMsgCom.pas',
  ncServAtualizaLic_Indy in '..\comp\ncServAtualizaLic_Indy.pas' {dmAtualizaLic: TDataModule},
  ncServBase in '..\Comp\ncServBase.pas',
  ncServBD in '..\Comp\ncServBD.pas' {dmServidorBD: TDataModule},
  ncTableDefs in '..\Comp\ncTableDefs.pas',
  ncTran in '..\Comp\ncTran.pas',
  ncDMServ in '..\Comp\ncDMServ.pas' {khjkh: TDataModule},
  ncDebito in '..\Comp\ncDebito.pas',
  ncErros in '..\Comp\ncErros.pas',
  ncLancExtra in '..\Comp\ncLancExtra.pas',
  ncVersoes in '..\Comp\ncVersoes.pas',
  ncFrmSuporteRem in '..\Comp\ncFrmSuporteRem.pas' {FrmSuporte},
  ncIPAddr in '..\Comp\ncIPAddr.pas',
  ncSyncLic in '..\Comp\ncSyncLic.pas',
  ncFrmProgress in '..\Comp\ncFrmProgress.pas' {FrmProg},
  uFrmCodLoja in '..\..\gs\uFrmCodLoja.pas' {FrmCodLoja},
  ncDMDBProc in '..\Comp\ncDMDBProc.pas' {dmDBProc: TDataModule},
  uObjPool in '..\..\Utils\uObjPool.pas',
  ncMovEst in '..\Comp\ncMovEst.pas',
  ncVersionInfo in '..\Comp\ncVersionInfo.pas',
  ncnxServerPlugin in '..\Comp\ncnxServerPlugin.pas',
  ncNetMsg in '..\Comp\ncNetMsg.pas',
  uRSAss in '..\..\GS\uRSAss.pas',
  Windows,
  Dialogs,
  ShellApi,
  ElevationUtils in '..\Utils\ElevationUtils.pas',
  ncExeUnico in '..\Utils\ncExeUnico.pas',
  ncShellStart in '..\Comp\ncShellStart.pas',
  ncFirewall in '..\Comp\ncFirewall.pas',
  CSCBase in '..\..\CSComm\CSCBase.pas',
  ClasseCS in '..\..\CSComm\ClasseCS.pas',
  CacheProp in '..\..\CSComm\CacheProp.pas',
  ncsCallbackEvents in 'ncsCallbackEvents.pas',
  uNxCompression in '..\..\nextarprodserver\uNxCompression.pas',
  uNexusDBUtils in '..\..\Utils\uNexusDBUtils.pas',
  uFaixaInteger in '..\..\Utils\uFaixaInteger.pas',
  ncEspecie in '..\Comp\ncEspecie.pas',
  ncDebCredSaver in '..\comp\ncDebCredSaver.pas',
  ncKiteApi_SyncNexWeb in '..\..\kapi\ncKiteApi_SyncNexWeb.pas',
  ncsDMBackup in 'ncsDMBackup.pas' {dmBackup: TDataModule},
  ncDMCaixa in '..\comp\ncDMCaixa.pas' {dmCaixa: TDataModule},
  ncFrmDownSup in '..\comp\ncFrmDownSup.pas' {FrmDownSup},
  ncListaID in '..\comp\ncListaID.pas',
  ncIDRecursos in '..\comp\ncIDRecursos.pas',
  ncaK in '..\comp\ncaK.pas',
  ncHash in '..\comp\ncHash.pas',
  ncCommonProc in '..\comp\ncCommonProc.pas',
  ncSalvaCredito in '..\comp\ncSalvaCredito.pas',
  ncGuidUtils in '..\comp\ncGuidUtils.pas',
  kwicDescriptor in '..\..\kwic\kwicDescriptor.pas',
  kwicEngine in '..\..\kwic\kwicEngine.pas',
  ncCustoSaver in '..\comp\ncCustoSaver.pas',
  EXECryptor in 'C:\comp\EXECryptor\SDK\Delphi\EXECryptor.pas',
  uGetSerial in '..\..\gs\uGetSerial.pas',
  ncCaixas in '..\comp\ncCaixas.pas',
  IdeSN_XE7 in 'C:\comp\varios\IdeSN_XE7.pas',
  nexUrls in '..\..\nxUrl\nexUrls.pas',
  ncKiteApi in '..\..\kapi\ncKiteApi.pas',
  ncDMdanfe_NFCE in '..\comp\ncDMdanfe_NFCE.pas' {dmDanfe_NFCE: TDataModule},
  ncsNFConfig in 'ncsNFConfig.pas',
  ncDMDependSAT in '..\comp\ncDMDependSAT.pas' {dmDependSAT: TDataModule},
  ncCert in '..\comp\ncCert.pas',
  udmPostMS in 'udmPostMS.pas' {dmPostMS: TDataModule},
  CAPICOM_TLB in 'C:\Users\JoaoX1\Documents\Embarcadero\Studio\15.0\Imports\CAPICOM_TLB.pas',
  uNexTransResourceStrings_PT in '..\..\FormMgr\translator\uNexTransResourceStrings_PT.pas',
  udmNFE_gerar in 'udmNFE_gerar.pas' {dmNFE_gerar: TDataModule},
  ncDMDependNFE in '..\comp\ncDMDependNFE.pas' {dmDependNFE: TDataModule},
  udmSAT_gerar in 'udmSAT_gerar.pas' {dmSAT_gerar: TDataModule},
  udmNFe_trans in 'udmNFe_trans.pas' {dmNFE_trans: TDataModule},
  ncDMdanfe_SAT in '..\comp\ncDMdanfe_SAT.pas' {dmDanfe_SAT: TDataModule},
  ncHttp in '..\comp\ncHttp.pas',
  uNR_chaveseg in '..\..\gs\uNR_chaveseg.pas',
  Vcl.Themes,
  Vcl.Styles,
  ncDMSyncCest in '..\comp\ncDMSyncCest.pas' {dmCestUpdate: TDataModule},
  ncsStrings in 'ncsStrings.pas',
  ncDM_bk_upload in '..\cloudbk\ncDM_bk_upload.pas' {dm_bk_upload: TDataModule},
  uDB_json in '..\nexapp\uDB_json.pas',
  System.uJSON in '..\nexapp\System.uJSON.pas',
  ncDM_bk_process in '..\cloudbk\ncDM_bk_process.pas' {dm_bk_process: TDataModule},
  uVersionInfo in 'C:\Comp\varios\uVersionInfo.pas',
  uThreadStringList in '..\..\utils\uThreadStringList.pas',
  udmNFCe_gerar in 'udmNFCe_gerar.pas' {dmNFCe_gerar: TDataModule},
  ncDMDependNFCE in '..\comp\ncDMDependNFCE.pas' {dmDependNFCE: TDataModule},
  udmNFCe_trans in 'udmNFCe_trans.pas' {dmNFCE_trans: TDataModule},
  ncEndereco in '..\comp\ncEndereco.pas',
  ncTipoTran in '..\comp\ncTipoTran.pas',
  ncDMdanfe_nfe in '..\comp\ncDMdanfe_nfe.pas' {dmDanfe_nfe: TDataModule},
  nxsrServerEngine in 'C:\Comp\NexusDB4\nxsrServerEngine.pas',
  ncDM_post_nexapp in '..\nexapp\ncDM_post_nexapp.pas' {dm_post_nexapp: TDataModule},
  ncDM_nexapp in '..\nexapp\ncDM_nexapp.pas' {dmNexApp: TDataModule};

{$R *.res}

function JaAbriu: Boolean;
var H: HWND;
begin
  H := FindWindow(WndClassName, nil);
  if H<>0 then begin
    PostMessage(H, wm_abreserv, 0, 0);
    Result := True;
  end else
    Result := False;
end;

begin
  if JaAbriu then Exit;

  CoInitFlags := 0;
  try CoInitialize(nil); except end;

  nxc_ConfigFile := 'NexDBTrans.cfg';
  
  Application.Initialize;

  LadoServidor := True;

  InitExeUnico;
  
  Application.Title := 'Servidor NEX!';
  
  NomeArqDebug := 'DebugNexServ.txt';
  if not ExeJaExiste then begin
    Application.CreateForm(TfrmPri, frmPri);
  Application.Run;
    EncerrarThreads := True;
  end;
end.
