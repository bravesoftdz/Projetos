object FrmNFeModoHomo: TFrmNFeModoHomo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Modo homologa'#231#227'o'
  ClientHeight = 444
  ClientWidth = 637
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
    Caption = 'O que '#233' o modo homologa'#231#227'o da NF-e ?'
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
    ExplicitLeft = -5
    AnchorX = 319
    AnchorY = 13
  end
  object LMDSimplePanel4: TLMDSimplePanel
    Left = 0
    Top = 414
    Width = 637
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
      'Esse modo de emiss'#227'o de NF-e existe para que seja poss'#237'vel fazer' +
      ' todos os testes necess'#225'rios para implementar a NF-e em sua loja' +
      ' sem que exista tributa'#231#227'o.'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Width = 637
  end
  object cxLabel3: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 101
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alClient
    Caption = 
      'Limita'#231#245'es:'#13#10#13#10'1. N'#227'o devem ser feitas vendas reais pois antes d' +
      'e migrar para o modo produ'#231#227'o as vendas de teste ser'#227'o automatic' +
      'amente canceladas para n'#227'o gerar movimenta'#231#227'o de estoque e valor' +
      'es no caixa.'#13#10#13#10'2. Toda venda feita em homologa'#231#227'o deve ser canc' +
      'elada posteriormente. Sem cancelar uma venda feita em homologa'#231#227 +
      'o n'#227'o '#233' poss'#237'vel fazer novas vendas.'#13#10#13#10'3. Utilize esse modo com' +
      ' a '#250'nica finalidade de realizar testes. Exemplo: testar a emiss'#227 +
      'o do DANFE, testar o envio de e-mail ou verificar se os dados la' +
      'n'#231'ados no NF-e est'#227'o corretos.'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = clRed
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    ExplicitLeft = -5
    Width = 637
  end
end
