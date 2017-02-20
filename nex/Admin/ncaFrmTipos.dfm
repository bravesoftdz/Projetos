object FrmTipos: TFrmTipos
  Left = 290
  Top = 185
  BorderStyle = bsDialog
  BorderWidth = 10
  Caption = 'Selecione os Tipos de Transa'#231#227'o a serem mostrados'
  ClientHeight = 372
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnTodos: TcxButton
    Left = 247
    Top = 0
    Width = 73
    Height = 23
    Caption = '&Todos'
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    TabOrder = 0
    OnClick = btnTodosClick
  end
  object btnNenhum: TcxButton
    Left = 247
    Top = 32
    Width = 73
    Height = 23
    Caption = '&Nenhum'
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    TabOrder = 1
    OnClick = btnNenhumClick
  end
  object btnOk: TcxButton
    Left = 247
    Top = 82
    Width = 73
    Height = 23
    Caption = '&Ok'
    Default = True
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    TabOrder = 2
  end
  object btnCancelar: TcxButton
    Left = 247
    Top = 114
    Width = 73
    Height = 23
    Cancel = True
    Caption = '&Cancelar'
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    TabOrder = 3
  end
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 233
    Height = 372
    Hint = ''
    Align = alLeft
    Bevel.BorderColor = clBtnShadow
    Bevel.BorderInnerWidth = 1
    Bevel.Mode = bmCustom
    Color = clWhite
    TabOrder = 4
    ExplicitHeight = 332
    object tr8: TcxCheckBox
      Left = 1
      Top = 326
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Pagamento de D'#233'bito'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 0
      ExplicitLeft = 10
      ExplicitTop = 0
      Width = 231
    end
    object tr17: TcxCheckBox
      Left = 1
      Top = 301
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Zerar estoque de produto'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 1
      Width = 231
    end
    object tr14: TcxCheckBox
      Left = 1
      Top = 276
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Ajuste de pontu'#231#227'o do Fidelidade'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 2
      ExplicitLeft = 3
      ExplicitTop = 251
      Width = 231
    end
    object tr16: TcxCheckBox
      Left = 1
      Top = 76
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Ajuste de Custo de Produto'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 3
      ExplicitLeft = -159
      Width = 231
    end
    object tr13: TcxCheckBox
      Left = 1
      Top = 251
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Corre'#231#227'o de Data do Caixa'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 4
      ExplicitTop = 220
      Width = 231
    end
    object tr10: TcxCheckBox
      Left = 1
      Top = 226
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Sangria de Caixa'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 5
      ExplicitTop = 1
      Width = 231
    end
    object tr9: TcxCheckBox
      Left = 1
      Top = 201
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Suprimento de Caixa'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 6
      ExplicitTop = 1
      Width = 231
    end
    object tr18: TcxCheckBox
      Left = 1
      Top = 176
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Devolu'#231#227'o de venda'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 7
      ExplicitLeft = 3
      ExplicitTop = 145
      Width = 231
    end
    object tr7: TcxCheckBox
      Left = 1
      Top = 151
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Sa'#237'da'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 8
      ExplicitTop = 1
      Width = 231
    end
    object tr6: TcxCheckBox
      Left = 1
      Top = 126
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Entrada'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 9
      ExplicitTop = 1
      Width = 231
    end
    object tr5: TcxCheckBox
      Left = 1
      Top = 101
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Compra'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 10
      ExplicitTop = 1
      Width = 231
    end
    object tr4: TcxCheckBox
      Left = 1
      Top = 51
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Venda'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 11
      ExplicitTop = 45
      Width = 231
    end
    object tr3: TcxCheckBox
      Left = 1
      Top = 26
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Remover cr'#233'dito do cliente'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 12
      ExplicitTop = 1
      Width = 231
    end
    object tr2: TcxCheckBox
      Left = 1
      Top = 1
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Adicionar cr'#233'dito para o cliente'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      TabOrder = 13
      Width = 231
    end
  end
end
