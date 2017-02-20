unit ncsFrmBackup;

interface

uses
  Windows, ncErros, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLabel, cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, Menus, cxLookAndFeelPainters, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDBaseEdit, LMDCustomEdit,
  LMDCustomBrowseEdit, LMDBrowseEdit, StdCtrls, cxButtons, cxProgressBar, nxdb,
  nxllComponent, nxdbBackupController, Buttons, cxGroupBox,
  cxRadioGroup, ExtCtrls, DB, cxPC, LMDSimplePanel, nxsdServerEngine,
  nxsrServerEngine, shellapi, ncClassesBase, nxsrSystemStorage,
  nxDBBase, LMDCustomComponent, lmdcont, LMDContainerComponent,
  LMDBaseDialog, LMDBrowseDlg, LMDBaseController, LMDCustomContainer,
  LMDGenericList, LMDControl, cxGraphics, cxLookAndFeels, cxPCdxBarPopupMenu,
  dxBarBuiltInMenu;


type
  TFrmCopia = class(TForm)
    nxBackup: TnxBackupController;
    nxDBO: TnxDatabase;
    nxDBD: TnxDatabase;
    nxSession: TnxSession;
    panPri: TPanel;
    T: TnxTable;
    Paginas: TcxPageControl;
    tsBackup: TcxTabSheet;
    tsCorrigir: TcxTabSheet;
    GL: TLMDGenericList;
    tsRestaurar: TcxTabSheet;
    PathDlg: TLMDBrowseDlg;
    tsZerar: TcxTabSheet;
    LMDSimplePanel1: TLMDSimplePanel;
    cxLabel3: TcxLabel;
    btnZerar: TcxButton;
    cbZerarConfig: TcxCheckBox;
    cbZerarProd: TcxCheckBox;
    cbZerarHist: TcxCheckBox;
    cbZerarCli: TcxCheckBox;
    pbZ: TcxProgressBar;
    lbZerar: TcxLabel;
    LMDSimplePanel5: TLMDSimplePanel;
    pbR: TcxProgressBar;
    lbRest: TcxLabel;
    btnRestaurar: TcxButton;
    LMDSimplePanel4: TLMDSimplePanel;
    cxLabel1: TcxLabel;
    edBackupDir: TLMDBrowseEdit;
    PB: TcxProgressBar;
    lbProgresso: TcxLabel;
    btnBackup: TcxButton;
    LMDSimplePanel2: TLMDSimplePanel;
    LMDSimplePanel7: TLMDSimplePanel;
    btnCorrigir: TcxButton;
    PagCorrigir: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxLabel2: TcxLabel;
    cxTabSheet2: TcxTabSheet;
    pbC: TcxProgressBar;
    lbCorr: TcxLabel;
    cxTabSheet3: TcxTabSheet;
    LMDSimplePanel3: TLMDSimplePanel;
    btnResyncNexApp: TcxButton;
    procedure nxBackupTableProgress(aSender: TnxBackupController;
      aPercentDone: Integer);
    procedure nxBackupOverwriteTable(aSender: TnxBackupController;
      const aTableName: string; var aUseTable: Boolean);
    procedure nxBackupIncludeTable(aSender: TnxBackupController;
      const aTableName: string; var aUseTable: Boolean);
    procedure nxBackupAfterTableOpen(aSender: TnxBackupController;
      aTable: TnxTable; aIsSource: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnBackupClick(Sender: TObject);
    procedure btnCorrigirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnRestaurarClick(Sender: TObject);
    procedure btnReindexClick(Sender: TObject);
    procedure btnZerarClick(Sender: TObject);
    procedure btnResyncNexAppClick(Sender: TObject);
  private
    slArqs : TStrings;
    Tabela : String;
    { Private declarations }
    procedure FazBackup;
    procedure InativaServidor;
    procedure AtivaServidor;
    procedure RecuperaDados(aReindex: Boolean);
    procedure Importar;
    procedure ApagarNX1(sl: TStrings = nil);
    procedure Restaurar(aTabs: TStrings);
    procedure Andamento(TableName: String; Maximo, Posicao: Integer);
  public
    procedure CopiaDados(aSufix: String; aNaoCopiar: String='');
    { Public declarations }
  end;

  TThreadEliminaDup = Class ( TThread )
  private
    FDB      : TnxDatabase;
    FSession : TnxSession;
    tITran   : TnxTable;

    procedure CreateComps;
    procedure FreeComps;
    procedure EliminaDup;
  protected
    procedure Execute; override;
  end;

var
  FrmCopia: TFrmCopia;

implementation

uses ncServBD, ncsFrmPri, ncDMServ, ncTableDefs, nxsdTypes, nxllException,
  ncFrmProgress, ncDebug, ncsStrings, uNexTransResourceStrings_PT;

{$R *.dfm}

procedure TFrmCopia.Andamento(TableName: String; Maximo, Posicao: Integer);
begin
end;

procedure TFrmCopia.ApagarNX1(sl: TStrings = nil);
var 
  SR : TSearchRec;
  S: String;
begin
  S := ExtractFilePath(ParamStr(0))+PastaDados+'\';
  if FindFirst(S+'*.nx1', SysUtils.faAnyFile, SR) = 0 then
  try
    repeat
      if (sl=nil) or (sl.IndexOf(UpperCase(SR.Name))>=0) then
        Windows.DeleteFile(PChar(S+SR.Name));
    until FindNext(SR)<>0;
  finally
    FindClose(SR);
  end;
end;

procedure TFrmCopia.AtivaServidor;
begin
  FrmPri.Ativar;
end;

procedure TFrmCopia.btnBackupClick(Sender: TObject);
var S: String;
begin
  if Trim(edBackupDir.Text)='' then
    Raise ENexCafe.Create(rsInformarPastaDestino);

  S := edBackupDir.Text;
  if Copy(S, Length(S), 1)<>'\' then
    S := S + '\';

  nxDBD.AliasPath := S + FormatDateTime('yyyymmdd_hhmm', Now);
  FazBackup;
end;

procedure TFrmCopia.FazBackup;
var Criar: Boolean;
begin
  btnBackup.Enabled := False;
  PB.Visible := True;
  lbProgresso.Visible := True;                                                  
  edBackupDir.Enabled := False;
  try
    Criar := not Assigned(dmServidorBD);
    try
      if Criar then begin
        Application.CreateForm(TdmServidorBD, dmServidorBD);  
        dmServidorBD.Inicializa;
        dmServidorBD.ServerEngine.Active := True;
      end;  
      nxSession.ServerEngine := dmServidorBD.ServerEngine;
      nxSession.Active := True;
      nxSession.PasswordAdd(sEncpass);
    
      if not DirectoryExists(nxDBD.AliasPath) then
        MkDir(nxDBD.AliasPath);
      nxDBO.Active := True;
      nxDBD.Active := True;
      nxBackup.Active := True;
      nxBackup.Backup;
    finally  
      if Criar then FreeAndNil(dmServidorBD);
    end;
    ShowMessage(rsSucessoBackup);
  finally
    btnBackup.Enabled := True;
    edBackupDir.Enabled := True;
    PB.Visible := False;
    lbProgresso.Visible := False;
    nxDBD.Active := False;
    nxDBO.Active := False;
    try nxSession.CloseInactiveTables; except end;
    try nxSession.CloseInactiveFolders; except end;
    try nxSession.Active := False; except end;
    nxSession.ServerEngine := nil;
    try nxBackup.Close; except end;
  end;
end;

procedure TFrmCopia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCopia.FormCreate(Sender: TObject);
begin
  Paginas.HideTabs := True;
  edBackupDir.Path := ExtractFilePath(ParamStr(0)) + PastaCopia;
  PagCorrigir.HideTabs := True;
  PagCorrigir.ActivePageIndex := 0;
  slArqs := TStringList.Create;
  Tabela := '';
end;

procedure TFrmCopia.FormDestroy(Sender: TObject);
begin
  slArqs.Free;
end;

procedure TFrmCopia.Importar;
begin
end;

procedure TFrmCopia.InativaServidor;
begin
  FrmPri.Desativar;
end;

procedure TFrmCopia.nxBackupAfterTableOpen(aSender: TnxBackupController;
  aTable: TnxTable; aIsSource: Boolean);
begin
  FrmPri.Repaint;
  lbProgresso.Caption := aTable.TableName;
  lbProgresso.Repaint;
  PB.Position := 0;
  PB.Repaint;
end;

procedure TFrmCopia.nxBackupIncludeTable(aSender: TnxBackupController;
  const aTableName: string; var aUseTable: Boolean);
begin
  Tabela := aTableName;
  aUseTable := (gTables[aTableName]<>nil);
end;

procedure TFrmCopia.nxBackupOverwriteTable(aSender: TnxBackupController;
  const aTableName: string; var aUseTable: Boolean);
begin
  aUseTable := True;
end;

procedure TFrmCopia.nxBackupTableProgress(aSender: TnxBackupController;
  aPercentDone: Integer);
begin
  PB.Position := aPercentDone;
  PB.Repaint;
end;

function RemoteExit(buffer: pchar) : dword; stdcall;
begin
  result := 0;
  ExitProcess(0);
end;

function FiltraQuotes(S: String): String;
var I : Integer;
begin
  Result := '';
  for I := 1 to Length(S) do 
    if S[I] <> '"' then Result := Result + S[I];
end;

procedure RecoverTable(aDatabase : TnxDatabase;
  const aTableName, aPassword : String;
  aProgressCallback : TnxcgProgressCallback);
var
  TaskInfo : TnxAbstractTaskInfo;
  Completed : Boolean;
  TaskStatus : TnxTaskStatus;
  aCancelTask : Boolean;
begin
  aCancelTask := False;
  nxCheck(aDatabase.RecoverTableEx(aTableName, aPassword, TaskInfo));
  if Assigned(TaskInfo) then
    try
      while True do begin
        TaskInfo.GetStatus(Completed, TaskStatus);
        if Assigned(aProgressCallback) then
          aProgressCallback(aTableName, TaskStatus, aCancelTask);
        if Completed then
          break;
        if aCancelTask then
          nxCheck(TaskInfo.Cancel);
      end;
    finally
      TaskInfo.Free;
    end;
end;

procedure PackTable(aDatabase : TnxDatabase;
  const aTableName, aPassword : String;
  aProgressCallback : TnxcgProgressCallback);
var
  TaskInfo : TnxAbstractTaskInfo;
  Completed : Boolean;
  TaskStatus : TnxTaskStatus;
  aCancelTask : Boolean;
begin
  aCancelTask := False;
  nxCheck(aDatabase.PackTableEx(aTableName, aPassword, TaskInfo));
  
  if Assigned(TaskInfo) then
    try
      while True do begin
        TaskInfo.GetStatus(Completed, TaskStatus);
        if Assigned(aProgressCallback) then
          aProgressCallback(aTableName, TaskStatus, aCancelTask);
        if Completed then
          break;
        if aCancelTask then
          nxCheck(TaskInfo.Cancel);
      end;
    finally
      TaskInfo.Free;
    end;
end;


procedure TFrmCopia.RecuperaDados(aReindex: Boolean);
var
  SE: TnxServerEngine;
  DB: TnxDatabase;
  SS: TnxSession;
  I: Integer;
  S: String;
begin
  DebugMsg('TFrmCopia.RecuperaDados 1');
  nxSetSystemDatabaseFolder(ExtractFileDir(ParamStr(0)));
  SE := TnxServerEngine.Create(Self);
  SS := TnxSession.Create(Self);
  DB := TnxDatabase.Create(Self);
  try
    lbCorr.Caption := rsIniciandoDB;
    lbCorr.Repaint;
    SS.ServerEngine := SE;
    SS.Username := SessionUser;
    SS.Password := SessionPass;
    DB.Session := SS;
    SE.TempStoreSize := 200;
    SE.TempStorePath := ExtractFilePath(ParamStr(0))+'Temp';
    DebugMsg('TFrmCopia.RecuperaDados 2');
    SE.Active := True;
    DebugMsg('TFrmCopia.RecuperaDados 3');
    SS.Active := True;
    DebugMsg('TFrmCopia.RecuperaDados 4');
    SS.PasswordAdd(sEncPass);
    DB.AliasPath := ExtractFilePath(ParamStr(0))+pastaDados;
    DB.Exclusive := True;
    DB.Active := True;
    DebugMsg('TFrmCopia.RecuperaDados 5');
    pbC.Position := 0;
    OpenProgressForm;
    try
      for I := 0 to slArqs.Count - 1 do begin
        FrmPri.Repaint;
        if aReindex then
          lbCorr.Caption := Format(rsReindexandoArq, [ExtractFileName(slArqs[I])]) else
          lbCorr.Caption := Format(rsCorrigindoArq, [ExtractFileName(slArqs[I])]);
        pbC.Position := pbC.Position + 1;
        lbCorr.Repaint;
        pbC.Repaint;
        S := ExtractFileName(slArqs[I]);
        Delete(S, Pos('.', S), 4);
        DebugMsg('TFrmCopia.RecuperaDados 6 - '+slArqs[I]);
        
        if aReindex then
          PackTable(DB, S, '', FrmProg.OnProgress) else
          RecoverTable(DB, S, '', FrmProg.OnProgress);

        DebugMsg('TFrmCopia.RecuperaDados 7 - '+slArqs[I]);
          
      end;
    finally
      FechaProgressForm;
    end;
    DebugMsg('TFrmCopia.RecuperaDados 8');
    
    DB.Active := False;
    SS.Active := False;
    SE.Active := False;
    pbC.Position := 0;
    if not aReindex then
    for I := 0 to slArqs.Count - 1 do begin
      lbCorr.Caption := Format(rsRenomeandoArq, [ExtractFileName(slArqs[I])]);
      pbC.Position := pbC.Position + 1;
      lbCorr.Repaint;
      pbC.Repaint;
      S := slArqs[I];
      Delete(S, Pos('.', S), 10);
      if FileExists(S+'_Failed.nx1') and 
         FileExists(S+'_Recovered.nx1') then 
      begin
        Windows.DeleteFile(PChar(S+'_Failed.nx1'));
        Windows.DeleteFile(PChar(slArqs[I]));
        RenameFile(S+'_Recovered.nx1', slArqs[I]);
      end else
        Windows.DeleteFile(PChar(slArqs[I]));
      DebugMsg('TFrmCopia.RecuperaDados 9');
        
      Sleep(100);
    end;
    lbCorr.Caption := rsSucessoCorrecao;
  finally
    DB.Free;
    SS.Free;
    SE.Free;
  end;
end;

procedure TFrmCopia.Restaurar(aTabs: TStrings);
var 
  I : Integer;
  sTo, S : String;
begin
  sTo := ExtractFilePath(ParamStr(0)) + pastaDados + '\';
  if not DirectoryExists(sTo) then
    MkDir(sTo);

  pbR.Properties.Max := aTabs.Count;
  pbR.Properties.Max := pbR.Properties.Max;
  pbR.Position := 0;
  
  for I := 0 to aTabs.Count-1 do begin
    FrmPri.Repaint;
    lbRest.Caption := Format(rsRestaurandoArq, [ExtractFileName(slArqs[I])]);
    lbRest.Repaint;
    pbR.Position := pbR.Position + 1;
    S := sTo+ExtractFileName(aTabs[I]);
    if not CopyFile(PChar(aTabs[I]), PChar(S), False) then
      Raise ENexCafe.Create(Format(rsErroCopiaArq, [IntToStr(GetLastError), aTabs[I], S]));
    pbR.Repaint;  
    Sleep(100);      
  end;
end;

function sufixo_corrigir: String;
begin
  if LinguaPT then
    Result := 'corrigir' else
    Result := 'fix';
end;

procedure TFrmCopia.btnCorrigirClick(Sender: TObject);
var SIndex : String;

procedure CorrigeIntegridade;
begin
  DM.qAux.SQL.Text := 'delete from itran where not tran in (select id from tran)';
  DM.qAux.ExecSQL;
  DM.qAux.Active := False;
      
  InitTran(DM.nxDB, [], False);
  with DM do
  try
    try
{      qAux.SQL.Text := 'Update Tran set Descricao = ' + QuotedStr('') +  ' where ((Descricao=' + QuotedStr('')+') or (Descricao is null)) AND ' +
                     '( (Tipo=4) or (Tipo=5) or (Tipo=6) or (Tipo=7))';
      qAux.ExecSQL;
      qAux.Active := False;                     }
      qAux.SQL.Text := 'SELECT I.*, T.Caixa as TranCai FROM ITran I, Tran T '+
                       'where (T.ID=I.Tran) and (T.Caixa <> I.Caixa)';
    except
    end;
    qAux.Active := True;
    qAux.First;
    SIndex := tITran.IndexName;
    try
      tITran.IndexName := 'IID';
      while not qAux.Eof do begin
        if tITran.FindKey([qAux.FieldByName('ID').AsInteger]) then
          tITran.Delete;
        qAux.Next;  
      end;
    finally
      tITran.IndexName := SIndex;
    end;
    TThreadEliminaDup.Create(False);
    if nxDB.InTransaction then
      nxDB.Commit;
  finally
    if nxDB.InTransaction then
      nxDB.Rollback;
    qAux.Active := False;
  end;
end;

begin
  if (Sender<>nil) and (MessageDlg(rsConfirmaCorrecao, mtConfirmation, [mbYes, mbNo], 0, mbNo)<>mrYes) then Exit;

  btnCorrigir.Enabled := False;
  FrmPri.SB.Enabled := False;
  PagCorrigir.ActivePageIndex := 1;
  try
    DebugMsg('TFrmCopia.Corrigir 1');
    FrmPri.Desativar;
    try
      DebugMsg('TFrmCopia.Corrigir 2');
      CopiaDados('_'+sufixo_corrigir);
      DebugMsg('TFrmCopia.Corrigir 3');
      RecuperaDados(False);
      DebugMsg('TFrmCopia.Corrigir 4');
    finally
      DebugMsg('TFrmCopia.Corrigir 5');
      FrmPri.Ativar;
      DebugMsg('TFrmCopia.Corrigir 6');
      if FrmPri.Serv.Ativo then begin
        FrmPri.Serv.Lock;
        try
          DM.ReprocessaDebitos;
          CorrigeIntegridade;
          DM.CorrigeErroCancelamentoPagEsp;
        finally
          FrmPri.Serv.Unlock;
        end;
      end;
    end;
    if Assigned(Sender) then
      ShowMessage(rsFimCorrecao);
  finally
    FrmPri.SB.Enabled := True;
    btnCorrigir.Enabled := True;
    PagCorrigir.ActivePageIndex := 0;
  end;
end;

procedure TFrmCopia.btnReindexClick(Sender: TObject);
begin
  if MessageDlg(rsConfirmaCorrecao, mtConfirmation, [mbYes, mbNo], 0, mbNo)<>mrYes then Exit;
  btnCorrigir.Enabled := False;
//  btnReindex.Enabled := False;
  FrmPri.SB.Enabled := False;
  PagCorrigir.ActivePageIndex := 1;
  try
    FrmPri.Desativar;
    try
      CopiaDados('_'+sufixo_corrigir);
      RecuperaDados(True);
    finally
      FrmPri.Ativar;
      if FrmPri.Serv.Ativo then begin
        FrmPri.Serv.Lock;
        try
          DM.ReprocessaDebitos;
        finally
          FrmPri.Serv.Unlock;
        end;
      end;
    end;
    ShowMessage(rsFimCorrecao);
  finally
    FrmPri.SB.Enabled := True;
//    btnReindex.Enabled := True;
    btnCorrigir.Enabled := True;
    PagCorrigir.ActivePageIndex := 0;
  end;
end;

function Sufixo_Restaurar: String;
begin
  if LinguaPT then
    Result := 'restaurar' else
    Result := 'restore';
end;

procedure TFrmCopia.btnRestaurarClick(Sender: TObject);
var 
  S, S2: String;
  SL: TStringList;
  I: Integer;
begin
  if (not PathDlg.Execute) or (Trim(PathDlg.SelectedFolder)='') then Exit;


  S := PathDlg.SelectedFolder;
  if S[Length(S)]<>'\' then S:=S+'\';

  S2 := ExtractFilePath(ParamStr(0))+PastaDados;
  
  if SameText(S, S2) then 
    Raise ENexCafe.Create(rsPastaErrada);

  SL := TStringList.Create;
  try
    gTables.GetTableNames(SL);
    
    for I := SL.Count-1 downto 0 do begin
      SL[i] := S+SL[i]+'.nx1';
      if not FileExists(SL[i]) then SL.Delete(I);
    end;
    
    if SL.Count=0 then
      Raise ENexCafe.Create(rsDBNaoEncontrado);

    btnRestaurar.Enabled := False;
    FrmPri.SB.Enabled := False;
    try
      lbRest.Visible := True;
      pbR.Visible := True;
      FrmPri.Desativar;
      try
        CopiaDados('_'+sufixo_restaurar);
        ApagarNX1;
        Restaurar(SL);
      finally
        FrmPri.Serv.FResyncNexApp := True;
        FrmPri.Ativar;
      end;
      ShowMessage(rsSucessoRestauracao);
    finally
      FrmPri.SB.Enabled := True;
      btnRestaurar.Enabled := True;
      lbRest.Visible := False;
      pbR.Visible := False;
    end;
  finally
    SL.Free;
  end;

end;

procedure TFrmCopia.btnResyncNexAppClick(Sender: TObject);
begin
{  if MessageDlg(rsResyncNexApp, mtConfirmation, [mbYes, mbNo], 0, mbNo)=mrYes then
    FrmPri.Serv.ResyncNexApp;             }
end;

function sufixo_zerar: String;
begin
  if LinguaPT then
    Result := 'zerar' else
    Result := 'reset';
end;

procedure TFrmCopia.btnZerarClick(Sender: TObject);
var 
  sl: TStrings;
  Q : TnxQuery;

procedure AddSL(Arq: String);
begin
  if sl=nil then sl := TStringList.Create;
  sl.Add(Arq);
end;

begin
  if (not cbZerarHist.Checked) and (not cbZerarProd.Checked) and (not cbZerarCli.Checked) and (not cbZerarConfig.Checked) then Exit;

  if MessageDlg(rsConfirmaApagar, mtConfirmation, [mbYes, mbNo], 0, mbNo)<>mrYes then Exit;

  if MessageDlg(rsConfirmaApagar2, mtConfirmation, [mbYes, mbNo], 0, mbNo)<>mrYes then Exit;                
  
  sl := nil;
  btnZerar.Enabled := False;
  FrmPri.SB.Enabled := False;
  try
    lbZerar.Visible := True;
    pbZ.Visible := True;
    FrmPri.Desativar;
    try
      if not (cbZerarHist.Checked and cbZerarProd.Checked and cbZerarCli.Checked and cbZerarConfig.Checked) then begin
        if cbZerarHist.Checked then begin
          AddSL('tran.nx1');
          AddSl('itran.nx1');
          AddSl('movest.nx1');
          AddSl('caixa.nx1');
          AddSl('orcamento.nx1');
          AddSl('iorcamento.nx1');
          AddSl('pagespecies.nx1');
          AddSl('post.nx1');
          AddSl('log.nx1');
          AddSl('debito.nx1');
          AddSl('linkxml.nx1');
        end;

        if cbZerarProd.Checked then begin
          AddSl('produto.nx1');
          AddSl('prodfor.nx1');
        end;  

        if cbZerarCli.Checked then begin
          AddSl('cliente.nx1');
          if not cbZerarProd.Checked then
            AddSl('prodfor.nx1');
        end;  

        if cbZerarConfig.Checked then 
          AddSl('config.nx1')
      end;

      CopiaDados('_'+sufixo_zerar);

      if Assigned(sl) then sl.text := UpperCase(sl.Text);
      
      ApagarNX1(sl);
    finally
      if Assigned(sl) then sl.Free;
      FrmPri.Ativar;

      if FrmPri.Serv.Ativo then begin
        FrmPri.Serv.Lock;
        try
          DM.ReprocessaDebitos;
          DM.ReprocessaEstoque;

          if (not cbZerarProd.Checked) and cbZerarCli.Checked then 
            DM.ExecQuery('update produto set fornecedor = null');
        finally
          FrmPri.Serv.Unlock;
        end;
      end;      
    end;
    ShowMessage(rsSucessoApagar);
  finally
    FrmPri.SB.Enabled := True;
    btnZerar.Enabled := True;
    lbZerar.Visible := False;
    pbZ.Visible := False;
  end;  
end;

procedure TFrmCopia.CopiaDados(aSufix: String; aNaoCopiar: String='');
var 
  I : Integer;
  SR : TSearchRec;
  sFrom, sTo, S : String;
begin
  slArqs.Clear;
  
  sTo := ExtractFilePath(ParamStr(0)) + PastaCopia + '\'+ FormatDateTime('yyyymmdd_hhmm', Now) + aSufix;
  if not DirectoryExists(sFrom) then
    ForceDirectories(sTo);
    
  sFrom := ExtractFilePath(ParamStr(0)) + PastaDados;
  
  if FindFirst(sFrom+'\*.nx1', faAnyFile, SR) = 0 then
  try
    repeat
      if (Pos('_Failed', SR.Name)=0) and 
         (Pos('_Recovered', SR.Name)=0) and 
         (Pos('$SQL$', SR.Name)=0) and 
         (Pos(UpperCase(ExtractFileName(SR.Name)), UpperCase(aNaoCopiar))=0) then
        slArqs.Add(sFrom+'\'+ExtractFileName(SR.Name));
    until FindNext(SR)<>0;
  finally
    FindClose(SR);
  end;
  
  pbC.Properties.Max := slArqs.Count;
  pbR.Properties.Max := pbC.Properties.Max;
  pbZ.Properties.Max := slArqs.Count;
  for I := 0 to slArqs.Count-1 do begin
    lbCorr.Caption := Format(rsCopiandoArq, [ExtractFileName(slArqs[I])]);
    DebugMsg('TFrmCopia.CopiaDados 1 - '+slArqs[I]);
    
    lbRest.Caption := lbCorr.Caption;
    pbC.Position := pbC.Position + 1;
    pbR.Position := pbC.Position;
    pbZ.Position := pbC.Position;
    FrmPri.Repaint;
    lbCorr.Repaint;
    lbRest.Repaint;
    pbC.Repaint;
    pbR.Repaint;
    pbZ.Repaint;
    S := sTo+'\'+ExtractFileName(slArqs[I]);
    if not CopyFile(PChar(slArqs[I]), PChar(S), False) then
      Raise ENexCafe.Create(Format(rsErroCopiaArq, [IntToStr(GetLastError), slArqs[I], S]));
    DebugMsg('TFrmCopia.CopiaDados 2 - '+slArqs[I]);
    Sleep(100);      
  end;
end;

procedure TThreadEliminaDup.CreateComps;
begin
  tITran := nil;
  FSession := nil;
  FDB := nil;
  FSession := CreateSession;
  FDB := TnxDatabase.Create(nil);
  FDB.Session := FSession;
  FDB.AliasName := 'NexCafe';
  tITran := TnxTable.Create(nil);
  tITran.Database := FDB;
  tITran.TableName := 'ITran';
  tITran.IndexName := 'ITipoItemTran';
  FSession.Active := True;
  FDB.Active := True;
  tITran.Active := True;
end;

procedure TThreadEliminaDup.EliminaDup;
var 
  UItemID,
  UTipoItem,
  UTran,
  UID : Integer;
begin
  UItemID := 0;
  UTipoItem := 0;
  UTran := 0;
  UID := 0;
  tITran.First;
  while (not Terminated) and (not Application.Terminated) and (not tITran.Eof) and (UID<>tITran.FieldByName('ID').AsInteger) do begin
    UID := tITran.FieldByName('ID').AsInteger;
    if (tITran.FieldByName('Tran').AsInteger=UTran) and
       (tITran.FieldByName('TipoItem').AsInteger=UTipoItem) and
       (tITran.FieldByName('ItemID').AsInteger=UItemID) then
      tITran.Delete else
    begin
      UItemID := tITran.FieldByName('ItemID').AsInteger;
      UTipoItem := tITran.FieldByName('TipoItem').AsInteger;
      UTran := tITran.FieldByName('Tran').AsInteger;
      tITran.Next;
    end;   
  end;
  tITran.Active := False;
end;

procedure TThreadEliminaDup.Execute;
begin
  try
    CreateComps;
    try
      EliminaDup;
    except
      on E: ENexCafe do 
        DebugMsg('TThreadEliminaDup.Execute - E: '+E.Message);
    end;
  finally
    try FreeComps except end;
  end;
  Free;
end;

procedure TThreadEliminaDup.FreeComps;
begin
  if Assigned(tITran) then FreeAndNil(tITran);
  if Assigned(FDB) then FreeAndNil(FDB);
  if Assigned(FSession) then FreeAndNil(FSession);
end;

end.
