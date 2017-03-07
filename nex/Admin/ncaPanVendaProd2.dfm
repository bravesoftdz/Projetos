inherited FrmPanVendaProd2: TFrmPanVendaProd2
  Caption = 'FrmPanVendaProd2'
  ClientHeight = 413
  ClientWidth = 1020
  OnResize = FormResize
  ExplicitWidth = 1036
  ExplicitHeight = 452
  PixelsPerInch = 96
  TextHeight = 13
  inherited panVendaProd: TLMDSimplePanel
    Width = 1020
    Height = 413
    Margins.Left = 2
    Margins.Top = 0
    Margins.Right = 2
    Margins.Bottom = 2
    ParentColor = True
    OnResize = panVendaProdResize
    ExplicitWidth = 1020
    ExplicitHeight = 413
    object panInner: TLMDSimplePanel
      Left = 0
      Top = 0
      Width = 1020
      Height = 413
      Hint = ''
      Margins.Top = 0
      Align = alClient
      Bevel.Mode = bmCustom
      ParentColor = True
      TabOrder = 0
      object panBuscaTop: TLMDSimplePanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 1020
        Height = 61
        Hint = ''
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Bevel.BorderSides = [fsBottom]
        Bevel.Mode = bmStandard
        Bevel.StandardStyle = lsNone
        ParentColor = True
        TabOrder = 0
        OnResize = panBuscaTopResize
        object panProd: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 1020
          Height = 61
          Hint = ''
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 1
          Margins.Bottom = 0
          Align = alClient
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          ParentColor = True
          TabOrder = 0
          object panInner2: TLMDSimplePanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 1019
            Height = 61
            Hint = ''
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 1
            Margins.Bottom = 0
            Align = alClient
            Bevel.Mode = bmCustom
            ParentColor = True
            TabOrder = 0
            object panQtd: TLMDSimplePanel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 131
              Height = 61
              Hint = ''
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 1
              Margins.Bottom = 0
              Align = alLeft
              Bevel.BorderSides = [fsRight]
              Bevel.EdgeStyle = etSunkenInner
              Bevel.Mode = bmStandard
              Bevel.StandardStyle = lsNone
              ParentColor = True
              TabOrder = 0
              object edQtd: TcxCurrencyEdit
                AlignWithMargins = True
                Left = 0
                Top = 22
                Cursor = crHandPoint
                Hint = 'Quantidade'
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 7
                Align = alClient
                OnFocusChanged = edQtdFocusChanged
                EditValue = 1.000000000000000000
                ParentFont = False
                Properties.AssignedValues.DisplayFormat = True
                Properties.AssignedValues.EditFormat = True
                Properties.DecimalPlaces = 5
                Properties.ImeName = 'g'
                Properties.OnChange = edQtdPropertiesChange
                Properties.OnEditValueChanged = edQtdPropertiesEditValueChanged
                Style.BorderStyle = ebsFlat
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -19
                Style.Font.Name = 'Segoe UI'
                Style.Font.Style = [fsBold]
                Style.HotTrack = False
                Style.StyleController = FrmPri.cxEditStyleController1
                Style.TransparentBorder = False
                Style.IsFontAssigned = True
                StyleFocused.BorderStyle = ebsFlat
                StyleFocused.TextColor = clBlue
                TabOrder = 0
                OnKeyDown = edQtdKeyDown
                Width = 131
              end
              object cxLabel1: TcxLabel
                AlignWithMargins = True
                Left = 0
                Top = 2
                Cursor = crHandPoint
                Margins.Left = 0
                Margins.Top = 2
                Margins.Right = 0
                Align = alTop
                Caption = 'Quantidade'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Segoe UI'
                Style.Font.Style = []
                Style.TextColor = 5066061
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taBottomJustify
                OnClick = cxLabel1Click
                AnchorY = 19
              end
              object lbUnidade: TcxLabel
                AlignWithMargins = True
                Left = 91
                Top = 25
                Cursor = crHandPoint
                Margins.Left = 2
                Margins.Top = 0
                Margins.Right = 2
                Margins.Bottom = 0
                Caption = 'KG'
                ParentColor = False
                ParentFont = False
                Style.Color = clWhite
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -19
                Style.Font.Name = 'Segoe UI Semibold'
                Style.Font.Style = [fsBold]
                Style.TextColor = 7838275
                Style.TextStyle = []
                Style.TransparentBorder = False
                Style.IsFontAssigned = True
                Properties.Alignment.Vert = taVCenter
                Transparent = True
                OnClick = lbUnidadeClick
                AnchorY = 38
              end
            end
            object btnLancar: TcxButton
              AlignWithMargins = True
              Left = 973
              Top = 10
              Width = 43
              Height = 46
              Cursor = crHandPoint
              Margins.Left = 0
              Margins.Top = 10
              Margins.Bottom = 5
              Align = alRight
              Caption = 'Lan'#231'ar'
              Enabled = False
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              OptionsImage.Glyph.Data = {
                D6050000424DD6050000000000003600000028000000180000000F0000000100
                200000000000A005000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000002F000000CF000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000005F000000EF000000FF000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000F0000009F000000FF000000FF000000FF000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000002F000000DF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
                0000000000EF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
                00000000000F000000BF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
                000000000000000000000000007F000000FF000000FF000000FF000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000FF000000FF000000FF0000000000000000000000000000
                00000000000000000000000000000000004F000000EF000000FF000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000FF000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000001F000000CF000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000FF000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000FF000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000FF000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              OptionsImage.Layout = blGlyphBottom
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.AllowAllUp = True
              SpeedButtonOptions.Flat = True
              TabOrder = 2
              TabStop = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              OnClick = btnLancarClick
            end
            object panValor: TLMDSimplePanel
              AlignWithMargins = True
              Left = 853
              Top = 0
              Width = 120
              Height = 61
              Hint = ''
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alRight
              Bevel.Mode = bmCustom
              ParentColor = True
              TabOrder = 1
              object lbTotal: TcxLabel
                AlignWithMargins = True
                Left = 7
                Top = 22
                Margins.Left = 7
                Margins.Top = 0
                Margins.Right = 7
                Margins.Bottom = 7
                Align = alClient
                ParentFont = False
                Style.BorderStyle = ebsFlat
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -19
                Style.Font.Name = 'Segoe UI'
                Style.Font.Style = [fsBold]
                Style.TextColor = clBlack
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                AnchorX = 113
                AnchorY = 38
              end
              object cxLabel2: TcxLabel
                AlignWithMargins = True
                Left = 7
                Top = 2
                Margins.Left = 7
                Margins.Top = 2
                Margins.Right = 0
                Align = alTop
                Caption = 'Total'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Segoe UI'
                Style.Font.Style = []
                Style.TextColor = 5066061
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taBottomJustify
                AnchorY = 19
              end
            end
            object panEdProd: TLMDSimplePanel
              Left = 152
              Top = 0
              Width = 548
              Height = 61
              Hint = ''
              Align = alClient
              Bevel.Mode = bmCustom
              ParentColor = True
              TabOrder = 3
              object cxLabel3: TcxLabel
                AlignWithMargins = True
                Left = 0
                Top = 2
                Cursor = crHandPoint
                Margins.Left = 0
                Margins.Top = 2
                Margins.Right = 0
                Align = alTop
                Caption = 'Produto'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Segoe UI'
                Style.Font.Style = []
                Style.TextColor = 5066061
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taBottomJustify
                OnClick = cxLabel3Click
                AnchorY = 19
              end
              object panFundoProd: TLMDSimplePanel
                AlignWithMargins = True
                Left = 0
                Top = 22
                Width = 548
                Height = 32
                Hint = ''
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 7
                Align = alClient
                Bevel.Mode = bmStandard
                Color = clWindow
                TabOrder = 1
                object imgBarcodeScan: TImage
                  AlignWithMargins = True
                  Left = 3
                  Top = 1
                  Width = 50
                  Height = 30
                  Hint = 
                    'Utilize um leitor de c'#243'digo de barras para ler o c'#243'digo do produ' +
                    'to. Basta plugar e usar!'
                  Margins.Left = 2
                  Margins.Top = 0
                  Margins.Right = 4
                  Margins.Bottom = 0
                  Align = alLeft
                  AutoSize = True
                  Center = True
                  Constraints.MaxHeight = 64
                  Picture.Data = {
                    0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000003200
                    000020080600000050212B21000000097048597300000EC400000EC401952B0E
                    1B000002AD4944415478DAED984F48226118C61F8B40D0088208232A28C94B47
                    A1438817EB9022245BDBBDF210D1290C3C64586848C7502134B143B974E89F46
                    984228EC498428A2820E61E541935A09D4B2E60D63ABA50D7149B7796018DE6F
                    DEF79DE7F7CD7CCCC770F09F88F3D9060A0A92CD669F024E697231FE4B1EE4D9
                    FB671B29943839224672B99C828D8D8D5CFC22F9F5F847F3FE61FDF383604158
                    10168405293510C0950B0202C137E6DCD1D1F11407022F1ABD1EFF68DEDFEA7F
                    EEEE225356F6262FF898977DAFFEE2E2070B52BC2045B046BE7775E15745C59B
                    3C457737B2BFEDFFBEC8626741581016246F9062D5D705F1783CF0FBFD181919
                    C1FDFD3DE6E7E7D1D6D686DEDE5E389D4E9C9F9F43A3D160696909878787181C
                    1C44269381CD66834C26437B7B3BA6A6A6C0E3F130363686C5C5459C9C9C40AD
                    5623994C6261610162B1184AA592FA343434607878987A8C8F8F43AFD7231C0E
                    C3ED76A3B1B111030303F9814422110C0D0D9119A639D3B8A9A9090683814CAA
                    542A68B55ACCCCCCE0EAEA8A4C78BD5E020C0683D8DEDEC6CDCD0DFAFBFBB1B9
                    B9898989098A4747477176760693C904914844F53D3D3D34493A9D0E66B3196B
                    6B6B585E5E465555151C0E07B85C2EFAFAFAF203D9D9D981CBE542676727EEEE
                    EEB0B7B787FDFD7D1A532814E0F3F9989B9B432814A2A727914868862D160BD2
                    E9348C46236D2B98FAC9C9496C6D6D617D7D1D5D8F5FF2582C4630070707B0DB
                    ED58595981D56A85CFE7C3F4F434565757313B3B0BA9544A90CCF5F2F2F2FC40
                    A2D128AEAFAF21140AE9B7CBD1D111EAEAEA505959494652A914040201E2F138
                    1D2D2D2DB8BDBDC5E9E929CD34A3E3E3633AB7B6B6524D229140737333BDAA4C
                    BFFAFA7A9A10E695ABAEAEA683D1E5E5256A6A6AE8BE4C5D6D6DEDFB6BE4B317
                    6EA154F23FE872FE4BD3F91FC482149B1E000D5A320706C098A5000000004945
                    4E44AE426082}
                  Transparent = True
                  ExplicitHeight = 32
                end
                object edProd: TcxButtonEdit
                  Left = 57
                  Top = 1
                  Cursor = crHandPoint
                  Hint = 
                    'Utilize um leitor de c'#243'digo de barras para ler o c'#243'digo do produ' +
                    'to. Basta plugar e usar!'
                  Margins.Left = 7
                  Margins.Top = 0
                  Margins.Right = 7
                  Margins.Bottom = 7
                  Align = alClient
                  OnFocusChanged = edProdFocusChanged
                  ParentFont = False
                  PopupMenu = popFrm
                  Properties.Buttons = <
                    item
                      Default = True
                    end>
                  Properties.OnButtonClick = edProdPropertiesButtonClick
                  Properties.OnChange = edProdPropertiesChange
                  Style.BorderStyle = ebsNone
                  Style.Color = clWhite
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -19
                  Style.Font.Name = 'Segoe UI'
                  Style.Font.Style = [fsBold]
                  Style.HotTrack = False
                  Style.StyleController = FrmPri.cxEditStyleController1
                  Style.TransparentBorder = False
                  Style.ButtonStyle = btsUltraFlat
                  Style.ButtonTransparency = ebtInactive
                  Style.IsFontAssigned = True
                  StyleFocused.BorderStyle = ebsNone
                  StyleFocused.TextColor = clHotLight
                  TabOrder = 0
                  OnEnter = edCodEnter
                  OnExit = edProdExit
                  OnKeyDown = edProdKeyDown
                  OnKeyUp = edProdKeyUp
                  Width = 490
                end
                object lbDigiteProduto: TcxLabel
                  Left = 63
                  Top = 7
                  Cursor = crHandPoint
                  Caption = 
                    'Digite o C'#243'digo ou Nome do Produto ou use o Leitor de c'#243'digo de ' +
                    'barras'
                  ParentFont = False
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Segoe UI'
                  Style.Font.Style = []
                  Style.HotTrack = True
                  Style.TextColor = 11842740
                  Style.IsFontAssigned = True
                  StyleHot.BorderStyle = ebsNone
                  StyleHot.TextColor = clBlack
                  Transparent = True
                  OnClick = lbDigiteProdutoClick
                end
              end
            end
            object panPreco: TLMDSimplePanel
              AlignWithMargins = True
              Left = 700
              Top = 0
              Width = 153
              Height = 61
              Hint = ''
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alRight
              Bevel.Mode = bmCustom
              ParentColor = True
              TabOrder = 4
              object lbPreco: TcxLabel
                AlignWithMargins = True
                Left = 7
                Top = 2
                Cursor = crHandPoint
                Margins.Left = 7
                Margins.Top = 2
                Margins.Right = 0
                Align = alTop
                Caption = 'Pre'#231'o'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Segoe UI'
                Style.Font.Style = []
                Style.TextColor = 5066061
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taBottomJustify
                OnClick = lbPrecoClick
                AnchorY = 19
              end
              object edUnit: TcxCurrencyEdit
                AlignWithMargins = True
                Left = 7
                Top = 22
                Cursor = crHandPoint
                Margins.Left = 7
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 7
                Align = alClient
                OnFocusChanged = edUnitFocusChanged
                Enabled = False
                ParentFont = False
                Properties.Alignment.Horz = taLeftJustify
                Properties.DecimalPlaces = 10
                Properties.OnChange = edUnitPropertiesChange
                Properties.OnEditValueChanged = edUnitPropertiesEditValueChanged
                Style.BorderStyle = ebsFlat
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -19
                Style.Font.Name = 'Segoe UI Semibold'
                Style.Font.Style = [fsBold]
                Style.HotTrack = False
                Style.TextStyle = []
                Style.TransparentBorder = False
                Style.IsFontAssigned = True
                StyleFocused.BorderColor = clBlue
                StyleFocused.BorderStyle = ebsFlat
                StyleFocused.TextColor = clBlue
                TabOrder = 1
                OnKeyDown = edUnitKeyDown
                Width = 146
              end
            end
            object panConfig: TLMDSimplePanel
              AlignWithMargins = True
              Left = 133
              Top = 0
              Width = 18
              Height = 61
              Hint = ''
              Margins.Left = 1
              Margins.Top = 0
              Margins.Right = 1
              Margins.Bottom = 0
              Align = alLeft
              Bevel.BorderSides = [fsRight]
              Bevel.EdgeStyle = etSunkenInner
              Bevel.Mode = bmStandard
              Bevel.StandardStyle = lsNone
              ParentColor = True
              TabOrder = 5
              object imgConfigOrdem: TMyImage
                Left = 0
                Top = 17
                Width = 18
                Height = 44
                Cursor = crHandPoint
                Hint = 
                  'Clique aqui para configurar a ordem de digita'#231#227'o de dados: come'#231 +
                  'ar por quantidade OU come'#231'ar por produto'
                Align = alBottom
                OnClick = imgConfigOrdemClick
                MouseOverDrawMode = idmNormal
                MouseOffDrawMode = idmFaded
                MouseDownDrawMode = idmGrayScale
                ImageList = ilConfig
                ImageIndex = 0
                Colorize = False
              end
            end
          end
        end
      end
    end
  end
  object lbSize: TcxLabel
    Left = 403
    Top = 168
    Caption = 'lbSize'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object tPro: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    OnCalcFields = tProCalcFields
    TableName = 'Produto'
    IndexName = 'IDescricao'
    Left = 176
    Top = 120
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
  object DataSource1: TDataSource
    DataSet = tPro
    Left = 232
    Top = 120
  end
  object tCodR: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Produto'
    IndexName = 'ICodigo'
    Left = 176
    Top = 168
  end
  object popFrm: TSpTBXFormPopupMenu
    AutoPopup = False
    MenuAnimation = [maTopToBottom]
    OnPopup = popFrmPopup
    AutoSize = True
    SkinType = sknNone
    OnClosePopup = popFrmClosePopup
    OnBeforePopup = popFrmBeforePopup
    Left = 280
    Top = 264
  end
  object TimerPop: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerPopTimer
    Left = 344
    Top = 200
  end
  object TimerSelectAllProd: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerSelectAllProdTimer
    Left = 520
    Top = 208
  end
  object TimerFocoProd: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerFocoProdTimer
    Left = 624
    Top = 160
  end
  object TimerClosePesq: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerClosePesqTimer
    Left = 80
    Top = 168
  end
  object imgsPin: TcxImageList
    Height = 7
    Width = 7
    FormatVersion = 1
    DesignInfo = 6291536
    ImageInfo = <
      item
        Image.Data = {
          FA000000424DFA00000000000000360000002800000007000000070000000100
          200000000000C400000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FF0000FF000000000000000000000000000000000000000000000000FF00
          00FF000000000000000000000000000000000000000000000000FF0000FF0000
          0000000000000000000000000000FF0000FF00000000FF0000FF00000000FF00
          00FF000000000000000000000000FF0000FFFF0000FFFF0000FF000000000000
          0000000000000000000000000000FF0000FF000000000000000000000000}
      end
      item
        Image.Data = {
          FA000000424DFA00000000000000360000002800000007000000070000000100
          200000000000C400000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000071000071FF00
          00FF7100007100000000000000000000000000000000FF0000FFFF0000FFFF00
          00FF0000000000000000000000000000000071000071FF0000FF710000710000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          FA000000424DFA00000000000000360000002800000007000000070000000100
          200000000000C400000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000F0F0F1C6D6D
          6DC68D8D8DFF6D6D6DC60F0F0F1C00000000000000006D6D6DC68D8D8DFF8D8D
          8DFF8D8D8DFF6D6D6DC600000000000000008D8D8DFF8D8D8DFF8D8D8DFF8D8D
          8DFF8D8D8DFF00000000000000006D6D6DC68D8D8DFF8D8D8DFF8D8D8DFF6D6D
          6DC600000000000000000F0F0F1C6D6D6DC68D8D8DFF6D6D6DC60F0F0F1C0000
          000000000000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          FA000000424DFA00000000000000360000002800000007000000070000000100
          200000000000C400000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001C00001CC600
          00C6FF0000FFC60000C61C00001C0000000000000000C60000C6FF0000FFFF00
          00FFFF0000FFC60000C60000000000000000FF0000FFFF0000FFFF0000FFFF00
          00FFFF0000FF0000000000000000C60000C6FF0000FFFF0000FFFF0000FFC600
          00C600000000000000001C00001CC60000C6FF0000FFC60000C61C00001C0000
          000000000000000000000000000000000000000000000000000000000000}
      end>
  end
  object TimerAutoPop: TTimer
    Enabled = False
    OnTimer = TimerAutoPopTimer
    Left = 152
    Top = 256
  end
  object ilConfig: TcxImageList
    Height = 20
    Width = 11
    FormatVersion = 1
    DesignInfo = 9961504
    ImageInfo = <
      item
        Image.Data = {
          A6030000424DA60300000000000036000000280000000B000000140000000100
          2000000000007003000000000000000000000000000000000000000000000000
          00000000000000000000AD6D2EFF000000000000000000000000000000000000
          000000000000000000000000000000000000AD6D2EFFAD6D2EFF000000000000
          0000000000000000000000000000000000000000000000000000AD6D2EFFAD6D
          2EFFAD6D2EFF0000000000000000000000000000000000000000000000000000
          0000AD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D
          2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D
          2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFF03020104AD6D2EFFAD6D
          2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D
          2EFF0000000003020104AD6D2EFFAD6D2EFFAD6D2EFF00000000000000000000
          0000000000000000000000000000000000000000000003020105AD6D2EFFAD6D
          2EFF000000000000000000000000000000000000000000000000000000000000
          00000000000003020105AD6D2EFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000AD6D2EFF030201050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AD6D2EFFAD6D2EFF03020105000000000000000000000000000000000000
          0000000000000000000000000000AD6D2EFFAD6D2EFFAD6D2EFF030201040000
          0000AD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D
          2EFFAD6D2EFFAD6D2EFF03020104AD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D
          2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D
          2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFA96A
          2DF900000000000000000000000000000000000000000000000000000000AD6D
          2EFFAD6D2EFFAD6D2EFF00000000000000000000000000000000000000000000
          00000000000000000000AD6D2EFFAD6D2EFF0000000000000000000000000000
          00000000000000000000000000000000000000000000AD6D2EFF000000000000
          00000000000000000000}
      end>
  end
  object tME: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'MovEst'
    Left = 464
    Top = 280
    object tMEID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tMEUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tMEID_ref: TLongWordField
      FieldName = 'ID_ref'
    end
    object tMETran: TLongWordField
      FieldName = 'Tran'
    end
    object tMEItem: TByteField
      FieldName = 'Item'
    end
    object tMEtax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tMEtax_incluido: TCurrencyField
      FieldName = 'tax_incluido'
    end
    object tMEtax_incluir: TCurrencyField
      FieldName = 'tax_incluir'
    end
    object tMEProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tMEQuant: TFloatField
      FieldName = 'Quant'
    end
    object tMEUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object tMETotal: TCurrencyField
      FieldName = 'Total'
    end
    object tMETotLiq: TCurrencyField
      FieldName = 'TotLiq'
    end
    object tMECustoU: TCurrencyField
      FieldName = 'CustoU'
    end
    object tMECustoT: TCurrencyField
      FieldName = 'CustoT'
    end
    object tMELucro: TCurrencyField
      FieldName = 'Lucro'
    end
    object tMEDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object tMEDescr: TWideStringField
      FieldName = 'Descr'
      Size = 100
    end
    object tMEObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object tMETotalFinal: TCurrencyField
      FieldName = 'TotalFinal'
    end
    object tMEPago: TCurrencyField
      FieldName = 'Pago'
    end
    object tMEPagoPost: TCurrencyField
      FieldName = 'PagoPost'
    end
    object tMEDescPost: TCurrencyField
      FieldName = 'DescPost'
    end
    object tMEDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tMEPend: TBooleanField
      FieldName = 'Pend'
    end
    object tMEIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tMEEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tMECancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tMEAjustaCusto: TBooleanField
      FieldName = 'AjustaCusto'
    end
    object tMEEstoqueAnt: TFloatField
      FieldName = 'EstoqueAnt'
    end
    object tMECliente: TLongWordField
      FieldName = 'Cliente'
    end
    object tMECaixa: TIntegerField
      FieldName = 'Caixa'
    end
    object tMECategoria: TStringField
      FieldName = 'Categoria'
    end
    object tMENaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tMEITran: TIntegerField
      FieldName = 'ITran'
    end
    object tMETipoTran: TByteField
      FieldName = 'TipoTran'
    end
    object tMESessao: TIntegerField
      FieldName = 'Sessao'
    end
    object tMEDebDev: TCurrencyField
      FieldName = 'DebDev'
    end
    object tMEComissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object tMEComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object tMEComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object tMEVenDev: TBooleanField
      FieldName = 'VenDev'
    end
    object tMEPermSemEstoque: TBooleanField
      FieldName = 'PermSemEstoque'
    end
    object tMEFidResgate: TBooleanField
      FieldName = 'FidResgate'
    end
    object tMEFidPontos: TFloatField
      FieldName = 'FidPontos'
    end
    object tMERecVer: TLongWordField
      FieldName = 'RecVer'
    end
  end
  object tXML: TnxTable
    ActiveRuntime = True
    ActiveDesigntime = True
    Database = Dados.db
    TableName = 'xmls_compra'
    IndexName = 'ITran'
    Left = 528
    Top = 104
    object tXMLxml: TnxMemoField
      FieldName = 'xml'
      BlobType = ftMemo
    end
    object tXMLtran: TLongWordField
      FieldName = 'tran'
    end
  end
end
