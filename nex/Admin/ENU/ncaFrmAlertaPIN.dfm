object FrmAlertaPIN: TFrmAlertaPIN
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Aten'#231#227'o com o PIN'
  ClientHeight = 377
  ClientWidth = 551
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
    Caption = 'Aten'#231#227'o com o PIN do Certificado Digital'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.TextColor = clRed
    Style.TextStyle = [fsBold, fsUnderline]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    ExplicitWidth = 637
    AnchorX = 276
    AnchorY = 13
  end
  object LMDSimplePanel4: TLMDSimplePanel
    Left = 0
    Top = 347
    Width = 551
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    ExplicitTop = 414
    ExplicitWidth = 637
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 377
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Estou ciente que um PIN errado inutiliza o certificado'
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
  end
  object lbPINBranco: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 40
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alTop
    Caption = 
      'Ao deixar o PIN em branco, o seu certificado digital vai solicit' +
      'ar o PIN automaticamente na primeira venda que for realizada cad' +
      'a vez que o servidor for reiniciado.'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = clRed
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    ExplicitWidth = 637
    ExplicitHeight = 46
    Width = 551
  end
  object cbCiente: TcxCheckBox
    Left = 0
    Top = 204
    Cursor = crHandPoint
    Align = alTop
    AutoSize = False
    Caption = 
      'Estou ciente que se eu informar um PIN errado o certificado digi' +
      'tal ser'#225' perdido.'
    ParentFont = False
    Properties.ImmediatePost = True
    Properties.MultiLine = True
    Style.BorderStyle = ebsFlat
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    ExplicitTop = 125
    ExplicitWidth = 485
    Height = 71
    Width = 551
  end
  object cxLabel3: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 122
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alTop
    Caption = 
      'Se voc'#234' informar um PIN errado seu certificado digital ser'#225' perd' +
      'ido / inutilizado e ser'#225' necess'#225'rio comprar outro e fazer o proc' +
      'esso de certifica'#231#227'o novamente.'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = clRed
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    ExplicitTop = 48
    ExplicitWidth = 485
    Width = 551
  end
end
