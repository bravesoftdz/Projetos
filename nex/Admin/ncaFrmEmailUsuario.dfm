object FrmEmailUsuario: TFrmEmailUsuario
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 10
  Caption = 'Cadastre seu E-mail'
  ClientHeight = 272
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 241
    Width = 442
    Height = 31
    Hint = ''
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    object btnVoltar: TcxButton
      Left = 0
      Top = 0
      Width = 97
      Height = 31
      Align = alLeft
      Caption = '&Voltar'
      Enabled = False
      LookAndFeel.Kind = lfFlat
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnVoltarClick
    end
    object btnAvancar: TcxButton
      AlignWithMargins = True
      Left = 117
      Top = 0
      Width = 97
      Height = 31
      Margins.Left = 20
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '&Avan'#231'ar'
      Default = True
      LookAndFeel.Kind = lfFlat
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAvancarClick
    end
  end
  object Paginas: TcxPageControl
    Left = 0
    Top = 0
    Width = 442
    Height = 241
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    OnChange = PaginasChange
    ClientRectBottom = 241
    ClientRectRight = 442
    ClientRectTop = 32
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      object cxLabel1: TcxLabel
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Informe seu endere'#231'o de E-mail'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel2: TcxLabel
        Left = 0
        Top = 25
        Align = alTop
        Caption = 
          'Caso voc'#234' esque'#231'a sua senha no programa NEX poder'#225' recupera-la p' +
          'or esse e-mail.'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextColor = 3355443
        Style.IsFontAssigned = True
        Properties.WordWrap = True
        Width = 442
      end
      object LMDSimplePanel4: TLMDSimplePanel
        AlignWithMargins = True
        Left = 0
        Top = 73
        Width = 442
        Height = 136
        Hint = ''
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Bevel.Mode = bmCustom
        TabOrder = 2
        object LMDSimplePanel3: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 442
          Height = 25
          Hint = ''
          Align = alTop
          Bevel.Mode = bmStandard
          Color = 7471103
          TabOrder = 0
          object Image1: TImage
            AlignWithMargins = True
            Left = 4
            Top = 1
            Width = 24
            Height = 23
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alLeft
            AutoSize = True
            Center = True
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
              000000180806000000E0773DF80000000467414D410000B18F0BFC6105000000
              097048597300000EC400000EC401952B0E1B000000B149444154484BCD955D0A
              03210C843D53AFD113E9D53C42FB5EFA770E9FD674672120D908A14D960E7C44
              8698314F26220A45353D514D4F52CE7929A55004989D7060F5DE4D15B2F462F6
              7101EFD7936AAD261EF7DB6EE0E57CDAB8AE40BB00485E9A55487A3C7C1A60D9
              E0A700485E9A55487AE1015A3D3E00E76F68ADD9023C14B2C148F8062CD3062C
              E933A3C69773458FDB06FF11A0356915B2F46E01EBA7D0718800B3D56FCE13D5
              F44435FDA0F401FDAC86198DA8D0D60000000049454E44AE426082}
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitHeight = 41
          end
          object edEmail: TcxTextEdit
            Left = 31
            Top = 1
            Margins.Left = 0
            Margins.Top = 10
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Color = 7471103
            Style.StyleController = FrmPri.escFlat
            Style.TransparentBorder = False
            StyleFocused.BorderStyle = ebsNone
            TabOrder = 0
            Text = 'joao@nextar.com.br'
            Width = 410
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      object cxLabel3: TcxLabel
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Confirme seu endere'#231'o de E-mail'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel4: TcxLabel
        Left = 0
        Top = 25
        Align = alTop
        Caption = 
          'Precisamos ter certeza que voc'#234' digitou corretamente seu endere'#231 +
          'o de e-mail.'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextColor = 3355443
        Style.IsFontAssigned = True
        Properties.WordWrap = True
        Width = 442
      end
      object LMDSimplePanel5: TLMDSimplePanel
        AlignWithMargins = True
        Left = 0
        Top = 73
        Width = 442
        Height = 136
        Hint = ''
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Bevel.Mode = bmCustom
        TabOrder = 2
        object LMDSimplePanel6: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 442
          Height = 25
          Hint = ''
          Align = alTop
          Bevel.Mode = bmStandard
          Color = 7471103
          TabOrder = 0
          object Image2: TImage
            AlignWithMargins = True
            Left = 4
            Top = 1
            Width = 24
            Height = 23
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alLeft
            AutoSize = True
            Center = True
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
              000000180806000000E0773DF80000000467414D410000B18F0BFC6105000000
              097048597300000EC400000EC401952B0E1B000000B149444154484BCD955D0A
              03210C843D53AFD113E9D53C42FB5EFA770E9FD674672120D908A14D960E7C44
              8698314F26220A45353D514D4F52CE7929A55004989D7060F5DE4D15B2F462F6
              7101EFD7936AAD261EF7DB6EE0E57CDAB8AE40BB00485E9A55487A3C7C1A60D9
              E0A700485E9A55487AE1015A3D3E00E76F68ADD9023C14B2C148F8062CD3062C
              E933A3C69773458FDB06FF11A0356915B2F46E01EBA7D0718800B3D56FCE13D5
              F44435FDA0F401FDAC86198DA8D0D60000000049454E44AE426082}
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitHeight = 41
          end
          object edEmail2: TcxTextEdit
            Left = 31
            Top = 1
            Margins.Left = 0
            Margins.Top = 10
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Color = 7471103
            Style.StyleController = FrmPri.escFlat
            Style.TransparentBorder = False
            StyleFocused.BorderStyle = ebsNone
            TabOrder = 0
            Text = 'joao@nextar.com.br'
            Width = 410
          end
        end
      end
    end
  end
end
