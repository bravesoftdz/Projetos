object FrmProd_Estoque: TFrmProd_Estoque
  Left = 0
  Top = 0
  Caption = 'Estoque'
  ClientHeight = 348
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 551
    Height = 348
    Align = alClient
    Bevel.Mode = bmCustom
    Color = clBlue
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 72
    ExplicitWidth = 100
    ExplicitHeight = 40
    object LMDSimplePanel2: TLMDSimplePanel
      AlignWithMargins = True
      Left = 2
      Top = 0
      Width = 547
      Height = 346
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      Bevel.BorderSides = [fsTop]
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Color = clGray
      TabOrder = 0
      ExplicitLeft = 168
      ExplicitTop = 120
      ExplicitWidth = 100
      ExplicitHeight = 40
      object panInner: TLMDSimplePanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 547
        Height = 346
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Bevel.StyleInner = bvLowered
        Bevel.BorderColor = 7471103
        Bevel.Mode = bmStandard
        Bevel.StandardStyle = lsNone
        Color = 7471103
        TabOrder = 0
        ExplicitTop = 17
        ExplicitWidth = 470
        ExplicitHeight = 306
        object cbNaoControlar: TcxCheckBox
          AlignWithMargins = True
          Left = 10
          Top = 0
          Cursor = crHandPoint
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          TabStop = False
          Align = alTop
          AutoSize = False
          Caption = 'N'#227'o controlar estoque desse produto'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.StyleController = FrmPri.cxEditStyleController1
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          StyleFocused.TextColor = clBlue
          TabOrder = 0
          Transparent = True
          OnClick = cbNaoControlarClick
          OnKeyDown = cbNaoControlarKeyDown
          ExplicitLeft = 26
          ExplicitTop = 8
          ExplicitWidth = 450
          Height = 36
          Width = 527
        end
        object panAtual: TLMDSimplePanel
          AlignWithMargins = True
          Left = 10
          Top = 46
          Width = 527
          Height = 36
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          Bevel.BorderColor = clSilver
          Bevel.BorderInnerWidth = 2
          Bevel.LightColor = clGray
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Color = clWhite
          TabOrder = 1
          ExplicitLeft = 0
          ExplicitTop = 37
          ExplicitWidth = 470
          object edAtual: TcxCurrencyEdit
            Left = 224
            Top = 2
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            OnFocusChanged = edAtualFocusChanged
            EditValue = 0.000000000000000000
            ImeName = 'g'
            ParentFont = False
            Properties.AssignedValues.DisplayFormat = True
            Properties.DecimalPlaces = 5
            Properties.ImeName = 'g'
            Properties.OnChange = edAtualPropertiesChange
            Properties.OnEditValueChanged = edAtualPropertiesEditValueChanged
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.TextColor = clBlack
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleFocused.BorderStyle = ebsNone
            StyleFocused.TextColor = clBlue
            TabOrder = 0
            OnKeyDown = edAtualKeyDown
            ExplicitLeft = 156
            ExplicitWidth = 156
            ExplicitHeight = 34
            Width = 113
          end
          object lbAtual: TcxLabel
            AlignWithMargins = True
            Left = 7
            Top = 2
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Caption = 'Quantidade atual em estoque:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clBlack
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 18
          end
          object cbFracao: TcxCheckBox
            Left = 337
            Top = 2
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 7
            TabStop = False
            Align = alRight
            Caption = 'Permitir a venda fracionada'
            ParentFont = False
            Properties.MultiLine = True
            Style.BorderStyle = ebsFlat
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.StyleController = FrmPri.cxEditStyleController1
            Style.IsFontAssigned = True
            StyleFocused.TextColor = clBlue
            TabOrder = 2
            OnClick = cbNaoControlarClick
            OnKeyDown = cbNaoControlarKeyDown
            ExplicitLeft = 328
            Width = 188
          end
        end
        object lbLimites2: TcxLabel
          AlignWithMargins = True
          Left = 10
          Top = 213
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alClient
          Caption = 
            '* Atrav'#233's do estoque m'#237'nimo o sistema avisa sobre os produtos qu' +
            'e necessitam de reposi'#231#227'o por estar com estoque muito baixo (aba' +
            'ixo de m'#237'nimo) e tamb'#233'm a quantidade a ser comprada para que o e' +
            'stoque fique dentro do limite m'#225'ximo. '#13#10#13#10'Exemplo se um produto ' +
            'tem o m'#237'nimo definido como 10 e o m'#225'ximo como 50, quando o estoq' +
            'ue estiver em 5 o sistema vai recomendar a reposi'#231#227'o de 45.'
          ParentColor = False
          ParentFont = False
          Style.BorderColor = clWhite
          Style.BorderStyle = ebsThick
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = 4473924
          Style.TextStyle = []
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          StyleDisabled.BorderColor = clWhite
          Properties.WordWrap = True
          Transparent = True
          ExplicitLeft = 16
          ExplicitTop = 187
          ExplicitWidth = 454
          ExplicitHeight = 113
          Width = 527
        end
        object panMax: TLMDSimplePanel
          AlignWithMargins = True
          Left = 10
          Top = 167
          Width = 527
          Height = 36
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          Bevel.BorderColor = clSilver
          Bevel.BorderSides = [fsRight, fsTop]
          Bevel.BorderWidth = 1
          Bevel.BorderInnerWidth = 2
          Bevel.LightColor = clGray
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Color = clWhite
          TabOrder = 3
          ExplicitLeft = 0
          ExplicitTop = 182
          ExplicitWidth = 470
          object edMax: TcxCurrencyEdit
            Left = 72
            Top = 2
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            OnFocusChanged = edAtualFocusChanged
            EditValue = 0.000000000000000000
            ImeName = 'g'
            ParentColor = True
            ParentFont = False
            Properties.AssignedValues.DisplayFormat = True
            Properties.DecimalPlaces = 5
            Properties.ImeName = 'g'
            Properties.OnChange = edMaxPropertiesChange
            Properties.OnEditValueChanged = edAtualPropertiesEditValueChanged
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.TextColor = clBlack
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleFocused.BorderStyle = ebsNone
            StyleFocused.TextColor = clBlue
            TabOrder = 0
            OnKeyDown = edMaxKeyDown
            ExplicitLeft = 73
            ExplicitTop = 16
            ExplicitWidth = 416
            ExplicitHeight = 36
            Width = 453
          end
          object lbMax: TcxLabel
            AlignWithMargins = True
            Left = 7
            Top = 2
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Caption = 'M'#225'ximo:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clBlack
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 18
          end
        end
        object panMin: TLMDSimplePanel
          AlignWithMargins = True
          Left = 10
          Top = 121
          Width = 527
          Height = 36
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alTop
          Bevel.BorderColor = clSilver
          Bevel.BorderInnerWidth = 2
          Bevel.LightColor = clRed
          Bevel.Mode = bmStandard
          Bevel.ShadowColor = clRed
          Bevel.StandardStyle = lsNone
          Color = clWhite
          TabOrder = 4
          ExplicitLeft = 0
          ExplicitTop = 82
          ExplicitWidth = 485
          object edMin: TcxCurrencyEdit
            Left = 69
            Top = 2
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            OnFocusChanged = edAtualFocusChanged
            EditValue = 0.000000000000000000
            ImeName = 'g'
            ParentFont = False
            Properties.AssignedValues.DisplayFormat = True
            Properties.DecimalPlaces = 5
            Properties.ImeName = 'g'
            Properties.OnChange = edMinPropertiesChange
            Properties.OnEditValueChanged = edAtualPropertiesEditValueChanged
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.TextColor = clBlack
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleFocused.BorderStyle = ebsNone
            StyleFocused.TextColor = clBlue
            TabOrder = 0
            OnKeyDown = edMinKeyDown
            ExplicitLeft = 71
            ExplicitTop = 4
            ExplicitWidth = 421
            Width = 456
          end
          object lbMin: TcxLabel
            AlignWithMargins = True
            Left = 7
            Top = 2
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Caption = 'M'#237'nimo:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clBlack
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 18
          end
        end
        object lbLimites: TcxLabel
          AlignWithMargins = True
          Left = 10
          Top = 82
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          AutoSize = False
          Caption = 'Limites de Estoque:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Vert = taBottomJustify
          Transparent = True
          ExplicitLeft = 17
          ExplicitTop = 72
          ExplicitWidth = 480
          Height = 29
          Width = 537
          AnchorY = 111
        end
      end
    end
  end
end