object FrmConfigDocOrc: TFrmConfigDocOrc
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Imprimir or'#231'amento'
  ClientHeight = 190
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 25
    Top = 136
    Width = 400
    Height = 29
    Hint = ''
    Margins.Left = 25
    Margins.Right = 25
    Margins.Bottom = 25
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 122
      Top = 0
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Cancel = True
      Caption = '&Cancelar'
      LookAndFeel.Kind = lfFlat
      ModalResult = 2
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = btnCancelarClick
    end
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 97
      Height = 29
      Align = alLeft
      Caption = 'Salvar'
      Default = True
      LookAndFeel.Kind = lfFlat
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvarClick
    end
  end
  object cxLabel1: TcxLabel
    AlignWithMargins = True
    Left = 25
    Top = 15
    Margins.Left = 25
    Margins.Top = 15
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Escolha um modelo/layout de or'#231'amento '
    ParentFont = False
  end
  object edModelo: TncDocEdit
    AlignWithMargins = True
    Left = 25
    Top = 36
    Margins.Left = 25
    Margins.Top = 0
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
    ParentFont = False
    Properties.Buttons = <
      item
        Default = True
      end>
    Properties.ReadOnly = True
    Style.LookAndFeel.Kind = lfFlat
    Style.StyleController = FrmPri.escFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 2
    Tipo = 1
    Width = 400
  end
end
