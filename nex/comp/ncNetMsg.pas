unit ncNetMsg;
{
    ResourceString: Dario 13/03/13
}

interface

uses ncClassesBase, CSCBase, nxstMessages, SysUtils;

const

  nxnmUser               = $1100;
  
  ncnmFirst              = nxnmUser + 5000;
  ncnmLogin              = ncnmFirst + 4;
  ncnmLogout             = ncnmFirst + 5;
  ncnmNovoObj            = ncnmFirst + 6;
  ncnmAlteraObj          = ncnmFirst + 7;
  ncnmApagaObj           = ncnmFirst + 8;
  ncnmObtemLista         = ncnmFirst + 9;
  
{  ncnmObtemPreco         = 12;
  ncnmAjustaPreco        = 13;}
  
  ncnmObtemStreamConfig  = ncnmFirst + 18;
  ncnmShutdown           = ncnmFirst + 24;
  ncnmBaixaAtualizacao   = ncnmFirst + 25;
  ncnmObtemLicenca       = ncnmFirst + 28;
  ncnmObtemPastaServ     = ncnmFirst + 33;
  ncnmSalvaCredTempo     = ncnmFirst + 39;
  ncnmCancelaTran        = ncnmFirst + 41;
  ncnmSalvaMovEst        = ncnmFirst + 42;
  ncnmSalvaDebito        = ncnmFirst + 43;
  ncnmAbreCaixa          = ncnmFirst + 45;
  ncnmFechaCaixa         = ncnmFirst + 46;
  ncnmSalvaLancExtra     = ncnmFirst + 53;
  ncnmSalvaCredito       = ncnmFirst + 54;
  ncnmCorrigeDataCaixa   = ncnmFirst + 55;
  ncnmSalvaLic           = ncnmFirst + 58;
  ncnmAjustaPontosFid    = ncnmFirst + 60;
  ncnmKeepAlive          = ncnmFirst + 62;
  ncnmDownloadArq        = ncnmFirst + 64;
  ncnmUploadArq          = ncnmFirst + 66;
  ncnmDownloadArqInterno = ncnmFirst + 79;
  ncnmGetLoginData       = ncnmFirst + 80;
  ncnmZerarEstoque       = ncnmFirst + 81;
  ncnmSalvaApp           = ncnmFirst + 82;
  ncnmObtemCertificados  = ncnmFirst + 83;
  ncnmReemitirNFCe       = ncnmFirst + 84; 
  ncnmInstalaNFCeDepend  = ncnmFirst + 85;
  ncnmTableUpdated       = ncnmFirst + 86;
  ncnmGeraXMLProt        = ncnmFirst + 87;
  ncnmConsultarSAT       = ncnmFirst + 88;
  ncnmInutilizarNFCE     = ncnmFirst + 89;
  ncnmInstalaNFeDepend   = ncnmFirst + 90;
  
  
  ncnmMsgComEv           = ncnmFirst + 101;
  ncnmChecaLicEv         = ncnmFirst + 102;
  ncnmHorarioEv          = ncnmFirst + 103;
  ncnmSalvaTelaEv        = ncnmFirst + 105;
  ncnmShutdownEv         = ncnmFirst + 107;


  ncnmFirstEv = ncnmMsgComEv;
  ncnmLastEv = ncnmShutdownEv;

