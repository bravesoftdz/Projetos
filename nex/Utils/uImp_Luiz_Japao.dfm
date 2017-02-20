object Form16: TForm16
  Left = 0
  Top = 0
  Caption = 'Importar OptiCyber'
  ClientHeight = 398
  ClientWidth = 819
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 17
    Top = 32
    Width = 256
    Height = 19
    Caption = 'Importar clientes do OPTIcyber'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PB: TProgressBar
    Left = 0
    Top = 0
    Width = 819
    Height = 16
    Align = alTop
    TabOrder = 0
  end
  object Button1: TButton
    Left = 17
    Top = 160
    Width = 177
    Height = 25
    Caption = 'Importar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object TBDock1: TTBDock
    Left = 0
    Top = 16
    Width = 819
    Height = 9
  end
  object G: TDBGrid
    Left = 0
    Top = 278
    Width = 819
    Height = 120
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object nxSession1: TnxSession
    ActiveDesigntime = True
    UserName = 'admin'
    Password = 'delphi9856'
    ServerEngine = nxRSE
    Left = 24
    Top = 24
  end
  object nxDB: TnxDatabase
    ActiveDesigntime = True
    Session = nxSession1
    AliasName = 'NexCafe'
    Left = 64
    Top = 24
  end
  object tProd: TnxTable
    Database = nxDB
    TableName = 'Produto'
    Left = 24
    Top = 64
    object tProdID: TAutoIncField
      FieldName = 'ID'
    end
    object tProdCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tProdDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tProdUnid: TStringField
      FieldName = 'Unid'
      Size = 5
    end
    object tProdPreco: TCurrencyField
      FieldName = 'Preco'
    end
    object tProdPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object tProdMargem: TFloatField
      FieldName = 'Margem'
    end
    object tProdObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tProdImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tProdCategoria: TStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object tProdFornecedor: TIntegerField
      FieldName = 'Fornecedor'
    end
    object tProdSubCateg: TStringField
      FieldName = 'SubCateg'
      Size = 35
    end
    object tProdEstoqueAtual: TFloatField
      FieldName = 'EstoqueAtual'
    end
    object tProdCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
    end
    object tProdEstoqueACE: TFloatField
      FieldName = 'EstoqueACE'
    end
    object tProdEstoqueACS: TFloatField
      FieldName = 'EstoqueACS'
    end
    object tProdPodeAlterarPreco: TBooleanField
      FieldName = 'PodeAlterarPreco'
    end
    object tProdPermiteVendaFracionada: TBooleanField
      FieldName = 'PermiteVendaFracionada'
    end
    object tProdNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tProdEstoqueMin: TFloatField
      FieldName = 'EstoqueMin'
    end
    object tProdEstoqueMax: TFloatField
      FieldName = 'EstoqueMax'
    end
    object tProdAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object tProdAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
    end
    object tProdEstoqueRepor: TFloatField
      FieldName = 'EstoqueRepor'
    end
    object tProdplus: TBooleanField
      FieldName = 'plus'
    end
    object tProdplusURL: TnxMemoField
      FieldName = 'plusURL'
      BlobType = ftMemo
    end
    object tProdplusCodParceiro: TStringField
      FieldName = 'plusCodParceiro'
      Size = 15
    end
    object tProdplusCodProduto: TStringField
      FieldName = 'plusCodProduto'
      Size = 15
    end
    object tProdComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tProdComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tProdAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object tProdFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object tProdFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object tProdmd5Imagem: TStringField
      FieldName = 'md5Imagem'
      Size = 32
    end
    object tProdlastProdModif: TDateTimeField
      FieldName = 'lastProdModif'
    end
    object tProduploadR: TWordField
      FieldName = 'uploadR'
    end
    object tProduploadS: TWordField
      FieldName = 'uploadS'
    end
    object tProdfk_produ: TIntegerField
      FieldName = 'fk_produ'
    end
    object tProdbatchUID: TGuidField
      FieldName = 'batchUID'
      Size = 38
    end
    object tProdCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object tProdIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tProdRecVer: TIntegerField
      FieldName = 'RecVer'
    end
  end
  object nxTCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ActiveDesigntime = True
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 104
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = tF
    Left = 64
    Top = 120
  end
  object adoConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Password=;User ID=Admin;Data S' +
      'ource=C:\system\atTagataPOS\d\dbaux\db_tmp_p.mdb;Mode=Read;Persi' +
      'st Security Info=True;Jet OLEDB:System database="";Jet OLEDB:Reg' +
      'istry Path="";Jet OLEDB:Database Password=;Jet OLEDB:Engine Type' +
      '=6;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial Bu' +
      'lk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Data' +
      'base Password="attagata";Jet OLEDB:Create System Database=False;' +
      'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on ' +
      'Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet' +
      ' OLEDB:SFP=False;Jet OLEDB:Support Complex Data=False;Jet OLEDB:' +
      'Bypass UserInfo Validation=False'
    IsolationLevel = ilChaos
    LoginPrompt = False
    Mode = cmRead
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 32
    Top = 120
  end
  object tF: TADOTable
    Active = True
    Connection = adoConn
    CursorType = ctStatic
    TableName = 'Tb_Product'
    Left = 128
    Top = 120
    object tFIdProduct: TIntegerField
      FieldName = 'IdProduct'
    end
    object tFIdProductJoint: TIntegerField
      FieldName = 'IdProductJoint'
    end
    object tFfProductMasterJoint: TBooleanField
      FieldName = 'fProductMasterJoint'
    end
    object tFMuProductRelated: TWideStringField
      FieldName = 'MuProductRelated'
      Size = 255
    end
    object tFDtProductPromoStart: TDateTimeField
      FieldName = 'DtProductPromoStart'
    end
    object tFDtProductPromoEnd: TDateTimeField
      FieldName = 'DtProductPromoEnd'
    end
    object tFIdProductBarCode: TWideStringField
      FieldName = 'IdProductBarCode'
    end
    object tFRfProduct: TWideStringField
      FieldName = 'RfProduct'
    end
    object tFIdProductGroup: TIntegerField
      FieldName = 'IdProductGroup'
    end
    object tFIdProductGroupSub: TIntegerField
      FieldName = 'IdProductGroupSub'
    end
    object tFNmProduct: TWideStringField
      FieldName = 'NmProduct'
      Size = 100
    end
    object tFDsPlainTextProduct: TWideMemoField
      FieldName = 'DsPlainTextProduct'
      BlobType = ftWideMemo
    end
    object tFDsHTMLProduct: TWideMemoField
      FieldName = 'DsHTMLProduct'
      BlobType = ftWideMemo
    end
    object tFNmProduct_lang1: TWideStringField
      FieldName = 'NmProduct_lang1'
      Size = 100
    end
    object tFDsPlainTextProduct_lang1: TWideMemoField
      FieldName = 'DsPlainTextProduct_lang1'
      BlobType = ftWideMemo
    end
    object tFDsHTMLProduct_lang1: TWideMemoField
      FieldName = 'DsHTMLProduct_lang1'
      BlobType = ftWideMemo
    end
    object tFNmProduct_lang2: TWideStringField
      FieldName = 'NmProduct_lang2'
      Size = 100
    end
    object tFDsPlainTextProduct_lang2: TWideMemoField
      FieldName = 'DsPlainTextProduct_lang2'
      BlobType = ftWideMemo
    end
    object tFDsHTMLProduct_lang2: TWideMemoField
      FieldName = 'DsHTMLProduct_lang2'
      BlobType = ftWideMemo
    end
    object tFNmUPackage: TWideStringField
      FieldName = 'NmUPackage'
      Size = 50
    end
    object tFfProductNew: TBooleanField
      FieldName = 'fProductNew'
    end
    object tFNrUnitWeight: TFloatField
      FieldName = 'NrUnitWeight'
    end
    object tFNrVlUnitPrice: TFloatField
      FieldName = 'NrVlUnitPrice'
    end
    object tFNrVlUnitCost: TFloatField
      FieldName = 'NrVlUnitCost'
    end
    object tFNrVlUnitPromoPrice: TFloatField
      FieldName = 'NrVlUnitPromoPrice'
    end
    object tFNrVlUnitPartnerPrice: TIntegerField
      FieldName = 'NrVlUnitPartnerPrice'
    end
    object tFIdProductType: TIntegerField
      FieldName = 'IdProductType'
    end
    object tFIdProductTypeSub: TIntegerField
      FieldName = 'IdProductTypeSub'
    end
    object tFIdPropCommerce: TIntegerField
      FieldName = 'IdPropCommerce'
    end
    object tFfPropViewCommerce: TBooleanField
      FieldName = 'fPropViewCommerce'
    end
    object tFIdPropMarket: TIntegerField
      FieldName = 'IdPropMarket'
    end
    object tFfPropViewMarket: TBooleanField
      FieldName = 'fPropViewMarket'
    end
    object tFIdPropUMeasure: TIntegerField
      FieldName = 'IdPropUMeasure'
    end
    object tFfPropViewUMeasure: TBooleanField
      FieldName = 'fPropViewUMeasure'
    end
    object tFIdPropColor: TIntegerField
      FieldName = 'IdPropColor'
    end
    object tFfPropViewColor: TBooleanField
      FieldName = 'fPropViewColor'
    end
    object tFIdPropSize: TIntegerField
      FieldName = 'IdPropSize'
    end
    object tFfPropViewSize: TBooleanField
      FieldName = 'fPropViewSize'
    end
    object tFIdPropTaste: TIntegerField
      FieldName = 'IdPropTaste'
    end
    object tFfPropViewTaste: TBooleanField
      FieldName = 'fPropViewTaste'
    end
    object tFIdPropContent: TIntegerField
      FieldName = 'IdPropContent'
    end
    object tFfPropViewContent: TBooleanField
      FieldName = 'fPropViewContent'
    end
    object tFIdPropBrand: TIntegerField
      FieldName = 'IdPropBrand'
    end
    object tFfPropViewBrand: TBooleanField
      FieldName = 'fPropViewBrand'
    end
    object tFIdPropModel: TIntegerField
      FieldName = 'IdPropModel'
    end
    object tFfPropViewModel: TBooleanField
      FieldName = 'fPropViewModel'
    end
    object tFIdPropMadeIn: TIntegerField
      FieldName = 'IdPropMadeIn'
    end
    object tFfPropViewMadeIn: TBooleanField
      FieldName = 'fPropViewMadeIn'
    end
    object tFDsWarranty: TWideStringField
      FieldName = 'DsWarranty'
      Size = 50
    end
    object tFNrQtyStock: TFloatField
      FieldName = 'NrQtyStock'
    end
    object tFDtStockUpdate: TDateTimeField
      FieldName = 'DtStockUpdate'
    end
    object tFNrLote: TWideStringField
      FieldName = 'NrLote'
      Size = 50
    end
    object tFDtValidateLimit: TDateTimeField
      FieldName = 'DtValidateLimit'
    end
    object tFDtManufacture: TDateTimeField
      FieldName = 'DtManufacture'
    end
    object tFNrQtyReservedStock: TFloatField
      FieldName = 'NrQtyReservedStock'
    end
    object tFNrQtyMinStock: TFloatField
      FieldName = 'NrQtyMinStock'
    end
    object tFNrQtyGoodStock: TFloatField
      FieldName = 'NrQtyGoodStock'
    end
    object tFNrQtyMaxStock: TFloatField
      FieldName = 'NrQtyMaxStock'
    end
    object tFNrQtyReservedOnlineSales: TFloatField
      FieldName = 'NrQtyReservedOnlineSales'
    end
    object tFDsTimeToShip: TWideStringField
      FieldName = 'DsTimeToShip'
    end
    object tFDsTimeToShip_lang1: TWideStringField
      FieldName = 'DsTimeToShip_lang1'
    end
    object tFDsTimeToShip_lang2: TWideStringField
      FieldName = 'DsTimeToShip_lang2'
    end
    object tFNmRefMiniPic1: TWideStringField
      FieldName = 'NmRefMiniPic1'
      Size = 255
    end
    object tFNmRefMiniPic2: TWideStringField
      FieldName = 'NmRefMiniPic2'
      Size = 255
    end
    object tFNmRefMiniPic3: TWideStringField
      FieldName = 'NmRefMiniPic3'
      Size = 255
    end
    object tFNmRefMiniPic4: TWideStringField
      FieldName = 'NmRefMiniPic4'
      Size = 255
    end
    object tFNmRefMiniPic5: TWideStringField
      FieldName = 'NmRefMiniPic5'
      Size = 255
    end
    object tFNmRefMidPic1: TWideStringField
      FieldName = 'NmRefMidPic1'
      Size = 255
    end
    object tFfOrientationPic1: TBooleanField
      FieldName = 'fOrientationPic1'
    end
    object tFNmRefMidPic2: TWideStringField
      FieldName = 'NmRefMidPic2'
      Size = 255
    end
    object tFfOrientationPic2: TBooleanField
      FieldName = 'fOrientationPic2'
    end
    object tFNmRefMidPic3: TWideStringField
      FieldName = 'NmRefMidPic3'
      Size = 255
    end
    object tFfOrientationPic3: TBooleanField
      FieldName = 'fOrientationPic3'
    end
    object tFNmRefMidPic4: TWideStringField
      FieldName = 'NmRefMidPic4'
      Size = 255
    end
    object tFfOrientationPic4: TBooleanField
      FieldName = 'fOrientationPic4'
    end
    object tFNmRefMidPic5: TWideStringField
      FieldName = 'NmRefMidPic5'
      Size = 255
    end
    object tFfOrientationPic5: TBooleanField
      FieldName = 'fOrientationPic5'
    end
    object tFNmRefBigPic1: TWideStringField
      FieldName = 'NmRefBigPic1'
      Size = 255
    end
    object tFNmRefBigPic2: TWideStringField
      FieldName = 'NmRefBigPic2'
      Size = 255
    end
    object tFNmRefBigPic3: TWideStringField
      FieldName = 'NmRefBigPic3'
      Size = 255
    end
    object tFNmRefBigPic4: TWideStringField
      FieldName = 'NmRefBigPic4'
      Size = 255
    end
    object tFNmRefBigPic5: TWideStringField
      FieldName = 'NmRefBigPic5'
      Size = 255
    end
    object tFNmRefHDPic1: TWideStringField
      FieldName = 'NmRefHDPic1'
      Size = 255
    end
    object tFNmRefHDPic2: TWideStringField
      FieldName = 'NmRefHDPic2'
      Size = 255
    end
    object tFNmRefHDPic3: TWideStringField
      FieldName = 'NmRefHDPic3'
      Size = 255
    end
    object tFNmRefHDPic4: TWideStringField
      FieldName = 'NmRefHDPic4'
      Size = 255
    end
    object tFNmRefHDPic5: TWideStringField
      FieldName = 'NmRefHDPic5'
      Size = 255
    end
    object tFNmAltPic1: TWideStringField
      FieldName = 'NmAltPic1'
      Size = 150
    end
    object tFNmAltPic2: TWideStringField
      FieldName = 'NmAltPic2'
      Size = 150
    end
    object tFNmAltPic3: TWideStringField
      FieldName = 'NmAltPic3'
      Size = 150
    end
    object tFNmAltPic4: TWideStringField
      FieldName = 'NmAltPic4'
      Size = 150
    end
    object tFNmAltPic5: TWideStringField
      FieldName = 'NmAltPic5'
      Size = 150
    end
    object tFNmAltPic1_lang1: TWideStringField
      FieldName = 'NmAltPic1_lang1'
      Size = 150
    end
    object tFNmAltPic2_lang1: TWideStringField
      FieldName = 'NmAltPic2_lang1'
      Size = 150
    end
    object tFNmAltPic3_lang1: TWideStringField
      FieldName = 'NmAltPic3_lang1'
      Size = 150
    end
    object tFNmAltPic4_lang1: TWideStringField
      FieldName = 'NmAltPic4_lang1'
      Size = 150
    end
    object tFNmAltPic5_lang1: TWideStringField
      FieldName = 'NmAltPic5_lang1'
      Size = 150
    end
    object tFNmAltPic1_lang2: TWideStringField
      FieldName = 'NmAltPic1_lang2'
      Size = 150
    end
    object tFNmAltPic2_lang2: TWideStringField
      FieldName = 'NmAltPic2_lang2'
      Size = 150
    end
    object tFNmAltPic3_lang2: TWideStringField
      FieldName = 'NmAltPic3_lang2'
      Size = 150
    end
    object tFNmAltPic4_lang2: TWideStringField
      FieldName = 'NmAltPic4_lang2'
      Size = 150
    end
    object tFNmAltPic5_lang2: TWideStringField
      FieldName = 'NmAltPic5_lang2'
      Size = 150
    end
    object tFDsLinkExtraDetail: TWideStringField
      FieldName = 'DsLinkExtraDetail'
      Size = 255
    end
    object tFDsLinkExtraDetail_lang1: TWideStringField
      FieldName = 'DsLinkExtraDetail_lang1'
      Size = 255
    end
    object tFDsLinkExtraDetail_lang2: TWideStringField
      FieldName = 'DsLinkExtraDetail_lang2'
      Size = 255
    end
    object tFDsLinkExternalInfo: TWideStringField
      FieldName = 'DsLinkExternalInfo'
      Size = 255
    end
    object tFDsLinkRelatedDoc1: TWideStringField
      FieldName = 'DsLinkRelatedDoc1'
      Size = 255
    end
    object tFDsLinkRelatedDoc2: TWideStringField
      FieldName = 'DsLinkRelatedDoc2'
      Size = 255
    end
    object tFDsLinkRelatedDoc3: TWideStringField
      FieldName = 'DsLinkRelatedDoc3'
      Size = 255
    end
    object tFDsLinkRelatedDoc4: TWideStringField
      FieldName = 'DsLinkRelatedDoc4'
      Size = 255
    end
    object tFDsLinkRelatedDoc5: TWideStringField
      FieldName = 'DsLinkRelatedDoc5'
      Size = 255
    end
    object tFNrTpShipPayMethod: TSmallintField
      FieldName = 'NrTpShipPayMethod'
    end
    object tFDsInternalComment: TWideStringField
      FieldName = 'DsInternalComment'
      Size = 255
    end
    object tFNmAuditProc: TWideStringField
      FieldName = 'NmAuditProc'
      Size = 50
    end
    object tFIPAuditProc: TWideStringField
      FieldName = 'IPAuditProc'
      Size = 15
    end
    object tFDtAuditProc: TDateTimeField
      FieldName = 'DtAuditProc'
    end
    object tFfAuditEnabled: TBooleanField
      FieldName = 'fAuditEnabled'
    end
    object tFIDRegisterUser: TIntegerField
      FieldName = 'IDRegisterUser'
    end
    object tFNmRegister: TWideStringField
      FieldName = 'NmRegister'
      Size = 30
    end
    object tFDtRegister: TDateTimeField
      FieldName = 'DtRegister'
    end
    object tFIDUpdateUser: TIntegerField
      FieldName = 'IDUpdateUser'
    end
    object tFDtUpdate: TDateTimeField
      FieldName = 'DtUpdate'
    end
    object tFNmUpdate: TWideStringField
      FieldName = 'NmUpdate'
      Size = 30
    end
    object tFNrRecordStatus: TSmallintField
      FieldName = 'NrRecordStatus'
    end
    object tFfRecordEnabled: TBooleanField
      FieldName = 'fRecordEnabled'
    end
    object tFNrVlUnitPriceWeb: TFloatField
      FieldName = 'NrVlUnitPriceWeb'
    end
    object tFNrVlUnitPriceWholeSale: TFloatField
      FieldName = 'NrVlUnitPriceWholeSale'
    end
    object tFNrVlProfitRetail: TFloatField
      FieldName = 'NrVlProfitRetail'
    end
    object tFNrVlProfitWholeSale: TFloatField
      FieldName = 'NrVlProfitWholeSale'
    end
    object tFNrVlProfitWeb: TFloatField
      FieldName = 'NrVlProfitWeb'
    end
    object tFNrWetWeight: TFloatField
      FieldName = 'NrWetWeight'
    end
    object tFNmProduct_lang3: TWideStringField
      FieldName = 'NmProduct_lang3'
      Size = 100
    end
    object tFDsPlainTextProduct_lang3: TWideMemoField
      FieldName = 'DsPlainTextProduct_lang3'
      BlobType = ftWideMemo
    end
    object tFDsHTMLProduct_lang3: TWideMemoField
      FieldName = 'DsHTMLProduct_lang3'
      BlobType = ftWideMemo
    end
    object tFNmProduct_lang4: TWideStringField
      FieldName = 'NmProduct_lang4'
      Size = 100
    end
    object tFDsPlainTextProduct_lang4: TWideMemoField
      FieldName = 'DsPlainTextProduct_lang4'
      BlobType = ftWideMemo
    end
    object tFDsHTMLProduct_lang4: TWideMemoField
      FieldName = 'DsHTMLProduct_lang4'
      BlobType = ftWideMemo
    end
    object tFNmProduct_lang5: TWideStringField
      FieldName = 'NmProduct_lang5'
      Size = 100
    end
    object tFDsPlainTextProduct_lang5: TWideMemoField
      FieldName = 'DsPlainTextProduct_lang5'
      BlobType = ftWideMemo
    end
    object tFDsHTMLProduct_lang5: TWideMemoField
      FieldName = 'DsHTMLProduct_lang5'
      BlobType = ftWideMemo
    end
    object tFNmProduct_lang6: TWideStringField
      FieldName = 'NmProduct_lang6'
      Size = 100
    end
    object tFDsPlainTextProduct_lang6: TWideMemoField
      FieldName = 'DsPlainTextProduct_lang6'
      BlobType = ftWideMemo
    end
    object tFDsHTMLProduct_lang6: TWideMemoField
      FieldName = 'DsHTMLProduct_lang6'
      BlobType = ftWideMemo
    end
    object tFNmProduct_lang7: TWideStringField
      FieldName = 'NmProduct_lang7'
      Size = 100
    end
    object tFDsPlainTextProduct_lang7: TWideMemoField
      FieldName = 'DsPlainTextProduct_lang7'
      BlobType = ftWideMemo
    end
    object tFDsHTMLProduct_lang7: TWideMemoField
      FieldName = 'DsHTMLProduct_lang7'
      BlobType = ftWideMemo
    end
    object tFNmProduct_lang8: TWideStringField
      FieldName = 'NmProduct_lang8'
      Size = 100
    end
    object tFDsPlainTextProduct_lang8: TWideMemoField
      FieldName = 'DsPlainTextProduct_lang8'
      BlobType = ftWideMemo
    end
    object tFDsHTMLProduct_lang8: TWideMemoField
      FieldName = 'DsHTMLProduct_lang8'
      BlobType = ftWideMemo
    end
    object tFNmProduct_lang9: TWideStringField
      FieldName = 'NmProduct_lang9'
      Size = 100
    end
    object tFDsPlainTextProduct_lang9: TWideMemoField
      FieldName = 'DsPlainTextProduct_lang9'
      BlobType = ftWideMemo
    end
    object tFDsHTMLProduct_lang9: TWideMemoField
      FieldName = 'DsHTMLProduct_lang9'
      BlobType = ftWideMemo
    end
    object tFDsTimeToShip_lang3: TWideStringField
      FieldName = 'DsTimeToShip_lang3'
    end
    object tFNmProduct_lang10: TWideStringField
      FieldName = 'NmProduct_lang10'
      Size = 100
    end
    object tFDsPlainTextProduct_lang10: TWideMemoField
      FieldName = 'DsPlainTextProduct_lang10'
      BlobType = ftWideMemo
    end
    object tFDsTimeToShip_lang4: TWideStringField
      FieldName = 'DsTimeToShip_lang4'
    end
    object tFDsHTMLProduct_lang10: TWideMemoField
      FieldName = 'DsHTMLProduct_lang10'
      BlobType = ftWideMemo
    end
    object tFDsTimeToShip_lang5: TWideStringField
      FieldName = 'DsTimeToShip_lang5'
    end
    object tFDsTimeToShip_lang6: TWideStringField
      FieldName = 'DsTimeToShip_lang6'
    end
    object tFDsTimeToShip_lang7: TWideStringField
      FieldName = 'DsTimeToShip_lang7'
    end
    object tFDsTimeToShip_lang8: TWideStringField
      FieldName = 'DsTimeToShip_lang8'
    end
    object tFDsTimeToShip_lang9: TWideStringField
      FieldName = 'DsTimeToShip_lang9'
    end
    object tFNmAltPic1_lang3: TWideStringField
      FieldName = 'NmAltPic1_lang3'
      Size = 150
    end
    object tFNmAltPic2_lang3: TWideStringField
      FieldName = 'NmAltPic2_lang3'
      Size = 150
    end
    object tFNmAltPic3_lang3: TWideStringField
      FieldName = 'NmAltPic3_lang3'
      Size = 150
    end
    object tFNmAltPic4_lang3: TWideStringField
      FieldName = 'NmAltPic4_lang3'
      Size = 150
    end
    object tFNmAltPic5_lang3: TWideStringField
      FieldName = 'NmAltPic5_lang3'
      Size = 150
    end
    object tFNmAltPic1_lang4: TWideStringField
      FieldName = 'NmAltPic1_lang4'
      Size = 150
    end
    object tFNmAltPic2_lang4: TWideStringField
      FieldName = 'NmAltPic2_lang4'
      Size = 150
    end
    object tFNmAltPic3_lang4: TWideStringField
      FieldName = 'NmAltPic3_lang4'
      Size = 150
    end
    object tFNmAltPic4_lang4: TWideStringField
      FieldName = 'NmAltPic4_lang4'
      Size = 150
    end
    object tFNmAltPic5_lang4: TWideStringField
      FieldName = 'NmAltPic5_lang4'
      Size = 150
    end
    object tFNmAltPic1_lang5: TWideStringField
      FieldName = 'NmAltPic1_lang5'
      Size = 150
    end
    object tFNmAltPic2_lang5: TWideStringField
      FieldName = 'NmAltPic2_lang5'
      Size = 150
    end
    object tFNmAltPic3_lang5: TWideStringField
      FieldName = 'NmAltPic3_lang5'
      Size = 150
    end
    object tFNmAltPic4_lang5: TWideStringField
      FieldName = 'NmAltPic4_lang5'
      Size = 150
    end
    object tFNmAltPic5_lang5: TWideStringField
      FieldName = 'NmAltPic5_lang5'
      Size = 150
    end
    object tFNmAltPic1_lang6: TWideStringField
      FieldName = 'NmAltPic1_lang6'
      Size = 150
    end
    object tFNmAltPic2_lang6: TWideStringField
      FieldName = 'NmAltPic2_lang6'
      Size = 150
    end
    object tFNmAltPic3_lang6: TWideStringField
      FieldName = 'NmAltPic3_lang6'
      Size = 150
    end
    object tFNmAltPic4_lang6: TWideStringField
      FieldName = 'NmAltPic4_lang6'
      Size = 150
    end
    object tFNmAltPic5_lang6: TWideStringField
      FieldName = 'NmAltPic5_lang6'
      Size = 150
    end
    object tFNmAltPic1_lang7: TWideStringField
      FieldName = 'NmAltPic1_lang7'
      Size = 150
    end
    object tFNmAltPic2_lang7: TWideStringField
      FieldName = 'NmAltPic2_lang7'
      Size = 150
    end
    object tFNmAltPic3_lang7: TWideStringField
      FieldName = 'NmAltPic3_lang7'
      Size = 150
    end
    object tFNmAltPic4_lang7: TWideStringField
      FieldName = 'NmAltPic4_lang7'
      Size = 150
    end
    object tFNmAltPic5_lang7: TWideStringField
      FieldName = 'NmAltPic5_lang7'
      Size = 150
    end
    object tFNmAltPic1_lang8: TWideStringField
      FieldName = 'NmAltPic1_lang8'
      Size = 150
    end
    object tFNmAltPic2_lang8: TWideStringField
      FieldName = 'NmAltPic2_lang8'
      Size = 150
    end
    object tFNmAltPic3_lang8: TWideStringField
      FieldName = 'NmAltPic3_lang8'
      Size = 150
    end
    object tFNmAltPic4_lang8: TWideStringField
      FieldName = 'NmAltPic4_lang8'
      Size = 150
    end
    object tFNmAltPic5_lang8: TWideStringField
      FieldName = 'NmAltPic5_lang8'
      Size = 150
    end
    object tFNmAltPic1_lang9: TWideStringField
      FieldName = 'NmAltPic1_lang9'
      Size = 150
    end
    object tFNmAltPic2_lang9: TWideStringField
      FieldName = 'NmAltPic2_lang9'
      Size = 150
    end
    object tFNmAltPic3_lang9: TWideStringField
      FieldName = 'NmAltPic3_lang9'
      Size = 150
    end
    object tFNmAltPic4_lang9: TWideStringField
      FieldName = 'NmAltPic4_lang9'
      Size = 150
    end
    object tFNmAltPic5_lang9: TWideStringField
      FieldName = 'NmAltPic5_lang9'
      Size = 150
    end
    object tFDsLinkExtraDetail_lang3: TWideStringField
      FieldName = 'DsLinkExtraDetail_lang3'
      Size = 255
    end
    object tFDsLinkExtraDetail_lang4: TWideStringField
      FieldName = 'DsLinkExtraDetail_lang4'
      Size = 255
    end
    object tFDsLinkExtraDetail_lang5: TWideStringField
      FieldName = 'DsLinkExtraDetail_lang5'
      Size = 255
    end
    object tFDsLinkExtraDetail_lang6: TWideStringField
      FieldName = 'DsLinkExtraDetail_lang6'
      Size = 255
    end
    object tFDsLinkExtraDetail_lang7: TWideStringField
      FieldName = 'DsLinkExtraDetail_lang7'
      Size = 255
    end
    object tFDsLinkExtraDetail_lang8: TWideStringField
      FieldName = 'DsLinkExtraDetail_lang8'
      Size = 255
    end
    object tFDsLinkExtraDetail_lang9: TWideStringField
      FieldName = 'DsLinkExtraDetail_lang9'
      Size = 255
    end
    object tFfPointCard_GivePoint: TBooleanField
      FieldName = 'fPointCard_GivePoint'
    end
    object tFNrConvertMoney_1: TFloatField
      FieldName = 'NrConvertMoney_1'
    end
    object tFNrConvertMoney_2: TFloatField
      FieldName = 'NrConvertMoney_2'
    end
    object tFNrConvertMoney_3: TFloatField
      FieldName = 'NrConvertMoney_3'
    end
    object tFNrConvertMoney_4: TFloatField
      FieldName = 'NrConvertMoney_4'
    end
    object tFNrConvertMoney_5: TFloatField
      FieldName = 'NrConvertMoney_5'
    end
  end
  object nxRSE: TnxRemoteServerEngine
    ActiveDesigntime = True
    Transport = nxTCP
    Left = 80
    Top = 64
  end
  object tCategoria: TADOTable
    Connection = adoConn
    CursorType = ctStatic
    IndexName = 'PrimaryKey'
    TableName = 'Tb_ProductGroup'
    Left = 232
    Top = 112
    object tCategoriaIdProductGroup: TIntegerField
      FieldName = 'IdProductGroup'
    end
    object tCategoriaRfProductGroup: TWideStringField
      FieldName = 'RfProductGroup'
    end
    object tCategoriaNmProductGroup: TWideStringField
      FieldName = 'NmProductGroup'
      Size = 50
    end
    object tCategoriaDsProductGroup: TWideStringField
      FieldName = 'DsProductGroup'
      Size = 255
    end
    object tCategoriaNmProductGroup_lang1: TWideStringField
      FieldName = 'NmProductGroup_lang1'
      Size = 50
    end
    object tCategoriaDsProductGroup_lang1: TWideStringField
      FieldName = 'DsProductGroup_lang1'
      Size = 255
    end
    object tCategoriaNmProductGroup_lang2: TWideStringField
      FieldName = 'NmProductGroup_lang2'
      Size = 50
    end
    object tCategoriaDsProductGroup_lang2: TWideStringField
      FieldName = 'DsProductGroup_lang2'
      Size = 255
    end
    object tCategoriaDtRegister: TDateTimeField
      FieldName = 'DtRegister'
    end
    object tCategoriaNmAuditProc: TWideStringField
      FieldName = 'NmAuditProc'
      Size = 50
    end
    object tCategoriaIPAuditProc: TWideStringField
      FieldName = 'IPAuditProc'
      Size = 15
    end
    object tCategoriaDtAuditProc: TDateTimeField
      FieldName = 'DtAuditProc'
    end
    object tCategoriafAuditEnabled: TBooleanField
      FieldName = 'fAuditEnabled'
    end
  end
  object tUnid: TADOTable
    Active = True
    Connection = adoConn
    CursorType = ctStatic
    IndexName = 'PrimaryKey'
    TableName = 'Tb_PropUMeasure'
    Left = 280
    Top = 112
    object tUnidIdPropUMeasure: TIntegerField
      FieldName = 'IdPropUMeasure'
    end
    object tUnidRfPropUMeasure: TWideStringField
      FieldName = 'RfPropUMeasure'
    end
    object tUnidNmPropUMeasure: TWideStringField
      FieldName = 'NmPropUMeasure'
      Size = 50
    end
    object tUnidDsPropUMeasure: TWideStringField
      FieldName = 'DsPropUMeasure'
      Size = 255
    end
    object tUnidNmPropUMeasure_lang1: TWideStringField
      FieldName = 'NmPropUMeasure_lang1'
      Size = 50
    end
    object tUnidDsPropUMeasure_lang1: TWideStringField
      FieldName = 'DsPropUMeasure_lang1'
      Size = 255
    end
    object tUnidNmPropUMeasure_lang2: TWideStringField
      FieldName = 'NmPropUMeasure_lang2'
      Size = 50
    end
    object tUnidDsPropUMeasure_lang2: TWideStringField
      FieldName = 'DsPropUMeasure_lang2'
      Size = 255
    end
    object tUnidDtRegister: TDateTimeField
      FieldName = 'DtRegister'
    end
    object tUnidNmAuditProc: TWideStringField
      FieldName = 'NmAuditProc'
      Size = 50
    end
    object tUnidIPAuditProc: TWideStringField
      FieldName = 'IPAuditProc'
      Size = 15
    end
    object tUnidDtAuditProc: TDateTimeField
      FieldName = 'DtAuditProc'
    end
    object tUnidfAuditEnabled: TBooleanField
      FieldName = 'fAuditEnabled'
    end
  end
end
