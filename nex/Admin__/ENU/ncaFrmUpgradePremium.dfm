object FrmUpgradePremium: TFrmUpgradePremium
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Plano Premium'
  ClientHeight = 364
  ClientWidth = 621
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
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Plano PREMIUM ativado com sucesso !'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = 8035403
    Style.TextStyle = [fsBold, fsUnderline]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    ExplicitWidth = 532
    AnchorX = 311
    AnchorY = 13
  end
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 40
    Width = 621
    Height = 40
    Hint = ''
    Margins.Left = 0
    Margins.Top = 15
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 1
    ExplicitLeft = 72
    ExplicitTop = 192
    ExplicitWidth = 100
    object cxLabel2: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      Caption = 'Teste gratuitamente at'#233': '
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = 5395026
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      AnchorY = 20
    end
    object lbData: TcxLabel
      Left = 174
      Top = 0
      Align = alLeft
      Caption = '10/10/2015'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlack
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      AnchorY = 20
    end
  end
  object LMDSimplePanel2: TLMDSimplePanel
    Left = 0
    Top = 80
    Width = 621
    Height = 33
    Hint = ''
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 2
    ExplicitTop = 76
    ExplicitWidth = 501
    object cxLabel3: TcxLabel
      Left = 0
      Top = 0
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'O que ocorre ap'#243's o prazo de testes?'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = 5395026
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taBottomJustify
      AnchorY = 33
    end
  end
  object cxLabel4: TcxLabel
    AlignWithMargins = True
    Left = 15
    Top = 113
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = 
      'Depois do prazo acima voc'#234' poder'#225' escolher o melhor plano para s' +
      'ua loja entre FREE, PRO e PREMIUM. '#13#10#13#10'Seja qual for sua escolha' +
      ', o banco de dados que for gerado durante o per'#237'odo de testes n'#227 +
      'o ser'#225' perdido e n'#227'o ser'#225' necess'#225'rio recadastrar nenhuma informa' +
      #231#227'o.'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = clBlack
    Style.IsFontAssigned = True
    Properties.Alignment.Vert = taVCenter
    Properties.WordWrap = True
    ExplicitWidth = 517
    ExplicitHeight = 130
    Width = 606
    AnchorY = 168
  end
  object LMDSimplePanel3: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 237
    Width = 621
    Height = 40
    Hint = ''
    Margins.Left = 0
    Margins.Top = 15
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 4
    ExplicitLeft = -5
    ExplicitTop = 285
    ExplicitWidth = 501
    object cxLabel5: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      Caption = 'Quanto custa o plano PREMIUM? '
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = 5395026
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      AnchorY = 20
    end
    object cxLabel6: TcxLabel
      Left = 237
      Top = 0
      Cursor = crHandPoint
      Align = alClient
      Caption = 'Saiba mais sobre os planos NEX clicando aqui'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlue
      Style.TextStyle = [fsUnderline]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      OnClick = cxLabel6Click
      ExplicitLeft = 202
      ExplicitWidth = 254
      Width = 384
      AnchorY = 20
    end
  end
  object LMDSimplePanel4: TLMDSimplePanel
    Left = 0
    Top = 334
    Width = 621
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 5
    ExplicitTop = 314
    ExplicitWidth = 529
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
  end
end
