object FrmEditObs: TFrmEditObs
  Left = 0
  Top = 0
  ActiveControl = edObs
  BorderStyle = bsToolWindow
  BorderWidth = 15
  Caption = 'Observa'#231#245'es'
  ClientHeight = 186
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 20
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 152
    Width = 571
    Height = 34
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 81
      Height = 34
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Ok - F2'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 96
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object cbPadrao: TcxCheckBox
      Left = 446
      Top = 0
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Salvar como padr'#227'o'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfFlat
      Style.TextColor = 5066061
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 2
      Visible = False
      ExplicitLeft = 450
    end
  end
  object edObs: TcxMemo
    AlignWithMargins = True
    Left = 0
    Top = 25
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alClient
    Lines.Strings = (
      'edObs')
    ParentFont = False
    Properties.ScrollBars = ssVertical
    Style.BorderStyle = ebsFlat
    Style.StyleController = FrmPri.cxEditStyleControllerTahoma10
    Style.TextColor = clBlue
    TabOrder = 1
    ExplicitTop = 21
    ExplicitHeight = 116
    Height = 112
    Width = 571
  end
  object edNF: TcxCheckBox
    AlignWithMargins = True
    Left = 0
    Top = 0
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Observa'#231#245'es devem constar na NF'
    ParentFont = False
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 2
  end
end
