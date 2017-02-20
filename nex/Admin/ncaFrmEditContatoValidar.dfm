inherited FrmEditContatoValidar: TFrmEditContatoValidar
  ClientWidth = 588
  OnDestroy = FormDestroy
  ExplicitWidth = 624
  PixelsPerInch = 96
  TextHeight = 21
  inherited panPri: TLMDSimplePanel
    Width = 588
    Height = 37
    Bevel.StandardStyle = lsLowered
    Color = clWhite
    ParentColor = False
    ExplicitWidth = 588
    ExplicitHeight = 37
    inherited lbNome: TcxLabel
      Left = 44
      Top = 2
      Style.IsFontAssigned = True
      ExplicitLeft = 44
      ExplicitTop = 2
      ExplicitHeight = 33
      AnchorY = 19
    end
    inherited Img: TMyImage
      Left = 5
      Top = 2
      Height = 33
      ExplicitLeft = 5
      ExplicitTop = 2
      ExplicitHeight = 33
    end
    inherited panDeb: TLMDSimplePanel
      Left = 492
      Top = 7
      Height = 23
      ExplicitLeft = 492
      ExplicitTop = 7
      ExplicitHeight = 23
      inherited lbDebito: TcxLabel
        Style.IsFontAssigned = True
        ExplicitHeight = 23
        AnchorX = 25
        AnchorY = 12
      end
      inherited lbValorDebito: TcxLabel
        Style.IsFontAssigned = True
        ExplicitHeight = 23
        AnchorX = 103
        AnchorY = 12
      end
    end
    inherited panFid: TLMDSimplePanel
      Left = 373
      Top = 7
      Height = 23
      ExplicitLeft = 373
      ExplicitTop = 7
      ExplicitHeight = 23
      inherited lbPontos: TcxLabel
        Style.IsFontAssigned = True
        ExplicitHeight = 23
        AnchorX = 26
        AnchorY = 12
      end
      inherited lbQuantPontos: TcxLabel
        Style.IsFontAssigned = True
        ExplicitHeight = 23
        AnchorX = 77
        AnchorY = 12
      end
    end
    inherited panCred: TLMDSimplePanel
      Left = 259
      Top = 7
      Height = 23
      ExplicitLeft = 259
      ExplicitTop = 7
      ExplicitHeight = 23
      inherited lbCredito: TcxLabel
        Style.IsFontAssigned = True
        ExplicitHeight = 23
        AnchorX = 28
        AnchorY = 12
      end
      inherited lbValorCredito: TcxLabel
        Style.IsFontAssigned = True
        ExplicitHeight = 23
        AnchorX = 77
        AnchorY = 12
      end
    end
    inherited lbRemove: TMyImage
      Left = 230
      Top = 5
      Height = 30
      ExplicitLeft = 230
      ExplicitTop = 5
    end
  end
  object lbMsg: TcxLabel [1]
    AlignWithMargins = True
    Left = 0
    Top = 52
    Margins.Left = 0
    Margins.Top = 15
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Mensagem'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextColor = clRed
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Width = 588
  end
  object LMDSimplePanel2: TLMDSimplePanel [2]
    Left = 0
    Top = 145
    Width = 588
    Height = 34
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 2
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 81
      Height = 34
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 96
      Top = 0
      Width = 74
      Height = 34
      Cursor = crHandPoint
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Cancel = True
      Caption = 'Cancelar'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 2
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
  end
  inherited imgs: TcxImageList
    FormatVersion = 1
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
end
