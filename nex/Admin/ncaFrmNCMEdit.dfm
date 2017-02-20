object FrmNCMEdit: TFrmNCMEdit
  Left = 0
  Top = 0
  ActiveControl = edNCM
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Campos obrigat'#243'rios'
  ClientHeight = 355
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object LMDSimplePanel2: TLMDSimplePanel
    Left = 0
    Top = 325
    Width = 506
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 99
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Salvar - F2'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvarClick
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 114
      Top = 0
      Width = 81
      Height = 30
      Cursor = crHandPoint
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Cancel = True
      Caption = 'Cancelar'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 2
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = btnCancelarClick
    end
  end
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 506
    Height = 38
    Hint = ''
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 1
    object img: TImage
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 32
      Height = 38
      Margins.Left = 0
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alLeft
      AutoSize = True
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
        097048597300000EBC00000EBC0195BC724900000255494441545847BD97CD6B
        135114C5BB742B7E50B5ADBB0845A5B6D6AF85E8CE854BC595FE1D42772EC59D
        15FD3F5C0ABA3049231482B87115B1202E8AA5188D4AA3CF735E3AC3CC9D7399
        994473E0072FF79DFB3164326F32334D85100A4C55630D70F5FEF3038979F3E6
        CA1278063E8160D802EB6031DBA08C52D184A2F7F69BD4E1B66DA67095185068
        680AD7E17BB699C215924F9B62395AABB3E1F5D98311AE9527C349D59C14C420
        12164D811C6C38FCC18B1B89EB0A432CC05A7900552085576DC598F26681FC01
        92BB1DC65F36D1D25C3A046B5E8C29AF611B563D003FC070C724489AE70EC39E
        1763CA2BB801BB3B804A28D05C3E12FE0C7F236524AE19535EC11E528A0360A3
        618C2EAD95A361AFFF95BDA3B8664C791D4E20AD30C0136372699D9F0D3FB73F
        C7E614D78C29AFC303A41506F8604C2EADD56361B0D58BCD29AE19535E87B748
        2B0CA08C92F685E3A1FFFE5D6C4E71CD98F27A40130C70712EEC763B2C12B5DB
        7D1363CAEB014D30C0A5F9B0B3F18A45A276DA2F43FBF2BCF47A40E30FB07165
        217C69BE609128AE19535E0F68FC9BB073BD117A0FD75824AAF7682D74AE35A4
        D741DE84957F86844324A761CDE644FE0C2B3F88FE01C507113F08A34BCDF781
        2CFA51BC3F40A5C328BE0F0CBE216524AE6B0CA10F238A01184A8F635EB51563
        CA6BF08F632A098AC41CE30E00E59A939C9220CCE5AF648301AC23715DE12B98
        8335D79CE494DD4042E910BC6A52A179F94BA9DA24489EE4B5BCAF6A6649A536
        1350E8AE295C855BAA962595DAB4A0E819F014F06F986DF8113C06A754AE472A
        B5390D52A9CDFF4F98F90BF348D1ADEA8194950000000049454E44AE426082}
      ExplicitTop = -1
    end
    object lbHeader: TcxLabel
      Left = 35
      Top = 0
      Align = alClient
      Caption = 'Campos obrigat'#243'rios para NF: NCM, Tributa'#231#227'o e Unidade.'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextColor = 3032760
      Style.TextStyle = [fsBold, fsUnderline]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Width = 471
      AnchorY = 19
    end
  end
  object lbMsg: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 48
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Preencha os campos que est'#227'o em branco e clique OK:'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Width = 506
  end
  object LMDSimplePanel3: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 68
    Width = 506
    Height = 242
    Hint = ''
    Margins.Left = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alClient
    Bevel.Mode = bmEdge
    TabOrder = 3
    object lbPadrao: TcxLabel
      Left = 198
      Top = 26
      Cursor = crHandPoint
      Caption = 'Utilizar NCM padr'#227'o (%s)'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.TextColor = 5460819
      Style.TextStyle = [fsUnderline]
      Style.IsFontAssigned = True
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clHighlight
      OnClick = lbPadraoClick
    end
    object lbTribPadrao: TcxLabel
      Left = 198
      Top = 94
      Cursor = crHandPoint
      Caption = 'Utilizar Tributa'#231#227'o padr'#227'o (%s)'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.TextColor = 5460819
      Style.TextStyle = [fsUnderline]
      Style.IsFontAssigned = True
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clHighlight
      OnClick = lbTribPadraoClick
    end
    object edNCM: TcxButtonEdit
      Left = 82
      Top = 23
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.MaskKind = emkRegExpr
      Properties.OnButtonClick = edNCMPropertiesButtonClick
      Properties.OnChange = edNCMPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfFlat
      Style.StyleController = FrmPri.escFlat
      Style.TextColor = clHotLight
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 2
      OnKeyDown = edNCMKeyDown
      OnKeyPress = edNCMKeyPress
      Width = 103
    end
    object lbPrompNCM: TcxLabel
      Left = 11
      Top = 26
      Caption = 'NCM:'
      ParentFont = False
      Style.TextStyle = []
    end
    object lbNomeNCM: TcxLabel
      Left = 82
      Top = 57
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Caption = 'kjhkjhkj'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHotLight
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Height = 17
      Width = 419
    end
    object lbTrib: TcxLabel
      Left = 82
      Top = 126
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Caption = 'kjhkjhkj'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHotLight
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Height = 17
      Width = 419
    end
    object edTrib: TcxButtonEdit
      Left = 82
      Top = 90
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+'
      Properties.OnButtonClick = edTribPropertiesButtonClick
      Properties.OnChange = edTribPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfFlat
      Style.StyleController = FrmPri.escFlat
      Style.TextColor = clHotLight
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 6
      OnKeyDown = edTribKeyDown
      OnKeyPress = edTribKeyPress
      Width = 103
    end
    object lbPromptTrib: TcxLabel
      Left = 11
      Top = 94
      Caption = 'Tributa'#231#227'o'
      ParentFont = False
      Style.TextStyle = []
    end
    object lbUnidade: TcxLabel
      Left = 11
      Top = 166
      Caption = 'Unidade'
      ParentFont = False
      Style.TextStyle = []
    end
    object cbUnid: TcxComboBox
      Left = 82
      Top = 165
      ParentFont = False
      Properties.DropDownSizeable = True
      Properties.ImmediateDropDownWhenActivated = True
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.StyleController = FrmPri.escFlat
      Style.IsFontAssigned = True
      TabOrder = 9
      Text = 'cbUnid'
      OnKeyDown = cbUnidKeyDown
      OnKeyPress = cbUnidKeyPress
      Width = 103
    end
    object lbUnid2: TcxLabel
      Left = 82
      Top = 199
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Caption = 'Informe a unidade de  venda para esse produto'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHotLight
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Height = 17
      Width = 419
    end
  end
  object tUnid: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'Unidade'
    IndexName = 'uq_Unidade'
    Left = 342
    Top = 207
    object tUnidDescricao: TStringField
      FieldName = 'Descricao'
      Size = 5
    end
  end
end
