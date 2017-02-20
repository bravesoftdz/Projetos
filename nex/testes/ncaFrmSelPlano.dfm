object FrmSelPlano: TFrmSelPlano
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selecione o plano desejado'
  ClientHeight = 501
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 454
    Width = 733
    Height = 47
    Hint = ''
    Align = alBottom
    Bevel.BorderSides = [fsTop]
    Bevel.BorderInnerWidth = 7
    Bevel.Mode = bmEdge
    TabOrder = 0
    object cxButton1: TcxButton
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
    end
    object cxButton2: TcxButton
      AlignWithMargins = True
      Left = 123
      Top = 9
      Width = 219
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
    end
  end
  object Paginas: TcxPageControl
    Left = 0
    Top = 0
    Width = 733
    Height = 454
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsPro
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 454
    ClientRectRight = 733
    ClientRectTop = 0
    object tsFree: TcxTabSheet
      BorderWidth = 15
      Caption = 'tsFree'
      ImageIndex = 1
      object cxLabel10: TcxLabel
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Confirme o plano escolhido!'
        Style.TextStyle = [fsBold]
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
        Caption = 'Aten'#231#227'o, esses recursos n'#227'o fazem parte do plano FREE:'
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
        Width = 703
        Height = 316
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
    object tsPro: TcxTabSheet
      BorderWidth = 15
      Caption = 'tsPro'
      ImageIndex = 2
      object LMDSimplePanel2: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 703
        Height = 40
        Hint = ''
        Align = alTop
        Bevel.Mode = bmCustom
        TabOrder = 0
        object cxLabel13: TcxLabel
          Left = 0
          Top = 0
          Align = alClient
          Caption = 'NEX: Os 14 dias de teste do plano PRO acabaram!'
          Style.TextStyle = [fsBold]
          StyleHot.TextStyle = [fsBold]
          Properties.Alignment.Horz = taCenter
          AnchorX = 352
        end
      end
      object LMDSplitterPanel1: TLMDSplitterPanel
        Left = 0
        Top = 40
        Width = 703
        Height = 384
        Hint = ''
        Bevel.Mode = bmCustom
        Bars = <
          item
            OldPosition = -1
            Position = 344
            Width = 15
          end>
        Align = alClient
        TabOrder = 1
        object LMDSplitterPane1: TLMDSplitterPane
          Bevel.BorderColor = clBlack
          Bevel.BorderInnerWidth = 1
          Bevel.Mode = bmCustom
          object cxLabel4: TcxLabel
            AlignWithMargins = True
            Left = 10
            Top = 50
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
          end
          object cxLabel12: TcxLabel
            AlignWithMargins = True
            Left = 5
            Top = 71
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
            Width = 332
          end
          object LMDSimplePanel3: TLMDSimplePanel
            Left = 0
            Top = 0
            Width = 342
            Height = 40
            Hint = ''
            Align = alTop
            Bevel.Mode = bmCustom
            TabOrder = 2
            object LMDRadioButton2: TLMDRadioButton
              Left = 3
              Top = 7
              Width = 317
              Height = 26
              Cursor = crHandPoint
              Hint = ''
              Caption = 'Continuar no plano PRO - R$49/m'#234's'
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
            end
          end
          object cxLabel16: TcxLabel
            AlignWithMargins = True
            Left = 5
            Top = 301
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alTop
            Caption = '   '#9642'  Suporte por Telefone, Celular e CHAT!'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Segoe UI Semibold'
            Style.Font.Style = [fsBold]
            Style.TextColor = clBlack
            Style.TextStyle = []
            Style.IsFontAssigned = True
          end
        end
        object LMDSplitterPane2: TLMDSplitterPane
          Bevel.BorderColor = clBtnShadow
          Bevel.Mode = bmCustom
          object LMDSimplePanel4: TLMDSimplePanel
            Left = 0
            Top = 0
            Width = 344
            Height = 257
            Hint = ''
            Align = alTop
            Bevel.BorderColor = clBtnShadow
            Bevel.BorderInnerWidth = 1
            Bevel.Mode = bmCustom
            TabOrder = 0
            object cxLabel14: TcxLabel
              AlignWithMargins = True
              Left = 6
              Top = 51
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
            end
            object LMDSimplePanel5: TLMDSimplePanel
              Left = 1
              Top = 1
              Width = 342
              Height = 40
              Hint = ''
              Align = alTop
              Bevel.Mode = bmCustom
              TabOrder = 1
              object LMDRadioButton1: TLMDRadioButton
                Left = 3
                Top = 7
                Width = 318
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
              end
            end
          end
          object cxLabel15: TcxLabel
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
          end
          object cxLabel17: TcxLabel
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
          end
          object cxLabel18: TcxLabel
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
    object tsPri2: TcxTabSheet
      BorderWidth = 15
      Caption = 'tsPri2'
      ImageIndex = 3
      object rbPro: TcxRadioButton
        AlignWithMargins = True
        Left = 0
        Top = 40
        Width = 703
        Height = 27
        Margins.Left = 0
        Margins.Top = 15
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Quero continuar no plano PRO'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        WordWrap = True
        OnClick = rbProClick
      end
      object cxLabel2: TcxLabel
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Os 14 dias de teste do plano PRO acabaram!'
        Style.TextStyle = [fsBold]
        StyleHot.TextStyle = [fsBold]
      end
      object cxLabel3: TcxLabel
        AlignWithMargins = True
        Left = 25
        Top = 67
        Margins.Left = 25
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 
          '- Recursos Avan'#231'ados!'#13#10'- NEXapp'#13#10'- Suporte por Chat, telefone e ' +
          'celular'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextColor = 2565927
        Style.IsFontAssigned = True
      end
      object rbFree: TcxRadioButton
        AlignWithMargins = True
        Left = 0
        Top = 168
        Width = 703
        Height = 27
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 25
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Quero migrar para o plano FREE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        WordWrap = True
        OnClick = rbFreeClick
      end
      object cxLabel5: TcxLabel
        AlignWithMargins = True
        Left = 25
        Top = 195
        Margins.Left = 25
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 
          '- Todas informa'#231#245'es cadastradas ser'#227'o mantidas'#13#10'- N'#227'o h'#225' mensali' +
          'dade. '#201' realmente gr'#225'tis!'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextColor = 4737096
        Style.IsFontAssigned = True
      end
      object cxLabel6: TcxLabel
        AlignWithMargins = True
        Left = 0
        Top = 314
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
      end
      object cxLabel7: TcxLabel
        Left = 0
        Top = 283
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
      end
      object cxLabel8: TcxLabel
        AlignWithMargins = True
        Left = 0
        Top = 258
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
      object cxLabel9: TcxLabel
        AlignWithMargins = True
        Left = 25
        Top = 122
        Margins.Left = 25
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = '- Apenas R$49 mensais'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.TextStyle = []
        Style.IsFontAssigned = True
      end
    end
  end
end
