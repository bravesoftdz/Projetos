object FrmTrocoMax: TFrmTrocoMax
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Troco M'#225'ximo'
  ClientHeight = 218
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
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
    Caption = 'Troco acima do permitido'
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
    AnchorX = 198
    AnchorY = 13
  end
  object LMDSimplePanel4: TLMDSimplePanel
    Left = 0
    Top = 188
    Width = 395
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 65
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbConfig: TcxLabel
      Left = 219
      Top = 0
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Aumentar o troco permitido'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = True
      Style.TextColor = clMenuHighlight
      Style.TextStyle = [fsUnderline]
      Style.IsFontAssigned = True
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clHotLight
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      OnClick = lbConfigClick
      AnchorX = 395
      AnchorY = 15
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
    Caption = 'O valor de troco ficou acima do permitido:'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Width = 395
  end
  object lbTroco: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 80
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alTop
    Caption = 'Troco'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Width = 395
  end
  object lbMax: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 120
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alTop
    Caption = 'M'#225'ximo permitido'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.TextColor = clRed
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Width = 395
  end
end
