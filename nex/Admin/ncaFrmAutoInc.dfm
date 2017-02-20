object FrmAutoInc: TFrmAutoInc
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Ajustar pr'#243'ximo ID'
  ClientHeight = 287
  ClientWidth = 398
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
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 21
    Width = 398
    Height = 27
    Hint = ''
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 0
    ExplicitTop = 0
    object edTab: TcxComboBox
      AlignWithMargins = True
      Left = 0
      Top = 0
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 15
      Margins.Bottom = 0
      Align = alClient
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = edTabPropertiesChange
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 0
      ExplicitWidth = 241
      Width = 321
    end
    object btnOk: TcxButton
      Left = 336
      Top = 0
      Width = 62
      Height = 27
      Align = alRight
      Caption = 'Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnOkClick
    end
  end
  object cxLabel1: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Selecione uma tabela'
    ParentFont = False
    ExplicitTop = -5
  end
  object pan: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 63
    Width = 398
    Height = 224
    Hint = ''
    Margins.Left = 0
    Margins.Top = 15
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    Bevel.BorderInnerWidth = 15
    Bevel.Mode = bmEdge
    TabOrder = 2
    Visible = False
    ExplicitLeft = 5
    object cxLabel2: TcxLabel
      Left = 17
      Top = 17
      Align = alTop
      Caption = 'Pr'#243'ximo ID da tabela'
      ParentFont = False
    end
    object LMDSimplePanel2: TLMDSimplePanel
      Left = 17
      Top = 38
      Width = 364
      Height = 31
      Hint = ''
      Align = alTop
      Bevel.Mode = bmCustom
      TabOrder = 1
      object edID: TcxSpinEdit
        Left = 0
        Top = 0
        Align = alLeft
        ParentFont = False
        Properties.MinValue = 1.000000000000000000
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Value = 1
        ExplicitLeft = 56
        ExplicitTop = 2
        ExplicitHeight = 29
        Width = 121
      end
      object btnSalvar: TcxButton
        AlignWithMargins = True
        Left = 136
        Top = 0
        Width = 88
        Height = 31
        Margins.Left = 15
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Salvar'
        LookAndFeel.Kind = lfFlat
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnSalvarClick
        ExplicitLeft = 121
      end
    end
  end
  object Tab: TnxTable
    Database = Dados.db
    Left = 88
    Top = 191
  end
end
