object frmConsultaPreco: TfrmConsultaPreco
  Left = 0
  Top = 0
  Caption = 'Consulta de Pre'#231'o'
  ClientHeight = 146
  ClientWidth = 546
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 29
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lblEstoque: TLabel
    Left = 248
    Top = 23
    Width = 140
    Height = 23
    Caption = 'Estoque Atual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblQtdEstoque: TLabel
    Left = 394
    Top = 23
    Width = 132
    Height = 21
    Caption = '                      '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPreco: TLabel
    Left = 362
    Top = 83
    Width = 167
    Height = 35
    Caption = '                      '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCodigo: TEdit
    Left = 75
    Top = 26
    Width = 158
    Height = 18
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = edtCodigoKeyPress
  end
  object lblDescricao: TMemo
    Left = 32
    Top = 57
    Width = 321
    Height = 83
    BorderStyle = bsNone
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object tPro: TnxTable
    Database = Dados.db
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Produto'
    IndexName = 'ICodigo'
    Top = 121
    object tProID: TAutoIncField
      FieldName = 'ID'
    end
    object tProPreco: TCurrencyField
      FieldName = 'Preco'
    end
    object tProPodeAlterarPreco: TBooleanField
      FieldName = 'PodeAlterarPreco'
    end
    object tProPermiteVendaFracionada: TBooleanField
      FieldName = 'PermiteVendaFracionada'
    end
    object tProCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
    end
    object tProCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object tProImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tProNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tProAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object tProAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
    end
    object tProAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object tProIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tProPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object tProMargem: TFloatField
      FieldName = 'Margem'
    end
    object tProFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tProEstoqueAtual: TFloatField
      FieldName = 'EstoqueAtual'
    end
    object tProEstoqueMin: TFloatField
      FieldName = 'EstoqueMin'
    end
    object tProEstoqueMax: TFloatField
      FieldName = 'EstoqueMax'
    end
    object tProEstoqueRepor: TFloatField
      FieldName = 'EstoqueRepor'
    end
    object tProComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tProComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tProFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object tProFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object tProEstoquePend: TFloatField
      FieldName = 'EstoquePend'
    end
    object tProEstoqueTot: TFloatField
      FieldName = 'EstoqueTot'
    end
    object tProNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object tProbrtrib: TWordField
      FieldName = 'brtrib'
    end
    object tProNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object tProtax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tProcest: TLongWordField
      FieldName = 'cest'
    end
    object tProTaxIDNorm: TLongWordField
      FieldKind = fkCalculated
      FieldName = 'TaxIDNorm'
      Calculated = True
    end
    object tProUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tProMarca: TGuidField
      FieldName = 'Marca'
      Size = 38
    end
    object tProCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tProDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tProUnid: TWideStringField
      FieldName = 'Unid'
      Size = 5
    end
    object tProObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tProCategoria: TWideStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object tProPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tProPesoLiq: TFloatField
      FieldName = 'PesoLiq'
    end
    object tPromodST: TByteField
      FieldName = 'modST'
    end
    object tProMVA: TnxMemoField
      FieldName = 'MVA'
      BlobType = ftMemo
    end
    object tProPauta: TnxMemoField
      FieldName = 'Pauta'
      BlobType = ftMemo
    end
    object tProAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tProAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 30
    end
    object tProRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
end
