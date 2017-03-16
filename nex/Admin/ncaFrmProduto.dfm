object FrmProduto: TFrmProduto
  Left = 282
  Top = 164
  ActiveControl = LC
  Caption = 'Dados do Produto ou Servi'#231'o'
  ClientHeight = 661
  ClientWidth = 1141
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
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
  TextHeight = 17
  object imgBarcodeScan: TImage
    AlignWithMargins = True
    Left = 7
    Top = 56
    Width = 57
    Height = 52
    Hint = 
      'Voc'#234' pode utilizar um leitor de c'#243'digo de barras para cadastrar ' +
      'o c'#243'digo do produto. Basta plugar e usar!'
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
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
    OnClick = imgBarcodeScanClick
  end
  object LMDSimplePanel2: TLMDSimplePanel
    Left = 0
    Top = 44
    Width = 1141
    Height = 617
    Hint = ''
    Margins.Left = 0
    Margins.Top = 7
    Margins.Right = 0
    Margins.Bottom = 7
    Align = alClient
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 0
    object Paginas: TcxPageControl
      Left = 0
      Top = 0
      Width = 934
      Height = 617
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 7
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = tsDados
      Properties.CustomButtons.Buttons = <>
      Properties.HotTrack = True
      Properties.NavigatorPosition = npLeftTop
      Properties.Style = 6
      Properties.TabHeight = 16
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 617
      ClientRectRight = 934
      ClientRectTop = 28
      object tsDados: TcxTabSheet
        Caption = 'Dados'
        ImageIndex = 91
        object panCad: TLMDSimplePanel
          AlignWithMargins = True
          Left = 7
          Top = 7
          Width = 927
          Height = 582
          Hint = ''
          Margins.Left = 7
          Margins.Top = 7
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Bevel.BorderColor = clBtnText
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          TabOrder = 0
          object LC: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 927
            Height = 582
            Margins.Left = 7
            Margins.Top = 7
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            LayoutLookAndFeel = lfProd
            OptionsImage.Images = dmImagens.im24
            object dxBevel1: TdxBevel
              Left = 10
              Top = 103
              Width = 890
              Height = 5
              Shape = dxbsLineCenteredVert
            end
            object img: TImage
              Left = 10000
              Top = 10000
              Width = 48
              Height = 48
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              AutoSize = True
              Constraints.MaxHeight = 48
              Constraints.MinWidth = 48
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
                0000003008060000005702F987000000017352474200AECE1CE9000000046741
                4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
                000651494441546843D5985B6C54551486B98A0113630CFA60220F46E5C134F1
                41628C31C20B468BA02025A951E3157CA025B5174B63F4018A56A4B480102F95
                D42A9896516AA1530484D2F482D32A6DDA5229B74A531BAA9502BD4DBBFDFFCD
                D9877DCEEC694FC781382BF932FBACBDD65EFF9AD9FBCC9999248488698CCE58
                C2E88C258CCE58C2E88C258CCE58C2E88C258CCE58C2E88C25263D53B26E3E68
                01E27F0E35CE3735100BE2152DA6064C8192BEC17EC4DC5C7B764FB6518B02E6
                AD8184BD1BC5E8E828136EAABDBA7FAB518F02E6AD81DC5F4A19ECD97A07AE88
                EF5AAB44FA9142F1D2BE3C09C7F471CEABB1AE498F02367E03AFECCB173D572F
                31D893F9CFFC2A5EF82127641D05E718E3C54EF7FE29168DB18D60E60696F836
                8837FD9F8A2F4EFC34A177ACA8F9684891EA0B27457D577B889FB15EAC02CD86
                3B0B30730391586547B3BD30B7CCE768FEE0B91322383222464647C4CFE79BC4
                D686FD6299F6E930C765BDA0026C075F8100089EFDA75BE405CAC41BFE6DF2CD
                55F9B0E834D03F3C28127FCC95B91B6A7D622038240F7D6BCF1FF295B4FDD529
                632F623BAEAAD8216399C35C581D5808A603872870075805AE2D00D3743A6223
                6E605F7B40E62DC7DD6A607848FAD65797481F3F01C2F16E1C621AB795556BB8
                AC3D9009D734E01063E076500C542E878E98881B585B5924F35656F093BF662B
                4A374A9FDEC0F3DF7F246F0A569D119088505B404646C65250098405C74BB598
                C9E0132B1FC3EBB924E20696EFFD58E6C597ACB7B70A5FB36BF68820F6BF6AC0
                451EC26461889C0ADA2DD1263837D58A9F81DC035C43E52B226AE02AF6B0CA23
                FCD2DBD356232E0D5EB522847D067C6DB5E2F5F26D8CEB00B7624A3530A0890D
                C7808A47EEFD8087C753038E20173884438E06148B71B7C8AAFC8621D22EF4F5
                C8D7A1E0B0D8787CEFBB18CA3520ACCC25742CCA541E6A14AAB12292061A81BD
                8514EA56C92DA58CD7EF57ED969FC66070380E2E8A9FED12E885D9CCC57AFAD9
                908CD9C01319A542A17C60332FD4215E575D2C6F93CD173BE435A1601AC7F1E0
                CAD0C0DFB894FB1962D25CE2BC90C65CAC77375F75C66BE0A2D6C44396FF3106
                E05628F3DEF26F975B84C6E71E6E231E60DA12DF87A2F8643587F540AE093185
                2E715E08D93A8AF11A68D41A5862F9F94ED6AA1813F804788FB71B0B74B5EB0D
                14B8C479A140E5BB09D700EFBD6CA0506B60077D168F6AE3704CFBECB70362CD
                A102AEDF03E49A10B3DA25CE0BAB998B35EED2D697D80DBC8C2F9B770EEF14BB
                5A8E71CFCEE424442FD31AB80CEED193717DAF364FF896DBF358779A5A1F3C48
                1FC4CC7289F3C22C6BBDE7F4F589DD800E9E4A1FE72404DD02CE6B02CB81FA72
                91E0FA3E6DDED804EF50FE330D29CA0741133907F6FEC75A5FAAB1C2D800F856
                054050A24BA00FDCA62F82EBB9DA3C713481C7733EB0FD0E66285F7A7A7A3730
                0996708E312A1E9AE600FEC6B5D725E11A18C473CD9D2A088276BA049E05AF01
                F9D15A3171D69CC2D1046013EFE9BEB4B4B4C6D4D4542956174E1FE7541CF44C
                077E6A533E45B806C8D72A0862A683124D9C6210348123E0B0E5D3E163AA2AC6
                3B131F91EDE2242727E7E9F48C8CC09A94144138A64F8F81969920139CD3FD84
                9363FDADF2A20A8498292013F45BE2BCA23761939F9F5FD077F972695B4BCB02
                F71C7D9C638CEE879E90DF0E748EF5C7D61058AC2740D01C900BBA2C8163A2E7
                126C9104D09E9C9C2CCACBCB392F2D38325A4AAC4B39C718C632072EC73A0AA3
                D30B1037193C009E0209C07DD811763D1EFB7B0A18D5F73AF63963446F438DA8
                7A78B684631AE718A3E2ADDC959872E8705C440AC4B299B0E28926C426292949
                9C3A758AB1A27EC593121A7D9C33E500C7BF738E229110A9789282435B5454C4
                78717C619C84461FE74C391676138E4213E5BF8827721B65AE15FD4D0151BB60
                AE8463FA5CDBC7443CD777149B281EC4FB5C454348C63BDDDDD62C028B1E9170
                4C9F29D6858F351C05A30D8A74BA8A86C0ADD2D4D22A5ADF5E2EE1789CEDA3E0
                0FF11BDE80A9B003DE6DFC070F89CE6DD9128EE933C5BA610D63E168612A6A62
                D3962D76031C9B624CB086B170B4301535B169739E381DA895706C8A31C11AC6
                C2D10245AADD454D64656589C6C64609C7A61803FCAD7AC31B9809C63DC8BC65
                1617174B3CDC3E09D7943FBA8C85A30D8ACD031F805DC00F8E813A506B5107E1
                4789DB0F18CB1CE6728D79FADA8E42B18798F42F83D6EEE81A833BA100000000
                49454E44AE426082}
              Visible = False
            end
            object dxBevel2: TdxBevel
              Left = 10
              Top = 265
              Width = 890
              Height = 3
              Shape = dxbsLineCenteredVert
            end
            object edCodigo: TcxDBMaskEdit
              Left = 140
              Top = -71
              OnFocusChanged = edCodigoFocusChanged
              DataBinding.DataField = 'Codigo'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.MaxLength = 0
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI Semibold'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.StyleController = escFlat
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Width = 189
            end
            object edDescr: TcxDBTextEdit
              Left = 140
              Top = -8
              DataBinding.DataField = 'Descricao'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI Semibold'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.StyleController = escFlat
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 760
            end
            object edPreco: TcxDBCurrencyEdit
              Left = 140
              Top = 116
              DataBinding.DataField = 'Preco'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.DecimalPlaces = 10
              Properties.OnChange = edPrecoPropertiesChange
              Properties.OnEditValueChanged = edPrecoPropertiesEditValueChanged
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.HotTrack = False
              Style.StyleController = escFlat
              Style.IsFontAssigned = True
              StyleDisabled.TextColor = clBlack
              TabOrder = 9
              Width = 189
            end
            object edCusto: TcxDBCurrencyEdit
              Left = 140
              Top = 153
              DataBinding.DataField = 'CustoUnitario'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.DecimalPlaces = 10
              Properties.OnChange = edCustoPropertiesChange
              Properties.OnEditValueChanged = edCustoPropertiesEditValueChanged
              Style.StyleController = escFlat
              TabOrder = 12
              Width = 189
            end
            object cbPrecoAuto: TcxDBCheckBox
              Left = 337
              Top = 120
              Cursor = crHandPoint
              Caption = 'Autom'#225'tico'
              DataBinding.DataField = 'PrecoAuto'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.FullFocusRect = True
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.OnEditValueChanged = cbPrecoAutoPropertiesEditValueChanged
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.StyleController = escFlat
              Style.TextColor = clGrayText
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 10
              Transparent = True
            end
            object edMarkup: TcxCurrencyEdit
              Left = 140
              Top = 190
              OnFocusChanged = edMarkupFocusChanged
              ParentFont = False
              Properties.DisplayFormat = '0.##%'
              Properties.EditFormat = '#.##'
              Properties.OnChange = edMarkupPropertiesChange
              Properties.OnEditValueChanged = edMarkupPropertiesEditValueChanged
              Style.HotTrack = False
              Style.StyleController = escFlat
              TabOrder = 13
              Width = 189
            end
            object lbInfoMarkup: TcxLabel
              Left = 140
              Top = 227
              Caption = 
                'Markup '#233' o percentual a ser acrescentado sobre o pre'#231'o de custo ' +
                'para gerar o pre'#231'o de venda. '#13#10'Exemplo: um markup de 50% sobre u' +
                'm custo de R$ 100 gera um pre'#231'o de venda de R$ 150.'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clHotLight
              Style.Font.Height = -12
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              Properties.WordWrap = True
              Transparent = True
              Width = 498
            end
            object lbMarkup: TcxLabel
              Left = 484
              Top = 196
              Cursor = crHandPoint
              Caption = 'Definir Markup Padr'#227'o'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsUnderline]
              Style.HotTrack = True
              Style.TextColor = clGray
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsNone
              StyleFocused.TextColor = clHotLight
              StyleHot.BorderStyle = ebsNone
              StyleHot.TextColor = clHotLight
              Transparent = True
              OnClick = lbMarkupClick
            end
            object cbSeguirMarkupPadrao: TcxDBCheckBox
              Left = 337
              Top = 194
              Cursor = crHandPoint
              OnFocusChanged = edMarkupFocusChanged
              Caption = 'Seguir Markup Padr'#227'o'
              DataBinding.DataField = 'SeguirMargemPadrao'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.Alignment = taLeftJustify
              Properties.FullFocusRect = True
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.OnEditValueChanged = cbSeguirMarkupPadraoPropertiesEditValueChanged
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.StyleController = escFlat
              Style.TextColor = clGrayText
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 14
              Transparent = True
            end
            object edAtual: TcxCurrencyEdit
              Left = 10000
              Top = 10000
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              EditValue = 0.000000000000000000
              ParentFont = False
              Properties.DecimalPlaces = 5
              Properties.DisplayFormat = '0.####'
              Properties.EditFormat = '0.####'
              Properties.ImeName = 'g'
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.StyleController = escFlat
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 17
              Visible = False
              Width = 189
            end
            object cbNaoControlaEstoque: TcxDBCheckBox
              Left = 10000
              Top = 10000
              Cursor = crHandPoint
              Caption = 'N'#227'o controlar estoque'
              DataBinding.DataField = 'NaoControlaEstoque'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.FullFocusRect = True
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.OnEditValueChanged = cbNaoControlaEstoquePropertiesEditValueChanged
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.StyleController = escFlat
              Style.TextColor = clGrayText
              Style.IsFontAssigned = True
              TabOrder = 18
              Transparent = True
              Visible = False
            end
            object edUnid: TcxDBLookupComboBox
              Left = 10000
              Top = 10000
              DataBinding.DataField = 'LookupUnid'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.ClearKey = 46
              Properties.DropDownHeight = 200
              Properties.DropDownRows = 400
              Properties.DropDownWidth = 400
              Properties.ImmediateDropDownWhenActivated = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'Descricao'
              Properties.ListColumns = <
                item
                  FieldName = 'Descricao'
                end>
              Properties.ListOptions.CaseInsensitive = True
              Properties.ListOptions.ColumnSorting = False
              Properties.ListOptions.FocusRowOnMouseMove = False
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.PostPopupValueOnTab = True
              Properties.Revertable = True
              Properties.OnInitPopup = edUnidPropertiesInitPopup
              Style.StyleController = escFlat
              TabOrder = 19
              Visible = False
              OnKeyDown = edUnidKeyDown
              Width = 189
            end
            object cbVendaFrac: TcxDBCheckBox
              Left = 10000
              Top = 10000
              Cursor = crHandPoint
              Caption = 'Permite fracionamento (Ex: venda por peso/kg)'
              DataBinding.DataField = 'PermiteVendaFracionada'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.FullFocusRect = True
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.StyleController = escFlat
              Style.TextColor = clGrayText
              Style.IsFontAssigned = True
              TabOrder = 20
              Transparent = True
              Visible = False
            end
            object edLimites: TcxPopupEdit
              Left = 10000
              Top = 10000
              ParentFont = False
              Properties.OnInitPopup = edLimitesPropertiesInitPopup
              Style.StyleController = escFlat
              TabOrder = 21
              Visible = False
              OnEnter = edLimitesEnter
              Width = 189
            end
            object edNCM: TcxDBButtonEdit
              Left = 10000
              Top = 10000
              OnFocusChanged = edNCMFocusChanged
              DataBinding.DataField = 'NCM'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClearKey = 46
              Properties.MaskKind = emkRegExpr
              Properties.EditMask = '\d+'
              Properties.ReadOnly = False
              Properties.OnButtonClick = edNCMPropertiesButtonClick
              Properties.OnChange = edNCMPropertiesChange
              Style.StyleController = escFlat
              TabOrder = 25
              Visible = False
              Width = 109
            end
            object lbNCM: TcxLabel
              Left = 10000
              Top = 10004
              Caption = 'lbNCM'
              ParentFont = False
              Style.HotTrack = False
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              Visible = False
              AnchorY = 10015
            end
            object lbInfoNCM: TcxLabel
              Left = 10000
              Top = 10000
              Caption = 
                'NCM: Nomeclatura Comum do Mercosul. Esse campo '#233' necess'#225'rio para' +
                ' a emiss'#227'o de NF.'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clHotLight
              Style.Font.Height = -12
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              Properties.WordWrap = True
              Transparent = True
              Visible = False
              Width = 472
            end
            object edCest: TcxDBButtonEdit
              Left = 10000
              Top = 10000
              OnFocusChanged = edCestFocusChanged
              AutoSize = False
              DataBinding.DataField = 'cest'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClearKey = 46
              Properties.MaskKind = emkRegExpr
              Properties.EditMask = '\d+'
              Properties.ReadOnly = False
              Properties.OnButtonClick = edCestPropertiesButtonClick
              Properties.OnChange = edCestPropertiesChange
              Style.HotTrack = False
              Style.StyleController = escFlat
              TabOrder = 28
              Visible = False
              Height = 29
              Width = 109
            end
            object lbCEST: TcxLabel
              Left = 10000
              Top = 10004
              Cursor = crHandPoint
              Caption = 'lbCEST'
              ParentFont = False
              Style.HotTrack = False
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              Visible = False
              OnClick = lbCESTClick
              AnchorY = 10015
            end
            object lbInfoCest: TcxLabel
              Left = 10000
              Top = 10000
              AutoSize = False
              Caption = 
                'CEST: C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria. Pressione' +
                ' F5 para pesquisar.'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clHotLight
              Style.Font.Height = -12
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              Properties.WordWrap = True
              Transparent = True
              Visible = False
              OnClick = lbCESTClick
              Height = 18
              Width = 690
            end
            object edBrTrib: TcxDBButtonEdit
              Left = 10000
              Top = 10000
              OnFocusChanged = edBrTribFocusChanged
              DataBinding.DataField = 'brtrib'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClearKey = 46
              Properties.MaskKind = emkRegExpr
              Properties.EditMask = '\d+'
              Properties.ReadOnly = False
              Properties.OnButtonClick = edBrTribPropertiesButtonClick
              Properties.OnChange = edBrTribPropertiesChange
              Style.HotTrack = False
              Style.StyleController = escFlat
              TabOrder = 31
              Visible = False
              OnKeyDown = edBrTribKeyDown
              OnKeyPress = edBrTribKeyPress
              Width = 109
            end
            object lbBrTrib: TcxLabel
              Left = 10000
              Top = 10004
              Caption = 'lbBrTrib'
              ParentFont = False
              Style.HotTrack = False
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              Visible = False
              AnchorY = 10015
            end
            object lbInfoBrTrib: TcxLabel
              Left = 10000
              Top = 10000
              Caption = 
                'Digite o c'#243'digo de tributa'#231#227'o ou pressione F5. Esse campo '#233' obri' +
                'gat'#243'rio para emiss'#227'o de NF. '
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clHotLight
              Style.Font.Height = -12
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              Properties.WordWrap = True
              Transparent = True
              Visible = False
              Width = 490
            end
            object edICMSST: TcxButtonEdit
              Left = 10000
              Top = 10000
              OnFocusChanged = edICMSSTFocusChanged
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = edICMSSTPropertiesButtonClick
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 34
              Text = 'por MVA'
              Visible = False
              OnKeyDown = edICMSSTKeyDown
              OnKeyPress = edICMSSTKeyPress
              Width = 109
            end
            object lbDescrSt: TcxLabel
              Left = 10000
              Top = 10004
              Caption = 'Pauta'
              ParentFont = False
              Style.HotTrack = False
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              Visible = False
              AnchorY = 10015
            end
            object lbHintSt: TcxLabel
              Left = 10000
              Top = 10000
              AutoSize = False
              Caption = 
                'ICMS ST: Pressione F9 para definir as regras de c'#225'lculo do ICMS ' +
                'com substitui'#231#227'o tribut'#225'ria para esse produto. '
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clHotLight
              Style.Font.Height = -12
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              Properties.WordWrap = True
              Transparent = True
              Visible = False
              OnClick = lbCESTClick
              Height = 18
              Width = 765
            end
            object panFornecedores: TLMDSimplePanel
              Left = 10000
              Top = 10000
              Width = 852
              Height = 61
              Hint = ''
              Bevel.Mode = bmCustom
              TabOrder = 37
              Visible = False
            end
            object edObs: TcxDBMemo
              Left = 10000
              Top = 10000
              DataBinding.DataField = 'Obs'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 38
              Visible = False
              Height = 126
              Width = 852
            end
            object edComissaoPerc: TcxCurrencyEdit
              AlignWithMargins = True
              Left = 10000
              Top = 10000
              Margins.Left = 7
              Margins.Top = 7
              Margins.Right = 7
              Margins.Bottom = 7
              EditValue = 0.000000000000000000
              Enabled = False
              ParentFont = False
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '0.##%'
              Properties.EditFormat = '#.##'
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfFlat
              Style.StyleController = FrmPri.escFlat
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.TextStyle = []
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.Kind = lfFlat
              TabOrder = 39
              Visible = False
              Width = 161
            end
            object panPend: TLMDSimplePanel
              AlignWithMargins = True
              Left = 10000
              Top = 10000
              Width = 852
              Height = 240
              Hint = ''
              Margins.Left = 7
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Bevel.Mode = bmStandard
              TabOrder = 50
              Visible = False
            end
            object edComissaoLucro: TcxComboBox
              AlignWithMargins = True
              Left = 10000
              Top = 10000
              Margins.Left = 7
              Margins.Top = 7
              Margins.Right = 7
              Margins.Bottom = 7
              Enabled = False
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.ImmediateDropDownWhenActivated = True
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items.Strings = (
                'Pre'#231'o de Venda'
                'Lucro')
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.LookAndFeel.Kind = lfFlat
              Style.StyleController = FrmPri.cxEditStyleController1
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.Kind = lfFlat
              TabOrder = 42
              Text = 'Pre'#231'o de Venda'
              Visible = False
              Width = 161
            end
            object btnPremium: TcxButton
              AlignWithMargins = True
              Left = 10000
              Top = 10000
              Width = 120
              Height = 35
              Cursor = crHandPoint
              Margins.Left = 0
              Margins.Top = 9
              Margins.Right = 0
              Margins.Bottom = 9
              Caption = 'Recurso PRO'
              LookAndFeel.Kind = lfFlat
              OptionsImage.ImageIndex = 85
              OptionsImage.Images = dmImagens.im16
              TabOrder = 43
              Visible = False
              OnClick = btnPremiumClick
            end
            object cbComissaoPadrao: TcxCheckBox
              AlignWithMargins = True
              Left = 10000
              Top = 10000
              Cursor = crHandPoint
              Margins.Left = 70
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Caption = 'Seguir percentual padr'#227'o'
              Enabled = False
              ParentFont = False
              State = cbsChecked
              Style.HotTrack = False
              Style.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.Kind = lfFlat
              TabOrder = 40
              Visible = False
              OnClick = cbComissaoPadraoClick
            end
            object lbConfigComissao: TcxLabel
              Left = 10000
              Top = 10006
              Cursor = crHandPoint
              Margins.Top = 0
              Caption = 'Configurar padr'#227'o'
              Enabled = False
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = True
              Style.TextColor = clGray
              Style.TextStyle = [fsUnderline]
              Style.IsFontAssigned = True
              StyleHot.BorderStyle = ebsNone
              StyleHot.TextColor = clHotLight
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnClick = lbConfigComissaoClick
              AnchorY = 10015
            end
            object imgFid: TMyImage
              Left = 10000
              Top = 10000
              Width = 48
              Height = 48
              Visible = False
              MouseOverDrawMode = idmNormal
              MouseOffDrawMode = idmNormal
              MouseDownDrawMode = idmGrayScale
              ImageList = cxImageList1
              ImageIndex = 0
              Colorize = False
            end
            object edFidPontos: TcxDBSpinEdit
              Left = 10000
              Top = 10000
              Cursor = crHandPoint
              DataBinding.DataField = 'FidPontos'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.ImmediatePost = True
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.StyleController = FrmPri.cxEditStyleController1
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11206655
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 48
              Visible = False
              Width = 100
            end
            object edFidelidade: TcxDBCheckBox
              Left = 10000
              Top = 10000
              Cursor = crHandPoint
              Caption = 'Este produto pode ser resgatado como pr'#234'mio'
              DataBinding.DataField = 'Fidelidade'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Style.HotTrack = False
              TabOrder = 47
              Visible = False
              OnClick = edFidelidadeClick
            end
            object lbFidelidade: TcxLabel
              AlignWithMargins = True
              Left = 10000
              Top = 10000
              Caption = 
                'Fideliza'#231#227'o de clientes por ac'#250'mulo de pontos e resgate de pr'#234'mi' +
                'os: '
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI Semibold'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.TextStyle = []
              Style.IsFontAssigned = True
              Properties.Alignment.Vert = taVCenter
              Visible = False
              AnchorY = 10011
            end
            object lbOpcoesFid: TcxLabel
              AlignWithMargins = True
              Left = 10000
              Top = 10002
              Cursor = crHandPoint
              Caption = 'Ativar sistema de fideliza'#231#227'o'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = True
              Style.TextStyle = [fsUnderline]
              Style.IsFontAssigned = True
              StyleHot.BorderStyle = ebsNone
              StyleHot.TextColor = clHotLight
              Properties.Alignment.Vert = taVCenter
              Visible = False
              OnClick = lbOpcoesFidClick
              AnchorY = 10011
            end
            object edCateg: TcxDBLookupComboBox
              Left = 140
              Top = 29
              DataBinding.DataField = 'LookupCateg'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.ClearKey = 46
              Properties.DropDownHeight = 400
              Properties.DropDownListStyle = lsEditList
              Properties.DropDownRows = 400
              Properties.DropDownWidth = 300
              Properties.GridMode = True
              Properties.HideSelection = False
              Properties.ImmediateDropDownWhenActivated = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'Descricao'
              Properties.ListColumns = <
                item
                  FieldName = 'Descricao'
                end>
              Properties.ListOptions.CaseInsensitive = True
              Properties.ListOptions.ColumnSorting = False
              Properties.ListOptions.FocusRowOnMouseMove = False
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.PostPopupValueOnTab = True
              Properties.Revertable = True
              Properties.OnChange = edCategPropertiesChange
              Properties.OnInitPopup = edCategPropertiesInitPopup
              Style.StyleController = escFlat
              TabOrder = 5
              OnKeyDown = edCategKeyDown
              Width = 189
            end
            object edMarca: TcxDBLookupComboBox
              Left = 140
              Top = 66
              DataBinding.DataField = 'NomeMarca'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.ClearKey = 46
              Properties.DropDownHeight = 200
              Properties.DropDownListStyle = lsEditList
              Properties.DropDownRows = 400
              Properties.DropDownWidth = 300
              Properties.GridMode = True
              Properties.HideSelection = False
              Properties.ImmediateDropDownWhenActivated = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'UID'
              Properties.ListColumns = <
                item
                  FieldName = 'Nome'
                end>
              Properties.ListOptions.CaseInsensitive = True
              Properties.ListOptions.ColumnSorting = False
              Properties.ListOptions.FocusRowOnMouseMove = False
              Properties.ListOptions.GridLines = glNone
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsMarca
              Properties.PostPopupValueOnTab = True
              Properties.Revertable = True
              Properties.OnInitPopup = edMarcaPropertiesInitPopup
              Style.HotTrack = False
              Style.StyleController = escFlat
              TabOrder = 6
              OnKeyDown = edMarcaKeyDown
              Width = 189
            end
            object edPesoLiq: TcxDBCurrencyEdit
              Left = 814
              Top = 29
              TabStop = False
              DataBinding.DataField = 'PesoLiq'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.DecimalPlaces = 3
              Properties.DisplayFormat = '0.###'
              Properties.EditFormat = '0.###'
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 7
              Width = 86
            end
            object edPesoBruto: TcxDBCurrencyEdit
              Left = 814
              Top = 66
              TabStop = False
              AutoSize = False
              DataBinding.DataField = 'PesoBruto'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.DecimalPlaces = 3
              Properties.DisplayFormat = '0.###'
              Properties.EditFormat = '0.###'
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              TabOrder = 8
              Height = 29
              Width = 86
            end
            object edTax: TcxDBButtonEdit
              Left = 78
              Top = 314
              DataBinding.DataField = 'tax_name'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              Properties.OnButtonClick = edTaxPropertiesButtonClick
              Style.HotTrack = False
              Style.StyleController = escFlat
              StyleDisabled.TextColor = clBlack
              TabOrder = 22
              OnKeyDown = edICMSSTKeyDown
              OnKeyPress = edICMSSTKeyPress
              Width = 189
            end
            object panTran: TLMDSimplePanel
              AlignWithMargins = True
              Left = 10000
              Top = 10000
              Width = 852
              Height = 240
              Hint = ''
              Margins.Left = 7
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Bevel.Mode = bmStandard
              TabOrder = 49
              Visible = False
            end
            object cbPodeAlterarPreco: TcxDBCheckBox
              Left = 428
              Top = 116
              Cursor = crHandPoint
              Caption = 'Pode alterar o pre'#231'o na hora da venda'
              DataBinding.DataField = 'PodeAlterarPreco'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.FullFocusRect = True
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.StyleController = escFlat
              Style.TextColor = clGray
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 11
              Transparent = True
            end
            object lbInfoCod: TcxLabel
              AlignWithMargins = True
              Left = 140
              Top = -34
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Caption = 'Use o leitor de c'#243'digo de barras ou digite o c'#243'digo do produto.'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.Shadow = False
              Style.TextColor = clHotLight
              Style.TransparentBorder = True
              Style.IsFontAssigned = True
              Properties.Alignment.Vert = taBottomJustify
              Properties.WordWrap = True
              Transparent = True
              Width = 760
              AnchorY = -17
            end
            object edCodigo2: TcxDBMaskEdit
              Left = 711
              Top = -71
              OnFocusChanged = edCodigoFocusChanged
              DataBinding.DataField = 'Codigo2'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.MaxLength = 0
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI Semibold'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.StyleController = escFlat
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Width = 189
            end
            object cbCodigoAuto: TcxCheckBox
              Left = 337
              Top = -71
              Cursor = crHandPoint
              TabStop = False
              Caption = 'Autom'#225'tico'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.TextColor = clGray
              Style.IsFontAssigned = True
              TabOrder = 2
              Transparent = True
              OnClick = cbCodigoAutoClick
            end
            object lbSetTaxDef: TcxLabel
              Left = 461
              Top = 314
              Cursor = crHandPoint
              Caption = 'Definir taxa'#231#227'o padr'#227'o'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsUnderline]
              Style.HotTrack = True
              Style.TextColor = clGray
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsNone
              StyleFocused.TextColor = clHotLight
              StyleHot.BorderStyle = ebsNone
              StyleHot.TextColor = clHotLight
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              OnClick = lbSetTaxDefClick
              AnchorY = 329
            end
            object edTaxDef: TcxDBCheckBox
              Left = 275
              Top = 314
              Cursor = crHandPoint
              Caption = 'Seguir Taxa'#231#227'o Padr'#227'o'
              DataBinding.DataField = 'tax_def'
              DataBinding.DataSource = dsMT
              ParentFont = False
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.OnEditValueChanged = edTaxDefPropertiesEditValueChanged
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.StyleController = escFlat
              Style.TextColor = clGrayText
              Style.IsFontAssigned = True
              TabOrder = 23
              Transparent = True
            end
            object LCGroup_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Visible = False
              SizeOptions.MaxWidth = 500
              ButtonOptions.Buttons = <>
              Hidden = True
              ItemIndex = 6
              ShowBorder = False
              Index = -1
            end
            object lcgPreco: TdxLayoutGroup
              Parent = LCGroup_Root
              CaptionOptions.Text = 'New Group'
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              Locked = True
              ShowBorder = False
              Index = 4
            end
            object LCItem1: TdxLayoutItem
              Parent = lcgPreco
              AlignHorz = ahClient
              Control = dxBevel1
              ControlOptions.OriginalHeight = 5
              ControlOptions.OriginalWidth = 788
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcCodigo: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup17
              AlignHorz = ahLeft
              CaptionOptions.ImageIndex = 44
              CaptionOptions.Text = 'C'#243'digo'
              LayoutLookAndFeel = lfDestaque
              Control = edCodigo
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object LCItem7: TdxLayoutItem
              Parent = LCGroup_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'Descri'#231#227'o'
              LayoutLookAndFeel = lfDestaque
              Control = edDescr
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 658
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lcPreco: TdxLayoutItem
              Parent = LCGroup8
              AlignHorz = ahLeft
              CaptionOptions.ImageIndex = 55
              CaptionOptions.Text = 'Pre'#231'o de Venda'
              LayoutLookAndFeel = lfDestaque
              Control = edPreco
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object LCGroup2: TdxLayoutAutoCreatedGroup
              Parent = lcgPreco
              AlignHorz = ahLeft
              Index = 1
              AutoCreated = True
            end
            object lcCusto: TdxLayoutItem
              Parent = LCGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Pre'#231'o de Custo'
              Control = edCusto
              ControlOptions.AlignHorz = ahRight
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcPrecoAuto: TdxLayoutItem
              Parent = LCGroup8
              AlignHorz = ahLeft
              AlignVert = avCenter
              CaptionOptions.Cursor = crHandPoint
              CaptionOptions.Visible = False
              Control = cbPrecoAuto
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 83
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object LCGroup8: TdxLayoutAutoCreatedGroup
              Parent = LCGroup2
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object lcMarkup: TdxLayoutItem
              Parent = LCGroup5
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Markup %'
              Control = edMarkup
              ControlOptions.AlignHorz = ahRight
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcInfoMarkup: TdxLayoutItem
              Parent = LCGroup3
              AlignHorz = ahLeft
              CaptionOptions.Text = ' '
              Visible = False
              Control = lbInfoMarkup
              ControlOptions.AlignHorz = ahLeft
              ControlOptions.OriginalHeight = 30
              ControlOptions.OriginalWidth = 498
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object LCGroup3: TdxLayoutAutoCreatedGroup
              Parent = LCGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 2
              AutoCreated = True
            end
            object lcDefinirMarkupPadrao: TdxLayoutItem
              Parent = LCGroup5
              AlignHorz = ahLeft
              AlignVert = avCenter
              CaptionOptions.Text = 'Definir Markup Padr'#227'o'
              CaptionOptions.Visible = False
              Visible = False
              Control = lbMarkup
              ControlOptions.OriginalHeight = 17
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object LCGroup5: TdxLayoutAutoCreatedGroup
              Parent = LCGroup3
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object lcMarkupPadrao: TdxLayoutItem
              Parent = LCGroup5
              AlignHorz = ahLeft
              AlignVert = avCenter
              CaptionOptions.Visible = False
              Control = cbSeguirMarkupPadrao
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 139
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcEstoqueAtual: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Estoque Atual'
              LayoutLookAndFeel = lfDestaque
              Control = edAtual
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcNaoControlaEstoque: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Visible = False
              Control = cbNaoControlaEstoque
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 140
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcUnid: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Unidade Medida'
              Control = edUnid
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcVendaFrac: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = ' '
              CaptionOptions.Visible = False
              Control = cbVendaFrac
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 263
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcLimites: TdxLayoutItem
              Parent = grEstoque
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Limites de Estoque'
              Control = edLimites
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lgrBR: TdxLayoutGroup
              Parent = grBottom
              CaptionOptions.Text = 'Tributa'#231#227'o'
              ButtonOptions.Buttons = <>
              ItemIndex = 3
              Index = 2
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = lgrBR
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object lcNCM: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'NCM'
              Control = edNCM
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 109
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcNCMDescr: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'cxLabel2'
              CaptionOptions.Visible = False
              Control = lbNCM
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 45
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcInfoNCM: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = ' '
              Visible = False
              Control = lbInfoNCM
              ControlOptions.OriginalHeight = 15
              ControlOptions.OriginalWidth = 472
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcCEST: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CEST'
              Control = edCest
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 109
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lclbCEST: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Visible = False
              Control = lbCEST
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 44
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lclbInfoCest: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = ' '
              Visible = False
              Control = lbInfoCest
              ControlOptions.OriginalHeight = 18
              ControlOptions.OriginalWidth = 690
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = lgrBR
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object lcBRTrib: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Tributa'#231#227'o'
              Control = edBrTrib
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 109
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcBrTribNome: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'cxLabel1'
              CaptionOptions.Visible = False
              Control = lbBrTrib
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcInfoBrTrib: TdxLayoutItem
              Parent = lgrBR
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = ' '
              Visible = False
              Control = lbInfoBrTrib
              ControlOptions.OriginalHeight = 15
              ControlOptions.OriginalWidth = 490
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = lgrBR
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
            object lcICMSSt: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              CaptionOptions.Text = 'MVA/Pauta - F9'
              Control = edICMSST
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 109
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcDescrSt: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Visible = False
              Control = lbDescrSt
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 36
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lcInfoSt: TdxLayoutItem
              Parent = lgrBR
              CaptionOptions.Text = ' '
              Visible = False
              Control = lbHintSt
              ControlOptions.OriginalHeight = 18
              ControlOptions.OriginalWidth = 690
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object lciFornecedores: TdxLayoutItem
              Parent = grBottom
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Fornecedores'
              CaptionOptions.Visible = False
              CaptionOptions.Layout = clTop
              Control = panFornecedores
              ControlOptions.OriginalHeight = 61
              ControlOptions.OriginalWidth = 788
              ControlOptions.ShowBorder = False
              OnCaptionClick = lciFornecedoresCaptionClick
              Index = 3
            end
            object lcObs: TdxLayoutItem
              Parent = grBottom
              AlignVert = avTop
              CaptionOptions.Text = 'Observa'#231#245'es'
              CaptionOptions.Visible = False
              CaptionOptions.Layout = clTop
              Control = edObs
              ControlOptions.OriginalHeight = 126
              ControlOptions.OriginalWidth = 185
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object grBottom: TdxLayoutGroup
              Parent = LCGroup_Root
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'New Group'
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              LayoutDirection = ldTabbed
              LayoutLookAndFeelException = True
              Padding.AssignedValues = [lpavBottom, lpavLeft]
              ShowBorder = False
              OnTabChanged = grBottomTabChanged
              Index = 6
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object grEstoque: TdxLayoutGroup
              Parent = grBottom
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Estoque'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = grEstoque
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
              Parent = grEstoque
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object grComissao: TdxLayoutGroup
              Parent = grBottom
              CaptionOptions.Text = 'Comiss'#227'o'
              ButtonOptions.Buttons = <>
              Index = 5
            end
            object lcComissao: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup13
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Comiss'#227'o de '
              Control = edComissaoPerc
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 161
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
              Parent = grComissao
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object grPend: TdxLayoutGroup
              Parent = grBottom
              CaptionOptions.Text = 'Pedidos Pendentes'
              Visible = False
              ButtonOptions.Buttons = <>
              Index = 8
            end
            object lcPend: TdxLayoutItem
              Parent = grPend
              AlignHorz = ahClient
              AlignVert = avClient
              Control = panPend
              ControlOptions.OriginalHeight = 66
              ControlOptions.OriginalWidth = 100
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup11
              AlignVert = avClient
              Control = img
              ControlOptions.OriginalHeight = 48
              ControlOptions.OriginalWidth = 48
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcComissaoLucro: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup12
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Sobre'
              Control = edComissaoLucro
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 161
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup11
              AlignHorz = ahLeft
              Index = 1
              AutoCreated = True
            end
            object lcRecursoPro: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup12
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = ' '
              Control = btnPremium
              ControlOptions.OriginalHeight = 35
              ControlOptions.OriginalWidth = 120
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lcComissaoPadrao: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup13
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Visible = False
              Control = cbComissaoPadrao
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 173
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup12
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object lcConfigComissao: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup13
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Visible = False
              Offsets.Left = 20
              Control = lbConfigComissao
              ControlOptions.OriginalHeight = 17
              ControlOptions.OriginalWidth = 100
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 2
            end
            object grFidelidade: TdxLayoutGroup
              Parent = grBottom
              CaptionOptions.Text = 'Fidelidade'
              ButtonOptions.Buttons = <>
              Index = 6
            end
            object lcimgFid: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup14
              AlignHorz = ahLeft
              CaptionOptions.Visible = False
              Control = imgFid
              ControlOptions.OriginalHeight = 48
              ControlOptions.OriginalWidth = 48
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup15
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Pontos necess'#225'rios para resgate'
              Control = edFidPontos
              ControlOptions.OriginalHeight = 24
              ControlOptions.OriginalWidth = 100
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup
              Parent = grFidelidade
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup15
              AlignVert = avBottom
              CaptionOptions.Visible = False
              Control = edFidelidade
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 304
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup14
              Index = 1
              AutoCreated = True
            end
            object lcFidelidade: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup16
              AlignHorz = ahClient
              AlignVert = avBottom
              CaptionOptions.Visible = False
              Control = lbFidelidade
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 423
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup16
              AlignVert = avClient
              CaptionOptions.Visible = False
              Control = lbOpcoesFid
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 148
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup15
              AlignVert = avBottom
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = LCGroup_Root
              AlignHorz = ahClient
              Control = dxBevel2
              ControlOptions.OriginalHeight = 3
              ControlOptions.OriginalWidth = 50
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object dxLayoutGroup2: TdxLayoutGroup
              CaptionOptions.Text = 'New Group'
              ButtonOptions.Buttons = <>
              Index = -1
            end
            object grCategMarca: TdxLayoutGroup
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              ShowBorder = False
              Index = 0
            end
            object lcCateg: TdxLayoutItem
              Parent = grCategMarca
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Categoria'
              Control = edCateg
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcMarca: TdxLayoutItem
              Parent = grCategMarca
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Marca'
              Control = edMarca
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = LCGroup_Root
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
            object grPeso: TdxLayoutGroup
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahRight
              AlignVert = avClient
              ButtonOptions.Buttons = <>
              ShowBorder = False
              Index = 1
            end
            object lcPesoLiq: TdxLayoutItem
              Parent = grPeso
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Peso L'#237'quido'
              Control = edPesoLiq
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 85
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lcPesoBruto: TdxLayoutItem
              Parent = grPeso
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Peso Bruto'
              Control = edPesoBruto
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 86
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lgrTax: TdxLayoutGroup
              Parent = grBottom
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = ' TAX '
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object lcTAX: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup18
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Taxa'#231#227'o'
              Control = edTax
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object grTran: TdxLayoutGroup
              Parent = grBottom
              CaptionOptions.Text = 'Transa'#231#245'es'
              ButtonOptions.Buttons = <>
              Index = 7
            end
            object dxLayoutItem2: TdxLayoutItem
              Parent = grTran
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Transa'#231#245'es'
              CaptionOptions.Visible = False
              Control = panTran
              ControlOptions.OriginalHeight = 616
              ControlOptions.OriginalWidth = 100
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object LCItem5: TdxLayoutItem
              Parent = LCGroup8
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Visible = False
              Control = cbPodeAlterarPreco
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 221
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lcInfoCod: TdxLayoutItem
              Parent = LCGroup_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = ' '
              Visible = False
              Control = lbInfoCod
              ControlOptions.OriginalHeight = 17
              ControlOptions.OriginalWidth = 334
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup17
              AlignHorz = ahRight
              AlignVert = avClient
              CaptionOptions.Text = 'C'#243'digo Extra'
              LayoutLookAndFeel = lfDestaque
              Offsets.Left = 50
              Control = edCodigo2
              ControlOptions.OriginalHeight = 29
              ControlOptions.OriginalWidth = 189
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup
              Parent = LCGroup_Root
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object lcCodigoAuto: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup17
              AlignVert = avClient
              CaptionOptions.Text = 'cxCheckBox1'
              CaptionOptions.Visible = False
              Control = cbCodigoAuto
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 83
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem1: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup18
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Visible = False
              Offsets.Left = 40
              Control = lbSetTaxDef
              ControlOptions.OriginalHeight = 17
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup
              Parent = lgrTax
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object lcTaxDef: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup18
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Seguir Taxa'#231#227'o Padr'#227'o'
              CaptionOptions.Visible = False
              Control = edTaxDef
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 138
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
      end
    end
    object LMDSimplePanel1: TLMDSimplePanel
      AlignWithMargins = True
      Left = 941
      Top = 7
      Width = 200
      Height = 610
      Hint = ''
      Margins.Left = 7
      Margins.Top = 7
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Bevel.Mode = bmCustom
      TabOrder = 1
      object pagFoto: TcxPageControl
        Left = 0
        Top = 0
        Width = 200
        Height = 177
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 7
        Margins.Bottom = 0
        Align = alTop
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        TabStop = False
        Properties.ActivePage = tsFoto
        Properties.CustomButtons.Buttons = <>
        Properties.HideTabs = True
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 177
        ClientRectRight = 200
        ClientRectTop = 0
        object tsSemFoto: TcxTabSheet
          Caption = 'SemFoto'
          ImageIndex = 0
          object panSemFoto: TLMDSimplePanel
            Left = 0
            Top = 0
            Width = 200
            Height = 177
            Hint = ''
            Align = alClient
            Bevel.BorderColor = clBtnShadow
            Bevel.LightColor = 15987699
            Bevel.Mode = bmStandard
            TabOrder = 0
            object Image1: TImage
              AlignWithMargins = True
              Left = 1
              Top = 1
              Width = 198
              Height = 95
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 26
              Align = alClient
              Center = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
                0000003008060000005702F9870000000467414D410000B18F0BFC6105000000
                097048597300000B0C00000B0C013F4022C8000002A0494441546843ED98DD4A
                24311085E7C60B6141F04284BD1004411004DFFFE5CC37E4748EB1D3493ABDEE
                8CE4C0C19AA4AAA67E52E9764E13131313BF12B781CF811F9DC406DBFF0A0278
                0F5C0BB085D80E27F1373077CA5A0D37816F81D8BCC6CFAD40171B6CF1B11B79
                F0CE5A123A3604D013BCE005B867610FD47E7780AC244A780894CEC811D077ED
                EE4229D0D23A2060ED93C828BABB40EB9E0247860F72848E80773C27C911EB72
                44476F0DB177686BD04097B8DC561A3C0CFEB0703048EA31F025D00B85CC1A7B
                3D8913A3923B775C0E8FAC1EA03A0428FF35A2DB1A037AB24B82812F576720F2
                B95D8DF01B49F69C6B0F109935FF1ED83AB8D24F424469269633570103269BD6
                AAA2E3DDC2470DD24D42842AA22F77E7EC6DC16F8F3DD7A977AED609E9252142
                9FBD72C8B95E0EBA239D3C78EC798AEB7E87DFAEC3084F22DF7348270911FADC
                9B80BAC45F8777A5C4BCDA255F0ED9262162CF11F2043D710F1E1F778102B2FC
                424FA2E4CFA1FD2444EC1962EE72747CF83C88ADA1F4A1F76055487CAF413649
                3010A81C40E4AD1B4895F42A2A30F66A90BDBFEDAA7B257BF6601206A08E7905
                35B07E6C4A40075D6C047510DF6B600F2661006B3E7AFDF6FA58F6B6945AB1E6
                A3D76FAF8F656F4BA915577F84D68658FF9A5EC510EB1AF5E7842A087FFC1AED
                8507EB41A88A904AFA714256E5A177AFE4CFA1FD240C42C1E42DF7244AF4E041
                C99743B649188457ADF5658EB5BCC2C32F7323F06AE749B4C083CFBB92437A49
                38083E941C81AD2A0AE8E8D8C0ADA117A49B8403919F7B6E14D63C1964D6FC9D
                0BD62A2F483F090723AF6A8DADDD126497847F0482E22E27403DB121326BECF5
                042E2C71F73CF22F055F5E3D3474FC58740D4910A37ED83A0F3BEDABFD8C7789
                24E6E5E821E40F9A4B65E90138313131F1E3389D3E013D446EF3CD1E05610000
                000049454E44AE426082}
              ExplicitWidth = 368
              ExplicitHeight = 89
            end
            object lbSemFoto: TcxLabel
              AlignWithMargins = True
              Left = 11
              Top = 132
              Cursor = crHandPoint
              Margins.Left = 10
              Margins.Top = 10
              Margins.Right = 10
              Margins.Bottom = 10
              Align = alBottom
              Caption = 'Clique aqui para selecionar uma foto para esse produto'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.HotTrack = True
              Style.TextColor = 10395294
              Style.TextStyle = []
              Style.TransparentBorder = True
              Style.IsFontAssigned = True
              StyleHot.BorderStyle = ebsNone
              StyleHot.TextColor = clBlack
              StyleHot.TextStyle = [fsUnderline]
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taBottomJustify
              Properties.WordWrap = True
              Transparent = True
              OnClick = lbSemFotoClick
              Width = 178
              AnchorX = 100
              AnchorY = 166
            end
          end
        end
        object tsFoto: TcxTabSheet
          AllowCloseButton = False
          Caption = 'Foto'
          ImageIndex = 1
          object panFoto: TLMDSimplePanel
            Left = 0
            Top = 0
            Width = 200
            Height = 177
            Hint = ''
            Align = alClient
            Bevel.WidthInner = 0
            Bevel.WidthOuter = 0
            Bevel.Mode = bmStandard
            TabOrder = 0
            object edFoto: TcxDBImage
              Left = 1
              Top = 1
              Cursor = crHandPoint
              TabStop = False
              Align = alClient
              DataBinding.DataField = 'Imagem'
              DataBinding.DataSource = dsMT
              Properties.GraphicClassName = 'TdxSmartImage'
              Properties.ImmediatePost = True
              Properties.OnEditValueChanged = edFotoPropertiesEditValueChanged
              Style.BorderStyle = ebsNone
              Style.Color = clWhite
              Style.TransparentBorder = False
              TabOrder = 0
              Height = 175
              Width = 198
            end
          end
        end
      end
    end
  end
  object panLookup: TLMDSimplePanel
    AlignWithMargins = True
    Left = 360
    Top = 5
    Width = 393
    Height = 28
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Bevel.BorderSides = []
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 5
    Visible = False
    object btnExcluir: TcxButton
      Left = 137
      Top = 0
      Width = 64
      Height = 28
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Excluir'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.Data = {
        72020000424D720200000000000036000000280000000B0000000D0000000100
        2000000000003C02000000000000000000000000000000000000000000000000
        0060000000990000009900000099000000990000009900000099000000990000
        00600000000000000000000000990000004C000000990000004C000000990000
        004C000000990000004C000000990000000000000000000000990000004C0000
        00990000004C000000990000004C000000990000004C00000099000000000000
        0000000000990000004C000000990000004C000000990000004C000000990000
        004C000000990000000000000000000000990000004C000000990000004C0000
        00990000004C000000990000004C000000990000000000000000000000990000
        004C000000990000004C000000990000004C000000990000004C000000990000
        000000000000000000990000004C000000990000004C000000990000004C0000
        00990000004C000000990000000000000000000000990000004C000000990000
        004C000000990000004C000000990000004C0000009900000000000000000000
        0099000000990000009900000099000000990000009900000099000000990000
        0099000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000009900000099000000990000
        0099000000990000009900000099000000990000009900000099000000990000
        0000000000000000000000000099000000000000000000000000000000990000
        0000000000000000000000000000000000000000000000000060000000990000
        00990000009900000060000000000000000000000000}
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = dmImagens.im16
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = 4802889
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnExcluirClick
    end
    object btnEditar: TcxButton
      Left = 76
      Top = 0
      Width = 61
      Height = 28
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Editar'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.Data = {
        0E030000424D0E0300000000000036000000280000000D0000000E0000000100
        200000000000D802000000000000000000000000000000000000000000090000
        0013000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000013000000990000007C000000430000
        0009000000000000000000000000000000000000000000000000000000000000
        0000000000000000007C000000990000007C0000001300000009000000000000
        0000000000000000000000000000000000000000000000000000000000430000
        007C000000130000007C0000007C000000090000000000000000000000000000
        000000000000000000000000000000000009000000130000007C000000990000
        00990000007C0000000900000000000000000000000000000000000000000000
        000000000000000000090000007C0000009900000099000000990000007C0000
        0009000000000000000000000000000000000000000000000000000000000000
        00090000007C0000009900000099000000990000007C00000009000000000000
        00000000000000000000000000000000000000000000000000090000007C0000
        009900000099000000990000007C000000090000000000000000000000000000
        0000000000000000000000000000000000090000007C00000099000000990000
        00990000007C0000000900000000000000000000000000000000000000000000
        000000000000000000090000007C00000099000000990000007C646464F00000
        0009000000000000000000000000000000000000000000000000000000000000
        00090000007C0000007C686868F70000007C0000007C00000000000000000000
        0000000000000000000000000000000000000000000000000009686868F70000
        007C000000990000009000000000000000000000000000000000000000000000
        0000000000000000000000000000000000090000007C000000900000001C0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000090000001300000000}
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = dmImagens.im16
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = 4802889
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnEditarClick
    end
    object btnAdicionar: TcxButton
      Left = 0
      Top = 0
      Width = 76
      Height = 28
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Adicionar'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.Data = {
        76020000424D760200000000000036000000280000000C0000000C0000000100
        2000000000004002000000000000000000000000000000000000000000000000
        0000000000000000003900000073000000900000008600000069000000390000
        0000000000000000000000000000000000090000007C00000099000000990000
        00990000009900000099000000990000007C0000000900000000000000000000
        007C000000990000009900000099000000990000009900000099000000990000
        00990000007C0000000000000039000000990000009900000099000000990000
        001C0000001C0000009900000099000000990000009900000039000000730000
        0099000000990000009900000099000000000000000000000099000000990000
        009900000099000000730000008600000099000000990000001C000000000000
        000000000000000000000000001C000000990000009900000090000000900000
        0099000000990000001C000000000000000000000000000000000000001C0000
        0099000000990000008600000073000000990000009900000099000000990000
        0000000000000000009900000099000000990000009900000069000000390000
        00990000009900000099000000990000001C0000001C00000099000000990000
        00990000009900000039000000000000007C0000009900000099000000990000
        0099000000990000009900000099000000990000007C00000000000000000000
        00090000007C0000009900000099000000990000009900000099000000990000
        007C000000090000000000000000000000000000000000000039000000730000
        0086000000900000007300000039000000000000000000000000}
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = dmImagens.im16
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = 4802889
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnAdicionarClick
    end
  end
  object BarMgr: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmImagens.im16
    ImageOptions.LargeImages = dmImagens.im32
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    SunkenBorder = True
    UseSystemFont = True
    Left = 80
    Top = 528
    DockControlHeights = (
      0
      0
      44
      0)
    object BarMgrBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Controles'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 164
      FloatTop = 132
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmGravar'
        end
        item
          Visible = True
          ItemName = 'cmCancelar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmClone'
        end
        item
          Visible = True
          ItemName = 'cmConfig'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Controles'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object cmKardex: TdxBarButton
      Caption = '&Kardex'
      Category = 0
      Hint = 'Kardex'
      Visible = ivNever
      UnclickAfterDoing = False
    end
    object cmGravar: TdxBarLargeButton
      Caption = '&Salvar (F2)'
      Category = 0
      Hint = 'Salvar (F2)'
      Visible = ivAlways
      OnClick = cmGravarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 72
      SyncImageIndex = False
      ImageIndex = 4
    end
    object cmCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      OnClick = cmCancelarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 131
    end
    object cmClone: TdxBarButton
      Caption = 'Cl&onar'
      Category = 0
      Hint = 'Clonar este produto e ir ao novo.'
      Visible = ivAlways
      OnClick = cmCloneClick
    end
    object cmConfig: TdxBarLargeButton
      Align = iaRight
      Caption = 'Configurar'
      Category = 0
      Hint = 'Configurar'
      Visible = ivAlways
      OnClick = cmConfigClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 124
      ShowCaption = False
    end
  end
  object QCat: TnxQuery
    ActiveRuntime = True
    Database = Dados.db
    Timeout = 10000
    SQL.Strings = (
      'Select Distinct(Categoria) From Produto')
    Left = 892
    Top = 306
    object QCatCategoria: TWideStringField
      FieldName = 'Categoria'
      Size = 35
    end
  end
  object dsMT: TDataSource
    DataSet = MT
    Left = 848
    Top = 352
  end
  object FMgr: TFormManager
    BarMgr = BarMgr
    PageControl = Paginas
    Left = 618
    Top = 337
  end
  object MT: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'modST'
        DataType = ftByte
      end
      item
        Name = 'ComissaoPerc'
        DataType = ftFloat
      end
      item
        Name = 'ComissaoLucro'
        DataType = ftBoolean
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Fidelidade'
        DataType = ftBoolean
      end
      item
        Name = 'FidPontos'
        DataType = ftInteger
      end
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'brtrib'
        DataType = ftWord
      end
      item
        Name = 'Preco'
        DataType = ftCurrency
      end
      item
        Name = 'Obs'
        DataType = ftMemo
      end
      item
        Name = 'Imagem'
        DataType = ftGraphic
      end
      item
        Name = 'Categoria'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'CustoUnitario'
        DataType = ftCurrency
      end
      item
        Name = 'PodeAlterarPreco'
        DataType = ftBoolean
      end
      item
        Name = 'NaoControlaEstoque'
        DataType = ftBoolean
      end
      item
        Name = 'PermiteVendaFracionada'
        DataType = ftBoolean
      end
      item
        Name = 'Unid'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'EstoqueRepor'
        DataType = ftFloat
      end
      item
        Name = 'Fornecedor'
        DataType = ftInteger
      end
      item
        Name = 'EstoqueMin'
        DataType = ftFloat
      end
      item
        Name = 'EstoqueMax'
        DataType = ftFloat
      end
      item
        Name = 'NomeFor'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CadastroRapido'
        DataType = ftBoolean
      end
      item
        Name = 'PrecoAuto'
        DataType = ftBoolean
      end
      item
        Name = 'Margem'
        DataType = ftFloat
      end
      item
        Name = 'LookupCateg'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'LookupUnid'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'LookupNCM'
        DataType = ftString
        Size = 108
      end
      item
        Name = 'SeguirMargemPadrao'
        DataType = ftBoolean
      end
      item
        Name = 'NCM_Ex'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'tax_id'
        DataType = ftLongWord
      end
      item
        Name = 'cest'
        DataType = ftLongWord
      end
      item
        Name = 'tax_name'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'tax_def'
        DataType = ftBoolean
      end
      item
        Name = 'MVA'
        DataType = ftMemo
      end
      item
        Name = 'Pauta'
        DataType = ftMemo
      end>
    IndexDefs = <>
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
    AfterInsert = MTAfterInsert
    OnCalcFields = MTCalcFields
    Left = 648
    Top = 120
    object MTPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object MTPesoLiq: TFloatField
      FieldName = 'PesoLiq'
    end
    object MTmodST: TByteField
      FieldName = 'modST'
    end
    object MTComissaoPerc: TFloatField
      FieldName = 'ComissaoPerc'
    end
    object MTComissaoLucro: TBooleanField
      FieldName = 'ComissaoLucro'
    end
    object MTID: TIntegerField
      FieldName = 'ID'
    end
    object MTFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object MTFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object MTbrtrib: TWordField
      Alignment = taLeftJustify
      FieldName = 'brtrib'
    end
    object MTPreco: TCurrencyField
      Alignment = taLeftJustify
      FieldName = 'Preco'
    end
    object MTImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object MTCustoUnitario: TCurrencyField
      Alignment = taLeftJustify
      FieldName = 'CustoUnitario'
    end
    object MTPodeAlterarPreco: TBooleanField
      FieldName = 'PodeAlterarPreco'
    end
    object MTNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object MTPermiteVendaFracionada: TBooleanField
      FieldName = 'PermiteVendaFracionada'
    end
    object MTEstoqueRepor: TFloatField
      FieldName = 'EstoqueRepor'
    end
    object MTFornecedor: TIntegerField
      FieldName = 'Fornecedor'
    end
    object MTEstoqueMin: TFloatField
      Alignment = taLeftJustify
      FieldName = 'EstoqueMin'
    end
    object MTEstoqueMax: TFloatField
      Alignment = taLeftJustify
      FieldName = 'EstoqueMax'
    end
    object MTNomeFor: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'NomeFor'
      LookupDataSet = Dados.tbCli
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'Fornecedor'
      Size = 50
      Lookup = True
    end
    object MTCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object MTPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object MTMargem: TFloatField
      Alignment = taLeftJustify
      FieldName = 'Margem'
    end
    object MTLookupCateg: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupCateg'
      LookupDataSet = tCateg
      LookupKeyFields = 'Descricao'
      LookupResultField = 'Descricao'
      KeyFields = 'Categoria'
      Size = 35
      Lookup = True
    end
    object MTLookupUnid: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupUnid'
      LookupDataSet = tUnid
      LookupKeyFields = 'Descricao'
      LookupResultField = 'Descricao'
      KeyFields = 'Unid'
      Size = 5
      Lookup = True
    end
    object MTNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object MTLookupNCM: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupNCM'
      LookupDataSet = Dados.tbNCM
      LookupKeyFields = 'NCM'
      LookupResultField = 'NCMDescr'
      KeyFields = 'NCM'
      Size = 108
      Lookup = True
    end
    object MTSeguirMargemPadrao: TBooleanField
      FieldName = 'SeguirMargemPadrao'
    end
    object MTNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object MTMarca: TGuidField
      FieldName = 'Marca'
      Size = 38
    end
    object MTCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object MTDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object MTUnid: TWideStringField
      FieldName = 'Unid'
      Size = 5
    end
    object MTObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object MTCategoria: TWideStringField
      FieldName = 'Categoria'
      Size = 35
    end
    object MTNomeMarca: TWideStringField
      FieldKind = fkLookup
      FieldName = 'NomeMarca'
      LookupDataSet = tMarca
      LookupKeyFields = 'UID'
      LookupResultField = 'Nome'
      KeyFields = 'Marca'
      Size = 40
      Lookup = True
    end
    object MTtax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object MTcest: TLongWordField
      Alignment = taLeftJustify
      FieldName = 'cest'
    end
    object MTtax_name: TStringField
      FieldKind = fkCalculated
      FieldName = 'tax_name'
      Size = 40
      Calculated = True
    end
    object MTtax_def: TBooleanField
      FieldName = 'tax_def'
    end
    object MTMVA: TMemoField
      FieldName = 'MVA'
      BlobType = ftMemo
    end
    object MTPauta: TMemoField
      FieldName = 'Pauta'
      BlobType = ftMemo
    end
    object MTCodigo2: TStringField
      FieldName = 'Codigo2'
      Size = 30
    end
  end
  object dsCAT: TDataSource
    DataSet = QCat
    Left = 760
    Top = 352
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 656
    Top = 552
    object dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel
    end
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      ItemOptions.ControlBorderStyle = lbsFlat
    end
    object lfProd: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -13
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.HotTrack = True
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderStyle = lbsFlat
      Offsets.ControlOffsetVert = 0
      Offsets.RootItemsAreaOffsetHorz = 5
      Offsets.RootItemsAreaOffsetVert = 5
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
    end
    object lfDestaque: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -13
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI Semibold'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.UseDefaultFont = False
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
    end
  end
  object qUnidade: TnxQuery
    ActiveRuntime = True
    Database = Dados.db
    Timeout = 10000
    SQL.Strings = (
      'Select Distinct(Unid) From Produto')
    Left = 892
    Top = 354
    object qUnidadeUnid: TWideStringField
      FieldName = 'Unid'
      Size = 5
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    Left = 664
    Top = 304
  end
  object tCateg: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'Categoria'
    IndexName = 'uq_Categoria'
    Left = 592
    Top = 288
    object tCategDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 35
    end
  end
  object dsCateg: TDataSource
    DataSet = tCateg
    Left = 856
    Top = 288
  end
  object Q: TnxQuery
    Database = Dados.db
    Left = 688
    Top = 216
  end
  object tUnid: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'Unidade'
    IndexName = 'uq_Unidade'
    Left = 816
    Top = 288
    object tUnidDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 5
    end
  end
  object dsUnid: TDataSource
    DataSet = tUnid
    Left = 800
    Top = 352
  end
  object cxImageList1: TcxImageList
    Height = 48
    Width = 48
    FormatVersion = 1
    DesignInfo = 18874440
    ImageInfo = <
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000002000000070000000F00000015000000190000001A0000
          0018000000140000000D00000006000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00040000001000000021000000370000004E00000060000000690000006B0000
          00680000005B00000048000000300000001C0000000C00000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000000F0000
          002900000051000C117B00212E99003246AB003E57B9003F58BB003A52B70029
          3BAA0017219E000507990000008C0000006E00000045000000220000000A0000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000050000001B0004054B0028
          3791006187CE0084B4FB0083B6FF0082B6FF0084B7FF0085B8FF0082B5FF007E
          B0FF007AACFF0071A0F5004764C2001219A000000196000000700000003A0000
          0013000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000070000002400222E7700719CDF0088
          BCFE008DC0FF0099CEFF08ADDEFF0CB7E7FF0CB8E8FF0AB6E6FF05AEE0FF00A5
          D7FF009CCFFF008FC2FF007EB1FF0076A8FD004D69CA00090CA1000000860000
          004D0000001A0000000400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000080001022D00405599008EC0FB008FC4FF11B2
          E0FF28D4FAFF33DFFFFF37E0FFFF39E1FFFF38E0FFFF35DFFFFF2ADBFFFF1FD7
          FFFF14C7F4FF07B2E2FF00A3D6FF0092C6FF007AADFF006897EF001721A30000
          0091000000520000001900000003000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000070005072F005470B2008FC3FE0CA6D5FF38DBFCFF43E4
          FFFF4DE7FFFF5DEDFFFF65EEFFFF69EFFFFF6DEFFFFF72F0FFFF76F2FFFF6DF0
          FFFF50EAFFFF24DBFFFF14CDF9FF04ACDEFF009FD3FF0083B6FF0072A3FB001E
          2BA6000000900000004B00000013000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000400040524005F7EBA0091C6FE23BCE4FF4CE9FFFF4AE4FFFF55E7
          FFFF50E0F8FF1BA7D2FF61ECFFFF63EDFFFF66EDFFFF6AEFFFFF6FF1FFFF7BF9
          FFFF34ABCDFF5ED6E9FF4CE7FFFF16D5FFFF0AB9E9FF00A0D4FF0088BBFF0071
          A1F900151FA30000008500000039000000090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000011200596FA60095CAFE2FC5EAFF52EAFFFF49E4FFFF4CE4FFFF52E8
          FFFF45D7F4FF0086BCFF0E99C7FF61ECFFFF66EEFFFF68EFFFFF71F5FFFF25A2
          C9FF006FA5FF49C3DEFF85FAFFFF67EFFFFF1BD7FFFF0CBBEBFF00A0D4FF0083
          B6FF006897EF00080BA00000006D0000001F0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00050038456C009BCDFD24BDE4FF5AECFFFF45E2FFFF46E2FFFF4AE4FFFF4EE6
          FFFF42D5F3FF1EB6DFFF26B9E0FF0791C3FF61EBFEFF6CF4FFFF1A9BC5FF109D
          CAFF12AFDCFF48C2DEFF7CF7FFFF80F7FFFF70F1FFFF16D5FFFF09B5E5FF009F
          D3FF007CAFFF004663C300000094000000420000000C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000007
          091A0089B6E20AA9D8FF60EDFFFF45E2FFFF3FE0FFFF43E1FFFF47E3FFFF4CE5
          FFFF3FD5F4FF1DB5DEFF4AEBFFFF27BCE2FF068FC1FF159BC7FF13A4D1FF2BE1
          FFFF0FAEDDFF45C2DFFF7AF5FFFF79F4FFFF82F7FFFF5DEBFFFF15D5FFFF02A8
          DBFF0094C7FF0075A9FD0010179F000000690000001A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020047
          5F7C00A0D3FE49DAF4FF56E9FFFF38DEFFFF40E2FFFF43E4FFFF47E5FFFF4DE8
          FFFF40D7F6FF20B7E1FF49E6FFFF44E6FFFF2AC1E6FF1DB3DCFF33E1FFFF2BDC
          FFFF12B0DEFF46C5E1FF7DFBFFFF7EFAFFFF82FBFFFF8CFEFFFF35DFFFFF11C6
          F5FF00A1D3FF007FB2FF003E58BC000000890000002D00000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000002020B0088
          B5D80EB0DEFF6BF2FFFF3ADFFFFF34DBFEFF12B7E4FF12B6E2FF13B2E1FF14B1
          DFFF0DA9D8FF22BAE2FF4DE7FFFF44E2FFFF40E2FFFF3AE2FFFF35DEFFFF2FDE
          FFFF16B3DFFF0F8EBCFF1F9CC5FF1F9AC2FF2199C1FF2195BEFF5BDFF3FF18D7
          FFFF03A9DBFF0090C3FF006F9EF200030598000000440000000B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000001B233500A6
          D8FD3CCFEFFF60EDFFFF2DDBFFFF36DFFFFF0EB5E5FF2DC5E9FF46D8F3FF41D5
          F3FF3DD2F1FF48DDF9FF4FE6FFFF48E3FFFF43E2FFFF3DE0FFFF37DEFFFF32DD
          FFFF30D7FAFF25C3EBFF23C2EAFF20C3EAFF15B2DEFF0A83B2FF83F6FDFF2FDC
          FFFF0EBCEBFF009CD0FF007BAEFF00121A9C0000005800000012000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000041546F00A7
          DCFF62E8FBFF4AE5FFFF2CDAFFFF32DBFFFF37E0FFFF12B7E4FF62E8FCFF67EF
          FFFF60EBFFFF58E9FFFF51E6FFFF4CE4FFFF46E3FFFF41E1FFFF3BDFFFFF35DD
          FFFF30DCFFFF2ADAFFFF25DBFFFF1DD7FFFF0891C3FF73EFFBFF81F8FFFF4DE6
          FFFF16CBF8FF00A2D5FF0080B3FF002737A80000006500000017000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000617E9A00AB
          E0FF77F5FFFF3BDFFFFF29D9FFFF2EDBFFFF33DDFFFF35DCFFFF0FB4E3FF64EC
          FDFF62ECFFFF5BE9FFFF55E7FFFF4FE5FFFF4AE4FFFF45E2FFFF3FE0FFFF39DE
          FFFF34DDFFFF2EDCFFFF29DBFFFF0796C6FF65E3F5FF77F5FFFF7BF4FFFF63EC
          FFFF1ED5FFFF00A5D8FF0087BAFF00364DB30000006A0000001A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001007192AE09B3
          E4FF7DF7FFFF2DDCFFFF28D8FFFF2BDAFFFF2FDBFFFF34DDFFFF35DBFEFF0FB2
          E1FF65EDFEFF5EECFFFF59E9FFFF53E7FFFF4EE5FFFF48E3FFFF43E2FFFF3DE0
          FFFF37DEFFFF35DEFFFF079BCCFF59DCF2FF72F5FFFF71F1FFFF76F2FFFF6EF0
          FFFF22D8FFFF01A8DAFF008ABDFF004059BB0000006900000019000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000779BB40BB6
          E7FF80F8FFFF2ADAFFFF25D7FFFF29D9FFFF2EDAFFFF33DEFFFF19C6F1FF17B9
          E4FF6AEFFFFF62ECFFFF5DEAFFFF57E8FFFF51E6FFFF4CE4FFFF46E3FFFF41E1
          FFFF3BDFFFFF36E0FFFF15ADD9FF21A9D0FF71F5FFFF6FF1FFFF73F1FFFF6EF0
          FFFF25DBFFFF02AADCFF008BBEFF003E56B70000006000000015000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000007090A706B5
          E6FF83F9FFFF2DDAFFFF21D7FFFF26D8FFFF2CDBFFFF1CCCF5FF12B9E6FF76F4
          FFFF6DF0FFFF66EDFFFF60EBFFFF5BE9FFFF55E7FFFF4FE5FFFF4AE4FFFF45E2
          FFFF3FE0FFFF39DEFFFF37E2FFFF0DA3D2FF2CB2D7FF72F6FFFF72F1FFFF67ED
          FFFF28DBFFFF01A9DBFF0089BCFF003549AD0000004F0000000F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000005E788B00B0
          E6FF81F7FFFF3CDFFFFF1FD6FFFF24D8FFFF1CD0FAFF10BDEBFF80F8FFFF7DF6
          FFFF74F3FFFF6DEFFFFF64EEFFFF5FEBFFFF59E9FFFF53E7FFFF4EE5FFFF48E3
          FFFF44E4FFFF40E3FFFF3AE2FFFF36E3FFFF099FD0FF39C0E0FF74F5FFFF5AE9
          FFFF27D8FEFF00A6D9FF0086B9FF00212D9A0000003900000007000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000003B4B5500B2
          E7FF67E9FAFF55E8FFFF19D4FFFF21D6FFFF00B7ECFF30CEF1FF3AD3F2FF35CE
          F0FF30CBEEFF4EDDF6FF6BEFFFFF62ECFFFF5DEAFFFF57E8FFFF51E6FFFF4DE5
          FFFF36D2F3FF19B5E1FF16B2DEFF13B1DEFF11AEDBFF007EB6FF5ADDF3FF4AE5
          FFFF20CDF6FF00A0D3FF0086B8FD000D12810000002400000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000011151700AF
          E4F734D0F2FF7EF7FFFF15D4FFFF1ED6FEFF1ED4FDFF20D4FBFF22D3FBFF26D5
          FCFF1DCDF6FF32CBEFFF71F2FFFF67EEFFFF62EDFFFF5CEAFEFF56E8FFFF51E7
          FFFF28C3E9FF2AC0E5FF4FDFF8FF50DFF7FF54DFF7FF58E2F7FF6CF0FFFF39DF
          FFFF13BEEBFF0095C8FF006A90DB000101590000001300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000008B
          B3B804BAECFF89F9FFFF3CE0FFFF1AD4FFFF1FD6FFFF23D7FFFF28D8FFFF2DDA
          FFFF23D2FAFF36CEF0FF76F4FFFF6FF1FFFF1BBCE5FF12B4E1FF5BEAFFFF58EA
          FFFF2BC6EAFF31C8ECFF58EAFFFF5AEAFFFF5EEBFFFF64ECFFFF55E8FFFF36DE
          FFFF00AADDFF008EC1FF0032459C0000002F0000000600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000037
          434500B8EBFD47DAF5FF7FF6FFFF16D3FFFF1DD5FFFF21D6FFFF24D7FFFF29DA
          FFFF21D2FBFF38D1F3FF7BF6FFFF14BAE7FF24CCF3FF31D6F8FF0BAFDFFF59E9
          FFFF2FC8ECFF2FC9ECFF56EAFFFF56E8FFFF5AE9FFFF5FEBFFFF42E3FFFF1DC8
          F1FF0099CDFF007EACEC00070959000000130000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000090B7BB00B8ECFF7CF4FEFF5BEAFFFF14D3FFFF1ED5FFFF22D6FFFF27D9
          FFFF20D2FAFF33D0F2FF13BFECFF22CFF6FF3CE1FFFF40E1FFFF35D8F8FF0CAF
          E0FF26C1E8FF2DC9EEFF52E8FFFF54E7FFFF5AE9FFFF4CE5FFFF39DDFDFF00A7
          DAFF0090C3FE0030408F00000023000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000021272800B0E3F112C2F0FF8AFAFFFF4CE5FFFF15D3FFFF1FD6FFFF24D7
          FFFF20D3FCFF00B6EBFF22D2FAFF34DDFFFF36DDFFFF3ADEFFFF40E2FFFF3ADB
          FCFF00A4D8FF2CCAEFFF4FE6FFFF51E6FFFF50E6FFFF46E4FFFF07B3E3FF0096
          CAFF005B79BE0002023200000009000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000046555700B5EAFA1AC7F1FF88F9FEFF5AE9FFFF18D4FFFF1FD6
          FFFF25D8FEFF24D6FEFF2DDBFFFF31DBFFFF33DCFFFF37DDFFFF3BDFFFFF41E1
          FFFF40E0FDFF45E1FEFF4BE4FFFF50E6FFFF4DE7FFFF0CB6E5FF009ACEFF0072
          99D400090D3F0000000C00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000053646600B6EAFA10C1F0FF79F2FCFF7BF4FFFF37DE
          FFFF1BD6FFFF22D8FFFF28D9FFFF2DDAFFFF31DBFFFF35DDFFFF39DEFFFF3BDF
          FFFF40E1FFFF4AE5FFFF58EBFFFF4AE2FDFF08B1E1FF009BCFFF007199CF000E
          123D0000000B0000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000414E5000ACDDEC00B9EDFF3AD4F4FF82F6
          FEFF75F3FFFF52E7FFFF3DE0FFFF32DDFFFF32DDFFFF38DFFFFF44E2FFFF52E7
          FFFF61EEFFFF5DECFFFF28C8EEFF00A4D7FF009FD1FE005F7CA900080B280000
          0007000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000181D1E0085AAAD00B6E9FB00B8
          EBFF2CCCF1FF55E1F8FF70EDFCFF77F4FFFF76F4FFFF70F1FFFF60E8FCFF46D9
          F4FF22C1E9FF00A7DAFF00A2D5FD0080A7CF002D3B580000000E000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000002932340076
          969C00A3D1E500B2E7FE00B1E6FF00B2E7FF00B1E4FF00AEE2FF00ABE0FF00A8
          DAFD008FB5DA0064839C0029364B0001020F0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010005050800212A33004256680050688100526C8C00475D85003343700015
          1A4B0001022C0000001D00000012000000070000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000C0000001E000000380000005800000073020201850202018C0101008E0000
          008B000000820000006E00000052000000320000001700000006000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000060000001A0000
          00400E0909762F1C1CA0553434C6694442E6714143F2704041F56C3E3DF15D3B
          35E33B2721C11B130FA40303029B000000880000005D0000002C0000000E0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000090000002A171010715C3A
          3AC3875555FB865354FF7D544DFF7A574CFF775249FF725145FF6D483DFF6D3D
          3AFF6F3F3CFF753B40FF673737F2052B09AD0002009E0000007B000000410000
          0014000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000B04030337483030A4905E5EFB8F60
          5DFF9B6B64FFA6746BFFB17573FFB27273FFAE7172FFAC6F70FFAB6D70FFA366
          69FF676041FF2F5D1AFF4D4A28FF1C731FFF075F11DE010D02A10000008A0000
          004A000000150000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000080A08083C694647C7966566FFA2726AFFBD7B
          78FFC07879FFBA7777FFB77474FFB37272FFB17171FFAF6F71FFA96E6EFF3C96
          36FF05AC18FF08AA17FF02900AFF017203FF0A7C14FF0A7413F4011603A30000
          008B000000450000001000000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000030B07072E795252D29C6C6AFFB57B74FFCB7E7FFFC57B
          7CFFC17979FFBE7878FFBA7676FFB77575FFB77374FFAD736FFF1BA62AFF0BAC
          1FFF0EA71EFF0DA71BFF0DA81AFF089C13FF017301FF097A13FF0A7513F60110
          03A1000000800000003100000007000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001000011624A4AB3A27171FFBE817AFFD28181FFCD7F7FFFC97D
          7DFFC57C7CFFC27A7AFFBF7878FFBD7777FFC17379FF32A339FF0FAE26FF11AA
          24FF10A922FF0FA81FFF0DA61CFF0DA71BFF0AA014FF007200FF0A7B14FF0967
          12E40004019F000000620000001A000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000004372A2A68A87778FEBB827BFFD98585FFD38282FFD08181FFCD7F
          7FFFCA7E7EFFC67C7CFFC37B7BFFC5787BFF858C60FF0CB329FF14AD2BFF13AC
          28FF12AB25FF10A923FF0FA820FF0EA71DFF0EA81CFF089911FF017001FF0C7E
          1AFF04370BB40000008E00000038000000080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000006030316926A6ADDAE7F7BFFE08989FFDC8686FFD88585FFD58383FFD181
          81FFCE8080FFCB7E7EFFC77D7DFFCF7880FF3CA743FF16B231FF16AF2EFF15AE
          2CFF14AD29FF12AB26FF11AA24FF10A921FF0EA71EFF0EA91EFF048408FF0678
          0DFF0C7A17F90109019D0000005D000000140000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00013E2E2E63B17F7FFECE8B85FFE48A8BFFDF8888FFDC8787FFD98585FFD684
          84FFD28282FFCF8080FFCD7F7FFFD37C81FF15B635FF19B234FF18B132FF17B0
          2FFF15AE2DFF14AD2AFF13AC27FF11AA25FF10A922FF0FA91FFF0CA319FF0073
          00FF0D811BFF043009AE0000007D000000220000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001805C5DB2B48683FFEB8F8EFFE88C8CFFE48B8BFFE08989FFDD8787FFDA86
          86FFD78484FFD48282FFD18182FFC2837BFF0FB936FF1BB437FF19B235FF18B1
          33FF17B030FF16AF2EFF14AD2BFF13AC28FF12AB26FF11AA23FF10AB22FF0280
          06FF097F15FF0A6816DC000000900000002F0000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000201
          0106A97E7FEBC68D89FFF29091FFEB8F8FFFE88D8DFFE58B8BFFE28A8AFFDE88
          88FFDB8686FFD88585FFD88384FFB58B77FF13BA3BFF1DB63BFF1BB438FF1AB3
          36FF19B233FF18B131FF16AF2FFF15AE2CFF14AD29FF12AB27FF12AB25FF0993
          13FF077C0DFF0F801DFA010501950000003A0000000800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000110D
          0D1BBB8989FBD5938DFFF69292FFEF9191FFEC8F8FFFE98E8EFFE68C8CFFE38A
          8AFFE08989FFDC8787FFDE8486FFA59472FF17BC3EFF1EB73FFF1DB63CFF1CB5
          39FF1AB337FF19B234FF18B132FF17B030FF15AE2DFF14AD2AFF13AD29FF0EA0
          1CFF037906FF108522FE020F04950000003D0000000900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002219
          192BC08E8EFEDE9691FFFE9696FFF79494FFF49392FFF19191FFEE8F8FFFEC8E
          8DFFE78C8CFFE58A8AFFE8888CFF5AAF5CFF17BF42FF20BB42FF1FBA3FFF1FB7
          3EFF1CB63AFF1BB639FF19B335FF18B233FF17B232FF16B12EFF16B12CFF10A8
          23FF037A03FF118A26FF031805860000002C0000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001912
          121DC39191FAC3928FFFC2908DFFBF8E8AFFBC8B87FFBB8885FFB78682FFB483
          80FFB1817DFFAE7E7AFFA67D75FF957C6DFF8D7D68FF21AA44FF1FA940FF1EA7
          3EFF1DA43BFF1BA238FF1AA036FF199C33FF189C31FF16982FFF15972CFF1394
          28FF138D28FF118422F3020F04480000000F0000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000513C3C62866364B2856A65BE826762BF816460BF7F625EBF7D605DBF7B5D
          5ABE785957B9765754B9755453B95F5147AC1D6830A9136B2AA914692AA91367
          27A9126525A9116425A90F5C209F0E5A1F9D0F581E9D0E5D1DA70D5D1DA90E5B
          1CA90947158C031A073C00000009000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001919
          19363D3D3D814F4F4FA8575757B95C5C5CC45F5F5FCA5F5F5FC95F5F5FC95F5F
          5FCA5B5B5BC25B5B5BC25F5F5FCA5F5F5FC95F5F5FC95F5F5FCA5C5C5CC45757
          57B94F4F4FA83D3D3D8119191936000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000505050A6C6C6CE67878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF7777
          77FFACACACFFACACACFF777777FF787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF6C6C6CE60505050A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005E5E5EC7787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF7C7C
          7CFFD3D3D3FFD3D3D3FF7C7C7CFF787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF5E5E5EC700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF9291
          8FFFC9CDDEFFC9CDDEFF92918FFF787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF9494
          8FFF8796E6FF8796E6FF94948FFF787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF767676FFBEBD
          B9FF8796E6FF8796E6FFBEBDB9FF767676FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000006C6C6CE6787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF737373FFD8D7
          D4FF566AD8FF566AD8FFD8D7D4FF737373FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF6C6C6CE600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B3783EFFB3783EFFB378
          3EFFB3783EFF00000000000000000000000000000000525252AF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF737370FFD6DA
          EAFF354DCDFF354DCDFFD6DAEAFF737370FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF525252AF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001000001B3783EFFB378
          3EFFB3783EFFB3783EFF00000000000000000000000000000000787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF777777FF7B7A76FFCDD4
          F7FF2842C9FF2842C9FFCDD4F7FF7B7A76FF777777FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF2424244C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000001000001B378
          3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000007878
          78FF787878FF787878FF787878FF787878FF787878FF737373FFA5A5A5FFFFFF
          FFFF2E47CBFF2E47CBFFFFFFFFFFA5A5A5FF737373FF787878FF787878FF7878
          78FF787878FF787878FF787878FF656565D70000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000100
          0001B3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
          0000787878FF787878FF787878FF787878FF787878FF6F6F6FFFDCDCDCFFFFFF
          FFFF4058CEFF4058CEFFFFFFFFFFDCDCDCFF6F6F6FFF787878FF787878FF7878
          78FF787878FF787878FF656565D7000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010000011B120926332212483D29
          1557402B165BB3783EFFB3783EFFB3783EFFB3783EFF00000000000000000000
          000001010102787878FE787878FF787878FF777777FF767676FFFFFFFFFFC8CF
          F0FF1531C5FF1531C5FFC8CFF0FFFFFFFFFF767676FF777777FF787878FF7878
          78FF787878FE3131316800000000000000000000000000000000222C13417092
          3FD785AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF82AA4AFA2936174F0000
          00000000000000000000160F081F65442390A36D38E8B3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF000000000000
          0000000000000000000029292957676767DD707070FFB8B8B8FFFFFFFFFFFFFF
          FFFFB2B2B1B3B2B2B1B3FFFFFFFFFFFFFFFFB8B8B8FF707070FF676767DD2929
          295700000000000000000000000000000000000000000000000070923FD785AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF303E1B5C000000000000
          00000101000256391E7AAD743CF7B3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFAF763DFA0000
          0000000000000000000000000000000000005C5C5C9FABABABB3383838420000
          000000000000000000000000000038383842ABABABB35C5C5C9F000000000000
          000000000000030301050000000000000000000000000000000085AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF566F30A400000000000000000402
          010579512AADB3783EFFB3783EFFB3783EFFB3783EFFAF753DF9956434D4875B
          2FC1865A2EBFB3783EFFB3783EFFB3783EFFB3783EFFAF763DFA000000000000
          00000404040469696969000000000000000000000000000000002828284A6060
          60CD737371FF737371FF606060CD2828284A0000000000000000000000000507
          030A4053247A759942E10000000000000000000000000000000085AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF82A949F90B0D07130000000000000000714C
          27A1B3783EFFB3783EFFB3783EFF9D6936E0452F18630805030B000000000000
          000020160B2EB3783EFFB3783EFFB3783EFFB0763DFB00000000000000000000
          0000050505057E7E7E7E000000000000000000000000626262D3757575FF7777
          77FF787878FF787878FF777777FF757575FF626262D300000000000000000303
          0105607E36B985AD4BFF0000000000000000000000000000000085AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF577131A70000000000000000402B165BB378
          3EFFB3783EFFB3783EFF7B522BAF0806030C0000000000000000000000001C13
          0A28B3783EFFB3783EFFB3783EFFB0763DFB0000000000000000000000000505
          0505DBDBDBDB0707070700000000000000006D6D6DEA777777FF787878FF7878
          78FF787878FF787878FF787878FF787878FF777777FF6D6D6DEA000000000000
          00001015091F81A849F70000000000000000000000000000000085AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF242C183C00000000040301069F6A37E2B378
          3EFFB3783EFF81572DB80201010300000000000000000000000019100923B378
          3EFFB3783EFFB3783EFFB0763DFB000000000000000000000000020301048BB1
          54FF5D65537300000000000000004D4D4DA3787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF4D4D4DA30000
          000000000000526B2E9E0000000000000000000000000000000085AD4BFF85AD
          4BFF93B65FFFA1BF74FFC4D7A8FF0A0A0A0A000000003B281454B3783EFFB378
          3EFFAB733BF4130D071B000000000000000000000000150E071EB3783EFFB378
          3EFFB3783EFFB0763DFB0000000000000000000000000203010485AD4BFF85AD
          4BFF141A0B27000000000505050B787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF0505
          050B000000002A3718510000000000000000000000000000000085AD4BFF85AD
          4BFFFFFFFFFFFFFFFFFFFFFFFFFF0101010100000000724D28A3B3783EFFB378
          3EFF6B4825990000000000000000383838380000000000000000000000000000
          00000000000000000000000000000000000004040404BBD19BFF9FBE71FF7CA1
          46ED01010001000000003434346E787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF3434
          346E000000000B0F06160000000000000000000000000000000085AD4BFF85AD
          4BFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000946333D3B3783EFFB378
          3EFF382613500000000003030303C9C9C9C90000000000000000000000000000
          000000000000000000000000000004040404FFFFFFFFFBFCFAFFFFFFFFFFB3BB
          A6CE00000000000000004B4B4B9F787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF4B4B
          4B9F00000000000000000000000000000000000000000000000085AD4BFF85AD
          4BFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000A66F39ECB3783EFFB378
          3EFF1F150B2C000000003A3A3A3AFFFFFFFFCDDDB5FF85AD4BFF98B967FFFBFC
          FAFFFFFFFFFFC5D8AAFF88AF4FFFFDFDFCFFFFFFFFFF89AF50FFC7D9ACFFCECE
          CECE00000000000000004D4D4DA3787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF4D4D
          4DA300000000000000000000000000000000000000000000000085AD4BFF85AD
          4BFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000B3783EFFB3783EFFB378
          3EFF000000000000000091919191FFFFFFFFA5C37BFF85AD4BFFACC785FFF2F6
          ECFFE3ECD6FF85AD4BFF85AD4BFFFEFEFEFFFFFFFFFF85AD4BFF85AD4CFFE8EA
          E6EF030303030000000038383876787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF3838
          3876000000000C1007170000000000000000000000000000000085AD4BFF85AD
          4BFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          00000000000000000000D3D3D3D3FFFFFFFF8CB256FF85AD4BFF85AD4BFF85AD
          4BFF8BB154FF85AD4BFF86AD4CFFFFFFFFFFFFFFFFFF85AD4BFFA9C580FFFEFE
          FEFF2D2D2D2E000000000A0A0A15787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF0A0A
          0A15000000002B3818530000000000000000000000000000000085AD4BFF85AD
          4BFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          00000000000000000000FFFFFFFFFAFBF7FF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF88AF4FFFA6C37CFFFFFFFFFFFFFFFFFFEDF3E5FFFFFFFFFFFBFC
          FAFF546043790000000000000000555555B5787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF555555B50000
          000000000000556F30A30000000000000000000000000000000085AD4BFF85AD
          4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF6FF85AD4BFF85AD4BFF85AD4BFF8DB2
          57FFC8DAAEFFF6F9F2FFFFFFFFFFFFFFFFFFFEFEFEFFE6EEDAFFC9DAAFFF96B8
          64FF769A43E3040502080000000000000000757575F8787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF757575F8000000000000
          000013190B2582A949F90000000000000000000000000000000085AD4BFF85AD
          4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8CB256FF85AD4BFF86AD4CFFE6EE
          DAFFFFFFFFFFE6EEDAFFAEC887FFFDFEFCFFFDFDFCFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF4C632B92000000000000000001010103686868DD787878FF7878
          78FF787878FF787878FF787878FF787878FF686868DD01010103000000000707
          0707627F37BB85AD4BFF0000000000000000000000000000000085AD4BFF85AD
          4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5C37BFF85AD4BFF98BA68FFFFFF
          FFFFFFFFFFFF8DB358FF85AD4BFFFDFDFCFFFDFDFCFF85AD4BFF8AB052FF93B6
          60FF85AD4BFF84AC4AFD2F3E1B5B000000000000000000000000272727535C5C
          5CC3787878FF787878FF5C5C5CC3272727530000000000000000010101018E8E
          8E8E85AD4BFF85AD4BFF0000000000000000000000000000000085AD4BFF85AD
          4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDDDB6FF85AD4BFF8DB256FFFAFB
          F8FFFFFFFFFFADC786FF85AD4BFFFDFDFCFFFDFDFCFF85AD4BFFC5D8A9FFFFFF
          FFFFD9E5C7FF85AD4BFF83AA4AFB626A577A0404040400000000000000000000
          000000000000000000000000000000000000000000000F0F0F0FACACACACFFFF
          FFFF85AD4BFF85AD4BFF0000000000000000000000000000000085AD4BFF85AD
          4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF7FF90B45BFF85AD4BFFAFC9
          88FFFAFCF8FFFEFEFEFFE4EDD8FFFEFEFEFFFEFEFEFFE6EEDAFFFFFFFFFFF2F6
          ECFF99BA69FF85AD4BFF90B45BFFF9FBF7FFCACACACA47474747050505050000
          00000000000000000000000000001111111169696969E6E6E6E6FFFFFFFFFFFF
          FFFF85AD4BFF85AD4BFF0000000000000000000000000000000085AD4BFF85AD
          4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E3C3FF85AD4BFF85AD
          4BFF92B65EFFBCD29CFFD2E1BDFFFDFDFCFFFDFEFDFFD4E2C0FFB7CF95FF8BB1
          54FF85AD4BFF85AD4BFFD6E3C3FFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0BABA
          BABA98989898A0A0A0A0CDCDCDCDFCFCFCFCEAF1E0FFB5CD92FF96B965FF88AF
          50FF85AD4BFF85AD4BFF0000000000000000000000000000000085AD4BFF85AD
          4BFF88AF50FF97B966FFBCD29DFFF5F8F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2D6A5FF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFFD9E5C7FFDDE8CEFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFFC2D6A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD0DFBAFF87AE4EFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF0000000000000000000000000000000085AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF93B660FFF2F6EDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0DF
          B9FF8BB155FF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF8BB1
          55FFD0DFB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE9F0DEFF87AE4DFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF0000000000000000000000000000000085AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFFB3CC90FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF5F8F0FFC5D8AAFFA3C177FF92B65EFF92B65EFFA3C177FFC5D8AAFFF5F8
          F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB3CC90FF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF0000000000000000000000000000000085AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF8DB257FFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF95B762FF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF0000000000000000000000000000000085AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFFF7F9F3FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF87AE4EFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF0000000000000000000000000000000070923FD785AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF70923FD700000000000000000000000000000000222C13417092
          3FD785AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF70923FD7222C134100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object escFlat: TcxEditStyleController
    Style.BorderStyle = ebsFlat
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfFlat
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.BorderStyle = ebsFlat
    StyleFocused.Color = 7471103
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleFocused.TextColor = clHotLight
    StyleHot.LookAndFeel.Kind = lfFlat
    Left = 528
    Top = 216
    PixelsPerInch = 96
  end
  object tProdFor: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'ProdFor'
    IndexName = 'IProdFor'
    Left = 808
    Top = 272
    object tProdForUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tProdForProduto: TLongWordField
      FieldName = 'Produto'
    end
    object tProdForFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tProdForRef: TStringField
      FieldName = 'Ref'
    end
    object tProdForPos: TWordField
      FieldName = 'Pos'
    end
  end
  object tPro: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Timeout = 120000
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Produto'
    IndexName = 'IID'
    Left = 624
    Top = 224
    object tProID: TUnsignedAutoIncField
      FieldName = 'ID'
    end
    object tProUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tProPreco: TCurrencyField
      FieldName = 'Preco'
    end
    object tProPrecoAuto: TBooleanField
      FieldName = 'PrecoAuto'
    end
    object tProMargem: TFloatField
      FieldName = 'Margem'
    end
    object tProImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object tProFornecedor: TLongWordField
      FieldName = 'Fornecedor'
    end
    object tProEstoqueAtual: TFloatField
      FieldName = 'EstoqueAtual'
    end
    object tProEstoquePend: TFloatField
      FieldName = 'EstoquePend'
    end
    object tProEstoqueTot: TFloatField
      FieldName = 'EstoqueTot'
    end
    object tProbrtrib: TWordField
      FieldName = 'brtrib'
    end
    object tProCustoUnitario: TCurrencyField
      FieldName = 'CustoUnitario'
    end
    object tProPodeAlterarPreco: TBooleanField
      FieldName = 'PodeAlterarPreco'
    end
    object tProPermiteVendaFracionada: TBooleanField
      FieldName = 'PermiteVendaFracionada'
    end
    object tProNaoControlaEstoque: TBooleanField
      FieldName = 'NaoControlaEstoque'
    end
    object tProEstoqueMin: TFloatField
      FieldName = 'EstoqueMin'
    end
    object tProEstoqueMax: TFloatField
      FieldName = 'EstoqueMax'
    end
    object tProAbaixoMin: TBooleanField
      FieldName = 'AbaixoMin'
    end
    object tProAbaixoMinDesde: TDateTimeField
      FieldName = 'AbaixoMinDesde'
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
    object tProPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tProPesoLiq: TFloatField
      FieldName = 'PesoLiq'
    end
    object tProtax_id: TLongWordField
      FieldName = 'tax_id'
    end
    object tProAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object tProFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object tProFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object tProNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object tProNCM_Ex: TStringField
      FieldName = 'NCM_Ex'
      Size = 2
    end
    object tProcest: TLongWordField
      FieldName = 'cest'
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
    object tProCadastroRapido: TBooleanField
      FieldName = 'CadastroRapido'
    end
    object tProIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tProAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object tProAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 30
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
    object tProCodigo2: TWideStringField
      FieldName = 'Codigo2'
      Size = 30
    end
  end
  object tMarca: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'Marca'
    IndexName = 'IUID'
    Left = 415
    Top = 151
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
  object dsMarca: TDataSource
    DataSet = tMarca
    Left = 495
    Top = 167
  end
  object tAux: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'Produto'
    IndexName = 'IMarcaDescr'
    Left = 383
    Top = 215
  end
end
