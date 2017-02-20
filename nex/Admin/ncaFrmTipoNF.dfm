object FrmTipoNF: TFrmTipoNF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Tipo de NF'
  ClientHeight = 254
  ClientWidth = 386
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
  object LMDSimplePanel5: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 205
    Width = 356
    Height = 34
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 105
      Height = 34
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Salvar - F2'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvarClick
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 120
      Top = 0
      Width = 74
      Height = 34
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
  object LMDSimplePanel4: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 386
    Height = 57
    Hint = ''
    Align = alTop
    Bevel.BorderSides = []
    Bevel.Mode = bmEdge
    TabOrder = 1
    object lbTit: TcxLabel
      Left = 16
      Top = 13
      Caption = 'Tipo de NF que deseja emitir para essa venda'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextStyle = [fsBold, fsUnderline]
      Style.IsFontAssigned = True
    end
  end
  object cbCupom: TcxRadioButton
    AlignWithMargins = True
    Left = 42
    Top = 80
    Width = 151
    Height = 38
    Cursor = crHandPoint
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Caption = 'SAT CF-e'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    LookAndFeel.Kind = lfFlat
  end
  object cbNFe: TcxRadioButton
    AlignWithMargins = True
    Left = 42
    Top = 128
    Width = 151
    Height = 38
    Cursor = crHandPoint
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Caption = 'NF-e'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    LookAndFeel.Kind = lfFlat
  end
end
