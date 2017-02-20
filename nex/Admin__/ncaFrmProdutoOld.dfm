object FrmProduto: TFrmProduto
  Left = 282
  Top = 164
  Caption = 'Dados do Produto ou Servi'#231'o'
  ClientHeight = 673
  ClientWidth = 1016
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object LMDSimplePanel2: TLMDSimplePanel
    Left = 0
    Top = 36
    Width = 1016
    Height = 637
    Hint = ''
    Margins.Left = 0
    Margins.Top = 5
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    Bevel.BorderInnerWidth = 7
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 4
    object Paginas: TcxPageControl
      Left = 7
      Top = 7
      Width = 1002
      Height = 623
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tsCadastro
      Properties.CustomButtons.Buttons = <>
      Properties.HideTabs = True
      Properties.Style = 6
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 623
      ClientRectRight = 1002
      ClientRectTop = 0
      object tsCadastro: TcxTabSheet
        Caption = 'Dados do Produto'
        ImageIndex = 1
        object LMDSimplePanel3: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 1002
          Height = 623
          Hint = ''
          Margins.Left = 0
          Margins.Top = 7
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Bevel.Mode = bmCustom
          TabOrder = 0
          object LMDSimplePanel7: TLMDSimplePanel
            Left = 0
            Top = 0
            Width = 199
            Height = 623
            Hint = ''
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 7
            Margins.Bottom = 0
            Align = alLeft
            Bevel.BorderSides = [fsRight]
            Bevel.Mode = bmStandard
            Bevel.StandardStyle = lsNone
            TabOrder = 0
            object pagFoto: TcxPageControl
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 192
              Height = 198
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
              ClientRectBottom = 197
              ClientRectLeft = 1
              ClientRectRight = 191
              ClientRectTop = 1
              object tsSemFoto: TcxTabSheet
                Caption = 'SemFoto'
                ImageIndex = 0
                object LMDSimplePanel1: TLMDSimplePanel
                  Left = 0
                  Top = 0
                  Width = 190
                  Height = 196
                  Hint = ''
                  Align = alClient
                  Bevel.Mode = bmStandard
                  TabOrder = 0
                  object Image1: TImage
                    AlignWithMargins = True
                    Left = 1
                    Top = 1
                    Width = 188
                    Height = 112
                    Margins.Left = 0
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 26
                    Align = alClient
                    Center = True
                    ExplicitTop = -1
                    ExplicitWidth = 162
                    ExplicitHeight = 177
                  end
                  object lbSemFoto: TcxLabel
                    AlignWithMargins = True
                    Left = 11
                    Top = 149
                    Cursor = crHandPoint
                    Margins.Left = 10
                    Margins.Top = 10
                    Margins.Right = 10
                    Margins.Bottom = 10
                    Align = alBottom
                    Caption = 'Clique aqui para selecionar uma foto para esse produto'
                    Style.HotTrack = True
                    Style.TextColor = 10395294
                    Style.TextStyle = []
                    Style.TransparentBorder = True
                    StyleHot.BorderStyle = ebsNone
                    StyleHot.TextColor = clBlack
                    StyleHot.TextStyle = [fsUnderline]
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taBottomJustify
                    Properties.WordWrap = True
                    Transparent = True
                    OnClick = lbSemFotoClick
                    Width = 168
                    AnchorX = 95
                    AnchorY = 185
                  end
                end
              end
              object tsFoto: TcxTabSheet
                Caption = 'Foto'
                ImageIndex = 1
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 192
                ExplicitHeight = 198
                object panFoto: TLMDSimplePanel
                  Left = 0
                  Top = 0
                  Width = 190
                  Height = 196
                  Hint = ''
                  Align = alClient
                  Bevel.Mode = bmCustom
                  TabOrder = 0
                  ExplicitWidth = 192
                  ExplicitHeight = 198
                  object edFoto: TcxDBImage
                    Left = 0
                    Top = 0
                    Cursor = crHandPoint
                    TabStop = False
                    Align = alClient
                    DataBinding.DataField = 'Imagem'
                    DataBinding.DataSource = dsMT
                    Properties.GraphicClassName = 'TdxSmartImage'
                    Properties.ImmediatePost = True
                    Properties.OnEditValueChanged = edFotoPropertiesEditValueChanged
                    Style.BorderStyle = ebsFlat
                    Style.Color = clWhite
                    TabOrder = 0
                    ExplicitWidth = 192
                    ExplicitHeight = 198
                    Height = 196
                    Width = 190
                  end
                end
              end
            end
          end
          object panCampos: TLMDSimplePanel
            Left = 199
            Top = 0
            Width = 803
            Height = 623
            Hint = ''
            Margins.Left = 7
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Bevel.Mode = bmCustom
            TabOrder = 1
            object panDescr: TLMDSimplePanel
              AlignWithMargins = True
              Left = 0
              Top = 45
              Width = 803
              Height = 36
              Hint = ''
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Constraints.MaxWidth = 803
              Align = alTop
              Bevel.BorderColor = clSilver
              Bevel.BorderInnerWidth = 2
              Bevel.Mode = bmStandard
              Bevel.StandardStyle = lsNone
              Color = clWhite
              TabOrder = 1
              object edDescr: TcxDBTextEdit
                Left = 71
                Top = 2
                Align = alClient
                OnFocusChanged = edDescrFocusChanged
                DataBinding.DataField = 'Descricao'
                DataBinding.DataSource = dsMT
                ParentFont = False
                Style.BorderColor = clWindowFrame
                Style.BorderStyle = ebsNone
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -17
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.LookAndFeel.NativeStyle = False
                Style.StyleController = FrmPri.cxEditStyleController1
                Style.TextColor = clBlack
                Style.TextStyle = [fsBold]
                Style.TransparentBorder = False
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.BorderStyle = ebsNone
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.TextColor = clBlack
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                Width = 730
              end
              object cxLabel3: TcxLabel
                AlignWithMargins = True
                Left = 7
                Top = 2
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alLeft
                Caption = 'Descri'#231#227'o:'
                FocusControl = edDescr
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.TextColor = clBlack
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                Transparent = True
                OnClick = cxLabel3Click
                AnchorY = 18
              end
            end
            object panCodigo: TLMDSimplePanel
              Left = 0
              Top = 0
              Width = 803
              Height = 38
              Hint = ''
              Align = alTop
              Bevel.Mode = bmCustom
              TabOrder = 0
              object panCod: TLMDSimplePanel
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 393
                Height = 38
                Hint = ''
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alLeft
                Bevel.BorderColor = clSilver
                Bevel.BorderInnerWidth = 2
                Bevel.LightColor = clGray
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsNone
                Color = clWhite
                TabOrder = 0
                object imgBarcodeScan: TImage
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 56
                  Height = 34
                  Hint = 
                    'Voc'#234' pode utilizar um leitor de c'#243'digo de barras para cadastrar ' +
                    'o c'#243'digo do produto. Basta plugar e usar!'
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alLeft
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
                object edCodigo: TcxDBMaskEdit
                  Left = 58
                  Top = 2
                  Align = alClient
                  OnFocusChanged = edDescrFocusChanged
                  DataBinding.DataField = 'Codigo'
                  DataBinding.DataSource = dsMT
                  ParentFont = False
                  Properties.MaxLength = 0
                  Properties.OnChange = edCodigoPropertiesChange
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebsNone
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -17
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.LookAndFeel.NativeStyle = False
                  Style.StyleController = FrmPri.cxEditStyleController1
                  Style.TextColor = clBlack
                  Style.TextStyle = [fsBold]
                  Style.TransparentBorder = False
                  Style.IsFontAssigned = True
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.BorderStyle = ebsNone
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleFocused.TextColor = clBlack
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 0
                  Width = 333
                end
                object lbPromptCodigo: TcxLabel
                  AlignWithMargins = True
                  Left = 71
                  Top = 9
                  Cursor = crHandPoint
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 2
                  Caption = 'Digite o C'#243'digo ou use o Leitor de C'#243'digo de Barras'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -12
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = True
                  Style.TextColor = 12171705
                  Style.IsFontAssigned = True
                  StyleHot.BorderStyle = ebsNone
                  StyleHot.TextColor = clBlack
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  AnchorY = 18
                end
              end
              object panNCM: TLMDSimplePanel
                AlignWithMargins = True
                Left = 400
                Top = 0
                Width = 403
                Height = 38
                Hint = ''
                Margins.Left = 7
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alLeft
                Bevel.BorderColor = clSilver
                Bevel.BorderInnerWidth = 2
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsNone
                Color = clWhite
                TabOrder = 1
                Visible = False
                object lbNCM: TcxLabel
                  AlignWithMargins = True
                  Left = 7
                  Top = 2
                  Margins.Left = 5
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  Caption = 'NCM: '
                  FocusControl = edNCM
                  ParentColor = False
                  ParentFont = False
                  Style.Color = 16316922
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.TextColor = clBlack
                  Style.TransparentBorder = False
                  Style.IsFontAssigned = True
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  OnClick = cxLabel7Click
                  AnchorY = 19
                end
                object edNCM: TcxDBLookupComboBox
                  Left = 42
                  Top = 2
                  TabStop = False
                  Align = alClient
                  OnFocusChanged = edDescrFocusChanged
                  DataBinding.DataField = 'LookupNCM'
                  DataBinding.DataSource = dsMT
                  ParentFont = False
                  Properties.ClearKey = 46
                  Properties.DropDownHeight = 300
                  Properties.DropDownRows = 400
                  Properties.DropDownSizeable = True
                  Properties.GridMode = True
                  Properties.ImmediateDropDownWhenActivated = True
                  Properties.ImmediatePost = True
                  Properties.KeyFieldNames = 'NCM'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NCMDescr'
                    end>
                  Properties.ListOptions.CaseInsensitive = True
                  Properties.ListOptions.ColumnSorting = False
                  Properties.ListOptions.FocusRowOnMouseMove = False
                  Properties.ListOptions.GridLines = glNone
                  Properties.ListOptions.ShowHeader = False
                  Properties.PostPopupValueOnTab = True
                  Properties.Revertable = True
                  Style.BorderStyle = ebsNone
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -17
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.Shadow = False
                  Style.StyleController = FrmPri.cxEditStyleController1
                  Style.TransparentBorder = False
                  Style.PopupBorderStyle = epbsSingle
                  Style.IsFontAssigned = True
                  StyleFocused.BorderStyle = ebsNone
                  TabOrder = 1
                  OnKeyDown = edNCMKeyDown
                  Width = 359
                end
              end
            end
            object panPreco: TLMDSimplePanel
              AlignWithMargins = True
              Left = 0
              Top = 88
              Width = 803
              Height = 36
              Hint = ''
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Constraints.MaxWidth = 803
              Align = alTop
              Bevel.BorderColor = clSilver
              Bevel.BorderInnerWidth = 2
              Bevel.LightColor = clGray
              Bevel.Mode = bmStandard
              Bevel.StandardStyle = lsNone
              Color = clWhite
              TabOrder = 2
              object edPreco: TcxPopupEdit
                Left = 2
                Top = 2
                Align = alClient
                OnFocusChanged = edDescrFocusChanged
                ParentFont = False
                Properties.PopupAutoSize = False
                Properties.PopupSizeable = False
                Properties.ReadOnly = True
                Properties.OnInitPopup = edPrecoPropertiesInitPopup
                Properties.OnPopup = edPrecoPropertiesPopup
                Style.BorderStyle = ebsNone
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -19
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.HotTrack = False
                Style.StyleController = FrmPri.cxEditStyleController1
                Style.TransparentBorder = False
                Style.PopupBorderStyle = epbsFrame3D
                Style.IsFontAssigned = True
                StyleFocused.BorderStyle = ebsNone
                TabOrder = 0
                OnEnter = edPrecoEnter
                Width = 799
              end
              object panInnerPreco: TLMDSimplePanel
                AlignWithMargins = True
                Left = 2
                Top = 2
                Width = 783
                Height = 32
                Hint = ''
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 16
                Margins.Bottom = 0
                Align = alClient
                Bevel.Mode = bmCustom
                ParentColor = True
                TabOrder = 1
                OnClick = panDadosPrecoClick
                object panDadosPreco: TLMDSimplePanel
                  Left = 0
                  Top = 0
                  Width = 783
                  Height = 32
                  Hint = ''
                  Margins.Top = 0
                  Margins.Right = 20
                  Margins.Bottom = 0
                  Align = alClient
                  Bevel.Mode = bmCustom
                  ParentColor = True
                  TabOrder = 0
                  OnClick = panDadosPrecoClick
                  object lbPromptPreco: TcxLabel
                    AlignWithMargins = True
                    Left = 5
                    Top = 0
                    Margins.Left = 5
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alLeft
                    Caption = 'Pre'#231'o de Venda: '
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -13
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.TextColor = clBlack
                    Style.IsFontAssigned = True
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    Transparent = True
                    OnClick = panDadosPrecoClick
                    AnchorY = 16
                  end
                  object lbPreco: TcxLabel
                    Left = 108
                    Top = 0
                    Margins.Left = 0
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alLeft
                    Caption = 'R$ 0,00'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -17
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.TextColor = clBlue
                    Style.TextStyle = [fsBold]
                    Style.IsFontAssigned = True
                    StyleFocused.TextColor = clBlack
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    Transparent = True
                    OnClick = panDadosPrecoClick
                    AnchorY = 16
                  end
                  object panCustoLucro: TLMDSimplePanel
                    AlignWithMargins = True
                    Left = 183
                    Top = 0
                    Width = 600
                    Height = 32
                    Hint = ''
                    Margins.Left = 5
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alClient
                    Bevel.BorderColor = clSilver
                    Bevel.Mode = bmStandard
                    Bevel.StandardStyle = lsNone
                    ParentColor = True
                    TabOrder = 2
                    Visible = False
                    OnClick = panDadosPrecoClick
                    object lbMargem: TcxLabel
                      Left = 0
                      Top = 0
                      Margins.Left = 15
                      Margins.Top = 0
                      Margins.Right = 0
                      Margins.Bottom = 0
                      Align = alLeft
                      Caption = '(Lucro 50%)'
                      ParentFont = False
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -17
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.TextColor = clBlack
                      Style.IsFontAssigned = True
                      Properties.Alignment.Horz = taLeftJustify
                      Properties.Alignment.Vert = taVCenter
                      Transparent = True
                      OnClick = panDadosPrecoClick
                      AnchorY = 16
                    end
                    object lbCusto: TcxLabel
                      Left = 530
                      Top = 0
                      Margins.Left = 5
                      Margins.Top = 0
                      Margins.Right = 0
                      Margins.Bottom = 0
                      Align = alRight
                      Caption = 'R$ 0,00'
                      ParentFont = False
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -17
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = [fsBold]
                      Style.TextColor = clBlack
                      Style.TextStyle = [fsBold]
                      Style.IsFontAssigned = True
                      Properties.Alignment.Horz = taLeftJustify
                      Properties.Alignment.Vert = taVCenter
                      Transparent = True
                      OnClick = panDadosPrecoClick
                      AnchorY = 16
                    end
                    object lbPromptCusto: TcxLabel
                      Left = 489
                      Top = 0
                      Margins.Left = 15
                      Margins.Top = 0
                      Margins.Right = 0
                      Margins.Bottom = 0
                      Align = alRight
                      Caption = 'Custo:'
                      ParentFont = False
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -13
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.TextColor = clBlack
                      Style.IsFontAssigned = True
                      Properties.Alignment.Horz = taLeftJustify
                      Properties.Alignment.Vert = taVCenter
                      Transparent = True
                      OnClick = panDadosPrecoClick
                      AnchorY = 16
                    end
                  end
                end
              end
            end
            object panCategUnid: TLMDSimplePanel
              AlignWithMargins = True
              Left = 0
              Top = 174
              Width = 803
              Height = 36
              Hint = ''
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              Bevel.Mode = bmCustom
              TabOrder = 4
              object panCateg: TLMDSimplePanel
                Left = 0
                Top = 0
                Width = 394
                Height = 36
                Hint = ''
                Align = alLeft
                Bevel.BorderColor = clSilver
                Bevel.BorderInnerWidth = 2
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsNone
                Color = clWhite
                TabOrder = 0
                object cxLabel6: TcxLabel
                  AlignWithMargins = True
                  Left = 7
                  Top = 2
                  Margins.Left = 5
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  Caption = 'Categoria:'
                  FocusControl = edCateg
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.TextColor = clBlack
                  Style.IsFontAssigned = True
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  OnClick = cxLabel6Click
                  AnchorX = 39
                  AnchorY = 18
                end
                object edCateg: TcxDBLookupComboBox
                  Left = 71
                  Top = 2
                  Align = alClient
                  OnFocusChanged = edDescrFocusChanged
                  DataBinding.DataField = 'LookupCateg'
                  DataBinding.DataSource = dsMT
                  ParentFont = False
                  Properties.ClearKey = 46
                  Properties.DropDownHeight = 300
                  Properties.DropDownRows = 400
                  Properties.DropDownSizeable = True
                  Properties.GridMode = True
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
                  Style.BorderStyle = ebsNone
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -17
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.Shadow = False
                  Style.StyleController = FrmPri.cxEditStyleController1
                  Style.TransparentBorder = False
                  Style.PopupBorderStyle = epbsSingle
                  Style.IsFontAssigned = True
                  StyleFocused.BorderStyle = ebsNone
                  TabOrder = 1
                  OnKeyDown = edCategKeyDown
                  Width = 321
                end
              end
              object panUnid: TLMDSimplePanel
                AlignWithMargins = True
                Left = 401
                Top = 0
                Width = 402
                Height = 36
                Hint = ''
                Margins.Left = 7
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alLeft
                Bevel.BorderColor = clSilver
                Bevel.BorderInnerWidth = 2
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsNone
                Color = clWhite
                TabOrder = 1
                object cxLabel7: TcxLabel
                  AlignWithMargins = True
                  Left = 7
                  Top = 2
                  Margins.Left = 5
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  Caption = 'Unidade de Medida: '
                  FocusControl = edUnid
                  ParentColor = False
                  ParentFont = False
                  Style.Color = 16316922
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.TextColor = clBlack
                  Style.TransparentBorder = False
                  Style.IsFontAssigned = True
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  OnClick = cxLabel7Click
                  AnchorY = 18
                end
                object edUnid: TcxDBLookupComboBox
                  Left = 125
                  Top = 2
                  Align = alClient
                  OnFocusChanged = edDescrFocusChanged
                  DataBinding.DataField = 'LookupUnid'
                  DataBinding.DataSource = dsMT
                  ParentFont = False
                  Properties.ClearKey = 46
                  Properties.DropDownHeight = 300
                  Properties.DropDownRows = 400
                  Properties.DropDownSizeable = True
                  Properties.GridMode = True
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
                  Style.BorderStyle = ebsNone
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -17
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.Shadow = False
                  Style.StyleController = FrmPri.cxEditStyleController1
                  Style.TransparentBorder = False
                  Style.PopupBorderStyle = epbsSingle
                  Style.IsFontAssigned = True
                  StyleFocused.BorderStyle = ebsNone
                  TabOrder = 1
                  OnKeyDown = edUnidKeyDown
                  Width = 275
                end
              end
            end
            object panFornecedor: TLMDSimplePanel
              AlignWithMargins = True
              Left = 0
              Top = 217
              Width = 803
              Height = 36
              Hint = ''
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Constraints.MaxWidth = 803
              Align = alTop
              Bevel.BorderColor = clSilver
              Bevel.BorderInnerWidth = 2
              Bevel.Mode = bmStandard
              Bevel.StandardStyle = lsNone
              Color = clWhite
              TabOrder = 5
              object edFornecedor: TcxDBPopupEdit
                Left = 81
                Top = 2
                Align = alClient
                OnFocusChanged = edDescrFocusChanged
                DataBinding.DataField = 'NomeFor'
                DataBinding.DataSource = dsMT
                ParentFont = False
                Properties.MaxLength = 0
                Properties.OnCloseUp = edFornecedorPropertiesCloseUp
                Properties.OnInitPopup = edFornecedorPropertiesInitPopup
                Style.BorderColor = clWindowFrame
                Style.BorderStyle = ebsNone
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -17
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.LookAndFeel.NativeStyle = False
                Style.StyleController = FrmPri.cxEditStyleController1
                Style.TransparentBorder = False
                Style.ButtonStyle = btsSimple
                Style.ButtonTransparency = ebtInactive
                Style.PopupBorderStyle = epbsFlat
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.BorderStyle = ebsNone
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                Width = 720
              end
              object cxLabel5: TcxLabel
                AlignWithMargins = True
                Left = 7
                Top = 2
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alLeft
                Caption = 'Fornecedor:'
                FocusControl = edFornecedor
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.TextColor = clBlack
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Transparent = True
                OnClick = cxLabel5Click
                AnchorX = 44
                AnchorY = 18
              end
            end
            object panObs: TLMDSimplePanel
              AlignWithMargins = True
              Left = 0
              Top = 260
              Width = 803
              Height = 74
              Hint = ''
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Constraints.MaxWidth = 803
              Align = alTop
              Bevel.BorderColor = clSilver
              Bevel.BorderInnerWidth = 2
              Bevel.Mode = bmStandard
              Bevel.StandardStyle = lsNone
              Color = clWhite
              TabOrder = 6
              object cxLabel9: TcxLabel
                AlignWithMargins = True
                Left = 7
                Top = 2
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Observa'#231#245'es'
                FocusControl = edObs
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.TextColor = clBlack
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taLeftJustify
                Transparent = True
                OnClick = cxLabel9Click
              end
              object edObs: TcxDBMemo
                AlignWithMargins = True
                Left = 7
                Top = 22
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                OnFocusChanged = edDescrFocusChanged
                DataBinding.DataField = 'Obs'
                DataBinding.DataSource = dsMT
                ParentFont = False
                Style.BorderColor = clWindowFrame
                Style.BorderStyle = ebsNone
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.LookAndFeel.NativeStyle = False
                Style.StyleController = FrmPri.cxEditStyleController1
                Style.TextStyle = [fsBold]
                Style.TransparentBorder = False
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.BorderStyle = ebsNone
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 1
                Height = 50
                Width = 794
              end
              object panLookup: TLMDSimplePanel
                AlignWithMargins = True
                Left = 328
                Top = 14
                Width = 393
                Height = 26
                Hint = ''
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Bevel.BorderSides = []
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsNone
                TabOrder = 2
                Visible = False
                object btnExcluir: TcxButton
                  Left = 164
                  Top = 0
                  Width = 82
                  Height = 26
                  Cursor = crHandPoint
                  Align = alLeft
                  Caption = 'Excluir'
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  OptionsImage.Glyph.Data = {
                    76020000424D760200000000000036000000280000000C0000000C0000000100
                    2000000000004002000000000000000000000000000000000000000000000000
                    0000000000000000005F000000BF000000EF000000DF000000AF0000005F0000
                    00000000000000000000000000000000000F000000CF000000FF000000FF0000
                    00FF000000FF000000FF000000FF000000CF0000000F00000000000000000000
                    00CF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                    00FF000000CF000000000000005F000000FF000000FF000000FF000000FF0000
                    00FF000000FF000000FF000000FF000000FF000000FF0000005F000000BF0000
                    00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                    00FF000000FF000000BF000000DF000000FF000000FF00000000000000000000
                    0000000000000000000000000000000000FF000000FF000000EF000000EF0000
                    00FF000000FF0000000000000000000000000000000000000000000000000000
                    00FF000000FF000000DF000000BF000000FF000000FF000000FF000000FF0000
                    00FF000000FF000000FF000000FF000000FF000000FF000000AF0000005F0000
                    00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                    00FF000000FF0000005F00000000000000CF000000FF000000FF000000FF0000
                    00FF000000FF000000FF000000FF000000FF000000CF00000000000000000000
                    000F000000CF000000FF000000FF000000FF000000FF000000FF000000FF0000
                    00CF0000000F000000000000000000000000000000000000005F000000BF0000
                    00DF000000EF000000BF0000005F000000000000000000000000}
                  SpeedButtonOptions.CanBeFocused = False
                  SpeedButtonOptions.Flat = True
                  TabOrder = 0
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = btnExcluirClick
                end
                object btnEditar: TcxButton
                  Left = 82
                  Top = 0
                  Width = 82
                  Height = 26
                  Cursor = crHandPoint
                  Align = alLeft
                  Caption = 'Editar'
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  OptionsImage.Glyph.Data = {
                    0E030000424D0E0300000000000036000000280000000D0000000E0000000100
                    200000000000D8020000000000000000000000000000000000000000000F0000
                    001F000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000001F000000FF000000CF0000006F0000
                    000F000000000000000000000000000000000000000000000000000000000000
                    000000000000000000CF000000FF000000CF0000001F0000000F000000000000
                    00000000000000000000000000000000000000000000000000000000006F0000
                    00CF0000001F000000CF000000CF0000000F0000000000000000000000000000
                    00000000000000000000000000000000000F0000001F000000CF000000FF0000
                    00FF000000CF0000000F00000000000000000000000000000000000000000000
                    0000000000000000000F000000CF000000FF000000FF000000FF000000CF0000
                    000F000000000000000000000000000000000000000000000000000000000000
                    000F000000CF000000FF000000FF000000FF000000CF0000000F000000000000
                    000000000000000000000000000000000000000000000000000F000000CF0000
                    00FF000000FF000000FF000000CF0000000F0000000000000000000000000000
                    00000000000000000000000000000000000F000000CF000000FF000000FF0000
                    00FF000000CF0000000F00000000000000000000000000000000000000000000
                    0000000000000000000F000000CF000000FF000000FF000000CF0000001F0000
                    000F000000000000000000000000000000000000000000000000000000000000
                    000F000000CF000000CF0000001F000000CF000000CF00000000000000000000
                    000000000000000000000000000000000000000000000000000F0000001F0000
                    00CF000000FF000000EF00000000000000000000000000000000000000000000
                    00000000000000000000000000000000000F000000CF000000EF0000002F0000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000F0000001F00000000}
                  SpeedButtonOptions.CanBeFocused = False
                  SpeedButtonOptions.Flat = True
                  TabOrder = 1
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = btnEditarClick
                end
                object btnAdicionar: TcxButton
                  Left = 0
                  Top = 0
                  Width = 82
                  Height = 26
                  Cursor = crHandPoint
                  Align = alLeft
                  Caption = 'Adicionar'
                  LookAndFeel.Kind = lfFlat
                  LookAndFeel.NativeStyle = False
                  OptionsImage.Glyph.Data = {
                    76020000424D760200000000000036000000280000000C0000000C0000000100
                    2000000000004002000000000000000000000000000000000000000000000000
                    0000000000000000005F000000BF000000EF000000DF000000AF0000005F0000
                    00000000000000000000000000000000000F000000CF000000FF000000FF0000
                    00FF000000FF000000FF000000FF000000CF0000000F00000000000000000000
                    00CF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                    00FF000000CF000000000000005F000000FF000000FF000000FF000000FF0000
                    000000000000000000FF000000FF000000FF000000FF0000005F000000BF0000
                    00FF000000FF000000FF000000FF0000000000000000000000FF000000FF0000
                    00FF000000FF000000BF000000DF000000FF000000FF00000000000000000000
                    0000000000000000000000000000000000FF000000FF000000EF000000EF0000
                    00FF000000FF0000000000000000000000000000000000000000000000000000
                    00FF000000FF000000DF000000BF000000FF000000FF000000FF000000FF0000
                    000000000000000000FF000000FF000000FF000000FF000000AF0000005F0000
                    00FF000000FF000000FF000000FF0000000000000000000000FF000000FF0000
                    00FF000000FF0000005F00000000000000CF000000FF000000FF000000FF0000
                    00FF000000FF000000FF000000FF000000FF000000CF00000000000000000000
                    000F000000CF000000FF000000FF000000FF000000FF000000FF000000FF0000
                    00CF0000000F000000000000000000000000000000000000005F000000BF0000
                    00DF000000EF000000BF0000005F000000000000000000000000}
                  SpeedButtonOptions.CanBeFocused = False
                  SpeedButtonOptions.Flat = True
                  TabOrder = 2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = btnAdicionarClick
                end
              end
            end
            object pgBottom: TcxPageControl
              AlignWithMargins = True
              Left = 0
              Top = 341
              Width = 803
              Height = 282
              Cursor = crHandPoint
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 7
              Properties.ActivePage = tsTran
              Properties.CustomButtons.Buttons = <>
              Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
              Properties.ShowFrame = True
              Properties.Style = 9
              Properties.TabSlants.Positions = []
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              TabSlants.Positions = []
              ClientRectBottom = 281
              ClientRectLeft = 1
              ClientRectRight = 802
              ClientRectTop = 24
              object tsTran: TcxTabSheet
                Caption = '&1. Fidelidade '
                ImageIndex = 0
                object edFidPontos: TcxDBSpinEdit
                  Left = 13
                  Top = 128
                  Cursor = crHandPoint
                  DataBinding.DataField = 'FidPontos'
                  DataBinding.DataSource = dsMT
                  ParentFont = False
                  Properties.ImmediatePost = True
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebsFlat
                  Style.HotTrack = False
                  Style.LookAndFeel.NativeStyle = False
                  Style.StyleController = FrmPri.cxEditStyleController1
                  Style.ButtonStyle = btsFlat
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.Color = 11206655
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 0
                  Width = 107
                end
                object edFidelidade: TcxDBCheckBox
                  Left = 9
                  Top = 71
                  Cursor = crHandPoint
                  Caption = 'Este produto pode ser resgatado como pr'#234'mio'
                  DataBinding.DataField = 'Fidelidade'
                  DataBinding.DataSource = dsMT
                  Style.BorderStyle = ebsFlat
                  TabOrder = 1
                  OnClick = edFidelidadeClick
                  Width = 655
                end
                object lbPontos: TcxLabel
                  Left = 10
                  Top = 103
                  Cursor = crHandPoint
                  Caption = 'Pontos necess'#225'rios para resgate:'
                  FocusControl = edFidPontos
                end
                object LMDSimplePanel4: TLMDSimplePanel
                  Left = 0
                  Top = 0
                  Width = 801
                  Height = 65
                  Hint = ''
                  Align = alTop
                  Bevel.BorderSides = [fsBottom]
                  Bevel.Mode = bmEdge
                  TabOrder = 3
                  object cxLabel4: TcxLabel
                    AlignWithMargins = True
                    Left = 50
                    Top = 5
                    Align = alLeft
                    Caption = 
                      'Fideliza'#231#227'o de clientes por ac'#250'mulo de pontos e resgate de pr'#234'mi' +
                      'os: '
                    Properties.Alignment.Vert = taVCenter
                    AnchorY = 33
                  end
                  object imgFid: TMyImage
                    AlignWithMargins = True
                    Left = 5
                    Top = 5
                    Width = 39
                    Height = 55
                    Align = alLeft
                    MouseOverDrawMode = idmNormal
                    MouseOffDrawMode = idmDisabled
                    MouseDownDrawMode = idmGrayScale
                    ImageList = cxImageList1
                    ImageIndex = 0
                    Colorize = False
                  end
                  object lbOpcoesFid: TcxLabel
                    AlignWithMargins = True
                    Left = 469
                    Top = 5
                    Cursor = crHandPoint
                    Align = alLeft
                    Caption = 'Ativar sistema de fideliza'#231#227'o'
                    Style.HotTrack = True
                    Style.TextStyle = [fsUnderline]
                    StyleHot.BorderStyle = ebsNone
                    StyleHot.TextColor = clBlue
                    Properties.Alignment.Vert = taVCenter
                    OnClick = lbOpcoesFidClick
                    AnchorY = 33
                  end
                end
              end
              object tsComissao: TcxTabSheet
                BorderWidth = 7
                Caption = '&2. Comiss'#227'o'
                ImageIndex = 2
                object LMDSimplePanel6: TLMDSimplePanel
                  Left = 0
                  Top = 0
                  Width = 787
                  Height = 48
                  Hint = ''
                  Margins.Left = 7
                  Margins.Top = 7
                  Margins.Right = 7
                  Margins.Bottom = 7
                  Align = alTop
                  Bevel.Mode = bmCustom
                  TabOrder = 0
                  object edComissaoPerc: TcxCurrencyEdit
                    AlignWithMargins = True
                    Left = 142
                    Top = 7
                    Margins.Left = 7
                    Margins.Top = 7
                    Margins.Right = 7
                    Margins.Bottom = 7
                    Align = alLeft
                    EditValue = 0.000000000000000000
                    Enabled = False
                    ParentFont = False
                    Properties.DecimalPlaces = 2
                    Properties.DisplayFormat = '0.##%'
                    Properties.EditFormat = '#.##'
                    Style.BorderColor = clSilver
                    Style.Color = clWhite
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -13
                    Style.Font.Name = 'Segoe UI'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.LookAndFeel.Kind = lfFlat
                    Style.StyleController = FrmPri.cxEditStyleController1
                    Style.TextStyle = [fsBold]
                    Style.TransparentBorder = False
                    Style.IsFontAssigned = True
                    StyleDisabled.LookAndFeel.Kind = lfFlat
                    StyleDisabled.TextStyle = []
                    StyleFocused.BorderColor = clBtnShadow
                    StyleFocused.BorderStyle = ebsFlat
                    StyleFocused.LookAndFeel.Kind = lfFlat
                    StyleFocused.TextColor = clBlue
                    StyleHot.LookAndFeel.Kind = lfFlat
                    TabOrder = 0
                    ExplicitHeight = 21
                    Width = 100
                  end
                  object lbComissao: TcxLabel
                    Left = 71
                    Top = 0
                    Align = alLeft
                    Caption = 'Comiss'#227'o:'
                    Enabled = False
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    AnchorY = 24
                  end
                  object lbComissaoSobre: TcxLabel
                    Left = 249
                    Top = 0
                    Align = alLeft
                    Caption = 'sobre'
                    Enabled = False
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    AnchorY = 24
                  end
                  object edComissaoLucro: TcxComboBox
                    AlignWithMargins = True
                    Left = 294
                    Top = 7
                    Margins.Left = 7
                    Margins.Top = 7
                    Margins.Right = 7
                    Margins.Bottom = 7
                    Align = alLeft
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
                    Style.Font.Height = -13
                    Style.Font.Name = 'Segoe UI'
                    Style.Font.Style = []
                    Style.LookAndFeel.Kind = lfFlat
                    Style.StyleController = FrmPri.cxEditStyleController1
                    Style.IsFontAssigned = True
                    StyleDisabled.LookAndFeel.Kind = lfFlat
                    StyleFocused.LookAndFeel.Kind = lfFlat
                    StyleHot.LookAndFeel.Kind = lfFlat
                    TabOrder = 3
                    ExplicitHeight = 21
                    Width = 179
                  end
                  object MyImage1: TMyImage
                    AlignWithMargins = True
                    Left = 3
                    Top = 0
                    Width = 65
                    Height = 48
                    Margins.Top = 0
                    Margins.Bottom = 0
                    Align = alLeft
                    MouseOverDrawMode = idmNormal
                    MouseOffDrawMode = idmNormal
                    MouseDownDrawMode = idmGrayScale
                    ImageList = cxImageList1
                    ImageIndex = 1
                    Colorize = False
                  end
                  object btnPremium: TcxButton
                    AlignWithMargins = True
                    Left = 480
                    Top = 9
                    Width = 91
                    Height = 30
                    Cursor = crHandPoint
                    Margins.Left = 0
                    Margins.Top = 9
                    Margins.Right = 0
                    Margins.Bottom = 9
                    Align = alLeft
                    Caption = 'Premium'
                    LookAndFeel.Kind = lfOffice11
                    OptionsImage.ImageIndex = 85
                    OptionsImage.Images = dmImagens.im16
                    TabOrder = 5
                    OnClick = btnPremiumClick
                  end
                end
                object LMDSimplePanel5: TLMDSimplePanel
                  Left = 0
                  Top = 48
                  Width = 787
                  Height = 40
                  Hint = ''
                  Align = alTop
                  Bevel.Mode = bmCustom
                  TabOrder = 1
                  object cbComissaoPadrao: TcxCheckBox
                    Left = 0
                    Top = 0
                    Cursor = crHandPoint
                    Margins.Left = 0
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alLeft
                    Caption = 'Seguir percentual '
                    State = cbsChecked
                    Style.LookAndFeel.Kind = lfFlat
                    StyleDisabled.LookAndFeel.Kind = lfFlat
                    StyleFocused.LookAndFeel.Kind = lfFlat
                    StyleHot.LookAndFeel.Kind = lfFlat
                    TabOrder = 0
                    OnClick = cbComissaoPadraoClick
                    ExplicitHeight = 0
                    Width = 126
                  end
                  object lbConfigComissao: TcxLabel
                    Left = 126
                    Top = 0
                    Cursor = crHandPoint
                    Margins.Top = 0
                    Align = alLeft
                    Caption = 'padr'#227'o'
                    Style.HotTrack = True
                    Style.TextStyle = [fsUnderline]
                    StyleHot.BorderStyle = ebsNone
                    StyleHot.TextColor = clBlue
                    Properties.Alignment.Vert = taVCenter
                    OnClick = lbConfigComissaoClick
                    AnchorY = 20
                  end
                  object cxLabel8: TcxLabel
                    Left = 173
                    Top = 0
                    Align = alLeft
                    Caption = 'de comiss'#227'o.'
                    Properties.Alignment.Vert = taVCenter
                    AnchorY = 20
                  end
                end
              end
              object tsTrans: TcxTabSheet
                Caption = '&3. Transa'#231#245'es '
                Color = clWhite
                ImageIndex = 1
                ParentColor = False
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
              end
              object tsPend: TcxTabSheet
                Caption = '&4. Reservados (Vendas Pendentes)'
                Color = clWhite
                ImageIndex = 3
                ParentColor = False
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
              end
            end
            object panEstoque: TLMDSimplePanel
              AlignWithMargins = True
              Left = 0
              Top = 131
              Width = 803
              Height = 36
              Hint = ''
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 0
              Constraints.MaxWidth = 803
              Align = alTop
              Bevel.BorderColor = clSilver
              Bevel.BorderInnerWidth = 2
              Bevel.LightColor = clBlack
              Bevel.Mode = bmStandard
              Bevel.StandardStyle = lsNone
              Color = clWhite
              TabOrder = 3
              object edEstoque: TcxPopupEdit
                Left = 2
                Top = 2
                Align = alClient
                OnFocusChanged = edDescrFocusChanged
                ParentColor = True
                ParentFont = False
                Properties.PopupAutoSize = False
                Properties.PopupSizeable = False
                Properties.ReadOnly = True
                Properties.OnInitPopup = edEstoquePropertiesInitPopup
                Properties.OnPopup = edEstoquePropertiesPopup
                Style.BorderStyle = ebsNone
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -19
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.HotTrack = False
                Style.StyleController = FrmPri.cxEditStyleController1
                Style.TransparentBorder = False
                Style.PopupBorderStyle = epbsFrame3D
                Style.IsFontAssigned = True
                StyleFocused.BorderStyle = ebsNone
                StyleFocused.Color = clWhite
                TabOrder = 0
                OnEnter = edEstoqueEnter
                Width = 799
              end
              object panInnerEstoque: TLMDSimplePanel
                AlignWithMargins = True
                Left = 2
                Top = 2
                Width = 783
                Height = 32
                Hint = ''
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 16
                Margins.Bottom = 0
                Align = alClient
                Bevel.Mode = bmCustom
                ParentColor = True
                TabOrder = 1
                OnClick = lbPEstoqueClick
                object lbPEstoque: TcxLabel
                  AlignWithMargins = True
                  Left = 5
                  Top = 0
                  Margins.Left = 5
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  Caption = 'Estoque Dispon'#237'vel:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -13
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.TextColor = clBlack
                  Style.IsFontAssigned = True
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  OnClick = lbPEstoqueClick
                  AnchorX = 63
                  AnchorY = 16
                end
                object lbEstoque: TcxLabel
                  Left = 120
                  Top = 0
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  Caption = '(n'#227'o controlar estoque desse produto)'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -17
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = [fsBold]
                  Style.TextColor = clBlue
                  Style.TextStyle = []
                  Style.IsFontAssigned = True
                  StyleFocused.TextColor = clBlack
                  Properties.Alignment.Horz = taLeftJustify
                  Properties.Alignment.Vert = taVCenter
                  Transparent = True
                  OnClick = lbPEstoqueClick
                  AnchorY = 16
                end
                object panMinMax: TLMDSimplePanel
                  AlignWithMargins = True
                  Left = 450
                  Top = 0
                  Width = 333
                  Height = 32
                  Hint = ''
                  Margins.Left = 15
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alRight
                  Bevel.Mode = bmCustom
                  ParentColor = True
                  TabOrder = 2
                  Visible = False
                  OnClick = lbPEstoqueClick
                  object lbLimites: TcxLabel
                    Left = 134
                    Top = 0
                    Align = alRight
                    Caption = 'Limites de Estoque: '
                    ParentFont = False
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -13
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    Properties.Alignment.Vert = taVCenter
                    OnClick = lbPEstoqueClick
                    AnchorY = 16
                  end
                  object lbMinMax: TcxLabel
                    Left = 254
                    Top = 0
                    Margins.Left = 5
                    Margins.Top = 0
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alRight
                    Caption = 'min / max'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -17
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.TextColor = clBlack
                    Style.TextStyle = []
                    Style.IsFontAssigned = True
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    Transparent = True
                    OnClick = panDadosPrecoClick
                    AnchorY = 16
                  end
                end
              end
            end
          end
        end
      end
      object tsPlus: TcxTabSheet
        Caption = 'tsPlus'
        ImageIndex = 1
        TabVisible = False
        object panPlus: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 1002
          Height = 623
          Hint = ''
          Align = alClient
          Bevel.Mode = bmEdge
          TabOrder = 0
          object Image2: TImage
            Left = 16
            Top = 71
            Width = 128
            Height = 128
            AutoSize = True
          end
          object edDescrPlus: TcxDBTextEdit
            Left = 16
            Top = 35
            DataBinding.DataField = 'Descricao'
            DataBinding.DataSource = dsMT
            Properties.ReadOnly = True
            Style.BorderStyle = ebsFlat
            TabOrder = 0
            Width = 361
          end
          object cxLabel1: TcxLabel
            Left = 15
            Top = 12
            Caption = 'Produto WEB / NexCaf'#233' PLUS '
          end
          object cxLabel2: TcxLabel
            Left = 150
            Top = 71
            AutoSize = False
            Caption = 
              'Este '#233' um produto do NexCaf'#233' Plus. Para modificar op'#231#245'es desse p' +
              'roduto ou desativar sua venda, acesse o painel de controle desse' +
              ' fornecedor na aba "NexCaf'#233' Plus" da tela de m'#225'quinas do NexCaf'#233 +
              '.'
            Properties.WordWrap = True
            Height = 73
            Width = 233
          end
        end
      end
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
    ImageOptions.LargeImages = dmImagens.im24
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    SunkenBorder = True
    UseSystemFont = True
    Left = 232
    Top = 320
    DockControlHeights = (
      0
      0
      36
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
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
      LargeImageIndex = 5
      OnClick = cmGravarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      SyncImageIndex = False
      ImageIndex = 4
    end
    object cmCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = cmCancelarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
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
      LargeImageIndex = 33
      OnClick = cmConfigClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      ShowCaption = False
    end
  end
  object QCat: TnxQuery
    ActiveRuntime = True
    Database = Dados.db
    Timeout = 10000
    SQL.Strings = (
      'Select Distinct(Categoria) From Produto')
    Left = 332
    Top = 282
    object QCatCategoria: TStringField
      FieldName = 'Categoria'
      Size = 35
    end
  end
  object dsMT: TDataSource
    DataSet = MT
    Left = 632
    Top = 224
  end
  object FMgr: TFormManager
    BarMgr = BarMgr
    PageControl = Paginas
    Left = 410
    Top = 273
  end
  object MT: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
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
    AfterInsert = MTAfterInsert
    Left = 376
    Top = 280
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
    object MTCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object MTDescricao: TStringField
      DisplayWidth = 100
      FieldName = 'Descricao'
      Size = 100
    end
    object MTPreco: TCurrencyField
      Alignment = taLeftJustify
      FieldName = 'Preco'
    end
    object MTObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object MTImagem: TGraphicField
      FieldName = 'Imagem'
      BlobType = ftGraphic
    end
    object MTCategoria: TStringField
      DisplayWidth = 35
      FieldName = 'Categoria'
      Size = 35
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
    object MTUnid: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Unid'
      Size = 5
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
  end
  object dsCAT: TDataSource
    DataSet = QCat
    Left = 472
    Top = 272
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 24
    Top = 232
    object dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel
    end
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      ItemOptions.ControlBorderStyle = lbsFlat
    end
  end
  object qUnidade: TnxQuery
    ActiveRuntime = True
    Database = Dados.db
    Timeout = 10000
    SQL.Strings = (
      'Select Distinct(Unid) From Produto')
    Left = 404
    Top = 338
    object qUnidadeUnid: TStringField
      FieldName = 'Unid'
      Size = 5
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    Left = 440
    Top = 64
  end
  object tCateg: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'Categoria'
    IndexName = 'uq_Categoria'
    Left = 496
    Top = 328
    object tCategDescricao: TStringField
      FieldName = 'Descricao'
      Size = 35
    end
  end
  object dsCateg: TDataSource
    DataSet = tCateg
    Left = 592
    Top = 328
  end
  object Q: TnxQuery
    Database = Dados.db
    Left = 328
    Top = 336
  end
  object tUnid: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'Unidade'
    IndexName = 'uq_Unidade'
    Left = 656
    Top = 376
    object tUnidDescricao: TStringField
      FieldName = 'Descricao'
      Size = 5
    end
  end
  object dsUnid: TDataSource
    DataSet = tUnid
    Left = 728
    Top = 392
  end
  object cxImageList1: TcxImageList
    Height = 48
    Width = 48
    FormatVersion = 1
    DesignInfo = 18874416
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
end
