object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 497
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 721
    Height = 457
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet3
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 453
    ClientRectLeft = 4
    ClientRectRight = 717
    ClientRectTop = 28
    object cxTabSheet1: TcxTabSheet
      Caption = '1. Localizar a venda'
      ImageIndex = 0
      object edTran: TcxSpinEdit
        Left = 224
        Top = 20
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 81
      end
      object cxRadioButton1: TcxRadioButton
        Left = 16
        Top = 24
        Width = 180
        Height = 17
        Cursor = crHandPoint
        Caption = '1. Por n'#250'mero da venda:'
        TabOrder = 1
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        Transparent = True
      end
      object cxRadioButton2: TcxRadioButton
        Left = 16
        Top = 68
        Width = 180
        Height = 17
        Cursor = crHandPoint
        Caption = '2. Por cliente: '
        TabOrder = 2
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        Transparent = True
      end
      object cxRadioButton3: TcxRadioButton
        Left = 16
        Top = 108
        Width = 180
        Height = 17
        Cursor = crHandPoint
        Caption = '3. Por data:'
        TabOrder = 3
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        Transparent = True
      end
      object cxRadioButton4: TcxRadioButton
        Left = 16
        Top = 148
        Width = 180
        Height = 17
        Cursor = crHandPoint
        Caption = '4. Por produto:'
        TabOrder = 4
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        Transparent = True
      end
      object cxRadioButton5: TcxRadioButton
        Left = 16
        Top = 188
        Width = 289
        Height = 17
        Cursor = crHandPoint
        Caption = 'Realizar devolu'#231#227'o sem localizar a venda'
        TabOrder = 5
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        Transparent = True
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = '2. Seleciona a venda'
      ImageIndex = 3
    end
    object cxTabSheet2: TcxTabSheet
      Caption = '3. Selecionar itens a serem devolvidos'
      ImageIndex = 1
    end
    object cxTabSheet3: TcxTabSheet
      Caption = '4. Devolu'#231#227'o financeira'
      ImageIndex = 2
    end
  end
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 457
    Width = 721
    Height = 40
    Hint = ''
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 11
      Top = 7
      Width = 75
      Height = 25
      Caption = 'cxButton1'
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 97
      Top = 8
      Width = 75
      Height = 25
      Caption = 'cxButton1'
      TabOrder = 1
    end
  end
end
