object FrmNovaEtiqueta: TFrmNovaEtiqueta
  Left = 0
  Top = 0
  ActiveControl = edNome
  BorderStyle = bsDialog
  Caption = 'Novo modelo de Etiqueta'
  ClientHeight = 293
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 15
    Top = 245
    Width = 485
    Height = 33
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 0
    object btnVoltar: TcxButton
      AlignWithMargins = True
      Left = 112
      Top = 0
      Width = 97
      Height = 33
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '&Voltar'
      TabOrder = 0
      Visible = False
      OnClick = btnVoltarClick
      LookAndFeel.Kind = lfFlat
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 399
      Top = 0
      Width = 86
      Height = 33
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCancelarClick
      LookAndFeel.Kind = lfFlat
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Transparent = True
    end
    object btnAvancar: TcxButton
      Left = 0
      Top = 0
      Width = 97
      Height = 33
      Align = alLeft
      Caption = '&Avan'#231'ar'
      Default = True
      TabOrder = 2
      OnClick = btnAvancarClick
      LookAndFeel.Kind = lfFlat
    end
  end
  object Paginas: TcxPageControl
    Left = 0
    Top = 0
    Width = 515
    Height = 245
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsNome
    Properties.CustomButtons.Buttons = <>
    OnChange = PaginasChange
    ClientRectBottom = 245
    ClientRectRight = 515
    ClientRectTop = 28
    object tsNome: TcxTabSheet
      Caption = 'tsNome'
      ImageIndex = 0
      object panNome: TLMDSimplePanel
        AlignWithMargins = True
        Left = 15
        Top = 15
        Width = 485
        Height = 30
        Margins.Left = 15
        Margins.Top = 15
        Margins.Right = 15
        Margins.Bottom = 0
        Align = alTop
        Bevel.Mode = bmCustom
        TabOrder = 0
        object lbNome: TcxLabel
          Left = 0
          Top = 0
          Align = alLeft
          Caption = 'Nome da Etiqueta'
          Properties.Alignment.Vert = taVCenter
          AnchorY = 15
        end
        object edNome: TcxTextEdit
          AlignWithMargins = True
          Left = 115
          Top = 0
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          ParentFont = False
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.cxEditStyleController1
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 1
          Width = 370
        end
      end
      object panObs: TLMDSimplePanel
        AlignWithMargins = True
        Left = 15
        Top = 52
        Width = 485
        Height = 61
        Margins.Left = 15
        Margins.Top = 7
        Margins.Right = 15
        Align = alTop
        Bevel.Mode = bmCustom
        TabOrder = 1
        object lbObs: TcxLabel
          Left = 0
          Top = 0
          Align = alLeft
          Caption = 'Observa'#231#245'es'
        end
        object edObs: TcxMemo
          AlignWithMargins = True
          Left = 85
          Top = 0
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Lines.Strings = (
            '')
          Style.BorderStyle = ebsFlat
          TabOrder = 1
          Height = 61
          Width = 400
        end
      end
    end
    object tsFolha: TcxTabSheet
      Caption = 'tsFolha'
      ImageIndex = 1
      object cbFolha: TcxGroupBox
        AlignWithMargins = True
        Left = 15
        Top = 10
        Margins.Left = 15
        Margins.Top = 10
        Margins.Right = 15
        Margins.Bottom = 15
        Align = alClient
        Caption = ' Dimens'#245'es da Folha  (cm) '
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Height = 192
        Width = 485
        object lbLargura: TcxLabel
          Left = 324
          Top = 26
          Caption = 'Largura'
          Enabled = False
        end
        object lbAltura: TcxLabel
          Left = 161
          Top = 27
          Caption = 'Altura'
          Enabled = False
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 102
          Caption = 'Superior'
        end
        object cxLabel4: TcxLabel
          Left = 16
          Top = 132
          Caption = 'Inferior'
        end
        object cxLabel5: TcxLabel
          Left = 161
          Top = 102
          Caption = 'Esquerda'
        end
        object cxLabel6: TcxLabel
          Left = 161
          Top = 132
          Caption = 'Direita'
        end
        object edLargura: TcxCurrencyEdit
          Left = 378
          Top = 26
          EditValue = 21
          Enabled = False
          ParentFont = False
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.###'
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.cxEditStyleController1
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 8
          Width = 81
        end
        object edAltura: TcxCurrencyEdit
          Left = 228
          Top = 26
          EditValue = 29.700000000000000000
          Enabled = False
          ParentFont = False
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.###'
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.cxEditStyleController1
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 7
          Width = 81
        end
        object edMTopo: TcxCurrencyEdit
          Left = 71
          Top = 100
          EditValue = 0
          ParentFont = False
          Properties.AssignedValues.EditFormat = True
          Properties.DecimalPlaces = 5
          Properties.DisplayFormat = ',0.##'
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.cxEditStyleController1
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 9
          Width = 81
        end
        object edMRodape: TcxCurrencyEdit
          Left = 72
          Top = 130
          EditValue = 0
          ParentFont = False
          Properties.DisplayFormat = ',0.##'
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.cxEditStyleController1
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 10
          Width = 80
        end
        object edMEsquerda: TcxCurrencyEdit
          Left = 228
          Top = 100
          EditValue = 0
          ParentFont = False
          Properties.DisplayFormat = ',0.##'
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.cxEditStyleController1
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 11
          Width = 81
        end
        object edMDireita: TcxCurrencyEdit
          Left = 228
          Top = 130
          EditValue = 0
          ParentFont = False
          Properties.DisplayFormat = ',0.##'
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.cxEditStyleController1
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 12
          Width = 81
        end
        object cxLabel7: TcxLabel
          Left = 16
          Top = 72
          Caption = 'Margens:'
          Style.TextStyle = [fsUnderline]
        end
        object edFolha: TcxComboBox
          Left = 22
          Top = 25
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items.Strings = (
            'A4'
            'Carta'
            'Of'#237'cio'
            'Outro')
          Properties.OnChange = edFolhaPropertiesChange
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.cxEditStyleController1
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 6
          Text = 'A4'
          Width = 133
        end
      end
    end
    object tsEtiqueta: TcxTabSheet
      Caption = 'tsEtiqueta'
      ImageIndex = 2
      object cbEtiqueta: TcxGroupBox
        AlignWithMargins = True
        Left = 15
        Top = 10
        Margins.Left = 15
        Margins.Top = 10
        Margins.Right = 15
        Margins.Bottom = 15
        Align = alClient
        Caption = ' Dimens'#245'es da Etiqueta (cm) '
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Height = 192
        Width = 485
        object cxLabel8: TcxLabel
          Left = 16
          Top = 63
          Caption = 'Largura'
        end
        object cxLabel9: TcxLabel
          Left = 16
          Top = 35
          Caption = 'Altura'
        end
        object edLarguraEtq: TcxCurrencyEdit
          Left = 71
          Top = 63
          ParentFont = False
          Properties.DisplayFormat = ',0.##'
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.cxEditStyleController1
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 3
          Width = 81
        end
        object edAlturaEtq: TcxCurrencyEdit
          Left = 71
          Top = 33
          ParentFont = False
          Properties.DisplayFormat = ',0.##'
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.cxEditStyleController1
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 2
          Width = 81
        end
        object cxLabel11: TcxLabel
          Left = 220
          Top = 34
          Caption = 'Etiquetas por Linha'
        end
        object edQtdPorLinha: TcxSpinEdit
          Left = 342
          Top = 33
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.MaxValue = 30
          Properties.MinValue = 1
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.cxEditStyleController1
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 4
          Value = 1
          Width = 57
        end
        object edGapH: TcxCurrencyEdit
          Left = 221
          Top = 130
          EditValue = 0
          ParentFont = False
          Properties.DisplayFormat = ',0.##'
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.cxEditStyleController1
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 7
          Width = 80
        end
        object cxLabel12: TcxLabel
          Left = 16
          Top = 132
          Caption = 'Espa'#231'o horizontal entre etiquetas'
        end
        object edGapV: TcxCurrencyEdit
          Left = 220
          Top = 100
          EditValue = 0
          ParentFont = False
          Properties.AssignedValues.EditFormat = True
          Properties.DecimalPlaces = 5
          Properties.DisplayFormat = ',0.##'
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.cxEditStyleController1
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 6
          Width = 81
        end
        object cxLabel14: TcxLabel
          Left = 16
          Top = 102
          Caption = 'Espa'#231'o vertical entre etiquetas'
        end
      end
    end
  end
end
