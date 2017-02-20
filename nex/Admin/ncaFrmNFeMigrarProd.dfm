object FrmNFeMigrarProd: TFrmNFeMigrarProd
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Emitir em Produ'#231#227'o ?'
  ClientHeight = 306
  ClientWidth = 500
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
    Caption = 'Ativar a NF-e em modo Produ'#231#227'o ?'
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
    AnchorX = 250
    AnchorY = 13
  end
  object LMDSimplePanel4: TLMDSimplePanel
    Left = 0
    Top = 276
    Width = 500
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    object btnAtivar: TcxButton
      Left = 0
      Top = 0
      Width = 345
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'SIM - Ativar emiss'#227'o em modo produ'#231#227'o'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAtivarClick
    end
    object btnNao: TcxButton
      Left = 416
      Top = 0
      Width = 84
      Height = 30
      Align = alRight
      Cancel = True
      Caption = 'N'#195'O'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 2
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object cxLabel2: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 40
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alTop
    Caption = 
      'Nesse modo todas vendas realizadas geram automaticamente uma NF ' +
      'com valor fiscal normal, passando a contabilizar no seu faturame' +
      'nto e ter tributa'#231#227'o real.'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Width = 500
  end
  object cxLabel3: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 122
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alClient
    Caption = 
      'Aten'#231#227'o: Ap'#243's emitir com sucesso sua primeira NF-e n'#227'o ser'#225' poss' +
      #237'vel desativar a emiss'#227'o de NF-e.'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = clRed
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Width = 500
  end
end
