object FrmXMLs: TFrmXMLs
  Left = 0
  Top = 0
  Caption = 'XML'#39's da NF'
  ClientHeight = 493
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Paginas: TcxPageControl
    Left = 0
    Top = 39
    Width = 771
    Height = 454
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tsEnvio
    Properties.CustomButtons.Buttons = <>
    ExplicitWidth = 702
    ClientRectBottom = 450
    ClientRectLeft = 4
    ClientRectRight = 767
    ClientRectTop = 28
    object tsEnvio: TcxTabSheet
      Caption = 'XML de Envio'
      ImageIndex = 0
      ExplicitTop = 24
      ExplicitWidth = 694
      ExplicitHeight = 426
      object meEnvio: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'meEnvio')
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ScrollBars = ssVertical
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        ExplicitWidth = 694
        ExplicitHeight = 426
        Height = 422
        Width = 763
      end
    end
    object tsRet: TcxTabSheet
      Caption = 'XML de Retorno'
      ImageIndex = 1
      ExplicitTop = 24
      ExplicitWidth = 694
      ExplicitHeight = 426
      object meRet: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'meEnvio')
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ScrollBars = ssVertical
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        ExplicitWidth = 694
        ExplicitHeight = 426
        Height = 422
        Width = 763
      end
    end
    object tsAprov: TcxTabSheet
      Caption = 'XML Aprovado'
      ImageIndex = 3
      ExplicitTop = 24
      ExplicitWidth = 694
      ExplicitHeight = 426
      object meAprov: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'meEnvio')
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ScrollBars = ssVertical
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        ExplicitWidth = 694
        ExplicitHeight = 426
        Height = 422
        Width = 763
      end
    end
    object tsCanc: TcxTabSheet
      Caption = 'XML de retorno de Cancelamento'
      ImageIndex = 2
      ExplicitTop = 24
      ExplicitWidth = 694
      ExplicitHeight = 426
      object meCanc: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'meEnvio')
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ScrollBars = ssVertical
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        ExplicitWidth = 694
        ExplicitHeight = 426
        Height = 422
        Width = 763
      end
    end
    object tsInut: TcxTabSheet
      Caption = 'XML de retorno de Inutiliza'#231#227'o'
      ImageIndex = 4
      ExplicitTop = 24
      ExplicitWidth = 694
      ExplicitHeight = 426
      object meInut: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'meEnvio')
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ScrollBars = ssVertical
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        ExplicitWidth = 694
        ExplicitHeight = 426
        Height = 422
        Width = 763
      end
    end
  end
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 771
    Height = 32
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 7
    Align = alTop
    Bevel.Mode = bmCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 702
    object btnSalvar: TcxButton
      AlignWithMargins = True
      Left = 120
      Top = 0
      Width = 56
      Height = 32
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Salvar XML'#39's'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 31
      OptionsImage.Images = dmImagens.im24
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvarClick
      ExplicitLeft = 105
    end
    object cxButton1: TcxButton
      Left = 0
      Top = 0
      Width = 105
      Height = 32
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Cancel = True
      Caption = '&Fechar'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = -8
    end
  end
end
