object FrmNFCeImpedirDeslig: TFrmNFCeImpedirDeslig
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Ativar emiss'#227'o de NF'
  ClientHeight = 240
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
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
    Caption = 'Ative a emiss'#227'o de NF'
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
    ExplicitWidth = 479
    AnchorX = 190
    AnchorY = 13
  end
  object LMDSimplePanel4: TLMDSimplePanel
    Left = 0
    Top = 210
    Width = 380
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    ExplicitWidth = 479
    object btnAtivar: TcxButton
      Left = 0
      Top = 0
      Width = 73
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = '&Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAtivarClick
    end
  end
  object lbMsg: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 40
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alTop
    Caption = 
      'Sua loja j'#225' emitiu NF. Dessa forma '#233' obrigat'#243'rio que todas as ve' +
      'ndas realizadas desse momento em diante fa'#231'am a emiss'#227'o de NF.'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = clRed
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    ExplicitWidth = 479
    ExplicitHeight = 46
    Width = 380
  end
end
