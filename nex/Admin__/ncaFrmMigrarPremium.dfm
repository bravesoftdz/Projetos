object FrmMigrarPremium: TFrmMigrarPremium
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Migrar para o Premium'
  ClientHeight = 473
  ClientWidth = 623
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 21
  object cxLabel1: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alTop
    Caption = 'Migrar para o plano Premium'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.TextStyle = [fsBold, fsUnderline]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    AnchorX = 312
    AnchorY = 13
  end
  object LMDSimplePanel4: TLMDSimplePanel
    Left = 0
    Top = 443
    Width = 623
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    object btnAvancar: TcxButton
      AlignWithMargins = True
      Left = 144
      Top = 0
      Width = 129
      Height = 30
      Cursor = crHandPoint
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Avan'#231'ar >>'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAvancarClick
    end
    object btnVoltar: TcxButton
      Left = 0
      Top = 0
      Width = 129
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = '<< Voltar'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnAvancarClick
    end
    object lbCancelar: TcxLabel
      Left = 559
      Top = 0
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Cancelar'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextStyle = [fsUnderline]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      OnClick = lbCancelarClick
      AnchorX = 623
      AnchorY = 15
    end
  end
  object panPri: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 65
    Width = 623
    Height = 363
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alClient
    Bevel.WidthInner = 0
    Bevel.Mode = bmEdge
    TabOrder = 2
    object Paginas: TcxPageControl
      AlignWithMargins = True
      Left = 17
      Top = 17
      Width = 589
      Height = 329
      Margins.Left = 15
      Margins.Top = 15
      Margins.Right = 15
      Margins.Bottom = 15
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = ts3
      Properties.CustomButtons.Buttons = <>
      Properties.HideTabs = True
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      OnChange = PaginasChange
      ClientRectBottom = 329
      ClientRectRight = 589
      ClientRectTop = 0
      object ts1: TcxTabSheet
        Caption = 'ts1'
        ImageIndex = 0
        object lbDataAtual: TLMDHTMLLabel
          AlignWithMargins = True
          Left = 0
          Top = 40
          Width = 249
          Height = 46
          Margins.Left = 0
          Margins.Top = 15
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          AutoSize = True
          Bevel.Mode = bmCustom
          Alignment = taLeftJustify
          Caption = 'Data de vencimento no plano atual:<br>'#13#10'<strong>%s</strong>'#13#10
          Layout = tlTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lbNovaData: TLMDHTMLLabel
          AlignWithMargins = True
          Left = 0
          Top = 96
          Width = 334
          Height = 46
          Margins.Left = 0
          Margins.Top = 10
          Margins.Right = 0
          Margins.Bottom = 0
          ParentCustomHint = False
          Align = alTop
          AutoSize = True
          Bevel.Mode = bmCustom
          Alignment = taLeftJustify
          Caption = 
            'Data de vencimento no plano novo (PREMIUM):<br>'#13#10'<strong>%s</str' +
            'ong>'
          Layout = tlTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 86
        end
        object LMDHTMLLabel3: TLMDHTMLLabel
          Left = 0
          Top = 0
          Width = 527
          Height = 25
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 15
          Margins.Bottom = 15
          Align = alTop
          AutoSize = True
          Bevel.Mode = bmCustom
          Alignment = taLeftJustify
          Caption = 
            'Ao migrar de plano a data de vencimento da sua assinatura vai se' +
            'r alterada:'
          Layout = tlTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object cxLabel4: TcxLabel
          AlignWithMargins = True
          Left = 0
          Top = 157
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 15
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Porque minha data de assinatura vai mudar?'
          ParentFont = False
          Style.TextColor = clHotLight
          Style.TextStyle = [fsUnderline]
          OnClick = cxLabel4Click
        end
      end
      object ts2: TcxTabSheet
        Caption = 'ts2'
        ImageIndex = 1
        object rb1: TcxRadioButton
          Tag = 1
          AlignWithMargins = True
          Left = 0
          Top = 27
          Width = 589
          Height = 17
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 10
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Semestral: R$378'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = rb0Click
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
        end
        object rb0: TcxRadioButton
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 589
          Height = 17
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Mensal: R$69'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = rb0Click
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
        end
        object lbRecData: TcxLabel
          AlignWithMargins = True
          Left = 0
          Top = 140
          Margins.Left = 0
          Margins.Top = 15
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          Caption = 
            'O valor ser'#225' cobrado no seu cart'#227'o de cr'#233'dito na sua nova data d' +
            'e assinatura (%s).'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.WordWrap = True
          Width = 589
        end
        object rb4: TcxRadioButton
          Tag = 4
          AlignWithMargins = True
          Left = 0
          Top = 108
          Width = 589
          Height = 17
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 10
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Plano 5'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = rb0Click
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
        end
        object rb3: TcxRadioButton
          Tag = 3
          AlignWithMargins = True
          Left = 0
          Top = 81
          Width = 589
          Height = 17
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 10
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Plano 4'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = rb0Click
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
        end
        object rb2: TcxRadioButton
          Tag = 2
          AlignWithMargins = True
          Left = 0
          Top = 54
          Width = 589
          Height = 17
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 10
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Anual: R$ 672'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = rb0Click
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
        end
      end
      object ts3: TcxTabSheet
        Caption = 'ts3'
        ImageIndex = 2
        object lbResumoCartao: TLMDHTMLLabel
          Left = 0
          Top = 25
          Width = 541
          Height = 25
          Margins.Left = 0
          Margins.Top = 5
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          AutoSize = True
          Bevel.Mode = bmCustom
          Alignment = taLeftJustify
          Caption = 
            'O novo plano PREMIUM <strong>(%s)</strong> ser'#225' renovado no seu ' +
            'cart'#227'o de cr'#233'dito em <strong>%s</strong>.'
          Layout = tlTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lbResumoBoleto: TLMDHTMLLabel
          Left = 0
          Top = 0
          Width = 514
          Height = 25
          Margins.Left = 0
          Margins.Top = 5
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          AutoSize = True
          Bevel.Mode = bmCustom
          Alignment = taLeftJustify
          Caption = 
            'Ao migrar, o vencimento da sua data de assinatura ser'#225' alterado ' +
            'para <strong>%s</strong>.'
          Layout = tlTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object LMDSimplePanel2: TLMDSimplePanel
          AlignWithMargins = True
          Left = 0
          Top = 80
          Width = 589
          Height = 249
          Hint = ''
          Margins.Left = 0
          Margins.Top = 30
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Bevel.Mode = bmCustom
          TabOrder = 0
          object cxLabel3: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            Caption = 
              'Para confirmar a migra'#231#227'o de plano digite sua senha de registro ' +
              'e clique em "Migrar":'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.WordWrap = True
            Width = 589
          end
          object LMDSimplePanel3: TLMDSimplePanel
            AlignWithMargins = True
            Left = 0
            Top = 61
            Width = 589
            Height = 29
            Hint = ''
            Margins.Left = 0
            Margins.Top = 15
            Margins.Right = 0
            Margins.Bottom = 0
            AutoSize = True
            Align = alTop
            Bevel.Mode = bmCustom
            TabOrder = 1
            object edSenha: TcxTextEdit
              Left = 114
              Top = 0
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.StyleController = FrmPri.escFlat
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 201
            end
            object cxLabel2: TcxLabel
              Left = 0
              Top = 0
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = 'Senha registro:'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI Semibold'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Vert = taVCenter
              AnchorY = 15
            end
          end
          object lbEsqueci: TcxLabel
            Left = 114
            Top = 93
            Cursor = crHandPoint
            Caption = 'Esqueci minha senha'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.HotTrack = True
            Style.TextColor = clHotLight
            Style.TextStyle = [fsUnderline]
            Style.IsFontAssigned = True
            StyleHot.BorderStyle = ebsNone
            StyleHot.TextColor = clHighlight
            OnClick = lbEsqueciClick
          end
        end
      end
    end
  end
  object lbPag: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 40
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = '3. Confirma'#231#227'o final'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.TextColor = clBlack
    Style.TextStyle = []
    Style.IsFontAssigned = True
  end
end
