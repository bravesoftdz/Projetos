object FrmOrcamento: TFrmOrcamento
  Left = 0
  Top = 0
  Caption = 'Or'#231'amento'
  ClientHeight = 573
  ClientWidth = 1003
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panTot: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 507
    Width = 1003
    Height = 66
    Hint = ''
    Margins.Left = 0
    Margins.Top = 1
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 1
  end
  object panLista: TLMDSimplePanel
    AlignWithMargins = True
    Left = 7
    Top = 168
    Width = 989
    Height = 338
    Hint = ''
    Margins.Left = 7
    Margins.Top = 1
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alClient
    Bevel.Mode = bmStandard
    Color = clWhite
    TabOrder = 0
  end
  object cbFocus: TCheckBox
    Left = 0
    Top = 3000
    Width = 590
    Height = 17
    Caption = 'cbFocus'
    TabOrder = 2
  end
  object panBuscaProd: TLMDSimplePanel
    AlignWithMargins = True
    Left = 7
    Top = 115
    Width = 989
    Height = 52
    Hint = ''
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alTop
    Bevel.BorderColor = clRed
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 3
  end
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 1003
    Height = 36
    Hint = ''
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    Color = 14540253
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object LMDDrawEdge1: TLMDDrawEdge
      AlignWithMargins = True
      Left = 176
      Top = 4
      Width = 3
      Height = 28
      Margins.Top = 4
      Margins.Bottom = 4
      Align = alLeft
      FrameSides = [fsLeft]
      ExplicitLeft = 307
      ExplicitHeight = 26
    end
    object LMDDrawEdge2: TLMDDrawEdge
      AlignWithMargins = True
      Left = 91
      Top = 4
      Width = 3
      Height = 28
      Margins.Top = 4
      Margins.Bottom = 4
      Align = alLeft
      FrameSides = [fsLeft]
      Visible = False
      ExplicitLeft = 116
      ExplicitHeight = 33
    end
    object panFunc: TLMDSimplePanel
      AlignWithMargins = True
      Left = 244
      Top = 0
      Width = 749
      Height = 36
      Hint = ''
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alClient
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      ParentColor = True
      TabOrder = 0
    end
    object panOrcamento: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 88
      Height = 36
      Hint = ''
      AutoSize = True
      Align = alLeft
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      ParentColor = True
      TabOrder = 1
      Visible = False
      object lbTitOrcamento: TcxLabel
        AlignWithMargins = True
        Left = 5
        Top = 0
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Or'#231'amento'
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Symbol'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = clBlack
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 18
      end
    end
    object cmGravar: TcxLabel
      AlignWithMargins = True
      Left = 102
      Top = 3
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Right = 7
      Align = alLeft
      Caption = 'Salvar (F2)'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleHot.BorderStyle = ebsNone
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.TextColor = clBlue
      StyleHot.TextStyle = [fsUnderline]
      Properties.Alignment.Vert = taVCenter
      OnClick = cmGravarClick
      AnchorY = 18
    end
    object cmCancelar: TcxLabel
      AlignWithMargins = True
      Left = 187
      Top = 3
      Cursor = crHandPoint
      Margins.Left = 5
      Align = alLeft
      Caption = 'Cancelar'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleHot.BorderStyle = ebsNone
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.TextColor = clBlue
      StyleHot.TextStyle = [fsUnderline]
      Properties.Alignment.Vert = taVCenter
      OnClick = cmCancelarClick
      AnchorY = 18
    end
  end
  object panCli: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 77
    Width = 1003
    Height = 38
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 5
  end
  object panValidade: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 36
    Width = 1003
    Height = 41
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Bevel.BorderColor = clRed
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 10
    object lbValidade: TcxLabel
      AlignWithMargins = True
      Left = 130
      Top = 0
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '20/10/2014 - 30 dias'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = True
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleFocused.TextColor = clGray
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clBlue
      StyleHot.TextStyle = [fsBold, fsUnderline]
      Properties.Alignment.Vert = taVCenter
      OnClick = lbValidadeClick
      AnchorY = 21
    end
    object imgValidade: TMyImage
      AlignWithMargins = True
      Left = 6
      Top = 0
      Width = 36
      Height = 41
      Cursor = crHandPoint
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      OnClick = lbValidadeClick
      MouseOverDrawMode = idmShadowed
      MouseOffDrawMode = idmNormal
      MouseDownDrawMode = idmGrayScale
      ImageList = imgs2
      ImageIndex = 0
      Colorize = False
    end
    object lbPromptValidade: TcxLabel
      Left = 42
      Top = 0
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Validade (F7):'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = True
      Style.TextColor = clGray
      Style.IsFontAssigned = True
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clBlack
      StyleHot.TextStyle = [fsUnderline]
      Properties.Alignment.Vert = taVCenter
      OnClick = lbValidadeClick
      AnchorY = 21
    end
  end
  object BarMgr: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmImagens.im16
    ImageOptions.LargeImages = dmImagens.im24
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    ShowHintForDisabledItems = False
    UseBarHintWindow = False
    UseSystemFont = False
    Left = 120
    Top = 304
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 304
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWindow
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWindow
      TextColor = clBlue
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clWhite
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlue
    end
  end
  object tPro: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    FilterOptions = [foCaseInsensitive]
    TableName = 'Produto'
    IndexName = 'IDescricao'
    Left = 120
    Top = 264
    object tProID: TAutoIncField
      FieldName = 'ID'
    end
    object tProCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object tProDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tProUnid: TStringField
      FieldName = 'Unid'
      Size = 5
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
    object tProFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object tProCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
    end
    object tProCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object tProCategoria: TStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object tProObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tProImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tProSubCateg: TStringField
      FieldName = 'SubCateg'
      Size = 35
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
    object tProFidelidade: TBooleanField
      FieldName = 'Fidelidade'
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
    object tProFornecedor: TLongWordField
      FieldName = 'Fornecedor'
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
    object tProtax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tProNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object tProcest: TLongWordField
      FieldName = 'cest'
    end
  end
  object DataSource1: TDataSource
    DataSet = tPro
    Left = 56
    Top = 336
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 232
    Top = 304
  end
  object tCodR: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Produto'
    IndexName = 'ICodigo'
    Left = 240
    Top = 232
  end
  object imgs: TcxImageList
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 11010232
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          00000000000023180C326040218984582EBC996735DAA56F39EBAB7139F5B485
          56F3DACABBEFCBB9A6EFCCB9A7F0E5D6C5FAB2773FFEB2773DFFB3783EFFAF76
          3DFAA26D38E7885B2FC2583B1E7D010000010000000000000000000000000000
          00007E542BB6B3783EFFB1763CFFB1763CFFB3783EFFB1763CFFAF7439FEBD8A
          59FFFEFEFEFE888A8BFF87898BFEFEFEFEFEB47B42FDB2773CFFB0753CFDB076
          3CFEB3783EFFB1763CFFB1763CFFB3783EFF030201050000000000000000321F
          0D4BB1763CFFB3783EFFB0753CFDB0753CFDB3783EFFB0753CFDB0743AFDB77F
          49FFFDFDFDFD848484FF808080FDFDFDFDFDB67E47FDB2763CFFB0753CFDB075
          3CFDB3783EFFB0753CFDB0753CFDB3783EFF4B2F137000000000000000005234
          167AB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB2773CFFB379
          40FFFFFFFFFF7C7C7CFF747474FFFFFFFFFFB9844FFFB2763BFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF5636177F00000000000000004C30
          1472B1763CFFB3783EFFB0753CFDB0753CFDB3783EFFB0753CFDB0753BFDB277
          3EFFFDFDFDFD747474FF707070FDFDFDFDFDBD8A59FDB1753AFFB0753CFDB075
          3CFDB3783EFFB0753CFDB0753CFDB3783EFF4E31147400000000000000003A25
          0F57B1763CFFB3783EFFB0753CFDB0753CFDB3783EFFB0753CFDB0743BFDB57B
          41FFFDFDFDFD717171FF6C6C6CFDF9FDFDFDC29568FDB17539FFB0753CFDB075
          3CFDB3783EFFB0753CFDB0753CFDB3783EFF39240F550000000000000000110B
          0519B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB2763BFFB883
          4DFFFFFFFFFF717171FF6E6E6EFFFBFEFFFFCBA279FFB07438FFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0E08031600000000000000000000
          0000936232D4B3783EFFB0753CFDB0753CFDB3783EFFB0753CFDAF7339FDC191
          61FFFDFDFDFD767676FF707070FDFDFDFDFDD0AF8DFDB07337FFB0753CFDB075
          3CFDB3783EFFB0753CFDB1763CFF8A5725CD0000000000000000000000000000
          00000704010BB3783EFFB1763CFFB0763CFEB3783EFFB0753CFDAE7136FDCEA9
          83FFFDFDFDFD6F6F6FFF696969FDFDFDFDFDDCC2ABFDAF7135FFB0753CFDB075
          3CFDB3783EFFB1763CFFB0753CFD060301090000000000000000000000000000
          0000000000000000000074491FACB3783EFFB3783EFFB3783EFFAF7033FFE3CE
          B7FFEBEDEFFFCFCFD0FFD0D0D0FFE7E8E9FFEFE2D6FFAD6E30FFB3783EFFB378
          3EFFB3783EFF71471EA800000000000000000000000000000000000000000000
          00000000000000000000000000001009031867411C99B1753BFFAD6E30FFFFFF
          FFFFFFFFFFFFCBCBCBCBBDBDBDC0FFFFFFFFFFFFFFFFB07438FFB1753AFF603C
          198E0C0702120000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000190F0526B99D83DD8784
          828B04030304000000000000000000000000504C48559B8C80AD100A05170000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006849
          2992AE7133FFB07336FFAF7135FF9F6830E84734206100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000A06020FAF7439FCB276
          3CFFB1763CFFB3783EFFB0753CFDB1763CFFB0753AFF8C5D2FCA000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000A36D37EBB1763CFFB378
          3EFFB0753CFDB3783EFFB0753CFDB0753CFDB0753CFDB3783EFF7D532AB40000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000432A1163B3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF2216
          0933000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000875524C8B1763CFFB0753CFDB378
          3EFFB0753CFDB3783EFFB0753CFDB0753CFDB0753CFDB3783EFFB1763CFF6E45
          1CA4000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000A7692DF7B1763CFFB0753CFDB378
          3EFFB0753CFDB3783EFFB0753CFDB0753CFDB0753CFDB3783EFFB1763CFF905A
          25D7000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000A5672BF4B3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF905B
          27D6000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000815122BFB1763CFFB0753CFDB378
          3EFFB0753CFDB3783EFFB0753CFDB0753CFDB0753CFDB3783EFFB1763CFF6942
          1B9D000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000035210E4FB1763CFFB0753CFDB378
          3EFFB0753CFDB3783EFFB0753CFDB0753CFDB0753CFDB3783EFFB1763CFF190F
          0427000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000906032CDB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF69421C9B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000936232D4B378
          3EFFB1763CFFB3783EFFB1763CFFB1763CFFB1763CFF6F461EA5000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003C28
          155682572CBBA46E39EA9F6A36E5734D27A52416093500000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000006C000000B6000000B60000003D0000000000000000000000000000
          000000000000000000000000004D000000B6000000B500000089000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000095000000FF000000FF000000570000000000000000000000000000
          000000000000000000000000006F000000FF000000FF000000C2000000000000
          00000000000000000000000000000000000000000000000000000000000D0000
          000300000065000000E5000000FF000000550000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          00000000000000000000000000000000000000000000000000000000005C0000
          003D0000000E00000071000000DE000000560000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000C80000
          00E10000007A0000001A0000003E0000002B0000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000C40000
          00FF000000EB0000009100000029000000030000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000C30000
          00FF000000FF000000F5000000A6000000390000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000040000
          002D000000340000003400000034000000340000003400000034000000CF0000
          00FF000000FF000000FF000000FC000000B90000004A00000004000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000430000
          00AC000000B4000000B4000000B4000000B4000000B4000000B4000000ED0000
          00FF000000FF000000FF000000FF000000FF000000CA0000005E0000000B0000
          000000000000000000000000006C000000FF000000FF000000BE000000A20000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000DA0000003F0000
          000000000000000000000000006C000000FF000000FF000000BE000000A20000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000DA0000003E0000
          000000000000000000000000006C000000FF000000FF000000BE000000430000
          00AC000000B4000000B4000000B4000000B4000000B4000000B4000000EE0000
          00FF000000FF000000FF000000FF000000FF000000CA0000005E0000000B0000
          000000000000000000000000006C000000FF000000FF000000BE000000040000
          002D000000350000003500000035000000350000003500000035000000CF0000
          00FF000000FF000000FF000000FC000000B90000004A00000004000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000C30000
          00FF000000FF000000F5000000A6000000390000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000C40000
          00FF000000EB0000009100000029000000030000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000C80000
          00E10000007A0000001A0000003E0000002B0000000000000000000000000000
          000000000000000000000000006C000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000800000
          0069000000130000004B000000BE000000500000000000000000000000000000
          0000000000000000000000000069000000FF000000FF000000BE000000000000
          00000000000000000000000000000000000000000000000000000000000D0000
          000300000065000000E5000000FF0000008B0000005300000053000000530000
          005300000053000000530000009A000000FF000000FF000000BE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000092000000FF000000FF000000E7000000DB000000DB000000DB0000
          00DB000000DB000000DB000000EB000000FF000000FF000000C1000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000090000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF0000009D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000003B000000C2000000EA000000E7000000E7000000E7000000E70000
          00E7000000E7000000E7000000E7000000EA000000B900000033000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object imgs2: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 12058832
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000595959BD7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF575757B8000000007A7A7AFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF787878FE000000007A7A7AFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF787878FF000000007A7A7AFFFFFF
          FFFFFFFFFFFFA5A5A5FF999999FF999999FF999999FF999999FF999999FFA5A5
          A5FF999999FF999999FF999999FF999999FF999999FFA5A5A5FF999999FF9999
          99FF999999FF999999FF999999FFA5A5A5FF999999FF999999FF999999FF9999
          99FF999999FFA5A5A5FFFFFFFFFFFEFEFEFF787878FF000000007A7A7AFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFFA5A5A5FF999999FF999999FF999999FF999999FF999999FFA5A5
          A5FF999999FF999999FF999999FF999999FF999999FFA5A5A5FF999999FF9999
          99FF999999FF999999FF999999FFA5A5A5FF999999FF999999FF999999FF9999
          99FF999999FFA5A5A5FFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFFA5A5A5FF999999FF999999FF999999FF999999FF999999FFA5A5
          A5FF999999FF999999FF999999FF999999FF999999FFA5A5A5FF999999FF9999
          99FF999999FF999999FF999999FFA5A5A5FF999999FF999999FF999999FF9999
          99FF999999FFA5A5A5FFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFEFEFEFF777777FD00000000797979FFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFEFEFEFF777777FD00000000797979FFFFFF
          FFFFFFFFFFFFA5A5A5FF999999FF999999FF999999FF999999FF999999FFA5A5
          A5FF999999FF999999FF999999FF999999FF999999FFA5A5A5FF999999FF9999
          99FF999999FF999999FF999999FFA5A5A5FF999999FF999999FF999999FF9999
          99FF999999FFA5A5A5FFFFFFFFFFFEFEFEFF777777FD00000000797979FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5
          A5FF999999FF999999FF999999FF999999FF999999FFA5A5A5FF999999FF9999
          99FF999999FF999999FF999999FFA5A5A5FF999999FF999999FF999999FF9999
          99FF999999FFA5A5A5FFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF787878FF00000000797979FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF787878FF00000000B2783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000B2783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFF00000000000000000000000000000000B378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000B2783EFEB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000696969FF696969FF0000
          0000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFF00000000696969FF696969FF00000000B378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000AA723BF2B378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000696969FF696969FF0000
          0000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFF00000000696969FF696969FF00000000B378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF00000000000000000000
          00000000000000000000000000000000000000000000696969FF696969FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000696969FF696969FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000696969FF696969FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000696969FF696969FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object ActionList1: TActionList
    Left = 648
    Top = 192
  end
  object Tab: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    FlipOrder = True
    TableName = 'Orcamento'
    IndexName = 'IUID'
    Left = 368
    Top = 216
    object TabNomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCliente'
      LookupDataSet = Dados.tbCli
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 50
      Lookup = True
    end
    object TabNomeFunc: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFunc'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Func'
      Size = 40
      Lookup = True
    end
    object TabCriadoEm: TDateTimeField
      FieldName = 'CriadoEm'
    end
    object TabAtualizadoEm: TDateTimeField
      FieldName = 'AtualizadoEm'
    end
    object TabAprovadoEm: TDateTimeField
      FieldName = 'AprovadoEm'
    end
    object TabRecusadoEm: TDateTimeField
      FieldName = 'RecusadoEm'
    end
    object TabVendidoEm: TDateTimeField
      FieldName = 'VendidoEm'
    end
    object TabExpiradoEm: TDateTimeField
      FieldName = 'ExpiradoEm'
    end
    object TabStatusAlteradoEm: TDateTimeField
      FieldName = 'StatusAlteradoEm'
    end
    object TabFunc: TStringField
      FieldName = 'Func'
    end
    object TabTotal: TCurrencyField
      FieldName = 'Total'
    end
    object TabDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object TabTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object TabVendido: TBooleanField
      FieldName = 'Vendido'
    end
    object TabObs: TnxMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object TabUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object TabIDSeq: TUnsignedAutoIncField
      FieldName = 'IDSeq'
    end
    object TabRecVer: TLongWordField
      FieldName = 'RecVer'
    end
    object TabStatus: TByteField
      FieldName = 'Status'
    end
    object TabIDVenda: TLongWordField
      FieldName = 'IDVenda'
    end
    object TabCliente: TLongWordField
      FieldName = 'Cliente'
    end
    object TabValData: TDateTimeField
      FieldName = 'ValData'
    end
    object TabValModo: TByteField
      FieldName = 'ValModo'
    end
    object TabValTempo: TWordField
      FieldName = 'ValTempo'
    end
    object TabValUTempo: TByteField
      FieldName = 'ValUTempo'
    end
  end
  object tItens: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'IOrcamento'
    IndexName = 'IOrcamento_UID'
    Left = 432
    Top = 224
    object tItensDescr: TnxMemoField
      FieldName = 'Descr'
      BlobType = ftMemo
    end
    object tItensUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tItensTotal: TCurrencyField
      FieldName = 'Total'
    end
    object tItensDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tItensTotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tItensOrcamento_UID: TGuidField
      FieldName = 'Orcamento_UID'
      Size = 38
    end
    object tItensUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tItensItem: TWordField
      FieldName = 'Item'
    end
    object tItensProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tItensQuant: TFloatField
      FieldName = 'Quant'
    end
  end
end