type
  TnmInutilizarNFCE_Req = packed record
    nmNFe: Boolean;
    nmAno: Word;
    nmInicio, nmFim : Cardinal;
    nmJust : String[200];
  end;

  TnmNFCeReq = packed record
    nmChave : String[50];
  end;
  
  TnmDownArqInt = packed record
    nmArq : String[50];
    nmVer : Integer;
  end;
  
  PnmHorarioEv = ^TnmHorarioEv;
  TnmHorarioEv = packed record
    nmHora : TDateTime;
  end;

  TnmTableUpdated = packed record
    nmIDTab : Byte;
  end;  

  TnmAjustaPontosFid = packed record
    nmFunc   : String[20];
    nmCliente: Integer;
    nmFator  : Smallint;
    nmPontos : Double;
    nmObs    : String[200];
  end;
  
  PnmNomeArq = ^TnmNomeArq;
  TnmNomeArq = packed record
    nmNomeArq : String[255];
  end;  

  TnmAbreCaixaReq = packed record
    nmFunc: String[20];
    nmSaldo: Currency;
  end;                          

  TnmCorrigeDataCaixaReq = packed record
    nmFunc          : String[20];
    nmCaixa         : Integer;
    nmNovaAbertura  : TDateTime;
    nmNovoFechamento: TDateTime;
  end;

  TnmFechaCaixaReq = packed record
    nmFunc: String[20];
    nmID  : Integer;
    nmSaldo : Currency;
  end;

  PnmAbreCaixaRpy = ^TnmAbreCaixaRpy;
  TnmAbreCaixaRpy = packed record
    nmID: Integer;
  end;
  
  PnmSenhaCli=^TnmSenhaCli;
  TnmSenhaCli= packed record
    nmCodigo : Integer;
    nmSenha  : String[30];
  end;

  TnmCancelaTranReq = packed record
    nmFunc : String[30];
    nmTran : Integer;
  end;

  TnmZerarEstoqueReq = packed record
    nmFunc : String[30];
  end;  

  TnmLoginReq = packed record
    nmUsername   : String[30];
    nmSenha      : String[10];
    nmFuncAtual  : Boolean;
    nmProxyHandle: Integer;
  end; 

  TnmBaixaAtualizacao = packed record
    nmPrograma : String[30];
    nmVersao   : String[10]; 
    nmNomeArq  : TCSCFileName;
  end;  

  TnmLoginRpy = packed record
    nmHandle   : Integer;
  end;

  TnmObtemListaReq = packed record
    nmCliente    : Integer;
    nmTipoClasse : Integer;
  end;

  PnmObj = ^TnmObj;
  TnmObj = packed record
    nmCliente    : Integer;
    nmTipoClasse : Integer;
    nmChave      : String[50];
  end;

  PnmMsgCom = ^TnmMsgCom;
  TnmMsgCom = packed record
    nmMsgID: Integer;
    nmDataLength: Longint;
    nmData: TnxVarMsgField;
  end;

  PnmUpload = ^TnmUpload;
  TnmUpload = packed record
    nmNomeArq : String[255];
    nmTamanho : Integer;
    nmArq     : TnxVarMsgField;
  end;

  function MsgToString(aMsg: Integer): String;
  
implementation

function MsgToString(aMsg: Integer): String;
begin
  case aMsg of
  ncnmLogin              : Result := 'Login              '; // do not localize
  ncnmLogout             : Result := 'Logout             '; // do not localize
  ncnmNovoObj            : Result := 'NovoObj            '; // do not localize
  ncnmAlteraObj          : Result := 'AlteraObj          '; // do not localize
  ncnmApagaObj           : Result := 'ApagaObj           '; // do not localize
  ncnmObtemLista         : Result := 'ObtemLista         '; // do not localize
  
{  ncnmObtemPreco         = 12;
  ncnmAjustaPreco        = 13;}
  
  ncnmObtemStreamConfig  : Result := 'ObtemStreamConfig  '; // do not localize
  ncnmShutdown           : Result := 'Shutdown           '; // do not localize
  ncnmBaixaAtualizacao   : Result := 'BaixaAtualizacao   '; // do not localize
  ncnmObtemLicenca       : Result := 'ObtemLicenca       '; // do not localize
  ncnmObtemPastaServ     : Result := 'ObtemPastaServ     '; // do not localize
  ncnmSalvaCredTempo     : Result := 'SalvaCredTempo     '; // do not localize
  ncnmCancelaTran        : Result := 'CancelaTran        '; // do not localize
  ncnmSalvaMovEst        : Result := 'SalvaMovEst        '; // do not localize
  ncnmSalvaDebito        : Result := 'SalvaDebito        '; // do not localize
  ncnmAbreCaixa          : Result := 'AbreCaixa          '; // do not localize
  ncnmFechaCaixa         : Result := 'FechaCaixa         '; // do not localize
  ncnmSalvaLancExtra     : Result := 'SalvaLancExtra     '; // do not localize
  ncnmSalvaCredito       : Result := 'SalvaCredito       '; // do not localize
  ncnmCorrigeDataCaixa   : Result := 'CorrigeDataCaixa   '; // do not localize
  ncnmSalvaLic           : Result := 'SalvaLic           '; // do not localize
  ncnmAjustaPontosFid    : Result := 'AjustaPontosFid    '; // do not localize
  ncnmKeepAlive          : Result := 'KeepAlive          '; // do not localize
  ncnmDownloadArq        : Result := 'DownloadArq        '; // do not localize
  ncnmUploadArq          : Result := 'UploadArq          '; // do not localize
  ncnmGetLoginData       : Result := 'GetLoginData       '; // do not localize
  
  
  ncnmMsgComEv           : Result := 'MsgComEv           '; // do not localize
  ncnmChecaLicEv         : Result := 'ChecaLicEv         '; // do not localize
  ncnmHorarioEv          : Result := 'HorarioEv          '; // do not localize
  ncnmSalvaTelaEv        : Result := 'SalvaTelaEv        '; // do not localize
  ncnmShutdownEv         : Result := 'ShutdownEv         '; // do not localize
  else
    Result := '#MSG='+IntToStr(aMsg); // do not localize
  end;
end;

end.

