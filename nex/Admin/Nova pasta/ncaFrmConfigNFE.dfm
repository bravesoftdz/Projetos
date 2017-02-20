inherited FrmConfigNFE: TFrmConfigNFE
  Caption = 'FrmConfigNFE'
  ClientHeight = 379
  ClientWidth = 635
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Segoe UI'
  OnDestroy = FormDestroy
  ExplicitWidth = 641
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    Width = 615
    Height = 214
    ExplicitWidth = 615
    ExplicitHeight = 214
    object panTopo: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 615
      Height = 49
      Hint = ''
      Align = alTop
      Bevel.Mode = bmCustom
      ParentColor = True
      TabOrder = 0
      object img: TImage
        Left = 0
        Top = 0
        Width = 48
        Height = 48
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        AutoSize = True
        Constraints.MaxHeight = 48
        Constraints.MinWidth = 48
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F987000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000AB900000AB9014B409B7000
          0002D8494441546843D594BF4F544110C727B12031A1C3589098D869656568E4
          6F30FA47688C2202A7C001028720BF4F38E0F8FD431B3B1B13130B2DB531266A
          4F618CB1522BCBE77E9F33E7EC66DF718FC478537CEECD9BDDB76F3F3BF38E92
          24314D34698968D212D1A425A2494B449396F8F3F38C3ED363FA49FB8E03C71E
          B3E3D8756C73BCC5F106B3CE549955C79A6385E30AC7CB1C2F71FC88E332C78B
          1C2F703CCFF11CC7B31CCF708C6B85DEFE1538A01F975E9C492C41D3F4C9B6C0
          9416D83328F0500BEC1B1498D402BBD65B68DBA0C08416D8312830AE05B60C0A
          94ACB7D09816D83428305AA7855E7D3D8974CAC8FB36EF41101B935C48F8FCF5
          37A7BDF5C1C7EF2D695ECF3B0ABF021BD902DF7E9D48AEBC6EF71E96B1BC024F
          0F5BA37340ECA0EA41F7B5C07AB600C0BD1E977C4C209C2B60AECCC1A1400639
          8067720B782D94218017C94B758925974740D68A55F438D0B016A8C6057095B2
          E3C5328E7BD0A800E4651CEB85E3C781861A14C069C9E9C9CB1183984008C630
          4FEEF3B64A16BEC05AB600EEF506F469FE4B8173C51B49CBA92FE90E41FBD54D
          6F9C8A3904744E7F173101FD8C802ACA38FE32C3F190B3D74AB58DB7753EAF89
          20963934A805568F16D0AD24342A00B0713D477FC85847FF49C8E65105DC5F7C
          D251CB214EE7E41500BA15401E01DD7A31642D6C5A368B131724275234A00556
          1A13D063208F008084AE84462AA00562342480C5C2B20A283DC640D80659CF84
          E835801EBB50BE5CDBACB44B0CBAAB052ABEC0FFA6F5FCBB7467F87871E2001F
          B6FE27A242130BE0E44542E3097815586E2E0101ED241508DB89FAB4C052730A
          D4837AAD0B7815281B14E8B12EE0B5D0A241816EEB025D5A60C1A0C02D2D306F
          BD02E605AAF481E6E890669859C734C793CC94E3816382AF25C73833C68C3223
          8E21C7B0A3C8F1A06380AFFD1CDF73F4390A8E5E8E7B1C77F8DACDF16D8EBB1C
          37F95AA0973501CB44939688262D114D5A229AB444346987847E03D1E61B9FD7
          D279210000000049454E44AE426082}
      end
      object edEmitirNFCe: TcxDBCheckBox
        Left = 58
        Top = 13
        Cursor = crHandPoint
        Caption = 'Emitir NFC-e'
        DataBinding.DataField = 'EmitirNFCe'
        DataBinding.DataSource = DS
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.OnChange = edEmitirNFCePropertiesChange
        Style.LookAndFeel.Kind = lfFlat
        Style.StyleController = FrmPri.escFlat
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Width = 153
      end
      object btnPremium: TcxButton
        AlignWithMargins = True
        Left = 233
        Top = 9
        Width = 139
        Height = 31
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 9
        Margins.Right = 0
        Margins.Bottom = 9
        Caption = 'Recurso PREMIUM'
        LookAndFeel.Kind = lfFlat
        OptionsImage.ImageIndex = 85
        OptionsImage.Images = dmImagens.im16
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
    end
    object LMDSimplePanel2: TLMDSimplePanel
      AlignWithMargins = True
      Left = 58
      Top = 49
      Width = 557
      Height = 155
      Hint = ''
      Margins.Left = 58
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 10
      AutoSize = True
      Align = alTop
      Bevel.Mode = bmCustom
      ParentColor = True
      TabOrder = 1
      object edMostrarDadosNFE: TcxDBCheckBox
        Left = 0
        Top = 0
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Mostrar dados para NFe no cadastro de produtos'
        DataBinding.DataField = 'MostrarDadosNFE'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Properties.OnChange = edMostrarNCMPropertiesChange
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.StyleController = FrmPri.escFlat
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Width = 557
      end
      object panCRT: TLMDSimplePanel
        AlignWithMargins = True
        Left = 0
        Top = 115
        Width = 557
        Height = 40
        Hint = ''
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Bevel.Mode = bmCustom
        ParentColor = True
        TabOrder = 1
        ExplicitTop = 140
        object lbCRT: TcxLabel
          Left = 0
          Top = 0
          Align = alLeft
          AutoSize = False
          Caption = 'Regime tribut'#225'rio'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Vert = taVCenter
          Height = 40
          Width = 135
          AnchorY = 20
        end
        object edCRT: TcxDBImageComboBox
          AlignWithMargins = True
          Left = 138
          Top = 6
          Margins.Top = 6
          Margins.Bottom = 6
          Align = alLeft
          DataBinding.DataField = 'CRT'
          DataBinding.DataSource = DS
          Properties.Alignment.Horz = taLeftJustify
          Properties.ImmediateDropDownWhenActivated = True
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = 'Simples Nacional'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Simples Nacional - Excesso de sublimite de receita bruta'
              Value = 2
            end
            item
              Description = 'Regime Normal'
              Value = 3
            end>
          Properties.OnChange = edCRTPropertiesChange
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.escFlat
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 1
          Width = 311
        end
      end
      object panSTPadrao: TLMDSimplePanel
        AlignWithMargins = True
        Left = 20
        Top = 25
        Width = 537
        Height = 40
        Hint = ''
        Margins.Left = 20
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Bevel.Mode = bmCustom
        ParentColor = True
        TabOrder = 2
        object lbNCMPadrao: TcxLabel
          Left = 0
          Top = 0
          Align = alLeft
          AutoSize = False
          Caption = 'NCM Padr'#227'o'
          Properties.Alignment.Vert = taVCenter
          Height = 40
          Width = 115
          AnchorY = 20
        end
        object edNCMPadrao: TcxDBButtonEdit
          AlignWithMargins = True
          Left = 118
          Top = 6
          Margins.Top = 6
          Margins.Bottom = 6
          Align = alLeft
          DataBinding.DataField = 'NCM_Padrao'
          DataBinding.DataSource = DS
          Properties.Alignment.Horz = taLeftJustify
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edNCMPadraoPropertiesButtonClick
          Properties.OnChange = edNCMPadraoPropertiesChange
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.escFlat
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 1
          Width = 115
        end
        object lbNCMDescr: TcxLabel
          Left = 236
          Top = 0
          Align = alClient
          AutoSize = False
          Caption = '...'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Vert = taVCenter
          Height = 40
          Width = 301
          AnchorY = 20
        end
      end
      object LMDSimplePanel3: TLMDSimplePanel
        AlignWithMargins = True
        Left = 20
        Top = 65
        Width = 537
        Height = 40
        Hint = ''
        Margins.Left = 20
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Bevel.Mode = bmCustom
        ParentColor = True
        TabOrder = 3
        ExplicitTop = 90
        object lbSTPadrao: TcxLabel
          Left = 0
          Top = 0
          Align = alLeft
          AutoSize = False
          Caption = 'CSOSN Padr'#227'o'
          Properties.Alignment.Vert = taVCenter
          Height = 40
          Width = 115
          AnchorY = 20
        end
        object edSTPadrao: TcxDBImageComboBox
          AlignWithMargins = True
          Left = 118
          Top = 6
          Margins.Top = 6
          Margins.Bottom = 6
          Align = alLeft
          RepositoryItem = Dados.erCST
          DataBinding.DataField = 'CSOSN_Padrao'
          DataBinding.DataSource = DS
          Properties.Alignment.Horz = taLeftJustify
          Properties.ImmediateDropDownWhenActivated = True
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = 'Simples Nacional'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Simples Nacional - Excesso de sublimite de receita bruta'
              Value = 2
            end
            item
              Description = 'Regime Normal'
              Value = 3
            end>
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.escFlat
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 1
          Width = 311
        end
      end
    end
  end
  inherited LMDSimplePanel1: TLMDSimplePanel
    Top = 337
    Width = 615
    ExplicitTop = 337
    ExplicitWidth = 615
  end
  object MT: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'EmitirNFCe'
        DataType = ftBoolean
      end
      item
        Name = 'EmitirNFE'
        DataType = ftBoolean
      end
      item
        Name = 'CFOP_NFCe'
        DataType = ftWord
      end
      item
        Name = 'AutoEmitirNFCe'
        DataType = ftBoolean
      end
      item
        Name = 'CRT'
        DataType = ftByte
      end
      item
        Name = 'ModeloNFE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ModeloNFCe'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'SerieNFCe'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NCM_Padrao'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'SerieNFe'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'InicioNFe'
        DataType = ftLongWord
      end
      item
        Name = 'InicioNFCe'
        DataType = ftLongWord
      end
      item
        Name = 'RazaoSocial'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NomeFantasia'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'End_Logradouro'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'End_Numero'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'End_Bairro'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'End_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'End_CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'End_Municipio'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'End_CodMun'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'End_CodUF'
        DataType = ftByte
      end
      item
        Name = 'Telefone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CSOSN_Padrao'
        DataType = ftWord
      end
      item
        Name = 'CST_Padrao'
        DataType = ftByte
      end
      item
        Name = 'MostrarDadosNFE'
        DataType = ftBoolean
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
    Left = 514
    Top = 114
    object MTEmitirNFCe: TBooleanField
      FieldName = 'EmitirNFCe'
    end
    object MTEmitirNFE: TBooleanField
      FieldName = 'EmitirNFE'
    end
    object MTCFOP_NFCe: TWordField
      FieldName = 'CFOP_NFCe'
    end
    object MTAutoEmitirNFCe: TBooleanField
      FieldName = 'AutoEmitirNFCe'
    end
    object MTCRT: TByteField
      FieldName = 'CRT'
    end
    object MTModeloNFE: TStringField
      FieldName = 'ModeloNFE'
      Size = 5
    end
    object MTModeloNFCe: TStringField
      FieldName = 'ModeloNFCe'
      Size = 5
    end
    object MTSerieNFCe: TStringField
      FieldName = 'SerieNFCe'
      Size = 5
    end
    object MTNCM_Padrao: TStringField
      FieldName = 'NCM_Padrao'
      Size = 8
    end
    object MTSerieNFe: TStringField
      FieldName = 'SerieNFe'
      Size = 5
    end
    object MTInicioNFe: TLongWordField
      FieldName = 'InicioNFe'
    end
    object MTInicioNFCe: TLongWordField
      FieldName = 'InicioNFCe'
    end
    object MTRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Size = 100
    end
    object MTNomeFantasia: TStringField
      FieldName = 'NomeFantasia'
      Size = 50
    end
    object MTCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object MTIE: TStringField
      FieldName = 'IE'
    end
    object MTEnd_Logradouro: TStringField
      FieldName = 'End_Logradouro'
      Size = 100
    end
    object MTEnd_Numero: TStringField
      FieldName = 'End_Numero'
      Size = 10
    end
    object MTEnd_Bairro: TStringField
      FieldName = 'End_Bairro'
      Size = 40
    end
    object MTEnd_UF: TStringField
      FieldName = 'End_UF'
      Size = 2
    end
    object MTEnd_CEP: TStringField
      FieldName = 'End_CEP'
      Size = 9
    end
    object MTEnd_Municipio: TStringField
      FieldName = 'End_Municipio'
      Size = 50
    end
    object MTEnd_CodMun: TStringField
      FieldName = 'End_CodMun'
      Size = 7
    end
    object MTEnd_CodUF: TByteField
      FieldName = 'End_CodUF'
    end
    object MTTelefone: TStringField
      FieldName = 'Telefone'
    end
    object MTCSOSN_Padrao: TWordField
      Alignment = taLeftJustify
      FieldName = 'CSOSN_Padrao'
    end
    object MTMostrarDadosNFE: TBooleanField
      FieldName = 'MostrarDadosNFE'
    end
    object MTCST_Padrao: TByteField
      Alignment = taLeftJustify
      FieldName = 'CST_Padrao'
    end
  end
  object DS: TDataSource
    DataSet = MT
    Left = 554
    Top = 114
  end
end
