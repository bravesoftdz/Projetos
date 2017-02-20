object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Informe o NCM'
  ClientHeight = 325
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object LMDSimplePanel2: TLMDSimplePanel
    Left = 0
    Top = 295
    Width = 504
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    ExplicitLeft = 15
    ExplicitTop = 188
    ExplicitWidth = 491
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 89
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'OK '
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 104
      Top = 0
      Width = 74
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
    end
  end
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 504
    Height = 38
    Hint = ''
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 1
    ExplicitTop = -3
    ExplicitWidth = 494
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
        000000200806000000737A7AF4000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400
        000255494441545847BD97CD6B135114C5BB742B7E50B5ADBB0845A5B6D6AF85
        E8CE854BC595FE1D42772EC59D15FD3F5C0ABA3049231482B87115B1202E8AA5
        188D4AA3CF735E3AC3CC9D7399994473E0072FF79DFB3164326F32334D85100A
        4C55630D70F5FEF3038979F3E6CA1278063E8160D802EB6031DBA08C52D184A2
        F7F69BD4E1B66DA67095185068680AD7E17BB699C215924F9B62395AABB3E1F5
        D98311AE9527C349D59C14C42012164D811C6C38FCC18B1B89EB0A432CC05A79
        00552085576DC598F26681FC0192BB1DC65F36D1D25C3A046B5E8C29AF611B56
        3D003FC070C724489AE70EC39E1763CA2BB801BB3B804A28D05C3E12FE0C7F23
        6524AE19535EC11E528A0360A3618C2EAD95A361AFFF95BDA3B8664C791D4E20
        AD30C0136372699D9F0D3FB73FC7E614D78C29AFC303A41506F8604C2EADD563
        61B0D58BCD29AE19535E87B7482B0CA08C92F685E3A1FFFE5D6C4E71CD98F27A
        40130C70712EEC763B2C12B5DB7D1363CAEB014D30C0A5F9B0B3F18A45A276DA
        2F43FBF2BCF47A40E30FB07165217C69BE609128AE19535E0F68FC9BB073BD11
        7A0FD75824AAF7682D74AE35A4D741DE84957F86844324A761CDE644FE0C2B3F
        88FE01C507113F08A34BCDF7812CFA51BC3F40A5C328BE0F0CBE216524AE6B0C
        A10F238A01184A8F635EB51563CA6BF08F632A098AC41CE30E00E59A939C9220
        CCE5AF648301AC23715DE12B988335D79CE494DD4042E910BC6A52A179F94BA9
        DA24489EE4B5BCAF6A6649A5361350E8AE295C855BAA962595DAB4A0E819F014
        F06F986DF8113C06A754AE472AB5390D52A9CDFF4F98F90BF348D1ADEA819495
        0000000049454E44AE426082}
      ExplicitHeight = 32
    end
    object cxLabel1: TcxLabel
      Left = 46
      Top = 8
      Caption = 'Produto sem NCM'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextStyle = [fsBold, fsUnderline]
      Style.IsFontAssigned = True
    end
  end
  object cxLabel2: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 48
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = 
      'A emiss'#227'o de NFC-e exige que todos os produtos tenham um NCM. Pa' +
      'ra continuar com a venda '#233' necess'#225'rio informar o NCM do produto ' +
      'e clicar em OK.'
    ParentFont = False
    Properties.WordWrap = True
    ExplicitWidth = 494
    Width = 504
  end
  object cxLabel3: TcxLabel
    Left = 0
    Top = 104
    Caption = 'Produto:'
    ParentFont = False
  end
  object lbNomeProd: TcxLabel
    Left = 60
    Top = 101
    AutoSize = False
    Caption = 'COCA-COLA'
    ParentFont = False
    Style.BorderStyle = ebsFlat
    Style.TextStyle = [fsBold]
    Properties.Alignment.Vert = taVCenter
    Height = 30
    Width = 431
    AnchorY = 116
  end
  object cxLabel4: TcxLabel
    Left = 0
    Top = 152
    Caption = 'NCM:'
    ParentFont = False
  end
  object edNCM: TcxButtonEdit
    Left = 60
    Top = 149
    ParentFont = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfFlat
    Style.StyleController = FrmPri.escFlat
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 6
    Text = '1234568'
    Width = 103
  end
end
