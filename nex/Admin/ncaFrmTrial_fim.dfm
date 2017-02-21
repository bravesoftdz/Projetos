object FrmTrial_fim: TFrmTrial_fim
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selecione o plano desejado'
  ClientHeight = 508
  ClientWidth = 762
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 461
    Width = 762
    Height = 47
    Hint = ''
    Align = alBottom
    Bevel.BorderSides = [fsTop]
    Bevel.BorderInnerWidth = 7
    Bevel.Mode = bmEdge
    TabOrder = 0
    object btnVoltar: TcxButton
      Left = 9
      Top = 9
      Width = 104
      Height = 29
      Cursor = crHandPoint
      Align = alLeft
      Caption = '<< Voltar'
      Enabled = False
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
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
      Left = 123
      Top = 9
      Width = 150
      Height = 29
      Cursor = crHandPoint
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Avan'#231'ar >>'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
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
    Width = 762
    Height = 461
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsEscolher
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    OnChange = PaginasChange
    ClientRectBottom = 461
    ClientRectRight = 762
    ClientRectTop = 32
    object tsEscolher: TcxTabSheet
      BorderWidth = 15
      Caption = 'Escolher'
      ImageIndex = 2
      object panAcabou: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 732
        Height = 40
        Hint = ''
        Align = alTop
        Bevel.Mode = bmCustom
        TabOrder = 0
        object lbAcabou: TcxLabel
          Left = 0
          Top = 0
          Align = alClient
          Caption = 'NEX: Os 14 dias de teste do plano %s acabaram!'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          StyleHot.TextStyle = [fsBold]
          Properties.Alignment.Horz = taCenter
          AnchorX = 366
        end
      end
      object spPago: TLMDSplitterPanel
        Left = 0
        Top = 40
        Width = 732
        Height = 359
        Hint = ''
        Bevel.Mode = bmCustom
        Bars = <
          item
            OldPosition = -1
            Position = 358
            Width = 15
          end>
        Align = alClient
        TabOrder = 1
        object panPago: TLMDSplitterPane
          Cursor = crHandPoint
          OnClick = lbMaisRecursosClick
          Bevel.BorderColor = clBlack
          Bevel.BorderInnerWidth = 2
          Bevel.Mode = bmCustom
          object lbMaisRecursos: TcxLabel
            AlignWithMargins = True
            Left = 10
            Top = 50
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Muitos mais recursos!'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.TextColor = clBlack
            Style.TextStyle = []
            Style.IsFontAssigned = True
            OnClick = lbMaisRecursosClick
          end
          object lbRecursos: TcxLabel
            AlignWithMargins = True
            Left = 5
            Top = 71
            Cursor = crHandPoint
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alTop
            Caption = 
              '   '#9642'  NEXapp'#13#10'   '#9642'  Controle de D'#233'bitos (pendura / fiado)'#13#10'   '#9642' ' +
              ' Controle de Or'#231'amentos'#13#10'   '#9642'  Envio de Caixa por E-mail'#13#10'   '#9642'  ' +
              'Vendas por Meios de Pagamento'#13#10'   '#9642'  Pedidos'#13#10'   '#9642'  Deixar cr'#233'di' +
              'to em conta'#13#10'   '#9642'  Suporta impressora de recibo/bobina'#13#10'   '#9642'  Si' +
              'stema de Fidelidade de Clientes'#13#10'   '#9642'  Controle de comiss'#227'o'#13#10'   ' +
              #9642'  Suporte a balan'#231'as com c'#243'digo de barras'#13#10'   '#9642'  Impress'#227'o de E' +
              'tiquetas para Produtos'#13#10'   '#9642'  Ferramentas de Endere'#231'o e Entrega'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.TextColor = clBlack
            Style.IsFontAssigned = True
            Properties.WordWrap = True
            OnClick = lbMaisRecursosClick
            Width = 344
          end
          object panrbPago: TLMDSimplePanel
            Left = 0
            Top = 0
            Width = 354
            Height = 40
            Cursor = crHandPoint
            Hint = ''
            Align = alTop
            Bevel.Mode = bmCustom
            TabOrder = 2
            OnClick = lbMaisRecursosClick
            object rbPro: TLMDRadioButton
              Left = -1
              Top = 5
              Width = 356
              Height = 26
              Cursor = crHandPoint
              Hint = ''
              Caption = 'Continuar no plano'
              Alignment.Alignment = agCenter
              Alignment.Spacing = 4
              Checked = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = rbProClick
            end
          end
          object lbSuporte: TcxLabel
            AlignWithMargins = True
            Left = 5
            Top = 301
            Cursor = crHandPoint
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alTop
            Caption = '   '#9642'  Suporte por Telefone e CHAT'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.TextColor = clBlack
            Style.TextStyle = []
            Style.IsFontAssigned = True
            OnClick = lbMaisRecursosClick
          end
        end
        object spFree: TLMDSplitterPane
          Bevel.BorderColor = clBtnShadow
          Bevel.Mode = bmCustom
          object panFree: TLMDSimplePanel
            Left = 0
            Top = 0
            Width = 359
            Height = 257
            Cursor = crHandPoint
            Hint = ''
            Align = alTop
            Bevel.BorderColor = clBtnShadow
            Bevel.BorderInnerWidth = 2
            Bevel.Mode = bmCustom
            TabOrder = 0
            OnClick = panrbFreeClick
            object lbRecursosFree: TcxLabel
              AlignWithMargins = True
              Left = 7
              Top = 52
              Cursor = crHandPoint
              Margins.Left = 5
              Margins.Top = 10
              Margins.Right = 5
              Margins.Bottom = 0
              Align = alTop
              Caption = 
                '   '#9642'  Todas informa'#231#245'es cadastradas ser'#227'o mantidas'#13#10'   '#9642'  N'#227'o h'#225 +
                ' mensalidade. '#201' realmente gr'#225'tis!'#13#10'   '#9642'  Suporte por e-mail apen' +
                'as.'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.TextColor = 4737096
              Style.IsFontAssigned = True
              OnClick = panrbFreeClick
            end
            object panrbFree: TLMDSimplePanel
              Left = 2
              Top = 2
              Width = 355
              Height = 40
              Cursor = crHandPoint
              Hint = ''
              Align = alTop
              Bevel.Mode = bmCustom
              TabOrder = 1
              OnClick = panrbFreeClick
              object rbFree: TLMDRadioButton
                Left = 0
                Top = 7
                Width = 357
                Height = 26
                Cursor = crHandPoint
                Hint = ''
                Caption = 'Migrar para o plano FREE'
                Alignment.Alignment = agCenter
                Alignment.Spacing = 4
                Checked = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = rbFreeClick
              end
            end
          end
          object lbSabaMais: TcxLabel
            AlignWithMargins = True
            Left = 0
            Top = 338
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 10
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Entenda melhor as diferen'#231'as entre os planos'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.HotTrack = True
            Style.TextColor = clHotLight
            Style.TextStyle = [fsUnderline]
            Style.IsFontAssigned = True
            StyleHot.BorderStyle = ebsNone
            StyleHot.TextColor = clHighlight
            OnClick = lbSabaMaisClick
            ExplicitTop = 334
          end
          object lbChamarSup: TcxLabel
            Left = 0
            Top = 307
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 15
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Fale agora com um de nossos atendentes'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.HotTrack = True
            Style.TextColor = clHotLight
            Style.TextStyle = [fsUnderline]
            Style.IsFontAssigned = True
            StyleHot.BorderStyle = ebsNone
            StyleHot.TextColor = clHighlight
            OnClick = lbChamarSupClick
            ExplicitTop = 303
          end
          object lbDuvida: TcxLabel
            AlignWithMargins = True
            Left = 0
            Top = 282
            Margins.Left = 0
            Margins.Top = 25
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Ainda est'#225' em d'#250'vida?'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.TextStyle = []
            Style.IsFontAssigned = True
          end
        end
      end
    end
    object tsFree: TcxTabSheet
      BorderWidth = 15
      Caption = 'Confirmar FREE'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxLabel10: TcxLabel
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Confirme o plano escolhido'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleHot.TextStyle = [fsBold]
      end
      object cxLabel1: TcxLabel
        AlignWithMargins = True
        Left = 0
        Top = 40
        Margins.Left = 0
        Margins.Top = 15
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Plano: FREE   (todas as informa'#231#245'es cadastradas ser'#227'o mantidas)'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextStyle = []
        Style.IsFontAssigned = True
      end
      object cxLabel11: TcxLabel
        AlignWithMargins = True
        Left = 0
        Top = 80
        Margins.Left = 0
        Margins.Top = 15
        Margins.Right = 0
        Align = alTop
        Caption = 'Os recursos abaixo s'#227'o desativados no plano FREE:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold, fsUnderline]
        Style.TextColor = clRed
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
      end
      object Memo1: TMemo
        Left = 0
        Top = 108
        Width = 732
        Height = 291
        Align = alClient
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Lines.Strings = (
          '   '#9642'  NEXapp'
          '   '#9642'  Controle de D'#233'bitos (pendura / fiado)'
          '   '#9642'  Controle de Or'#231'amentos'
          '   '#9642'  Envio de Caixa por E-mail'
          '   '#9642'  Registro de Vendas por Meios de Pagamento'
          '   '#9642'  Venda por Pedidos'
          '   '#9642'  Deixar troco como cr'#233'dito na conta do cliente'
          '   '#9642'  Suporte para impressorinhas de recibo em bobina'
          '   '#9642'  Sistema de Fidelidade de Clientes'
          '   '#9642'  Controle de comiss'#227'o'
          '   '#9642'  Suporte a balan'#231'as com c'#243'digo de barras'
          '   '#9642'  Impress'#227'o de Etiquetas para Produtos'
          '   '#9642'  Ferramentas de Endere'#231'o e Entrega'
          ''
          'Canais de atendimentos desativados:'
          '   '#9642'  Chat'
          '   '#9642'  Telefone')
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
    end
    object tsAssinar: TcxTabSheet
      BorderWidth = 15
      Caption = 'Confirmar assinatura'
      ImageIndex = 2
      object lbContinuarNoPlano: TcxLabel
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Continuar no plano'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleHot.TextStyle = [fsBold]
      end
      object cxLabel8: TcxLabel
        AlignWithMargins = True
        Left = 0
        Top = 30
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 
          'Clique em "Avan'#231'ar" para abrir o site de assinatura do programa ' +
          'NEX'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextStyle = []
        Style.IsFontAssigned = True
        Properties.WordWrap = True
        Width = 732
      end
    end
  end
end
