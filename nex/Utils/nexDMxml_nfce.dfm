object dmXML_nfce: TdmXML_nfce
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 361
  Width = 632
  object mtIDE: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.64.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 24
    Top = 24
    object mtIDEid: TStringField
      FieldName = 'id'
      Size = 50
    end
    object mtIDEcUF: TWordField
      FieldName = 'cUF'
    end
    object mtIDEcNF: TIntegerField
      FieldName = 'cNF'
    end
    object mtIDEnatOp: TStringField
      FieldName = 'natOp'
      Size = 200
    end
    object mtIDEindPag: TWordField
      FieldName = 'indPag'
    end
    object mtIDEmod: TWordField
      FieldName = 'mod'
    end
    object mtIDEserie: TWordField
      FieldName = 'serie'
    end
    object mtIDEnNF: TIntegerField
      FieldName = 'nNF'
    end
    object mtIDEdhEmi: TStringField
      FieldName = 'dhEmi'
      Size = 30
    end
    object mtIDEtpNF: TWordField
      FieldName = 'tpNF'
    end
    object mtIDEidDest: TWordField
      FieldName = 'idDest'
    end
    object mtIDEcMunFG: TIntegerField
      FieldName = 'cMunFG'
    end
    object mtIDEtpImp: TWordField
      FieldName = 'tpImp'
    end
    object mtIDEtpEmis: TWordField
      FieldName = 'tpEmis'
    end
    object mtIDEcDV: TWordField
      FieldName = 'cDV'
    end
    object mtIDEtpAmb: TWordField
      FieldName = 'tpAmb'
    end
    object mtIDEfinNFe: TWordField
      FieldName = 'finNFe'
    end
    object mtIDEindFinal: TWordField
      FieldName = 'indFinal'
    end
    object mtIDEindPres: TWordField
      FieldName = 'indPres'
    end
    object mtIDEprocEmi: TWordField
      FieldName = 'procEmi'
    end
    object mtIDEverProc: TStringField
      FieldName = 'verProc'
      Size = 10
    end
    object mtIDEqrCode: TMemoField
      FieldName = 'qrCode'
      BlobType = ftMemo
    end
    object mtIDEchNFe: TStringField
      FieldName = 'chNFe'
      Size = 44
    end
    object mtIDEDigestValue: TStringField
      FieldName = 'DigestValue'
      Size = 100
    end
    object mtIDEmsg_emissao: TStringField
      FieldName = 'msg_emissao'
      Size = 100
    end
    object mtIDEvia: TStringField
      FieldName = 'via'
      Size = 100
    end
    object mtIDEdata_emissao: TStringField
      FieldName = 'data_emissao'
      Size = 30
    end
    object mtIDEchave_acesso: TStringField
      FieldName = 'chave_acesso'
      Size = 100
    end
    object mtIDEnomefunc: TStringField
      FieldName = 'nomefunc'
      Size = 40
    end
    object mtIDEnumtran: TStringField
      FieldName = 'numtran'
    end
    object mtIDEmsg_prot: TStringField
      FieldName = 'msg_prot'
      Size = 200
    end
    object mtIDEnProt: TStringField
      FieldName = 'nProt'
      Size = 30
    end
    object mtIDEdhRecbto: TStringField
      FieldName = 'dhRecbto'
      Size = 30
    end
  end
  object mtEmit: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.64.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 72
    Top = 24
    object mtEmitCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object mtEmitxNome: TStringField
      FieldName = 'xNome'
      Size = 100
    end
    object mtEmitxFant: TStringField
      FieldName = 'xFant'
      Size = 100
    end
    object mtEmitxLgr: TStringField
      FieldName = 'xLgr'
      Size = 70
    end
    object mtEmitxBairro: TStringField
      FieldName = 'xBairro'
      Size = 50
    end
    object mtEmitcMun: TStringField
      FieldName = 'cMun'
      Size = 10
    end
    object mtEmitxMun: TStringField
      FieldName = 'xMun'
      Size = 70
    end
    object mtEmitUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mtEmitCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object mtEmitcPais: TStringField
      FieldName = 'cPais'
      Size = 5
    end
    object mtEmitxPais: TStringField
      FieldName = 'xPais'
    end
    object mtEmitfone: TStringField
      FieldName = 'fone'
    end
    object mtEmitIE: TStringField
      FieldName = 'IE'
    end
    object mtEmitCRT: TWordField
      FieldName = 'CRT'
    end
    object mtEmitnro: TStringField
      FieldName = 'nro'
    end
    object mtEmitIM: TStringField
      FieldName = 'IM'
    end
    object mtEmitend_loja: TStringField
      FieldName = 'end_loja'
      Size = 200
    end
    object mtEmitxCpl: TStringField
      FieldName = 'xCpl'
      Size = 30
    end
  end
  object mtItem: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.64.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    OnCalcFields = mtItemCalcFields
    Left = 24
    Top = 80
    object mtItemnItem: TWordField
      FieldName = 'nItem'
    end
    object mtItemcProd: TStringField
      FieldName = 'cProd'
      Size = 30
    end
    object mtItemcEAN: TStringField
      FieldName = 'cEAN'
      Size = 15
    end
    object mtItemxProd: TStringField
      FieldName = 'xProd'
      Size = 100
    end
    object mtItemCFOP: TWordField
      FieldName = 'CFOP'
    end
    object mtItemuCom: TStringField
      FieldName = 'uCom'
    end
    object mtItemqCom: TFloatField
      FieldName = 'qCom'
    end
    object mtItemvUnCom: TFloatField
      FieldName = 'vUnCom'
    end
    object mtItemvProd: TFloatField
      FieldName = 'vProd'
    end
    object mtItemcEANTrib: TStringField
      FieldName = 'cEANTrib'
    end
    object mtItemuTrib: TFloatField
      FieldName = 'uTrib'
    end
    object mtItemqTrib: TFloatField
      FieldName = 'qTrib'
    end
    object mtItemvUnTrib: TFloatField
      FieldName = 'vUnTrib'
    end
    object mtItemindTot: TWordField
      FieldName = 'indTot'
    end
    object mtItemvTotTrib: TFloatField
      FieldName = 'vTotTrib'
    end
    object mtItemorig: TWordField
      FieldName = 'orig'
    end
    object mtItemCST: TWordField
      FieldName = 'CST'
    end
    object mtItemCSOSN: TWordField
      FieldName = 'CSOSN'
    end
    object mtItemCodigo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Codigo'
      Calculated = True
    end
  end
  object mtTotal: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.64.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 72
    Top = 80
    object mtTotalvBC: TFloatField
      FieldName = 'vBC'
    end
    object mtTotalvICMS: TFloatField
      FieldName = 'vICMS'
    end
    object mtTotalvICMSDeson: TFloatField
      FieldName = 'vICMSDeson'
    end
    object mtTotalvBCST: TFloatField
      FieldName = 'vBCST'
    end
    object mtTotalvST: TFloatField
      FieldName = 'vST'
    end
    object mtTotalvProd: TFloatField
      FieldName = 'vProd'
    end
    object mtTotalvFrete: TFloatField
      FieldName = 'vFrete'
    end
    object mtTotalvSeg: TFloatField
      FieldName = 'vSeg'
    end
    object mtTotalvDesc: TFloatField
      FieldName = 'vDesc'
    end
    object mtTotalvII: TFloatField
      FieldName = 'vII'
    end
    object mtTotalvIPI: TFloatField
      FieldName = 'vIPI'
    end
    object mtTotalvPIS: TFloatField
      FieldName = 'vPIS'
    end
    object mtTotalvCOFINS: TFloatField
      FieldName = 'vCOFINS'
    end
    object mtTotalvOutro: TFloatField
      FieldName = 'vOutro'
    end
    object mtTotalvNF: TFloatField
      FieldName = 'vNF'
    end
    object mtTotalvTotTrib: TFloatField
      FieldName = 'vTotTrib'
    end
  end
  object mtPag: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.64.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    OnCalcFields = mtPagCalcFields
    Left = 128
    Top = 24
    object mtPagtPag: TWordField
      FieldName = 'tPag'
    end
    object mtPagvPag: TFloatField
      FieldName = 'vPag'
    end
    object mtPagNomePag: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomePag'
      Size = 50
      Calculated = True
    end
  end
  object frBarCode: TfrxBarCodeObject
    Left = 224
    Top = 80
  end
  object frDes: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 224
    Top = 24
  end
  object frMatrixExp: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 224
    Top = 136
  end
  object dbIDE: TfrxDBDataset
    UserName = 'dbIDE'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'cUF=cUF'
      'cNF=cNF'
      'natOp=natOp'
      'indPag=indPag'
      'mod=mod'
      'serie=serie'
      'nNF=nNF'
      'dhEmi=dhEmi'
      'tpNF=tpNF'
      'idDest=idDest'
      'cMunFG=cMunFG'
      'tpImp=tpImp'
      'tpEmis=tpEmis'
      'cDV=cDV'
      'tpAmb=tpAmb'
      'finNFe=finNFe'
      'indFinal=indFinal'
      'indPres=indPres'
      'procEmi=procEmi'
      'verProc=verProc'
      'qrCode=qrCode'
      'chNFe=chNFe'
      'DigestValue=DigestValue'
      'msg_emissao=msg_emissao'
      'via=via'
      'data_emissao=data_emissao'
      'chave_acesso=chave_acesso'
      'nomefunc=nomefunc'
      'numtran=numtran'
      'msg_prot=msg_prot'
      'nProt=nProt'
      'dhRecbto=dhRecbto')
    DataSet = mtIDE
    BCDToCurrency = False
    Left = 296
    Top = 24
  end
  object dbPag: TfrxDBDataset
    UserName = 'dbPag'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tPag=tPag'
      'vPag=vPag'
      'NomePag=NomePag')
    DataSet = mtPag
    BCDToCurrency = False
    Left = 416
    Top = 24
  end
  object dbItem: TfrxDBDataset
    UserName = 'dbItem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nItem=nItem'
      'cProd=cProd'
      'cEAN=cEAN'
      'xProd=xProd'
      'CFOP=CFOP'
      'uCom=uCom'
      'qCom=qCom'
      'vUnCom=vUnCom'
      'vProd=vProd'
      'cEANTrib=cEANTrib'
      'uTrib=uTrib'
      'qTrib=qTrib'
      'vUnTrib=vUnTrib'
      'indTot=indTot'
      'vTotTrib=vTotTrib'
      'orig=orig'
      'CST=CST'
      'CSOSN=CSOSN'
      'Codigo=Codigo')
    DataSet = mtItem
    BCDToCurrency = False
    Left = 296
    Top = 80
  end
  object dbTotal: TfrxDBDataset
    UserName = 'dbTotal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'vBC=vBC'
      'vICMS=vICMS'
      'vICMSDeson=vICMSDeson'
      'vBCST=vBCST'
      'vST=vST'
      'vProd=vProd'
      'vFrete=vFrete'
      'vSeg=vSeg'
      'vDesc=vDesc'
      'vII=vII'
      'vIPI=vIPI'
      'vPIS=vPIS'
      'vCOFINS=vCOFINS'
      'vOutro=vOutro'
      'vNF=vNF'
      'vTotTrib=vTotTrib')
    DataSet = mtTotal
    BCDToCurrency = False
    Left = 360
    Top = 80
  end
  object dbEmit: TfrxDBDataset
    UserName = 'dbEmit'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CNPJ=CNPJ'
      'xNome=xNome'
      'xFant=xFant'
      'xLgr=xLgr'
      'xBairro=xBairro'
      'cMun=cMun'
      'xMun=xMun'
      'UF=UF'
      'CEP=CEP'
      'cPais=cPais'
      'xPais=xPais'
      'fone=fone'
      'IE=IE'
      'CRT=CRT'
      'nro=nro'
      'IM=IM'
      'end_loja=end_loja'
      'xCpl=xCpl')
    DataSet = mtEmit
    BCDToCurrency = False
    Left = 360
    Top = 24
  end
  object frRep: TfrxReport
    Version = '5.1.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42205.538530243060000000
    ReportOptions.LastChange = 42205.538530243060000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 296
    Top = 136
    Datasets = <
      item
        DataSet = dbDest
        DataSetName = 'dbDest'
      end
      item
        DataSet = dbEmit
        DataSetName = 'dbEmit'
      end
      item
        DataSet = dbIDE
        DataSetName = 'dbIDE'
      end
      item
        DataSet = dbItem
        DataSetName = 'dbItem'
      end
      item
        DataSet = dbPag
        DataSetName = 'dbPag'
      end
      item
        DataSet = dbTotal
        DataSetName = 'dbTotal'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object lbSha1: TLbSHA1
    Left = 64
    Top = 160
  end
  object mtDest: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'CPF'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'idEstrangeiro'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'xNome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'xLgr'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'nro'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'xBairro'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cMun'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'xMun'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'fone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'id_consumidor'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'indIEDest'
        DataType = ftWord
      end
      item
        Name = 'mostrar_end'
        DataType = ftSmallint
      end
      item
        Name = 'end_consumidor'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'xCpl'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.64.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 88
    Top = 248
    object mtDestCPF: TStringField
      FieldName = 'CPF'
      Size = 15
    end
    object mtDestCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object mtDestidEstrangeiro: TStringField
      FieldName = 'idEstrangeiro'
      Size = 30
    end
    object mtDestxNome: TStringField
      FieldName = 'xNome'
      Size = 100
    end
    object mtDestxLgr: TStringField
      FieldName = 'xLgr'
      Size = 100
    end
    object mtDestnro: TStringField
      FieldName = 'nro'
    end
    object mtDestxBairro: TStringField
      FieldName = 'xBairro'
      Size = 50
    end
    object mtDestcMun: TStringField
      FieldName = 'cMun'
      Size = 10
    end
    object mtDestxMun: TStringField
      FieldName = 'xMun'
      Size = 100
    end
    object mtDestCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object mtDestfone: TStringField
      FieldName = 'fone'
    end
    object mtDestid_consumidor: TStringField
      FieldName = 'id_consumidor'
      Size = 200
    end
    object mtDestindIEDest: TWordField
      FieldName = 'indIEDest'
    end
    object mtDestmostrar_end: TSmallintField
      FieldName = 'mostrar_end'
    end
    object mtDestend_consumidor: TStringField
      FieldName = 'end_consumidor'
      Size = 200
    end
    object mtDestxCpl: TStringField
      FieldName = 'xCpl'
      Size = 30
    end
    object mtDestUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dbDest: TfrxDBDataset
    UserName = 'dbDest'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CPF=CPF'
      'CNPJ=CNPJ'
      'idEstrangeiro=idEstrangeiro'
      'xNome=xNome'
      'xLgr=xLgr'
      'nro=nro'
      'xBairro=xBairro'
      'cMun=cMun'
      'xMun=xMun'
      'CEP=CEP'
      'fone=fone'
      'id_consumidor=id_consumidor'
      'indIEDest=indIEDest'
      'mostrar_end=mostrar_end'
      'end_consumidor=end_consumidor'
      'xCpl=xCpl'
      'UF=UF')
    DataSet = mtDest
    BCDToCurrency = False
    Left = 360
    Top = 136
  end
end
