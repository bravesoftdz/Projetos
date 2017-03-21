object FrmPri: TFrmPri
  Left = 0
  Top = 0
  BorderWidth = 10
  Caption = 'Importar CSV - ESTOQUE'
  ClientHeight = 421
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 17
  object Paginas: TcxPageControl
    Left = 0
    Top = 0
    Width = 632
    Height = 378
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsCampos
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    OnChange = PaginasChange
    OnPageChanging = PaginasPageChanging
    ClientRectBottom = 378
    ClientRectRight = 632
    ClientRectTop = 28
    object tsArq: TcxTabSheet
      Caption = 'Selecione o arquivo'
      ImageIndex = 0
      object meArq: TcxMemo
        Left = 0
        Top = 40
        Align = alClient
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ScrollBars = ssBoth
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Courier New'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 310
        Width = 632
      end
      object LMDSimplePanel2: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 632
        Height = 40
        Hint = ''
        Align = alTop
        Bevel.Mode = bmCustom
        TabOrder = 1
        object edArq: TLMDFileOpenEdit
          AlignWithMargins = True
          Left = 55
          Top = 7
          Width = 372
          Height = 26
          Hint = ''
          Bevel.Mode = bmWindows
          Caret.BlinkRate = 530
          TabOrder = 0
          OnChange = edArqChange
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          CustomButtons = <
            item
              Glyph.Data = {
                DE000000424DDE0000000000000076000000280000000E0000000D0000000100
                0400000000006800000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
                DD000033333330DDDD000B033333330DDD000FB033333330DD000BFB03333333
                0D000FBFB000000000000BFBFBFBF0DDDD000FBFBFBFB0DDDD000BFB000000DD
                DD00D000DDDDDD000D00DDDDDDDDDDD00D00DDDDDDD0DD0D0D00DDDDDDDD00DD
                DD00}
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Index = 0
              DisplayName = 'TLMDSpecialButton'
              ImageIndex = 0
              ListIndex = 0
              UsePngGlyph = False
            end>
          CustomButtonWidth = 18
          Filter = 'CSV|*.csv|TXT|*.txt'
          FilenameOnly = False
        end
        object cbArq: TcxComboBox
          Left = 433
          Top = 7
          Properties.DropDownListStyle = lsEditFixedList
          Properties.ImmediateDropDownWhenActivated = True
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items.Strings = (
            'Produtos'
            'Clientes'
            'Fornecedores')
          Properties.OnChange = cbArqPropertiesChange
          TabOrder = 1
          Text = 'Produtos'
          Width = 209
        end
        object cxLabel1: TcxLabel
          Left = 0
          Top = 9
          Caption = 'Arquivo'
        end
      end
    end
    object tsCampos: TcxTabSheet
      Caption = 'Mapa de campos'
      ImageIndex = 1
      object Grid: TcxGrid
        Left = 0
        Top = 0
        Width = 632
        Height = 350
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        object TV: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dsMT
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object TVFromFieldPos: TcxGridDBColumn
            Caption = 'Pos'
            DataBinding.FieldName = 'FromFieldPos'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 45
          end
          object TVFromFieldName: TcxGridDBColumn
            DataBinding.FieldName = 'FromFieldName'
            Options.Editing = False
            Options.Focusing = False
            Width = 134
          end
          object TVImportar: TcxGridDBColumn
            DataBinding.FieldName = 'Importar'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.NullStyle = nssUnchecked
            HeaderAlignmentHorz = taCenter
            Width = 76
          end
          object TVToFieldCaption: TcxGridDBColumn
            DataBinding.FieldName = 'ToFieldCaption'
            Width = 163
          end
          object TVPrefixo: TcxGridDBColumn
            DataBinding.FieldName = 'Prefixo'
            Styles.Content = cxStyle1
            Width = 110
          end
          object TVSufixo: TcxGridDBColumn
            DataBinding.FieldName = 'Sufixo'
            Styles.Content = cxStyle1
            Width = 111
          end
          object TVFiltrar: TcxGridDBColumn
            Caption = 'Filtrar Caracteres'
            DataBinding.FieldName = 'Filtrar'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ImmediateDropDownWhenActivated = True
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = 'N'#227'o'
                ImageIndex = 0
              end
              item
                Description = 'N'#227'o'
                Value = 0
              end
              item
                Description = 'Somente n'#250'meros'
                Value = 1
              end
              item
                Description = 'Somente n'#250'meros, tra'#231'o, virg. e ponto'
                Value = 2
              end
              item
                Description = 'Somente letras'
                Value = 3
              end>
            Width = 168
          end
        end
        object GL: TcxGridLevel
          GridView = TV
        end
      end
    end
    object tsImportar: TcxTabSheet
      Caption = 'Importar'
      ImageIndex = 2
      object PB: TProgressBar
        AlignWithMargins = True
        Left = 0
        Top = 10
        Width = 632
        Height = 25
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 10
        Align = alTop
        TabOrder = 0
      end
      object pagImp: TcxPageControl
        Left = 0
        Top = 45
        Width = 632
        Height = 305
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = tsImpCli
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 305
        ClientRectRight = 632
        ClientRectTop = 28
        object tsImpProd: TcxTabSheet
          Caption = 'tsImpProd'
          ImageIndex = 0
          object cbFrac: TcxCheckBox
            AlignWithMargins = True
            Left = 0
            Top = 3
            Margins.Left = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Importar com op'#231#227'o "Permitir Venda Fracionada" ativada'
            TabOrder = 0
          end
          object cbPermiteAlterarPreco: TcxCheckBox
            AlignWithMargins = True
            Left = 0
            Top = 31
            Margins.Left = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 
              'Importar com op'#231#227'o "Permite alterar pre'#231'o na hora da venda" ativ' +
              'ada'
            TabOrder = 1
          end
          object cbSemEstoque: TcxCheckBox
            AlignWithMargins = True
            Left = 0
            Top = 59
            Margins.Left = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Importar com op'#231#227'o "Nao Controlar Estoque" ativada'
            TabOrder = 2
          end
          object cbApagar: TcxCheckBox
            AlignWithMargins = True
            Left = 0
            Top = 87
            Margins.Left = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 
              'Apagar produtos cadastrados anteriormente (Iniciar um novo banco' +
              ' de dados de produtos)'
            TabOrder = 3
          end
          object G: TDBGrid
            AlignWithMargins = True
            Left = 0
            Top = 122
            Width = 632
            Height = 155
            Margins.Left = 0
            Margins.Top = 10
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            ReadOnly = True
            TabOrder = 4
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Visible = False
          end
        end
        object tsImpCli: TcxTabSheet
          Caption = 'tsImpCli'
          ImageIndex = 1
          object cbApagarCli: TcxCheckBox
            AlignWithMargins = True
            Left = 0
            Top = 34
            Margins.Left = 0
            Margins.Right = 0
            Align = alTop
            Caption = 
              'Apagar clientes/fornecedores cadastrados anteriormente (Iniciar ' +
              'um novo banco de dados de clientes e fornecedores)'
            TabOrder = 0
            ExplicitTop = 30
          end
          object gridCli: TDBGrid
            AlignWithMargins = True
            Left = 0
            Top = 72
            Width = 632
            Height = 205
            Margins.Left = 0
            Margins.Top = 10
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Visible = False
          end
          object cbPJ: TcxCheckBox
            AlignWithMargins = True
            Left = 0
            Top = 3
            Margins.Left = 0
            Margins.Right = 0
            Align = alTop
            Caption = 'Importar todos clientes como Pessoa Jur'#237'dica'
            TabOrder = 2
          end
        end
      end
    end
  end
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 388
    Width = 632
    Height = 33
    Hint = ''
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    object btnAvancar: TcxButton
      AlignWithMargins = True
      Left = 107
      Top = 0
      Width = 97
      Height = 33
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Avan'#231'ar'
      Default = True
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAvancarClick
    end
    object btnVoltar: TcxButton
      Left = 0
      Top = 0
      Width = 97
      Height = 33
      Align = alLeft
      Caption = 'Voltar'
      Enabled = False
      TabOrder = 1
      OnClick = btnVoltarClick
    end
  end
  object nxSession1: TnxSession
    ServerEngine = nxSE
    Left = 48
    Top = 232
  end
  object nxDB: TnxDatabase
    Session = nxSession1
    AliasPath = 'c:\nex\dados'
    Left = 160
    Top = 232
  end
  object nxTCP: TnxWinsockTransport
    DisplayCategory = 'Transports'
    ServerNameRuntime = '127.0.0.1'
    ServerNameDesigntime = '127.0.0.1'
    Port = 17200
    Left = 200
    Top = 240
  end
  object nxSE: TnxServerEngine
    ServerName = 'Nextar'
    Options = [seoCloseInactiveFolders, seoCloseInactiveTables]
    TableExtension = 'nx1'
    Left = 120
    Top = 232
  end
  object dsProd: TDataSource
    DataSet = tProd
    Left = 248
    Top = 240
  end
  object tEst: TnxTable
    Database = nxDB
    TableName = 'MovEst'
    Exclusive = True
    IndexName = 'IID'
    Left = 336
    Top = 240
    object tEstID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tEstTran: TLongWordField
      FieldName = 'Tran'
    end
    object tEstProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tEstQuant: TFloatField
      FieldName = 'Quant'
    end
    object tEstUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tEstTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tEstCustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object tEstItem: TByteField
      FieldName = 'Item'
    end
    object tEstDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tEstPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tEstPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tEstDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tEstDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tEstEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tEstCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tEstAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tEstEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object tEstCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tEstCaixa: TIntegerField
      FieldName = 'Caixa'
    end
    object tEstCategoria: TStringField
      FieldName = 'Categoria'
    end
    object tEstNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tEstITran: TIntegerField
      FieldName = 'ITran'
    end
    object tEstTipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tEstSessao: TIntegerField
      FieldName = 'Sessao'
    end
    object tEstComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tEstComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tEstComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tEstPermSemEstoque: TBooleanField
      FieldName = 'PermSemEstoque'
    end
    object tEstFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tEstFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tEstRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tProd: TnxTable
    Database = nxDB
    TableName = 'Produto'
    Exclusive = True
    IndexName = 'ICodigo'
    Left = 376
    Top = 240
    object tProdID: TUnsignedAutoIncField
      FieldName = 'ID'
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
    object tProdImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tProdFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tProdCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
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
    object tProdAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object tProdAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
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
    object tProdCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object tProdIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tProdRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tProdbrtrib: TWordField
      FieldName = 'brtrib'
    end
    object tProdNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object tProdNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object tProdEstoqueAtual: TFloatField
      FieldName = 'EstoqueAtual'
    end
    object tProdEstoqueMin: TFloatField
      FieldName = 'EstoqueMin'
    end
    object tProdEstoqueMax: TFloatField
      FieldName = 'EstoqueMax'
    end
    object tProdEstoquePend: TFloatField
      FieldName = 'EstoquePend'
    end
    object tProdEstoqueTot: TFloatField
      FieldName = 'EstoqueTot'
    end
    object tProdEstoqueRepor: TFloatField
      FieldName = 'EstoqueRepor'
    end
    object tProdPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tProdPesoLiq: TFloatField
      FieldName = 'PesoLiq'
    end
    object tProdtax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tProdcest: TLongWordField
      FieldName = 'cest'
    end
    object tProdmodST: TByteField
      FieldName = 'modST'
    end
    object tProdMVA: TnxMemoField
      FieldName = 'MVA'
      BlobType = ftMemo
    end
    object tProdPauta: TnxMemoField
      FieldName = 'Pauta'
      BlobType = ftMemo
    end
    object tProdUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tProdMarca: TGuidField
      FieldName = 'Marca'
      Size = 38
    end
    object tProdCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tProdDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tProdUnid: TWideStringField
      FieldName = 'Unid'
      Size = 5
    end
    object tProdObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tProdCategoria: TWideStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object tProdAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tProdAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 30
    end
    object tProdCodigoNum: TLongWordField
      FieldName = 'CodigoNum'
    end
    object tProdCodigo2: TWideStringField
      FieldName = 'Codigo2'
      Size = 30
    end
    object tProdCodigo2Num: TLongWordField
      FieldName = 'Codigo2Num'
    end
  end
  object tCli: TnxTable
    Database = nxDB
    TableName = 'Cliente'
    Exclusive = True
    IndexName = 'IFornecedorNome'
    Left = 424
    Top = 248
    object tCliCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tCliSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object tCliDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object tCliIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tCliIncluidoPor: TStringField
      FieldName = 'IncluidoPor'
    end
    object tCliSemFidelidade: TBooleanField
      FieldName = 'SemFidelidade'
    end
    object tCliPJuridica: TBooleanField
      FieldName = 'PJuridica'
    end
    object tCliInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tCliFornecedor: TBooleanField
      FieldName = 'Fornecedor'
    end
    object tCliID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tCliCodigoKey: TStringField
      FieldName = 'CodigoKey'
      Size = 15
    end
    object tCliNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tCliEndereco2: TWideStringField
      FieldName = 'Endereco2'
      Size = 60
    end
    object tCliEnd_Numero: TWideStringField
      FieldName = 'End_Numero'
    end
    object tCliEnd_CodMun: TWideStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object tCliEnd_Dest: TWideStringField
      FieldName = 'End_Dest'
      Size = 40
    end
    object tCliEnd_Obs: TWideStringField
      FieldName = 'End_Obs'
      Size = 40
    end
    object tCliendereco_id: TGuidField
      FieldName = 'endereco_id'
      Size = 38
    end
    object tCliPais: TWideStringField
      FieldName = 'Pais'
      Size = 2
    end
    object tCliNaoContribICMS: TBooleanField
      FieldName = 'NaoContribICMS'
    end
    object tCliIsentoIE: TBooleanField
      FieldName = 'IsentoIE'
    end
    object tCliNFE_CredIcms: TBooleanField
      FieldName = 'NFE_CredIcms'
    end
    object tCliPassaportes: TFloatField
      FieldName = 'Passaportes'
    end
    object tCliUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object tCliDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object tCliTemDebito: TBooleanField
      FieldName = 'TemDebito'
    end
    object tCliLimiteDebito: TCurrencyField
      FieldName = 'LimiteDebito'
    end
    object tCliFoto: TGraphicField
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object tCliAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tCliAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
    end
    object tCliFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tCliFidTotal: TFloatField
      FieldName = 'FidTotal'
    end
    object tCliFidResg: TFloatField
      FieldName = 'FidResg'
    end
    object tCliAniversario: TStringField
      FieldName = 'Aniversario'
      Size = 4
    end
    object tCliTemCredito: TBooleanField
      FieldName = 'TemCredito'
    end
    object tCliInfoExtra: TWideStringField
      FieldName = 'InfoExtra'
      Size = 50
    end
    object tCliTranspEntPadrao: TLongWordField
      FieldName = 'TranspEntPadrao'
    end
    object tCliTranspEnt: TBooleanField
      FieldName = 'TranspEnt'
    end
    object tCliTipoFor: TByteField
      FieldName = 'TipoFor'
    end
    object tCliConsumidor: TBooleanField
      FieldName = 'Consumidor'
    end
    object tCliValorCred: TCurrencyField
      FieldName = 'ValorCred'
    end
    object tCliRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object tCliEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object tCliBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object tCliCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object tCliUF: TWideStringField
      FieldName = 'UF'
      Size = 30
    end
    object tCliCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tCliObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tCliCpf: TWideStringField
      FieldName = 'Cpf'
    end
    object tCliRg: TWideStringField
      FieldName = 'Rg'
    end
    object tCliTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tCliEmail: TWideMemoField
      FieldName = 'Email'
      BlobType = ftWideMemo
    end
    object tCliPai: TWideStringField
      FieldName = 'Pai'
      Size = 40
    end
    object tCliMae: TWideStringField
      FieldName = 'Mae'
      Size = 40
    end
    object tCliCelular: TWideStringField
      FieldName = 'Celular'
      Size = 15
    end
  end
  object MT: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'FromFieldPos'
        DataType = ftInteger
      end
      item
        Name = 'FromFieldName'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ToFieldName'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ToFieldCaption'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Importar'
        DataType = ftBoolean
      end
      item
        Name = 'Prefixo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Sufixo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Filtrar'
        DataType = ftSmallint
      end
      item
        Name = 'TratamentoEsp'
        DataType = ftSmallint
      end>
    IndexFieldNames = 'FromFieldPos'
    IndexName = 'MTIndex1'
    IndexDefs = <
      item
        Name = 'MTIndex1'
        Fields = 'FromFieldPos'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.72.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 88
    Top = 232
    object MTFromFieldPos: TIntegerField
      Alignment = taCenter
      FieldName = 'FromFieldPos'
      DisplayFormat = '#'
    end
    object MTFromFieldName: TStringField
      DisplayLabel = 'Campo Origem'
      FieldName = 'FromFieldName'
      Size = 100
    end
    object MTToFieldName: TStringField
      FieldName = 'ToFieldName'
      Size = 100
    end
    object MTToFieldCaption: TStringField
      DisplayLabel = 'Campo Destino'
      FieldKind = fkLookup
      FieldName = 'ToFieldCaption'
      LookupDataSet = mtFields
      LookupKeyFields = 'FieldName'
      LookupResultField = 'FieldCaption'
      KeyFields = 'ToFieldName'
      Lookup = True
    end
    object MTImportar: TBooleanField
      DisplayLabel = 'Importar?'
      FieldName = 'Importar'
    end
    object MTPrefixo: TStringField
      FieldName = 'Prefixo'
      Size = 50
    end
    object MTSufixo: TStringField
      FieldName = 'Sufixo'
      Size = 50
    end
    object MTFiltrar: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'Filtrar'
    end
    object MTTratamentoEsp: TSmallintField
      FieldName = 'TratamentoEsp'
    end
    object MTValue: TMemoField
      FieldName = 'Value'
      BlobType = ftMemo
    end
  end
  object mtFields: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'FieldName'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FieldCaption'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'IFieldName'
        Fields = 'FieldName'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.72.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 296
    Top = 240
    object mtFieldsFieldName: TStringField
      FieldName = 'FieldName'
      Size = 100
    end
    object mtFieldsFieldCaption: TStringField
      FieldName = 'FieldCaption'
      Size = 100
    end
  end
  object dsMT: TDataSource
    DataSet = MT
    Left = 476
    Top = 244
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 552
    Top = 64
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
    end
  end
  object nxDBDest: TnxDatabase
    Session = nxSession1
    AliasPath = 'c:\nex\imp'
    Left = 176
    Top = 304
  end
  object nxBackup: TnxBackupController
    ActiveRuntime = True
    OriginalDatabase = nxDB
    CloneDatabase = nxDBDest
    OnIncludeTable = nxBackupIncludeTable
    Options = [bcoCloseInactiveOnSource, bcoCloseInactiveOnTarget]
    SourceThreadPriority = NORMAL
    TargetThreadPriority = NORMAL
    SkippedTablesCount = 0
    Left = 604
    Top = 244
  end
  object dsCli: TDataSource
    DataSet = tCli
    Left = 288
    Top = 317
  end
  object tMarca: TnxTable
    Database = nxDB
    TableName = 'Marca'
    IndexName = 'INome'
    Left = 128
    Top = 124
    object tMarcaID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tMarcaUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tMarcaNome: TWideStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tMarcaRecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
end
