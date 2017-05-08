object frmGeraSped: TfrmGeraSped
  Left = 0
  Top = 0
  Caption = 'Teste Gera'#231#227'o Sped Fiscal'
  ClientHeight = 120
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object edtDataIni: TcxDateEdit
    Left = 121
    Top = 18
    EditValue = 42826d
    ParentFont = False
    TabOrder = 0
    Width = 121
  end
  object edtDataFim: TcxDateEdit
    Left = 121
    Top = 49
    EditValue = '30/04/2017'
    ParentFont = False
    TabOrder = 1
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 33
    Top = 19
    Caption = 'Data Inicial:'
    ParentFont = False
  end
  object cxLabel2: TcxLabel
    Left = 33
    Top = 50
    Caption = 'Data Final:'
    ParentFont = False
  end
  object btnGerar: TcxButton
    Left = 86
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Gerar Sped'
    TabOrder = 4
    OnClick = btnGerarClick
  end
  object cxButton1: TcxButton
    Left = 167
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Salvar Sped'
    TabOrder = 5
    OnClick = cxButton1Click
  end
  object tbSolicitacoesSped: TnxTable
    Database = Dados.db
    TableName = 'SolicitacoesSped'
    IndexName = 'IStatus'
    Top = 91
    object tbSolicitacoesSpedID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbSolicitacoesSpeddataIni: TDateField
      FieldName = 'dataIni'
    end
    object tbSolicitacoesSpeddataFim: TDateField
      FieldName = 'dataFim'
    end
    object tbSolicitacoesSpeddataInclusao: TDateTimeField
      FieldName = 'dataInclusao'
    end
    object tbSolicitacoesSpeddataConclusao: TDateTimeField
      FieldName = 'dataConclusao'
    end
    object tbSolicitacoesSpedusuario: TStringField
      FieldName = 'usuario'
      Size = 50
    end
    object tbSolicitacoesSpedcnpj_emissor: TStringField
      FieldName = 'cnpj_emissor'
      Size = 25
    end
    object tbSolicitacoesSpedstatus: TLongWordField
      FieldName = 'status'
    end
    object tbSolicitacoesSpedresultado: TnxMemoField
      FieldName = 'resultado'
      BlobType = ftMemo
    end
    object tbSolicitacoesSpedspedGerado: TnxMemoField
      FieldName = 'spedGerado'
      BlobType = ftMemo
    end
  end
  object tbSolicitacoesSpedGrava: TnxTable
    Database = Dados.db
    TableName = 'SolicitacoesSped'
    IndexName = 'IID'
    Left = 29
    Top = 91
    object tbSolicitacoesSpedGravaID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbSolicitacoesSpedGravadataIni: TDateField
      FieldName = 'dataIni'
    end
    object tbSolicitacoesSpedGravadataFim: TDateField
      FieldName = 'dataFim'
    end
    object tbSolicitacoesSpedGravadataInclusao: TDateTimeField
      FieldName = 'dataInclusao'
    end
    object tbSolicitacoesSpedGravadataConclusao: TDateTimeField
      FieldName = 'dataConclusao'
    end
    object tbSolicitacoesSpedGravausuario: TStringField
      FieldName = 'usuario'
      Size = 50
    end
    object tbSolicitacoesSpedGravacnpj_emissor: TStringField
      FieldName = 'cnpj_emissor'
      Size = 25
    end
    object tbSolicitacoesSpedGravastatus: TLongWordField
      FieldName = 'status'
    end
    object tbSolicitacoesSpedGravaresultado: TnxMemoField
      FieldName = 'resultado'
      BlobType = ftMemo
    end
    object tbSolicitacoesSpedGravaspedGerado: TnxMemoField
      FieldName = 'spedGerado'
      BlobType = ftMemo
    end
  end
  object tbEstabelecimento: TnxTable
    Database = Dados.db
    TableName = 'NFCONFIG'
    Left = 56
    Top = 91
    object tbEstabelecimentoID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tbEstabelecimentoUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tbEstabelecimentoEmitirNFCe: TBooleanField
      FieldName = 'EmitirNFCe'
    end
    object tbEstabelecimentonfe_pedido_na_obs: TBooleanField
      FieldName = 'nfe_pedido_na_obs'
    end
    object tbEstabelecimentoTipo: TByteField
      FieldName = 'Tipo'
    end
    object tbEstabelecimentoRemoverNFCe: TBooleanField
      FieldName = 'RemoverNFCe'
    end
    object tbEstabelecimentoUsarPautaMaiorMVA: TBooleanField
      FieldName = 'UsarPautaMaiorMVA'
    end
    object tbEstabelecimentoEmitirNFE: TBooleanField
      FieldName = 'EmitirNFE'
    end
    object tbEstabelecimentoCertificadoDig: TStringField
      FieldName = 'CertificadoDig'
      Size = 300
    end
    object tbEstabelecimentosat_modelo: TByteField
      FieldName = 'sat_modelo'
    end
    object tbEstabelecimentosat_config: TStringField
      FieldName = 'sat_config'
      Size = 50
    end
    object tbEstabelecimentosat_esq: TByteField
      FieldName = 'sat_esq'
    end
    object tbEstabelecimentonfe_permite_cred_icms: TBooleanField
      FieldName = 'nfe_permite_cred_icms'
    end
    object tbEstabelecimentonfe_perc_cred_icms: TFloatField
      FieldName = 'nfe_perc_cred_icms'
    end
    object tbEstabelecimentoContabilidade: TStringField
      FieldName = 'Contabilidade'
      Size = 19
    end
    object tbEstabelecimentoexigir_peso_vol: TBooleanField
      FieldName = 'exigir_peso_vol'
    end
    object tbEstabelecimentoenviar_peso_vol_def: TBooleanField
      FieldName = 'enviar_peso_vol_def'
    end
    object tbEstabelecimentoauto_calc_peso_def: TBooleanField
      FieldName = 'auto_calc_peso_def'
    end
    object tbEstabelecimentonfe_venda: TBooleanField
      FieldName = 'nfe_venda'
    end
    object tbEstabelecimentotipodoc_padrao: TByteField
      FieldName = 'tipodoc_padrao'
    end
    object tbEstabelecimentoPinCert: TStringField
      FieldName = 'PinCert'
      Size = 50
    end
    object tbEstabelecimentoDependNFCEOk: TBooleanField
      FieldName = 'DependNFCEOk'
    end
    object tbEstabelecimentoDependSATOk: TBooleanField
      FieldName = 'DependSATOk'
    end
    object tbEstabelecimentoDependNFEOk: TBooleanField
      FieldName = 'DependNFEOk'
    end
    object tbEstabelecimentoTipoCert: TByteField
      FieldName = 'TipoCert'
    end
    object tbEstabelecimentoAutoPrintNFCe: TBooleanField
      FieldName = 'AutoPrintNFCe'
    end
    object tbEstabelecimentoCRT: TByteField
      FieldName = 'CRT'
    end
    object tbEstabelecimentoNCM_Padrao: TStringField
      FieldName = 'NCM_Padrao'
      Size = 8
    end
    object tbEstabelecimentoTrib_Padrao: TWordField
      FieldName = 'Trib_Padrao'
    end
    object tbEstabelecimentoMostrarDadosNFE: TBooleanField
      FieldName = 'MostrarDadosNFE'
    end
    object tbEstabelecimentoModeloNFE: TStringField
      FieldName = 'ModeloNFE'
      Size = 5
    end
    object tbEstabelecimentoModeloNFCe: TStringField
      FieldName = 'ModeloNFCe'
      Size = 5
    end
    object tbEstabelecimentoSerieNFCe: TStringField
      FieldName = 'SerieNFCe'
      Size = 5
    end
    object tbEstabelecimentoSerieNFe: TStringField
      FieldName = 'SerieNFe'
      Size = 5
    end
    object tbEstabelecimentoNomeDllSat: TStringField
      FieldName = 'NomeDllSat'
      Size = 200
    end
    object tbEstabelecimentoSignACSat: TStringField
      FieldName = 'SignACSat'
      Size = 344
    end
    object tbEstabelecimentoCodigoAtivacao: TStringField
      FieldName = 'CodigoAtivacao'
      Size = 50
    end
    object tbEstabelecimentoAssociarSignAC: TBooleanField
      FieldName = 'AssociarSignAC'
    end
    object tbEstabelecimentoInicioNFe: TLongWordField
      FieldName = 'InicioNFe'
    end
    object tbEstabelecimentoInicioNFCe: TLongWordField
      FieldName = 'InicioNFCe'
    end
    object tbEstabelecimentoRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Size = 100
    end
    object tbEstabelecimentoNomeFantasia: TStringField
      FieldName = 'NomeFantasia'
      Size = 50
    end
    object tbEstabelecimentoCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object tbEstabelecimentoIE: TStringField
      FieldName = 'IE'
    end
    object tbEstabelecimentoEnd_Logradouro: TStringField
      FieldName = 'End_Logradouro'
      Size = 100
    end
    object tbEstabelecimentoEnd_Numero: TStringField
      FieldName = 'End_Numero'
      Size = 10
    end
    object tbEstabelecimentoEnd_Complemento: TStringField
      FieldName = 'End_Complemento'
    end
    object tbEstabelecimentoEnd_Bairro: TStringField
      FieldName = 'End_Bairro'
      Size = 40
    end
    object tbEstabelecimentoEnd_UF: TStringField
      FieldName = 'End_UF'
      Size = 2
    end
    object tbEstabelecimentoEnd_CEP: TStringField
      FieldName = 'End_CEP'
      Size = 9
    end
    object tbEstabelecimentoEnd_Municipio: TStringField
      FieldName = 'End_Municipio'
      Size = 50
    end
    object tbEstabelecimentoEnd_CodMun: TStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object tbEstabelecimentoEnd_CodUF: TByteField
      FieldName = 'End_CodUF'
    end
    object tbEstabelecimentoTelefone: TStringField
      FieldName = 'Telefone'
    end
    object tbEstabelecimentotpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object tbEstabelecimentotpAmbNFE: TByteField
      FieldName = 'tpAmbNFE'
    end
    object tbEstabelecimentoCSC: TStringField
      FieldName = 'CSC'
      Size = 100
    end
    object tbEstabelecimentoIdCSC: TStringField
      FieldName = 'IdCSC'
      Size = 10
    end
    object tbEstabelecimentoPedirEmail: TByteField
      FieldName = 'PedirEmail'
    end
    object tbEstabelecimentoPedirCPF: TByteField
      FieldName = 'PedirCPF'
    end
    object tbEstabelecimentoFromEmail: TStringField
      FieldName = 'FromEmail'
      Size = 100
    end
    object tbEstabelecimentoAssuntoEmail: TStringField
      FieldName = 'AssuntoEmail'
      Size = 100
    end
    object tbEstabelecimentoFromName: TStringField
      FieldName = 'FromName'
      Size = 50
    end
    object tbEstabelecimentoCorpoEmail: TnxMemoField
      FieldName = 'CorpoEmail'
      BlobType = ftMemo
    end
    object tbEstabelecimentoModeloNFCe_Email: TGuidField
      FieldName = 'ModeloNFCe_Email'
      Size = 38
    end
    object tbEstabelecimentoModeloSAT_Email: TGuidField
      FieldName = 'ModeloSAT_Email'
      Size = 38
    end
    object tbEstabelecimentoModeloNFE_Email: TGuidField
      FieldName = 'ModeloNFE_Email'
      Size = 38
    end
    object tbEstabelecimentourls_qrcode_hom: TnxMemoField
      FieldName = 'urls_qrcode_hom'
      BlobType = ftMemo
    end
    object tbEstabelecimentourls_qrcode_prod: TnxMemoField
      FieldName = 'urls_qrcode_prod'
      BlobType = ftMemo
    end
    object tbEstabelecimentourls_consulta: TnxMemoField
      FieldName = 'urls_consulta'
      BlobType = ftMemo
    end
    object tbEstabelecimentoconfig_nfe: TnxMemoField
      FieldName = 'config_nfe'
      BlobType = ftMemo
    end
    object tbEstabelecimentoObsFisco: TnxMemoField
      FieldName = 'ObsFisco'
      BlobType = ftMemo
    end
  end
end
