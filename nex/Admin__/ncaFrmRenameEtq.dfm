object FrmRenomear: TFrmRenomear
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Renomear'
  ClientHeight = 226
  ClientWidth = 424
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object btnCancelar: TcxButton
    Left = 121
    Top = 160
    Width = 89
    Height = 31
    Cursor = crHandPoint
    Cancel = True
    Caption = '&Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsUnderline]
    ModalResult = 2
    ParentFont = False
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    SpeedButtonOptions.CanBeFocused = False
    SpeedButtonOptions.AllowAllUp = True
    SpeedButtonOptions.Flat = True
    SpeedButtonOptions.Transparent = True
  end
  object btnOk: TcxButton
    Left = 24
    Top = 161
    Width = 73
    Height = 29
    Caption = '&Ok'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
  end
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 55
    Width = 394
    Height = 50
    Margins.Left = 15
    Margins.Top = 7
    Margins.Right = 15
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 2
    ExplicitLeft = -61
    ExplicitWidth = 485
    object lbObs: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      Caption = 'Observa'#231#245'es'
    end
    object edObs: TcxMemo
      AlignWithMargins = True
      Left = 85
      Top = 0
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Lines.Strings = (
        'edObs')
      Style.BorderStyle = ebsFlat
      Style.StyleController = FrmPri.escFlat
      TabOrder = 1
      ExplicitLeft = 144
      ExplicitTop = 8
      ExplicitWidth = 400
      Height = 50
      Width = 309
    end
  end
  object panNome: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 15
    Width = 394
    Height = 30
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 3
    ExplicitLeft = -61
    ExplicitWidth = 485
    object lbNome: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      Caption = 'Nome da Etiqueta'
      Properties.Alignment.Vert = taVCenter
      AnchorY = 15
    end
    object edNome: TcxTextEdit
      AlignWithMargins = True
      Left = 115
      Top = 0
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      ParentFont = False
      Style.LookAndFeel.Kind = lfFlat
      Style.StyleController = FrmPri.escFlat
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 1
      ExplicitLeft = 111
      ExplicitWidth = 374
      Width = 279
    end
  end
end
