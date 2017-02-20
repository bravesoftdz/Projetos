object FrmOnTrial: TFrmOnTrial
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Teste do plano PRO'
  ClientHeight = 465
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object LMDSimplePanel3: TLMDSimplePanel
    AlignWithMargins = True
    Left = 10
    Top = 423
    Width = 581
    Height = 32
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alBottom
    Bevel.Mode = bmCustom
    ParentColor = True
    TabOrder = 0
    ExplicitTop = 436
    ExplicitWidth = 645
    object btnOk: TcxButton
      Left = 0
      Top = 0
      Width = 89
      Height = 32
      Cursor = crHandPoint
      Align = alLeft
      Caption = '&Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btnOkClick
      LookAndFeel.Kind = lfFlat
    end
  end
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 581
    Height = 403
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 0
    Align = alClient
    Bevel.Mode = bmStandard
    Color = clWhite
    TabOrder = 1
    ExplicitWidth = 645
    ExplicitHeight = 416
    object lbPrazo2: TLMDHTMLLabel
      Left = 1
      Top = 22
      Width = 578
      Height = 89
      OnLinkClick = lbPrazo2LinkClick
      Align = alTop
      AutoSize = True
      Bevel.Mode = bmCustom
      Alignment = taLeftJustify
      Caption = 
        'No momento da instala'#231#227'o voc'#234' optou por testar gratuitamente o p' +
        'lano %s por 14 dias. Uma '#243'tima escolha para avaliar na pr'#225'tica a' +
        's vantagens desse plano.<br>'#13#10'<br>'#13#10'Voc'#234' pode aproveitar o per'#237'o' +
        'do testes at'#233' o fim ou, se preferir, <a href="assinar">assine ag' +
        'ora</a>, e os dias restantes do seu prazo de teste ser'#227'o adicion' +
        'ados ao plano.'#13#10
      Layout = tlTop
      ExplicitWidth = 626
    end
    object lbFree: TLMDHTMLLabel
      Left = 1
      Top = 248
      Width = 579
      Height = 55
      OnLinkClick = lbPrazo2LinkClick
      Align = alTop
      AutoSize = True
      Bevel.Mode = bmCustom
      Alignment = taLeftJustify
      Caption = 
        'Caso prefira usar o NEX no plano FREE, gr'#225'tis para sempre, n'#227'o t' +
        'em problema, voc'#234' pode continuar utilizando no plano %s at'#233' o fi' +
        'nal do prazo e ent'#227'o ser'#225' automaticamente transferido para o pla' +
        'no FREE, sem perder nenhuma informa'#231#227'o.'
      Layout = tlTop
      ExplicitWidth = 569
    end
    object lbDuvidas: TLMDHTMLLabel
      AlignWithMargins = True
      Left = 1
      Top = 323
      Width = 550
      Height = 38
      Margins.Left = 0
      Margins.Top = 20
      Margins.Right = 0
      Margins.Bottom = 0
      OnLinkClick = lbPrazo2LinkClick
      Align = alTop
      AutoSize = True
      Bevel.Mode = bmCustom
      Alignment = taLeftJustify
      Caption = 
        '<strong>D'#250'vidas?</strong> confira nossa se'#231#227'o de <a href="faqpla' +
        'nos">perguntas frequentes</a> ou veja as vantagens de cada plano' +
        ' clicando <a href="planos">aqui</a>'
      Layout = tlTop
      ExplicitTop = 284
      ExplicitWidth = 628
      ExplicitHeight = 21
    end
    object cxLabel3: TcxLabel
      AlignWithMargins = True
      Left = 1
      Top = 131
      Margins.Left = 0
      Margins.Top = 20
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Seus dados ser'#227'o mantidos depois do teste'
      Style.TextColor = clBlack
      Style.TextStyle = [fsBold]
      StyleHot.TextColor = 6052956
      Properties.WordWrap = True
      ExplicitWidth = 643
      Width = 579
    end
    object cxLabel4: TcxLabel
      Left = 1
      Top = 152
      Align = alTop
      Caption = 
        'Ao final do prazo de testes, nenhuma informa'#231#227'o do banco de dado' +
        's da loja (ex: clientes, produtos, fornecedores...) ser'#225' perdida' +
        ' e o programa vai continuar funcionando normalmente mesmo que vo' +
        'c'#234' decida pelo plano FREE.'
      Properties.WordWrap = True
      ExplicitWidth = 643
      Width = 579
    end
    object lbPrazo: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'Seu prazo de testes do plano %s termina'
      Style.TextColor = clBlack
      Style.TextStyle = [fsBold]
      StyleHot.TextColor = 6052956
      Properties.WordWrap = True
      ExplicitWidth = 643
      Width = 579
    end
    object cxLabel2: TcxLabel
      AlignWithMargins = True
      Left = 1
      Top = 227
      Margins.Left = 0
      Margins.Top = 20
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Plano FREE: Gr'#225'tis para Sempre '
      Style.TextColor = clBlack
      Style.TextStyle = [fsBold]
      StyleHot.TextColor = 6052956
      Properties.WordWrap = True
      ExplicitWidth = 643
      Width = 579
    end
  end
end
